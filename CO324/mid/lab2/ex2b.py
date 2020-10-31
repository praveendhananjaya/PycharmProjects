from urllib import request, parse



second = "Rocco's basilisk"
encode_secod= parse.quote_plus(second)

url = 'https://duckduckgo.com/?q=Rocco%27s+basilisk&t=h_&ia=web'
print(url)

with request.urlopen(url) as query:
    headers = query.headers.items()
    body = query.read()
    print(body.decode('utf-8'))