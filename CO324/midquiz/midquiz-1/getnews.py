#!/usr/bin/env python3
import sys
import types
import requests
from bs4 import BeautifulSoup
import json

from requests.api import patch

SITE='https://lite.cnn.io/'

def file_open(name , i ):
    strtem = name + str(i)
    f = open(f"save/{strtem}.html", "a")
    f.truncate(0)       # erase old data
    return f

def page_download( f, url ):
    site = "https://lite.cnn.io"+url
    result = requests.get(site)
    f.write(result.text)
    

def get_links(html, keywords):
    #TODO
    
    name = ""
    for ele in keywords :
        name += ele

    parsed_html = BeautifulSoup(html, features="html.parser")
    print(type(parsed_html))
    i = 0
    x = parsed_html.find('ul')
    print(type(x))
    y = BeautifulSoup( str(x) , features="html.parser")
    for link in y.find_all('a'):  # tag search
        temp1 = link.string
        temp = temp1.split(' ')
        #print(temp)
        #print(temp1)
        for x in keywords :
            if x in temp :
                print(temp1)
                #print(x)
                f = file_open(name,i)     # open file
                page_download( f = f , url = link.get('href') )
                i += 1
                break

if __name__ == "__main__":  
    if not len(sys.argv)  > 1:
        print (f'usage: getnews.py keyword')
        exit(-1)

    result = requests.get(SITE)
    keywords = sys.argv[1:]
    get_links(result.text, keywords)
