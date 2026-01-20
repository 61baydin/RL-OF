#include "contiki.h"
#include "net/routing/routing.h"
#include "random.h"
#include "net/netstack.h"
#include "net/ipv6/simple-udp.h"
#include "arch/dev/cc2420/cc2420.h"     //eklendi
#include "net/mac/4emac/4emac-private.h"

#include "sys/log.h"
#define LOG_MODULE "App"
#define LOG_LEVEL LOG_LEVEL_INFO

#define WITH_SERVER_REPLY  1
#define UDP_CLIENT_PORT 8765
#define UDP_SERVER_PORT 5678

static struct simple_udp_connection udp_conn;

#define START_INTERVAL    (15 * CLOCK_SECOND)
#define SEND_INTERVAL     (5 * CLOCK_SECOND)  //eklendi default 60 (30->dkda 2) (15->dkda 4) (5 -> dkda 12) (2->dkda 30) 


static struct simple_udp_connection udp_conn;

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client");
PROCESS(control_packet_monitor_process, "Control Packet Monitor Process");
PROCESS(tx_power_changing_by_time_process, "tx power changing by time process");

//AUTOSTART_PROCESSES(&udp_client_process);       
AUTOSTART_PROCESSES(&udp_client_process,&tx_power_changing_by_time_process);    //eklendi 

/*---------------------------------------------------------------------------*/
static void
udp_rx_callback(struct simple_udp_connection *c,
         const uip_ipaddr_t *sender_addr,
         uint16_t sender_port,
         const uip_ipaddr_t *receiver_addr,
         uint16_t receiver_port,
         const uint8_t *data,
         uint16_t datalen)
{
  unsigned count = *(unsigned *)data;
  LOG_INFO("Received response %u from ", count);
  LOG_INFO_6ADDR(sender_addr);
  LOG_INFO_("\n");
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
  static struct etimer periodic_timer;
  static unsigned count;
  uip_ipaddr_t dest_ipaddr;

  PROCESS_BEGIN();

  /* Initialize UDP connection */
  simple_udp_register(&udp_conn, UDP_CLIENT_PORT, NULL,
                      UDP_SERVER_PORT, udp_rx_callback);
  
  foure_timesynch_init(0);

  process_exit(&control_packet_monitor_process);
  process_start(&control_packet_monitor_process, NULL);

  etimer_set(&periodic_timer, random_rand() % SEND_INTERVAL);
  while(1) {
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&periodic_timer));

    if(NETSTACK_ROUTING.node_is_reachable() && NETSTACK_ROUTING.get_root_ipaddr(&dest_ipaddr)) {
      /* Send to DAG root */
      LOG_INFO("Sending request %u to ", count);
      LOG_INFO_6ADDR(&dest_ipaddr);
      LOG_INFO_("\n");
      simple_udp_sendto(&udp_conn, &count, sizeof(count), &dest_ipaddr);
      count++;
    } else {
      LOG_INFO("Not reachable yet\n");
    }

    /* Add some jitter */
    etimer_set(&periodic_timer, SEND_INTERVAL
      - CLOCK_SECOND + (random_rand() % (2 * CLOCK_SECOND)));
  }

  PROCESS_END();
}

PROCESS_THREAD(tx_power_changing_by_time_process, ev, data)
{
  static struct etimer et_sr1;
  static struct etimer et_sr1_reward;
  const uint8_t node_id = uip_lladdr.addr[7];
  uint16_t slice_length = 15*60;            //default: 15 deneme: 1    
  uint16_t reward_slice_count = slice_length/60;  // örnekleme sayısı 15dk icin /30 = 30sn  /60 = 15sn(tof için)


  PROCESS_BEGIN();
  
  while(1){

    
    if(node_id == 2 || node_id == 8 || node_id == 12 || node_id == 15 || node_id == 19   ){            // txpower = {0, 31},{-1, 27},{-3, 23},{-5, 19},{-7, 15},{-10, 11},{-15, 7},{-25, 3}
      
      etimer_set(&et_sr1, slice_length * CLOCK_SECOND); //0.
      cc2420_set_txpower(31);

      while(!etimer_expired(&et_sr1)){
        etimer_set(&et_sr1_reward, reward_slice_count * CLOCK_SECOND);

        PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_sr1_reward));
      }

      etimer_set(&et_sr1, slice_length * CLOCK_SECOND); //1.
      cc2420_set_txpower(23);

      while(!etimer_expired(&et_sr1)){
        etimer_set(&et_sr1_reward, reward_slice_count * CLOCK_SECOND);

        PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_sr1_reward));       
      }
      etimer_reset(&et_sr1);
      etimer_reset(&et_sr1_reward);
    }
    
    else 
    {

      etimer_set(&et_sr1, slice_length * CLOCK_SECOND); //0.
      
      while(!etimer_expired(&et_sr1)){
        etimer_set(&et_sr1_reward, reward_slice_count * CLOCK_SECOND);
       
        PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_sr1_reward));
      }

      etimer_set(&et_sr1, slice_length * CLOCK_SECOND); //1.
     
      while(!etimer_expired(&et_sr1)){
        etimer_set(&et_sr1_reward, reward_slice_count * CLOCK_SECOND);
        
        PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_sr1_reward));       
      }
      etimer_reset(&et_sr1);
      etimer_reset(&et_sr1_reward);
    }
  }
  PROCESS_END();
}
PROCESS_THREAD(control_packet_monitor_process, ev, data)
{
  static struct etimer timer;

  //////////////////////////////////////////////////////////////////
  PROCESS_BEGIN();
  PROCESS_PAUSE();

  etimer_set(&timer, CLOCK_SECOND * 60);


  while(1){
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&timer));

    printf("DIO Sent: %lu\n", dio_sent_count);
    printf("DAO Sent: %lu\n", dao_sent_count);
    printf("DIS Sent: %lu\n", dis_sent_count);

    etimer_reset(&timer);
  }
  PROCESS_END();
}