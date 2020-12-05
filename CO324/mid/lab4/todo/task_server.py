import logging
from concurrent.futures import ThreadPoolExecutor
from grpc import server
import task_pb2, task_pb2_grpc


class TaskapiImpl:
    """'Implementation of the Taskapi service"""

    def __init__(self):
        # TODO: initialise attributes to store our tasks.
        self.tasks = task_pb2.Tasks()
        

    def addTask(self, request, context):
        logging.info(f"adding task {request.description}")
        # TODO: implement this!
       # print(type(self.tasks.tasks))
       # response = len(self.tasks.tasks)
       # print("fwsfe",response)
        response = task_pb2.Id()
        response.id =  len(self.tasks.tasks)
        temp = task_pb2.Task()
        temp.id = response.id
        temp.description = request.description
        self.tasks.tasks.append(temp)
        return response

    def delTask(self, request, context):
        logging.info(f"deleting task {request.id}")
        # TODO: implement this!
        response = task_pb2.Task()
        response = self.tasks.tasks[request.id]
        self.tasks.tasks[request.id].description = ""
        return response

    def listTasks(self, request, context):
        logging.info("returning task list")
        # TODO: implement this!
        return self.tasks


if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    with ThreadPoolExecutor(max_workers=1) as pool:
        taskserver = server(pool)
        task_pb2_grpc.add_TaskapiServicer_to_server(TaskapiImpl(), taskserver)
        taskserver.add_insecure_port("[::]:50051")
        try:
            taskserver.start()
            logging.info("Taskapi ready to serve requests")
            taskserver.wait_for_termination()
        except:
            logging.info("Shutting down server")
            taskserver.stop(None)
