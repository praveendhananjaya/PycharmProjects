import requests

r = requests.get('https://api.github.com/users/praveendhananjaya')
print(r.text)
print(r.headers)

