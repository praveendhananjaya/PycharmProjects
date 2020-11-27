import logging
from concurrent.futures import ThreadPoolExecutor
from grpc import server
import task_pb2, task_pb2_grpc


class TaskapiImpl:
    """'Implementation of the Taskapi service"""

    def __init__(self):
        # TODO: initialise attributes to store our tasks.
        pass

    def addTask(self, request, context):
        logging.info(f"adding task {request.description}")
        # TODO: implement this!

    def delTask(self, request, context):
        logging.info(f"deleting task {request.id}")
        # TODO: implement this!

    def listTasks(self, request, context):
        logging.info("returning task list")
        # TODO: implement this!


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
