Received: from crypto4 (crypto.esforin.com [127.0.0.1])
	by crypto.esforin.com (CipherMail) with ESMTP id D393C1876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:18:16 +0100 (CET)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05lp2109.outbound.protection.outlook.com [104.47.18.109])
	by crypto.esforin.com (CipherMail) with ESMTPS id 5EFD91876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:18:16 +0100 (CET)
Received: from AM6PR05CA0022.eurprd05.prod.outlook.com (2603:10a6:20b:2e::35)
 by AS8P191MB1430.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:2e5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 2 Dec
 2020 12:18:15 +0000
Received: from HE1EUR01FT027.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:20b:2e:cafe::76) by AM6PR05CA0022.outlook.office365.com
 (2603:10a6:20b:2e::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18 via Frontend
 Transport; Wed, 2 Dec 2020 12:18:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=esforin.com; ops.xpergy.com; dkim=none (message not signed)
 header.d=none;ops.xpergy.com; dmarc=bestguesspass action=none
 header.from=esforin.com;
Received-SPF: Pass (protection.outlook.com: domain of esforin.com designates
 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 HE1EUR01FT027.mail.protection.outlook.com (10.152.0.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Wed, 2 Dec 2020 12:18:15 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.171) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 02 Dec 2020 12:18:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WajsypdwTwq1UAQLwFDQ8x9e9JZxXELtVOdZFDnaaWsLjGmWesOWoo/84VrvhzmI6lMqs6JZnJRQ417kFQO6iGIyhxrDvOvowtweFbtoSM6U9iHlxl7e2Czv466iiVLiE3XdzFTQrW5sLG7nenYsyCWWVtbRxxnYeP3iuC+lw5Vh2QoOQBVHK/9bYibKPib8K8wCZUzSqRzFuB+eOZQPvUT9qRErYUq1wTFStKOvbxSAa5BZuPKs1tRaci0slEN/dqxwwwcC+OVytnslTYMvy9Q9RA6Ed5tC+pUOrKXJv8Plbm4dpdeajjUbJJh8mODnv3w6JBU3KXIM+Dtleu1Msw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=32AljvX7PL9JX6WSKZgdwl3XhCx8wFy6TCsH7MEspac=;
 b=Br2FKYjbBXnHNMaHsSKMhfFVTsz4sUcpITLV1G3c6ltnwYv5aZK3EBa5JUAgQG9BevlKB+T8XTE6H/oxcPrBATHZezYW0/tXXk2Hruen/7dI+Gw9ZgOCJtOdWChNcaswhE2Up+itfcJNzf4fyU0g4DWnU8kxPqEb4FE7v+W9+y7GCA3Dd8TS2nhRtJEawcYuMtZOe1U4tSKjqMQqAMiMRY2ZSIP02cd7sZ8FsnxcMMqTdEtZKWZjNt8qvs/eBtD1sdejweZifXNV55Mvw2crJLOtuhJSsjCYMgseZxzzeK8sz2ERSil0b6ltnWF7bvrUlgyjYnhWTje7jlJ1w8TYbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=esforin.com; dmarc=pass action=none header.from=esforin.com;
 dkim=pass header.d=esforin.com; arc=none
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1ff::13)
 by AM4P191MB0036.EURP191.PROD.OUTLOOK.COM (2603:10a6:200:65::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.31; Wed, 2 Dec
 2020 12:18:12 +0000
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6]) by AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6%5]) with mapi id 15.20.3611.031; Wed, 2 Dec 2020
 12:18:12 +0000
From: mabis-clearing ES FOR IN SE <mabis-clearing@esforin.com>
To: "zerti_manager@ops.xpergy.com" <zerti_manager@ops.xpergy.com>
Subject: wg
Thread-Topic: wg
Thread-Index: AdbIpTNqLvR9QN9eQiy6Uk3gxWmElQ==
Date: Wed, 2 Dec 2020 12:18:12 +0000
Message-ID: <AM9P191MB12216EBFDDC037B7AA3ABB95F7F30@AM9P191MB1221.EURP191.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
Authentication-Results-Original: ops.xpergy.com; dkim=none (message not
 signed) header.d=none;ops.xpergy.com; dmarc=none action=none
 header.from=esforin.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [46.30.80.220]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 81a3b127-b48c-402d-2121-08d896bc5844
