#!/usr/bin/python3
"""
1-top_ten
"""
import requests

def top_ten(subreddit):
    headers = {'User-Agent': 'MyBot/0.0.1'}
    url = 'https://www.reddit.com/r/' + subreddit + '/hot.json?limit=10'
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        posts = response.json().get('data').get('children')
        if posts:
            for post in posts:
                print(post.get('data').get('title'))
        else:
            print(None)
    else:
        print(None)
