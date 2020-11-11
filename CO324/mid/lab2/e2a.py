from urllib import request, parse

with request.urlopen('https://www.duckduckgo.com/?q=University+of+Peradeniya') as query:
    headers = query.headers.items()
    body = query.read()

    print(body.decode('utf-8'))

with request.urlopen('https://www.duckduckgo.com/?q=University+of+Peradeniya&format=json&pretty=1') as query:
    headers2 = query.headers.items()
    body2 = query.read()

    print(body2.decode('utf-8'))