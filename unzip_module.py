# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 13:09:20 2020

@author: mehdi
"""
import os
import zipfile
import csv
import datetime

archiveFile = "operations/unzipModule.csv"
def archieveOperation(zipfileName,absosutePath,numberOfFiles ,fileNames,isSuccess,motif):
    date=datetime.datetime.now(),
    with open(archiveFile,"a",newline='') as f:
        write = csv.writer(f,delimiter=",")
        write.writerow([str(zipfileName),str(absosutePath),str(numberOfFiles),str(fileNames),str(isSuccess),str(motif),date])


    
def unzipFile(file_name,file_path="zipfiles/",destination_path="unzipped/"):
    target = os.path.realpath(file_path +file_name )
    print("target : ",target)
    if(".zip" not in file_name):
        print("this module only extract zip files")
        archieveOperation(file_name,target,-1,"",False,"is not a zip file")
    else:
        try:
            with zipfile.ZipFile(target,"r") as zip_ref:
                zip_ref.extractall(os.path.join(destination_path, ""))
                archieveOperation(file_name,target,len(zip_ref.infolist()),zip_ref.namelist(),True,"success")
                #print(zip_ref.infolist())
        except Exception as ex :
            archieveOperation(file_name,target,-1,"",False,"error while unzipping : " + str(ex))
            
