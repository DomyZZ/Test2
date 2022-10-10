-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.32 - MySQL Community Server (GPL)
-- Server OS:                    osx10.12
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table dqscript_prod.dqs_access_log
CREATE TABLE IF NOT EXISTS `dqs_access_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'successful',
  PRIMARY KEY (`id`),
  KEY `i1` (`user_id`),
  KEY `i3` (`date`),
  KEY `i2` (`ip`,`status`(1))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_access_log: ~3 rows (approximately)
DELETE FROM `dqs_access_log`;
/*!40000 ALTER TABLE `dqs_access_log` DISABLE KEYS */;
INSERT INTO `dqs_access_log` (`id`, `user_id`, `date`, `ip`, `status`) VALUES
	(1, 1, 1586875858, '::1', 'successful'),
	(2, 1, 1595587106, '::1', 'successful'),
	(3, 1, 1595588651, '::1', 'successful'),
	(4, 1, 1603115218, '::1', 'successful'),
	(5, 1, 1603276278, '::1', 'successful'),
	(6, 1, 1605186130, '::1', 'successful'),
	(7, 1, 1607431350, '::1', 'successful'),
	(8, 1, 1611076794, '::1', 'successful'),
	(9, 1, 1611674733, '::1', 'successful'),
	(10, 1, 1613634773, '::1', 'successful');
/*!40000 ALTER TABLE `dqs_access_log` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_blacklists
CREATE TABLE IF NOT EXISTS `dqs_blacklists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ip',
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `processor_id` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_blacklists: ~0 rows (approximately)
DELETE FROM `dqs_blacklists`;
/*!40000 ALTER TABLE `dqs_blacklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_blacklists` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_countries
CREATE TABLE IF NOT EXISTS `dqs_countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_countries: ~247 rows (approximately)
DELETE FROM `dqs_countries`;
/*!40000 ALTER TABLE `dqs_countries` DISABLE KEYS */;
INSERT INTO `dqs_countries` (`id`, `name`) VALUES
	(1, 'Afghanistan'),
	(2, 'Albania'),
	(3, 'Algeria'),
	(4, 'American Samoa'),
	(5, 'Andorra'),
	(6, 'Angola'),
	(7, 'Anguilla'),
	(8, 'Antarctica'),
	(9, 'Antigua and Barbuda'),
	(10, 'Argentina'),
	(11, 'Armenia'),
	(12, 'Armenia'),
	(13, 'Aruba'),
	(14, 'Australia'),
	(15, 'Austria'),
	(16, 'Azerbaijan'),
	(17, 'Azerbaijan'),
	(18, 'Bahamas'),
	(19, 'Bahrain'),
	(20, 'Bangladesh'),
	(21, 'Barbados'),
	(22, 'Belarus'),
	(23, 'Belgium'),
	(24, 'Belize'),
	(25, 'Benin'),
	(26, 'Bermuda'),
	(27, 'Bhutan'),
	(28, 'Bolivia'),
	(29, 'Bosnia and Herzegovina'),
	(30, 'Botswana'),
	(31, 'Bouvet Island'),
	(32, 'Brazil'),
	(33, 'British Indian Ocean Territory'),
	(34, 'Brunei Darussalam'),
	(35, 'Bulgaria'),
	(36, 'Burkina Faso'),
	(37, 'Burundi'),
	(38, 'Cambodia'),
	(39, 'Cameroon'),
	(40, 'Canada'),
	(41, 'Cape Verde'),
	(42, 'Cayman Islands'),
	(43, 'Central African Republic'),
	(44, 'Chad'),
	(45, 'Chile'),
	(46, 'China'),
	(47, 'Christmas Island'),
	(48, 'Cocos (Keeling) Islands'),
	(49, 'Colombia'),
	(50, 'Comoros'),
	(51, 'Congo'),
	(53, 'Cook Islands'),
	(54, 'Costa Rica'),
	(55, 'Cote D\'ivoire'),
	(56, 'Croatia'),
	(57, 'Cuba'),
	(58, 'Cyprus'),
	(59, 'Cyprus'),
	(60, 'Czech Republic'),
	(61, 'Denmark'),
	(62, 'Djibouti'),
	(63, 'Dominica'),
	(64, 'Dominican Republic'),
	(65, 'Easter Island'),
	(66, 'Ecuador'),
	(67, 'Egypt'),
	(68, 'El Salvador'),
	(69, 'Equatorial Guinea'),
	(70, 'Eritrea'),
	(71, 'Estonia'),
	(72, 'Ethiopia'),
	(73, 'Falkland Islands (Malvinas)'),
	(74, 'Faroe Islands'),
	(75, 'Fiji'),
	(76, 'Finland'),
	(77, 'France'),
	(78, 'French Guiana'),
	(79, 'French Polynesia'),
	(80, 'French Southern Territories'),
	(81, 'Gabon'),
	(82, 'Gambia'),
	(83, 'Georgia'),
	(84, 'Georgia'),
	(85, 'Germany'),
	(86, 'Ghana'),
	(87, 'Gibraltar'),
	(88, 'Greece'),
	(89, 'Greenland'),
	(90, 'Greenland'),
	(91, 'Grenada'),
	(92, 'Guadeloupe'),
	(93, 'Guam'),
	(94, 'Guatemala'),
	(95, 'Guinea'),
	(96, 'Guinea-bissau'),
	(97, 'Guyana'),
	(98, 'Haiti'),
	(100, 'Honduras'),
	(101, 'Hong Kong'),
	(102, 'Hungary'),
	(103, 'Iceland'),
	(104, 'India'),
	(105, 'Indonesia'),
	(106, 'Indonesia'),
	(107, 'Iran'),
	(108, 'Iraq'),
	(109, 'Ireland'),
	(110, 'Israel'),
	(111, 'Italy'),
	(112, 'Jamaica'),
	(113, 'Japan'),
	(114, 'Jordan'),
	(115, 'Kazakhstan'),
	(116, 'Kazakhstan'),
	(117, 'Kenya'),
	(118, 'Kiribati'),
	(119, 'Korea, North'),
	(120, 'Korea, South'),
	(121, 'Kosovo'),
	(122, 'Kuwait'),
	(123, 'Kyrgyzstan'),
	(124, 'Laos'),
	(125, 'Latvia'),
	(126, 'Lebanon'),
	(127, 'Lesotho'),
	(128, 'Liberia'),
	(129, 'Libyan Arab Jamahiriya'),
	(130, 'Liechtenstein'),
	(131, 'Lithuania'),
	(132, 'Luxembourg'),
	(133, 'Macau'),
	(134, 'Macedonia'),
	(135, 'Madagascar'),
	(136, 'Malawi'),
	(137, 'Malaysia'),
	(138, 'Maldives'),
	(139, 'Mali'),
	(140, 'Malta'),
	(141, 'Marshall Islands'),
	(142, 'Martinique'),
	(143, 'Mauritania'),
	(144, 'Mauritius'),
	(145, 'Mayotte'),
	(146, 'Mexico'),
	(148, 'Moldova, Republic of'),
	(149, 'Monaco'),
	(150, 'Mongolia'),
	(151, 'Montenegro'),
	(152, 'Montserrat'),
	(153, 'Morocco'),
	(154, 'Mozambique'),
	(155, 'Myanmar'),
	(156, 'Namibia'),
	(157, 'Nauru'),
	(158, 'Nepal'),
	(159, 'Netherlands'),
	(160, 'Netherlands Antilles'),
	(161, 'New Caledonia'),
	(162, 'New Zealand'),
	(163, 'Nicaragua'),
	(164, 'Niger'),
	(165, 'Nigeria'),
	(166, 'Niue'),
	(167, 'Norfolk Island'),
	(168, 'Northern Mariana Islands'),
	(169, 'Norway'),
	(170, 'Oman'),
	(171, 'Pakistan'),
	(172, 'Palau'),
	(173, 'Palestinian Territory'),
	(174, 'Panama'),
	(175, 'Papua New Guinea'),
	(176, 'Paraguay'),
	(177, 'Peru'),
	(178, 'Philippines'),
	(179, 'Pitcairn'),
	(180, 'Poland'),
	(181, 'Portugal'),
	(182, 'Puerto Rico'),
	(183, 'Qatar'),
	(184, 'Reunion'),
	(185, 'Romania'),
	(186, 'Russia'),
	(187, 'Russia'),
	(188, 'Rwanda'),
	(189, 'Saint Helena'),
	(190, 'Saint Kitts and Nevis'),
	(191, 'Saint Lucia'),
	(192, 'Saint Pierre and Miquelon'),
	(193, 'Saint Vincent and The Grenadines'),
	(194, 'Samoa'),
	(195, 'San Marino'),
	(196, 'Sao Tome and Principe'),
	(197, 'Saudi Arabia'),
	(198, 'Senegal'),
	(199, 'Serbia and Montenegro'),
	(200, 'Seychelles'),
	(201, 'Sierra Leone'),
	(202, 'Singapore'),
	(203, 'Slovakia'),
	(204, 'Slovenia'),
	(205, 'Solomon Islands'),
	(206, 'Somalia'),
	(207, 'South Africa'),
	(209, 'Spain'),
	(210, 'Sri Lanka'),
	(211, 'Sudan'),
	(212, 'Suriname'),
	(213, 'Svalbard and Jan Mayen'),
	(214, 'Swaziland'),
	(215, 'Sweden'),
	(216, 'Switzerland'),
	(217, 'Syria'),
	(218, 'Taiwan'),
	(219, 'Tajikistan'),
	(220, 'Tanzania, United Republic of'),
	(221, 'Thailand'),
	(222, 'Timor-leste'),
	(223, 'Togo'),
	(224, 'Tokelau'),
	(225, 'Tonga'),
	(226, 'Trinidad and Tobago'),
	(227, 'Tunisia'),
	(228, 'Turkey'),
	(229, 'Turkey'),
	(230, 'Turkmenistan'),
	(231, 'Turks and Caicos Islands'),
	(232, 'Tuvalu'),
	(233, 'Uganda'),
	(234, 'Ukraine'),
	(235, 'United Arab Emirates'),
	(236, 'United Kingdom'),
	(237, 'United States'),
	(239, 'Uruguay'),
	(240, 'Uzbekistan'),
	(241, 'Vanuatu'),
	(242, 'Vatican City'),
	(243, 'Venezuela'),
	(244, 'Vietnam'),
	(245, 'Virgin Islands, British'),
	(246, 'Virgin Islands, U.S.'),
	(247, 'Wallis and Futuna'),
	(248, 'Western Sahara'),
	(249, 'Yemen'),
	(250, 'Yemen'),
	(251, 'Zambia'),
	(252, 'Zimbabwe');
