# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 12:53:50 2020

@author: salaheddine
"""

import unzip_module
import fileDownloader
from extractBase64 import Base64Extractor
from generalUtilities import Utils
import os
import sys
import csv
from datetime import datetime
import glob
import ntpath
import shutil
from shutil import copyfile


"""
unzip_module.unzipFile("zipfiles.zip")
fileDownloader.downloadFile("https://cdn.florajet.com/produits/600/11556.jpg")
parser = Base64Extractor()
parser.extract_from_file("samples/1.msg")
extractedCertificates = parser.listBase64
print("i extracted : ", len(extractedCertificates), " base64 certificates")

"""
targetPath = os.path.join(".", "input")
outputFolder = os.path.join(
    "certificates", "certificates"+str(datetime.today().strftime('%Y_%m_%d')))
attachements_path = os.path.join(".", "attachements")
unzipped_path = os.path.join(".", "unzipped")
download_path = os.path.join(".", "downloads")
zipfiles_path = os.path.join(".", "zipfiles")
# the list that containsall extracted certificates
extracted_certificates = []

# class from the module Utils located in the file generalutilities
tools = Utils()


def copy_downloaded_certificates():
    src = os.path.join(".", "downloads")
    certificates = tools.fileList(src, ".cer")
    certificates.extend(tools.fileList(os.path.join(".", "downloads"), ".crt"))
    for file in certificates:
        copyfile(file, os.path.join(outputFolder, tools.path_leaf(file)))
    tools.make_folder_empty(src)

# export certificates to a csv file


def export_to_File(inputFileName, certificates):
    # if file doesn't have any base64 certificates do nothing
    if len(certificates) == 0:
        pass
    if not os.path.exists(outputFolder):
        os.makedirs(outputFolder)
    cp = 0
    outputFile = os.path.join(outputFolder, inputFileName+"_Certificates.csv")
    print(outputFile)
    with open(outputFile, "w", newline='') as f:
        write = csv.writer(f, delimiter=",")
        write.writerow(["certificate", "date"])
        for item in certificates:
            write.writerow(
                [item, str(datetime.today().strftime('%Y-%m-%d-%H:%M:%S'))])
            cp += 1


def export_All_to_one_File(certificates):
    if not os.path.exists(outputFolder):
        os.makedirs(outputFolder)
    cp = 0
    outputFile = os.path.join(outputFolder, "All_Certificates.csv")
    print(outputFile)
    # open file mode append
    with open(outputFile, "a", newline='') as f:
        write = csv.writer(f, delimiter=",")
        write.writerow(["certificate", "date"])
        for item in certificates:
            write.writerow(
                [item, str(datetime.today().strftime('%Y-%m-%d-%H:%M:%S'))])
            cp += 1


def extract_and_export(input_path, extension):
    # start extracting + exporting certificates
    files = tools.fileList(input_path, extension)
    parser = Base64Extractor()
    print("total files : " + str(len(files)))
    for item in files:
        # fileDownloader.extract_urls_and_download(item)
        fileDownloader.extract_urls_from_file(item)
        # call old version parser that exctract base64 strings from emails and outs them in .csv later (do not reproduce attachements as files)
        parser.extract_from_file(item)
        try:
            extractedCertificates = parser.listBase64
            extracted_certificates.extend(extractedCertificates)
            print("i extracted : ", len(extractedCertificates),
                  " base64 certificates" + "from " + tools.path_leaf(item))
            # export_to_File(str(tools.path_leaf(item)),extractedCertificates)
            # this function replace the previous line since its more general could be used to exportanything to a csv
            tools.export_to_csv_file(str(tools.path_leaf(item)), "_Certificates.csv", outputFolder, [
                                     "certificates"], extractedCertificates)
        except Exception as ex:
            pass

        # new advanced parser that extract files from emails (zip,cer,crt...etc)
        parser.parse_email(item)


# the input area
# extract certificates from .msg files in the targetPath (input) and export results separetly in files.csv
extract_and_export(targetPath, ".msg")
extract_and_export(targetPath, ".eml")


# deal with attachements (file attachements)
def extract_zip_attachements():
    # copy zip attachements to /zipfiles
    tools.copy_files_to_folder(attachements_path, os.path.join(
        ".", "zipfiles"), '.zip', True)


def copy_all_certificate_files():
    # deal with .crt and cer of /downloads
    tools.copy_files_to_folder(
        download_path,
        outputFolder, '.crt', True)
    tools.copy_files_to_folder(
        download_path,
        outputFolder, '.cer', True)
    # deal with .cer and .crt of unzipped
    tools.copy_files_to_folder(
        unzipped_path,  outputFolder, '.crt', True)
    tools.copy_files_to_folder(
        unzipped_path,  outputFolder, '.cer', True)
    # deal with .cer and .crt of attachements
    tools.copy_files_to_folder(
        attachements_path,  outputFolder, '.crt', True)
    tools.copy_files_to_folder(
        attachements_path,  outputFolder, '.cer', True)

# delete content of used folders except input (free up space)


def clean_used_folders():
    tools.make_folder_empty(zipfiles_path)
    tools.make_folder_empty(attachements_path)
    tools.make_folder_empty(unzipped_path)
    tools.make_folder_empty(download_path)


# deal with zipped files
files = tools.fileList(targetPath, ".zip")
extract_zip_attachements()
# unzip all files in unzipped folder
for item in files:
    unzip_module.unzipFile(tools.path_leaf(item), item,
                           os.path.join(".", "unzipped"))

files = tools.fileList(unzipped_path, ".gz")
print("gz files  " + str(len(files)))
# unzip all files in unzipped folder
unzip_module.recurse_and_gunzip(files, unzipped_path)

# end dealing with zip files

# extract sertificates from the unzipped files
extract_and_export(os.path.join(".", "unzipped"), ".msg")


# export all extracted certificates (base64) to one file
export_All_to_one_File(extracted_certificates)

# delete unzippedFiles
tools.make_folder_empty(os.path.join(".", "unzipped"))

# download  extracted urls
fileDownloader.download_all_extracted_urls()


# deal with downloads zip
extract_zip_attachements()
files.extend(tools.fileList(os.path.join(".", "downloads"), ".zip"))
files.extend(tools.fileList(os.path.join(".", "zipfiles"), ".zip"))
for item in files:
    unzip_module.unzipFile(tools.path_leaf(item), item,
                           os.path.join(".", "unzipped"))

extract_and_export(os.path.join(".", "unzipped"), ".msg")

# copy downloaded certificates(.cer and .crt) and empty the download folder
copy_downloaded_certificates()
copy_all_certificate_files()


# (free up space) delete unzipped files copied certificates
clean_used_folders()
