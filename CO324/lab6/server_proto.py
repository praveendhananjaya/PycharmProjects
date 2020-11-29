
import paho.mqtt.client as Mqtt
import json , dataclasses
from dataclasses import dataclass ,asdict
from enum import Enum
import logging
import grpc, task_pb2

from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import logging
from pprint import pformat
from typing import Mapping, Sequence, Tuple
import threading
import grpc

from grpc import server, StatusCode
import task_pb2, task_pb2_grpc

from google.protobuf import (
    any_pb2,
    api_pb2,
    duration_pb2,
    empty_pb2,
    field_mask_pb2,
    source_context_pb2,
    struct_pb2,
    timestamp_pb2,
    type_pb2,
    wrappers_pb2,
)

"""
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

"""

class TaskapiImpl:
    def __init__(self, taskfile: str):
        self.taskfile = taskfile
        self.task_id = 0
        self.lock = threading.Lock()

    def __enter__(self):
        """Load tasks from self.taskfile"""
        with open(self.taskfile, mode="rb") as t:       # load
            tasklist = task_pb2.Tasks()
            tasklist.ParseFromString(t.read())
            logging.info(f"Loaded data from {self.taskfile}")
            self.tasks: Mapping[int, task_pb2.Task] = {
                t.id: t for t in tasklist.pending
            }
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        """Save tasks to self.taskfile"""
        with open(self.taskfile, mode="wb") as t:
            tasks = task_pb2.Tasks(pending=self.tasks.values())
            t.write(tasks.SerializeToString())
            logging.info(f"Saved data to {self.taskfile}")

    def addTask(self, request: wrappers_pb2.StringValue, context) -> task_pb2.Task: # add
        with self.lock:         
            if len(request.value) < 1025:                                           # size check
                t = task_pb2.Task(id=self.task_id, description=request.value , state = 0 )
                self.tasks[self.task_id] = t                                        # create new 
                logging.debug(f"addTask parameters {t.state}")
                self.task_id += 1                                                   # increase
                context.set_code(grpc.StatusCode.OK)
                return t
            else:
                logging.debug(f"Max length is 1024")
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
                context.set_details('Description is too long!')
                response = task_pb2.Task(id=None,description= None, state = None) 
                return response


    def delTask(self, request: wrappers_pb2.UInt64Value, context) -> task_pb2.Task: # delete
        if request.value < self.task_id:                                            # valid id
            logging.debug(f"delTask parameters {pformat(request)}")
            tem =  self.tasks.pop(request.value)                                    # pop out
            context.set_code(grpc.StatusCode.OK)
            return tem
        else:
            logging.debug(f"invalid id")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('invalid Id!')
            response = task_pb2.Task(id=None,description= None,state = None) 
            return response

    def editTask_des( self, request, context)->task_pb2.Task:               # edit decreption
        
        if request.id < self.task_id :                                      # valid id
            if len(request.description) < 1025 :                            # over size
                #print( 'curr',self.tasks[request.id].state)
                #print( 'req' , request.state )
        
                logging.debug(f"edit parameters editTask{self.tasks[request.id].state} -> {request.state}") 
                t = task_pb2.Task(id=request.id, description=request.description , state = request.state )
                self.tasks[request.id] = t                              # update 
                logging.debug(f" editTask{self.tasks[request.id].state}")
                #print(t)
                context.set_code(grpc.StatusCode.OK)
                return t
            else :
                logging.debug(f"Max length is 1024")
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
                context.set_details('Description is too long!')
                response = task_pb2.Task(id=None,description= None, state = None) 
                return response
        else:
            logging.debug(f"invalid id")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('invalid Id!')
            response = task_pb2.Task(id=None,description= None,state= None) 
            return response

    def editTask( self, request, context)->task_pb2.Task: 
        print(len(self.tasks),request.id) 
        with self.lock: 
            if request.id < self.task_id :      # invalid
                current_state = self.tasks[request.id].state
                req_state     = request.state ;
                #print( 'curr',current_state, 'req' , req_state )
                 # state machine            
                if (current_state == 0) and ( (req_state <= 1) or (req_state == 4) ) :     # may transition to ASSIGNED or CANCELLED.
                    
                    return self.editTask_des( request , context= context )
                elif current_state == 1 and (current_state == 1 or req_state == 2 ):        # may transition to PROGRESSING only.

                    return self.editTask_des( request , context= context )
                elif current_state == 2 and  ( req_state == 2 or  req_state == 3 or req_state == 4 ) :         # may transition to DONE or CANCELLED.

                    return self.editTask_des( request , context= context )
                else:                                                                       # invalid state 
                    logging.debug(f"incorrect state request {current_state} -> {req_state}")
                    context.set_code(grpc.StatusCode.PERMISSION_DENIED)
                    context.set_details(f"incorrect state request {current_state} -> {req_state}")
                    response = task_pb2.Task(id=None,description= None,state= None) 
                    return response
            else:                                                                           # invlid
                logging.debug(f"invalid id")
                context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
                context.set_details('invalid Id!')
                response = task_pb2.Task(id=None,description= None,state= None) 
                return response
        


    def listTasks(self, request , context) -> task_pb2.Tasks:   # print list
        
        #print(request.selected)
        tem = {}
        if len(request.selected) == 0  :    # if input zero state
            logging.debug("listTasks")
            context.set_code(grpc.StatusCode.OK)
            return self.tasks
        
        if ( max(request.selected) > 4 ) or  ( min(request.selected) < 0 ) :    # state range
            logging.debug(f"out of range {pformat(request)}")
            context.set_code(grpc.StatusCode.OUT_OF_RANGE)
            context.set_details(f"out of range {pformat(request)}")
            return tem


        for i in self.tasks:                                # filter
            y = task_pb2.Task(id=i,description= self.tasks[i].description ,state= self.tasks[i].state )
            tem[i] = y 
            #print(tem[2])

        remove = [k for k in self.tasks.keys() if not tem[k].state in request.selected ]
        for k in remove:  del tem[k]
        print(tem)
        logging.debug(f"listTasks parameters {pformat(request)}")
        context.set_code(grpc.StatusCode.OK)
 
        return task_pb2.Tasks(pending=tem.values()) 

def on_massge_add(mosq, obj, msg):
    print("MESSAGES: " + msg.topic + " " + str(msg.qos) + " " + str(msg.payload))

Mqttc = Mqtt.Client()

Mqttc.message_callback_add("broker/addTask",on_massge_add)


TASKFILE = "tasklist.protobuf"
if __name__ == "__main__":
    Path(TASKFILE).touch()
    logging.basicConfig(level=logging.DEBUG)

    with ThreadPoolExecutor(max_workers=1) as pool, TaskapiImpl(
        TASKFILE
    ) as taskapiImpl:
        taskserver = server(pool)
        task_pb2_grpc.add_TaskapiServicer_to_server(taskapiImpl, taskserver)
        taskserver.add_insecure_port("[::]:50051")
        try:
            taskserver.start()
            logging.info("Taskapi ready to serve requests")
            taskserver.wait_for_termination()
        except:
            logging.info("Shutting down server")
            taskserver.stop(None)
