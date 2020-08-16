# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part e

import requests


with requests.Session() as session:
    # by using auth token ,
    session.headers['Authorization'] = 'token 1f783df7adaa5d4f2e3170ba1e7751044441980a'

    # repo name and description
    repotitle = { 'name':'test' , 'description':'some test repo' }

    git_test = session.post( 'https://api.github.com/user/repos' , json= repotitle )
    # post session

    print( "reply status:- " , git_test.status_code )

    print( "Reply massage:- " , git_test.json() )

    repo_list = session.get('https://api.github.com/user/repos')

    for name in repo_list.json():       # repo list
        print( name['name'] )
    # list contain 'test' repo ,so it make error 422