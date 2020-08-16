
# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part e

import requests
from typing import List , Tuple


from typing import List, Tuple

def takeSecond(elem):
    return elem[0]

def github_superstars(orgnanization: str) -> List[Tuple]:

    orgnanization = orgnanization.replace("https://github.com/","")
  #  print(orgnanization)
    Out = []
    #Sirasa superstar for Computer engineers. :
    with requests.Session() as session:
        session.headers['Authorization'] = 'token d5ceb65bbc67f1a4f92709d31d4d5c2171daef9c'

        # members
        git_memebrs = session.get(f'https://api.github.com/orgs/{orgnanization}/members')


        for name in git_memebrs.json():        # list of members

            git_memebrs_repo = session.get(f"https://api.github.com/users/{name['login']}/repos")   # member repos

            # read data
            repo_name = ""
            repo_star = 0

            for star in git_memebrs_repo.json() :
                #print(star['name'] ,star['stargazers_count'])
                if( repo_name == "" ):
                    repo_name = star['name']
                    repo_star = star['stargazers_count']
                #person_list.append( {star['name'] , star['stargazers_count'] } )
                if( repo_star < star['stargazers_count'] ):
                    repo_name = star['name']
                    repo_star = star['stargazers_count']

            #print( {repo_star , repo_name} )
            Out.append( (repo_star,repo_name)  )

        Out.sort( key= lambda x:x[0] , reverse=True )

        return Out


print( github_superstars("https://github.com/cepdnaclk") )

