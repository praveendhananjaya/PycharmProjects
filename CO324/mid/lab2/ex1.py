from urllib import request

response = request.urlopen("http://eng.pdn.ac.lk")

print(response.code)


print(response.headers.items() )
print(response.info())

body = response.read()


response.close()

print(body.__sizeof__())
print(type(body))