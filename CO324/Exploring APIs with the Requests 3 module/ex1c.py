# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part c

import requests ,json

repos_url = "https://api.github.com/users/praveendhananjaya"

git = requests.get( repos_url )
print( git.headers )
print( 'max request per hour:-' , git.headers['X-RateLimit-Limit'] )
print( 'max request per hour:-' , git.headers['X-RateLimit-Remaining'])
print( 'max request per hour:-' , git.headers['X-RateLimit-Reset'])