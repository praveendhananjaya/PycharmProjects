

import paho.mqtt.client as Mqtt
import paho.mqtt.subscribe as subscribe
import paho.mqtt.publish as publish
import json , dataclasses
from dataclasses import dataclass ,asdict
from enum import Enum
from time import sleep
import logging

from data import *
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("8.8.8.8", 80))
k =  (s.getsockname()[0])
s.close()

broker="mosquitto"


database = {}
task_id = 0
client= Mqtt.Client() 



def edit(y):
    database[y.id] = y



class TaskapiImpl:

    def on_message(client, userdata, message):
        print("received message =",str(message.payload.decode("utf-8")))
        
    def on_publish(client,userdata,result):             #create function for callback
        print("data published \n")
        pass

    def on_disconnect(client, userdata, rc):
        client.loop_stop()

    def on_connect(self, client, userdata ,rc ):
        print("connected")
        print("subscribeing to ToDevice/All")
        self.subscribe("#")

    def on_message_add(mosq, obj, msg):
        # This callback will only be called for messages with topics that match
        # $SYS/broker/messages/#
        print("addTask: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        my = json.loads(msg.payload)
        print(msg.topic)
        y = (Task(**my))
        y.state = State.OPEN.value
        database[y.id] = y
        #print(database)


    def on_message_del(mosq, obj, msg):
 
        print("delTask: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        
        #print(type(int(msg.payload)))
        #print(database[int(msg.payload)])
        if  int(msg.payload) in  database.keys():
            y = database.pop( int(msg.payload))
            my = asdict(y)
            decode = json.dumps(my, indent = 4)
            client.publish("Task/respons/edelete/",decode)

        else :
            client.publish("Task/response/del","invaild id")
        

    def on_message_list(mosq, obj, msg):

        print("list: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        for i in database.keys():
            my = asdict(database[i])
            decode = json.dumps(my ,  indent= 4 , sort_keys=True ) 
            client.publish("Task/response/listTask",decode)


    def on_message_edit(mosq, obj, msg):

        print("edit: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        my = json.loads(msg.payload)
        y = (Task(**my))
        if  int(y.id) in  database.keys():
            req_state = y.state
            current = database[y.id].state
            print(req_state,current)

            if ( current == "open" ) and ( req_state == "open" or req_state == "assigned" or req_state == "cancelled" ):
                edit(y)
            elif ( current == "assigned" ) and ( req_state == "assigned" or req_state == "progressing" ):
                edit(y)
            elif ( current == "progressing" ) and ( req_state == "progressing" or req_state == "done" or req_state == "cancelled" ):
                edit(y)
            elif ( current == "done" ) and ( req_state == "done" ) :
                edit(y)
            elif ( current == "cancelled" ) and ( req_state == "cancelled" ):
                edit(y)
            else:
                client.publish("Task/response/edit/error","invaild state change")

        else :
            client.publish("Task/response/edit","invaild id")
        




#define callback

if __name__ == "__main__":

    TaskapiImpl.__init__

    
    client.message_callback_add("Task/addTask", TaskapiImpl.on_message_add)
    client.message_callback_add("Task/delTask", TaskapiImpl.on_message_del)
    client.message_callback_add("Task/listTask", TaskapiImpl.on_message_list)
    client.message_callback_add("Task/editTask", TaskapiImpl.on_message_edit)
    
    #client.on_message = TaskapiImpl.on_message
    client.on_connect = TaskapiImpl.on_connect
    client.on_publish = TaskapiImpl.on_publish

    #client.on_disconnect = on_disconnect
    client.connect(k,1883,60)
    #client.publish("Topic","meeeee")
    client.loop_forever()

