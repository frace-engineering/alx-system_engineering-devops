#!/usr/bin/python3
"""Function that prints hot posts on a given reddit subreddit. """
import requests


def top_ten(subreddit):
    """Print the titles of the ten hotest posts on a give subreddit. """
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    params = {
        "limit": 10
    }
    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)
    if response.status_code == 404:
        print("None")
        return
    result = response.json().get("data")
    for c in result.get("children"):
        print(c.get("data").get("title"))
