# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part b

import requests

git = requests.get("https://api.github.com/users/praveendhananjaya")    # get user information
print( git.headers )