x-ms-traffictypediagnostic: AM4P191MB0036:|AS8P191MB1430:
X-Microsoft-Antispam-PRVS:
	<AS8P191MB1430B550ABD164CE1BD947E19FF30@AS8P191MB1430.EURP191.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:415;OLM:597;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 GXMrApLit/C/SmKdV5Z42XFmsBzXJPwdWYU5QAJPj5C7YGxAivpPVvmqlqzZFjm+G9TTP0nOyKs8yQgQ+2OXH3oehHNLHKMyVJTrLY18moVMSjgodULMSJ4U2EokbHNUcjhix0WQasYJejqol0m0yA9FoeeVfGOPxh7JBu4s3zzwMAEFyyV9k7SEy4X8TeabQhjACcr8GuuO1bSwBUMkzF9ys6auAwR6SzDTAF9Oq7/KtU7lxKM/cx9I3sdRs2pvg9uFA3vRLTPYYjWrYGLN7Y/X/vfNIppy8w+fU08p31ISmp2Vo1Uaj0L2CRt4fdr1i3/WD/DW02Y7qrt4eRNBCHFuVxzhW7rKGNUMK31njbMCvdiBgkfL1KBMEBZe9XVI
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P191MB1221.EURP191.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(376002)(39830400003)(366004)(136003)(6506007)(83380400001)(5660300002)(55016002)(6916009)(9686003)(2906002)(64756008)(52536014)(26005)(7696005)(66556008)(316002)(66446008)(66476007)(66574015)(186003)(86362001)(66576008)(66946007)(76116006)(7116003)(3480700007)(478600001)(71200400001)(8676002)(19627235002)(8936002)(33656002)(99936003)(220243001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?2YlzhjZs16fn2eCYT9Q7X88FgtvUanYhsOY81twodp/77jRKoE8yt2u8Uu?=
 =?iso-8859-1?Q?WUVGhpKK7M15la8dhbZ48Zf/7BpxASWKghELrKBIkFrRc+QVNj+mbxRi3r?=
 =?iso-8859-1?Q?BdRlXO8pxJJChx0JKwFdXBi4BuE73pvBMK8RWU1Ynt2lrZnR7bPMs8e7+u?=
 =?iso-8859-1?Q?KsLk0xLIZq7b0Cq2E46u7hmj5u9fEko7kIPnjKWWZAdSFaafGryCrAL+JQ?=
 =?iso-8859-1?Q?Ty6L0OdKST5LTePSaRCnHirggoeHX6ReB7w8jqFBGcdXjmjw+wuYberhDv?=
 =?iso-8859-1?Q?vtKYi/CLPH+cv0k2S6neFarSvVojVxbmTu5Q+tj5Pcjx5kgEgZum27/+J7?=
 =?iso-8859-1?Q?dedH5GOvLAIAg8pYWrRCwV+PI96LXpqMIotDaTODuNCFtyHA9tD0Ef8+4k?=
 =?iso-8859-1?Q?+XTtr66+xK+Ia7ZrCYCwdVKWykA/UqRr1520RQqGLbfycexpIeldOeaJOn?=
 =?iso-8859-1?Q?Sm/yCpUyG2g9Wed3KtYHqsUgJhUnq0k8FxUFw/wS5cGD9x5IzZI8b2fhtW?=
 =?iso-8859-1?Q?2a61RBnh/fCUxoQYIVwUjoatMvf9pi1Mi5rp2RuLc1Z7q2sm/xIoYao5KU?=
 =?iso-8859-1?Q?Ys1wdHvJ9IrHg/OREylSFovdcwfPVvs0UNF41YuCw0e9ztuNfcG2WZmyLC?=
 =?iso-8859-1?Q?jai0X9mVagEPooY/zKbbGNUfVd1vgSI5lmPIVKofHNbDLkMfW/feDpqdfi?=
 =?iso-8859-1?Q?r0wslhr1OtIP9wEDP3k02bk1MsBKkRccru09cKxkeNpiYEawT3iB1fHmvy?=
 =?iso-8859-1?Q?uNBGm+qp9ro3OPFHHP0EnjbcA6iEsm3eEHMbaAX6GZZp2oyGfQZIP3EjVU?=
 =?iso-8859-1?Q?E8eAsaMsD153preO9no9PmzOEEsSOSBRUw9hwiU/+YVgyKFCw6rWC/jxa3?=
 =?iso-8859-1?Q?BzAkUWvHzRzTi5N3sWzN5h+xTNXxhIFMRClYYK7a+1rU2t2fsTK/opp9X4?=
 =?iso-8859-1?Q?P9eR4zmIL1waW4nIrYxB4JgV82nU5QC2nrAgpsPtKk6WTZOtFmhkca8SzT?=
 =?iso-8859-1?Q?mILEw0Db+xc4qBNWI=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P191MB0036
X-CodeTwo-MessageID: 0cde0c40-4456-4419-90e1-c557bc030fee.20201202121814@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.25b5ab47-3097-413f-849d-97db8828efd9.fdceb70f-8d71-4968-bff7-5465e8f70c15@emailsignatures365.codetwo.com>
 <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.5477e1e9-c65b-462f-b4bf-fb410475fbbf.35fe1fdc-dcbd-493a-8f16-7c6fe9d528c7@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 HE1EUR01FT027.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	20a180db-d8bc-428a-2770-08d896bc56d1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	7Oo9bpYL+5dNSFeasbzyKOx0BcHiYyBHzEdVhPShpTfIoabgbYunEVVvC51XdBgvMkBtH/BQcsOeD/6xJnFOLoyapoF689YlgdBeVOsO6uZrC2R2iflu02pjweknwTMYNc9wpKXIQYiy7/Z/dVgghY7nqucMydNPVjatK0jGJBKz9AjI+ztpg5btgqJaLZgWOjZe24shFUL7AgjIHSkDWLDs1AEzlmVtyxb26PR7GrONIdS8WHXdk+IaCVFjdCspMrWSkVBAzs7Xr3Z6m0/8COYxKki98f3ATWL6RM6a+DZw01Rv7IcQ/6rPKPvJDeT2GLCgb+wM1B/GsjnO59eYyUhPaCc0zijJAEmSNhdjp1OZhpfnjTJIH+ESQg2UTdTUuguc7537DiSkrq+iygUEwutt/G4FF4UxkG1Urw8MC7wC2+nulX8E7cOrxR095wygxsZamzTR/ryw+Z6zJ25kltsHZPPOpALFNeDQcDv1UPNHG+2iYvFSygV/QMoalSsKz/3GPeaJD79dhteEPPqxbg==
X-Forefront-Antispam-Report:
	CIP:13.81.10.179;CTRY:NL;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(4636009)(376002)(346002)(396003)(39830400003)(136003)(46966005)(7636003)(55016002)(86362001)(47076004)(2906002)(99936003)(7596003)(356005)(166002)(21480400003)(21470400002)(336012)(9686003)(186003)(26005)(33656002)(19627235002)(66574015)(478600001)(8676002)(8936002)(82310400003)(6506007)(7116003)(45080400002)(6916009)(7696005)(235185007)(3480700007)(316002)(5660300002)(66576008)(70206006)(70586007)(52536014)(83380400001)(1650700003)(220243001);DIR:OUT;SFP:1102;
X-OriginatorOrg: esforin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2020 12:18:15.1333
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81a3b127-b48c-402d-2121-08d896bc5844
X-MS-Exchange-CrossTenant-Id: fb4ee507-9176-4f20-8267-f430d25c9b49
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=fb4ee507-9176-4f20-8267-f430d25c9b49;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource:
	HE1EUR01FT027.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P191MB1430

--_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: multipart/alternative;
	boundary="_000_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_"

--_000_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable




Amtsgericht Essen HRB 25724     Vorstand: Christian H=F6velhaus (CEO), Chri=
stoph Gardlo (COO)     Aufsichtsratsvorsitzender: Dr. Klaus Kasper

Bitte beachten Sie unsere Datenschutzinformation. / Please note our privacy=
 statement. ES FOR IN Datenschutz-Information<http://www.esforin.com/datens=
chutz>
Von: info-netz-strom <info-netz-strom@stadtwerke-stendal.de>
Gesendet: Mittwoch, 25. November 2020 10:28
An: info-netz-strom <info-netz-strom@stadtwerke-stendal.de>
Betreff: Korrektur!!! Sofort g=FCltig!!! Neues Zertifikat der Stadtwerke - =
Altm=E4rkische Gas-, Wasser- und Elektrizit=E4tswerke GmbH Stendal


Sehr geehrte Damen und Herren,



leider hat sich in der Mail vom 28.10.2020 das enthaltene Zertifikat als fe=
hlerhaft  herausgestellt. Bitte verwenden Sie dieses nicht.



Daher erhalten Sie mit dieser Mail ein neues Zertifikat im Anhang, um weite=
rhin eine reibungslose Marktkommunikation zu gew=E4hrleisten.

Edifact-Adressen:

betrieb@stadtwerke-stendal.de<mailto:betrieb@stadtwerke-stendal.de>        =
            9900742000006

betrieb-gas@stadtwerke-stendal.de<mailto:betrieb-gas@stadtwerke-stendal.de%=
5e>             9870024400002

vertrieb@stadtwerke-stendal.de<mailto:vertrieb@stadtwerke-stendal.de>      =
            9903816000001

vertrieb-gas@stadtwerke-stendal.de<mailto:vertrieb-gas@stadtwerke-stendal.d=
e>                       9800013900002





Das Zertifikat ist bereits g=FCltig und kann ab sofort, jedoch sp=E4testens=
 zum 01.12.2020, von Ihnen f=FCr die Verschl=FCsselung verwendet werden. Di=
e alten Zertifikate werden ab dem 09.12.2020 ung=FCltig sein.


Sollten Sie nicht der zust=E4ndige Ansprechpartner sein, so leiten Sie dies=
e E-Mail bitte an die entsprechende Stelle in Ihrem Hause weiter.

F=FCr R=FCckfragen stehen wir Ihnen gerne zur Verf=FCgung.


Mit freundlichen Gr=FC=DFen

gez. i. A. Cathrin Breyer
Betriebsmanagement B3

Stadtwerke - Altm=E4rkische Gas-, Wasser-
und Elektrizit=E4tswerke GmbH Stendal
Rathenower Stra=DFe 1
39576 Hansestadt Stendal

Tel.: 03931/688-280
Fax.: 03931/688-580
E-Mail: info-netz-strom@stadtwerke-stendal.de<mailto:info-netz-strom@stadtw=
erke-stendal.de>

Gesch=E4ftsf=FChrung:
Dipl.-Kaufm. Thomas Br=E4uer
Dipl.-Ing., Dipl.-Wirtsch.-Ing. Thorsten Jansing
Vorsitzender des Aufsichtsrates: Klaus Schmotz
Amtsgericht Stendal, HRB 352
FA Stendal, Steuer-Nr. 108/108/026 48
Commerzbank Stendal KTO 850 136 300  BLZ 810 400 00
IBAN DE16 8104 0000 0850 136300      BIC COBADEFF810
Kreissparkasse Stendal KTO 3 010 004 302  BLZ 810 505 55
IBAN DE95 8105 0555 3010 004302    BIC NOLADE21SDL

Diese E-Mail bzw. deren Anlage kann Betriebs- oder Gesch=E4ftsgeheimnisse, =
dem Berufsgeheimnis unterliegende oder sonstige vertrauliche Informationen =
enthalten. Sollten Sie diese E-Mail irrt=FCmlich erhalten haben, ist ihnen =
eine Kenntnisnahme des Inhalts, jede Ver=F6ffentlichung, Vervielf=E4ltigung=
, Verteilung oder sonstige in diesem Zusammenhang stehende Handlung der E-M=
ail ausdr=FCcklich untersagt. Bitte benachrichtigen Sie uns und vernichten =
Sie die empfangene E-Mail. Vielen Dank.

--_000_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Nur Text Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:EN-US;}
span.NurTextZchn
	{mso-style-name:"Nur Text Zchn";
	mso-style-priority:99;
	mso-style-link:"Nur Text";
	font-family:"Courier New";}
