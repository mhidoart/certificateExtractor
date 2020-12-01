# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 16:37:15 2020

@author: mehdi
"""
import urllib.request
from urllib.parse import urlparse
import uuid

import re
import os
import requests
from bs4 import BeautifulSoup

downloads = "downloads"

def downloadFile(url):
    output=os.path.realpath(downloads )
    parser = re.search(r'/([\w_-]+[.](jpg|gif|jpeg|png))$', str(url))
    filename =""
    if not parser:
        print("Regex didn't match with the url: {}".format(url))
    else:
        filename = parser.group(1)
    with open(output+"/"+str(uuid.uuid4())+filename, 'wb') as f:
        response = requests.get(url)
        f.write(response.content)