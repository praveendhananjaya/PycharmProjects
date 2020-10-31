from urllib import parse, request

name = 'ප්‍රව්න් ධනාන්ජය '
encode_name = parse.quote_plus(name)

url = 'https://duckduckgo.com/?q=' + encode_name


with request.urlopen(url) as query:
    headers = query.headers.items()
    body = query.read()
    print(body.decode('utf-8'))