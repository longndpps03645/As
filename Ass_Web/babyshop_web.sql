-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2013 at 10:06 AM
-- Server version: 5.1.66-cll
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `babyshop_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `idcity` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idcity`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`idcity`, `cityname`) VALUES
(1, 'An Giang'),
(2, 'Ba Ria - Vung Tau'),
(3, 'Bac Lieu'),
(4, 'Bac Kan'),
(5, 'Bac Giang'),
(6, 'Bac Ninh'),
(7, 'Ben Tre'),
(8, 'Binh Duong'),
(9, 'Binh Dinh'),
(10, 'Binh Phuoc'),
(11, 'Binh Thuan'),
(12, 'Ca Mau'),
(13, 'Cao Bang'),
(14, 'Can Tho'),
(15, 'Da Nang'),
(16, 'Dac Lak'),
(17, 'Dac Nong'),
(18, 'Dien Bien'),
(19, 'Dong Nai'),
(20, 'Dong Thap'),
(21, 'Gia Lai'),
(22, 'Ha Giang'),
(23, 'Ha Nam'),
(24, 'Ha Noi'),
(25, 'Ha Tay'),
(26, 'Ha Tinh'),
(27, 'Hai Duong'),
(28, 'Hai Phong'),
(29, 'Hau Giang'),
(30, 'Hoa Binh'),
(31, 'Thanh Pho Ho Chi Minh'),
(32, 'Hung Yen'),
(33, 'Khanh Hoa'),
(34, 'Kien Giang'),
(35, 'Kon Tum'),
(36, 'Lai Chau'),
(37, 'Lang Son'),
(38, 'Long An'),
(39, 'Nam Dinh'),
(40, 'Nghe An'),
(41, 'Ninh Binh'),
(42, 'Ninh Thuan'),
(43, 'Phu Tho'),
(44, 'Phu Yen'),
(45, 'Quang Binh'),
(46, 'Quang Nam'),
(47, 'Quang Ngai'),
(48, 'Quang Ninh'),
(49, 'Quang Tri'),
(50, 'Soc Trang'),
(51, 'Son La'),
(52, 'Tay Ninh'),
(53, 'Thai Binh'),
(54, 'Thai Nguyen'),
(55, 'Thanh Hoa'),
(56, 'Thua Thien Hue'),
(57, 'Tien Giang'),
(58, 'Tra Vinh'),
(59, 'Tuyen Quang'),
(60, 'Vinh Long'),
(61, 'Vinh Phuc'),
(62, 'Yen Bai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `idcomment` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `idtopic` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `iprequest` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idcomment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE IF NOT EXISTS `tbl_company` (
  `idcompany` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nguoidaidien` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idcompany`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`idcompany`, `name`, `nguoidaidien`, `phone`, `diachi`, `logo`, `text`, `mota`) VALUES
(1, 'Công ty TNHH TM DV Tâm Bão', 'b-a5-eOnRq8', '', '', 'so-tay-ck8jpg.jpg', '', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `idcontact` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_add` int(11) NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE IF NOT EXISTS `tbl_content` (
  `contents_id` int(11) NOT NULL AUTO_INCREMENT,
  `contents_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contents_content` longtext COLLATE utf8_unicode_ci,
  `detail_short` mediumtext COLLATE utf8_unicode_ci,
  `contents_view` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_categories_parentid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `useradd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(2) DEFAULT NULL,
  `tag` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keytag` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`contents_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`contents_id`, `contents_name`, `contents_content`, `detail_short`, `contents_view`, `contents_image`, `doc_categories_parentid`, `date_added`, `last_modified`, `status`, `useradd`, `sort`, `tag`, `keytag`) VALUES
