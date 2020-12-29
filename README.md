# certificateExtractor

## install dependencies
to run this project you must have :
python3 + install some packages(bs4,wget..etc)
the next command (you can type it in a terminal) runs an automatic script that installs the necessary packages
'''
./make.sh
'''
Note : when executing this command it may ask you for the root password since it installs packages and makes updates (chech make.sh for more info )

## run the script
before running the script, you have to add input files in /input folder (.msh, .txt, .eml...etc)
the main file of the script is 'certificateExtractor.py' and you can run it using:
```

python3 certificateExtractor.py

```

## how does it work
this script uses modules in order to separate between functional parts to make it easy to alter the program later.
it also makes the code easy to read.
all python files are well documented, and they call each other in order to achieve one objective 'extract certificates'

this script extracts 3 types of certificates (folder /certificates):
base64: this type of certificate are embedded in files and the script extracts them. thanks to 'Base64Extractor' module located in '/extractBase64.py'
.cer and .crt: those certificates are often not embedded and the are directly downloadable thanks the fileDownloader module

the script also manages zip files in case the user gives a zip file as an input or the script downloads a bunch of zipped certificates

all results are stored in /certificate 

## further more 
after executing the script, in /certificates, you will find a folder named 'certificates + current date" and inside of it you will find
different csv files those are base64 certificates extracted from .msg,.text.eml ...etc and each csv file has as a name a number indicating his order followed by the name of the source file (from which the script extracted the base64 certificates)

you will also find one file named : 'All_Certificates.csv' this file contains all base64 certificates extracted from all input files
(note: 'All_Certificates.csv' also works as a history file, if you run the script twice with the same inputs all results are regenerated if they exist except 'All_Certificates.csv' file the second result will be added to it and in this case you will have duplicat certificate,if this is an issue you can change this line 'ith open(outputFile,"a",newline='') as f:' in 'certificateExtractor.py' or you can just use excel to remove duplicates since the file is already a csv file)

side to the csv files you will find .cer and .crt certificates