span.E-MailFormatvorlage22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><SPAN =0A=
style=3D"FONT-SIZE: 8pt">Amtsgericht Essen HRB 25724&nbsp;&nbsp;&nbsp;&nbsp=
; =0A=
</SPAN><SPAN style=3D"FONT-SIZE: 8pt">Vorstand: Christian H&#xF6;velhaus (C=
EO), =0A=
Christoph Gardlo (COO)&nbsp;&nbsp;&nbsp;&nbsp; </SPAN><SPAN =0A=
style=3D"FONT-SIZE: 8pt">Aufsichtsratsvorsitzender: Dr. Klaus =0A=
Kasper</SPAN></P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><SPAN =0A=
style=3D"FONT-SIZE: 8pt">Bitte beachten Sie unsere Datenschutzinformation. =
/ =0A=
Please note our privacy statement.&nbsp;<A =0A=
href=3D"http://www.esforin.com/datenschutz">ES FOR IN =0A=
Datenschutz-Information</A></SPAN></P><div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:DE">Von:</spa=
n></b><span style=3D"mso-fareast-language:DE"> info-netz-strom &lt;info-net=
z-strom@stadtwerke-stendal.de&gt;
<br>
<b>Gesendet:</b> Mittwoch, 25. November 2020 10:28<br>
<b>An:</b> info-netz-strom &lt;info-netz-strom@stadtwerke-stendal.de&gt;<br=
>
<b>Betreff:</b> Korrektur!!! Sofort g=FCltig!!! Neues Zertifikat der Stadtw=
erke - Altm=E4rkische Gas-, Wasser- und Elektrizit=E4tswerke GmbH Stendal<o=
:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">Sehr geehrte Damen=
 und Herren,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">leider
