# -*- coding: utf-8 -*-
"""
Created on Tue Dec 22 13:46:45 2020

the aim of this files is to provide some generalUtilities
"""
import os
import shutil
import ntpath
import csv
from shutil import copyfile


class Utils:

    # this function has as parameter a file path and return the file name
    def path_leaf(self, path):
        head, tail = ntpath.split(path)
        return tail or ntpath.basename(head)

    # this function empties a folder from it fils (usefull after dealing with zip files and downloaded certificates)
    def make_folder_empty(self, path):
        for filename in os.listdir(path):
            file_path = os.path.join(path, filename)
            try:
                if os.path.isfile(file_path) or os.path.islink(file_path):
                    os.unlink(file_path)
                elif os.path.isdir(file_path):
                    shutil.rmtree(file_path)
            except Exception as e:
                print('Failed to delete %s. Reason: %s' % (file_path, e))

    def export_to_csv_file(self, fileName, suffix, outputFolder, cols, data):
        if '.csv' not in fileName:
            fileName += '.csv'
        # if file doesn't have any base64 certificates do nothing
        if len(data) == 0:
            pass
        if not os.path.exists(outputFolder):
            os.makedirs(outputFolder)
        cp = 0
        outputFile = os.path.join(outputFolder, str(fileName)+str(suffix))
        print(outputFile)
        with open(outputFile, "w", newline='') as f:
            write = csv.writer(f, delimiter=",")
            write.writerow(cols)
            for item in data:
                if isinstance(item, list):
                    write.writerow(item)
                else:
                    write.writerow([item])
                cp += 1

    def copy_files_to_folder(self, src, dest="zipfiles", extension=".zip", delete_after_copy=False):
        files = self.fileList(src, extension)
        # copy each file found
        print(src + " >> has " + str(len(files)) +
              " files with the extention : " + str(extension))
        for file in files:
            copyfile(file, os.path.join(dest, self.path_leaf(file)))
            if delete_after_copy == True:
                print("-> deleting file : " + file+"\n")
                os.remove(file)

    def fileList(self, source, extensions):
        matches = []
        for dirpath, _, filenames in os.walk(source):
            for f in filenames:
                if f.endswith(extensions):
                    absPath = os.path.abspath(os.path.join(dirpath, f))
                    matches.append(absPath)
        return matches
    
