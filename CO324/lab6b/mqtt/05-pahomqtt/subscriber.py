from dataclasses import asdict
import paho.mqtt.client as mqtt
from data import *
import json , dataclasses
from dataclasses import dataclass ,asdict


tasklist = dict()
client = mqtt.Client()

def edit(y):
    tasklist[y.id].state = y.state
    print("edited task", tasklist[y.id])
    
class TaskapiImpl:

    def add( mosq, obj, msg ) -> None:                      # add task
        print("delTask: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        my = json.loads(msg.payload)
        print(msg.topic)
        tem = openTask(**my)
        if tem.id in tasklist.keys():
            error = StringValue(description = f"already exists id {tem}" )
            temp = json.dumps( asdict(error) ,   indent= 4  )
            client.publish( topic="CO324/response" , payload= temp , qos=2)

        else:
            y = (Task(  id =  tem.id , state = State.OPEN.value , description = tem.description ))
            tasklist[y.id] = y
        
    def delt(mosq, obj, msg):                           # delet task
        print("delTask: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        
        #print(type(int(msg.payload)))
        #print(database[int(msg.payload)])
        if  int(msg.payload) in  tasklist.keys():
            y = tasklist.pop( int(msg.payload))
            my = asdict(y)
            decode = json.dumps(my, indent = 4)
            client.publish("CO324/response",decode)

        else :
            client.publish("CO324/response","invaild id")

    

    def editTask(mosq, obj, msg):               # edit task
        
        print("edit: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
        my = json.loads(msg.payload)
        y = (editTaskState(**my))
        if  int(y.id) in  tasklist.keys():
            req_state = y.state
            current = tasklist[y.id].state              # state macjine

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
                client.publish("CO324/response","invaild state change")     # respose

        else :
            client.publish("CO324/response","invaild id")
        

# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))

    # Subscribing in on_connect() means that if we lose the connection and
    # reconnect then subscriptions will be renewed.
    client.subscribe("CO324/#")

# The callback for when a PUBLISH message is received from the server.


client.on_connect = on_connect
#client.on_message = on_message

# call back functions
client.message_callback_add("CO324/addTask",TaskapiImpl.add)
client.message_callback_add("CO324/delTask",TaskapiImpl.delt)
client.message_callback_add("CO324/editTask/state",TaskapiImpl.editTask)

#############################################################################################
client.connect("mqtt.eclipse.org", 1883, 60)
#client.connect("mqtt.eclipse.org", 1883, 60)
client.loop_forever()

