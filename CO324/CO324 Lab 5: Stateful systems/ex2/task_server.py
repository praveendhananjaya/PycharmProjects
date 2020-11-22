"""TODO:
    * Implement error handling in TaskapiImpl methods
    * Implement saveTasks, loadTasks
    * Implement TaskapiImpl.editTask (ignoring write conflicts)
    * Fix data race in TaskapiImpl.addTask
"""
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import logging
from pprint import pformat
from typing import Mapping, Sequence, Tuple
import threading
import grpc


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
from grpc import server, StatusCode
import task_pb2, task_pb2_grpc


class TaskapiImpl:
    def __init__(self, taskfile: str):
        self.taskfile = taskfile
        self.task_id = 0
        self.lock = threading.Lock()

    def __enter__(self):
        """Load tasks from self.taskfile"""
        with open(self.taskfile, mode="rb") as t:
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

    def addTask(self, request: wrappers_pb2.StringValue, context) -> task_pb2.Task:

        if len(request.value) < 1025:
            with self.lock: # data race lock
                t = task_pb2.Task(id=self.task_id, description=request.value , state = 0 )
                self.tasks[self.task_id] = t
                logging.debug(f"addTask parameters {t.state}")
                self.task_id += 1
                context.set_code(grpc.StatusCode.OK)
                return t
        else:
            logging.debug(f"Max length is 1024")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('Description is too long!')
            response = task_pb2.Task(id=None,description= None, state = None) 
            return response


    def delTask(self, request: wrappers_pb2.UInt64Value, context) -> task_pb2.Task:
        if request.value < self.task_id:
            logging.debug(f"delTask parameters {pformat(request)}")
            tem =  self.tasks.pop(request.value)
            context.set_code(grpc.StatusCode.OK)
            return tem
        else:
            logging.debug(f"invalid id")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('invalid Id!')
            response = task_pb2.Task(id=None,description= None,state = None) 
            return response

    def editTask_des( self, request, context)->task_pb2.Task:   
        if request.id < self.task_id :
            if len(request.description) < 1025 :
                logging.debug("edit parameters editTask")
                t = task_pb2.Task(id=request.id, description=request.description , state = request.state )
                self.tasks[self.task_id] = t
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
        current_state = self.tasks[request.id]
        req_state     = request.state ;

        if current_state.state == 0 and ( req_state <= 1 or req_state == 4 ) :
            return self.editTask_des( request , context= context )
        elif current_state.state == 1 and req_state == 2 :
            return self.editTask_des( request , context= context )
        elif current_state.state == 2 and ( req_state <= 3 or req_state == 4 ) :
            return self.editTask_des( request , context= context )
        else:
            logging.debug(f"incorrect state request {current_state} -> {req_state}")
            context.set_code(grpc.StatusCode.PERMISSION_DENIED)
            context.set_details(f"incorrect state request {current_state} -> {req_state}")
            response = task_pb2.Task(id=None,description= None,state= None) 
            return response

        


    def listTasks(self, request , context) -> task_pb2.Tasks:
        
        tem = task_pb2.Tasks 
         
        
        if ( max(request.selected) > 5 ) or  ( min(request.selected) < 0 ) :
            logging.debug(f"out of range {pformat(request)}")
            context.set_code(grpc.StatusCode.OUT_OF_RANGE)
            context.set_details(f"out of range {pformat(request)}")
            return tem

        tem = self.tasks   

        remove = [k for k in self.tasks.keys() if not tem[k].state in request.selected ]
        for k in remove:  del tem[k]
        print(tem)
        logging.debug(f"listTasks parameters {pformat(request)}")
        context.set_code(grpc.StatusCode.OK)
 
        return task_pb2.Tasks(pending=tem.values())

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
