-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2017 at 11:52 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thedrones`
--

-- --------------------------------------------------------

--
-- Table structure for table `drones`
--

CREATE TABLE `drones` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `drones_detail_id` int(11) DEFAULT NULL,
  `drones_status_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drones_detail`
--

CREATE TABLE `drones_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pathpicture` varchar(200) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drones_status`
--

CREATE TABLE `drones_status` (
  `id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drones_status`
--

INSERT INTO `drones_status` (`id`, `status`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'empty', 1, 'system', NULL, NULL, NULL),
(2, 'working', 1, 'system', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `adress` varchar(200) DEFAULT NULL,
  `area_size` varchar(50) DEFAULT NULL,
  `name_plants` varchar(50) DEFAULT NULL,
  `size_plants` varchar(50) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(11) NOT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `nationality`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Afghan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'Albanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Algerian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'American', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 'Andorran', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 'Angolan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 'Antiguans', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 'Argentinean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(9, 'Armenian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(10, 'Australian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(11, 'Austrian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(12, 'Azerbaijani', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(13, 'Bahamian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(14, 'Bahraini', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(15, 'Bangladeshi', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(16, 'Barbadian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(17, 'Barbudans', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(18, 'Batswana', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(19, 'Belarusian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(20, 'Belgian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(21, 'Belizean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(22, 'Beninese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(23, 'Bhutanese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(24, 'Bolivian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(25, 'Bosnian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(26, 'Brazilian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(27, 'British', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(28, 'Bruneian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(29, 'Bulgarian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(30, 'Burkinabe', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(31, 'Burmese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(32, 'Burundian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(33, 'Cambodian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(34, 'Cameroonian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(35, 'Canadian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(36, 'Cape Verdean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(37, 'Central African', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(38, 'Chadian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(39, 'Chilean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(40, 'Chinese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(41, 'Colombian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(42, 'Comoran', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(43, 'Congolese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(44, 'Congolese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(45, 'Costa Rican', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(46, 'Croatian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(47, 'Cuban', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(48, 'Cypriot', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(49, 'Czech', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(50, 'Danish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(51, 'Djibouti', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(52, 'Dominican', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(53, 'Dominican', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(54, 'Dutch', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(55, 'Dutchman', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(56, 'Dutchwoman', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(57, 'East Timorese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(58, 'Ecuadorean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(59, 'Egyptian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(60, 'Emirian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(61, 'Equatorial Guinean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(62, 'Eritrean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(63, 'Estonian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(64, 'Ethiopian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(65, 'Fijian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(66, 'Filipino', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(67, 'Finnish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(68, 'French', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(69, 'Gabonese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(70, 'Gambian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(71, 'Georgian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(72, 'German', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(73, 'Ghanaian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(74, 'Greek', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(75, 'Grenadian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(76, 'Guatemalan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(77, 'Guinea-Bissauan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(78, 'Guinean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(79, 'Guyanese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(80, 'Haitian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(81, 'Herzegovinian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(82, 'Honduran', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(83, 'Hungarian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(84, 'I-Kiribati', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(85, 'Icelander', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(86, 'Indian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(87, 'Indonesian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(88, 'Iranian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(89, 'Iraqi', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(90, 'Irish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(91, 'Irish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(92, 'Israeli', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(93, 'Italian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(94, 'Ivorian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(95, 'Jamaican', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(96, 'Japanese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(97, 'Jordanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(98, 'Kazakhstani', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(99, 'Kenyan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(100, 'Kittian and Nevisian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(101, 'Kuwaiti', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(102, 'Kyrgyz', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(103, 'Laotian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(104, 'Latvian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(105, 'Lebanese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(106, 'Liberian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(107, 'Libyan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(108, 'Liechtensteiner', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(109, 'Lithuanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(110, 'Luxembourger', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(111, 'Macedonian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(112, 'Malagasy', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(113, 'Malawian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(114, 'Malaysian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(115, 'Maldivan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(116, 'Malian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(117, 'Maltese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(118, 'Marshallese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(119, 'Mauritanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(120, 'Mauritian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(121, 'Mexican', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(122, 'Micronesian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(123, 'Moldovan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(124, 'Monacan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(125, 'Mongolian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(126, 'Moroccan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(127, 'Mosotho', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(128, 'Motswana', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(129, 'Mozambican', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(130, 'Namibian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(131, 'Nauruan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(132, 'Nepalese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(133, 'Netherlander', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(134, 'New Zealander', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(135, 'Ni-Vanuatu', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(136, 'Nicaraguan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(137, 'Nigerian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(138, 'Nigerien', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(139, 'North Korean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(140, 'Northern Irish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(141, 'Norwegian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(142, 'Omani', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(143, 'Pakistani', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(144, 'Palauan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(145, 'Panamanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(146, 'Papua New Guinean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(147, 'Paraguayan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(148, 'Peruvian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(149, 'Polish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(150, 'Portuguese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(151, 'Qatari', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(152, 'Romanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(153, 'Russian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(154, 'Rwandan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(155, 'Saint Lucian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(156, 'Salvadoran', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(157, 'Samoan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(158, 'San Marinese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(159, 'Sao Tomean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(160, 'Saudi', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(161, 'Scottish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(162, 'Senegalese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(163, 'Serbian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(164, 'Seychellois', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(165, 'Sierra Leonean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(166, 'Singaporean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(167, 'Slovakian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(168, 'Slovenian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(169, 'Solomon Islander', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(170, 'Somali', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(171, 'South African', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(172, 'South Korean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(173, 'Spanish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(174, 'Sri Lankan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(175, 'Sudanese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(176, 'Surinamer', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(177, 'Swazi', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(178, 'Swedish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(179, 'Swiss', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(180, 'Syrian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(181, 'Taiwanese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(182, 'Tajik', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(183, 'Tanzanian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(184, 'Thai', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(185, 'Togolese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(186, 'Tongan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(187, 'Trinidadian or Tobagonian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(188, 'Tunisian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(189, 'Turkish', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(190, 'Tuvaluan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(191, 'Ugandan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(192, 'Ukrainian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(193, 'Uruguayan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(194, 'Uzbekistani', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(195, 'Venezuelan', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(196, 'Vietnamese', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(197, 'Welsh', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(198, 'Welsh', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(199, 'Yemenite', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(200, 'Zambian', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(201, 'Zimbabwean', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `payment_chanal_id` int(11) DEFAULT NULL,
  `users_id_service` int(11) DEFAULT NULL,
  `users_id_ranter` int(11) DEFAULT NULL,
  `information_id` int(11) DEFAULT NULL,
  `drone_id` int(11) DEFAULT NULL,
  `fistname_service` varchar(100) DEFAULT NULL,
  `lastname_service` varchar(100) DEFAULT NULL,
  `fistname_ranter` varchar(100) DEFAULT NULL,
  `lastname_ranter` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_chanal`
--

CREATE TABLE `payment_chanal` (
  `id` int(11) NOT NULL,
  `chanal` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_chanal`
--

INSERT INTO `payment_chanal` (`id`, `chanal`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Cash', 1, 'system', NULL, NULL, NULL),
(2, 'Credit card', 1, 'system', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `status`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Pending', 1, 'system', NULL, NULL, NULL),
(2, 'Paid', 1, 'system', NULL, NULL, NULL),
(3, 'Canceled', 1, 'system', NULL, NULL, NULL),
(4, 'Error ', 1, 'system', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'กระบี่', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'กรุงเทพมหานคร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'กาญจนบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'กาฬสินธุ์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 'กำแพงเพชร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 'ขอนแก่น', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 'จันทบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 'ฉะเชิงเทรา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(9, 'ชลบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(10, 'ชัยนาท', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(11, 'ชัยภูมิ', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(12, 'ชุมพร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(13, 'เชียงราย', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(14, 'เชียงใหม่', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(15, 'ตรัง', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(16, 'ตราด', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(17, 'ตาก', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(18, 'นครนายก', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(19, 'นครปฐม', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(20, 'นครพนม', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(21, 'นครราชสีมา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(22, 'นครศรีธรรมราช', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(23, 'นครสวรรค์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(24, 'นนทบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(25, 'นราธิวาส', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(26, 'น่าน', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(27, 'บุรีรัมย์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(28, 'ปทุมธานี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(29, 'ประจวบคีรีขันธ์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(30, 'ปราจีนบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(31, 'ปัตตานี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(32, 'พระนครศรีอยุธยา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(33, 'พะเยา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(34, 'พังงา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(35, 'พัทลุง', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(36, 'พิจิตร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(37, 'พิษณุโลก', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(38, 'เพชรบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(39, 'เพชรบูรณ์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(40, 'แพร่', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(41, 'ภูเก็ต', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(42, 'มหาสารคาม', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(43, 'มุกดาหาร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(44, 'แม่ฮ่องสอน', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(45, 'ยโสธร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(46, 'ยะลา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(47, 'ร้อยเอ็ด', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(48, 'ระนอง', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(49, 'ระยอง', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(50, 'ราชบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(51, 'ลพบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(52, 'เลย', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(53, 'ลำปาง', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(54, 'ลำพูน', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(55, 'ศีรสะเกษ', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(56, 'สกลนคร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(57, 'สงขลา', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(58, 'สตูล', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(59, 'สมุทรปราการ', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(60, 'สมุทรสงคราม', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(61, 'สมุทรสาคร', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(62, 'สระแก้ว', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(63, 'สระบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(64, 'สิงห์บุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(65, 'สุโขทัย', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(66, 'สุพรรณบุรี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(67, 'สุราษฎร์ธานี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(68, 'สุรินทร์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(69, 'หนองคาย', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(70, 'หนองบัวลำภู', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(71, 'อ่างทอง', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(72, 'อำนาจเจริญ', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(73, 'อุดรธานี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(74, 'อุตรดิตถ์', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(75, 'อุทัยธานี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(76, 'อุบลราชธานี', 1, 'system', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `users_id_service` int(11) DEFAULT NULL,
  `users_id_ranter` int(11) DEFAULT NULL,
  `fistname_service` varchar(100) DEFAULT NULL,
  `lastname_service` varchar(100) DEFAULT NULL,
  `fistname_ranter` varchar(100) DEFAULT NULL,
  `lastname_ranter` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) NOT NULL,
  `drone_id` int(11) DEFAULT NULL,
  `users_id_service` int(11) DEFAULT NULL,
  `users_id_ranter` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `informations_id` int(11) DEFAULT NULL,
  `datetime` date DEFAULT NULL,
  `quanlity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_types_id` int(11) DEFAULT NULL,
  `users_detail_id` int(11) DEFAULT NULL,
  `users_status_history_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `id` int(11) NOT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `pathphoto` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `passport_number` varchar(20) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_type`
--

CREATE TABLE `users_type` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_type`
--

INSERT INTO `users_type` (`id`, `type`, `is_active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'framer', 1, 'system', NULL, NULL, NULL),
(2, 'thedrone', 1, 'system', NULL, NULL, NULL),
(3, 'sell', 1, 'system', NULL, NULL, NULL),
(4, 'admin', 1, 'system', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_status_history`
--

CREATE TABLE `user_status_history` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `login_time` varchar(45) DEFAULT NULL,
  `logout_time` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` varchar(45) DEFAULT 'system',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drones`
--
ALTER TABLE `drones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drones_detail`
--
ALTER TABLE `drones_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drones_status`
--
ALTER TABLE `drones_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_chanal`
--
ALTER TABLE `payment_chanal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status_history`
--
ALTER TABLE `user_status_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drones`
--
ALTER TABLE `drones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drones_detail`
--
ALTER TABLE `drones_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drones_status`
--
ALTER TABLE `drones_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_chanal`
--
ALTER TABLE `payment_chanal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_detail`
--
ALTER TABLE `users_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_type`
--
ALTER TABLE `users_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_status_history`
--
ALTER TABLE `user_status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
