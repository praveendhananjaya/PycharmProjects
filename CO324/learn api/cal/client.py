import grpc

# import the generated classes
import calculator_pb2
import calculator_pb2_grpc

# open a gRPC channel
channel = grpc.insecure_channel('localhost:50052')

# create a stub (client)
stub = calculator_pb2_grpc.CalculatorStub(channel)

# create a valid request message
number = calculator_pb2.Number(value=16)

# make the call
response = stub.SquareRoot(number)

# et voilà
print(response.value)

adding = calculator_pb2.Number_couple(valueA=5,valueB=7)
sum1 = stub.AddNumber(adding)
print(sum1.value)

subing = calculator_pb2.Number_couple(valueA=5,valueB=7)
sub = stub.Substrc(subing)
print(sub.value)