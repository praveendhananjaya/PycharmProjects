import requests

print('python')

response = requests.get("http://api.open-notify.org/astros.json")
print(response.status_code)
print(response.json())

import json

def jprint(obj):

    text = json.dumps(obj,sort_keys=True,indent=4)
    print(text)

#jprint(response.json())

response = requests.get("http://api.open-notify.org/iss-pass.json?lat=40.71&lon;=-74")
jprint(response.json())

parameters = {
    "lat": 40.71,
    "lon": -74
}

response = requests.get("http://api.open-notify.org/iss-pass.json",parameters)
pass_time = response.json()['response']

risetimes = []

from datetime import datetime

for d in pass_time:
    times = d
    time = datetime.fromtimestamp(times)
    risetimes.append(time)
print(risetimes)