/*!40000 ALTER TABLE `dqs_countries` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_deposits
CREATE TABLE IF NOT EXISTS `dqs_deposits` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(13) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `package_id` int(11) unsigned NOT NULL,
  `start_date` int(11) unsigned NOT NULL,
  `lastpay_date` int(11) unsigned NOT NULL DEFAULT '0',
  `num_pays` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `a_amount` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `processor_id` int(11) unsigned NOT NULL,
  `extra` text,
  `compound` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `earnings` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `i1` (`uid`,`user_id`),
  KEY `i2` (`user_id`),
  KEY `i4` (`start_date`),
  KEY `i5` (`amount`),
  KEY `i3` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dqscript_prod.dqs_deposits: ~0 rows (approximately)
DELETE FROM `dqs_deposits`;
/*!40000 ALTER TABLE `dqs_deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_deposits` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_email_tmpls
CREATE TABLE IF NOT EXISTS `dqs_email_tmpls` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `html_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_email_tmpls: ~27 rows (approximately)
DELETE FROM `dqs_email_tmpls`;
/*!40000 ALTER TABLE `dqs_email_tmpls` DISABLE KEYS */;
INSERT INTO `dqs_email_tmpls` (`id`, `name`, `subject`, `html_content`) VALUES
	(201, 'User - Account Activation Pending', 'Account Activation', 'Dear <strong>#username#,</strong><br>\r\nThank you for registering in #sitename#. Click the link below to activate your account.<br>\r\n<br>\r\n<a href="#link#">Click here to activate your account</a><br>\r\n<br>\r\nRegards.'),
	(202, 'User - Account Activation Successful', 'Account Activation Successful', 'Dear #username#,<br />\n<br />\nYou have successfully activated your account. You can login now.\n'),
	(204, 'User - Bonus Notification', 'You have received a Bonus!', 'Dear #username#,<br />\n<br />\nYou have received a bonus with the following details :-<br />\n<br />\nAmount: #curr# #amount#<br />\nProcessor: #processor#\n'),
	(205, 'User - Penalty Notification', 'You have been charged a penalty', 'Dear #username#,<br />\n<br />\nYou have been charged a penalty with the following details :-<br />\n<br />\nAmount: #curr# #amount#<br />\nProcessor: #processor#\n'),
	(206, 'User - Profile Changed', 'Profile Updated', 'Dear #username#,<br />\n<br />\nYour profile information was updated recently from #ip# on #date#.<br />\n<br />\nIf this was not you, please change your password asap.\n'),
	(207, 'User - Withdrawal Requested', 'Withdrawal Request', 'Dear #username#,<br />\r\n<br />\r\nYou have requested a withdrawal with the following details:-<br />\r\n<br />\r\nDate: #date#<br />\r\nIP: #ip#<br />\r\nId: #withdrawal_id#<br />\r\nRequest Amount: #amount# #currency#<br />\r\nFee: #fee_val# #fee_unit#<br />\r\nReceive Amount: #a_amount# #a_currency#<br />\r\nProcessor: #processor#<br />\r\n<br />\r\nClick the link below to view your withdrawal status:<br />\r\n<a href="#siteurl#/pending_withdrawals">#siteurl#/pending_withdrawals</a>'),
	(208, 'Admin - User Withdrawal Request', 'A user has requested a withdrawal', 'Dear admin,<br>\r\n<br>\r\nA user has requested withdrawal with following details :-<br>\r\n<br>\r\nUsername: #username#<br>\r\nTransaction Id: #transid#<br>\r\nTransaction Date: #date#<br>\r\nAmount : #amount# #currency#<br>\r\nProcessor: #processor#'),
	(209, 'User - Withdrawal Successful', 'Withdrawal Processed', 'Dear #username#,<br>\r\n<br>\r\nYour withdrawal request was processed successfully.<br>\r\n<br>\r\nWithdrawal details are as follows:-<br>\r\n<br>\r\nDate: #date#<br>\r\nIP: #ip#<br>\r\nRequest Amount: #amount# #currency#<br>\r\nFee: #fee_val# #fee_unit#<br>\r\nReceive Amount: #a_amount# #a_currency#<br>\r\nProcessor: #processor#<br>\r\nBatch: #batch#'),
	(211, 'User - New Deposit', 'New Deposit', 'Dear #username#,<br />\r\n<br />\r\nYou have just made a deposit with the following details:-<br />\r\n<br />\r\nDeposit Id: #deposit_id#<br />\r\nDate: #date#<br />\r\nAmount: #amount# #currency#<br />\r\nPackage: #package#<br />\r\nPaid with: #payment_amount# #payment_currency# (#processor#)<br />\r\n<br />\r\nClick the link below to view your investment details:<br />\r\n<a href="#siteurl#/deposits/">#siteurl#/deposits/</a>'),
	(212, 'Admin - User New Deposit', 'A user had made a deposit', 'Dear admin,<br />\r\n<br />\r\nA user has made a deposit with the following details :-<br />\r\n<br />\r\nUsername: #username#<br />\r\nDeposit Id: #deposit_id#<br />\r\nDate: #date#<br />\r\nAmount: #amount# #currency#<br />\r\nPackage: #package#<br />\r\nPaid with: #payment_amount# #payment_currency# (#processor#)'),
	(215, 'User - Account Registration Successful', 'Registration is Successful', 'Dear #username#,<br />\r\n<br />\r\nYou have successfully registered in #sitename#. Your details are :-<br />\r\n<br />\r\nUsername: #email#<br />\r\nPassword: #password#<br />\r\nRegistration Date: #regdate#<br />\r\nRegistration IP: #regip#&nbsp;<br />\r\n<br />\r\n<a href="#siteurl#/login">Click here to login</a><br />\r\n<br />\r\nRegards.'),
	(216, 'User - Direct Referral Registration Notification', 'You have a new referral', 'Dear #username#,<br />\r\n<br />\r\nA person has just registered using your referral link with the following details: :-<br />\r\n<br />\r\nUsername: #ref_username#<br />\r\nEmail: #ref_email#<br />\r\nRegistered On: #ref_reg_date#'),
	(217, 'User - Referral Commission Received', 'You have received referral commission', 'Dear #username#,<br>\r\n<br>\r\nYou have received referral commission of #amount# #currency# (#processor#) from #referral#'),
	(219, 'User - New Ticket Created', 'New Ticket Created', 'Dear #username#,<br>\r\n<br>\r\nYou have created a new ticket with the following details:-<br>\r\n<br>\r\nTicket Id: #tid#<br>\r\nCreated On: #date#<br>\r\n<br>\r\nTicket Details:<br>\r\n======================================<br>\r\nSubject: #subject#<br>\r\nMessage:<br>\r\n#message#<br>\r\n<br>\r\nYou can view your ticket in the link below:-<br>\r\n<a href="#siteurl#/tickets/view/#tid#">#siteurl#/tickets/view/#tid#</a>'),
	(220, 'Admin - User Opened Ticket', 'A user has opened a new ticket', 'Dear admin,<br />\n<br />\nA user has opened a ticket with following details :-<br />\n<br />\nUsername: #username#<br />\nTicket ID: #tid#<br />\nTicket Date: #date#<br />\nTicket Subject: #subject#<br />\nTicket Message: #message#\n'),
	(221, 'User - Withdrawal Email Verification', 'Withdrawal Verification', 'Dear #username#,<br />\n<br />\nYour verification code for withdrawal is <strong>#code#</strong>.<br />\n\n'),
	(223, 'User - Password Reset Verification', 'Password Reset Verification', 'Dear #username#,<br>\r\n<br>\r\nPlease click the link below to reset your password.<br>\r\n<a href="#link#">#link#</a><br>\r\n<br>\r\nRegards.'),
	(224, 'User - Password Reset Completion', 'Password Reset Complete', 'Dear #username#,<br>\r\n<br>\r\nYou have successfully reset your password.<br>\r\n<br>\r\nRegards,'),
	(230, 'User - Login PIN', 'Login PIN ', 'Dear #username#,<br>\r\n<br>\r\nYour pin is #pin#<br>\r\n<br>\r\nRegards.'),
	(231, 'Admin - BonusPenalty Code', 'Bonus/Penalty Verification Code', 'Dear admin,<br>\r\n<br>\r\nYour verification code for sending bonus/penalty is #code#.<br>\r\n<br>\r\nRegards.'),
	(232, 'User - Withdrawal Cancelled', 'Withdrawal Cancelled', 'Dear #username#,<br />\n<br />\nYour withdrawal request <strong>##wid#</strong> is cancelled.\n'),
	(234, 'User - Friend Invitation', 'Invitation to join #sitename#', 'Dear #fullname#,<br>\r\nI found this amazing program for investment and i want you to earn from it too.<br>\r\n<br>\r\nJoin me now!<br>\r\n<a href="#reflink#">#reflink#</a>'),
	(235, 'User - Successful Login', 'Your login was successful', 'Dear #username#,<br>\r\n<br>\r\nYou have recently logged into your account with following details:<br>\r\n<br>\r\nDate: #date#<br>\r\nIP: #ip#<br>\r\nBrowser: #user_agent#<br>\r\n<br>\r\nif this is not you, then please change your password asap.'),
	(236, 'User - Reset Security Code Confirmation', 'Reset Security Code Verification', 'Dear #username#,<br />\n<br />\nYour verification code for resetting security code is <strong>#code#</strong>.\n'),
	(237, 'Admin - User Support Email', 'Support Email (#subject#)', 'Dear admin,&nbsp;<br />\n<br />\nA user has sent a support email with the following details :-<br />\n<br />\nName: #name#<br />\nEmail: #email#<br />\nIP: #ip#<br />\nDate: #date#<br />\nMessage:&nbsp;<br />\n<br />\n#description#\n'),
	(238, 'User - New Ticket Reply', 'You have a new reply to your ticket', 'Dear #username#,<br />\n<br />\nYou have a new reply to your ticket : #tid# created on #date#<br />\n<br />\nReply message:<br />\n#replymessage#<br />\n<br />\n<br />\nNOTE: Do not reply to this email directly, instead go to the link below to post a reply.<br />\n#siteurl#/tickets/view/#tid#\n'),
	(239, 'User - New Payment Created', 'You have created new payment', 'Dear #username#,<br />\n<br />\nYou have created a new payment with the following details:<br />\n<br />\nId: #id#<br />\nAmount to pay: #amount# #currency#<br />\nDescription: #description#<br />\n<br />\nCheck payment status below<br />\n#payment_link#\n'),
	(240, 'User - New Representative Application', 'Your representative application was submitted successfully', 'Dear #username#,<br />\r\n<br />\r\nYou have applied for representative with the following details:<br />\r\n<br />\r\nCountry: #country#<br />\r\nLanguage: #languages#<br />\r\n<br />\r\nContact Details:&nbsp;<br />\r\n#contacts#'),
	(241, 'Admin - New Representative Application', 'A user has applied for representative', 'A user has applied for representative with the following details:<br />\r\n<br />\r\nUsername: #username#<br />\r\nCountry: #country#<br />\r\nLanguage: #languages#<br />\r\n<br />\r\nContact Details:&nbsp;<br />\r\n#contacts#'),
	(242, 'User - Representative Approved', 'Your representative application was approved', 'Dear #username#,<br />\r\n<br />\r\nCongratulations, your representative application was approved!.<br />\r\n<br />\r\nPlease visit referrals page to know more about your referral commissions.');
