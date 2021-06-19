-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2021 lúc 08:59 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Dell'),
(3, 'Sony'),
(4, 'SamSung'),
(11, 'ViVo'),
(12, 'Oppo'),
(13, 'Asus'),
(14, 'Acer'),
(15, 'Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `order_id`, `image`, `name`, `price`, `quantity`, `total`) VALUES
(140, 67, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(141, 67, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(142, 67, 'Oppo Find X3 Pro 5G.jpg', 'Oppo Find X3 Pro 5G', 21910000, 1, 21910000),
(24, 10, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(25, 10, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(26, 11, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(27, 11, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(28, 12, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(29, 12, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(32, 14, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(33, 14, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(34, 15, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(35, 15, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(36, 16, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(37, 16, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(38, 17, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(39, 17, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(40, 18, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(41, 18, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(42, 19, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(43, 19, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(44, 20, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(45, 20, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(46, 21, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(47, 21, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(48, 22, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(49, 22, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(50, 23, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(51, 23, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(52, 24, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(53, 24, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(54, 25, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(55, 25, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(56, 26, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(57, 26, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(58, 27, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(59, 27, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(60, 28, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(61, 28, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(62, 29, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(63, 29, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(64, 30, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(65, 30, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(66, 31, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(67, 31, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(68, 32, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(69, 32, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(70, 33, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(71, 33, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(72, 34, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(73, 34, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(74, 35, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(75, 35, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(76, 36, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(77, 36, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(78, 37, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(79, 37, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(80, 38, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(81, 38, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(82, 39, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(83, 39, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(84, 40, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(85, 40, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(86, 41, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(87, 41, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(88, 42, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(89, 42, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(90, 43, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(91, 43, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(92, 44, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(93, 44, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(94, 45, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(95, 45, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(96, 46, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(97, 46, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(98, 47, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(99, 47, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(100, 48, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(101, 48, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(102, 49, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(103, 49, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(104, 50, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(105, 50, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(106, 51, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(107, 51, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(108, 52, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(109, 52, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(110, 53, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(111, 53, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(112, 54, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(113, 54, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(114, 55, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(115, 55, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(116, 56, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(117, 56, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(118, 57, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(119, 57, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(120, 58, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(121, 58, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(122, 59, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(123, 59, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(124, 60, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(125, 60, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(126, 61, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(127, 61, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(128, 62, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(129, 62, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(130, 63, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(131, 63, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(132, 64, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(133, 64, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(134, 65, 'iphone8plus.png', 'Iphone 8 Plus 64Gb', 10000000, 1, 10000000),
(135, 65, 'iphone6splus.png', 'Iphone 6s Plus 64GB ', 2500000, 1, 2500000),
(136, 65, 'Oppo Find X3 Pro 5G.jpg', 'Oppo Find X3 Pro 5G', 21910000, 1, 21910000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cus_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `code`, `created_at`, `cus_name`, `cus_email`, `cus_phone`, `cus_address`, `message`) VALUES
(67, 25121, '2021-06-19 00:21:44', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(10, 63484, '2021-06-15 03:54:12', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '0342964072', '47/17 truong minh ky phuong 13 quan go vap', '123'),
(11, 63163, '2021-06-15 03:54:46', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '0342964072', '47/17 truong minh ky phuong 13 quan go vap', '123'),
(12, 54212, '2021-06-15 03:58:08', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '0342964072', '47/17 truong minh ky phuong 13 quan go vap', '123'),
(14, 1036, '2021-06-15 04:01:12', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(15, 84157, '2021-06-15 04:02:40', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(16, 85998, '2021-06-15 04:03:38', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(17, 34005, '2021-06-15 04:03:50', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(18, 92368, '2021-06-15 04:05:13', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(19, 22560, '2021-06-15 04:05:42', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(20, 17396, '2021-06-15 04:06:20', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(21, 74519, '2021-06-15 04:07:04', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(22, 16369, '2021-06-15 04:13:38', 'a', 'alo@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap, 47/17 truong minh ky phuong 13 quan go vap', 'a'),
(23, 76555, '2021-06-15 04:13:51', '', '', '', '', ''),
(24, 22439, '2021-06-15 04:14:39', '', '', '', '', ''),
(25, 73930, '2021-06-15 04:14:39', '', '', '', '', ''),
(26, 14296, '2021-06-15 04:14:46', '', '', '', '', ''),
(27, 15883, '2021-06-15 04:14:56', 'ád', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(28, 13226, '2021-06-15 04:16:24', 'ádádasdasdsda', 'lanhoxga@gmail.com', '11111', '47/17 truong minh ky phuong 13 quan go vap', '111111'),
(29, 43697, '2021-06-15 04:16:53', 'ádádasdasdsda', 'lanhoxga@gmail.com', '11111', '47/17 truong minh ky phuong 13 quan go vap', '111111'),
(30, 72836, '2021-06-15 04:16:56', 'ádádasdasdsda', 'lanhoxga@gmail.com', '11111', '47/17 truong minh ky phuong 13 quan go vap', '111111'),
(31, 78193, '2021-06-15 04:19:59', 'abc', 'abc@gmail.com', '123', '1', '1'),
(32, 16052, '2021-06-15 04:21:10', 'ae', 'ae@gmail.com', '1', '1', '1'),
(33, 86487, '2021-06-15 04:21:47', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(34, 11918, '2021-06-15 04:22:45', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(35, 22085, '2021-06-15 04:23:17', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(36, 5349, '2021-06-15 04:28:21', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(37, 77111, '2021-06-15 04:29:21', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(38, 92650, '2021-06-15 04:31:29', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(39, 5395, '2021-06-15 04:33:52', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(40, 33947, '2021-06-15 04:34:07', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(41, 77395, '2021-06-15 04:35:58', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(42, 91428, '2021-06-15 04:37:12', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(43, 33708, '2021-06-15 04:37:51', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(44, 88658, '2021-06-15 04:38:12', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(45, 82731, '2021-06-15 04:38:25', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(46, 43233, '2021-06-15 04:38:37', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(47, 33956, '2021-06-15 04:39:12', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(48, 11556, '2021-06-15 04:39:19', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(49, 1745, '2021-06-15 04:39:38', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(50, 10623, '2021-06-15 04:40:23', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(51, 50831, '2021-06-15 04:40:50', '', '', '', '', ''),
(52, 30266, '2021-06-15 04:41:53', '', '', '', '', ''),
(53, 41966, '2021-06-15 04:42:06', '', '', '', '', ''),
(54, 8347, '2021-06-15 04:42:23', '', '', '', '', ''),
(55, 44406, '2021-06-15 04:42:33', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(56, 83938, '2021-06-15 04:42:57', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(57, 64939, '2021-06-15 04:43:11', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(58, 82999, '2021-06-15 04:43:23', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(59, 75024, '2021-06-15 04:43:31', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(60, 61027, '2021-06-15 04:43:45', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(61, 62500, '2021-06-15 04:44:11', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(62, 72940, '2021-06-15 04:44:20', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(63, 17159, '2021-06-15 04:44:37', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(64, 5463, '2021-06-15 04:45:19', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1'),
(65, 61026, '2021-06-17 10:07:30', 'Nguyễn Cao Thái', 'lanhoxga@gmail.com', '1', '47/17 truong minh ky phuong 13 quan go vap', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pro_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`, `created_at`) VALUES
(2, 'Iphone 6s Plus 64GB ', 1, 1, 2500000, 'iphone6splus.png', 'iPhone 6s Plus 64 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt', 1, '2020-12-18 17:00:00'),
(4, 'Iphone 11 Pro MAX', 1, 1, 20000000, 'iphone11promax.png', 'Mặt lưng của iPhone 7 Plus được thiết kế với phần ăng-ten được đưa vòng lên trên thay vì cắt ngang mặt lưng như những phiên bản trước là iPhone 6 Plus mang lại cảm giác thoải mái khi cầm nắm.', 1, '2020-11-22 14:08:56'),
(5, 'Iphone XS MAX ', 1, 1, 15000000, 'iphonexsmax.jpg', 'Mặt lưng của iPhone 7 Plus được thiết kế với phần ăng-ten được đưa vòng lên trên thay vì cắt ngang mặt lưng như những phiên bản trước là iPhone 6 Plus mang lại cảm giác thoải mái khi cầm nắm.', 1, '2020-11-22 14:08:56'),
(6, 'Laptop Dell Vostro 3491 i3 1005G1/4GB/256GB/Win10 (70223127)', 2, 2, 11000000, 'lap1.jpg', 'Dell Vostro 3491 có thiết kế hiện đại, tối giản từ chất liệu nhựa, tông màu đen sang trọng. Máy có độ dày 21 mm, trọng lượng 1.66 kg dễ dàng để các bạn học sinh sinh viên có thể đem theo đến lớp, đi cà phê,..', 1, '2020-11-22 14:08:56'),
(7, 'Laptop Dell Vostro 3580 i3 8145U/4GB/1TB/Win10 (V5I3058W)\r\n', 2, 2, 10000000, 'lap2.jpg', 'Dell luôn được yêu thích vì độ bền cao, Dell Vostro 3580 là một chiếc laptop tối ưu với sức chịu đựng, cứng cáp, chắc chắn. Chiếc laptop có trọng lượng 2.16 kg, không quá nặng để bạn mang theo bên mình khi đi học hay đi làm.', 1, '2020-11-22 14:08:56'),
(8, 'Laptop Dell Inspiron 5584 i3 8145U/4GB/1TB/Win10 (70186849)\r\n', 2, 2, 12000000, 'lap3.jpg', 'Dell Inspiron 5584 i3 8145U (70186849) được thiết kế đơn giản, thanh lịch. Trọng lượng nhẹ và cấu hình khá, phù hợp cho sinh viên - nhân viên văn phòng khi đi làm và đi học.', 1, '2020-11-22 14:08:56'),
(9, 'Laptop Dell Inspiron 3476 i3 8130U/4GB/1TB/Win10/(8J61P11)\r\n', 2, 2, 14000000, 'lap4.jpg', 'Dell Inspiron 3476 i3 8130U là phiên bản máy tính xách tay được trang bị cấu hình cơ bản với chip Intel Core i3 Kabylake Refresh, RAM DDR4 4 GB, ổ cứng HDD lên đến 1 TB, cùng hệ điều hành Windows 10 được cài đặt sẵn. Đây sẽ là lựa chọn phù hợp cho đối tượng như học sinh - sinh viên cần một chiếc laptop đáp ứng tốt các nhu cầu cơ bản của công việc văn phòng cũng như học tập.', 1, '2020-11-22 14:08:56'),
(10, 'Laptop Dell Inspiron 3581 i3 7020U/4GB/1TB/Win10 (P75F005N81A)', 2, 2, 15000000, 'lap5.jpg', 'Không quá cầu kỳ, laptop Dell Inspiron 3581 có thiết kế truyền thống với cân nặng 2.28 kg.\r\n\r\nTrọng lượng này khá cồng kềnh nếu bạn là người phải thường xuyên di chuyển nhiều.', 1, '2020-11-22 14:08:56'),
(31, 'Apple Watch SE 40mm viền nhôm dây cao su', 1, 4, 7990000, 'applewatch2.jpg', 'Apple Watch SE 40mm viền nhôm dây cao su sở hữu ngoại hình khá giống với Series 5 với mặt kính cong 2.5D cho cảm giác vuốt và chạm thoải mái. Kích thước màn hình 1.57 inch cùng độ phân giải 324 x 394 pixels giúp hiển thị hình ảnh và các thông tin đầy đủ và sắc nét. Dây đeo làm từ chất liệu cao su có đàn hồi cao, tạo cảm giác thoải mái cho cổ tay khi đeo trong thời gian dài. Apple watch không chỉ là đồng hồ với nhiều tính năng thông minh mà còn là một phụ kiện thời trang cao cấp.', 1, '2020-12-03 02:45:59'),
(30, 'Apple Watch S6 LTE 40mm viền nhôm dây cao su', 1, 4, 14490000, 'applewatch1.jpg', 'Apple Watch S6 LTE 40mm viền nhôm dây cao su sở hữu màn hình 1.57 inch giúp hiển thị đầy đủ thông tin và hình ảnh sắc nét. Dây đeo được làm từ chất liệu cao su dẻo dai và êm ái, cho cảm giác dễ chịu khi mang. Thêm vào đó, mặt kính cường lực Sapphire giúp chống trầy, tăng độ bền cho thiết bị. Các đường nét được thiết kế tinh xảo làm nên sự đẳng cấp của Apple Watch.', 1, '2020-12-03 02:45:59'),
(29, 'Sony Xperia 10 Plus Likenew 99%', 3, 1, 4490000, 'sony5.png', 'Khi nói về thiết kế thì chiếc Sony Xperia 10 Plus được coi là smartphone có chiều dài dài nhất hiện nay. Với tỷ lệ màn hình khác biệt 21:9 theo chiều ngang và 9:21 theo chiều dọc. Chưa nói đến ưu điểm nhưng đây chắc chắn là 1 điểm gây ấn tượng với người dùng.', 1, '2020-12-03 02:30:38'),
(27, 'Sony Xperia XZ3 Likenew 99%', 3, 1, 6190000, 'sony3.png', 'điện thoại sony máy cũ ', 1, '2020-12-17 12:16:16'),
(26, 'Sony Xperia 1 II ( Mark 2 ) Likenew 99%', 3, 1, 22490000, 'sony2.png', 'Sony Xperia 1 Mark II có một sự thay đổi về thiết kế so với phiên bản Sony Xperia 1 trước đó, thay đổi đầu tiên là \"em nó\" mang một cái tên mới \"Mark II\". Theo nguồn tin cho biết, Xperia 1 Mark II vẫn đâu đó mang đến một sự hấp dẫn kì lạ, với thân máy được gia công bằng kim loại phẳng đầy sang trọng và mặt trước, sau đều được phủ kính trong sáng bóng và lấp lánh.', 1, '2020-12-03 02:30:38'),
(25, 'Sony Xperia 5 II ( Mark 2 ) Mới 100% - FullBox', 3, 1, 24890000, 'sony1.png', 'Tiếp nối sự thành công đến từ 2 phiên bản Xperia 1 Mark 2 và Xperia 10 Mark 2 đều là những phiên bản nâng cấp của Xperia 1 và Xperia 10 Plus - đến lượt SONY tiếp tục con đường thành công thời gian gần đây với các mẫu smartphone thế hệ mới giới thiệu ra mắt sản phẩm Xperia 5 Mark 2 ( phiên bản nâng cấp của Xperia 5 ) vào tháng 9 vừa qua.', 1, '2020-12-03 02:30:38'),
(21, 'Tai nghe AirPods Pro sạc không dây Apple MWP22\r\n', 1, 3, 6990000, 'airpod1.jpg', 'Thiết kế in-ear hoàn toàn mới và độc đáo.\r\nTích hợp công nghệ chống ồn chủ động (Active Noise Cancellation).\r\nChip H1 mạnh mẽ, xử lý âm thanh kỹ thuật số với độ trễ gần như bằng không.\r\nNghe nhạc đến 4.5 giờ khi bật chống ồn, 5 giờ khi tắt chống ồn .\r\nSử dụng song song với hộp sạc có thể dùng được đến 24 giờ nghe nhạc.\r\nHỗ trợ sạc nhanh, cho thời gian sử dụng đến 1 giờ chỉ với 5 phút sạc.\r\nHộp sạc hỗ trợ sạc không dây chuẩn Qi, tiện lợi khi sạc lại.', 1, '2020-12-03 02:50:48'),
(22, 'Tai nghe nhét tai Earpods Apple MNHF2\r\n', 1, 3, 790000, 'earpod2.jpg', 'Thiết kế hiện đại, sang trọng và thoải mái.\r\nCó phím điều chỉnh âm lượng, nghe/nhận cuộc gọi.\r\nCổng 3.5mm phù hợp nhiều loại điện thoại, máy tính bảng, laptop.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.\r\nLưu ý: Thanh toán trước khi mở seal.', 1, '2020-12-03 02:50:33'),
(23, 'Tai nghe nhét tai Sony MDR-E9LP', 3, 3, 139000, 'tainghesony1.jpg', 'Thiết kế sành điệu, bắt mắt.\r\nChất lượng âm thanh sống động và chân thực.\r\nSử dụng được cho hầu hết điện thoại, máy tính bảng, laptop có cổng 3.5mm\r\nTai nghe có dây dài 1.2 m, tiện lợi khi nghe nhạc với điện thoại bỏ trong balo, túi xách.\r\nThương hiệu Sony đến từ Nhật Bản, nổi tiếng toàn cầu trong lĩnh vực công nghệ, điện tử.', 0, '2020-12-03 02:51:15'),
(24, 'Tai nghe chụp tai Sony MDR - ZX110AP', 3, 3, 439000, 'tainghesony2.jpg', 'Thiết kế mạnh mẽ, hiện đại.\r\nĐệm tai nghe tạo cảm giác êm khi đeo và cách âm tốt.\r\nCó thể nới lỏng tai nghe thêm khoảng 4.5 cm để thoải mái khi đeo.\r\nGấp gọn dễ dàng khi cất, đựng trong balo, túi xách hoặc mang theo.\r\nDây dài 1.2 m và kết nối dễ dàng với thiết bị có cổng 3.5mm.\r\nCó nút dừng/phát nhạc, chuyển bài, nhận cuộc gọi dễ dàng.\r\nThương hiệu Sony đến từ Nhật Bản, nổi tiếng toàn cầu trong lĩnh vực công nghệ, điện tử.', 1, '2020-12-03 02:51:15'),
(32, 'Apple Watch S5 44mm viền nhôm dây cao su đen', 1, 4, 10000000, 'applewatch3.jpg', 'Apple Watch S5. chất lượng cực tốt xài sướng khỏi bàn', 1, '2020-12-16 17:00:00'),
(33, 'Apple Watch S3 LTE 42mm viền nhôm dây cao su trắng\r\n\r\n', 1, 4, 6990000, 'applewatch4.jpg', 'Đồng hồ thông minh Apple Watch được trang bị màn hình OLED Retina cho mọi hình ảnh sắc nét, hiển thị tốt cả khi sử dụng ngoài trời. Với kích thước 1.65 inch giúp bạn có thể theo dõi các thông tin to rõ, dễ dàng hơn. ', 1, '2020-12-03 02:45:59'),
(34, 'Apple Watch S6 LTE 44mm viền nhôm dây cao su', 1, 4, 15490000, 'applewatch5.jpg', 'Apple Watch S6 LTE là một trong những dòng đồng hồ được ưa chuộng nhiều nhất trên thế giới với thiết kế tinh tinh tế trong từng chi tiết, khung viền được gia công chắc chắn, dây đeo cao su đàn hồi tốt, màn hình sắc nét với mặt kính cường lực Sapphire đem lại sự thời thượng và sang trọng, cho bạn tự tin thể hiện đẳng cấp của mình', 1, '2020-12-03 02:45:59'),
(35, 'Tai nghe AirPods 2 sạc không dây Apple MRXJ2', 1, 3, 4900000, 'airpod2.jpg', 'Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.\r\nKích hoạt nhanh trợ lý ảo Siri bằng cách nói \"Hey, Siri\".\r\nCó thể sử dụng nghe nhạc lên đến 5 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.', 1, '2020-12-03 02:50:09'),
(36, 'Điện thoại Samsung Galaxy Note 20 Ultra', 4, 1, 24990000, 'ss1.png', 'Sau Galaxy Note 20 thì Galaxy Note 20 Ultra là phiên bản tiếp theo cao cấp hơn thuộc dòng Note 20 Series của Samsung, với nhiều thay đổi từ cụm camera hỗ trợ lấy nét laser AF cùng ống kính góc rộng mới, màn hình tràn viền lên đến 6.9 inch chắc chắn sẽ là chiếc điện thoại được săn đón của fan yêu thích công nghệ.', 1, '2020-12-03 02:58:47'),
(37, 'Điện thoại Samsung Galaxy Z Fold2 5G', 4, 1, 50000000, 'ss2.png', 'Samsung Galaxy Z Fold 2 là tên gọi chính thức của điện thoại màn hình gập cao cấp nhất của Samsung. Với nhiều nâng cấp tiên phong về thiết kế, hiệu năng và camera, hứa hẹn đây sẽ là một siêu phẩm thành công tiếp theo đến từ “ông trùm” sản xuất điện thoại lớn nhất thế giới.', 1, '2020-12-03 02:58:47'),
(38, 'Điện thoại Samsung Galaxy S20+', 4, 1, 23990000, 'ss3.png', 'Chiếc điện thoại Samsung Galaxy S20 Plus - Siêu phẩm với thiết kế màn hình tràn viền, hiệu năng đỉnh cao kết hợp cùng nhiều đột phá về công nghệ dẫn đầu thế giới smartphone.', 1, '2020-12-03 02:58:47'),
(39, 'Điện thoại Samsung Galaxy S20 FE', 4, 1, 15990000, 'ss4.png', 'Trong sự kiện Samsung Unpacked đặc biệt vừa qua, Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 0, '2020-12-03 02:58:47'),
(40, 'Điện thoại Samsung Galaxy A50s', 4, 1, 6990000, 'ss5.png', 'Nằm trong sứ mệnh nâng cao khả năng cạnh tranh với các smartphone đến từ nhiều nhà sản xuất Trung Quốc, mới đây Samsung tiếp tục giới thiệu phiên bản Samsung Galaxy A50s với nhiều tính năng mà trước đây chỉ xuất hiện trên dòng cao cấp.', 1, '2020-12-03 02:58:47'),
(53, 'Iphone 8 Plus 64Gb', 1, 1, 10000000, 'iphone8plus.png', 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.', 1, '2021-01-03 17:00:00'),
(54, 'Iphone 7 Plus 64Gb', 1, 1, 8600000, 'iphone7plus.png', 'iPhone 7 Plus 64GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.', 1, '2020-12-23 17:00:00'),
(59, 'ViVo V21 5G', 11, 1, 9500000, 'vivo-v21-5g-xanh-den-600x600.jpg', 'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.', 1, '2021-06-11 17:00:00'),
(60, 'ViVo V20', 11, 1, 6210000, 'vivov20update.jpg', 'Vivo tung ra chiếc điện thoại Vivo V20 (2021) là phiên bản nâng cấp của Vivo V20 ra mắt trước đó. Chiếc smartphone này được nâng cấp lên bộ xử lý mạnh mẽ hơn mà vẫn giữ được thiết kế siêu mỏng và cụm camera chụp đẹp đáng kinh ngạc.', 1, '2021-06-11 17:00:00'),
(61, 'ViVo Y72 5G', 11, 1, 6420000, 'vivoy72.jpg', 'Vivo Y72 5G mẫu smartphone 5G của Vivo, máy sở hữu một màn hình lớn, hiệu năng mạnh mẽ, cụm 3 camera sắc nét và thời lượng pin ấn tượng, máy đáp ứng tốt hầu hết nhu cầu sử dụng mà người dùng cần.', 1, '2021-06-11 17:00:00'),
(62, 'ViVo Y20', 11, 1, 3420000, 'vivoy20.jpg', 'Vivo Y72 5G mẫu smartphone 5G của Vivo, máy sở hữu một màn hình lớn, hiệu năng mạnh mẽ, cụm 3 camera sắc nét và thời lượng pin ấn tượng, máy đáp ứng tốt hầu hết nhu cầu sử dụng mà người dùng cần.', 1, '2021-06-11 17:00:00'),
(63, 'ViVo Y51', 11, 1, 4850000, 'vivoy51.jpg', 'Vivo đã mang chiếc điện thoại Vivo Y51 một lần nữa quay trở lại với người dùng trong một thiết kế hoàn toàn mới, nâng cấp từ công nghệ màn hình, cụm camera đến hệ điều hành với tên gọi Vivo Y51 (2020).', 1, '2021-06-11 17:00:00'),
(64, 'Oppo Find X3 Pro 5G', 12, 1, 21910000, 'Oppo Find X3 Pro 5G.jpg', 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.', 1, '2021-06-11 17:00:00'),
(65, 'Oppo Reno5 Marvel', 12, 1, 9690000, 'Oppo Reno5 Marvel.jpg', 'Lấy cảm hứng từ những nhân vật siêu anh hùng Avengers', 1, '2021-06-11 17:00:00'),
(66, 'Oppo Reno5', 12, 1, 6700000, 'Oppo Reno5.jpg', 'OPPO Reno5 là sự kết hợp đầy ấn tượng giữa hiệu năng và thiết kế, mang đến cho người dùng một chiếc điện thoại tích hợp nhiều công nghệ camera, sạc pin hàng đầu của OPPO trong một mức giá tầm trung.', 1, '2021-06-11 17:00:00'),
(67, 'Asus-Zenbook-ux482eg-i5 (ka166t)', 13, 2, 34990000, 'Asus-Zenbook-ux482eg-i5 (ka166t).jpg', 'Laptop Asus ZenBook Duo UX482EG i5 (KA166T) mang đến thiết kế đột phá với màn hình đôi độc đáo cùng cấu hình mạnh mẽ, hiệu suất đồ họa cao cực phù hợp với giới doanh nhân và người làm công việc sáng tạo.', 1, '2021-06-11 17:00:00'),
(68, 'Asus-Ruf-Gaming-fx516pm i7 (hn023t)', 13, 2, 32000000, 'Asus-Ruf-Gaming-fx516pm i7 (hn023t).jpg', 'Laptop Asus TUF Gaming FX516PM i7 (HN023T) sở hữu dòng chip CPU Intel Core i7 thế hệ 11 mạnh mẽ mang đến hiệu năng ấn tượng cho nhu cầu thiết kế đồ họa, làm việc văn phòng và cả chiến game cực chất.', 1, '2021-06-11 17:00:00'),
(69, 'Asus-Zenbook-ux425ea-i5-(ki429t)', 13, 2, 24000000, 'Asus-Zenbook-ux425ea-i5-(ki429t).jpg', 'Laptop Asus Zenbook UX425EA (KI429T) sở hữu vẻ ngoài tinh tế với độ bền chuẩn quân đội cùng CPU Intel thế hệ 11 hiện đại đem đến hiệu năng tối ưu và vượt trội, xử lý nhanh gọn mọi tác vụ.', 1, '2021-06-11 17:00:00'),
(70, 'Acer-Nitro-5-An515-45-r3sm-r5-(nhqbmsv)', 14, 2, 22290000, 'Acer-Nitro-5-An515-45-r3sm-r5-(nhqbmsv).jpg', 'Laptop Acer Nitro 5 AN515 45 R3SM R5 (NH.QBMSV.005) có vẻ ngoài hình hầm hố đặc trưng của dòng laptop gaming, cấu hình mạnh mẽ chạy mượt các tựa game được các game thủ ưa thích với con chip AMD Ryzen 5 và card đồ họa NVIDIA GeForce GTX 1650 4GB.', 1, '2021-06-11 17:00:00'),
(71, 'Acer-Nitro-An515-55-72p6-i7-(nhqbnsv)', 14, 2, 25490000, 'Acer-Nitro-An515-55-72p6-i7-(nhqbnsv).jpg', 'Acer Nitro 5 A515 55 72R2 i7 (NH.Q7NSV.005) là chiếc máy tính xách tay gaming đa năng vừa phù hợp với nhu cầu chơi game, vừa hỗ trợ công việc đồ họa chuyên nghiệp. Với thiết kế đầy cá tính kết hợp với một cấu hình đáng gờm, Acer Nitro đem đến những giây phút chiến game hoàn hảo.', 1, '2021-06-11 17:00:00'),
(72, 'Xiaomi mi 11', 15, 1, 17250000, 'xiaomi-mi-11-xanhduong-600x600-600x600.jpg', 'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.', 1, '2021-06-11 17:00:00'),
(73, 'Xiaomi Power Bank 3 Ultra Compact', 15, 5, 350000, 'polymer-10000mah-x.jpg', 'Pin sạc dự phòng Polymer 10.000mAh Type C Xiaomi Power Bank 3 Ultra Compact đen gần như chỉ bằng 1 tấm thẻ ngân hàng, trọng lượng 200 gram, không chiếm diện tích, cho bạn dễ dàng bỏ vào túi quần, balo, túi xách và mang theo bên mình khi cần. Bề mặt phủ màu đen tuyền phong cách, có đường kẻ dọc bám tay, cầm nắm chắc chắn hơn.', 1, '2021-06-11 17:00:00'),
(74, 'Xiaomi Power Bank 3', 15, 5, 250000, '226703-600x600.jpg', 'Pin sạc dự phòng Polymer 10.000mAh Xiaomi Mi 18W Fast Charge Power Bank 3 có thiết kế với vỏ kim loại nguyên khối gọn gàng giúp bạn có thể cầm vừa tay, khó rơi rớt. ', 1, '2021-06-11 17:00:00'),
(75, 'Xiaomi Mi Power Bank', 15, 5, 320000, 'sac-du-phong-polymer-10000mah-khong-day-xiaomi-avatar-1-600x600.jpg', 'Pin sạc dự phòng Xiaomi Mi Essential thiết kế dạng hình chữ nhật quen thuộc với lớp vỏ chắc chắn và có độ nhám giúp tăng ma sát, chống trơn trượt khi cầm nắm.', 1, '2021-06-11 17:00:00'),
(76, 'Ipad Air 4', 1, 6, 16100000, 'ipad-air-4-wifi-64gb-2020-xanhduong-600x600-600x600.jpg', 'Apple đã trình làng máy tính bảng iPad Air 4 Wifi 64 GB (2020). Đây là thiết bị đầu tiên của hãng được trang bị chip A14 Bionic - chip di động mạnh nhất của Apple (năm 2020). Và có màn lột xác nhờ thiết kế được thừa hưởng từ iPad Pro với viền màn hình mỏng bo cong quanh máy.', 1, '2021-06-11 17:00:00'),
(77, 'Ipad Pro M1', 1, 6, 33950000, 'ipad-pro-2021-129-inch-gray-600x600.jpg', 'Ipad Pro M1 2021 Tốc độ khủng, đồ họa cao tuyệt vời, và thời hạn pin cả ngày', 1, '2021-06-11 17:00:00'),
(78, 'Samsung Galaxy Tab S7', 4, 6, 29000000, 'samsung-galaxy-tab-s7-gold-new-600x600.jpg', 'Samsung Galaxy Tab S7 chiếc máy tính bảng có thiết kế tuyệt đẹp, màn hình 120 Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ thuộc top đầu thị trường máy tính bảng Android.', 1, '2021-06-11 17:00:00'),
(79, 'Galaxy Buds Pro', 4, 3, 3990000, 'bluetooth-true-wireless-galaxy-buds-pro-bac-ava-600x600.jpg', 'Thiết kế sang trọng, thời thượng cùng hộp sạc đồng nhất màu sắc đi kèm', 1, '2021-06-11 17:00:00'),
(80, 'Xiaomi Earsphone 2', 15, 3, 2590000, '226701-600x600.jpg', 'Kiểu dáng nhỏ gọn, là người bạn đồng hành trên mọi nẻo đường', 1, '2021-06-11 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'SmartPhone '),
(2, 'Laptop'),
(4, 'SmartWatch'),
(3, 'Phone'),
(5, 'Sạc '),
(6, 'Tablet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'khach hang'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `ho_ten`, `sdt`, `email`, `user_name`, `password`, `role`) VALUES
(14, 'Tiêu Hoàng Tuấn', '0335945855', 'tieuhoangtuan822001@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'quan ly'),
(15, ' Nguyễn Cao Thái', '0342964072', 'lanhoxga@gmail.com', 'thai', '1aafcfcd9efdd2e7ac43e80ce77bba79', 'khach hang'),
(18, 'caothai', '0342964072', 'lanhoxga@gmail.com', 'caothai', '14d541a04da9179626f7953b477e61a7', 'Khach Hang');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`,`user_name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
