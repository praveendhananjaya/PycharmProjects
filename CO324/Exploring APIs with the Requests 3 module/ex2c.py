
# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part 2c

import requests
from typing import List , Tuple

with requests.Session() as session:
    session.headers['Accept'] = 'application/vnd.github.v4'
    # use /graphql for version 4
    session.headers['Authorization'] = 'token 0d4275318e150e118cafcd7341291cb9869f31d3'
    # token
    git_test = session.get('https://api.github.com')
    #git get
    print(git_test.headers['X-GitHub-Media-Type'])
    #version check