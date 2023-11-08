#!/usr/bin/python3
"""
2-recurse
"""
import requests


def recurse(subreddit, hot_list=[], after=None):
    headers = {'User-Agent': 'MyBot/0.0.1'}
    url = 'https://www.reddit.com/r/' + subreddit +
    '/hot.json?limit=100&after=' + str(after)
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json().get('data')
        after = data.get('after')
        children = data.get('children')

        if children:
            for child in children:
                hot_list.append(child.get('data').get('title'))

        if after is not None:
            recurse(subreddit, hot_list, after)
        return hot_list

    else:
        return None
