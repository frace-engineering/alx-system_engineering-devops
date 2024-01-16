#!/usr/bin/python3
""" Function that queries the Reddit API.

This function returns the number of subscribers
(not active user,but total subscribers) for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    """Return total number of subscribers on the subreddit.

    If an invalid subreddit is given, return 0 """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return 0
    result = response.json().get("data")
    return result.get("subscribers")
