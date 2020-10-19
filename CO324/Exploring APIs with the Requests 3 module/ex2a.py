
# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part 2 a

import requests
from typing import List , Tuple


from typing import List, Tuple

def takeSecond(elem):
    return elem[0]

def github_superstars(orgnanization: str) -> List[Tuple]:   #

    Out = []        #out
    #Sirasa superstar for Computer engineers. :
    with requests.Session() as session:
        session.headers['Authorization'] = 'token 0d4275318e150e118cafcd7341291cb9869f31d3'
        # token
        # members list
        git_memebrs = session.get(f'https://api.github.com/orgs/{orgnanization}/members')


        for name in git_memebrs.json():        # list of members
            git_memebrs_repo = session.get(f"https://api.github.com/users/{name['login']}/repos?-page=l&per_page=68")   # member repos

            # read data
            repo_name = ""
            repo_star = 0

            #  For each member, find the repo they own with the most stars.

            #  Add the repo name and the number of stars it has to a list.
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
            # list append

        Out.sort( key= lambda x:x[0] , reverse=True )

        return Out


#part b
orgnanization = "https://github.com/cepdnaclk"  # orgnanization

orgnanization = orgnanization.replace("https://github.com/","")    #extrack orgnanization

print( github_superstars( orgnanization ))  # print most star

