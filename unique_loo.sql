-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Nov 16, 2015 at 08:52 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `unique_loo`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `active_job_cards`
--
CREATE TABLE `active_job_cards` (
`event_month` int(2)
,`event_year` int(4)
,`event_status_count` bigint(21)
,`id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `active_users`
--
CREATE TABLE `active_users` (
`active_users` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
`id` int(11) NOT NULL,
  `asset_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','In Active') NOT NULL,
  `booked` enum('Booked','Not Booked') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`id`, `asset_id`, `name`, `type`, `number`, `price`, `purchase_date`, `date_added`, `timestamp`, `status`, `booked`) VALUES
(1, 'sfgrvd', 'Hino H500 Truck One', 'Trailer', '1', 1243.00, '2015-10-15 00:00:00', '0000-00-00 00:00:00', '2015-11-11 18:33:57', 'In Active', 'Booked'),
(2, '', 'NVNIUJDSBFUI', 'Trailer', 'NIVBFIUD', 1243.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-10-30 20:54:38', 'Active', 'Booked'),
(3, '', 'NVNIU4523454', 'Trailer', '23DSD', 1243.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-15 18:30:56', 'Active', 'Booked'),
(4, '', 'NVNIU', 'Toilet', 'NIVBFIUD242', 1243.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-14 14:18:26', 'Active', 'Booked'),
(5, '', 'NVNIU', 'Toilet', '344DFSFV', 1243.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-14 14:18:26', 'Active', 'Booked'),
(6, '', 'NVNIU', 'Toilet', 'NIVBFIUD434', 1243.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-14 14:18:26', 'Active', 'Booked'),
(7, '', 'Toilet One', 'Toilet', 'AST:00012', 1230.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-11 18:34:07', 'Active', 'Booked'),
(8, '', 'NVNIU', 'Trailer', 'T_00025', 12000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-14 14:18:26', 'Active', 'Booked'),
(9, '', 'Dindi bvoufdbovn', 'Toilet', '12234DVNDFO', 123009.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-11 18:34:13', 'Active', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `asset_tracker`
--

CREATE TABLE `asset_tracker` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `client_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_card_id` int(11) NOT NULL,
  `invoiced` enum('No','Yes') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_tracker`
--

INSERT INTO `asset_tracker` (`id`, `name`, `qty`, `price`, `status`, `client_id`, `date_added`, `timestamp`, `job_card_id`, `invoiced`) VALUES
(1, '1', 2, 5800.00, 'Active', 0, '2015-10-08 16:54:29', '2015-10-08 14:17:22', 8, 'No'),
(2, '1', 2, 5800.00, 'Active', 0, '2015-10-08 17:00:18', '2015-10-08 14:00:18', 9, 'No'),
(3, '1', 2, 5800.00, 'Active', 0, '2015-10-08 17:00:34', '2015-10-08 14:00:34', 9, 'No'),
(4, '2', 12, 15000.00, 'Active', 0, '2015-10-08 17:06:41', '2015-10-08 14:06:41', 10, 'No'),
(5, '2', 2, 15000.00, 'Active', 0, '2015-10-08 17:20:55', '2015-10-08 14:20:55', 11, 'No'),
(6, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-08 17:29:43', '2015-10-08 14:29:43', 13, 'No'),
(7, 'Trailers', 4, 15000.00, 'Active', 0, '2015-10-08 17:31:13', '2015-10-08 14:31:13', 14, 'No'),
(8, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-08 17:31:31', '2015-10-08 14:31:31', 14, 'No'),
(9, 'Toilet', 5, 5800.00, 'Active', 0, '2015-10-08 18:04:07', '2015-10-08 15:04:07', 21, 'No'),
(10, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-08 18:04:19', '2015-10-08 15:04:19', 21, 'No'),
(11, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-10 21:02:15', '2015-10-10 18:02:15', 22, 'No'),
(12, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-12 08:43:54', '2015-10-12 05:43:54', 23, 'No'),
(13, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 09:00:46', '2015-10-13 06:00:46', 25, 'No'),
(14, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 09:31:34', '2015-10-13 06:31:34', 0, 'No'),
(15, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 10:28:47', '2015-10-13 07:28:47', 39, 'No'),
(16, 'Trailers', 3, 15000.00, 'Active', 0, '2015-10-13 10:28:56', '2015-10-13 07:28:56', 39, 'No'),
(17, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 14:25:26', '2015-10-13 11:25:26', 53, 'No'),
(18, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-13 15:50:21', '2015-10-13 12:50:21', 54, 'No'),
(19, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 15:50:31', '2015-10-13 12:50:31', 54, 'No'),
(20, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 15:50:40', '2015-10-13 12:50:40', 54, 'No'),
(21, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 15:51:27', '2015-10-13 12:51:27', 54, 'No'),
(22, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 15:53:20', '2015-10-13 12:53:20', 54, 'No'),
(23, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 15:54:56', '2015-10-13 12:54:56', 54, 'No'),
(24, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:05:06', '2015-10-13 13:05:06', 54, 'No'),
(25, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:06:42', '2015-10-13 13:06:42', 54, 'No'),
(26, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-13 16:08:08', '2015-10-13 13:08:08', 55, 'No'),
(27, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:08:25', '2015-10-13 13:08:25', 55, 'No'),
(28, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:08:31', '2015-10-13 13:08:31', 55, 'No'),
(29, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:10:27', '2015-10-13 13:10:27', 55, 'No'),
(30, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:12:15', '2015-10-13 13:12:15', 55, 'No'),
(31, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:14:45', '2015-10-13 13:14:45', 55, 'No'),
(32, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:15:33', '2015-10-13 13:15:33', 55, 'No'),
(33, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:21:50', '2015-10-13 13:21:50', 55, 'No'),
(34, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:21:58', '2015-10-13 13:21:58', 55, 'No'),
(35, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-13 16:24:31', '2015-10-13 13:24:31', 55, 'No'),
(36, 'Toilet', 5, 5800.00, 'Active', 0, '2015-10-13 16:35:25', '2015-10-13 13:35:25', 56, 'No'),
(37, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-13 16:35:31', '2015-10-13 13:35:31', 56, 'No'),
(38, 'Toilet', 5, 5800.00, 'Active', 0, '2015-10-13 16:38:56', '2015-10-13 13:38:56', 57, 'No'),
(39, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-13 16:39:04', '2015-10-13 13:39:04', 57, 'No'),
(40, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 16:40:24', '2015-10-13 13:40:24', 58, 'No'),
(41, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-13 16:40:35', '2015-10-13 13:40:35', 58, 'No'),
(42, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 16:43:13', '2015-10-13 13:43:13', 59, 'No'),
(43, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-13 16:43:20', '2015-10-13 13:43:20', 59, 'No'),
(44, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-13 16:44:55', '2015-10-13 13:44:55', 60, 'No'),
(45, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-13 16:48:17', '2015-10-13 13:48:17', 61, 'No'),
(46, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-19 13:37:31', '2015-10-19 10:37:31', 62, 'No'),
(47, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-19 13:37:44', '2015-10-19 10:37:44', 62, 'No'),
(48, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-20 21:57:38', '2015-10-20 18:57:38', 63, 'No'),
(49, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-20 21:57:51', '2015-10-20 18:57:51', 63, 'No'),
(50, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-20 21:59:02', '2015-10-20 18:59:02', 64, 'No'),
(51, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-20 21:59:08', '2015-10-20 18:59:08', 64, 'No'),
(52, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-20 22:58:38', '2015-10-20 19:58:38', 65, 'No'),
(53, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-20 23:00:51', '2015-10-20 20:00:51', 66, 'No'),
(54, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-21 11:49:44', '2015-10-21 08:49:44', 67, 'No'),
(55, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-21 11:49:56', '2015-10-21 08:49:56', 67, 'No'),
(56, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-21 13:10:07', '2015-10-21 10:10:07', 68, 'No'),
(57, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-21 20:18:57', '2015-10-21 17:18:57', 69, 'No'),
(58, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-21 20:29:29', '2015-10-21 17:29:29', 73, 'No'),
(59, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-21 20:31:40', '2015-10-21 17:31:40', 74, 'No'),
(60, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-21 20:31:51', '2015-10-21 17:31:51', 74, 'No'),
(61, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-22 08:23:25', '2015-10-22 05:23:25', 75, 'No'),
(62, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-22 08:23:36', '2015-10-22 05:23:36', 75, 'No'),
(63, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-22 08:29:07', '2015-10-22 05:29:07', 76, 'No'),
(64, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-22 08:29:17', '2015-10-22 05:29:17', 76, 'No'),
(65, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-23 14:45:14', '2015-10-23 11:45:14', 77, 'No'),
(66, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-23 15:11:47', '2015-10-23 12:11:47', 78, 'No'),
(67, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-23 15:11:56', '2015-10-23 12:11:56', 78, 'No'),
(68, 'Toilet', 8, 5800.00, 'Active', 0, '2015-10-24 00:18:35', '2015-10-23 21:18:35', 79, 'No'),
(69, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-24 00:25:15', '2015-10-23 21:25:15', 80, 'No'),
(70, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-24 00:25:22', '2015-10-23 21:25:22', 80, 'No'),
(71, 'Toilet', 2, 5800.00, 'Active', 0, '2015-10-25 16:03:57', '2015-10-25 13:03:57', 85, 'No'),
(72, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-25 16:07:41', '2015-10-25 13:07:41', 87, 'No'),
(73, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-25 16:08:14', '2015-10-25 13:08:14', 87, 'No'),
(74, 'Toilet', 6, 5800.00, 'Active', 0, '2015-10-28 15:01:41', '2015-10-28 12:01:41', 89, 'No'),
(75, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-28 15:01:53', '2015-10-28 12:01:53', 89, 'No'),
(76, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-30 06:03:59', '2015-10-30 03:03:59', 90, 'No'),
(77, 'Trailers', 2, 15000.00, 'Active', 0, '2015-10-30 06:04:07', '2015-10-30 03:04:07', 90, 'No'),
(78, 'Toilet', 4, 5800.00, 'Active', 0, '2015-10-30 06:16:09', '2015-10-30 03:16:09', 91, 'No'),
(79, 'Trailers', 3, 15000.00, 'Active', 0, '2015-10-30 06:16:20', '2015-10-30 03:16:20', 91, 'No'),
(80, 'Toilet', 3, 5800.00, 'Active', 0, '2015-10-30 22:14:56', '2015-10-30 19:14:56', 92, 'No'),
(81, 'Trailers', 1, 15000.00, 'Active', 0, '2015-10-30 22:15:03', '2015-10-30 19:15:03', 92, 'No'),
(82, 'Toilet', 12, 5800.00, 'Active', 0, '2015-11-01 07:07:07', '2015-11-01 04:07:07', 93, 'No'),
(83, 'Trailers', 4, 15000.00, 'Active', 0, '2015-11-01 07:07:17', '2015-11-01 04:07:17', 93, 'No'),
(84, 'Toilet', 4, 5800.00, 'Active', 0, '2015-11-02 12:28:15', '2015-11-02 09:28:15', 94, 'No'),
(85, 'Toilet', 6, 5800.00, 'In Active', 0, '2015-11-07 23:02:23', '2015-11-11 17:13:24', 95, 'No'),
(86, 'Trailers', 2, 15000.00, 'In Active', 0, '2015-11-07 23:02:34', '2015-11-11 17:13:24', 95, 'No'),
(87, 'Toilet', 4, 5800.00, 'Active', 0, '2015-11-11 18:51:56', '2015-11-11 15:51:56', 96, 'No'),
(88, 'Trailers', 1, 15000.00, 'Active', 0, '2015-11-11 18:52:03', '2015-11-11 15:52:03', 96, 'No'),
(89, 'Toilet', 2, 5800.00, 'Active', 0, '2015-11-14 17:12:50', '2015-11-14 14:12:50', 97, 'No'),
(90, 'Trailers', 1, 15000.00, 'Active', 0, '2015-11-14 17:13:00', '2015-11-14 14:13:00', 97, 'No'),
(91, 'Toilet', 6, 5800.00, 'Active', 0, '2015-11-15 20:23:25', '2015-11-15 17:23:25', 98, 'No'),
(92, 'Trailers', 1, 15000.00, 'Active', 0, '2015-11-15 20:23:34', '2015-11-15 17:23:34', 98, 'No'),
(93, 'Toilet', 6, 5800.00, 'Active', 0, '2015-11-15 20:34:00', '2015-11-15 17:34:00', 99, 'No'),
(94, 'Trailers', 1, 15000.00, 'Active', 0, '2015-11-15 20:35:04', '2015-11-15 17:35:04', 99, 'No'),
(95, 'Toilet', 4, 5800.00, 'Active', 0, '2015-11-15 20:36:56', '2015-11-15 17:36:56', 100, 'No'),
(96, 'Trailers', 1, 15000.00, 'Active', 0, '2015-11-15 20:37:04', '2015-11-15 17:37:04', 100, 'No'),
(97, 'Toilet', 5, 5800.00, 'Active', 0, '2015-11-15 20:38:13', '2015-11-15 17:38:13', 101, 'No'),
(98, 'Trailers', 1, 15000.00, 'Active', 0, '2015-11-15 20:38:21', '2015-11-15 17:38:21', 101, 'No'),
(99, 'Toilet', 6, 5800.00, 'Active', 0, '2015-11-15 20:39:34', '2015-11-15 17:39:34', 102, 'No'),
(100, 'Trailers', 2, 15000.00, 'Active', 0, '2015-11-15 20:39:43', '2015-11-15 17:39:43', 102, 'No'),
(101, 'Toilet', 6, 5800.00, 'Active', 0, '2015-11-15 20:49:07', '2015-11-15 17:49:07', 103, 'No'),
(102, 'Trailers', 3, 15000.00, 'Active', 0, '2015-11-15 20:49:16', '2015-11-15 17:49:16', 103, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `asset_type`
--

CREATE TABLE `asset_type` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','In Active') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_type`
--

INSERT INTO `asset_type` (`id`, `name`, `date_added`, `timestamp`, `status`) VALUES
(1, 'Trailer', '2015-10-27 00:00:00', '2015-10-30 20:40:19', 'Active'),
(2, 'Toilet', '2015-10-27 09:43:00', '2015-10-30 19:10:33', 'Active'),
(3, 'Vehicle', '2015-10-27 16:24:40', '2015-10-27 14:41:07', 'Active'),
(4, 'Modile Clininc', '2015-10-27 17:58:15', '2015-10-27 15:24:19', 'In Active');

-- --------------------------------------------------------

--
-- Table structure for table `assgnd_rsces`
--

CREATE TABLE `assgnd_rsces` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` decimal(13,2) DEFAULT '0.00',
  `job_card_id` int(11) NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assgnd_rsces`
--

INSERT INTO `assgnd_rsces` (`id`, `name`, `value`, `job_card_id`, `status`, `date_added`, `timestamp`, `type`) VALUES
(1, '3', NULL, 54, 'Active', '2015-10-18 11:00:56', '2015-10-18 08:00:56', ''),
(2, '3', NULL, 54, 'Active', '2015-10-18 11:03:13', '2015-10-18 08:03:13', ''),
(3, 'Harris', 1200.00, 54, 'Active', '2015-10-18 11:18:19', '2015-10-18 08:18:19', ''),
(4, '', 0.00, 0, 'Active', '2015-10-23 19:33:20', '2015-10-23 16:33:20', ''),
(5, '', 0.00, 0, 'Active', '2015-10-23 19:44:23', '2015-10-23 16:44:23', ''),
(6, '', 0.00, 78, 'Active', '0000-00-00 00:00:00', '2015-10-23 16:47:05', ''),
(7, '', 0.00, 77, 'Active', '0000-00-00 00:00:00', '2015-10-23 16:48:45', ''),
(8, 'NVNIUkjfbviudbf', 1450.00, 78, 'Active', '0000-00-00 00:00:00', '2015-10-29 13:42:15', ''),
(9, 'NVNIUkjfbviudbf', 1500.00, 89, 'Active', '0000-00-00 00:00:00', '2015-10-29 13:42:20', 'Toilet'),
(10, 'Harris Dindi', 1200.00, 89, 'Active', '0000-00-00 00:00:00', '2015-10-29 13:37:35', 'Support Service'),
(11, 'Sammy', 12000.00, 89, 'Active', '0000-00-00 00:00:00', '2015-10-29 13:37:25', 'Support Service'),
(12, 'NVNIUJDSBFUI', 1230.00, 78, 'Active', '2015-10-23 20:30:17', '2015-10-29 13:42:08', 'Trailers'),
(13, 'Hino H500 Truck One', 0.00, 92, 'Active', '2015-10-30 22:45:27', '2015-10-30 19:45:27', 'Trailers'),
(14, 'NVNIU', 0.00, 90, 'Active', '2015-10-30 23:36:12', '2015-10-30 20:36:12', 'Toilet'),
(15, 'Hino H500 Truck One', 0.00, 90, 'Active', '2015-10-30 23:40:50', '2015-10-30 20:40:50', 'Trailer'),
(16, 'NVNIUJDSBFUI', 0.00, 90, 'Active', '2015-10-30 23:44:45', '2015-10-30 20:44:45', 'Trailer'),
(17, 'Hino H500 Truck One', 0.00, 91, 'Active', '2015-10-30 23:49:55', '2015-10-30 20:49:55', 'Trailer'),
(18, 'CNSDVOF', 12000.00, 91, 'Active', '2015-10-30 23:50:14', '2015-10-30 20:50:14', 'Support Service'),
(19, 'NVNIUJDSBFUI', 0.00, 91, 'Active', '2015-10-30 23:54:38', '2015-10-30 20:54:38', 'Trailer'),
(20, 'Safaricom Airtime', 1500.00, 91, 'Active', '2015-10-30 23:55:21', '2015-10-30 20:55:21', 'Support Service'),
(21, 'Hino H500 Truck One', 0.00, 96, 'Active', '2015-11-11 21:33:57', '2015-11-11 18:33:57', 'Trailer'),
(22, 'Toilet One', 0.00, 96, 'Active', '2015-11-11 21:34:07', '2015-11-11 18:34:07', 'Toilet'),
(23, 'Dindi bvoufdbovn', 0.00, 96, 'Active', '2015-11-11 21:34:13', '2015-11-11 18:34:13', 'Toilet'),
(24, 'Dindi Harris Samuel', 12000.00, 96, 'Active', '2015-11-11 21:34:39', '2015-11-11 18:34:39', 'Support Service'),
(25, 'NVNIU', 0.00, 97, 'Active', '2015-11-14 17:18:26', '2015-11-14 14:18:26', 'Toilet'),
(26, 'John Otieno', 12000.00, 97, 'Active', '2015-11-14 17:22:26', '2015-11-14 14:22:26', 'Support Service'),
(27, '23DSD', 0.00, 103, 'Active', '2015-11-15 21:30:56', '2015-11-15 18:30:56', 'Trailer'),
(28, 'VBOBDF', 15808.00, 103, 'Active', '2015-11-15 21:31:18', '2015-11-15 18:31:18', 'Support Service');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `billed_client_info`
--
CREATE TABLE `billed_client_info` (
`client_id` int(11)
,`client_name` varchar(255)
,`client_address` varchar(255)
,`client_website` varchar(255)
,`client_industry` varchar(255)
,`client_phone_no` varchar(255)
,`client_email` varchar(255)
,`client_status` enum('Active','In Active')
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`job_card_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `cancelled_job_cards`
--
CREATE TABLE `cancelled_job_cards` (
`event_month` int(2)
,`event_year` int(4)
,`event_status_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('65dd7b0414833abe3aae172ad75a9f338ea5fe31', '::1', 1447695321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373639353332303b757365725f69647c733a313a2231223b757365725f6e616d657c733a353a2261646d696e223b6c6f67696e5f6c6f67735f69647c693a38313b76616c6964617465647c623a313b),
('dae1b4416b135f6e9113270506af73030858baae', '::1', 1447695754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434373639353735343b757365725f69647c733a313a2231223b757365725f6e616d657c733a353a2261646d696e223b6c6f67696e5f6c6f67735f69647c693a38323b76616c6964617465647c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','In Active') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `address`, `website`, `industry`, `phone_no`, `email`, `date_added`, `timestamp`, `status`) VALUES
(1, 'Strathmore University', '59857 - 00200 Nairobi Kenya', 'strathmore.edu', 'Education', '0712345678', 'info@strathmore.edu', '2015-10-14 00:00:00', '2015-10-05 05:34:09', 'Active'),
(2, 'PSC', '1234', 'psc.go.ke', 'Government of Kenya', '0123354657', 'info@psc.go.ke', '0000-00-00 00:00:00', '2015-10-05 06:59:49', 'In Active'),
(3, 'MOW', '1234543', 'moh.go.ke', 'Health', '07123435465', 'info@moh.go.ke', '0000-00-00 00:00:00', '2015-10-25 04:00:39', 'Active'),
(4, 'MOH', '1234543', 'moh.go.ke', 'Health', '07123435465', 'info@moh.go.ke', '2015-10-05 10:07:31', '2015-10-05 07:07:31', 'Active'),
(5, 'National Housing Corporation', '1234-00200', 'http:www.nhc.go.ke', 'Housing', '0712345678', 'info@nhc.go.ke', '2015-10-12 19:25:36', '2015-10-12 16:25:36', 'Active'),
(6, 'Shwari Healthcare Ltd', '21821-00200 Nairobi', 'shwarihealthcare.com', 'Health ', '0712345678', 'info@shwarihealthcare.com', '2015-10-21 11:48:55', '2015-10-21 08:48:55', 'Active'),
(7, 'Safaricom Ltd', '213452-00200', 'http://www.safaricom.co.ke', 'Telecommunication', '0722000000', 'info@safaricom.co.ke', '2015-10-30 05:53:30', '2015-10-30 02:53:30', 'Active'),
(9, 'Kenya Power Ltd', '1324450-00200', 'http://www.kplc.co.ke', 'Energy', '0733053532', 'info@kplc.co.ke', '2015-10-30 05:58:42', '2015-10-30 02:58:42', 'Active'),
(10, 'Kenya Commercial Bank', '45456532-00200', 'http://www.kcb.co.ke', 'Banking', '07123354645', 'enquiries@kcb.co.ke', '2015-10-30 06:01:32', '2015-10-30 03:01:32', 'Active'),
(11, 'Airtel Kenya Ltd', '3850358', 'http://www.africa.airtel.com', 'Telcommunications', '0733000000', 'info@africa.airtel.com', '2015-11-01 07:06:21', '2015-11-01 04:06:21', 'Active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `client_payment_list`
--
CREATE TABLE `client_payment_list` (
`asset_name` varchar(255)
,`qty` int(11)
,`amount_charged` int(11)
,`amount_paid` int(11)
,`balance` bigint(12)
,`payment_method` varchar(255)
,`payment_code` varchar(255)
,`job_card_no` varchar(255)
,`job_card_id` int(11)
,`invoice_no` varchar(255)
,`statement_id` int(11)
,`client_id` int(11)
,`status` enum('Active','In Active')
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `clnt_pymnt_stmnt_rprt`
--
CREATE TABLE `clnt_pymnt_stmnt_rprt` (
`client_id` int(11)
,`client_name` varchar(255)
,`phone_no` varchar(255)
,`job_card_id` int(11)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`date_added` varchar(50)
,`month` int(2)
,`year` int(4)
,`amount_charged` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `cln_pymnt_stmnt_rprt`
--
CREATE TABLE `cln_pymnt_stmnt_rprt` (
`client_id` int(11)
,`client_name` varchar(255)
,`phone_no` varchar(255)
,`job_card_id` int(11)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`date_added` datetime
,`amount_charged` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `conf`
--

CREATE TABLE `conf` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conf`
--

INSERT INTO `conf` (`id`, `name`, `address`, `website`, `pin`, `phone_no`, `email`, `date_added`, `timestamp`) VALUES
(1, 'Unique Loo Ltd', 'Address : Corner House 13th Floor, Kimathi Street Opposite Hilton Hotel\r\nPostal code/ZIP :  P.O. BOX 42278-00100, Nairobi, Kenya.', 'http://uniqueloo.co.ke', 'P1257687543', 'Phone : 0722 852 180\r\nPhone : 0724 616 134', 'Email : info@uniqueloo.com', '2015-10-14 09:14:22', '2015-10-14 06:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
`id` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(45) NOT NULL DEFAULT '',
  `continent` char(2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `countryName`, `continent`, `timestamp`) VALUES
(1, 'AD', 'Andorra', 'EU', '2015-11-02 04:16:35'),
(2, 'AE', 'United Arab Emirates', 'AS', '2015-11-02 04:16:35'),
(3, 'AF', 'Afghanistan', 'AS', '2015-11-02 04:16:35'),
(4, 'AG', 'Antigua and Barbuda', 'NA', '2015-11-02 04:16:35'),
(5, 'AI', 'Anguilla', 'NA', '2015-11-02 04:16:35'),
(6, 'AL', 'Albania', 'EU', '2015-11-02 04:16:35'),
(7, 'AM', 'Armenia', 'AS', '2015-11-02 04:16:35'),
(8, 'AO', 'Angola', 'AF', '2015-11-02 04:16:35'),
(9, 'AQ', 'Antarctica', 'AN', '2015-11-02 04:16:35'),
(10, 'AR', 'Argentina', 'SA', '2015-11-02 04:16:35'),
(11, 'AS', 'American Samoa', 'OC', '2015-11-02 04:16:35'),
(12, 'AT', 'Austria', 'EU', '2015-11-02 04:16:35'),
(13, 'AU', 'Australia', 'OC', '2015-11-02 04:16:35'),
(14, 'AW', 'Aruba', 'NA', '2015-11-02 04:16:35'),
(15, 'AX', 'Åland', 'EU', '2015-11-02 04:16:35'),
(16, 'AZ', 'Azerbaijan', 'AS', '2015-11-02 04:16:35'),
(17, 'BA', 'Bosnia and Herzegovina', 'EU', '2015-11-02 04:16:35'),
(18, 'BB', 'Barbados', 'NA', '2015-11-02 04:16:35'),
(19, 'BD', 'Bangladesh', 'AS', '2015-11-02 04:16:35'),
(20, 'BE', 'Belgium', 'EU', '2015-11-02 04:16:35'),
(21, 'BF', 'Burkina Faso', 'AF', '2015-11-02 04:16:35'),
(22, 'BG', 'Bulgaria', 'EU', '2015-11-02 04:16:35'),
(23, 'BH', 'Bahrain', 'AS', '2015-11-02 04:16:35'),
(24, 'BI', 'Burundi', 'AF', '2015-11-02 04:16:35'),
(25, 'BJ', 'Benin', 'AF', '2015-11-02 04:16:35'),
(26, 'BL', 'Saint Barthélemy', 'NA', '2015-11-02 04:16:35'),
(27, 'BM', 'Bermuda', 'NA', '2015-11-02 04:16:35'),
(28, 'BN', 'Brunei', 'AS', '2015-11-02 04:16:35'),
(29, 'BO', 'Bolivia', 'SA', '2015-11-02 04:16:35'),
(30, 'BQ', 'Bonaire', 'NA', '2015-11-02 04:16:35'),
(31, 'BR', 'Brazil', 'SA', '2015-01-02 04:16:35'),
(32, 'BS', 'Bahamas', 'NA', '2015-01-02 04:16:35'),
(33, 'BT', 'Bhutan', 'AS', '2015-01-02 04:16:35'),
(34, 'BV', 'Bouvet Island', 'AN', '2015-01-02 04:16:35'),
(35, 'BW', 'Botswana', 'AF', '2015-01-02 04:16:35'),
(36, 'BY', 'Belarus', 'EU', '2015-01-02 04:16:35'),
(37, 'BZ', 'Belize', 'NA', '2015-01-02 04:16:35'),
(38, 'CA', 'Canada', 'NA', '2015-01-02 04:16:35'),
(39, 'CC', 'Cocos [Keeling] Islands', 'AS', '2015-01-02 04:16:35'),
(40, 'CD', 'Democratic Republic of the Congo', 'AF', '2015-01-02 04:16:35'),
(41, 'CF', 'Central African Republic', 'AF', '2015-01-02 04:16:35'),
(42, 'CG', 'Republic of the Congo', 'AF', '2015-01-02 04:16:35'),
(43, 'CH', 'Switzerland', 'EU', '2015-01-02 04:16:35'),
(44, 'CI', 'Ivory Coast', 'AF', '2015-01-02 04:16:35'),
(45, 'CK', 'Cook Islands', 'OC', '2015-01-02 04:16:35'),
(46, 'CL', 'Chile', 'SA', '2015-01-02 04:16:35'),
(47, 'CM', 'Cameroon', 'AF', '2015-01-02 04:16:35'),
(48, 'CN', 'China', 'AS', '2015-01-02 04:16:35'),
(49, 'CO', 'Colombia', 'SA', '2015-01-02 04:16:35'),
(50, 'CR', 'Costa Rica', 'NA', '2015-01-02 04:16:35'),
(51, 'CU', 'Cuba', 'NA', '2015-01-02 04:16:35'),
(52, 'CV', 'Cape Verde', 'AF', '2015-01-02 04:16:35'),
(53, 'CW', 'Curacao', 'NA', '2015-01-02 04:16:35'),
(54, 'CX', 'Christmas Island', 'AS', '2015-01-02 04:16:35'),
(55, 'CY', 'Cyprus', 'EU', '2015-01-02 04:16:35'),
(56, 'CZ', 'Czech Republic', 'EU', '2015-01-02 04:16:35'),
(57, 'DE', 'Germany', 'EU', '2015-01-02 04:16:35'),
(58, 'DJ', 'Djibouti', 'AF', '2015-01-02 04:16:35'),
(59, 'DK', 'Denmark', 'EU', '2015-01-02 04:16:35'),
(60, 'DM', 'Dominica', 'NA', '2015-01-02 04:16:35'),
(61, 'DO', 'Dominican Republic', 'NA', '2015-02-02 04:16:35'),
(62, 'DZ', 'Algeria', 'AF', '2015-02-02 04:16:35'),
(63, 'EC', 'Ecuador', 'SA', '2015-02-02 04:16:35'),
(64, 'EE', 'Estonia', 'EU', '2015-02-02 04:16:35'),
(65, 'EG', 'Egypt', 'AF', '2015-02-02 04:16:35'),
(66, 'EH', 'Western Sahara', 'AF', '2015-02-02 04:16:35'),
(67, 'ER', 'Eritrea', 'AF', '2015-02-02 04:16:35'),
(68, 'ES', 'Spain', 'EU', '2015-02-02 04:16:35'),
(69, 'ET', 'Ethiopia', 'AF', '2015-02-02 04:16:35'),
(70, 'FI', 'Finland', 'EU', '2015-02-02 04:16:35'),
(71, 'FJ', 'Fiji', 'OC', '2015-02-02 04:16:35'),
(72, 'FK', 'Falkland Islands', 'SA', '2015-02-02 04:16:35'),
(73, 'FM', 'Micronesia', 'OC', '2015-02-02 04:16:35'),
(74, 'FO', 'Faroe Islands', 'EU', '2015-02-02 04:16:35'),
(75, 'FR', 'France', 'EU', '2015-02-02 04:16:35'),
(76, 'GA', 'Gabon', 'AF', '2015-02-02 04:16:35'),
(77, 'GB', 'United Kingdom', 'EU', '2015-02-02 04:16:35'),
(78, 'GD', 'Grenada', 'NA', '2015-02-02 04:16:35'),
(79, 'GE', 'Georgia', 'AS', '2015-02-02 04:16:35'),
(80, 'GF', 'French Guiana', 'SA', '2015-02-02 04:16:35'),
(81, 'GG', 'Guernsey', 'EU', '2015-02-02 04:16:35'),
(82, 'GH', 'Ghana', 'AF', '2015-02-02 04:16:35'),
(83, 'GI', 'Gibraltar', 'EU', '2015-02-02 04:16:35'),
(84, 'GL', 'Greenland', 'NA', '2015-02-02 04:16:35'),
(85, 'GM', 'Gambia', 'AF', '2015-02-02 04:16:35'),
(86, 'GN', 'Guinea', 'AF', '2015-02-02 04:16:35'),
(87, 'GP', 'Guadeloupe', 'NA', '2015-02-02 04:16:35'),
(88, 'GQ', 'Equatorial Guinea', 'AF', '2015-02-02 04:16:35'),
(89, 'GR', 'Greece', 'EU', '2015-02-02 04:16:35'),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'AN', '2015-02-02 04:16:35'),
(91, 'GT', 'Guatemala', 'NA', '2015-06-02 04:16:35'),
(92, 'GU', 'Guam', 'OC', '2015-06-02 04:16:35'),
(93, 'GW', 'Guinea-Bissau', 'AF', '2015-06-02 04:16:35'),
(94, 'GY', 'Guyana', 'SA', '2015-06-02 04:16:35'),
(95, 'HK', 'Hong Kong', 'AS', '2015-06-02 04:16:35'),
(96, 'HM', 'Heard Island and McDonald Islands', 'AN', '2015-06-02 04:16:35'),
(97, 'HN', 'Honduras', 'NA', '2015-06-02 04:16:35'),
(98, 'HR', 'Croatia', 'EU', '2015-06-02 04:16:35'),
(99, 'HT', 'Haiti', 'NA', '2015-06-02 04:16:35'),
(100, 'HU', 'Hungary', 'EU', '2015-06-02 04:16:35'),
(101, 'ID', 'Indonesia', 'AS', '2015-08-02 04:16:35'),
(102, 'IE', 'Ireland', 'EU', '2015-08-02 04:16:35'),
(103, 'IL', 'Israel', 'AS', '2015-08-02 04:16:35'),
(104, 'IM', 'Isle of Man', 'EU', '2015-08-02 04:16:35'),
(105, 'IN', 'India', 'AS', '2015-08-02 04:16:35'),
(106, 'IO', 'British Indian Ocean Territory', 'AS', '2015-08-02 04:16:35'),
(107, 'IQ', 'Iraq', 'AS', '2015-08-02 04:16:35'),
(108, 'IR', 'Iran', 'AS', '2015-08-02 04:16:35'),
(109, 'IS', 'Iceland', 'EU', '2015-08-02 04:16:35'),
(110, 'IT', 'Italy', 'EU', '2015-08-02 04:16:35'),
(111, 'JE', 'Jersey', 'EU', '2015-08-02 04:16:35'),
(112, 'JM', 'Jamaica', 'NA', '2015-08-02 04:16:35'),
(113, 'JO', 'Jordan', 'AS', '2015-08-02 04:16:35'),
(114, 'JP', 'Japan', 'AS', '2015-08-02 04:16:35'),
(115, 'KE', 'Kenya', 'AF', '2015-08-02 04:16:35'),
(116, 'KG', 'Kyrgyzstan', 'AS', '2015-08-02 04:16:35'),
(117, 'KH', 'Cambodia', 'AS', '2015-08-02 04:16:35'),
(118, 'KI', 'Kiribati', 'OC', '2015-08-02 04:16:35'),
(119, 'KM', 'Comoros', 'AF', '2015-08-02 04:16:35'),
(120, 'KN', 'Saint Kitts and Nevis', 'NA', '2015-08-02 04:16:35'),
(121, 'KP', 'North Korea', 'AS', '2015-08-02 04:16:35'),
(122, 'KR', 'South Korea', 'AS', '2015-08-02 04:16:35'),
(123, 'KW', 'Kuwait', 'AS', '2015-08-02 04:16:35'),
(124, 'KY', 'Cayman Islands', 'NA', '2015-08-02 04:16:35'),
(125, 'KZ', 'Kazakhstan', 'AS', '2015-08-02 04:16:35'),
(126, 'LA', 'Laos', 'AS', '2015-08-02 04:16:35'),
(127, 'LB', 'Lebanon', 'AS', '2015-08-02 04:16:35'),
(128, 'LC', 'Saint Lucia', 'NA', '2015-08-02 04:16:35'),
(129, 'LI', 'Liechtenstein', 'EU', '2015-08-02 04:16:35'),
(130, 'LK', 'Sri Lanka', 'AS', '2015-08-02 04:16:35'),
(131, 'LR', 'Liberia', 'AF', '2015-08-02 04:16:35'),
(132, 'LS', 'Lesotho', 'AF', '2015-08-02 04:16:35'),
(133, 'LT', 'Lithuania', 'EU', '2015-08-02 04:16:35'),
(134, 'LU', 'Luxembourg', 'EU', '2015-08-02 04:16:35'),
(135, 'LV', 'Latvia', 'EU', '2015-08-02 04:16:35'),
(136, 'LY', 'Libya', 'AF', '2015-08-02 04:16:35'),
(137, 'MA', 'Morocco', 'AF', '2015-08-02 04:16:35'),
(138, 'MC', 'Monaco', 'EU', '2015-08-02 04:16:35'),
(139, 'MD', 'Moldova', 'EU', '2015-08-02 04:16:35'),
(140, 'ME', 'Montenegro', 'EU', '2015-08-02 04:16:35'),
(141, 'MF', 'Saint Martin', 'NA', '2015-08-02 04:16:35'),
(142, 'MG', 'Madagascar', 'AF', '2015-08-02 04:16:35'),
(143, 'MH', 'Marshall Islands', 'OC', '2015-08-02 04:16:35'),
(144, 'MK', 'Macedonia', 'EU', '2015-08-02 04:16:35'),
(145, 'ML', 'Mali', 'AF', '2015-08-02 04:16:35'),
(146, 'MM', 'Myanmar [Burma]', 'AS', '2015-08-02 04:16:35'),
(147, 'MN', 'Mongolia', 'AS', '2015-08-02 04:16:35'),
(148, 'MO', 'Macao', 'AS', '2015-08-02 04:16:35'),
(149, 'MP', 'Northern Mariana Islands', 'OC', '2015-08-02 04:16:35'),
(150, 'MQ', 'Martinique', 'NA', '2015-08-02 04:16:35'),
(151, 'MR', 'Mauritania', 'AF', '2015-07-02 04:16:35'),
(152, 'MS', 'Montserrat', 'NA', '2015-07-02 04:16:35'),
(153, 'MT', 'Malta', 'EU', '2015-07-02 04:16:35'),
(154, 'MU', 'Mauritius', 'AF', '2015-07-02 04:16:35'),
(155, 'MV', 'Maldives', 'AS', '2015-07-02 04:16:35'),
(156, 'MW', 'Malawi', 'AF', '2015-07-02 04:16:35'),
(157, 'MX', 'Mexico', 'NA', '2015-07-02 04:16:35'),
(158, 'MY', 'Malaysia', 'AS', '2015-07-02 04:16:35'),
(159, 'MZ', 'Mozambique', 'AF', '2015-07-02 04:16:35'),
(160, 'NA', 'Namibia', 'AF', '2015-07-02 04:16:35'),
(161, 'NC', 'New Caledonia', 'OC', '2015-07-02 04:16:35'),
(162, 'NE', 'Niger', 'AF', '2015-07-02 04:16:35'),
(163, 'NF', 'Norfolk Island', 'OC', '2015-07-02 04:16:35'),
(164, 'NG', 'Nigeria', 'AF', '2015-07-02 04:16:35'),
(165, 'NI', 'Nicaragua', 'NA', '2015-07-02 04:16:35'),
(166, 'NL', 'Netherlands', 'EU', '2015-07-02 04:16:35'),
(167, 'NO', 'Norway', 'EU', '2015-07-02 04:16:35'),
(168, 'NP', 'Nepal', 'AS', '2015-07-02 04:16:35'),
(169, 'NR', 'Nauru', 'OC', '2015-07-02 04:16:35'),
(170, 'NU', 'Niue', 'OC', '2015-07-02 04:16:35'),
(171, 'NZ', 'New Zealand', 'OC', '2015-07-02 04:16:35'),
(172, 'OM', 'Oman', 'AS', '2015-07-02 04:16:35'),
(173, 'PA', 'Panama', 'NA', '2015-07-02 04:16:35'),
(174, 'PE', 'Peru', 'SA', '2015-07-02 04:16:35'),
(175, 'PF', 'French Polynesia', 'OC', '2015-07-02 04:16:35'),
(176, 'PG', 'Papua New Guinea', 'OC', '2015-07-02 04:16:35'),
(177, 'PH', 'Philippines', 'AS', '2015-07-02 04:16:35'),
(178, 'PK', 'Pakistan', 'AS', '2015-07-02 04:16:35'),
(179, 'PL', 'Poland', 'EU', '2015-07-02 04:16:35'),
(180, 'PM', 'Saint Pierre and Miquelon', 'NA', '2015-07-02 04:16:35'),
(181, 'PN', 'Pitcairn Islands', 'OC', '2015-07-02 04:16:35'),
(182, 'PR', 'Puerto Rico', 'NA', '2015-07-02 04:16:35'),
(183, 'PS', 'Palestine', 'AS', '2015-07-02 04:16:35'),
(184, 'PT', 'Portugal', 'EU', '2015-07-02 04:16:35'),
(185, 'PW', 'Palau', 'OC', '2015-07-02 04:16:35'),
(186, 'PY', 'Paraguay', 'SA', '2015-07-02 04:16:35'),
(187, 'QA', 'Qatar', 'AS', '2015-07-02 04:16:35'),
(188, 'RE', 'Réunion', 'AF', '2015-07-02 04:16:35'),
(189, 'RO', 'Romania', 'EU', '2015-07-02 04:16:35'),
(190, 'RS', 'Serbia', 'EU', '2015-07-02 04:16:35'),
(191, 'RU', 'Russia', 'EU', '2015-07-02 04:16:35'),
(192, 'RW', 'Rwanda', 'AF', '2015-07-02 04:16:35'),
(193, 'SA', 'Saudi Arabia', 'AS', '2015-07-02 04:16:35'),
(194, 'SB', 'Solomon Islands', 'OC', '2015-07-02 04:16:35'),
(195, 'SC', 'Seychelles', 'AF', '2015-07-02 04:16:35'),
(196, 'SD', 'Sudan', 'AF', '2015-07-02 04:16:35'),
(197, 'SE', 'Sweden', 'EU', '2015-07-02 04:16:35'),
(198, 'SG', 'Singapore', 'AS', '2015-07-02 04:16:35'),
(199, 'SH', 'Saint Helena', 'AF', '2015-07-02 04:16:35'),
(200, 'SI', 'Slovenia', 'EU', '2015-07-02 04:16:35'),
(201, 'SJ', 'Svalbard and Jan Mayen', 'EU', '2015-10-02 04:16:35'),
(202, 'SK', 'Slovakia', 'EU', '2015-10-02 04:16:35'),
(203, 'SL', 'Sierra Leone', 'AF', '2015-10-02 04:16:35'),
(204, 'SM', 'San Marino', 'EU', '2015-10-02 04:16:35'),
(205, 'SN', 'Senegal', 'AF', '2015-10-02 04:16:35'),
(206, 'SO', 'Somalia', 'AF', '2015-10-02 04:16:35'),
(207, 'SR', 'Suriname', 'SA', '2015-10-02 04:16:35'),
(208, 'SS', 'South Sudan', 'AF', '2015-10-02 04:16:35'),
(209, 'ST', 'São Tomé and Príncipe', 'AF', '2015-10-02 04:16:35'),
(210, 'SV', 'El Salvador', 'NA', '2015-10-02 04:16:35'),
(211, 'SX', 'Sint Maarten', 'NA', '2015-10-02 04:16:35'),
(212, 'SY', 'Syria', 'AS', '2015-10-02 04:16:35'),
(213, 'SZ', 'Swaziland', 'AF', '2015-10-02 04:16:35'),
(214, 'TC', 'Turks and Caicos Islands', 'NA', '2015-10-02 04:16:35'),
(215, 'TD', 'Chad', 'AF', '2015-10-02 04:16:35'),
(216, 'TF', 'French Southern Territories', 'AN', '2015-10-02 04:16:35'),
(217, 'TG', 'Togo', 'AF', '2015-10-02 04:16:35'),
(218, 'TH', 'Thailand', 'AS', '2015-10-02 04:16:35'),
(219, 'TJ', 'Tajikistan', 'AS', '2015-10-02 04:16:35'),
(220, 'TK', 'Tokelau', 'OC', '2015-10-02 04:16:35'),
(221, 'TL', 'East Timor', 'OC', '2015-10-02 04:16:35'),
(222, 'TM', 'Turkmenistan', 'AS', '2015-10-02 04:16:35'),
(223, 'TN', 'Tunisia', 'AF', '2015-10-02 04:16:35'),
(224, 'TO', 'Tonga', 'OC', '2015-10-02 04:16:35'),
(225, 'TR', 'Turkey', 'AS', '2015-10-02 04:16:35'),
(226, 'TT', 'Trinidad and Tobago', 'NA', '2015-10-02 04:16:35'),
(227, 'TV', 'Tuvalu', 'OC', '2015-10-02 04:16:35'),
(228, 'TW', 'Taiwan', 'AS', '2015-10-02 04:16:35'),
(229, 'TZ', 'Tanzania', 'AF', '2015-10-02 04:16:35'),
(230, 'UA', 'Ukraine', 'EU', '2015-10-02 04:16:35'),
(231, 'UG', 'Uganda', 'AF', '0000-00-00 00:00:00'),
(232, 'UM', 'U.S. Minor Outlying Islands', 'OC', '0000-00-00 00:00:00'),
(233, 'US', 'United States', 'NA', '0000-00-00 00:00:00'),
(234, 'UY', 'Uruguay', 'SA', '0000-00-00 00:00:00'),
(235, 'UZ', 'Uzbekistan', 'AS', '0000-00-00 00:00:00'),
(236, 'VA', 'Vatican City', 'EU', '0000-00-00 00:00:00'),
(237, 'VC', 'Saint Vincent and the Grenadines', 'NA', '0000-00-00 00:00:00'),
(238, 'VE', 'Venezuela', 'SA', '0000-00-00 00:00:00'),
(239, 'VG', 'British Virgin Islands', 'NA', '0000-00-00 00:00:00'),
(240, 'VI', 'U.S. Virgin Islands', 'NA', '0000-00-00 00:00:00'),
(241, 'VN', 'Vietnam', 'AS', '0000-00-00 00:00:00'),
(242, 'VU', 'Vanuatu', 'OC', '0000-00-00 00:00:00'),
(243, 'WF', 'Wallis and Futuna', 'OC', '0000-00-00 00:00:00'),
(244, 'WS', 'Samoa', 'OC', '0000-00-00 00:00:00'),
(245, 'XK', 'Kosovo', 'EU', '0000-00-00 00:00:00'),
(246, 'YE', 'Yemen', 'AS', '0000-00-00 00:00:00'),
(247, 'YT', 'Mayotte', 'AF', '0000-00-00 00:00:00'),
(248, 'ZA', 'South Africa', 'AF', '0000-00-00 00:00:00'),
(249, 'ZM', 'Zambia', 'AF', '0000-00-00 00:00:00'),
(250, 'ZW', 'Zimbabwe', 'AF', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `daily_expense_report`
--
CREATE TABLE `daily_expense_report` (
`job_card_id` int(11)
,`client_id` int(11)
,`client_name` varchar(255)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`total_expense` decimal(35,2)
,`year` int(4)
,`month` int(2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `daily_revenue_report`
--
CREATE TABLE `daily_revenue_report` (
`job_card_id` int(11)
,`client_id` int(11)
,`client_name` varchar(255)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`total_revenue` decimal(32,0)
,`year` int(4)
,`month` int(2)
);
-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `status` enum('Active','In Active') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `timestamp`, `user_id`, `status`) VALUES
(1, 'Operations', '2015-09-19 12:51:58', 0, 'Active'),
(2, 'Finance', '2015-09-19 12:51:58', 0, 'Active'),
(3, 'Adminstration', '2015-09-19 12:52:28', 0, 'Active'),
(4, 'Marketing', '2015-09-19 12:52:28', 0, 'Active'),
(5, 'Projects Department', '2015-10-25 10:07:02', 0, 'Active'),
(6, 'Projects', '2015-10-25 10:06:10', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `o_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_no` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `date_added` datetime NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `gender` enum('Female','Male') NOT NULL,
  `employee_no` varchar(255) NOT NULL,
  `random_key` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `title`, `f_name`, `s_name`, `o_name`, `email`, `id_no`, `dob`, `marital_status`, `nationality`, `time_stamp`, `role_id`, `department_id`, `status`, `date_added`, `phone_no`, `gender`, `employee_no`, `random_key`) VALUES
(1, '1', 'HarriS', 'Samuel', 'Dindi', 'harrisdindisamuel@gmail.com', '28200148', '12-12-1990', 'Single', 'Kenya', '2015-10-29 08:19:22', 7, 3, 'Active', '0000-00-00 00:00:00', '080357935', 'Male', 'UL_001', ''),
(2, '2', 'Samuel', 'dINDI', 'DINDI', 'harris.samuel@strathmore.edu', '12389712', '12-10-1990', 'Single', 'Kenya', '2015-11-10 15:39:06', 2, 1, 'Active', '0000-00-00 00:00:00', '5804765478243', 'Female', 'UL_002', '798095609272361A'),
(3, '0', 'Wambui', 'Kiruk', 'Wambo', 'ruthbobo@gmail.com', '12345678', '2015-10-30', 'Divorced', 'Kenya', '2015-10-27 14:34:18', 9, 1, 'Active', '2015-10-07 16:54:26', '0712345678', 'Female', 'UL_003', ''),
(4, '', 'DIndi', 'Harris', '', 'harris@harris-dindi.com', '125465432', '2015-10-28', 'Single', 'Kenya', '2015-10-27 14:34:22', 7, 3, 'Active', '2015-10-25 11:06:36', '', '', 'UL_004', ''),
(5, '', 'erhbgf', 'tcd', 'rte', 'bbvf@fgd.gfds', 'tyer', '2015-10-20', 'Engaged', 'Kenya', '2015-10-27 14:34:42', 4, 4, 'Active', '2015-10-25 11:17:20', 'bvecd', 'Female', 'UL_005', ''),
(6, '', 'ernigbfgni', 'bdfin', 'udbigf', 'onbgf2dn@donb.dnvo', 'gbnugfn', '2015-10-21', 'Single', 'Kenya', '2015-10-27 14:34:35', 7, 4, 'Active', '2015-10-25 11:26:38', 'vidfnbvif', 'Female', 'UL_006', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `expenses_incurred`
--
CREATE TABLE `expenses_incurred` (
`total_expenses` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `expenses_per_job_card`
--
CREATE TABLE `expenses_per_job_card` (
`client_id` int(11)
,`client_name` varchar(255)
,`job_card_id` int(11)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`expense` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `expense_per_client`
--
CREATE TABLE `expense_per_client` (
`client_id` int(11)
,`client_name` varchar(255)
,`industry` varchar(255)
,`total_expense` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `expense_per_month`
--
CREATE TABLE `expense_per_month` (
`expense_month` int(2)
,`expense_year` int(4)
,`expense` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `expense_ytd`
--
CREATE TABLE `expense_ytd` (
`expense` decimal(35,2)
,`year` int(4)
);
-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `level` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `controller_name` text NOT NULL,
  `function_name` text NOT NULL,
  `i_tag` text NOT NULL,
  `description` text NOT NULL,
  `span_tag` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`id`, `name`, `code`, `status`, `level`, `date_added`, `timestamp`, `controller_name`, `function_name`, `i_tag`, `description`, `span_tag`) VALUES
(1, 'Employees', ' <li><a href="<?php echo base_url(); ?>admin/employees"><i class="fa fa-edit"></i> Employees <span class="fa fa-chevron-right"></span></a>                                           ', 'Active', 1, '2015-10-21 19:48:52', '2015-11-14 13:20:43', 'admin', 'employees', '<i class="fa fa-edit"></i>', 'Employees', '<span class="fa fa-chevron-right"></span>'),
(2, 'Users', '<li><a href="<?php echo base_url(); ?>admin/users"><i class="fa fa-edit"></i> Users <span class="fa fa-chevron-right"></span></a>', 'Active', 1, '2015-10-21 21:45:54', '2015-10-22 13:39:19', 'admin', 'users', '<i class="fa fa-edit"></i>', 'Users', '<span class="fa fa-chevron-right"></span>'),
(3, 'Roles', ' <li><a href="<?php echo base_url(); ?>admin/roles"><i class="fa fa-edit"></i> Roles <span class="fa fa-chevron-right"></span></a>\n                                           ', 'Active', 1, '2015-10-21 16:41:46', '2015-10-22 13:22:17', 'admin', 'roles', '<i class="fa fa-edit"></i>', 'Roles', '<span class="fa fa-chevron-right"></span>'),
(4, 'Department', ' <li><a href="<?php echo base_url(); ?>admin/department"><i class="fa fa-edit"></i> Department <span class="fa fa-chevron-right"></span></a>\n                                           ', 'Active', 1, '2015-10-21 19:49:48', '2015-10-22 13:22:18', 'admin', 'department', '<i class="fa fa-edit"></i>', 'Department', '<span class="fa fa-chevron-right"></span>'),
(5, 'Assets', ' <li><a href="<?php echo base_url(); ?>admin/assets"><i class="fa fa-edit"></i> Assets <span class="fa fa-chevron-right"></span></a>\n                                           ', 'Active', 1, '2015-10-21 19:51:00', '2015-10-22 13:22:20', 'admin', 'assets', '<i class="fa fa-edit"></i>', 'Assets', '<span class="fa fa-chevron-right"></span>'),
(6, 'Clients', ' <li><a href="<?php echo base_url(); ?>admin/clients"><i class="fa fa-edit"></i> Clients <span class="fa fa-chevron-right"></span></a>\n                                           ', 'Active', 1, '2015-10-21 18:48:00', '2015-10-22 13:22:22', 'admin', 'clients', '<i class="fa fa-edit"></i>', 'Clients', '<span class="fa fa-chevron-right"></span>'),
(7, 'Standards', ' <li><a href="<?php echo base_url(); ?>admin/standards"><i class="fa fa-edit"></i> System Standards <span class="fa fa-chevron-right"></span></a></li>\n                                       ', 'Active', 1, '2015-10-21 20:49:00', '2015-10-22 13:22:24', 'admin', 'standards', '<i class="fa fa-edit"></i>', 'Standards', '<span class="fa fa-chevron-right"></span>'),
(8, 'Book Job Card', ' <li><a href="<?php echo base_url(); ?>operations">Book Job Card</a>\n                                            </li>\n                                           ', 'Active', 2, '2015-10-21 16:47:00', '2015-10-30 08:15:00', 'operations', 'index', '<i class="fa fa-edit"></i>', 'Book Job Card', '<span class="fa fa-chevron-right"></span>'),
(9, 'Payments', ' <li><a href="<?php echo base_url(); ?>operations/payments">Cashier</a>\n                                            </li>\n                                           ', 'Active', 2, '2015-10-21 18:45:00', '2015-10-30 07:17:38', 'operations', 'payments', '<i class="fa fa-edit"></i>', 'Payments', '<span class="fa fa-chevron-right"></span>'),
(10, 'Operations', ' <li><a href="<?php echo base_url(); ?>operations/cashier">Operations</a>\n                                            </li>\n', 'Active', 2, '2015-10-21 16:44:00', '2015-10-22 13:22:30', 'operations', 'cashier', '<i class="fa fa-edit"></i>', 'Operations', '<span class="fa fa-chevron-right"></span>'),
(11, 'Dashboard', '<li><a href="<?php echo base_url(); ?>operations/dashboard">Dashboard</a>\n                                            </li>\n                                           ', 'Active', 3, '2015-10-21 16:45:00', '2015-10-22 13:22:31', 'operations', 'dashboard', '<i class="fa fa-edit"></i>', 'Dashboard', '<span class="fa fa-chevron-right"></span>'),
(12, 'Daily Operation Report', ' <li><a href="<?php echo base_url(); ?>operations/daily_report">Daily Report</a>\n                                            </li>\n', 'Active', 3, '2015-10-21 19:47:00', '2015-10-22 13:22:34', 'operations', 'daily_report', '<i class="fa fa-edit"></i>', 'Daily Report', '<span class="fa fa-chevron-right"></span>'),
(13, 'Client Job Statement', ' <li><a href="<?php echo base_url(); ?>operations/client_payment_statement">Client Job Statements</a>                                             </li>', 'Active', 3, '2015-10-21 16:46:52', '2015-10-22 13:22:35', 'operations', 'client_payment_statement', '<i class="fa fa-edit"></i>', 'Client Job Statement', '<span class="fa fa-chevron-right"></span>'),
(14, 'Access Control List', ' <li><a href="<?php echo base_url(); ?>admin/access_control"><i class="fa fa-edit"></i> Access Control List <span class="fa fa-chevron-right"></span></a>\r\n                                           ', 'Active', 1, '2015-10-22 15:00:00', '2015-10-22 13:41:09', 'admin', 'access_control', '<i class="fa fa-edit"></i>', 'Access Control List', '<span class="fa fa-chevron-right"></span>'),
(15, 'Asset Types', ' <li><a href="<?php echo base_url(); ?>admin/asset_type"><i class="fa fa-edit"></i> Asset Type <span class="fa fa-chevron-right"></span></a>                                           ', 'Active', 1, '0000-00-00 00:00:00', '2015-10-27 15:27:35', 'admin', 'asset_type', '<i class="fa fa-edit"></i>', 'Asset Type', '<span class="fa fa-chevron-right"></span>'),
(16, 'View Job Status', ' <li><a href="<?php echo base_url(); ?>admin/asset_type"><i class="fa fa-edit"></i> Asset Type <span class="fa fa-chevron-right"></span></a>                                           ', 'Active', 2, '0000-00-00 00:00:00', '2015-10-30 18:21:55', 'operations', 'view_job_status', '<i class="fa fa-edit"></i>', 'View Job Status', '<span class="fa fa-chevron-right"></span>'),
(17, 'Approve Payments', '', 'Active', 2, '0000-00-00 00:00:00', '2015-10-30 08:14:22', 'operations', 'ack_payments', '<i class="fa fa-edit"></i>', 'Approve Payments', '<span class="fa fa-chevron-right"></span>'),
(18, 'Job Event Report', ' <li><a href="<?php echo base_url(); ?>operations/event_job_details"><i class="fa fa-edit"></i> Job Event Report <span class="fa fa-chevron-right"></span></a>                                           ', 'Active', 3, '0000-00-00 00:00:00', '2015-11-07 15:52:13', 'operations', 'event_job_details', '<i class="fa fa-edit"></i>', 'Job Event Report', '<span class="fa fa-chevron-right"></span>'),
(19, 'Future Job Report', ' <li><a href="<?php echo base_url(); ?>operations/event_job_details"><i class="fa fa-edit"></i> Job Event Report <span class="fa fa-chevron-right"></span></a>                                           ', 'Active', 3, '0000-00-00 00:00:00', '2015-11-07 15:52:13', 'operations', 'future_jobs_report', '<i class="fa fa-edit"></i>', 'Future Job Report', '<span class="fa fa-chevron-right"></span>'),
(20, 'Payment Report', '<span class="fa fa-chevron-right"></span>', 'Active', 3, '0000-00-00 00:00:00', '2015-11-07 15:53:32', 'operations', 'payment_report', '<i class="fa fa-edit"></i>', 'Payment Report', '<span class="fa fa-chevron-right"></span>'),
(21, 'View Payments', ' <li><a href="<?php echo base_url(); ?>admin/employees"><i class="fa fa-edit"></i> Employees <span class="fa fa-chevron-right"></span></a>                                           ', 'Active', 2, '0000-00-00 00:00:00', '2015-11-11 16:41:52', 'operations', 'view_payments', '<i class="fa fa-edit"></i>', 'View Payments', '<span class="fa fa-chevron-right"></span>'),
(22, 'Asset Status List', '', 'Active', 2, '0000-00-00 00:00:00', '2015-11-15 06:41:18', 'operations', 'asset_status_list', '<i class="fa fa-edit"></i>', 'Asset Status List', '<span class="fa fa-chevron-right"></span>');

-- --------------------------------------------------------

--
-- Stand-in structure for view `in_active_job_cards`
--
CREATE TABLE `in_active_job_cards` (
`event_month` int(2)
,`event_year` int(4)
,`event_status_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `job_card`
--

CREATE TABLE `job_card` (
`id` int(11) NOT NULL,
  `clnt_id` int(11) NOT NULL,
  `dte_srcd` varchar(255) NOT NULL,
  `dte_evnt` varchar(255) NOT NULL,
  `lctn` varchar(255) NOT NULL,
  `estmtd_lctn_dstnce` varchar(255) NOT NULL,
  `cnfrmd_lctn_dstnce` varchar(255) NOT NULL,
  `no_units` varchar(255) NOT NULL,
  `dpsts` decimal(13,2) NOT NULL,
  `ttl_costs` decimal(13,2) NOT NULL,
  `rate` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paid` enum('Not Paid','Paid') NOT NULL,
  `job_card_no` varchar(255) NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `invoiced` enum('No','Yes') NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `status` enum('Active','In Active','Cancelled') NOT NULL,
  `user_id` int(11) NOT NULL,
  `rsn_fr_cncl` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_card`
--

INSERT INTO `job_card` (`id`, `clnt_id`, `dte_srcd`, `dte_evnt`, `lctn`, `estmtd_lctn_dstnce`, `cnfrmd_lctn_dstnce`, `no_units`, `dpsts`, `ttl_costs`, `rate`, `date_added`, `time_stamp`, `paid`, `job_card_no`, `time_from`, `time_to`, `invoiced`, `invoice_no`, `status`, `user_id`, `rsn_fr_cncl`) VALUES
(1, 3, '2015-10-12', '2014-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:34:37', '2015-11-03 11:40:51', 'Not Paid', '', '', '', 'No', '', 'Active', 9, ''),
(2, 3, '2015-10-12', '2014-09-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:40:25', '2015-11-03 11:40:59', 'Not Paid', '', '', '', 'No', '', 'Active', 7, ''),
(3, 3, '2015-10-12', '2014-11-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:41:30', '2015-11-03 11:41:06', 'Not Paid', '', '', '', 'No', '', 'Active', 1, ''),
(4, 1, '2015-10-12', '2014-12-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:54:13', '2015-11-03 11:41:13', 'Not Paid', '', '', '', 'No', '', 'Active', 2, ''),
(5, 2, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:56:09', '2015-10-20 21:09:22', 'Not Paid', '', '', '', 'No', '', 'Active', 4, ''),
(6, 2, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:56:18', '2015-10-08 13:56:18', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(7, 2, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:57:18', '2015-10-08 13:57:18', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(8, 4, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 16:58:55', '2015-10-08 13:58:55', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(9, 2, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:00:00', '2015-10-08 14:00:00', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(10, 1, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:06:19', '2015-10-08 14:06:19', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(11, 1, '2015-10-29', '2015-10-27', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:20:40', '2015-10-08 14:20:40', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(12, 1, '2015-10-20', '2015-10-20', 'Nyayo National Stadium', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:25:47', '2015-10-08 14:25:47', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(13, 1, '2015-10-20', '2015-10-20', 'Nyayo National Stadium', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:28:11', '2015-10-08 14:28:11', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(14, 1, '2015-10-21', '2015-10-20', 'Nyayo National Stadium', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:31:00', '2015-10-08 14:31:00', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(15, 4, '2015-10-14', '2015-10-15', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:43:42', '2015-10-08 14:43:42', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(16, 4, '2015-10-20', '2015-10-21', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:53:11', '2015-10-08 14:53:11', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(17, 3, '2015-10-23', '2015-10-24', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:54:08', '2015-10-08 14:54:08', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(18, 1, '2015-10-17', '2015-10-18', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:55:07', '2015-10-08 14:55:07', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(19, 1, '2015-10-13', '2015-10-14', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:56:00', '2015-10-08 14:56:00', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(20, 2, '2015-10-20', '2015-10-21', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 17:56:59', '2015-10-08 14:56:59', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(21, 1, '2015-10-14', '2015-10-16', 'Karen Nairobi Kenya', '', '', '', 0.00, 0.00, 0, '2015-10-08 18:03:52', '2015-10-08 15:03:52', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(22, 3, '2015-10-11', '2015-10-12', 'Karen Nairobi Kenya', '12', '', '', 0.00, 0.00, 0, '2015-10-10 21:01:57', '2015-10-12 06:02:32', 'Not Paid', 'JB-1-1', '', '', 'No', '', 'Active', 0, ''),
(23, 3, '2015-10-13', '2015-10-14', 'Nyayo National Stadium', '76', '', '', 0.00, 0.00, 0, '2015-10-12 08:41:19', '2015-10-12 06:02:38', 'Not Paid', 'JB-1-2', '', '', 'No', '', 'Active', 0, ''),
(24, 5, '2015-10-14', '2015-10-15', 'Nairobi', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 08:58:05', '2015-10-13 05:58:05', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(25, 5, '2015-10-21', '2015-10-15', 'BIUBU', '12', '15', '', 0.00, 0.00, 0, '2015-10-13 09:00:34', '2015-10-13 06:00:34', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(26, 5, '2015-10-16', '2015-10-17', 'fbvoufd', '12', '13', '', 0.00, 0.00, 0, '2015-10-13 09:06:48', '2015-10-13 06:06:48', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(27, 3, '2015-10-14', '2015-10-15', 'Nyayo', '12', '13', '', 0.00, 0.00, 0, '2015-10-13 09:23:05', '2015-10-13 06:23:05', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(28, 3, '2015-10-07', '2015-10-08', 'NAIROBI', '12', '13', '', 0.00, 0.00, 0, '2015-10-13 09:23:42', '2015-10-13 06:23:42', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(29, 5, '2015-10-16', '2015-10-17', 'Nyayo', '12', '13', '', 0.00, 0.00, 0, '2015-10-13 09:27:40', '2015-10-13 06:27:40', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(30, 5, '2015-10-22', '2015-10-29', 'Nyayo', '12 KM', '13 KM', '', 0.00, 0.00, 0, '2015-10-13 09:29:05', '2015-10-13 06:29:05', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(31, 5, '2015-10-21', '2015-10-28', 'Nairobi', '15 KM', '16 KM', '', 0.00, 0.00, 0, '2015-10-13 09:31:12', '2015-10-13 06:31:12', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(32, 5, '2015-10-21', '2015-10-22', 'NAIROBI', '15', '12', '', 0.00, 0.00, 0, '2015-10-13 09:32:52', '2015-10-13 06:32:52', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(33, 5, '2015-10-23', '2015-10-29', 'Kasarani', '45 KM', '50 KM', '', 0.00, 0.00, 0, '2015-10-13 09:34:29', '2015-10-13 06:34:29', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(34, 5, '2015-10-28', '2015-10-29', 'nvuyv', '68', '90', '', 0.00, 0.00, 0, '2015-10-13 09:35:31', '2015-10-13 06:35:31', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(35, 5, '2015-10-20', '2015-10-21', 'Nairobi', '78', '80', '', 0.00, 0.00, 0, '2015-10-13 09:38:32', '2015-10-13 06:38:32', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(36, 5, '2015-10-09', '2015-10-23', 'Ngong Race Course', '15 km', '20 km', '', 0.00, 0.00, 0, '2015-10-13 09:40:11', '2015-10-13 06:40:11', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(37, 5, '2015-10-22', '2015-10-23', 'bvof', '12', '13', '', 0.00, 0.00, 0, '2015-10-13 09:41:50', '2015-10-13 06:41:50', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(38, 5, '2015-10-27', '2015-10-27', 'Nairobi', '15', '19', '', 0.00, 0.00, 0, '2015-10-13 09:44:15', '2015-10-13 06:44:15', 'Not Paid', '', '', '', 'No', '', 'Active', 0, ''),
(39, 5, '2015-10-20', '2015-10-20', 'Nyayo', '12 KM', '13 KM', '', 0.00, 0.00, 0, '2015-10-13 10:28:20', '2015-10-13 07:28:20', 'Not Paid', '', '12:00 AM', '11:59 PM', 'No', '', 'Active', 0, ''),
(48, 5, '2015-10-21', '2015-10-29', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 13:09:19', '2015-10-13 10:09:19', 'Not Paid', 'JC-1-1', '', '', 'No', '', 'Active', 0, ''),
(49, 4, '2015-10-13', '2015-10-22', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 13:10:16', '2015-10-13 10:10:16', 'Not Paid', 'JC-1-2', '', '', 'No', '', 'Active', 0, ''),
(50, 5, '2015-10-29', '2015-10-29', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 13:19:09', '2015-10-13 10:19:09', 'Not Paid', 'JC-1-3', '', '', 'No', '', 'Active', 0, ''),
(51, 5, '2015-10-21', '2015-10-28', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 13:20:19', '2015-10-13 10:20:19', 'Not Paid', 'JC-1-4', '', '', 'No', '', 'Active', 0, ''),
(52, 1, '2015-10-20', '2015-10-24', 'Kileleshwa Nairbi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 13:46:47', '2015-10-13 10:46:47', 'Not Paid', 'JC-1-5', '5:00 am', '9:00 pm', 'No', '', 'Active', 0, ''),
(53, 1, '2015-10-30', '2015-10-31', 'Strathmore University Nairobi Kenya', '45 KM', '45.5 KM', '', 0.00, 0.00, 0, '2015-10-13 14:24:40', '2015-10-13 11:24:40', 'Not Paid', 'JC-1-6', '9:00 AM', '11:00 PM', 'No', '', 'Active', 0, ''),
(54, 5, '2015-10-16', '2015-10-17', 'Nairobi West ', '13', '12', '', 0.00, 0.00, 0, '2015-10-13 15:50:11', '2015-10-25 13:50:28', 'Not Paid', 'JC-1-7', '6:00 AM', '7:00 PM', 'No', '', 'In Active', 0, ''),
(55, 5, '2015-10-14', '2015-10-28', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 16:07:57', '2015-10-13 13:24:31', 'Not Paid', 'JC-1-8', '', '', 'No', 'INV-1-3', 'Active', 0, ''),
(56, 5, '2015-10-27', '2015-10-29', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 16:35:14', '2015-10-13 13:38:09', 'Not Paid', 'JC-1-9', '', '', 'No', 'INV-1-2', 'Active', 0, ''),
(57, 4, '2015-10-21', '2015-10-22', 'Karen Nairobi Kenya', '45 KM', '45.5 KM', '', 0.00, 0.00, 0, '2015-10-13 16:38:44', '2015-10-13 13:39:11', 'Not Paid', 'JC-1-10', '', '', 'No', 'INV-1-1', 'Active', 0, ''),
(58, 2, '2015-10-28', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 16:40:17', '2015-10-13 13:42:29', 'Not Paid', 'JC-1-11', '', '', 'No', 'INV-1-2', 'Active', 0, ''),
(59, 4, '2015-10-23', '2015-10-23', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 16:43:03', '2015-10-13 13:43:30', 'Not Paid', 'JC-1-12', '', '', 'No', 'INV-1-1', 'Active', 0, ''),
(60, 5, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 16:44:48', '2015-10-13 13:45:00', 'Not Paid', 'JC-1-13', '9:00 AM', '11:00 PM', 'No', 'INV-1-2', 'Active', 0, ''),
(61, 4, '2015-10-14', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-13 16:48:04', '2015-10-13 13:48:24', 'Not Paid', 'JC-1-14', '9:00 AM', '11:00 PM', 'No', 'INV-1-3', 'Active', 0, ''),
(62, 4, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '45 KM', '45.5 KM', '', 0.00, 0.00, 0, '2015-10-19 13:37:28', '2015-10-19 10:37:50', 'Not Paid', 'JC-1-15', '9:00 AM', '11:00 PM', 'No', 'INV-1-4', 'Active', 1, ''),
(63, 5, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-20 21:57:29', '2015-10-20 18:58:02', 'Not Paid', 'JC-1-16', '9:00 AM', '11:00 PM', 'No', 'INV-1-5', 'Active', 1, ''),
(64, 1, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-20 21:58:54', '2015-10-20 18:59:19', 'Not Paid', 'JC-1-17', '9:00 AM', '11:00 PM', 'No', 'INV-1-6', 'Active', 1, ''),
(65, 3, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-20 22:58:29', '2015-10-20 19:58:49', 'Not Paid', 'JC-1-18', '9:00 AM', '11:00 PM', 'No', 'INV-1-7', 'Active', 1, ''),
(66, 1, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-20 23:00:42', '2015-10-20 20:01:01', 'Not Paid', 'JC-1-19', '9:00 AM', '', 'No', 'INV-1-8', 'Active', 1, ''),
(67, 6, '2015-10-23', '2015-10-24', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 11:49:36', '2015-10-21 08:50:14', 'Not Paid', 'JC-1-20', '9:00 AM', '11:00 PM', 'No', 'INV-1-9', 'Active', 1, ''),
(68, 5, '2015-10-28', '2015-10-29', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 12:06:55', '2015-10-21 09:06:55', 'Not Paid', 'JC-1-21', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(69, 6, '2015-10-08', '2015-10-07', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 20:18:47', '2015-10-21 17:18:47', 'Not Paid', 'JC-1-22', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(70, 5, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 20:21:03', '2015-10-21 17:21:03', 'Not Paid', 'JC-1-23', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(71, 2, '2015-10-29', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 20:25:44', '2015-10-21 17:25:44', 'Not Paid', 'JC-1-24', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(72, 5, '2015-10-28', '2015-10-30', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 20:26:50', '2015-10-21 17:26:50', 'Not Paid', 'JC-1-25', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(73, 4, '2015-10-29', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 20:29:19', '2015-10-21 17:29:19', 'Not Paid', 'JC-1-26', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(74, 5, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-21 20:31:29', '2015-10-21 17:32:28', 'Not Paid', 'JC-1-27', '9:00 AM', '11:00 PM', 'No', 'INV-1-1', 'Active', 1, ''),
(75, 6, '2015-10-23', '2015-10-24', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-22 08:23:17', '2015-10-22 05:23:39', 'Not Paid', 'JC-1-28', '9:00 AM', '11:00 PM', 'No', 'INV-1-2', 'Active', 1, ''),
(76, 1, '2015-10-30', '2015-10-30', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-22 08:28:58', '2015-10-22 05:29:20', 'Not Paid', 'JC-1-29', '9:00 AM', '11:00 PM', 'No', 'INV-1-3', 'Active', 1, ''),
(77, 2, '2015-10-30', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-23 14:45:02', '2015-10-23 11:45:23', 'Not Paid', 'JC-1-30', '9:00 AM', '11:00 PM', 'No', 'INV-1-4', 'Active', 1, ''),
(78, 1, '2015-9-30', '2015-9-30', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-09-09 15:11:09', '2015-10-30 19:57:31', 'Not Paid', 'JC-1-31', '9:00 AM', '11:00 PM', 'No', 'INV-1-5', 'In Active', 1, ''),
(79, 2, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-24 00:18:19', '2015-10-23 21:18:19', 'Not Paid', 'JC-1-32', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(80, 2, '2015-10-24', '2015-10-24', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-24 00:25:06', '2015-10-23 21:25:28', 'Not Paid', 'JC-1-33', '5:00 am', '11:00 PM', 'No', 'INV-1-1', 'Active', 1, ''),
(81, 2, '2015-10-28', '2015-10-22', 'dbfoudbf', '123', '1224', '', 0.00, 0.00, 0, '2015-10-24 11:56:25', '2015-10-24 08:56:25', 'Not Paid', 'JC-1-34', '11:58', '23:59', 'No', '', 'Active', 1, ''),
(82, 0, '2015-10-31', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-25 15:58:04', '2015-10-25 12:58:04', 'Not Paid', 'JC-1-35', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(83, 0, '2015-10-30', '2015-10-30', 'Karen Nairobi Kenya', '45 KM', '12', '', 0.00, 0.00, 0, '2015-10-25 15:59:17', '2015-10-25 12:59:17', 'Not Paid', 'JC-1-36', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(84, 2, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-25 16:00:20', '2015-10-25 13:00:20', 'Not Paid', 'JC-1-37', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(85, 5, '2015-10-29', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-25 16:03:45', '2015-10-25 13:03:45', 'Not Paid', 'JC-1-38', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(86, 0, '2015-10-30', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-25 16:06:35', '2015-10-25 13:06:35', 'Not Paid', 'JC-1-39', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(87, 3, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '45 KM', '45.5 KM', '', 0.00, 0.00, 0, '2015-10-25 16:08:00', '2015-10-25 13:08:23', 'Not Paid', 'JC-1-40', '9:00 AM', '11:00 PM', 'No', 'INV-1-1', 'Active', 1, ''),
(88, 3, '2015-10-16', '2015-10-28', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-28 09:58:07', '2015-10-28 06:58:07', 'Not Paid', 'JC-1-41', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(89, 3, '2015-10-31', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-28 15:01:29', '2015-10-30 20:46:19', 'Not Paid', 'JC-1-42', '9:00 AM', '11:00 PM', 'No', 'INV-1-1', 'In Active', 1, ''),
(90, 10, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-30 06:03:50', '2015-11-11 17:29:15', 'Not Paid', 'JC-1-43', '9:00 AM', '11:00 PM', 'No', 'INV-1-2', 'In Active', 1, ''),
(91, 7, '2015-10-30', '2015-10-31', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-30 06:15:55', '2015-11-16 17:35:50', 'Not Paid', 'JC-1-44', '9:00 AM', '11:00 PM', 'No', 'INV-1-3', 'In Active', 1, ''),
(92, 9, '2015-10-12', '2015-10-20', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-10-30 22:14:48', '2015-10-30 19:54:36', 'Not Paid', 'JC-1-45', '9:00 AM', '11:00 PM', 'No', 'INV-1-4', 'In Active', 1, ''),
(93, 11, '2015-11-06', '2015-11-07', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-01 07:06:56', '2015-11-01 04:07:25', 'Not Paid', 'JC-1-46', '9:00 AM', '11:00 PM', 'No', 'INV-1-5', 'Active', 1, ''),
(94, 10, '2015-11-04', '2015-11-06', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-02 12:28:01', '2015-11-02 09:28:02', 'Not Paid', 'JC-1-47', '9:00 AM', '11:00 PM', 'No', '', 'Active', 1, ''),
(95, 3, '2015-11-13', '2015-11-14', 'Karen Nairobi Kenya', '45 KM', '45.5 KM', '', 0.00, 0.00, 0, '2015-11-07 23:02:01', '2015-11-11 17:13:24', 'Not Paid', 'JC-1-48', '9:00 AM', '11:00 PM', 'No', 'INV-1-1', 'In Active', 1, ''),
(96, 5, '2015-11-13', '2015-11-14', 'Nyayo National Stadium', '15.6 Km', '15 Km', '', 0.00, 0.00, 0, '2015-11-11 18:51:47', '2015-11-11 15:52:10', 'Not Paid', 'JC-1-49', '12:00 PM', '12:00 AM', 'No', 'INV-1-2', 'Active', 1, ''),
(97, 11, '2015-11-20', '2015-11-21', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-14 17:12:42', '2015-11-14 14:13:20', 'Not Paid', 'JC-1-50', '12:00 PM', '12:00 AM', 'No', 'INV-1-3', 'Active', 1, ''),
(98, 5, '2015-11-20', '2015-11-27', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-15 20:23:17', '2015-11-15 17:23:37', 'Not Paid', 'JC-1-51', '12:00 PM', '11:00 PM', 'No', 'INV-1-4', 'Active', 1, ''),
(99, 6, '2015-11-20', '2015-11-21', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-15 20:33:50', '2015-11-16 17:41:12', 'Not Paid', 'JC-1-52', '9:00 AM', '11:00 PM', 'No', 'INV-1-5', 'In Active', 1, ''),
(100, 6, '2015-11-20', '2015-11-21', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-15 20:36:47', '2015-11-15 17:37:18', 'Not Paid', 'JC-1-53', '9:00 AM', '11:00 PM', 'No', 'INV-1-6', 'Active', 1, ''),
(101, 9, '2015-11-26', '2015-11-28', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-15 20:38:05', '2015-11-16 17:42:48', 'Not Paid', 'JC-1-54', '9:00 AM', '11:00 PM', 'No', 'INV-1-7', 'In Active', 1, ''),
(102, 9, '2015-11-28', '2015-11-30', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-15 20:39:23', '2015-11-15 17:39:48', 'Not Paid', 'JC-1-55', '9:00 AM', '11:00 PM', 'No', 'INV-1-8', 'Active', 1, ''),
(103, 7, '2015-11-17', '2015-11-19', 'Karen Nairobi Kenya', '12', '12', '', 0.00, 0.00, 0, '2015-11-15 20:48:53', '2015-11-15 17:49:23', 'Not Paid', 'JC-1-56', '9:00 AM', '11:00 PM', 'No', 'INV-1-9', 'Active', 1, '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `job_cards_client`
--
CREATE TABLE `job_cards_client` (
`client_id` int(11)
,`client_name` varchar(255)
,`client_address` varchar(255)
,`client_industry` varchar(255)
,`client_phone` varchar(255)
,`client_email` varchar(255)
,`client_status` enum('Active','In Active')
,`id` int(11)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `job_card_no`
--

CREATE TABLE `job_card_no` (
`id` int(11) NOT NULL,
  `no` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `job_card_status`
--
CREATE TABLE `job_card_status` (
`client_id` int(11)
,`client_name` varchar(255)
,`phone_no` varchar(255)
,`job_card_id` int(11)
,`user_id` int(11)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`amount_paid` decimal(32,0)
,`amount_billed` decimal(32,0)
,`amount_owed` decimal(33,0)
,`job_card_status` enum('Active','In Active','Cancelled')
,`date_opened` datetime
,`event_date` varchar(255)
,`date_sourced` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
`login_logs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` enum('Active','In Active') NOT NULL,
  `login_ip_address` text NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`login_logs_id`, `user_id`, `user_name`, `login_date`, `is_active`, `login_ip_address`, `month`, `year`, `time_start`, `time_end`) VALUES
(1, 1, 'admin', '2015-10-10 07:58:32', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '10:58:32', '19:44:50'),
(2, 1, 'admin', '2015-10-10 16:44:50', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '19:44:50', '08:22:29'),
(3, 1, 'admin', '2015-10-12 05:22:29', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '08:22:29', '13:39:32'),
(4, 1, 'admin', '2015-10-12 10:39:32', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '13:39:32', '19:13:03'),
(5, 1, 'admin', '2015-10-12 16:13:03', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '19:13:03', '08:25:33'),
(6, 1, 'admin', '2015-10-13 05:25:33', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '08:25:33', '08:54:30'),
(7, 1, 'admin', '2015-10-13 05:54:30', 'In Active', 'Platform : Mac OS X / Agent : Chrome 45.0.2454.101 / Login IP address : ::1', 'October', '2015', '08:54:30', '08:09:53'),
(8, 1, 'admin', '2015-10-14 05:09:53', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '08:09:53', '11:00:39'),
(9, 1, 'admin', '2015-10-14 08:00:39', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '11:00:39', '15:40:51'),
(10, 1, 'admin', '2015-10-14 12:40:51', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '15:40:51', '04:33:35'),
(11, 1, 'admin', '2015-10-17 01:33:35', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '04:33:35', '06:35:10'),
(12, 1, 'admin', '2015-10-17 03:35:10', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '06:35:10', '10:38:12'),
(13, 1, 'admin', '2015-10-17 07:38:12', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '10:38:12', '09:41:54'),
(14, 1, 'admin', '2015-10-18 06:41:54', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '09:41:54', '15:58:54'),
(15, 1, 'admin', '2015-10-18 12:58:54', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '15:58:54', '08:12:14'),
(16, 1, 'admin', '2015-10-19 05:12:14', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '08:12:14', '13:04:56'),
(17, 1, 'admin', '2015-10-19 10:04:56', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '13:04:56', '07:14:10'),
(18, 1, 'admin', '2015-10-20 04:14:10', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '07:14:10', '09:33:07'),
(19, 1, 'admin', '2015-10-20 06:33:07', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '09:33:07', '12:08:22'),
(20, 1, 'admin', '2015-10-20 09:08:22', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '12:08:22', '12:20:56'),
(21, 1, 'admin', '2015-10-20 09:20:56', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '12:20:56', '21:56:55'),
(22, 1, 'admin', '2015-10-20 18:56:55', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '21:56:55', '00:01:23'),
(23, 1, 'admin', '2015-10-20 21:01:23', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '00:01:23', '11:23:52'),
(24, 1, 'admin', '2015-10-21 08:23:51', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '11:23:51', '20:08:49'),
(25, 1, 'admin', '2015-10-21 17:08:49', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '20:08:49', '20:43:43'),
(26, 1, 'admin', '2015-10-21 17:43:43', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '20:43:43', '08:22:55'),
(27, 1, 'admin', '2015-10-22 05:22:55', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '08:22:55', '20:55:45'),
(28, 1, 'admin', '2015-10-22 17:55:44', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '20:55:44', '14:44:23'),
(29, 1, 'admin', '2015-10-23 11:44:23', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '14:44:23', '19:43:02'),
(30, 1, 'admin', '2015-10-23 16:43:02', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '19:43:02', '22:15:32'),
(31, 1, 'admin', '2015-10-23 19:15:31', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '22:15:31', '00:17:45'),
(32, 1, 'admin', '2015-10-23 21:17:45', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '00:17:45', '01:04:51'),
(33, 1, 'admin', '2015-10-23 22:04:51', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '01:04:51', '10:25:14'),
(34, 1, 'admin', '2015-10-24 07:25:13', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '10:25:13', '11:51:42'),
(35, 1, 'admin', '2015-10-24 08:51:42', 'In Active', 'Platform : Mac OS X / Agent : Chrome 46.0.2490.71 / Login IP address : ::1', 'October', '2015', '11:51:42', '07:02:28'),
(36, 1, 'admin', '2015-10-25 04:02:28', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '07:02:28', '10:21:22'),
(37, 1, 'admin', '2015-10-25 07:21:22', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '10:21:22', '16:21:15'),
(38, 1, 'admin', '2015-10-25 13:21:15', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '16:21:15', '17:10:50'),
(39, 1, 'admin', '2015-10-27 14:10:50', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '17:10:50', '09:53:26'),
(40, 1, 'admin', '2015-10-28 06:53:26', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '09:53:26', '10:52:39'),
(41, 1, 'admin', '2015-10-28 07:52:39', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '10:52:39', '11:08:59'),
(42, 1, 'admin', '2015-10-28 08:08:59', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '11:08:59', '13:21:19'),
(43, 1, 'admin', '2015-10-28 10:21:19', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '13:21:19', '15:00:50'),
(44, 1, 'admin', '2015-10-28 12:00:50', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '15:00:50', '05:11:05'),
(45, 1, 'admin', '2015-10-29 02:11:05', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '05:11:05', '05:38:35'),
(46, 1, 'admin', '2015-10-29 02:38:35', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '05:38:35', '05:47:24'),
(47, 1, 'admin', '2015-10-29 02:47:24', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '05:47:24', '07:11:36'),
(48, 1, 'admin', '2015-10-29 04:11:36', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '07:11:36', '09:35:51'),
(49, 1, 'admin', '2015-10-29 06:35:51', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '09:35:51', '10:33:18'),
(50, 1, 'admin', '2015-10-29 07:33:18', '', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '10:33:18', '15:27:33'),
(51, 1, 'admin', '2015-10-29 12:50:00', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '15:50:00', '05:51:16'),
(52, 1, 'admin', '2015-10-30 02:51:16', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '05:51:16', '09:52:57'),
(53, 1, 'admin', '2015-10-30 06:52:57', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '09:52:57', '11:10:43'),
(54, 1, 'admin', '2015-10-30 08:10:43', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '11:10:43', '18:04:24'),
(55, 1, 'admin', '2015-10-30 15:04:24', '', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '18:04:24', '18:19:42'),
(56, 1, 'admin', '2015-10-30 15:19:46', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '18:19:46', '22:46:49'),
(57, 1, 'admin', '2015-10-30 19:46:49', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'October', '2015', '22:46:49', '07:05:10'),
(58, 1, 'admin', '2015-11-01 04:05:10', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '07:05:10', '11:46:17'),
(59, 1, 'admin', '2015-11-02 08:46:17', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '11:46:17', '16:34:19'),
(60, 1, 'admin', '2015-11-02 13:34:19', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '16:34:19', '08:53:22'),
(61, 1, 'admin', '2015-11-03 05:53:22', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '08:53:22', '18:39:54'),
(62, 1, 'admin', '2015-11-03 15:39:54', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '18:39:54', '18:50:47'),
(63, 1, 'admin', '2015-11-03 15:50:47', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '18:50:47', '13:36:19'),
(64, 1, 'admin', '2015-11-04 10:36:19', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '13:36:19', '20:10:32'),
(65, 1, 'admin', '2015-11-04 17:10:32', 'In Active', 'Platform : Mac OS X / Agent : Firefox 41.0 / Login IP address : ::1', 'November', '2015', '20:10:32', '14:58:20'),
(66, 1, 'admin', '2015-11-07 11:58:20', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '14:58:20', '18:11:26'),
(67, 1, 'admin', '2015-11-07 15:11:26', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '18:11:26', '21:51:35'),
(68, 1, 'admin', '2015-11-07 18:51:35', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '21:51:35', '23:26:04'),
(69, 1, 'admin', '2015-11-07 20:26:04', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '23:26:04', '00:01:32'),
(70, 1, 'admin', '2015-11-07 21:01:32', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '00:01:32', '17:07:07'),
(71, 1, 'admin', '2015-11-08 14:07:07', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '17:07:07', '17:42:38'),
(72, 1, 'admin', '2015-11-08 14:42:38', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '17:42:38', '18:19:08'),
(73, 1, 'admin', '2015-11-11 15:19:08', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '18:19:08', '18:59:47'),
(74, 1, 'admin', '2015-11-11 15:59:47', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '18:59:47', '15:59:53'),
(75, 1, 'admin', '2015-11-14 12:59:52', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '15:59:52', '16:59:52'),
(76, 1, 'admin', '2015-11-14 13:59:52', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '16:59:52', '17:44:46'),
(77, 1, 'admin', '2015-11-14 14:44:46', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '17:44:46', '18:06:24'),
(78, 1, 'admin', '2015-11-14 15:06:24', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '18:06:24', '09:27:01'),
(79, 1, 'admin', '2015-11-15 06:27:01', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '09:27:01', '20:20:40'),
(80, 1, 'admin', '2015-11-15 17:20:40', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '20:20:40', '19:33:51'),
(81, 1, 'admin', '2015-11-16 16:33:51', 'In Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '19:33:51', '20:35:33'),
(82, 1, 'admin', '2015-11-16 17:35:33', 'Active', 'Platform : Mac OS X / Agent : Firefox 42.0 / Login IP address : ::1', 'November', '2015', '20:35:33', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthly_expense`
--
CREATE TABLE `monthly_expense` (
`expense` decimal(35,2)
,`expense_period` varchar(40)
,`expense_year` varchar(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `monthly_revenue`
--
CREATE TABLE `monthly_revenue` (
`revenues` decimal(35,2)
,`revenue_period` varchar(40)
,`revenue_year` varchar(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `performance`
--
CREATE TABLE `performance` (
`performance_month` int(2)
,`performance_year` int(4)
,`performance_sales` decimal(13,2)
,`performance_expense` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `function_id`, `status`, `date_added`, `timestamp`) VALUES
(58, 0, 8, 'Active', '2015-10-22 13:07:41', '2015-10-22 10:07:41'),
(59, 0, 9, 'Active', '2015-10-22 13:07:41', '2015-10-22 10:07:41'),
(60, 0, 13, 'Active', '2015-10-22 13:07:41', '2015-10-22 10:07:41'),
(104, 2, 11, 'Active', '2015-10-22 15:13:49', '2015-10-22 12:13:49'),
(105, 2, 12, 'Active', '2015-10-22 15:13:49', '2015-10-22 12:13:49'),
(106, 2, 13, 'Active', '2015-10-22 15:13:49', '2015-10-22 12:13:49'),
(107, 3, 1, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(108, 3, 2, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(109, 3, 3, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(110, 3, 4, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(111, 3, 5, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(112, 3, 6, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(113, 3, 7, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(114, 3, 8, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(115, 3, 9, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(116, 3, 10, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(117, 3, 11, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(118, 3, 12, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(119, 3, 13, 'Active', '2015-10-22 15:14:03', '2015-10-22 12:14:03'),
(120, 4, 1, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(121, 4, 2, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(122, 4, 3, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(123, 4, 4, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(124, 4, 5, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(125, 4, 6, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(126, 4, 7, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(127, 4, 8, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(128, 4, 9, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(129, 4, 10, 'Active', '2015-10-22 15:14:22', '2015-10-22 12:14:22'),
(181, 5, 1, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(182, 5, 2, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(183, 5, 3, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(184, 5, 4, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(185, 5, 5, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(186, 5, 6, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(187, 5, 7, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(188, 5, 14, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(189, 5, 8, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(190, 5, 9, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(191, 5, 10, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(192, 5, 11, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(193, 5, 12, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(194, 5, 13, 'Active', '2015-10-24 11:43:18', '2015-10-24 08:43:18'),
(401, 1, 1, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(402, 1, 2, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(403, 1, 3, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(404, 1, 4, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(405, 1, 5, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(406, 1, 6, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(407, 1, 7, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(408, 1, 14, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(409, 1, 15, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(410, 1, 8, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(411, 1, 9, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(412, 1, 10, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(413, 1, 16, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(414, 1, 17, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(415, 1, 21, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(416, 1, 22, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(417, 1, 11, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(418, 1, 12, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(419, 1, 13, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(420, 1, 18, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(421, 1, 19, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10'),
(422, 1, 20, 'Active', '2015-11-15 09:42:10', '2015-11-15 06:42:10');

-- --------------------------------------------------------

--
-- Stand-in structure for view `revenue_collected`
--
CREATE TABLE `revenue_collected` (
`total_revenue` decimal(32,0)
,`invoice_no` varchar(255)
,`date_added` datetime
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `revenue_per_client`
--
CREATE TABLE `revenue_per_client` (
`client_id` int(11)
,`client_name` varchar(255)
,`phone_no` varchar(255)
,`industry` varchar(255)
,`revenue_collected` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `revenue_per_job_card`
--
CREATE TABLE `revenue_per_job_card` (
`client_id` int(11)
,`client_name` varchar(255)
,`job_card_id` int(11)
,`job_card_no` varchar(255)
,`invoice_no` varchar(255)
,`revenue` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `revenue_per_month`
--
CREATE TABLE `revenue_per_month` (
`revenue_month` int(2)
,`revenue_year` int(4)
,`revenue` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `revenue_ytd`
--
CREATE TABLE `revenue_ytd` (
`revenue` decimal(32,0)
,`year` int(4)
);
-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `timestamp`, `date_added`) VALUES
(1, 'Operations', 'Active', '2015-09-18 11:13:37', '0000-00-00 00:00:00'),
(2, 'Adminstration\r\n', 'Active', '2015-09-18 11:13:41', '0000-00-00 00:00:00'),
(3, 'Marketing', 'Active', '2015-09-19 07:20:52', '0000-00-00 00:00:00'),
(4, 'Accounts', 'Active', '2015-09-19 10:43:33', '0000-00-00 00:00:00'),
(5, 'Management', 'Active', '2015-09-19 10:44:21', '0000-00-00 00:00:00'),
(6, 'Sales Man', '', '2015-09-19 12:53:39', '0000-00-00 00:00:00'),
(7, 'Accountant', '', '2015-09-19 12:53:39', '0000-00-00 00:00:00'),
(8, 'CEO', 'Active', '2015-10-27 14:43:50', '0000-00-00 00:00:00'),
(9, 'Head of Operations', '', '2015-09-19 12:53:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
`id` int(11) NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','In Active') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`id`, `parameter`, `value`, `date_added`, `timestamp`, `status`) VALUES
(1, 'Toilet', '5800', '2015-10-04 08:25:24', '2015-10-05 07:44:07', 'Active'),
(2, 'Trailers', '15000', '0000-00-00 00:00:00', '2015-10-08 07:16:19', 'In Active');

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE `statement` (
`id` int(11) NOT NULL,
  `clnt_id` int(11) NOT NULL,
  `job_card_id` int(11) NOT NULL,
  `amnt_dr` int(11) NOT NULL,
  `amnt_cr` int(11) NOT NULL,
  `pymnt_mthd` varchar(255) NOT NULL,
  `pymnt_code` varchar(255) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `rcpt_no` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) NOT NULL,
  `invoiced` enum('No','Yes') NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `qty` int(11) NOT NULL,
  `payment_status` enum('Pending','Cleared') NOT NULL,
  `approved` enum('Not Approved','Approved') NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement`
--

INSERT INTO `statement` (`id`, `clnt_id`, `job_card_id`, `amnt_dr`, `amnt_cr`, `pymnt_mthd`, `pymnt_code`, `invoice_no`, `rcpt_no`, `date_added`, `timestamp`, `description`, `invoiced`, `status`, `qty`, `payment_status`, `approved`, `payment_date`) VALUES
(1, 5, 54, 10, 15000, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:24', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(2, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(3, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(4, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(5, 5, 54, 10, 15000, '', '', 'INV-1-1', '', '2015-06-24 15:53:20', '2015-10-20 07:13:46', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(6, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(7, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(8, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-03 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(9, 5, 54, 10, 5800, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(10, 5, 54, 10, 15000, '', '', 'INV-1-1', '', '2015-06-01 15:53:20', '2015-10-20 07:13:46', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(11, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-07-01 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(12, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-07-01 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(13, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-07-01 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(14, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-07-01 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(15, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-07-01 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(16, 5, 54, 15, 15000, '', '', 'INV-1-1', '', '2015-09-11 15:53:20', '2015-10-20 07:14:00', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(17, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-09-11 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(18, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-09-11 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(19, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-09-11 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(20, 5, 54, 15, 5800, '', '', 'INV-1-1', '', '2015-07-01 15:53:20', '2015-10-20 07:14:00', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(21, 5, 54, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(22, 5, 54, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(23, 5, 55, 20, 15000, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(24, 5, 55, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(25, 5, 55, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(26, 5, 55, 20, 15000, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(27, 5, 55, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(28, 5, 55, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(29, 5, 55, 20, 5800, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(30, 5, 55, 20, 15000, '', '', 'INV-1-1', '', '2015-08-01 15:53:20', '2015-10-20 07:14:16', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(31, 5, 55, 22, 5800, '', '', 'INV-1-1', '', '2015-09-01 15:53:20', '2015-10-20 07:14:30', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(32, 5, 55, 22, 5800, '', '', 'INV-1-1', '', '2015-09-01 15:53:20', '2015-10-20 07:14:30', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(33, 5, 55, 22, 5800, '', '', 'INV-1-1', '', '2015-09-01 15:53:20', '2015-10-20 07:14:30', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(34, 5, 55, 22, 15000, '', '', 'INV-1-1', '', '2015-09-01 15:53:20', '2015-10-20 07:14:30', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(35, 5, 55, 22, 5800, '', '', 'INV-1-1', '', '2015-09-01 15:53:20', '2015-10-20 07:14:30', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(36, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-01 15:53:20', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(37, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-01 15:53:20', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(38, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-01 15:53:20', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(39, 5, 55, 30, 15000, '', '', 'INV-1-1', '', '2015-10-01 15:53:20', '2015-10-20 07:14:44', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(40, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-01 15:53:20', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(41, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-13 16:15:33', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(42, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-13 16:15:33', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(43, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-13 16:15:33', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(44, 5, 55, 30, 5800, '', '', 'INV-1-1', '', '2015-10-13 16:15:33', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(45, 5, 55, 30, 15000, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:44', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(46, 5, 55, 30, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(47, 5, 55, 30, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(48, 5, 55, 30, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(49, 5, 55, 30, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:44', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(50, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(51, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(52, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:50', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(53, 5, 55, 40, 15000, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(54, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(55, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(56, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(57, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(58, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(59, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(60, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:21:58', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(61, 5, 55, 40, 15000, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(62, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(63, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(64, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(65, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(66, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(67, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(68, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(69, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(70, 5, 55, 40, 5800, '', '', '', '', '2015-10-13 16:24:31', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(71, 5, 56, 40, 5800, '', '', '', '', '2015-10-13 16:35:38', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(72, 5, 56, 40, 15000, '', '', '', '', '2015-10-13 16:35:38', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(73, 5, 56, 40, 5800, '', '', '', '', '2015-10-13 16:38:09', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(74, 5, 56, 40, 15000, '', '', '', '', '2015-10-13 16:38:09', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(75, 4, 57, 40, 5800, '', '', '', '', '2015-10-13 16:39:11', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(76, 4, 57, 40, 15000, '', '', '', '', '2015-10-13 16:39:11', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(77, 2, 58, 40, 5800, '', '', '', '', '2015-10-13 16:40:39', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(78, 2, 58, 40, 15000, '', '', '', '', '2015-10-13 16:40:39', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(79, 2, 58, 40, 5800, '', '', '', '', '2015-10-13 16:42:29', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(80, 2, 58, 40, 15000, '', '', '', '', '2015-10-13 16:42:29', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(81, 4, 59, 40, 5800, '', '', '', '', '2015-10-13 16:43:30', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(82, 4, 59, 40, 15000, '', '', '', '', '2015-10-13 16:43:30', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(83, 5, 60, 40, 15000, '', '', '', '', '2015-10-13 16:45:00', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(84, 5, 60, 40, 15000, '', '', '', '', '2015-10-13 16:45:20', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(85, 5, 60, 40, 15000, '', '', '', '', '2015-10-13 16:45:49', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(86, 5, 60, 40, 15000, '', '', '', '', '2015-10-13 16:47:17', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(87, 4, 61, 40, 5800, 'Cash', 'NSOBVOFBDU', '', '', '2015-10-13 16:48:24', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(88, 4, 62, 40, 5800, '', '', '', '', '2015-10-19 13:37:50', '2015-10-20 07:14:59', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(89, 4, 62, 40, 15000, 'M-Pesa', 'DISONVODFI and OBDOSVBOUFDBV', '', '', '2015-10-19 13:37:50', '2015-10-29 06:37:02', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(90, 4, 62, 40, 5800, 'M-Pesa', 'NFUI459HUVEFU and 4NFNFIUNIV', '', '', '2015-10-19 13:38:00', '2015-10-30 03:08:48', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(91, 4, 62, 40, 15000, 'M-Pesa', 'FGNOFNOE and BSGFOUEVBOUF', '', '', '2015-10-19 13:38:00', '2015-10-30 07:10:47', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(92, 4, 62, 40, 5800, 'Cash', 'FKTFTKU', '', '', '2015-10-19 13:38:05', '2015-10-30 19:16:56', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(93, 4, 62, 40, 15000, '', '', '', '', '2015-10-19 13:38:05', '2015-10-20 07:14:59', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(94, 5, 63, 0, 5800, '', '', '', '', '2015-10-20 21:58:02', '2015-10-20 18:58:02', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(95, 5, 63, 0, 15000, '', '', '', '', '2015-10-20 21:58:02', '2015-10-20 18:58:02', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(96, 1, 64, 0, 5800, '', '', '', '', '2015-10-20 21:59:19', '2015-10-20 18:59:19', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(97, 1, 64, 0, 15000, 'Airtel Money', 'JHFJY565RUF', '', '', '2015-10-20 21:59:19', '2015-11-14 14:14:13', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(98, 3, 65, 0, 5800, '', '', '', '', '2015-10-20 22:58:49', '2015-10-20 19:58:49', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(99, 1, 66, 0, 5800, '', '', '', '', '2015-10-20 23:01:01', '2015-10-20 20:01:01', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(100, 6, 67, 0, 5800, '', '', '', '', '2015-10-21 11:50:14', '2015-10-21 08:50:14', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(101, 6, 67, 0, 15000, '', '', '', '', '2015-10-21 11:50:14', '2015-10-21 08:50:14', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(102, 5, 74, 0, 5800, '', '', '', '', '2015-10-21 20:32:28', '2015-10-21 17:32:28', 'Toilet', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '0000-00-00'),
(103, 5, 74, 0, 15000, 'M-Pesa', 'IVBFBOVB', '', '', '2015-10-21 20:32:28', '2015-11-16 16:46:16', 'Trailers', 'Yes', 'Active', 0, 'Pending', 'Not Approved', '2015-11-18'),
(104, 6, 75, 0, 15000, '', '', '', '', '2015-10-22 08:23:39', '2015-10-22 05:23:39', 'Trailers', 'Yes', 'Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(105, 6, 75, 0, 5800, '', '', '', '', '2015-10-22 08:23:39', '2015-10-22 05:23:39', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(106, 1, 76, 10358, 23200, 'Cash', 'H686', '', '', '2015-10-22 08:29:20', '2015-10-22 06:09:03', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(107, 1, 76, 1000, 30000, 'Airtel Money', 'VDFBFDV', '', '', '2015-10-22 08:29:20', '2015-10-22 06:09:03', 'Trailers', 'Yes', 'Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(108, 2, 77, 0, 11600, '', '', '', '', '2015-10-23 14:45:23', '2015-10-23 11:45:23', 'Toilet', 'Yes', 'Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(109, 1, 78, 23200, 23200, 'Cash', 'VSNFGOVI', '', '', '2015-10-23 15:12:01', '2015-10-30 08:11:23', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Approved', '0000-00-00'),
(110, 1, 78, 30000, 30000, 'Cash', 'FDOFBGVODF', '', '', '2015-10-23 15:12:01', '2015-10-30 08:11:23', 'Trailers', 'Yes', 'Active', 2, 'Pending', 'Approved', '0000-00-00'),
(111, 2, 80, 0, 11600, '', '', '', '', '2015-10-24 00:25:28', '2015-10-23 21:25:28', 'Toilet', 'Yes', 'Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(112, 2, 80, 0, 15000, '', '', '', '', '2015-10-24 00:25:28', '2015-10-23 21:25:28', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(113, 3, 87, 0, 23200, '', '', '', '', '2015-10-25 16:08:23', '2015-10-25 13:08:23', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(114, 3, 87, 0, 30000, '', '', '', '', '2015-10-25 16:08:23', '2015-10-25 13:08:23', 'Trailers', 'Yes', 'Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(117, 3, 89, 0, 34800, '', '', '', '', '2015-10-28 15:02:31', '2015-10-30 08:02:21', 'Toilet', 'Yes', 'Active', 6, 'Pending', 'Approved', '0000-00-00'),
(118, 3, 89, 0, 30000, '', '', '', '', '2015-10-28 15:02:31', '2015-10-30 08:02:21', 'Trailers', 'Yes', 'Active', 2, 'Pending', 'Approved', '0000-00-00'),
(119, 10, 90, 0, 23200, '', '', '', '', '2015-10-30 06:04:13', '2015-11-11 17:29:15', 'Toilet', 'Yes', 'In Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(120, 10, 90, 0, 30000, '', '', '', '', '2015-10-30 06:04:13', '2015-11-11 17:29:15', 'Trailers', 'Yes', 'In Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(121, 10, 90, 0, 23200, '', '', '', '', '2015-10-30 06:05:06', '2015-11-11 17:29:15', 'Toilet', 'Yes', 'In Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(122, 10, 90, 0, 30000, '', '', '', '', '2015-10-30 06:05:06', '2015-11-11 17:29:15', 'Trailers', 'Yes', 'In Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(123, 7, 91, 0, 23200, '', '', '', '', '2015-10-30 06:16:26', '2015-10-30 03:16:26', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(124, 7, 91, 0, 45000, '', '', '', '', '2015-10-30 06:16:26', '2015-10-30 03:16:26', 'Trailers', 'Yes', 'Active', 3, 'Pending', 'Not Approved', '0000-00-00'),
(125, 9, 92, 0, 17400, '', '', '', '', '2015-10-30 22:15:07', '2015-10-30 19:15:07', 'Toilet', 'Yes', 'Active', 3, 'Pending', 'Not Approved', '0000-00-00'),
(126, 9, 92, 0, 15000, '', '', '', '', '2015-10-30 22:15:07', '2015-10-30 19:15:07', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(127, 11, 93, 0, 69600, '', '', '', '', '2015-11-01 07:07:25', '2015-11-01 04:07:25', 'Toilet', 'Yes', 'Active', 12, 'Pending', 'Not Approved', '0000-00-00'),
(128, 11, 93, 0, 60000, '', '', '', '', '2015-11-01 07:07:25', '2015-11-01 04:07:25', 'Trailers', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(129, 3, 95, 0, 34800, '', '', '', '', '2015-11-07 23:02:37', '2015-11-11 17:13:24', 'Toilet', 'Yes', 'In Active', 6, 'Pending', 'Not Approved', '0000-00-00'),
(130, 3, 95, 0, 30000, '', '', '', '', '2015-11-07 23:02:37', '2015-11-11 17:13:24', 'Trailers', 'Yes', 'In Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(131, 5, 96, 0, 23200, '', '', '', '', '2015-11-11 18:52:10', '2015-11-11 15:52:10', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(132, 5, 96, 0, 15000, '', '', '', '', '2015-11-11 18:52:10', '2015-11-11 15:52:10', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(133, 11, 97, 0, 11600, '', '', '', '', '2015-11-14 17:13:20', '2015-11-14 14:16:08', 'Toilet', 'Yes', 'Active', 2, 'Pending', 'Approved', '0000-00-00'),
(134, 11, 97, 0, 15000, '', '', '', '', '2015-11-14 17:13:20', '2015-11-14 14:16:08', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Approved', '0000-00-00'),
(135, 5, 98, 0, 34800, '', '', '', '', '2015-11-15 20:23:37', '2015-11-15 17:23:37', 'Toilet', 'Yes', 'Active', 6, 'Pending', 'Not Approved', '0000-00-00'),
(136, 5, 98, 0, 15000, '', '', '', '', '2015-11-15 20:23:37', '2015-11-15 17:23:37', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(137, 6, 99, 0, 34800, '', '', '', '', '2015-11-15 20:35:54', '2015-11-15 17:35:54', 'Toilet', 'Yes', 'Active', 6, 'Pending', 'Not Approved', '0000-00-00'),
(138, 6, 99, 0, 15000, '', '', '', '', '2015-11-15 20:35:54', '2015-11-15 17:35:54', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(139, 6, 100, 0, 23200, '', '', '', '', '2015-11-15 20:37:18', '2015-11-15 17:37:18', 'Toilet', 'Yes', 'Active', 4, 'Pending', 'Not Approved', '0000-00-00'),
(140, 6, 100, 0, 15000, '', '', '', '', '2015-11-15 20:37:18', '2015-11-15 17:37:18', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(141, 9, 101, 0, 29000, '', '', '', '', '2015-11-15 20:38:31', '2015-11-15 17:38:31', 'Toilet', 'Yes', 'Active', 5, 'Pending', 'Not Approved', '0000-00-00'),
(142, 9, 101, 0, 15000, '', '', '', '', '2015-11-15 20:38:31', '2015-11-15 17:38:31', 'Trailers', 'Yes', 'Active', 1, 'Pending', 'Not Approved', '0000-00-00'),
(143, 9, 102, 0, 34800, '', '', '', '', '2015-11-15 20:39:48', '2015-11-15 17:39:48', 'Toilet', 'Yes', 'Active', 6, 'Pending', 'Not Approved', '0000-00-00'),
(144, 9, 102, 0, 30000, '', '', '', '', '2015-11-15 20:39:48', '2015-11-15 17:39:48', 'Trailers', 'Yes', 'Active', 2, 'Pending', 'Not Approved', '0000-00-00'),
(145, 7, 103, 0, 34800, '', '', '', '', '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Toilet', 'Yes', 'Active', 6, 'Pending', 'Not Approved', '0000-00-00'),
(146, 7, 103, 0, 45000, '', '', '', '', '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Trailers', 'Yes', 'Active', 3, 'Pending', 'Not Approved', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
`title_id` int(11) NOT NULL,
  `title_name` varchar(45) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`title_id`, `title_name`, `date_added`) VALUES
(1, 'Brgd', '2015-03-11 07:53:30'),
(2, 'Cardinal', '2015-03-11 07:53:30'),
(3, 'Dr', '2015-03-11 07:53:30'),
(4, 'Fr', '2015-03-11 07:53:30'),
(5, 'Lt', '2015-03-11 07:53:30'),
(6, 'Lt  Col', '2015-03-11 07:53:30'),
(7, 'Mr', '2015-03-11 07:53:30'),
(8, 'Miss', '2015-03-11 07:53:30'),
(9, 'Mrs', '2015-03-11 07:53:30'),
(10, 'Ms', '2015-03-11 07:53:30'),
(11, 'Prof', '2015-03-11 07:53:30'),
(12, 'Rabbi', '2015-03-11 07:53:30'),
(13, 'Rev', '2015-03-11 07:53:30'),
(14, 'Sir', '2015-03-11 07:53:30'),
(15, 'Sister', '2015-03-11 07:53:30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_clients`
--
CREATE TABLE `total_clients` (
`total_clients` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `total_expenses`
--
CREATE TABLE `total_expenses` (
`total_expenses` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `total_jobs`
--
CREATE TABLE `total_jobs` (
`total_jobs` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `total_job_card_cost`
--

CREATE TABLE `total_job_card_cost` (
`id` int(11) NOT NULL,
  `job_card_id` varchar(255) NOT NULL,
  `amount_cr` decimal(13,2) NOT NULL,
  `amount_dr` decimal(13,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','In Active') NOT NULL,
  `pymnt_code` text NOT NULL,
  `pymnt_mthd` varchar(255) NOT NULL,
  `approved` enum('Not Approved','Approved') NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_job_card_cost`
--

INSERT INTO `total_job_card_cost` (`id`, `job_card_id`, `amount_cr`, `amount_dr`, `date_added`, `timestamp`, `status`, `pymnt_code`, `pymnt_mthd`, `approved`, `payment_date`) VALUES
(1, '89', 64800.00, 12200.00, '2015-10-28 15:02:31', '2015-10-28 12:02:31', 'Active', 'DISONVODFI and OBDOSVBOUFDBV', 'M-Pesa', 'Approved', '0000-00-00'),
(2, '78', 98400.00, 98400.00, '0000-00-00 00:00:00', '2015-09-30 13:43:06', 'Active', 'JBOVBDFU', 'Cash', 'Approved', '0000-00-00'),
(3, '90', 53200.00, 53200.00, '2015-10-30 06:04:13', '2015-10-30 03:04:13', 'In Active', 'NFUI459HUVEFU and 4NFNFIUNIV', 'M-Pesa', 'Not Approved', '0000-00-00'),
(5, '91', 68200.00, 50200.00, '2015-10-30 06:16:26', '2015-10-30 03:16:26', 'Active', 'FGNOFNOE and BSGFOUEVBOUF', 'M-Pesa', 'Not Approved', '0000-00-00'),
(6, '92', 32400.00, 32400.00, '2015-10-30 22:15:07', '2015-10-30 19:15:07', 'Active', 'FKTFTKU', 'Cash', 'Not Approved', '0000-00-00'),
(7, '93', 129600.00, 40000.00, '2015-11-01 07:07:25', '2015-11-01 04:07:25', 'Active', 'JH343NH53', 'None', 'Not Approved', '0000-00-00'),
(8, '95', 64800.00, 1000.00, '2015-11-07 23:02:37', '2015-11-07 20:02:37', 'Active', '', '', 'Not Approved', '0000-00-00'),
(9, '96', 38200.00, 10000.00, '2015-11-11 18:52:10', '2015-11-11 15:52:10', 'Active', '', '', 'Not Approved', '0000-00-00'),
(10, '97', 26600.00, 12000.00, '2015-11-14 17:13:20', '2015-11-14 14:13:20', 'Active', 'JHFJY565RUF', 'Airtel Money', 'Approved', '0000-00-00'),
(11, '98', 49800.00, 0.00, '2015-11-15 20:23:37', '2015-11-15 17:23:37', 'Active', '', '', 'Not Approved', '0000-00-00'),
(12, '99', 49800.00, 0.00, '2015-11-15 20:35:54', '2015-11-15 17:35:54', 'Active', '', '', 'Not Approved', '0000-00-00'),
(13, '100', 38200.00, 0.00, '2015-11-15 20:37:18', '2015-11-15 17:37:18', 'Active', '', '', 'Not Approved', '0000-00-00'),
(14, '101', 44000.00, 0.00, '2015-11-15 20:38:31', '2015-11-15 17:38:31', 'Active', '', '', 'Not Approved', '0000-00-00'),
(15, '102', 64800.00, 0.00, '2015-11-15 20:39:48', '2015-11-15 17:39:48', 'Active', '', '', 'Not Approved', '0000-00-00'),
(16, '103', 79800.00, 14400.00, '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Active', 'IVBFBOVB', 'M-Pesa', 'Not Approved', '2015-11-18');

--
-- Triggers `total_job_card_cost`
--
DELIMITER //
CREATE TRIGGER `trg_payment_report` AFTER INSERT ON `total_job_card_cost`
 FOR EACH ROW INSERT INTO trgr_total_job_card_cost
   ( id_2,
     job_card_id,
    amount_cr,
     amount_dr,
   date_added,
   timestamp,
   status,
   pymnt_code,
   pymnt_mthd,
   approved)
   VALUES
   ( NEW.id,NEW.job_card_id,NEW.amount_cr,NEW.amount_dr,NEW.date_added,NEW.timestamp,NEW.status,NEW.pymnt_code,NEW.pymnt_mthd,NEW.approved)
//
DELIMITER ;
DELIMITER //
CREATE TRIGGER `trg_payment_report_update` AFTER UPDATE ON `total_job_card_cost`
 FOR EACH ROW INSERT INTO trgr_total_job_card_cost
   ( id_2,
     job_card_id,
    amount_cr,
     amount_dr,
   date_added,
   timestamp,
   status,
   pymnt_code,
   pymnt_mthd,
   approved)
   VALUES
   ( NEW.id,NEW.job_card_id,NEW.amount_cr,NEW.amount_dr,NEW.date_added,NEW.timestamp,NEW.status,NEW.pymnt_code,NEW.pymnt_mthd,NEW.approved)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_revenue`
--
CREATE TABLE `total_revenue` (
`total_revenue` decimal(35,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `trgr_total_job_card_cost`
--

CREATE TABLE `trgr_total_job_card_cost` (
`id` int(11) NOT NULL,
  `id_2` int(11) NOT NULL,
  `job_card_id` varchar(255) NOT NULL,
  `amount_cr` decimal(13,2) NOT NULL,
  `amount_dr` decimal(13,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','In Active') NOT NULL,
  `pymnt_code` text NOT NULL,
  `pymnt_mthd` varchar(255) NOT NULL,
  `approved` enum('Not Approved','Approved') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trgr_total_job_card_cost`
--

INSERT INTO `trgr_total_job_card_cost` (`id`, `id_2`, `job_card_id`, `amount_cr`, `amount_dr`, `date_added`, `timestamp`, `status`, `pymnt_code`, `pymnt_mthd`, `approved`) VALUES
(1, 7, '93', 129600.00, 40000.00, '2015-11-01 07:07:25', '2015-11-01 04:07:25', 'Active', 'JH343NH53', 'None', 'Approved'),
(2, 11, '98', 49800.00, 0.00, '2015-11-15 20:23:37', '2015-11-15 17:23:37', 'Active', '', '', 'Not Approved'),
(3, 12, '99', 49800.00, 0.00, '2015-11-15 20:35:54', '2015-11-15 17:35:54', 'Active', '', '', 'Not Approved'),
(4, 13, '100', 38200.00, 0.00, '2015-11-15 20:37:18', '2015-11-15 17:37:18', 'Active', '', '', 'Not Approved'),
(5, 14, '101', 44000.00, 0.00, '2015-11-15 20:38:31', '2015-11-15 17:38:31', 'Active', '', '', 'Not Approved'),
(6, 15, '102', 64800.00, 0.00, '2015-11-15 20:39:48', '2015-11-15 17:39:48', 'Active', '', '', 'Not Approved'),
(7, 16, '103', 79800.00, 0.00, '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Active', '', '', 'Not Approved'),
(8, 16, '103', 79800.00, 1200.00, '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Active', 'IVBFBOVB', 'M-Pesa', 'Not Approved'),
(9, 16, '103', 79800.00, 2400.00, '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Active', 'IVBFBOVB', 'M-Pesa', 'Not Approved'),
(10, 16, '103', 79800.00, 14400.00, '2015-11-15 20:49:23', '2015-11-15 17:49:23', 'Active', 'IVBFBOVB', 'M-Pesa', 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('Active','In Active') NOT NULL,
  `timestmap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `status`, `timestmap`) VALUES
(1, 'admin', 'admin@uniqueloo.co.ke', '21232f297a57a5a743894a0e4a801fc3', 'Active', '2015-09-18 08:18:14'),
(2, 'one', 'one@aone.com', 'f97c5d29941bfb1b2fdab0874906ab82', 'Active', '2015-09-18 07:40:08'),
(3, 'Dindi', 'harrisdindisamuel@gmail.com', '', 'Active', '2015-10-01 18:35:44'),
(4, 'Dindi 1', 'hdindi@harris-dindi.com', '', 'Active', '2015-10-25 09:35:35'),
(5, 'Dindi 2', 'harris.samuel@strathmore.edu', 'e10adc3949ba59abbe56e057f20f883e', 'Active', '2015-10-25 08:39:37'),
(6, 'Harrison', 'bbvf@fgd.gfds', 'e10adc3949ba59abbe56e057f20f883e', 'Active', '2015-10-25 09:31:01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_permissions_list`
--
CREATE TABLE `user_permissions_list` (
`permission_id` int(11)
,`user_id` int(11)
,`function_id` int(11)
,`permission_status` enum('Active','In Active')
,`functions_id` int(11)
,`function_name` varchar(255)
,`code` text
,`function_status` enum('Active','In Active')
,`level` int(11)
,`controller_name` text
,`functions_name` text
,`i_tag` text
,`description` text
,`span_tag` text
);
-- --------------------------------------------------------

--
-- Structure for view `active_job_cards`
--
DROP TABLE IF EXISTS `active_job_cards`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `active_job_cards` AS select month(`job_card`.`dte_evnt`) AS `event_month`,year(`job_card`.`dte_evnt`) AS `event_year`,count(`job_card`.`status`) AS `event_status_count`,`job_card`.`id` AS `id` from `job_card` where (`job_card`.`status` = 'Active') group by month(`job_card`.`dte_evnt`),year(`job_card`.`dte_evnt`);

-- --------------------------------------------------------

--
-- Structure for view `active_users`
--
DROP TABLE IF EXISTS `active_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `active_users` AS select count(`login_logs`.`login_logs_id`) AS `active_users` from `login_logs` where (`login_logs`.`is_active` = 'Active');

-- --------------------------------------------------------

--
-- Structure for view `billed_client_info`
--
DROP TABLE IF EXISTS `billed_client_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `billed_client_info` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`address` AS `client_address`,`client`.`website` AS `client_website`,`client`.`industry` AS `client_industry`,`client`.`phone_no` AS `client_phone_no`,`client`.`email` AS `client_email`,`client`.`status` AS `client_status`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,`job_card`.`id` AS `job_card_id` from ((`client` join `job_card` on((`job_card`.`clnt_id` = `client`.`id`))) join `statement` on((`statement`.`job_card_id` = `job_card`.`id`))) group by `client`.`id`;

-- --------------------------------------------------------

--
-- Structure for view `cancelled_job_cards`
--
DROP TABLE IF EXISTS `cancelled_job_cards`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cancelled_job_cards` AS select month(`job_card`.`dte_evnt`) AS `event_month`,year(`job_card`.`dte_evnt`) AS `event_year`,count(`job_card`.`status`) AS `event_status_count` from `job_card` where (`job_card`.`status` = 'Cancelled') group by month(`job_card`.`dte_evnt`),year(`job_card`.`dte_evnt`);

-- --------------------------------------------------------

--
-- Structure for view `client_payment_list`
--
DROP TABLE IF EXISTS `client_payment_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `client_payment_list` AS select `statement`.`description` AS `asset_name`,`statement`.`qty` AS `qty`,`statement`.`amnt_cr` AS `amount_charged`,`statement`.`amnt_dr` AS `amount_paid`,(`statement`.`amnt_cr` - `statement`.`amnt_dr`) AS `balance`,`statement`.`pymnt_mthd` AS `payment_method`,`statement`.`pymnt_code` AS `payment_code`,`job_card`.`job_card_no` AS `job_card_no`,`statement`.`job_card_id` AS `job_card_id`,`statement`.`invoice_no` AS `invoice_no`,`statement`.`id` AS `statement_id`,`job_card`.`clnt_id` AS `client_id`,`statement`.`status` AS `status` from (`job_card` join `statement` on((`statement`.`job_card_id` = `job_card`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `clnt_pymnt_stmnt_rprt`
--
DROP TABLE IF EXISTS `clnt_pymnt_stmnt_rprt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clnt_pymnt_stmnt_rprt` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`phone_no` AS `phone_no`,`job_card`.`id` AS `job_card_id`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,date_format(`job_card`.`date_added`,'%T, %d-%b-%Y') AS `date_added`,month(`job_card`.`date_added`) AS `month`,year(`job_card`.`date_added`) AS `year`,sum(`trgr_total_job_card_cost`.`amount_cr`) AS `amount_charged` from ((`client` join `job_card` on((`job_card`.`clnt_id` = `client`.`id`))) join `trgr_total_job_card_cost` on((`trgr_total_job_card_cost`.`job_card_id` = `job_card`.`id`))) group by `job_card`.`job_card_no` order by `job_card`.`id` desc;

-- --------------------------------------------------------

--
-- Structure for view `cln_pymnt_stmnt_rprt`
--
DROP TABLE IF EXISTS `cln_pymnt_stmnt_rprt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cln_pymnt_stmnt_rprt` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`phone_no` AS `phone_no`,`job_card`.`id` AS `job_card_id`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,`job_card`.`date_added` AS `date_added`,sum(`statement`.`amnt_cr`) AS `amount_charged` from ((`client` join `job_card` on((`job_card`.`clnt_id` = `client`.`id`))) join `statement` on((`statement`.`job_card_id` = `job_card`.`id`))) group by `job_card`.`job_card_no`;

-- --------------------------------------------------------

--
-- Structure for view `daily_expense_report`
--
DROP TABLE IF EXISTS `daily_expense_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `daily_expense_report` AS select `job_card`.`id` AS `job_card_id`,`client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,sum(`assgnd_rsces`.`value`) AS `total_expense`,year(`job_card`.`date_added`) AS `year`,month(`job_card`.`date_added`) AS `month` from ((`job_card` join `client` on((`client`.`id` = `job_card`.`clnt_id`))) join `assgnd_rsces` on((`assgnd_rsces`.`job_card_id` = `job_card`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `daily_revenue_report`
--
DROP TABLE IF EXISTS `daily_revenue_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `daily_revenue_report` AS select `job_card`.`id` AS `job_card_id`,`client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,sum(`statement`.`amnt_dr`) AS `total_revenue`,year(`job_card`.`date_added`) AS `year`,month(`job_card`.`date_added`) AS `month` from ((`job_card` join `client` on((`client`.`id` = `job_card`.`clnt_id`))) join `statement` on((`statement`.`job_card_id` = `job_card`.`id`))) group by `statement`.`job_card_id`;

-- --------------------------------------------------------

--
-- Structure for view `expenses_incurred`
--
DROP TABLE IF EXISTS `expenses_incurred`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expenses_incurred` AS select sum(`assgnd_rsces`.`value`) AS `total_expenses` from `assgnd_rsces` group by `assgnd_rsces`.`job_card_id`;

-- --------------------------------------------------------

--
-- Structure for view `expenses_per_job_card`
--
DROP TABLE IF EXISTS `expenses_per_job_card`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expenses_per_job_card` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`job_card`.`id` AS `job_card_id`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,sum(`assgnd_rsces`.`value`) AS `expense` from ((`job_card` join `client` on((`client`.`id` = `job_card`.`clnt_id`))) join `assgnd_rsces` on((`assgnd_rsces`.`job_card_id` = `job_card`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `expense_per_client`
--
DROP TABLE IF EXISTS `expense_per_client`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expense_per_client` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`industry` AS `industry`,sum(`assgnd_rsces`.`value`) AS `total_expense` from ((`assgnd_rsces` join `job_card` on((`job_card`.`id` = `assgnd_rsces`.`job_card_id`))) join `client` on((`client`.`id` = `job_card`.`clnt_id`)));

-- --------------------------------------------------------

--
-- Structure for view `expense_per_month`
--
DROP TABLE IF EXISTS `expense_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expense_per_month` AS select month(`job_card`.`dte_evnt`) AS `expense_month`,year(`job_card`.`dte_evnt`) AS `expense_year`,sum(`assgnd_rsces`.`value`) AS `expense` from (`assgnd_rsces` left join `job_card` on((`job_card`.`id` = `assgnd_rsces`.`job_card_id`))) group by month(`job_card`.`dte_evnt`);

-- --------------------------------------------------------

--
-- Structure for view `expense_ytd`
--
DROP TABLE IF EXISTS `expense_ytd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expense_ytd` AS select sum(`assgnd_rsces`.`value`) AS `expense`,year(`assgnd_rsces`.`date_added`) AS `year` from (`assgnd_rsces` join `job_card` on((`job_card`.`id` = `assgnd_rsces`.`job_card_id`))) where (year(`assgnd_rsces`.`date_added`) = year(curdate()));

-- --------------------------------------------------------

--
-- Structure for view `in_active_job_cards`
--
DROP TABLE IF EXISTS `in_active_job_cards`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `in_active_job_cards` AS select month(`job_card`.`dte_evnt`) AS `event_month`,year(`job_card`.`dte_evnt`) AS `event_year`,count(`job_card`.`status`) AS `event_status_count` from `job_card` where (`job_card`.`status` = 'In Active') group by month(`job_card`.`dte_evnt`),year(`job_card`.`dte_evnt`);

-- --------------------------------------------------------

--
-- Structure for view `job_cards_client`
--
DROP TABLE IF EXISTS `job_cards_client`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `job_cards_client` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`address` AS `client_address`,`client`.`industry` AS `client_industry`,`client`.`phone_no` AS `client_phone`,`client`.`email` AS `client_email`,`client`.`status` AS `client_status`,`job_card`.`id` AS `id`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no` from (`job_card` join `client` on((`client`.`id` = `job_card`.`clnt_id`)));

-- --------------------------------------------------------

--
-- Structure for view `job_card_status`
--
DROP TABLE IF EXISTS `job_card_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `job_card_status` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`phone_no` AS `phone_no`,`job_card`.`id` AS `job_card_id`,`job_card`.`user_id` AS `user_id`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,sum(`statement`.`amnt_dr`) AS `amount_paid`,sum(`statement`.`amnt_cr`) AS `amount_billed`,sum((`statement`.`amnt_cr` - `statement`.`amnt_dr`)) AS `amount_owed`,`job_card`.`status` AS `job_card_status`,`job_card`.`date_added` AS `date_opened`,`job_card`.`dte_evnt` AS `event_date`,`job_card`.`dte_srcd` AS `date_sourced` from ((`client` join `job_card` on((`job_card`.`clnt_id` = `client`.`id`))) join `statement` on((`statement`.`job_card_id` = `job_card`.`id`))) group by `statement`.`job_card_id`;

-- --------------------------------------------------------

--
-- Structure for view `monthly_expense`
--
DROP TABLE IF EXISTS `monthly_expense`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monthly_expense` AS select sum(`assgnd_rsces`.`value`) AS `expense`,date_format(`job_card`.`dte_evnt`,'%d-%b-%Y') AS `expense_period`,date_format(`job_card`.`dte_evnt`,'%Y') AS `expense_year` from (`assgnd_rsces` join `job_card` on((`job_card`.`id` = `assgnd_rsces`.`job_card_id`))) where (month(`assgnd_rsces`.`date_added`) >= month(now()));

-- --------------------------------------------------------

--
-- Structure for view `monthly_revenue`
--
DROP TABLE IF EXISTS `monthly_revenue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monthly_revenue` AS select sum(`total_job_card_cost`.`amount_dr`) AS `revenues`,date_format(`job_card`.`dte_evnt`,'%d-%b-%Y') AS `revenue_period`,date_format(`job_card`.`dte_evnt`,'%Y') AS `revenue_year` from (`total_job_card_cost` join `job_card` on((`job_card`.`id` = `total_job_card_cost`.`job_card_id`))) where (month(`total_job_card_cost`.`date_added`) >= month(now()));

-- --------------------------------------------------------

--
-- Structure for view `performance`
--
DROP TABLE IF EXISTS `performance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `performance` AS select distinct month(`job_card`.`dte_evnt`) AS `performance_month`,year(`job_card`.`dte_evnt`) AS `performance_year`,`total_job_card_cost`.`amount_dr` AS `performance_sales`,sum(`assgnd_rsces`.`value`) AS `performance_expense` from ((`job_card` join `total_job_card_cost` on((`total_job_card_cost`.`job_card_id` = `job_card`.`id`))) join `assgnd_rsces` on((`assgnd_rsces`.`job_card_id` = `job_card`.`id`))) group by month(`job_card`.`dte_evnt`),year(`job_card`.`dte_evnt`);

-- --------------------------------------------------------

--
-- Structure for view `revenue_collected`
--
DROP TABLE IF EXISTS `revenue_collected`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revenue_collected` AS select sum(`statement`.`amnt_dr`) AS `total_revenue`,`statement`.`invoice_no` AS `invoice_no`,`statement`.`date_added` AS `date_added` from `statement` group by `statement`.`invoice_no`;

-- --------------------------------------------------------

--
-- Structure for view `revenue_per_client`
--
DROP TABLE IF EXISTS `revenue_per_client`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revenue_per_client` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`client`.`phone_no` AS `phone_no`,`client`.`industry` AS `industry`,sum(`total_job_card_cost`.`amount_dr`) AS `revenue_collected` from ((`job_card` join `total_job_card_cost` on((`total_job_card_cost`.`job_card_id` = `job_card`.`id`))) join `client` on((`client`.`id` = `job_card`.`clnt_id`))) group by `job_card`.`clnt_id`;

-- --------------------------------------------------------

--
-- Structure for view `revenue_per_job_card`
--
DROP TABLE IF EXISTS `revenue_per_job_card`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revenue_per_job_card` AS select `client`.`id` AS `client_id`,`client`.`name` AS `client_name`,`job_card`.`id` AS `job_card_id`,`job_card`.`job_card_no` AS `job_card_no`,`job_card`.`invoice_no` AS `invoice_no`,sum(`statement`.`amnt_dr`) AS `revenue` from ((`job_card` join `client` on((`client`.`id` = `job_card`.`clnt_id`))) join `statement` on((`statement`.`job_card_id` = `job_card`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `revenue_per_month`
--
DROP TABLE IF EXISTS `revenue_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revenue_per_month` AS select month(`job_card`.`dte_evnt`) AS `revenue_month`,year(`job_card`.`dte_evnt`) AS `revenue_year`,sum(`total_job_card_cost`.`amount_dr`) AS `revenue` from (`total_job_card_cost` left join `job_card` on((`total_job_card_cost`.`job_card_id` = `job_card`.`id`))) group by month(`job_card`.`dte_evnt`);

-- --------------------------------------------------------

--
-- Structure for view `revenue_ytd`
--
DROP TABLE IF EXISTS `revenue_ytd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revenue_ytd` AS select sum(`statement`.`amnt_dr`) AS `revenue`,year(`statement`.`date_added`) AS `year` from (`job_card` join `statement` on((`statement`.`job_card_id` = `job_card`.`id`))) where (year(`statement`.`date_added`) = year(curdate()));

-- --------------------------------------------------------

--
-- Structure for view `total_clients`
--
DROP TABLE IF EXISTS `total_clients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_clients` AS select count(`client`.`id`) AS `total_clients` from `client` where (`client`.`status` = 'Active');

-- --------------------------------------------------------

--
-- Structure for view `total_expenses`
--
DROP TABLE IF EXISTS `total_expenses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_expenses` AS select sum(`assgnd_rsces`.`value`) AS `total_expenses` from `assgnd_rsces` where ((`assgnd_rsces`.`status` = 'Active') and (year(`assgnd_rsces`.`date_added`) >= year(now())));

-- --------------------------------------------------------

--
-- Structure for view `total_jobs`
--
DROP TABLE IF EXISTS `total_jobs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_jobs` AS select count(`job_card`.`id`) AS `total_jobs` from `job_card` where ((`job_card`.`status` = 'Active') and (year(`job_card`.`dte_evnt`) >= year(now())));

-- --------------------------------------------------------

--
-- Structure for view `total_revenue`
--
DROP TABLE IF EXISTS `total_revenue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_revenue` AS select sum(`total_job_card_cost`.`amount_dr`) AS `total_revenue` from `total_job_card_cost` where ((`total_job_card_cost`.`status` = 'Active') and (year(`total_job_card_cost`.`date_added`) >= year(now())));

-- --------------------------------------------------------

--
-- Structure for view `user_permissions_list`
--
DROP TABLE IF EXISTS `user_permissions_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_permissions_list` AS select `permissions`.`id` AS `permission_id`,`permissions`.`user_id` AS `user_id`,`permissions`.`function_id` AS `function_id`,`permissions`.`status` AS `permission_status`,`functions`.`id` AS `functions_id`,`functions`.`name` AS `function_name`,`functions`.`code` AS `code`,`functions`.`status` AS `function_status`,`functions`.`level` AS `level`,`functions`.`controller_name` AS `controller_name`,`functions`.`function_name` AS `functions_name`,`functions`.`i_tag` AS `i_tag`,`functions`.`description` AS `description`,`functions`.`span_tag` AS `span_tag` from (`functions` join `permissions` on((`permissions`.`function_id` = `functions`.`id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `asset_tracker`
--
ALTER TABLE `asset_tracker`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_type`
--
ALTER TABLE `asset_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assgnd_rsces`
--
ALTER TABLE `assgnd_rsces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `conf`
--
ALTER TABLE `conf`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card`
--
ALTER TABLE `job_card`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_card_no`
--
ALTER TABLE `job_card_no`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
 ADD PRIMARY KEY (`login_logs_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
 ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `total_job_card_cost`
--
ALTER TABLE `total_job_card_cost`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trgr_total_job_card_cost`
--
ALTER TABLE `trgr_total_job_card_cost`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `asset_tracker`
--
ALTER TABLE `asset_tracker`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `asset_type`
--
ALTER TABLE `asset_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assgnd_rsces`
--
ALTER TABLE `assgnd_rsces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `conf`
--
ALTER TABLE `conf`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `job_card`
--
ALTER TABLE `job_card`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `job_card_no`
--
ALTER TABLE `job_card_no`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
MODIFY `login_logs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=423;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `total_job_card_cost`
--
ALTER TABLE `total_job_card_cost`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `trgr_total_job_card_cost`
--
ALTER TABLE `trgr_total_job_card_cost`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
