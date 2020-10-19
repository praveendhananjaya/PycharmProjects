# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part d

import requests


with requests.Session() as session:
    # by using auth token , we can access git . but not yet
    session.headers['Authorization'] = 'token 0d4275318e150e118cafcd7341291cb9869f31d3'
    # add authorization token to request header
    print( session.headers )



