Received: from crypto4 (crypto.esforin.com [127.0.0.1])
	by crypto.esforin.com (CipherMail) with ESMTP id 2D8FB1876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:19:06 +0100 (CET)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-ve1eur03lp2058.outbound.protection.outlook.com [104.47.9.58])
	by crypto.esforin.com (CipherMail) with ESMTPS id ABD5D1876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:19:05 +0100 (CET)
Received: from AM6PR10CA0078.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:8c::19)
 by VI1P191MB0461.EURP191.PROD.OUTLOOK.COM (2603:10a6:803:32::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Wed, 2 Dec
 2020 12:19:03 +0000
Received: from VE1EUR01FT029.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:209:8c:cafe::30) by AM6PR10CA0078.outlook.office365.com
 (2603:10a6:209:8c::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17 via Frontend
 Transport; Wed, 2 Dec 2020 12:19:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=esforin.com; ops.xpergy.com; dkim=none (message not signed)
 header.d=none;ops.xpergy.com; dmarc=bestguesspass action=none
 header.from=esforin.com;
Received-SPF: Pass (protection.outlook.com: domain of esforin.com designates
 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT029.mail.protection.outlook.com (10.152.2.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Wed, 2 Dec 2020 12:19:02 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (104.47.6.55) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 02 Dec 2020 12:19:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKasyVCRo1Zu0jfUFo5KswCgi3kfooqgJSfqX7WN6YABiR3wke03IgaEGNufHxFwk5YnGglzDq7YZXJN+C6jHqDAgLJte8jByfnIi7EL5KN7PuSpCoAA1of5EAt0Nk5tsTelH/BI7hYycY46vibEWRhxP5enFs4OzX3DDYBhY2nFWVCQ/j8U6GrBuNvWzHGi+QZSlwcEygCGfsJJFRrpw3I+mv7RheLevmPGeOaPMVhUOxizUYjXbT2GpDeF2yE6XwKHpRKZOT2Ar7VdmMrlGqgWhinIC/w5KQ8KxAgtDYzhYKPwxbVgHAjopC2So23LjhrWoJEDnDs61s2uhqyLvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/WNUxj7ZNggWp6hW69bHqaZzpaAMp7Ak5a/xc/+mK4=;
 b=bMWT8aOvv4xUmyTFeUtLx28zHgAk4P+Qm6ZidBmMGX05S24WYD5DEc8RzUGbKuElBscG0TLdH+Wk+1OXyzh4itUI/TdQll+uEzDkRbcEtb/eexuMBt24iONBYYE18eZ2UQ3Foua3WfhcUXryxWRQwPNoKppYVV2xv/GBLe48Oeqal7ZEzRvBp/vjR8ttlPUcruw9mcvggXBOdTGY7yglFzmniTFhWrpvn1jA8yASkpTMYHxOTmlWIpuOOHcWvhCL6rjwr8LE2As7PfBSyfnW48clhsLK3/0hV+BizpE1LxXKTBs74kRWfeeJDMhuZ1q6tiM8JRx9oFHET+suqilJng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=esforin.com; dmarc=pass action=none header.from=esforin.com;
 dkim=pass header.d=esforin.com; arc=none
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1ff::13)
 by AM9P191MB1554.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:264::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Wed, 2 Dec
 2020 12:19:00 +0000
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6]) by AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6%5]) with mapi id 15.20.3611.031; Wed, 2 Dec 2020
 12:18:59 +0000
