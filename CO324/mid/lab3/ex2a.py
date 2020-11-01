from typing import List, Tuple
import requests
from dataclasses import dataclass

@dataclass
class repo_de:
    star: int
    name: str
    repo: str

def github_superstars(orgnanization: str) -> List[Tuple]:
    '''Sirasa superstar for Computer engineers. :)
        1. Get a list of members in the Github organization
        2. For each member, find the repo they own with the most stars.
        3. Add the repo name and the number of stars it has to a list.
        4. Return the list sorted in descending order of stars.
    '''
    #'https://api.github.com/users/cepdnaclk/repos'

    name = orgnanization[19:]
    url = 'https://api.github.com/orgs/'+name+'/members'
    #print(url)

    with requests.Session() as session:
        session.headers['Authorization'] = 'token d2478f40437a0771c9632003dd55b39a83aa0059'

        respos = session.get(url)
        #print(respos.headers)
        my_json = (respos.json())

        max_star = 0
        max_name = ''
        max_repo = ''
        out_list = list()

        for name_list in range(len(my_json)):
            users = (my_json[name_list])
            #print(users['login'])
            #memeber repo
            url_user_repo = 'https://api.github.com/users/'+users['login']+'/repos?-page=l&per_page=68'



            users_repo = session.get(url_user_repo)
            repos=(users_repo.json())
            #print(repos[0])
            max_star = 0

            for x in range(len(repos)):
                  repo_data= repos[x]

                  #print(repo_data['name'],repo_data['stargazers_count'])
                  if( max_star < repo_data['stargazers_count'] )  :
                      max_star = repo_data['stargazers_count']
                      max_name = users['login']
                      max_repo = repo_data['name']
                      tem = repo_de(max_star,max_name,max_repo)
                      out_list.append(tem)

        #print(out_list[0].star)
        out_list = sorted(out_list, key=lambda x: x.star, reverse=True)
        out =
        for
        print(out_list)


github_superstars('https://github.com/cepdnaclk')