# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests


with requests.Session() as session:
    # by using auth token , we can access git . but not yet
    session.headers['Authorization'] = 'token 7252c857dc5f5772d063aca0fedd3343e7337dfa'
    # add authorization token to request header
    print( session.headers )



