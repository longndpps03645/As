-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2011 at 09:40 PM
-- Server version: 5.0.91
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chenzish_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE IF NOT EXISTS `tbl_config` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `detail` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `code`, `name`, `detail`, `date_added`, `last_modified`) VALUES
(1, 'total_visits', 'Tổng', '206', '2009-11-17 10:59:37', '2011-01-16 05:23:59'),
(2, 'currencyUnit', 'Đơn vị tiền tệ', 'VNĐ', '2009-11-17 10:59:37', '2011-01-16 05:23:55'),
(3, 'adminEmail', 'Email', 'dqt_92@yahoo.com', '2009-11-17 10:59:37', '2011-01-16 05:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE IF NOT EXISTS `tbl_content` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(225) character set utf8 collate utf8_unicode_ci default NULL,
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `parent` int(11) NOT NULL default '0',
  `subject` text character set utf8 collate utf8_unicode_ci,
  `detail_short` text character set utf8 collate utf8_unicode_ci,
  `detail` longtext character set utf8 collate utf8_unicode_ci,
  `image` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `image_large` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `sort` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `lang` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  `new` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`, `new`) VALUES
(35, '', 'Contact', 87, '<p align="center">&nbsp;</p>', '<p align="center"><span id="result_box" class="medium_text"><span title="??n" c=""></span></span></p>\r\n<p align="center">&nbsp;</p>', '', '', '', 0, 0, '2008-04-29 22:54:02', '2011-01-16 05:26:37', 'en', 0),
(119, '', 'Introduction', 88, '', '', '', '', '', 0, 0, '2008-12-05 14:51:10', '2011-01-15 14:07:47', 'en', 0),
(38, '', 'Service', 20, '', '<p align="justify"><span class="text_xanh">Nh?ng nguy&ecirc;n t?c m?i c?a d?ng c? c?t (Ph?n 1) (16-10-2008 07:58:50)</span><em><br />\r\nNg&agrave;nh c&ocirc;ng ngh? c?t g?t ?&atilde; c&oacute; nh?ng b??c ph&aacute;t tri?n nhanh ch&oacute;ng nh?m ?&aacute;p ?ng nhu c?u thay ??i v&agrave; s? d?ng c&aacute;c v?t li?u ph&ocirc;i ch?t l??ng cao h?n. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng c? kh&iacute; c?n ???c th&ocirc;ng tin v? nh?ng ch?ng lo?i d?ng c? c?t, v?i ch?t l??ng t?t t? c&aacute;c nh&agrave; cung c?p kh&aacute;c nhau. </em></p>\r\n<div align="justify"><strong><br />\r\n</strong></div>\r\n<p align="justify"><img height="150" alt="" hspace="8" width="350" align="left" src="http://viettienthanh.net/demo/minh_thang1/images/dungcucat1210081.jpg" />Trong c&ocirc;ng ngh? kim lo?i, kh&ocirc;ng c&oacute; s? l?a ch?n kh&aacute;c ngo&agrave;i vi?c ch?p nh?n nh?ng c&ocirc;ng ngh? hi?n ??i. Nh?ng y&ecirc;u c?u trong gia c&ocirc;ng c?t g?t ?&atilde; c&oacute; t? l&acirc;u v&agrave; ng&agrave;y c&agrave;ng ?&ograve;i h?i ? m?c cao h?n v&agrave; ch? c&ocirc;ng ngh? hi?n ??i m?i c&oacute; kh? n?ng ?&aacute;p ?ng ???c nh?ng y&ecirc;u c?u ?&oacute;. </p>\r\n<p align="justify">Chris Mill, gi&aacute;m ??c d? &aacute;n ph&aacute;t tri?n ng&agrave;nh h&agrave;ng kh&ocirc;ng v?i Sandvik Coromant, ?&atilde; l?y c&ocirc;ng nghi?p h&agrave;ng kh&ocirc;ng l&agrave;m v&iacute; d? minh h?a. ?? ?&aacute;p ?ng ???c nh?ng y&ecirc;u c?u s?n xu?t c?a c&ocirc;ng nghi?p h&agrave;ng kh&ocirc;ng trong 20 n?m, n?ng su?t gia c&ocirc;ng s? c?n t?ng l&ecirc;n ba l?n trong kho?ng th?i gian gi?a b&acirc;y gi? v&agrave; ti?p theo. ?i?u n&agrave;y co? kha? thi hay kh&ocirc;ng? </p>\r\n<p align="justify">&Yacute; ??nh t?ng l&ecirc;n ba l?n n?ng su?t gia c&ocirc;ng s? k&eacute;o theo s? l??ng m&aacute;y c&ocirc;ng c? t?ng l&ecirc;n ba l?n, v?i nh?ng ph??ng th?c gia c&ocirc;ng c? kh&iacute; v?n c&oacute; nh? ng&agrave;y nay. </p>\r\n<p align="justify">&quot;Kh&ocirc;ng h?p l&yacute;&quot;, &ocirc;ng ta n&oacute;i. Vi?c t?ng s? l??ng m&aacute;y c&ocirc;ng c? l&ecirc;n ??ng ngh?a v?i vi?c t?ng s? l???ng nh&acirc;n vi&ecirc;n ?i?u khi?n m&aacute;y l&ecirc;n m?c t??ng t? nh? v?y. Th?t kh&oacute; ?? h&igrave;nh dung, v?i m?t s? l??ng ph??ng ti?n m&aacute;y m&oacute;c ?y c?n b? tr&iacute; s? l??ng nh&acirc;n s? c&oacute; ?? chuy&ecirc;n m&ocirc;n nh? th? n&agrave;o ?? ?i?u khi?n m&aacute;y. </p>\r\n<p align="justify">Kh&ocirc;ng, n?ng su?t t?ng l&ecirc;n s? ??n t? nh?ng c&ocirc;ng ngh? ti&ecirc;n ti?n m&agrave; ? ?&oacute; cho ph&eacute;p v?i c&ugrave;ng m?t l??ng nh&acirc;n vi&ecirc;n nh?ng c&oacute; th? gi&aacute;m s&aacute;t ???c m?t kh?i l???ng c&ocirc;ng vi?c l?n h?n nhi?u. </p>\r\n<p align="justify"><strong>V?y c&ocirc;ng ngh? hi?n ??i nay s? ??n t? ?&acirc;u?</strong> </p>\r\n<p align="justify">M&aacute;y c&ocirc;ng c? ?ang ph&aacute;t tri?n m?nh, ng&agrave;y c&agrave;ng tr? n&ecirc;n nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c h?n. Tuy nhi&ecirc;n, b?n th&acirc;n ph&ocirc;i li&ecirc;?u kh&ocirc;ng ph&aacute;t tri?n theo c&aacute;ch gia t?ng gi?ng nh? v?y, ch&uacute;ng ?ang thay ??i m?t c&aacute;ch c?n b?n. Ng&agrave;y nay ph&ocirc;i gia c&ocirc;ng kh&ocirc;ng ch? c&oacute; y&ecirc;u c?u v? m?c ?? ch&iacute;nh x&aacute;c m&agrave; c&ograve;n ? ch?t l??ng nguy&ecirc;n li?u, do v?y khi nh?n h&agrave;ng, ??n v? s?n xu?t s? g?p ph?i nh?ng v?t li?u m?i th&acirc;?m chi? ch?a h? g??p. ?&oacute; l&agrave; nh?ng v?t li?u bao g?m h?p kim titan, c&aacute;c lo?i h?p kim tr&ecirc;n n?n niken v&agrave; th&eacute;p &eacute;p graphit (CGI), </p>', '', '', '', 0, 0, '2008-04-29 22:55:25', '2008-12-17 09:00:45', 'en', 0),
(40, 'http://www.mail.yahoo.com.vn', 'mail yahoo', 19, '', '', '', '', '', 0, 0, '2008-04-29 22:56:40', '2008-11-27 00:10:42', 'en', 0),
(148, 'http://www.trangvangwebsite.com', 'trang v', 10, '', '', '', 'images/content/link_s148.jpg', '', 2, 0, '2009-06-08 11:06:27', '2009-06-08 11:51:07', 'vn', 0),
(149, 'http://www.thuonggiavietnam.net', 'th??ng gia', 10, '', '', '', 'images/content/link_s149.jpg', '', 3, 0, '2009-06-08 11:07:00', '2009-06-08 11:51:15', 'vn', 0),
(150, 'http://www.trangvangwebsite.com', 'trang v', 10, '', '', '', 'images/content/link_s150.jpg', '', 4, 0, '2009-06-08 11:07:19', '2009-06-08 11:51:21', 'vn', 0),
(154, '', 'Dịch vụ', 9, '', '<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman">&nbsp;&nbsp;&nbsp;<strong> C&oacute; 2 h&igrave;nh thức giao h&agrave;ng: </strong><br />\r\n</font></p>\r\n<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman"><strong>1.</strong>C&oacute; thể mua trực tiếp tại cửa h&agrave;ng, chũng t&ocirc;i sẽ giao h&agrave;ng miễn ph&iacute;<br />\r\n</font></p>\r\n<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman"><strong>2.</strong>C&oacute; thể thanh toan qua t&agrave;i khoản Đ&ocirc;ng &Aacute;, ngay khi thanh to&aacute;n xong, trong v&ograve;ng 24h ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng<br />\r\n</font></p>\r\n<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman"><br />\r\n</font></p>', '', '', '', 0, 0, '2009-06-08 11:46:05', '2010-04-21 02:00:49', 'vn', 0),
(174, '', 'Tư vấn', 76, '', '<p style="MARGIN: 0in 0in 0pt" class="MsoNormal"><font size="2">C&oacute; thể li&ecirc;n lạc với ch&uacute;ng t&ocirc;i : <br />\r\n</font></p>\r\n<p><strong>Website:</strong><span> <a href="http://www.ShopBi.Net">wWw.ShopBi.Net</a></span></p>\r\n<p><strong>Yahoo: ShopThoiTrang.Bi</strong></p>\r\n<p><strong>Gửi mail:</strong><span>&nbsp; <a href="mailto:shopthoitrang.bi@yahoo.com.vn">shopthoitrang.bi@yahoo.com.vn</a>&nbsp;&nbsp;<br />\r\n</span></p>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2011-01-16 05:26:19', 'vn', 0),
(175, '', 'Consulting', 77, '', '<p><font size="2" face="Tahoma"><span id="result_box" class="short_text"></span></font></p>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2011-01-15 14:08:42', 'en', 0),
(159, 'http://www.google.com.vn', 'C', 71, '', '', '', 'images/content/customer_s159.jpg', '', 1, 0, '2009-06-08 12:02:12', '2009-06-12 15:38:55', 'vn', 0),
(160, 'http://www.thuonggiavietnam.net', 'Kh', 71, '', '', '', 'images/content/customer_s160.jpg', '', 2, 0, '2009-06-08 12:02:56', '2009-06-12 15:38:44', 'vn', 0),
(161, 'http://www.trangvangwebsite.com', 'C', 71, '', '', '', 'images/content/customer_s161.jpg', '', 3, 0, '2009-06-08 13:43:52', '2009-06-12 15:37:44', 'vn', 0),
(166, '', 'Ph', 73, '', '<div align="justify">\r\n<table cellspacing="0" cellpadding="0" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td class="name" align="center"><span><font size="2">D?ch v? k? to&aacute;n </font></span></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? k&ecirc; khai v&agrave; t? v?n thu?</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? T? v?n t&agrave;i ch&iacute;nh Doanh nghi?p </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? thi?t l?p d? &aacute;n ??u t? </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? th?m ??nh d? &aacute;n ??u t? </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? t? v?n ??u t? t&agrave;i ch&iacute;nh</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? thu th?p th&ocirc;ng tin, ph&acirc;n t&iacute;ch v&agrave; ?i?u tra th? tr??ng</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? h? tr? ph&aacute;p l&yacute;</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>', '', '', '', 0, 0, '0000-00-00 00:00:00', '2009-06-12 15:21:13', 'vn', 0),
(30, '', 'li', 30, '<p align="center">&nbsp;</p>', '<font size="2" face="Tahoma"><strong>\r\n<p align="center"><font size="2" face="Tahoma"><strong>Shop Thời Trang Nữ : Chuy&ecirc;n Qu&acirc;̀n Áo Thời Trang , Phụ Ki&ecirc;̣n Dành Cho Teen Girl</strong></font></p>\r\n<p align="center">Ngõ 36 L&ecirc; Thanh Nghị , Hai Bà Trưng , Hà N&ocirc;̣i</p>\r\n</strong></font>', '', '', '', 0, 0, '2008-03-29 11:35:26', '2011-01-16 06:40:38', 'vn', 0),
(144, '', 'Tuyển dụng', 70, '', '<p align="justify"><font face="Tahoma" size="2">Thông tin đang cập nhật!.</font></p>', '', '', '', 0, 0, '2009-06-08 10:27:42', '2009-06-08 10:59:55', 'vn', 0),
(125, '', 'Nh', 66, '', '', '', 'images/upload/TakeMeToYourHeart.wma', '', 1, 0, '2008-12-18 09:04:55', '2008-12-18 09:07:50', 'vn', 0),
(126, '', 'Thu?c ngh? t?i Canada', 66, '', '', '', 'images/upload/Mandy_Westlife.wma', '', 2, 0, '2008-12-18 09:08:56', '2008-12-18 09:21:44', 'vn', 0),
(31, '', 'Contact', 31, '', '<font size="3">\r\n<div style="FONT-WEIGHT: bold; COLOR: rgb(24,130,237); TEXT-ALIGN: center"><font size="2">Minh thang Co Ltd.,&nbsp;</font></div>\r\n<div style="COLOR: rgb(24,130,237); TEXT-ALIGN: center"></div>\r\n</font>', '', '', '', 0, 0, '2008-03-29 11:36:06', '2008-12-17 09:10:19', 'en', 0),
(43, 'http://mail.yahoo.com.vn', 'mail yahoo', 26, '', '', '', 'images/content/advleft_s43.gif', '', 0, 0, '2008-05-01 23:50:46', '2008-06-18 14:50:50', 'en', 0),
(44, 'http://www.google.com.vn', 'google', 27, '', '', '', 'images/content/advright_s44.jpg', '', 1, 0, '2008-05-01 23:51:17', '2008-11-27 21:11:34', 'en', 0),
(49, 'thehoipro200x', 'Ho tro ky thuat ', 36, '', '', '', '', '', 0, 0, '2008-06-02 11:30:58', '2009-06-08 11:52:19', 'vn', 0),
(50, 'support', 'Support', 37, '', '', '', '', '', 0, 0, '2008-06-02 11:31:10', '2008-06-02 11:31:27', 'en', 0),
(81, 'dqt_92', 'Bán Hàng Trực Tuyến 2', 11, '', '', '', '', '', 2, 0, '2008-10-23 17:05:52', '2011-01-16 06:26:19', 'vn', 0),
(167, '', 'Giới thiệu', 28, '', '<p align="center">&nbsp;</p>', '', '', '', 0, 0, '2009-06-16 15:02:09', '2011-01-16 06:39:42', 'vn', 0),
(173, '', 'Service', 81, '', '<p>Will be update...</p>', '', '', '', 0, 0, '2009-11-17 11:01:32', '2009-11-26 09:08:28', 'en', 0),
(192, '', 'Quản lí', 89, '', '', '', 'images/content/banner_s192.png', '', 0, 0, '2009-12-16 00:00:00', '2011-01-15 14:03:34', 'vn', 0),
(193, 'http://shopbi.net', 'Management banner', 90, '', '', '', 'images/content/banner_s193.png', '', 0, 0, '2009-12-16 00:00:00', '2011-01-16 05:24:47', 'en', 0),
(176, '', 'Tuyển dụng', 78, '', '<font size="2" face="Tahoma">Th&ocirc;ng tin đang cập nhật<br />\r\n</font>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2010-04-20 14:36:36', 'vn', 0),
(177, '', 'Employment', 79, '', '<p><font size="2" face="Tahoma"><span id="result_box" class="short_text"></span></font></p>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2011-01-16 06:50:06', 'en', 0),
(178, '', '', 0, '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(179, 'shopthoitrang.bi', 'Bán Hàng Trực Tuyến 1', 11, '', '', '', '', '', 1, 0, '2009-11-17 11:24:05', '2011-01-16 05:25:13', 'vn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_category`
--

CREATE TABLE IF NOT EXISTS `tbl_content_category` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(225) character set utf8 collate utf8_unicode_ci default NULL,
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `parent` int(11) NOT NULL default '0',
  `subject` text character set utf8 collate utf8_unicode_ci,
  `detail_short` text character set utf8 collate utf8_unicode_ci,
  `detail` longtext character set utf8 collate utf8_unicode_ci,
  `image` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `image_large` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `sort` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `lang` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `tbl_content_category`
--

INSERT INTO `tbl_content_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, '', 'Danh mục gốc', 0, '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '2009-11-16 16:55:27', ''),
(8, 'vn_news', 'Tin tức - Sự kiện', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(9, 'vn_service', 'Dịch vụ', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2008-04-30 00:45:54', 'vn'),
(10, 'vn_link', 'Liên kết', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2008-04-30 00:45:43', 'vn'),
(11, 'vn_yahoo', 'Hỗ trợ trực tuyến(yahoo)', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2008-06-02 11:24:28', 'vn'),
(3, 'en', 'English', 1, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(2, 'vn', 'Việt Nam', 1, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(75, 'en_advbottom', 'Bottom advertise', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(76, 'vn_consulting', 'Tư vấn', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(77, 'en_consulting', 'Consulting', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(24, 'vn_advleft', 'Quảng cáo', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(25, 'vn_advright', 'Quảng cáo', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(28, 'vn_intro', 'Giới thiệu', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(30, 'vn_contact', 'Liên hệ', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(74, 'vn_advbottom', 'Quảng cáo', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(78, 'vn_employment', 'Tuyển dụng', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(79, 'en_employment', 'Employment', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(80, 'en_news', 'News & Event', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(81, 'en_service', 'Service', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(82, 'en_yahoo', 'Support online(Yahoo)', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(83, 'vn_skype', 'Hỗ trợ tực tuyến(Skype)', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(84, 'en_skype', 'Support online(Skype)', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(85, 'en_advleft', 'Left Advertise', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(86, 'en_advright', 'Right Advertise', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(87, 'en_contact', 'Contact', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(88, 'en_intro', 'Introduction', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(89, 'vn_banner', 'Quản lí', 2, '', '', '', '', '', 0, 0, '2009-12-16 00:00:00', '2009-12-16 00:00:00', 'vn'),
(90, 'en_banner', 'Management banner', 3, '', '', '', '', '', 0, 0, '2009-12-16 00:00:00', '2009-12-16 00:00:00', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inchsize`
--

CREATE TABLE IF NOT EXISTS `tbl_inchsize` (
  `id` int(11) NOT NULL auto_increment,
  `inchsize` varchar(255) NOT NULL,
  `sort` int(5) default NULL,
  `date_added` datetime default NULL,
  `lang` varchar(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_inchsize`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE IF NOT EXISTS `tbl_manufacturer` (
  `id` int(11) NOT NULL auto_increment,
  `manufacturer` varchar(255) default NULL,
  `sort` int(5) default NULL,
  `date_added` datetime default NULL,
  `lang` varchar(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_manufacturer`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `sex` int(3) default NULL,
  `company` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `address` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `city` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `country` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `tel` varchar(20) character set utf8 collate utf8_unicode_ci default NULL,
  `fax` varchar(20) character set utf8 collate utf8_unicode_ci default NULL,
  `email` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `website` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `uid` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `pwd` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `name`, `sex`, `company`, `address`, `city`, `country`, `tel`, `fax`, `email`, `website`, `uid`, `pwd`, `status`, `date_added`, `last_modified`) VALUES
(13, 'Giáp Văn Cường', 0, 'học sinh', 'biên hoà- đồng nai', 'biên hoà', 'Vietnam', '0985555903', '', 'gem.cuong@yahoo.com', '', 'gcuong', 'gamemini', 0, '2010-04-21 00:42:56', '2010-04-21 00:42:56'),
(11, 'Nguyễn Kim Kiên', 0, '', 'Đồng Xoài', 'Bình Phước', 'Vietnam', '0973411483', '', 'nguyenkimkien@gmail.com', '', 'kien', '870924', 0, '2010-04-20 17:39:59', '2010-04-21 01:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '0',
  `member_id` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `code`, `member_id`, `date_added`, `last_modified`) VALUES
(32, '0', 13, '2010-04-21 00:43:20', '0000-00-00 00:00:00'),
(31, '0', 11, '2010-04-20 20:48:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_order_detail` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `quantity` int(11) NOT NULL default '0',
  `price` float default NULL,
  `status` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `status`) VALUES
(15, 20, 29, 20, 0, 0),
(16, 21, 27, 5, 0, 0),
(17, 21, 31, 6, 0, 0),
(18, 21, 29, 7, 0, 0),
(19, 22, 29, 30, 0, 0),
(20, 22, 32, 20, 0, 0),
(21, 22, 28, 10, 0, 0),
(22, 23, 28, 1, 0, 0),
(23, 23, 27, 1, 0, 0),
(24, 23, 29, 1, 0, 0),
(25, 24, 125, 1, 0, 0),
(26, 25, 127, 5, 0, 0),
(27, 26, 127, 5, 0, 0),
(28, 26, 150, 1, 0, 0),
(29, 27, 152, 10, 0, 0),
(30, 28, 152, 10, 100, 0),
(31, 28, 153, 4, 150, 0),
(32, 29, 185, 1, 1.65e+07, 0),
(33, 30, 208, 1, 80000, 0),
(34, 31, 209, 1, 250000, 0),
(35, 32, 210, 1, 3.59e+06, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(225) character set utf8 collate utf8_unicode_ci default NULL,
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `parent` int(11) NOT NULL default '0',
  `inchsize` int(5) default NULL,
  `manufacturer` int(5) default NULL,
  `subject` double default '0',
  `detail_short` text character set utf8 collate utf8_unicode_ci,
  `detail` longtext character set utf8 collate utf8_unicode_ci,
  `image` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `image_large` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `sort` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `price` double default '0',
  `lang` varchar(5) character set utf8 collate utf8_unicode_ci default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=216 ;

--
-- Dumping data for table `tbl_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(225) character set utf8 collate utf8_unicode_ci default NULL,
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `parent` int(11) NOT NULL default '0',
  `subject` text character set utf8 collate utf8_unicode_ci,
  `detail_short` text character set utf8 collate utf8_unicode_ci,
  `detail` longtext character set utf8 collate utf8_unicode_ci,
  `image` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `image_large` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `sort` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `lang` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, '', 'Danh mục gốc', 0, '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, 'vn', 'Việt Nam', 1, '', '', '', '', '', 0, 0, '2008-03-24 08:36:30', '2008-03-27 10:29:34', 'vn'),
(160, '', 'Áo Khoác Thời Trang', 2, '', '', '', NULL, NULL, 1, 0, '2010-04-20 15:49:53', '2011-01-15 21:05:30', 'vn'),
(161, '', 'Áo Thời Trang', 2, '', '', '', NULL, NULL, 2, 0, '2010-04-20 15:50:13', '2011-01-15 21:05:36', 'vn'),
(125, 'en', 'English', 1, '', '', '', '', '', 0, 0, '2009-11-16 09:56:08', '2009-11-16 09:56:08', 'en'),
(162, '', 'Quần Thời Trang', 2, '', '', '', NULL, NULL, 3, 0, '2010-04-20 15:50:26', '2011-01-15 21:05:43', 'vn'),
(163, '', 'Zip vs Quần Giả Váy Thời Trang', 2, '', '', '', NULL, NULL, 4, 0, '2010-04-20 15:50:52', '2011-01-15 21:06:03', 'vn'),
(164, '', 'Tất - Quần Tất - Legging', 2, '', '', '', NULL, NULL, 5, 0, '2010-04-20 15:51:02', '2011-01-15 21:08:01', 'vn'),
(166, '', 'Túi Thời Trang', 2, '', '', '', NULL, NULL, 6, 0, '2010-04-20 15:51:47', '2011-01-15 21:06:41', 'vn'),
(167, '', 'Dép - Guốc Thời Trang', 2, '', '', '', NULL, NULL, 7, 0, '2011-01-15 21:07:10', '2011-01-15 21:07:18', 'vn'),
(168, '', 'Giầy Thời Trang', 2, '', '', '', NULL, NULL, 8, 0, '2011-01-15 21:07:39', '2011-01-15 21:07:39', 'vn'),
(169, '', 'Phụ Kiện Thời Trang', 2, '', '', '', NULL, NULL, 9, 0, '2011-01-15 21:07:51', '2011-01-15 21:38:25', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_new`
--

CREATE TABLE IF NOT EXISTS `tbl_product_new` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `sort` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `lang` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `tbl_product_new`
--

INSERT INTO `tbl_product_new` (`id`, `product_id`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(40, 210, 0, 0, '2010-04-21 02:06:35', '2010-04-21 02:06:35', 'vn'),
(38, 209, 0, 0, '2010-04-20 20:16:35', '2010-04-20 20:16:35', 'vn'),
(41, 211, 0, 0, '2011-01-15 14:08:54', '2011-01-15 14:08:54', 'vn'),
(42, 212, 0, 0, '2011-01-15 14:24:19', '2011-01-15 14:24:19', 'vn'),
(43, 213, 0, 0, '2011-01-15 14:24:37', '2011-01-15 14:24:37', 'vn'),
(44, 214, 0, 0, '2011-01-15 14:28:06', '2011-01-15 14:28:06', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_special`
--

CREATE TABLE IF NOT EXISTS `tbl_product_special` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `sort` int(11) NOT NULL default '0',
  `status` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `lang` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `tbl_product_special`
--

INSERT INTO `tbl_product_special` (`id`, `product_id`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(56, 209, 0, 0, '2010-04-21 00:47:15', '2010-04-21 00:47:15', 'vn'),
(55, 210, 0, 0, '2010-04-21 00:47:15', '2010-04-21 00:47:15', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `pwd` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `uid`, `pwd`) VALUES
(1, 'admin', '733d7be2196ff70efaf6913fc8bdcabf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitor`
--

CREATE TABLE IF NOT EXISTS `tbl_visitor` (
  `session_id` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `activity` datetime NOT NULL default '0000-00-00 00:00:00',
  `member` enum('y','n') character set utf8 collate utf8_unicode_ci default 'n',
  `ip_address` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `url` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `user_agent` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_visitor`
--

INSERT INTO `tbl_visitor` (`session_id`, `activity`, `member`, `ip_address`, `url`, `user_agent`) VALUES
('c9f063e3cc99221319c2d2a3c4a0931b', '2011-01-16 08:04:39', 'n', '192.168.1.3', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.3)'),
('3de9561e05eb0edea2e1c072281c2fe0', '2011-01-15 21:38:31', 'n', '113.23.66.116', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; InfoPath.3)');
