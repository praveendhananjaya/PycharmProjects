import paho.mqtt.client as Mqtt
import time
import socket


class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


hostname = socket.gethostname()

class Agv:
    def __init__(self , ID  , map ) -> None:
        self.x = ID % 5 
        self.y = int(ID/5)
        self.ID = ID
        self.MAP = map
        
        print(self.y,self.x)


class Agv_park:

    def __init__(self, TOTAL_AGV, map):
        self.MAP = map
        self.number_of_agv = TOTAL_AGV
        grid_size = 4
        for y in range(1):
            for x in range(25, 30):
                self.agv_print(Y=y*grid_size, X=x*grid_size, map = map)

    def agv_print(self, X , Y , map ):
        k = u'\u2588'
        self.MAP = map.map 
        self.MAP[Y][X]      = f"{bcolors.WARNING}{k}{bcolors.OKGREEN}"
        self.MAP[Y][X+1]    = f"{bcolors.WARNING}{k}{bcolors.OKGREEN}"
        self.MAP[Y+1][X]    = f"{bcolors.WARNING}{k}{bcolors.OKGREEN}"
        self.MAP[Y+1][X+1]  = f"{bcolors.WARNING}{k}{bcolors.OKGREEN}"

        map.map = self.MAP

# The callback for when the client receives a CONNACK response from the server.

def on_disconnect(client, userdata, rc):
    client.loop_stop()


def on_connect(self, client, userdata, rc):
    print("connected")
    print("subscribeing to ToDevice/All")
    self.subscribe("AGV")

#define callback


def on_message(client, userdata, message):
    time.sleep(1)
    print("received message =", str(message.payload.decode("utf-8")))


def test():
    
    client = Mqtt.Client()
    ######Bind function to callback
    client.on_message = on_message
    client.on_connect = on_connect
    #client.on_disconnect = on_disconnect
    client.connect("localhost", 1883, 60)
    #client.publish("Topic","meeeee")
    client.loop_forever()
    #####