/*!40000 ALTER TABLE `dqs_email_tmpls` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_errors
CREATE TABLE IF NOT EXISTS `dqs_errors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `date` int(11) unsigned NOT NULL,
  `hash` varchar(32) NOT NULL,
  `errorcode` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_errors: ~0 rows (approximately)
DELETE FROM `dqs_errors`;
/*!40000 ALTER TABLE `dqs_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_errors` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_funds
CREATE TABLE IF NOT EXISTS `dqs_funds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `amount` decimal(20,10) NOT NULL DEFAULT '0.0000000000',
  `processor_id` int(11) unsigned NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i2` (`type`),
  KEY `i1` (`user_id`,`type`),
  KEY `processor_id` (`processor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_funds: ~0 rows (approximately)
DELETE FROM `dqs_funds`;
/*!40000 ALTER TABLE `dqs_funds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_funds` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_guests
CREATE TABLE IF NOT EXISTS `dqs_guests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_ip` varchar(16) NOT NULL,
  `entry_time` int(11) unsigned NOT NULL,
  `exit_time` int(11) unsigned NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`user_ip`),
  KEY `i2` (`exit_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_guests: ~0 rows (approximately)
DELETE FROM `dqs_guests`;
/*!40000 ALTER TABLE `dqs_guests` DISABLE KEYS */;
INSERT INTO `dqs_guests` (`id`, `user_ip`, `entry_time`, `exit_time`, `user_agent`) VALUES
	(1, '127.0.0.1', 1622451442, 1622451742, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:88.0) Gecko/20100101 Firefox/88.0');
/*!40000 ALTER TABLE `dqs_guests` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_holidays
CREATE TABLE IF NOT EXISTS `dqs_holidays` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `h_date` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_holidays: ~0 rows (approximately)
DELETE FROM `dqs_holidays`;
/*!40000 ALTER TABLE `dqs_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_holidays` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_news
CREATE TABLE IF NOT EXISTS `dqs_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sm_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lang` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_news: ~0 rows (approximately)
DELETE FROM `dqs_news`;
/*!40000 ALTER TABLE `dqs_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_news` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_packages
CREATE TABLE IF NOT EXISTS `dqs_packages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT 'New Package',
  `package_duration` varchar(15) NOT NULL DEFAULT '',
  `package_duration_unit` varchar(10) NOT NULL DEFAULT '',
  `earning_interval` varchar(15) NOT NULL DEFAULT '',
  `earning_interval_unit` varchar(10) NOT NULL DEFAULT '',
  `total_rate_limit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `rate_type` varchar(15) NOT NULL DEFAULT 'fixed',
  `return_principal` tinyint(1) NOT NULL DEFAULT '0',
  `allow_compounding` tinyint(1) NOT NULL DEFAULT '0',
  `comp_min_dep` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `comp_max_dep` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `comp_val_type` varchar(10) NOT NULL DEFAULT 'ranged',
  `comp_solid_vals` text,
  `comp_ranged_val_min` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `comp_ranged_val_max` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `allow_p_withdrawal` tinyint(1) NOT NULL DEFAULT '0',
  `p_withdraw_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `p_withdraw_min_days` int(11) NOT NULL DEFAULT '0',
  `p_withdraw_max_days` int(11) unsigned NOT NULL DEFAULT '0',
  `earning_days` varchar(255) NOT NULL DEFAULT 'a:7:{s:3:"sun";s:4:"true";s:3:"mon";s:4:"true";s:3:"tue";s:4:"true";s:3:"wed";s:4:"true";s:3:"thu";s:4:"true";s:3:"fri";s:4:"true";s:3:"sat";s:4:"true";}',
  `treat_non_earning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_dep_package` int(11) unsigned NOT NULL DEFAULT '0',
  `max_dep_count` int(11) unsigned NOT NULL DEFAULT '0',
  `max_act_dep_count` int(11) unsigned NOT NULL DEFAULT '0',
  `max_dep_count_single` int(11) unsigned NOT NULL DEFAULT '0',
  `disable_autowithdraw` tinyint(1) NOT NULL DEFAULT '0',
  `disable_autowith_ifdep_more_than` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `apply_bonus_from_balance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `i1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_packages: ~3 rows (approximately)
DELETE FROM `dqs_packages`;
/*!40000 ALTER TABLE `dqs_packages` DISABLE KEYS */;
INSERT INTO `dqs_packages` (`id`, `position`, `name`, `package_duration`, `package_duration_unit`, `earning_interval`, `earning_interval_unit`, `total_rate_limit`, `rate_type`, `return_principal`, `allow_compounding`, `comp_min_dep`, `comp_max_dep`, `comp_val_type`, `comp_solid_vals`, `comp_ranged_val_min`, `comp_ranged_val_max`, `allow_p_withdrawal`, `p_withdraw_fee`, `p_withdraw_min_days`, `p_withdraw_max_days`, `earning_days`, `treat_non_earning`, `allow_dep_package`, `max_dep_count`, `max_act_dep_count`, `max_dep_count_single`, `disable_autowithdraw`, `disable_autowith_ifdep_more_than`, `apply_bonus_from_balance`, `closed`, `status`) VALUES
	(1, 1, 'Alpha Plan', '150', 'days', '1', 'days', 0.00, 'fixed', 0, 0, 0.0000000000, 0.0000000000, 'ranged', NULL, 0.00, 0.00, 0, 0.00, 0, 0, 'a:7:{s:3:"sun";s:4:"true";s:3:"mon";s:4:"true";s:3:"tue";s:4:"true";s:3:"wed";s:4:"true";s:3:"thu";s:4:"true";s:3:"fri";s:4:"true";s:3:"sat";s:4:"true";}', 0, 0, 0, 0, 0, 0, 0.0000000000, 0, 0, 'active'),
	(2, 2, 'Beta Plan', '15', 'days', '1', 'days', 0.00, 'fixed', 1, 0, 0.0000000000, 0.0000000000, 'ranged', NULL, 0.00, 0.00, 0, 0.00, 0, 0, 'a:7:{s:3:"sun";s:4:"true";s:3:"mon";s:4:"true";s:3:"tue";s:4:"true";s:3:"wed";s:4:"true";s:3:"thu";s:4:"true";s:3:"fri";s:4:"true";s:3:"sat";s:4:"true";}', 0, 0, 0, 0, 0, 0, 0.0000000000, 0, 0, 'active'),
	(3, 3, 'Theta Plan', '15', 'days', 'maturity', 'days', 0.00, 'fixed', 0, 0, 0.0000000000, 0.0000000000, 'ranged', NULL, 0.00, 0.00, 0, 0.00, 0, 0, 'a:7:{s:3:"sun";s:4:"true";s:3:"mon";s:4:"true";s:3:"tue";s:4:"true";s:3:"wed";s:4:"true";s:3:"thu";s:4:"true";s:3:"fri";s:4:"true";s:3:"sat";s:4:"true";}', 0, 0, 0, 0, 0, 0, 0.0000000000, 0, 0, 'active');
/*!40000 ALTER TABLE `dqs_packages` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_payments
CREATE TABLE IF NOT EXISTS `dqs_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `processor_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `payment_amount` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `deposit_data` text,
  `transaction_data` text,
  `extra` varchar(80) NOT NULL DEFAULT '',
  `extra_2` varchar(100) DEFAULT NULL,
  `confirmations` int(5) NOT NULL DEFAULT '0',
  `txid` varchar(100) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'inactive',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `user_id` (`user_id`),
  KEY `extra` (`extra`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dqscript_prod.dqs_payments: ~0 rows (approximately)
DELETE FROM `dqs_payments`;
/*!40000 ALTER TABLE `dqs_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_payments` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_payment_batches
CREATE TABLE IF NOT EXISTS `dqs_payment_batches` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processor_id` int(11) unsigned NOT NULL,
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_payment_batches: ~0 rows (approximately)
DELETE FROM `dqs_payment_batches`;
/*!40000 ALTER TABLE `dqs_payment_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_payment_batches` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_plans
CREATE TABLE IF NOT EXISTS `dqs_plans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(11) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `max_amount` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `max_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `var_rates` text,
  `bonus_value` decimal(20,10) unsigned NOT NULL DEFAULT '0.0000000000',
  `bonus_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `bonus_dest` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_plans: ~9 rows (approximately)
DELETE FROM `dqs_plans`;
/*!40000 ALTER TABLE `dqs_plans` DISABLE KEYS */;
INSERT INTO `dqs_plans` (`id`, `package_id`, `min_amount`, `max_amount`, `rate`, `max_rate`, `var_rates`, `bonus_value`, `bonus_type`, `bonus_dest`) VALUES
	(1, 1, 10.0000000000, 500.0000000000, 1.00, 0.00, NULL, 0.0000000000, 'solid', 0),
	(2, 1, 501.0000000000, 5000.0000000000, 1.50, 0.00, NULL, 0.0000000000, 'solid', 0),
	(3, 1, 5001.0000000000, 50000.0000000000, 2.50, 0.00, NULL, 0.0000000000, 'solid', 0),
	(4, 2, 10.0000000000, 500.0000000000, 3.00, 0.00, NULL, 0.0000000000, 'solid', 0),
	(5, 2, 501.0000000000, 5000.0000000000, 3.50, 0.00, NULL, 0.0000000000, 'solid', 0),
	(6, 2, 5001.0000000000, 50000.0000000000, 5.00, 0.00, NULL, 0.0000000000, 'solid', 0),
	(7, 3, 10.0000000000, 500.0000000000, 130.00, 0.00, NULL, 0.0000000000, 'solid', 0),
	(8, 3, 501.0000000000, 5000.0000000000, 170.00, 0.00, NULL, 0.0000000000, 'solid', 0),
	(9, 3, 5001.0000000000, 10000.0000000000, 230.00, 0.00, NULL, 0.0000000000, 'solid', 0);
