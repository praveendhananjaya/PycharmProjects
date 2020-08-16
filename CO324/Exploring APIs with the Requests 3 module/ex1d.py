# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests


with requests.Session() as session:
    # by using auth token , we can access git . but not yet
    session.headers['Authorization'] = 'token e742a8f87b08ad07510ea065ba52620947bc7433'
    # add authorization token to request header
    print( session.headers )



