import base64
#import regex
import re




class base64Extractor:
    def __init__(self):
        self.listBase64 = list()

    def isBase64(self, text):
        try:
            return base64.b64encode(base64.b64decode(str(text))) == text
        except Exception:
            return False

    def extract_from_file(self,file_path):
        f = open("D:\\myfiles\welcome.txt", "r")
        print(f.read())


    def extract_from_text(self,text):
        r1 = re.findall(r"^ (?: [A-Za-z0-9+/]{4})*(?: [A-Za-z0-9+/]{2} == |[A-Za-z0-9+/]{3}=)?$", text)
        print(r1)


parser = base64Extractor()
parser.extract_from_text("""cmdkamdkeXRkeXRkeWR5dGR5anRkeXRkamR5dGRkZGRkZGRkZGRkeXRnZmRoZnhyZ2RqZ2R5dGR5dGR5ZHl0ZHlqdGR5dGRqZHl0ZGRkZGRkZGRkZGR5dGdmZGhmeHJnZGpnZHl0ZHl0ZHlkeXRkeWp0ZHl0ZGpkeXRkZGRkZGRkZGRkZHl0Z2ZkaGZ4cmdkamdkeXRkeXRkeWR5dGR5anRkeXRkamR5dGRkZGRkZGRkZGRkeXRnZmRoZng=""")

