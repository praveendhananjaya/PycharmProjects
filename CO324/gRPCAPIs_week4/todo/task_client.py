from typing import Sequence, Mapping, Tuple
import random, string, logging, grpc
import task_pb2, task_pb2_grpc


def random_string_generator(str_size, allowed_chars):
    return "".join(random.choice(allowed_chars) for x in range(str_size))


# Test that will be used to grade addTask
def test_add(stub, count) -> Mapping[int, str]:
    tasks = {}
    for i in range(count):
        desc = random_string_generator(99, string.ascii_letters)
        response = stub.addTask(task_pb2.TaskDesc(description=desc))
        tasks[response.id] = desc

    return tasks


# Test that will be used to grade listTask
def test_list(stub, tasks) -> None:
    response = stub.listTasks(task_pb2.Empty())
    for t in response.tasks:
        # Is the proper task desc is returned for this id?
        assert t.desc == tasks[t.id]


# Test that will be used to grade delTask
def test_del(stub, task_ids) -> None:
    for i in task_ids:
        stub.delTask(task_pb2.Id(id=i))


if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    with grpc.insecure_channel("localhost:50051") as channel:
        stub = task_pb2_grpc.TaskapiStub(channel)

        tasks = test_add(stub, 10)
        logging.info(f"added tasks {tasks}")
        test_list(stub, tasks)
        test_del(stub, tasks.keys())
