-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 5 朁E15 日 12:49
-- サーバのバージョン： 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workbookshop`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `order_desc`
--

CREATE TABLE `order_desc` (
  `po_id` int(11) NOT NULL,
  `p_id` char(10) NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `hist_p_name` varchar(255) NOT NULL,
  `hist_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `order_desc`
--

INSERT INTO `order_desc` (`po_id`, `p_id`, `quantity`, `hist_p_name`, `hist_price`) VALUES
(1, 'PB00000001', 200, '黒ボールペン', 100),
(2, 'PB00000002', 300, '赤ボールペン', 100),
(3, 'DE00000001', 20, '電卓黒', 600),
(4, 'TO00000001', 10, 'トナー黒', 1000),
(5, 'TO00000002', 10, 'トナー赤', 1000),
(6, 'TU00000001', 2, '机大', 15000),
(7, 'IS00000001', 3, '椅子黒', 10000),
(8, 'PB00000001', 100, '黒ボールペン', 100),
(9, 'PB00000002', 150, '赤ボールペン', 100),
(10, 'DE00000001', 10, '電卓黒', 600),
(11, 'TO00000001', 5, 'トナー黒', 1000),
(12, 'TO00000002', 5, 'トナー赤', 1000),
(13, 'PB00000001', 1, '黒ボールペン', 100),
(14, 'PB00000002', 50, '赤ボールペン', 100),
(15, 'DE00000001', 50, '電卓黒', 600),
(16, 'TO00000001', 5, 'トナー黒', 1000),
(17, 'TO00000002', 5, 'トナー赤', 1000),
(18, 'PB00000001', 100, '黒ボールペン', 100),
(19, 'PB00000002', 100, '赤ボールペン', 100),
(20, 'DE00000001', 10, '電卓黒', 600),
(22, 'BR00000001', 3, '本棚大', 50000),
(22, 'BR00000002', 4, '本棚中', 40000),
(22, 'BR00000003', 4, '本棚小', 30000),
(23, 'BR00000001', 3, '本棚大', 50000),
(23, 'BR00000002', 3, '本棚中', 40000),
(23, 'BR00000003', 2, '本棚小', 30000),
(23, 'CA00000001', 2, 'キャビネット大', 50000),
(24, 'BR00000001', 3, '本棚大', 50000),
(24, 'BR00000002', 3, '本棚中', 40000),
(24, 'BR00000003', 2, '本棚小', 30000),
(25, 'BR00000001', 4, '本棚大', 50000),
(25, 'BR00000002', 3, '本棚中', 40000),
(25, 'CA00000003', 2, 'キャビネット小', 30000),
(26, 'BR00000001', 4, '本棚大', 50000),
(26, 'BR00000002', 4, '本棚中', 40000),
(26, 'BR00000003', 3, '本棚小', 30000),
(27, 'BR00000001', 3, '本棚大', 50000),
(27, 'BR00000002', 3, '本棚中', 40000),
(27, 'BR00000003', 2, '本棚小', 30000),
(28, 'BR00000001', 2, '本棚大', 50000),
(28, 'BR00000002', 2, '本棚中', 40000),
(28, 'BR00000003', 2, '本棚小', 30000),
(29, 'BR00000001', 4, '本棚大', 50000),
(29, 'BR00000002', 4, '本棚中', 40000),
(29, 'BR00000003', 3, '本棚小', 30000),
(29, 'CA00000002', 2, 'キャビネット中', 40000),
(30, 'BR00000001', 4, '本棚大', 50000),
(30, 'CA00000001', 3, 'キャビネット大', 50000),
(30, 'DE00000001', 3, '電卓黒', 600),
(31, 'BR00000001', 4, '本棚大', 50000),
(31, 'BR00000002', 4, '本棚中', 40000),
(31, 'BR00000003', 3, '本棚小', 30000),
(31, 'CA00000003', 2, 'キャビネット小', 30000),
(32, 'BR00000001', 2, '本棚大', 50000),
(32, 'BR00000002', 2, '本棚中', 40000),
(33, 'BR00000001', 4, '本棚大', 50000),
(33, 'BR00000002', 2, '本棚中', 40000),
(34, 'BR00000001', 4, '本棚大', 50000),
(34, 'DE00000002', 4, '電卓赤', 600),
(34, 'DE00000003', 4, '電卓青', 600);

-- --------------------------------------------------------

--
-- テーブルの構造 `order_main`
--