/*!40000 ALTER TABLE `dqs_plans` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_processors
CREATE TABLE IF NOT EXISTS `dqs_processors` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(15) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `curr_nick` varchar(5) NOT NULL DEFAULT 'usd',
  `curr_symbol` varchar(7) NOT NULL DEFAULT '',
  `deposit_mode` varchar(15) NOT NULL DEFAULT 'off',
  `withdrawal_mode` varchar(5) NOT NULL DEFAULT 'off',
  `auto_withdrawal` varchar(15) NOT NULL DEFAULT 'off',
  `payment_details` text NOT NULL,
  `settings` text,
  `placeholder` varchar(80) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT 'fiat',
  `p_type` varchar(10) NOT NULL DEFAULT 'custom',
  `hidden` varchar(5) NOT NULL DEFAULT 'no',
  `status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dqscript_prod.dqs_processors: ~14 rows (approximately)
DELETE FROM `dqs_processors`;
/*!40000 ALTER TABLE `dqs_processors` DISABLE KEYS */;
INSERT INTO `dqs_processors` (`id`, `name`, `icon`, `nick`, `curr_nick`, `curr_symbol`, `deposit_mode`, `withdrawal_mode`, `auto_withdrawal`, `payment_details`, `settings`, `placeholder`, `type`, `p_type`, `hidden`, `status`) VALUES
	(1, 'PerfectMoney', 'pm.png', 'pm', 'usd', '&#36;', 'on', 'on', 'off', '', NULL, 'U12345678', 'fiat', 'system', 'no', 'inactive'),
	(2, 'Payeer', 'pr.png', 'pr', 'usd', '&#36;', 'on', 'on', 'off', '', NULL, 'P12345678', 'fiat', 'system', 'no', 'inactive'),
	(5, 'Payza', 'pz.png', 'pz', 'usd', '&#36;', 'on', 'on', 'off', '', NULL, 'johnmiller@gmail.com', 'fiat', 'system', 'no', 'inactive'),
	(6, 'Bitcoin', 'btc.png', 'btc', 'btc', '฿', 'on', 'on', 'off', '', NULL, '1HiMoMgBaAikFHgAt3M4YJtetp4HrnsiXu ', 'crypto', 'system', 'no', 'inactive'),
	(7, 'Litecoin', 'ltc.png', 'ltc', 'ltc', 'Ł', 'on', 'on', 'off', '', NULL, 'LdHeKyJMKxVXfHCATZbkgsgYyQo37SNNbu', 'crypto', 'system', 'no', 'inactive'),
	(8, 'Ethereum', 'eth.png', 'eth', 'eth', '', 'on', 'on', 'off', '', NULL, '0x38aa48A49034c7AF5C6b04b3AF39F2BaAFe9fc3a', 'crypto', 'system', 'no', 'inactive'),
	(9, 'SolidTrustPay', 'stp.png', 'stp', 'usd', '&#36;', 'on', 'on', 'off', '', NULL, 'johnmiller', 'fiat', 'system', 'no', 'inactive'),
	(10, 'Advcash', 'adc.png', 'adc', 'usd', '&#36;', 'on', 'on', 'off', '', NULL, 'johnmiller@gmail.com', 'fiat', 'system', 'no', 'inactive'),
	(12, 'NixMoney', 'nxm.png', 'nxm', 'usd', '&#36;', 'on', 'on', 'off', '', NULL, 'U72575915571766', 'fiat', 'system', 'no', 'inactive'),
	(13, 'Dogecoin', 'doge.png', 'doge', 'doge', '', 'on', 'on', 'off', '', NULL, 'D5ZiVFXj6Twh6Gjy767Wcew1uxBPwxJ4yc', 'crypto', 'system', 'no', 'inactive'),
	(14, 'BitcoinCash', 'bch.png', 'bch', 'bch', '', 'on', 'on', 'off', '', NULL, '1DBm1qdKxcQWsJ9r931YEHGZp9gUsuQWo5', 'crypto', 'system', 'no', 'inactive'),
	(15, 'Ripple', 'xrp.png', 'xrp', 'xrp', '', 'on', 'on', 'off', '', NULL, 'rG2ZJRab3EGBmpoxUyiF2guB3GoQTwMGEC', 'crypto', 'system', 'no', 'inactive'),
	(16, 'Dash', 'dash.png', 'dash', 'dash', '', 'on', 'on', 'off', '', NULL, 'XbtvGzi2JgjYTbTqabUjSREWeovDxznoyh', 'crypto', 'system', 'no', 'inactive'),
	(17, 'Monero', 'xmr.png', 'xmr', 'xmr', '', 'on', 'on', 'off', '', NULL, '47BnvD18P456f4KJUBKPS3Rqa97LrTaeqJ5NFYmjQM6nVoz6TBv4rJ24GZk883BNo22fAKbr8BSuTjhQ', 'crypto', 'system', 'no', 'inactive'),
	(18, 'Tron', 'trx.png', 'trx', 'trx', '', 'on', 'on', 'off', '', NULL, 'TNDFkUNA2TukukC1Moeqj61pAS53NFchGF', 'crypto', 'system', 'no', 'inactive'),
	(19, 'TetherOMNI', 'usdt.png', 'usdt', 'usdt', '', 'on', 'on', 'off', '', NULL, '1FoWyxwPXuj4C6abqwhjDWdz6D4PZgYRjA', 'crypto', 'system', 'no', 'inactive'),
	(20, 'TetherERC20', 'usdte.png', 'usdte', 'usdt', '', 'on', 'on', 'off', '', NULL, '0x102de7e98924C43325b45d7cc436812416Fe23cd', 'crypto', 'system', 'no', 'inactive'),
    (21, 'TetherTRC20', 'usdtt.png', 'usdtt', 'usdt', '', 'on', 'on', 'off', '', NULL, 'TGCSRkFgUZoCkiMfk1YaNL1aGNUiirbCP9', 'crypto', 'system', 'no', 'inactive'),
	(22, 'Binancecoin', 'bnb.png', 'bnb', 'bnb', '', 'on', 'on', 'off', '', NULL, 'bnb1mm5pj5mymz883sus7hzwpdwjfx5xngvftj5e6y', 'crypto', 'system', 'no', 'inactive');
/*!40000 ALTER TABLE `dqs_processors` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_ref_programs
CREATE TABLE IF NOT EXISTS `dqs_ref_programs` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `min` decimal(20,10) NOT NULL,
  `max` decimal(20,10) NOT NULL,
  `ref_comm` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_ref_programs: ~1 rows (approximately)
DELETE FROM `dqs_ref_programs`;
/*!40000 ALTER TABLE `dqs_ref_programs` DISABLE KEYS */;
INSERT INTO `dqs_ref_programs` (`id`, `name`, `min`, `max`, `ref_comm`, `type`) VALUES
	(1, 'Ref-Prog-A', 1.0000000000, 10.0000000000, 4.00, 'deposit');
/*!40000 ALTER TABLE `dqs_ref_programs` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_representatives
CREATE TABLE IF NOT EXISTS `dqs_representatives` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL,
  `languages` text COLLATE utf8_unicode_ci,
  `contacts` text COLLATE utf8_unicode_ci,
  `level` tinyint(3) unsigned DEFAULT '0',
  `date` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `rep_FK1` (`user_id`),
  KEY `rep_FK2` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_representatives: ~0 rows (approximately)
DELETE FROM `dqs_representatives`;
/*!40000 ALTER TABLE `dqs_representatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_representatives` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_representative_levels
CREATE TABLE IF NOT EXISTS `dqs_representative_levels` (
  `id` int(10) unsigned NOT NULL,
  `ref_comm_deposit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ref_comm_earning` decimal(10,2) NOT NULL DEFAULT '0.00',
  `other_ref_levels` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_representative_levels: 0 rows
DELETE FROM `dqs_representative_levels`;
/*!40000 ALTER TABLE `dqs_representative_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_representative_levels` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_secques
CREATE TABLE IF NOT EXISTS `dqs_secques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table dqscript_prod.dqs_secques: ~12 rows (approximately)
DELETE FROM `dqs_secques`;
/*!40000 ALTER TABLE `dqs_secques` DISABLE KEYS */;
INSERT INTO `dqs_secques` (`id`, `question`) VALUES
	(1, ' Who was your childhood hero? '),
	(2, 'What was your childhood nickname?'),
	(3, 'What was the name of your elementary school?'),
	(4, 'What was your first pets name?'),
	(5, 'What time of the day were you born? (hh:mm)'),
	(6, 'What is the name of your favorite childhood friend?'),
	(7, 'In what city or town was your first job?'),
	(8, 'In what town or city did your mother and father meet?'),
	(9, 'What is your grandmother\'s maiden name?'),
	(10, 'What was the make of your first car?'),
	(11, 'What is your favorite movie?'),
	(12, 'Where did you travel for the first time?');
