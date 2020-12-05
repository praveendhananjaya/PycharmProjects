#!/usr/bin/env python3
import sys
import types
import requests
from bs4 import BeautifulSoup
import json

from requests.api import patch

SITE='https://lite.cnn.io/'

def file_open():
    f = open("document.txt","a")
    f.truncate(0)       # erase old data
    return f

def page_download( f, url ):
    #f.write(url)
    #f.write('\n')
    site = "https://lite.cnn.io"+url
    #print(site)
    result = requests.get(site)
    temp = BeautifulSoup( result.text, features="html.parser" )

    f.write('\n')
    f.write(temp.get_text('\n'))
    f.write('\n')

def get_links(html, keywords):
    #TODO
    f = file_open()     # open file
    parsed_html = BeautifulSoup(html, features="html.parser")
    print(type(parsed_html))
    for link in parsed_html.find_all('a'):
        temp = link.string
        for x in keywords :
            if x in temp :
                #print(link.get('href'), temp )
                #print(temp)
                #print(link.get('href'))
                page_download( f = f , url = link.get('href') )
                break

if __name__ == "__main__":  
    if not len(sys.argv)  > 1:
        print (f'usage: getnews.py keyword')
        exit(-1)

    result = requests.get(SITE)
    keywords = sys.argv[1:]
    get_links(result.text, keywords)
