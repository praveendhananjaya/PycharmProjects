
import paho.mqtt.client as Mqtt
import json , dataclasses
from dataclasses import dataclass ,asdict
from enum import Enum


class EnhancedJSONEncoder(json.JSONEncoder):
        def default(self, o):
            if dataclasses.is_dataclass(o):
                return dataclasses.asdict(o)
            return super().default(o)


broker="mosquitto"

class State(Enum):
    OPEN = "open"
    ASSIGNED = "assigned"
    PROGRESSING = "progressing"
    CANCELLED = "cancelled"


@dataclass
class data:
    id : int
    state : State  
    description : str



#my = data(id=1,state=State.OPEN.value,description="example task")
#y =  asdict(my)
#json_object = json.dumps(y, indent = 4)   
#print(type(json_object)) 
#y =  (json.dumps(my,cls=EnhancedJSONEncoder))



Mqttc = Mqtt.Client()

def addTask():
    tasks = {}
    for i in range(count):
        desc = random_string_generator(99, string.ascii_letters)
        response = stub.addTask(task_pb2.TaskDesc(description=desc))
        tasks[response.id] = desc

    return tasks


