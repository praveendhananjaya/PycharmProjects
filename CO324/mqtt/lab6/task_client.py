
import paho.mqtt.client as Mqtt
import paho.mqtt.subscribe as subscribe
import json , dataclasses
from dataclasses import dataclass ,asdict
from enum import Enum
from time import sleep
import logging

import paho.mqtt.publish as publish

import random, string, logging

from data import *

import socket
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("8.8.8.8", 80))
k =  (s.getsockname()[0])
s.close()





#my = data(id=1,state=State.OPEN.value,description="example task")
#y =  asdict(my)
#json_object = json.dumps(y, indent = 4)   
#print(type(json_object)) 
#y =  (json.dumps(my,cls=EnhancedJSONEncoder))
def on_publish(client,userdata,result):             #create function for callback
    print("data published \n")
    pass

def random_string_generator(str_size):
    return "".join(random.choice(string.ascii_letters) for x in range(str_size))

def addTask( client , count) :
    topic = "Task/addTask"
    for i in range(count):
        desc = random_string_generator(99)
        my = Task( id = i , state=State.OPEN.value , description=desc )
        y =  asdict(my)
        json_object = json.dumps(y, indent = 4)  
        payload = json_object
        client.publish(topic, payload)

def delTask( client , id ) :
    topic = "Task/delTask"
    payload = id
    client.publish(topic, payload)

def editTask( client , id , text ):
    topic = "Task/editTask"
    my = Task( id = id , state=State.ASSIGNED.value , description=text )
    y =  asdict(my)
    json_object = json.dumps(y, indent = 4)  
    payload = json_object
    client.publish(topic, payload )

def listTask( client ) :
    topic = "Task/listTask"
    client.publish(topic)
    


def on_message(client, userdata, message):
    print( message.topic ,str(message.payload.decode("utf-8")))

def on_connect(self, client, userdata ,rc ):
    print("connected")
    print("subscribeing to ToDevice/All")
    self.subscribe("#")


        

if __name__ == "__main__":
    client1= Mqtt.Client("control1")                           #create client object
    client1.on_publish = on_publish                          #assign function to callback
    client1.on_connect = on_connect
    client1.message_callback_add("Task/response/#", on_message )
    client1.connect(k,1883)
    logging.basicConfig(level=logging.DEBUG)
    
    addTask(client1, 10)
    delTask(client1,5)
    editTask(client1,3,"my")
    listTask(client1)
    
    client1.loop_forever()
