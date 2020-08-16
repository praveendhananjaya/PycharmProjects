# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests


with requests.Session() as session:
    # by using auth token , we can access git . but not yet
    session.headers['Authorization'] = 'token 1f783df7adaa5d4f2e3170ba1e7751044441980a'
    # add authorization token to request header
    print( session.headers )



