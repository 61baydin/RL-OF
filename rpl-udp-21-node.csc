<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>sr_test</title>
    <speedlimit>1.0</speedlimit>
    <randomseed>generated</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>0.65</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>400000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.mspmote.Exp5438MoteType
      <identifier>exp5438#1</identifier>
      <description>Exp5438 Mote Type exp5438#1</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/tsch/rpl-udp/udp-server/udp-server.c</source>
      <commands EXPORT="discard">make udp-server.exp5438 TARGET=exp5438</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/tsch/rpl-udp/udp-server/udp-server.exp5438</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.UsciA1Serial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Exp5438LED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.Exp5438MoteType
      <identifier>exp5438#2</identifier>
      <description>Exp5438 Mote Type exp5438#2</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/tsch/rpl-udp/udp-client/udp-client.c</source>
      <commands EXPORT="discard">make udp-client.exp5438 TARGET=exp5438</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/tsch/rpl-udp/udp-client/udp-client.exp5438</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.UsciA1Serial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Exp5438LED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-2.180358094019365</x>
        <y>-12.321492663448922</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>exp5438#1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-28.33727649717049</x>
        <y>13.801693661286432</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>23.334757633201164</x>
        <y>12.666126868878251</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-2.5387966359297724</x>
        <y>40.034664266039265</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-30.02416704828352</x>
        <y>108.09283775230276</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>38.70224624553265</x>
        <y>121.15446799144782</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-41.70755410591725</x>
        <y>66.00908290861425</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>33.552018013441234</x>
        <y>47.98503004648923</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-72.17574798161426</x>
        <y>68.90165268063843</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>44.14822612295598</x>
        <y>83.39212659106471</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-97.56845521097829</x>
        <y>109.61981150521339</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>9.370103013571534</x>
        <y>74.73047001936122</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-3.2910524119162847</x>
        <y>99.41952934881424</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>65.27617481522559</x>
        <y>31.171732114063314</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-58.947887361550244</x>
        <y>34.338270876201896</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-85.47639139935465</x>
        <y>46.2655095152148</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>76.41962719604479</x>
        <y>105.60214734008093</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>17</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-95.34067489285795</x>
        <y>79.99340144016045</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>18</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-63.71193037208016</x>
        <y>95.32038017072378</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>19</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-61.9006984790347</x>
        <y>129.5517757019835</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>20</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>65.95598723579009</x>
        <y>62.409015167900726</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>21</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <viewport>1.5757392154077483 0.0 0.0 1.5757392154077483 217.27805343503798 82.97261851349843</viewport>
    </plugin_config>
    <width>394</width>
    <z>1</z>
    <height>401</height>
    <location_x>6</location_x>
    <location_y>4</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter>ID:4.*ccc</filter>
      <formatted_time />
      <coloring />
      <append>/home/msc/Baydin/loglar/21_node_exp5438/%80_sr1_switch_delay/loglistener_21_deneme.txt</append>
    </plugin_config>
    <width>1253</width>
    <z>3</z>
    <height>440</height>
    <location_x>403</location_x>
    <location_y>160</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.TimeLine
    <plugin_config>
      <mote>0</mote>
      <mote>1</mote>
      <mote>2</mote>
      <mote>3</mote>
      <mote>4</mote>
      <mote>5</mote>
      <mote>6</mote>
      <mote>7</mote>
      <mote>8</mote>
      <mote>9</mote>
      <mote>10</mote>
      <mote>11</mote>
      <mote>12</mote>
      <mote>13</mote>
      <mote>14</mote>
      <mote>15</mote>
      <mote>16</mote>
      <mote>17</mote>
      <mote>18</mote>
      <mote>19</mote>
      <mote>20</mote>
      <showRadioRXTX />
      <showRadioChannels />
      <zoomfactor>500.0</zoomfactor>
    </plugin_config>
    <width>1642</width>
    <z>4</z>
    <height>468</height>
    <location_x>9</location_x>
    <location_y>533</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Notes
    <plugin_config>
      <notes>Enter notes here</notes>
      <decorations>true</decorations>
    </plugin_config>
    <width>298</width>
    <z>5</z>
    <height>158</height>
    <location_x>680</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>0</z>
    <height>160</height>
    <location_x>400</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>TIMEOUT(5400000,for(i=2;i&lt;=nodeCount;i++){log.log("\n"+ "\n" +"ID: " + i + " Node_total_send: " + Node_total_send[i] + " Node_total_received: " + Node_total_received[i] + " Node_PDR: " + (Node_total_received[i]/Node_total_send[i])*100 +  " Node_total_delay: " + Node_total_delay[i] + " Node_avg_delay: " + (Node_total_delay[i] / Node_total_received[i])  +" Node_switch_count(Time master): " + Node_switch_count[i] +  " Node_switch_count_transmit: " + Node_switch_count_transmit[i] + " Node_switch_count_receive: " + Node_switch_count_receive[i] + " Node_buffer_drop: " + Node_buffer_drop[i])} log.log("\n" + "\n" + "nodeCount: " + nodeCount + " totalReceived: " + totalReceived + " totalSent: " + totalSent + " PDR: " + PDR + " parent_switch_count: " + parent_switch_count + " totaldelay(ms): " + totaldelay + " Avg_packet_delay(ms): " + (totaldelay/totalReceived) + " total_switch_delay(ms): " + total_switch_delay + " parent_switch_count2(Receive): " + parent_switch_count2 + " Average_switch_delay_receive(ms): " + total_switch_delay/parent_switch_count2 + " parent_switch_count3(Transmit): " + parent_switch_count3 + " Average_switch_delay2_transmit(ms): " + total_switch_delay2/parent_switch_count3 + " totalBufferDrop: " + totalBufferDrop + "\n" + "\n")); //1hour = 3600000

