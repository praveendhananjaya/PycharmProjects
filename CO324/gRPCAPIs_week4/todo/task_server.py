import logging
from concurrent.futures import ThreadPoolExecutor
from grpc import server
import task_pb2, task_pb2_grpc


class TaskapiImpl:
    """'Implementation of the Taskapi service"""

    def __init__(self):
        # TODO: initialise attributes to store our tasks.
        pass
        self.tasks = task_pb2.Tasks()


    def addTask(self, request, context):
        logging.info(f"adding task {request.description}")
        # TODO: implement this!
        count = len(self.tasks.tasks) + 1
        newtask = task_pb2.Task(id=count, description=request.description)
        self.tasks.tasks.append(newtask)
        print(f"adding task {newtask.id}")
        return task_pb2.Id(id=count)

    def delTask(self, request, context):
        
        # TODO: implement this!
        number = request.id
        for i in range(len(self.tasks.tasks)):
            if self.tasks.tasks[i].id == number:
                temptask = self.tasks.tasks[i]
                self.tasks.tasks.pop(i)
                print(f"deleting task {temptask.id}")
                logging.info(f"deleting task {request.id}")
                return task_pb2.Task(id=temptask.id, description=temptask.description)

        return None


    def listTasks(self, request, context):
        logging.info("returning task list")
        # TODO: implement this!
        print("returning task list")
        return task_pb2.Tasks(tasks=self.tasks.tasks)


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
