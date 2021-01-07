import base64
# import regex
import re
import os
import email
from generalUtilities import Utils
import csv


class Base64Extractor:
    def __init__(self):
        self.listBase64 = list()
        # class from the module Utils located in the file generalutilities
        self.tools = Utils()


# this function get the attachements of a given email (base64 attachement)


    def isBase64(self, text):
        try:
            return base64.b64encode(base64.b64decode(str(text))) == text
        except Exception:
            return False

    def extract_from_file(self, file_path):
        content_type = "Content-Transfer-Encoding: base64"
        f = open(file_path, "r")
        lines = [x.strip('\n')
                 for x in list(filter(None, f.readlines()))]
        certificate = None
        detectCertificate = False
        for item in lines:
            if(content_type in item):
                detectCertificate = True
            if(detectCertificate):
                # check if the current line could be a start of a certificate
                if(item == '' and certificate == None):
                    certificate = ""
                    # print("start")
                elif(item != '' and certificate != None):
                    # after detecting the start of a certificate i collect each line from the start in the variable certificate
                    certificate += str(item)
                elif item == '' and certificate != None:
                    # print("stop")
                    # the end of the certificate ( add the detected certificate to the list of certificates 'self.listBase64'
                    # + re init certificate variable to contain next detected certificate 'certificate = None'
                    # + stop  restart the state of detection to nothing detected 'detectCertificate = False'  )
                    self.listBase64.append(certificate)
                    certificate = None
                    detectCertificate = False
        f.close()

# this function parses the email and put results in the folder /tmp (the results are zip files, .cer .crt or any attachement encoded base64)
    def parse_email(self, file_path):
        # read file (an email)
        f = open(file_path, "r")
        fileContent = f.read()
        # parse email
        emailContent = email.message_from_string(fileContent)
        # loop over email attachements
        if emailContent.is_multipart():
            for payload in emailContent.get_payload():
                # if payload.is_multipart(): ...
                # extend the list of base64 with the new ones
                print(payload.get_filename())
                filename = payload.get_filename()
                try:
                    with open(os.path.join('attachements', str(filename)), 'wb') as fp:
                        fp.write(payload.get_payload(decode=True))
                except Exception as ex:
                    print("error parsing email : " + str(file_path))
            # if(self.decoder(payload)(s))
            # self.listBase64.extend(self.is_base64(payload.get_payload()))
            # print(payload.get_payload())
        else:
            self.listBase64.extend(self.is_base64(emailContent.get_payload()))
            # print(emailContent.get_payload())
        f.close()

# this function decodes base64 in order to check if its valid  or not
    def decoder(self, text):
        try:
            # strip the text from line brakes and spaces
            base64_message = str(text).strip()
            base64.b64decode(base64_message)
            return base64.b64decode
        except Exception as ex:
            print("error: in base64 Module" + str(ex))

        return None

    # this function returns a list of base64 found in a given string (the list if empty if it finds nothing)
    def is_base64(self, text):
        self.decoder(text)
        res = re.findall(
            r'^(?:[a-zA-Z0-9+\/]{4})*(?:|(?:[a-zA-Z0-9+\/]{3}=)|(?:[a-zA-Z0-9+\/]{2}==)|(?:[a-zA-Z0-9+\/]{1}===))$', str(text))
        return res

    def convert_file_to_base64(self, file_path):
        with open(file_path, "rb") as f:
            encoded = base64.b64encode(f.read())
            # print(encoded.decode())
            # print(encoded)
            return encoded

    def convert_certificates_to_base64(self, source):
        files = self.tools.fileList(source, ".crt")
        files.extend(self.tools.fileList(source, ".cer"))
        print("extracted certificates => " + str(len(files)))
        outputFile = os.path.join(source, "results.csv")
        print("The output file => " + outputFile)
        cols = ["source file", "base64"]
        cp = 0
        with open(outputFile, "w", newline='') as f:
            write = csv.writer(f, delimiter=",")
            write.writerow(cols)
            for item in files:
                write.writerow([str(item), self.convert_file_to_base64(item)])
                # pourcentage of advencement on converting
                print("convert result files to base64 => {0} {1} ".format(
                    float("{:.2f}".format((cp*100)/len(files))), str("%")))
                cp = cp + 1


