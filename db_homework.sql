-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220513.fb9d9feb74
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2022 at 02:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5
create database `db_homework`;
use `db_homework`;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_homework`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cid` int(11) NOT NULL CHECK (`Cid` > 0 and `Cid` <= 999),
  `Cname` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cid`, `Cname`) VALUES
(1, '甜點'),
(2, '飲品'),
(3, '義大利麵'),
(4, '吃到飽'),
(5, '中式美食');

-- --------------------------------------------------------

--
-- Table structure for table `human`
--

CREATE TABLE `human` (
  `Hid` decimal(3,0) NOT NULL CHECK (`Hid` > 0 and `Hid` <= 9999),
  `name` varchar(15) NOT NULL,
  `Hphone` char(10) DEFAULT NULL CHECK (`Hphone` like '09%'),
  `gmail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `human`
--

INSERT INTO `human` (`Hid`, `name`, `Hphone`, `gmail`) VALUES
('1', 'jason', '0912345678', 'jason111@gmail.com'),
('2', 'sandy', '0945284678', 'sandy222@gmail.com'),
('3', 'melody', '0912365415', 'melody333@gmail.com'),
('4', 'cathy', '0941132684', 'cathy444@gmail.com'),
('5', 'john', '0915600467', 'jason555@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `Lid` int(11) NOT NULL,
  `Lrest_id` int(11) NOT NULL CHECK (`Lrest_id` > 0 and `Lrest_id` <= 9999),
  `score` int(11) NOT NULL CHECK (`score` > 0 and `score` <= 100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`Lid`, `Lrest_id`, `score`) VALUES
(1, 452, 90),
(2, 894, 85),
(3, 135, 95),
(4, 265, 80),
(5, 452, 85),
(7, 452, 70),
(8, 452, 85),
(9, 452, 90),
(10, 894, 65),
(11, 894, 90),
(12, 894, 75),
(13, 894, 70),
(15, 135, 90),
(16, 265, 86),
(17, 265, 88),
(18, 265, 89),
(19, 135, 93),
(20, 452, 90);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Mid` int(11) NOT NULL CHECK (`Mid` > 0 and `Mid` <= 999),
  `Rest_id` int(11) NOT NULL CHECK (`Rest_id` > 0 and `Rest_id` <= 9999),
  `Mname` varchar(30) NOT NULL,
  `price` int(11) NOT NULL CHECK (`price` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Mid`, `Rest_id`, `Mname`, `price`) VALUES
(1, 452, '榛果脆餅', 200),
(2, 25, '牛肉湯麵', 80),
(3, 265, '彩虹莓果生起司蛋糕', 190),
(4, 265, ' 瑪德蓮-檸檬', 90),
(5, 265, '鹹派-野菇時蔬', 21),
(9, 265, '榛果巧克力戚風蛋糕', 250),
(10, 5, '奶油培根起司小貝殼麵  ', 245),
(11, 4, '巴薩醋燻鴨胸奶油義大利麵', 280),
(12, 4, '拿波里淡菜扁舌麵', 390),
(13, 4, 'Carbonara 起司培根麵', 360),
(14, 4, '煙花女麵', 320),
(15, 4, '羅馬起司麵', 260),
(16, 5, '南瓜鮮蝦雞肉小貝殼麵', 270),
(17, 5, '小惡魔奶油雞肉義大利麵', 270),
(18, 5, '香蒜辣椒海鮮義大利麵', 310),
(19, 5, '煙花女海鮮墨魚義大利麵', 310),
(20, 452, '提拉米蘇', 120),
(23, 452, '草莓千層', 130),
(26, 452, '巧克力千層', 130),
(27, 2, '香蒜奶油雞肉麵', 249),
(28, 2, '檸檬奶油燻鮭麵', 309),
(29, 2, '辣奶油蘆筍鮮蝦麵', 289),
(30, 2, '茄汁綜合海鮮麵', 339),
(31, 2, '青醬蛤蜊麵', 249),
(32, 6, '香蒜白酒蛤蜊細麵', 140),
(33, 6, '香辣海鮮墨魚麵', 180),
(34, 6, '泰式風味義大利麵', 150),
(35, 6, '辣味蒜香透抽細麵', 145),
(36, 6, '古典義大利肉醬麵', 130),
(45, 12, '海鮮義大利麵', 320),
(46, 459, '巧克力布朗尼組合包', 480),
(49, 1, '伯爵紅茶蛋糕', 100),
(50, 3, '漁夫海鮮義大利麵', 220),
(51, 3, '經典香蒜辣椒細扁麵', 160),
(52, 3, '辣味蒜香鮮蝦義大利麵', 200),
(53, 3, '南瓜起司義大利麵', 180),
(54, 3, '奶油煙燻鮭魚義大利麵', 220),
(55, 7, '蒜片辣椒麵', 140),
(56, 7, '蒜頭小魚乾辣椒麵', 160),
(57, 7, '泰式酸辣海鮮麵', 210),
(58, 7, '蒜味清炒鮮蔬麵', 170),
(59, 7, '白酒蛤蠣麵', 180),
(84, 894, '起司蛋糕', 80),
(85, 894, '藍莓生乳酪塔', 150),
(86, 894, '伯爵蒙布', 160),
(96, 135, '鹽漬櫻花玫瑰塔', 60),
(98, 65, '千層蛋糕', 120),
(99, 135, '法式檸檬塔', 50),
(215, 265, '抹茶戚風', 110),
(445, 12, '清炒蛤蠣義大利麵', 280),
(466, 452, 'MISS PINK', 190),
(489, 56, '午餐吃到飽', 1210),
(555, 452, '蘋果香頌', 105),
(644, 894, '橙花&白葡萄', 180),
(762, 452, 'BLACK CHERRY', 200),
(778, 894, '芒果 & 烤乳酪', 190),
(812, 894, 'Rose & 水蜜桃', 190),
(856, 894, '宇治抹茶塔', 150),
(919, 135, '香草芋頭乳酪', 65),
(955, 452, '金桔雲朵', 190),
(958, 459, '咖啡布朗尼', 420),
(999, 265, '榛果巧克力戚風蛋糕', 250);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Rid` int(11) NOT NULL CHECK (`Rid` > 0 and `Rid` <= 9999),
  `Human_id` decimal(3,0) NOT NULL,
  `Rname` varchar(30) NOT NULL,
  `Rphone` varchar(11) DEFAULT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Rid`, `Human_id`, `Rname`, `Rphone`, `open`, `close`, `address`, `city`) VALUES
