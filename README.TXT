# @Bevywise.com IOT Initiative. All rights reserved 
# www.bevywise.com Email - support@bevywise.com
#
##########################################################################################
#                                     Bevywise IoT Simulator                             #
##########################################################################################

To run Broker and Simulator in default configuration
   1. to run broker goto "./BevyWise/IoTSimulator/bin" in commandprompt and run "runbroker.bat"
   2. to run Simulator goto "./BevyWise/IoTSimulator/bin" in commandprompt and run "runsimulator.bat"

To Know about Configurations and its parameters
   * the parameters must be defined before running Broker and simulator
  
   >configuration files are located in "./BevyWise/IoTSimulator/conf"

   broker.conf - will contain connection related parameters of broker
        
          > Setting TLS_ENABLED to TRUE will enable Broker to handle secured connections on 8883 port 

          > If set as FALSE The Broker will run on 1883 port in NonTLS mode
              * The Client has to connect with respective mode other wise connection will be ignored

          > For connecting MQTTClients With Username and Password Set AUTHENTICATION_ENABLED to TRUE
          
          > By specifying path of the authentication file in PASSWD_FILE the Broker will classify authenticated clients
              * The authentication file must be in txt format
              * The username password format must be in <username><<Tab>><Password> 
                for example:
                    john  pwd123
              * A Example authentication file is given on ./Certificate/Authentication/credentials.txt for use
   
   db.conf - to configure database for simulator.


         > The User Interface can be configured using HTTP_SERVER_PORT.


         > Give appropriate parameters for MYSQL the default parameter won't work on all system (ex:username and password may change)



###########################################################################################
#                                       REST API                                #
###########################################################################################

   > The SIMULATIONAPI will be located on ./Bevywise/IotSimulator/lib/

     > Simulation API contains list of methods to be called in runtime.
     
     > API functions are defined in 
      ->  ./BevyWise/IoTSimulator/lib/BW_Simulation_API/BW_PythonAPI/BWSimREST.py [ PYTHON ]
      ->  ./BevyWise/IoTSimulator/lib/BW_Simulation_API/BW_Java_API/BW_JavaAPI/BWSimREST.java [ JAVA ]

     > When these methods are called, it will invoke the realtime action associated with the call.

     > Example files are give for both JAVA and PYTHON API.

     > Please Read API_HELP on "./Bevywise/IotSimulator/lib/BW_Simulation_API" for more details.

##########################################################################################
#                                MQTTClient API                          #
##########################################################################################

   > For creating and using a MQTTClient read HELP on ./Bevywise/IotSimulator/lib/

# For Demo Videos follow bevywise Networks in Youtube.

** For more info about Iot-simulator visit www.bevywise.com/iot-simulator **

** Download Bevywise MQTTRoute for customizable MQTTBroker **

############################Thanks for choosing me##########################################