CREATE TABLE `order_main` (
  `po_id` int(11) NOT NULL,
  `user_id` char(7) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `order_main`
--

INSERT INTO `order_main` (`po_id`, `user_id`, `order_date`, `delivery_date`) VALUES
(1, 'A200405', '2011-02-01', '2011-02-07'),
(2, 'B200401', '2011-03-02', '2011-03-05'),
(3, 'B200402', '2011-03-15', '2011-03-18'),
(4, 'B200403', '2011-04-15', '2011-04-20'),
(5, 'B200404', '2011-06-19', '2011-06-30'),
(6, 'A200501', '2011-08-05', '2011-08-15'),
(7, 'A200501', '2011-08-05', '2011-08-15'),
(8, 'A200502', '2011-08-24', '2011-09-01'),
(9, 'A200503', '2011-10-25', '2011-11-01'),
(10, 'B200405', '2011-12-04', '2011-12-13'),
(11, 'A200501', '2012-01-15', '2012-01-19'),
(12, 'A200506', '2012-02-14', '2012-02-24'),
(13, 'B200501', '2012-03-02', '2012-03-05'),
(14, 'B200502', '2012-04-05', '2012-04-16'),
(15, 'B200503', '2012-05-21', '2012-05-30'),
(16, 'B200504', '2012-06-04', '2012-06-12'),
(17, 'B200501', '2012-12-01', '2012-12-08'),
(18, 'B200502', '2012-12-14', '2012-12-18'),
(19, 'B200503', '2012-12-22', NULL),
(20, 'B200504', '2012-12-25', NULL),
(22, 'A200401', '2019-05-02', NULL),
(23, 'A200401', '2019-05-02', NULL),
(24, 'A200401', '2019-05-02', NULL),
(25, 'A200401', '2019-05-02', NULL),
(26, 'A200401', '2019-05-02', NULL),
(27, 'A200401', '2019-05-03', NULL),
(28, 'A200401', '2019-05-03', NULL),
(29, 'A200401', '2019-05-03', NULL),
(30, 'A200401', '2019-05-03', NULL),
(31, 'A200401', '2019-05-03', NULL),
(32, 'A200401', '2019-05-07', NULL),
(33, 'A200401', '2019-05-08', NULL),
(34, 'A200401', '2019-05-09', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `product`
--

CREATE TABLE `product` (
  `p_id` char(10) NOT NULL DEFAULT '',
  `p_name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `price`) VALUES
('BR00000001', '本棚大', 50000),
('BR00000002', '本棚中', 40000),
('BR00000003', '本棚小', 30000),
('CA00000001', 'キャビネット大', 50000),
('CA00000002', 'キャビネット中', 40000),
('CA00000003', 'キャビネット小', 30000),
('DE00000001', '電卓黒', 600),
('DE00000002', '電卓赤', 600),
('DE00000003', '電卓青', 600),
('DE00000004', '電卓黄', 600),
('DE00000005', '電卓緑', 600),
('IN00000001', 'インク黒', 600),
('IN00000002', 'インク赤', 600),
('IN00000003', 'インク黄', 600),
('IN00000004', 'インク青', 600),
('IS00000001', '椅子黒', 10000),
('IS00000002', '椅子赤', 10000),
('IS00000003', '椅子青', 10000),
('IS00000004', '椅子黄', 10000),
('IS00000005', '椅子緑', 10000),
('MA00000001', 'マウスパッド', 1500),
('PB00000001', '黒ボールペン', 100),
('PB00000002', '赤ボールペン', 100),
('PB00000003', '青ボールペン', 100),
('PB00000004', '緑ボールペン', 100),
('TO00000001', 'トナー黒', 1000),
('TO00000002', 'トナー赤', 1000),
('TO00000003', 'トナー黄', 1000),
('TO00000004', 'トナー青', 1000),
('TU00000001', '机大', 15000),
('TU00000002', '机中', 15000),
('TU00000003', '机小', 15000),
('WB00000001', 'ホワイトボード大', 30000),
('WB00000002', 'ホワイトボード中', 20000),
('WB00000003', 'ホワイトボード小', 10000);

-- --------------------------------------------------------

--
-- テーブルの構造 `usr`
--

CREATE TABLE `usr` (
  `user_id` char(7) NOT NULL,
  `password` varchar(20) NOT NULL,
  `l_name` varchar(20) DEFAULT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `l_name_kana` varchar(100) DEFAULT NULL,
  `f_name_kana` varchar(100) DEFAULT NULL,
  `prefecture` varchar(15) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `o_address` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_flg` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `usr`
--

INSERT INTO `usr` (`user_id`, `password`, `l_name`, `f_name`, `l_name_kana`, `f_name_kana`, `prefecture`, `city`, `o_address`, `tel`, `email`, `created_date`, `updated_date`, `deleted_flg`) VALUES
('A200401', 'pass200401', '井上', '一郎', 'イノウエ', 'イチロウ', '千葉県', '東千葉市北町', '2-4-1', '040-111-0001', 'inoue@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200402', 'pass200402', '上原', '幸一', 'ウエハラ', 'コウイチ', '神奈川県', '神奈川市南町', '1-5-2', '040-222-0002', 'uehara@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200403', 'pass200403', '江本', '聡', 'エモト', 'サトシ', '茨城県', '茨城市西町', '2-1-12', '040-333-0003', 'emoto@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200404', 'pass200404', '小野', '雄二', 'オノ', 'ユウジ', '東京都', '東京市南町', '3-2-6', '040-111-0004', 'ono@examples.com', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200405', 'pass200405', '河合', '泰治', 'カワイ', 'ヤスハル', '神奈川県', '神奈川市北町', '4-2-12', '040-222-0005', 'kawai@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200501', 'pass200501', '山田', '太郎', 'ヤマダ', 'タロウ', '東京都', '東京市西町', '0-0-0', '040-111-0031', 'taro_yama@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200502', 'pass200502', '木下', '一樹', 'キノシタ', 'カズキ', '茨城県', '茨城市東町', '5-1-10', '040-333-0006', 'kino@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200503', 'pass200503', '久保田', '守', 'クボタ', 'マモル', '千葉県', '東千葉市南町', '2-1-21', '040-111-0007', 'kubota@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200504', 'pass200504', '児玉', '毅', 'コダマ', 'ツヨシ', '埼玉県', '西埼玉市東町', '3-4-11', '040-444-0008', 'kodama@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200505', 'pass200505', '坂口', '駿', 'サカグチ', 'シュン', '栃木県', '北栃木市西町', '6-2-4', '040-555-0009', 'saka@examples.com', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('A200506', 'pass200506', '井上', '一郎', 'イノウエ', 'イチロウ', '静岡県', '南静岡市花町', '4-2-1', '040-666-0010', 'shimi@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200401', 'pass200401', '矢口', '亜由美', 'ヤグチ', 'アユミ', '千葉県', '東千葉市南町', '3-4-6', '040-111-0011', 'yaguchi@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200402', 'pass200402', '有木', '茉莉', 'アリキ', 'マリ', '神奈川県', '神奈川市北町', '1-4-5', '040-222-0012', 'yuki@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200403', 'pass200403', '吉岡', '遥', 'ヨシオカ', 'ハルカ', '茨城県', '茨城市東町', '7-2-1', '040-333-0013', 'yoshi@examples.com', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200404', 'pass200404', '和田', '修子', 'ワダ', 'シュウコ', '東京都', '東京市北町', '6-1-11', '040-111-0014', 'wada@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200405', 'pass200405', '松本', '博美', 'マツモト', 'ヒロミ', '神奈川県', '神奈川市南町', '3-4-21', '040-222-0015', 'matsu@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200501', 'pass200501', '南', '沙恵', 'ミナミ', 'サエ', '茨城県', '茨城市西町', '3-3-2', '040-333-0016', 'minami@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200502', 'pass200502', '村井', '佐知子', 'ムライ', 'サチコ', '千葉県', '東千葉市北町', '4-1-13', '040-111-0017', 'murai@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200503', 'pass200503', '森本', '絵里', 'モリモト', 'エリ', '埼玉県', '西埼玉市西町', '2-1-4', '040-444-0018', 'morimo@examples.com', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200504', 'pass200504', '西島', '文子', 'ニシジマ', 'フミコ', '栃木県', '北栃木市東町', '2-5-7', '040-555-0019', 'nishi@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('B200505', 'pass200505', '根岸', '裕子', 'ネギシ', 'ユウコ', '静岡県', '南静岡市寺町', '3-4-8', '040-666-0020', 'negi@wings.msn.to', '2019-04-25 16:00:16', '2019-04-25 16:00:16', 0),
('C058623', '1234567ssss', '久永', '哲也', 'ヒサナガ', 'テツヤ', '東京都', '世田谷区上北沢', '5-20-1-104', '0333296780', 'hisatetsu@gmail.com', '2019-05-08 19:57:41', '2019-05-08 19:57:41', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_main`
--
ALTER TABLE `order_main`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `usr`
--
ALTER TABLE `usr`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