(1, '4', 'dobuhouse', '02-27811119', '11:30:00', '22:30:00', '台北市大安區敦化南路一段233巷9號', '台北'),
(2, '1', '薄多義', '02-77378837', '11:00:00', '22:00:00', '台北市信義區松壽路12號5 樓', '台北'),
(3, '5', '寶島曼波義大利麵', '02-25184619', '11:30:00', '20:30:00', '台北市中山區合江街71巷14號', '台北'),
(4, '1', 'sola_pasta', '02-27753645', '11:30:00', '22:00:00', '台北市大安區安和路一段29-1號', '台北'),
(5, '4', '蘿絲瑪莉義麵坊', '02-25219822', '11:30:00', '20:30:00', '台北市中山區南京西路12巷13弄9號', '台北'),
(6, '2', '綠薄荷麵食坊', '02-29330811', '11:00:00', '21:00:00', '台北市文山區景興路274之2號', '台北'),
(7, '3', '創義麵', '02-27411559', '11:00:00', '22:00:00', '台北市大安區敦化南路一段160巷62號', '台北'),
(12, '3', '貳樓', '02-29537533', '10:00:00', '22:00:00', '新北市板橋區遠東路62之6號1樓', '新北'),
(25, '1', '十三姨牛肉麵', '037-234588', '11:00:00', '20:00:00', '苗栗縣公館鄉五谷村197號', '苗栗'),
(56, '5', '漢來海港', '07-4128068', '11:00:00', '21:30:00', '台中市西區台灣大道二段459號16樓', '台中'),
(65, '2', 'need_cake', '03-4655750', '11:00:00', '19:30:00', '桃園市中壢區龍和一街198號', '桃園'),
(135, '3', 'KAKA_Pâtisserie', '04-23108213', '12:00:00', '19:00:00', '台中市西區華美西街一段15-1號', '台中'),
(265, '5', 'Toutou', '04-23108102', '13:00:00', '20:00:00', '台中市西區精誠二街5號', '台中'),
(452, '2', 'CJSJ', '04-23016996', '12:00:00', '18:30:00', '台中市西區向上路一段79巷72號', '台中'),
(459, '2', '堯平', '0970-697800', '12:00:00', '18:00:00', '台南市北區自強街117號', '台南'),
(894, '5', '花甜囍室', '04-23262393', '11:00:00', '19:00:00', '台中市北區健行路958號', '台中');

-- --------------------------------------------------------

--
-- Table structure for table `rest_cat`
--

CREATE TABLE `rest_cat` (
  `Cat_id` int(11) NOT NULL CHECK (`Cat_id` > 0 and `Cat_id` <= 999),
  `Res_id` int(11) NOT NULL CHECK (`Res_id` > 0 and `Res_id` <= 9999)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rest_cat`
--

INSERT INTO `rest_cat` (`Cat_id`, `Res_id`) VALUES
(1, 65),
(1, 135),
(1, 265),
(1, 452),
(1, 459),
(1, 894),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 12),
(4, 56),
(5, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `human`
--
ALTER TABLE `human`
  ADD PRIMARY KEY (`Hid`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`Lid`),
  ADD KEY `Lrest_id` (`Lrest_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Mid`,`Rest_id`),
  ADD KEY `Rest_id` (`Rest_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Rid`),
  ADD KEY `Human_id` (`Human_id`);

--
-- Indexes for table `rest_cat`
--
ALTER TABLE `rest_cat`
  ADD PRIMARY KEY (`Cat_id`,`Res_id`),
  ADD KEY `Res_id` (`Res_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `level`
--
ALTER TABLE `level`
  ADD CONSTRAINT `level_ibfk_1` FOREIGN KEY (`Lrest_id`) REFERENCES `restaurant` (`Rid`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Rest_id`) REFERENCES `restaurant` (`Rid`);

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`Human_id`) REFERENCES `human` (`Hid`);

--
-- Constraints for table `rest_cat`
--
ALTER TABLE `rest_cat`
  ADD CONSTRAINT `rest_cat_ibfk_1` FOREIGN KEY (`Res_id`) REFERENCES `restaurant` (`Rid`),
  ADD CONSTRAINT `rest_cat_ibfk_2` FOREIGN KEY (`Cat_id`) REFERENCES `category` (`Cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



