# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests ,json

repos_url = 'https://api.github.com'



git = requests.get('https://api.github.com/?authorization_request = 8b54f4d3c1fe86be1cb45c38256e19fea10ba11c')
print( git.headers )


with requests.Session() as session:


    session.headers['Authorization'] = 'token 8b54f4d3c1fe86be1cb45c38256e19fea10ba11c'

    git = session.get(repos_url)

    print( git.headers )
    #print( session.__doc__ )



