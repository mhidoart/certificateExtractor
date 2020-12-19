# -*- coding: utf-8 -*-
"""
Created on Sat Dec 19 13:28:09 2020

@author: mehdi
"""

class Folder:
    def __init__(self):
        self.name = ""
        self.files=[]
        self.folders=[]
    def addFile(self,path):
        self.files.append(path)
    def addFolder(self,path):
        self.folders.append(path)
    def fillObject(self,root,dirs,files):
        if(self.name == ""):
            self.name =root
            self.files = files
            for x in dirs:
                tmp = Folder()
                tmp.name = x
                self.folders.append(tmp)
        elif root in self.name:
            print("hello")
            self.name =root
            self.files = files
            for x in dirs:
                tmp = Folder()
                tmp.name = x
                self.folders.append(tmp)
        else:
           for folder in self.folders:
               folder.fillObject(root,dirs,files)
    def toString(self):
        s = "name : " + self.name +"\n files : " + str(self.files) +"\n dirs : " 
        s = s +  str([x.toString() for x in self.folders])
        return s;
    def __repr__(self):
        return self.toString()