from urllib import request
import requests

response = requests.head("http://unknown.pdn.ac.lk")

print(response)