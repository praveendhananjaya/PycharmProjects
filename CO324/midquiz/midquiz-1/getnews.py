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
    #f.write(url)
    #f.write('\n')
    site = "https://lite.cnn.io"+url
    #print(site)
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
    for link in parsed_html.find_all('a'):
        temp = link.string
        for x in keywords :
            if x in temp :
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