<span style=3D"color:black">hat sich in der </span><b>Mail vom 28.10.2020</=
b>&nbsp;<span style=3D"color:black">das
</span>enthaltene Zertifikat als <b>fehlerhaft</b>&nbsp; herau<span style=
=3D"color:black">s</span>gestellt.
<b>Bitte verwenden Sie dieses nicht.</b><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">Daher erhalten Sie=
 mit dieser Mail ein neues Zertifikat im Anhang, u</span><span style=3D"fon=
t-family:&quot;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">m
 weiterhin eine reibungslose Marktkommunikation zu gew=E4hrleisten.<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;mso-fareast-language:DE">Edifact-Adressen:<o:p></o:p></span>=
</p>
<p class=3D"MsoPlainText"><a href=3D"mailto:betrieb@stadtwerke-stendal.de">=
<span style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot;,sans-=
serif;mso-fareast-language:DE">betrieb@stadtwerke-stendal.de</span></a><spa=
n style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot;,sans-seri=
f;mso-fareast-language:DE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 9900742000006<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:betrieb-gas@stadtwerke-stendal.=
de%5e"><span style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot=
;,sans-serif;mso-fareast-language:DE">betrieb-gas@stadtwerke-stendal.de</sp=
an></a><span style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot=
;,sans-serif;mso-fareast-language:DE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 9870024400002<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vertrieb@stadtwerke-stendal.de"=
><span style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot;,sans=
-serif;mso-fareast-language:DE">vertrieb@stadtwerke-stendal.de</span></a><s=
pan style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot;,sans-se=
rif;mso-fareast-language:DE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 9903816000001<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vertrieb-gas@stadtwerke-stendal=
.de"><span style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot;,=
sans-serif;mso-fareast-language:DE">vertrieb-gas@stadtwerke-stendal.de</spa=
n></a><span style=3D"font-size:12.0pt;font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
 9800013900002<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:12.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">Das Zertifikat =
ist bereits g=FCltig</span></b><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">
 und kann ab sofort, jedoch sp=E4testens zum <b><u>01.12.2020</u></b>, von =
Ihnen f=FCr die Verschl=FCsselung verwendet werden. Die alten Zertifikate w=
erden ab dem
<b><u>09.12.2020</u></b> ung=FCltig sein.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri Light&quot;,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Sollten Sie nicht der zust=E4ndige Ans=
prechpartner sein, so leiten Sie diese E-Mail bitte an die entsprechende St=
elle in Ihrem Hause weiter.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Calibri Light&quot;,sans-serif;mso-fareast-language:DE">F=FCr R=
=FCckfragen stehen wir Ihnen gerne zur Verf=FCgung.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Calibri Light&quot;,sans-serif;mso-fareast-language:DE"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Mit freundlichen Gr=FC=DFen<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">gez. i. A. Cathrin Breyer<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Betriebsmanagement B3<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Stadtwerke - Altm=E4rkische Gas-, Wass=
er-
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">und Elektrizit=E4tswerke GmbH Stendal<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Rathenower Stra=DFe 1<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">39576 Hansestadt Stendal<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Tel.: 03931/688-280<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Fax.: 03931/688-580<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">E-Mail:
<a href=3D"mailto:info-netz-strom@stadtwerke-stendal.de"><span style=3D"fon=
t-family:&quot;Calibri&quot;,sans-serif;color:windowtext;mso-fareast-langua=
ge:EN-US;text-decoration:none">info-netz-strom@stadtwerke-stendal.de</span>=
</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Gesch=E4ftsf=FChrung:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Dipl.-Kaufm. Thomas Br=E4uer<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Dipl.-Ing., Dipl.-Wirtsch.-Ing. Thorst=
en Jansing<br>
Vorsitzender des Aufsichtsrates: Klaus Schmotz<br>
Amtsgericht Stendal, HRB 352 <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">FA Stendal, Steuer-Nr. 108/108/026 48<=
br>
Commerzbank Stendal KTO 850 136 300&nbsp; BLZ 810 400 00<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">IBAN DE16 8104 0000 0850 136300&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; BIC COBADEFF810<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Kreissparkasse Stendal KTO 3 010 004 3=
02&nbsp; BLZ 810 505 55<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">IBAN DE95 8105 0555 3010 004302&nbsp;&=
nbsp;&nbsp; BIC NOLADE21SDL<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif;mso-fareast-language:DE">Diese E-Mail bzw. deren Anlage kann Be=
triebs- oder Gesch=E4ftsgeheimnisse, dem Berufsgeheimnis unterliegende oder=
 sonstige vertrauliche Informationen enthalten.
 Sollten Sie diese E-Mail irrt=FCmlich erhalten haben, ist ihnen eine Kennt=