serverID = 1;
nodeCount = sim.getMotesCount();  // client mote count
totalPRR = 0.0;
PDR=0;  // totalPRR*100
totalReceived = 0;
totalSent = 0;
totaldelay = 0.0;
totalBufferDrop=0;

parent_switch_count = 0;  // just time master
parent_switch_count2 = 0; // receive
parent_switch_count3 = 0; // transmit

flag = new Array();  // for each node , from "Time master" to "is allocated" *** "Receive" 
flag2 = new Array(); // for each node , from "Time master" to "is allocated" *** "Transmit"
time_master_is_changed = new Array();
time_is_allocated = new Array();   // *** Receive
time_is_allocated2 = new Array();  // *** Transmit
switch_delay = new Array();
switch_delay2 = new Array();
total_switch_delay=0.0;
total_switch_delay2=0.0;

timeReceived= new Array();
timeSent = new Array();
delay = new Array();

Node_total_send=new Array();
Node_total_received=new Array();
Node_total_delay=new Array();
Node_PDR=new Array();
Node_switch_count=new Array();
Node_switch_count_receive=new Array();
Node_switch_count_transmit=new Array();
Node_buffer_drop=new Array();

for(i = 1; i&lt;=nodeCount; i++){
  timeReceived[i] = 0.0;
  timeSent[i] = 0.0;
  delay[i] = 0.0;
  flag[i] = 0;
  flag2[i] = 0;
  time_master_is_changed[i] = 0.0;
  time_is_allocated[i] = 0.0;
  time_is_allocated2[i] = 0.0;
  switch_delay[i] = 0.0; //receive
  switch_delay2[i] = 0.0; //transmit
  
  //for BURAK_SR algorithm
  Node_total_send[i]=0;
  Node_total_received[i]=0;
  Node_total_delay[i]=0.0;
  Node_PDR[i]=0.0;
  Node_switch_count[i]=0;
  Node_switch_count_receive[i]=0;
  Node_switch_count_transmit[i]=0;
  Node_buffer_drop[i]=0; 
}
/////// information ///////
var elements = sim.getConfigXML();

///// run date /////
tarih = new Date();
yil=tarih.getFullYear();
ay=tarih.getMonth();
gun=tarih.getDay();
saat=tarih.getHours();
dakika=tarih.getMinutes();
saniye=tarih.getSeconds();  
log.log("\n" + "\n" + gun + "/" + ay + "/" + yil + "  " + saat + ":" + dakika + ":" + saniye + "\n" + "\n");

log.log("motedelay_us:  \t\t\t"+ elements[2].getText() + "\n");
log.log("radiomedium:  \t\t\t"+ elements[3].getText() + "\n");
log.log("Total mote:  \t\t\t" + nodeCount +  "\n");

/* Select time in Radio Logger */
plugin = mote.getSimulation().getCooja().getStartedPlugin("org.contikios.cooja.plugins.ScriptRunner");
if (plugin != null) {
  log.log("RadioLogger: Showing logged radio packet at mid simulation"+"\n");
}

// Parse elements
for (ct = 0; ct&lt;= 3; ct++) {
  // Title
  log.log("getName: \t" + elements[ct].getName() + "\t ct: " + elements[ct] + "\t" + elements[ct].getText()+ "\n");
}

start_time = time;

//////////////////////////////////////////

