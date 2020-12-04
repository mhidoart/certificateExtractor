import base64
#import regex
import re


class Base64Extractor:
    def __init__(self):
        self.listBase64 = list()

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
        # print(self.listBase64)
        # print(len(self.listBase64))

    def extract_from_text(self, text):
        r1 = re.findall(
            r"^ (?: [A-Za-z0-9+/]{4})*(?: [A-Za-z0-9+/]{2} == |[A-Za-z0-9+/]{3}=)?$", text)
        print(r1)


'''
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