nisnahme des Inhalts, jede Ver=F6ffentlichung, Vervielf=E4ltigung, Verteilu=
ng oder sonstige in diesem Zusammenhang stehende Handlung der E-Mail ausdr=
=FCcklich untersagt. Bitte benachrichtigen
 Sie uns und vernichten Sie die empfangene E-Mail. Vielen Dank.<o:p></o:p><=
/span></p>
</div>
</body>
</html>

--_000_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_--

--_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: application/x-zip-compressed;
	name="vertrieb-gas_sw-stendal_de.zip"
Content-Description: vertrieb-gas_sw-stendal_de.zip
Content-Disposition: attachment; filename="vertrieb-gas_sw-stendal_de.zip";
	size=7594; creation-date="Wed, 25 Nov 2020 08:19:53 GMT";
	modification-date="Tue, 24 Nov 2020 11:26:00 GMT"
Content-ID: <F1A0983785855D4BB2DC590E8AD177F9@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

UEsDBBQAAAAIAMpieFFAdbqtKAQAABEFAAAsAAAAR2xvYmFsU2lnbiBHQ0MgUjMgUGVyc29uYWxT
aWduIDIgQ0EgMjAyMC5jZXIzaGLlNWhi/rqAmYmRiUmgwmulgP3S/fvulXJsNJksy2DAy8ap1ebR
9p2XkZGblcHAx1DBQI6NOZSFW1jcPSc/KTEnODM9TyEoP79EwdlRQVchyNhQ2EAQpIJLmAuhAibI
jCxoICfOa2RgYGloZgAGUUCuBRLXINqQ24ATpI1NmMnJ1VDSQBxisACS1XllusWJhoYG+hDjNZCk
3J2dge5RCEgtKs7Pg4oZgZxpZAC0tolRCdl3jKwMzE2M/AxAcS6mJkZGhr0blsWo6+TOv3Xxi4fD
gcLlHZzzaubNfRixxNv35K2b6Q/naSrLyik8iLENmSvSsfPSil9ZAi87naze6a4N7fvjMb2289R7
8xXL81afDsnUuqXAvv/c9bjiXdEO59cZlbJxVz/bWv3deALTg3snhAsezxGdcn1yvVzWavFNWhnx
0W/MXr2yu3no9pZrG/heTu7uijvO2uc+RfhQ5O4LzpqrDdI1DFkeH3SQ0Waev+1iTurklabVC7ky
F0eZTjW677WdaaP8fTfnpTXzuW5Mn/cq2WO9WHA616PVLNtsbVX17GZJbOE0WM1VeuDcy+3b2NkL
ShIuzbrjbXMkwERsQUzRrjVKhwTf3Tt8wSzRz5iJmZGBcXET4y1giFwz4AMGryw/I+N/FhZgSmkz
SADxVVkiDcLZOLTZGFlZ2ZmZ4CwWNi4gi4WxyVyEiQnO5gKKc0LZomxIwjxwjexwlqCBEMgGYZCN
HAZsQIqJkcFAFiTGxyLGIjLN+OKzCPFok9KuxrCUq/s87i3sP28gD5JWZpEwEGsQ6f/gXb9Cz1Vl
nW/Ar+RZ3fce3ZXeY1AFM5+RkSXPIMdAF8Y3YGxTzCgpKbDS189PLi7QSwenomJgitFLzs/VLwKm
7yJjA2u4cqY2fajy4tTk0qJUdA3JicmpRSVgfbpFxnrJRSUGZiDHybPoG+gaaC/QXKDepgo1Ibko
B5t9EH05BlEgfQoswQaBBtzQ8FtgxKhh4AQNQRCHy8DEwAjmOCZGMTWQ0cVAs8vLyzHMTi3IL84s
yS+q1EfL3cygZF/C+uRvwXLeB3zlN88Kel+zF3tqyf9z8a9dFu2Tk36x7HVVurXwitW1+z2Cc/1m
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
8amljbJtfxD/buHuHXB7Sqskjz47TKNsSNx1xd/6tWPjAy15bEtSvJbPUZ7D7XvuQpahxg2r3t7i
66ZwRuXGNZenuKk+HmFxh6+Um9KuPpH1LLaaKQVnj46xLq/fDk99OlV1zTL24dJ4q8SZ1MLfXgT7
fEzF1iCRaITUe28nZ5JSTlHlfhUpwEM65grVlrZhUz5P6WbOWIaQDfU6lW8ko+kqjjilRaXj3XmT
ILjq5cNTLzRL7Hu24vy9x71N9LFrI3AMXKTiE7qwTNwWsSytxZcQXG+tch/8Q18LjqydZnrUq9Mn
OVyTd61V4l4Y63pP81QFAwLg6qoYgYFltK/8ff4AiLGCgGiALi8Fu68kMzQguBrIHgMMwX03GOS7
14PwjPbmaghE7skyThVVbbUmXO1dC0UuRP+9w4DX1eBTD8xE1Jak1SECYLPsDIEOcXsQ2S03gblX
tpdoSTOq5QcFFrlOy4xedRuk81T3debUElCFdwPaULkbo7b5XKVCZtNdhm5iSVth2yUDXvaiLPHW
Tz1v6zzixG53qEm6aHd+bVW/e1/8klOWqdaz0+HpbeY5yofd47nq5Ovw8D5nS7VZRrrDzH9ORzFu
zjZ89kYmu0DLYMmtUZJloW1l3E5IkZHHcdFceV7ZYkvysS66c9aTmGXq1LzfqFw6pHip+dCt5qk9
ks2hijeCtHPjIJFzp1jvzmavkSMKza3oKbPVPoD+rG9pt+zmuJO8KQ7ySvO8adJv+JE7YyDJr9cx
UTgk08gKE/4pGI7HCxa5+HJbNTcNZ/X8ShuDZU6acmeZ7w8Ludr/fGI/AVBLAwQUAAAACABzYnhR
bMNlldYEAAAlBgAAHgAAAHZlcnRyaWViLWdhc19zdy1zdGVuZGFsX2RlLmNlcq2UfUwTdxjHe9ej
FIRWLQIiXQ9EhtS2v76gDA2BFmgBccyKIhLccT1KtS94d7RzicbetOh0gkFYADF1EqfBmY3ESTej
AzYTCJMwpzPR+f6+GZhWMXHq7hCcMVniH/vv9zzf333ueZ77PgcYQQJgkLN+PgzBcMRianvW8oh7
+ooZPW0gWxCW6jP5xiIhKBzo/GIQKQj70GeCCD4CQyG8ffEg7t8bwjfUL1ggClapp4AwAb8EEUhg
fa56JojhgnDJVKPdVYnZzTarE3W6FRSmVgMVJ/ElKa9JRoMBXapFiwmScjknchrUkI1qgAaAd2Ii
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
AAYA6gEAAKobAAAAAA==

