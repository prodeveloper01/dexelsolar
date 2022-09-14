-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2022 at 11:14 AM
-- Server version: 8.0.29-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dexelsolar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', NULL, '5f61e06be12e91600249963.png', '$2y$10$L37YxHWRFGhZ4OzBOb1FvOy5IV5QgTuI903hBUKXFjOvf3N9DuxsO', NULL, '2020-09-16 03:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission_logs`
--

CREATE TABLE `commission_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `who` int NOT NULL,
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `main_amo` decimal(11,2) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `method_code` int UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT '0.00000000',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btc_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `admin_feedback` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `try`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(1, 6, 1000, '1000.00000000', 'USDT', '0.00000000', '221.00000000', '221000.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/07\\/6318705361fc91662546003.jpg\",\"type\":\"file\"}}', '0', '', 'ATN8G66SOGOU', 0, 1, NULL, '2022-09-07 08:19:21', '2022-09-07 08:20:36'),
(2, 6, 1000, '1000.00000000', 'USDT', '0.00000000', '221.00000000', '221000.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/07\\/6318b2384d1031662562872.png\",\"type\":\"file\"}}', '0', '', 'A6NX9X5H94UP', 0, 1, NULL, '2022-09-07 13:00:55', '2022-09-07 13:01:33'),
(3, 6, 1001, '1000.00000000', 'BTC', '0.00000000', '0.00000000', '0.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/07\\/6318c129213bc1662566697.jpg\",\"type\":\"file\"}}', '0', '', 'P4N4JV28J1WP', 0, 1, NULL, '2022-09-07 14:04:23', '2022-09-07 14:05:21'),
(4, 6, 1002, '1000.00000000', 'ETH', '0.00000000', '1.00000000', '1000.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/07\\/6318c2dbbd6721662567131.jpg\",\"type\":\"file\"}}', '0', '', 'AXWKMG82AG99', 0, 1, NULL, '2022-09-07 14:11:41', '2022-09-07 14:12:41'),
(5, 1, 1001, '1000.00000000', 'BTC', '0.00000000', '0.00000000', '0.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/10\\/631c42bc2ec4b1662796476.png\",\"type\":\"file\"}}', '0', '', 'D39N4H5UYMJZ', 0, 1, NULL, '2022-09-10 07:53:36', '2022-09-12 08:14:41'),
(6, 1, 1002, '1000.00000000', 'ETH', '0.00000000', '1.00000000', '1000.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/10\\/631c431d03ed31662796573.png\",\"type\":\"file\"}}', '0', '', 'ETRCF63H48B2', 0, 1, NULL, '2022-09-10 07:55:58', '2022-09-12 08:14:29'),
(7, 1, 1002, '100.00000000', 'ETH', '0.00000000', '1.00000000', '100.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/10\\/631c463de17861662797373.jpg\",\"type\":\"file\"}}', '0', '', '1TMR9J1MDSDV', 0, 1, NULL, '2022-09-10 08:09:10', '2022-09-12 08:14:10'),
(8, 8, 1001, '100.00000000', 'BTC', '0.00000000', '0.00000000', '0.00000000', NULL, '0', '', 'SCT3ETP4C6EA', 0, 0, NULL, '2022-09-10 11:23:52', '2022-09-10 11:23:52'),
(9, 1, 1003, '250.00000000', 'USDT', '35.00000000', '220.00000000', '62700.00000000', NULL, '0', '', '8EHHPHDTTB3R', 0, 0, NULL, '2022-09-10 12:57:50', '2022-09-10 12:57:50'),
(10, 1, 1003, '250.00000000', 'USDT', '35.00000000', '220.00000000', '62700.00000000', NULL, '0', '', '1NPQTHV1ES6M', 0, 0, NULL, '2022-09-10 13:31:59', '2022-09-10 13:31:59'),
(11, 10, 1001, '1234.00000000', 'BTC', '0.00000000', '0.00000000', '0.00000000', NULL, '0', '', 'YGMF4US3BARA', 0, 0, NULL, '2022-09-10 13:56:13', '2022-09-10 13:56:13'),
(12, 12, 1002, '100.00000000', 'ETH', '0.00000000', '1.00000000', '100.00000000', NULL, '0', '', '2JRRXMWSWNN7', 0, 0, NULL, '2022-09-10 14:36:40', '2022-09-10 14:36:40'),
(13, 12, 1003, '230.00000000', 'USDT', '33.00000000', '220.00000000', '57860.00000000', NULL, '0', '', 'WYCQO7P7P8JV', 0, 3, 'ggefg', '2022-09-10 15:18:37', '2022-09-11 03:29:12'),
(14, 12, 1001, '100.00000000', 'BTC', '0.00000000', '0.00000000', '0.00000000', NULL, '0', '', 'DE3AGHZSSPZ9', 0, 0, NULL, '2022-09-10 15:24:50', '2022-09-10 15:24:50'),
(15, 12, 1000, '500.00000000', 'USDT', '0.00000000', '221.00000000', '110500.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/11\\/631da46f00e251662887023.PNG\",\"type\":\"file\"}}', '0', '', '38OJJZ6HMQJA', 0, 1, NULL, '2022-09-11 08:43:22', '2022-09-12 02:30:53'),
(16, 12, 1003, '500.00000000', 'USDT', '60.00000000', '220.00000000', '123200.00000000', NULL, '0', '', 'EOG6P9ZD4ON1', 0, 0, NULL, '2022-09-11 09:05:30', '2022-09-11 09:05:30'),
(17, 1, 1000, '1234.00000000', 'USDT', '0.00000000', '221.00000000', '272714.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/11\\/631e0160dca341662910816.png\",\"type\":\"file\"}}', '0', '', 'B94GJMZX5V7Y', 0, 3, 'No Screenshot', '2022-09-11 15:39:59', '2022-09-12 02:08:16'),
(18, 11, 1000, '100.00000000', 'USDT', '0.00000000', '221.00000000', '22100.00000000', NULL, '0', '', 'RT3P12T9KOFC', 0, 0, NULL, '2022-09-11 23:31:40', '2022-09-11 23:31:40'),
(19, 11, 1000, '100.00000000', 'USDT', '0.00000000', '221.00000000', '22100.00000000', '{\"upload_screenshot\":{\"field_name\":\"2022\\/09\\/11\\/631e7040532241662939200.jpg\",\"type\":\"file\"}}', '0', '', 'DC4FZZZD3STQ', 0, 1, NULL, '2022-09-11 23:32:48', '2022-09-11 23:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int UNSIGNED NOT NULL,
  `act` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint NOT NULL DEFAULT '1',
  `sms_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-07-07 05:44:08'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address. <br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:26:22'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2020-07-07 06:39:22'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{withdraw_method}}. You will get {{method_amount}} {{method_currency}} in {{duration}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2020-06-14 18:00:00'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int UNSIGNED NOT NULL,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `view`, `created_at`, `updated_at`) VALUES
(2, 'seo.data', '{\"keywords\":[\"pay per click\",\"earn money\",\"ppv\",\"pay per view\",\"paid click\",\"earn per click\"],\"description\":\"dexalsolar is a complete and ultimate PHP Script for Pay Per Click Platform. It developed with Laravel and Bootstrap 4.\",\"social_title\":\"dexalsolar - Pay Per Click Platform\",\"social_description\":\"dexalsolar is a complete and ultimate PHP Script for Pay Per Click Platform. It developed with Laravel and Bootstrap 4.\",\"image\":\"6318afbae5eb41662562234.png\"}', 0, '2020-03-02 03:24:03', '2022-09-07 12:50:35'),
(3, 'about.content', '{\"has_image\":\"1\",\"heading\":\"About Dexelsolar\",\"description\":\"<p style=\\\"margin-top:15px;margin-right:0px;margin-left:0px;font-size:16px;color:rgb(111,111,111);font-family:Roboto, sans-serif;\\\">Best Possible Way for Earn From Home. Temporibus eveniet commodi obcaecati voluptates reiciendis quis ipsum incidunt quibusdam aperiam autem suscipit maiores temporTemporibus eveniet commodi obcaecati voluptates reiciendis quis ipsum incidunt quibusdam aperiam autem suscipit maiores tempora impedit, exercitationem ratione distinctio nulla magni nemo cumque inventore sapiente nisi at vel. Laborum suscipit fuga.<\\/p><ul class=\\\"cmn-list\\\" style=\\\"margin-top:20px;font-family:Roboto, sans-serif;\\\"><li style=\\\"font-size:16px;color:rgb(111,111,111);line-height:1.7;margin-top:0px;margin-right:0px;margin-left:0px;padding-left:40px;\\\">Dolores velit ad excepturi omnis quod nesciunt.<\\/li><li style=\\\"font-size:16px;color:rgb(111,111,111);line-height:1.7;margin-top:15px;margin-right:0px;margin-left:0px;padding-left:40px;\\\">Cumque non labore recusandae, eaque quo sint.<\\/li><li style=\\\"font-size:16px;color:rgb(111,111,111);line-height:1.7;margin-top:15px;margin-right:0px;margin-left:0px;padding-left:40px;\\\">Accusamus facere possimus illum, nulla nemo dolores.<\\/li><li style=\\\"font-size:16px;color:rgb(111,111,111);line-height:1.7;margin-top:15px;margin-right:0px;margin-left:0px;padding-left:40px;\\\">Seriores nisi iure consequatur incidunt aliquam sunt.<\\/li><\\/ul>\",\"video_url\":\"https:\\/\\/www.youtube.com\\/embed\\/\",\"icon\":\"<i class=\\\"fas fa-home\\\"><\\/i>\",\"image\":\"5f6cb44527c9a1600959557.png\"}', 0, '2020-03-02 03:27:54', '2022-09-11 03:34:52'),
(10, 'service.content', '{\"heading\":\"Sevice sadsad\",\"subheading\":\"Sevice Sub headinf\"}', 0, '2020-03-02 05:32:12', '2020-03-02 05:32:12'),
(11, 'service.element', '{\"icon\":\"<i class=\\\"fas fa-helicopter\\\"><\\/i>\",\"title\":\"Area Chart Example\",\"description\":\"asdsadsadasd\"}', 0, '2020-03-02 05:33:10', '2020-03-02 05:33:10'),
(16, 'how_work.content', '{\"heading\":\"How it Works\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.\"}', 0, '2020-06-07 23:01:40', '2020-06-07 23:01:40'),
(17, 'how_work.element', '{\"icon\":\"<i class=\\\"fas fa-wallet\\\"><\\/i>\",\"title\":\"Get Deposit\",\"content\":\"Lorem ipsum dolor sit amet consec tetur icing elit. Volup Atatibus fuga, laudan dolor ut iusto.\"}', 0, '2020-06-07 23:02:01', '2020-06-07 23:02:01'),
(18, 'how_work.element', '{\"icon\":\"<i class=\\\"fas fa-warehouse\\\"><\\/i>\",\"title\":\"Utilize Money\",\"content\":\"Lorem ipsum dolor sit amet consec tetur icing elit. Volup Atatibus fuga, laudan dolor ut iusto.\"}', 0, '2020-06-07 23:02:25', '2020-06-07 23:02:25'),
(19, 'how_work.element', '{\"icon\":\"<i class=\\\"fas fa-allergies\\\"><\\/i>\",\"title\":\"Give Interest\",\"content\":\"Lorem ipsum dolor sit amet consec tetur icing elit. Volup Atatibus fuga, laudan dolor ut iusto.\"}', 0, '2020-06-07 23:02:51', '2020-06-07 23:02:51'),
(20, 'about.element', '{\"info\":\"Lorem ipsum dolor sit amet.\"}', 0, '2020-06-07 23:13:19', '2020-06-07 23:13:19'),
(21, 'about.element', '{\"info\":\"Dolor sit amet onsecte tur adipisicing elit.\"}', 0, '2020-06-07 23:13:25', '2020-06-07 23:13:25'),
(22, 'about.element', '{\"info\":\"Rporis error, consectetur, ipsa quisqu.\"}', 0, '2020-06-07 23:13:32', '2020-06-07 23:13:32'),
(23, 'about.element', '{\"info\":\"Lorem ipsum dolor sit amet, consectetur adi.\"}', 0, '2020-06-07 23:13:39', '2020-06-07 23:13:39'),
(24, 'features.content', '{\"heading\":\"Benefits and Facilities\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 0, '2020-06-07 23:23:10', '2020-09-17 04:32:00'),
(25, 'features.element', '{\"id\":\"25\",\"icon\":\"<i class=\\\"fas fa-copy\\\"><\\/i>\",\"title\":\"We\'re Certified\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 0, '2020-06-07 23:23:30', '2020-08-20 04:19:44'),
(26, 'features.element', '{\"id\":\"26\",\"icon\":\"<i class=\\\"fas fa-lock\\\"><\\/i>\",\"title\":\"We\'re Secure\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 0, '2020-06-07 23:23:48', '2020-08-20 04:19:40'),
(27, 'features.element', '{\"id\":\"27\",\"icon\":\"<i class=\\\"fas fa-chart-area\\\"><\\/i>\",\"title\":\"We\'re Profitable\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 0, '2020-06-07 23:24:07', '2020-08-20 04:19:32'),
(28, 'features.element', '{\"id\":\"28\",\"icon\":\"<i class=\\\"fab fa-btc\\\"><\\/i>\",\"title\":\"We Accept Crypto\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 0, '2020-06-07 23:24:24', '2020-08-20 04:19:21'),
(29, 'features.element', '{\"id\":\"29\",\"icon\":\"<i class=\\\"fas fa-headset\\\"><\\/i>\",\"title\":\"Best Support\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 0, '2020-06-07 23:24:47', '2020-08-20 04:19:15'),
(30, 'features.element', '{\"id\":\"30\",\"icon\":\"<i class=\\\"fas fa-globe-americas\\\"><\\/i>\",\"title\":\"We\'re Global\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 0, '2020-06-07 23:25:03', '2020-08-20 04:24:59'),
(31, 'counter.content', '{\"has_image\":\"1\",\"heading\":\"Best Place To Earn Money Online\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\",\"image\":\"5f5e1d6744df91600003431.png\"}', 0, '2020-06-07 23:35:11', '2020-09-17 04:32:15'),
(32, 'counter.element', '{\"id\":\"32\",\"icon\":\"<i class=\\\"fas fa-money-bill-alt\\\"><\\/i>\",\"title\":\"Withdraw\",\"number\":\"$750K+\"}', 0, '2020-06-07 23:35:41', '2020-09-16 04:21:38'),
(33, 'counter.element', '{\"id\":\"33\",\"icon\":\"<i class=\\\"fas fa-users\\\"><\\/i>\",\"title\":\"Users\",\"number\":\"50K+\"}', 0, '2020-06-07 23:35:56', '2020-09-16 04:21:11'),
(34, 'counter.element', '{\"id\":\"34\",\"icon\":\"<i class=\\\"fas fa-paperclip\\\"><\\/i>\",\"title\":\"Impression\",\"number\":\"20M+\"}', 0, '2020-06-07 23:36:22', '2020-09-16 04:20:46'),
(35, 'counter.element', '{\"id\":\"35\",\"icon\":\"<i class=\\\"fab fa-adversal\\\"><\\/i>\",\"title\":\"Advertisement\",\"number\":\"568K+\"}', 0, '2020-06-07 23:36:59', '2020-09-16 04:20:04'),
(36, 'transaction.content', '{\"heading\":\"Latest Transactions\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.\"}', 0, '2020-06-07 23:41:15', '2020-06-07 23:41:15'),
(37, 'testimonial.content', '{\"heading\":\"What People Says\",\"subheading\":\"Welcome\"}', 0, '2020-06-07 23:52:44', '2022-09-11 23:25:17'),
(39, 'testimonial.element', '{\"id\":\"39\",\"has_image\":\"1\",\"name\":\"John Doe\",\"designation\":\"Businessman\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"image\":\"5f633b576fb3d1600338775.jpg\"}', 0, '2020-06-07 23:53:55', '2020-09-17 04:41:40'),
(41, 'payment.content', '{\"heading\":\"Payment We Accept\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.\"}', 0, '2020-06-07 23:59:42', '2020-06-07 23:59:42'),
(42, 'payment.element', '{\"id\":\"42\",\"has_image\":\"1\",\"image\":\"5f0983684817f1594458984.png\"}', 0, '2020-06-07 23:59:54', '2020-07-11 03:16:24'),
(43, 'payment.element', '{\"id\":\"43\",\"has_image\":\"1\",\"image\":\"5f09835b7f1df1594458971.png\"}', 0, '2020-06-08 00:00:02', '2020-07-11 03:16:11'),
(44, 'payment.element', '{\"id\":\"44\",\"has_image\":\"1\",\"image\":\"5f09836276a991594458978.png\"}', 0, '2020-06-08 00:00:10', '2020-07-11 03:16:18'),
(46, 'payment.element', '{\"id\":\"46\",\"has_image\":\"1\",\"image\":\"5f098354da1291594458964.png\"}', 0, '2020-06-08 00:00:28', '2020-07-11 03:16:04'),
(47, 'payment.element', '{\"id\":\"47\",\"has_image\":\"1\",\"image\":\"5f09834c3cbe01594458956.png\"}', 0, '2020-06-08 00:00:40', '2020-07-11 03:15:56'),
(48, 'payment.element', '{\"id\":\"48\",\"has_image\":\"1\",\"image\":\"5f098345934081594458949.png\"}', 0, '2020-06-08 00:00:47', '2020-07-11 03:15:49'),
(49, 'payment.element', '{\"id\":\"49\",\"has_image\":\"1\",\"image\":\"5f09833f348111594458943.png\"}', 0, '2020-06-08 00:00:53', '2020-07-11 03:15:43'),
(50, 'payment.element', '{\"id\":\"50\",\"has_image\":\"1\",\"image\":\"5f098338d51eb1594458936.png\"}', 0, '2020-06-08 00:00:59', '2020-07-11 03:15:36'),
(51, 'faq.content', '{\"heading\":\"Frequently Asked Question\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 0, '2020-06-08 00:16:50', '2020-09-17 04:33:41'),
(60, 'blog.content', '{\"heading\":\"Our Latest Blog\",\"subheading\":\"Lorem ipsum arsalan dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 0, '2020-06-08 00:29:39', '2022-09-10 16:08:22'),
(62, 'blog.element', '{\"id\":\"62\",\"has_image\":\"1\",\"title\":\"WELCOME\",\"preview\":\"To Dexel Solar\",\"description\":\"<p style=\\\"margin-bottom:21px;line-height:30px;color:rgb(102,102,102);font-size:16px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin-bottom:21px;line-height:30px;color:rgb(0,0,80);font-size:16px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin-bottom:6px;line-height:30px;color:rgb(102,102,102);font-size:16px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"5f0983a8ae4901594459048.jpg\"}', 7, '2020-06-08 00:30:48', '2022-09-12 18:46:15'),
(67, 'contact.content', '{\"has_image\":\"1\",\"heading\":\"Contact with us\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\",\"image\":\"5f3e65f63d42d1597924854.jpg\"}', 0, '2020-06-08 01:18:53', '2020-09-17 04:33:55'),
(68, 'contact.element', '{\"id\":\"68\",\"icon\":\"<i class=\\\"far fa-envelope\\\"><\\/i>\",\"title\":\"Email Address\",\"content\":\"contact@ptcl.com\"}', 0, '2020-06-08 01:19:11', '2020-09-16 04:24:26'),
(69, 'contact.element', '{\"id\":\"69\",\"icon\":\"<i class=\\\"fas fa-phone\\\"><\\/i>\",\"title\":\"Phone Number\",\"content\":\"+996 999 153 198\"}', 0, '2020-06-08 01:19:37', '2022-09-07 12:55:03'),
(71, 'social.element', '{\"icon\":\"<i class=\\\"fab fa-facebook-f\\\"><\\/i>\",\"url\":\"#\"}', 0, '2020-06-08 05:32:11', '2020-06-08 05:32:11'),
(72, 'social.element', '{\"icon\":\"<i class=\\\"fab fa-youtube\\\"><\\/i>\",\"url\":\"#\"}', 0, '2020-06-08 05:32:28', '2020-06-08 05:32:28'),
(73, 'privacy.content', '{\"content\":\"<h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"}', 0, '2020-06-08 05:43:17', '2020-06-08 05:43:17');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `view`, `created_at`, `updated_at`) VALUES
(74, 'terms.content', '{\"content\":\"<h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify; color: rgb(0, 0, 0);\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"}', 0, '2020-06-08 05:43:48', '2020-06-08 05:43:48'),
(75, 'plan.content', '{\"heading\":\"Membership Plans\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 0, '2020-06-08 23:56:28', '2020-09-16 04:17:13'),
(76, 'referral.content', '{\"has_image\":\"1\",\"heading\":\"Referral & Representative\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.\",\"description\":\"<span style=\\\"color: rgb(102, 102, 102); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.<\\/span><span style=\\\"color: rgb(102, 102, 102); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.<\\/span><span style=\\\"color: rgb(102, 102, 102); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi ut.<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; color: rgb(102, 102, 102); font-size: 16px; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incint ut labore et am, quis nostrud exercitation ullamco laboris nisi&nbsp;<\\/span><br><div><br><\\/div><div style=\\\"text-align: left;\\\"><b><font size=\\\"4\\\" color=\\\"#000066\\\"><span style=\\\"font-family: &quot;Open Sans&quot;, sans-serif;\\\">1.&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, adipiscing<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\"><br><\\/span><\\/font><\\/b><\\/div><div style=\\\"text-align: left;\\\"><b><font size=\\\"4\\\" color=\\\"#000066\\\"><span style=\\\"font-family: &quot;Open Sans&quot;, sans-serif;\\\">2.&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\"><br><\\/span><\\/font><\\/b><\\/div><div style=\\\"text-align: left;\\\"><b><font size=\\\"4\\\" color=\\\"#000066\\\"><span style=\\\"font-family: &quot;Open Sans&quot;, sans-serif;\\\">3.&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">Lorem ipsum sit amet, consectetur adipiscing<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\"><br><\\/span><\\/font><\\/b><\\/div><div style=\\\"text-align: left;\\\"><b><font size=\\\"4\\\" color=\\\"#000066\\\"><span style=\\\"font-family: &quot;Open Sans&quot;, sans-serif;\\\">4.&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\"><br><\\/span><\\/font><\\/b><\\/div><div style=\\\"text-align: left;\\\"><b><font size=\\\"4\\\" color=\\\"#000066\\\"><span style=\\\"font-family: &quot;Open Sans&quot;, sans-serif;\\\">5.&nbsp;<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center;\\\">&nbsp;<\\/span><\\/font><\\/b><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; text-align: center; color: rgb(0, 0, 102); font-size: large;\\\">amet<\\/span><span style=\\\"font-family: &quot;Noto Sans&quot;, sans-serif; color: rgb(102, 102, 102); font-size: 16px; text-align: center;\\\"><br><\\/span><\\/div>\",\"image\":\"5f098197d901a1594458519.jpg\"}', 0, '2020-06-09 00:03:15', '2020-07-11 03:08:39'),
(77, 'breadcrumb.content', '{\"has_image\":\"1\",\"image\":\"631caeb82d4d81662824120.png\"}', 0, '2020-06-09 01:03:39', '2022-09-10 15:35:20'),
(78, 'login.content', '{\"heading\":\"Let\'s Get Started\",\"subheading\":\"Sign in to continue to Dexal Solar.\"}', 0, '2020-06-09 01:06:54', '2022-09-06 19:12:13'),
(79, 'Register.content', '{\"heading\":\"Get started with Us\",\"subheading\":\"Register a new membership\"}', 0, '2020-06-09 01:07:09', '2022-09-06 19:13:12'),
(80, 'copyright.content', '{\"copyright\":\"Copyright \\u00a9 2022 dexelsolar. All Rights Reserved.\"}', 0, '2020-06-09 05:53:27', '2022-09-12 18:26:12'),
(81, 'banner.element', '{\"id\":\"81\",\"has_image\":\"1\",\"heading\":\"Welcome to Dexel Solar\",\"subheading\":\"Earn highest profits with small investments with dexel solar  a green energy investment platform!\",\"button_1\":\"Login\",\"button_1_url\":\"login\",\"button_2\":\"Register\",\"button_2_url\":\"register\",\"image\":\"6317b5f0d160f1662498288.jpg\"}', 0, '2020-08-20 04:06:53', '2022-09-12 18:28:58');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `view`, `created_at`, `updated_at`) VALUES
(82, 'footer_link.element', '{\"title\":\"Privacy & Policy\",\"content\":\"<h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"}', 0, '2020-08-20 08:16:32', '2020-08-20 08:16:32');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `view`, `created_at`, `updated_at`) VALUES
(83, 'footer_link.element', '{\"title\":\"Terms & Condition\",\"content\":\"<h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">The standard Lorem Ipsum passage, used since the 1500s<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3 style=\\\"margin-top: 15px; margin-bottom: 15px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; line-height: 1.3; color: rgb(0, 0, 0); font-size: 14px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.6; font-size: 16px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\">\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"}', 0, '2020-08-20 08:16:41', '2020-08-20 08:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int UNSIGNED NOT NULL,
  `code` int DEFAULT NULL,
  `alias` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `input_form` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `alias`, `image`, `name`, `status`, `parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'paypal', '5f6f1bd8678601601117144.jpg', 'Paypal', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"paypal@user.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:45:44'),
(2, 102, 'perfect_money', '5f6f1d2a742211601117482.jpg', 'Perfect Money', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:51:22'),
(3, 103, 'stripe', '5f6f1d4bc69e71601117515.jpg', 'Stripe Hosted', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_aat3tzBCCXXBkS4sxY3M8A1B\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_AU3G7doZ1sbdpJLj0NaozPBu\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:51:55'),
(4, 104, 'skrill', '5f6f1d41257181601117505.jpg', 'Skrill', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"MerchantSecret\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-27 09:17:18'),
(5, 105, 'paytm', '5f6f1d1d3ec731601117469.jpg', 'PayTM', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:51:09'),
(6, 106, 'payeer', '5f6f1bc61518b1601117126.jpg', 'Payeer', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:45:26'),
(7, 107, 'paystack', '5f7096563dfb71601214038.jpg', 'PayStack', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2020-09-27 07:40:38'),
(8, 108, 'voguepay', '5f6f1d5951a111601117529.jpg', 'VoguePay', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:52:09'),
(9, 109, 'flutterwave', '5f6f1b9e4bb961601117086.jpg', 'Flutterwave', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"FLWPUBK_TEST-5d9bb05bba2c13aa6c7a1ec7d7526ba2-X\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"FLWSECK_TEST-2ac7b05b6b9fa8a423eb58241fd7bbb6-X\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"FLWSECK_TEST32e13665a95a\"}}', '{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:44:46'),
(10, 110, 'razorpay', '5f6f1d3672dd61601117494.jpg', 'RazorPay', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:51:34'),
(11, 111, 'stripe_js', '5f7096a31ed9a1601214115.jpg', 'Stripe Storefront', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_vY0GhNLF8IUOzu9tLvyrAGP800s1MVfv84\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_AU3G7doZ1sbdpJLj0NaozPBu\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-27 07:41:55'),
(12, 112, 'instamojo', '5f6f1babbdbb31601117099.jpg', 'Instamojo', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:44:59'),
(13, 501, 'blockchain', '5f6f1b2b20c6f1601116971.jpg', 'Blockchain', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"8df2e5a0-3798-4b74-871d-973615b57e7b\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CXLqfWXj1xgXe79nEQb3pv2E7TGD13pZgHceZKrQAxqXdrC2FaKuQhm5CYVGyNcHLhSdWau4eQvq3EDCyayvbKJvXa11MX9i2cHPugpt3G\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:42:51'),
(14, 502, 'blockio', '5f6f19432bedf1601116483.jpg', 'Block.io', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"covidvai2020\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:34:43'),
(15, 503, 'coinpayments', '5f6f1b6c02ecd1601117036.jpg', 'CoinPayments', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:56'),
(16, 504, 'coinpayments_fiat', '5f6f1b94e9b2b1601117076.jpg', 'CoinPayments Fiat', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:44:37'),
(17, 505, 'coingate', '5f6f1b5fe18ee1601117023.jpg', 'Coingate', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:44'),
(18, 506, 'coinbase_commerce', '5f6f1b4c774af1601117004.jpg', 'Coinbase Commerce', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.coinbase_commerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:24'),
(24, 113, 'paypal_sdk', '5f6f1bec255c61601117164.jpg', 'Paypal Express', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:46:04'),
(25, 114, 'stripe_v3', '5f709684736321601214084.jpg', 'Stripe Checkout', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_vY0GhNLF8IUOzu9tLvyrAGP800s1MVfv84\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_mWS4YFtvSMH0WCjFFbm6JDQP00gEvE3p0G\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"w5555\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.stripe_v3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-27 07:41:24'),
(27, 115, 'mollie', '5f6f1bb765ab11601117111.jpg', 'Mollie', 0, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"ronniearea@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:45:11'),
(30, 1000, 'usdt', '', 'USDT', 0, '[]', '[]', 0, '{\"delay\":null}', '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;hfbhkdsfbkjsdbfkjdbvjkdbvajkbdsvjkdsbgvak', '{\"upload_screenshot\":{\"field_name\":\"upload_screenshot\",\"field_level\":\"Upload Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2022-09-07 08:17:50', '2022-09-12 02:10:53'),
(31, 1001, 'btc', '6318c0da0efba1662566618.png', 'BTC', 1, '[]', '[]', 0, '{\"delay\":null}', '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; yhan py apny apny wallet ka adress likh dina hai sath ma agr koi note likhna ho wo likh daina hy<div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; kgjasKJfcgZX&lt;jckbKZJxbc KJzxbc kJDSBzx</div><div><br></div><div>&nbsp;</div>', '{\"upload_screenshot\":{\"field_name\":\"upload_screenshot\",\"field_level\":\"Upload Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2022-09-07 14:03:38', '2022-09-12 18:41:58'),
(32, 1002, 'eth_in_binance', '6318c284a22e51662567044.png', 'eth in binance', 0, '[]', '[]', 0, '{\"delay\":null}', 'ashdgashcbsfnbcjszxbcjSzcxnbZxchgz', '{\"upload_screenshot\":{\"field_name\":\"upload_screenshot\",\"field_level\":\"Upload Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2022-09-07 14:10:44', '2022-09-11 03:28:11'),
(33, 1003, 'usdt_in_binance', '', 'USDT In Binance', 0, '[]', '[]', 0, '{\"delay\":null}', '<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<b>TGc1rKwK3Gzwr6uH5Nj4YoUUUqZ5huKUkg</b></div><div><span style=\"color: rgb(33, 37, 41);\">Make sure to copy that code carefully because if you made any mistake company will not be responsible, and send the your plan payment to the company official Binance account.</span></div>', '[]', '2022-09-10 12:54:07', '2022-09-12 03:01:41'),
(34, 1004, 'usdt_in_okx', '', 'USDT In OKX', 0, '[]', '[]', 0, '{\"delay\":null}', 'Make sure to copy that code and send the your plans payments to the company official OKX account.<div>Here is OKX USDT (TRC20) Code:&nbsp; &nbsp;&nbsp;<span style=\"color: rgb(0, 0, 0); font-family: &quot;HarmonyOS Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft Yahei&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre;\"><b>TNkHoPcJPi3mP4HRJYWjamfGzwNwa7Yhop</b></span></div>', '[]', '2022-09-10 12:55:20', '2022-09-12 02:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int DEFAULT NULL,
  `gateway_alias` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'USDT', 'USDT', '', 1000, 'usdt', '100.00000000', '9999999999.99999999', '0.00', '0.00000000', '221.00000000', '', '{\"upload_screenshot\":{\"field_name\":\"upload_screenshot\",\"field_level\":\"Upload Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2022-09-07 08:17:50', '2022-09-07 08:17:50'),
(2, 'BTC', 'BTC', '', 1001, 'btc', '100.00000000', '9999999999.99999999', '0.00', '0.00000000', '0.00000000', '6318c0da0efba1662566618.png', '{\"upload_screenshot\":{\"field_name\":\"upload_screenshot\",\"field_level\":\"Upload Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2022-09-07 14:03:38', '2022-09-07 14:03:38'),
(3, 'eth in binance', 'ETH', '', 1002, 'eth_in_binance', '100.00000000', '9999999999.99999999', '0.00', '0.00000000', '1.00000000', '6318c284a22e51662567044.png', '{\"upload_screenshot\":{\"field_name\":\"upload_screenshot\",\"field_level\":\"Upload Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '2022-09-07 14:10:44', '2022-09-07 14:10:44'),
(4, 'USDT In Binance', 'USDT', '', 1003, 'usdt_in_binance', '5005.00000000', '100000.00000000', '1.00', '1.00000000', '225.00000000', '', '[]', '2022-09-10 12:54:07', '2022-09-12 03:02:22'),
(5, 'USDT In OKX', 'USDT', '', 1004, 'usdt_in_okx', '1.00000000', '100000.00000000', '1.00', '1.00000000', '225.00000000', '', '[]', '2022-09-10 12:55:20', '2022-09-12 02:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `sitename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `ref_depo` int NOT NULL DEFAULT '0',
  `ref_upgr` int NOT NULL DEFAULT '0',
  `ref_ptc` int NOT NULL DEFAULT '0',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off	, 1: On',
  `social_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'social login',
  `social_credential` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `ref_depo`, `ref_upgr`, `ref_ptc`, `ev`, `en`, `sv`, `sn`, `registration`, `social_login`, `social_credential`, `active_template`, `sys_version`, `created_at`, `updated_at`) VALUES
(1, 'dexalsolar', 'PKR', 'Rs', 'no-reply@viserlab.com', '<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15\" style=\"padding: 0px 30px 30px;\"><table style=\"width: 320px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><th class=\"column-top\" style=\"font-size: 0pt; line-height: 0pt; padding: 0px; margin: 0px; font-weight: normal; vertical-align: top;\" width=\"145\"><table style=\"width: 320px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"font-size: 0pt; line-height: 0pt; text-align: center;\"><img src=\"https://i.imgur.com/wXmdLJg.png\" alt=\"PTCLab\" width=\"320\" border=\"0\"></td></tr></tbody></table></th></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2020 PTCLab. All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', 'https://api.infobip.com/api/v3/sendsms/plain?user=username&password=password&sender=PTCLab&SMSText={{message}}&GSM={{number}}&type=longSMS', '0099ff', '001d4a', '{\"name\":\"php\"}', 1, 1, 1, 0, 1, 0, 0, 1, 0, '{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}', 'basic', '{\"version\":\"1.0\",\"details\":\"Initial Release\"}', NULL, '2022-09-11 21:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint NOT NULL DEFAULT '0' COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 0, '2020-07-06 03:47:55', '2022-09-06 19:14:17'),
(4, 'Bangla', 'bn', '5f1596a650cd11595250342.png', 0, 0, '2020-07-20 07:05:42', '2020-09-24 05:52:06'),
(5, 'Hindi', 'hi', NULL, 0, 0, '2020-09-27 07:51:48', '2020-09-27 07:51:48'),
(6, 'Spanish', 'es', NULL, 0, 0, '2020-09-27 07:52:02', '2020-09-27 07:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"about\",\"plan\"]', '2020-03-02 03:54:15', '2022-09-06 19:00:05'),
(2, 'About', 'about', 'templates.basic.', '[\"about\",\"testimonial\",\"counter\",\"features\",\"faq\"]', '2020-06-08 00:04:13', '2020-08-20 05:52:26'),
(3, 'Faq', 'faq', 'templates.basic.', '[\"faq\",\"testimonial\"]', '2020-06-08 00:26:40', '2020-08-20 05:52:35'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, '2020-06-08 00:37:21', '2020-06-08 00:37:21'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, '2020-06-08 01:20:20', '2020-06-08 01:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `daily_limit` int NOT NULL DEFAULT '0',
  `total_profit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_bonus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_draw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ref_level` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `daily_limit`, `total_profit`, `ref_bonus`, `min_draw`, `status`, `ref_level`, `created_at`, `updated_at`) VALUES
(1, 'https://wtpower.io/assets/images/spec_1.png', '100.00000000', 7, '210', '20', '10', 1, 1, '2022-09-07 08:13:18', '2022-09-10 09:32:32'),
(2, 'https://wtpower.io/assets/images/spec_2.png', '500.00000000', 7, '1050', '100', '70', 1, 1, '2022-09-09 21:52:18', '2022-09-10 09:32:58'),
(3, 'https://wtpower.io/assets/images/spec_3.png', '1000.00000000', 70, '2100', '200', '140', 1, 1, '2022-09-10 09:33:36', '2022-09-10 09:33:36'),
(4, 'https://wtpower.io/assets/images/spec_4.png', '5000.00000000', 350, '10500', '1000', '1050', 1, 1, '2022-09-10 09:34:16', '2022-09-10 09:34:16'),
(5, 'https://wtpower.io/assets/images/ser_img_1.png', '10000.00000000', 700, '21000', '2000', '2100', 1, 1, '2022-09-10 09:34:52', '2022-09-10 09:34:52'),
(6, 'https://wtpower.io/assets/images/ser_img_2.png', '25000.00000000', 1750, '52500', '5000', '5250', 1, 1, '2022-09-10 09:35:25', '2022-09-10 09:35:25'),
(7, 'https://wtpower.io/assets/images/ser_img_6.png', '50000.00000000', 3500, '105000', '10000', '14000', 1, 1, '2022-09-10 09:35:59', '2022-09-10 09:35:59'),
(8, 'https://wtpower.io/assets/images/ser_img_3.png', '100000.00000000', 7000, '210000', '20000', '28000', 1, 1, '2022-09-10 09:36:41', '2022-09-10 09:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int UNSIGNED NOT NULL,
  `act` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\n                        (function(){\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\n                        s1.async=true;\n                        s1.src=\"https://embed.tawk.to/{{app_key}}/default\";\n                        s1.charset=\"UTF-8\";\n                        s1.setAttribute(\"crossorigin\",\"*\");\n                        s0.parentNode.insertBefore(s1,s0);\n                        })();\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"---\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2020-09-17 05:29:31'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"---\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2020-09-24 05:59:52'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 1, NULL, '2019-10-18 23:16:05', '2020-09-16 03:37:18'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google-analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"UA-00000\"}}', 'ganalytics.png', 0, NULL, NULL, '2020-09-16 03:40:43'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"---\"}}', 'fb_com.PNG', 0, NULL, NULL, '2020-09-16 03:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `ptcs`
--

CREATE TABLE `ptcs` (
  `id` int UNSIGNED NOT NULL,
  `ads_type` int DEFAULT NULL COMMENT '1 = link | 2 = image | 3 = script',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `duration` int NOT NULL DEFAULT '0',
  `max_show` int NOT NULL DEFAULT '0',
  `showed` int NOT NULL DEFAULT '0',
  `remain` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_views`
--

CREATE TABLE `ptc_views` (
  `id` int NOT NULL,
  `ptc_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `vdt` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int UNSIGNED NOT NULL,
  `level` int NOT NULL,
  `percent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `level`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2', 1, '2022-09-07 14:13:37', '2022-09-07 14:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `support_message_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `trx_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `remark`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '123456789.00000000', '0.00000000', '123456789.00000000', '+', 'SE1CMXC2WO1M', NULL, 'Added Balance Via Admin', '2022-09-06 19:22:05', '2022-09-06 19:22:05'),
(2, 6, '1000.00000000', '0.00000000', '1000.00000000', '+', 'ATN8G66SOGOU', NULL, 'Deposit Via USDT', '2022-09-07 08:20:36', '2022-09-07 08:20:36'),
(3, 6, '1000.00000000', '0.00000000', '2000.00000000', '+', 'A6NX9X5H94UP', NULL, 'Deposit Via USDT', '2022-09-07 13:01:33', '2022-09-07 13:01:33'),
(4, 6, '1000.00000000', '0.00000000', '3000.00000000', '+', 'P4N4JV28J1WP', NULL, 'Deposit Via BTC', '2022-09-07 14:05:21', '2022-09-07 14:05:21'),
(5, 6, '1000.00000000', '0.00000000', '4000.00000000', '+', 'AXWKMG82AG99', NULL, 'Deposit Via eth in binance', '2022-09-07 14:12:41', '2022-09-07 14:12:41'),
(6, 1, '1000.00000000', '0.00000000', '123455789.00000000', '-', 'PR4WSNXTSGTB', 'buy_plan', 'Subscribed to web Plan', '2022-09-09 21:33:59', '2022-09-09 21:33:59'),
(7, 1, '123.00000000', '0.00000000', '123455666.00000000', '-', 'A57U7XTNCC1D', 'buy_plan', 'Subscribed to ab Plan', '2022-09-10 08:08:36', '2022-09-10 08:08:36'),
(8, 1, '1000.00000000', '0.00000000', '123454666.00000000', '-', 'QQCAUK4JVBGP', 'buy_plan', 'Subscribed to web Plan', '2022-09-10 08:09:42', '2022-09-10 08:09:42'),
(9, 1, '500.00000000', '0.00000000', '123454166.00000000', '-', 'NWY629EOKT9O', 'buy_plan', 'Subscribed to https://wtpower.io/assets/images/spec_2.png Plan', '2022-09-11 15:39:44', '2022-09-11 15:39:44'),
(10, 11, '100.00000000', '0.00000000', '100.00000000', '+', 'DC4FZZZD3STQ', NULL, 'Deposit Via USDT', '2022-09-11 23:34:04', '2022-09-11 23:34:04'),
(11, 12, '500.00000000', '0.00000000', '500.00000000', '+', '38OJJZ6HMQJA', NULL, 'Deposit Via USDT', '2022-09-12 02:30:53', '2022-09-12 02:30:53'),
(12, 1, '100.00000000', '0.00000000', '123454266.00000000', '+', '1TMR9J1MDSDV', NULL, 'Deposit Via eth in binance', '2022-09-12 08:14:10', '2022-09-12 08:14:10'),
(13, 1, '1000.00000000', '0.00000000', '123455266.00000000', '+', 'ETRCF63H48B2', NULL, 'Deposit Via eth in binance', '2022-09-12 08:14:29', '2022-09-12 08:14:29'),
(14, 1, '1000.00000000', '0.00000000', '123456266.00000000', '+', 'D39N4H5UYMJZ', NULL, 'Deposit Via BTC', '2022-09-12 08:14:41', '2022-09-12 08:14:41'),
(15, 1, '7.00000000', '0.00000000', '123456273.00000000', '+', 'B9SYOJXOVE44', 'earn', 'Earn amount from Daily Profit', '2022-09-12 10:50:51', '2022-09-12 10:50:51'),
(16, 1, '1.00000000', '1.11000000', '123456272.00000000', '-', '91YUFYWT3TOX', NULL, '-0.11 PKR Withdraw Via test method', '2022-09-12 10:57:05', '2022-09-12 10:57:05'),
(17, 1, '7.00000000', '0.00000000', '123456279.00000000', '+', '89PPYR5C85FW', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:00:03', '2022-09-12 11:00:03'),
(18, 1, '7.00000000', '0.00000000', '123456286.00000000', '+', 'S5ESGSMFNF14', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:05:03', '2022-09-12 11:05:03'),
(19, 1, '7.00000000', '0.00000000', '123456293.00000000', '+', 'UPQFAUJC3RVH', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:10:02', '2022-09-12 11:10:02'),
(20, 1, '7.00000000', '0.00000000', '123456300.00000000', '+', 'FS842PG5AF4F', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:15:03', '2022-09-12 11:15:03'),
(21, 1, '7.00000000', '0.00000000', '123456307.00000000', '+', '7M15S4PMJBNF', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:20:02', '2022-09-12 11:20:02'),
(22, 1, '7.00000000', '0.00000000', '123456314.00000000', '+', 'QU5P18G1NM9K', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:25:02', '2022-09-12 11:25:02'),
(23, 1, '7.00000000', '0.00000000', '123456321.00000000', '+', 'REJHFEDEYAFM', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:30:02', '2022-09-12 11:30:02'),
(24, 1, '7.00000000', '0.00000000', '123456328.00000000', '+', 'BQYHVNOVRH6O', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:35:03', '2022-09-12 11:35:03'),
(25, 1, '7.00000000', '0.00000000', '123456335.00000000', '+', '8CKK79VEZJG5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:40:02', '2022-09-12 11:40:02'),
(26, 1, '7.00000000', '0.00000000', '123456342.00000000', '+', 'OO5EASGEW1QD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:45:02', '2022-09-12 11:45:02'),
(27, 1, '7.00000000', '0.00000000', '123456349.00000000', '+', '2Q6J2835VAR7', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:50:09', '2022-09-12 11:50:09'),
(28, 1, '7.00000000', '0.00000000', '123456356.00000000', '+', 'UG39GWBR9NY3', 'earn', 'Earn amount from Daily Profit', '2022-09-12 11:55:02', '2022-09-12 11:55:02'),
(29, 1, '7.00000000', '0.00000000', '123456363.00000000', '+', 'D3C3G1BWN5D3', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:00:02', '2022-09-12 12:00:02'),
(30, 1, '7.00000000', '0.00000000', '123456370.00000000', '+', 'J7E8ZFRWFR67', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:05:02', '2022-09-12 12:05:02'),
(31, 1, '7.00000000', '0.00000000', '123456377.00000000', '+', '543O8WUFE7PR', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:10:02', '2022-09-12 12:10:02'),
(32, 1, '7.00000000', '0.00000000', '123456384.00000000', '+', 'OM21KNMNJJ1T', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:15:03', '2022-09-12 12:15:03'),
(33, 1, '7.00000000', '0.00000000', '123456391.00000000', '+', 'Q691B7ADH3W8', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:20:02', '2022-09-12 12:20:02'),
(34, 1, '7.00000000', '0.00000000', '123456398.00000000', '+', 'D94E322MKEG3', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:25:03', '2022-09-12 12:25:03'),
(35, 1, '7.00000000', '0.00000000', '123456405.00000000', '+', '1GXPQK85XG3Y', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:30:03', '2022-09-12 12:30:03'),
(36, 1, '7.00000000', '0.00000000', '123456412.00000000', '+', 'JS5YBQYYRNV6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:35:02', '2022-09-12 12:35:02'),
(37, 1, '7.00000000', '0.00000000', '123456419.00000000', '+', '4DB256VBTGMN', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:40:04', '2022-09-12 12:40:04'),
(38, 1, '7.00000000', '0.00000000', '123456426.00000000', '+', '9A1JAKTUR7MX', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:45:03', '2022-09-12 12:45:03'),
(39, 1, '7.00000000', '0.00000000', '123456433.00000000', '+', 'YWW4QFXRDNY3', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:50:09', '2022-09-12 12:50:09'),
(40, 1, '7.00000000', '0.00000000', '123456440.00000000', '+', '6TYMBB2VOFKC', 'earn', 'Earn amount from Daily Profit', '2022-09-12 12:55:02', '2022-09-12 12:55:02'),
(41, 1, '7.00000000', '0.00000000', '123456447.00000000', '+', 'NPMO79CR8ZRR', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:00:03', '2022-09-12 13:00:03'),
(42, 1, '7.00000000', '0.00000000', '123456454.00000000', '+', 'E5Z7ZZMC8B9D', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:05:03', '2022-09-12 13:05:03'),
(43, 1, '7.00000000', '0.00000000', '123456461.00000000', '+', '9MSZB1WM24WA', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:10:02', '2022-09-12 13:10:02'),
(44, 1, '7.00000000', '0.00000000', '123456468.00000000', '+', 'G5ZZ5Q4BCPOF', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:15:04', '2022-09-12 13:15:04'),
(45, 1, '7.00000000', '0.00000000', '123456475.00000000', '+', '45W2QZO4CNG7', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:20:04', '2022-09-12 13:20:04'),
(46, 1, '7.00000000', '0.00000000', '123456482.00000000', '+', 'E2OA8TVMW5PU', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:25:01', '2022-09-12 13:25:01'),
(47, 1, '7.00000000', '0.00000000', '123456489.00000000', '+', 'JGFPYZ1ZCUSF', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:30:03', '2022-09-12 13:30:03'),
(48, 1, '7.00000000', '0.00000000', '123456496.00000000', '+', 'ZYKXM5HE8ECC', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:35:02', '2022-09-12 13:35:02'),
(49, 1, '7.00000000', '0.00000000', '123456503.00000000', '+', 'MBCC5TFJA8FE', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:40:04', '2022-09-12 13:40:04'),
(50, 1, '7.00000000', '0.00000000', '123456510.00000000', '+', '38UEQNP34VA5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:45:02', '2022-09-12 13:45:02'),
(51, 1, '7.00000000', '0.00000000', '123456517.00000000', '+', '3VJRCRAH5NKB', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:50:09', '2022-09-12 13:50:09'),
(52, 1, '7.00000000', '0.00000000', '123456524.00000000', '+', 'G85BM2E8R3KV', 'earn', 'Earn amount from Daily Profit', '2022-09-12 13:55:02', '2022-09-12 13:55:02'),
(53, 1, '7.00000000', '0.00000000', '123456531.00000000', '+', 'A3GY86ZFR5R7', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:00:02', '2022-09-12 14:00:02'),
(54, 1, '7.00000000', '0.00000000', '123456538.00000000', '+', 'EZF5ZSQQCE8W', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:05:02', '2022-09-12 14:05:02'),
(55, 1, '7.00000000', '0.00000000', '123456545.00000000', '+', 'YG7WR8Q8KFOS', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:10:03', '2022-09-12 14:10:03'),
(56, 1, '7.00000000', '0.00000000', '123456552.00000000', '+', 'WGUKB7YKBJB8', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:15:03', '2022-09-12 14:15:03'),
(57, 1, '7.00000000', '0.00000000', '123456559.00000000', '+', 'Y3KNS56EJY2F', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:20:02', '2022-09-12 14:20:02'),
(58, 1, '7.00000000', '0.00000000', '123456566.00000000', '+', 'XDAT2YPN3JZ8', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:25:02', '2022-09-12 14:25:02'),
(59, 1, '7.00000000', '0.00000000', '123456573.00000000', '+', 'XBC3CNNE9PQT', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:30:03', '2022-09-12 14:30:03'),
(60, 1, '7.00000000', '0.00000000', '123456580.00000000', '+', 'B84ZSQFGWP9W', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:35:03', '2022-09-12 14:35:03'),
(61, 1, '7.00000000', '0.00000000', '123456587.00000000', '+', '37XMSCDNJ2QZ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:40:02', '2022-09-12 14:40:02'),
(62, 1, '7.00000000', '0.00000000', '123456594.00000000', '+', 'UX7AFZ7UO6QR', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:45:03', '2022-09-12 14:45:03'),
(63, 1, '7.00000000', '0.00000000', '123456601.00000000', '+', 'MSG5UVXP4YYY', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:50:09', '2022-09-12 14:50:09'),
(64, 1, '7.00000000', '0.00000000', '123456608.00000000', '+', '1Q31FF1C4UJN', 'earn', 'Earn amount from Daily Profit', '2022-09-12 14:55:03', '2022-09-12 14:55:03'),
(65, 1, '7.00000000', '0.00000000', '123456615.00000000', '+', 'SUXJPQ5QV2P6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:00:03', '2022-09-12 15:00:03'),
(66, 1, '7.00000000', '0.00000000', '123456622.00000000', '+', 'P9VRBGVQCUQD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:05:05', '2022-09-12 15:05:05'),
(67, 1, '7.00000000', '0.00000000', '123456629.00000000', '+', 'M56H9SV7QK4C', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:10:03', '2022-09-12 15:10:03'),
(68, 1, '7.00000000', '0.00000000', '123456636.00000000', '+', '1R4SR8TSR3T5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:15:02', '2022-09-12 15:15:02'),
(69, 1, '7.00000000', '0.00000000', '123456643.00000000', '+', 'T5HVA4P655RF', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:20:03', '2022-09-12 15:20:03'),
(70, 1, '7.00000000', '0.00000000', '123456650.00000000', '+', 'MKVP89BSVE8S', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:25:03', '2022-09-12 15:25:03'),
(71, 1, '7.00000000', '0.00000000', '123456657.00000000', '+', 'R9N3Q8QVA475', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:30:03', '2022-09-12 15:30:03'),
(72, 1, '7.00000000', '0.00000000', '123456664.00000000', '+', '4X1RAMNSUHYW', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:35:03', '2022-09-12 15:35:03'),
(73, 1, '7.00000000', '0.00000000', '123456671.00000000', '+', '1KNG31GK1NJZ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:40:02', '2022-09-12 15:40:02'),
(74, 1, '7.00000000', '0.00000000', '123456678.00000000', '+', 'UGEG7ZTHBSV1', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:45:03', '2022-09-12 15:45:03'),
(75, 1, '7.00000000', '0.00000000', '123456685.00000000', '+', '6YOBMTBJZANU', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:50:10', '2022-09-12 15:50:10'),
(76, 1, '7.00000000', '0.00000000', '123456692.00000000', '+', 'O38OSNXECD6W', 'earn', 'Earn amount from Daily Profit', '2022-09-12 15:55:02', '2022-09-12 15:55:02'),
(77, 1, '7.00000000', '0.00000000', '123456699.00000000', '+', '314BWYXKK5QZ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:00:02', '2022-09-12 16:00:02'),
(78, 1, '7.00000000', '0.00000000', '123456706.00000000', '+', 'CYSO1ZBUSRQY', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:05:03', '2022-09-12 16:05:03'),
(79, 1, '7.00000000', '0.00000000', '123456713.00000000', '+', 'DCMS8FZBGXM1', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:10:04', '2022-09-12 16:10:04'),
(80, 1, '7.00000000', '0.00000000', '123456720.00000000', '+', 'WW1WMQESNSWS', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:15:03', '2022-09-12 16:15:03'),
(81, 1, '7.00000000', '0.00000000', '123456727.00000000', '+', 'QJ973MKOXFSY', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:20:03', '2022-09-12 16:20:03'),
(82, 1, '7.00000000', '0.00000000', '123456734.00000000', '+', 'WUCS688MHDKT', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:25:03', '2022-09-12 16:25:03'),
(83, 1, '7.00000000', '0.00000000', '123456741.00000000', '+', '1WZBFRR6KJNN', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:30:02', '2022-09-12 16:30:02'),
(84, 1, '7.00000000', '0.00000000', '123456748.00000000', '+', 'N84328YF8J94', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:35:03', '2022-09-12 16:35:03'),
(85, 1, '7.00000000', '0.00000000', '123456755.00000000', '+', 'MW33DHDEBF22', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:40:03', '2022-09-12 16:40:03'),
(86, 1, '7.00000000', '0.00000000', '123456762.00000000', '+', '4VRFRJDVY7VD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:45:02', '2022-09-12 16:45:02'),
(87, 1, '7.00000000', '0.00000000', '123456769.00000000', '+', 'O4D9ZUXU9SZ4', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:50:09', '2022-09-12 16:50:09'),
(88, 1, '7.00000000', '0.00000000', '123456776.00000000', '+', 'JFQVZOKT26YZ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 16:55:03', '2022-09-12 16:55:03'),
(89, 1, '7.00000000', '0.00000000', '123456783.00000000', '+', 'F3UWJ3DY5ZQD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:00:03', '2022-09-12 17:00:03'),
(90, 1, '7.00000000', '0.00000000', '123456790.00000000', '+', '56QOZSW6VAT6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:05:02', '2022-09-12 17:05:02'),
(91, 1, '7.00000000', '0.00000000', '123456797.00000000', '+', 'B671Y64897BX', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:10:03', '2022-09-12 17:10:03'),
(92, 1, '7.00000000', '0.00000000', '123456804.00000000', '+', 'WONPQE6T1KCG', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:15:02', '2022-09-12 17:15:02'),
(93, 1, '7.00000000', '0.00000000', '123456811.00000000', '+', 'DR9MQGS23BOU', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:20:02', '2022-09-12 17:20:02'),
(94, 1, '7.00000000', '0.00000000', '123456818.00000000', '+', 'A163VT8GM2KB', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:25:03', '2022-09-12 17:25:03'),
(95, 1, '7.00000000', '0.00000000', '123456825.00000000', '+', 'E5VG9CD4E5YF', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:30:03', '2022-09-12 17:30:03'),
(96, 1, '7.00000000', '0.00000000', '123456832.00000000', '+', 'BT929Z2NKEHA', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:35:03', '2022-09-12 17:35:03'),
(97, 1, '7.00000000', '0.00000000', '123456839.00000000', '+', '2B3O4P19X3O5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:40:03', '2022-09-12 17:40:03'),
(98, 1, '7.00000000', '0.00000000', '123456846.00000000', '+', 'VMEGGBPGYWUR', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:45:02', '2022-09-12 17:45:02'),
(99, 1, '7.00000000', '0.00000000', '123456853.00000000', '+', 'W947HBNXDTUD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:50:08', '2022-09-12 17:50:08'),
(100, 1, '7.00000000', '0.00000000', '123456860.00000000', '+', 'MOXO6UAZPMTW', 'earn', 'Earn amount from Daily Profit', '2022-09-12 17:55:02', '2022-09-12 17:55:02'),
(101, 1, '7.00000000', '0.00000000', '123456867.00000000', '+', '7WO7SH5G1Y1M', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:00:03', '2022-09-12 18:00:03'),
(102, 1, '7.00000000', '0.00000000', '123456874.00000000', '+', '8U1KWTQWWFFY', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:05:02', '2022-09-12 18:05:02'),
(103, 1, '7.00000000', '0.00000000', '123456881.00000000', '+', '9GOQ6JUF6K1J', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:10:03', '2022-09-12 18:10:03'),
(104, 1, '7.00000000', '0.00000000', '123456888.00000000', '+', 'SGSRRQZFH7TT', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:15:03', '2022-09-12 18:15:03'),
(105, 1, '7.00000000', '0.00000000', '123456895.00000000', '+', 'HDK5UP4293Q5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:20:03', '2022-09-12 18:20:03'),
(106, 1, '7.00000000', '0.00000000', '123456902.00000000', '+', 'K7M7SSNFTMGC', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:25:03', '2022-09-12 18:25:03'),
(107, 1, '7.00000000', '0.00000000', '123456909.00000000', '+', '8CX92PCZYE9D', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:30:02', '2022-09-12 18:30:02'),
(108, 1, '7.00000000', '0.00000000', '123456916.00000000', '+', 'X9DMD47FR7S9', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:35:04', '2022-09-12 18:35:04'),
(109, 1, '7.00000000', '0.00000000', '123456923.00000000', '+', 'EWWY9CTGSNB8', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:40:03', '2022-09-12 18:40:03'),
(110, 1, '7.00000000', '0.00000000', '123456930.00000000', '+', 'B1XMQG9OJKPV', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:45:03', '2022-09-12 18:45:03'),
(111, 1, '7.00000000', '0.00000000', '123456937.00000000', '+', '12DZYWKXWAB9', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:50:02', '2022-09-12 18:50:02'),
(112, 1, '7.00000000', '0.00000000', '123456944.00000000', '+', '5X8F2DMWFFPQ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 18:55:04', '2022-09-12 18:55:04'),
(113, 1, '7.00000000', '0.00000000', '123456951.00000000', '+', 'GN1RV878SDN5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:00:03', '2022-09-12 19:00:03'),
(114, 1, '7.00000000', '0.00000000', '123456958.00000000', '+', '8SRJKJKTC74Z', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:05:03', '2022-09-12 19:05:03'),
(115, 1, '7.00000000', '0.00000000', '123456965.00000000', '+', 'TB63MTPW9DXG', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:10:03', '2022-09-12 19:10:03'),
(116, 1, '7.00000000', '0.00000000', '123456972.00000000', '+', '5T19YEK1URCF', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:15:03', '2022-09-12 19:15:03'),
(117, 1, '7.00000000', '0.00000000', '123456979.00000000', '+', 'GY8Z6WWG4Z7B', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:20:03', '2022-09-12 19:20:03'),
(118, 1, '7.00000000', '0.00000000', '123456986.00000000', '+', '8CKD8XX8QVD6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:25:04', '2022-09-12 19:25:04'),
(119, 1, '7.00000000', '0.00000000', '123456993.00000000', '+', 'S1UC9SWUVNCU', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:30:02', '2022-09-12 19:30:02'),
(120, 1, '7.00000000', '0.00000000', '123457000.00000000', '+', 'E6ERBB6T1YKV', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:35:04', '2022-09-12 19:35:04'),
(121, 1, '7.00000000', '0.00000000', '123457007.00000000', '+', '5VWKB5C6MF3W', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:40:02', '2022-09-12 19:40:02'),
(122, 1, '7.00000000', '0.00000000', '123457014.00000000', '+', 'RODF45NK6WXS', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:45:02', '2022-09-12 19:45:02'),
(123, 1, '7.00000000', '0.00000000', '123457021.00000000', '+', 'J9ZDBEBADZ3N', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:50:09', '2022-09-12 19:50:09'),
(124, 1, '7.00000000', '0.00000000', '123457028.00000000', '+', 'D9PWJES3JKGR', 'earn', 'Earn amount from Daily Profit', '2022-09-12 19:55:03', '2022-09-12 19:55:03'),
(125, 1, '7.00000000', '0.00000000', '123457035.00000000', '+', '8YSFG5YVKVJW', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:00:03', '2022-09-12 20:00:03'),
(126, 1, '7.00000000', '0.00000000', '123457042.00000000', '+', '61XPDS9W7S1X', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:05:03', '2022-09-12 20:05:03'),
(127, 1, '7.00000000', '0.00000000', '123457049.00000000', '+', 'HAWGCP9ZMS1A', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:10:03', '2022-09-12 20:10:03'),
(128, 1, '7.00000000', '0.00000000', '123457056.00000000', '+', 'J1QREQRB46VZ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:15:03', '2022-09-12 20:15:03'),
(129, 1, '7.00000000', '0.00000000', '123457063.00000000', '+', 'ESB9QSOBAGN6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:20:02', '2022-09-12 20:20:02'),
(130, 1, '7.00000000', '0.00000000', '123457070.00000000', '+', 'N2394O6SX4DP', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:25:02', '2022-09-12 20:25:02'),
(131, 1, '7.00000000', '0.00000000', '123457077.00000000', '+', 'FS1AR6D9POOX', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:30:03', '2022-09-12 20:30:03'),
(132, 1, '7.00000000', '0.00000000', '123457084.00000000', '+', 'PYD362QKE6ZE', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:35:04', '2022-09-12 20:35:04'),
(133, 1, '7.00000000', '0.00000000', '123457091.00000000', '+', 'YMQN3U93UKDT', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:40:03', '2022-09-12 20:40:03'),
(134, 1, '7.00000000', '0.00000000', '123457098.00000000', '+', 'K2VHAV79AQOD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:45:03', '2022-09-12 20:45:03'),
(135, 1, '7.00000000', '0.00000000', '123457105.00000000', '+', 'A3YA2UWF78QK', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:50:09', '2022-09-12 20:50:09'),
(136, 1, '7.00000000', '0.00000000', '123457112.00000000', '+', '5A94PKZS365G', 'earn', 'Earn amount from Daily Profit', '2022-09-12 20:55:02', '2022-09-12 20:55:02'),
(137, 1, '7.00000000', '0.00000000', '123457119.00000000', '+', 'XEKVWMA2BVVG', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:00:03', '2022-09-12 21:00:03'),
(138, 1, '7.00000000', '0.00000000', '123457126.00000000', '+', '7F726GUQOB51', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:05:02', '2022-09-12 21:05:02'),
(139, 1, '7.00000000', '0.00000000', '123457133.00000000', '+', '3PSS5ZOB1T6M', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:10:02', '2022-09-12 21:10:02'),
(140, 1, '7.00000000', '0.00000000', '123457140.00000000', '+', 'JKSASYUSPQDC', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:15:03', '2022-09-12 21:15:03'),
(141, 1, '7.00000000', '0.00000000', '123457147.00000000', '+', 'WDPDXK3NZZJ8', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:20:03', '2022-09-12 21:20:03'),
(142, 1, '7.00000000', '0.00000000', '123457154.00000000', '+', 'YX4TE2HSDXSW', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:25:03', '2022-09-12 21:25:03'),
(143, 1, '7.00000000', '0.00000000', '123457161.00000000', '+', '8TQWOTUH2UKO', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:30:02', '2022-09-12 21:30:02'),
(144, 1, '7.00000000', '0.00000000', '123457168.00000000', '+', '338ETZNUAHNK', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:35:02', '2022-09-12 21:35:02'),
(145, 1, '7.00000000', '0.00000000', '123457175.00000000', '+', '69GJC1C3SJXY', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:40:03', '2022-09-12 21:40:03'),
(146, 1, '7.00000000', '0.00000000', '123457182.00000000', '+', '4EW7AF6MHSDJ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:45:03', '2022-09-12 21:45:03'),
(147, 1, '7.00000000', '0.00000000', '123457189.00000000', '+', '6PNHXKHCTV1N', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:50:10', '2022-09-12 21:50:10'),
(148, 1, '7.00000000', '0.00000000', '123457196.00000000', '+', '5HDSEAGMYQ9T', 'earn', 'Earn amount from Daily Profit', '2022-09-12 21:55:02', '2022-09-12 21:55:02'),
(149, 1, '7.00000000', '0.00000000', '123457203.00000000', '+', '5T1388CDWZC7', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:00:04', '2022-09-12 22:00:04'),
(150, 1, '7.00000000', '0.00000000', '123457210.00000000', '+', 'SSQFCVB7SNEC', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:05:03', '2022-09-12 22:05:03'),
(151, 1, '7.00000000', '0.00000000', '123457217.00000000', '+', 'J22PYK93OAU7', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:10:03', '2022-09-12 22:10:03'),
(152, 1, '7.00000000', '0.00000000', '123457224.00000000', '+', '3DPWSVKSHSHT', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:15:03', '2022-09-12 22:15:03'),
(153, 1, '7.00000000', '0.00000000', '123457231.00000000', '+', 'BY3Z6MMA6POB', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:20:02', '2022-09-12 22:20:02'),
(154, 1, '7.00000000', '0.00000000', '123457238.00000000', '+', '1HSCX3Q18M5Y', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:25:02', '2022-09-12 22:25:02'),
(155, 1, '7.00000000', '0.00000000', '123457245.00000000', '+', 'RSPE2MFPYBX6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:30:03', '2022-09-12 22:30:03'),
(156, 1, '7.00000000', '0.00000000', '123457252.00000000', '+', 'S526CPKQDAON', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:35:02', '2022-09-12 22:35:02'),
(157, 1, '7.00000000', '0.00000000', '123457259.00000000', '+', '5XT1JZPGSDGW', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:40:03', '2022-09-12 22:40:03'),
(158, 1, '7.00000000', '0.00000000', '123457266.00000000', '+', '8KV5YZ9ZGRRD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:45:03', '2022-09-12 22:45:03'),
(159, 1, '7.00000000', '0.00000000', '123457273.00000000', '+', 'YQUVQUH1TG2D', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:50:09', '2022-09-12 22:50:09'),
(160, 1, '7.00000000', '0.00000000', '123457280.00000000', '+', 'X17P5EQVOGAA', 'earn', 'Earn amount from Daily Profit', '2022-09-12 22:55:03', '2022-09-12 22:55:03'),
(161, 1, '7.00000000', '0.00000000', '123457287.00000000', '+', 'R8Y2ZZXFNNFS', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:00:03', '2022-09-12 23:00:03'),
(162, 1, '7.00000000', '0.00000000', '123457294.00000000', '+', 'P1AC526DEUB5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:05:02', '2022-09-12 23:05:02'),
(163, 1, '7.00000000', '0.00000000', '123457301.00000000', '+', 'UPSZTWCCEGGG', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:10:03', '2022-09-12 23:10:03'),
(164, 1, '7.00000000', '0.00000000', '123457308.00000000', '+', 'PAGBFNEJXJWV', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:15:03', '2022-09-12 23:15:03'),
(165, 1, '7.00000000', '0.00000000', '123457315.00000000', '+', 'H8KKNEEGYAB5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:20:02', '2022-09-12 23:20:02'),
(166, 1, '7.00000000', '0.00000000', '123457322.00000000', '+', 'HRW6FACEVKRC', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:25:02', '2022-09-12 23:25:02'),
(167, 1, '7.00000000', '0.00000000', '123457329.00000000', '+', '95C8QNYJBKG6', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:30:03', '2022-09-12 23:30:03'),
(168, 1, '7.00000000', '0.00000000', '123457336.00000000', '+', 'FD3P7WTW344X', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:35:02', '2022-09-12 23:35:02'),
(169, 1, '7.00000000', '0.00000000', '123457343.00000000', '+', 'BCW4HFN13MO5', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:40:03', '2022-09-12 23:40:03'),
(170, 1, '7.00000000', '0.00000000', '123457350.00000000', '+', 'Z6O13DTC7ZJJ', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:45:03', '2022-09-12 23:45:03'),
(171, 1, '7.00000000', '0.00000000', '123457357.00000000', '+', 'RVGR9P7CDDHD', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:50:09', '2022-09-12 23:50:09'),
(172, 1, '7.00000000', '0.00000000', '123457364.00000000', '+', 'HU89B1DBCC29', 'earn', 'Earn amount from Daily Profit', '2022-09-12 23:55:02', '2022-09-12 23:55:02'),
(173, 1, '7.00000000', '0.00000000', '123457371.00000000', '+', 'XV479KN85KT8', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:00:03', '2022-09-13 00:00:03'),
(174, 1, '7.00000000', '0.00000000', '123457378.00000000', '+', '68HBNHX2Y5YZ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:05:02', '2022-09-13 00:05:02'),
(175, 1, '7.00000000', '0.00000000', '123457385.00000000', '+', 'N3176F5BMB66', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:10:03', '2022-09-13 00:10:03'),
(176, 1, '7.00000000', '0.00000000', '123457392.00000000', '+', 'TVVUCCDZXT87', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:15:02', '2022-09-13 00:15:02'),
(177, 1, '7.00000000', '0.00000000', '123457399.00000000', '+', 'O5COJZD3H5O1', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:20:03', '2022-09-13 00:20:03'),
(178, 1, '7.00000000', '0.00000000', '123457406.00000000', '+', 'WGHX9YHT1KSF', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:25:02', '2022-09-13 00:25:02'),
(179, 1, '7.00000000', '0.00000000', '123457413.00000000', '+', 'TWZV4HPMYZJG', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:30:02', '2022-09-13 00:30:02'),
(180, 1, '7.00000000', '0.00000000', '123457420.00000000', '+', 'NPHGW5CR83QE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:35:03', '2022-09-13 00:35:03'),
(181, 1, '7.00000000', '0.00000000', '123457427.00000000', '+', 'NT8142M78MNS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:40:03', '2022-09-13 00:40:03'),
(182, 1, '7.00000000', '0.00000000', '123457434.00000000', '+', 'RQARREN72FDM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:45:02', '2022-09-13 00:45:02'),
(183, 1, '7.00000000', '0.00000000', '123457441.00000000', '+', 'YQMHRA1G4YDT', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:50:09', '2022-09-13 00:50:09'),
(184, 1, '7.00000000', '0.00000000', '123457448.00000000', '+', '47YTXFAF2AZW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 00:55:02', '2022-09-13 00:55:02'),
(185, 1, '7.00000000', '0.00000000', '123457455.00000000', '+', 'HYQBHWO4G961', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:00:03', '2022-09-13 01:00:03'),
(186, 1, '7.00000000', '0.00000000', '123457462.00000000', '+', 'WP6ZP9XCSGMO', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:05:03', '2022-09-13 01:05:03'),
(187, 1, '7.00000000', '0.00000000', '123457469.00000000', '+', 'H89S8FRWWN23', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:10:02', '2022-09-13 01:10:02'),
(188, 1, '7.00000000', '0.00000000', '123457476.00000000', '+', 'V8TB117XB3N2', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:15:03', '2022-09-13 01:15:03'),
(189, 1, '7.00000000', '0.00000000', '123457483.00000000', '+', 'ZJZ8REHTXX9C', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:20:02', '2022-09-13 01:20:02'),
(190, 1, '7.00000000', '0.00000000', '123457490.00000000', '+', 'KV9OHB1V4BSU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:25:02', '2022-09-13 01:25:02'),
(191, 1, '7.00000000', '0.00000000', '123457497.00000000', '+', 'CJJXWK56CBHW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:30:02', '2022-09-13 01:30:02'),
(192, 1, '7.00000000', '0.00000000', '123457504.00000000', '+', 'CANBH1UG7QYU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:35:03', '2022-09-13 01:35:03'),
(193, 1, '7.00000000', '0.00000000', '123457511.00000000', '+', 'XY91UW7N9XT2', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:40:03', '2022-09-13 01:40:03'),
(194, 1, '7.00000000', '0.00000000', '123457518.00000000', '+', '7B6RZFQ1OTDA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:45:02', '2022-09-13 01:45:02'),
(195, 1, '7.00000000', '0.00000000', '123457525.00000000', '+', 'K5NJD835RF8Q', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:50:09', '2022-09-13 01:50:09'),
(196, 1, '7.00000000', '0.00000000', '123457532.00000000', '+', 'KHWU2KZP128Y', 'earn', 'Earn amount from Daily Profit', '2022-09-13 01:55:02', '2022-09-13 01:55:02'),
(197, 1, '7.00000000', '0.00000000', '123457539.00000000', '+', 'AMZ6G3EJT89Q', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:00:03', '2022-09-13 02:00:03'),
(198, 1, '7.00000000', '0.00000000', '123457546.00000000', '+', 'ZAKYCM5XBFNN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:05:04', '2022-09-13 02:05:04'),
(199, 1, '7.00000000', '0.00000000', '123457553.00000000', '+', 'BQ1DZK2HDCJW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:10:03', '2022-09-13 02:10:03'),
(200, 1, '7.00000000', '0.00000000', '123457560.00000000', '+', 'FK21TFRKUP46', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:15:04', '2022-09-13 02:15:04'),
(201, 1, '7.00000000', '0.00000000', '123457567.00000000', '+', 'N4Z85YED9HKE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:20:03', '2022-09-13 02:20:03'),
(202, 1, '7.00000000', '0.00000000', '123457574.00000000', '+', 'F1YD5BQ1XTZ7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:25:03', '2022-09-13 02:25:03'),
(203, 1, '7.00000000', '0.00000000', '123457581.00000000', '+', 'WEEP167NV6XJ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:30:02', '2022-09-13 02:30:02'),
(204, 1, '7.00000000', '0.00000000', '123457588.00000000', '+', 'DMEPGF8R6U8B', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:35:03', '2022-09-13 02:35:03'),
(205, 1, '7.00000000', '0.00000000', '123457595.00000000', '+', 'AKK4783K3Y9P', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:40:03', '2022-09-13 02:40:03'),
(206, 1, '7.00000000', '0.00000000', '123457602.00000000', '+', 'Z7BBVDCUHOKC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:45:03', '2022-09-13 02:45:03'),
(207, 1, '7.00000000', '0.00000000', '123457609.00000000', '+', 'V4XYZ9T4T8NG', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:50:09', '2022-09-13 02:50:09'),
(208, 1, '7.00000000', '0.00000000', '123457616.00000000', '+', 'YJFBR51XXFYJ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 02:55:02', '2022-09-13 02:55:02'),
(209, 1, '7.00000000', '0.00000000', '123457623.00000000', '+', '51T84KV469EC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:00:04', '2022-09-13 03:00:04'),
(210, 1, '7.00000000', '0.00000000', '123457630.00000000', '+', '97CXV8FO16UU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:05:03', '2022-09-13 03:05:03'),
(211, 1, '7.00000000', '0.00000000', '123457637.00000000', '+', 'CYN6SBGNF7X9', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:10:03', '2022-09-13 03:10:03'),
(212, 1, '7.00000000', '0.00000000', '123457644.00000000', '+', '36XKXZ3JQK7Q', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:15:02', '2022-09-13 03:15:02'),
(213, 1, '7.00000000', '0.00000000', '123457651.00000000', '+', '2GE2PCZS7DNB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:20:03', '2022-09-13 03:20:03'),
(214, 1, '7.00000000', '0.00000000', '123457658.00000000', '+', 'MEF2GMN5PUPS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:25:03', '2022-09-13 03:25:03'),
(215, 1, '7.00000000', '0.00000000', '123457665.00000000', '+', 'B1SBZZ99HRKN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:30:05', '2022-09-13 03:30:05'),
(216, 1, '7.00000000', '0.00000000', '123457672.00000000', '+', 'MBMRJ92FDZF7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:35:04', '2022-09-13 03:35:04'),
(217, 1, '7.00000000', '0.00000000', '123457679.00000000', '+', 'MXXQTRS8BW7G', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:40:03', '2022-09-13 03:40:03'),
(218, 1, '7.00000000', '0.00000000', '123457686.00000000', '+', '9ZKS3926TKWN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:45:03', '2022-09-13 03:45:03'),
(219, 1, '7.00000000', '0.00000000', '123457693.00000000', '+', '376X2ZP7RUEE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:50:07', '2022-09-13 03:50:07'),
(220, 1, '7.00000000', '0.00000000', '123457700.00000000', '+', 'Z5RQS1O3Q6SE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 03:55:04', '2022-09-13 03:55:04'),
(221, 1, '7.00000000', '0.00000000', '123457707.00000000', '+', '28TX29TN44ZE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:00:04', '2022-09-13 04:00:04'),
(222, 1, '7.00000000', '0.00000000', '123457714.00000000', '+', 'BXT3AKW3AOUV', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:05:03', '2022-09-13 04:05:03'),
(223, 1, '7.00000000', '0.00000000', '123457721.00000000', '+', '6S7JO38Z6MU7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:10:03', '2022-09-13 04:10:03'),
(224, 1, '7.00000000', '0.00000000', '123457728.00000000', '+', '8KGU7FZMAUAA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:15:03', '2022-09-13 04:15:03'),
(225, 1, '7.00000000', '0.00000000', '123457735.00000000', '+', 'H2OZADSJ23HB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:20:03', '2022-09-13 04:20:03'),
(226, 1, '7.00000000', '0.00000000', '123457742.00000000', '+', 'QDMYSCJQUVP5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:25:03', '2022-09-13 04:25:03'),
(227, 1, '7.00000000', '0.00000000', '123457749.00000000', '+', 'VFNSSHF3VK3U', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:30:03', '2022-09-13 04:30:03'),
(228, 1, '7.00000000', '0.00000000', '123457756.00000000', '+', '5CC5WDZW9XWY', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:35:02', '2022-09-13 04:35:02'),
(229, 1, '7.00000000', '0.00000000', '123457763.00000000', '+', 'KHBRASUJ9DO7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:40:03', '2022-09-13 04:40:03'),
(230, 1, '7.00000000', '0.00000000', '123457770.00000000', '+', '4QZP25QADPD7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:45:03', '2022-09-13 04:45:03'),
(231, 1, '7.00000000', '0.00000000', '123457777.00000000', '+', '3YJA3ER9ME65', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:50:09', '2022-09-13 04:50:09'),
(232, 1, '7.00000000', '0.00000000', '123457784.00000000', '+', 'MDRFQQFP64X5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 04:55:03', '2022-09-13 04:55:03'),
(233, 1, '7.00000000', '0.00000000', '123457791.00000000', '+', '19AOEGHZBYSH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:00:04', '2022-09-13 05:00:04'),
(234, 1, '7.00000000', '0.00000000', '123457798.00000000', '+', '1ESW3B7DS4RN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:05:03', '2022-09-13 05:05:03'),
(235, 1, '7.00000000', '0.00000000', '123457805.00000000', '+', 'FX66ANB8O6KY', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:10:03', '2022-09-13 05:10:03'),
(236, 1, '7.00000000', '0.00000000', '123457812.00000000', '+', '47BYXOFMCXTM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:15:02', '2022-09-13 05:15:02'),
(237, 1, '7.00000000', '0.00000000', '123457819.00000000', '+', 'EC3MMB73B3U2', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:20:03', '2022-09-13 05:20:03'),
(238, 1, '7.00000000', '0.00000000', '123457826.00000000', '+', 'OJAV1XZA4WK5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:25:02', '2022-09-13 05:25:02'),
(239, 1, '7.00000000', '0.00000000', '123457833.00000000', '+', 'KHECW1FZQU7D', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:30:03', '2022-09-13 05:30:03'),
(240, 1, '7.00000000', '0.00000000', '123457840.00000000', '+', '2RB9MYTBTW5B', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:35:03', '2022-09-13 05:35:03'),
(241, 1, '7.00000000', '0.00000000', '123457847.00000000', '+', 'HAC1452UB6TW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:40:02', '2022-09-13 05:40:02'),
(242, 1, '7.00000000', '0.00000000', '123457854.00000000', '+', '3MCNUPO5OWZP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:45:03', '2022-09-13 05:45:03'),
(243, 1, '7.00000000', '0.00000000', '123457861.00000000', '+', 'QBP8VKAWA8QY', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:50:09', '2022-09-13 05:50:09'),
(244, 1, '7.00000000', '0.00000000', '123457868.00000000', '+', 'QY7UTV8OM33N', 'earn', 'Earn amount from Daily Profit', '2022-09-13 05:55:04', '2022-09-13 05:55:04'),
(245, 1, '7.00000000', '0.00000000', '123457875.00000000', '+', 'ZJ8DTAW54N96', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:00:03', '2022-09-13 06:00:03'),
(246, 1, '7.00000000', '0.00000000', '123457882.00000000', '+', 'R9WOBQQGXNHF', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:05:02', '2022-09-13 06:05:02'),
(247, 1, '7.00000000', '0.00000000', '123457889.00000000', '+', '3H3RYKRWW3W5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:10:02', '2022-09-13 06:10:02'),
(248, 1, '7.00000000', '0.00000000', '123457896.00000000', '+', '12AHFXJ5ZYKA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:15:03', '2022-09-13 06:15:03'),
(249, 1, '7.00000000', '0.00000000', '123457903.00000000', '+', 'MCRG266AYYGP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:20:03', '2022-09-13 06:20:03'),
(250, 1, '7.00000000', '0.00000000', '123457910.00000000', '+', 'M1FP8AS2DQX9', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:25:03', '2022-09-13 06:25:03'),
(251, 1, '7.00000000', '0.00000000', '123457917.00000000', '+', 'AJST2ZVN3PRX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:30:03', '2022-09-13 06:30:03'),
(252, 1, '7.00000000', '0.00000000', '123457924.00000000', '+', 'BY1H29XJVMVV', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:35:03', '2022-09-13 06:35:03'),
(253, 1, '7.00000000', '0.00000000', '123457931.00000000', '+', 'BWMKPZGM7Y2A', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:40:03', '2022-09-13 06:40:03'),
(254, 1, '7.00000000', '0.00000000', '123457938.00000000', '+', '3GOUEKGOH6KA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:45:03', '2022-09-13 06:45:03'),
(255, 1, '7.00000000', '0.00000000', '123457945.00000000', '+', '8E21RNRPNPXM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:50:09', '2022-09-13 06:50:09'),
(256, 1, '7.00000000', '0.00000000', '123457952.00000000', '+', '715D7ENU8CD3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 06:55:02', '2022-09-13 06:55:02'),
(257, 1, '7.00000000', '0.00000000', '123457959.00000000', '+', 'DVRRJMG1959R', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:00:03', '2022-09-13 07:00:03'),
(258, 1, '7.00000000', '0.00000000', '123457966.00000000', '+', '288ET2JM4NGU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:05:02', '2022-09-13 07:05:02'),
(259, 1, '7.00000000', '0.00000000', '123457973.00000000', '+', 'WMQU7HNN4XY9', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:10:03', '2022-09-13 07:10:03'),
(260, 1, '7.00000000', '0.00000000', '123457980.00000000', '+', '2W5YNSMGZJW1', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:15:03', '2022-09-13 07:15:03'),
(261, 1, '7.00000000', '0.00000000', '123457987.00000000', '+', 'DU4DCKX55BHS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:20:02', '2022-09-13 07:20:02'),
(262, 1, '7.00000000', '0.00000000', '123457994.00000000', '+', 'WBFW4KB68ERT', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:25:02', '2022-09-13 07:25:02'),
(263, 1, '7.00000000', '0.00000000', '123458001.00000000', '+', 'GASUCFKX5R42', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:30:03', '2022-09-13 07:30:03'),
(264, 1, '7.00000000', '0.00000000', '123458008.00000000', '+', '1ST7NF82UNA3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:35:03', '2022-09-13 07:35:03'),
(265, 1, '7.00000000', '0.00000000', '123458015.00000000', '+', 'ZTAZBM1D5Z1H', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:40:02', '2022-09-13 07:40:02'),
(266, 1, '7.00000000', '0.00000000', '123458022.00000000', '+', 'X3CGRQ9UGR5J', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:45:02', '2022-09-13 07:45:02'),
(267, 1, '7.00000000', '0.00000000', '123458029.00000000', '+', 'NRPG2ABZUVC9', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:50:09', '2022-09-13 07:50:09'),
(268, 1, '7.00000000', '0.00000000', '123458036.00000000', '+', 'TOTFP8X29VMH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 07:55:03', '2022-09-13 07:55:03'),
(269, 1, '7.00000000', '0.00000000', '123458043.00000000', '+', 'RJ3V8KOFXMZF', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:00:03', '2022-09-13 08:00:03'),
(270, 1, '7.00000000', '0.00000000', '123458050.00000000', '+', 'UOKNX2TMTO6V', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:05:02', '2022-09-13 08:05:02'),
(271, 1, '7.00000000', '0.00000000', '123458057.00000000', '+', 'PAO2M9TSWHTV', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:10:03', '2022-09-13 08:10:03'),
(272, 1, '7.00000000', '0.00000000', '123458064.00000000', '+', 'UB8O4O4OQHUD', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:15:03', '2022-09-13 08:15:03'),
(273, 1, '7.00000000', '0.00000000', '123458071.00000000', '+', 'GN246T45JKV3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:20:10', '2022-09-13 08:20:10'),
(274, 1, '7.00000000', '0.00000000', '123458078.00000000', '+', 'QURDEG4QX2EZ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:25:02', '2022-09-13 08:25:02'),
(275, 1, '7.00000000', '0.00000000', '123458085.00000000', '+', 'WENCM8YYYKA6', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:30:03', '2022-09-13 08:30:03'),
(276, 1, '7.00000000', '0.00000000', '123458092.00000000', '+', '5VDJXBP26C8C', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:35:03', '2022-09-13 08:35:03'),
(277, 1, '7.00000000', '0.00000000', '123458099.00000000', '+', '4UPNH8ZCTKRB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:40:02', '2022-09-13 08:40:02'),
(278, 1, '7.00000000', '0.00000000', '123458106.00000000', '+', 'CD6KHD6CVBMG', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:45:03', '2022-09-13 08:45:03'),
(279, 1, '7.00000000', '0.00000000', '123458113.00000000', '+', 'CDGG1E6AMSN1', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:50:10', '2022-09-13 08:50:10'),
(280, 1, '7.00000000', '0.00000000', '123458120.00000000', '+', '8F7XAMVM5D7S', 'earn', 'Earn amount from Daily Profit', '2022-09-13 08:55:03', '2022-09-13 08:55:03'),
(281, 1, '7.00000000', '0.00000000', '123458127.00000000', '+', 'C18R1ECC1W3G', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:00:03', '2022-09-13 09:00:03'),
(282, 1, '7.00000000', '0.00000000', '123458134.00000000', '+', 'PTF2TEV2ZG2W', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:05:02', '2022-09-13 09:05:02'),
(283, 1, '7.00000000', '0.00000000', '123458141.00000000', '+', 'C8V51R3MT1FM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:10:02', '2022-09-13 09:10:02'),
(284, 1, '7.00000000', '0.00000000', '123458148.00000000', '+', 'Q2SJJK1K1UZS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:15:02', '2022-09-13 09:15:02'),
(285, 1, '7.00000000', '0.00000000', '123458155.00000000', '+', 'XNHZQOF5FXXX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:20:03', '2022-09-13 09:20:03'),
(286, 1, '7.00000000', '0.00000000', '123458162.00000000', '+', 'O38WHPGNAOAX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:25:03', '2022-09-13 09:25:03'),
(287, 1, '7.00000000', '0.00000000', '123458169.00000000', '+', 'FW1Q2HFQVZQK', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:30:02', '2022-09-13 09:30:02'),
(288, 1, '7.00000000', '0.00000000', '123458176.00000000', '+', '91BBNW1KSEGE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:35:02', '2022-09-13 09:35:02'),
(289, 1, '7.00000000', '0.00000000', '123458183.00000000', '+', '8WOG56586TTZ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:40:03', '2022-09-13 09:40:03'),
(290, 1, '7.00000000', '0.00000000', '123458190.00000000', '+', 'CAMCENRPMNXQ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:45:02', '2022-09-13 09:45:02'),
(291, 1, '7.00000000', '0.00000000', '123458197.00000000', '+', 'U83M4SXNHN3B', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:50:09', '2022-09-13 09:50:09'),
(292, 1, '7.00000000', '0.00000000', '123458204.00000000', '+', 'E4TAXCHQ5NJE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 09:55:02', '2022-09-13 09:55:02'),
(293, 1, '7.00000000', '0.00000000', '123458211.00000000', '+', '2O8VGXBBCMSU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:00:03', '2022-09-13 10:00:03'),
(294, 1, '7.00000000', '0.00000000', '123458218.00000000', '+', '7B4F25CNR516', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:05:02', '2022-09-13 10:05:02'),
(295, 1, '7.00000000', '0.00000000', '123458225.00000000', '+', 'V7K4REOZ3RUE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:10:03', '2022-09-13 10:10:03'),
(296, 1, '7.00000000', '0.00000000', '123458232.00000000', '+', 'V3388RBOA11Q', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:15:03', '2022-09-13 10:15:03'),
(297, 1, '7.00000000', '0.00000000', '123458239.00000000', '+', 'NBKUUU6GYGNB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:20:03', '2022-09-13 10:20:03'),
(298, 1, '7.00000000', '0.00000000', '123458246.00000000', '+', 'BFMZOXKQXHZ5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:25:02', '2022-09-13 10:25:02'),
(299, 1, '7.00000000', '0.00000000', '123458253.00000000', '+', 'SVFO2W4Q96TH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:30:02', '2022-09-13 10:30:02'),
(300, 1, '7.00000000', '0.00000000', '123458260.00000000', '+', '7W2GZZ8XUA95', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:35:03', '2022-09-13 10:35:03'),
(301, 1, '7.00000000', '0.00000000', '123458267.00000000', '+', 'HHMM2S1P2VAC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:40:03', '2022-09-13 10:40:03');
INSERT INTO `transactions` (`id`, `user_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `remark`, `details`, `created_at`, `updated_at`) VALUES
(302, 1, '7.00000000', '0.00000000', '123458274.00000000', '+', 'A8MFMTRKQR11', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:45:03', '2022-09-13 10:45:03'),
(303, 1, '7.00000000', '0.00000000', '123458281.00000000', '+', 'M13WBKOBH5SW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:50:04', '2022-09-13 10:50:04'),
(304, 1, '7.00000000', '0.00000000', '123458288.00000000', '+', 'KZAUNA67QD9R', 'earn', 'Earn amount from Daily Profit', '2022-09-13 10:55:03', '2022-09-13 10:55:03'),
(305, 1, '7.00000000', '0.00000000', '123458295.00000000', '+', 'S9JRZK3OH5GK', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:00:02', '2022-09-13 11:00:02'),
(306, 1, '7.00000000', '0.00000000', '123458302.00000000', '+', 'TDX547F5D757', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:05:02', '2022-09-13 11:05:02'),
(307, 1, '7.00000000', '0.00000000', '123458309.00000000', '+', 'KKVYN5PQGB2Q', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:10:03', '2022-09-13 11:10:03'),
(308, 1, '7.00000000', '0.00000000', '123458316.00000000', '+', 'SF99724DDORY', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:15:04', '2022-09-13 11:15:04'),
(309, 1, '7.00000000', '0.00000000', '123458323.00000000', '+', 'C2WPGRQHZ63G', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:20:03', '2022-09-13 11:20:03'),
(310, 1, '7.00000000', '0.00000000', '123458330.00000000', '+', 'ZVWB55KKBJOY', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:25:03', '2022-09-13 11:25:03'),
(311, 1, '7.00000000', '0.00000000', '123458337.00000000', '+', 'HXTDZ53S9THO', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:30:02', '2022-09-13 11:30:02'),
(312, 1, '7.00000000', '0.00000000', '123458344.00000000', '+', 'ERQEUTRUJMKX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:35:03', '2022-09-13 11:35:03'),
(313, 1, '7.00000000', '0.00000000', '123458351.00000000', '+', 'T2GXRHS9QF1M', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:40:03', '2022-09-13 11:40:03'),
(314, 1, '7.00000000', '0.00000000', '123458358.00000000', '+', 'E3R8WS2YR4J3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:45:04', '2022-09-13 11:45:04'),
(315, 1, '7.00000000', '0.00000000', '123458365.00000000', '+', '748K1M8EZNPM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:50:09', '2022-09-13 11:50:09'),
(316, 1, '7.00000000', '0.00000000', '123458372.00000000', '+', 'ZJ8KHG17T673', 'earn', 'Earn amount from Daily Profit', '2022-09-13 11:55:03', '2022-09-13 11:55:03'),
(317, 1, '7.00000000', '0.00000000', '123458379.00000000', '+', 'K5SSZWPKRKYR', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:00:03', '2022-09-13 12:00:03'),
(318, 1, '7.00000000', '0.00000000', '123458386.00000000', '+', 'QHPUY3R9BQWQ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:05:03', '2022-09-13 12:05:03'),
(319, 1, '7.00000000', '0.00000000', '123458393.00000000', '+', 'ANNC14MQSUPB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:10:03', '2022-09-13 12:10:03'),
(320, 1, '7.00000000', '0.00000000', '123458400.00000000', '+', '47DRS3NXQBSJ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:15:03', '2022-09-13 12:15:03'),
(321, 1, '7.00000000', '0.00000000', '123458407.00000000', '+', 'QUON8SP723Z2', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:20:04', '2022-09-13 12:20:04'),
(322, 1, '7.00000000', '0.00000000', '123458414.00000000', '+', 'NV5MV28WQVGE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:25:02', '2022-09-13 12:25:02'),
(323, 1, '7.00000000', '0.00000000', '123458421.00000000', '+', '6KUQV6G33Z5S', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:30:03', '2022-09-13 12:30:03'),
(324, 1, '7.00000000', '0.00000000', '123458428.00000000', '+', 'DUUK9M6X41RM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:35:02', '2022-09-13 12:35:02'),
(325, 1, '7.00000000', '0.00000000', '123458435.00000000', '+', 'G98YCEJJ7A5H', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:40:03', '2022-09-13 12:40:03'),
(326, 1, '7.00000000', '0.00000000', '123458442.00000000', '+', 'RZA2NMDK77GR', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:45:02', '2022-09-13 12:45:02'),
(327, 1, '7.00000000', '0.00000000', '123458449.00000000', '+', 'OW87PP6CQRF4', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:50:10', '2022-09-13 12:50:10'),
(328, 1, '7.00000000', '0.00000000', '123458456.00000000', '+', 'SRQ4FPBVG7ZR', 'earn', 'Earn amount from Daily Profit', '2022-09-13 12:55:03', '2022-09-13 12:55:03'),
(329, 1, '7.00000000', '0.00000000', '123458463.00000000', '+', '5B4BM5AG8OKU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:00:03', '2022-09-13 13:00:03'),
(330, 1, '7.00000000', '0.00000000', '123458470.00000000', '+', 'PATRUFQNJ9AQ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:05:03', '2022-09-13 13:05:03'),
(331, 1, '7.00000000', '0.00000000', '123458477.00000000', '+', 'J58RPPR9YZAU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:10:02', '2022-09-13 13:10:02'),
(332, 1, '7.00000000', '0.00000000', '123458484.00000000', '+', 'E2VRMZOXW8TJ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:15:04', '2022-09-13 13:15:04'),
(333, 1, '7.00000000', '0.00000000', '123458491.00000000', '+', 'CEX29K3SQ5AT', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:20:03', '2022-09-13 13:20:03'),
(334, 1, '7.00000000', '0.00000000', '123458498.00000000', '+', 'TA7XYVUDABSE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:25:03', '2022-09-13 13:25:03'),
(335, 1, '7.00000000', '0.00000000', '123458505.00000000', '+', 'PPUVP815Q7Z6', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:30:03', '2022-09-13 13:30:03'),
(336, 1, '7.00000000', '0.00000000', '123458512.00000000', '+', 'TG4V3871D4J7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:35:02', '2022-09-13 13:35:02'),
(337, 1, '7.00000000', '0.00000000', '123458519.00000000', '+', '6KNEZKDFER6J', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:40:03', '2022-09-13 13:40:03'),
(338, 1, '7.00000000', '0.00000000', '123458526.00000000', '+', 'XMUN6U23R16Y', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:45:02', '2022-09-13 13:45:02'),
(339, 1, '7.00000000', '0.00000000', '123458533.00000000', '+', '4WPNCVDO3US5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:50:09', '2022-09-13 13:50:09'),
(340, 1, '7.00000000', '0.00000000', '123458540.00000000', '+', '7PJOOUAHU4DH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 13:55:03', '2022-09-13 13:55:03'),
(341, 1, '7.00000000', '0.00000000', '123458547.00000000', '+', 'OR4EEAZFEB72', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:00:03', '2022-09-13 14:00:03'),
(342, 1, '7.00000000', '0.00000000', '123458554.00000000', '+', '4273XJB1SB3W', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:05:02', '2022-09-13 14:05:02'),
(343, 1, '7.00000000', '0.00000000', '123458561.00000000', '+', '9GOKM7QA69TJ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:10:02', '2022-09-13 14:10:02'),
(344, 1, '7.00000000', '0.00000000', '123458568.00000000', '+', 'PMQDQ572KPPD', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:15:03', '2022-09-13 14:15:03'),
(345, 1, '7.00000000', '0.00000000', '123458575.00000000', '+', 'ZUV8GOCJ9K5Z', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:20:03', '2022-09-13 14:20:03'),
(346, 1, '7.00000000', '0.00000000', '123458582.00000000', '+', 'G2QGF69WVBRV', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:25:03', '2022-09-13 14:25:03'),
(347, 1, '7.00000000', '0.00000000', '123458589.00000000', '+', '5GSRNCD9YMZF', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:30:03', '2022-09-13 14:30:03'),
(348, 1, '7.00000000', '0.00000000', '123458596.00000000', '+', '88H18VW6O59N', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:35:03', '2022-09-13 14:35:03'),
(349, 1, '7.00000000', '0.00000000', '123458603.00000000', '+', 'K7JWM415HP94', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:40:04', '2022-09-13 14:40:04'),
(350, 1, '7.00000000', '0.00000000', '123458610.00000000', '+', 'X44A3OPDUM9O', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:45:03', '2022-09-13 14:45:03'),
(351, 1, '7.00000000', '0.00000000', '123458617.00000000', '+', 'U2KASZ6932VU', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:50:10', '2022-09-13 14:50:10'),
(352, 1, '7.00000000', '0.00000000', '123458624.00000000', '+', 'Z3RX8GM9T4OF', 'earn', 'Earn amount from Daily Profit', '2022-09-13 14:55:03', '2022-09-13 14:55:03'),
(353, 1, '7.00000000', '0.00000000', '123458631.00000000', '+', '4NMHG826F9TB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:00:03', '2022-09-13 15:00:03'),
(354, 1, '7.00000000', '0.00000000', '123458638.00000000', '+', 'XRP5F2C8GWG6', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:05:03', '2022-09-13 15:05:03'),
(355, 1, '7.00000000', '0.00000000', '123458645.00000000', '+', '74KNGXFMP8J6', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:10:03', '2022-09-13 15:10:03'),
(356, 1, '7.00000000', '0.00000000', '123458652.00000000', '+', 'NDPKY5GET1N1', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:15:03', '2022-09-13 15:15:03'),
(357, 1, '7.00000000', '0.00000000', '123458659.00000000', '+', 'YEXKF2CQSGZ5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:20:04', '2022-09-13 15:20:04'),
(358, 1, '7.00000000', '0.00000000', '123458666.00000000', '+', 'TV2K16WJNAYZ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:25:03', '2022-09-13 15:25:03'),
(359, 1, '7.00000000', '0.00000000', '123458673.00000000', '+', '3RZ5YJEZE7TP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:30:03', '2022-09-13 15:30:03'),
(360, 1, '7.00000000', '0.00000000', '123458680.00000000', '+', 'DQYOZAP839T8', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:35:05', '2022-09-13 15:35:05'),
(361, 1, '7.00000000', '0.00000000', '123458687.00000000', '+', 'QPUWFJXTEZCR', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:40:02', '2022-09-13 15:40:02'),
(362, 1, '7.00000000', '0.00000000', '123458694.00000000', '+', 'Y3JG77ZF7N79', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:45:02', '2022-09-13 15:45:02'),
(363, 1, '7.00000000', '0.00000000', '123458701.00000000', '+', 'VD9RK7NDJZDW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:50:10', '2022-09-13 15:50:10'),
(364, 1, '7.00000000', '0.00000000', '123458708.00000000', '+', '59PBE6AODO3C', 'earn', 'Earn amount from Daily Profit', '2022-09-13 15:55:04', '2022-09-13 15:55:04'),
(365, 1, '7.00000000', '0.00000000', '123458715.00000000', '+', 'MVD27VW5Z4S7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:00:03', '2022-09-13 16:00:03'),
(366, 1, '7.00000000', '0.00000000', '123458722.00000000', '+', 'X34QJAOGTJ8W', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:05:03', '2022-09-13 16:05:03'),
(367, 1, '7.00000000', '0.00000000', '123458729.00000000', '+', 'OO6P1UM3SJWX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:10:03', '2022-09-13 16:10:03'),
(368, 1, '7.00000000', '0.00000000', '123458736.00000000', '+', 'AKM7OZGVBKT9', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:15:05', '2022-09-13 16:15:05'),
(369, 1, '7.00000000', '0.00000000', '123458743.00000000', '+', 'HHV1HR7OMR9K', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:20:02', '2022-09-13 16:20:02'),
(370, 1, '7.00000000', '0.00000000', '123458750.00000000', '+', 'U7QS8XQMFSCB', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:25:03', '2022-09-13 16:25:03'),
(371, 1, '7.00000000', '0.00000000', '123458757.00000000', '+', 'GAJ5TSX3JB8X', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:30:03', '2022-09-13 16:30:03'),
(372, 1, '7.00000000', '0.00000000', '123458764.00000000', '+', 'DOFCHBKZ24EN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:35:03', '2022-09-13 16:35:03'),
(373, 1, '7.00000000', '0.00000000', '123458771.00000000', '+', 'H742PDJQ4K7K', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:40:03', '2022-09-13 16:40:03'),
(374, 1, '7.00000000', '0.00000000', '123458778.00000000', '+', '9GD89YTMT6NQ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:45:03', '2022-09-13 16:45:03'),
(375, 1, '7.00000000', '0.00000000', '123458785.00000000', '+', '5BCC344C2N9Z', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:50:09', '2022-09-13 16:50:09'),
(376, 1, '7.00000000', '0.00000000', '123458792.00000000', '+', 'YFRM6CB2E9P3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 16:55:03', '2022-09-13 16:55:03'),
(377, 1, '7.00000000', '0.00000000', '123458799.00000000', '+', 'K5Q4N4VRU66U', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:00:03', '2022-09-13 17:00:03'),
(378, 1, '7.00000000', '0.00000000', '123458806.00000000', '+', 'ORPVVEGPK4YC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:05:03', '2022-09-13 17:05:03'),
(379, 1, '7.00000000', '0.00000000', '123458813.00000000', '+', 'WOM5VEFB4FDQ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:10:03', '2022-09-13 17:10:03'),
(380, 1, '7.00000000', '0.00000000', '123458820.00000000', '+', '4ENH6TWUHC99', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:15:03', '2022-09-13 17:15:03'),
(381, 1, '7.00000000', '0.00000000', '123458827.00000000', '+', 'OETNTB5NRCS3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:20:03', '2022-09-13 17:20:03'),
(382, 1, '7.00000000', '0.00000000', '123458834.00000000', '+', 'UAMHPOG4P8ZS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:25:03', '2022-09-13 17:25:03'),
(383, 1, '7.00000000', '0.00000000', '123458841.00000000', '+', 'G7XZD2NKV4HF', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:30:03', '2022-09-13 17:30:03'),
(384, 1, '7.00000000', '0.00000000', '123458848.00000000', '+', '1XV2XN586H59', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:35:03', '2022-09-13 17:35:03'),
(385, 1, '7.00000000', '0.00000000', '123458855.00000000', '+', 'JCR7G4SH8GFG', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:40:03', '2022-09-13 17:40:03'),
(386, 1, '7.00000000', '0.00000000', '123458862.00000000', '+', 'YXEKZ5JE19TA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:45:05', '2022-09-13 17:45:05'),
(387, 1, '7.00000000', '0.00000000', '123458869.00000000', '+', '9SEZ2E85S4NV', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:50:09', '2022-09-13 17:50:09'),
(388, 1, '7.00000000', '0.00000000', '123458876.00000000', '+', 'QVM2Q12U7JTN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 17:55:03', '2022-09-13 17:55:03'),
(389, 1, '7.00000000', '0.00000000', '123458883.00000000', '+', 'R2VJ3DOSRQU1', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:00:03', '2022-09-13 18:00:03'),
(390, 1, '7.00000000', '0.00000000', '123458890.00000000', '+', 'X15PMMG4S4ZW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:05:03', '2022-09-13 18:05:03'),
(391, 1, '7.00000000', '0.00000000', '123458897.00000000', '+', 'R23VY35BJSCX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:10:03', '2022-09-13 18:10:03'),
(392, 1, '7.00000000', '0.00000000', '123458904.00000000', '+', 'Q2QVSAUDEAFY', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:15:04', '2022-09-13 18:15:04'),
(393, 1, '7.00000000', '0.00000000', '123458911.00000000', '+', '5HJWRMGUQX6V', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:20:03', '2022-09-13 18:20:03'),
(394, 1, '7.00000000', '0.00000000', '123458918.00000000', '+', 'OOR9JTVRB5VO', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:25:10', '2022-09-13 18:25:10'),
(395, 1, '7.00000000', '0.00000000', '123458925.00000000', '+', '39RS31NUSU2C', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:30:03', '2022-09-13 18:30:03'),
(396, 1, '7.00000000', '0.00000000', '123458932.00000000', '+', 'AA6FCK2T8KUS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:35:03', '2022-09-13 18:35:03'),
(397, 1, '7.00000000', '0.00000000', '123458939.00000000', '+', '58U8MWZ9VN48', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:40:02', '2022-09-13 18:40:02'),
(398, 1, '7.00000000', '0.00000000', '123458946.00000000', '+', 'GX6RGO17FGCM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:45:03', '2022-09-13 18:45:03'),
(399, 1, '7.00000000', '0.00000000', '123458953.00000000', '+', 'VU5W7SCO2FSH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:50:08', '2022-09-13 18:50:08'),
(400, 1, '7.00000000', '0.00000000', '123458960.00000000', '+', 'VXTS6UVR7VKR', 'earn', 'Earn amount from Daily Profit', '2022-09-13 18:55:03', '2022-09-13 18:55:03'),
(401, 1, '7.00000000', '0.00000000', '123458967.00000000', '+', 'GZ2T171RD6AS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:00:04', '2022-09-13 19:00:04'),
(402, 1, '7.00000000', '0.00000000', '123458974.00000000', '+', 'ZZP1KYE7STC6', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:05:03', '2022-09-13 19:05:03'),
(403, 1, '7.00000000', '0.00000000', '123458981.00000000', '+', 'WFB5828SPEMK', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:10:03', '2022-09-13 19:10:03'),
(404, 1, '7.00000000', '0.00000000', '123458988.00000000', '+', 'WM1E6BF3QPSS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:15:03', '2022-09-13 19:15:03'),
(405, 1, '7.00000000', '0.00000000', '123458995.00000000', '+', 'JWUTWYUEKU91', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:20:03', '2022-09-13 19:20:03'),
(406, 1, '7.00000000', '0.00000000', '123459002.00000000', '+', 'JT15SS37DAYP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:25:02', '2022-09-13 19:25:02'),
(407, 1, '7.00000000', '0.00000000', '123459009.00000000', '+', 'FE8FHW2C3RPH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:30:03', '2022-09-13 19:30:03'),
(408, 1, '7.00000000', '0.00000000', '123459016.00000000', '+', 'UGVPAEH8R9UH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:35:03', '2022-09-13 19:35:03'),
(409, 1, '7.00000000', '0.00000000', '123459023.00000000', '+', 'BZPTU8PSMASA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:40:04', '2022-09-13 19:40:04'),
(410, 1, '7.00000000', '0.00000000', '123459030.00000000', '+', '4PW426AHTWG7', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:45:12', '2022-09-13 19:45:12'),
(411, 1, '7.00000000', '0.00000000', '123459037.00000000', '+', 'W9G7Z8FAZDN3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:50:10', '2022-09-13 19:50:10'),
(412, 1, '7.00000000', '0.00000000', '123459044.00000000', '+', 'EV2XSGZHAKDC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 19:55:03', '2022-09-13 19:55:03'),
(413, 1, '7.00000000', '0.00000000', '123459051.00000000', '+', 'DK421X2DTTX5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:00:03', '2022-09-13 20:00:03'),
(414, 1, '7.00000000', '0.00000000', '123459058.00000000', '+', 'VSKO15ZM9TV8', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:05:03', '2022-09-13 20:05:03'),
(415, 1, '7.00000000', '0.00000000', '123459065.00000000', '+', 'GBP91GFQSUZ5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:10:03', '2022-09-13 20:10:03'),
(416, 1, '7.00000000', '0.00000000', '123459072.00000000', '+', '11ER73YSGRNO', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:15:02', '2022-09-13 20:15:02'),
(417, 1, '7.00000000', '0.00000000', '123459079.00000000', '+', 'FF3GW47D3FKX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:20:02', '2022-09-13 20:20:02'),
(418, 1, '7.00000000', '0.00000000', '123459086.00000000', '+', 'FSEEU4XCF5Q3', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:25:03', '2022-09-13 20:25:03'),
(419, 1, '7.00000000', '0.00000000', '123459093.00000000', '+', 'HMXCQ8ZQRUE6', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:30:04', '2022-09-13 20:30:04'),
(420, 1, '7.00000000', '0.00000000', '123459100.00000000', '+', 'AJY1439RGS4H', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:35:03', '2022-09-13 20:35:03'),
(421, 1, '7.00000000', '0.00000000', '123459107.00000000', '+', 'D21FHU7YNYNS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:40:03', '2022-09-13 20:40:03'),
(422, 1, '7.00000000', '0.00000000', '123459114.00000000', '+', '1J27JV545SFE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:45:02', '2022-09-13 20:45:02'),
(423, 1, '7.00000000', '0.00000000', '123459121.00000000', '+', '56UYNAC1T9BM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:50:09', '2022-09-13 20:50:09'),
(424, 1, '7.00000000', '0.00000000', '123459128.00000000', '+', '83VQ153GX4Q5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 20:55:03', '2022-09-13 20:55:03'),
(425, 1, '7.00000000', '0.00000000', '123459135.00000000', '+', 'HBCQ19XOAGV2', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:00:02', '2022-09-13 21:00:02'),
(426, 1, '7.00000000', '0.00000000', '123459142.00000000', '+', '95MMJP74STKE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:05:03', '2022-09-13 21:05:03'),
(427, 1, '7.00000000', '0.00000000', '123459149.00000000', '+', 'CSTEKQ6R4TVM', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:10:02', '2022-09-13 21:10:02'),
(428, 1, '7.00000000', '0.00000000', '123459156.00000000', '+', 'JFVHU74678G5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:15:02', '2022-09-13 21:15:02'),
(429, 1, '7.00000000', '0.00000000', '123459163.00000000', '+', 'XNSFN4J4N2ZP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:20:03', '2022-09-13 21:20:03'),
(430, 1, '7.00000000', '0.00000000', '123459170.00000000', '+', 'NWZUM89A16AE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:25:02', '2022-09-13 21:25:02'),
(431, 1, '7.00000000', '0.00000000', '123459177.00000000', '+', '82AH43XJOND5', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:30:03', '2022-09-13 21:30:03'),
(432, 1, '7.00000000', '0.00000000', '123459184.00000000', '+', 'AYN7HG36OTHX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:35:03', '2022-09-13 21:35:03'),
(433, 1, '7.00000000', '0.00000000', '123459191.00000000', '+', '5WAAFP6G4P21', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:40:04', '2022-09-13 21:40:04'),
(434, 1, '7.00000000', '0.00000000', '123459198.00000000', '+', 'JTDQE6CBTZEQ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:45:03', '2022-09-13 21:45:03'),
(435, 1, '7.00000000', '0.00000000', '123459205.00000000', '+', '7DT58NGE7838', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:50:10', '2022-09-13 21:50:10'),
(436, 1, '7.00000000', '0.00000000', '123459212.00000000', '+', 'XAN3JHXRKPYP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 21:55:02', '2022-09-13 21:55:02'),
(437, 1, '7.00000000', '0.00000000', '123459219.00000000', '+', 'ZWWG2QH7994C', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:00:04', '2022-09-13 22:00:04'),
(438, 1, '7.00000000', '0.00000000', '123459226.00000000', '+', 'N3OWWQ6V53ZD', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:05:03', '2022-09-13 22:05:03'),
(439, 1, '7.00000000', '0.00000000', '123459233.00000000', '+', 'NP3OTX1OT7AJ', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:10:03', '2022-09-13 22:10:03'),
(440, 1, '7.00000000', '0.00000000', '123459240.00000000', '+', 'D8TAS7SEMNTW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:15:02', '2022-09-13 22:15:02'),
(441, 1, '7.00000000', '0.00000000', '123459247.00000000', '+', '1Z6R51RD6J5Q', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:20:02', '2022-09-13 22:20:02'),
(442, 1, '7.00000000', '0.00000000', '123459254.00000000', '+', 'HGTVRUVW7TWX', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:25:03', '2022-09-13 22:25:03'),
(443, 1, '7.00000000', '0.00000000', '123459261.00000000', '+', 'K8XGAO6D4E9R', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:30:04', '2022-09-13 22:30:04'),
(444, 1, '7.00000000', '0.00000000', '123459268.00000000', '+', '8NP4PE71J1MH', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:35:03', '2022-09-13 22:35:03'),
(445, 1, '7.00000000', '0.00000000', '123459275.00000000', '+', 'T6F1Y1DDVJFP', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:40:03', '2022-09-13 22:40:03'),
(446, 1, '7.00000000', '0.00000000', '123459282.00000000', '+', 'ZBYG797GTWQ9', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:45:03', '2022-09-13 22:45:03'),
(447, 1, '7.00000000', '0.00000000', '123459289.00000000', '+', 'QB9V6TFRCKXC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:50:09', '2022-09-13 22:50:09'),
(448, 1, '7.00000000', '0.00000000', '123459296.00000000', '+', 'DE6F7STQ388E', 'earn', 'Earn amount from Daily Profit', '2022-09-13 22:55:04', '2022-09-13 22:55:04'),
(449, 1, '7.00000000', '0.00000000', '123459303.00000000', '+', '1AY73D2QBQPA', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:00:03', '2022-09-13 23:00:03'),
(450, 1, '7.00000000', '0.00000000', '123459310.00000000', '+', 'BBJAGEUVNXOK', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:05:02', '2022-09-13 23:05:02'),
(451, 1, '7.00000000', '0.00000000', '123459317.00000000', '+', 'TYSJM1AQCT77', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:10:03', '2022-09-13 23:10:03'),
(452, 1, '7.00000000', '0.00000000', '123459324.00000000', '+', 'OAKR9X5SJND1', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:15:02', '2022-09-13 23:15:02'),
(453, 1, '7.00000000', '0.00000000', '123459331.00000000', '+', 'QG4JOQANUG6Z', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:20:03', '2022-09-13 23:20:03'),
(454, 1, '7.00000000', '0.00000000', '123459338.00000000', '+', 'QAOCGTJO6PGW', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:25:02', '2022-09-13 23:25:02'),
(455, 1, '7.00000000', '0.00000000', '123459345.00000000', '+', 'JFRU3WRSFYGE', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:30:05', '2022-09-13 23:30:05'),
(456, 1, '7.00000000', '0.00000000', '123459352.00000000', '+', 'DJZGXWHGQF83', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:35:03', '2022-09-13 23:35:03'),
(457, 1, '7.00000000', '0.00000000', '123459359.00000000', '+', 'H3U6VY6C78XC', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:40:02', '2022-09-13 23:40:02'),
(458, 1, '7.00000000', '0.00000000', '123459366.00000000', '+', 'MDU2RGCFWMBN', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:45:03', '2022-09-13 23:45:03'),
(459, 1, '7.00000000', '0.00000000', '123459373.00000000', '+', 'CWTJT5UZ2FBG', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:50:11', '2022-09-13 23:50:11'),
(460, 1, '7.00000000', '0.00000000', '123459380.00000000', '+', 'D26358J67TBS', 'earn', 'Earn amount from Daily Profit', '2022-09-13 23:55:02', '2022-09-13 23:55:02'),
(461, 1, '7.00000000', '0.00000000', '123459387.00000000', '+', '67RTF1VCPOZK', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:00:03', '2022-09-14 00:00:03'),
(462, 1, '7.00000000', '0.00000000', '123459394.00000000', '+', 'PFTATDWEWC2B', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:05:03', '2022-09-14 00:05:03'),
(463, 1, '7.00000000', '0.00000000', '123459401.00000000', '+', 'WCWQCQFZ6EF6', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:10:05', '2022-09-14 00:10:05'),
(464, 1, '7.00000000', '0.00000000', '123459408.00000000', '+', 'MRMWYP44E2XP', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:15:02', '2022-09-14 00:15:02'),
(465, 1, '7.00000000', '0.00000000', '123459415.00000000', '+', '3TCEEKQJ4CEE', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:20:03', '2022-09-14 00:20:03'),
(466, 1, '7.00000000', '0.00000000', '123459422.00000000', '+', 'CZ8WO9KUPUSX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:25:04', '2022-09-14 00:25:04'),
(467, 1, '7.00000000', '0.00000000', '123459429.00000000', '+', '5P2NY113QT2T', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:30:03', '2022-09-14 00:30:03'),
(468, 1, '7.00000000', '0.00000000', '123459436.00000000', '+', 'PCFEKY9TQMC7', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:35:02', '2022-09-14 00:35:02'),
(469, 1, '7.00000000', '0.00000000', '123459443.00000000', '+', '4WX5SBZ4C79S', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:40:03', '2022-09-14 00:40:03'),
(470, 1, '7.00000000', '0.00000000', '123459450.00000000', '+', 'TV93MGTFSY7H', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:45:02', '2022-09-14 00:45:02'),
(471, 1, '7.00000000', '0.00000000', '123459457.00000000', '+', 'N553B5QZMR2V', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:50:09', '2022-09-14 00:50:09'),
(472, 1, '7.00000000', '0.00000000', '123459464.00000000', '+', 'D641CO9VN6OT', 'earn', 'Earn amount from Daily Profit', '2022-09-14 00:55:03', '2022-09-14 00:55:03'),
(473, 1, '7.00000000', '0.00000000', '123459471.00000000', '+', 'R5G5TXCU82K1', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:00:03', '2022-09-14 01:00:03'),
(474, 1, '7.00000000', '0.00000000', '123459478.00000000', '+', 'FFO3JTZASN4M', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:05:03', '2022-09-14 01:05:03'),
(475, 1, '7.00000000', '0.00000000', '123459485.00000000', '+', 'E87DRZ5TH4CC', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:10:03', '2022-09-14 01:10:03'),
(476, 1, '7.00000000', '0.00000000', '123459492.00000000', '+', 'ZWSJCW387984', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:15:03', '2022-09-14 01:15:03'),
(477, 1, '7.00000000', '0.00000000', '123459499.00000000', '+', 'CQJ7T572D665', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:20:03', '2022-09-14 01:20:03'),
(478, 1, '7.00000000', '0.00000000', '123459506.00000000', '+', 'HCU5O6KY1K3S', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:25:03', '2022-09-14 01:25:03'),
(479, 1, '7.00000000', '0.00000000', '123459513.00000000', '+', 'K4ERTZQFKOUU', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:30:03', '2022-09-14 01:30:03'),
(480, 1, '7.00000000', '0.00000000', '123459520.00000000', '+', '8YOSGZ7K8HMB', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:35:03', '2022-09-14 01:35:03'),
(481, 1, '7.00000000', '0.00000000', '123459527.00000000', '+', 'EYMZON1R4HWX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:40:03', '2022-09-14 01:40:03'),
(482, 1, '7.00000000', '0.00000000', '123459534.00000000', '+', 'NCBA6Q8Q8PH8', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:45:09', '2022-09-14 01:45:09'),
(483, 1, '7.00000000', '0.00000000', '123459541.00000000', '+', 'TJSBMWDKZGBE', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:50:09', '2022-09-14 01:50:09'),
(484, 1, '7.00000000', '0.00000000', '123459548.00000000', '+', 'NXPGKB5COJ9W', 'earn', 'Earn amount from Daily Profit', '2022-09-14 01:55:03', '2022-09-14 01:55:03'),
(485, 1, '7.00000000', '0.00000000', '123459555.00000000', '+', '3YVZ2KROGJTE', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:00:02', '2022-09-14 02:00:02'),
(486, 1, '7.00000000', '0.00000000', '123459562.00000000', '+', 'FRQ89USWWQEG', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:05:02', '2022-09-14 02:05:02'),
(487, 1, '7.00000000', '0.00000000', '123459569.00000000', '+', 'U3QWJNSUKSCV', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:10:03', '2022-09-14 02:10:03'),
(488, 1, '7.00000000', '0.00000000', '123459576.00000000', '+', 'F1PTWHM2JT8A', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:15:03', '2022-09-14 02:15:03'),
(489, 1, '7.00000000', '0.00000000', '123459583.00000000', '+', '4XV9SG7YT1SH', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:20:02', '2022-09-14 02:20:02'),
(490, 1, '7.00000000', '0.00000000', '123459590.00000000', '+', 'J7Q6ZOO76QP4', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:25:03', '2022-09-14 02:25:03'),
(491, 1, '7.00000000', '0.00000000', '123459597.00000000', '+', 'UX8JUTV96P8T', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:30:04', '2022-09-14 02:30:04'),
(492, 1, '7.00000000', '0.00000000', '123459604.00000000', '+', 'OH6B6UB46277', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:35:03', '2022-09-14 02:35:03'),
(493, 1, '7.00000000', '0.00000000', '123459611.00000000', '+', 'FTK1HR286GH5', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:40:03', '2022-09-14 02:40:03'),
(494, 1, '7.00000000', '0.00000000', '123459618.00000000', '+', 'T38BY5JP84T7', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:45:03', '2022-09-14 02:45:03'),
(495, 1, '7.00000000', '0.00000000', '123459625.00000000', '+', 'RMXHXG4JDWQX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:50:10', '2022-09-14 02:50:10'),
(496, 1, '7.00000000', '0.00000000', '123459632.00000000', '+', 'QCWCHAKHFFKM', 'earn', 'Earn amount from Daily Profit', '2022-09-14 02:55:02', '2022-09-14 02:55:02'),
(497, 1, '7.00000000', '0.00000000', '123459639.00000000', '+', 'AH1TKQ15Z5UM', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:00:03', '2022-09-14 03:00:03'),
(498, 1, '7.00000000', '0.00000000', '123459646.00000000', '+', '7BXK8G2XUHXQ', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:05:03', '2022-09-14 03:05:03'),
(499, 1, '7.00000000', '0.00000000', '123459653.00000000', '+', 'KHYJ5UP8BH88', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:10:03', '2022-09-14 03:10:03'),
(500, 1, '7.00000000', '0.00000000', '123459660.00000000', '+', 'AJOHMAZ3277O', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:15:03', '2022-09-14 03:15:03'),
(501, 1, '7.00000000', '0.00000000', '123459667.00000000', '+', '9MNET3G6Q5TB', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:20:03', '2022-09-14 03:20:03'),
(502, 1, '7.00000000', '0.00000000', '123459674.00000000', '+', '3HXDBENZTM4Z', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:25:03', '2022-09-14 03:25:03'),
(503, 1, '7.00000000', '0.00000000', '123459681.00000000', '+', 'RJH1Z3VKPGG8', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:30:03', '2022-09-14 03:30:03'),
(504, 1, '7.00000000', '0.00000000', '123459688.00000000', '+', '6DZBUT9ZF5DP', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:35:04', '2022-09-14 03:35:04'),
(505, 1, '7.00000000', '0.00000000', '123459695.00000000', '+', 'PP22G2RRKDNS', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:40:03', '2022-09-14 03:40:03'),
(506, 1, '7.00000000', '0.00000000', '123459702.00000000', '+', 'FAJXHZVKDEA4', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:45:03', '2022-09-14 03:45:03'),
(507, 1, '7.00000000', '0.00000000', '123459709.00000000', '+', 'YR6H1R1JW6JX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:50:06', '2022-09-14 03:50:06'),
(508, 1, '7.00000000', '0.00000000', '123459716.00000000', '+', '77TQHE6CTO1E', 'earn', 'Earn amount from Daily Profit', '2022-09-14 03:55:03', '2022-09-14 03:55:03'),
(509, 1, '7.00000000', '0.00000000', '123459723.00000000', '+', 'XGNXNUMXR85N', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:00:04', '2022-09-14 04:00:04'),
(510, 1, '7.00000000', '0.00000000', '123459730.00000000', '+', 'TJKNVQ5RHBY6', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:05:02', '2022-09-14 04:05:02'),
(511, 1, '7.00000000', '0.00000000', '123459737.00000000', '+', 'Q4MTODSBFY9R', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:10:03', '2022-09-14 04:10:03'),
(512, 1, '7.00000000', '0.00000000', '123459744.00000000', '+', 'OX7MRVVDR4FH', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:15:03', '2022-09-14 04:15:03'),
(513, 1, '7.00000000', '0.00000000', '123459751.00000000', '+', 'Y4ZY9KN3KBVM', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:20:03', '2022-09-14 04:20:03'),
(514, 1, '7.00000000', '0.00000000', '123459758.00000000', '+', 'DPUUY3Y9NNGG', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:25:03', '2022-09-14 04:25:03'),
(515, 1, '7.00000000', '0.00000000', '123459765.00000000', '+', 'CFYZ6PD3AQ7U', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:30:03', '2022-09-14 04:30:03'),
(516, 1, '7.00000000', '0.00000000', '123459772.00000000', '+', '2C4T6JBVCXHT', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:35:03', '2022-09-14 04:35:03'),
(517, 1, '7.00000000', '0.00000000', '123459779.00000000', '+', 'SZAKP4OOT7JR', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:40:03', '2022-09-14 04:40:03'),
(518, 1, '7.00000000', '0.00000000', '123459786.00000000', '+', '9F72FN92TJSX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:45:03', '2022-09-14 04:45:03'),
(519, 1, '7.00000000', '0.00000000', '123459793.00000000', '+', 'OYC45PZSC2C9', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:50:04', '2022-09-14 04:50:04'),
(520, 1, '7.00000000', '0.00000000', '123459800.00000000', '+', 'YRGS42Z228CD', 'earn', 'Earn amount from Daily Profit', '2022-09-14 04:55:03', '2022-09-14 04:55:03'),
(521, 1, '7.00000000', '0.00000000', '123459807.00000000', '+', '7KYEB331Z732', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:00:03', '2022-09-14 05:00:03'),
(522, 1, '7.00000000', '0.00000000', '123459814.00000000', '+', '2SDHBCQJ3FX3', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:05:03', '2022-09-14 05:05:03'),
(523, 1, '7.00000000', '0.00000000', '123459821.00000000', '+', 'MS6TE8P8PP4M', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:10:02', '2022-09-14 05:10:02'),
(524, 1, '7.00000000', '0.00000000', '123459828.00000000', '+', 'TF2JDTTQ5ODA', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:15:04', '2022-09-14 05:15:04'),
(525, 1, '7.00000000', '0.00000000', '123459835.00000000', '+', 'EXQX5N2B7PUT', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:20:03', '2022-09-14 05:20:03'),
(526, 1, '7.00000000', '0.00000000', '123459842.00000000', '+', 'RM8E4G8UDB7W', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:25:02', '2022-09-14 05:25:02'),
(527, 1, '7.00000000', '0.00000000', '123459849.00000000', '+', 'U45CX59GNUK6', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:30:03', '2022-09-14 05:30:03'),
(528, 1, '7.00000000', '0.00000000', '123459856.00000000', '+', '1GENA9WYJYY4', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:35:02', '2022-09-14 05:35:02'),
(529, 1, '7.00000000', '0.00000000', '123459863.00000000', '+', '2DD289VR6YT3', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:40:03', '2022-09-14 05:40:03'),
(530, 1, '7.00000000', '0.00000000', '123459870.00000000', '+', 'QMJ4BYEJ9VBH', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:45:02', '2022-09-14 05:45:02'),
(531, 1, '7.00000000', '0.00000000', '123459877.00000000', '+', 'TQDSZMQ5S64A', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:50:09', '2022-09-14 05:50:09'),
(532, 1, '7.00000000', '0.00000000', '123459884.00000000', '+', 'GBSJB24WMFFH', 'earn', 'Earn amount from Daily Profit', '2022-09-14 05:55:02', '2022-09-14 05:55:02'),
(533, 1, '7.00000000', '0.00000000', '123459891.00000000', '+', 'O5XH8X7VNAXS', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:00:03', '2022-09-14 06:00:03'),
(534, 1, '7.00000000', '0.00000000', '123459898.00000000', '+', 'BY3WCGZT7K5Y', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:05:02', '2022-09-14 06:05:02'),
(535, 1, '7.00000000', '0.00000000', '123459905.00000000', '+', 'NGATJOS9J393', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:10:03', '2022-09-14 06:10:03'),
(536, 1, '7.00000000', '0.00000000', '123459912.00000000', '+', 'EODN3D182QYW', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:15:03', '2022-09-14 06:15:03'),
(537, 1, '7.00000000', '0.00000000', '123459919.00000000', '+', 'CJZJ6R59DF9Y', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:20:04', '2022-09-14 06:20:04'),
(538, 1, '7.00000000', '0.00000000', '123459926.00000000', '+', 'CSNSZM9Y4B2E', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:25:03', '2022-09-14 06:25:03'),
(539, 1, '7.00000000', '0.00000000', '123459933.00000000', '+', 'O7AGT6G1SCEY', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:30:03', '2022-09-14 06:30:03'),
(540, 1, '7.00000000', '0.00000000', '123459940.00000000', '+', 'OKU4UGM6F5Q1', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:35:03', '2022-09-14 06:35:03'),
(541, 1, '7.00000000', '0.00000000', '123459947.00000000', '+', 'YOTPGHHRYGHY', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:40:03', '2022-09-14 06:40:03'),
(542, 1, '7.00000000', '0.00000000', '123459954.00000000', '+', 'UGKORZ69ODB4', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:45:03', '2022-09-14 06:45:03'),
(543, 1, '7.00000000', '0.00000000', '123459961.00000000', '+', 'QKSY9TTBN8QP', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:50:10', '2022-09-14 06:50:10'),
(544, 1, '7.00000000', '0.00000000', '123459968.00000000', '+', 'A2GGJKRNFN3V', 'earn', 'Earn amount from Daily Profit', '2022-09-14 06:55:03', '2022-09-14 06:55:03'),
(545, 1, '7.00000000', '0.00000000', '123459975.00000000', '+', 'FZXP66TMXO62', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:00:05', '2022-09-14 07:00:05'),
(546, 1, '7.00000000', '0.00000000', '123459982.00000000', '+', 'UNE4DZMREB1E', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:05:03', '2022-09-14 07:05:03'),
(547, 1, '7.00000000', '0.00000000', '123459989.00000000', '+', 'XX9RCPM9DYXR', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:10:03', '2022-09-14 07:10:03'),
(548, 1, '7.00000000', '0.00000000', '123459996.00000000', '+', 'F42VGNN2Z6EW', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:15:02', '2022-09-14 07:15:02'),
(549, 1, '7.00000000', '0.00000000', '123460003.00000000', '+', 'XETXR387FMFT', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:20:03', '2022-09-14 07:20:03'),
(550, 1, '7.00000000', '0.00000000', '123460010.00000000', '+', 'NH3ASPKONPW1', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:25:03', '2022-09-14 07:25:03'),
(551, 1, '7.00000000', '0.00000000', '123460017.00000000', '+', 'RDY12R3KK8GG', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:30:03', '2022-09-14 07:30:03'),
(552, 1, '7.00000000', '0.00000000', '123460024.00000000', '+', '93TMATSX4K4A', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:35:03', '2022-09-14 07:35:03'),
(553, 1, '7.00000000', '0.00000000', '123460031.00000000', '+', 'YZC342YPE3AV', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:40:03', '2022-09-14 07:40:03'),
(554, 1, '7.00000000', '0.00000000', '123460038.00000000', '+', '9XO5VGGPTZY3', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:45:03', '2022-09-14 07:45:03'),
(555, 1, '7.00000000', '0.00000000', '123460045.00000000', '+', 'PP13S4CPDSQG', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:50:09', '2022-09-14 07:50:09'),
(556, 1, '7.00000000', '0.00000000', '123460052.00000000', '+', 'F6RZJBVUYDAM', 'earn', 'Earn amount from Daily Profit', '2022-09-14 07:55:02', '2022-09-14 07:55:02'),
(557, 1, '7.00000000', '0.00000000', '123460059.00000000', '+', 'SJOABFTZFCE2', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:00:03', '2022-09-14 08:00:03'),
(558, 1, '7.00000000', '0.00000000', '123460066.00000000', '+', 'RRTHCOHT81XX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:05:04', '2022-09-14 08:05:04'),
(559, 1, '7.00000000', '0.00000000', '123460073.00000000', '+', 'WR1HV9GU2GGN', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:10:03', '2022-09-14 08:10:03'),
(560, 1, '7.00000000', '0.00000000', '123460080.00000000', '+', 'AOR22SB3V5H3', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:15:03', '2022-09-14 08:15:03'),
(561, 1, '7.00000000', '0.00000000', '123460087.00000000', '+', 'X393U6NJV59K', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:20:04', '2022-09-14 08:20:04'),
(562, 1, '7.00000000', '0.00000000', '123460094.00000000', '+', 'ENHUKS416V4R', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:25:03', '2022-09-14 08:25:03'),
(563, 1, '7.00000000', '0.00000000', '123460101.00000000', '+', 'M3RKB8RU4KP2', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:30:05', '2022-09-14 08:30:05'),
(564, 1, '7.00000000', '0.00000000', '123460108.00000000', '+', 'DYA5DBQS8DYP', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:35:04', '2022-09-14 08:35:04'),
(565, 1, '7.00000000', '0.00000000', '123460115.00000000', '+', 'CRZWAH5YZ56S', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:40:03', '2022-09-14 08:40:03'),
(566, 1, '7.00000000', '0.00000000', '123460122.00000000', '+', 'O2C5NRGRRCWA', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:45:04', '2022-09-14 08:45:04'),
(567, 1, '7.00000000', '0.00000000', '123460129.00000000', '+', 'DE36JDSZGDBD', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:50:09', '2022-09-14 08:50:09'),
(568, 1, '7.00000000', '0.00000000', '123460136.00000000', '+', 'MV9ES8TFO4JR', 'earn', 'Earn amount from Daily Profit', '2022-09-14 08:55:04', '2022-09-14 08:55:04'),
(569, 1, '7.00000000', '0.00000000', '123460143.00000000', '+', 'NSUQXGANCCS2', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:00:04', '2022-09-14 09:00:04'),
(570, 1, '7.00000000', '0.00000000', '123460150.00000000', '+', '1TFMJWVPDAEU', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:05:03', '2022-09-14 09:05:03'),
(571, 1, '7.00000000', '0.00000000', '123460157.00000000', '+', 'CPXM94PNNTP5', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:10:02', '2022-09-14 09:10:02'),
(572, 1, '7.00000000', '0.00000000', '123460164.00000000', '+', 'UYZVAN8JVYSH', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:15:03', '2022-09-14 09:15:03'),
(573, 1, '7.00000000', '0.00000000', '123460171.00000000', '+', 'NBWHTJC2JB39', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:20:04', '2022-09-14 09:20:04'),
(574, 1, '7.00000000', '0.00000000', '123460178.00000000', '+', 'CFVYPJP3SU89', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:25:03', '2022-09-14 09:25:03'),
(575, 1, '7.00000000', '0.00000000', '123460185.00000000', '+', 'UAXHE9KNMFCB', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:30:03', '2022-09-14 09:30:03'),
(576, 1, '7.00000000', '0.00000000', '123460192.00000000', '+', '4HJPCFCW61QS', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:35:03', '2022-09-14 09:35:03'),
(577, 1, '7.00000000', '0.00000000', '123460199.00000000', '+', 'FPHJG7YHQQS5', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:40:03', '2022-09-14 09:40:03'),
(578, 1, '7.00000000', '0.00000000', '123460206.00000000', '+', 'VFF5Q46E6USB', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:45:03', '2022-09-14 09:45:03'),
(579, 1, '7.00000000', '0.00000000', '123460213.00000000', '+', 'ZDENOXDWW2JG', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:50:09', '2022-09-14 09:50:09'),
(580, 1, '7.00000000', '0.00000000', '123460220.00000000', '+', 'GG5U8TCY37RX', 'earn', 'Earn amount from Daily Profit', '2022-09-14 09:55:03', '2022-09-14 09:55:03'),
(581, 1, '7.00000000', '0.00000000', '123460227.00000000', '+', 'JESZW9Z8AFV5', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:00:03', '2022-09-14 10:00:03'),
(582, 1, '7.00000000', '0.00000000', '123460234.00000000', '+', 'MFMED1UMY9NP', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:05:03', '2022-09-14 10:05:03'),
(583, 1, '7.00000000', '0.00000000', '123460241.00000000', '+', 'OOXZMZ2MQ58D', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:10:03', '2022-09-14 10:10:03'),
(584, 1, '7.00000000', '0.00000000', '123460248.00000000', '+', 'KKBJJTGQ5Q66', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:15:03', '2022-09-14 10:15:03'),
(585, 1, '7.00000000', '0.00000000', '123460255.00000000', '+', 'YXY75PND9K7H', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:20:03', '2022-09-14 10:20:03'),
(586, 1, '7.00000000', '0.00000000', '123460262.00000000', '+', '1AGWJWMQN9FT', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:25:03', '2022-09-14 10:25:03'),
(587, 1, '7.00000000', '0.00000000', '123460269.00000000', '+', '95UGMSXEKE43', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:30:03', '2022-09-14 10:30:03'),
(588, 1, '7.00000000', '0.00000000', '123460276.00000000', '+', '2O5NG771U72U', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:35:03', '2022-09-14 10:35:03'),
(589, 1, '7.00000000', '0.00000000', '123460283.00000000', '+', 'JWRS4GW3ZGE3', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:40:03', '2022-09-14 10:40:03'),
(590, 1, '7.00000000', '0.00000000', '123460290.00000000', '+', '8F3TU85Q9UZB', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:45:04', '2022-09-14 10:45:04'),
(591, 1, '7.00000000', '0.00000000', '123460297.00000000', '+', '9C1BOCZ1M8BB', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:50:09', '2022-09-14 10:50:09'),
(592, 1, '7.00000000', '0.00000000', '123460304.00000000', '+', '92BJ64SW6CNA', 'earn', 'Earn amount from Daily Profit', '2022-09-14 10:55:03', '2022-09-14 10:55:03'),
(593, 1, '7.00000000', '0.00000000', '123460311.00000000', '+', 'HJJDEB25P4MH', 'earn', 'Earn amount from Daily Profit', '2022-09-14 11:00:02', '2022-09-14 11:00:02'),
(594, 1, '7.00000000', '0.00000000', '123460318.00000000', '+', '1D68V1BU8WU5', 'earn', 'Earn amount from Daily Profit', '2022-09-14 11:05:03', '2022-09-14 11:05:03'),
(595, 1, '7.00000000', '0.00000000', '123460325.00000000', '+', '7YO2JSBHPYF1', 'earn', 'Earn amount from Daily Profit', '2022-09-14 11:10:04', '2022-09-14 11:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int DEFAULT NULL,
  `plan_id` int NOT NULL DEFAULT '0',
  `dpl` int NOT NULL DEFAULT '0',
  `balance` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(91) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(91) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `mobile`, `ref_by`, `plan_id`, `dpl`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad', 'Uzair', 'uzair1', 'uzair@gmail.com', '1242325235', NULL, 2, 7, '123460325.00000000', '$2y$10$f7kZyPC4yZhDdRDeplx4HuZLjKo1iGMSzt5dnHGzd6WUJxe5gbtzS', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-06 19:16:13', '2022-09-14 11:10:04'),
(2, 'Arslan', 'Ali', 'User12', 'hiraijaz4433@gmail.om', '03206736291', NULL, 0, 0, '0.00000000', '$2y$10$yU.pgumHlyp6ETYjeVCi6e46bqYPT2WBVdYCife9lcsK9YNN3tiw6', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-06 19:53:28', '2022-09-06 19:53:28'),
(3, 'Test', 'Test', 'Hadiyakhan', 'hani34584@gmail.com', '3580658006', NULL, 0, 0, '0.00000000', '$2y$10$J.YWLqrD/SILMHucyeW92uvIWEf1Z18Mzg4nwogWVOMW6JvZ2kmm6', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-06 20:19:37', '2022-09-06 20:19:37'),
(4, 'Shahzaib', 'khan', 'Niazi786', 'zaibikhanniazi6674@gmail.com', '+923061756674', NULL, 0, 0, '0.00000000', '$2y$10$TKaVIwBITfs28xiOyVPZO.kmwgGwm/hhaQWarELyrMsAgtk0f0gsa', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-07 00:40:48', '2022-09-07 00:40:48'),
(5, 'Taimoor', 'Hussain', 'tabassam', 'taimoor11280@gmail.com', '03405980685', 4, 0, 0, '0.00000000', '$2y$10$qvI.1Y2u1HD1QAH9kwuAt.QbI506nVaOOTSw1qyDZaC0pqRwA0dZO', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-07 01:34:22', '2022-09-07 01:34:22'),
(6, 'ahmed', 'ali', 'arslan123', 'aassoftwaresolution@gmail.com', '03008987448', NULL, 0, 0, '4000.00000000', '$2y$10$ApM4alH0ZmUi/.AKgRdSTOpGWKAvTSn0pAviaOdb8qQS2tiH0Sihe', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-07 08:08:21', '2022-09-07 14:12:41'),
(7, 'raz123', 'raz123', 'raz123', 'raz123@gmail.com', '(407) 807-0427', NULL, 0, 0, '0.00000000', '$2y$10$bYHyqQFIjqUPf7hvVFYoR.YTUM5p0r5aKdWqGFke.JlWIebS4KdDS', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-09 20:13:37', '2022-09-09 20:13:37'),
(8, 'Ahmer', 'Ahmer', 'Ahmer123', 'ahner@gmail.com', '3023674128', NULL, 0, 0, '0.00000000', '$2y$10$CRRXMoDUl/Ew6G59R0DEceCKndNnchVjehiUpFvKmqhPP7p2kLjuS', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-10 03:21:13', '2022-09-10 03:21:13'),
(9, 'Abc', 'xyz', 'abcxyz', 'name@gmail.com', '000', NULL, 0, 0, '0.00000000', '$2y$10$BarlTSThQNs/ZsYneT5VyuC.qtppPNCm04S2K1mhb//cvoRxaPvTa', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-10 11:36:47', '2022-09-10 11:36:47'),
(10, 'hani', 'hani', 'hani1234', 'ummeh5216@gmail.com', '03132008375', NULL, 0, 0, '0.00000000', '$2y$10$ekdRIv.lptLDdkpvGg/DkuwuCr50LiMwiAmEGAnbsp4/V50xBLm16', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-10 13:50:18', '2022-09-10 13:50:18'),
(11, 'hamna', 'hamna', 'hamna123', 'test@gmail.com', '987427444989', 10, 0, 0, '100.00000000', '$2y$10$9nWTUdBGqolCAvFRYY0xgOiHOjUlo3/FudhBdLv4JNT0xJ3jXSrrm', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-10 13:53:12', '2022-09-11 23:34:04'),
(12, 'Ijaz', 'Ahmad', 'Khan770', 'ia0694222@gmail.com', '+923400470031', NULL, 0, 0, '500.00000000', '$2y$10$lDDhBFAO9DUH3HXzE5q8q./Rp97ZjPBqJpJY2l2qP3sVrv2jA.zIe', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-10 14:32:40', '2022-09-12 02:30:53'),
(13, 'zain', 'khalid', 'zain148', 'zainchoudary148@gmail.com', '03060079800', NULL, 0, 0, '0.00000000', '$2y$10$WB38DgE0UMxeAmHNMMX3ZekZeh4DZj/G1p75bhsKvnzOI/iJWQh56', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-09-12 12:00:26', '2022-09-12 12:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-06 19:16:13', '2022-09-06 19:16:13'),
(2, 2, '110.38.162.67', 'Lahore - - Pakistan - PK ', 'Handheld Browser', 'Android', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-06 19:53:28', '2022-09-06 19:53:28'),
(3, 2, '110.38.162.67', 'Lahore - - Pakistan - PK ', 'Chrome', 'Windows 10', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-06 19:56:43', '2022-09-06 19:56:43'),
(4, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-06 20:02:31', '2022-09-06 20:02:31'),
(5, 2, '110.38.162.67', 'Lahore - - Pakistan - PK ', 'Chrome', 'Windows 10', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-06 20:07:13', '2022-09-06 20:07:13'),
(6, 2, '110.38.162.67', 'Lahore - - Pakistan - PK ', 'Chrome', 'Windows 10', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-06 20:09:02', '2022-09-06 20:09:02'),
(7, 3, '103.26.83.38', 'Karachi - - Pakistan - PK ', 'Handheld Browser', 'Android', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-06 20:19:37', '2022-09-06 20:19:37'),
(8, 4, '119.160.58.44', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-07 00:40:48', '2022-09-07 00:40:48'),
(9, 5, '89.187.188.196', ' - - United States - US ', 'Handheld Browser', 'Android', '-97.822', '37.751', 'United States', 'US', '2022-09-07 01:34:22', '2022-09-07 01:34:22'),
(10, 4, '119.160.59.222', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-07 04:21:13', '2022-09-07 04:21:13'),
(11, 6, '110.38.158.1', ' - -  -  ', 'Chrome', 'Windows 10', NULL, NULL, NULL, NULL, '2022-09-07 08:08:21', '2022-09-07 08:08:21'),
(12, 6, '110.38.158.1', ' - -  -  ', 'Chrome', 'Windows 10', NULL, NULL, NULL, NULL, '2022-09-07 08:11:37', '2022-09-07 08:11:37'),
(13, 6, '110.38.158.138', 'Lahore - - Pakistan - PK ', 'Chrome', 'Windows 10', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-07 13:00:11', '2022-09-07 13:00:11'),
(14, 4, '119.160.58.119', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-08 08:22:38', '2022-09-08 08:22:38'),
(15, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-09 19:42:10', '2022-09-09 19:42:10'),
(16, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-09 20:06:15', '2022-09-09 20:06:15'),
(17, 7, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-09 20:13:37', '2022-09-09 20:13:37'),
(18, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-09 20:20:29', '2022-09-09 20:20:29'),
(19, 8, '110.38.165.126', 'Lahore - - Pakistan - PK ', 'Handheld Browser', 'Android', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-10 03:21:13', '2022-09-10 03:21:13'),
(20, 8, '110.38.165.126', 'Lahore - - Pakistan - PK ', 'Handheld Browser', 'Android', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-10 03:25:25', '2022-09-10 03:25:25'),
(21, 1, '61.5.158.98', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 07:46:55', '2022-09-10 07:46:55'),
(22, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 07:53:26', '2022-09-10 07:53:26'),
(23, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 09:44:47', '2022-09-10 09:44:47'),
(24, 8, '110.38.163.111', 'Lahore - - Pakistan - PK ', 'Handheld Browser', 'Android', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-10 11:20:29', '2022-09-10 11:20:29'),
(25, 9, '119.157.71.41', 'Karachi - - Pakistan - PK ', 'Chrome', 'Windows 10', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 11:36:47', '2022-09-10 11:36:47'),
(26, 9, '119.157.71.41', 'Karachi - - Pakistan - PK ', 'Chrome', 'Windows 10', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 11:38:13', '2022-09-10 11:38:13'),
(27, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 12:57:21', '2022-09-10 12:57:21'),
(28, 10, '103.26.83.43', 'Karachi - - Pakistan - PK ', 'Chrome', 'Windows 10', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 13:50:18', '2022-09-10 13:50:18'),
(29, 11, '103.26.83.44', 'Karachi - - Pakistan - PK ', 'Chrome', 'Windows 10', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-10 13:53:12', '2022-09-10 13:53:12'),
(30, 12, '119.160.59.209', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-10 14:32:41', '2022-09-10 14:32:41'),
(31, 12, '119.160.59.225', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-11 03:07:19', '2022-09-11 03:07:19'),
(32, 12, '23.82.194.137', 'Seattle - - United States - US ', 'Chrome', 'Windows 10', '-122.3701', '47.6674', 'United States', 'US', '2022-09-11 08:35:44', '2022-09-11 08:35:44'),
(33, 12, '119.160.59.102', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-11 10:14:02', '2022-09-11 10:14:02'),
(34, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Windows 10', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-11 15:39:21', '2022-09-11 15:39:21'),
(35, 8, '119.160.58.94', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-11 15:48:00', '2022-09-11 15:48:00'),
(36, 1, '103.7.60.160', 'Karachi - - Pakistan - PK ', 'Chrome', 'Linux', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-11 21:22:24', '2022-09-11 21:22:24'),
(37, 11, '103.26.83.44', 'Karachi - - Pakistan - PK ', 'Handheld Browser', 'Android', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-11 23:28:00', '2022-09-11 23:28:00'),
(38, 12, '23.82.194.136', 'Seattle - - United States - US ', 'Chrome', 'Windows 10', '-122.3701', '47.6674', 'United States', 'US', '2022-09-12 02:00:54', '2022-09-12 02:00:54'),
(39, 12, '119.160.59.39', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-12 02:29:08', '2022-09-12 02:29:08'),
(40, 12, '119.160.59.39', ' - - Pakistan - PK ', 'Chrome', 'Windows 10', '70', '30', 'Pakistan', 'PK', '2022-09-12 03:12:44', '2022-09-12 03:12:44'),
(41, 1, '110.93.240.11', 'Lahore - - Pakistan - PK ', 'Chrome', 'Linux', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-12 08:30:58', '2022-09-12 08:30:58'),
(42, 1, '110.93.240.11', 'Lahore - - Pakistan - PK ', 'Chrome', 'Linux', '74.3686', '31.4888', 'Pakistan', 'PK', '2022-09-12 10:52:36', '2022-09-12 10:52:36'),
(43, 12, '119.160.59.39', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-12 11:15:05', '2022-09-12 11:15:05'),
(44, 12, '119.160.59.66', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-12 11:31:42', '2022-09-12 11:31:42'),
(45, 12, '119.160.59.66', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-12 11:44:20', '2022-09-12 11:44:20'),
(46, 13, '39.40.226.153', 'Multan - - Pakistan - PK ', 'Chrome', 'Windows 10', '71.5189', '30.1599', 'Pakistan', 'PK', '2022-09-12 12:00:26', '2022-09-12 12:00:26'),
(47, 10, '103.26.83.45', 'Karachi - - Pakistan - PK ', 'Chrome', 'Windows 10', '67.0657', '24.9207', 'Pakistan', 'PK', '2022-09-12 18:33:04', '2022-09-12 18:33:04'),
(48, 12, '119.160.59.165', ' - - Pakistan - PK ', 'Handheld Browser', 'Android', '70', '30', 'Pakistan', 'PK', '2022-09-13 04:11:04', '2022-09-13 04:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int UNSIGNED NOT NULL,
  `method_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `after_charge` decimal(18,8) NOT NULL,
  `withdraw_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `method_id`, `user_id`, `amount`, `currency`, `rate`, `charge`, `trx`, `final_amount`, `after_charge`, `withdraw_information`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1.00000000', 'PKR', '1.00000000', '1.11000000', 'NUZPZF8DDDHK', '-0.11000000', '-0.11000000', NULL, 0, NULL, '2022-09-12 10:56:39', '2022-09-12 10:56:39'),
(2, 1, 1, '1.00000000', 'PKR', '1.00000000', '1.11000000', '91YUFYWT3TOX', '-0.11000000', '-0.11000000', NULL, 2, NULL, '2022-09-12 10:57:03', '2022-09-12 10:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(18,8) DEFAULT NULL,
  `max_limit` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `delay` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(18,8) DEFAULT NULL,
  `rate` decimal(18,8) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `image`, `min_limit`, `max_limit`, `delay`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `user_data`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test method', '631f0feb775571662980075.png', '1.00000000', '1.00000000', '1', '1.00000000', '1.00000000', '11.00', 'PKR', '[]', '<br>', 1, '2022-09-12 10:54:35', '2022-09-12 10:56:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_logs`
--
ALTER TABLE `commission_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontends_key_index` (`data_keys`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptcs`
--
ALTER TABLE `ptcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_views`
--
ALTER TABLE `ptc_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission_logs`
--
ALTER TABLE `commission_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ptcs`
--
ALTER TABLE `ptcs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptc_views`
--
ALTER TABLE `ptc_views`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