From: mabis-clearing ES FOR IN SE <mabis-clearing@esforin.com>
To: "zerti_manager@ops.xpergy.com" <zerti_manager@ops.xpergy.com>
Subject: wg
Thread-Topic: wg
Thread-Index: AdbIpU+bAILvabkkRrS5yeHBoLuv+w==
Date: Wed, 2 Dec 2020 12:18:59 +0000
Message-ID: <AM9P191MB12215939AD91706233A9F44BF7F30@AM9P191MB1221.EURP191.PROD.OUTLOOK.COM>
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
X-MS-Office365-Filtering-Correlation-Id: e38e725b-a742-48d7-b350-08d896bc747d
x-ms-traffictypediagnostic: AM9P191MB1554:|VI1P191MB0461:
X-Microsoft-Antispam-PRVS:
	<VI1P191MB0461F5162C9006BA8C017D379FF30@VI1P191MB0461.EURP191.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:873;OLM:1332;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 HtmnbrJmfHe5opMl50ugettfchU3rRL+T7nnNsWQA5FxxfRNtxmsaN5SJLuZRSwIvuyeZ6qsJcVbCJnWeRjzlgSNQDPgAVrONC5X9p9kb1qbCUPxkhBzKVyEbyqTN9zx8tdY4XiPTZAdbE/VQCQjLzgPcqGITqumc3Wsg9DY4pDvKf7RbIKo4Gc0JwMQ1lcWB5VLkHZPvsdyYg8xe1DFssT1SGgZoKISzNo41g4eh5kKAInEEeVTQElXlANF1pyz8dh5k8r4IBu19xINcLpUp4GCbe9tczyAcrjjoVTJXgwtOgPDpsdqBtf6KGUVfbZjhbF7j5rIrqGijvkZFYHsELBsnTuv+JztrHwZUY6lAjHMUFeZDdEEW9OGDPhfok4UQ3aX9QzrVA6vMHnSujPcKk5nct4/vawaZxYDg1IzH+7mzz1WtnNoWz6PPwjgOElpn9+M9RCmwbzz27jqE8130/tQfBCFzvMJwrWBbsSDd/U=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P191MB1221.EURP191.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(136003)(39830400003)(346002)(376002)(7116003)(9686003)(316002)(33656002)(71200400001)(3480700007)(7696005)(186003)(26005)(52536014)(6506007)(6916009)(2906002)(66476007)(5660300002)(66556008)(86362001)(66446008)(64756008)(66946007)(966005)(76116006)(55016002)(19627235002)(66576008)(478600001)(166002)(8936002)(99936003)(8676002)(83080400002)(220243001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?x+qJZ+upgpeLg2dC1Iu/8SWppxMHy4TkcMUKUEd3eSeXmu2np/M/uUo+/J?=
 =?iso-8859-1?Q?Yvb2i5N9ICyFJ8C/90JGTd8xOimA2GAzCaLF4uuuGPdSWd+8XbBZZchSRu?=
 =?iso-8859-1?Q?iO2rgZ9b9gP5IvcBx+XYIsL9N6V5l+cj4cJnoGi7FQJq5eCqp272hrIKPL?=
 =?iso-8859-1?Q?JwKMA4IZL9xHtihFryto2DJ5HwB56M59i+TdnNnrnJJrW2vJqzEFbP0TdE?=
 =?iso-8859-1?Q?pA/hgGKMogg2Nq3PRjZbppjnwMMJCclnUuycSRLw8HqOMp9nmYdkHvBrlA?=
 =?iso-8859-1?Q?WeCYH3aKec8i6TTMAT5wDmsI4HcI0QZX1jbhTckCidL1QqTlfwC6pa1Fug?=
 =?iso-8859-1?Q?IwWy/vIsMhaQ1Ow5Tzlj6SG3ATfsG2334PurZH280e+eFyhoFQlwojjfHO?=
 =?iso-8859-1?Q?x5/Sj2ZZN/gNuxZ2aRCMFHe/CcN+HGMfHGKcpxeDAjGfX/QkJEbadKKeQR?=
 =?iso-8859-1?Q?aSRCf01UOLZmWE9SkoQOga3pEPWMDhlIH6cNdOf4El1dbd2bcsjgyCWPRb?=
 =?iso-8859-1?Q?7gYvB/GQL/wkywKZdoGnStsnHyDJn/9ixb79z9r1I/8Jz/yVhvB+0t1JDH?=
 =?iso-8859-1?Q?smD+Bj31okGRtAiGXSROeQn73idBrALqlTesUoEF33sOj0XJ7bpgN+Kszl?=
 =?iso-8859-1?Q?PS1X+uGndZ37Ik+hIiou2EguCqVIXMOKpgvCAN5oktTcqk5kgOdXQ/pC7L?=
 =?iso-8859-1?Q?If364P01qyYlnw+No4Bub/nw7ixHcCvfvrKt+nbzgCxYK9rpjZT9dUmvqw?=
 =?iso-8859-1?Q?Ug8oRieUApP4pl6S3ncdWpYJvtsm+HbheifBQuJWF/HuFC3UukyE1gFIKd?=
 =?iso-8859-1?Q?DjrNHJ+2PeX/LNCeHEbMyhScolWalnoMqF45eBM3WPWApR6oQbPqIAEeXO?=
 =?iso-8859-1?Q?QKy0ryRtwahE4N6F6g1S1kDeeDaGRDQ9ebmxmuwHJ5DqFXRIAW7CByl4f9?=
 =?iso-8859-1?Q?ZUNQ/5kYAmRog6lRZfVldMsoWr4l5wzGzV+IIQ4Egq8OWHqgcDM7r1zVlf?=
 =?iso-8859-1?Q?PGq/VIe8kAK5NeYP4=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_007_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P191MB1554
X-CodeTwo-MessageID: 869bffd7-4d10-46e6-b872-5528ec2f5bdf.20201202121901@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.25b5ab47-3097-413f-849d-97db8828efd9.3e6d88fe-a0b4-4f16-a180-b3e8a2aa9312@emailsignatures365.codetwo.com>
 <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.5477e1e9-c65b-462f-b4bf-fb410475fbbf.a4ea099b-7a2f-48a5-9cc3-e379aeb6c2e2@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 VE1EUR01FT029.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	8d53b1bd-bd2c-4dc0-8a42-08d896bc72f8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	5gr5illFhNvRb5CbVcshOw1aMQALoGP0EpsF8HLmHrABgNb+9586+bDVKtnGiGKJ1FRDE1cO3Pezi9wgHNVxsqTXYUnIMGPjzuTA1oUbErJ8zjm4ut9Eugxi2M6MFKYo1FUm0cI2W7BNFx2MM9eSPPm+NH1aoHY6oHjdbZNy8C25mVnNquyicw8QEm+m4zLAiC7RFPJMewE+iSuuPt+BRKA+elk4m5wUa/xKyJXITv4Vj2ZwKEFsza9b2fv261cmWu0yHCX/pJRBnfP/WtgbZ6yLvJhs7j2JkC0IgNxwGRXJekcmmmA5NCHchaGcL6pNACfrn9OrqTa6+3gKMFesHELGcCamW3Bhy0NzCKxvkGz9M/WPLw+qnDoxUKr/T9lUqtVZ8fsOr5++5zA0AMjVclJa4MGwaThwJ4pJltp92MzX+7pga65D79AuY+jGcX9B7ZI1gfKnkkcKSHvrSTt764QgN22OIdkQ5tm48UdIr2OZtEgjFwfnqZXTwOVhJOB/hutqURRcjGPpI6ZlZpVpSSgniJgMbilurf5BRYMhHDt5uzHzNn74CEHvccw85Yy1
X-Forefront-Antispam-Report:
	CIP:13.81.10.179;CTRY:NL;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(4636009)(136003)(396003)(376002)(39830400003)(346002)(46966005)(9686003)(316002)(7116003)(33656002)(47076004)(82310400003)(3480700007)(21470400002)(7696005)(26005)(45080400002)(186003)(21480400003)(52536014)(6506007)(6916009)(2906002)(5660300002)(235185007)(86362001)(70586007)(70206006)(966005)(336012)(55016002)(19627235002)(66576008)(478600001)(166002)(7636003)(8936002)(356005)(99936003)(15974865002)(8676002)(83080400002)(7596003)(220243001)(1650700003);DIR:OUT;SFP:1102;
X-OriginatorOrg: esforin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2020 12:19:02.4769
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e38e725b-a742-48d7-b350-08d896bc747d
X-MS-Exchange-CrossTenant-Id: fb4ee507-9176-4f20-8267-f430d25c9b49
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=fb4ee507-9176-4f20-8267-f430d25c9b49;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource:
	VE1EUR01FT029.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P191MB0461

--_007_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
Content-Type: multipart/related;
	boundary="_006_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_";
	type="multipart/alternative"

--_006_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
Content-Type: multipart/alternative;
	boundary="_000_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_"

--_000_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable




Amtsgericht Essen HRB 25724     Vorstand: Christian H=F6velhaus (CEO), Chri=
stoph Gardlo (COO)     Aufsichtsratsvorsitzender: Dr. Klaus Kasper

Bitte beachten Sie unsere Datenschutzinformation. / Please note our privacy=
 statement. ES FOR IN Datenschutz-Information<http://www.esforin.com/datens=
chutz>
Von: Martin Schulz <martin.schulz@esforin.com>
Gesendet: Mittwoch, 2. Dezember 2020 11:32
An: mabis-clearing ES FOR IN SE <mabis-clearing@esforin.com>
Betreff: WG: Neues Zertifikate f=FCr den elektronischen Datenaustausch



Von: Tanja Daiker <Daiker@Stadtwerke-Hechingen.de<mailto:Daiker@Stadtwerke-=
Hechingen.de>>
Gesendet: Mittwoch, 2. Dezember 2020 11:14
An: Tanja Daiker <Daiker@Stadtwerke-Hechingen.de<mailto:Daiker@Stadtwerke-H=
echingen.de>>
Betreff: Neues Zertifikate f=FCr den elektronischen Datenaustausch


Sehr geehrte Damen und Herren,

das Zertifikat f=FCr die folgende Email Adresse sw_hechingen_p02_305@xi.rz-=
kiru.de<mailto:sw_hechingen_p02_305@xi.rz-kiru.de>  verliert am 08.12.2020 =
seine G=FCltigkeit.
Wir bitten Sie, das neue Zertifikat zu hinterlegen und erst ab 09.12.2020 0=
8:00 Uhr zu verwenden.

Das neue Zertifikat befindet sich im Anhang als ZIP-Datei.

Die EDIFACT - Datenaustauschadresse bleibt unver=E4ndert.

Sollten Sie nicht der richtige Ansprechpartner sein, bitten wir Sie, diese =
Email an die entsprechende Person in Ihrem Haus weiterzuleiten.


Mit freundlichen Gr=FC=DFen


Mit freundlichen Gr=FC=DFen

STADTWERKE HECHINGEN

Tanja Daiker
Verbrauchsabrechnung/ Shared Service

Stadtwerke Hechingen
Alte Rottenburger Stra=DFe 5
72379 Hechingen

Tel.:   07471-9365-15
Fax:   07471-9365-49

Daiker@stadtwerke-hechingen.de<mailto:Daiker@stadtwerke-hechingen.de>
www.stadtwerke-hechingen.de<http://www.stadtwerke-hechingen.de>
Kennen Sie schon unser neues Kunden-Portal?
https://kundenportal.stadtwerke-hechingen.de/

[cid:image001.jpg@01D6C89C.449D4820]

Stadtwerke Hechingen, Alte Rottenburger Stra=DFe 5, 72379 Hechingen Eigenbe=
trieb der Stadt Hechingen
nach dem Eigenbetriebsgesetz f=FCr Baden-W=FCrttemberg eingetragen im Hande=
lsregister unter der Nr. HRA 420866
beim Amtsgericht Stuttgart gesetzlich vertreten durch den Betriebsleiter Re=
inhold Dieringer

[cid:image002.jpg@01D6C89C.449D4820]




--_000_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Maven Pro";}
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
span.E-MailFormatvorlage20
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
n></b><span style=3D"mso-fareast-language:DE"> Martin Schulz &lt;martin.sch=
ulz@esforin.com&gt;
<br>
<b>Gesendet:</b> Mittwoch, 2. Dezember 2020 11:32<br>
<b>An:</b> mabis-clearing ES FOR IN SE &lt;mabis-clearing@esforin.com&gt;<b=
r>
<b>Betreff:</b> WG: Neues Zertifikate f=FCr den elektronischen Datenaustaus=
ch <o:p>
</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:DE">Von:</spa=
n></b><span style=3D"mso-fareast-language:DE"> Tanja Daiker &lt;<a href=3D"=
mailto:Daiker@Stadtwerke-Hechingen.de">Daiker@Stadtwerke-Hechingen.de</a>&g=
t;
<br>
<b>Gesendet:</b> Mittwoch, 2. Dezember 2020 11:14<br>
<b>An:</b> Tanja Daiker &lt;<a href=3D"mailto:Daiker@Stadtwerke-Hechingen.d=
e">Daiker@Stadtwerke-Hechingen.de</a>&gt;<br>
<b>Betreff:</b> Neues Zertifikate f=FCr den elektronischen Datenaustausch <=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">Sehr geehrte Damen und Herren,
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Maven Pro&quot;">da=
s Zertifikat f=FCr die folgende Email Adresse
</span><u><span style=3D"color:blue;mso-fareast-language:DE"><a href=3D"mai=
lto:sw_hechingen_p02_305@xi.rz-kiru.de">sw_hechingen_p02_305@xi.rz-kiru.de<=
/a>
</span></u><span style=3D"font-family:&quot;Maven Pro&quot;">&nbsp;verliert=
 am 08.12.2020 seine G=FCltigkeit.
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">Wir bitten Sie, das neue Zertifikat zu hinterle=
gen und erst ab
<b><span style=3D"color:red">09.12.2020</span></b> <b><span style=3D"color:=
red">08:00 Uhr</span></b><span style=3D"color:red">
</span>zu verwenden. </span><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Maven Pro&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Maven Pro&quot;">Da=
s neue Zertifikat befindet sich im Anhang als ZIP-Datei.&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">Die EDIFACT - Datenaustauschadresse bleibt unve=
r=E4ndert.
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">Sollten Sie nicht der richtige Ansprechpartner =
sein, bitten wir Sie, diese Email an die entsprechende Person in Ihrem Haus=
 weiterzuleiten.
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Maven Pro&quot;">&nbsp;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Maven Pro&quot;"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">Mit freundliche=
n Gr=FC=DFen</span><span style=3D"color:#323E4F;mso-fareast-language:DE"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Maven Pro&quot;"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Maven Pro&quot;"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">Mit freundliche=
n Gr=FC=DFen</span><span style=3D"color:#323E4F;mso-fareast-language:DE"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#323E4F;mso-fareast-language:DE=
">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">STADTWERKE HECH=
INGEN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">Tanja Daiker<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#323E4F;mso-fare=
ast-language:DE">Verbrauchsabrechnung/ Shared Service<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">=
Stadtwerke Hechingen</span><span lang=3D"EN-US" style=3D"color:#323E4F;mso-=
fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">Alte Rottenburg=
er Stra=DFe 5</span><span style=3D"color:#323E4F;mso-fareast-language:DE"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">72379 Hechingen=
</span><span style=3D"color:#323E4F;mso-fareast-language:DE"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#323E4F;mso-fareast-language:DE=
">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">Tel.:&nbsp;&nbs=
p; 07471-9365-15</span><span style=3D"color:#323E4F;mso-fareast-language:DE=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">=
Fax:&nbsp;&nbsp; 07471-9365-49</span><span lang=3D"EN-US" style=3D"color:#3=
23E4F;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#323E4F;mso-fare=
ast-language:DE">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">=
<a href=3D"mailto:Daiker@stadtwerke-hechingen.de">Daiker@stadtwerke-heching=
en.de</a></span><span lang=3D"EN-US" style=3D"color:#323E4F;mso-fareast-lan=
guage:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">=
<a href=3D"http://www.stadtwerke-hechingen.de"><span style=3D"color:#323E4F=
">www.stadtwerke-hechingen.de</span></a></span><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,sans-serif;color:#323E4F;mso-fareast-lang=
uage:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:13.5pt;margin-right:0cm;=
margin-bottom:6.75pt;margin-left:0cm;background:white">
<b><u><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:#538135;mso-fareast-language:DE">Kennen Sie schon unser neues Kun=
den-Portal?<o:p></o:p></span></u></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE"><a href=3D"http=
s://kundenportal.stadtwerke-hechingen.de/"><span style=3D"color:#323E4F">ht=
tps://kundenportal.stadtwerke-hechingen.de/</span></a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:navy;mso-fareast-language:DE"><o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE"><img border=
=3D"0" width=3D"189" height=3D"66" style=3D"width:1.9666in;height:.6833in" =
id=3D"Grafik_x0020_3" src=3D"cid:image001.jpg@01D6C89C.449D4820" alt=3D"cid=
:image001.jpg@01D5A9BC.0C0E7EC0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">Stadtwerke Hech=
ingen, Alte Rottenburger Stra=DFe 5, 72379 Hechingen Eigenbetrieb der Stadt=
 Hechingen
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">nach dem Eigenb=
etriebsgesetz f=FCr Baden-W=FCrttemberg eingetragen im Handelsregister unte=
r der Nr. HRA 420866
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#323E4F;mso-fareast-language:DE">beim Amtsgerich=
t Stuttgart gesetzlich vertreten durch den Betriebsleiter Reinhold Dieringe=
r<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1F497D;mso-fareast-language:DE"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:DE=
"><img border=3D"0" width=3D"106" height=3D"39" style=3D"width:1.1in;height=
:.4083in" id=3D"Bild_x0020_1" src=3D"cid:image002.jpg@01D6C89C.449D4820" al=
t=3D"DVGW-TSM-Logo"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_--

--_006_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=2525;
	creation-date="Wed, 02 Dec 2020 10:15:01 GMT";
	modification-date="Wed, 02 Dec 2020 10:15:01 GMT"
Content-ID: <image001.jpg@01D6C89C.449D4820>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCABCAL0DASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiii
gAooooAKKKKACiiigBKwtb/4+k/3K3TWLrkLb45lBK9Gx2ry81hKWGfKdGGaVRGUpYHKnBrX0q/Z
swytuwMhv51j1f0i2aWZm5CKpGT3Jr53LqlSOIXL8z0cTGLhdmNqurTX1zJtdlgU4VVPWs0+3pU1
1bva3ckEilXUk4x1FRc8Ack8AAdTW1VynUfNvqehRUI01y7HaeGf+QMn+83861xWdods1ppcUb8M
QSfxrRFfU4dNUop9j5uu06smu4tFFFbmQUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAIelUNW
1Cx0zT5bvUJVjgUfMT39hV815L8YL2V9TsdP3EQpGZWXsSTgVUKaqS5XsNbll/iV4eN0dmlXbw5x
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
B9cV6uaKKADt+NKaKKAP/9k=

--_006_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=1929;
	creation-date="Wed, 02 Dec 2020 10:15:01 GMT";
	modification-date="Wed, 02 Dec 2020 10:15:01 GMT"
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
G64JQN1yepbrV6/S9jXTI/ts0bPMI5ihU7htJPJHqB6UUUAbI6UUUUALRRRQB//Z

--_006_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_--

--_007_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_
Content-Type: application/x-zip-compressed;
	name="sw_hechingen_p02_305@xi.rz-kiru.de.zip"
Content-Description: sw_hechingen_p02_305@xi.rz-kiru.de.zip
Content-Disposition: attachment;
	filename="sw_hechingen_p02_305@xi.rz-kiru.de.zip"; size=1402;
	creation-date="Wed, 02 Dec 2020 10:12:48 GMT";
	modification-date="Wed, 02 Dec 2020 10:12:48 GMT"
Content-ID: <C356744B13A6C945BBA6590AA3934033@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

UEsDBBQAAAAIANCCelHClRHOzAQAABoGAAAmAAAAc3dfaGVjaGluZ2VuX3AwMl8zMDVAeGkucnot
a2lydS5kZS5jZXIzaGITM2hiObWAmYmRiYlHrHvKuZmmjkr/spx2GjiycWq1ebR952Vk5DIwWcBv
wMvGmdDmwZjKzMLEyMqwUMZACqGCA012EdBABYNoQ24DTjbmUBY2YSYnV0NJA3EQh0tYwD0nPykx
JzgzPU8hr0y3ONHQ0EAfJMUsrIEk5e7srBBkrBCQWlScnwcVM1JwdlQwMjAyMJAT5zUyMDQ0MjM0
NTQxMosCco2BXHMo16BxB5LtLq6G0gaSIA4Hj5BTYkpqnm744T1FJSWpuUmpRemGQgYCIEl2YU6P
1OSMzLz01DxDWQNpiHNFgksSU0rKU4uyUxUQ0rwG3CBpbmEWv9SSKkNxA1GwD3j4gktS0xLzFPwP
zy9PzEkBew0WTpyMYkrF5fEZMEPiCwyM4o0NTB0qMvWKqnSzM4tK9VJSDZoYlUDhCQtcYHgyNzHy
MwDFuZiaGBkZTp+J3SjVuljswCR7MdVzOhfulvz679qjUav7a1New7NJr7cqb/uhYznbIEjFSfi7
4eOp+3scGGwqPzv3PDaK/+zEd3qZise99jinS7/MdG0CuZfGembIT3ixLcY3RPSFS1ZR1j2r7Nd3
P3sEb1KQPVL9w+88F+ezUrd3VRMmKV06JBpxNExbjN1Pf0PWCY/EYLP9zOum2QhEGhYt2cq2a/3h
toe7LoUszjq2/s7dsg93e18uuCUzZ0lkGufev3N052++cyft5MIDfNya5mmLy6XTm5TuOAuv3acS
lMMWvXjRRsbXddH2d/Ml2uJ/962dW70x+bIWc+jyJxr9l+SO3+Zte7zic8vFda4TD7YfZGJmZGBc
3MQkZNDExGfABwx3WX5Gxv8sLMxMrAsMGhezcWizMbKysjMysjROM2icbOAHEzFganPKKCkpsNLX
L05NLi1K1UsHp7diYNrSS87P1U9OTE4tKtFPL05PTi4yLoAmPZC0UXIiKN3pJReVAPMGzDzGNlOo
efnJxQXopuE2xsAX5GoFFjcDFwMnNi6gaSyMC4wYNYBZzcAIZjoTo5gayPRioPHl5eXophelFuQX
Z5bkF1XqgxO6rDALkwGDgSeIKc/iZOBgYLfAZoFVmwXUhclFOcQ7EOjPHIMgkFGCLN4Gno1EpNsF
ylCPNJmLMDEvEOURrgKGZWZaZnZiiYN3fm6unr+fq4EsyExVFjEDEZg3mZngLBYDeZC0MouEgViD
yDTji88ixKNNSrsaw1Ku7vO4t7D/PEQ/H4sYi8guvc5z1j7aoZdkV0uyVMuuqwnV30aFYosZlMUW
ucX8v9N187CX2s39xuuY+lNEle6Ev/l29MYPxs3aH9wWuGziqUt0kJyau0N0cvti5ymZK1teJ++V
U+R885MnN3NWm8EsM37FAEPupcYHxKRTBXw+1m4IPXU94f6RzBsT9ngVW/994nzP5iJHbcNU0e2F
nXZBEhtjGZtcNHK8su80ijR3M+fa5+o+ne1084Lrqo1KOYb3QwPzGVetZKj48TV+4W2Zefs/n23f
z8+y/neQy2zLmIrHzh9Ew/2up//efNCk3/X1wkxjpS9N9tOkeaQnv85YnxWvOf/btNgdGUzKaQc9
X8r5hL6/tDhyTe4izdkPb/zU66zWOZQ/53zIrSbG+NILe6+c+i20xxkAUEsBAhQAFAAAAAgA0IJ6
UcKVEc7MBAAAGgYAACYAAAAAAAAAAAAgAAAAAAAAAHN3X2hlY2hpbmdlbl9wMDJfMzA1QHhpLnJ6
LWtpcnUuZGUuY2VyUEsFBgAAAAABAAEAVAAAABAFAAAAAA

8jOSFjSSrfmdqxXfXRwqSA2eveEwZVfNMsU93lQrg5mMigWIweA7c9YrzTn+NXdAOsD1077LGPDSOn89//zskQ==


--_007_AM9P191MB12215939AD91706233A9F44BF7F30AM9P191MB1221EURP_--