/*!40000 ALTER TABLE `dqs_secques` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_sessions
CREATE TABLE IF NOT EXISTS `dqs_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_sessions: ~33 rows (approximately)
DELETE FROM `dqs_sessions`;
/*!40000 ALTER TABLE `dqs_sessions` DISABLE KEYS */;
INSERT INTO `dqs_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('70f1bd1dc4ea80ff2b74a41b44a82c56a4ed026e', '::1', 1586875923, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363837353835343b6471735f61646d696e5f617574687c613a383a7b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313538363837353932323b7d7374617475737c613a333a7b733a343a2274797065223b733a373a2273756363657373223b733a343a22666f726d223b733a31363a2267656e6572616c5f73657474696e6773223b733a333a226d7367223b733a31373a2253657474696e677320757064617465642e223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
	('f9f317285f2c05378062c47a17ae3f6ca246a815', '::1', 1586876174, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363837363137343b),
	('f42168b7ec011da4645e4722d65daef2f815afbe', '::1', 1588237975, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233373937343b),
	('0fe0a293fd506efd3af0c90aa219864a3a699450', '::1', 1588861603, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383836313630333b),
	('5d767de110315746a6b495e5f253400382787cb1', '::1', 1589271537, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393237313533373b),
	('de6345f20510dfb8665b2afd33e5bd4f3aa490ca', '::1', 1592303030, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539323330333033303b),
	('2233c6cd2126a81d671271a92263235f268b02e1', '::1', 1595158375, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539353135383337353b),
	('66479a57499a6aafe771238d98eb710939be8fdd', '::1', 1595589838, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539353538393833383b),
	('e1397031aa7e8a7f514a864d29f6b3ea74f8e2e2', '::1', 1595593220, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539353539333231393b7374617475737c613a333a7b733a343a2274797065223b733a373a2273756363657373223b733a343a22666f726d223b733a31313a2261646d696e5f6c6f67696e223b733a333a226d7367223b733a33393a22596f752068617665206265656e206c6f67676564206f757420666f7220696e6163746976697479223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
	('3d154b0a3336262c43f801e75157c5c8b44b2b6a', '::1', 1596111943, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363131313934333b),
	('56e765b91c215e4813c9bb7e151fc00078d9089c', '::1', 1598355900, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383335353839393b),
	('8239a9af507a1fac9e50749c4c04e4c03beae219', '::1', 1598356478, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383335363437383b),
	('3ad54e0610cbf3089e500f35437ea77d0072470b', '127.0.0.1', 1598955802, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383935353830323b),
	('3d8b698f263f7c862bdc933e27e7490c0b4e3df2', '::1', 1599659845, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313539393635393834353b),
	('36e50abc57a8c719b869e50b2410e3e8e035595f', '::1', 1601231971, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313233313937313b),
	('6135c7a7489a6b6cc3a50010511c4ecee4e1f4cc', '127.0.0.1', 1601993572, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313939333537323b),
	('725c8d1913186212b6e41fe3fb326c2ab3fb0f2c', '::1', 1603105318, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333130353331373b),
	('6763e601d13ea15e3f8b6a72335e674e006dbbbc', '::1', 1603115248, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333131353231383b6c6173745f706167657c733a353a226c6f67696e223b5f5f63695f766172737c613a323a7b733a393a226c6173745f70616765223b693a313630333131383234353b733a363a22737461747573223b733a333a226f6c64223b7d6471735f61646d696e5f617574687c613a383a7b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313630333131353234373b7d7374617475737c613a333a7b733a343a2274797065223b733a373a2273756363657373223b733a343a22666f726d223b733a31363a2267656e6572616c5f73657474696e6773223b733a333a226d7367223b733a31373a2253657474696e677320757064617465642e223b7d),
	('d1d8cadaa944880583b50908beab3990e6ec945a', '::1', 1603276319, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630333237363232313b6471735f61646d696e5f617574687c613a383a7b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313630333237363331383b7d),
	('94a5ec44b5b48d5419ce8957bd195cea805a3ff6', '::1', 1604347676, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343334373637353b),
	('daebf8b5c553c3fe8f6362397ab38cccb45c94f1', '::1', 1604951767, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343935313736363b),
	('7c3ab61d7bb8411b55e94bce14b49e9f2302dfd8', '::1', 1605186255, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353138363132353b6471735f61646d696e5f617574687c613a393a7b733a393a226c6173745f70616765223b733a32323a2261646d696e2f7061796d656e745f6761746577617973223b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313630353138363235343b7d7374617475737c613a333a7b733a343a2274797065223b733a373a2273756363657373223b733a343a22666f726d223b733a31363a2267656e6572616c5f73657474696e6773223b733a333a226d7367223b733a31373a2253657474696e677320757064617465642e223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
	('6a94508db05d510b7e59e8c74b90c064fe535464', '::1', 1605553163, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353535333136333b),
	('a7b8df299c0963ee76e55a54151063d3116b9bf5', '::1', 1606056668, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363035363636383b),
	('24d1d8d1023041e96c1f6d70d4be2323b05c9960', '::1', 1606724179, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363732333931333b6c6173745f706167657c733a353a226c6f67696e223b5f5f63695f766172737c613a313a7b733a393a226c6173745f70616765223b693a313630363732373737383b7d),
	('d98d841db5ec6adcee64ad8799ea0d75768ce529', '::1', 1607430850, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373433303835303b),
	('95d174b366c6bda99128ec9b2130f1533125f1b9', '::1', 1607431372, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373433313334353b6471735f61646d696e5f617574687c613a383a7b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313630373433313337313b7d),
	('b01a8ed2fb7e78c0293ec0bfe9e86b56373c3777', '::1', 1611076836, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313037363738373b6471735f61646d696e5f617574687c613a383a7b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313631313037363833363b7d),
	('658381a6a3fa22a595cfbf80b21bb6486eb58e48', '::1', 1611325483, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353438323b),
	('82e5c20e7cea459927925442ada54803fb53fb8f', '::1', 1611330526, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303532363b),
	('e129f358a660d152fc2a6d8ce7c9bc5110dec5be', '::1', 1611338465, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383436353b),
	('a91870698d2fe7241a9294367b9fe9a9f8823223', '::1', 1612964479, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323936343437393b),
	('7bb0538ffe639c0b124824b9c138e7a84c29c053', '::1', 1613634783, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333633343736393b6471735f61646d696e5f617574687c613a393a7b733a393a226c6173745f70616765223b733a32313a2261646d696e2f726570726573656e74617469766573223b733a31303a22617574686f72697a6564223b623a313b733a31303a2263757272656e745f6970223b733a333a223a3a31223b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a343a2274797065223b733a353a2261646d696e223b733a32333a22616c6c6f775f6d756c7469706c655f6c6f675f73657373223b733a313a2230223b733a31333a226c6173745f6163746976697479223b693a313631333633343738333b7d),
	('db9aaa48a1a805c6059efd15149dd615e53956c8', '::1', 1621689047, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313632313638393034373b),
	('e0f43de65ab2f46d3b64adb5ee130a849967de64', '127.0.0.1', 1622451445, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323435313434323b6c6173745f706167657c733a373a22636f6e74616374223b5f5f63695f766172737c613a313a7b733a393a226c6173745f70616765223b693a313632323435353034353b7d),
	('2305797ce9573e5c9b27bcff6bf31d0446168370', '::1', 1624370049, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343337303034393b),
	('b93f0d21c3690fa16e3c0f770767d84986702d11', '::1', 1625238212, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353233383231323b),
	('254d4ec7f887f93ce13b957a86a150f788097f35', '::1', 1626109469, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313632363130393436393b),
	('f9b4325921d87c0f15d01cdf4d322d814c20d766', '::1', 1629471221, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393437313232313b);
/*!40000 ALTER TABLE `dqs_sessions` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_settings
CREATE TABLE IF NOT EXISTS `dqs_settings` (
  `type` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'site',
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `value` text CHARACTER SET latin1,
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_settings: ~178 rows (approximately)
DELETE FROM `dqs_settings`;
/*!40000 ALTER TABLE `dqs_settings` DISABLE KEYS */;
INSERT INTO `dqs_settings` (`type`, `name`, `value`) VALUES
	('representative', 'min_representative_deposit', '0'),
	('representative', 'min_representative_referral', '0'),
	('representative', 'min_representative_active_referral', '0'),
	('referral', 'other_ref_deposit_levels', 'a:3:{i:2;a:3:{s:3:"row";s:4:"true";s:8:"ref_comm";s:1:"2";s:22:"ref_min_deposit_amount";s:1:"0";}i:3;a:3:{s:3:"row";s:4:"true";s:8:"ref_comm";s:3:"1.5";s:22:"ref_min_deposit_amount";s:1:"0";}i:4;a:3:{s:3:"row";s:4:"true";s:8:"ref_comm";s:1:"1";s:22:"ref_min_deposit_amount";s:1:"0";}}'),
	('referral', 'ref_deposit_type', 'ref'),
	('referral', 'ref_min_deposit_amount', '0'),
	('infobox', 'no_last_deposits', '10'),
	('infobox', 'no_last_withdrawals', '10'),
	('infobox', 'no_news', '2'),
	('infobox', 'no_testimonials', '2'),
	('infobox', 'no_top_depositors', '0'),
	('infobox', 'no_top_refcomm', '0'),
	('infobox', 'no_top_referrers', '0'),
	('infobox', 'package_display_type', 'grid'),
	('infobox', 'show_active_users', 'no'),
	('infobox', 'show_deposits_today', 'no'),
	('infobox', 'show_last_deposit', 'no'),
	('infobox', 'show_last_withdrawal', 'no'),
	('infobox', 'show_newest_user', 'yes'),
	('infobox', 'show_online_guests', 'yes'),
	('infobox', 'show_online_users', 'no'),
	('infobox', 'show_running_days', 'yes'),
	('infobox', 'show_total_deposits', 'yes'),
	('infobox', 'show_total_users', 'yes'),
	('infobox', 'show_total_withdrawals', 'yes'),
	('infobox', 'show_withdrawals_today', 'no'),
	('general', 'admin_uri', 'admin'),
	('general', 'allow_dep_from_acc', 'true'),
	('general', 'banned_timeout_signin', '2'),
	('general', 'can_change_email', 'true'),
	('general', 'can_change_wallet_acc', 'true'),
	('general', 'captcha_bg_color', '#ffffff'),
	('general', 'captcha_height', '35'),
	('general', 'captcha_num_chars', '6'),
	('general', 'captcha_text_color', '#000000'),
	('general', 'captcha_type', 'standard'),
	('general', 'captcha_width', '150'),
	('general', 'deduct_fee_from', 'payer'),
	('general', 'email_footer_msg', 'Yours sincerely,\r\n#sitename#'),
	('general', 'font_size', '14'),
	('general', 'max_attempts_signin', '5'),
	('general', 'recaptcha_secret_key', ''),
	('general', 'recaptcha_site_key', ''),
	('general', 'sendmailtype', 'phpmail'),
	('general', 'site_maintenance_ips', ''),
	('general', 'site_name', 'Dqscript'),
	('general', 'started_on', '07-03-2018'),
	('general', 'support_email', 'support@dqscript.localdev'),
	('general', 'system_email', 'no-reply@dqscript.localdev'),
	('general', 'timezone', 'UTC'),
	('general', 'use_create_ticket_captcha', 'true'),
	('general', 'use_register_captcha', 'true'),
	('general', 'use_reply_ticket_captcha', 'true'),
	('general', 'use_support_captcha', 'true'),
	('general', 'site_maintenance_msg', '&lt;h1&gt;We&amp;#39;ll be back soon!&lt;/h1&gt;\r\n\r\n&lt;p&gt;Sorry for the inconvenience but we&amp;rsquo;re performing some maintenance at the moment. If you need to you can always&amp;nbsp;&lt;a href=&quot;mailto:#support_email#&quot;&gt;contact us&lt;/a&gt;, otherwise we&amp;rsquo;ll be back online shortly!&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;mdash; #site_name#&lt;/p&gt;'),
	('general', 'req_sec_pass', 'true'),
	('general', 'use_login_captcha', 'true'),
	('crate', 'exchange_bch_usd', 'bitstamp'),
	('crate', 'exchange_btc_usd', 'bitstamp'),
	('crate', 'exchange_eth_usd', 'bitstamp'),
	('crate', 'exchange_ltc_usd', 'bitstamp'),
	('crate', 'rate_bch_usd', ''),
	('crate', 'rate_btc_usd', ''),
	('crate', 'rate_eth_usd', ''),
	('crate', 'rate_ltc_usd', ''),
	('crate', 'rate_doge_usd', ''),
	('crate', 'exchange_doge_usd', 'bittrex'),
	('crate', 'ts_btc_usd', '0'),
	('crate', 'ts_ltc_usd', '0'),
	('crate', 'ts_eth_usd', '0'),
	('crate', 'ts_doge_usd', '0'),
	('crate', 'ts_bch_usd', '0'),
	('cron', 'lock', '0'),
	('cron', 'last_ts', '0'),
	('referral', 'show_refdetails', 'true'),
	('exchange', 'exrate_percentage_pm_pr', '0'),
	('exchange', 'exrate_solid_pm_pr', '0'),
	('exchange', 'exrate_percentage_pm_pz', '0'),
	('exchange', 'exrate_solid_pm_pz', '0'),
	('exchange', 'exrate_percentage_pm_btc', '0'),
	('exchange', 'exrate_solid_pm_btc', '0'),
	('exchange', 'exrate_percentage_pm_ltc', '0'),
	('exchange', 'exrate_solid_pm_ltc', '0'),
	('exchange', 'exrate_percentage_pm_doge', '0'),
	('exchange', 'exrate_solid_pm_doge', '0'),
	('exchange', 'exrate_percentage_pm_bch', '0'),
	('exchange', 'exrate_solid_pm_bch', '0'),
	('exchange', 'exrate_percentage_pr_pm', '0'),
	('exchange', 'exrate_solid_pr_pm', '0'),
	('exchange', 'exrate_percentage_pr_pz', '0'),
	('exchange', 'exrate_solid_pr_pz', '0'),
	('exchange', 'exrate_percentage_pr_btc', '0'),
	('exchange', 'exrate_solid_pr_btc', '0'),
	('exchange', 'exrate_percentage_pr_ltc', '0'),
	('exchange', 'exrate_solid_pr_ltc', '0'),
	('exchange', 'exrate_percentage_pr_doge', '0'),
	('exchange', 'exrate_solid_pr_doge', '0'),
	('exchange', 'exrate_percentage_pr_bch', '0'),
	('exchange', 'exrate_solid_pr_bch', '0'),
	('exchange', 'exrate_percentage_pz_pm', '0'),
	('exchange', 'exrate_solid_pz_pm', '0'),
	('exchange', 'exrate_percentage_pz_pr', '0'),
	('exchange', 'exrate_solid_pz_pr', '0'),
	('exchange', 'exrate_percentage_pz_btc', '0'),
	('exchange', 'exrate_solid_pz_btc', '0'),
	('exchange', 'exrate_percentage_pz_ltc', '0'),
	('exchange', 'exrate_solid_pz_ltc', '0'),
	('exchange', 'exrate_percentage_pz_doge', '0'),
	('exchange', 'exrate_solid_pz_doge', '0'),
	('exchange', 'exrate_percentage_pz_bch', '0'),
	('exchange', 'exrate_solid_pz_bch', '0'),
	('exchange', 'exrate_percentage_btc_pm', '0'),
	('exchange', 'exrate_solid_btc_pm', '0'),
	('exchange', 'exrate_percentage_btc_pr', '0'),
	('exchange', 'exrate_solid_btc_pr', '0'),
	('exchange', 'exrate_percentage_btc_pz', '0'),
	('exchange', 'exrate_solid_btc_pz', '0'),
	('exchange', 'exrate_percentage_btc_ltc', '0'),
	('exchange', 'exrate_solid_btc_ltc', '0'),
	('exchange', 'exrate_percentage_btc_doge', '0'),
	('exchange', 'exrate_solid_btc_doge', '0'),
	('exchange', 'exrate_percentage_btc_bch', '0'),
	('exchange', 'exrate_solid_btc_bch', '0'),
	('exchange', 'exrate_percentage_ltc_pm', '0'),
	('exchange', 'exrate_solid_ltc_pm', '0'),
	('exchange', 'exrate_percentage_ltc_pr', '0'),
	('exchange', 'exrate_solid_ltc_pr', '0'),
	('exchange', 'exrate_percentage_ltc_pz', '0'),
	('exchange', 'exrate_solid_ltc_pz', '0'),
	('exchange', 'exrate_percentage_ltc_btc', '0'),
	('exchange', 'exrate_solid_ltc_btc', '0'),
	('exchange', 'exrate_percentage_ltc_doge', '0'),
	('exchange', 'exrate_solid_ltc_doge', '0'),
	('exchange', 'exrate_percentage_ltc_bch', '0'),
	('exchange', 'exrate_solid_ltc_bch', '0'),
	('exchange', 'exrate_percentage_doge_pm', '0'),
	('exchange', 'exrate_solid_doge_pm', '0'),
	('exchange', 'exrate_percentage_doge_pr', '0'),
	('exchange', 'exrate_solid_doge_pr', '0'),
	('exchange', 'exrate_percentage_doge_pz', '0'),
	('exchange', 'exrate_solid_doge_pz', '0'),
	('exchange', 'exrate_percentage_doge_btc', '0'),
	('exchange', 'exrate_solid_doge_btc', '0'),
	('exchange', 'exrate_percentage_doge_ltc', '0'),
	('exchange', 'exrate_solid_doge_ltc', '0'),
	('exchange', 'exrate_percentage_doge_bch', '0'),
	('exchange', 'exrate_solid_doge_bch', '0'),
	('exchange', 'exrate_percentage_bch_pm', '0'),
	('exchange', 'exrate_solid_bch_pm', '0'),
	('exchange', 'exrate_percentage_bch_pr', '0'),
	('exchange', 'exrate_solid_bch_pr', '0'),
	('exchange', 'exrate_percentage_bch_pz', '0'),
	('exchange', 'exrate_solid_bch_pz', '0'),
	('exchange', 'exrate_percentage_bch_btc', '0'),
	('exchange', 'exrate_solid_bch_btc', '0'),
	('exchange', 'exrate_percentage_bch_ltc', '0'),
	('exchange', 'exrate_solid_bch_ltc', '0'),
	('exchange', 'exrate_percentage_bch_doge', '0'),
	('exchange', 'exrate_solid_bch_doge', '0'),
	('referral', 'donotpayrefcomm_ifbalinvested', 'true'),
	('general', 'currency_decp', '2'),
	('general', 'double_optin_reg', 'true'),
	('general', 'site_email_header', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=windows-1252&quot;&gt;\r\n    &lt;title&gt;#sitename#&lt;/title&gt;\r\n    &lt;style&gt;\r\n        body {\r\n            height: 100%;\r\n            background: #f6f6f6;\r\n            font-size: 13px;\r\n            font-family: \'Arial\', sans-serif;\r\n            font-weight: 400;\r\n            color:#333;\r\n        }\r\n\r\n        a:link, a:visited {\r\n            text-decoration: none;\r\n            color: #007EFA;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        h2 {\r\n            line-height: 5px;\r\n			font-weight:600;\r\n			color:#666;\r\n        }\r\n\r\n        .header, .main-content {\r\n            padding: 15px 35px;\r\n        }\r\n\r\n        .header {\r\n            background: #f4f4f4;\r\n            border: solid 1px #ddd;\r\n            border-bottom: none;\r\n\r\n        }\r\n\r\n        .main-content {\r\n            background: #fff;\r\n            border: solid 1px #ddd;\r\n            padding-top: 25px;\r\n            padding-bottom: 25px;\r\n        }\r\n\r\n        .footer {\r\n            background: transparent;\r\n            padding: 10px 20px;\r\n            text-align: center;\r\n            font-size: 11px;\r\n        }\r\n\r\n        .footer .copyright {\r\n            margin-top: 5px;\r\n            color: #bbb9cd;\r\n        }\r\n\r\n        #wrapper {\r\n            display: block;\r\n            width: 100%;\r\n            padding-top: 20px;\r\n        }\r\n\r\n        .container {\r\n            width: 900px;\r\n            margin: 0 auto;\r\n            display: table;\r\n            padding: 0px;\r\n\r\n        }\r\n\r\n        pre\r\n        {\r\n            display: block;\r\n            margin-top: 15px;\r\n            font-size: 11px;\r\n        }\r\n\r\n    &lt;/style&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;div id=&quot;wrapper&quot;&gt;\r\n    &lt;div class=&quot;container&quot;&gt;\r\n\r\n        &lt;div class=&quot;header&quot;&gt;\r\n            &lt;h2&gt;&lt;a href=&quot;#siteurl#&quot;&gt;#sitename#&lt;/a&gt;&lt;/h2&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;main-content&quot;&gt;'),
	('general', 'site_email_footer', '&lt;pre&gt;Note: This is a notification email. Please do not reply to it.&lt;/pre&gt;\r\n\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;footer&quot;&gt;\r\n            &lt;a href=&quot;#siteurl#&quot;&gt;Visit our site&lt;/a&gt; | &lt;a href=&quot;#siteurl#/login&quot;&gt;Login to account&lt;/a&gt; | &lt;a\r\n                href=&quot;#siteurl#/contact&quot;&gt;Contact us&lt;/a&gt;\r\n            &lt;div class=&quot;copyright&quot;&gt;Copyright &amp;copy; #sitename# #cur_year#. All rights reserved.&lt;/div&gt;\r\n        &lt;/div&gt;\r\n\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;'),
	('crate', 'ts_xrp_usd', '0'),
	('crate', 'rate_xrp_usd', ''),
	('crate', 'exchange_xrp_usd', 'bitstamp'),
	('crate', 'ts_dash_usd', '0'),
	('crate', 'rate_dash_usd', ''),
	('crate', 'exchange_dash_usd', 'bittrex'),
	('crate', 'ts_xmr_usd', '0'),
	('crate', 'rate_xmr_usd', ''),
	('crate', 'exchange_xmr_usd', 'bittrex'),
	('crate', 'ts_trx_usd', '0'),
	('crate', 'rate_trx_usd', ''),
	('crate', 'exchange_trx_usd', 'bittrex'),
	('crate', 'ts_usdt_usd', '0'),
	('crate', 'rate_usdt_usd', ''),
	('crate', 'exchange_usdt_usd', 'bitfinex'),
	('general', 'max_auto_withdrawal', '0');
/*!40000 ALTER TABLE `dqs_settings` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_staff_roles
CREATE TABLE IF NOT EXISTS `dqs_staff_roles` (
  `id` tinyint(1) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_staff_roles: 2 rows
DELETE FROM `dqs_staff_roles`;
/*!40000 ALTER TABLE `dqs_staff_roles` DISABLE KEYS */;
INSERT INTO `dqs_staff_roles` (`id`, `type`, `name`, `permissions`) VALUES
	(1, 'sub_admin', 'Sub-Admin', 'a:57:{s:10:"users_list";s:4:"true";s:9:"users_add";s:4:"true";s:10:"users_edit";s:4:"true";s:12:"users_delete";s:4:"true";s:28:"pending_crypto_payments_list";s:4:"true";s:18:"bonus_penalty_list";s:4:"true";s:14:"mass_mail_list";s:4:"true";s:24:"pending_withdrawals_list";s:4:"true";s:26:"pending_withdrawals_action";s:4:"true";s:30:"pending_withdrawals_manual_pay";s:4:"true";s:17:"testimonials_list";s:4:"true";s:17:"testimonials_edit";s:4:"true";s:19:"testimonials_delete";s:4:"true";s:20:"representatives_list";s:4:"true";s:19:"representatives_add";s:4:"true";s:20:"representatives_edit";s:4:"true";s:22:"representatives_delete";s:4:"true";s:13:"deposits_list";s:4:"true";s:13:"deposits_edit";s:4:"true";s:17:"transactions_list";s:4:"true";s:17:"transactions_view";s:4:"true";s:12:"tickets_list";s:4:"true";s:12:"tickets_edit";s:4:"true";s:13:"tickets_reply";s:4:"true";s:18:"tickets_msg_delete";s:4:"true";s:14:"tickets_delete";s:4:"true";s:9:"news_list";s:4:"true";s:8:"news_add";s:4:"true";s:9:"news_edit";s:4:"true";s:11:"news_delete";s:4:"true";s:21:"general_settings_list";s:4:"true";s:21:"payment_gateways_list";s:4:"true";s:21:"payment_gateways_edit";s:4:"true";s:28:"payment_gateways_fees_limits";s:4:"true";s:13:"packages_list";s:4:"true";s:12:"packages_add";s:4:"true";s:13:"packages_edit";s:4:"true";s:15:"packages_delete";s:4:"true";s:13:"holidays_list";s:4:"true";s:12:"holidays_add";s:4:"true";s:15:"holidays_delete";s:4:"true";s:26:"representative_system_list";s:4:"true";s:20:"referral_system_list";s:4:"true";s:23:"ticket_departments_list";s:4:"true";s:22:"ticket_departments_add";s:4:"true";s:23:"ticket_departments_edit";s:4:"true";s:23:"ticket_help_topics_list";s:4:"true";s:22:"ticket_help_topics_add";s:4:"true";s:23:"ticket_help_topics_edit";s:4:"true";s:25:"ticket_help_topics_delete";s:4:"true";s:15:"info_boxes_list";s:4:"true";s:20:"email_templates_list";s:4:"true";s:20:"email_templates_edit";s:4:"true";s:20:"exchange_system_list";s:4:"true";s:15:"access_log_list";s:4:"true";s:25:"duplicate_ip_checker_list";s:4:"true";s:17:"file_manager_list";s:4:"true";}'),
	(2, 'support', 'Support', 'a:27:{s:10:"users_list";s:4:"true";s:10:"users_edit";s:4:"true";s:24:"pending_withdrawals_list";s:4:"true";s:17:"testimonials_list";s:4:"true";s:17:"testimonials_edit";s:4:"true";s:19:"testimonials_delete";s:4:"true";s:20:"representatives_list";s:4:"true";s:13:"deposits_list";s:4:"true";s:17:"transactions_list";s:4:"true";s:17:"transactions_view";s:4:"true";s:12:"tickets_list";s:4:"true";s:12:"tickets_edit";s:4:"true";s:13:"tickets_reply";s:4:"true";s:18:"tickets_msg_delete";s:4:"true";s:14:"tickets_delete";s:4:"true";s:9:"news_list";s:4:"true";s:8:"news_add";s:4:"true";s:9:"news_edit";s:4:"true";s:11:"news_delete";s:4:"true";s:13:"packages_list";s:4:"true";s:23:"ticket_departments_list";s:4:"true";s:22:"ticket_departments_add";s:4:"true";s:23:"ticket_departments_edit";s:4:"true";s:23:"ticket_help_topics_list";s:4:"true";s:22:"ticket_help_topics_add";s:4:"true";s:23:"ticket_help_topics_edit";s:4:"true";s:25:"ticket_help_topics_delete";s:4:"true";}');
/*!40000 ALTER TABLE `dqs_staff_roles` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_testimonials
CREATE TABLE IF NOT EXISTS `dqs_testimonials` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) unsigned NOT NULL,
  `rating` int(1) unsigned NOT NULL DEFAULT '1',
  `status` varchar(15) NOT NULL DEFAULT 'unapproved',
  PRIMARY KEY (`id`),
  KEY `i1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_testimonials: ~0 rows (approximately)
