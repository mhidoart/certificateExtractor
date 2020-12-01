# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 13:09:20 2020

@author: mehdi
"""
import os
import zipfile
import csv
import datetime

# the path to the file that contains data about unzipping operations
operationsFile = "operations/unzipModule.csv"
# function that export data about unzip operations into "operations/unzipModule.csv"
def archieveOperation(zipfileName,absosutePath,numberOfFiles ,fileNames,isSuccess,motif):
    #get time of operation
    date=datetime.datetime.now(),
    #open the archieve mode append in order to not delete previous data about operations
    with open(operationsFile,"a",newline='') as f:
        #delimeter of the csv is ','
        write = csv.writer(f,delimiter=",")
        write.writerow([str(zipfileName),str(absosutePath),str(numberOfFiles),str(fileNames),str(isSuccess),str(motif),date])


'''
 the function who unzip a given file
 
 it takes 1 required param "file_name" and 2 optionnal params (input/output) paths 
@param destination_path : the output directory who will contain unzipped files after unzipping process 
@param file_path : the input directory who contains the zipped files 
'''
def unzipFile(file_name,file_path="zipfiles/",destination_path="unzipped/"):
    # define absolute paths from relative paths of input/output directories (so that the script works on windows,linux,...etc)
    target = os.path.realpath(file_path +file_name )
    output=os.path.realpath(destination_path )
    print("target : ",target)
    if(".zip" not in file_name):
        print("this module only extract zip files")
        #calling archieve operation sample
        archieveOperation(file_name,target,-1,"",False,"is not a zip file")
    else:
        try:
            #opening the zip file mode read only
            with zipfile.ZipFile(target,"r") as zip_ref:
                #extract all files it could be modified to extract only specific files (as optimisation)
                zip_ref.extractall(output)
                archieveOperation(file_name,target,len(zip_ref.infolist()),zip_ref.namelist(),True,"success")
                #print(zip_ref.infolist())
        except Exception as ex :
            archieveOperation(file_name,target,-1,"",False,"error while unzipping : " + str(ex))
            
