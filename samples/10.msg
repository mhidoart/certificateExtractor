Received: from crypto4 (crypto.esforin.com [127.0.0.1])
	by crypto.esforin.com (CipherMail) with ESMTP id 8AA6F1876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:17:38 +0100 (CET)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05lp2177.outbound.protection.outlook.com [104.47.17.177])
	by crypto.esforin.com (CipherMail) with ESMTPS id E400E1876FA5
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:17:37 +0100 (CET)
Received: from DB6P193CA0022.EURP193.PROD.OUTLOOK.COM (2603:10a6:6:29::32) by
 AM4P191MB0131.EURP191.PROD.OUTLOOK.COM (2603:10a6:200:5a::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17; Wed, 2 Dec 2020 12:17:29 +0000
Received: from DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:6:29:cafe::36) by DB6P193CA0022.outlook.office365.com
 (2603:10a6:6:29::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17 via Frontend
 Transport; Wed, 2 Dec 2020 12:17:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=esforin.com; ops.xpergy.com; dkim=none (message not signed)
 header.d=none;ops.xpergy.com; dmarc=bestguesspass action=none
 header.from=esforin.com;
Received-SPF: Pass (protection.outlook.com: domain of esforin.com designates
 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 DB5EUR01FT058.mail.protection.outlook.com (10.152.5.46) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Wed, 2 Dec 2020 12:17:29 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.59) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 02 Dec 2020 12:17:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdZB9V8WdZ3j4x3w7nugijV9lilA2ZUT4iic7YnnLN09G1N6z1LbrwukstPg9Tquhcfk/aOa8y09ofRh5VAoE51opZ1LXxN1LWWDy6qw9zEEDuWdCoRoqn1+z7D3GGeZK3zhiqbvikThHq1v6F0ske9aqvHTtBkyx+rWbB5bOTZFs9W2ZVGT3WNz0sx3X8P8AlXBJPBE4eui16IF75DqVIJt6TlRxHFktmekApyZ4ipn/kgp2Qwb3wtWYqxzhnItLsVChiDnkAdLpLkzKFXJp0q+L+wKTyCAXL2E1A6ng6eyakBjd2UqrEy8nlTfbm0wSYWt2qCTADW8EmcFpHc8kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=junP3THJ9AruEN0dfdmF2KD6KU4dBHpt4bo77PxV4gs=;
 b=g3MBVCaDuifEjATxRZuaAgwcbFVUmhZPmhn05RJHa0djLirlGURQTxOxxrAH+zI3TUTvbzslkVzHkUx4zo7Vjhyz2HqyWZcdHYmRfluBFxbulQM+zltPsYOCrY5kJpIXrEVLkTFt4AWvYVIu8otmypMS18zb3N+GXYlTsKhxHykD1n69QNVKojY23suP7Mb0Ycz0GsxMZ+RC6RA39ucwcxTo2QniPJTwJ0OOlUxFTPjwA5D6T49kU+hrrKQ6M3InjNDdlb3PqFa4HQBCU+bZi+baBSv4KISChEU8gWXSHqBsu5i4KdI6Z3u9UoWPIkYGsj05xBlJxbAFtsTDH4QQog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=esforin.com; dmarc=pass action=none header.from=esforin.com;
 dkim=pass header.d=esforin.com; arc=none
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1ff::13)
 by AM8P191MB1380.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1ee::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20; Wed, 2 Dec
 2020 12:17:25 +0000
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6]) by AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6%5]) with mapi id 15.20.3611.031; Wed, 2 Dec 2020
 12:17:25 +0000
From: mabis-clearing ES FOR IN SE <mabis-clearing@esforin.com>
To: "zerti_manager@ops.xpergy.com" <zerti_manager@ops.xpergy.com>
Subject: wg
Thread-Topic: wg
Thread-Index: AdbIpRZoCf9WmoK3QleL+XqkAXtrXA==
Importance: high
X-Priority: 1
Date: Wed, 2 Dec 2020 12:17:25 +0000
Message-ID: <AM9P191MB1221275B411D2394E5373C1CF7F30@AM9P191MB1221.EURP191.PROD.OUTLOOK.COM>
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
X-MS-Office365-Filtering-Correlation-Id: da053fd8-6bb3-4c68-393d-08d896bc3cff
x-ms-traffictypediagnostic: AM8P191MB1380:|AM4P191MB0131:
X-Microsoft-Antispam-PRVS:
	<AM4P191MB0131BC3A79DB5B4CAA2CF45F9FF30@AM4P191MB0131.EURP191.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3173;OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 fY/yXfrvru47YfzQQcqS7vRaLzkPno2zymxNgGDY06hH+tQ+yFkLlGE6RS2+hfHURlXL89btE2O3QZ+18glIoIzBCaBy9A5MexinDWK90TH0Ij8FdCTXOoJ4dgozZBUNJUbRlC4icyWUCrH82KkiWjE4+1rhdXxrb1ktWQ4QoMz6azR4ATxWY5HYGuJfeYruHTmLuIgzPhFHImyIoKedQuGNqgSiiNvSztUuS4wCGSu94JzZN8rsopU1sSXhLzphE4X57KDOqbPVGOEPQLzdmZLeW4VSS66cLlQN/U93/JCW/DkS0/wQjEJ7n62ZS/SG1tR6nN5p4Xelg6nHrFejUznQjOegXRsM+U5JwX8SME5mrFUYXCWYN9DsjaNvjOJpu80MrPfj7Lkk6SVWYZnBhLQOXVaZ41oFXznKJAq8TenFx/3FT2tB0efEBIrZSqusAyg3SVGGo2jKxE969JLeef/V9tw8XSoxX20DxZk7Nbw=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P191MB1221.EURP191.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39830400003)(366004)(136003)(346002)(376002)(396003)(186003)(55016002)(86362001)(71200400001)(33656002)(478600001)(83080400002)(316002)(66574015)(66576008)(76116006)(83380400001)(66946007)(66476007)(66556008)(6916009)(7116003)(5660300002)(966005)(19627235002)(2906002)(9686003)(7696005)(64756008)(52536014)(6506007)(99936003)(8936002)(3480700007)(8676002)(26005)(66446008)(166002)(220243001)(579004)(559001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?4Q7vxb5sspU5vpt6sK6aHPw2ziU8o+qDqUktQLNXFIRBx6OhoE5U4AVPR7?=
 =?iso-8859-1?Q?8kECvty1EIFEgD2QGT0DklCYjJwPuDO6pltNQHLpMO3KUKNu53k4Xf0o8y?=
 =?iso-8859-1?Q?QHFMuncU6QkarMTUlTUlQje2NIIaG0f/npRC6s4v7NpUmyULo7m3xRfm3E?=
 =?iso-8859-1?Q?AlH0mxyp6Dbdm2t3ov+7U3NeM2WOMr6DV/cFrOPr37B2lz0nFFXZTq5c1L?=
 =?iso-8859-1?Q?GzvNnoaLSWJqZDek2/O69mJZDftx3frHVjyFles12f9o1G0tfFrnp5ekI8?=
 =?iso-8859-1?Q?vPsaBpjvszmbQ02iVnn8UseZSiOUW7MnQqvqK5K12mHMnk0VNobaUCuE1i?=
 =?iso-8859-1?Q?L+t7kSgQbHR/VDrUeTCUPOxCo9Xn23yj32L8EDtWeAt6xcFDeIqMjSl/+Q?=
 =?iso-8859-1?Q?0RuBDHDq58CvcMP6qlli7T1xAaSIR0hQK3l/oywNiGsr/jP3HDdFCtCZ0w?=
 =?iso-8859-1?Q?fP+jvyI4iwbT6C9t5k01l/ZiHTpKGgGIC5Ag5ZTOKH8niQu2FQENRVpY3R?=
 =?iso-8859-1?Q?/GzZ3VTTR7ooVcSxdqB/wzipfJLezDjrqCEwZt6QD+2PzFCTzITBtBmFZ2?=
 =?iso-8859-1?Q?ptcBqEb5DjGMYM3cfS7+WbHc5BEr3Vu6JxntR0i5WOXF61GVgEcIyihKBo?=
 =?iso-8859-1?Q?wrAeEBLvACBUaK1McFKn7ZGDP9DR9ejWggLQsN64aaZ5B50mI7ilcmZ+6W?=
 =?iso-8859-1?Q?fXcbLfzq+uGipW0t6sIDuMrXFaiB9x0Xk6/UcgtdLUicKKQBX9A9KfWsd6?=
 =?iso-8859-1?Q?qEeOS4oryELArZ8temfqh5k4XWrhgFCfPakmticncWb8KISRdd5DmuFgJi?=
 =?iso-8859-1?Q?45NWvCQMuMAiU2Xd0otp38HauaciihMEsMqQGOVJ1DBdwDJKpd2PD/2z1/?=
 =?iso-8859-1?Q?PZRrbM/8yLAnDZ2Os9kMxi2dU+vGTppaIwcjFwn0hDWbhLjfx47GgauTlY?=
 =?iso-8859-1?Q?qZatMDLYCLWOOvDMVxHFYr+edjMo55qfPCFWLN+EWalMn127MjTTafI1Lb?=
 =?iso-8859-1?Q?7uXKx0M6reTZt/neU=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P191MB1380
X-CodeTwo-MessageID: 2bc7eacb-830f-479d-8ae3-6fe5750b4f12.20201202121727@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.25b5ab47-3097-413f-849d-97db8828efd9.e34a510d-62f9-4616-a9d5-7ea0d655edf2@emailsignatures365.codetwo.com>
 <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.5477e1e9-c65b-462f-b4bf-fb410475fbbf.637cc4f1-42c3-41b8-becb-90e87bb008a8@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	eb0cf004-8ec9-4e04-9a58-08d896bc3a9a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	INXn+lEJVzVWR8q/rUQFfMjq8X4n+Le2Eo8rjKJnH1aQF/FdOx7cl9vASxj3tig054m6joFAgvBWNXYJHk9kkhyefbhm1G6DQmIcKez5PrqOwc+NGqQOg0pA7Q5uRnWXko/WQ4hJPsCgksLGi7JT2APA7mEau0GfNCE0JaXs8fe5HCGt/GuQaCX3mRzxrj7P8bFiyjWWjoitN1/zvb8D6AyXpwAC5ylrBAcQEK7veU99Z7kqytpSgpV07LWoqXNcxVpkH0k80A7X2VFcGOA5srKcGJjseN39yg+N/ZNRG4pMAHmL2EY2/ijXmZvg810TDH743iGWhvyppwF6u3dqpe5cwtnwYig5RLYbFENIF6s8l1Ps/tRdDoBFQjmph53As1j6/i0zGe9Y2ooPK36JYO/5pp5B/TtDPNSTv2KnnlLkgj47qPBSTsTL0lQ3PG/Bh3Zne6bZpzxOISzsuVaGErbrFyhDtE814rXcEWKW6IbcdEilST6HlO0Ee7NMQZKTi8ck59mTFP+6aCBn8ZpIxCYj5RRDriG9GO4+HvCrCfQtkp8pSg1fn/5ULaSPDQc8
X-Forefront-Antispam-Report:
	CIP:13.81.10.179;CTRY:NL;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(4636009)(39830400003)(396003)(136003)(376002)(346002)(46966005)(99936003)(3480700007)(47076004)(235185007)(52536014)(30864003)(5660300002)(15974865002)(7116003)(9686003)(55016002)(166002)(83080400002)(356005)(6916009)(19627235002)(33656002)(70206006)(66576008)(70586007)(7596003)(7636003)(316002)(8676002)(2906002)(6506007)(82310400003)(8936002)(66574015)(83380400001)(186003)(7696005)(26005)(86362001)(336012)(966005)(478600001)(45080400002)(220243001)(1650700003)(579004)(559001);DIR:OUT;SFP:1102;
X-OriginatorOrg: esforin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2020 12:17:29.3912
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da053fd8-6bb3-4c68-393d-08d896bc3cff
X-MS-Exchange-CrossTenant-Id: fb4ee507-9176-4f20-8267-f430d25c9b49
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=fb4ee507-9176-4f20-8267-f430d25c9b49;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P191MB0131

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: multipart/related;
	boundary="_016_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_";
	type="multipart/alternative"

--_016_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: multipart/alternative;
	boundary="_000_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_"

--_000_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable




Amtsgericht Essen HRB 25724     Vorstand: Christian H=F6velhaus (CEO), Chri=
stoph Gardlo (COO)     Aufsichtsratsvorsitzender: Dr. Klaus Kasper

Bitte beachten Sie unsere Datenschutzinformation. / Please note our privacy=
 statement. ES FOR IN Datenschutz-Information<http://www.esforin.com/datens=
chutz>
Von: TenneT Bilanzkreise <bilanzkreise@tennet.eu>
Gesendet: Donnerstag, 22. Oktober 2020 10:17
An: mabis-clearing ES FOR IN SE <mabis-clearing@esforin.com>
Betreff: URGENT: Neue Zertifikate zum elektronischen EDIFACT Datenaustausch=
 TenneT TSO GmbH // New certificates for EDIFACT data exchange TenneT TSO G=
mbH
Priorit=E4t: Hoch

Sehr geehrte Damen und Herren,

in K=FCrze verlieren unsere derzeitigen Zertifikate vorzeitig au=DFerplanm=
=E4=DFig ihre G=FCltigkeit. Daher erhalten Sie anbei die folgenden neuen Ze=
rtifikate, welche ab sofort verwendet werden k=F6nnen.

Bitte beachten Sie daher unbedingt, dass die aktuellen Zertifikate demn=E4c=
hst gesperrt (revoked) werden!
Jeder Marktpartner ist verpflichtet, mindestens einmal t=E4glich zu pr=FCfe=
n, ob keines der Zertifikate seiner Marktpartner gesperrt wurde, in dem er =
alle von ihm verwendeten Zertifikate gegen die Sperrlisten (CRL) pr=FCft.



=E8 alternativ k=F6nnen Sie die Zertifikate unter Nutzung der folgenden Lin=
ks auch direkt herunterladen:



Rolle

GLN/

EDIFACT-

direkter Downloadlink zu  den Zertifikaten

BDEW-Nr.

E-Mailadresse

TenneT TSO GmbH

BIKO

4033872000027

biko@tennet.biz<mailto:biko@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525757&seria=
l=3D69ffeb90651bf440d57171e8d7e9ae69f1edb595&cn=3Dbiko&type=3Dcert

NB

4033872000010

vnb@tennet.biz<mailto:vnb@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525792&seria=
l=3D2af01fd8f9508ec2eaaeeda33b85cffb28e590c5&cn=3Dvnb&type=3Dcert

MSB

4033872000065

vnb@tennet.biz<mailto:vnb@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525792&seria=
l=3D2af01fd8f9508ec2eaaeeda33b85cffb28e590c5&cn=3Dvnb&type=3Dcert

LF

4033872000041

lieferant@tennet.biz<mailto:lieferant@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525774&seria=
l=3D118da687ccfa667ebfa5856c558e6e0cb48bb168&cn=3Dlieferant&type=3Dcert

=DCNB

4033872000058

uenb@tennet.biz<mailto:uenb@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525787&seria=
l=3D2974d4f0b54ef60d44ef480dc2bc76bb72afd678&cn=3Duenb&type=3Dcert

BKV

4033872000034

bkv@tennet.biz<mailto:bkv@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525762&seria=
l=3D2289ce87e656bcac9f50eb7ff646dfa50d4dfd44&cn=3Dbkv&type=3Dcert

TenneT Offshore 1. Beteiligungsgesellschaft mbH

NB

9907638000009

vnb-tobw@tennet.biz<mailto:vnb-tobw@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525796&seria=
l=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&cn=3Dvnb-tobw&type=3Dcert

BKV

9907638000006

bkv-tobw@tennet.biz<mailto:bkv-tobw@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525767&seria=
l=3D1cc783dab6c26aba27ea289caa5c9bc02df6f0a9&cn=3Dbkv-tobw&type=3Dcert

MSB

9911687000001

vnb-tobw@tennet.biz<mailto:vnb-tobw@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525796&seria=
l=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&cn=3Dvnb-tobw&type=3Dcert

TenneT Offshore 9. Beteiligungsgesellschaft mbH

NB

9907682000005

vnb-ton6@tennet.biz<mailto:vnb-ton6@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525905&seria=
l=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&cn=3Dvnb-ton6&type=3Dcert

BKV

9911330000001

bkv-ton6@tennet.biz<mailto:bkv-ton6@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525771&seria=
l=3D06d5b3b69fa7ddd879ffa22af591349d3b66d669&cn=3Dbkv-ton6&type=3Dcert

MSB

9911753000000

vnb-ton6@tennet.biz<mailto:vnb-ton6@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525905&seria=
l=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&cn=3Dvnb-ton6&type=3Dcert

TenneT Offshore DolWin3 GmbH & Co. KG

BKV

9978245000005

bkv-dol3@tennet.biz<mailto:bkv-dol3@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2521856&seria=
l=3D0e433dc76f615a884b8e689c07b92a9cb0c6795c&cn=3Dbkv-dol3&type=3Dcert

QuoVadis Root Certification Authority / QuoVadis Europe Advanced CA G2

Root CA

http://trust.quovadisglobal.com/qvrca1g3.crt

Sub CA

http://trust.quovadisglobal.com/quovadiseuropeadvancedcag2.crt



Die weiteren relevanten Informationen entnehmen Sie bitte dem Dokument "Reg=
elungen zum =DCbertragungsweg" (BK6-16-200) in der jeweils g=FCltigen Fassu=
ng. Dieses finden Sie auf der Homepage www.edi-energy.de<http://www.edi-ene=
rgy.de>.

Bitte leiten Sie unsere E-Mail an die zust=E4ndige Stelle weiter, falls Sie=
 nicht der richtige Ansprechpartner sind.

Denken Sie in diesem Zusammenhang auch immer an die Sicherstellung der Aktu=
alit=E4t Ihres EDI-Ansprechpartners in der BDEW-Codenummerndatenbank<https:=
//bdew-codes.de/Codenumbers/BDEWCodes/CodeOverview> (festgelegter Verteiler=
).

