# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 16:37:15 2020

@author: Salaheddine
"""
import urllib.request
from urllib.parse import urlparse
import uuid

import re
import os
import requests
from bs4 import BeautifulSoup
import urllib.request
import wget


downloads = "downloads"
visitedUrls = []


def extract_urls_from_text(text):
    urls = re.findall(r'(https?://\S+)', text)
    if(urls != None):
        #print(urls.group("url") )

        cleanList = [item for item in urls if item not in visitedUrls]
        visitedUrls.extend(cleanList)
        return cleanList
    else:
        return ""


def downloadFile(url):
    try:
        output = os.path.realpath(downloads)
        """parser = re.search(r'/([\w_-]+[.](jpg|gif|jpeg|png|crt))$', str(url))
        filename =""
        if not parser:
            print("Regex didn't match with the url: {}".format(url))
        else:
            filename = parser.group(1)
        with open(output+"/"+str(uuid.uuid4())+filename, 'wb') as f:
            response = requests.get(url)
            f.write(response.content)
            """
        print("downloading from : ", url)
        file_name = wget.download(url, out=output)
        print("file name :  ", file_name)
    except Exception as ex:
        print("error download from  url :" + str(url) + " error : " + str(ex))


def extract_urls_and_download(file_path):
    f = open(file_path, "r")
    urls = []
    lines = [x.strip('\n') for x in list(filter(None, f.readlines()))]
    f.close()
    for text in lines:
        if text != '':
            urls.extend(extract_urls_from_text(text))
    for u in list(filter(None, urls)):
        print(u)
        downloadFile(u)


def extract_urls_from_file(file_path):
    f = open(file_path, "r")
    urls = []
    lines = [x.strip('\n') for x in list(filter(None, f.readlines()))]
    f.close()
    for text in lines:
        if text != '':
            urls.extend(extract_urls_from_text(text))
    return urls


def download_all_extracted_urls():
    print("number of extracted urls : " +
          str(len(list(filter(None, visitedUrls)))))
    for u in list(filter(None, visitedUrls)):
        print("downloading : " + u)
        downloadFile(u)
