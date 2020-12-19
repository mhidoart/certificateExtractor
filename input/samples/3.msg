Received: from crypto4 (crypto.esforin.com [127.0.0.1])
	by crypto.esforin.com (CipherMail) with ESMTP id D1BEF1876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:18:45 +0100 (CET)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-am5eur03lp2055.outbound.protection.outlook.com [104.47.8.55])
	by crypto.esforin.com (CipherMail) with ESMTPS id 637521876F9E
	for <zerti_manager@ops.xpergy.com>; Wed,  2 Dec 2020 13:18:45 +0100 (CET)
Received: from MR2P264CA0042.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500::30) by
 AM9P191MB1636.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:269::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17; Wed, 2 Dec 2020 12:18:44 +0000
Received: from VE1EUR01FT063.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:500:0:cafe::d3) by MR2P264CA0042.outlook.office365.com
 (2603:10a6:500::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend
 Transport; Wed, 2 Dec 2020 12:18:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=esforin.com; ops.xpergy.com; dkim=none (message not signed)
 header.d=none;ops.xpergy.com; dmarc=bestguesspass action=none
 header.from=esforin.com;
Received-SPF: Pass (protection.outlook.com: domain of esforin.com designates
 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT063.mail.protection.outlook.com (10.152.2.179) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Wed, 2 Dec 2020 12:18:43 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.57) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 02 Dec 2020 12:18:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkPWGZUdkXO7RZw43CSvnh3kMzl2m3AfDxf3EgfLNJghqblW2w9r0Q/OiVzohCXl4BR74v/P37HjuS/XDtAhcKKpUO4kFy+4Tq+DZYQHAJABcNnUJeFXOuMJb05GyCC1BkkYJtXFwKbtPGFNTSJHL5DI8aa9nKB/CZbXKjDBCipoVBfzPkIbtnHvag5AQuO2UPzE+O6d2wBPWv1uIfv/rb+mriQv4ET+PhJASr177lz+QG93fL13MT+VQhc4hpHoxvPVnNAbxH1of3yC6u5cXDqZ08u/ROIN8X5CThgw8OZDq0khfp4XNjhZCOafvKWFqb9OZgCQdUfaFl4B/92zCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/q74RhAFN2EvsuuWMzZt5n2jUHXOPAVQqA8f0bIDO8w=;
 b=J1bLyl/G8c0u+52q8oO3u3o7tiHil2mHV8TPJkk2FCoZQztsabCbMFUq/NjXvmfJbVLmuKk+BUovT+mJC7oI64gMRSlRd6mYQ2oNZtMqCyD2yDW27W3gNE9avQ4hJjmhC91z0asmE9qxCKZpgKeCsxpwZgP3l4SkgAN1j3ocKSRbMU4/iI+YQQMNicBHr8LBmu609H08Eo+3z+RY34/olj2An+xWy2UIdgHvFHcUZ8TrqMqVEuz64INGvtGaCvObG1+tCo3mEX8XuMsBFPldIk3SjYBycQaC3yW6MQCLvD5j7JhSHOoAQEwpRh8lb7qCgvGb8G54xnxCuiiJMYQLsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=esforin.com; dmarc=pass action=none header.from=esforin.com;
 dkim=pass header.d=esforin.com; arc=none
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1ff::13)
 by AM8P191MB1380.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1ee::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20; Wed, 2 Dec
 2020 12:18:41 +0000
Received: from AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6]) by AM9P191MB1221.EURP191.PROD.OUTLOOK.COM
 ([fe80::70fe:46d:2b28:bfd6%5]) with mapi id 15.20.3611.031; Wed, 2 Dec 2020
 12:18:41 +0000
From: mabis-clearing ES FOR IN SE <mabis-clearing@esforin.com>
To: "zerti_manager@ops.xpergy.com" <zerti_manager@ops.xpergy.com>
Subject: wg
Thread-Topic: wg
Thread-Index: AdbIpUTcMb7xQ7G7TCSFXl6t/Kbwvg==
Date: Wed, 2 Dec 2020 12:18:41 +0000
Message-ID: <AM9P191MB12211E77B58BC279AF2381A3F7F30@AM9P191MB1221.EURP191.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Authentication-Results-Original: ops.xpergy.com; dkim=none (message not
 signed) header.d=none;ops.xpergy.com; dmarc=none action=none
 header.from=esforin.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [46.30.80.220]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 3749c78d-b6a8-48fc-0813-08d896bc693f