Vielen Dank!


Dear Sir or Madam,

Our current MaBiS certificates will soon lose their validity prematurely an=
d unscheduled. Therefore you receive the attached new certificates, which c=
an be used immediately.

Please note that the current certificates will be revoked soon!
Every market partner is obliged to check at least once a day that none of t=
he certificates of his market partners have been revoked by checking all th=
e certificates used by market partner against the revocation lists (CRL).


=E8 Alternatively, you can also download the certificates directly by using=
 the following links:

Market role

GLN/

EDIFACT-

direct download link

BDEW-Nr.

E-Mailadresse

TenneT TSO GmbH

BIKO

4033872000027

biko@tennet.biz<mailto:biko@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525757&seria=
l=3D69ffeb90651bf440d57171e8d7e9ae69f1edb595&cn=3Dbiko&type=3Dcert

NB

4033872000010

vnb@tennet.biz<mailto:vnb@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525792&seria=
l=3D2af01fd8f9508ec2eaaeeda33b85cffb28e590c5&cn=3Dvnb&type=3Dcert

MSB

4033872000065

vnb@tennet.biz<mailto:vnb@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525792&seria=
l=3D2af01fd8f9508ec2eaaeeda33b85cffb28e590c5&cn=3Dvnb&type=3Dcert

LF

4033872000041

lieferant@tennet.biz<mailto:lieferant@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525774&seria=
l=3D118da687ccfa667ebfa5856c558e6e0cb48bb168&cn=3Dlieferant&type=3Dcert

=DCNB

4033872000058

uenb@tennet.biz<mailto:uenb@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525787&seria=
l=3D2974d4f0b54ef60d44ef480dc2bc76bb72afd678&cn=3Duenb&type=3Dcert

BKV

4033872000034

bkv@tennet.biz<mailto:bkv@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525762&seria=
l=3D2289ce87e656bcac9f50eb7ff646dfa50d4dfd44&cn=3Dbkv&type=3Dcert

TenneT Offshore 1. Beteiligungsgesellschaft mbH

NB

9907638000009

vnb-tobw@tennet.biz<mailto:vnb-tobw@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525796&seria=
l=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&cn=3Dvnb-tobw&type=3Dcert

BKV

9907638000006

bkv-tobw@tennet.biz<mailto:bkv-tobw@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525767&seria=
l=3D1cc783dab6c26aba27ea289caa5c9bc02df6f0a9&cn=3Dbkv-tobw&type=3Dcert

MSB

9911687000001

vnb-tobw@tennet.biz<mailto:vnb-tobw@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525796&seria=
l=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&cn=3Dvnb-tobw&type=3Dcert

TenneT Offshore 9. Beteiligungsgesellschaft mbH

NB

9907682000005

vnb-ton6@tennet.biz<mailto:vnb-ton6@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525905&seria=
l=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&cn=3Dvnb-ton6&type=3Dcert

BKV

9911330000001

bkv-ton6@tennet.biz<mailto:bkv-ton6@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525771&seria=
l=3D06d5b3b69fa7ddd879ffa22af591349d3b66d669&cn=3Dbkv-ton6&type=3Dcert

MSB

9911753000000

vnb-ton6@tennet.biz<mailto:vnb-ton6@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2525905&seria=
l=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&cn=3Dvnb-ton6&type=3Dcert

TenneT Offshore DolWin3 GmbH & Co. KG

BKV

9978245000005

bkv-dol3@tennet.biz<mailto:bkv-dol3@tennet.biz>

http://certificatelookup.quovadisglobal.com/getFile.aspx?id=3D2521856&seria=
l=3D0e433dc76f615a884b8e689c07b92a9cb0c6795c&cn=3Dbkv-dol3&type=3Dcert

QuoVadis Root Certification Authority / QuoVadis Europe Advanced CA G2

Root CA

http://trust.quovadisglobal.com/qvrca1g3.crt

Sub CA

http://trust.quovadisglobal.com/quovadiseuropeadvancedcag2.crt


For further relevant information, please refer to the document "Regulations=
 governing the transmission route" (BK6-16-200) in the currently valid vers=
ion. You can find the current version on the homepage www.edi-energy.de<htt=
p://www.edi-energy.de>.

Please forward this e-mail to the responsible contact person, if you are no=
t the right one.

In this context, please also remember to ensure that your EDI contact perso=
n is up to date in the BDEW code number database<https://bdew-codes.de/Code=
numbers/BDEWCodes/CodeOverview>.

Thanks in advance!

Mit freundlichen Gr=FC=DFen / Kind regards / Met vriendelijke groeten,

Ihre Kundenansprechpartner / Your customer contact persons
Customers & Markets | Balancing & Ancillary Services

Carina Schmidt     T +49 (0)921 50740-4488
Jana Upmeyer       T +49 (0)921 50740-4515
E  bilanzkreise@tennet.eu<mailto:bilanzkreise@tennet.eu>
www.tennet.eu<http://www.tennet.eu/>



TenneT TSO GmbH
Bernecker Stra=DFe 70
95448 Bayreuth

[cid:image003.png@01D6A85C.82BB0300]
Vorsitzende des Aufsichtsrats: Manon van Beek
Gesch=E4ftsf=FChrung: Otto Jager, Tim Meyerj=FCrgens, Bernardus Voorhorst
Sitz der Gesellschaft: Bayreuth AG Bayreuth: HRB 4923

Bitte denken Sie vor dem Ausdruck dieser E-Mail an die Umwelt

--_000_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:13.0pt;
	font-size:10.0pt;
	font-family:"Arial",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParag=
raphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:13.0pt;
	font-size:10.0pt;
	font-family:"Arial",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListPar=
agraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:13.0pt;
	font-size:10.0pt;
	font-family:"Arial",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagra=
phCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:13.0pt;
	font-size:10.0pt;
	font-family:"Arial",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage23
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
/* List Definitions */
@list l0
	{mso-list-id:1780055841;
	mso-list-type:hybrid;
	mso-list-template-ids:1969404130 -1412681304 67567619 67567621 67567617 67=
567619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0E8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Arial;
	mso-ansi-font-weight:bold;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:75.3pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:111.3pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:147.3pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:183.3pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:219.3pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:255.3pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:291.3pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:327.3pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
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
n></b><span style=3D"mso-fareast-language:DE"> TenneT Bilanzkreise &lt;bila=
nzkreise@tennet.eu&gt;
<br>
<b>Gesendet:</b> Donnerstag, 22. Oktober 2020 10:17<br>
<b>An:</b> mabis-clearing ES FOR IN SE &lt;mabis-clearing@esforin.com&gt;<b=
r>
<b>Betreff:</b> URGENT: Neue Zertifikate zum elektronischen EDIFACT Datenau=
stausch TenneT TSO GmbH // New certificates for EDIFACT data exchange Tenne=
T TSO GmbH<br>
<b>Priorit=E4t:</b> Hoch<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060;mso-fareast-language:DE">Sehr geehrte Da=
men und Herren,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060"><br>
<b>in K=FCrze verlieren unsere derzeitigen Zertifikate vorzeitig au=DFerpla=
nm=E4=DFig ihre G=FCltigkeit</b>.
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#002060;mso-fareast-language:DE">Daher erhalten Sie anbei die fo=
lgenden neuen Zertifikate, welche
<b>ab sofort</b> verwendet werden k=F6nnen.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060;mso-fareast-language:DE"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060;mso-fareast-language:DE">Bitte beachten =
Sie daher unbedingt, dass die aktuellen Zertifikate demn=E4chst gesperrt (r=
evoked) werden!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060">Jeder Marktpartner ist verpflichtet, mi=
ndestens einmal t=E4glich zu pr=FCfen, ob keines der Zertifikate seiner Mar=
ktpartner gesperrt wurde, in dem er alle von ihm verwendeten
 Zertifikate gegen die Sperrlisten (CRL) pr=FCft.</span><span style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#002060;mso-far=
east-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060;mso-fareast-language:DE"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060;mso-fareast-language:DE"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:35.45pt;mso-add-space:au=
to;text-align:justify;text-indent:-14.15pt;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Wingdings;color:#002060"><s=
pan style=3D"mso-list:Ignore">=E8<span style=3D"font:7.0pt &quot;Times New =
Roman&quot;">
</span></span></span><![endif]><span style=3D"color:#002060">alternativ k=
=F6nnen Sie die Zertifikate unter Nutzung der folgenden Links auch
<b>direkt</b> herunterladen:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:#002060;mso-fareast-language:DE"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:18.0pt;mso-add-space:aut=
o;text-align:justify">
<o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"905" style=3D"width:678.75pt;margin-left:29.6pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"41" rowspan=3D"2" style=3D"width:31.0pt;border:solid windowtex=
t 1.0pt;border-bottom:solid black 1.0pt;background:#DBE5F1;padding:0cm 3.5p=
t 0cm 3.5pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">Rolle<o:p></o:p></span></b></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:solid windowtext 1.0pt;=
border-left:none;border-bottom:none;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">GLN/<o:p></o:p></span></b></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:solid windowtext 1.0pt;=
border-left:none;border-bottom:none;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">EDIFACT-<o:p></o:p></span></b></p>
</td>
<td width=3D"626" rowspan=3D"2" style=3D"width:469.5pt;border-top:solid win=
dowtext 1.0pt;border-left:none;border-bottom:solid black 1.0pt;border-right=
:solid windowtext 1.0pt;background:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">direkter Downloadlink zu&nbsp; den Zertifika=
ten<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">BDEW-Nr.<o:p></o:p></span></b></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">E-Mailadresse<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">TenneT TSO GmbH<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">BIKO<o:p></o:p>=
</span></b></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000027<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:biko@tennet.biz"><span style=3D"ms=
o-fareast-language:DE">biko@tennet.biz</span></a><u><span style=3D"color:bl=
ue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525757&amp;serial=3D69ffeb90651bf440d57171=
e8d7e9ae69f1edb595&amp;cn=3Dbiko&amp;type=3Dcert">http://certificatelookup.=
quovadisglobal.com/getFile.aspx?id=3D2525757&amp;serial=3D69ffeb90651bf440d=
57171e8d7e9ae69f1edb595&amp;cn=3Dbiko&amp;type=3Dcert</a></span></u><u><spa=
n style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">NB<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000010<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb@tennet.biz"><span style=3D"mso=
-fareast-language:DE">vnb@tennet.biz</span></a><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2eaaeed=
a33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert">http://certificatelookup.q=
uovadisglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2ea=
aeeda33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert</a></span></u><u><span =
style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">MSB<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000065<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb@tennet.biz"><span style=3D"mso=
-fareast-language:DE">vnb@tennet.biz</span></a><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2eaaeed=
a33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert">http://certificatelookup.q=
uovadisglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2ea=
aeeda33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert</a></span></u><u><span =
style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">LF<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000041<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:lieferant@tennet.biz"><span style=
=3D"mso-fareast-language:DE">lieferant@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525774&amp;serial=3D118da687ccfa667ebfa585=
6c558e6e0cb48bb168&amp;cn=3Dlieferant&amp;type=3Dcert">http://certificatelo=
okup.quovadisglobal.com/getFile.aspx?id=3D2525774&amp;serial=3D118da687ccfa=
667ebfa5856c558e6e0cb48bb168&amp;cn=3Dlieferant&amp;type=3Dcert</a></span><=
/u><u><span style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span>=
</u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">=DCNB<o:p></o:p=
></span></b></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000058<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:uenb@tennet.biz"><span style=3D"ms=
o-fareast-language:DE">uenb@tennet.biz</span></a><u><span style=3D"color:bl=
ue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525787&amp;serial=3D2974d4f0b54ef60d44ef48=
0dc2bc76bb72afd678&amp;cn=3Duenb&amp;type=3Dcert">http://certificatelookup.=
quovadisglobal.com/getFile.aspx?id=3D2525787&amp;serial=3D2974d4f0b54ef60d4=
4ef480dc2bc76bb72afd678&amp;cn=3Duenb&amp;type=3Dcert</a></span></u><u><spa=
n style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000034<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:bkv@tennet.biz"><span style=3D"mso=
-fareast-language:DE">bkv@tennet.biz</span></a><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525762&amp;serial=3D2289ce87e656bcac9f50eb=
7ff646dfa50d4dfd44&amp;cn=3Dbkv&amp;type=3Dcert">http://certificatelookup.q=
uovadisglobal.com/getFile.aspx?id=3D2525762&amp;serial=3D2289ce87e656bcac9f=
50eb7ff646dfa50d4dfd44&amp;cn=3Dbkv&amp;type=3Dcert</a></span></u><u><span =
style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">TenneT Offshore 1. Beteiligungsgesellschaft =
mbH<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">NB<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9907638000009<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-tobw@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-tobw@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&amp;cn=3Dv=
nb-tobw&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&a=
mp;cn=3Dvnb-tobw&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></s=
pan></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9907638000006<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:bkv-tobw@tennet.biz"><span style=
=3D"mso-fareast-language:DE">bkv-tobw@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525767&amp;serial=3D1cc783dab6c26aba27ea289caa5c9bc02df6f0a9&amp;cn=3Db=
kv-tobw&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525767&amp;serial=3D1cc783dab6c26aba27ea289caa5c9bc02df6f0a9&a=
mp;cn=3Dbkv-tobw&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">MSB<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareas=
t-language:DE">9911687000001<span style=3D"color:black"><o:p></o:p></span><=
/span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-tobw@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-tobw@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&amp;cn=3Dv=
nb-tobw&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&a=
mp;cn=3Dvnb-tobw&amp;type=3Dcert</a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">TenneT Offshore 9. Beteiligungsgesellschaft =
mbH<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">NB<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9907682000005<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-ton6@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-ton6@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&amp;cn=3Dv=
nb-ton6&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&a=
mp;cn=3Dvnb-ton6&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></s=
pan></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9911330000001<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:bkv-ton6@tennet.biz"><span style=
=3D"mso-fareast-language:DE">bkv-ton6@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525771&amp;serial=3D06d5b3b69fa7ddd879ffa22af591349d3b66d669&amp;cn=3Db=
kv-ton6&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525771&amp;serial=3D06d5b3b69fa7ddd879ffa22af591349d3b66d669&a=
mp;cn=3Dbkv-ton6&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">MSB<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareas=
t-language:DE">9911753000000<span style=3D"color:black"><o:p></o:p></span><=
/span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-ton6@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-ton6@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&amp;cn=3Dv=
nb-ton6&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&a=
mp;cn=3Dvnb-ton6&amp;type=3Dcert</a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:18.25pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border:solid window=
text 1.0pt;border-top:none;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;h=
eight:18.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;mso-fareast-language:DE">TenneT Offshore DolWin3 GmbH =
&amp; Co.
</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">KG</span></b><b><u><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-=
serif;color:#1F497D;background:silver;mso-highlight:silver;mso-fareast-lang=
uage:DE"><o:p></o:p></span></u></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareas=
t-language:DE">9978245000005<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-autospace:none"><a href=3D"mailto:bkv-=
dol3@tennet.biz"><span style=3D"mso-fareast-language:DE">bkv-dol3@tennet.bi=
z</span></a><u><span style=3D"color:blue;mso-fareast-language:DE"><o:p></o:=
p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2521856&amp;serial=3D0e433dc76f615a884b8e689c07b92a9cb0c6795c&amp;cn=3Db=
kv-dol3&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2521856&amp;serial=3D0e433dc76f615a884b8e689c07b92a9cb0c6795c&a=
mp;cn=3Dbkv-dol3&amp;type=3Dcert</a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;mso-fareast-language:DE">QuoVadis Root Certification A=
uthority / QuoVadis Europe Advanced CA G</span></b><b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1=
F497D;mso-fareast-language:DE">2</span></b><b><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;mso-=
fareast-language:DE"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"142" colspan=3D"2" style=3D"width:106.25pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
;mso-fareast-language:DE">Root CA</span><span style=3D"font-size:9.0pt;font=
-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE"><=
o:p></o:p></span></p>
</td>
<td width=3D"763" colspan=3D"2" style=3D"width:572.5pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid black =
1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><a href=3D"http://trust=
.quovadisglobal.com/qvrca1g3.crt"><span style=3D"mso-fareast-language:DE">h=
ttp://trust.quovadisglobal.com/qvrca1g3.crt</span></a><u><span style=3D"col=
or:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"142" colspan=3D"2" style=3D"width:106.25pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
;mso-fareast-language:DE">Sub CA</span><span style=3D"font-size:9.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE"><o=
:p></o:p></span></p>
</td>
<td width=3D"763" colspan=3D"2" style=3D"width:572.5pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid black =
1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-autospace:none"><a href=3D"http://trus=
t.quovadisglobal.com/quovadiseuropeadvancedcag2.crt"><span style=3D"mso-far=
east-language:DE">http://trust.quovadisglobal.com/quovadiseuropeadvancedcag=
2.crt</span></a><span style=3D"color:#1F497D;mso-fareast-language:DE">
</span><u><span style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></s=
pan></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:#002060;mso-fareast-language:DE"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#002060">Die weiter=
en relevanten Informationen entnehmen Sie bitte dem Dokument &#8222;<b>Rege=
lungen zum =DCbertragungsweg</b></span><b><span style=3D"font-size:10.0pt;f=
ont-family:&quot;Arial&quot;,sans-serif;color:#1F497D">&#8220;
 (BK6-16-200)</span></b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:#002060"> in der jeweils g=FCltigen Fassung. Di=
eses finden Sie auf der Homepage
</span><a href=3D"http://www.edi-energy.de"><b><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,sans-serif;color:#002060">www.edi-energy.=
de</span></b></a><span style=3D"font-size:10.0pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:#002060">.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060">Bitte leiten Sie unsere E-Mail an die z=
ust=E4ndige Stelle weiter, falls Sie nicht der richtige Ansprechpartner sin=
d.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060">Denken Sie in diesem Zusammenhang auch =
immer an die Sicherstellung der Aktualit=E4t Ihres
<b>EDI-Ansprechpartners</b> in der </span><a href=3D"https://bdew-codes.de/=
Codenumbers/BDEWCodes/CodeOverview"><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif;color:#002060">BDEW-Codenummerndatenbank<=
/span></a>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;co=
lor:#002060">(festgelegter Verteiler).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060">Vielen Dank!<o:p></o:p></span></p>
<div style=3D"border:none;border-bottom:solid windowtext 1.5pt;padding:0cm =
0cm 1.0pt 0cm">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060">Dear Sir or Madam,<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><b><span lang=3D"EN" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060">Our current MaBiS certif=
icates will soon lose their validity prematurely and unscheduled.
</span></b><span lang=3D"EN" style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#002060">Therefore you receive the attached new =
certificates, which can be used<b> immediately.</b><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:#002060">Please note that the curren=
t certificates will be revoked soon!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:#002060">Every market partner is obl=
iged to check at least once a day that none of the certificates of his mark=
et partners have been revoked by checking all the
 certificates used by market partner against the revocation lists (CRL).<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoListParagraph" style=3D"margin-left:35.45pt;mso-add-space:au=
to;text-align:justify;text-indent:-14.15pt;mso-list:l0 level1 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-family:Wingdings;co=
lor:#002060"><span style=3D"mso-list:Ignore">=E8<span style=3D"font:7.0pt &=
quot;Times New Roman&quot;">
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"color:#002060"=
>Alternatively, you can also download the certificates directly by using th=
e following links:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span>=
</p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"905" style=3D"width:678.75pt;margin-left:29.6pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"41" rowspan=3D"2" style=3D"width:31.0pt;border:solid windowtex=
t 1.0pt;border-bottom:solid black 1.0pt;background:#DBE5F1;padding:0cm 3.5p=
t 0cm 3.5pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">Market role<o:p></o:p></span></b></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:solid windowtext 1.0pt;=
border-left:none;border-bottom:none;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">GLN/<o:p></o:p></span></b></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:solid windowtext 1.0pt;=
border-left:none;border-bottom:none;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">EDIFACT-<o:p></o:p></span></b></p>
</td>
<td width=3D"626" rowspan=3D"2" style=3D"width:469.5pt;border-top:solid win=
dowtext 1.0pt;border-left:none;border-bottom:solid black 1.0pt;border-right=
:solid windowtext 1.0pt;background:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">direct download link<o:p></o:p></span></b></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">BDEW-Nr.<o:p></o:p></span></b></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;bac=
kground:#DBE5F1;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">E-Mailadresse<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">TenneT TSO GmbH<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">BIKO<o:p></o:p>=
</span></b></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000027<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:biko@tennet.biz"><span style=3D"ms=
o-fareast-language:DE">biko@tennet.biz</span></a><u><span style=3D"color:bl=
ue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525757&amp;serial=3D69ffeb90651bf440d57171=
e8d7e9ae69f1edb595&amp;cn=3Dbiko&amp;type=3Dcert">http://certificatelookup.=
quovadisglobal.com/getFile.aspx?id=3D2525757&amp;serial=3D69ffeb90651bf440d=
57171e8d7e9ae69f1edb595&amp;cn=3Dbiko&amp;type=3Dcert</a></span></u><u><spa=
n style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">NB<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000010<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb@tennet.biz"><span style=3D"mso=
-fareast-language:DE">vnb@tennet.biz</span></a><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2eaaeed=
a33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert">http://certificatelookup.q=
uovadisglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2ea=
aeeda33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert</a></span></u><u><span =
style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">MSB<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000065<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb@tennet.biz"><span style=3D"mso=
-fareast-language:DE">vnb@tennet.biz</span></a><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2eaaeed=
a33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert">http://certificatelookup.q=
uovadisglobal.com/getFile.aspx?id=3D2525792&amp;serial=3D2af01fd8f9508ec2ea=
aeeda33b85cffb28e590c5&amp;cn=3Dvnb&amp;type=3Dcert</a></span></u><u><span =
style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">LF<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000041<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:lieferant@tennet.biz"><span style=
=3D"mso-fareast-language:DE">lieferant@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525774&amp;serial=3D118da687ccfa667ebfa585=
6c558e6e0cb48bb168&amp;cn=3Dlieferant&amp;type=3Dcert">http://certificatelo=
okup.quovadisglobal.com/getFile.aspx?id=3D2525774&amp;serial=3D118da687ccfa=
667ebfa5856c558e6e0cb48bb168&amp;cn=3Dlieferant&amp;type=3Dcert</a></span><=
/u><u><span style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span>=
</u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:black;mso-fareast-language:DE">=DCNB<o:p></o:p=
></span></b></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000058<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:uenb@tennet.biz"><span style=3D"ms=
o-fareast-language:DE">uenb@tennet.biz</span></a><u><span style=3D"color:bl=
ue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525787&amp;serial=3D2974d4f0b54ef60d44ef48=
0dc2bc76bb72afd678&amp;cn=3Duenb&amp;type=3Dcert">http://certificatelookup.=
quovadisglobal.com/getFile.aspx?id=3D2525787&amp;serial=3D2974d4f0b54ef60d4=
4ef480dc2bc76bb72afd678&amp;cn=3Duenb&amp;type=3Dcert</a></span></u><u><spa=
n style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">4033872000034<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:bkv@tennet.biz"><span style=3D"mso=
-fareast-language:DE">bkv@tennet.biz</span></a><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><u><span style=3D"color=
:#1F497D;mso-fareast-language:DE"><a href=3D"http://certificatelookup.quova=
disglobal.com/getFile.aspx?id=3D2525762&amp;serial=3D2289ce87e656bcac9f50eb=
7ff646dfa50d4dfd44&amp;cn=3Dbkv&amp;type=3Dcert">http://certificatelookup.q=
uovadisglobal.com/getFile.aspx?id=3D2525762&amp;serial=3D2289ce87e656bcac9f=
50eb7ff646dfa50d4dfd44&amp;cn=3Dbkv&amp;type=3Dcert</a></span></u><u><span =
style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">TenneT Offshore 1. Beteiligungsgesellschaft =
mbH<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">NB<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9907638000009<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-tobw@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-tobw@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&amp;cn=3Dv=
nb-tobw&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&a=
mp;cn=3Dvnb-tobw&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></s=
pan></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9907638000006<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:bkv-tobw@tennet.biz"><span style=
=3D"mso-fareast-language:DE">bkv-tobw@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525767&amp;serial=3D1cc783dab6c26aba27ea289caa5c9bc02df6f0a9&amp;cn=3Db=
kv-tobw&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525767&amp;serial=3D1cc783dab6c26aba27ea289caa5c9bc02df6f0a9&a=
mp;cn=3Dbkv-tobw&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">MSB<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareas=
t-language:DE">9911687000001<span style=3D"color:black"><o:p></o:p></span><=
/span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-tobw@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-tobw@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&amp;cn=3Dv=
nb-tobw&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525796&amp;serial=3D2b0381405046a6a9bfeab9f6cd7b83c543dea44e&a=
mp;cn=3Dvnb-tobw&amp;type=3Dcert</a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-fareast-language:DE">TenneT Offshore 9. Beteiligungsgesellschaft =
mbH<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">NB<o:p></o:p></spa=
n></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9907682000005<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-ton6@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-ton6@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&amp;cn=3Dv=
nb-ton6&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&a=
mp;cn=3Dvnb-ton6&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></s=
pan></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:DE">9911330000001<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:bkv-ton6@tennet.biz"><span style=
=3D"mso-fareast-language:DE">bkv-ton6@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525771&amp;serial=3D06d5b3b69fa7ddd879ffa22af591349d3b66d669&amp;cn=3Db=
kv-ton6&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525771&amp;serial=3D06d5b3b69fa7ddd879ffa22af591349d3b66d669&a=
mp;cn=3Dbkv-ton6&amp;type=3Dcert</a></span></u><u><span style=3D"color:blue=
;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">MSB<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareas=
t-language:DE">9911753000000<span style=3D"color:black"><o:p></o:p></span><=
/span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><a href=3D"mailto:vnb-ton6@tennet.biz"><span style=
=3D"mso-fareast-language:DE">vnb-ton6@tennet.biz</span></a><u><span style=
=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&amp;cn=3Dv=
nb-ton6&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2525905&amp;serial=3D3584acc4129635bf983ef243dbc3f0a5c89dee84&a=
mp;cn=3Dvnb-ton6&amp;type=3Dcert</a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:18.25pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border:solid window=
text 1.0pt;border-top:none;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;h=
eight:18.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;mso-fareast-language:DE">TenneT Offshore DolWin3 GmbH =
&amp; Co.
</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE">KG</span></b><b><u><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-=
serif;color:#1F497D;background:silver;mso-highlight:silver;mso-fareast-lang=
uage:DE"><o:p></o:p></span></u></b></p>
</td>
</tr>
<tr style=3D"height:30.75pt">
<td width=3D"41" style=3D"width:31.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:DE">BKV<o:p></o:p></sp=
an></p>
</td>
<td width=3D"100" style=3D"width:75.25pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareas=
t-language:DE">9978245000005<o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal" style=3D"text-autospace:none"><a href=3D"mailto:bkv-=
dol3@tennet.biz"><span style=3D"mso-fareast-language:DE">bkv-dol3@tennet.bi=
z</span></a><u><span style=3D"color:blue;mso-fareast-language:DE"><o:p></o:=
p></span></u></p>
</td>
<td width=3D"626" style=3D"width:469.5pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 3.5pt 0cm 3.5pt;height:30.75pt">
<p class=3D"MsoNormal"><u><span style=3D"color:#1F497D;mso-fareast-language=
:DE"><a href=3D"http://certificatelookup.quovadisglobal.com/getFile.aspx?id=
=3D2521856&amp;serial=3D0e433dc76f615a884b8e689c07b92a9cb0c6795c&amp;cn=3Db=
kv-dol3&amp;type=3Dcert">http://certificatelookup.quovadisglobal.com/getFil=
e.aspx?id=3D2521856&amp;serial=3D0e433dc76f615a884b8e689c07b92a9cb0c6795c&a=
mp;cn=3Dbkv-dol3&amp;type=3Dcert</a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"905" colspan=3D"4" style=3D"width:678.75pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;background:#D9D9D9;padding:0cm 3.5pt 0cm 3.5pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;mso-fareast-language:DE">QuoVadis Root Certification A=
uthority / QuoVadis Europe Advanced CA G</span></b><b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1=
F497D;mso-fareast-language:DE">2</span></b><b><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;mso-=
fareast-language:DE"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"142" colspan=3D"2" style=3D"width:106.25pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
;mso-fareast-language:DE">Root CA</span><span style=3D"font-size:9.0pt;font=
-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE"><=
o:p></o:p></span></p>
</td>
<td width=3D"763" colspan=3D"2" style=3D"width:572.5pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid black =
1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><a href=3D"http://trust=
.quovadisglobal.com/qvrca1g3.crt"><span style=3D"mso-fareast-language:DE">h=
ttp://trust.quovadisglobal.com/qvrca1g3.crt</span></a><u><span style=3D"col=
or:blue;mso-fareast-language:DE"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"142" colspan=3D"2" style=3D"width:106.25pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:solid black 1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
;mso-fareast-language:DE">Sub CA</span><span style=3D"font-size:9.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:DE"><o=
:p></o:p></span></p>
</td>
<td width=3D"763" colspan=3D"2" style=3D"width:572.5pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid black =
1.0pt;padding:0cm 3.5pt 0cm 3.5pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-autospace:none"><a href=3D"http://trus=
t.quovadisglobal.com/quovadiseuropeadvancedcag2.crt"><span style=3D"mso-far=
east-language:DE">http://trust.quovadisglobal.com/quovadiseuropeadvancedcag=
2.crt</span></a><span style=3D"color:#1F497D;mso-fareast-language:DE">
</span><u><span style=3D"color:blue;mso-fareast-language:DE"><o:p></o:p></s=
pan></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060">For further relevant inf=
ormation, please refer to the document
<b>&quot;Regulations governing the transmission route&quot; (BK6-16-200)</b=
> in the currently valid version. You can find the current version on the h=
omepage
</span><a href=3D"http://www.edi-energy.de"><b><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#002060=
">www.edi-energy.de</span></b></a><span lang=3D"EN-US" style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#002060">.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060">Please forward this e-ma=
il to the responsible contact person, if you are not the right one.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060">In this context, please =
also remember to ensure that your EDI contact person is up to date in the
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#002060"><a href=3D"https://bdew-codes.de/Codenumbers/BDEWCodes/=
CodeOverview"><span lang=3D"EN-US" style=3D"color:#002060">BDEW code number=
 database</span></a></span><span lang=3D"EN-US" style=3D"font-size:10.0pt;f=
ont-family:&quot;Arial&quot;,sans-serif;color:#002060">.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#002060"><br>
Thanks in advance!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#32768E;mso-fareast-language:DE">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#32768E;mso-fareast-language:DE">Mit freundliche=
n Gr=FC=DFen / Kind regards / Met vriendelijke groeten,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#347994;mso-fareast-language:DE"><br>
</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#004594;mso-fareast-language:DE">Ihre Kundenan=
sprechpartner / Your customer contact persons</span></b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#347994;mso-fareast-language:DE"><br>
Customers &amp; Markets | Balancing &amp; Ancillary Services</span><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#32768E;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:8.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#347994;mso-fareast-language:DE=
"><o:p>&nbsp;</o:p></span></i></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr>
<td width=3D"295" valign=3D"bottom" style=3D"width:220.95pt;border:solid wh=
ite 1.0pt;border-right:solid #347994 1.0pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;line-height:12.0pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:#347994;mso-fareast-language:DE">Carina Schmidt&nbsp;&nbsp;&nbsp;&nb=
sp; T&nbsp;</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#347994;mso-fareast-language:DE">+49 (0)921 50740=
-4488<br>
<b>Jana Upmeyer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T&nbsp;</b>+49 (0)921 5=
0740-4515<br>
<b>E&nbsp;&nbsp;</b><a href=3D"mailto:bilanzkreise@tennet.eu">bilanzkreise@=
tennet.eu</a><br>
</span><span style=3D"font-size:10.0pt;mso-fareast-language:DE"><a href=3D"=
http://www.tennet.eu/"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#347994;text-decoration:none">www.tennet.eu</span></b></a></sp=
an><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:#347994;mso-fareast-language:DE"><o:p></o:p></span></p>
</td>
<td width=3D"18" valign=3D"top" style=3D"width:13.4pt;border:solid white 1.=
0pt;border-left:none;padding:0cm 0cm 0cm 0cm">
</td>
<td width=3D"328" valign=3D"bottom" style=3D"width:245.7pt;border:solid whi=
te 1.0pt;border-left:none;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;line-height:12.0pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;co=
lor:#347994;mso-fareast-language:DE"><br>
&nbsp;<br>
TenneT TSO GmbH<br>
Bernecker Stra=DFe 70<br>
95448 Bayreuth<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:#347994;mso-fareast-language:DE"><img border=3D"0" width=3D"=
155" height=3D"32" style=3D"width:1.6166in;height:.3333in" id=3D"Afbeelding=
_x0020_1" src=3D"cid:image003.png@01D6A85C.82BB0300"><o:p></o:p></span></b>=
</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:#347994;mso-fareast-language:DE">Vorsitzende des Aufsichtsra=
ts:&nbsp;</span></b><span style=3D"font-size:8.0pt;font-family:&quot;Arial&=
quot;,sans-serif;color:#347994;mso-fareast-language:DE">Manon
 van Beek<br>
<b>Gesch=E4ftsf=FChrung:</b> Otto Jager, Tim Meyerj=FCrgens, Bernardus Voor=
horst<br>
<b>Sitz der Gesellschaft:</b> Bayreuth <b>AG Bayreuth:</b> HRB 4923<br>
<br>
</span><span style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:#347994;mso-fareast-language:DE">Bitte denken Sie vor dem Ausdruc=
k dieser E-Mail an die Umwelt</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_--

--_016_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=4941;
	creation-date="Thu, 22 Oct 2020 08:17:17 GMT";
	modification-date="Thu, 22 Oct 2020 08:17:17 GMT"
Content-ID: <image003.png@01D6A85C.82BB0300>
Content-Transfer-Encoding: base64

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

--_016_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_--

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="QV CA G2 Sub.cer.gz"
Content-Description: QV CA G2 Sub.cer.gz
Content-Disposition: attachment; filename="QV CA G2 Sub.cer.gz"; size=1624;
	creation-date="Thu, 22 Oct 2020 08:04:51 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:51 GMT"
Content-ID: <7D16DC68E36FAC4B91290C01CBC70FE9@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

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
uJvbotjRCI3fqKWw57Sy7i9t3wEZt3hhxgYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="QV CA1 G3 Root.cer.gz"
Content-Description: QV CA1 G3 Root.cer.gz
Content-Disposition: attachment; filename="QV CA1 G3 Root.cer.gz"; size=1349;
	creation-date="Thu, 22 Oct 2020 08:04:52 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:52 GMT"
Content-ID: <E885842E2217294D87F8F8F39A1BD80F@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICNn8YV8EAFFWIENBMSBHMyBSb290LmNlcgCtk2s0kwEcxr3vZpEWNbdCYSo5Te9MN0xSuV9y
qVzHcslqJffS1WqouayL5TK3TQvR5ZjkZEUba6glSSlMqGSyGGWcii+dTp/79D/P7/nwP885zwNR
lEMhCsypBAYCIKh53C/EvHrDCtfBLYs2WaJMaxmvIq5CSISqWapT6nckAKgpK0FOWDVIFQHbC0eg
QHt37ApIZ0EsRml4JUTvI4aT4gzdSEdI8RHh2FWQ/oIFQ2n9sbyjo+MNd+4wxBo64qBVOkisBYTF
WmC3WGyxtAzQQVr+Lf/jJwpo/HcMQFkJRgHVleb5YpACAkolj/ZoZI1MkO24cCa1Htv6HjO0rAJu
o7e36ZMfZGDC5Y9T+zI2DDTh+ykfPasd08jSQOcml66H2dK0qrOU/FQpHpbnDbzcVFTVI/MRRdq8
qgKBHpNO63LQ4U6Z/uCPOL/EuumldGStTNyumGlxG+anQoszdc5sGm3uf7iU2ZiZNpi+lXpQYSu8
JUExlXVzxVen7l3hzqE7xV2Cdc6SIpsCFTYt2MxIMret0qfn9BnxSlWfhmBluLjUJZuWSEGW/ngp
1EwKpG9elFJgi1B4E8KaOUo/b4x463nXXtkWC1M9wLsbqn2U07vmCSyydxLeYffBg5Yqjx4+X7Lu
AgHeNEXnQXjBeDmpYWtBWRmj40APqRFg3G4TeFl+WVL5yyjLP9slaIiYf/PliNnxTC+8ldZXln9W
RVBf8wzdeDh9d0zv5TxycjEen3uKMP1IO6qEcFsNPRegXmmciBGVahgMde5C09OLW8w+dk/l1/it
2ghdVNHzZdXmoqUqSfo5wcSOtovMEJbL5fxxo0pnbZVyHtEUK4qvpk6/bb5H6xjWsHAPoRla2Tiv
xlH9ke/aVBN2kuJmD8eclvUL3E63sM2f5pxoi2NlebibzBKG4I9i9TjrMM4BecndQaqGdWev1Xt+
Q+oT0u31ltV9uvyuiCw/1J+ByIVVt5uO33Cc9AFhgBLAtofsIPX5HhmgAOAXXBmCzR9o6QJQXwDw
+Y0gIIMFvRSuDddkX389SWBpDNzaXWyjE27zFTjGbP9nLLCFcukqAhPmbJOFIUnC1n5xCH+5wC74
lUXlg0PdXVpaDrnoGx/pgbp5boPV9mwKdnP6s5FZAZzhRAOEmYA4EIdgOETGG3iONd2v5yKJ7WFn
us2TMhj6Zuiow9T9icdwqJ8Dnhx0kq5iZcZnXoRIvF0u0nk/KmxohJtjHDaSIvl62T+ltp2t1x4n
Ll6DrDgJ6le8sA5Ra0yxwocPPL6J8eC5C96sbzHWfdFcFQtStldasayMr2N7VcL4CZr1oaaYwCiJ
dkUkBe01NerzBltwcqSu0HU0XVs8E7z1kjOUPfZtdIU8aSVW1/2gL3ljdMTMO7zUSEqQy2mtoRG+
HTHh8hkOOwW3GRcjKzse4lF93qjP0jnzs39V4URiwOYJlPyORFVINCN/lxTefpjqYhpt/pV74hkd
x69JVEzJyIUAXVFEn2bGih17+KuHNhn6TPh29BPPc8APa7b2US0whDi6d7C94DnedWBmxQWDLtae
9h2zOzT5vNeiAHZYJHiOp2xl7ciUKq11m0r3elyOPqu76K7aGG1taXgn0WU0qLiv5s5BWM3q3iPB
pCjSLYKV9BSpQWhN9SjSqudqefJzkv26ReQRcv3k+jACd4MMgx8LiJBUBNo9ccpLOVK0GmFms5xL
Uy9gmcg4ma+TJa73wxlhOReeuDzTNzdJw4UO838DVs54u2QFAAA=

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="bkv-tobw.cer.gz"
Content-Description: bkv-tobw.cer.gz
Content-Disposition: attachment; filename="bkv-tobw.cer.gz"; size=1450;
	creation-date="Thu, 22 Oct 2020 08:04:52 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:52 GMT"
Content-ID: <C1717B98201EA84A9EC9324433F37B74@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICLoaYl8EAGJrdi10b2J3LmNlcgCtVHtUi3EY3rd9zVabtZpyK1+RS1K/VSJqSleFipqKQ7t1
YZds66600UTuuS+2IqkTo1DuyaWbS25R0UGEQimkUmxUDsc/zvH99b3P+37P+/ye7zk/IMWWAikc
rcSgITSaMrpsTd3p0uVnJzRPzMhbIi+Z8rktFzhj8eYyT1knEYK0ga2SBIhYfIjME+JgYDSkhcoc
DUb+msD90c1SEyOATdUBeCwmAMbqo13dqBbAXFNoE8b6RQnoDHaECPEXRonE3Aj+CsSVEyUWscK5
DD4b8eAxPakTgJlmGkMwHpx2ixIKIjmIMzuawWdx2IiLM+JhDYwNidYA2FPtgL3NdDAtWF3aABs1
9OMJBpI8qilABrXiIQN95oroKWIBM8ZJzOHzOWJLZkT871LVp9UUOAJ2NiOOI+RTyYCkAYYQcGpA
qNYaTh0ODH4eh+SvYfFH/Bf6/JSuD8iaDkzQ/sU/wGBOwA1sH4AwvyAghUzVqwd9VVuJkUIklBrX
RkshCJUc0L3XQ36G0D6ycvtVubNXr9xJi6zEO4WSWIVHXVRPmWlBpn6LUOzGnZQhOS8vbzrjflYb
TV+UPKL5nX5G/F3dQqNJbBdl183GVr/efXtUr51cemJPrHKonOo91lVlfWOtfWY7dr6xcPx8xn6/
vGjuOYok5Uvfi/uXs8YYjsjuy15morda1tLAC1j2np1Tbd91NKWAa+VgTtFLk3XXHxgemleR+i0r
kXuRLtGZoXp44KWJqKcP32DIN5UdB9lTTqFfXVrTjC/agMyIW6gzfC95EVLwpKX4I4v3ulpuWAfN
UjI2hbUf44Z4Iq9mk+Uli6n3dE7ppH9r6GVG5DALaOtqM9EYCAUdlELn1I4UgTFq+4zGwuo/kUx5
jNtaYNx0LuRt80yPU+7rVzaLvuYDiQyLm4yFtLSGQBAcD2KB10AN0DJauFgcOcPKSqwJoeXKKEG0
JmVhXAGTwbVkCXhWAxDnR+4Y/bFjMcKsLVlCMTAf5IJkxv1cApYo8i9UwFijlAwbgmGSv6UPzNf0
EdgDuAEXLF5NC0MXAyE2sAO2A1vQkMHE/i0xMTF/0yvkRApEEWKBMA4YafjMYANAGfgcgx58g8E8
TXsM7A5cwWylk5Imc+hnZgm5/+wE9+e2obABTGG3txwxwVvUIvEthQrCqtoMo02fwVBNmwRB32AY
g9Z6+h+uFowUDaHSGGkgwdkmCRkXFYiNGNGxhbdFz05P13c/ne3rc81z27MdWfi8rfuOTE9jtdkk
v92+nMpOuO9NSpwYO7J8SXQcmf6i9bYXraxQcSmAtTF0gat3BwrJvuWcKqnpnHV/gpvVjaaThooO
x0nR5bx4o1rv4bHHh0bs2W1/sH6yorqRtlm+NLwqs9FxnJEjf+aF9OCzDeUsqLNA91GV/ZK6ifrv
aWyVb4p0lcT2zk6OTo+TnXl18KdqhafTbv9ijq8D8X1TfqXo6ZGyzTtT6VULKFWB5BQ73bTNfpgg
xorrNJewj7oN75KYFvSO3DWUug9iywP+0+aekHcSJeuJO8LTAkdZWMwiJc7s/aSbay7NKOnw0ZN+
lNa0ls5bejJuXQ6r4Wb9pEPVqivj93WvdSHo37GG+3jdMKkeYINy6S+Aieuj6arbbc9jknbIX/W1
eYhKxxcXTRixrNxTgZ0zzII8vvxNJS2g/FkXf6MxFxeemr4x5vrXmrxjthcO5dcclfVWESsYPHkV
sSzfKDfoCa5qUpHZxaD8ihDul9BeMyUp3tH0jaVJsdtKU+bJw8PuJBcUrxv31vSgY09WJ0t5vbG1
yf180YaknLFe11xpgdKKKXaRRbvM2hMeVLK7HEalJ7yRZyfaDX2nPHThUuCtx19Vtsjsmko0qkTx
RWu5Aj/GZvF2n22EmHGZ3wHBH2RnxgYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="bkv-ton6.cer.gz"
Content-Description: bkv-ton6.cer.gz
Content-Disposition: attachment; filename="bkv-ton6.cer.gz"; size=1449;
	creation-date="Thu, 22 Oct 2020 08:04:52 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:52 GMT"
Content-ID: <DF58AF0C57876C4DAA89A7F60B7BC8A1@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICE4bYl8EAGJrdi10b242LmNlcgCtVHtUi3EY7tu+ZtVqpszlsKZckqzfikUlstXiyLXInLCt
rabdrK0QS6NRoURKSqsoIV10HyV3y61zKpRLJV1QbpFbslE5HP84x/fX9z7v+z3v83u+5/yAAnUR
KOBgFRIBIRBmqLqzxalZj+5v7k+3fr9/RooTt54HXFEG1koPZa8xBBmCGSosMEYZrFd6QBwkjID0
9dLGgbG/JtB/dNO1xETgRzYCBiikN4wyRdDcyDbAWlcYYiyXyUQrmX68IKKXRBYk5fOEgUQaRyYN
YgfwmUI/Il3A8iBPAZN000gMYWjaTSYRiTlEV79gppDN8SNSXYl0O0AYZWwHwGwyBcy2nzXTgaEt
7YG9FvrxMED4SbIFIA5pNYDwpqzA4OlSkZAyT8oRCjlSEou35Xep2tPqCjQGNZ+5mSMRknEAqwOG
YdBaQKLVGkAeDfA/j4P10rF4Eb1WLPkp3RTgdB0YY/iLf5DBGoMe3D4IIX9BQAFZaFcP+aq1EqmA
sHpa3BChgCA9tRlD0uDsv5F67cT0j4aOFgXjuDgOTZ0Wl6MJaxE3NMhL+mGrtSGi+u7Y+A4HNY5F
MNlALR9vOv7CzpapwoIRN9rhFIrJWcbBW+xPgljitMaQr3GdMZ82qXJHdOXSxnjVpzZ1ku4GCbtm
iequTjj5cH5yrEVXWC2tIepee8Z++7kcnk/E3Krwpb7RxcdbI1yqE9ftS97Wv4mSqpfZXkC9O7Kz
Q9Ub3DNBzAytbQvkbs07E1Nj7uuxfWK1HPMmqr0sPnnTBuaOl9hRaRm7q3N8SRaus3tJJZqkfE25
T/bqm3nCXFsPOj7TxzTy+PqeJsZ53qT4RkKywdF277IE+XtNugiBhPSgDAWk1jpSAsy19o23hLV/
YrvZQ3RsAaFNvf7lcyd6kXvkxudBX0+DcCUKPQ0F6esPgyB4C9gEFg7WAKF0CZBKxY62tlJdCEkb
ZaJgXcr8+SIWk09iiwS2gxDnR+6YA7FjM/3tSGyJFFgPcUFKwgCXiB0k/gsVIOiU4uBRYGT439IH
Fuv6RJgO3AAVZaClhaEKH8gPUMCMwS0ICG81sCUkJORveiUcsSiIJxVJNoPxOr5JMB6YDX6ORAy9
wcBT1zaH3QENzFfNU7konQeY2RL+PzvB/7nNBMbDZguNsz7Lersr8j/6J+7LTD8hWNJaDUx0bSwE
9cMwEqHf9B+uFqQCAemRs+087Q6tuLPNQ5yjFnnK9t5sqEcdyZ1V6f0yC+P+0EdPcSEnamyLQmaE
6AS3NPyqCPnr1ebceVOSBJUkl8hlNO5oT5bL0TpLoz7TUMQO3zuZGvf4fXa0SFGGeWxZthwqdIlh
Lh/el+9vMzeHkvIgITeNkOVLIyxYvIPuxp2RqOH6z6urvH+KNyI2Lu/Z5iXDvbuvDeOyyrE1dMNp
b0vR2WhqEiJQQEtgOMwh11kZnZa9a45IMo5pjjZysnO7vNHZu7Qpiw0v0Fxu01xg41LoLYQvTpLu
9tdFG9IlGfk7OtzDDkeNpOzKV6WuE1RXVBSkjkosNFqPvu5KtUleWQfhq0pjDxUxJnN9zVwbEZ4B
r8srnmhOrg3NZpUY39efZX475QoBlzKurPVtkUP514ylwfcKu76tmTj78INAZn5HqKAwq6cBGUe9
OukG61Jrzq43beb6BnJSwL3LM+WXksHTwu2fj51lRscV95D7Ub2ao+4LLi3G950jhq87OOKVTfz0
5hNnVKrbpYuab9dMdncpe+ZYw0IXeDgesFz1uJyoVHObOQ9699ys3MYwCc9jKyOhAOR+G8Xcxg9P
txY7htKx3ruswvhVZnyHooUzbZyduw2dILmlNz85pS9hm6EtJRr3xb5oqeWLhDD5owXsMfn4q+qu
0IzUPHHts1q/LgLe6iPlO9QQvX3GBgAA

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="lieferant.cer.gz"
Content-Description: lieferant.cer.gz
Content-Disposition: attachment; filename="lieferant.cer.gz"; size=1450;
	creation-date="Thu, 22 Oct 2020 08:04:53 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:53 GMT"
Content-ID: <526BDA1C3FFD5C4B95C3C807EF213652@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICHUcYl8EAGxpZWZlcmFudC5jZXIArVR9VEtxGO5u19rWkmkWUUZJKttvRj7yVW0VIVRKOrS2
1cbaah+V0DSsEqaIUCoKrXISO8SIilAhDoqJI8YJRSpSB5s+fBz/OMf9677P+97nfX7Pfc4PyFHX
gByOy0EiIASCgN95LLH2S1h8ef42vv8uAe5MyikucEVhHBReik+mEIQFU3PMgCkKE6LwgjhIGAEN
McodAyx/TqD/6B7RE5MAm2oCMCikP4wyR9AZVCfgYCiwOJtlUuEKJpsnJvmJpGIJnydYR6JzpBIx
i8tnCtgkz4hQL+pEMMEwjcRZD04zpCJhJIfkyo5mClgcNsndleQ5BVhbmE4BYCbVGcykzZw2JUhf
0gBND/14gkBCMdUGjBvUioGIBD6PE8YRMQWS+RKOQMCRkEN5cb9r1R/XUKBxKDfmeo5IQMUDMwNg
jEPrAZFeLJc6EhD7zmPmZ2DxI/n5+vRpNwd4QwfGYX/hHw6GGUAHHGZw/QCG/AUDcmi8fvmgtXo3
kXLIzEiPYxFyCDJSTGpwjYjPiA786h+ns26Uaz3tLRSlFaYyU+vKV+bcqG7/iq23FXeGN2o6A6KS
6tvv1LXBSqcqpcw6JTFeScKM9lUZv3ehVfZEc6sKYp66K0OFhfg0h5O6USpBEtMx02GG97JISmz+
nEQN08rZlHRWG3CfkmaLzG6LOKsMkD3WXCvDYrhFWDz1ZFjy5i57+dt026bul0lNCiLgw7xcXWfx
I+dNGdUfKl53LHKUatx8PNakTY9CJF9wopRu+dbx0d5nVJlRvexpQ2Z9a7NXy/YC9I5cP9/CBQ3D
BbrF0550LGQ9Hvs8SynVOTteFFy9xYizOnYLCnqYhthUzb1pkopAQkbQUTmk0TtyDozV+2dlA+v/
xWaCFr271Fp3IeRti4un2iM5qkXcWwQSFCi0IwoaMsQYguA4EAsWDtQAoZjLlUgiZ1EoEkMOyVFS
YbQhaOF8YSiTT2YJIygDEOdH9Jj9yWMxw6eQWSIJcBjkghTW/VxCljjyL1R9SvEGpQl/DSBYYhgg
wZ6AAdxRGD0vDF0KhNjAGUwdWIOAiPb9a2JiYv4mWMSJFIp5EqFoPbAy8E2AiYAw8DkSMfgGg8WG
9ljYA9CBW878nLmK2f3MLBH/n63g920bChNhQg62RFuxfV3bwYIxz49bZTUnjJYGgKGGthkEfYNh
JGLIs/9wvSDlCMgo+31tXghX9a6zkXSTk1SH7aGl91wgm8/hVrytWyUK3NsrVq7JdLEYYUecdais
3E3APrza34SDryXd+0awUJl7qymF6a3N1Wtp3KSS5Ab3hH3nNuTGMvZkqJpSvJZm0H2auoxPWu3N
FHLIy4OKPOhHhk/L85zWgTzhAFWFqEqCF03+uNEYz04UPVhavD0eTSx+DWuDa3zD7HtPsfcHXN+t
bT9fgF14+cycBVU2+71kbqPK6dGCScnP2jHRlMoDlQfcVUOTLx/50Jo/XTNmvd0d3YT5uzcpLtIW
hwgCrs6qVSfcXXNuvEXbeFvYZEJHapDVPpNxWbybzB3nbzTH9jaRayalVraMloVfTSCE339zj3Fo
37WcHaJFZIqaaXtXLc7q3tKtsmxnLFyrxq8excgbL0Z1GdFYdu3X1d1jFc+9T5R3n8YVvXKle7gU
p+96bNND2lmTGmjJ1EY4Xi9Jidd0xaE+a5SF46pbqagTTuVGl49vZPNkW5Yf/VJUOsKpwqPdjz6X
0NihHdZTGOZ43r4zdPn7DkGVusBWZ/fE+8Hm/Dc61fT75l2I7NdfVu6smrisqscnF+0y6yAmmGcR
63Q6OjgicmvNvLiXvcezF1g05Mk8LMfxxZlleJxdaY/ppSuqsklhaNORXp9K8bRnxfVpksnt2XUM
cW3sxDZLmzzX9PmHi17YfQcXYpXUygYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="uenb.cer.gz"
Content-Description: uenb.cer.gz
Content-Disposition: attachment; filename="uenb.cer.gz"; size=1444;
	creation-date="Thu, 22 Oct 2020 08:04:53 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:53 GMT"
Content-ID: <F08FD4EC811D574F984136082057EA5C@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICAodYl8EAHVlbmIuY2VyAK1Ue1SLcRjet33Nqq0hJbeMjTLktymXkNJqpRJKMhybbdWyttql
G0WLnYqkU66h26hQKJlaNSS30VGo0xFHLqnkJJeiG5suLsc/zvH99T3P+37P+/ze7zk/IEMXAhns
l4FCQkjkuFmSR++LV3XhaB0uuOtloSrR+bpw4IDWJ8td5N04CDIA1hl4gEPrM+UuEBcFIyE9ROZk
MPFnB+aPapZWmAA4FEOgj0atg9HGSJoTZQ4g64ABlrhGKvRhcXhigrdIKpbweYJtBBpXKhGzA/gs
AYdAD9rqQrEAM3TdKKz5SLeTVCQM5hIcOKEsAZvLITg6EOhUYD4eRwVgMWUBWGxNoS5kaOF8MF9L
/XgYIOYkxRxMHvGqD5nipVzBVnsJVyDgSqy28iJ/t6k9qQ5gsOgVrAiuSEAZA/A6YhQWoyVEWp8B
FDNgOngUvLdOxZvg7eU5aNsYjNFVYKzBL/o4YKgjyVhYN3kYogYhkEHTtSNHdqldH0oG4RFa3gAp
gyDEvkyFSVl+oNMtTBn2cwgpXrOvyyIK+zG2L3Px7tVjPnvMJgUvRn9em1pWF/0YKa59hl3mkheX
8OGIdJ20oMSwNyHtafrj1In9gTYTkveO9y2n5b1tRRU7aTauTSwyXSUx8l3uk2Bhnx74pHOAfdt5
el1spTvTgrHGTKNJeBg5M8bQU13qLlmpJrfellY6U+25p8KmEKMLFNlmbW/9813TauQ9jHaan4Rz
LCVfhVWumTZrwtzSqJbctN6QLH7rItfutF08bipi/7w9D9hWruGyo6TqDsjkqRuJbWc7ybHYE1px
6yUvG111L7N6DuqgoMExvY9u02Tb4ZbElDcW3eXBLCQKQkDZMkip3UgRmKpd3RQirP0Du8Y1Yg4U
mjermO1tS+jFzvEhbeK+cyBGjsbMRkN6eqMgCI4E4WDlMAZIuV2ARBJsO2+eRBc8qxCpMFSXLH++
cCuLb8UWBs0bprg/ssYaihqb5U+1YoskgDyiBcnNh7SEbHHwX6TARJ3TMbA2ETF/Jg6s0tUIMB04
AUe0vlYShip8IQ5YAKyHJyAhU8uhCWFhYX/zKuIGC8U8iVAUAabo9GbApmDc8Oco5MgbDDx05amw
M6CBFRn2GXbypUPKbBH/n7fAH5xmBJvC45LfpMnm5wB6bNOreNXEsSEESsg0YKQr4yHoGwyjkHrP
/8NVgpIhIQRb+X7XOYcI94Feo0BTb4xTzVgvvM8nwVfjGs/+ADZZ0dPQH/SoaHuLghbRTHxoG3+W
YDi7eQPppcem67l4DOGQXTG2BkfOVJ0aG3CaWo+3R+pXhVd6EK073RyKuTVKjGNUgfJwrdnFnC1q
I9MA31MLe8I7ovNey1usEXF+29eoFN5dZvI41srMa+sLNPE3bO6Eu7Pv3xIRb5JSYheO6k46mXT6
8JMtyceerS1mlqcu/3S0IRFXy/VtRbSWRKdppuUNiI4lRZ+pvrwpVzRJWPLkTKIQEXNPpDSPIfgV
Wj5V2l29M99TtiGuK7Uhl1MabsIs39M90GT2ZufFvhTVlBlXclyTs3Mvrp/N6atqTghNd8P5NNZU
0FiHLM2dO4ntgpN2FwzoN/0tcr5EGLKUvfxL/ed7YpfPVSe9ClEUSJxr2zxJZJSatM0iJXAUw5K9
MUpd4/n1RcmcdXMTmYqVx2d4mXSOb9rMaOLf2Jdb4cFryyrsNnbV8ztHUuS4gdwT12WVrKr6qmDq
Egm96ubtLmJWu+oo/UX9QMH6I2vFp/0WEUo3ju45UPHO5q2XN26z0dIOuTuj8XFEqWL9JX3GpNh1
20ptIxeY2bjtfnME9Op57e2+V53OqIsy4VtRzlMflT9U3887lL/DUsOxJFWXa3ovHbh8gsusaFJ5
5bds8Anaqzau/w5/jyn2tgYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="vnb.cer.gz"
Content-Description: vnb.cer.gz
Content-Disposition: attachment; filename="vnb.cer.gz"; size=1444;
	creation-date="Thu, 22 Oct 2020 08:04:54 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:54 GMT"
Content-ID: <A91F00F8451CDD4C95217B44B0C1627B@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICIEdYl8EAHZuYi5jZXIArVR7NJNhHPZ9+8ymIbZ0YbMuahG9Y6XoQsRKYYWKLrZZttNs7IKu
WOyki650k1YrXUiOLkLRxaWSOXRxSZ1KrlGoqFxqK3Q5/dM5fX99z/P7vc/veZ/zOy+QodOBDGEp
UDAEwwSLdrOqz17xt1vS25QOsWU9lPo9hcAJjbWQ0+XdehCkC2gKA6CHxgbI6RAHhcCQttYJUzDm
Zwfmj+pJtTAZBFKHASwa5YOg8bDLfOoUYKEBurjxDKnQlxnIE5O9RVKxhM8TrCO7cKQSMZvLZwoC
yW7BLDp1EjDXdKNwpKHu+VKRMIRDdgoMYwrYnECysxPZzQaQRurZADCTOh3MpNlQaX5qaAts1dT3
zw9EH6USgcmQVyxkrB8mYDlKOAIBR2LN4m343aX6ohqAwaHnMddzRAKqITDQEDo4jJoQqW1yqaOA
8Y+bGHhrVLzJ3ks9f7jGA0NNBcHp/qKPA7oa0gKHUg8eRKjvCMigceqBQ0Gqs0PJIAMtNa8LyyBI
K1HMYhQvXkgqH+H7afPMzbvflihDhD02+MZhl6UUSpqD9Kq8+2ZSXpjWnVTXtDWdptsJxMMNVwoW
pdSvAQYrOEXN/hO1Xy3L0nF8/TzK8t6ixW78o8oafffQLPjrBHJVmUfn8FIrqzZXwpcmk0+dLs74
R73hHYaVsXqXtBg5bvM7PeDi1qVfw5/ZmVchZ3bgKcwbJVbYTEZ8RxavjGFevKCZ7nm/GT5unXY2
Y6dX8DZbQurwJnZ+bdjnSNYovaaioAsoabJ72UH6dQgzI+DOveNaNendZtWeVtoZuY26MWM39tnx
7fybJz7aS6qLPAkvQd+Kwfnsx12hODfvIMKRizDrYRSkBSll0FV1IpnATJ0ccTyizj+KUIvZk0lq
yA1obXFwu+IaF9oi7k0D0XI0xhINaWvrQBCyAUSAhYMYwPI5XIkkxH7qVIlm66xDpcIwzVoF8YUs
Jt+aLQyeOkhxvi8ac2DP2MwgG2u2SAIshrQgOWlAS8gWh/xFCozWODVEjMDw6D/WDXhoSmTEDcwH
zmisWhGB8pZDgWA6oA0OgCFjysCA8PDwv1kVcUKEYp5EKFoPiBo9c8QYEAaPo+ChPwQs1pTNEFfg
AuYpHBVz5LMGlNki/j+HwP8xTR8xRghoz8Aav/7Rful9fVGR1xMfRz48oA/0NWUDCPqKIChY+8V/
eEZQMhjS4kxzJc/ciJPeVN62emeQkZoAf6wb5SWnlMuw4Xbep7C5FbWrClYumFsQm2z0ZKmFYzEx
mxLvPMc9S/Ggf0RPYT1J3G1W2Grew+QdPLB5pRNGZUOaumLu+9almxihtBvp/pefynpXWy6rroV6
c/scvc/quGfGk/p9EtpRDUTb7R4mpfKuj6Qtr/Kd7pi0Pq67tszWiEWr9Dq00LytaHLp5D0T45L8
Xt9Gf6h0xBBU+fmr7GO5m+hJ9CcevoykNxn3g9q60Dn02aKaPMNsj5iydcRdLpkl61T7SZPrLV/6
CJQ5F02DVp1Q2tPKG1+9sO9I3N2OC/dXJTh7Y4TZrksm5IJJcaOKAxo8EwJixpL1elJGqixv5LUr
fCNZwSnrVLishIupk3UQXPbo/Fy/4oJpVfvs4oyqo3O4fCnHsER759bmQ+eum63m7CdFXCqKaeAV
pXba8/Tc7zf6CHzfo7K8EnuiZjU4GzJsVK8dt61KUiQfsS39PD7lSFAXY+x57L63flNO959aW6B4
uXfGvofou3yf5C4zlaGvzuX2ew7LlcL2ChpomCcaH7rzlkNTenym8fILs06fv1aOxxziVhi85HaB
iuitazZSigNMuTm8B9VsWhx1SU+lyTF865sJmXVWTYcntvgTp+Nbzs8tjD2Q8WDsW0JEXFcbLqat
O7ZDarTL3TRC9A3FJMpusgYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="vnb-tobw.cer.gz"
Content-Description: vnb-tobw.cer.gz
Content-Disposition: attachment; filename="vnb-tobw.cer.gz"; size=1451;
	creation-date="Thu, 22 Oct 2020 08:04:54 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:54 GMT"
Content-ID: <2CAC1EACC5F62E4A9238BF4FD0A29D45@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICBEeYl8EAHZuYi10b2J3LmNlcgCtVGlUTGEYnjtzG01aZEZZaxTFlPqasmRJTdrItKI6lmaj
NEuztItp0hwhB0NIaUonraMoS1k6gzZFKluyFKFFtqiGZIbK4fjjHPfXfZ/3vc/7fM99zgdEaDkQ
weFSFBJCInFmqDh7T+fs3KtdFz/Xx8TfcHySRQYOaAxB7Cru14IgDWAj1QFaaEyg2BVioGAkpIbI
mA6m/ppQ/6ObqSTGA7rVeIBBo9bAaCxyhZOVOSCoCg1NY68wzloKPZiP9+WF8QXMYHYIfgUjTMCn
BTEpbDrehUV1tTIFs1XTKE2DsWmnMB4nlIF3oIdT2DQGHe/ogHchAgN9LSIAtlYLgK2NNSAGKEtr
YK2EfjwBIC7Pygjgx7RiID1sOJs6T8ChRtgLGGw2Q2BBDY7+XarytKpCXRNNokQxeGwrXaCjAsZp
qisBnlJrkNVkoPfzODq+KhZfvK+Px0/pWKCr6sCaGr/4RxkImuqj20ch1C8IiCAj5eoxX5VWokSQ
DkKJayBFEIRINZdll+AcgoUzer2MVz+gF2jW8p4PXuGwrp9Pb5ySOzXEJy15RWuruA4ORwzKJzSh
ox1s0fOrfRIfDvncijdLJfZ9TWlQLHx1dVOGx77QsGMYr+DlNss/47XU+M5nNt+ViQ7rNpgUajjb
vQ2+UN8RmyZkuVcouOonvD40ehRUGUhq8/RfPHkt56ZFUk+vNN9fT7jjsqjHqE3m1p0bEmdieqDV
v+XbNlmVhxv15s62O5UalCr44fGl93ILTUt48kOHauxtctB1FucmJJtpzYZrUqq9xcXmcYkzN+u3
pngvCjHMJt3P4mA7iwaWcnDLWOZRywht/qHu822rxPLe9+g0t3QkCkJAJ0VQudKR88BQad8MY1j5
J4S4VvX9Zwxelgf2dC1xKXVO5HbxvxaAODFa3QwNqamNgyA4GkSClaM1QIrtggSC0MWWlgJVCC24
YZxwVcq2MDlUCtOCxmFZjkKMH7mjjMSORtlCtKDxBIAwxgWJDUa4ODR+6F+ogIFKqS6sDybF/S19
gKzq42EX4AQc0RglLQxd8YPoYAGwGd2ChPTmjGyJiIj4m14eI5TDDxZweFFghopvNqwHcKOfo5Bj
bzBYrWobws5gBSBJ7aV24qUjzDQe85+dYP7cpg3rwbhBQUdXdfHZJkkDe+78dHVv/2NLAoG2qq0D
QcMwjEKqPfsPVwtKhIQQyQuHk/wbUBNjnmeESFwr693HD2nzkI2MTQcZBWQyWXD6XhYskciM5y9z
bJlFtMQ9qs5pTLTcuOCsfX+/ntzu4lNiKmkyRjEnb03WhByJg8fBA/yB4SOOzd00ya3cj6wYSmt+
Rw/XSL8ls1u7uIwc/9mNgZGFW/c6Gd0mCXv6PDzl3NCcvGeZIYlCpmS3//DLL6u+YCc9OnFfUdR/
0z4BkVHR5PP0TXFR57iGV4amSZWKNQPogNqEM53l9QllZ/Pvlnpqu5Ji23UEe8MIUmvRKm4/5uH0
jF2n6prP0Tz9NwwGBaI+OdZga8uSGw15g9rHyEZDudsAbl2KaVkPhagW7ovpq0iatrQRG+26HuR9
ZH0rsTj6TdF+rQgxsXS1ImDBzRZq313WoZjqOQny0u7BdPtnPttNjKUpBzUnk8oy97on8O8LM2wf
xMxOveywx27y4w8sf5PLUfsqj9Tlrn3NsGiYsnFu5IXCr2nC480KH94E3U3L09ry153K2h+L89uz
tV0oqmi7TG7Sv+5d8mkAMcw8cc8o1cz7FV+spXf0tuwwv5hoLp7yIgkbl3B0Y83xaC75/dVCPcdx
WGLzpaEYv8ihN+86EgkzeLHjbzSqHY6nXSCXuhX52XsRlm/Izu7PPz3vQDsd7NiLjOqdclIq1SfQ
djJXZhbTsJ0kBxNZuXtka+l355hVc8YGAAA=

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="vnb-ton6.cer.gz"
Content-Description: vnb-ton6.cer.gz
Content-Disposition: attachment; filename="vnb-ton6.cer.gz"; size=1453;
	creation-date="Thu, 22 Oct 2020 08:04:55 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:55 GMT"
Content-ID: <031CDB520BD23143929A438EE8BD29AF@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICF0eYl8EAHZuYi10b242LmNlcgCtVHtUi3EY7tu+TZexboakZswltN9mEkL3cguVIkWrTUuz
1bYuSidbqaYkyiqFVcglEVKnKEkMsahUdD2SlBS5RIyNyuH4xzm+v773ed/veZ/f8z3nB4ToG0AI
B0mQCAiB0F0QlXtTW7ygLHXZW6unFf0npEdeRwELtJpRtH30x7EQpA6oEiwYi1bzjLaHGEgYAaFU
MvWB3q8J1T+6WQpiPKCTNYAaGrkBRusgrG3Ic4GRslDHTFsfyHGh0X15eGduII/P8mX74a0ZgXye
N5NFY9Pxdju87MkzAVE5jcQYjE7bBHI5/gy8BT2IxvZm0PFWFng7CjCYMJYCwCKyCRkAEypwU5Tz
wXwF9ONxA4IzZALAj2pVg3A6QWyveXwO28Scz2CzGXxjL9/Q36UqTqssVDFoS9pOBpdN1gJYJTAG
o6oAuAqtTPJEgPt5HKyzksUZ7+y09qd0HaCl7MAY9V/8IwxGGNWR7SMQ8hcEhBBBsXrUV4WVSCGE
VVHg6gghBKlkNGkXmGmr4FbcStxbEN+e6jZWP7yhjyV1rGHi0HmdiYYr78TVhKVNr30Z0G4fwe3q
zOthpA8+/lwr3Hs2Tdhx70XuNfWdogaV5N6I2CgNkUOxxyx9zZpnLuaDaIZfTm9EcAChdbKppkX/
3Q+uZGZ2Uc50U/UW2THedOvZcT11c3ewNO69IuZP2HLcfqvU6RKB1OxjhXLR7y+H6SzuRNZCh6XN
ZH2PsjGRTX4bOE2Weqbud1tsx2sTZyQdq6NhhlC9ZFoFrii52e+oKFeQF0NJWesYWx4sb6ufbZt4
Wp9SrSa+Mj8l3iCfI1pLjw1ofJUh710X1C9BzZ6ymAyKl7eWIJCQCpQthEoUjhQCQ4V9U6bBij+x
W7dJNfGiQWeJ56vuJXYFtqKAbt6XXCCIRqvOQUMo1BgIgkNBCFg5UgNE9DImn++/mETiK0NoHBDI
CVKmzIfF8aKxjL05O0gjEONH7mjDsfOm+VCMvbl8YDTKBUUbDHNxvHn+f6ECBkqlWvAEMF7wt/QB
B2UfD9sBG2CFVlPQwlDpRogOTAB1ZAsCws0a3hIcHPw3vVyGP4fny+dwd4IpSj4ijAO6I58jEaNv
MFijbBvCtsAaWErMJcuizYaZvbmsf3aC9XPbOBgH68pXiGVV7QdRD4srY2MWuZuuSiI6gXHKNhaC
vsEwEoFq+w9XC1KIgFQ2S4x0Cssufh6SPd8/S3oZPHcpkSUT8s/t1v6g2T7NuLX3kXk94YjY39Gw
QfpCwrS97x7emnO5q9GHnY7e5jAxIbsKWZFWSUgnhchF8abxrSY4zZ55CzTzy2ZkPXztmnKdd5d6
e3ON9YVNKd1G1jRnh3rZzGmlU7MpMe6tzt+aBiJ9nlR3FUy94BF3MzN0wELjBjMizSmjS+xrOjc8
o5tSmXZCllZglkIogt6ZM8VX+5KcD/POL7z3rZNS0Fj51VbQXJe3aYmfasfLK/XNG4k252fsq2nU
xaMzauPkyeUZuit0rov0iyfdck2oGvqYKeCr7wk5FYot1XSSD6a8xB2A0+PM9LJk/Z88z2R+Djz6
HnTfIB4POlibfO62tdaibrmkroKJE5lKPatXfm2TRe4O2eUuaH5//g4ZyBGbqiNjSFJ66vzQKtoq
ROG+VYE5z9LMqaSDx6QdVA3LEmxPgOCk1vKBgaWOIY/Nx11MGo/t6kpYT3Xat/3w7bhuPbUHRfWp
rdpbUdOX4up1ssQ1r98YDLXJ6bQt/mFuLdWYpKlJ5WyySfmXzncWLTYXVqeEre9LrveQZOQ9WTdx
3Oyh07NIU1yRUYMLxjSXdBLDysbPe1HY/v7yQKp4dRtjW6re6gZEC31QjXpcGlCdcOimDjau45CJ
g/j61NI+u/BF8RVEQ7st/oc+fAdFWPiaxgYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="biko.cer.gz"
Content-Description: biko.cer.gz
Content-Disposition: attachment; filename="biko.cer.gz"; size=1444;
	creation-date="Thu, 22 Oct 2020 08:04:55 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:55 GMT"
Content-ID: <F796861434A8A94CAF7979DC82FFAF6A@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICAIZYl8EAGJpa28uY2VyAK1UezSTcRj2bZ+Z2VrCKmlGWabw21xTR+ZSq0RCdzHbasKWXdC9
LRZJUZxyq2EpkqSW0jm6HLfQPUnpdkqG7kqS0pZLl9M/ndP31/c87/s97/N7v+f8gBRVBqTwajkS
ASEQhmEDXSmcCR/cmqKiVM0dJWHvXinTAR2layVjyD7hIAgD7OV4gEPphsgYEAcJIyBtrVwTYPyz
A/1HNU8tTAJsqh7QRSEDYZQBwtOLOg1YaQAGO8lPzF/MZIcJSQECsVAUEcYLJ3lyxCIhixvB5LFJ
cyJDGdQpwELTjcQSR7q9xAL+Og6Jzo5m8lgcNsmDTppDA8SxOBoA06mOYLqdI9V5uRraATs19eNZ
DiQHqURgMuJVFyLgQ8PC+W4iDo/HEdmEhm343ab6pBqAxqLcmes5Ah5VH+A1hA4WrSYEap9c6jhA
GDwKPkCjEkAK8PcdtG0A9DUVGIv5RR8H9DSkFRbWTB6GyEEIpJC5euTILtXrQ0ohvJaaxyCkEKQl
X/lxqeMSWtp8n/GvwxuOIbu9IZtngUZYHYMgxbmvEbJ2h6breYsm6ri62yvfP7k5GvE8tCjQq+Sx
gaTkaXgrerFz7crETvqRzMwSbZsbDBfmwCYVZb6l3+Wch8aft011pMcK3rQhHTqx1mUhVygPWqzT
siYQKcGeE4ptaRkuo3ZnZkmWfzTzt8+fMY50uiE5tvUkxS6wQ3esNXssJUmnou1cc375XMqCZVSm
z2aHJY6BhPh3D6LSjLwZuODogu6n1ydyS749J1f4pbMOm93OTbJq7btinC1pCXY+Uqg4w07oTS0Q
d3f5n+/CLcNgylJ2FmBmOc1lHp2Q8srqbuP+VYpDTQgkpAXlS6Fy9UZOAVP16iZOgtV/YJthKzql
jPjifMjLzhlzlLMTozqF/cVAIkOhp6IgbW0dCII3gFgwbxgDhMyVKxKtc7G1FWmCZxMl5kdrkrUm
gh/KjLBh8SNthynOj6wxh6LGYq6h2bAEImA1ogXJiENafJZw3V+kgLHGqT6sToTkz8QBH02NBM8B
XsADpauWhKHKpRAbOAL74QkIiGA5NCEmJuZvXgWcdXxhmIgvWA8mavQsYAIwHP4ciRh5g8ECTdkU
ng08gbvcTe4qmzmkzBJE/PMWIganjYIJsKE/m1uVK91MItfO9njhW37cruVZOBilKeMhaACGkQjt
J//hKkFKEZBWiO9pH6wzgwc9bPgCJA/02nnFkINyS+VXNP5urwR7JzZhCk/VAMV7j/HoqyRkmnY1
Mtujsw+FtLUe/hKVkZZK7BNwr+bt2QQhx5Mu+uQf1lEGvWdglVkDMXr8maf5e9cWPKY1xu3w0q3v
qzVp9umZf+ONEPWu8axZ9lthpvFcM9sdJzyDAlBv082lNQ36x5ylqoOYPWVVBhsUpd+Ki+nezdlt
LvnmWx2KslWSHPfV8g4zBjUkWlR3JbEY47pqLS45Ooe8ckzQTZe35o7VlOxtB+sFVRblqkRr01kS
oeWjfveq2wKlAqLVL60sorzvnqocd88TDvnCqBrTbV04bYG5UXUGutDCfc3Mr3kmNXmphT1yWXtd
tdseh2B6dXSQOEXcUhNzKY09jTCZTb4Qlx9syvAaMPKJ911t2j9AycrxTvv0MA7/pm50ZMYBrw7u
ZvMC5NnctXJTiSIhefHnqB7yoQrt5X41iw2MdnG0FIYrOseao1/7jZtvf4qm6BydXpJcasnIvJU4
fXIAv2DaHRWOa12H3LJxddutY27+DL3OQG+HHfe1fXvIMwotI1853WQhIhm9d69Frj3pRL/XdHyW
ydJ9xP4tticAOTW7VKfUo3f7Eqdv/qyprap4V3KSVlxtgkX9kmLBrWf6kWcr/NoDYoFTUrnSjr7R
aeH6FaqiRc3nvgO36BCDtgYAAA==

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="bkv.cer.gz"
Content-Description: bkv.cer.gz
Content-Disposition: attachment; filename="bkv.cer.gz"; size=1442;
	creation-date="Thu, 22 Oct 2020 08:04:55 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:55 GMT"
Content-ID: <06EB7EA7002FDF4B883FD7F406B8E48C@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICOEZYl8EAGJrdi5jZXIArVR7NJNhHPZtn4W2lmiVpBVFhHeohOQyswjl1mhHdmtottlNdGqs
WimVSlKK6UY1cqJSuusIByXpRhZdqFQu5yhS2gpdTv90Tt9f3/P8fu/ze97n/M4LZKhCIIPpCiQC
QiAMZ6bUbXkVelmZs+yttI+kOo7x+0IE7ihdSzlZ/hEDQXrAQYEFGJRupJwMsZAwAtLWyjUGRj87
dP6oHlEL4wGTMBboopAhMMoAQfQizAWWGqCHNl0u5oXSmNFCfLBALBRxorlr8ESWWCRkRHFoXCbe
O5ZOJpiDWZpuJNpktNtLLODxWXh3poTGZbCYeE93vLcdMJmEsQNgIWE+WGi/gOAQrob2wF5Nff/C
QXIWYRqYOupVF8KNo6+RuIlYXC5LZEOPTvzdpfqiGqCDRnnQElgCLkEfYDXEGLSOmhCobUYRJgPc
j5tggzUqwfjgoIAfrg2AvqYCo/V+0UcDPQ1piUaqB48g5HcEZNBM9cDRINXZIWUQVkvN6yFkEKRV
ULrGmvn0QWRIt0DVutJIkUUu+7ThqPuctcJDxSYfjf3OzP6kpVuifbi58FqiILirJe1uryS7IsKu
QxXgVsZxLnXMbXENYyxiX9JZnI8sjhfp1h8TFONvlzzOIuH2Rj+dVRB5UCG5Kbox87Vx1zWsIyqP
s6pRJX0gVUjNkmOzMVufI9hxZvQiw1oL6MDtdUWNSsb7L73VLU3Ut9WhPtadVzPHx7SJ+nY3VoU4
U9ithUahNbnGdoX+BrUvzKVPUsOsBm4s2Wp+Slx2UUGJCXlESDF46GYqvnPSia9P3Zibtz3d89bO
85ld433GN6UbFR3OsChX7qESCTsUzi3h4owW4WMEEtKCjsqg8+pEzoLp6uSmmcLq/JMMm3XSzpq8
KovsfOPsfY6UEvdGOKgEyXKUjhUK0tYeA0FwIlgLfEYwQMhdo0QivpOtrUizdTZxYp5Es1ZsDo9O
49gweLG2IxTr+6LRhveMQWPb2TAEImA5qgXJTYa1eAwh/y9SYIrGqT48AYxP/mPdgL+mhIe9gRfw
ROmqFWHoKgVigvnAYWQAAsJZDA+Ij4//m1UBi88TRot4ggQwTaM3C8YBw5HjSMToHwz8NOXpMAkQ
gYfCTeEqdxlWZgg4/xwC58e0cTAONjTbeG0wpGFxDN+mgHQ55FTq3A91UjBOU8ZC0BAMIxHaz/7D
M4KUISAtK/8CzJ7MZ+O8NnuMrWUNKtrEKx4ya+obmlXrzmWmvSpPKm2+3E2e3OX59QqhVXk2Sbk8
FvuI7DzxXuih9Xly36XWE5aciTBKRaCcUORVZqqtOzKzjknyc4ywlf4bTld6pdcFMnd1YSbD4S62
tM1pSZOKlXXlFz895B9tV25yXb/XLKDat2EGcbBxwleLwC1NyT0xiGeO5reabgddT7MxON7QPsd8
3ko/1/f7zkfea63ZN6NzJ28p7jp1ShX1esQmoQSVUp0izu6fakbuKev7gKp1JjdZVZAGrlQNxFGN
38mXqgiS/u3J22qT9rdpk6e87z2RwOk1Tk238zy4X+9jPb0qIL+kwZ1mLaU4a0m1mxdGYa02Y4MI
QQ35EhUq6mtyb+2VdxWIsBJf2wmTSD1mCWMCJxH1M1NDn3sY4xzaKfW2h2DKtICZHdt39+xxN6Gt
Xk7/PNtH6e/enNM5eSLc8eBlQreYiavKJgtPlt/EemdgjUoGxmLIx+Rtrnf654eF5ZPhFXSXliV0
dCc1b15WREdAl1uR9waiab/RQF8d2vIpeoBQuvqt/0HeZyqDfZ/tmxe6go3vb+6PL6xIO00ZKmpN
tCROCaMQn0S4cN1jPzMvDLXnCPIxNYFrDzi2VpolVZysmTFxkDvQ7VC5ESrXd5ENFZ8gkRz4jAwn
+5wnB8Ye8fsGtuTiV7IGAAA=

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_
Content-Type: application/x-gzip; name="vnb-dol3.cer.gz"
Content-Description: vnb-dol3.cer.gz
Content-Disposition: attachment; filename="vnb-dol3.cer.gz"; size=1448;
	creation-date="Thu, 22 Oct 2020 08:04:56 GMT";
	modification-date="Thu, 22 Oct 2020 08:04:56 GMT"
Content-ID: <9813084A2497D6449292E6D2D6941C6D@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

H4sICFbRZF8EAHZuYi1kb2wzLmNlcgCtVHtUi3EY7tu+Zl0n3dyaVXIpbb+tLJLL2mY7hqQLKtXa
ZpW1zS6lkmqY6uR+lE4oilCcOCVKEcLkUkqFdNBpVCPkUsll08Xh+Mc5vr++93nf73mf3/M95wcU
qKtAAUfnIhEQAmEh3VUSVfBAZpEwM50lIDxbemdwxlRAQRk4KpnKzyYQZAhcczHABGUQqmRCPCSM
gPT1jkwGE39NoP/oHtUS4wCXaAQMUEg/GGWOoNGJs4CjrjA0tveWi/zZ3Agpzlcil8oEEcL1OBpP
LpNywgVsIRfHiApjEqcDB9000hg7Ok2XS0RiHo7CjWYLOTwujkrBMUgAa21CAmAu0Y1IdCW7kgK0
pQsgE8HQEwCSTxHtAG5UqwFkZR4tDHPmigQui2Q8oZAnw4dFxP0uVXtaXYE2RnmyY3kSIdEMYHTA
GGO0FpBotYYTxwOroeNgfHUsvjhfH68h6ebATNeBjQ1/8Y8wOBqjR7aPQMhfEFBAdtrVo75qrUQq
IIyeFjdEKCBI77zqOSWBMOiTarTg/U33ezQmVfjF0drSnLz3q1HCDs+SK5lNt9SINL7ziQAp4Vwk
KX98U+8Kuqzw4yReTY/nK9G0CoEmpE7JSmIqVJ18Xygy18GnnfwmbQaCnem2UpND66poLl/r52UX
77MBO9BGvs8QTctf59Z31hh0hpGRXabOWUsDSuEiJhc/WbjpkXe/pVEMEc/SlPWLi9G32goVKzzl
CrHPQv5Nvuq2gpadKGfoNTaH1jAPLf70YX4wGEzaanF9i3l8nu9betm3QidVSPr8JEXN2FUF3ett
KyU35n3NzqJGWnSUnFrXrX9m+845slhpeZH05YSgdiyrEtWBQEJ6UJ4CqtA6UgamaO2zsYe1fyLJ
ohW9+xxWXRGq6ZrHKF2cuqFLOlgEkpUotBMK0tcfA0FwHNgIlozUAKFcEC6Tid0JBJkuhPgNclG0
LmV8gSiMLcBzRFGEEYj3M3fs4dhx2HwSniORAcdRLkiJHeYScaTiv1ABrE6pGWwNLJP/lj6wXNfH
wQxAB1SUgZYWhqpWQ1xABq4jWxCQ1YzhLTExMX/TK+GJRdIImUgSC2x0fA6wFbAY+RyJGH2DwTJd
ewq8GNCAZ+6i3AVKj2FmjkTwz04IhraZwlawBdpFle08T230VFhaMqvFPfEe5/A6YKprYyDoOwwj
EfrP/sPVglQgIL0tgm191R6v9uc8PjcwrbsNk2KUYT/f+/aRjoFtM2mfzlM0J33fI6/uyrubW9Bs
/SajvMg23aY27iJhzz5+dYrdx9W1LqdIyZtfXoxfOBZvhx/otJdZ0tc+JeRcRK+Z7XANVLqcFRdM
n3AleAlfqd/oWnaDbeJ0/3tf6fdvM48lMTz9dl1qcvVaK9cUcydfCLFJLXSP2RQgrPUwjWuKjy6v
CYzZ7G1T2hMbHFR+o2rCfsv77Zpci22v5TPTp+Cq5R2m/MxrFGu4cb/byQXUJEy+OWu8WQcIUufA
MxCvrq4Uj3FYkchqrZKh7UyDTMmSs7YBE14nxBpq0C31xbU706jqcaXofpljZ5vAxHu3muLkVGfT
0Cia69Exr7I1IZEY42EbHE3PC8zPXJXhZlpy16lOfvCAuw/Ob3V4I2hIU8/vurQjm1jXWehSux45
HVdl24+dev1b5TRO/9venoim8T3d1RkPsZjpy+y5p42qLreM4Vx/2r2z2sVmbPwZh8P7FrUoVzUc
T8OMawiqYL5LcQ486sUoD73k/0H9/NgDL6UnXVWOlOVTWFlRETS9ca6sRVlWEAgxe9BbGSIkpcqp
R6qtDzwukugvezLFcVzYiZPcvk3oPaQPqqMpleoX9egSqv8j23iP+tbeKlxFD0LlrKi30ltmxZrk
VGx0ZseJQBTdv7k9KvIHGSDYIcYGAAA=

--_017_AM9P191MB1221275B411D2394E5373C1CF7F30AM9P191MB1221EURP_--