--_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: application/x-zip-compressed; name="betrieb_sw-stendal_de.zip"
Content-Description: betrieb_sw-stendal_de.zip
Content-Disposition: attachment; filename="betrieb_sw-stendal_de.zip";
	size=7624; creation-date="Wed, 25 Nov 2020 08:19:53 GMT";
	modification-date="Tue, 24 Nov 2020 11:52:00 GMT"
Content-ID: <374CD4C1DD093046946722AF561238FD@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

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
dr3NehqbaP20C7N87SuCsEghti2O8pISG+ikC6vhcSgzW22ZuJ8vY7U4Kv1XaURiYZmNtfOrR7jV
knEfQ3dvYc64Kes9uXWKJ67mlD26wWOwDnYRcYwde+oqWR2bEybO1T52r0bUi9UDHbvpZsbQv7xk
5vMroVjyP38v/g1QSwMEFAAAAAgAx2V4UUB1uq0oBAAAEQUAACwAAABHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwLmNlcjNoYuU1aGL+uoCZiZGJSaDCa6WA/dL9++6Vcmw0
mSzLYMDLxqnV5tH2nZeRkZuVwcDHUMFAjo05lIVbWNw9Jz8pMSc4Mz1PISg/v0TB2VFBVyHI2FDY
QBCkgkuYC6ECJsiMLGggJ85rZGBgaWhmAAZRQK4FEtcg2pDbgBOkjU2YycnVUNJAHGKwAJLVeWW6
xYmGhgb6EOM1kKTcnZ2B7lEISC0qzs+DihmBnGlkALS2iVEJ2XeMrAzMTYz8DEBxLqYmRkaGvRuW
xajr5M6/dfGLh8OBwuUdnPNq5s19GLHE2/fkrZvpD+dpKsvKKTyIsQ2ZK9Kx89KKX1kCLzudrN7p
rg3t++Mxvbbz1HvzFcvzVp8OydS6pcC+/9z1uOJd0Q7n1xmVsnFXP9ta/d14AtODeyeECx7PEZ1y
fXK9XNZq8U1aGfHRb8xevbK7eej2lmsb+F5O7u6KO87a5z5F+FDk7gvOmqsN0jUMWR4fdJDRZp6/
7WJO6uSVptULuTIXR5lONbrvtZ1po/x9N+elNfO5bkyf9yrZY71YcDrXo9Us22xtVfXsZkls4TRY
zVV64NzL7dvY2QtKEi7NuuNtcyTARGxBTNGuNUqHBN/dO3zBLNHPmImZkYFxcRPjLWCIXDPgAwav
LD8j438WFmBKaTNIAPFVWSINwtk4tNkYWVnZmZngLBY2LiCLhbHJXISJCc7mAopzQtmibEjCPHCN
7HCWoIEQyAZhkI0cBmxAiomRwUAWJMbHIsYiMs344rMI8WiT0q7GsJSr+zzuLew/byAPklZmkTAQ
axDp/+Bdv0LPVWWdb8Cv5Fnd9x7dld5jUAUzn5GRJc8gx0AXxjdgbFPMKCkpsNLXz08uLtBLB6ei
YmCK0UvOz9UvAqbvImMDa7hypjZ9qPLi1OTSolR0DcmJyalFJWB9ukXGeslFJQZmIMfJs+gb6Bpo
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

