from urllib import request, parse
import json
from typing import List

def spider_metadata(urls: List[str]) -> List[List]:
    '''Returns the HTTP headers for each of the URLs in the list.'''
    out = []
    for x in range(len(urls)):
        #print(urls[x])
        with request.urlopen(urls[x]) as query:
            #print(response.code)
            out.append(query.headers.items())

    return out

rep = spider_metadata(['http://www.pdn.ac.lk','https://feels.pdn.ac.lk/mod/page/view.php?id=11862'])
print(rep)