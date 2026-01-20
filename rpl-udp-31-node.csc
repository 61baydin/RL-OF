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
        <x>-28.799734486965722</x>
        <y>13.501587944504418</y>
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
        <x>29.545834276682736</x>
        <y>14.969572511493933</y>
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
        <x>-2.46844792010339</x>
        <y>39.41624576302169</y>
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
        <x>-12.51817603563246</x>
        <y>66.77625057209485</y>
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
        <x>16.838120407354467</x>
        <y>67.48575148832737</y>
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
        <x>-30.033492888661783</x>
        <y>44.91551992270233</y>
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
        <x>32.511452114087845</x>
        <y>44.12881524300316</y>
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
        <x>-62.994284163790255</x>
        <y>62.41341824937615</y>
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
        <x>43.352499258744565</x>
        <y>65.2740379905587</y>
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
        <x>-37.093213530910965</x>
        <y>85.19711774980159</y>
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
        <x>27.622853083405612</x>
        <y>117.96904362543364</y>
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
        <x>62.21568687595092</x>
        <y>30.55963452620838</y>
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
        <x>-58.64183856762278</x>
        <y>31.889880524782164</y>
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
        <x>-85.10913284664169</x>
        <y>43.69469964622409</y>
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
        <x>42.43596911833894</x>
        <y>97.55918503566711</y>
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
        <x>-67.38451589920973</x>
        <y>92.52921517010529</y>
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
        <x>-50.723796524803646</x>
        <y>118.99921328736451</y>
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
        <x>82.48262210787325</x>
        <y>53.22755135007674</y>
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
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>18.069448546587118</x>
        <y>145.82519145261688</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>22</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-5.135664206828944</x>
        <y>126.63682879968167</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>23</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>40.194852829682155</x>
        <y>148.9659993598889</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>24</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>78.98180658314956</x>
        <y>109.23015804052598</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>25</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-87.38693868267619</x>
        <y>118.20022702619451</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>26</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>80.17806083107324</x>
        <y>85.70484012961983</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>27</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-54.391723848839575</x>
        <y>143.6103941978807</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>28</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>96.48064233337816</x>
        <y>74.41452097639385</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>29</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-27.283402435545355</x>
        <y>147.45326488644235</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>30</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>59.84845375010385</x>
        <y>132.44812445040165</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>31</id>
      </interface_config>
      <motetype_identifier>exp5438#2</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>282</width>
    <z>5</z>
    <height>142</height>
    <location_x>400</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <viewport>1.5757392154077483 0.0 0.0 1.5757392154077483 205.80066600283115 112.46063800684283</viewport>
    </plugin_config>
    <width>403</width>
    <z>2</z>
    <height>522</height>
    <location_x>3</location_x>
    <location_y>3</location_y>
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
    <z>1</z>
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
      <mote>21</mote>
      <mote>22</mote>
      <mote>23</mote>
      <mote>24</mote>
      <mote>25</mote>
      <mote>26</mote>
      <mote>27</mote>
      <mote>28</mote>
      <mote>29</mote>
      <mote>30</mote>
      <showRadioRXTX />
      <showRadioChannels />
      <zoomfactor>500.0</zoomfactor>
    </plugin_config>
    <width>1642</width>
    <z>4</z>
    <height>367</height>
    <location_x>3</location_x>
    <location_y>571</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Notes
    <plugin_config>
      <notes>Enter notes here</notes>
      <decorations>true</decorations>
    </plugin_config>
    <width>973</width>
    <z>3</z>
    <height>160</height>
    <location_x>680</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>6</z>
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
    <z>0</z>
    <height>541</height>
    <location_x>979</location_x>
    <location_y>5</location_y>
  </plugin>
</simconf>

