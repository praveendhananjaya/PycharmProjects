# E/16/081
# Praveen Dhananjaya
# Co324
# Exercise 1

# part a

import requests

git = requests.get("https://api.github.com")
print( git.json )
print( git.text )

# api root replys with bound method response