DELETE FROM `dqs_testimonials`;
/*!40000 ALTER TABLE `dqs_testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_testimonials` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_tickets
CREATE TABLE IF NOT EXISTS `dqs_tickets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `help_topic` text COLLATE utf8_unicode_ci,
  `subject` text COLLATE utf8_unicode_ci,
  `date` int(11) unsigned NOT NULL,
  `modified_date` int(11) unsigned NOT NULL DEFAULT '0',
  `department_id` int(11) unsigned NOT NULL,
  `status` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'open',
  PRIMARY KEY (`id`),
  KEY `i3` (`uid`),
  KEY `i4` (`date`),
  KEY `i1` (`user_id`,`uid`),
  KEY `i2` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table dqscript_prod.dqs_tickets: ~0 rows (approximately)
DELETE FROM `dqs_tickets`;
/*!40000 ALTER TABLE `dqs_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_tickets` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_ticket_depts
CREATE TABLE IF NOT EXISTS `dqs_ticket_depts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_ticket_depts: ~2 rows (approximately)
DELETE FROM `dqs_ticket_depts`;
/*!40000 ALTER TABLE `dqs_ticket_depts` DISABLE KEYS */;
INSERT INTO `dqs_ticket_depts` (`id`, `name`, `status`) VALUES
	(1, 'Technical', 'active'),
	(2, 'Sales', 'active');
