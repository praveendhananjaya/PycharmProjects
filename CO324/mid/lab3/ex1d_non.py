# a605a89f4d5368bffe56a783cb10fc64fcd96372

import requests

with requests.Session() as session:


    session.headers['Authorization'] = 'token d2478f40437a0771c9632003dd55b39a83aa0059'
    x = session.get('https://api.github.com/users/praveendhananjaya')
    print(x)
    print(x.headers)
    print(x.content)

    y=session.post( 'https://api.github.com/user/repos' , json = {'name':'test11', 'description':'some test repo'})
    print(y)