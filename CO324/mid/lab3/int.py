import requests
import json

r = requests.get('https://github.com/timeline.json')
print(r.status_code)
print(r.text)

print(r.headers['date'])

github_url = "https://api.github.com/user/repos"
data = json.dumps({'name': 'test', 'description': 'some test repo'})
r = requests.post(github_url, data, auth=('user', '*****'))

print(r.json)