/*!40000 ALTER TABLE `dqs_ticket_depts` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_ticket_help_topics
CREATE TABLE IF NOT EXISTS `dqs_ticket_help_topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `department_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_ticket_help_topics: ~4 rows (approximately)
DELETE FROM `dqs_ticket_help_topics`;
/*!40000 ALTER TABLE `dqs_ticket_help_topics` DISABLE KEYS */;
INSERT INTO `dqs_ticket_help_topics` (`id`, `title`, `department_id`) VALUES
	(1, 'Account-Deposit', 1),
	(2, 'Account-Withdrawal', 1),
	(3, 'Account-Overview', 1),
	(4, 'Partnership-Offer', 2);
/*!40000 ALTER TABLE `dqs_ticket_help_topics` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_ticket_msgs
CREATE TABLE IF NOT EXISTS `dqs_ticket_msgs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `msg_user` int(11) unsigned NOT NULL,
  `ticket_id` int(11) unsigned NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) unsigned NOT NULL,
  `support_msg` varchar(5) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `i1` (`user_id`,`ticket_id`),
  KEY `i2` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_ticket_msgs: ~0 rows (approximately)
DELETE FROM `dqs_ticket_msgs`;
/*!40000 ALTER TABLE `dqs_ticket_msgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_ticket_msgs` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_transactions
CREATE TABLE IF NOT EXISTS `dqs_transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `deposit_id` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(20,10) NOT NULL DEFAULT '0.0000000000',
  `description` text,
  `description_2` text,
  `processor_id` int(3) unsigned NOT NULL,
  `type` varchar(30) NOT NULL,
  `date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i3` (`uid`),
  KEY `i4` (`date`),
  KEY `i1` (`user_id`,`type`(1)),
  KEY `i2` (`type`(1),`processor_id`),
  KEY `tr_fk2` (`deposit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_transactions: ~0 rows (approximately)
DELETE FROM `dqs_transactions`;
/*!40000 ALTER TABLE `dqs_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_transactions` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_users
CREATE TABLE IF NOT EXISTS `dqs_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(64) NOT NULL,
  `secondary_password` varchar(64) NOT NULL DEFAULT '',
  `secques` int(2) NOT NULL DEFAULT '0',
  `secans` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(150) DEFAULT '',
  `city` varchar(80) DEFAULT '',
  `state` varchar(80) DEFAULT '',
  `country` int(3) DEFAULT '0',
  `zip` varchar(30) DEFAULT '',
  `phone` varchar(30) DEFAULT '',
  `telegram` varchar(30) DEFAULT '',
  `whatsapp` varchar(30) DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `reg_ip` varchar(50) NOT NULL DEFAULT '',
  `last_ip` varchar(50) NOT NULL DEFAULT '',
  `current_ip` varchar(50) NOT NULL DEFAULT '',
  `last_access` int(11) NOT NULL DEFAULT '0',
  `last_agent` varchar(255) NOT NULL DEFAULT '',
  `last_activity` int(11) NOT NULL DEFAULT '0',
  `upline` int(11) NOT NULL DEFAULT '0',
  `detect_ip_change` varchar(10) NOT NULL DEFAULT 'disabled',
  `detect_browser_change` varchar(10) NOT NULL DEFAULT 'disabled',
  `twofa` text,
  `ip_whitelist` text,
  `allow_multiple_log_sess` tinyint(1) NOT NULL DEFAULT '0',
  `auto_withdrawal` varchar(5) NOT NULL DEFAULT 'yes',
  `daily_withdrawal` decimal(20,10) NOT NULL DEFAULT '0.0000000000',
  `online` varchar(5) NOT NULL DEFAULT 'no',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `status` varchar(15) NOT NULL DEFAULT 'inactive',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `reg_date` (`reg_date`),
  KEY `reg_ip` (`reg_ip`),
  KEY `username` (`username`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table dqscript_prod.dqs_users: ~1 rows (approximately)
DELETE FROM `dqs_users`;
/*!40000 ALTER TABLE `dqs_users` DISABLE KEYS */;
INSERT INTO `dqs_users` (`id`, `username`, `email`, `password`, `secondary_password`, `secques`, `secans`, `address`, `city`, `state`, `country`, `zip`, `phone`, `telegram`, `whatsapp`, `reg_date`, `reg_ip`, `last_ip`, `current_ip`, `last_access`, `last_agent`, `last_activity`, `upline`, `detect_ip_change`, `detect_browser_change`, `twofa`, `ip_whitelist`, `allow_multiple_log_sess`, `auto_withdrawal`, `daily_withdrawal`, `online`, `type`, `status`) VALUES
	(1, 'admin', 'admin@gmail.com', '9c31a305afd51ef0071797d626fc528e139d7200c7885bbb504588d77af3cc50', '', 0, '', '', '', '', 0, '', '', '', '', 0, '::1', '::1', '::1', 1611674754, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', 0, 0, 'disabled', 'disabled', NULL, NULL, 0, 'yes', 0.0000000000, 'no', 'admin', 'active');
/*!40000 ALTER TABLE `dqs_users` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_vercodes
CREATE TABLE IF NOT EXISTS `dqs_vercodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(30) NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`user_id`,`type`(1))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_vercodes: ~0 rows (approximately)
DELETE FROM `dqs_vercodes`;
/*!40000 ALTER TABLE `dqs_vercodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_vercodes` ENABLE KEYS */;

-- Dumping structure for table dqscript_prod.dqs_wallet_accounts
CREATE TABLE IF NOT EXISTS `dqs_wallet_accounts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `processor_id` int(11) unsigned NOT NULL,
  `account` text,
  `tag` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `i1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dqscript_prod.dqs_wallet_accounts: ~0 rows (approximately)
DELETE FROM `dqs_wallet_accounts`;
/*!40000 ALTER TABLE `dqs_wallet_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `dqs_wallet_accounts` ENABLE KEYS */;

-- Dumping structure for trigger dqscript_prod.after_insert_deposit
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `after_insert_deposit` AFTER INSERT ON `dqs_deposits` FOR EACH ROW BEGIN DECLARE f INT; 
	SET f = (SELECT count(*) FROM dqs_funds WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'active_deposit'); 	
	IF (f > 0 AND NEW.status = 'active') THEN 
		UPDATE dqs_funds SET amount = amount + NEW.a_amount WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'active_deposit'; 
	ELSE 
		INSERT INTO dqs_funds SET amount = NEW.a_amount, user_id = NEW.user_id, processor_id = NEW.processor_id, type = 'active_deposit'; 
	END IF; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.after_insert_transaction
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `after_insert_transaction` AFTER INSERT ON `dqs_transactions` FOR EACH ROW BEGIN DECLARE f INT; 
	SET f = (SELECT count(*) FROM dqs_funds WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'balance'); 	
	IF (f > 0) THEN 
		UPDATE dqs_funds SET amount = amount + NEW.amount WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'balance'; 
	ELSE 
		INSERT INTO dqs_funds SET amount = NEW.amount, user_id = NEW.user_id, processor_id = NEW.processor_id, type = 'balance'; 
	END IF; 
	
	SET f = (SELECT count(*) FROM dqs_funds WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = NEW.type); 	
	IF (f > 0) THEN 
		UPDATE dqs_funds SET amount = amount + ABS(NEW.amount) WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = NEW.type; 
	ELSE 
		INSERT INTO dqs_funds SET amount = ABS(NEW.amount), user_id = NEW.user_id, processor_id = NEW.processor_id, type = NEW.type; 
	END IF; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.after_update_deposit
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `after_update_deposit` AFTER UPDATE ON `dqs_deposits` FOR EACH ROW BEGIN DECLARE f INT; 
IF (OLD.status = 'active' && NEW.status = 'active') THEN 
UPDATE dqs_funds SET amount = amount - OLD.amount WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = 'active_deposit';
UPDATE dqs_funds SET amount = amount + NEW.amount WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = 'active_deposit'; 
END IF; 

IF (OLD.status = 'active' && NEW.status = 'expired') THEN 
SET f = (SELECT count(*) FROM dqs_funds WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'active_deposit'); 
IF (f > 0) THEN 
UPDATE dqs_funds SET amount = amount - OLD.amount WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = 'active_deposit';
END IF;
END IF; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.after_update_transaction
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `after_update_transaction` AFTER UPDATE ON `dqs_transactions` FOR EACH ROW BEGIN DECLARE f INT; 
	UPDATE dqs_funds SET amount = amount - OLD.amount WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = 'balance'; 
	
	SET f = (SELECT count(*) FROM dqs_funds WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'balance'); 
	IF (f > 0) THEN 
		UPDATE dqs_funds SET amount = amount + NEW.amount WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = 'balance'; 
	ELSE 
		INSERT INTO dqs_funds SET amount = NEW.amount, user_id = NEW.user_id, processor_id = NEW.processor_id, type = 'balance'; 
	END IF; 
	
	UPDATE dqs_funds SET amount = amount - ABS(OLD.amount) WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = OLD.type; 
	
	SET f = (SELECT count(*) FROM dqs_funds WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = NEW.type); 
	IF (f > 0) THEN 
		UPDATE dqs_funds SET amount = amount + ABS(NEW.amount) WHERE user_id = NEW.user_id AND processor_id = NEW.processor_id AND type = NEW.type; 
	ELSE 
		INSERT INTO dqs_funds SET amount = ABS(NEW.amount), user_id = NEW.user_id, processor_id = NEW.processor_id, type = NEW.type; 
	END IF; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.before_delete_deposit
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_delete_deposit` BEFORE DELETE ON `dqs_deposits` FOR EACH ROW BEGIN 
	UPDATE dqs_funds SET amount = amount - OLD.a_amount WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = 'active_deposit'; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.before_delete_package
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_delete_package` BEFORE DELETE ON `dqs_packages` FOR EACH ROW BEGIN
	DELETE FROM dqs_deposits WHERE package_id = OLD.id;
	DELETE FROM dqs_plans WHERE package_id = OLD.id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.before_delete_tickets
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_delete_tickets` BEFORE DELETE ON `dqs_tickets` FOR EACH ROW BEGIN
	DELETE FROM dqs_ticket_msgs WHERE ticket_id = OLD.id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.before_delete_ticket_depts
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_delete_ticket_depts` BEFORE DELETE ON `dqs_ticket_depts` FOR EACH ROW BEGIN
	DELETE FROM dqs_tickets WHERE department_id = OLD.id;
	DELETE FROM dqs_ticket_help_topics WHERE department_id = OLD.id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.before_delete_transaction
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_delete_transaction` BEFORE DELETE ON `dqs_transactions` FOR EACH ROW BEGIN 
	UPDATE dqs_funds SET amount = amount - OLD.amount WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = 'balance'; 
	UPDATE dqs_funds SET amount = amount - ABS(OLD.amount) WHERE user_id = OLD.user_id AND processor_id = OLD.processor_id AND type = OLD.type; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dqscript_prod.before_delete_user
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `before_delete_user` BEFORE DELETE ON `dqs_users` FOR EACH ROW BEGIN
	DELETE FROM dqs_access_log WHERE user_id = OLD.id;
	DELETE FROM dqs_deposits WHERE user_id = OLD.id;
	DELETE FROM dqs_funds WHERE user_id = OLD.id;
	DELETE FROM dqs_representatives WHERE user_id = OLD.id;
	DELETE FROM dqs_testimonials WHERE user_id = OLD.id;
	DELETE FROM dqs_tickets WHERE user_id = OLD.id;
	DELETE FROM dqs_ticket_msgs WHERE user_id = OLD.id;
	DELETE FROM dqs_transactions WHERE user_id = OLD.id;
	DELETE FROM dqs_vercodes WHERE user_id = OLD.id;
	DELETE FROM dqs_wallet_accounts WHERE user_id = OLD.id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
