# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 13:09:20 2020

@author: mehdi
"""
import os
import zipfile
import csv
import datetime

archiveFile = "visitedUrls.csv"
def archieveOperation(file_name,absosutePath,isSuccess,motif):
    date=datetime.datetime.now(),
    with open(archiveFile,"a",newline='') as f:
        write = csv.writer(f,delimiter=",")
        write.writerow([str(file_name),str(absosutePath),str(isSuccess),str(motif),str(date)])


    
def unzipFile(file_name,file_path="zipfiles/",destination_path="unzipped/"):
    target = os.path.realpath(file_path +file_name )
    print("target : ",target)
    if(".zip" not in file_name):
        print("this module only extract zip files")
        archieveOperation(file_name,target,False,"is not a zip file")
    else:
        try:
            with zipfile.ZipFile(target,"r") as zip_ref:
                zip_ref.extractall(os.path.join(destination_path, ""))
                archieveOperation(file_name,target,True,"success")
        except Exception as ex :
            archieveOperation(file_name,target,False,"error while unzipping : " + str(ex))
            
