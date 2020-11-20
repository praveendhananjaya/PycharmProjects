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
                logging.debug(f"addTask parameters {pformat(request)}")
                t = task_pb2.Task(id=self.task_id, description=request.value)
                self.tasks[self.task_id] = t
                self.task_id += 1
                return t
        else:
            logging.debug(f"Max length is 1024")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('Description is too long!')
            response = task_pb2.Task(id=None,description= None) 
            return response


    def delTask(self, request: wrappers_pb2.UInt64Value, context) -> task_pb2.Task:
        if request.value < self.task_id:
            logging.debug(f"delTask parameters {pformat(request)}")
            return self.tasks.pop(request.value)
        else:
            logging.debug(f"invalid id")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('invalid Id!')
            response = task_pb2.Task(id=None,description= None) 
            return response

    def nondestructive_editTask( self, request, context)->task_pb2.Task:   #nondestructive_editTask
        if request.id < self.task_id:
            logging.debug("edit parameters ondestructive_editTask")
            return self.addTask (wrappers_pb2.StringValue(value= request.description ),context=context)
        else:
            logging.debug(f"invalid id")
            context.set_code(grpc.StatusCode.INVALID_ARGUMENT)
            context.set_details('invalid Id!')
            response = task_pb2.Task(id=None,description= None) 
            return response



    def destructive_editTask( self, request, context)->task_pb2.Task:       # destructive_editTask
        self.delTask(wrappers_pb2.UInt64Value(value= request.id),context=context)
        return self.addTask( wrappers_pb2.StringValue(value= request.description ),context=context)


    def listTasks(self, request: empty_pb2.Empty, context) -> task_pb2.Tasks:
        logging.debug(f"listTasks parameters {pformat(request)}")
        return task_pb2.Tasks(pending=self.tasks.values())

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
