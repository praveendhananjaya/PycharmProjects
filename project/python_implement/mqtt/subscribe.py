import paho.mqtt.client as Mqtt
import time

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
    client.connect("mqtt.eclipse.org")
    #client.publish("Topic","meeeee")
    client.loop_forever()
    #####
