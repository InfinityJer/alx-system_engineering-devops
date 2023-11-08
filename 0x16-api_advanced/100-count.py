#!/usr/bin/python3
"""
100-count
"""
import requests


def count_words(subreddit, word_list, word_count=None, after=None):
    if word_count is None:
        word_count = {word: 0 for word in word_list}

    headers = {'User-Agent': 'MyBot/0.0.1'}
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json().get('data')
        after = data.get('after')
        children = data.get('children')

        if children:
            for child in children:
                title = child.get('data').get('title').lower()
                for word in word_list:
                    if f" {word} " in f" {title} ":
                        word_count[word] += 1

        if after is not None:
            count_words(subreddit, word_list, word_count, after)
        else:
            sorted_words = sorted(word_count.items(),
                                  key=lambda x: (-x[1], x[0]))
            for word, count in sorted_words:
                if count > 0:
                    print(f"{word}: {count}")

    else:
        return
