# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 12:53:50 2020

@author: salaheddine
"""
"""
the variable mode changes the behaviour of the script:
    
    mode =1 : the script red all files and folders in the /input folder and extract all certificates
    mode = 2 : you give the script the path of a specific file
the default behaviour is mode= 1
"""

import os
import sys
import unzip_module
import fileDownloader
from extractBase64 import Base64Extractor
from FolderClass import Folder

mode = 1
topFolder ="input"
"""
unzip_module.unzipFile("zipfiles.zip")
fileDownloader.downloadFile("https://cdn.florajet.com/produits/600/11556.jpg")
parser = Base64Extractor()
parser.extract_from_file("samples/1.msg")
extractedCertificates = parser.listBase64
print("i extracted : ", len(extractedCertificates), " base64 certificates")
"""
inputStructure = Folder()

for root, dirs, files in os.walk(topFolder, topdown=True):
    print(root)
    inputStructure.fillObject(root,dirs,files)

print(inputStructure)    
    

"""
all_files =[]
# function that returns all files recurssively from folder
def files_from_folder(path):
    os.walk(path)
    ll = [x[0] for x in os.walk(path)]    
    print(ll)
    for folder in ll:
         ll.append(files_from_folder(os.path.abspath(folder) ))
         return ll

print(files_from_folder(directory))
"""
if mode == 1:
    pass
elif mode ==2:
    pass
else:
    print("the execution mode should be ")