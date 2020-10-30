from urllib import request, parse


#response = request.urlopen('http://localhost:8080/')
#print('RESPONSE:', response)
#print('URL     :', response.geturl())


#headers = response.info()
#print('DATE    :', headers['date'])
#print('HEADERS :')
#print('---------')
#print(headers)


#data = response.read().decode('utf-8')
#print('LENGTH  :', len(data))
#print('DATA    :')
#print('---------')
#print(data)

#response2 = request.urlopen('http://localhost:8080/')
#for line in response2:
#    print(line.decode('utf-8').rstrip())


#query_args = {'q': 'query string', 'foo': 'bar'}
#encoded_args = parse.urlencode(query_args)
#print('Encoded:', encoded_args)

#url = 'http://localhost:8080/?' + encoded_args
#print(request.urlopen(url).read().decode('utf-8'))


#from urllib import parse
#from urllib import request

#query_args = {'q': 'query string', 'foo': 'bar'}
#encoded_args = parse.urlencode(query_args).encode('utf-8')
#url = 'http://localhost:8080/'
#print(request.urlopen(url,encoded_args).read().decode('utf-8'))


r = request.Request('http://localhost:8080/')
r.add_header(
    'User-agent',
    'PyMOTW (https://pymotw.com/)',
)

response = request.urlopen(r)
#data = response.read().decode('utf-8')
#print(data)