import sys
import paho.mqtt.client as mqtt
import threading

def on_connect( mqttc, obj, flags, rc):
    print("rc: " + str(rc))

def on_message( mqttc, obj, msg):
    print(msg.topic + " " + str(msg.qos) +
            " " + str(msg.payload))

def on_publish( mqttc, obj, mid):
    print("mid: " + str(mid))

class MYMQTT:


    def __init__(self):
        self.client = mqtt.Client()
        self.client.on_connect = on_connect
        self.client.on_message = on_message
        self.client.on_publish = on_publish

    def set(self,X):
        self.x = X

    def mqtt(self):

        self.client.connect("test.mosquitto.org", 1883, 60)
        self.client.loop_start()
        infot = self.client.publish("AGV", self.x, qos=2)
        infot.wait_for_publish()