while(1) {

  YIELD();
  // split message array by space character
  str = msg.replace(/  +/g, ' ');
  msgArray = str.split(' ');

  if(msgArray.length&gt;4){
    if(msgArray[3].equals("Time")){
      if(msgArray[4].equals("master")){
         parent_switch_count++;
         Node_switch_count[id]++;
         flag[id]=1;
         flag2[id]=1;
         time_master_is_changed[id]=time;
      }
    }
    if(flag[id] == 1){
        if(msgArray[4].equals("is")){
            if(msgArray[5].equals("allocated")){
                if(msgArray[8].equals("Receive")){
                    parent_switch_count2++;
                    Node_switch_count_receive[id]++;
                    time_is_allocated[id]=time;
                    switch_delay[id] = time_is_allocated[id] - time_master_is_changed[id];
                    switch_delay[id] /= 1000; // ms ye cevirme
                    total_switch_delay += switch_delay[id];
                    flag[id]=0;
                    log.log("\n" +"ID: " + id + " time_master_is_changed: " + time_master_is_changed[id] + " time_is_allocated: " + time_is_allocated[id] + " switch_delay(ms): " + switch_delay[id] + " total_switch_delay(ms): " + total_switch_delay + " parent_switch_count: " + parent_switch_count + " parent_switch_count2: " + parent_switch_count2 + " Average switch delay(ms): " + total_switch_delay/parent_switch_count2 + "\n"  );
                }
            }   
        }           
    }
    if(flag2[id] == 1){
        if(msgArray[4].equals("is")){
            if(msgArray[5].equals("allocated")){
                if(msgArray[8].equals("Transmit")){
                    parent_switch_count3++;
                    Node_switch_count_transmit[id]++;
                    time_is_allocated2[id]=time;
                    switch_delay2[id] = time_is_allocated2[id] - time_master_is_changed[id];
                    switch_delay2[id] /= 1000; // ms ye cevirme
                    total_switch_delay2 += switch_delay2[id];
                    flag2[id]=0;
                    log.log("\n" +"ID: " + id + " time_master_is_changed: " + time_master_is_changed[id] + " time_is_allocated2: " + time_is_allocated2[id] + " switch_delay2(ms): " + switch_delay2[id] + " total_switch_delay2(ms): " + total_switch_delay2 +" parent_switch_count3: " + parent_switch_count3 + " Average switch delay2(ms): " + total_switch_delay2/parent_switch_count3 + "\n"  );
                }
            }   
        }           
    }
    
    if(msgArray[3].equals("Received")){     
      if (msgArray[4].equals("request")){

        // Received packet
        lastStr=msgArray[7];              // ex: fd00::200:0:0:a
        last = lastStr.substring(lastStr.lastIndexOf(":")+1, lastStr.length);   // a  
        senderID = parseInt(last,16);     // 10
        
        Node_total_received[senderID]++;
        timeReceived[senderID] = time;

        log.log("\n" + " SenderID: " + senderID + " PRR: " + Node_total_received[senderID] / Node_total_send[senderID] + "   timeReceived[senderID]:  " +  timeReceived[senderID] + " timeSent[senderID]:  " + timeSent[senderID] +"\n");

        totalReceived++;
        
        if (timeReceived[senderID] &gt; 0) {
            delay[senderID] = timeReceived[senderID] - timeSent[senderID];
            delay[senderID] = delay[senderID] / 1000; // converting to milliseconds
            if (delay[senderID] &gt; 0) {
                 Node_total_delay[senderID] += delay[senderID];
                 totaldelay += delay[senderID];
            }
        }

        totalPRR = totalReceived / totalSent;
        total_simulation_time=time;
        log.log("\n"+"Total simulation time(us):  " + total_simulation_time+"\n");
        log.log("\n"+"Total Received: " + totalReceived + "  totalSent:  " + totalSent + "\n");
        PDR=(totalReceived / totalSent) * 100;
        Node_PDR[senderID] = (Node_total_received[senderID] / Node_total_send[senderID])*100;
        log.log("\n" + "Total Packet reception rate: " + totalPRR + " Total_delay: " + totaldelay + "  Packet Delivery Ratio: " + PDR + "\n");
      }
    }   
    /////////////////////////////////////////////////////
    if(msgArray[3].equals("Sending")) {
      if (msgArray[4].equals("request")) {

        // Sent packet
        receiverID = id;
        totalSent++;
        Node_total_send[receiverID]++;
        timeSent[receiverID] = time;

        log.log( "\n" + " Node_total_send[receiverID]: "  + Node_total_send[receiverID]  + " timeSent[id]: " + timeSent[receiverID] +  " id:  " + receiverID + "\n");
      }
    }
  
    // Buffer Drop Count //
    if(msgArray[3].equals("Drop")) {
      if (msgArray[4].equals("DN")) {
        if(id !=1){           //server in gönderdikleri istatistike alinmadi 
          totalBufferDrop++;
          Node_buffer_drop[id]++;
        }
      }
    }

  }
}</script>
      <active>true</active>
    </plugin_config>
    <width>668</width>
    <z>2</z>
    <height>541</height>
    <location_x>979</location_x>
    <location_y>5</location_y>
  </plugin>
</simconf>

