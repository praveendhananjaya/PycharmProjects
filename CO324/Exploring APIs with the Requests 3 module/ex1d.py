# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests


with requests.Session() as session:
    # by using auth token , we can access git . but not yet
    session.headers['Authorization'] = 'token d5ceb65bbc67f1a4f92709d31d4d5c2171daef9c'
    # add authorization token to request header
    print( session.headers )



