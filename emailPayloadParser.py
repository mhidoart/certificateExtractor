# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 17:25:02 2020

@author: mehdi
"""
import email
a = """From root@a1.local.tld Thu Jul 25 19:28:59 2013
Received: from a1.local.tld (localhost [127.0.0.1])
    by a1.local.tld (8.14.4/8.14.4) with ESMTP id r6Q2SxeQ003866
    for <ooo@a1.local.tld>; Thu, 25 Jul 2013 19:28:59 -0700
Received: (from root@localhost)
    by a1.local.tld (8.14.4/8.14.4/Submit) id r6Q2Sxbh003865;
    Thu, 25 Jul 2013 19:28:59 -0700
From: root@a1.local.tld
Subject: oooooooooooooooo
To: ooo@a1.local.tld
Cc: 
X-Originating-IP: 192.168.15.127
X-Mailer: Webmin 1.420
Message-Id: <1374805739.3861@a1>
Date: Thu, 25 Jul 2013 19:28:59 -0700 (PDT)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1374805739"

This is a multi-part message in MIME format.

--bound1374805739
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

ooooooooooooooooooooooooooooooooooooooooooooooo
ooooooooooooooooooooooooooooooooooooooooooooooo
ooooooooooooooooooooooooooooooooooooooooooooooo

--bound1374805739--"""

b = email.message_from_string(a)
if b.is_multipart():
    for payload in b.get_payload():
        # if payload.is_multipart(): ...
        print (payload.get_payload())
else:
    print (b.get_payload())