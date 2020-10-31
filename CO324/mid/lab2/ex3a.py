from typing import List
from urllib import request, parse
import json


def ddg_query(search_term: str, nr_results: int) -> List[str]:

    '''Extracts the top ‘nr_result’ number of URLs from the response.
    Returns extracted URLs as a list.'''
    encode_str = parse.quote_plus(search_term)
    url = "https://www.duckduckgo.com/?q=" + encode_str + "&format=json&pretty=1"
    #print(url)

    out = []

    with request.urlopen(url) as query:
        response = query.read()
        decode_file = response.decode('utf-8')
        my_json = json.loads(response)
        #print(my_json)

        x = (my_json['Results'])    #lock on result
        for i in range(len(x)):
            y = x[i]
            out.append(y['FirstURL'])

        x = my_json['RelatedTopics']
        for i in range(len(x)):
            y = x[i]
            out.append(y['FirstURL'])


    return out[:nr_results]


my_list = ddg_query('University of Peradeniya', 5)
print(my_list)