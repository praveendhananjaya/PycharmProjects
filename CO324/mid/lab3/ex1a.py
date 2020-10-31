import requests

r = requests.get('https://api.github.com')
print(r)
print(r.json())
print(r.text)