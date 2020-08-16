
# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part e

import requests
from typing import List , Tuple


from typing import List, Tuple



def github_superstars(orgnanization: str) -> List[Tuple]:

    #Sirasa superstar for Computer engineers. :
    with requests.Session() as session:
        session.headers['Authorization'] = 'token 1f783df7adaa5d4f2e3170ba1e7751044441980a'

        # repo name and description

        git_memebrs = session.get('https://api.github.com/orgs/cepdnaclk/members')


        for name in git_memebrs.json():        # list of members

            git_memebrs_repo = session.get(f"https://api.github.com/users/{name['login']}/repos")
            # git_memebrs_project = session.get("https://api.github.com/orgs/cepdnaclk/members/AnjanaSenanayake")
            for star in git_memebrs_repo.json() :
                print( "    ",star['name'] ,star['stargazers_count'])


github_superstars("https://github.com/cepdnaclk")