x-ms-traffictypediagnostic: AM8P191MB1380:|AM9P191MB1636:
X-Microsoft-Antispam-PRVS:
	<AM9P191MB1636A43B0E27FE4B4C0DA3629FF30@AM9P191MB1636.EURP191.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1051;OLM:1824;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 DxspDaxhOjqbUmT1lYLTodxFdMItca6L1OrcSEZWt9+3h4uYS73Mh/PxA58Z9hDpMJwNoEPrAI7KXN7Y3Xhxl5NOjLfJJcB6Dp0QXMVJENONxYpX8l+YBHSDtbEPPWchRbVe4FoChRJIvBHgulthHrbP0ktyBTqwsbqgGQy2ziVLjnd7LkwVd15YNnQhI8G2u7TKtLRATzQ6G+XEYwTVFGClEQ//F2koP+srIZQGPZKh8xWeE00gH9CdvU6EU0jUpqhh8Z4stchSCqyhPr8Zgjy6230RfrOaRWEYhpUfWCPEe4SQzsktum0GvYaeH5lVmupaFu4hIox1ED741w9HAWrjoO2dZy4yAj2AGzOYS+i+NFFktHe6ctk4glmrH61HTpXhmm1LQnBrMQyMp4mzZm6Ltz3EjA828VkhoDxgIm1TdPR39vVPXX3e5YJzZqCPl+nl5JGRqvEZz564fMWdOw==
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P191MB1221.EURP191.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39830400003)(366004)(136003)(346002)(376002)(396003)(186003)(55016002)(86362001)(71200400001)(33656002)(478600001)(316002)(66574015)(76116006)(83380400001)(66946007)(66476007)(66556008)(6916009)(7116003)(5660300002)(966005)(2906002)(9686003)(7696005)(64756008)(52536014)(15974865002)(6506007)(8936002)(3480700007)(8676002)(26005)(66446008)(220243001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?Ymt2ZitFaUZNOUlSUUUwSjJNdHIzdWoydHRuYWpVZVFqWUF4ekFKQndrMStT?=
 =?utf-8?B?ZndMNVBjNjl3SXZWUDBaZDZXWDNIc1BBQ21lWmViVnhjTmNGOWt4V3Urekwv?=
 =?utf-8?B?OVZYL01tdzJuNmlUNDZpdEpUcG9QRDg2bmNPVzZNcHBEL2pFSUVaWDlSSDQv?=
 =?utf-8?B?M0xkMUZtZDhXRjQ0NmdTUHNFalkyMlJWNTB1dWRGU1dYU0l4ZEdtRFJCeUtv?=
 =?utf-8?B?SW5VcCszc2ZwQ3NhR0ZpaFk1dUlKd1JCcVpzdTM1c2pLWEE5a3JVcmJjYXRo?=
 =?utf-8?B?SUppQ0F6Z0dRT1dIbW1PalcxazZRVndPZ2xrZndHZjRDZjZBUldFdVlhUC9v?=
 =?utf-8?B?RFBLeUorUHNoK2FzSWdNemdFSHl5WDgyTS91eDIvSXU1KzBEN2IvWWtXM2ZM?=
 =?utf-8?B?WmZRQkRhTVlPQ3dhSDRqQW40QnpuVHdKSlZGaHBFZ0w1YVRRei9aeEFkUzdq?=
 =?utf-8?B?ZlIycFdRM3I2WHhIUnQrUlhMK3hwaWNGZWpPUm4yN20yeFJZM05scFAzM1da?=
 =?utf-8?B?eXZuRFVZRURmcU1OdWk5VU1uTVRMeWl5ekt3bGlXb1Y3Yi9XSitlN1NSMzdq?=
 =?utf-8?B?M1JTYld4eXRMbFdFVnVTdTJlMjZIY2l6RGxWQ2phYTZORDB4ZXZMTmF3SVRv?=
 =?utf-8?B?WmNKbkhZM0ZHdVMwTGo5a2ttaitGQmNXS2Q2MXh1WE12aHExTGowMW1sNG94?=
 =?utf-8?B?bWpvZnRKMzdON2tyN0NlTEsrMDhBcEZORHhDd1V3VHlnU2RIU2RSVEl6b29z?=
 =?utf-8?B?b2hGbmdUVUpCT0wzTVF5QUE5RlRRTytTSHlXZ3psZm1pR2E1MHZ4VWVkcUh0?=
 =?utf-8?B?bU5MSnNZdWhJMS83M0oySGNmMGlYVy9GNjh3NUg0QnFOOTRhMWF6V3Y3b1RX?=
 =?utf-8?B?YTRoT2h6cTJhQ3F4TDNCVUR5S1RNdlZaZUVYUDlGVnFGcU8vUzUyYnRhNHF1?=
 =?utf-8?B?ZHpiUG5tR3QvS0xsTFplU0ZCcnFhcDlkRHZ0VEovSkFCTFFxK2lHaHpyYU4v?=
 =?utf-8?B?Q3dOYXh2UU96c2xndXF3a29rZ2syWHBwSW1oVG9USVBDRVduTk8wRmtUWGFK?=
 =?utf-8?B?ZWhOZUMwczUzanVlczVnNHRHVFRwbldTNVBSY3RwSE5NeFhYa0hneXNGQzlx?=
 =?utf-8?B?WGJBNktxQzZrUlYvbEhWMEJFQkRtS0NobVFGWEdvZG9yazJSeU9RckVjV1Zp?=
 =?utf-8?B?ZEJ4WTNkcDJmMC9NbkZ5NkhNM0dybzgvbGs0ZkEvRXQwSUphSytDOENZbW0r?=
 =?utf-8?B?VllmU1g5TGZDYm55U3JqQUh2Wk96a3BMRjBFZFU2Q1p4U09uRWJ4ZGtSTzVu?=
 =?utf-8?Q?9iBGuydhhWFk0=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P191MB1380
X-CodeTwo-MessageID: 50ada02a-37a5-4563-9dbc-411920bfb816.20201202121842@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.25b5ab47-3097-413f-849d-97db8828efd9.be68b4c1-74f5-439b-a330-bd40ef24dca6@emailsignatures365.codetwo.com>
 <a6a182b3-75fc-4448-90c7-8cdb98d7c2f8.5477e1e9-c65b-462f-b4bf-fb410475fbbf.584b969c-8944-4066-920a-a1d9b8b04fb3@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 VE1EUR01FT063.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	44882c92-8965-42d7-9e78-08d896bc67f5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	1OEGMxpgYPSiO0sejqXrOYVlDFbYn9354BZB8ELkGEvfIhM222BSdxLGCU9BS5/tMUPnzRYmK0QP5bnDXm4oEkdkdUx2V2RrQvsM/HpJ7Mg0kseXr1vFREF0PWtaFYeiVuKNc8t01XLA25mpXi/hzKTBUvRZkiKtv8klzmIiunsKK4xQUI05i81HHTFYl/TYK08wmroImE/CTlraOOeDvLGKZkJZcDiOaQVMCsSrJBHHVsQAMxYUF2Y0ClEb1M64/UPsz/x1xgz2KEhbvJ23icxYSTzfr4V13DsOo1+GRYbr0VeFK5zx57vL6558YPxYXHa7o6dOKe4Nqzf6n612WxYTplM70aODmKQEmld4Xqcw//SAFOzLH4rgkipu16CAhoL5aSipkCTSSLZgttoQwIG474Wq+HNNCojVygVmDdfGs39ECh+DPcRGesKhkJaJkS1z/AAgaF8PZyGmZ86ezYq0Xy4VxDg5zHsSruCjgsbcDgGKHFkbBMSbdeJCFLko
X-Forefront-Antispam-Report:
	CIP:13.81.10.179;CTRY:NL;LANG:de;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(4636009)(396003)(39830400003)(346002)(136003)(376002)(46966005)(356005)(33656002)(7596003)(3480700007)(5660300002)(966005)(8936002)(52536014)(70206006)(7116003)(70586007)(66574015)(83380400001)(2906002)(82310400003)(478600001)(7636003)(336012)(9686003)(316002)(55016002)(86362001)(6506007)(47076004)(8676002)(26005)(7696005)(186003)(6916009)(15974865002)(220243001);DIR:OUT;SFP:1102;
X-OriginatorOrg: esforin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2020 12:18:43.6241
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3749c78d-b6a8-48fc-0813-08d896bc693f
X-MS-Exchange-CrossTenant-Id: fb4ee507-9176-4f20-8267-f430d25c9b49
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=fb4ee507-9176-4f20-8267-f430d25c9b49;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource:
	VE1EUR01FT063.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P191MB1636

DQoNCg0KQW10c2dlcmljaHQgRXNzZW4gSFJCIDI1NzI0ICAgICAKVm9yc3RhbmQ6IENocmlzdGlh
biBIw7Z2ZWxoYXVzIChDRU8pLCBDaHJpc3RvcGggR2FyZGxvIChDT08pICAgICBBdWZzaWNodHNy
YXRzdm9yc2l0emVuZGVyOiBEci4gS2xhdXMgS2FzcGVyIAoNCkJpdHRlIGJlYWNodGVuIFNpZSB1
bnNlcmUgRGF0ZW5zY2h1dHppbmZvcm1hdGlvbi4gLyBQbGVhc2Ugbm90ZSBvdXIgcHJpdmFjeSBz
dGF0ZW1lbnQuwqB3d3cuZXNmb3Jpbi5jb20vZGF0ZW5zY2h1dHoKLS0tLS1VcnNwcsO8bmdsaWNo
ZSBOYWNocmljaHQtLS0tLQ0KVm9uOiBpZGUtdGVhbUBzaC1uZXR6LmNvbSA8aWRlLXRlYW1Ac2gt
bmV0ei5jb20+IA0KR2VzZW5kZXQ6IE1vbnRhZywgMzAuIE5vdmVtYmVyIDIwMjAgMTU6MTINCkFu
OiBtYWJpcy1jbGVhcmluZyBFUyBGT1IgSU4gU0UgPG1hYmlzLWNsZWFyaW5nQGVzZm9yaW4uY29t
Pg0KQmV0cmVmZjogKlNQQU0qIFBVVCBOZXVlcyBFLU1haWwgWmVydGlmaWthdCBmw7xyIGRpZSBT
Y2hsZXN3aWctSG9sc3RlaW4gTmV0eiBBRyAoOTkwMDUzNTAwMDAwNykgLyBNUDogc29ubmVuIGVT
ZXJ2aWNlcyBHbWJIICg5OTc4NzYzMDAwMDA4KQ0KDQpTZWhyIGdlZWhydGUgRGFtZW4gdW5kIEhl
cnJlbiwNCg0KaW4gS8O8cnplIHZlcmxpZXJ0IHVuc2VyIGRlcnplaXRpZ2VzIFplcnRpZmlrYXQg
dm9yemVpdGlnIHVuZCBhdcOfZXJwbGFubcOkw59pZyBzZWluZSBHw7xsdGlna2VpdCwgZGEgZGVy
IEJldHJpZWIgZGVyIHp1Z3J1bmRlbGllZ2VuZGVuIENBIHp1bSAxNi4xMi4yMDIwIGVpbmdlc3Rl
bGx0IHdpcmQuDQpIaWVybWl0IGVyaGFsdGVuIFNpZSBkYXMgbmV1ZSBaZXJ0aWZpa2F0IGbDvHIg
ZGllIDE6MSBFRElGQUNULUFkcmVzc2UgZGVyIFNjaGxlc3dpZy1Ib2xzdGVpbiBOZXR6IEFHICg5
OTAwNTM1MDAwMDA3KSwgd2VsY2hlcyBTaWUgYWIgc29mb3J0IG51dHplbiBrw7ZubmVuLg0KDQpB
Q0hUVU5HOiBEZXIgQXVzdGF1c2NoIGlzdCB6d2luZ2VuZCBub3R3ZW5kaWcsIGRhIGRhcyBha3R1
ZWxsIHZlcndlbmRldGUgWmVydGlmaWthdCBkZW1uw6RjaHN0IGdlc3BlcnJ0IHdpcmQgKHJldm9r
ZWQpLg0KDQpFaW5lIMOcYmVyc2ljaHQgZGVyIFplcnRpZmlrYXRlIGbDvHIgU0hORy1WTkItQklT
LVBST0RAU0gtTmV0ei5jb20gZmluZGV0IHNpY2ggdW50ZXIgZm9sZ2VuZGVtIExpbms6DQpodHRw
Oi8vY2VydGlmaWNhdGVsb29rdXAucXVvdmFkaXNnbG9iYWwuY29tL2RlZmF1bHQuYXNweD9lbWFp
bD1TSE5HLVZOQi1CSVMtUFJPREBTSC1OZXR6LmNvbQ0KDQpCaXR0ZSBiZW51dHplbiBTaWUgZm9s
Z2VuZGVuIGRpcmVrdGVuIERvd25sb2FkbGluayBmw7xyIGRhcyBuZXVlIFplcnRpZmlrYXQ6DQpo
dHRwOi8vY2VydGlmaWNhdGVsb29rdXAucXVvdmFkaXNnbG9iYWwuY29tL2dldEZpbGUuYXNweD9p
ZD0yODQwMzc3JnNlcmlhbD01NTNkMGM1ZTUzYzRlOWRlOGIwNjg1MTIxOGIwZTBmZjI2YWNlYWQ5
JmNuPVNITkctVk5CLUJJUy1QUk9EJnR5cGU9Y2VydA0KDQpVbnRlciBmb2xnZW5kZW4gTGlua3Mg
c3RlaGVuIGRpZSB6dWdlaMO2cmlnZW4gUm9vdC1DQSB1bmQgU3ViLUNBIHp1ciBWZXJmw7xndW5n
Og0KUm9vdCBDQTogaHR0cDovL3RydXN0LnF1b3ZhZGlzZ2xvYmFsLmNvbS9xdnJjYTFnMy5jcnQN
ClN1YiBDQTogaHR0cDovL3RydXN0LnF1b3ZhZGlzZ2xvYmFsLmNvbS9xdW92YWRpc2V1cm9wZWFk
dmFuY2VkY2FnMi5jcnQNCg0KV2lyIHdlcmRlbiBkYXMgbmV1ZSBaZXJ0aWZpa2F0IGFiIGRlbSAx
NC4xMi4yMDIwIHVtIDEyOjAwIFVociBmw7xyIGF1c2dlaGVuZGVuIE5hY2hyaWNodGVuIGVpbnNl
dHplbi4NCg0KQml0dGUgc2V0emVuIFNpZSAoc29ubmVuIGVTZXJ2aWNlcyBHbWJIOyA5OTc4NzYz
MDAwMDA4KSBkaWUgZXJmb3JkZXJsaWNoZW4gTWHDn25haG1lbiBpbiBJaHJlbSBTeXN0ZW0gdW0u
DQoNCkbDvHIgUsO8Y2tmcmFnZW4gc3RlaGVuIHdpciBnZXJuIHp1ciBWZXJmw7xndW5nLiBWaWVs
ZW4gRGFuay4NCg0KRnJldW5kbGljaGUgR3LDvMOfZQ0KSWhyIElERSBUZWFtDQoNCk5ldHpudXR6
dW5nc21hbmFnZW1lbnQNCkxpZWZlcmFudGVud2VjaHNlbC9NYXJrdGtvbW11bmlrYXRpb24NClQg
KzQ5IDQxMDYtNjQ4IDkwMCAyMA0KaWRlLXRlYW1Ac2gtbmV0ei5jb20NCg0KU2NobGVzd2lnLUhv
bHN0ZWluIE5ldHogQUcNClNjaGxlc3dhZy1IZWluR2FzLVBsYXR6IDENCjI1NDUwIFF1aWNrYm9y
bg0Kd3d3LnNoLW5ldHouY29tDQoNCg0KU2l0ejogUXVpY2tib3JuLCAgQW10c2dlcmljaHQgUGlu
bmViZXJnLCAgSFJCIDgxMjIgUEkgVm9yc2l0emVuZGVyIGRlcyBBdWZzaWNodHNyYXRzOiBNYXR0
aGlhcyBCb3hiZXJnZXIsIFZvcnN0YW5kOiBLaXJzdGVuIEZ1c3QsICBEci4gSm9hY2hpbSBLYWJz
LCAgU3RlZmFuIFN0cm9ibA0K