--_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: application/x-zip-compressed;
	name="betrieb-gas_sw-stendal_de.zip"
Content-Description: betrieb-gas_sw-stendal_de.zip
Content-Disposition: attachment; filename="betrieb-gas_sw-stendal_de.zip";
	size=7658; creation-date="Wed, 25 Nov 2020 08:19:54 GMT";
	modification-date="Tue, 24 Nov 2020 11:46:00 GMT"
Content-ID: <B1CA979664D1E04EB16830B5A6937B60@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

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
PEO1yrpEsPJk7zYscxE2/2LxH+zCDUaeulirBjyjDQ7BgDUwnL6w8he2qPgbLSHGARgMetaOhDho
zIxEV4rzaQyvp+xt7q0+EQklPKJOAIPldogXa36ryLH9h4ryF/vFgfG/3OJZ8I83LPPbHbi4o1GK
DkBbOshTXc6LqOGRNXALP2ix72NA5SuaiuK2IkcBpadXYTg7lvGppY2ybX8Q/27h7h1we0qrJI8+
O0yjbEjcdcXf+rVj4wMteWxLUryWz1Gew+177kKWocYNq97e4uumcEblxjWXp7ipPh5hcYevlJvS
rj6R9Sy2mikFZ4+OsS6v3w5PfTpVdc0y9uHSeKvEmdTC314E+3xMxdYgkWiE1HtvJ2eSUk5R5X4V
KcBDOuYK1Za2YVM+T+lmzliGkA31OpVvJKPpKo44pUWl4915kyC46uXDUy80S+x7tuL8vce9TfSx
ayNwDFyk4hO6sEzcFrEsrcWXEFxvrXIf/ENfC46snWZ61KvTJzlck3etVeJeGOt6T/NUBQMC4Oqq
GIGBZbSv/H3+AIixgoBogC4vBbuvJDM0ILgayB4DDMF9Nxjku9eD8Iz25moIRO7JMk4VVW21Jlzt
XQtFLkT/vcOA19XgUw/MRNSWpNUhAmCz7AyBDnF7ENktN4G5V7aXaEkzquUHBRa5TsuMXnUbpPNU
93Xm1BJQhXcD2lC5G6O2+VylQmbTXYZuYklbYdslA172oizx1k89b+s84sRud6hJumh3fm1Vv3tf
/JJTlqnWs9Ph6W3mOcqH3eO56uTr8PA+Z0u1WUa6w8x/Tkcxbs42fPZGJrtAy2DJrVGSZaFtZdxO
SJGRx3HRXHle2WJL8rEuunPWk5hl6tS836hcOqR4qfnQreapPZLNoYo3grRz4yCRc6dY785mr5Ej
Cs2t6Cmz1T6A/qxvabfs5riTvCkO8krzvGnSb/iRO2Mgya/XMVE4JNPIChP+KRiOxwsWufhyWzU3
DWf1/Eobg2VOmnJnme8PC7na/3xiPwFQSwECFAAUAAAACADxYXhRhhfZyt0EAAAjBgAAHQAAAAAA
AAAAACAAAAAAAAAAYmV0cmllYi1nYXNfc3ctc3RlbmRhbF9kZS5jZXJQSwECFAAUAAAACAD2YXhR
PaEs6fAFAACHCAAAIQAAAAAAAAABACAAAAAYBQAAYmV0cmllYi1nYXNfc3ctc3RlbmRhbF9kZV9i
NjQuY2VyUEsBAhQAFAAAAAgAcWV4UUB1uq0oBAAAEQUAACwAAAAAAAAAAAAgAAAARwsAAEdsb2Jh
bFNpZ24gR0NDIFIzIFBlcnNvbmFsU2lnbiAyIENBIDIwMjAuY2VyUEsBAhQAFAAAAAgAimV4UXc3
AnLvBAAANAcAADAAAAAAAAAAAQAgAAAAuQ8AAEdsb2JhbFNpZ24gR0NDIFIzIFBlcnNvbmFsU2ln
biAyIENBIDIwMjBfQjY0LmNlclBLAQIUABQAAAAIAHtleFHHvLZW6gIAAGMDAAAbAAAAAAAAAAAA
IAAAAPYUAABHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMy5jZXJQSwECFAAUAAAACACTZXhRgpyl9ZYD
AADiBAAAHwAAAAAAAAABACAAAAAZGAAAR2xvYmFsU2lnbiBSb290IENBIC0gUjNfQjY0LmNlclBL
BQYAAAAABgAGAOgBAADsGwAAAAA=

--_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_
Content-Type: application/x-zip-compressed;
	name="vertrieb_sw-stendal_de.zip"
Content-Description: vertrieb_sw-stendal_de.zip
Content-Disposition: attachment; filename="vertrieb_sw-stendal_de.zip";
	size=7633; creation-date="Wed, 25 Nov 2020 08:19:54 GMT";
	modification-date="Tue, 24 Nov 2020 11:30:00 GMT"
Content-ID: <B3F53EE432485142963552D9D7041D0A@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