(30, 'Kính gửi quý doanh nghiệp , cá nhân kinh doanh văn phòng phẩm ', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; Qu&yacute; Doanh nghi&ecirc;̣p c&oacute; nhu c&acirc;̀u mua c&aacute;c thi&ecirc;́t bị, dụng cụ văn ph&ograve;ng đ&ecirc;̉ phục vụ cho c&ocirc;ng vi&ecirc;̣c như:&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul style="margin-left:40px">\r\n    <li><span style="white-space:pre" class="Apple-tab-span">	</span>Mực in (bao g&ocirc;̀m: Thay Cartridge, nạp mực, thay linh ki&ecirc;̣n, mực in cho m&aacute;y Photo c&aacute;c loại&hellip;.).&nbsp;</li>\r\n    <li><span style="white-space:pre" class="Apple-tab-span">	</span>Văn ph&ograve;ng ph&acirc;̉m c&aacute;c loại (B&uacute;t vi&ecirc;́t, B&igrave;a h&ocirc;̀ sơ, Băng keo, T&acirc;̣p vở, S&ocirc;̉ ghi ch&eacute;p&hellip;vv).&nbsp;</li>\r\n    <li><span style="white-space:pre" class="Apple-tab-span">	</span>Gi&acirc;́y in (Gi&acirc;́y Flexoffice A4/70 - A4/80; Paper One; Double A; Gi&acirc;́y b&igrave;a m&agrave;u &hellip;vv).&nbsp;</li>\r\n    <li><span style="white-space:pre" class="Apple-tab-span">	</span>Văn h&oacute;a ph&acirc;̉m, đ&ocirc;̀ bảo h&ocirc;̣, dụng cụ y t&ecirc;́&hellip;..&nbsp;</li>\r\n    <li><span style="white-space:pre" class="Apple-tab-span">	</span>C&aacute;c dịch vụ cung c&acirc;́p v&agrave; chăm s&oacute;c trọn g&oacute;i Văn ph&ograve;ng ph&acirc;̉m - Mực in.&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; H&atilde;y đ&ecirc;̉ Team Dự &aacute;n (B2B) của C&ocirc;ng ty T&acirc;n Lực Mi&ecirc;̀n Nam &nbsp;phục vụ t&acirc;̣n t&acirc;m, chăm s&oacute;c chu đ&aacute;o,</p>\r\n<p>&nbsp;chuy&ecirc;n nghi&ecirc;̣p v&agrave; gi&aacute; cả ti&ecirc;́t ki&ecirc;̣m nh&acirc;́t cho Qu&yacute; c&ocirc;ng ty.</p>\r\n<p>&nbsp;</p>\r\n<h3 style="text-align: center; ">FLEXOFFICE CAM K&Ecirc;́T LU&Ocirc;N ĐẶT SỰ H&Agrave;I L&Ograve;NG CỦA KH&Aacute;CH H&Agrave;NG L&Ecirc;N H&Agrave;NG Đ&Acirc;̀U.</h3>\r\n<p>&nbsp;</p>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp;Đ&ecirc;̉ bi&ecirc;́t th&ecirc;m c&aacute;c chi ti&ecirc;́t v&ecirc;̀ sản ph&acirc;̉m, gi&aacute; cả v&agrave; dịch vụ. Qu&yacute; Doanh nghi&ecirc;̣p vui l&ograve;ng li&ecirc;n h&ecirc;̣ với b&acirc;́t kỳ s&ocirc;́ đi&ecirc;̣n thoại</div>\r\n<div>&nbsp;n&agrave;o của c&aacute;c Đại di&ecirc;̣n thương mại C&ocirc;ng ty T&acirc;n Lực Mi&ecirc;̀n Nam đ&ecirc;̉ được hướng d&acirc;̃n v&agrave; giải đ&aacute;p:</div>\r\n<div>&nbsp;<u><br />\r\n</u></div>\r\n<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.&nbsp;Phan Đặng Thu Trang</strong></div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đi&ecirc;̣n thoại: 08 38683537 &ndash; Ext: 216</div>\r\n<div>&nbsp;</div>\r\n<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.&nbsp;L&ecirc; Thị Đ&ocirc;̃ Thư</strong></div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di đ&ocirc;̣ng: 0939 467 485</div>\r\n<div><u><br />\r\n</u></div>\r\n<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3. Nguy&ecirc;̃n Huỳnh Duy Lynh</strong></div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di đ&ocirc;̣ng: 0947 373 252</div>\r\n<div>&nbsp;</div>\r\n<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.&nbsp;Mai Thọ L&yacute;</strong></div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di đ&ocirc;̣ng: 0938 128 314</div>\r\n<p>&nbsp;</p>', '                ', NULL, '30_Hoi-vat-my.jpg', '9', 1329399799, 1339403667, 0, 'tranminhthien', 0, 'dịch vụ, B2B, chi tiết sản phẩm, liên hệ, fleoffice, doanh nghiệp, số điện thoại, Công ty Tân Lực Miền Nam', 'dich vu, B2B, chi tiet san pham, lien he, fleoffice, doanh nghiep, so dien thoai, Cong ty Tan Luc Mien Nam'),
(8, 'Thông tin liên hệ', '<p style="color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; "><strong>BABYSHOPS.COM.VN</strong><img src="/userfiles/image/baby-contact.png" width="200" height="263" align="left" alt="" /><br />\r\n21/13 Trường Sơn, Phường 4, Quận T&acirc;n B&igrave;nh, TP. HCM <br />Tel: 08 6676 7247 Fax: 08.6296 1817<br />\r\n<strong>Hotline : Gặp Chị Nga: 0902 455 005 - 0938 917 947&nbsp;<br />\r\n&nbsp;&nbsp;<br />\r\n</strong>E-mail: nvtan@live.com * website:&nbsp;<a href="http://babyshops.com.vn">http://babyshops.com.vn</a></p>\r\n<p style="color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; ">&nbsp;</p>\r\n<p style="color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; ">&nbsp;<strong>H&Igrave;NH THỨC THANH TO&Aacute;N</strong></p>\r\n<p style="color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; "><strong>1. BẰNG CHUYỂN KHOẢN:</strong><br />\r\na. Ng&acirc;n H&agrave;ng&nbsp;<strong>SACOMBANK</strong><br />\r\n&nbsp;T&ecirc;n chủ t&agrave;i khoản: &ocirc;ng Nguyễn Viết Tấn<br />\r\n&nbsp;Số t&agrave;i khoản:&nbsp;<strong>060-004-271-990</strong><br />\r\n&nbsp;Ng&acirc;n h&agrave;ng S&agrave;i g&ograve;n thương t&iacute;n, CN T&acirc;n B&igrave;nh, TP.HCM<br />\r\n<br />\r\nb. Ng&acirc;n H&agrave;ng&nbsp;<strong>VIETCOMBANK&nbsp;</strong>(Qu&yacute; kh&aacute;ch cũng c&oacute; thể chuyển tiền từ m&aacute;y ATM của hệ thống Vietcombank)<br />\r\n&nbsp;T&ecirc;n chủ t&agrave;i khoản: &ocirc;ng Nguyễn Viết Tấn<br />\r\n&nbsp;Số t&agrave;i khoản:&nbsp;<strong>044.100.3875795</strong><br />\r\n&nbsp;Ng&acirc;n h&agrave;ng thương mại cổ phần Ngoại thương (VIETCOMBANK) T&acirc;n B&igrave;nh, TP.HCM&nbsp;<br />\r\n<br />\r\nc. Ng&acirc;n H&agrave;ng&nbsp;<strong>VIETINBANK</strong><br />\r\n&nbsp;T&ecirc;n chủ t&agrave;i khoản: &ocirc;ng Nguyễn Viết Tấn<br />\r\n&nbsp;Số t&agrave;i khoản:&nbsp;<strong>711A 45796494</strong><br />\r\n&nbsp;Ng&acirc;n h&agrave;ng Thương Mại cổ phần C&ocirc;ng Thương, CN T&acirc;n B&igrave;nh, TP.HCM</p>\r\n<p style="color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; "><strong>2. THANH&nbsp;TO&Aacute;N&nbsp;TRỰC TIẾP:</strong></p>\r\n<p style="color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; ">Qu&yacute; kh&aacute;ch c&oacute; thể thanh to&aacute;n trực tiếp tại địa chỉ sau:<br />\r\n<strong>- 21/13 Trường Sơn, Phường 4, Quận T&acirc;n B&igrave;nh, TP. HCM</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '          Địa chỉ công ty và văn phòng đại diện trên 63 tỉnh thành', NULL, NULL, '2', 1325037339, 1351266774, 1, 'adminf', 0, 'liên hệ, thông tin liên hệ, điện thoại, địa chỉ, babyshops, miền Nam, miền Bắc, miền Tây, email, Fax, mã số thuế', 'lien he, thong tin lien he, dien thoai, dia chi, babyshops, mien Nam, mien Bac, mien Tay, email, Fax, ma so thue'),
(55, 'Hàng mi cong dài tự nhiên với Latisse', '<p><span style="font-family: Arial; text-align: justify; ">Giờ đ&acirc;y, thay v&igrave; nối mi hay uốn mi đắt tiền m&agrave; c&ograve;n c&oacute; nguy cơ g&acirc;y hại đến sức khoẻ, sao bạn kh&ocirc;ng bỏ t&uacute;i một v&agrave;i b&iacute; k&iacute;p đơn giản nhưng lại tạo được một h&agrave;ng mi đ&aacute;ng mơ ước?</span></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: center; "><font style="font-family: Arial; "><img class="news-image" alt="H&agrave;ng mi cong d&agrave;i tự nhi&ecirc;n với Latisse, L&agrave;m đẹp, " src="/userfiles/image/baiviet/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--1-.jpg" style="font-family: Arial, Helvetica, sans-serif; border: 0px; " width="200" height="108" /></font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Chỉ 2 ph&uacute;t mỗi ng&agrave;y trước khi đi ngủ,&nbsp;<strong style="font-family: Arial, Helvetica, sans-serif; ">LATISSE &reg;</strong>&nbsp;thế hệ mới sẽ gi&uacute;p k&iacute;ch h&agrave;ng mi mọc d&agrave;i hơn, d&agrave;y hơn v&agrave; tăng cường hoạt t&iacute;nh gi&uacute;p k&iacute;ch hoạt sợi mi yếu ớt mọc khỏe v&agrave; cong tự nhi&ecirc;n ho&agrave;n hảo sau 2 tuần sử dụng.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><strong><font style="font-family: Arial; ">LATISSE &reg;&nbsp;thế hệ mới</font></strong><font style="font-family: Arial; ">&nbsp;l&agrave; sản phẩm được s&aacute;ng chế bởi một đội ngũ 16 b&aacute;c sĩ gi&agrave;u kinh ghiệm từ khắp nơi tr&ecirc;n thế giới v&agrave; l&agrave; giải ph&aacute;p điều trị theo toa của b&aacute;c sĩ thuộc Tập đo&agrave;n Allergan một c&ocirc;ng ty chuy&ecirc;n ng&agrave;nh dược với hơn 60 năm kinh nghiệm về mắt. Latisse đ&atilde; được chứng nhận bởi tổ chức FDA của Mỹ với c&ocirc;ng dụng k&iacute;ch th&iacute;ch h&agrave;ng mi mọc d&agrave;i, d&agrave;y v&agrave; sẫm m&agrave;u hơn, đặc biệt hoạt chất bimatoprost sẽ gi&uacute;p k&iacute;ch hoạt sợi mi yếu ớt mọc khỏe hơn v&agrave; cong tự nhi&ecirc;n ho&agrave;n hảo nhất.</font></p>\r\n<table width="450" cellspacing="1" cellpadding="1" border="1" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 0); text-align: justify; ">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#def1c8">\r\n            <p><strong><font style="font-family: Arial; ">LATISSE &reg; thế hệ mới</font></strong><font style="font-family: Arial; ">&nbsp;sản phẩm th&iacute;ch hợp với những bạn c&oacute; h&agrave;ng mi qu&aacute; thưa thớt, yếu ớt, sợi mi kh&ocirc;ng được khỏe, mi qu&aacute; ngắn hoặc những h&agrave;ng mi nối l&acirc;u ng&agrave;y, mi yếu ớt, bị rụng hết v&agrave; ch&acirc;n mi kh&ocirc;ng thể mọc lại được.</font></p>\r\n            <p style="text-align: center; "><font style="font-family: Arial; "><img class="news-image" alt="H&agrave;ng mi cong d&agrave;i tự nhi&ecirc;n với Latisse, L&agrave;m đẹp, " src="/userfiles/image/baiviet/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--2-.jpg" style="font-family: Arial, Helvetica, sans-serif; border: 0px; " width="218" height="238" /></font></p>\r\n            <p><strong><font style="font-family: Arial; ">LATISSE &reg; thế hệ mới&nbsp;</font></strong><font style="font-family: Arial; ">sản phẩm được chỉ định điều trị theo toa của b&aacute;c sỹ tại Mỹ, được chứng nhận bởi tổ chức FDA mỹ.</font></p>\r\n            <p><strong><font style="font-family: Arial; ">LATISSE &reg; thế hệ mới c&oacute; gi&aacute; 2,590,000</font></strong></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><strong><font style="font-family: Arial; ">LATISSE &reg; thế hệ mới</font></strong><font style="font-family: Arial; ">&nbsp;l&agrave; sản phẩm dưới dạng serum chứa 60 c&acirc;y cọ v&agrave; mỗi c&acirc;y cọ đ&atilde; được v&ocirc; tr&ugrave;ng c&ugrave;ng với 1 lượng serum vừa đủ sử dụng cho h&agrave;ng mi. Mỗi tối, bạn chỉ cần d&ugrave;ng cọ b&ocirc;i một đường l&ecirc;n ch&acirc;n mi tr&ecirc;n của mắt v&agrave; sẽ cảm nhận được hiệu quả sau 2 tuần đầu sử dụng l&agrave; mi sẽ mọc dần l&ecirc;n v&agrave; hơi c&oacute; cảm gi&aacute;c ngứa nơi mi mắt. Đến tuần thứ 4 sử dụng, bạn sẽ thấy r&otilde; h&agrave;ng mi mọc d&agrave;i hơn nhiều v&agrave; sau 16 tuần sử dụng, h&agrave;ng mi sẽ trở n&ecirc;n đẹp nhất. Với những ưu điểm vượt trội trong việc k&iacute;ch mọc ho&agrave;n hảo h&agrave;ng mi sản phẩm l&agrave; lựa chọn h&agrave;ng đầu cho phụ nữ tại Mỹ, Ch&acirc;u &Acirc;u đặc biệt tại Nhật Bản, H&agrave;n Quốc v&agrave; Trung Quốc&hellip;.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Với những bạn c&oacute; ch&acirc;n mi b&igrave;nh thường (mi đ&atilde; c&oacute; sẵn d&agrave;y, khỏe nhưng ngắn) chỉ c&oacute; nhu cầu k&iacute;ch mi mọc d&agrave;i nhanh v&agrave; cong khỏe sản phẩm k&iacute;ch mi mọc nhanh Revitalash Advanced sẽ l&agrave; lựa chọn cho c&aacute;c bạn.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">C&ocirc;ng ty Athena Cosmetics của Mỹ sau nghi&ecirc;n cứu c&ocirc;ng thức k&iacute;ch th&iacute;ch sự tăng trưởng của c&aacute;c nang l&ocirc;ng mi đ&atilde; cho ra đời sản phẩm Revitalash Advanced để biến những l&agrave;n mi, d&ugrave; c&oacute; ngắn, thưa yếu ớt thế n&agrave;o, cũng trở n&ecirc;n d&agrave;i, cong sẫm m&agrave;u. C&ocirc;ng thức trong Revitalash Advanced&nbsp; ở dạng tinh thể, k&iacute;ch hoạt mạnh mẽ sự ph&aacute;t triển của từng nang l&ocirc;ng mi, đồng thời tiếp s&acirc;u c&aacute;c dưỡng chất gi&uacute;p l&ocirc;ng mi mọc chắc khoẻ v&agrave; kh&ocirc;ng bị g&atilde;y rụng. Kết quả l&acirc;m s&agrave;ng cho thấy l&ocirc;ng mi mọc d&agrave;i từ 3mm-5mm sau 3 tuần sử dụng. Nếu sử dụng đều đặn bạn c&oacute; thể sở&nbsp;hữu một l&agrave;n mi&nbsp;d&agrave;i cong sẫm m&agrave;u như nối mi thẩm mỹ chỉ sau 2-3 th&aacute;ng.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: center; "><font style="font-family: Arial; "><img class="news-image" alt="H&agrave;ng mi cong d&agrave;i tự nhi&ecirc;n với Latisse, L&agrave;m đẹp, " width="400" height="526" src="/userfiles/image/baiviet/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--3-.jpg" style="font-family: Arial, Helvetica, sans-serif; border: 0px; " /></font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Sản phẩm được FDA của Mỹ c&ocirc;ng nhận - Kết quả l&acirc;m s&agrave;ng cho thấy 97% người sử dụng c&oacute; l&agrave;n mi d&agrave;y &amp; d&agrave;i hơn từ 3mm-5mm sau 3 tuần.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><em><strong><font style="font-family: Arial; ">Revitalash Advanced c&oacute; gi&aacute; 1,990,000</font></strong></em></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">100% phụ nữ sau khi sử dụng Revitalash Advanced đều khuyến kh&iacute;ch bạn b&egrave; m&igrave;nh sử dụng. Hiện nay, Revitalash Advanced l&agrave; sản phẩm k&iacute;ch dưỡng mi được b&aacute;n chạy nhất tại Mỹ được tin d&ugrave;ng bởi nhiều ng&ocirc;i sao như Jennifer Lopez, Sarah Jessica Parker...</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Để ho&agrave;n thiện vẻ đẹp đ&ocirc;i mắt v&agrave; l&agrave;m bật s&aacute;ng gương mặt của bạn, cặp ch&acirc;n m&agrave;y l&agrave; yếu tố rất quan trọng l&agrave;m t&ocirc;n l&ecirc;n vẻ rạng ngời, sắc sảo của gương mặt..&nbsp;&nbsp;</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Được ph&aacute;t triển c&ugrave;ng với d&ograve;ng sản phẩm Revitalash Advanced l&agrave; sản phẩm&nbsp;<strong style="font-family: Arial, Helvetica, sans-serif; ">Revita Brow</strong>&nbsp;c&oacute; c&ocirc;ng thức chuy&ecirc;n biệt để k&iacute;ch dưỡng sự ph&aacute;t triển của l&ocirc;ng ch&acirc;n m&agrave;y. Bạn g&aacute;i thường xuy&ecirc;n kẻ ch&acirc;n m&agrave;y sẽ v&ocirc; t&igrave;nh l&agrave;m chai m&ograve;n ch&acirc;n l&ocirc;ng m&agrave;y, l&agrave;m l&ocirc;ng m&agrave;y kh&oacute; ph&aacute;t triển, mọc lại rời rạc.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: center; "><font style="font-family: Arial; "><img class="news-image" alt="H&agrave;ng mi cong d&agrave;i tự nhi&ecirc;n với Latisse, L&agrave;m đẹp, " width="430" height="515" src="/userfiles/image/baiviet/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--4-.jpg" style="font-family: Arial, Helvetica, sans-serif; border: 0px; " /></font></p>\r\n<p><em style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "> </em></p>\r\n<p style="text-align: left; "><em style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><strong><font style="font-family: Arial; ">Revita Brow k&iacute;ch hoạt l&ocirc;ng m&agrave;y mọc đều, đầy đặn chỉ sau 3 tuần</font></strong></em></p>\r\n<p><em style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "> </em></p>\r\n<p><em><strong><font style="font-family: Arial; ">Revita Brow c&oacute; gi&aacute; 1,950,000</font></strong></em></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Revita Brow sử dụng sức mạnh của chuỗi axit amin &amp; thực vật điều ho&agrave; gi&uacute;p k&iacute;ch hoạt &amp; hồi sinh sự ph&aacute;t triển ở ch&acirc;n l&ocirc;ng maỳ l&agrave;m l&ocirc;ng m&agrave;y mọc trở lại đều đặn, sẫm m&agrave;u v&agrave; khoẻ mạnh hơn. Hơn nữa, c&aacute;c tinh chất chuy&ecirc;n biệt c&oacute; trong Revita Brow c&ograve;n bổ sung dồi d&agrave;o dưỡng chất, chống lại c&aacute;c t&aacute;c hại của mỹ phẩm như chất ch&igrave; trong b&uacute;t vẽ, giữ cho l&ocirc;ng m&agrave;y đầy đặn &amp; kh&ocirc;ng bị g&atilde;y rụng trở lại. Sử dụng Revita Brow kh&ocirc;ng chỉ k&iacute;ch dưỡng cho l&ocirc;ng m&agrave;y của bạn mọc đầy đặn &amp; khoẻ mạnh m&agrave; c&ograve;n bảo tr&igrave; cho đ&ocirc;i m&agrave;y &iacute;t bị g&atilde;y rụng, chai m&ograve;n do sử dụng ch&igrave; kẻ mỗi ng&agrave;y.</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">B&ecirc;n cạnh 2 d&ograve;ng sản phẩm uy t&iacute;n d&agrave;nh cho l&ocirc;ng mi &amp; ch&acirc;n m&agrave;y, chuy&ecirc;n gia ''Revita'' cũng nhắm đến việc k&iacute;ch hoạt sự mọc t&oacute;c khi chế tạo d&ograve;ng sản phẩm chuy&ecirc;n biệt<strong style="font-family: Arial, Helvetica, sans-serif; ">&nbsp;''Hair by Revitalash ''&nbsp;</strong>gi&uacute;p bạn g&aacute;i c&oacute; m&aacute;i t&oacute;c d&agrave;y &amp; khoẻ mạnh.&nbsp;</font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: center; "><font style="font-family: Arial; "><img class="news-image" alt="H&agrave;ng mi cong d&agrave;i tự nhi&ecirc;n với Latisse, L&agrave;m đẹp, " width="200" height="234" src="/userfiles/image/baiviet/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--5-.jpg" style="font-family: Arial, Helvetica, sans-serif; border: 0px; " />&nbsp;<img class="news-image" alt="H&agrave;ng mi cong d&agrave;i tự nhi&ecirc;n với Latisse, L&agrave;m đẹp, " src="/userfiles/image/baiviet/1347078858-doi-mat-dep-voi-hang-mi-cong-vut--6-.jpg" style="font-family: Arial, Helvetica, sans-serif; border: 0px; " width="250" height="153" /></font></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><em><strong><font style="font-family: Arial; ">Hair by Revitalash được kiểm nghiệm hiệu quả trong việc k&iacute;ch th&iacute;ch sự mọc t&oacute;c &amp; trị h&oacute;i</font></strong></em></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><em><strong><font style="font-family: Arial; ">Hair by Revitalash c&oacute; gi&aacute; 2,990,000</font></strong></em></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify; "><font style="font-family: Arial; ">Hair by Revitalash'' được tinh chế từ c&aacute;c hoạt chất th&iacute;ch hợp cho sự ph&aacute;t triển của t&oacute;c &amp; c&aacute;c dưỡng chất như rễ c&acirc;y nh&acirc;n s&acirc;m, chiết xuất protein dồi d&agrave;o từ lu&aacute; m&igrave; &amp; chiết xuất từ c&aacute;c tr&aacute;i c&acirc;y kh&ocirc;ng chỉ k&iacute;ch hoạt ch&acirc;n t&oacute;c ph&aacute;t triển m&agrave; c&ograve;n tiếp th&ecirc;m c&aacute;c dưỡng chất cho t&oacute;c mọc d&agrave;y, nhiều &amp; tr&agrave;n đầy sức sống.</font><font style="font-family: Arial; "><br />\r\n</font></p>', '   Chỉ 2 phút mỗi ngày với Latisse thế hệ mới, bạn sẽ sở hữu hàng mi cong dài đáng mơ ước.\r\n', NULL, '55_1348884909_hang-mi-cong-dai-tu-nhien-voi-Latisse.jpg', '1', 1351692030, 1351692252, 1, 'adminf', 0, '', ''),
(13, 'Cách thức sử dụng website', '<div>\r\n<div id="freetextbox" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 20px; margin-right: 19px; margin-bottom: 0px; margin-left: 19px; width: 725px; display: block; float: left; ">\r\n<p style="color: rgb(55, 61, 66); font-family: Verdana, Tahoma, Arial, Helvetica, sans-serif; font-size: 13px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">&nbsp;</p>\r\n<p style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">&nbsp;<strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Nội dung:</strong><br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n&nbsp;</p>\r\n<div style="color: rgb(55, 61, 66); font-family: Verdana, Tahoma, Arial, Helvetica, sans-serif; font-size: 13px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><a class="normaltext" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Tahoma; font-size: 9pt; color: rgb(55, 61, 66); ">\r\n<p style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 20px; ">&nbsp;&nbsp;&nbsp;&nbsp;1.	Đăng k&yacute; th&agrave;nh vi&ecirc;n<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.	Mua h&agrave;ng (xem phần mẹo vặt mua sắm)<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.	Kiểm tra th&ocirc;ng tin.&nbsp;<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n&nbsp;</p>\r\n<p style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Thực hiện:</strong><br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n&nbsp;</p>\r\n</a></div>\r\n<a class="normaltext" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Tahoma; font-size: 9pt; color: rgb(55, 61, 66); ">\r\n<div style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n<table width="100%" cellspacing="0" cellpadding="10" bordercolor="#C9C9C9" border="1" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border-collapse: collapse; line-height: 18px; ">\r\n    <tbody style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td width="28" valign="top" height="24" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Bước</strong></td>\r\n            <td width="256" valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Nội dung</strong></td>\r\n            <td width="373" valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">H&igrave;nh ảnh minh họa</strong></td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td height="25" bgcolor="#0164c0" colspan="3" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><span style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(255, 255, 255); "><strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">1.	Đăng k&yacute; th&agrave;nh vi&ecirc;n</strong></span></td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">A</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Chọn Đăng k&yacute; ở g&oacute;c tr&ecirc;n b&ecirc;n phải<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" style="padding: 0px; margin: 0px; text-align: left;">&nbsp;<img width="321" height="81" src="/userfiles/image/dich-vu-khach-hang/bieutuonggiohang.jpg" alt="" /></td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">B</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Nhập th&ocirc;ng tin c&ocirc;ng ty:<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            Những th&ocirc;ng tin n&agrave;y ch&uacute;ng t&ocirc;i sử dụng để giao dịch v&agrave; xuất h&oacute;a đơn gi&aacute; trị gia tăng. V&igrave; vậy bạn phải nhập đầy đủ v&agrave; ch&iacute;nh x&aacute;c theo thực tế của c&ocirc;ng ty của bạn.&nbsp;<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" style="padding: 0px; margin: 0px; text-align: left;"><img width="455" height="270" src="/userfiles/image/dich-vu-khach-hang/thongtinnguoidangky.jpg" alt="" />&nbsp;</td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">C</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">X&aacute;c nhận th&ocirc;ng tin:<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            Mục k&yacute; tự nhập đ&uacute;ng theo phần h&igrave;nh ảnh. Chọn đăng k&yacute; để kết th&uacute;c tạo t&agrave;i khoản&nbsp;<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" style="padding: 0px; margin: 0px;"><img width="388" height="265" src="/userfiles/image/dich-vu-khach-hang/xacnhanthongtin.jpg" alt="" />&nbsp;</td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">D</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">K&iacute;ch hoạt t&agrave;i khoản:<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            Sau khi chọn đăng k&yacute;, hệ thống sẽ gởi đến email của bạn m&atilde; th&agrave;nh vi&ecirc;n, mật khẩu v&agrave; y&ecirc;u cầu k&iacute;ch hoạt. Bạn kiểm tra email v&agrave; nhấp v&agrave;o đường link để k&iacute;ch hoạt&nbsp;<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">&nbsp;</td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">E</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Ho&agrave;n tất<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><a class="normaltext" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Tahoma; font-size: 9pt; color: rgb(55, 61, 66); "><img width="219" height="65" src="/userfiles/image/dich-vu-khach-hang/Dangkythangcong.jpg" alt="" /></a></td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td height="25" bgcolor="#0164c0" colspan="3" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "><span style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(255, 255, 255); "><strong style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">3.	Kiểm tra th&ocirc;ng tin</strong></span></td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">A</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Nhấp v&agrave;o phần th&agrave;nh vi&ecirc;n g&oacute;c tr&ecirc;n b&ecirc;n phải m&agrave;ng h&igrave;nh để kiểm tra th&ocirc;ng tin t&agrave;i khoản, thay đổi mật khẩu v&agrave; c&acirc;u hỏi gợi nhớ mật khẩu của bạn nếu cần thiết.<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <p><img width="339" height="86" alt="" src="/userfiles/image/dich-vu-khach-hang/thanhvien.jpg" />&nbsp;</p>\r\n            <p><img width="493" height="276" alt="" src="/userfiles/image/dich-vu-khach-hang/doimatkhau.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">B</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Nhấp v&agrave;o t&ecirc;n đăng nhập để kiểm tra th&ocirc;ng tin về tất cả c&aacute;c đơn h&agrave;ng bạn đ&atilde; đặt h&agrave;ng ch&uacute;ng t&ocirc;i&nbsp;<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">&nbsp;</td>\r\n        </tr>\r\n        <tr style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n            <td valign="top" align="center" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">C</td>\r\n            <td valign="top" style="padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">Dịch vụ hậu m&atilde;i của ch&uacute;ng t&ocirc;i sẽ t&iacute;ch luỹ điểm thưởng cho bạn sau mỗi lần mua h&agrave;ng. Nhấn v&agrave;o phần &quot;Điểm T&iacute;ch Lũy&quot; để kiểm tra số điểm của bạn&nbsp;<br style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; " />\r\n            &nbsp;</td>\r\n            <td valign="top" align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</a>\r\n<p style="color: rgb(55, 61, 66); font-family: Verdana, Tahoma, Arial, Helvetica, sans-serif; font-size: 13px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">&nbsp;</p>\r\n</div>\r\n<div align="center" id="tienich" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 20px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; width: 725px; display: block; float: left; color: rgb(55, 61, 66); font-family: Verdana, Tahoma, Arial, Helvetica, sans-serif; font-size: 13px; ">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>', ' Cách thức sử dụng website', NULL, NULL, '5', 1325038036, 1338884444, 1, 'tranminhthien', 0, 'hướng dẫn, đăng ký, mua hàng, giỏ hàng, kiểm tra, xây dựng tài khoản...', 'huong dan, dang ky, mua hang, gio hang, kiem tra, xay dung tai khoan...'),
(22, '	 Sơ đồ website', '<ul style="line-height:28px;margin-left:20px" class="it">\r\n    <li><a href="/">TRANG CHỦ</a></li>\r\n    <li><a href="#">GIỚI THIỆU</a>\r\n    <ul style="margin-left:40px;text-transform:capitalize">\r\n        <li><a href="#">Giới thiệu chung</a></li>\r\n        <li><a href="#">Sứ mệnh</a></li>\r\n        <li><a href="#">Văn h&oacute;a c&ocirc;ng ty</a></li>\r\n        <li><a href="#">Th&ocirc;ng tin li&ecirc;n hệ</a></li>\r\n        <li><a href="#">Tuyển dụng</a></li>\r\n        <li><a href="#">Catalogue miễn ph&iacute;</a></li>\r\n        <li><a href="#">Chuỗi cửa h&agrave;ng</a></li>\r\n    </ul>\r\n    </li>\r\n    <li><a href="#">SẢN PHẨM &amp; DỊCH VỤ</a>\r\n    <ul style="margin-left:40px">\r\n        <li><a href="#">GIẤY</a></li>\r\n        <li><a href="#">MỰC IN - HỘP MỰC</a></li>\r\n        <li><a href="#">VĂN PH&Ograve;NG PHẨM</a></li>\r\n        <li><a href="#">M&Aacute;Y VĂN PH&Ograve;NG</a></li>\r\n        <li><a href="#">VẬT PHẨM QUẢNG C&Aacute;O</a></li>\r\n        <li><a href="#">TRANG THIẾT BỊ VĂN PH&Ograve;NG</a></li>\r\n        <li><a href="#">DỊCH VỤ IN ẤN</a></li>\r\n    </ul>\r\n    </li>\r\n    <li><a href="#">T&Igrave;M KIẾM SẢN PHẨM</a></li>\r\n    <li><a href="#">LI&Ecirc;N HỆ</a></li>\r\n    <li><a href="#">ĐỐI T&Aacute;C V&Agrave; LI&Ecirc;N KẾT</a></li>\r\n    <li><a href="#">THƯƠNG HIỆU NỔI TIẾNG</a></li>\r\n    <li><a href="#">EMAIL NHẬN ƯU Đ&Atilde;I</a></li>\r\n    <li><a href="#">TH&Ocirc;NG TIN KHUYẾN M&Atilde;I</a></li>\r\n    <li><a href="#">DỊCH VỤ KH&Aacute;CH H&Agrave;NG</a>\r\n    <ul style="margin-left:40px">\r\n        <li><a href="#">Mẹo mua sắm cho kh&aacute;ch h&agrave;ng mới</a></li>\r\n        <li><a href="#">C&aacute;ch thức sử dụng website</a></li>\r\n        <li><a href="#">Ghi nhớ &amp; cấp lại mật khẩu</a></li>\r\n        <li><a href="#">C&acirc;u hỏi thường gặp FAQs</a></li>\r\n    </ul>\r\n    </li>\r\n    <li><a href="#">CHƯƠNG TR&Igrave;NH TH&Agrave;NH VI&Ecirc;N</a>\r\n    <ul style="margin-left:40px">\r\n        <li><a href="#">Lợi &iacute;ch cho th&agrave;nh vi&ecirc;n</a></li>\r\n        <li><a href="#">Chương tr&igrave;nh li&ecirc;n kết cho th&agrave;nh vi&ecirc;n</a></li>\r\n        <li><a href="#">Form đặt h&agrave;ng trực tuyến</a></li>\r\n    </ul>\r\n    </li>\r\n    <li><a href="#">ĐĂNG NHẬP T&Agrave;I KHOẢN</a></li>\r\n    <li><a href="#">ĐĂNG K&Yacute; T&Agrave;I KHOẢN MỚI</a></li>\r\n    <li><a href="#">QU&Ecirc;N MẬT KHẨU T&Agrave;I KHOẢN</a></li>\r\n    <li><a href="#">CH&Iacute;NH S&Aacute;CH V&Agrave; BẢO MẬT</a>\r\n    <ul style="margin-left:40px">\r\n        <li><a href="#">	C&aacute;c quy định &amp; điều kiện</a></li>\r\n        <li><a href="#">Quan điểm ri&ecirc;ng</a></li>\r\n        <li><a href="#">Quyền lợi &amp; bản quyền</a></li>\r\n        <li><a href="#">Sơ đồ website</a></li>\r\n    </ul>\r\n    </li>\r\n</ul>', '   Sơ đồ website', NULL, NULL, '3', 1325039851, 1339075228, 1, 'tranminhthien', 0, 'sơ đồ, flexoffice, wedsite', 'so do, flexoffice, wedsite'),
(23, 'Phương thức thanh toán  khi mua hàng', '<p><strong>1. Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng thẻ nội địa (ATM):</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; Qu&yacute; Kh&aacute;ch vui l&ograve;ng thanh to&aacute;n v&agrave;o số t&agrave;i khoản Ng&acirc;n h&agrave;ng của người nhận sau khi gửi đơn h&agrave;ng:</p>\r\n<table width="690" cellspacing="0" cellpadding="0" border="0" style="margin-left:30px;line-height:25px">\r\n    <tbody>\r\n        <tr>\r\n            <td width="140">T&ecirc;n Ng&acirc;n h&agrave;ng:</td>\r\n            <td width="550"><strong>Đầu Tư &amp; Ph&aacute;t Triển Việt Nam</strong> - <strong>Chi Nh&aacute;nh T&acirc;y S&agrave;i G&ograve;n</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Chủ T&agrave;i khoản:</td>\r\n            <td><strong>C&Ocirc;NG TY TNHH MỘT TH&Agrave;NH VI&Ecirc;N TM DV T&Acirc;N LỰC MIỀN NAM</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Số T&agrave;ikho&agrave;n VND:</td>\r\n            <td><strong>311.10.000.424280</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Số T&agrave;i khoản USD:</td>\r\n            <td><strong>311.10.37.000.5306</strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><br />\r\n&nbsp;&nbsp; Sau khi c&oacute; x&aacute;c nhận  thanh to&aacute;n từ ng&acirc;n h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh giao h&agrave;ng.<br />\r\n&nbsp;&nbsp; Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n sớm để nhận h&agrave;ng nhanh ch&oacute;ng.<br />\r\n&nbsp;&nbsp; Vui l&ograve;ng th&ocirc;ng b&aacute;o m&atilde; đơn h&agrave;ng khi giao dịch c&ugrave;ng ch&uacute;ng t&ocirc;i.</p>\r\n<p><strong>2. Thanh to&aacute;n trực tiếp khi nhận được h&agrave;ng từ đơn đặt h&agrave;ng:</strong></p>\r\n<table width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-left:30px;line-height:25px">\r\n    <tbody>\r\n        <tr>\r\n            <td width="27" valign="top">1</td>\r\n            <td width="868">Ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ sớm nhất đến kh&aacute;ch h&agrave;ng ( trong v&ograve;ng 24h t&iacute;nh từ l&uacute;c gửi đơn h&agrave;ng ) để x&aacute;c thực với kh&aacute;ch h&agrave;ng th&ocirc;ng tin đơn h&agrave;ng qua điện thoại.</td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top">2</td>\r\n            <td>Đơn h&agrave;ng sẽ được chuyển đến địa chỉ v&agrave; thanh to&aacute;n   sau khi x&aacute;c thực trực tiếp với kh&aacute;ch h&agrave;ng ( Kh&ocirc;ng t&iacute;nh ph&iacute; vận chuyển ).</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '  Phương thức thanh toán  khi mua hàng', NULL, NULL, '6', 1326540748, 1338372927, 0, 'tranminhthien', 0, 'website, doanh nghiệp, sản phẩm, quảng cáo, thanh toán, đơn hàng, ATM, trực tiếp', 'website, doanh nghiep, san pham, quang cao, thanh toan, don hang, ATM, truc tiep');
INSERT INTO `tbl_content` (`contents_id`, `contents_name`, `contents_content`, `detail_short`, `contents_view`, `contents_image`, `doc_categories_parentid`, `date_added`, `last_modified`, `status`, `useradd`, `sort`, `tag`, `keytag`) VALUES
(51, 'Sao Hollywood diện hàng hiệu lên tạp chí', '<p>&nbsp;</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="KatieHolmeschotạpch&iacute;VogueT&acirc;yBanNha.Katiec&oacute;mộtnh&acirc;nvậtqu&acirc;nsựkhốcliệtnhưngnữt&iacute;nhchotrangb&igrave;acủaVogueEspa&ntilde;a.Đend&agrave;itay&aacute;orencủac&ocirc;vớipolocổcủaLanvin.Sơnm&oacute;ngtaym&agrave;uđen,mắtsmokeyv&agrave;mộtqu&acirc;nđộimũdaho&agrave;nth&agrave;nhc&aacute;inh&igrave;ndũngcảmcủac&ocirc;." border="1" height="424" width="600" style="margin-left: 1px; " src="images/sao8.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">B&agrave; x&atilde; của Tom Cruise, Katie Holmes, thể hiện vẻ đẹp vừa quyến rũ, vừa mạnh mẽ tr&ecirc;n tạp ch&iacute; Vogue, T&acirc;y Ban Nha. Chiếc v&aacute;y ren đen hiệu Lanvin c&ocirc; diện gi&uacute;p khoe được v&ograve;ng ba nở nang. Đồng thời, m&agrave;u đen cũng l&agrave; giải ph&aacute;p &quot;thu gọn&quot; th&acirc;n h&igrave;nh &quot;g&aacute;i một con&quot; của Katie rất hiệu quả.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="MeganFoxchoElleTrungQuốc.Ng&ocirc;isaogợicảmmặcensmeblecrepe-lentấtcảc&aacute;cm&agrave;uđencủaEmporioArmani.Jumpsuitph&ugrave;hợpvớinhiềuMeganhơnsovớim&ocirc;h&igrave;nhđườngbăng&ocirc;ng.T&ocirc;inghĩrằngtrangphụcsẽc&oacute;nhiềuhơnmộtt&aacute;cđộngchốnglạimộtnềntrắngsạchsẽ,chứkh&ocirc;ngphảil&agrave;mộttrongnhữngn&agrave;ycỏ.Lộnggi&oacute;t&oacute;cv&agrave;đ&ocirc;im&ocirc;iđỏn&oacute;ngho&agrave;nth&agrave;nhmộtc&aacute;inh&igrave;nrấtb&oacute;ngbẩy." border="1" height="424" width="600" style="margin-left: 1px; " src="images/sao9.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">''C&ocirc; đ&agrave;o gợi cảm'' Megan Fox diện bộ jumpsuit của Emporio Armani tr&ecirc;n tạp ch&iacute; Elle, Trung Quốc. Bộ trang phục lệch vai, được thiết kế độc đ&aacute;o n&agrave;y cho bạn g&aacute;i khoe được bờ vai thon nuột v&agrave; ''giấu nhẹm'' được v&ograve;ng ngực nhỏ, v&ograve;ng eo hơi lớn. Bạn c&oacute; thể học Megan Fox t&ocirc; son m&ocirc;i m&agrave;u để th&ecirc;m hấp dẫn.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" border="1" height="400" width="600" style="margin-left: 1px; " alt="" src="images/sao11.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">M&agrave;u trắng rất hợp với những người c&oacute; th&acirc;n h&igrave;nh mảnh mai như Sarah Jessica Parker. C&ocirc; tr&ocirc;ng trẻ hơn tuổi khi xuất hiện tr&ecirc;n trang b&igrave;a của tạp ch&iacute; Vogue trong chiếc &aacute;o kho&aacute;c d&agrave;i m&agrave;u trắng v&agrave; thắt lưng da của Burberry Prorsum.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="SelenaGomezchoElleMexico.C&ocirc;mặcmộtm&agrave;uxanh&aacute;od&agrave;inửađ&ecirc;mcăngđanv&agrave;quầncủaAltuzarra.V&agrave;nhđaiđồngvớitếtchitiếtv&agrave;tual&agrave;Gucci.kh&oacute;alượns&oacute;ngcủac&ocirc;đượcbaophủbởimộtcuteScalaProntomũmềm.Baogồmđơngiảnv&agrave;tinhvi,n&oacute;cũngl&agrave;c&aacute;inh&igrave;ntrưởngth&agrave;nhhơnSelena,m&agrave;t&ocirc;ith&iacute;ch." border="1" height="424" width="600" style="margin-left: 1px; " src="images/sao12.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">C&ocirc; n&agrave;ng Selena Gomez bỗng chốc ''h&oacute;a th&agrave;nh'' một qu&yacute; c&ocirc; thanh lịch khi diện bộ trang phục m&agrave;u xanh sẫm của Altuzarra tr&ecirc;n b&igrave;a tạp ch&iacute; Elle, Mexico, điểm nhấn l&agrave; chiếc đai lưng to bản m&agrave;u &aacute;nh kim của Gucci. Với những bộ đồ &ocirc;m s&aacute;t như thế n&agrave;y, c&aacute;c bạn g&aacute;i tr&ograve;n trịa n&ecirc;n ''tr&aacute;nh xa''.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="Đốivớic&aacute;cấnbảnth&aacute;ngtưcủaMỹGlamourtạpch&iacute;,Katec&oacute;mộtkiểut&oacute;cd&agrave;iv&agrave;mặcmộtchiếcv&aacute;yHerv&eacute;L&eacute;gercaosuinbăngren.C&ocirc;đượcb&igrave;nhchọnl&agrave;số1GlamHầuhếtc&aacute;cnữdiễnvi&ecirc;nbởiđộcgiảcủaGlamour." border="1" height="424" width="600" style="margin-left: 1px; " src="images/sao13.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Diễn vi&ecirc;n Kate Winslet kh&ocirc;ng bao giờ qu&ecirc;n ph&ocirc; diễn vẻ đẹp ''bốc lửa'' của m&igrave;nh mỗi lần xuất hiện. C&ocirc; khoe được v&ograve;ng một đầy đặn trong chiếc v&aacute;y Herv&eacute; L&eacute;ger tr&ecirc;n tạp ch&iacute; Glamour, Mỹ.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="Phi&ecirc;nbảnt&iacute;nhnăngtạpch&iacute;ElleMỹKatyPerryvềvấnđềcủahọ2011th&aacute;ngba." border="1" height="419" width="600" style="margin-left: 1px; " src="images/sao14.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Ca sĩ Katy Perry diện bộ trang phục color block, được coi l&agrave; hot nhất năm 2011 của Gucci tr&ecirc;n tạp ch&iacute; Elle, Mỹ. Những gam m&agrave;u ''bắt mắt'' như thế n&agrave;y khi mix c&ugrave;ng nhau sẽ rất thu h&uacute;t &aacute;nh nh&igrave;n của người xung quanh. V&igrave; thế, lời khuy&ecirc;n cho bạn g&aacute;i b&eacute;o tr&ograve;n l&agrave; kh&ocirc;ng n&ecirc;n mặc ch&uacute;ng.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="KateMosschoVogueAnh.C&aacute;cm&ocirc;h&igrave;nhmớicướic&aacute;inh&igrave;ntrongmộtchiếcv&aacute;ylensanh&ocirc;củaMiuMiu,đượcbaophủtrongmộtthiếtkếhoath&ecirc;u.Bắnbaogồmmờc&oacute;mộtcảmgi&aacute;cretrođếnn&oacute;,cũngnhưt&oacute;ccủaKate.Marninhựathảb&ocirc;ngtai,đồngcuffDianevonFurstenbergv&agrave;đ&ocirc;im&ocirc;iđỏđậmth&ecirc;mtrọnglượngđếnKatesnh&igrave;n." border="1" height="415" width="600" style="margin-left: 1px; " src="images/sao15.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Si&ecirc;u mẫu Kate Moss ki&ecirc;u sa v&agrave; qu&yacute; ph&aacute;i trong bộ trang phục m&agrave;u san h&ocirc; của Miu Miu tr&ecirc;n tạp ch&iacute; Vogue, Anh. Những bạn g&aacute;i y&ecirc;u th&iacute;ch phong c&aacute;ch cổ điển c&oacute; thể chọn kiểu v&aacute;y n&agrave;y.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="OliviaPalermochoc&aacute;ccửah&agrave;ngTilYouDroptạpch&iacute;.Điềun&agrave;yđ&atilde;đ&atilde;c&oacute;b&igrave;abắtmắtnhấtchoth&aacute;ng8năm2011.OliviacủaSass&amp;tranhthủtrangphụcđ&aacute;ngy&ecirc;ul&agrave;nhưthến&agrave;o?N&oacute;c&oacute;t&iacute;nhnăngh&agrave;ngchụccutoutsdalớptrongm&agrave;usắcm&ugrave;athuấm&aacute;p.C&ocirc;mặctrangphụctrởlạitrướcbaophủv&agrave;trừđic&aacute;cv&agrave;nhđai." border="1" height="433" width="600" style="margin-left: 1px; " src="images/sao16.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Người mẫu ki&ecirc;m diễn vi&ecirc;n Olivia Palermo xuất hiện tr&ecirc;n tạp ch&iacute; Shop Til You Drop với bộ v&aacute;y vẩy c&aacute; của Olivia''s Sass &amp; Bide. Tuy nhi&ecirc;n, thay v&igrave; chọn thiết kế cổ chữ V, c&ocirc; lại diện v&aacute;y cổ tr&ograve;n. Kiểu cổ n&agrave;y d&agrave;nh cho những chị em c&oacute; v&ograve;ng một ''khi&ecirc;m tốn'', vừa k&iacute;n đ&aacute;o lại vẫn trẻ trung.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="MirandaKerrchoCosmopolitan,Australia.M&ocirc;h&igrave;nhn&agrave;ymặcmộtchiếcv&aacute;ym&agrave;ut&iacute;mmậnbăngsexyvớicổ-vv&agrave;zipph&iacute;atrước,bởiHerveLeger.C&aacute;cnềnm&agrave;ungọclams&aacute;ngv&agrave;nụcườirạngrỡcủaMirandal&agrave;mchomộtbaogồmvuivẻv&agrave;tr&agrave;nđầynănglượng.C&ocirc;ấytr&ocirc;ngtuyệtvờibảyth&aacute;ngsaukhic&ocirc;đ&atilde;c&oacute;emb&eacute;." border="1" height="415" width="600" style="margin-left: 1px; " src="images/sao17.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">''Thi&ecirc;n thần của Victoria''s secret'' Miranda Kerr khoe trọn những đường cong ho&agrave;n mỹ tr&ecirc;n tạp ch&iacute; Cosmopolitan, Australia. Bộ v&aacute;y m&agrave;u t&iacute;m sẫm b&oacute; s&aacute;t của Herve Leger kh&aacute; ''k&eacute;n'' người mặc n&ecirc;n nếu kh&ocirc;ng c&oacute; đ&ocirc;i g&ograve; bồng đảo, v&ograve;ng m&ocirc;ng nở nang c&ugrave;ng v&ograve;ng eo thon gọn, bạn tr&aacute;nh mặc kiểu thiết kế n&agrave;y.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="LilyAllenchoElleAnh.CasĩngườiAnhmặcmộtchiếcv&aacute;ytừbộsưutậpm&ugrave;ađ&ocirc;ngy&ecirc;uth&iacute;chcủat&ocirc;inăm2011,Dolce&amp;Gabbana.Insaocharmeuseănmặccủac&ocirc;l&agrave;tươngphảnbằngc&aacute;ctấmđăngtenđen.T&oacute;ccủac&ocirc;đượcmặctrongs&oacute;ngretrov&agrave;make-upgiữtốithiểu.CandiceSwanepoelSA(phải)mặctrangphụctr&ecirc;nđườngbăngvớimộtchiếct&uacute;iinngựavằn,tấtđenv&agrave;gi&agrave;ytrắng." border="1" height="424" width="600" style="margin-left: 1px; " src="images/sao18.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Ca sĩ người Anh - Lily Allen diện mẫu thiết kế nằm trong bộ sưu tập m&ugrave;a đ&ocirc;ng 2011 của Dolce &amp; Gabbana. Bộ v&aacute;y d&ugrave; k&iacute;n đ&aacute;o nhưng vẫn rất gợi cảm khi được th&ecirc;m những lớp ren.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="MilaKunischoFlare,Canada.Nữdiễnvi&ecirc;nngườiMỹgốcNgamặcmộtchiếcv&aacute;ym&agrave;uc&aacute;hồicủaLanvinvớivolumizedđườngviềncổ&aacute;ov&agrave;v&aacute;yđượctrangbị.T&oacute;ccủac&ocirc;đượcmặcho&agrave;nto&agrave;nsangmộtb&ecirc;n.Trangphụctr&ecirc;nđườngbăngc&oacute;vẻnhưqu&aacute;accessorisedsovớic&aacute;inh&igrave;nMila.Ngo&agrave;ira,vẻđẹpcủađườngtiệmcậnđượchiểnthịratốthơntr&ecirc;ntạpch&iacute;." border="1" height="433" width="600" style="margin-left: 1px; " src="images/sao19.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Nữ diễn vi&ecirc;n người Mỹ gốc Nga, Mila Kunis, bay bổng tr&ecirc;n tạp ch&iacute; Flare, Canada, trong mẫu thiết kế s&aacute;ng tạo với phần đường viền cổ &aacute;o lớn, m&agrave;u c&aacute; hồi của Lavin.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="showborder" width="1" style="color: rgb(0, 0, 0); text-align: start; font-family: TimesNewRoman; ">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center" style="list-style-type: none; list-style-position: initial; list-style-image: initial; margin: 0px; padding: 0px; font-size: 16px; "><img align="center" alt="MiaWasikowskacủaHarperBazaar,Australia.Nữdiễnvi&ecirc;nmặcLouisVuittonchotrangb&igrave;atheokiểucổđiển.C&ocirc;đặtratrongmộtchiếcv&aacute;ym&agrave;uđenv&agrave;trắngtuyệtđốivớicổcao,tay&aacute;ophồngv&agrave;mộtcorsetm&agrave;uđenbuttoned.K&eacute;ot&oacute;cv&agrave;hầunhưkh&ocirc;ngc&oacute;tạon&ecirc;nchơichốnglạisựphứctạpcủabộtrangphục.C&ocirc;ấytr&ocirc;ngrấtđẹpsovớic&aacute;inh&igrave;n''tratấn''đườngbăng." border="1" height="415" width="600" style="margin-left: 1px; " src="images/sao20.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="Image" style="font-family: Arial; font-size: 8pt; ">Mang hơi hướng cổ điển, bộ v&aacute;y của Louis Vuitton khiến người đẹp Mia Wasikowska tr&ocirc;ng như một tiểu thư đ&agrave;i c&aacute;c tr&ecirc;n tạp ch&iacute; Harper Bazaar, Australia. Bộ v&aacute;y l&agrave;m nổi bật l&ecirc;n phần eo v&agrave; ''đẩy'' phần ngực đầy hơn.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '  Sao Hollywood diện hàng hiệu lên tạp chí', NULL, '51_freshhome-trang-tri-ho-boi_07.jpg', '1', 1350483692, 1350615419, 1, 'adminf', 0, '', ''),
(52, 'Thời trang cá tính, năng động cho bé trai', '<p style="text-align: left; "><strong>Sơmi, quần jeans, &aacute;o thun, gilet kho&aacute;c ngo&agrave;i c&aacute; t&iacute;nh gi&uacute;p b&eacute; trai th&ecirc;m năng động khi thời tiết chuyển m&ugrave;a.</strong></p>\r\n<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/baiviet/17(42).jpg" width="400" height="581" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/171(12).jpg" width="400" height="581" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/172(9).jpg" width="400" height="607" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/173(9).jpg" width="400" height="625" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/174(9).jpg" width="400" height="561" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/175(7)%20(1).jpg" width="400" height="575" alt="" /></p>\r\n<p style="text-align: right; "><em><strong>Theo Camnangiadinh</strong></em></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/176(4).jpg" width="400" height="602" alt="" /></p>\r\n<p style="text-align: center; ">&nbsp;</p>', '  Sơmi, quần jeans, áo thun, gilet khoác ngoài cá tính giúp bé trai thêm năng động khi thời tiết chuyển mùa.\r\n', NULL, '52_174(9).jpg', '1', 1351163606, 1351164136, 1, 'adminf', 0, '', ''),
(53, 'Thời trang của Mackenzie - thiên thần tinh khôi', '<p>&nbsp;<strong style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; ">Ch&uacute;ng ta c&ugrave;ng chi&ecirc;m ngưỡng c&ocirc; b&eacute; đang trở th&agrave;nh một hiện tượng trong cộng đồng mạng Mackenzie Foy. Thi&ecirc;n thần nhỏ n&agrave;y đ&atilde; v&agrave;o vai con g&aacute;i Edward &amp; Bella trong loạt phim &quot;Twilight Saga&quot;. Một kh&aacute;n giả nhận x&eacute;t: Mackenzie sở hữu vẻ đẹp như một thi&ecirc;n thần tinh kh&ocirc;i.</strong><br style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; " />\r\n<br style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; " />\r\n<span style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; ">Mackenzie Foy&nbsp; đ&atilde; g&oacute;p phần kh&ocirc;ng nhỏ cho th&agrave;nh c&ocirc;ng của bộ phim Chạng vạng. C&ocirc; b&eacute; cũng từng quảng c&aacute;o cho h&atilde;ng thời trang Guees, tr&ocirc;ng rất ra d&aacute;ng v&agrave; chuy&ecirc;n nghiệp như một ng&ocirc;i sao nh&iacute;.</span><br style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; " />\r\n&nbsp;<br style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; " />\r\n<span style="color: rgb(51, 51, 51); line-height: 21.33333396911621px; text-align: justify; ">Khu&ocirc;n mặt đẹp như tạc của Mackenzie Foy khiến nhiều người phải nao l&ograve;ng khi chi&ecirc;m ngưỡng. Mackenzie Foy biến h&oacute;a kh&aacute; đa dạng trong c&ocirc;ng việc mẫu nh&iacute;, c&oacute; l&uacute;c tr&ocirc;ng c&ocirc; b&eacute; kh&aacute; chững chạc, gi&agrave; dặn trước tuổi. Nhưng ngược lại, Mackenzie Foy cũng thật thơ ng&acirc;y, đ&aacute;ng y&ecirc;u. Mackenzie Foy sau bộ phim &quot;Chạng vạng&quot; sẽ tỏa s&aacute;ng kh&ocirc;ng chỉ với nghiệp l&agrave;m mẫu m&agrave; c&ograve;n cả diễn xuất.</span></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/296(1).jpg" width="430" height="539" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/295(5).jpg" width="430" height="587" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/294(5).jpg" width="430" height="579" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/293(5).jpg" width="430" height="516" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/292(5).jpg" width="430" height="538" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/291(10).jpg" width="430" height="613" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/baiviet/29(55).jpg" width="430" height="508" alt="" /></p>', 'Chúng ta cùng chiêm ngưỡng cô bé đang trở thành một hiện tượng trong cộng đồng mạng Mackenzie Foy. Thiên thần nhỏ này đã vào vai con gái Edward & Bella trong loạt phim "Twilight Saga". Một khán giả nhận xét: Mackenzie sở hữu vẻ đẹp như một thiên thần tinh khôi.', NULL, '53_293(5).jpg', '1', 1351164494, 1351164494, 1, '', 0, '', 'adminf'),
(54, 'Hướng dẫn mua hàng', '<p><span style="background-color: rgb(252, 252, 252); color: rgb(51, 51, 51); font-family: Arial; ">M&ocirc; tả c&aacute;c bước đơn giản để mua h&agrave;ng tại babyshop.com.vn</span></p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); ">Bạn c&oacute; thể lựa chọn một trong những c&aacute;ch mua h&agrave;ng sau :</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); "><strong style="border: 0px; margin: 0px; padding: 0px; ">1.</strong>Gọi điện đến&nbsp;<strong style="border: 0px; margin: 0px; padding: 0px; ">08.66767247 &nbsp;/ 0902 455 005</strong>, 08g00-21g, nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ.</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); "><strong style="border: 0px; margin: 0px; padding: 0px; ">2.</strong>&nbsp;Đặt mua h&agrave;ng tr&ecirc;n website: theo c&aacute;c hướng dẫn sau</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); "><strong style="border: 0px; margin: 0px; padding: 0px; ">Bước 1:</strong>&nbsp;T&igrave;m mua sản phẩm.</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); ">Kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin về sản phẩm theo nhiều c&aacute;ch (t&igrave;m theo chất liệu, m&agrave;u, t&igrave;m theo t&ecirc;n model, t&igrave;m kiếm n&acirc;ng cao theo t&iacute;nh năng&hellip;). Sau khi chọn được sản phẩm cần mua, vui l&ograve;ng bấm v&agrave;o n&uacute;t&nbsp;<strong style="border: 0px; margin: 0px; padding: 0px; ">&quot;Mua H&agrave;ng&quot;</strong></p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); "><strong style="border: 0px; margin: 0px; padding: 0px; ">Bước 2:</strong>&nbsp;Điền đầy đủ th&ocirc;ng tin <strong><em>(Qu&yacute; kh&aacute;ch vui l&ograve;ng điền đ&uacute;ng th&ocirc;ng tin li&ecirc;n lạc để tiện cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i li&ecirc;n hệ với qu&yacute; kh&aacute;ch một c&aacute;ch nhanh nhất.) &nbsp;</em></strong>Sau đ&oacute; Qu&yacute; kh&aacute;ch nhấn n&uacute;t <strong>&quot;Ho&agrave;n th&agrave;nh&quot;</strong></p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); "><strong style="border: 0px; margin: 0px; padding: 0px; ">Bước 3: </strong><strong>Xem lại đơn h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n</strong>, hiện tại c&ocirc;ng ty ch&uacute;ng t&ocirc;i chấp nhận thanh to&aacute;n qua c&aacute;c cổng thanh to&aacute;n như <strong>Bảo Kim, Ng&acirc;n Lượng</strong>, đồng thời Qu&yacute; kh&aacute;ch c&oacute; thể chuyển khoản theo c&aacute;c số t&agrave;i khoản tr&ecirc;n website</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); ">&nbsp;</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); ">Sau khi Qu&yacute; kh&aacute;ch gửi đơn h&agrave;ng, nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với qu&yacute; kh&aacute;ch một c&aacute;ch sớm nhất để x&aacute;c nhận.</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); ">&nbsp;</p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(252, 252, 252); ">Ch&acirc;n th&agrave;nh cảm ơn Qu&yacute; kh&aacute;ch</p>', '', NULL, NULL, '2', 1351264527, 1351264527, 1, '', 0, '', 'adminf'),
(56, 'La'' Maison Cafe & Gallery', '<p>&nbsp;<span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">&ldquo;Nh&agrave; t&ocirc;i&quot;, ng&ocirc;i nh&agrave; be b&eacute; xinh xinh ấy lu&ocirc;n mong muốn đem nhiều tiếng cười, nhiều niềm vui cho tất cả mọi người.&nbsp;</span></p>\r\n<p style="text-align: center; "><img width="650" height="242" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(20).jpg" /></p>\r\n<p style="text-align: left; "><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Bạn chẳng thể n&agrave;o đ&agrave;nh l&ograve;ng rời bước khi c&oacute; dịp gh&eacute; thăm &ldquo;Nh&agrave;&rdquo;. Một g&oacute;c vườn đ&oacute;n nắng sẽ ch&agrave;o bạn trong tiếng gi&oacute; x&agrave;o xạc len qua từng khe l&aacute;. &ldquo;Nh&agrave;&rdquo; hiện ra với một m&agrave;u trắng tinh kh&ocirc;i pha những sắc m&agrave;u thật dịu của những chiếc ghế kết hoa l&atilde;ng mạn. Sau khi đ&atilde; <a href="http://sonsuanha.com.vn/"><span style="color: rgb(0, 0, 0); ">sơn sữa nh&agrave;</span></a> , Một khoảng s&acirc;n thu nhỏ trong &ldquo; Nh&agrave;&rdquo; c&ugrave;ng với chiếc giường thả sau c&aacute;nh cửa xinh xinh, c&aacute;nh cửa được tạo ra bằng sự tỉ mỉ v&agrave; tinh tế từ người chủ của n&oacute;, c&aacute;nh cửa ấy trở th&agrave;nh h&igrave;nh ảnh đại diện thật kh&aacute;c biệt cho &ldquo;Nh&agrave;&rdquo;.</span></p>\r\n<p style="text-align: center; "><img width="660" height="438" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(3).jpg" /></p>\r\n<p style="text-align: left; "><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Đ&acirc;u đ&oacute; c&oacute; tiếng chim k&ecirc;u r&iacute;u r&iacute;t chuyền nh&agrave;nh. Một c&aacute;i c&acirc;y toạ lạc giữa &ldquo;Nh&agrave;&ldquo; với những lồng chim m&agrave;u trắng xinh xắn, t&aacute;n c&acirc;y xo&egrave; v&agrave; toả rộng, th&acirc;n c&acirc;y tưởng chừng mỏng manh ấy như th&acirc;u t&oacute;m mọi thứ v&agrave;o tầm mắt của bạn, bởi một lẽ n&oacute; sẽ xoa dịu bạn bằng một đ&agrave;n bướm uyển chuyển đến lạ thường đang lan toả, bay khắp &ldquo; Nh&agrave;&rdquo;. V&agrave; c&oacute; lẽ n&oacute; hiểu được rằng, n&oacute; sẽ l&agrave; t&iacute;n hiệu để bắt đầu dẫn bạn thăm quan to&agrave;n bộ&ldquo;Nh&agrave; t&ocirc;i&ldquo;.</span></p>\r\n<p style="text-align: center; "><img width="660" height="442" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(17).jpg" /></p>\r\n<p style="text-align: left; "><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Rẽ về ph&iacute;a b&ecirc;n phải của &ldquo;Nh&agrave; t&ocirc;i&ldquo; bạn sẽ bắt gặp một kh&ocirc;ng gian bếp thật ấm, thật sống động, bỡi lẽ ng&ocirc;i nh&agrave; n&agrave;o cũng kh&ocirc;ng thể thiếu c&aacute;i kh&ocirc;ng gian quan trọng giữ ấm cho to&agrave;n bộ ng&ocirc;i &ldquo;Nh&agrave;&ldquo;, kh&ocirc;ng gian bếp của &ldquo;Nh&agrave;&ldquo; được thiết kế với to&agrave;n bộ đồ handmande được s&aacute;ng tạo bởi ri&ecirc;ng &ldquo;Nh&agrave;&ldquo; v&agrave; n&oacute; trở th&agrave;nh một c&aacute;i shop handmade nho nhỏ chuy&ecirc;n trưng b&agrave;y, v&agrave; b&aacute;n những sản phẩm handmande do ch&iacute;nh &ldquo;Nh&agrave;&ldquo; tạo ra.</span></p>\r\n<p style="text-align: center; "><img width="660" height="441" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(7).jpg" /></p>\r\n<p style="text-align: left; "><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Bước l&ecirc;n cầu thang, bạn sẽ kh&ocirc;ng khỏi ngỡ ng&agrave;ng với kh&ocirc;ng gian ph&ograve;ng ngủ v&ocirc; c&ugrave;ng l&atilde;ng mạn nằm thu m&igrave;nh tr&ecirc;n g&aacute;c lửng, r&egrave;m cửa bu&ocirc;ng đ&oacute;n nắng, ph&iacute;a xa l&agrave; h&agrave;ng c&acirc;y đang thả nụ vươn c&agrave;nh, c&aacute;i kh&ocirc;ng gian trở n&ecirc;n &ecirc;m như ru với ch&uacute;t s&aacute;ng dịu lại từ &aacute;nh đ&egrave;n, v&agrave; bạn chỉ muốn đặt m&igrave;nh ngay xuống chiếc giường xinh xắn ấy v&agrave; biết đ&acirc;u, bạn sẽ c&oacute; một giấc mơ thật đẹp, d&ugrave; chỉ l&agrave; trong tho&aacute;ng chốc...</span></p>\r\n<p style="text-align: center; "><img width="660" height="442" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(8).jpg" /></p>\r\n<p style="text-align: left; "><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">V&agrave; rồi, bạn h&atilde;y len qua h&agrave;nh lang để kh&aacute;m ph&aacute; kh&ocirc;ng gian tr&ecirc;n lầu, nhưng trước khi bắt đầu đi, nhớ, h&atilde;y giữ mắt m&igrave;nh đừng rời một bức tường đầy hoa, đầy m&agrave;u sắc của cầu thang, một bức tường được kết từ những khung tranh bằng vải, ch&uacute;t th&ocirc; sơ, ch&uacute;t mộc nhưng lại tạo n&ecirc;n một thứ cảm x&uacute;c rất đời thường của &ldquo;Nh&agrave;&ldquo; v&agrave; tất cả chỉ c&oacute; thể c&oacute; ở &ldquo;Nh&agrave; t&ocirc;i&ldquo;...</span></p>\r\n<p style="text-align: center; "><img width="660" height="442" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(9).jpg" /></p>\r\n<p style="text-align: left; "><br />\r\n<span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">H&agrave;nh lang cầu thang sẽ dẫn bạn đi về ph&iacute;a của nắng ngập tr&agrave;n, của những con gi&oacute; thoảng đang lang thang t&igrave;m nhau. Những &ocirc; cửa rộng, trải d&agrave;i hết kh&ocirc;ng gian, như th&aacute;ch thức to&agrave;n bộ &aacute;nh nắng ngo&agrave;i kia, c&oacute; đủ lớn để ngập hết căn ph&ograve;ng, v&agrave; đ&acirc;y ch&iacute;nh l&agrave; kh&ocirc;ng gian &ldquo;Ph&ograve;ng kh&aacute;ch&ldquo; của &ldquo;Nh&agrave;&ldquo;. Nếu như ph&iacute;a dưới l&agrave; sự tươi mới đầy hoa, đầy m&agrave;u sắc, th&igrave; &ldquo;Ph&ograve;ng kh&aacute;ch&ldquo; sẽ đ&oacute;n bạn với sự tinh tế v&agrave; sự trải nghiệm của &ldquo;Nh&agrave;&rdquo;. Phong c&aacute;ch cổ điển, c&oacute; ch&uacute;t buồn, c&oacute; ch&uacute;t s&oacute;ng s&aacute;nh của hơi thở một người đang suy tư. Những khung tranh bao bọc cả một bức tường, những chiếc sofa thư thả nghi&ecirc;ng m&igrave;nh, chắc hẳn, bạn sẽ thật sự tho&aacute;i m&aacute;i như đang ở ch&iacute;nh ng&ocirc;i nh&agrave; của bạn.</span></p>\r\n<p style="text-align: center; "><img width="660" height="442" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(10).jpg" /></p>\r\n<p style="text-align: left; "><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Một b&agrave;i t&igrave;nh khe khẽ bu&ocirc;ng, &ldquo;Nh&agrave; t&ocirc;i&ldquo; sẽ lu&ocirc;n giữ ấm cho những ai đ&atilde;, từng, chưa v&agrave; sắp gh&eacute; thăm &ldquo;Nh&agrave;&ldquo;...</span><br />\r\n<br style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; " />\r\n<span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">P/s: Lần thứ 3 &ldquo;Nh&agrave;&ldquo; chuyển địa điểm, c&aacute;c bạn nhớ lưu &yacute; cập nhật địa chỉ mới nhất của &ldquo;Nh&agrave;&ldquo; nh&eacute;.</span><br style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; " />\r\n<span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Hot line: 0909 442 421 _ 0936 080 310</span><br style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; " />\r\n<span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 13px; line-height: 18px; ">Note: C&aacute;c bạn sẽ giữ xe ở Chung cư 151 Nguyễn Đ&igrave;nh Ch&iacute;nh, c&ugrave;ng trục đường với &ldquo;Nh&agrave;&ldquo; nh&eacute;, nằm về ph&iacute;a tay phải của nh&agrave;.</span></p>\r\n<p style="text-align: center; "><img width="660" height="441" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(16).jpg" /></p>\r\n<p style="text-align: center; "><a href="http://sonsuanha.com.vn/sua-chua-nha-pho-339-01.htm"><img width="660" height="439" alt="Sơn sửa nh&agrave; phố " src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(18).jpg" /></a></p>\r\n<p style="text-align: center; "><img width="660" height="442" alt="" src="/userfiles/image/baiviet/La''%20maison%20Cafe%20&amp;%20Gallery%20(5).jpg" /></p>', '     La'' maison Cafe & Gallery - 163 Nguyễn Đình Chính, P.11,Q.Phú Nhuận, Tp.HCM.', NULL, '56_la-maison-cafe-gallery-9.jpg', '1', 1351692992, 1352452648, 1, 'adminf', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_category`
--

CREATE TABLE IF NOT EXISTS `tbl_content_category` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `categories_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `doc_categories_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_added` int(11) DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `useradd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'vn',
  `sort` int(11) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_content_category`
--

INSERT INTO `tbl_content_category` (`categories_id`, `parent`, `categories_name`, `status`, `doc_categories_desc`, `date_added`, `code`, `last_modified`, `useradd`, `sort`, `image`) VALUES
(1, 0, 'Tin tức thời trang', 1, '', 1324957286, 'tin-tuc', 1350612408, '', 0, 'Array'),
(2, 0, 'Giới thiệu', 1, '', 1325036309, 'gioi-thieu', 1325036309, '', 0, 'Array'),
(3, 0, 'Chính sách bảo mật', 0, '', 1325036811, 'chinh-sach-bao-mat', 1325036811, '', 0, 'Array'),
(4, 0, 'Chương trình thành viên', 0, '', 1325036852, 'chuong-trinh-thanh-vien', 1325036852, '', 0, 'Array'),
(5, 0, 'Dịch vụ khách hàng', 0, '', 1325036892, 'dich-vu-khach-hang', 1325036892, '', 0, 'Array'),
(6, 0, 'Phương thức thanh toán ', 0, '', 1326473582, 'payment', 1326473582, '', 0, 'Array'),
(7, 0, 'Bản tin công nghệ', 0, '', 1329385254, 'ban-tin-cong-nghe', 1329385254, '', 0, 'Array'),
(8, 0, 'Phong cách văn phòng', 0, '', 1329393386, 'phong-cach-van-phong', 1329393386, '', 0, 'Array'),
(9, 0, 'Bài Viết B2B  ', 0, '', 1329399325, 'B2B', 1337227470, '', 0, 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `changepasswords` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userinfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinhct` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `congty` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachict` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mst` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoaict` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thuhang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`Id`, `uid`, `pwd`, `changepasswords`, `date_added`, `last_modified`, `status`, `diachi`, `phone`, `sex`, `birthday`, `fullname`, `userinfo`, `tinh`, `tinhct`, `congty`, `diachict`, `mst`, `dienthoaict`, `fax`, `thuhang`) VALUES
(30, 'tina_le3110@yahoo.com.vn', 'bda8f1b8bc8b2999d755c2326079cfd4', NULL, 1336568934, 1336568934, 1, 'An Thoi', '0909.877.620', '', '', 'thanh thuy', '', '8', '1', '', '', '', '', '', '4'),
(46, 'trucphuong@gmail.com', '9c4e23b2c08e54f0dd79820ec6fdd3eb', NULL, 1338194863, 1338194863, 1, 'trucphuong@gmail.com', '0326164458', '', '', 'trucphuong@gmail.com', '', '1', '1', 'trucphuong@gmail.com', 'trucphuong@gmail.com', 'trucphuong@gmail.com', '0123659862', '02365236984', '4'),
(61, 'buitandat1987@gmail.com', '93fde84fcc78f90f6281946a9f565838', NULL, 1339665481, 1339665481, 1, '', '', '', '', 'Bùi Tấn Đạt', '', '1', '1', '', '', '', '', '', '4'),
(63, 'tmtung@gmail.com', '463ca8e180595e47ebef8cc76553bfef', NULL, 1339667035, 1340095022, 1, '40931 Nguyen Trong Tuyen', '0913164200', '', '', 'Tran Minh Tung', '', '1', '1', '', '', '', '', '', '4'),
(64, 'ketoantruonglong2012@yahoo.com', '70873e8580c9900986939611618d7b1e', NULL, 1339859373, 1339859373, 1, '10 đường 1 F. long thạnh mỹ, Q.9', '0933 244 003', '', '', 'Lâm Nô', '', '31', '1', '', '', '', '', '', '4'),
(65, 'canhchan68@gmail.com', '0da52b88ec13d1c581e9fe7702550dd7', NULL, 1339974802, 1339974802, 1, '30/2 Sơn Đông Thanh Đức Long Hồ Vĩnh Long', '0907492261', '', '', 'Quan Cảnh Chân', '', '60', '1', '', '', '', '', '', '4'),
(50, 'anhhungrom1@gmail.com', '2c7e8a5d7897d84003f2117bcff5298f', NULL, 1338305514, 1340096833, 1, 'anhhungrom1@gmail.com', '0231569845', '', '', 'anhhungrom1@gmail.com', '', '1', '1', 'Cong ty Trần Minh Thien', 'Pho Quang P2 Q Binh Tan', '0000000000', '012356489', '0213562365', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email`
--

CREATE TABLE IF NOT EXISTS `tbl_email` (
  `idemail` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date_add` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_modify` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idemail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_email`
--

INSERT INTO `tbl_email` (`idemail`, `email`, `date_add`, `date_modify`) VALUES
(7, 'buitandat1987@gmail.com', '1330681502', '1330681502'),
(8, 'buitandat19871@gmail.com', '1330681836', '1330681836'),
(9, 'green_4791@yahoo.com', '1330808151', '1330808151'),
(10, 'hotrongluc@gmail.com', '1330812670', '1330812670'),
(11, 'anhso3d@gmail.com', '1332230497', '1332230497'),
(12, 'thuha.991@gmail.com', '1334562870', '1334562870'),
(13, 'rooro_1007@yahoo.com.vn', '1335105632', '1335105632'),
(14, 'trongtts@yahoo.com.vn', '1335256925', '1335256925'),
(15, 'phamxuanngu@gmail.com', '1338313329', '1338313329'),
(16, 'daquy_1310@yahoo.com', '1338542101', '1338542101'),
(17, 'baycao.vn@gmail.com', '1338820248', '1338820248'),
(18, 'tranminhthien@gmail.com', '1338980293', '1338980293'),
(19, 'nnkn@yahoo.com', '1339608990', '1339608990'),
(20, 'thanhhung7879@yahoo.com', '1340471098', '1340471098');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_category`
--

CREATE TABLE IF NOT EXISTS `tbl_event_category` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `categories_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `doc_categories_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_added` int(11) DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `useradd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'vn',
  `sort` int(11) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_event_category`
--

INSERT INTO `tbl_event_category` (`categories_id`, `parent`, `categories_name`, `status`, `doc_categories_desc`, `date_added`, `code`, `last_modified`, `useradd`, `sort`, `image`) VALUES
(1, 0, 'Đặt Biệt', 1, '', 1323434236, 'dat-biet', 1323437495, '', 0, 'Array'),
(2, 0, 'Xu Hướng', 1, '<p>&nbsp;Category content</p>', 1323436095, '0', 1323438434, 'buitandat1987', 0, 'Array'),
(3, 1, 'Trang sức tết', 1, '', 1323436289, '0', 1323438195, 'buitandat1987', 0, 'Array'),
(4, 1, 'Trang sức NOEL', 1, '', 1323436310, '0', 1323436310, '', 0, 'Array'),
(5, 1, 'Trang sức dạ hội', 1, '', 1323436342, '0', 1323436342, '', 0, 'Array'),
(6, 2, 'Đá màu đỏ', 1, '', 1323436442, '0', 1323436442, '', 0, 'Array'),
(7, 2, 'Đá màu vàng', 1, '', 1323436464, '0', 1323436464, '', 0, 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE IF NOT EXISTS `tbl_manufacturer` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_image` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  `indexpage` tinyint(4) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `categories_description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci,
  `useradd` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`categories_id`, `categories_name`, `categories_image`, `parent`, `sort`, `indexpage`, `status`, `date_added`, `last_modified`, `categories_description`, `useradd`, `type`, `code`) VALUES
(1, 'Tập đoàn Thiên Long', NULL, 0, 1, 0, 1, 1333696056, 1333696056, '', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE IF NOT EXISTS `tbl_media` (
  `contents_id` int(11) NOT NULL AUTO_INCREMENT,
  `contents_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_short` mediumtext COLLATE utf8_unicode_ci,
  `width` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contents_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_categories_parentid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `useradd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`contents_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=76 ;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`contents_id`, `contents_name`, `height`, `detail_short`, `width`, `contents_image`, `doc_categories_parentid`, `date_added`, `last_modified`, `status`, `useradd`, `sort`) VALUES
(74, 'VisaCard', '', '', '', '74_visa.png', '53', 1350908947, 1350908947, 1, 'adminf', 0),
(73, 'Vietinbank', '', '', '', '73_viettinbank.png', '53', 1350908930, 1350908930, 1, 'adminf', 0),
(72, 'SaiGonBank', '', '', '', '72_saigonbank.png', '53', 1350908898, 1350908898, 1, 'adminf', 0),
(62, 'Vietcombank', '', '', '', '62_vietcombank.png', '53', 1350908579, 1350908579, 1, 'adminf', 0),
(63, 'ACB', '', '', '', '63_acbbank.png', '53', 1350908685, 1350908685, 1, 'adminf', 0),
(64, 'STB', '', '', '', '64_saigonbank.png', '53', 1350908702, 1350908702, 1, 'adminf', 0),
(65, 'AGRIBANK', '', '', '', '65_agribank.png', '53', 1350908729, 1350908729, 1, 'adminf', 0),
(66, 'BIDV', '', '', '', '66_bidvbank.png', '53', 1350908782, 1350908782, 1, 'adminf', 0),
(67, 'Eximbank', '', '', '', '67_exambank.png', '53', 1350908810, 1350908810, 1, 'adminf', 0),
(68, 'Donga', '', '', '', '68_donga_bank.png', '53', 1350908824, 1350908824, 1, 'adminf', 0),
(69, 'HDBANK', '', '', '', '69_hdbank.png', '53', 1350908843, 1350908843, 1, 'adminf', 0),
(70, 'Marri', '', '', '', '70_maritimebank.png', '53', 1350908855, 1350908855, 1, 'adminf', 0),
(71, 'Mastercard', '', '', '', '71_mastercard.png', '53', 1350908869, 1350908869, 1, 'adminf', 0),
(75, 'Banner trên cùng', '', '', '', '75_59_3.jpg', '52', 1350918741, 1350918741, 1, 'adminf', 0),
(60, 'Banner trên cùng 2', '', '', '', '60_2.jpg', '52', 1350887022, 1350887022, 1, 'adminf', 0),
(61, 'Banner trên cùng 3', '', '', '', '61_1.jpg', '52', 1350887032, 1350887032, 1, 'adminf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media_category`
--

CREATE TABLE IF NOT EXISTS `tbl_media_category` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `categories_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `doc_categories_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_added` int(11) DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `useradd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'vn',
  `sort` int(11) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tbl_media_category`
--

INSERT INTO `tbl_media_category` (`categories_id`, `parent`, `categories_name`, `status`, `doc_categories_desc`, `date_added`, `code`, `last_modified`, `useradd`, `sort`, `image`) VALUES
(52, 0, 'center-flash', 1, NULL, NULL, 'center-flash', NULL, 'vn', NULL, NULL),
(53, 0, 'Quảng cáo', 1, '', 1324952946, 'quang-cao', 1324952946, '', 0, 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oder`
--

CREATE TABLE IF NOT EXISTS `tbl_oder` (
  `id_oder` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `b_fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `b_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `b_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `date_added` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `b_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `c_phone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `c_address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `taxnumber` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `s_address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `s_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `s_fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `s_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_oder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=330 ;

--
-- Dumping data for table `tbl_oder`
--

INSERT INTO `tbl_oder` (`id_oder`, `id_customer`, `b_fullname`, `b_address`, `b_email`, `note`, `date_added`, `status`, `b_phone`, `c_name`, `c_phone`, `c_address`, `taxnumber`, `payment`, `method`, `s_address`, `s_email`, `s_fullname`, `s_phone`, `tongtien`) VALUES
(328, 0, 'Ông lethanhquoc', ' -  - ', 'quoc.vnit@gmail.com', 'ádfasdf', 1351699626, 0, '6345634535', '', '', '', '', '', '', '', '', '', '', '1509000'),
(329, 0, 'Ông lethanhquoc', ' -  - ', 'nguyentuanvu1122@yahoo.com', '', 1351699653, 0, '6345634535', '', '', '', '', '', '', '', '', '', '', '499000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oder_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_oder_detail` (
  `id_product` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_oder` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kichthuoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_product`,`id_oder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_oder_detail`
--

INSERT INTO `tbl_oder_detail` (`id_product`, `id_oder`, `soluong`, `kichthuoc`) VALUES
('1505', '328', '', '1'),
('1512', '328', '', '1'),
('1507', '329', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE IF NOT EXISTS `tbl_partner` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `partner_image` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `partner_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `useradd` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`partner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`partner_id`, `partner_name`, `partner_image`, `parent`, `sort`, `status`, `date_added`, `last_modified`, `partner_description`, `useradd`) VALUES
(154, 'honda viet nam', '154_banner_03.jpg', 1, 2, 0, 1316867239, 1316867239, '<p>honda la nha san xuat xe tai viet nam</p>', ''),
(165, 'Nokia', 'Array', 1, 2, 1, 1319178027, 1319178027, '', ''),
(160, 'ZAMAHA', '160_mobile_03.png', 1, 2, 0, 1317025925, 1317025925, '<p>yamaha việt nam</p>', ''),
(163, 'Thế Giới Di Động', 'Array', 2, 2, 1, 1319177110, 1319177110, '', ''),
(161, 'honda viet nam', 'Array', 2, 1, 0, 1317207784, 1317207784, '', ''),
(162, 'Hà Nội T&T', '162_29_logo.JPG', 2, 1, 1, 1319176929, 1319176929, '', ''),
(159, 'ZAMAHA', 'Array', 1, 2, 0, 1317025315, 1317025315, '<p>&nbsp;nh&agrave; sản xuất xe&nbsp;</p>', ''),
(164, 'Samsung', 'Array', 1, 1, 1, 1319178008, 1319178008, '', ''),
(158, 'honda viet nam', '158_banner_03.jpg', 1, 1, 0, 1316864653, 1316864653, '<p>nha san xuat hon da viet nam</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image_large` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_date_added` int(11) DEFAULT NULL,
  `products_date_modified` int(11) DEFAULT NULL,
  `products_status` tinyint(3) DEFAULT '0',
  `products_ordered` int(11) DEFAULT '0',
  `products_shortdescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `products_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `categories_id` int(11) DEFAULT '0',
  `providers_id` int(11) DEFAULT NULL,
  `donvi_id` int(11) DEFAULT '0',
  `useradd` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_pro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `vanhanh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `congnghe` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tinhnang` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thongso` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tieuchuan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `products_new` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1515 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`products_id`, `products_code`, `products_name`, `products_image`, `products_image_large`, `products_price`, `products_date_added`, `products_date_modified`, `products_status`, `products_ordered`, `products_shortdescription`, `products_description`, `categories_id`, `providers_id`, `donvi_id`, `useradd`, `products_loai`, `products_supplier`, `products_pro`, `vanhanh`, `congnghe`, `tinhnang`, `thongso`, `tieuchuan`, `products_new`) VALUES
(1514, '', 'Mũ vải bò viền tua hồng', 'small_1514_xfjj.JPG', '1514_xfjj.JPG', '88000', 1351503126, 1351503126, 1, 0, '', '', 264, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1513, '', 'Mũ cói hoa xù - Bluekids', 'small_1513_zx.jpg', '1513_zx.jpg', '167000', 1351502878, 1351502878, 1, 0, '', '', 264, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1511, '', 'Bộ jumsuite jean vai zen đen bạc - Zara', 'small_1511_jumsuite-jean-vai-zen-den.jpg', '1511_jumsuite-jean-vai-zen-den.jpg', '395000', 1351178184, 1351500662, 1, 0, '', '', 331, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 1),
(1510, '', 'Bộ quần áo xanh hình ô vuông - Blue Seven', 'small_1510_bo-ao-quan-xanh.jpg', '1510_bo-ao-quan-xanh.jpg', '359000', 1351177798, 1351500826, 1, 0, 'Bộ quần áo xanh hình ô vuông - Blue Seven', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/bo-ao-quan-xanh.jpg" width="600" height="600" alt="" /></p>', 332, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1509, '', 'Quần short xanh gấu đính cúc - Blue Seven ', 'small_1509_quan-short-xanh-gau.jpg', '1509_quan-short-xanh-gau.jpg', '378000', 1351163049, 1351501041, 1, 0, 'Hàng nhập khẩu chính hãng của Blue Seven - Germany. \r\nChất liệu : 100% Cotton', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/quan-short-xanh-gau-1.jpg" width="600" height="595" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/quan-short-xanh-gau-2.jpg" width="600" height="595" alt="" /></p>', 333, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1508, '', 'Chân váy xanh 3 tầng - Blue Seven', 'small_1508_CVBL_c_váy_X_3_tầng__61781_zoom.jpg', '1508_CVBL_c_váy_X_3_tầng__61781_zoom.jpg', '309000', 1351159032, 1351310123, 1, 0, 'Hàng nhập khẩu chính hãng của Blue Seven - Germany.\r\nChất liệu : 100% Cotton', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/CVBL_c_v%C3%A1y_X_3_t%E1%BA%A7ng__82826_zoom.jpg" width="600" height="600" alt="" /></p>', 330, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1512, '', 'Áo phông xanh Blue Sea - Blue Seven', 'small_1512_11.jpg', '1512_11.jpg', '198000', 1351501439, 1351501439, 1, 0, 'Bộ quần áo xanh hình ô vuông - Blue Seven\r\n', '', 332, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1503, '', 'Áo váy xanh dây lưng vải hoa - Blue Seven', 'small_1503_BB_Jean__59567.jpg', '1503_BB_Jean__59567.jpg', '537000', 1351138080, 1351501109, 1, 0, 'Hàng nhập khẩu chính hãng của Blue Seven - Germany.', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/AVBL_X_d__23614_zoom.jpg" width="600" height="599" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/AVBL_X_d__88238_zoom.jpg" width="600" height="600" alt="" /></p>', 330, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1502, '', 'Juýp short 2 dây chấm tim trắng - Zara', 'small_1502_vayday.jpg', '1502_vayday.jpg', '359000', 1351137991, 1351501166, 1, 0, 'Hãng sản xuất: Zara - Tây Ban Nha \r\nChất liệu : 100% Cotton', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/JSZR_2day_c__80933.jpg" width="600" height="600" alt="" /></p>', 330, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1504, '', 'Áo phông xanh, mô tô - Blue Seven', 'small_1504_APBL_xanh_mo_to.jpg', '1504_APBL_xanh_mo_to.jpg', '165000 ', 1351138638, 1351487244, 1, 0, 'Áo phông xanh, mô tô - Blue Seven', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/xzf1339487356.jpg" width="437" height="426" alt="" /></p>', 326, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 1),
(1505, '', 'Áo phông xanh, trắng SURE cây dừa - Blue Seven', 'small_1505_APBL_X_T_SURE_c__56836_zoom.jpg', '1505_APBL_X_T_SURE_c__56836_zoom.jpg', '189000', 1351141742, 1351487289, 1, 0, '', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/APBL_X_T_SURE_c__48867_zoom.jpg" width="600" height="600" alt="" /></p>', 326, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1506, '', 'Áo phông 3 lỗ Sports Style - Blue Seven', 'small_1506_ao_thun_ba_lo.jpg', '1506_ao_thun_ba_lo.jpg', '157000', 1351156187, 1351501243, 1, 0, 'Áo phông 3 lỗ Sports Style - Blue Seven', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/qq1.jpg" width="660" height="660" alt="" /></p>', 326, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 0),
(1507, '', 'Quần short gập gấu, dây lưng nâu - Blue Seven', 'small_1507_vay-tim.jpg', '1507_vay-tim.jpg', '349000', 1351158901, 1351501079, 1, 0, 'Hàng nhập khẩu chính hãng của Blue Seven - Germany.\r\nChất liệu : 100% Cotton\r\nMàu sắc : tím, nâu xám', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/QSBL_Short_g_g%E1%BA%A5u_d__33028_zoom.jpg" width="600" height="600" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/QSBL_Short_g_g%E1%BA%A5u_d__30496_zoom.jpg" width="600" height="600" alt="" /></p>\r\n<p style="text-align: center; "><img src="/userfiles/image/QSBL_Short_g_g%E1%BA%A5u_d__25689_zoom.jpg" width="600" height="600" alt="" /></p>', 333, 0, 0, 'adminf', NULL, '', '0', 'Tím, nâu', '', '', NULL, '', 0),
(1500, '', 'Áo váy trắng chấm bi nhiều mầu - Catimini', 'small_1500_tt.jpg', '1500_tt.jpg', '435000 ', 1351136741, 1351501181, 1, 0, 'Hãng sản xuất: Catimini - Úc\r\nChất liệu : 100% Cotton\r\nthiết kế : không những bắt mắt,thoải mái và tiện dụng', '<div style="text-align: center; "><img src="/userfiles/image/vay_45526.jpg" width="600" height="600" alt="" /></div>', 330, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 1),
(1501, '', 'Áo váy nhung hoa nhí đai - Mother Care ', 'small_1501_vaydo.jpg', '1501_vaydo.jpg', '730000', 1351137806, 1351501132, 1, 0, 'Hãng sản xuất: Mother Care - Úc\r\nChất liệu an toàn và cao cấp\r\nThiết kế tthoải mái tiện dụng và tinh tế', '<p style="text-align: center; ">&nbsp;<img src="/userfiles/image/AVMO_nhung_H__80735_zoom.jpg" width="600" height="600" alt="" /></p>', 330, 0, 0, 'adminf', NULL, '', '0', '', '', '', NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productcolor`
--

CREATE TABLE IF NOT EXISTS `tbl_productcolor` (
  `idproductimage` int(11) NOT NULL AUTO_INCREMENT,
  `titleproductimage` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productimage` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idproduct` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idproductimage`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_productcolor`
--

INSERT INTO `tbl_productcolor` (`idproductimage`, `titleproductimage`, `productimage`, `idproduct`) VALUES
(2, 'FORD FIESTA RED', '2_large_3_2_main_25.png', '1'),
(3, 'Dịch vụ thám tử tư', '3_large_6_large_3_2_main_25.png', '1'),
(4, 'FORD FIESTA RED', '4_large_6_large_3_2_main_25.png', '1'),
(5, 'Dịch vụ thám tử tư', '5_large_1_large_3_large_2_main_25.png', '1'),
(6, 'Partner name', '6_large_4_large_1_main_12.png', '3'),
(7, 'FORD FIESTA', '7_large_5_large_1_large_main_10.png', '3'),
(8, 'honda viet nam', '8_large_6_large_3_2_main_25.png', '3'),
(9, 'Ford fiesta', '9_large_6_large_3_2_main_25.png', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productimage`
--

CREATE TABLE IF NOT EXISTS `tbl_productimage` (
  `idproductimage` int(11) NOT NULL AUTO_INCREMENT,
  `titleproductimage` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productimage` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `imagessmall` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idproduct` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idproductimage`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=177 ;

--
-- Dumping data for table `tbl_productimage`
--

INSERT INTO `tbl_productimage` (`idproductimage`, `titleproductimage`, `productimage`, `imagessmall`, `idproduct`) VALUES
(147, 'Hình 3', '147_TL-025-do1.jpg', '', '232'),
(148, 'Hinh 4 màu xanh', '148_TL-025-xanh.jpg', '', '232'),
(146, 'Hình 2', '146_TL-025--den.jpg', '', '232'),
(145, 'Hình mai linh', '145_TL-025-mai-linh.jpg', '', '232'),
(144, 'Hình 1', '144_TL-025.jpg', '', '232'),
(12, 'bùi tấn đạt', '12_large_5_large_1_large_main_10.png', '', '3'),
(149, 'GL', '149_large_TL-031-LG-digital.jpg', '', '233'),
(17, 'Nhẫn hoa', '17_1_5.jpg', '', '35'),
(139, 'hinh 1', '139_do.jpg', '139_', '955'),
(141, 'anh 2', '141_den.jpg', '', '956'),
(142, 'anh 3', '142_do.jpg', '', '956'),
(143, 'anh xanh', '143_xanh.jpg', '', '956'),
(150, 'Tím', '150_large_TL-031-tim.jpg', '', '233'),
(151, 'đen', '151_large_TL-031-den.jpg', '', '233'),
(152, 'Hinh gia su', '152_gia-su.jpg', '', '234'),
(153, 'DHH', '153_TL-041-DHH.jpg', '', '234'),
(154, 'Tong khai giang', '154_TL-041-tongkhaigiang.jpg', '', '234'),
(155, 'Trung nguyen', '155_TL-041-trung-nguyen.jpg', '', '234'),
(156, 'hinh 1', '156_hinh-1.jpg', '', '236'),
(158, 'Hinh 2', '158_hinh-2.jpg', '', '236'),
(159, 'Hinh 3', '159_hinh-3.jpg', '', '236'),
(160, 'HInh 4', '160_hinh-4.jpg', '', '236'),
(161, 'HInh 5', '161_hinh-5.jpg', '', '236'),
(162, 'HInh 6', '162_hinh-6.jpg', '', '236'),
(163, 'HInh 7', '163_hinh-7.jpg', '', '236'),
(164, 'HInh 8', '164_hinh-8.jpg', '', '236'),
(165, 'Hinh do', '165_TL-048-xanh.jpg', '', '237'),
(166, 'hinh xanh', '166_TL-048-xanh.jpg', '', '237'),
(167, 'HInh den', '167_TL-048-den.jpg', '', '237'),
(168, 'HInh xanh', '168_large_TL-08_xanh.jpg', '', '239'),
(169, 'HInh do', '169_large_TL-08_do.jpg', '', '239'),
(170, 'Abbott', '170_Abbott.jpg', '', '957'),
(171, 'Do', '171_do.jpg', '', '957'),
(172, 'Hoi viet my', '172_Hoi-vat-my.jpg', '', '957'),
(140, 'anh 1', '140_hinh-to.jpg', '', '956'),
(174, ' Giới thiệu chung', '', '', '1499'),
(175, 'Nâu', '175_QSBL_Short_g.gấu_d__30496_zoom.jpg', '', '1507'),
(176, 'Mũ cói hoa xù - Bluekids', '176_ac.jpg', '', '1513');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_image` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  `indexpage` tinyint(4) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `categories_description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci,
  `useradd` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=334 ;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`categories_id`, `categories_name`, `categories_image`, `parent`, `sort`, `indexpage`, `status`, `date_added`, `last_modified`, `categories_description`, `useradd`, `type`, `code`) VALUES
(1, 'Thời trang cho Bố', NULL, 0, 1, 0, 1, 1350884022, 1350884022, '', 'adminf', 1, NULL),
(2, 'Dây thắt lưng', NULL, 1, 1, 0, 1, 1350884589, 1350884589, '', 'adminf', 1, NULL),
(4, 'Nước hoa', NULL, 1, 4, 0, 1, 1350291289, 1350291289, '', 'adminf', 1, NULL),
(8, 'Thời trang bé Trai', NULL, 0, 3, 0, 1, 1351136185, 1351136185, '', 'adminf', 1, NULL),
(33, 'Thời trang bé Gái', NULL, 0, 4, 0, 1, 1351136080, 1351136080, '', 'adminf', 1, NULL),
(37, 'Thời trang cho Mẹ', NULL, 0, 2, 0, 1, 1350884480, 1350884480, '', 'adminf', 1, NULL),
(38, 'Túi xách hàng hiệu', NULL, 37, 0, 0, 1, 1350291927, 1350291927, '', 'adminf', 1, NULL),
(40, 'Ví da nữ', NULL, 37, 0, 0, 1, 1350293945, 1350293945, '', 'adminf', 1, NULL),
(43, 'Nước hoa cao cấp nữ', NULL, 37, 0, 0, 1, 1350294101, 1350294101, '', 'adminf', 1, NULL),
(264, 'Phụ kiện', NULL, 0, 5, 0, 1, 1351502127, 1351502127, '', 'adminf', 1, NULL),
(320, 'Ví da nam cao cấp', NULL, 1, 0, 0, 1, 1350544979, 1350544979, '', '', 1, NULL),
(321, 'Mắt kiếng', NULL, 1, 0, 0, 1, 1350545204, 1350545204, '', '', 1, NULL),
(322, 'Bé gái từ 0 - 2 tuổi', NULL, 33, 1, 0, 1, 1351136065, 1351136065, '<p>&nbsp;C&aacute;c sản phẩm d&agrave;nh cho B&eacute; cưng từ 0 đến 2 tuổi</p>', '', 1, NULL),
(323, 'Bé gái từ 3 - 14 tuổi', NULL, 33, 2, 0, 1, 1351136134, 1351136134, '', 'adminf', 1, NULL),
(324, 'Bé Trai từ 0 đến 2 tuổi', NULL, 8, 1, 0, 1, 1351386219, 1351386219, '', 'adminf', 1, NULL),
(325, 'Bé Trai từ 3 - 14 tuổi', NULL, 8, 2, 0, 1, 1351136172, 1351136172, '', '', 1, NULL),
(326, 'Áo phông', NULL, 324, 0, 0, 1, 1351136456, 1351136456, '', '', 1, NULL),
(327, 'Áo sơ mi', NULL, 324, 0, 0, 1, 1351136472, 1351136472, '', '', 1, NULL),
(328, 'Quần short', NULL, 324, 0, 0, 1, 1351136501, 1351136501, '', '', 1, NULL),
(329, 'Quần Dái/Jean', NULL, 324, 0, 0, 1, 1351136541, 1351136541, '', 'adminf', 1, NULL),
(330, 'Váy', NULL, 323, 0, 0, 1, 1351136656, 1351136656, '', '', 1, NULL),
(331, 'Jean', NULL, 323, 0, 0, 1, 1351500650, 1351500650, '', '', 1, NULL),
(332, 'Áo Phông - Áo sơ mi', NULL, 325, 0, 0, 1, 1351500956, 1351500956, '', 'adminf', 1, NULL),
(333, 'Quần Short', NULL, 323, 0, 0, 1, 1351501029, 1351501029, '', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suport`
--

CREATE TABLE IF NOT EXISTS `tbl_suport` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `userinfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_suport`
--

INSERT INTO `tbl_suport` (`Id`, `uid`, `pwd`, `date_added`, `last_modified`, `status`, `userinfo`, `fullname`) VALUES
(1, 'buitandat1987', 'cb2b876d568cf27eed2de4e98735dbda', 1320559144, 1321458765, 2, 'quản trị viên cao cấp', 'hồ ngọc vũ'),
(2, 'chausa289', 'ali33vn', 1320559144, 1321507524, 1, 'Mô tả', 'Bùi Tấn Đạo'),
(3, 'tandat', '7f9a3c70557fbd3fef36', 1320559144, 1321507491, 1, 'mô tả', 'Bùi Thị Như Quỳnh'),
(4, 'tan_dat', '7f9a3c70557fbd3fef36', 1320559144, 1321461847, 1, 'mô tả', 'Bùi Tấn Đạt'),
(5, 'buitandat1987@yahoo.', '93fde84fcc78f90f6281946a9f565838', 1320559144, 1321507548, 1, '193a-phuong 5 quan 6 tp hcm', 'Trần Trung Tín'),
(6, 'buitandat1987@yahoo.com.vn', '93fde84fcc78f90f6281946a9f565838', 1320559144, 0, 1, '193a-phuong 5 quan 6 tp hcm', 'Bùi Tấn Đạt'),
(7, 'trungtrankhanh', '93fde84fcc78f90f6281946a9f565838', 1321435873, 1321435873, 2, 'Quản tri viên', 'Trần khánh Trung'),
(8, 'tan_dat1987', '93fde84fcc78f90f6281946a9f565838', 1321439691, 1321439691, 2, 'quản trị viên cao cấp', 'bùi Tấn Đạt'),
(9, 'admin', '5b71a262b385e70105f5df655b503038', 1322297865, 1322297989, 2, '', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `userinfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`Id`, `uid`, `pwd`, `date_added`, `last_modified`, `status`, `userinfo`, `fullname`) VALUES
(9, 'adminf', 'c6928a5d8bf5becb8525792f729ba668', 1322297865, 1322297989, 2, '', 'Administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