# if you want to test this module, execute the following
'''
b64 = Base64Extractor()
b64.convert_certificates_to_base64(
os.path.join(".", "certificates/certificates2021_01_07"))

parser = Base64Extractor()
parser.extract_from_file("samples/1.msg")
parser.extract_from_text("""
Content-ID: <image002.jpg@01D6C89C.449D4820>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAAnAGoDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2akJC
jJOAKWkxmgDNuNVbJSysZ7xvVRtQf8Cb+maoyf8ACVXP+rFjYqfrKw/pXQYqlrGorpGkXWoNE0q2
0RkKKcFsdqQrJmG/hzXrrP2jxJOM9REAg/SoW8CGU5m1i7lP+1K3+NYf/C5rTHOh3I+sy/4Vo6V8
UtOv472a5sZrKK0iEhZmDbyTgKAB1Jp+93Ycsey+4lf4b2bHJuWY+rZP9ahf4bRDmOZcj/aYVR/4
XAgIlPh+6FoWwJt4/wAMZ9s1u6v8QNP07w/Za1bQPe294+xQrBCpwSc578UXn/O/vYuSn/JH7kY8
ngXUYP8Aj3urhcf88rg1WksfFOmgmPVb5AP+emWH9a6nwl4wtvFdrdTx2z2htWAdJGDcEZzx+NYd
h8V7TUNYg06PSZh9onEKyGZccnG7FLmrLab+dn+Y1TodYL5Nr9SpF4s8VWX+tSC+Qf7OD+la2n/E
qxlcRalaS2b92HzqPr3FdNeaJYXoJkgCv/fTg1yGu+GPs6b5FE8GeJAMMn1qXiXD+NC67x0/ApYR
T/gVGn2lqvvO3tL61v4FntLiOaM9GRsipq8Yinv/AAtqK3NjMfLY9D0f/ZYf1r0218UadcWkM7Ps
MsauV9MjOK6XSUoqpSd4s5VX5JOnWXLJEEvi6OCGe5k027FrDK8P2hdpVnVivTOQCRjOKmu/FVja
x2LiOaY30XmQpEMsc4wPqSwH51jCNvKl0yfU9PWye+eeVlLmVlMm/ZgjAOcAnNRRadaRNcSprNr5
sU6yafkErFGrFtjfUsw47Y9KxOk6CLxDi/hsL3TrmzmmbapfayfdLD5gcHoRjrSWPiay1OK1MMMp
+1XEkAR15GwElj7YAP4iuYurA3sl3cDVLCymmVTEsUkjhZA+S5J9VJHAGK1bGHTLHxA18mpwfZFt
xHFCM5WTAVm/FVUUAcn8XY0TXNHCKqjyzkAY/jFdn400ix1Xw01lPeW+ns7K0UspCqXHIB9utYPj
nRofFOo2FzaaxZQrbKQwl3ZPzA8YHtW34ng0PxRobabcajHGwIeKUc7HHQ47igDgT/wmHhrQ/st1
Y2uqaEozgqs0O3Oc7l5AzzTPE+p6fqnw80+bTdPTT1S+dZYI/uq+wkkeoOc1ZXw54gTTzoy+LbIa
aRt8ve2NvpjGce2a0NS8HWD+E7TRdP1u1EkVwbiaacHDsVxwB07UAYFpff8ACH3GqQAlU1HSI5If
99lBH82qrp+mjTPEfhRCuJLjyZ3+rSHH6AV1fiXwpa65Bo6w6zZRS2VqtvOzBvnAxyOPr19at6to
NvqXjHSNUs9Ws47exEKeS27c2xs4HGOlAHohqtfNEllM0+PL2HdmppGZUJVN57DOKy7rSJ9UYf2h
ckQA5EEHyg/Vup/Somm1ZDja92efz6fc65cRabYpucNukkI+WIe59fau/tfDen21rDB5O/ykVNx6
nAxmtC1srWxgENrCkMY/hUY/H3qxTpc1KkqUHov1JqxjWqyqzV2/yQUtFFUMKKKKAOb8T6rPpksb
faJIYzEWiEYH7yQEfKcg8Y/D3p1xqkq+KrWza5MUUsKMsX95iWz/AAn0HcUUUAS6c2qTajezy3AN
pHLLGqEg9CNuBjjHPc5qhYXmrnSr1p5y832NZ4TkHBIbPYY6dP1oooAkj1Ke50S8n0y4Yxm5jjtp
G64JQN1yepbrV6/S9jXTI/ts0bPMI5ihU7htJPJHqB6UUUAbI6UUUUALRRRQB//Z""")
'''
'''
be = Base64Extractor()
be.parse_email("input/samples/1.msg")
be.parse_email("input/samples/2.msg")
be.parse_email("input/samples/3.msg")
be.parse_email("input/samples/4.msg")
be.parse_email("input/samples/5.msg")
be.parse_email("input/samples/6.msg")
be.parse_email("input/samples/7.msg")
be.parse_email("input/samples/8.msg")
be.parse_email("input/samples/9.msg")
be.parse_email("input/samples/10.msg")
be.parse_email("input/samples/11.msg")
be.parse_email("input/samples/12.msg")
be.parse_email("input/samples/13.msg")
be.parse_email("input/samples/14.msg")
'''