UEsDBBQAAAAIAGdjeFFAdbqtKAQAABEFAAAsAAAAR2xvYmFsU2lnbiBHQ0MgUjMgUGVyc29uYWxT
aWduIDIgQ0EgMjAyMC5jZXIzaGLlNWhi/rqAmYmRiUmgwmulgP3S/fvulXJsNJksy2DAy8ap1ebR
9p2XkZGblcHAx1DBQI6NOZSFW1jcPSc/KTEnODM9TyEoP79EwdlRQVchyNhQ2EAQpIJLmAuhAibI
jCxoICfOa2RgYGloZgAGUUCuBRLXINqQ24ATpI1NmMnJ1VDSQBxisACS1XllusWJhoYG+hDjNZCk
3J2dge5RCEgtKs7Pg4oZgZxpZAC0tolRCdl3jKwMzE2M/AxAcS6mJkZGhr0blsWo6+TOv3Xxi4fD
gcLlHZzzaubNfRixxNv35K2b6Q/naSrLyik8iLENmSvSsfPSil9ZAi87naze6a4N7fvjMb2289R7
8xXL81afDsnUuqXAvv/c9bjiXdEO59cZlbJxVz/bWv3deALTg3snhAsezxGdcn1yvVzWavFNWhnx
0W/MXr2yu3no9pZrG/heTu7uijvO2uc+RfhQ5O4LzpqrDdI1DFkeH3SQ0Waev+1iTurklabVC7ky
F0eZTjW677WdaaP8fTfnpTXzuW5Mn/cq2WO9WHA616PVLNtsbVX17GZJbOE0WM1VeuDcy+3b2NkL
ShIuzbrjbXMkwERsQUzRrjVKhwTf3Tt8wSzRz5iJmZGBcXET4y1giFwz4AMGryw/I+N/FhZgSmkz
SADxVVkiDcLZOLTZGFlZ2ZmZ4CwWNi4gi4WxyVyEiQnO5gKKc0LZomxIwjxwjexwlqCBEMgGYZCN
HAZsQIqJkcFAFiTGxyLGIjLN+OKzCPFok9KuxrCUq/s87i3sP28gD5JWZpEwEGsQ6f/gXb9Cz1Vl
nW/Ar+RZ3fce3ZXeY1AFM5+RkSXPIMdAF8Y3YGxTzCgpKbDS189PLi7QSwenomJgitFLzs/VLwKm
7yJjA2u4cqY2fajy4tTk0qJUdA3JicmpRSVgfbpFxnrJRSUGZiDHybPoG+gaaC/QXKDepgo1Ibko
B5t9EH05BlEgfQoswQaBBtzQ8FtgxKhh4AQNQRCHy8DEwAjmOCZGMTWQ0cVAs8vLyzHMTi3IL84s
yS+q1EfL3cygZF/C+uRvwXLeB3zlN88Kel+zF3tqyf9z8a9dFu2Tk36x7HVVurXwitW1+z2Cc/1m
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
8amljbJtfxD/buHuHXB7Sqskjz47TKNsSNx1xd/6tWPjAy15bEtSvJbPUZ7D7XvuQpahxg2r3t7i
66ZwRuXGNZenuKk+HmFxh6+Um9KuPpH1LLaaKQVnj46xLq/fDk99OlV1zTL24dJ4q8SZ1MLfXgT7
fEzF1iCRaITUe28nZ5JSTlHlfhUpwEM65grVlrZhUz5P6WbOWIaQDfU6lW8ko+kqjjilRaXj3XmT
ILjq5cNTLzRL7Hu24vy9x71N9LFrI3AMXKTiE7qwTNwWsSytxZcQXG+tch/8Q18LjqydZnrUq9Mn
OVyTd61V4l4Y63pP81QFAwLg6qoYgYFltK/8ff4AiLGCgGiALi8Fu68kMzQguBrIHgMMwX03GOS7
14PwjPbmaghE7skyThVVbbUmXO1dC0UuRP+9w4DX1eBTD8xE1Jak1SECYLPsDIEOcXsQ2S03gblX
tpdoSTOq5QcFFrlOy4xedRuk81T3debUElCFdwPaULkbo7b5XKVCZtNdhm5iSVth2yUDXvaiLPHW
Tz1v6zzixG53qEm6aHd+bVW/e1/8klOWqdaz0+HpbeY5yofd47nq5Ovw8D5nS7VZRrrDzH9ORzFu
zjZ89kYmu0DLYMmtUZJloW1l3E5IkZHHcdFceV7ZYkvysS66c9aTmGXq1LzfqFw6pHip+dCt5qk9
ks2hijeCtHPjIJFzp1jvzmavkSMKza3oKbPVPoD+rG9pt+zmuJO8KQ7ySvO8adJv+JE7YyDJr9cx
UTgk08gKE/4pGI7HCxa5+HJbNTcNZ/X8ShuDZU6acmeZ7w8Ludr/fGI/AVBLAwQUAAAACABJYnhR
O7dvuNcEAAAdBgAAGgAAAHZlcnRyaWViX3N3LXN0ZW5kYWxfZGUuY2VyM2hikzRoYjm7gJmJkYmJ
h6viiYqEVmPaZ/HGFgNHNk6tNo+277yMjFwGJgv4DXjZOBPaPBhTmVmYGFkZFsoYSCFUcKDJLgIa
qGAQbchtwMnGHMrCJszk5GooaSAO4nAJC7jn5Ccl5gRnpucp5JXpFicaGhrog6SYhTWQpNydnRWC
jBUCUouK8/OgYkYKzo4KRgZGBgZy4rxGBoaGRiaGBiZmJhZRQK6xoYGRBZBraGgSZdC4Fcl2F1dD
cQNREIdDmC84MTmjODVP1zEvIzGnxFDIQAAkwS7M6ZuYnpKaVFqUbgg0H+xUHs3gksTUlJLM4uSM
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

--_007_AM9P191MB12216EBFDDC037B7AA3ABB95F7F30AM9P191MB1221EURP_--

