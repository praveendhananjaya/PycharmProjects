import time
from time import sleep
import paho.mqtt.client as Mqtt
broker="mosquitto"

#define callback
def on_message(client, userdata, message):
    time.sleep(1)
    print("received message =",str(message.payload.decode("utf-8")))

def on_disconnect(client, userdata, rc):
    client.loop_stop()

def on_connect(self, client, userdata ,rc ):
    print("connected")
    print("subscribeing to ToDevice/All")
    self.subscribe("Topic/home")




client= Mqtt.Client() 
######Bind function to callback
client.on_message=on_message
client.on_connect = on_connect
#client.on_disconnect = on_disconnect
client.connect("192.168.1.3",1883,60)
#client.publish("Topic","meeeee")
client.loop_forever()
#####

