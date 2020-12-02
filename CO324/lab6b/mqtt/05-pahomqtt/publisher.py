import sys
from threading import stack_size
import paho.mqtt.client as mqtt
import random, string, logging
from dataclasses import dataclass ,asdict
import json 
from data import *


def random_string_generator(str_size):
    return "".join(random.choice(string.ascii_letters) for x in range(str_size))

def on_connect(mqttc, obj, flags, rc):
    print("rc: " + str(rc))
    

def on_publish(mqttc, obj, mid):
    print("mid: " + str(mid))

def on_message(mqttc, obj, msg):
    print(msg.topic + " " + str(msg.qos) + " " + str(msg.payload))


def addTask(Client,Count):  # add task
    topic = "CO324/addTask"
    print("add")
    for i in range(Count):
        desc = random_string_generator(99)
        newTask = openTask(id = i , description = desc)
        convt = json.dumps( asdict(newTask), indent= 4 )
        infot = Client.publish( topic=topic , payload= convt , qos=2)
        infot.wait_for_publish()

def delTask(Client,id):   # delet task
    topic = "CO324/delTask"
    print("delet",id)
    infot=Client.publish(topic = topic, payload =  str(id) , qos = 2 )
    infot.wait_for_publish()

def editTask(Client,id,state):  # edit task
    topic = "CO324/editTask/state"
    print("edit",id,state)
    newState = editTaskState(id = id , state= state)
    convt = json.dumps( asdict(newState), indent= 4 )
    infot=Client.publish(topic = topic, payload = convt  , qos = 2 )
    infot.wait_for_publish()



client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
client.on_publish = on_publish

########################################################################
client.connect("mqtt.eclipse.org", 1883, 60) ### "mqtt.eclipse.org" 
client.loop_start()

addTask(Client=client , Count= 10)
delTask( Client= client , id = 5  )
editTask( Client= client , id = 3 , state= State.ASSIGNED.value )


