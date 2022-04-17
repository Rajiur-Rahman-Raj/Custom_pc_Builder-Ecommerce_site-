-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2021 at 01:26 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devcnbou_custom`
--

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `user_id`, `sale_id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(11, '4', '34', 'AMD Ryzen 5 2600 3.4GHz-3.9GHz 6 Core 19MB Cache AM4 Socket Processor', '1', '12000', '2019-12-21 03:24:39', NULL),
(12, '4', '34', 'MSI B450M PRO-M2 V2 DDR4 2nd Gen AMD AM4 Socket Mainboard', '1', '7400', '2019-12-21 03:24:39', NULL),
(13, '4', '34', 'Team Vulcan Z 4GB DDR4 2666 MHz Gaming Ram', '1', '2300', '2019-12-21 03:24:39', NULL),
(14, '4', '34', 'Adata SU 650 240 GB Solid State Drive', '1', '3300', '2019-12-21 03:24:39', NULL),
(15, '4', '34', 'Sapphire Pulse Radeon RX 580 8GB Graphics Card', '1', '18999', '2019-12-21 03:24:39', NULL),
(16, '4', '34', 'Corsair Carbide Series SPEC-04 Mid-Tower Black-Yellow (Acrylic Side Window) Gaming Case', '1', '4000', '2019-12-21 03:24:39', NULL),
(17, '4', '34', 'CORSAIR VS-550 Power Supply', '1', '4400', '2019-12-21 03:24:39', NULL),
(25, '4', '36', 'Adata SU 650 240 GB Solid State Drive', '1', '3300', '2019-12-21 10:28:08', NULL),
(26, '4', '37', 'AMD Ryzen 3 3200G 3.6GHz-4.0GHz 4 Core AM4 Socket Processor With Vega 8 Graphics', '1', '8700', '2019-12-21 10:30:48', NULL),
(27, '4', '37', 'Gigabyte B450M DS3H AM4 Socket AMD Mainboard', '1', '6800', '2019-12-21 10:30:49', NULL),
(28, '4', '37', 'Team Vulcan Z 4GB DDR4 2666 MHz Gaming Ram', '2', '4600', '2019-12-21 10:30:49', NULL),
(29, '4', '37', 'Adata SU 650 240 GB Solid State Drive', '1', '3300', '2019-12-21 10:30:49', NULL),
(30, '4', '37', 'MaxGreen G563BL Window ATX Casing', '1', '2700', '2019-12-21 10:30:49', NULL),
(31, '4', '37', 'AOC I2281FWH 21.5 Inch Ultra Slim, Full HD, WLED IPS Monitor', '1', '10200', '2019-12-21 10:30:49', NULL),
(32, '4', '37', 'Creative SBS A255 Speaker', '1', '2200', '2019-12-21 10:30:50', NULL),
(33, '4', '38', 'Intel 9th Gen Coffee Lake Core i5 9400F 2.9GHz-4.10GHz 6 Core, 9MB Cache Processor', '1', '12900', '2019-12-21 10:42:50', NULL),
(34, '4', '38', 'Gigabyte H310M DS2 8th Gen Micro ATX Motherboard', '1', '6500', '2019-12-21 10:42:51', NULL),
(35, '4', '38', 'G.Skill Trident Z 8GB DDR4 2400 BUS (RGB) Desktop RAM', '2', '3800', '2019-12-21 10:42:51', NULL),
(36, '4', '38', 'Adata SU 650 240 GB Solid State Drive', '1', '3300', '2019-12-21 10:42:51', NULL),
(37, '4', '38', 'Asus TUF Gaming GeForce GTX 1660 OC edition 6GB GDDR5 Graphics Card', '1', '26400', '2019-12-21 10:42:51', NULL),
(38, '4', '38', 'Corsair Carbide Series SPEC-04 Mid-Tower Black-Yellow (Acrylic Side Window) Gaming Case', '1', '4000', '2019-12-21 10:42:51', NULL),
(39, '4', '38', 'CORSAIR VS-550 Power Supply', '1', '4400', '2019-12-21 10:42:51', NULL),
(40, '4', '38', 'AOC I2281FWH 21.5 Inch Ultra Slim, Full HD, WLED IPS Monitor', '1', '10200', '2019-12-21 10:42:51', NULL),
(41, '4', '38', 'Creative SBS A255 Speaker', '1', '2200', '2019-12-21 10:42:51', NULL),
(42, '4', '39', 'AMD Ryzen 3 3200G 3.6GHz-4.0GHz 4 Core AM4 Socket Processor With Vega 8 Graphics', '1', '8700', '2019-12-22 13:36:28', NULL),
(43, '4', '39', 'Gigabyte B450 AORUS M AM4 Socket AMD Mainboard', '1', '9000', '2019-12-22 13:36:28', NULL),
(44, '4', '39', 'G.Skill Trident Z Royal 8GB DDR4 3000MHz Silver Heatsink Desktop', '1', '5100', '2019-12-22 13:36:28', NULL),
(45, '4', '39', 'Gigabyte 128GB M.2 2280 PCIe 3.0x2 NVMe SSD', '1', '2500', '2019-12-22 13:36:29', NULL),
(46, '4', '39', 'MaxGreen G563BL Window ATX Casing', '1', '2700', '2019-12-22 13:36:29', NULL),
(47, '4', '40', 'Gigabyte GT 1030 2GB OC Graphics card', '1', '8000', '2019-12-23 07:56:47', NULL),
(48, '4', '41', 'AMD Ryzen 3 3200G 3.6GHz-4.0GHz 4 Core AM4 Socket Processor With Vega 8 Graphics', '1', '8700', '2020-03-16 15:47:49', NULL),
(49, '4', '41', 'Gigabyte B450M DS3H AM4 Socket AMD Mainboard', '1', '6800', '2020-03-16 15:47:49', NULL),
(50, '4', '41', 'Corsair Vengeance LPX 4GB DDR4 2400MHz Black Heatsink Desktop RAM', '1', '2150', '2020-03-16 15:47:49', NULL),
(51, '4', '41', 'Western Digital 1TB Blue Desktop HDD', '1', '3600', '2020-03-16 15:47:49', NULL),
(52, '4', '41', 'MaxGreen G563BL Window ATX Casing', '1', '2700', '2020-03-16 15:47:49', NULL),
(53, '17', '42', 'Intel Core 2 Quad Q6600 2.4GHz 4 Cores 8MB Cache LGA 775 TDP 95 watts', '1', '1000', '2020-04-09 19:14:41', NULL),
(54, '17', '42', 'ASUS P5G41C M LX Intel LGA 775 G41 Combo with Dual RAM Slots DDR3 and DDR2', '1', '2600', '2020-04-09 19:14:41', NULL),
(55, '17', '42', 'Adata 4GB DDR3 1600MHz Desktop RAM', '1', '1850', '2020-04-09 19:14:41', NULL),
(56, '17', '42', 'Western Digital 1TB Blue Desktop HDD', '1', '3600', '2020-04-09 19:14:41', NULL),
(57, '17', '42', 'MaxGreen G563BL Window ATX Casing', '1', '2700', '2020-04-09 19:14:41', NULL),
(58, '18', '43', 'Intel Core 2 Quad Q9650 3.00 GHz 4 Cores 12MB Cache LGA 775 TDP 95 watts (Used)', '1', '3000', '2020-08-30 14:22:49', NULL),
(59, '18', '44', 'Gigabyte GA-B75M-D3H LGA 1155 Intel B75 SATA 6Gb/s USB 3.0 Micro ATX DDR3 1600 Motherboard (New)', '2', '11000', '2020-09-01 19:26:36', NULL),
(60, '20', '45', 'Intel Core 2 Quad Q6700 2.66GHz 4 Cores 8MB Cache LGA 775 TDP 105 watts (Used)', '1', '1800', '2021-02-18 01:08:42', NULL),
(61, '20', '45', 'GIGABYTE GA-G41M-Combo LGA 775 Motherboard with Dual RAM Slots DDR3 and DDR2', '1', '2600', '2021-02-18 01:08:42', NULL),
(62, '20', '45', 'Adata 4GB DDR3 1600MHz Desktop RAM', '1', '1850', '2021-02-18 01:08:42', NULL),
(63, '20', '45', 'Western Digital Green 120GB 2.5 Inch SATAIII SSD', '1', '2000', '2021-02-18 01:08:42', NULL),
(64, '20', '45', 'Value Top VT-129A ATX Gaming Casing (200W PSU)', '1', '2600', '2021-02-18 01:08:42', NULL),
(65, '20', '46', 'Intel Core i5 3570 3rd gen 3.80GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', '1', '3500', '2021-02-18 01:18:06', NULL),
(66, '20', '46', 'Gigabyte GA-P61-USB3-B3 LGA 1155 Micro ATX Intel Motherboard with USB 3', '1', '3100', '2021-02-18 01:18:06', NULL),
(67, '20', '46', 'Adata 4GB DDR3 1600MHz Desktop RAM', '1', '1850', '2021-02-18 01:18:06', NULL),
(68, '20', '46', 'Adata SU 650 240 GB Solid State Drive', '1', '3300', '2021-02-18 01:18:06', NULL),
(69, '20', '46', 'Value Top VT-129A ATX Gaming Casing (200W PSU)', '1', '2600', '2021-02-18 01:18:06', NULL),
(70, '22', '47', 'Intel Core 2 Quad Q6600 2.4GHz 4 Cores 8MB Cache LGA 775 TDP 95 watts (Used)', '1', '1000', '2021-03-14 02:46:26', NULL),
(71, '4', '48', 'Intel Core i5 3570 3rd gen 3.80GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', '1', '3500', '2021-03-14 03:05:10', NULL),
(72, '4', '48', 'Intel Core i5 3470 3rd gen 3.60GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', '1', '3000', '2021-03-14 03:05:10', NULL),
(73, '24', '49', 'AMD Ryzen™ 9 5950X', '1', '4500', '2021-03-22 04:39:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_ip`, `name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(255, '103.195.0.218', 'Creative SBS A255 Speaker', '2200', '3', NULL, '2020-05-08 04:23:15'),
(256, '103.195.0.218', 'Intel Core i5 3570 3rd gen 3.80GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', '3500', '1', NULL, NULL),
(257, '202.134.14.149', 'Gamdias ARGUS E1 Mid Tower Case', '3200', '1', NULL, NULL),
(261, '103.120.38.70', 'Adata 4GB DDR3 1600MHz Desktop RAM', '1850', '2', NULL, NULL),
(263, '103.103.98.242', 'Intel Core i5 3570 3rd gen 3.80GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', '3500', '1', NULL, NULL),
(264, '103.103.98.242', 'Gigabyte GT 1030 2GB OC Graphics card', '8000', '1', NULL, NULL),
(265, '203.95.220.186', 'Intel Core i5 2400 2nd gen 3.40GHz 4 Cores 6MB Cache LGA 1155 TDP 95 W with HD Graphics 2000 (Used)', '2800', '1', NULL, NULL),
(272, '37.111.248.100', 'Gamdias ARGUS E1 Mid Tower Case', '3200', '1', NULL, NULL),
(288, '103.120.38.162', 'Gigabyte X570 Aorus Master', '32290', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `casings`
--

CREATE TABLE `casings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_factor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casings`
--

INSERT INTO `casings` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `form_factor`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(2, 17, 17, 'Golden Field 5300 ALUMINIUM (Both Side Tempered Glass Side Window) Gaming Desktop Case', 'Golden Field', 'casing_images/wPuAK.jpg', '<h2>Golden Field 5300 ALUMINIUM</h2>\r\n\r\n<p>Golden Field 5300 Fuller Tower Computer Case, the DIYer Best Choice, You can design your water cooling system pipeline freely. Conceal your cables with cleverly-positioned tie downs and routing grommets. The Maximum support 360MM Water Cooler and Vertical airflow path makes your machine quiet and cool . 4MM Double Side Windows Tempered Glass and Aerometal panel , unique design all of these is the perfect blend of beauty.</p>\r\n\r\n<h2><br />\r\nVertical Air Flow</h2>\r\n\r\n<p>Vertical air flow path design utilizes three chambers to deliver cooler air from the bottom to your CPU, graphics cards, motherboard, memory, psu and other PCI-E components without your drives or power supply getting in the way.</p>\r\n\r\n<h2><br />\r\nIdeal for Advanced Air Cooling and Water Cooling</h2>\r\n\r\n<p>With room for up to a 360mm/240mm liquid radiator or 3 x 120mm fans in bottom</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Easy Install, Tough Body</h2>\r\n\r\n<p>* maximum support 360mm graphic card(400mm length graphic card without fan or liquid cooling system installed in bottom) and 180mm height CPU radiator. Simple and intuitive internal layout enables easy and quick building.</p>\r\n\r\n<p>* Mat Surface with Aerial Aluminum Alloy Body</p>\r\n\r\n<p>* 4mm Double Side Windows Tempered Glass, 2mm Aerometal Panel</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - Golden Field 5300 ALUMINIUM, Case Type - Full Tower, Supported Mainboard Type - ITX, MicroATX, ATX, Front USB port - 1 x USB3.0, 2 x USB2.0, 3.5 - 2, 2.5 - 2, VGA Card Compatibility (Maximum) - 360mm, CPU cooler height - 180mm, Transparent Side Window - Yes, Body Dimensions (H x W x D) - 558 x 531 x 261mm, Others - Support 240mm/360mm Water Cooling System, 4mm Double Side Windows Tempered Glass, 2mm Aerometal Panel, Specialty - ALUMINIUM (Both Side Tempered Glass Side Window) Gaming Desktop Case, Warranty - No Warranty</p>', '1', '12300', '5', '2019-11-30 05:37:56', '2019-11-30 05:54:12'),
(3, 17, 16, 'Value Top VT-129A ATX Gaming Casing (200W PSU)', 'Value Top', 'casing_images/ZpyNk.jpg', '<p>Model - Value Top VT-129A, Case Type - Mid Tower, Supported Mainboard Type - ATX, Front USB port - 3 x USB2.0, Cooling Fan (Built-In) - 1 x 12cm, Cooling Fan (Optional) - 2, Power Supply - 200W, Expansion Slots - 7, VGA Card Compatibility (Maximum) - 380mm, Specialty - Gaming, Part No - VT-129, Country of Origin - China, Made in/ Assemble - China</p>', '1', '2600', '10', '2019-11-30 05:39:47', '2019-11-30 05:54:12'),
(5, 17, 17, 'Corsair Carbide Series SPEC-04 Mid-Tower Black-Yellow (Acrylic Side Window) Gaming Case', 'Corsair', 'casing_images/nJfYa.jpg', '<h2>Carbide Series Mid-Tower Gaming Case &mdash; Black/Yellow</h2>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://lh3.googleusercontent.com/SycU8-52I7RpPos1aXQRG1l1Cg0UR8JOZSavkdmu_l0x2vEfgEAWp9IcZvrInouVqzCgKrtXDWcwzfSRx_RY_XvDs6i9px4qpFdOd8N4qwH6PJwc20AtkS0l-rnmjnZKFF01BPAz\" style=\"height:400px; width:295px\" /></p>\r\n\r\n<p>The Carbide Series SPEC-04&rsquo;s angular, hard-edged exterior combined with excellent cooling potential adds bold styling with ease of assembly.</p>\r\n\r\n<h2>STUNNING STYLE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h2>\r\n\r\n<p>The Carbide Series SPEC-04&rsquo;s angular, hard-edged exterior features bold styling for a remarkable look.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>ANGULAR EXTERIOR DESIGN WITH LARGE, TINTED SIDE PANEL WINDOW&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h2>\r\n\r\n<p>The asymmetrical, hard-edged design brings bold styling to your build.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h2>CABLE ROUTING CUTOUTS AND TIE-DOWNS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>Hide your cables behind the motherboard tray to keep your build looking tidy and out of the airflow path for improved cooling.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>ROOM FOR UP TO FIVE 120MM FANS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>Excellent cooling potential with one 120mm LED front fan pre-installed.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h2>AMPLE STORAGE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>Three HDD and two SSD drive cages are easy to install and keep your system and cables looking clean.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h2>CLEAN SIDE I/O PANEL&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>Featuring a high-speed USB 3.0 port and additional ports for all modern connections.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>REMOVABLE, BUILT-IN DUST FILTERS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>A clean case keeps your components cooler and running longer.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>LOOK SHARP, STAY COOL&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>The slep, tinted window shows off the roomy interior, which fits up to five 120mm fans and can accommodate ample storage configurations.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>READY TO BUILD</h2>\r\n\r\n<p>The clean, side I/O panel and USB 3.0 port, cable routing cutouts and tie downs, and built-in dust filters combine for you to build a system that&rsquo;s as bold as the SPEC-04&rsquo;s design.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - Corsair SPEC 04, Case Type - Mid Tower, Supported Mainboard Type - MicroATX, ATX, Mini-ITX, Front USB port - 1 x USB3.0, 1 x USB2.0, Front Audio Port - 1 x Headphone, 1 x Microphone, 3.5 - 3, 2.5 - 2, Cooling Fan (Built-In) - 1, Cooling Fan (Optional) - 5, Radiator Support Front/Top/Rear - Front: 120mm or 140mm, Rear: 120mm, Power Supply - ATX (not included), Expansion Slots - 7, VGA Card Compatibility (Maximum) - 370mm, CPU cooler height - 150mm, Transparent Side Window - Yes, Body Color - Black-Yellow, Body Dimensions (H x W x D) - 492 x 201 x 433mm, Weight - 4.2Kg, Others - Maximum PSU Length: 225mm, Specialty - Black-Yellow (Acrylic Side Window) Gaming Case, Part No - CC-9011108-WW, Warranty - No warranty(Corsair SPEC 04)</p>', '1', '4000', '10', '2019-12-14 17:32:36', NULL),
(7, 17, 17, 'Cooler Master MasterBox Q300L Black Mini Tower (Tempered Glass Side Window) Gaming Desktop Case', 'Cooler Master', 'casing_images/G3ui6.jpg', '<h2>Cooler Master MasterBox Q300L</h2>\r\n\r\n<h2>PATTERNED MAGNETIC DUSTFILTERS</h2>\r\n\r\n<p>Special pattern on the dust filter creates a unique outlook for the chassis.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>MODULAR I/O PANEL</h2>\r\n\r\n<p>The I/O panel can be adjusted to six different locations. On both side of the body you can install the I/O panel at the front, top or bottom.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>EDGE-TO-EDGE SIDE PANEL</h2>\r\n\r\n<p>Show off your build through the full size transparent side panel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>CLEAN ROUTING SPACE</h2>\r\n\r\n<p>Behind the motherboard tray, 28mm of space is offered for cable management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>EXCELLENT THERMAL PERFORMANCE</h2>\r\n\r\n<p>The open design of the perforated front, top and bottom guarantees excellent thermal performance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>FAN AND RADIATOR SUPPORT</h2>\r\n\r\n<p>The front supports up to two 140mm fans and up to a 240mm radiator. The rear supports a 120mm fan or radiator and the top two 120mm fans. All to ensure you don&#39;t have to compromise on performance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>MAIN COMPONENTS CLEARANCE</h2>\r\n\r\n<p>The MasterBox Q300L case supports CPU coolers up to a height of 157mm, graphics cards up to a length of 360mm, and power supplies up to a length of 160mm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - Cooler Master MasterBox Q300L, Case Type - Mini Tower, Supported Mainboard Type - Mini-ITX, Micro-ATX, Front USB port - 2 x USB3.0, Front Audio Port - Audio In &amp;amp; Out, 3.5 - 1, 2.5 - 2, Cooling Fan (Built-In) - 1, Cooling Fan (Optional) - 6, Radiator Support Front/Top/Rear - Front: 120 / 240mm, Rear: 120mm, Power Supply - Bottom mount, ATX PS2, Expansion Slots - 4, VGA Card Compatibility (Maximum) - 360mm, CPU cooler height - 157mm, Transparent Side Window - Yes, Body Color - Black, Body Dimensions (H x W x D) - 378 x 230 x 387mm, Others - PSU: 160mm, Materials: Steel, Plastic, Cable Routing Behind MB Tray: 28mm, Dust Filters: Bottom, Specialty - Tempered Glass Side Window Gaming Desktop Case, PATTERNED MAGNETIC DUSTFILTERS, MODULAR I/O PANEL, MULTIPLE POSITIONING OPTIONS, EDGE-TO-EDGE SIDE PANEL, CLEAN ROUTING SPACE, EXCELLENT THERMAL PERFORMANCE, FAN AND RADIATOR SUPPORT, MAIN COMPONENTS CLEARANCE, Warranty - No, Part No - MCB-Q300L-KANN-S00(Cooler Master MasterBox Q300L)</p>', '2', '4000', '5', '2019-12-14 17:34:40', NULL),
(8, 17, 16, 'MaxGreen G563BL Window ATX Casing', 'MaxGreen', 'casing_images/iIDFn.jpg', '<p>MaxGreen G563BL ATX 1059-P chassis with black material inner; 0.4mm thickness . USB3.0*1+USB2.0*2, HD_Audio Port. front panel :2x12cm 15xLeds Ring Blue LED fan(GMX-RF12-B). Half transparent panel on the left side.</p>', '1', '2700', '21', '2019-12-18 20:56:23', '2020-10-24 15:00:10'),
(9, 17, 17, 'Gamdias ARGUS E1 Mid Tower Case', 'Gamdias', 'casing_images/AMCd4.jpg', '<p>Gamdias ARGUS E1 Mid Tower Case supports connection to compatible motherboards to achieve system-wide RGB lighting synchronization, makes you easier to unite your case from chaos to calm.It is 1 Built-in 120mm Fans. In this case it is Easily Accessible I/O ports and install 240mm water cooling system on the top metal cover.One touch to easily switch exclusive rainbow RGB streaming lighting style, and LED off.Simple, sophistication and style are the hallmarks of the ARGUS series. The top bracket of ARGUS E1 can accommodate radiators up to 240mm. Gamdias ARGUS E1 has a very simple design philosophy: A Mid -tower case, the front eye-catching rainbow RGB lighting and hair line, Together, they add up to show off your own unique style.</p>', '1', '3200', '8', '2019-12-19 01:47:32', '2021-02-17 18:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(8, 'Processor', '2019-11-15 18:48:05', NULL),
(9, 'MotherBoard', '2019-11-15 18:48:12', NULL),
(15, 'RAM', '2019-11-25 18:19:56', NULL),
(16, 'Storage', '2019-11-27 19:54:52', NULL),
(17, 'Casing', '2019-11-30 05:02:53', NULL),
(18, 'PSU', '2019-11-30 15:11:58', NULL),
(19, 'GPU', '2019-11-30 16:59:30', NULL),
(20, 'Others', '2019-11-30 18:02:03', NULL),
(21, 'Keyboard', '2021-03-14 01:41:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_discount`, `created_at`, `updated_at`) VALUES
(6, 'BIMABD10', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogura', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barishal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chattogram', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachhari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Moulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jashore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`) VALUES
(1, 'Barishal', 'বরিশাল'),
(2, 'Chattogram', 'চট্টগ্রাম'),
(3, 'Dhaka', 'ঢাকা'),
(4, 'Khulna', 'খুলনা'),
(5, 'Rajshahi', 'রাজশাহী'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Sylhet', 'সিলেট'),
(8, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `form_factor`
--

CREATE TABLE `form_factor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_factor`
--

INSERT INTO `form_factor` (`id`, `name`) VALUES
(1, 'ATX'),
(2, 'Micro ATX'),
(3, 'Mini ATX');

-- --------------------------------------------------------

--
-- Table structure for table `graphics_cards`
--

CREATE TABLE `graphics_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `watt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `graphics_cards`
--

INSERT INTO `graphics_cards` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `watt`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(10, 19, 20, 'Gigabyte GT 1030 2GB OC Graphics card', 'Gigabyte', 'gpu_images/umuU6.png', '<p><strong>Gigabyte GT 1030 2GB OC Graphics card</strong></p>\r\n\r\n<p><strong>Features</strong></p>\r\n\r\n<ul>\r\n	<li>Powered by GeForce&reg; GT 1030&nbsp;</li>\r\n	<li>Integrated with 2GB GDDR5 64bit memory&nbsp;</li>\r\n	<li>Supports HDMI 4K@60Hz&nbsp;</li>\r\n	<li>Smooth 4K video playback and HTML5 web browsing</li>\r\n	<li>One-click overclocking via AORUS Graphics Engine</li>\r\n</ul>\r\n\r\n<p><strong>Core Clock</strong></p>\r\n\r\n<ul>\r\n	<li>Boost: 1544 MHz/ Base: 1290 MHz in OC Mode</li>\r\n	<li>Boost: 1518 MHz/ Base: 1265 MHz in Gaming Mode</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>02 Years Warranty</p>', '75', '8000', '9', '2019-12-18 20:35:27', '2020-09-07 06:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_11_15_173827_create_categories_table', 2),
(8, '2019_11_15_174322_create_sub_categories_table', 3),
(13, '2019_11_26_002656_create_rams_table', 6),
(15, '2019_11_21_120603_create_mother_boards_table', 8),
(16, '2019_11_28_020621_create_storages_table', 9),
(17, '2019_11_30_110657_create_casings_table', 10),
(18, '2019_11_30_211843_create_power_supplies_table', 11),
(19, '2019_11_30_232226_create_graphics_cards_table', 12),
(20, '2019_12_01_000555_create_others_table', 13),
(21, '2019_11_17_001640_create_processors_table', 14),
(24, '2019_12_16_094525_create_carts_table', 15),
(25, '2019_12_16_154440_create_coupons_table', 16),
(26, '2019_12_16_183958_create_shippings_table', 17),
(27, '2019_12_16_204244_create_sales_table', 18),
(29, '2014_10_12_000000_create_users_table', 19),
(30, '2019_12_17_000218_create_billings_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `mother_boards`
--

CREATE TABLE `mother_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_factor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mother_boards`
--

INSERT INTO `mother_boards` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `socket`, `ram_type`, `storage_type`, `form_factor`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(12, 9, 11, 'GIGABYTE GA-G41M-Combo LGA 775 Motherboard with Dual RAM Slots DDR3 and DDR2', 'GIGABYTE', 'motherboard_images/QqO6o.jpg', '<p>Gigabyte&rsquo;s G41M-Combo Desktop Motherboard</p>\r\n\r\n<p>The Gigabyte&rsquo;s G41M-Combo Desktop Motherboard comes across as a platform which has bundled feature after feature to deliver a host of functionalities that promise you the best user experience. Apt for high performance gaming, multimedia as well as multitasking, it is sure to excite users looking to derive a fantastic experience out of their system. Central to it is the Intel G41 chipset fitted with 45nm CPUs, the mind behind the motherboard&rsquo;s super delivery.</p>\r\n\r\n<p>The motherboard is flexible to run with both DDR2 and DDR3 RAM, so that even the most complex of applications run smoothly. The Intel GMZ X4500 features Intel Clear Video Technology, which provides you with eye startling HD pictures while you are watching the latest Pixar. To lend your USB devices more power over a range of voltages, the motherboard comes with 3x USB Power Boost, which ensures lower voltage drops as against traditional motherboards, which render only 1x performance.</p>\r\n\r\n<p>DualBIOS- a Gigabyte patented technology, in case of exasperating BIOS failures which render the whole operating system useless, secures the data seamlessly from the main BIOS. For the environment crusaders, the proprietary Easy Energy Saver technology automatically tweaks the power consumption tailored to the workload thus offering higher efficiency. Thus, holding back their worries about power consumption, users can churn out superior performance. Accommodating European Union&rsquo;s environmental regulation policy, the motherboard meets ErP alias Energy Related Products Directive norms, which aim for greater efficiency devices that can thereby curb the proliferation of electronics.</p>\r\n\r\n<p>The G41M-Combo Desktop Motherboard flaunts Gigabit interface which provides a data transfer rate of up to 1000 Mb/s which may seem more than what is necessary, but not when you plan to pull off an all-nighter watching online videos. The motherboard has obtained a Windows Hardware Quality Labs Certification from Microsoft for Windows 7 operating system to enable the best experience while handling your PC. Buy this branded motherboard online today before stocks run out.</p>', 'LGA 775', 'DDR3', '1', '2', '2600', '10', '2020-04-09 07:12:11', '2020-04-09 07:36:53'),
(13, 9, 11, 'ASUS P5G41T-M LX PLUS LGA 775 Intel G41 Micro ATX Intel Motherboard', 'Asus', 'motherboard_images/pTt55.jpg', '<p>P5G41T-M LX PLUS features the Intel G41/ICH7 chipset and dual-channel DDR3 memory up to 1333 MHz. High-bandwidth DDR3 memory provides power savings and great performance for 3D graphics and other memory-demanding applications. Integrated Intel GMA X4500 graphics supports Microsoft DirectX 10 for experiencing visuals.</p>', 'LGA 775', 'DDR3', '1', '2', '2300', '10', '2020-04-09 07:18:24', NULL),
(14, 9, 11, 'ASUS P5G41C M LX Intel LGA 775 G41 Combo with Dual RAM Slots DDR3 and DDR2', 'Asus', 'motherboard_images/l2lt3.jpg', '<p>Features the Intel G41/ICH7 chipset and dual-channel DDR3 memory up to 1333 MHz. High-bandwidth DDR3 memory provides power savings and great performance for 3D graphics and other memory-demanding applications. Integrated Intel GMA X4500 graphics supports Microsoft DirectX 10 for experiencing visuals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Also Support DDR2 Ram</p>', 'LGA 775', 'DDR3', '1', '2', '2600', '5', '2020-04-09 07:26:32', '2020-04-09 07:37:15'),
(15, 9, 11, 'GIGABYTE GA-G41MT-S2 LGA 775 MotherBoard', 'GIGABYTE', 'motherboard_images/QsNNf.jpg', '<ul>\r\n	<li>Brand Name:&nbsp;Gigabyte</li>\r\n	<li>Socket Type:&nbsp;Socket 775</li>\r\n	<li>Memory Type:&nbsp;DDR3</li>\r\n	<li>Application:&nbsp;Desktop</li>\r\n	<li>Item Condition:&nbsp;Used</li>\r\n	<li>Ports:&nbsp;USB 2.0</li>\r\n	<li>Ports:&nbsp;Ethernet</li>\r\n	<li>Ports:&nbsp;PS2</li>\r\n	<li>Ports:&nbsp;VGA</li>\r\n	<li>Chipset:&nbsp;Intel G41</li>\r\n	<li>Form Factor:&nbsp;Micro-ATX</li>\r\n	<li>Memory Bank:&nbsp;2 DDR3 DIMM</li>\r\n	<li>With CPU:&nbsp;No</li>\r\n	<li>Hard Drive Interface:&nbsp;SATA II</li>\r\n	<li>Memory channel:&nbsp;Double</li>\r\n	<li>CPU Type:&nbsp;Intel</li>\r\n	<li>FSB / HT:&nbsp;FSB 1333MHz</li>\r\n	<li>Package:&nbsp;No</li>\r\n	<li>Model Number:&nbsp;GA-G41MT-S2</li>\r\n	<li>Maximum Ram Capacity:&nbsp;8 GB</li>\r\n	<li>Chipset Manufacturer:&nbsp;Intel</li>\r\n	<li>Socket Type:&nbsp;LGA 775</li>\r\n	<li>Products Status:&nbsp;Stock</li>\r\n	<li>Graphics Card Type:&nbsp;Integrated</li>\r\n	<li>Expansion Slots:&nbsp;PCI Express X16</li>\r\n	<li>Main Board Platform Type:&nbsp;Intel</li>\r\n</ul>', 'LGA 775', 'DDR3', '1', '2', '2500', '10', '2020-04-09 07:33:36', NULL),
(16, 9, 11, 'MSI G41M P33 COMBO LGA 775 Motherboard with Dual RAM Slots DDR3 and DDR2', 'MSI', 'motherboard_images/BDSl3.jpg', '<p>Technical Details</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>MSI</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model</td>\r\n			<td>G41M-P33-COMBO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model Year</td>\r\n			<td>2009</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Item Weight</td>\r\n			<td>499 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>30 x 30 x 6 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Item model number</td>\r\n			<td>G41M-P33-COMBO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ram Memory Technology</td>\r\n			<td>DDR2, DDR3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Socket</td>\r\n			<td>Socket 775</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics Card Interface</td>\r\n			<td>PCI</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Batteries Included</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Batteries Required</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Usb Ports</td>\r\n			<td>6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'LGA 775', 'DDR3', '1', '2', '2600', '12', '2020-04-09 07:40:21', '2020-04-09 14:49:36'),
(17, 9, 11, 'Gigabyte GA-H61M-S2PV - LGA1155 Intel H61 Chipset MicorATX Motherboard PCI-E VGA/DVI 7.1CH HD Audio', 'GIGABYTE', 'motherboard_images/M4iG5.jpg', '<p>Condition Note: Used<br />\r\n<br />\r\nGigabyte Desktop Motherboard<br />\r\nModel: GA-H61M-S2PV<br />\r\nSocket: LGA1155<br />\r\nRAM Memory Slots: 2<br />\r\nForm Factor: Micro ATX</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>All new design of Ultra Durable 4 classic</li>\r\n	<li>Supports 3rd Gen. Intel&reg; 22nm CPUs and 2nd Gen. Intel&reg; Core&trade; CPUs (LGA1155 socket)</li>\r\n	<li>Unique On/Off Charge delivers the best recharging capability to iPad, iPhone and iPod Touch</li>\r\n	<li>Supports 3rd generation PCI-Express interface</li>\r\n	<li>DVI interface for smoother HD video playback</li>\r\n	<li>Industry&#39;s Leading All Solid Capacitor Design</li>\r\n	<li>Enhanced Intel HD Graphics 2000/3000 integrated with the processor</li>\r\n	<li>Dual UEFI BIOS&trade; protection with 3TB+ HDD boot up capability</li>\r\n</ul>', 'LGA 1155', 'DDR3', '1', '2', '2700', '10', '2020-04-10 02:15:53', NULL),
(18, 9, 11, 'Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard', 'GIGABYTE', 'motherboard_images/kl7EZ.jpg', '<p>Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard</p>\r\n\r\n<p>Get the Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard with the latest technology and use it with convenience and ease. The Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard supports the Core i7/i5/i3/Pentium/Celeron processors in the LGA1155 package and also the next generation Intel nm processors. The Gigabyte Motherboard has dual channel memory architecture. It has 2 x 1.5V DDR3 DIMM sockets that sustain up to 16 GB of system memory.</p>\r\n\r\n<p>The Realtek Audio codec in the motherboard gives high definition audio with 2/4/5.1/7.1-channel. It has 4 x SATA 3Gb/s connectors that support up to 4 SATA 3Gb/s devices. The new Glass fabric design in GIGABYTE Motherboard comes with smaller gaps between the PCB filaments which offer protection against the electrical shorts caused due to humidity. The Gigabyte Motherboard is loaded with features like Electrostatic Protection, Power Failure Protection and High Temperature Protection which make it very durable.</p>\r\n\r\n<p>The Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard sports a unique On/Off Technology that allows you to charge your Iphone, Ipad and Ipod Touch not only when your PC is on but also when the PC is Off or in Standby Mode. Now you can charge your devices as fast from the PC as with the charger because of On/Off Technology combined with GIGABYTE 3xUSB Power feature which allows the devices for more current supply from GIGABYTE Motherboard. The latest Gen.3 PCI Express Technology in the GIGABYTE motherboard gives the maximum data bandwidth for latest graphic cards which make it ideal for Gamers. It has Smart 6 technology which allows smarter PC management.</p>\r\n\r\n<p>The Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard has the All Solid Capacitor Design which is now the top industry design. The combined benefit of Hybrid EFI Technology with 3TB + HD support and Touch BIOS in GIGABYTE motherboard provides a system that stays stable and compatible with third party products. The GIGABYTE website makes available the free GIGABYTE BIOS Utility through which it is very easy to update the BIOS.</p>\r\n\r\n<p>Get smarter technology with the Gigabyte GA-H61M-DS2 LGA 1155 Intel H61 Micro ATX Intel Motherboard. Buy Online today until stock runs out.</p>', 'LGA 1155', 'DDR3', '1', '2', '2500', '11', '2020-04-10 02:19:11', '2020-10-24 15:00:03'),
(19, 9, 11, 'Gigabyte GA-P61-USB3-B3 LGA 1155 Micro ATX Intel Motherboard with USB 3', 'GIGABYTE', 'motherboard_images/gJwYS.jpg', '<p><strong>GIGABYTE</strong> motherboards feature a 3x USB power boost, delivering greater compatibility and extra power for USB devices. <strong>GIGABYTE&#39;s</strong> unique USB power design is also able to efficiently regulate output over the full voltage range, which greatly enhances USB device compatibility.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Supports Intel new B3 stepping 6 series chipset</li>\r\n	<li>Supports for LGA1155 2nd Generation Intel&reg; Core&trade; Processors</li>\r\n	<li>Next Gen. Quality Components and 4 Phase CPU Power design</li>\r\n	<li>Industry&#39;s Leading Japanese Solid Capacitor Motherboard Design</li>\r\n	<li>Supports USB 3.0 with superfast transfer rates of up to 5 Gbps</li>\r\n	<li>Better device compatibility with 3x USB power</li>\r\n	<li>Innovative Smart 6 technology for smarter PC management</li>\r\n	<li>Hi-def 108dB Signal-to-noise ratio Blu-ray&trade; DVD audio playback</li>\r\n	<li>DualBIOS&trade; protection with 3TB+ HDD boot up capability</li>\r\n</ul>', 'LGA 1155', 'DDR3', '1', '2', '3100', '10', '2020-04-10 02:25:50', NULL),
(20, 9, 11, 'GIGABYTE GA-P67A-UD3 LGA 1155 Intel P67 USB 3.0 ATX Intel Motherboard Support DDR2 and DDR3', 'GIGABYTE', 'motherboard_images/B0QAM.jpg', '<p>GIGABYTE P67A-UD3-B3 motherboards is designed and engineered to deliver exceptional performance and clarity for your computing needs. Powered by the Intel&reg; P67 chipset with support for 2nd Generation Intel&reg; Core&trade; processors, GIGABYTE P67A-UD3-B3 enjoy uniquely developed technologies such as Smart 6 , Cloud OC, Hotkey OC technology and Ultra Durable 3 design just to name a few, that ensure a reliable and enjoyable computing experience.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Supports Intel new B3 stepping 6 series chipset</li>\r\n	<li>Supports the newest LGA1155 2nd Generation Intel&reg; Core&trade; processors</li>\r\n	<li>Ultra Durable&trade; 3 technology with 2oz copper PCB design</li>\r\n	<li>Supports USB 3.0 with superfast transfer rates of up to 5 Gbps</li>\r\n	<li>GIGABYTE 3x USB Power with On/Off Charge USB ports</li>\r\n	<li>CrossFireX support for ultimate graphics performance</li>\r\n	<li>XHD technology accelerating hard drive performance with ease</li>\r\n	<li>Features high speed Gigabit Ethernet connection</li>\r\n	<li>GIGABYTE DualBIOS&trade; technology delivering highest level failure protection</li>\r\n</ul>', 'LGA 1155', 'DDR3', '1', '1', '4000', '5', '2020-04-10 02:33:05', '2020-05-08 04:23:29'),
(21, 9, 11, 'Gigabyte G-B75M-HD3 LGA 1155 Motherboard HDMI SATA 6Gb/s USB 3.0', 'GIGABYTE', 'motherboard_images/HygOZ.jpg', '<ul>\r\n	<li>All new design of Ultra Durable 4 classic</li>\r\n	<li>Supports 3rd Gen. Intel&reg; 22nm CPUs and 2nd Gen. Intel&reg; Core&trade; CPUs (LGA1155 socket)</li>\r\n	<li>GIGABYTE Dual UEFI BIOS</li>\r\n	<li>PCI Express Gen 3.0 support</li>\r\n	<li>Industry&#39;s Leading All Solid Capacitor Design</li>\r\n	<li>Supports Intel SBA</li>\r\n	<li>GIGABYTE On/Off Charge&trade; for USB devices</li>\r\n	<li>HDMI/ DVI/RGB three Display outputs</li>\r\n</ul>', 'LGA 1155', 'DDR3', '1', '2', '3600', '10', '2020-04-11 01:16:43', '2020-04-11 01:21:16'),
(22, 9, 11, 'Gigabyte GA-B75M-D3H LGA 1155 Intel B75 SATA 6Gb/s USB 3.0 Micro ATX DDR3 1600 Motherboard (New)', 'GIGABYTE', 'motherboard_images/Mbyjc.jpg', '<p>A motherboard, also known as the mainboard and planar board is the main printed circuit board in a computer. Basically, it holds many crucial electronic components like the CPU and memory and also it provides connectors for other peripherals. Gigabyte, an international distributor and manufacturer of computer hardware products, brings to you a Micro ATX Motherboard. This Gigabyte DDR3 Motherboard has been designed so that it can improve the performance of your desktop.</p>\r\n\r\n<p><strong>How much useful is this product?</strong></p>\r\n\r\n<p>As you all know that humidity play havoc on a motherboard&rsquo;s circuitry, this Gigabyte PCB design motherboard will protect against all the electrical shorts that may occur due to humidity. This is done by reducing the gaps in space between PCB filaments. Failure during BIOS update can be avoided with this Gigabyte Motherboard. The high resistance ICS of the motherboard protects the same from electrostatic discharge. The company also uses anti-surge is for protecting the motherboard against power surges.</p>\r\n\r\n<p><strong>Product Specifications</strong></p>\r\n\r\n<p>Take a quick glance at some of the most striking features of this Gigabyte motherboard and know more about this product.</p>\r\n\r\n<ul>\r\n	<li>Transfer rates of up to 5Gbps</li>\r\n	<li>High Speed SATA Revision 3.0 compatible</li>\r\n	<li>On/Off charge technology</li>\r\n	<li>3x USB Power Boost</li>\r\n	<li>Multi display support with AMD CrossFirex</li>\r\n	<li>1x Realtek Gbe LAN chip</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>All new design of Ultra Durable 4 classic</li>\r\n	<li>Supports 3rd Gen. Intel&reg; 22nm CPUs and 2nd Gen. Intel&reg; Core&trade; CPUs (LGA1155 socket)</li>\r\n	<li>Dual UEFI BIOS protection with 3TB+ HDD boot up capability</li>\r\n	<li>PCI Express Gen 3.0 support</li>\r\n	<li>Industry&#39;s Leading All Japanese Solid Capacitor Design</li>\r\n	<li>GIGABYTE 333&trade; Onboard Acceleration (USB 3.0, SATA 3.0 &amp; 3x USB Power)</li>\r\n	<li>2-way CrossFireX&trade; multi-GPU support</li>\r\n	<li>HDMI/ DVI interface for smoother HD video playback</li>\r\n	<li>GIGABYTE On/Off Charge&trade; for USB devices</li>\r\n</ul>', 'LGA 1155', 'DDR3', '1', '2', '5500', '8', '2020-04-11 01:25:17', '2020-09-01 19:24:32'),
(23, 9, 10, 'Gigabyte X570 Aorus Master', 'Gigabyte', 'motherboard_images/WsCLi.jpg', '<p><strong>CPU support:&nbsp;</strong>AMD 2nd, 3rd, and 4th Gen Ryzen CPUs, Ryzen APUs |&nbsp;<strong>Socket:&nbsp;</strong>AM4 |&nbsp;<strong>Size:&nbsp;</strong>ATX |&nbsp;<strong>Memory support:&nbsp;</strong>4x DIMM, 128GB, DDR4-4400 (OC) |&nbsp;<strong>Expansion slots:&nbsp;</strong>1x PCIe x16, 1x PCIe x16 (x8), 1x PCIe x16 (x4), 2x PCIe x1 |&nbsp;<strong>Video ports:&nbsp;</strong>None |&nbsp;<strong>Rear USB:&nbsp;</strong>4x USB 3.2 Gen2 (1x Type-C), 2x USB 3.2 Gen1, 4x USB 2.0 |&nbsp;<strong>Storage:&nbsp;</strong>3x M.2, 6x SATA |&nbsp;<strong>Network:&nbsp;</strong>1x Intel GbE LAN, 1x Realtek 2.5GbE LAN, 802.11ax Wi-Fi.</p>\r\n\r\n<p>his X570 motherboard remains one of the best options for any high-end AMD build, be it Zen 2 or Zen 3. There are a few reasons for this, but the three M.2 slots, great wired and wireless networking, and expansion possibilities top the list. Yes, it&#39;s one of the more expensive options, but you really do get a lot of motherboard for your money, and it&#39;s utterly reliable too.</p>\r\n\r\n<p>The 14-phase VRM design ensures your CPU is getting lots of clean power, which in turn makes this one of the best options for overclocking your Ryzen 5000 or Ryzen 3000 processor of choice. All that metal atop of the VRMs helps keep things cool, as does the massive plate that covers the rear of the board. The M.2 slots all have heat spreaders, and the expansion and memory slots are reinforced too.</p>\r\n\r\n<p>The only real mark against it, other than the price, is that if you do use all three M.2 slots you only get four SATA ports to play with. Still, this is a sturdy and well-thought-out board that will serve you well.</p>', 'AM4', 'DDR4', '3', '1', '32290', '214', '2021-03-14 03:58:27', '2021-03-26 15:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(2, 20, 23, 'Creative SBS A255 Speaker', 'Creative', 'others_images/rxvBh.jpg', '<h2>Creative SBS A255</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>2.1 Speaker System</h2>\r\n\r\n<p>2.1 speaker system for music, movies or games. Connect it to your desktop and mobile devices for a pleasant audio experience.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Big sound from a compact system</h2>\r\n\r\n<p>The speaker system&#39;s satellites feature the Creative DSE design, which enables them to achieve louder and deeper playback even when constrained to a compact housing. This is made possible by separating the port tube into two separate slots and reconstructing them to fit into a tight enclosure. Their space-saving size allows for easy and versatile placement anywhere in the home.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Enjoy natural sounding audio</h2>\r\n\r\n<p>The newly-improved Creative IFP design features an extended flare surrounding the satellite driver to provide an even wider acoustic sweet spot. This improves sonic directivity to the listening area, giving music more focus while preserving tonal accuracy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Largest-in-class, down-firing subwoofer</h2>\r\n\r\n<p>The system&#39;s largest-in-class, down-firing ported subwoofer delivers impressive bass for that extra oomph in your music.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Convenient controls</h2>\r\n\r\n<p>The ON/OFF switch integrated with volume control is conveniently located on the satellite for easy access.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - Creative SBS A255, Type - Speaker, Channel - 2.1, RMS/Channel (Watt) - 2Watt, RMS/Subwoofer (Watt) - 8Watt, Signal to Noise Ratio (dB) - 75dB, Frequency (Hz - KHz) - 40Hz - 20kHz, Warranty - 1 year,</p>', '2200', '17', '2019-11-30 18:23:45', '2020-05-08 04:23:15'),
(4, 20, 22, 'AOC I2281FWH 21.5 Inch Ultra Slim, Full HD, WLED IPS Monitor', 'AOC', 'others_images/YmVuA.jpg', '<h2>AOC I2281FWH</h2>\r\n\r\n<p><img alt=\"\" src=\"https://lh6.googleusercontent.com/60Ok825C_S9IZw6Cd8treVMXtz5mqgtrUbi4QWko37J1n-LPD_dNmttCauPBAf4u08mu4-MkECMbz8TpoZeDRljWKAk5tFiaVrTznJfFGMGPFkAQJS0GcmRQjLQ0CclZLawUe1TI\" style=\"height:279px; width:624px\" /></p>\r\n\r\n<h2>The slimmest solution for gorgeous viewing</h2>\r\n\r\n<p>This extremely stylish display impresses with its asymmetric stand and ultra-slim design. Its Full HD IPS panel produces accurate and sharp images from HDMI input sources..</p>\r\n\r\n<h2>HDMI</h2>\r\n\r\n<p><img alt=\"\" src=\"https://lh4.googleusercontent.com/-BCy9io3Ih0YoIr52MJEzfG1xyfZOTLZtTSk6g8lx6gYqM38UIYFQGXY8sowMy3pU0WQwX8A5KtM4KYF_9PojXvR3LmSiOfYxXpQKpWPC-KT1445_-Lu0gfug8t8aVhVomfPC0L-\" style=\"height:126px; width:487px\" /></p>\r\n\r\n<p>HDMI (High-Definition Multimedia Interface) is supported by the current gaming consoles, current GPUs, set-top boxes, supporting the HDCP digital content protection system. HDMI 1.3-1.4b versions support up to 144 Hz refresh rate@1080p and 75 Hz@1440p, while HDMI 2.0-2.0b versions support 240Hz@1080p, 144Hz@1440p and 60 Hz@2160p (4K).</p>\r\n\r\n<h2>Flicker Free</h2>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/IR9lLloXeJVNHKpioDYziQDuuvtWDY3mWNh_JkW3IaQ3pZSAWso3p1QftE004EN7CNbjUZFWtjbjXuu39m6gqRYpzlHEBbPVGhtEtTOJNJr2bsGJCs45oP45fT6Zkt5lJ2LnExlH\" style=\"height:287px; width:412px\" /></p>\r\n\r\n<p>AOC Flicker-Free Technology utilises a DC (Direct Current) backlight panel, reducing flickering light levels. With eye strain and fatigue absolutely minimized, feel free to enjoy those long, intense gaming sessions in comfort!</p>\r\n\r\n<h1>IPS Panel</h1>\r\n\r\n<p><img alt=\"\" src=\"https://lh4.googleusercontent.com/iQnnZ-KSuIpsr27ArEzNIHse6C87HTffw8I1709FMMTHFFHSlQzOvUha442G9W-iRRoKuXoJCTTQH4Hh_scggSx2LYJuJjeoTPO3CA9T8sTtgIHJULmF_fYlGEMeuIfw35T0-2lV\" style=\"height:258px; width:342px\" /></p>\r\n\r\n<p>No matter if you are viewing photos, videos, a magazine layout in InDesign or playing your favourite game &ndash; we want your content to look excellent from whatever angle you are seeing it. That is why this display comes with an advanced IPS panel, which produces brilliant colours and offers wide viewing angles. This way, images always look excellent and accurate, regardless from which angle you &ndash; or your friends and co-workers sitting or standing next to you &ndash; are looking at the screen..</p>\r\n\r\n<h2>IPS Panel</h2>\r\n\r\n<p><img alt=\"\" src=\"https://lh4.googleusercontent.com/_zob8nlUfRxCKo7sIBFy-8OMaSXgCJFXrWxux239y7MQVP_UtD2a2ilkh8bNDXpfxTcQVm0rT8bBreD5NF3aV7vV9VQkEuYoHpptnencDYmtldyetIVa1TQWJzyVyMbSWsLoVa7h\" style=\"height:379px; width:401px\" /></p>\r\n\r\n<p>No matter if you are viewing photos, videos, a magazine layout in InDesign or playing your favourite game &ndash; we want your content to look excellent from whatever angle you are seeing it. That is why this display comes with an advanced IPS panel, which produces brilliant colours and offers wide viewing angles. This way, images always look excellent and accurate, regardless from which angle you &ndash; or your friends and co-workers sitting or standing next to you &ndash; are looking at the screen.</p>\r\n\r\n<h2>Full HD</h2>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/N1hq0_ylCgYAa9bgpksoysFrEhSAPFlCgedu3zdTEFlcovhiLs4CSt1UG4VCDkGwzuaHmGMMsrbfYBwHgdBboRfuGpSTopepVlqKcS6Jk1eQWn-Df4K-3GMZCAKKOeif4qID_GJE\" style=\"height:383px; width:528px\" /></p>\r\n\r\n<p>Want to watch a Blu-ray movie in full quality, enjoy games in high resolution or read crisp text in office applications? Thanks to its Full HD resolution of 1920 x 1080 pixels, this monitor lets you do just that. Whatever you are viewing, with Full HD it will be displayed in rich detail without requiring a high-end graphics card or consuming a lot of your system&rsquo;s resources.</p>\r\n\r\n<h2>All specifications (I2281FWH)</h2>\r\n\r\n<p><img alt=\"\" src=\"https://lh6.googleusercontent.com/UQCV-R3-OYjAb955bSAUE1NsiIRgl5jAOtx1iRrQJgsOzsiFeDL_brADpm4S2R-5vwrGYs429sXRDod-jwRfMDt70u4lHtncAtL6Tm3Izk3X1T4GpRIO8vrsazPA-km7wcCid0ZB\" style=\"height:324px; width:320px\" /></p>\r\n\r\n<p>Amazing picture quality, stunning design and a minimal footprint make the 21.5-inch I2281FWH a smart addition to your home or office. This display&rsquo;s ultra-slim profile and eye-catching base are sure to get people talking. The on-screen performance is just as impressive &ndash; the AH-IPS panel provides virtually borderless viewing and uniform colors from nearly any angle. With a built-in headphone jack and HDMI and VGA connectors, this monitor is also ideal for using multiple devices like computers and game consoles. Flicker-free technology optimizes the brightness to reduce eye strain, no matter what you&rsquo;re doing.</p>\r\n\r\n<p>Monitor Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;21.5 inch&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nResolution&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1920x1080 PX&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nRefresh rate&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;60Hz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nResponse time&nbsp; &nbsp; &nbsp;&nbsp;4 ms&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nPanel type&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IPS<br />\r\nBrightness&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;250 cd/m&sup2;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - AOC I2281FWH, Series - Business, Display Size (Inch) - 21.5 inch, Shape - Widescreen, Display Type - FHD WLED IPS Ultra Slim Display, Display Resolution - 1920 x 1080, Brightness (cd/m2) - 250cd/m2, Contrast Ratio (TCR/DCR) - 1000:1 (static), 50M:1 (dynamic), Response Time (ms) - 4ms, Refresh Rate (Hz) - 60Hz, VGA Port - 1, HDMI Port - 1, Aspect Ratio - 16:9, Viewing Angle - 178 degree (H &amp;amp; V), Dimensions - 500 x 382 x 150mm, Others - Panel: IPS, Backlight: WLED, Active Screen Area: 477.5x268.5 mm, Pixel Pitch (H) (V): 0.248, Display Colours: 16.7 Million, Scanning Frequency: 30-83khz/50-76hz, Audio output: Headphone out (3.5mm), Powersupply: External, Powersource: 100 - 240V 50/60Hz, Power Consumption On: 22 watt, MTBF: 50.000 hours, weight: 2.65Kg, Color - Black, Specialty - Amazing picture quality, stunning design and a minimal footprint, This displays ultra-slim profile and eye-catching base are sure to get people talking, The on-screen performance is just as impressive, the AH-IPS panel provides virtually borderless viewing and uniform colors from nearly any angle, With a built-in headphone jack and HDMI and VGA connectors, this monitor is also ideal for using multiple devices like computers and game consoles, Flicker-free technology optimizes the brightness to reduce eye strain, Asymmetric Stand, Warranty - 3 year(AOC I2281FWH)</p>', '10200', '5', '2019-12-18 15:11:33', NULL),
(5, 20, 24, 'Delux KA150', 'Delux', 'others_images/BXkcr.jpg', '<p><strong>Logitech Deluxe - keyboard-&nbsp;</strong>Delux KA150 Wired multimedia keyboard. Flat key design. USB 12 multimedia keys. Composite 12 function keys. Laser Print characters. Unique appearance. Connectivity of USB interface. Plug and play simplicity. Compatibility/System requirements Windows 95, 98, Me, NT 4.0, 2000 and XP, IBM PC or compatible system.</p>\r\n\r\n<ul>\r\n	<li>Type: Wired multimedia keyboard</li>\r\n	<li>USB type: 12 multimedia keys</li>\r\n	<li>Laser Print characters<br />\r\n	&nbsp;</li>\r\n</ul>', '500', '30', '2021-02-18 03:04:31', '2021-02-18 03:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alifhossain174@gmail.com', '$2y$10$D8R6XoCCrEPRH/H/FyfLpu4mDGNCENSF0qNmWrCoJ9gvaXykIyOkS', '2019-10-12 15:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `power_supplies`
--

CREATE TABLE `power_supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `watt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `power_supplies`
--

INSERT INTO `power_supplies` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `watt`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(2, 18, 19, 'Thermaltake W0422RE Litepower Black 350W Non Modular Power Supply', 'Thermaltake', 'psu_images/Liryf.jpg', '<p>Model - Thermaltake Litepower Black 350W, Type - ATX 12V V2.2, PSU Category - Non Modular, Series - Litepower Series, Maximum Power - 350WT, Input Voltage - 230V, Input Frequency Range - 60Hz - 50Hz, Input Current - 4A, Over Voltage Protection - Yes, Fan Size - Yes, 120mm, ATX Main Connectors - 1, SATA Power Connectors - 2, 4-Pin Peripheral Connectors - 5, Floppy Connectors - 1, MTBF - 100,000 hours, Dimension( W/H/D) - 150 x 85.1 x 141mm, Warranty - 3 Year, Part No - W0422RE</p>', '350', '2450', '10', '2019-11-30 16:09:11', NULL),
(4, 18, 19, 'Value Top TP-ATX550 550W Real Power Supply', 'Value Top', 'psu_images/tEPwM.jpg', '<p>Model - Value Top TP-ATX550, PSU Category - Non Modular, Maximum Power - 550W, Warranty - No Warranty, Country of Origin - China, Made in/ Assemble - China</p>', '550', '3400', '10', '2019-11-30 16:12:03', '2019-11-30 16:24:26'),
(6, 18, 18, 'Thermaltake Smart BX1 RGB 650W Non Modular 80 Plus Bronze Certified Power Supply', 'Thermaltake', 'psu_images/ZjcY1.jpg', '<h2>Thermaltake Smart BX1 RGB<br />\r\n80 PLUS Bronze certified non-modular PSU with 256-color 10 LED RGB fan.</h2>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://lh5.googleusercontent.com/x0At4eeHDR8S-6ulApE_zoKyZcM8PatSnh5FRjAuXia3Qc-xJZmuIc8OlfX2SEqG55Rn2_euMuQAUinHuQrW6o5CG868MnGtkW125RlSf2K2xX4pesp93gm9Zh2Ew61ybX9dh4Pr\" style=\"height:612px; width:598px\" /></p>\r\n\r\n<h2>Smart BX1 RGB 650W</h2>\r\n\r\n<p>Built to deliver 80 PLUS Bronze efficiency, Smart BX1 RGB series is available in 550W, 650W, and 750W models. The preinstalled 10 LED RGB fan provides excellent airflow, and also 3 lighting modes, 7 color options, LED Off, and a built-in memory function, which saves the colors applied and insure the same color selection every time you boot your PC.<br />\r\nComes with premium components, stable continuous power output at 40℃, and ample 5-year warranty, its near silent operation, trouble free installation and reliable performance have made itself satisfy the market where value-oriented users are looking for a power supply with advanced features and aesthetic appeal.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh6.googleusercontent.com/u6Eoj7Rr-bGyARYic0HxmCg4ydiz2Y5Dr7erIF1aks2VGYrnJ_jce7sFdevgC0O6tXihVm68PidA2FkXdz7i57tfOolgDIkfUKBdgAzrGEudWFeFOUEY6UgTZ3UHESwFKeXTd2zy\" style=\"height:489px; width:591px\" /></p>\r\n\r\n<h2>10 RGB LEDs Preinstalled</h2>\r\n\r\n<p>The 10 RGB LEDs come preinstalled on the 120mm fan. Capable of displaying 7 colors(Red, Green, Blue, Yellow, Purple, Light Blue, and White), 3 illumination modes including Pulse, Full-lighted and RGB Cycle, and an LED Off mode.<br />\r\n* All images are for reference only; actual specification and lighting effects are based on the real product.</p>\r\n\r\n<p>&nbsp;&nbsp;<img alt=\"\" src=\"https://lh6.googleusercontent.com/GiqyLBMu7gCdEKtQi0DErER4ChlmbDyOQ3dO_WyTvrK5BcESw1WfBYO_vgb0VFVzYS3yiDyIZ01lGqb7fHHvXGKX_3lLTU_m7qYhE-Lmobq3xuKuvUZvvLi5HMY0xWzuU5cADo7j\" style=\"height:487px; width:624px\" /></p>\r\n\r\n<h2>One Button to Your Desired Color</h2>\r\n\r\n<p>Adding personal appeal to your build has never been so easy by just pressing one RGB lighting button! There is also a built-in memory function to save the color applied and insure the same color selection every time you boot your PC.</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://lh3.googleusercontent.com/a7PjHfiaB3jF40PpS4uolWzbpubE5nMsB2KiuUZkOR1dJOsCcHitQkjikNdBaZ0zqJcC8_QMsO4ZOV-rr2gaM50246FOkqePcNXU8Dh-OcO2ZicjSS1siSbtlJbupGvnlb0b_jyj\" style=\"height:487px; width:584px\" /></p>\r\n\r\n<h2>Ultra Quite 120mm Hydraulic Bearing Fan</h2>\r\n\r\n<p>Featuring an 120mm Hydraulic Bearing Fan with intelligent RPM control to guarantee superior cooling performance and silent operation.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh4.googleusercontent.com/tNjvCZtbzpl5h3647vL11-cl-2xmXk3dKaD_Ywm-eqNQdc3PzniOi0Hh-Vht8KeXKDZ0Wa7ajBZAf50DFsMxfDxVS9K7a-HvRbL3VCID6JogvLd21DNKiQCbQxzqzlgDiXrOC-E1\" style=\"height:525px; width:558px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/-0V6ondW-CiKXinAR8Kvz0jGkY8bqLigTf3zoDrPPhKjvf2A-fANPKB3W4rvHKTlNkzrJbz8XWDwkoY5XVr-_xQJUzbkT4Zf7NhgMM-o9681EzEe_9VRj5R9yRgvgcmnOlW91xk9\" style=\"height:377px; width:624px\" /></p>\r\n\r\n<h2>80 mV Low Ripple Noise</h2>\r\n\r\n<p>All ripples are lower than 80mV for high stability on +12V, +5V, or +3.3V from 0% to 100% load to ensure a high quality power supply. Low ripple noise will keep your performance-critical components, such as high-end graphics cards, to operate reliably for longer.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh6.googleusercontent.com/wz_rI3gjzRGXPq5t7_OSQXYZnZejuJGfW-I_W-Z-OqhaBkf84uO6YW1JIsKKz6p_DDK7HOCq_b4LHPMU9xDJLTezEZ9xusd5b3GAaj3O64kiCpTima749oIM-aGpOPyKyQU-i01n\" style=\"height:524px; width:624px\" /></p>\r\n\r\n<h2>High Quality Japanese Main Capacitor</h2>\r\n\r\n<p>Greatly improves the durability and offers the highest stability and reliability.</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://lh3.googleusercontent.com/N7ebQye3P0DJiyIhQjdN5LuZvsnBgunfHuuCa1h4i9lyaqZNyKqWj2EgcppmEtcSKGT6WzwE1BZdvX5IMw3fSMLbb-ORTUbQEXiOilx-uzxW4jO9MmgdQvM8hSZlX9ElBKJcmkLl\" style=\"height:496px; width:595px\" /></p>\r\n\r\n<h2>High Amperage Single +12V Rail</h2>\r\n\r\n<p>Powerful single +12V rail ensures a stable and reliable supply to other PC components.</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://lh3.googleusercontent.com/AKeqPe0DhQnKTA6Wz-jTdkjLmhoXh7uNsWok00TSdxHBYrYBkJh1y51yi_C0SMruxEb2SMQqG8flE3dSlyXEgupV8XxaHwTldRWGwx9W_fqaNK0qk794-IEFOfGz8JC3LN4juiBJ\" style=\"height:498px; width:594px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh6.googleusercontent.com/TkndkQ24qD2pRBGkKIAjFhSoIIuXIYIqgZe6LhaYSAyjGWqdm0_TrQgdQwlvhxU37AVK7OQ2fDkx0D3rapRP5_heLVYXQdUwS75fb8PVMohVdGzWeAbnd07_GuwMfimlxWiwtsSw\" style=\"height:273px; width:624px\" /></p>\r\n\r\n<h2>Multiple Connectors</h2>\r\n\r\n<p>Soft black cables come with sleeve cabling design to make cable installation an easy task while powering the system at an advantageous voltage.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh5.googleusercontent.com/q6ncO7_rUTKc2JZoHha62mWzxJnDOekun3lkJBMqXIZJKEPzEA31MdmmzmUaxCHow-lB_B9O_GJVFmSzTwgHfwFaHaieWNfWMJ2mR-as3m3rs9Z6uU_cNlmMY-ckg98OAyshiGIt\" style=\"height:448px; width:624px\" /></p>\r\n\r\n<h2>80 PLUS Bronze Certified and Intel C6/C7 States Ready</h2>\r\n\r\n<p>Smart BX1 RGB series saves energy through its high energy efficiency up to 88% and is certified to 80 PLUS&reg; Bronze. It has been optimized to work with all generations of Intel&rsquo;s processors to achieve maximum energy saving.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh3.googleusercontent.com/_6asG4IJlNyqO26zt5H3FXmXQDAnsXkxyis2odg2fFyYlZbXnzI5iVc6cJcaXyu2BYtSf72EdlIvrlvd78tTH4S-6mcMpq2BhaohfPTC36rhcIpvorjeEcgHa4WNbY3MHc-9c6OI\" style=\"height:491px; width:592px\" /></p>\r\n\r\n<h2>RGB Lighting Gives Best Aesthetics for All Chassis</h2>\r\n\r\n<p>Smart BX1 RGB Series is the best idea for users to go with when they are looking for an RGB PSU that permits remarkable functionality and aesthetics in all cases.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh5.googleusercontent.com/-JTnRZBvOBJ51grOwsvgu8WiDFFmwSd2ZrW6kHTpknAiKO8ejcEnbNYGt83D2gn55BHcZvKQLY9bs7YT_VBoBDJ7Ocv1SP3ZoYoJ_8Ym9r5ARrR9Ck117YB8sH3fVTWr53d-OW6S\" style=\"height:497px; width:590px\" /></p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://lh3.googleusercontent.com/YKmG1BsZzCm0YThIHT9IkmeluMmRBKqoToC1TSzXFr1lMeBaSvxt0IAFpqWwls8DuFVH4-CSSb_xtygS-IrNPhdc7Lj0379sfmk9Pix95lvhGa67eCjh4vHa99TZVD_aZa5jgIi_\" style=\"height:494px; width:595px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - Thermaltake Smart BX1 RGB, Type - ATX 12V v2.4 and EPS v2.92, PSU Category - Non Modular, Series - Smart BX1 RGB series, Maximum Power - 650W, Input Voltage - 230V, Input Frequency Range - 50Hz, Input Current - 10A max., Over Voltage Protection - Yes, Efficiency - 80 Plus Bronze Certified, Fan Size - Yes, 120mm, ATX Main Connectors - 1, EPS Connectors - 1, PCIe Connectors - 2, SATA Power Connectors - 6, 4-Pin Peripheral Connectors - 4, Floppy Connectors - 1, MTBF - 100,000 hours, Dimension( W/H/D) - 150 x 86 x 140mm, Others - Color: Black, RGB Fan: Yes, Form Factor: ATX, Peak Output Capacity: 780W, PFC (Power Factor Correction): Active PFC, Power Good Signal: 100-500 msec, Hold Up Time: &gt; 16msec at 70% of full load, Storage Humidity: 10% to 95%, non-condensing, Cooling System: 12cm Fan Hub, Speciality: 10 RGB LEDs Preinstalled, Ultra Quite 120mm Hydraulic Bearing Fan, &lt;80 mV Low Ripple Noise, High Quality Japanese Main Capacitor, 80 PLUS 230V Bronze Certified and Intel C6/C7 States Ready, Part No - PS-SPR-0650NHSABE-1, Warranty - 5 Years(Thermaltake Smart BX1 RGB)</p>', '650', '6600', '5', '2019-12-14 17:46:23', NULL),
(7, 18, 18, 'Thermaltake Toughpower GF1 ARGB 650W 80 Plus Gold Fully Modular Power Supply', 'Thermaltake', 'psu_images/O7ZpM.jpg', '<p>Model - Thermaltake Toughpower GF1 ARGB, PSU Category - Fully Modular, Series - Toughpower Series, Maximum Power - 650W, Input Voltage - 100V - 240V, Input Frequency Range - 50Hz - 60Hz, Input Current - 10A, Over Voltage Protection - Yes, Efficiency - 80 Plus Gold Certified, Fan Size - Yes, 140mm, Zero RPM Fan Mode - Yes, ATX Main Connectors - 1, EPS Connectors - 1, PCIe Connectors - 4, SATA Power Connectors - 9, 4-Pin Peripheral Connectors - 4, Floppy Connectors - 1, MTBF - 120,000 hours, Dimension( W/H/D) - 150 x 86 x 160mm, Warranty - 10 Years, Others - Color: Black, RGB FAN: Yes, FORM FACTOR: ATX, PFC (POWER FACTOR CORRECTION): Active PFC, COOLING SYSTEM: 14cm hydraulic bearing fan, Feature: TT Premium Edition, Illuminate with Twisting Blade, Shining from Perfect Circles, Sync with Motherboard ARGB Software, Zero Cable Platform, Ultra Quiet Smart Zero Fan, ???30 mV Low Ripple Noise, Fully Modular Low-profile Flat Black Cables, High Amperage Single +12V Rail Design, 80 PLUS Gold Certified and Intel C6/C7 States Ready, Part No - PS-TPD-0650F3FAGE-1(Thermaltake Toughpower GF1 ARGB)</p>', '650', '10700', '10', '2019-12-14 17:48:27', NULL),
(8, 18, 19, 'CORSAIR VS-550 Power Supply', 'CORSAIR', 'psu_images/mX9TX.png', '<p>CORSAIR&nbsp;VS550: the entry-level 240V power supply with high-end features The Corsair VS550 is a great choice if you&rsquo;re building a home or office system with lower power demands, but you still demand the compatibility and reliability that Corsair is known for. Real power The VS550 delivers a guaranteed 550 Watts of continuous power. With 0.99 Active Power Factor Correction, you get the peace of mind from knowing that your components are protected from uneven power delivery. And, a dedicated single +12V rail saves you from the hassle of balancing your components across multiple power cables.&nbsp;The 120mm fan is thermally controlled, so it only spins at maximum speed when it&rsquo;s pushed hard &ndash; and even at full load, it&rsquo;s pretty quiet. Smart design features like this are why VS550 offers up to 85% efficiency. Your PC system will generate less heat, and you&rsquo;ll enjoy lower energy bills.&nbsp;The black powder-coated enclosure and the black-sleeved cables give any system a polished look. You&rsquo;re building a PC, not a battleship, and with the VS550 you can avoid that look of unpainted steel that you&rsquo;ll find on so many entry-level power supplies.</p>', '550', '4400', '15', '2019-12-19 02:11:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `processors`
--

CREATE TABLE `processors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graphics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processors`
--

INSERT INTO `processors` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `socket`, `ram_type`, `graphics`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(12, 8, 2, 'Intel Core 2 Quad Q6600 2.4GHz 4 Cores 8MB Cache LGA 775 TDP 95 watts (Used)', 'Intel', 'processor_images/57mrT.JPG', '<p>The <strong>Intel Core 2 Quad</strong> processor is the latest in cutting edge processor technology for the desktop PC. Based on the Intel Core micro-architecture, the Intel Core 2 Quad processor delivers four complete execution cores within a single processor, delivering unprecedented performance and responsiveness. More instructions can be carried out per clock cycle, shorter and wider pipelines execute commands more quickly, and improved bus lanes move data throughout the system faster. Four dedicated, physical threads help operating systems and applications deliver additional performance, so you can experience better multi-tasking and multi-threaded performance across many types of applications and workload. A 4-pin connector is included for fan speed control to help minimize the acoustic noise levels generated from running the fan at higher speeds for thermal performance. Intel Virtualization Technology (Intel VT) Intel Extended Memory 64 Technology (Intel EM64T) Execute Disable Bit Digital Thermal Sensor (DTS) Intel designed Thermal Solution for boxed processors CPU Speed - 2.40 GHz PCG - 05B Bus Speed - 1066 MHz Bus/Core Ratio - 9.0 L2 Cache size - 8 MB L2 Cache Speed - 2.40 GHz Package Type - LGA 775 Core Stepping - G0 S-spec - SLACR Core Voltage - 0.85V-1.5V.</p>', 'LGA 775', 'DDR3', 'Intel HD', '1000', '11', '2020-04-09 05:57:40', '2020-10-24 14:58:59'),
(13, 8, 2, 'Intel Core 2 Quad Q6700 2.66GHz 4 Cores 8MB Cache LGA 775 TDP 105 watts (Used)', 'Intel', 'processor_images/A8f6s.jpg', '<p><strong>Intel&reg; Core&trade;2 Quad-Core Processor Product Highlight</strong><br />\r\nBy including up to 8MB of shared L2 cache and Front Side Bus speeds of up to 1066 MHz, the Intel&reg; Core&trade;2 Quad processor pushes the technological innovation envelope farther than ever before. For demanding users, this means the latest and most advanced software applications will open and work faster with excellent responsiveness. When used with the latest multimedia software and next-generation games, dropped frames, long waiting times and stuttering performance are history.</p>', 'LGA 775', 'DDR3', 'Intel HD', '1800', '11', '2020-04-09 06:02:18', '2020-04-11 01:35:48'),
(14, 8, 2, 'Intel Core 2 Quad Q8200 2.33GHz 4 Cores 4MB Cache LGA 775 TDP 95 watts (Used)', 'Intel', 'processor_images/IMvXj.jpg', '<h3>From the Manufacturer</h3>\r\n\r\n<p>The Intel Core 2 Quad Q8200 brings four computing cores running at 2.33 GHz in a single processor for the ultimate in efficiency and performance. It features 4 MB of L2 cache and a 1333 MHz front side bus, and it uses the LGA775 socket for wide compatibility with motherboards. The processor features Intel&#39;s 45nm architecture and delivers multimedia experiences with greater speed and responsiveness. With the Q8200, demanding users can now accomplish more in less time.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Stunning Performance Runs Latest Software with Ease</strong><br />\r\nStarting with Intel&#39;s revolutionary new high-efficiency, high-performance 45nm processor technology, Intel engineers decided to go one step farther in the performance department. By including 4 MB of shared L2 cache and a front side bus speed of 1333 MHz, the Q8200 processor pushes the technological innovation envelope farther than ever before.</p>\r\n\r\n<p>For users, this means the latest and most advanced software applications can open and run faster with superior responsiveness. When used with the latest multimedia software and next-generation games, dropped frames, long waiting times, and stuttering performance are things of the past.</p>\r\n\r\n<p><strong>New Technologies Provide Higher Performance and Better Energy Efficiency</strong><br />\r\nBy using hafnium, a naturally occurring element, Intel engineers were able to shrink the size of new Intel processors and pack more computing technology into less space. The processor also features Intel&#39;s Intelligent Power Capability, which allows it to turn off parts of itself when it isn&#39;t in use. The result is improved performance with less energy wastage and a reduction of heat and noise.</p>\r\n\r\n<p>Intel has packed the Core 2 Quad Q8200 with cutting-edge technologies for better performance. Wide Dynamic Execution allows the processor to do more tasks simultaneously by enabling the delivery of more instructions per clock cycle. Intel&#39;s Advanced Smart Cache technology improves performance by physically placing data closer to the processing cores. And Smart Memory Access, which increases available data bandwidth, means you&#39;ll experience less slowdown while multi-tasking, so you can get more done.</p>\r\n\r\n<p><strong>Multimedia Acceleration for Faster Content Creation</strong><br />\r\nIf you are editing HD video, manipulating professional-grade photos, or working with music, the Q8200 will let your computer keep up with your imagination. The processor features Intel&#39;s Advanced Digital Media Boost for accelerating performance of a wide range of applications including video, gaming, speech and image, and photo processing among others. Additionally, Intel&#39;s HD Boost technology further improves the performance of SSE4-optimized applications, such as video editing and encoding in high definition.</p>\r\n\r\n<p><strong>Fewer Multi-tasking Slowdowns</strong><br />\r\nWith four processing cores, you&#39;ll be able to juggle more projects and more applications without experiencing the slowdown that you typically see with traditional single-core processors. Processing tasks are split up and distributed to the four different cores so the Q8200 doesn&#39;t get bogged down.</p>\r\n\r\n<p><strong>Get a Leg Up on the Latest Games</strong><br />\r\nNext-generation gaming is more than just pretty environments and smooth motion. Behind the incredible visual realism of waterfalls or the unlucky ricochet of a bullet are intense, high-speed calculations of asset streaming, terrain generation, 3D rendering, and physics effects. When running select next-generation games, each of the cores in the Q8200 can be dedicated to each of these individual processes, resulting in smoother, more lifelike graphics and further blurring the line between virtual and reality.</p>', 'LGA 775', 'DDR3', 'Intel HD', '800', '10', '2020-04-09 06:13:10', '2020-04-11 01:35:29'),
(15, 8, 2, 'Intel Core 2 Quad Q8300 2.5 GHz 4 Cores 4MB Cache LGA 775 TDP 95 watts (Used)', 'Intel', 'processor_images/GyMK3.jpg', '<p>Product DescriptionIntel Core 2 Quad Q8300 2.5GHz Processor BX80580Q8300 Intel Processors Amazon.comAmazon.com Product Description The Intel Core 2 Quad Q8300 brings four computing cores running at 2.5 GHz in a single processor for the ultimate in efficiency and performance. It features 4 MB of L2 cache and a 1333 MHz front side bus, and it uses the LGA775 socket for wide compatibility with motherboards. With the Q8300, demanding users can now accomplish more in less time at an excellent price.</p>', 'LGA 775', 'DDR3', 'Intel HD', '1000', '11', '2020-04-09 06:28:04', '2020-04-11 01:35:12'),
(16, 8, 2, 'Intel Core 2 Quad Q8400 2.66 GHz 4 Cores 4MB Cache LGA 775 TDP 95 watts (Used)', 'Intel', 'processor_images/zXSDd.jpg', '<p>The Intel Core 2 Quad Q8400 brings four computing cores running at 2.66 GHz in a single processor for the ultimate in efficiency and performance. It features 4 MB of L2 cache and a 1333 MHz front side bus, and it uses the LGA775 socket for wide compatibility with motherboards. The processor features Intel&#39;s 45nm architecture and delivers multimedia experiences with greater speed and responsiveness. With the Q8400, demanding users can now accomplish more in less time.</p>', 'LGA 775', 'DDR3', 'Intel HD', '1200', '10', '2020-04-09 06:34:22', '2020-04-11 01:34:56'),
(17, 8, 2, 'Intel Core 2 Quad Q9400 2.66 GHz 4 Cores 6MB Cache LGA 775 TDP 95 watts (Used)', 'Intel', 'processor_images/UAPAc.jpg', '<p>Process Type: Intel Core 2 Quad Processor Q9400, Frequency: 2.66 GHz, FSB: 1333 MHz, Cache: 6 MB, Process: 45 nm, Socket: Socket 775, Power Consumption: 95 W, Package: Retial, This processor is a Quad Core Processor, This processor supports Intel SpeedStep Technology, This processor supports Intel Extended Memory 64 Technology (EM64T), This processor supports Intel Virtualization Technology, This processor supports Enhanced Halt State (C1E), This processor supports Execute Disable Bit Capability, This processor supports Intel Thermal Monitor 2</p>', 'LGA 775', 'DDR3', 'Intel HD', '1800', '10', '2020-04-09 06:41:06', '2020-04-11 01:34:37'),
(19, 8, 2, 'Intel Core 2 Quad Q9650 3.00 GHz 4 Cores 12MB Cache LGA 775 TDP 95 watts (Used)', 'Intel', 'processor_images/w9PEo.jpg', '<p>Leaders of the pack seeking monster performance, look no further. With four execution cores, the Intel Core 2 Quad processor blows through processor-intensive tasks in demanding multitasking environments and makes the most of highly threaded applications. Whether you&#39;re creating multimedia, annihilating your gaming enemies, or running compute-intensive applications at one time, new quad-core processing will change the way you do everything. Pioneer the new world of quad-core and unleash the power of multithreading. Intel Wide Dynamic Execution, enabling delivery of more instructions per clock cycle to improve execution time and energy efficiency Intel Intelligent Power Capability, designed to deliver more energy-efficient performance and smarter battery performance in your laptop Intel Smart Memory Access, improving system performance by optimizing the use of the available data bandwidth Intel Advanced Smart Cache, providing a higher-performance, more efficient cache subsystem. Optimized for multi-core and dual-core processors Intel Advanced Digital Media Boost, accelerating a broad range of applications, including video, speech and image, photo processing, encryption, financial, engineering and scientific applications. Now improved even further on 45nm versions with Intel HD Boost utilizing new SSE4 instructions for even better multimedia performance Intel Virtualization Technology Intel 64 Architecture</p>', 'LGA 775', 'DDR3', 'Intel HD', '3000', '9', '2020-04-09 06:54:38', '2020-08-30 14:19:59'),
(20, 8, 2, 'Intel Core i3 2100 2nd gen 3.10GHz 2 Cores 3MB Cache LGA1155 TDP 65 W with HD Graphics 2000 (Used)', 'Intel', 'processor_images/PG5td.jpg', '<p>This is a dual-core processor that has a clock speed of 3.1 GHz. It comes with 3 MB of Intel Smart Cache, built on a 32 nm manufacturing process and has a max TDP of 65 Watts. These are Intel socket LGA-1155 Sandy Bridge processors that feature Intel&rsquo;s integrated HD graphics. These processors are offered at the lower end of Intel&rsquo;s processor line-up and offer solid, if not spectacular performance levels in Intel&#39;s new 2nd Generation CPU lineup.</p>', 'LGA 1155', 'DDR3', 'Intel HD Graphics 2000', '1500', '20', '2020-04-09 15:02:27', '2020-04-11 01:34:04'),
(21, 8, 2, 'Intel Core i3 3220 3rd gen 3.30GHz 2 Cores 3MB Cache LGA 1155 TDP 55 W with HD Graphics 2500 (Used)', 'Intel', 'processor_images/OdlUG.jpg', '<p>The&nbsp;<strong>Intel Core i3-3220</strong>&nbsp;is a dual-core desktop processor based on the Ivy Bridge architecture. Due to Hyperthreading, the two cores can handle up to four threads in parallel, leading to better utilization of the CPU.&nbsp;Each core offers a base speed of 3.3 GHz with no support for Turbo Boost.</p>\r\n\r\n<p>Ivy Bridge is an enhanced&nbsp;<strong>d</strong><strong>ie shrink</strong>&nbsp;of the Sandy Bridge architecture with improvements on both GPU and CPU performance. The CPUs are produced in 22nm (versus 32nm Sandy Bridge CPUs) and the first to introduce&nbsp;<strong>3D transistors&nbsp;</strong>for&nbsp;increased energy efficiency when compared to similarly clocked Sandy Bridge processors. Other new features are integrated PCI Express 3.0 and&nbsp; DDR3(L)-1600 support.</p>\r\n\r\n<p>The&nbsp;<strong>performance</strong>&nbsp;of the Core i3-3220 is slightly above a similarly clocked Sandy Bridge processor due to some architectural improvements. Compared to AMD&#39;s fastest desktop APU (A10-5800K), the&nbsp;Core i3-3220 offers higher performance per thread, but features less cores (2 instead of 4). However, overall performance is quite similar.</p>\r\n\r\n<p>The integrated&nbsp;<a href=\"#\" target=\"_self\">Intel HD Graphics 2500</a>&nbsp;GPU offers 6 Execution Units (EUs) clocked at 650 MHz up to 1050 MHz with Turbo Boost. The very low performance is only sufficient for some older and less demanding games.</p>\r\n\r\n<p>The total power consumption of the CPU, graphics and memory controller is specified by Intel at&nbsp;<strong>77 watts</strong>&nbsp;(TDP).</p>', 'LGA 1155', 'DDR3', 'Intel HD Graphics 2500', '1700', '21', '2020-04-09 15:11:28', '2020-04-11 01:33:50'),
(22, 8, 2, 'Intel Core i5 2400 2nd gen 3.40GHz 4 Cores 6MB Cache LGA 1155 TDP 95 W with HD Graphics 2000 (Used)', 'Intel', 'processor_images/oRVs1.jpg', '<p>Part of Intel&#39;s family of 2nd generation Intel Core computer processors, the Intel Core i5-2400 Processor delivers speed and smooth performance --whether you&#39;re uploading and editing home videos or checking your e-mail. This quad-core processor runs at 3.10 GHz and uses the LGA1155 socket. It features a 6 MB L3 cache, Intel Turbo Boost Technology 2.0, and Virtualization Technology to improve speed and computing productivity. Built-in visual technologies, like Clear Video and InTru3D, support high-definition and Blu-ray playback.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Quad-Core Processor Running at 3.10 GHz for Fast Performance</p>\r\n\r\n<p>The Intel Core i5-2400 has four processing cores running at 3.10 GHz. It features a 6 MB L3 shared cache that is dynamically allocated to each processor core, based on workload. This reduces latency and improves performance.</p>\r\n\r\n<p>Additionally, the i5 comes with Advanced Vector Extensions, a set of instructions to improve software performance for intensive applications like audio processing, audio codecs, and image and video editing applications.</p>\r\n\r\n<p>Turbo Boost for Extra Processor Speed</p>\r\n\r\n<p>The Core i5-2400 features Intel Turbo Boost Technology 2.0, which delivers a burst of processor speed automatically when the workload demands additional performance. The technology dynamically increases the processor&#39;s frequency as needed by taking advantage of thermal and power headroom when operating below specified limits. The result is adaptive performance that&#39;s more intelligent and energy efficient.</p>\r\n\r\n<p>Built-In Visuals Provide Rich, Steady Graphics</p>\r\n\r\n<p>The built-in visuals of the Intel Core i5-2400 Processor deliver a seamless graphic experience when you&#39;re viewing and manipulating pictures and media on your PC. They also eliminate the need for a discrete graphics card, reducing power consumption and system cost.</p>\r\n\r\n<p>Intel Quick Sync Video enables quick conversions of video files for portable media players or online sharing. Experience sharp images and rich color with Clear Video Technology, which provides visual quality and color fidelity enhancements for vivid high-definition and Blu-ray playback. Intel HD Graphics offers enhanced 3D performance for immersive mainstream and casual gaming without hesitations or interruptions.</p>\r\n\r\n<p>The Intel Core i5 is also equipped with Intel InTru3D, which provides stereoscopic 3D Blu-ray playback in full 1080p resolution and premium audio via HDMI 1.4.</p>\r\n\r\n<p>Intel Virtualization Technology</p>\r\n\r\n<p>Intel Virtualization Technology allows multiple &quot;virtual&quot; environments to function on one hardware platform. It offers improved manageability, limiting downtime and maintaining productivity by isolating computing activities into separate partitions.</p>\r\n\r\n<p>Optimized for Energy Efficiency</p>\r\n\r\n<p>The Intel Core i5 is designed to optimize every watt of electricity, resulting in a more energy-efficient system that is cooler and cheaper to run. In a system with other energy-efficient components, the processor can meet Energy Star specifications.</p>', 'LGA 1155', 'DDR3', 'Intel HD Graphics 2000', '2800', '10', '2020-04-09 15:22:31', '2020-09-23 18:42:15'),
(23, 8, 2, 'Intel Core i5 3470 3rd gen 3.60GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', 'Intel', 'processor_images/rOAKT.jpg', '<p>The&nbsp;<strong>Intel Core i5-3470</strong>&nbsp;is a fast LGA1155 quad-core desktop processor based on the Ivy Bridge architecture. Each core offers a base speed of 3.2 GHz, but can dynamically increase clock rates with Turbo Boost up to 3.4 GHz (for 4 active cores), 3.5 GHz (for 2 active cores) and 3.6 GHz (for 1 active core).</p>\r\n\r\n<p>Ivy Bridge is an enhanced&nbsp;<strong>d</strong><strong>ie shrink</strong>&nbsp;of the Sandy Bridge architecture with improvements on both GPU and CPU performance. The CPUs are produced in 22nm (versus 32nm Sandy Bridge CPUs) and the first to introduce&nbsp;<strong>3D transistors&nbsp;</strong>for&nbsp;increased energy efficiency when compared to similarly clocked Sandy Bridge processors. Other new features are integrated PCI Express 3.0 and&nbsp; DDR3(L)-1600 support.</p>\r\n\r\n<p>The&nbsp;<strong>performance</strong>&nbsp;of the Core i5-3470 is slightly above a similarly clocked Sandy Bridge processor due to some architectural improvements. Compared to AMD&#39;s fastest desktop CPU (FX-8350), the&nbsp;Core i5-3470 offers higher performance per thread, but features less cores (4 instead of 8). Overall, the Core i5 is just slightly faster in most applications.</p>\r\n\r\n<p>The integrated&nbsp;<a href=\"https://www.notebookcheck.net/Intel-HD-Graphics-2500.69812.0.html\" target=\"_self\">Intel HD Graphics 2500</a>&nbsp;GPU offers 6 Execution Units (EUs) clocked at 650 MHz up to 1100 MHz with Turbo Boost. The very low performance is only sufficient for some older and less demanding games.</p>\r\n\r\n<p>The total power consumption of the CPU, graphics and memory controller is specified by Intel at&nbsp;<strong>77 watts</strong>&nbsp;(TDP).</p>', 'LGA 1155', 'DDR3', 'Intel HD Graphics 2500', '3000', '10', '2020-04-09 15:33:10', '2021-03-14 03:02:42'),
(24, 8, 2, 'Intel Core i5 3570 3rd gen 3.80GHz 4 Cores 6MB Cache LGA 1155 TDP 77 W with HD Graphics 2500 (Used)', 'AMD', 'processor_images/a7db6.jpg', '<p>The Intel Core i5-3570 is a quad-core processor, released in 2012 and is based on the Ivy Bridge technology, sporting four cores, each of them clocked at 3.4GHz and 6MB of L3 cache. In terms of raw specifications, the 3570 doesn&rsquo;t differ much from the i5 2500K- which is the core that set the standard for the 3570. However, two major difference that improve the performance of the 3570 are the change from 32nm- of the 2500K- to 22nm process technology and the introduction of Intel&rsquo;s 3D Tri-gate transistors. These two changes significantly boost the performance and gamer, or performance, enthusiasts will appreciate them greatly.</p>', 'LGA 1155', 'DDR3', 'Intel HD Graphics 2500', '4000', '15', '2020-04-10 01:55:35', '2021-03-14 03:32:51'),
(26, 8, 1, 'AMD Ryzen™ 9 5950X', 'AMD', 'processor_images/RKi4D.jpg', '<p>AMD&#39;s&nbsp;<strong>Ryzen 9 5950X</strong>&nbsp;is a powerful yet efficient CPU and is an irremovable thorn in Intel&#39;s side. Whether you need to build an enthusiast rig that doesn&#39;t require a specialist Threadripper motherboard or a gaming PC with more CPU power than you&#39;ll know what to do with, the Ryzne&nbsp;<strong>9 5950X</strong>&nbsp;is about as good as you can get</p>', 'LGA 1155', 'DDR4', 'AMD HD Graphics', '4500', '114', '2021-03-14 03:50:42', '2021-03-22 04:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `rams`
--

CREATE TABLE `rams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rams`
--

INSERT INTO `rams` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `bus_speed`, `ram_type`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(7, 15, 13, 'Adata 4GB DDR3 1600MHz Desktop RAM', 'ADATA', 'ram_images/oqpcH.jpg', '<p>Model - Adata 4GB, Capacity(MB) - 4GB, Type - DDR3, Bus Speed(MHz) - 1600MHz, Number of Pin - 240-pin, CAS Latency - CL11, Voltage - 1.35V, Warranty - Product Lifetime, Others - Module Type: VLP U-DIMM, Form Factor: Standard 1.18&quot; height, Suitable for: Desktop / Thin client, Rank: Single, Refresh: Auto-refresh / self-refresh, Speed: PC3L-12800, Part No - ADDX1600W4G11-SPU</p>', '1600', 'DDR3', '1850', '4', '2019-12-10 17:13:59', '2020-10-24 15:00:05'),
(11, 15, 12, 'Corsair Vengeance LPX (CMK8GX4M1A2400C16R) 8GB DDR4 6th Generation Ram', 'Corsair Vengeance', 'ram_images/VXJfG.jpg', '<p>Buy&nbsp;<em>Corsair Vengeance LPX 8GB</em>&nbsp;(1 x&nbsp;<em>8GB</em>)&nbsp;<em>DDR4</em>&nbsp;DRAM 2400MHz (PC4-19200) C16&nbsp;<em>Memory</em>&nbsp;Kit, Red:&nbsp;<em>Memory</em>&nbsp;... Ubit&nbsp;<em>6</em>&nbsp;Pack Latest PCI-E Riser Express Cable 16X to 1X (6pin / ... MSI Arsenal Gaming AMD Ryzen 2ND and 3rd&nbsp;<em>Gen</em>&nbsp;AM4 M.2 USB 3&nbsp;<em>DDR4</em>&nbsp;DVI HDMI Crossfire ATX Motherboard (B450 TOMAHAWK MAX II).</p>', '2400 MHz', 'DDR4', '4000', '2', '2021-03-14 04:05:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `shipping_id`, `grand_total`, `payment_type`, `payment_status`, `order_status`, `created_at`, `updated_at`) VALUES
(34, '4', '36', '50887.03', 'Cash On Delivery', '1', '1', '2019-12-21 03:24:39', '2019-12-21 10:05:41'),
(36, '4', '38', '3360', 'Stripe', '1', '1', '2019-12-21 10:28:08', '2019-12-21 10:28:53'),
(37, '4', '39', '38560', 'Cash On Delivery', '1', '1', '2019-12-21 10:30:48', '2019-12-21 10:46:56'),
(38, '4', '40', '73760', 'Cash On Delivery', '1', '1', '2019-12-21 10:42:50', '2019-12-21 10:46:58'),
(40, '4', '42', '8060', 'Stripe', '1', '1', '2019-12-23 07:56:47', '2019-12-23 07:57:58'),
(41, '4', '43', '23291.5', 'Cash On Delivery', '1', '1', '2020-03-16 15:47:49', '2020-03-16 15:59:28'),
(42, '17', '44', '11810', 'Stripe', '1', '1', '2020-04-09 19:14:41', '2021-02-18 00:55:33'),
(43, '18', '45', '3060', 'Cash On Delivery', '0', '1', '2020-08-30 14:22:49', '2021-02-18 00:56:01'),
(44, '18', '46', '11060', 'Cash On Delivery', '0', '1', '2020-09-01 19:26:36', '2021-02-18 00:56:07'),
(45, '20', '47', '10910', '0', '0', '1', '2021-02-18 01:08:42', '2021-02-18 01:19:11'),
(46, '20', '48', '14410', 'Cash On Delivery', '0', '1', '2021-02-18 01:18:06', '2021-02-18 01:19:36'),
(47, '22', '49', '960', 'Cash On Delivery', '1', '1', '2021-03-14 02:46:26', '2021-03-14 03:11:05'),
(48, '4', '50', '5585', 'Cash On Delivery', '1', '1', '2021-03-14 03:05:10', '2021-03-14 03:10:21'),
(49, '24', '51', '4560', 'Cash On Delivery', '1', '1', '2021-03-22 04:39:32', '2021-03-22 04:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `name`, `email`, `phone`, `division_id`, `district_id`, `area_id`, `postal_code`, `address`, `created_at`, `updated_at`) VALUES
(36, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '3', '1', '493', '1230', 'Uttara', '2019-12-21 03:24:38', NULL),
(38, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '2', '41', '52', '1230', 'Narsingdi', '2019-12-21 10:28:08', NULL),
(39, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '3', '1', '493', '1230', 'Uttara', '2019-12-21 10:30:48', NULL),
(40, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '5', '24', '494', '1230', 'Seroil', '2019-12-21 10:42:50', NULL),
(41, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '2', '43', '75', '151', 'Uttara, Dhaka-1230', '2019-12-22 13:36:28', NULL),
(42, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '1', '34', '3', '1230', 'Uttara, Dhaka-1230', '2019-12-23 07:56:47', NULL),
(43, '4', 'Fahim Hossain', 'alifhossain174@gmail.com', '0197986373', '3', '1', '493', '1205', 'Dhanmondi', '2020-03-16 15:47:49', NULL),
(44, '17', 'Hossain Villa', 'hossainvilla176@gmail.com', '01511237299', '5', '24', '494', '6100', 'Holding No.-176, Seroil, Ghoramara, Rajshahi-6100', '2020-04-09 19:14:41', NULL),
(45, '18', 'Pavel', 'rajiurrahmanraj2021@gmail.com', '01868752464', '6', '27', '408', '34332', 'fgsfasfasfs', '2020-08-30 14:22:49', NULL),
(46, '18', 'Pavel', 'rajiurrahmanraj2021@gmail.com', 'sdfds', '3', '2', '153', NULL, 'asdf', '2020-09-01 19:26:36', NULL),
(47, '20', 'Imam nayon', 'asjadhasan.ah@gmail.com', '01747848414', '1', '36', '19', '8340', 'House No.: 1085, Harun Master Bari. Adorsho Para, 6No. word, Pouroshova, CharFasson -8340.CharFasson, Bhola.', '2021-02-18 01:08:42', NULL),
(48, '20', 'Imam nayon', 'asjadhasan.ah@gmail.com', '01747848414', '1', '36', '19', '8340', 'House No.: 1085, Harun Master Bari. Adorsho Para, 6No. word, Pouroshova, CharFasson -8340.CharFasson, Bhola.', '2021-02-18 01:18:06', NULL),
(49, '22', 'Asjad', 'asjadhasan.ah@gmail.com', '+8801776141544', '1', '36', '19', '8340', 'House No.: 1085, Harun Master Bari. Adorsho Para, 6No. word, Pouroshova, CharFasson -8340.CharFasson, Bhola.', '2021-03-14 02:46:26', NULL),
(50, '4', 'josna', 'asjadhasan.ah@gmail.com', '01776141544', '3', '15', '249', '1230', 'Road - 23, Sector - 10, Uttara, Dhaka', '2021-03-14 03:05:10', NULL),
(51, '24', 'NASIMA BEGUM', 'nasima@gmail.com', '01748617188', '3', '4', '165', '1231', 'Gopalgong', '2021-03-22 04:39:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `category_id`, `subcategory_id`, `name`, `brand`, `image`, `details`, `storage_type`, `capacity`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(4, 16, 15, 'Western Digital Green 120GB 2.5 Inch SATAIII SSD', 'Western Digital', 'storage_images/lrMSs.jpg', '<h2>Western Digital Green</h2>\r\n\r\n<p><strong>ENHANCED STORAGE FOR YOUR&nbsp;EVERYDAY COMPUTING NEEDS</strong></p>\r\n\r\n<p>For fast performance and reliability, WD Green SSDs boost the everyday computing experience in your desktop or laptop PC.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Improved performance for everyday computing</h2>\r\n\r\n<p>With the performance boost from a WD Green SATA SSD, you can browse the web, play a game, or simply start your system in a flash.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Solid state reliability</h2>\r\n\r\n<p>Lightweight and shock resistant, WD Green SSDs use no moving parts and help keep your data safe from loss in the case of accidental bumps and drops.<br />\r\nLess power. More play.</p>\r\n\r\n<p>WD Green SSDs are among the lowest power consuming drives in the industry. And with less power used, your laptop runs longer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>AN EASY UPGRADE FOR YOUR PC</h2>\r\n\r\n<p>Compatible with most desktop and laptop PCs, WD Green SSDs are available in 2.5&rdquo; 7mm and M.2 2280 models for simple, worry-free upgrading.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>DOWNLOADABLE WD SSD DASHBOARD AND ACRONIS SOFTWARE</h2>\r\n\r\n<p>Monitor your drive&rsquo;s health with the free, downloadable WD SSD Dashboard and clone drives with Acronis True Image WD Edition software.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>TECHNICAL SPECIFICATIONS</h2>\r\n\r\n<p>Transfer speeds up to 545MB/s and capacities 120GB with models available for most desktop and laptop PCs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - Western Digital Green, Type - SATAIII SSD, From Factor - 2.5 Inch, Capacity - 120GB SSD, Interface - SATA III 6Gb/s, Read Speed (Max.) - 545MB/s, Dimension - 7.00 x 69.85 x 100.50mm, Part No - WDS120G2G0A, Others - MTTF: Up to 1.00M hours, DEVSLP (mW): 10, Slumber (mW): 30, Average Active Power (mW): 80, Shock: 1,500 G @ 0.5 msec half sine, Weight: 32.1gm, +- 0.5gm, Warranty - 3 Year</p>', '1', '120', '2000', '10', '2019-12-14 17:50:28', NULL),
(5, 16, 15, 'HP S700 120GB 2.5 inch SATAIII SSD', 'HP', 'storage_images/xXEJA.jpg', '<h2>HP S700&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nPRO 120GB Solid State Drive&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h2>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://lh5.googleusercontent.com/dlrM_vQnNwWlbxyLO7rujWsug8fbm71Kuee_sJ0vuKQA1O_s41yCkmFw41Gb8H6uVU8tox6J54wUoJtYAKZkxX2HhaSuMpOWiQa6XwpbdWy9SKzShlCQo58LnoDDI4WWOVMlFA7E\" style=\"height:328px; width:587px\" /></p>\r\n\r\n<ul>\r\n	<li>Protect your data files with the HP SSD S700 Pro series&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n	<li>Better performance, more durable&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n	<li>Higher-order LDPC error correction, more secure and reliable storage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>\r\n\r\n<p>HP SSD S700 Pro series is the ultimate SSD to protect and transfer your data files. An advanced controller gives you the performance and reliability you need. The power consumption is less than 5mW under device sleep mode, which significantly saves system power consumption in standby status and achieves both speed and endurance&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>Protect your data files with the HP SSD S700 Pro series&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>By using 3D NAND Flash and three-dimensional stacking method, HP S700 Pro series can provide higher storage density and capacity and is more reliable and durable compared with traditional 2D NAND Flash.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>Better performance, more durable&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>The advanced wear overall balancing algorithm of HP S700 Pro series increase the TBW (Total Bytes Written) and improve the durability of SSD, which fully meet the users requirement for design, video editing, games programming, office and various storage applications.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2>Higher-order LDPC error correction, more secure and reliable storage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h2>\r\n\r\n<p>HP S700 Pro series supports LDPC (Low Density Parity Check Code) error correction mechanism. It can do high speed parallel decoding, real-time error correction, which ensures the security and integrity of data transmission; avoids performance degradation resulting from long-term use; provides long lasting high speed read and write performance.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Model - HP S700, Type - SATAIII SSD, Form Factor - 2.5 Inch, Capacity - 120GB SSD, Interface - SATA III 6Gb/s, Flash Type - 3D NAND, Read Speed (Max.) - 550MB/s, Write Speed (Max.) - 480MB/s, Dimension - 100 x 70 x 6.70mm, Part No - 2DP97AA, Others - 4KB Random Read: Up to 40,000 IOPS, 4KB Random Write: Up to 75,000 IOPS, MTBF: 2,000,000 hours, Features: TRIM and ECC Supported, S.M.A.R.T Supported, NCQ Management, Country of Origin - USA, Made in/ Assemble - China, Warranty - 3 Year(HP S700)</p>', '1', '120', '2200', '20', '2019-12-14 17:52:32', NULL),
(6, 16, 15, 'Gigabyte 128GB M.2 2280 PCIe 3.0x2 NVMe SSD', 'Gigabyte', 'storage_images/WsaOb.jpg', '<p>Model - Gigabyte M.2 PCIe NVMe, Type - M.2 2280 PCIe 3.0x2 NVMe SSD, From Factor - M.2 2280, Capacity - 128GB SSD, Interface - PCIe 3.0x2 NVMe, Flash Type - NAND Flash, Read Speed (Max.) - 1100MB/s, Write Speed (Max.) - 500MB/s, Dimension - 80 x 22 x 2.3mm, Part No - GP-GSM2NE8128GNTD, Others - Random Read IOPS: Up to 90K, Random Write IOPS: Up to 100K, Mean time between failure (MTBF): 1.5M hours, Power Consumption (Idle): 50mW, HMB (Host Memory Buffer) supported, TRIM &amp; S.M.A.R.T supported, Warranty - 3 Year(Gigabyte 128gb)</p>', '3', '128', '2500', '20', '2019-12-14 17:54:08', NULL),
(7, 16, 14, 'Western Digital 1TB Blue Desktop HDD', 'Western Digital', 'storage_images/FADuZ.jpg', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">&nbsp;</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Buffer size</td>\r\n			<td>64 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Formatted Capacity</td>\r\n			<td>1,000,204 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Idle Mode</td>\r\n			<td>29 dBA (average)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Interface type</td>\r\n			<td>SATA 6 Gb/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Load/unload Cycles</td>\r\n			<td>300,000 minimum</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating Shock (Read)</td>\r\n			<td>30G, 2 ms</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rotational speed</td>\r\n			<td>7,200 RPM (nominal)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Seek Mode 0</td>\r\n			<td>30 dBA (average)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Internal or External</td>\r\n			<td>Internal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity (GB)</td>\r\n			<td>1000 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RPM</td>\r\n			<td>7200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>02 Years</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '1', '1TB', '3600', '26', '2019-12-19 02:06:07', '2020-10-24 15:00:07'),
(8, 16, 15, 'Adata SU 650 240 GB Solid State Drive', 'Adata', 'storage_images/jWH5M.jpg', '<p><strong>Adata SU 650 240 GB Solid State Drive</strong></p>\r\n\r\n<p>The Ultimate SU650 solid state drive implements 3D NAND Flash and a high speed controller, offering capacities up to 480GB. It delivers read/write performance up to 520/450MB/s and greater reliability than 2D NAND SSDs. The SU650 features SLC caching and advanced error correction technologies to ensure optimized data performance and integrity. For those who want to experience a clear PC upgrade, the SU650 is an excellent choice with a great cost-performance ratio.</p>\r\n\r\n<p><strong>3D NAND in an easy PC upgrade</strong></p>\r\n\r\n<p>With 3D NAND Flash, the SU650 features higher efficiency and increased reliability compared to 2D NAND SSDs with an improved cost-performance ratio.</p>\r\n\r\n<p><strong>Faster performance</strong></p>\r\n\r\n<p>The intelligent SLC caching algorithm allows NAND Flash memory to operate in single-level cell mode and boosts performance, helping sustain peak SU650 read/write speeds up to 520/450MB per second for smoother and faster boot, file transfers, and downloads.</p>\r\n\r\n<p><strong>Advanced error correction code</strong></p>\r\n\r\n<p>With the support for ECC (error correction code) technology, the SU650 can detect and fix errors to ensure data integrity and help to extend SSD lifespan Its MTBF (mean time between failures) is up to 2 million hours, or 25% more than 2D NAND SSDs.</p>\r\n\r\n<p><strong>Tougher , quieter , and more reliable</strong></p>\r\n\r\n<p>There&#39;s no mechanical component inside SSDs, so they outperform traditional HDDs with higher resistance to shock, vibration (1500G/0.5ms) and extreme temperatures (0&deg;C-70&deg;C). They are also completely silent and consume very little power, all while better protecting your data.</p>\r\n\r\n<p><strong>For notebooks and desktops</strong></p>\r\n\r\n<p>Just 7mm thick, the SU650 is an easy fit in ultrabooks. A 2.5mm spacer is bundled for use in 9.5mm drive bays, allowing compatibility with virtually every notebook, desktop, and console.</p>', '1', '240GB', '3300', '20', '2019-12-19 02:08:28', '2020-09-01 19:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `storage_type`
--

CREATE TABLE `storage_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_type`
--

INSERT INTO `storage_type` (`id`, `name`) VALUES
(1, 'SATA'),
(2, 'M.2'),
(3, 'NVMe');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 8, 'AMD', '2019-11-16 17:12:36', NULL),
(2, 8, 'Intel', '2019-11-16 17:17:34', NULL),
(10, 9, 'AMD', '2019-11-21 07:22:04', NULL),
(11, 9, 'Intel', '2019-11-21 07:22:11', NULL),
(12, 15, 'DDR4', '2019-11-25 18:20:16', NULL),
(13, 15, 'DDR3', '2019-11-25 18:20:41', NULL),
(14, 16, 'HDD', '2019-11-27 19:55:12', NULL),
(15, 16, 'SSD', '2019-11-27 19:55:21', NULL),
(16, 17, 'With PSU', '2019-11-30 05:03:09', NULL),
(17, 17, 'Without PSU', '2019-11-30 05:03:18', NULL),
(18, 18, 'Modular', '2019-11-30 15:12:20', NULL),
(19, 18, 'Non-Modular', '2019-11-30 15:12:33', NULL),
(20, 19, 'Nvidia', '2019-11-30 17:01:29', NULL),
(21, 19, 'AMD', '2019-11-30 17:01:36', NULL),
(22, 20, 'Monitor', '2019-11-30 18:02:14', NULL),
(23, 20, 'Speaker', '2019-11-30 18:02:22', NULL),
(24, 20, 'Keyboard', '2019-11-30 18:02:32', NULL),
(25, 20, 'Mouse', '2019-11-30 18:02:41', NULL),
(26, 21, 'Delux', '2021-03-14 01:41:52', NULL),
(27, 21, 'A4 Tech', '2021-03-14 01:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ'),
(493, 1, 'Dhaka City', 'ঢাকা'),
(494, 24, 'Rajshahi City', 'রাজশাহী');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `contact`, `address`, `type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'ASJAD HASAN JIM', 'alifhossain174@gmail.com', '2019-10-08 18:00:00', '$2y$10$yUT7ePIyGjcxOo4JgnJhf.KP.BOJOEbVhLKkgBLBlErEwUWO5Q7py', 'admin_images/4WLph.jpg', '01776141544', 'Uttara, Dhaka-1230', 'super_admin', 'granted', NULL, '2019-10-07 14:14:48', '2021-02-18 00:50:07'),
(23, 'Asjad', 'asjadhasan.ah@gmail.com', '2021-03-21 00:05:30', '$2y$10$OroZ5lm/j2DbXh/5j0zERer1nXOhqGFwdOs4U/9j5PEqvUB9oC/NW', 'admin_images/KbgF7.jpg', '01776141544', 'House No.: 1085, Harun Master Bari. Adorsho Para, 6No. word, Pouroshova, CharFasson -8340.CharFasson, Bhola.', 'Admin', 'granted', NULL, '2021-03-21 00:04:15', '2021-03-21 00:08:07'),
(24, 'NASIMA BEGUM', 'nasima@gmail.com', NULL, '$2y$10$.acnggDL23G3Qm3UgjzCv./0G4/7rViaTchZhOim9LCtl6qOKJ.iq', NULL, NULL, NULL, 'customer', 'granted', NULL, '2021-03-22 04:37:54', '2021-03-22 04:40:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casings`
--
ALTER TABLE `casings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_factor`
--
ALTER TABLE `form_factor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graphics_cards`
--
ALTER TABLE `graphics_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_boards`
--
ALTER TABLE `mother_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `power_supplies`
--
ALTER TABLE `power_supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processors`
--
ALTER TABLE `processors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rams`
--
ALTER TABLE `rams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_type`
--
ALTER TABLE `storage_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `casings`
--
ALTER TABLE `casings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `form_factor`
--
ALTER TABLE `form_factor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `graphics_cards`
--
ALTER TABLE `graphics_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mother_boards`
--
ALTER TABLE `mother_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `others`
--
ALTER TABLE `others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `power_supplies`
--
ALTER TABLE `power_supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `processors`
--
ALTER TABLE `processors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rams`
--
ALTER TABLE `rams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `storage_type`
--
ALTER TABLE `storage_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
