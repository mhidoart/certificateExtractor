# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 12:53:50 2020

@author: salaheddine
"""

import unzip_module
import fileDownloader
from extractBase64 import Base64Extractor
unzip_module.unzipFile("zipfiles.zip")
fileDownloader.downloadFile("https://cdn.florajet.com/produits/600/11556.jpg")
parser = Base64Extractor()
parser.extract_from_file("samples/1.msg")
