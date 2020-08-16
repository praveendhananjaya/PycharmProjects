# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests


with requests.Session() as session:
    # by using auth token , we can access git . but not yet
    session.headers['Authorization'] = 'token 8b54f4d3c1fe86be1cb45c38256e19fea10ba11c'
    # add authorization token to request header
    print( session.headers )



