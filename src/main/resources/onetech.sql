-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 04:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onetech`
--

-- --------------------------------------------------------

--
-- Table structure for table `bigcategory`
--

CREATE TABLE `bigcategory` (
  `id` int(11) NOT NULL,
  `textDescription` varchar(4000) DEFAULT NULL,
  `htmlDescription` mediumtext,
  `image` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bigcategory`
--

INSERT INTO `bigcategory` (`id`, `textDescription`, `htmlDescription`, `image`) VALUES
(1, 'Máy tính', 'Máy tính', ''),
(2, 'Laptop', 'Laptop', ''),
(3, 'Camera', 'Camera', ''),
(4, 'Smartphone', 'Smartphone', ''),
(5, 'Tablelet', 'Tablelet', ''),
(6, 'TV', 'TV', ''),
(7, 'Audio', 'Audio', ''),
(8, 'Phụ kiện', 'Phụ kiện', ''),
(9, 'Sim', 'Sim', '');

-- --------------------------------------------------------

--
-- Table structure for table `const`
--

CREATE TABLE `const` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `const`
--

INSERT INTO `const` (`id`, `code`, `value`) VALUES
(1, 'email', 'thanhnv996@gmail.com'),
(2, 'password_mail', 'thaibinh1'),
(3, 'phone', '0378 594 900'),
(4, 'address', 'số 3, Duy Tân, Cầu Giấy, Hà Nội, Việt Nam'),
(5, 'address', 'Số 8 Ngách 9 Ngõ 145 - Đình Thôn - Mỹ Đình - Nam Từ Liêm - Hà Nội.'),
(6, 'bank_name', 'NGUYEN VAN THANH'),
(7, 'bank', 'VietcomBank: 049.100.177.1996 - Chi nhánh Thăng Long, Hà Nội'),
(8, 'bank', 'BIDV: 1221.000.161.1996 - Chi nhánh Hà Thành, Hà Nội'),
(9, 'bank', 'VietinBank: 105.004.360.1996 - Chi nhánh Tây Hà Nội, Hà Nội'),
(10, 'facebook_link', 'https://www.facebook.com/43597106t'),
(11, 'twitter_link', '#'),
(12, 'youtube_link', '#'),
(13, 'name_project', 'ONETECH');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(255) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customerName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(34, '', '', '', NULL, '', NULL, NULL, NULL, NULL),
(35, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(36, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(37, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(38, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(39, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(40, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(41, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(42, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(43, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(44, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(45, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(46, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(47, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(48, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(49, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(50, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(51, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(52, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(53, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(54, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(55, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(56, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(57, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(58, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(59, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(60, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(61, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(62, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(63, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(64, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(65, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(66, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(67, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(68, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(69, 'Nguyễn Thành', '1678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(70, 'Nguyễn Thành', '0378594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(71, 'Nguyễn Thành', '0378594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(72, 'Nguyễn Thành', '0378594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(73, 'Nguyễn Thành', '+841678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL),
(74, 'Nguyễn Thành', '+841678594900', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', NULL, 'Hà Nội', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menucategory`
--

CREATE TABLE `menucategory` (
  `id` int(11) NOT NULL,
  `bigCategoryId` int(11) NOT NULL,
  `textDescription` varchar(4000) DEFAULT NULL,
  `htmlDescription` mediumtext,
  `image` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menucategory`
--

INSERT INTO `menucategory` (`id`, `bigCategoryId`, `textDescription`, `htmlDescription`, `image`) VALUES
(1, 1, 'DELL', 'Máy tính', ''),
(2, 2, 'Laptop', 'Laptop', ''),
(3, 3, 'Camera', 'Camera', ''),
(4, 4, 'Smartphone', 'Smartphone', ''),
(5, 5, 'Tablelet', 'Tablelet', ''),
(6, 6, 'TV', 'TV', ''),
(7, 7, 'Audio', 'Audio', ''),
(8, 8, 'Phụ kiện', 'Phụ kiện', ''),
(9, 9, 'Sim G Mobile', 'Sim', ''),
(10, 9, 'Sim Viettel', 'Sim Viettel', ''),
(11, 9, 'Sim Vina', 'Sim Vina', ''),
(12, 9, 'Sim Mobilephone', 'Sim Mobilephone', ''),
(13, 1, 'HP', 'HP', ''),
(14, 1, 'ASUS', 'ASUS', ''),
(15, 1, 'ACER', 'HP', ''),
(16, 2, 'DELL', 'Laptop', ''),
(17, 2, 'HP', 'Laptop', ''),
(18, 2, 'ASUS', 'ASUS', ''),
(19, 2, 'ACER', 'ACER', ''),
(20, 3, 'HIKVSION ', 'Camera', ''),
(21, 3, 'DAHUA', 'Camera', ''),
(22, 3, 'AVTECH', 'Camera', ''),
(23, 4, 'APPLE', 'Smartphone', ''),
(24, 4, 'SAMSUNG', 'Smartphone', ''),
(25, 4, 'XIAOMI', 'Smartphone', ''),
(26, 4, 'HUWEI', 'Smartphone', ''),
(27, 4, 'MEIZU', 'Smartphone', ''),
(28, 5, 'APPLE', 'Tablelet', ''),
(29, 5, 'SAMSUNG', 'Tablelet', ''),
(30, 5, 'XIAOMI', 'Tablelet', ''),
(31, 6, 'SAMSUNG', 'TV', ''),
(32, 6, 'SONY', 'TV', ''),
(33, 7, 'Audio', 'Audio', ''),
(34, 8, 'Tai nghe', 'Phụ kiện', ''),
(35, 8, 'Cáp sạc', 'Phụ kiện', ''),
(36, 8, 'Sạc dự phòng', 'Phụ kiện', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text,
  `customerId` int(11) NOT NULL,
  `sumPrice` int(11) DEFAULT NULL,
  `couponCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `orderDate`, `shippedDate`, `status`, `comments`, `customerId`, `sumPrice`, `couponCode`) VALUES
(36, '2019-04-22', NULL, 'SHIPPED', NULL, 37, 21600000, NULL),
(37, '2019-04-22', NULL, 'ORDERED', NULL, 38, 21600000, NULL),
(38, '2019-04-22', NULL, 'ORDERED', NULL, 39, 21600000, NULL),
(39, '2019-04-22', NULL, 'ORDERED', NULL, 40, 21600000, NULL),
(40, '2019-04-22', NULL, 'ORDERED', NULL, 41, 28512000, 'GO2018'),
(41, '2019-04-22', NULL, 'ORDERED', NULL, 42, 28512000, 'GO2018'),
(42, '2019-04-22', NULL, 'ORDERED', NULL, 43, 28512000, 'GO2018'),
(43, '2019-04-22', NULL, 'ORDERED', NULL, 44, 28512000, 'GO2018'),
(44, '2019-04-22', NULL, 'ORDERED', NULL, 45, 28512000, 'GO2018'),
(45, '2019-04-22', NULL, 'ORDERED', NULL, 46, 28512000, 'GO2018'),
(46, '2019-04-22', NULL, 'ORDERED', NULL, 47, 28512000, 'GO2018'),
(47, '2019-04-22', NULL, 'ORDERED', NULL, 48, 28512000, 'GO2018'),
(48, '2019-04-22', NULL, 'ORDERED', NULL, 49, 32400000, NULL),
(49, '2019-04-22', NULL, 'ORDERED', NULL, 50, 32400000, NULL),
(50, '2019-04-22', NULL, 'ORDERED', NULL, 51, 32400000, NULL),
(51, '2019-04-22', NULL, 'ORDERED', NULL, 52, 32400000, NULL),
(52, '2019-04-23', NULL, 'ORDERED', NULL, 53, 10800000, NULL),
(53, '2019-04-23', NULL, 'ORDERED', NULL, 54, 12000000, NULL),
(54, '2019-04-23', NULL, 'ORDERED', NULL, 55, 12000000, NULL),
(55, '2019-04-23', NULL, 'ORDERED', NULL, 56, 12000000, NULL),
(56, '2019-04-23', NULL, 'ORDERED', NULL, 57, 12000000, NULL),
(57, '2019-04-23', NULL, 'ORDERED', NULL, 58, 12000000, NULL),
(58, '2019-04-23', NULL, 'ORDERED', NULL, 59, 12000000, NULL),
(59, '2019-04-23', NULL, 'ORDERED', NULL, 60, 12000000, NULL),
(60, '2019-04-23', NULL, 'ORDERED', NULL, 61, 12000000, NULL),
(61, '2019-04-23', NULL, 'ORDERED', NULL, 62, 12000000, NULL),
(62, '2019-04-23', NULL, 'ORDERED', NULL, 63, 12000000, NULL),
(63, '2019-04-23', NULL, 'ORDERED', NULL, 64, 10800000, NULL),
(64, '2019-04-23', NULL, 'ORDERED', NULL, 65, 10800000, NULL),
(65, '2019-04-23', NULL, 'ORDERED', NULL, 66, 10800000, NULL),
(66, '2019-04-23', NULL, 'ORDERED', NULL, 67, 10800000, NULL),
(67, '2019-04-23', NULL, 'ORDERED', NULL, 68, 10680000, NULL),
(68, '2019-04-23', NULL, 'ORDERED', NULL, 69, 10800000, NULL),
(69, '2019-04-25', NULL, 'ORDERED', NULL, 70, 12000000, NULL),
(70, '2019-04-25', NULL, 'ORDERED', NULL, 71, 21120000, NULL),
(71, '2019-04-25', NULL, 'ORDERED', NULL, 72, 21120000, NULL),
(72, '2019-04-25', NULL, 'ORDERED', NULL, 73, 21120000, NULL),
(73, '2019-04-25', NULL, 'ORDERED', NULL, 74, 21120000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` decimal(10,2) NOT NULL,
  `orderLineNumber` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `productId`, `quantityOrdered`, `priceEach`, `orderLineNumber`) VALUES
(36, 55, 2, '12000000.00', 123),
(37, 55, 2, '12000000.00', 123),
(38, 55, 2, '12000000.00', 123),
(39, 55, 2, '12000000.00', 123),
(40, 49, 3, '12000000.00', 123),
(41, 49, 3, '12000000.00', 123),
(42, 49, 3, '12000000.00', 123),
(43, 49, 3, '12000000.00', 123),
(44, 49, 3, '12000000.00', 123),
(45, 49, 3, '12000000.00', 123),
(46, 49, 3, '12000000.00', 123),
(47, 49, 3, '12000000.00', 123),
(48, 3, 3, '12000000.00', 123),
(49, 3, 3, '12000000.00', 123),
(50, 3, 3, '12000000.00', 123),
(51, 3, 3, '12000000.00', 123),
(52, 55, 1, '12000000.00', 123),
(53, 64, 1, '12000000.00', 123),
(54, 64, 1, '12000000.00', 123),
(55, 64, 1, '12000000.00', 123),
(56, 64, 1, '12000000.00', 123),
(57, 64, 1, '12000000.00', 123),
(58, 64, 1, '12000000.00', 123),
(59, 64, 1, '12000000.00', 123),
(60, 64, 1, '12000000.00', 123),
(61, 64, 1, '12000000.00', 123),
(62, 64, 1, '12000000.00', 123),
(63, 55, 1, '12000000.00', 123),
(64, 55, 1, '12000000.00', 123),
(65, 56, 1, '12000000.00', 123),
(66, 33, 1, '12000000.00', 123),
(67, 40, 1, '12000000.00', 123),
(68, 67, 1, '12000000.00', 123),
(69, 20, 1, '12000000.00', 123),
(70, 49, 2, '12000000.00', 123),
(71, 49, 2, '12000000.00', 123),
(72, 49, 2, '12000000.00', 123),
(73, 49, 2, '12000000.00', 123);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `menuCategoryId` int(11) NOT NULL,
  `productcale` varchar(10) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` text NOT NULL,
  `quantityInStock` smallint(6) NOT NULL,
  `buyPrice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL,
  `image` mediumblob,
  `urlImage` varchar(255) DEFAULT NULL,
  `rate` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productName`, `menuCategoryId`, `productcale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `tax`, `MSRP`, `image`, `urlImage`, `rate`) VALUES
(1, 'Bộ máy tính Main H61/Cpu G2020/ram 2g/màn 18.5\"', 15, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul style=\"list-style-type: disc;\">\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'pc.png', 1),
(2, 'Main H110 Cpu G4400 Ram 4g Ddr4 Buss 2133 màn 18.5', 13, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'pc2.jpg', 2),
(3, 'Main H110 Cpu core i3 6100 Hdd 500G màn 18.5\"', 14, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'pc3.png', 3),
(4, 'Laptop Lenovo Ideapad 100', 2, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'laptop.jpg', 4),
(5, 'Laptop MSI GAMING GL62 Vina', 16, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.20', NULL, 'laptop1.jpg', 5),
(6, 'Laptop Acer Asprie Swift 5 SF514', 17, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'laptop2.jpg', 2),
(7, 'Đầu ghi hình Hikvision DS-7108HQHI-K1 Turbo HD 4.0 8 ', 17, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera.png', 4),
(9, 'Camera EZVIZ CS-CV246 720P C6CN', 20, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.25', '0.00', NULL, 'camera2.jpg', 3),
(10, 'Máy tính chơi game PCAP AORUS ULTRA WATER COOL', 1, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'pc4.jpg', 0),
(11, 'Máy tính đồng bộ HP Desktop Pro MT PC 5ZY79PA', 13, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'pc.png', 0),
(12, 'PC Intel NUC Kit NUC8i7HVK Hades Canyon (Coffee Lake)', 14, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'pc2.jpg', 0),
(13, 'Máy tính chơi game PCAP ASUS APEX LEGENDS Ultra', 15, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'pc3.png', 0),
(14, 'Laptop Acer Nitro 5 AN515-52-51LW NH.Q3LSV.002', 18, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'laptop3.jpg', 0),
(15, 'Laptop Acer Nitro 5 AN515-52-75FT NH.Q3LSV.003', 19, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.20', NULL, 'laptop.jpg', 0),
(16, 'Laptop Acer Swift 5 SF514-52T-811W NX.GU4SV.005', 2, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'laptop2.jpg', 0),
(17, 'Camera Hikvision DS-2CE16D3T-I3PF thân ống 2MP hồng ngoại ', 21, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera3.jpg', 0),
(18, 'Camera EZVIZ CS-CV246 720P C6CN', 22, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera4.jpg', 0),
(19, 'Camera giám sát quay quét YI Cloud Dome Camera 1080P', 3, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.25', '0.00', NULL, 'camera4.jpg', 0),
(20, 'SIM G mobile 1', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'simgmobile.jpg', 0),
(21, 'SIM G mobile 2', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simgmobile.jpg', 0),
(22, 'SIM G mobile 3', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'simgmobile.jpg', 0),
(23, 'SIM G mobile 4', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'simgmobile.jpg', 0),
(24, 'SIM G mobile 5', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'simgmobile.jpg', 0),
(29, 'SIM G mobile 6', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'simgmobile.jpg', 0),
(30, 'SIM VIETTEL 1', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 5),
(31, 'SIM VIETTEL 2', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 4),
(32, 'SIM VIETTEL 3', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(33, 'SIM VIETTEL 4', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(34, 'SIM VIETTEL 5', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(35, 'SIM VIETTEL 6', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(36, 'SIM VIETTEL 7', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(37, 'SIM VIETTEL 8', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(38, 'SIM VINA 1', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 5),
(39, 'SIM VINA 2', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 5),
(40, 'SIM VINA 3', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 3),
(41, 'SIM VINA 4', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(42, 'SIM VINA 5', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(43, 'SIM VINA 6', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(44, 'SIM VINA 7', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(45, 'SIM VINA 8', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(46, 'SIM Mobilephone 1', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.25', NULL, 'simmobi.jpg', 0),
(47, 'SIM Mobilephone 2', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(48, 'SIM Mobilephone 3', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(49, 'SIM Mobilephone 4', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(50, 'SIM Mobilephone 5', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(51, 'SIM Mobilephone 6', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(52, 'SIM Mobilephone 7', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(53, 'SIM Mobilephone 8', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(54, 'Bộ máy tính Main H61/Cpu G2020/ram 2g/màn 18.5\"', 1, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'pc.png', 0),
(55, 'Main H110 Cpu G4400 Ram 4g Ddr4 Buss 2133 màn 18.5', 13, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'pc2.jpg', 0),
(56, 'Main H110 Cpu core i3 6100 Hdd 500G màn 18.5\"', 14, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'pc3.png', 0),
(57, 'Laptop Lenovo Ideapad 100', 16, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'laptop.jpg', 0),
(58, 'Laptop MSI GAMING GL62', 17, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'laptop1.jpg', 0),
(59, 'Laptop Acer Asprie Swift 5 SF514', 18, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'laptop2.jpg', 0),
(60, 'Đầu ghi hình Hikvision DS-7108HQHI-K1 Turbo HD 4.0 8 ', 20, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera.png', 0),
(61, 'Camera EZVIZ CS-CV206 1080P', 21, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera4.jpg', 0),
(62, 'Camera EZVIZ CS-CV246 720P C6CN', 22, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.25', '0.00', NULL, 'camera2.jpg', 0),
(63, 'Máy tính chơi game PCAP AORUS ULTRA WATER COOL', 15, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'pc4.jpg', 0),
(64, 'Máy tính đồng bộ HP Desktop Pro MT PC 5ZY79PA', 1, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'pc.png', 0),
(65, 'PC Intel NUC Kit NUC8i7HVK Hades Canyon (Coffee Lake)', 13, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'pc2.jpg', 0),
(66, 'Máy tính chơi game PCAP ASUS APEX LEGENDS Ultra', 14, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'pc3.png', 0),
(67, 'Laptop Acer Nitro 5 AN515-52-51LW NH.Q3LSV.002', 19, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'laptop3.jpg', 0),
(68, 'Laptop Acer Nitro 5 AN515-52-75FT NH.Q3LSV.003', 2, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'laptop.jpg', 0),
(69, 'Laptop Acer Swift 5 SF514-52T-811W NX.GU4SV.005', 16, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'laptop2.jpg', 0),
(70, 'Camera Hikvision DS-2CE16D3T-I3PF thân ống 2MP hồng ngoại ', 3, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera3.jpg', 0),
(71, 'Camera EZVIZ CS-CV246 720P C6CN', 20, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.15', '0.15', NULL, 'camera4.jpg', 0),
(72, 'Camera giám sát quay quét YI Cloud Dome Camera 1080P', 3, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.25', '0.00', NULL, 'camera4.jpg', 0),
(73, 'SIM G mobile 1', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'simgmobile.jpg', 0),
(74, 'SIM G mobile 2', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simgmobile.jpg', 0);
INSERT INTO `product` (`id`, `productName`, `menuCategoryId`, `productcale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `tax`, `MSRP`, `image`, `urlImage`, `rate`) VALUES
(75, 'SIM G mobile 3', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'simgmobile.jpg', 0),
(76, 'SIM G mobile 4', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.10', NULL, 'simgmobile.jpg', 0),
(77, 'SIM G mobile 5', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'simgmobile.jpg', 0),
(78, 'SIM G mobile 6', 9, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 1000, '12000000.00', '0.10', '0.00', NULL, 'simgmobile.jpg', 0),
(79, 'SIM VIETTEL 1', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(80, 'SIM VIETTEL 2', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(81, 'SIM VIETTEL 3', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(82, 'SIM VIETTEL 4', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(83, 'SIM VIETTEL 5', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(84, 'SIM VIETTEL 6', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(85, 'SIM VIETTEL 7', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(86, 'SIM VIETTEL 8', 10, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.10', '0.10', NULL, 'simviettel.jpg', 0),
(87, 'SIM VINA 1', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(88, 'SIM VINA 2', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(89, 'SIM VINA 3', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(90, 'SIM VINA 4', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(91, 'SIM VINA 5', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(92, 'SIM VINA 6', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(93, 'SIM VINA 7', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(94, 'SIM VINA 8', 11, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.11', '0.11', NULL, 'simvina.jpg', 0),
(95, 'SIM Mobilephone 1', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(96, 'SIM Mobilephone 2', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(97, 'SIM Mobilephone 3', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(98, 'SIM Mobilephone 4', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(99, 'SIM Mobilephone 5', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(100, 'SIM Mobilephone 6', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(101, 'SIM Mobilephone 7', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0),
(102, 'SIM Mobilephone 8', 12, 'productcal', 'productVendor', ' Sim Shopee 4G Vietnamobile 12 tháng dành riêng cho các khách hàng của shopee đặc biệt trong dịp Tết với nhiều ưu đãi hấp dẫn:\r\nCác ưu đãi\r\n<ul>\r\n<li>5 GB /1 ngày.</li>\r\n<li>Miễn phí 50 phút gọi ngoại mạng / tháng.</li>\r\n<li>Hoàn toàn miễn phí phút gọi và tin nhắn nội mạng.</li>\r\n<li>Miễn phí 12 tháng đầu tiên.</li>\r\n<li>Từ tháng thứ 13 để duy trì gói cước này cần nạp: 50.000 VND.</li>\r\n<li>Khách hàng nhận sim ấn *989# để kích hoạt và tải ứng dụng My Vietnamobile để quản lý tài khoản, lịch sử sử dụng một cách dễ dàng, nhanh chóng.</li>\r\n</ul>\r\n', 999, '12000000.00', '0.12', '0.12', NULL, 'simmobi.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `address`, `email`, `phone`, `gender`) VALUES
(6, 'thanhnv996', '$2a$11$djvqDfLJSyi9yGzuMknyi.Q6.MBt4PpnFEjgORfz.UmKoWnkhxzXq', 'Nguyễn Thành', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', 'thanhnv996@gmail.com', '1678594900', 'male'),
(7, 'admin_system', '$2a$11$tlukL89AZSdhIbgoaxHxI.P4AMwN.WCg6/2SeKj5BjDiwvHWONsru', 'Nguyễn Thành', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', 'thanhnv996@gmail.com', '1678594900', 'male'),
(8, 'normal_user', '$2a$11$m/AEgRWHwuTs.Wzbf/uOLOkmV47YhLjN7S/WpDaD10WDbtWUZhAQC', 'Nguyễn Thành', 'Nhà 8 - Ngách 9 - Ngõ 145  - Đình Thôn - Mỹ Đình - Nam Từ Liêm', 'thanhnv996@gmail.com', '1678594900', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(6, 1),
(7, 2),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `viewed`
--

CREATE TABLE `viewed` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `viewed`
--

INSERT INTO `viewed` (`user_id`, `product_id`) VALUES
(6, 1),
(6, 4),
(6, 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bigcategory`
--
ALTER TABLE `bigcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `const`
--
ALTER TABLE `const`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menucategory`
--
ALTER TABLE `menucategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menuCategory_ibfk_1` (`bigCategoryId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menuCategoryId` (`menuCategoryId`);
ALTER TABLE `product` ADD FULLTEXT KEY `searchindex` (`productName`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `fk_user_role_roleid_idx` (`role_id`);

--
-- Indexes for table `viewed`
--
ALTER TABLE `viewed`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `fk_viewed_userid_idx` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bigcategory`
--
ALTER TABLE `bigcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `const`
--
ALTER TABLE `const`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `menucategory`
--
ALTER TABLE `menucategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menucategory`
--
ALTER TABLE `menucategory`
  ADD CONSTRAINT `menuCategory_ibfk_1` FOREIGN KEY (`bigCategoryId`) REFERENCES `bigcategory` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`menuCategoryId`) REFERENCES `menucategory` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `viewed`
--
ALTER TABLE `viewed`
  ADD CONSTRAINT `fk_viewed_productid` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viewed_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
