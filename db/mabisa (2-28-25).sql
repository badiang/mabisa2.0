-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2025 at 02:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mabisa2.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `action_id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `time_and_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`action_id`, `user_id`, `username`, `action`, `time_and_date`) VALUES
(1, 1, 'admin', 'Deleted a Version with ID: 0', '2025-02-19 15:51:09'),
(2, 1, 'admin', 'Edited a Version with ID:2 to Short Definition: ads, Description: 121, Active Year: 121, and is Acti', '2025-02-19 15:51:21'),
(3, 1, 'admin', 'Deleted a Version with ID: 2', '2025-02-19 15:51:26'),
(4, 1, 'admin', 'Edited a Document Source with ID:1 to Source Code: BRGYSEC, and Source Description: Barangay Secreta', '2025-02-19 15:53:02'),
(5, 1, 'admin', 'Edited a Document Source with ID:1 to Source Code: BRGYSEC, and Source Description: Barangay Secreta', '2025-02-19 15:53:09'),
(6, 1, 'admin', 'Created a New Document Source with Source Code: as, and Source Description: asd', '2025-02-19 15:54:32'),
(7, 1, 'admin', 'Created a New Document Source with Source Code: ads, and Source Description: asd', '2025-02-19 15:55:33'),
(8, 1, 'admin', 'Edited a Document Source with ID:3 to Source Code: ads, and Source Description: asds', '2025-02-19 15:55:39'),
(9, 1, 'admin', 'Deleted a Document Source with ID:3', '2025-02-19 15:55:45'),
(10, 1, 'admin', 'Created a New Governance Entry with Cat Code: ESSE, Area ID: 1, Description ID: 2, and Description: ', '2025-02-19 15:56:01'),
(11, 1, 'admin', 'Created a New Governance Entry with Cat Code: CORE, Area ID: 2, Description ID: 2, and Description: ', '2025-02-19 15:57:47'),
(12, 1, 'admin', 'Edited a Governance Entry with ID: 7 to Cat Code: CORE, Area ID: 2, Description ID: 2, and Descripti', '2025-02-19 15:57:59'),
(13, 1, 'admin', 'Deleted a Governance Entry with ID: 7', '2025-02-19 15:58:04'),
(14, 1, 'admin', 'Uploaded file: print.pdf for Barangay ID: 104201025, Criteria: 37', '2025-02-19 16:20:26'),
(15, 1, 'admin', 'Uploaded file: 4B_wk01_DiamadaWillow.pdf for Barangay ID: 104201025, Criteria: 36', '2025-02-19 16:20:41'),
(16, 1, 'admin', 'Uploaded file: print.pdf for Barangay ID: 104201025, Criteria: 39', '2025-02-19 16:20:59'),
(17, 1, 'admin', 'Approved a file with file ID: 32', '2025-02-19 16:22:04'),
(18, 1, 'admin', 'Approved a file with file ID: 33', '2025-02-19 16:22:11'),
(19, 1, 'admin', 'Approved a file with file ID: 34', '2025-02-19 16:22:19'),
(20, 1, 'admin', 'User Logged Out', '2025-02-20 10:31:21'),
(21, 20, 'testingSec', 'User Logged Out', '2025-02-20 10:33:14'),
(22, 1, 'admin', 'Created a New Criteria with Version ID: 1, Indicator ID: 11, Minimum Requirements ID: 19, Sub Minimu', '2025-02-20 10:43:03'),
(23, 1, 'admin', 'Created a New Governance Entry with Cat Code: CORE, Area ID: 2, Description ID: 1, and Description: ', '2025-02-20 11:07:56'),
(24, 1, 'admin', 'Deleted a Governance Entry with ID: 8', '2025-02-20 11:09:48'),
(25, 1, 'admin', 'Created a New Governance Entry with Cat Code: CORE, Area ID: 4, Description ID: 1, and Description: ', '2025-02-20 11:09:58'),
(26, 1, 'admin', 'Edited a Governance Entry with ID: 9 to Cat Code: CORE, Area ID: 4, Description ID: 2, and Descripti', '2025-02-20 11:10:28'),
(27, 1, 'admin', 'Edited a Governance Entry with ID: 9 to Cat Code: CORE, Area ID: 4, Description ID: 2, and Descripti', '2025-02-20 11:41:52'),
(28, 1, 'admin', 'Edited a Governance Entry with ID: 9 to Cat Code: CORE, Area ID: 4, Description ID: 4, and Descripti', '2025-02-20 11:42:01'),
(29, 1, 'admin', 'Deleted a Governance Entry with ID: 9', '2025-02-20 11:42:07'),
(30, 1, 'admin', 'User Logged Out', '2025-02-20 12:27:36'),
(31, 20, 'testingSec', 'User Logged Out', '2025-02-20 12:30:05'),
(32, 1, 'admin', 'User Logged Out', '2025-02-20 12:38:18'),
(33, 1, 'admin', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 37', '2025-02-20 12:51:04'),
(34, 1, 'admin', 'Deleted file with ID: 35', '2025-02-20 12:57:50'),
(35, 1, 'admin', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 37', '2025-02-20 12:58:00'),
(36, 1, 'admin', 'Approved a file with file ID: 36', '2025-02-20 12:59:38'),
(37, 1, 'admin', 'Created a New Criteria with Version ID: 1, Indicator ID: 1, Minimum Requirements ID: 1, Sub Minimum ', '2025-02-20 15:10:56'),
(38, 1, 'admin', 'Created a New Criteria with Version ID: 1, Indicator ID: 1, Minimum Requirements ID: 1, Sub Minimum ', '2025-02-20 15:11:40'),
(39, 1, 'admin', 'Logged In', '2025-02-21 16:13:10'),
(40, 20, 'testingSec', 'Logged In', '2025-02-21 16:13:33'),
(41, 21, 'testingAud', 'Logged In', '2025-02-21 16:14:27'),
(42, 20, 'testingSec', 'Deleted file with ID: 36', '2025-02-21 16:21:22'),
(43, 1, 'admin', 'Edited a Criteria with id: 36, to Version ID: 1, Indicator ID: 6, Minimum Requirements ID: 8, Sub Mi', '2025-02-21 16:53:14'),
(44, 1, 'admin', 'Edited a Criteria with id: 39, to Version ID: 1, Indicator ID: 6, Minimum Requirements ID: 8, Sub Mi', '2025-02-21 16:53:30'),
(45, 20, 'testingSec', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 42', '2025-02-21 16:55:55'),
(46, 21, 'testingAud', 'Approved a file with file ID: 37', '2025-02-21 16:56:09'),
(47, 20, 'testingSec', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 43', '2025-02-21 16:57:52'),
(48, 21, 'testingAud', 'Approved a file with file ID: 38', '2025-02-21 16:58:07'),
(49, 1, 'admin', 'Edited a Criteria with id: 43, to Version ID: 1, Indicator ID: 1, Minimum Requirements ID: 1, Sub Mi', '2025-02-24 12:29:30'),
(50, 1, 'admin', 'Edited a User with ID: 20to Username: testingSec, Fullname: testing, Email: testing@testingbbb.com, ', '2025-02-24 16:07:50'),
(51, 1, 'admin', 'Deleted a User with ID: 20', '2025-02-24 16:08:17'),
(52, 1, 'admin', 'Created a New User with Username: sec, Fullname: sec, Email: sec@gmail.com, Mobile Number: +63937620', '2025-02-24 16:09:34'),
(53, 23, 'sec', 'Logged In', '2025-02-24 16:11:48'),
(54, 23, 'sec', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 36', '2025-02-24 16:13:04'),
(55, 1, 'admin', 'Edited a Role with ID: 21 to Name:sec', '2025-02-24 16:14:52'),
(56, 1, 'admin', 'Edited a User with ID: 23to Username: sec, Fullname: sec, Email: sec@gmail.com, and Mobile Num: 9376', '2025-02-24 16:15:59'),
(57, 23, 'sec', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 37', '2025-02-24 16:38:18'),
(58, 23, 'sec', 'Uploaded file: print.pdf for Barangay ID: 104201001, Criteria: 40', '2025-02-24 16:39:51'),
(59, 1, 'admin', 'Created a New Criteria with Version ID: 1, Indicator ID: 1, Minimum Requirements ID: 1, Sub Minimum ', '2025-02-25 10:26:43'),
(60, 1, 'admin', 'Deleted a Criteria with an ID: 44', '2025-02-25 10:37:16'),
(61, 1, 'admin', 'Edited a Criteria with id: 42, to Version ID: 1, Indicator ID: 1, Minimum Requirements ID: 1, Sub Mi', '2025-02-25 10:38:33'),
(62, 1, 'admin', 'Created a New Version with Short Definition: VERSION 2, Description: test, Active Year: yes, and is ', '2025-02-25 14:37:41'),
(63, 1, 'admin', 'Edited a Version with ID:1 to Short Definition: VERSION I, Description: CRITERIA VERSION FOR 2024-20', '2025-02-25 14:37:52'),
(64, 1, 'admin', 'Deleted a Version with ID: 0', '2025-02-25 14:53:52'),
(65, 1, 'admin', 'Edited a Version with ID:1 to Short Definition: VERSION I, Description: CRITERIA VERSION FOR 2024-20', '2025-02-25 14:53:58'),
(66, 1, 'admin', 'Edited a Version with ID:1 to Short Definition: VERSION I, Description: CRITERIA VERSION FOR 2024-20', '2025-02-25 15:02:07'),
(67, 1, 'admin', 'Edited a Version with ID:1 to Short Definition: VERSION I, Description: CRITERIA VERSION FOR 2024-20', '2025-02-25 15:16:12'),
(68, 1, 'admin', 'Edited Assessment Duration to Duration: adas and is_accepting_response to 1', '2025-02-25 15:31:08'),
(69, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029 and is_accepting_response to ', '2025-02-25 15:32:50'),
(70, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029 and is_accepting_response to 1', '2025-02-25 15:33:07'),
(71, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to 1', '2025-02-25 15:33:14'),
(72, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to ', '2025-02-25 15:33:21'),
(73, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to 1', '2025-02-25 15:33:35'),
(74, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to ', '2025-02-25 15:33:41'),
(75, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to 1', '2025-02-25 15:35:34'),
(76, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to ', '2025-02-25 15:35:41'),
(77, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to 1', '2025-02-25 15:37:26'),
(78, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to 0', '2025-02-25 15:37:30'),
(79, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to true', '2025-02-25 15:38:46'),
(80, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to false', '2025-02-25 15:38:57'),
(81, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to true', '2025-02-25 15:39:32'),
(82, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to false', '2025-02-25 15:39:40'),
(83, 1, 'admin', 'Edited a Version with ID:1 to Short Definition: VERSION I, Description: CRITERIA VERSION FOR 2024-20', '2025-02-25 15:46:28'),
(84, 1, 'admin', 'Edited a Version with ID:1 to Short Definition: VERSION I, Description: CRITERIA VERSION FOR 2024-20', '2025-02-25 15:49:52'),
(85, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to true', '2025-02-25 15:51:53'),
(86, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to false', '2025-02-25 15:52:36'),
(87, 1, 'admin', 'Edited Assessment Duration to Duration: March 2029a and is_accepting_response to true', '2025-02-25 16:26:06'),
(88, 1, 'admin', 'Added a comment to file ID: 37', '2025-02-25 17:26:48'),
(89, 1, 'admin', 'Approved a file with file ID: 40', '2025-02-25 17:26:59'),
(90, 1, 'admin', 'Added a comment to file ID: 40', '2025-02-25 17:27:34'),
(91, 1, 'admin', 'Added a comment to file ID: 39', '2025-02-25 17:27:45'),
(92, 1, 'admin', 'Added a comment to file ID: 40', '2025-02-25 17:46:29'),
(93, 1, 'admin', 'Added a comment to file ID: 38', '2025-02-25 17:48:23'),
(94, 1, 'admin', 'Added a comment to file ID: 38', '2025-02-25 17:48:31'),
(95, 1, 'admin', 'Added a comment to file ID: 38', '2025-02-25 17:48:37'),
(96, 1, 'admin', 'Added a comment to file ID: 38', '2025-02-25 17:48:46'),
(97, 1, 'admin', 'Added a comment to file ID: 37', '2025-02-26 14:28:34'),
(98, 1, 'admin', 'Added a comment to file ID: 38', '2025-02-26 14:29:24'),
(99, 1, 'admin', 'Added a comment to file ID: 40', '2025-02-27 15:30:54'),
(100, 1, 'admin', 'Reverted a file to pending with file ID: 37', '2025-02-27 16:57:12'),
(101, 1, 'admin', 'Deleted file with ID: 37', '2025-02-27 16:57:21'),
(102, 1, 'admin', 'Reverted a file to pending with file ID: 38', '2025-02-27 16:57:27'),
(103, 1, 'admin', 'Deleted file with ID: 38', '2025-02-27 16:57:33'),
(104, 1, 'admin', 'Uploaded file: 4B_wk01_DiamadaWillow.pdf for Barangay ID: 104201001, Criteria: 38', '2025-02-27 16:58:27'),
(105, 1, 'admin', 'Uploaded file: 4B_wk01_DiamadaWillow.pdf for Barangay ID: 104201006, Criteria: 43', '2025-02-27 16:58:57'),
(106, 1, 'admin', 'Uploaded file: 4B_wk01_DiamadaWillow.pdf for Barangay ID: 104201006, Criteria: 42', '2025-02-27 16:59:23'),
(107, 1, 'admin', 'Uploaded file: 4B_wk01_DiamadaWillow.pdf for Barangay ID: 104201001, Criteria: 41', '2025-02-27 16:59:46'),
(108, 1, 'admin', 'Created a new Indicator with Governance Code: 2, Area Description: DISASTER PREPAREDNESS, Indicator ', '2025-02-28 09:46:48'),
(109, 1, 'admin', 'Deleted an Indicator Description with Id: 36', '2025-02-28 09:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_assessment`
--

CREATE TABLE `barangay_assessment` (
  `keyctr` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL,
  `last_modified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_assessment`
--

INSERT INTO `barangay_assessment` (`keyctr`, `barangay_id`, `last_modified`) VALUES
(1, '104201001', '2025-02-28 02:45:30'),
(2, '104201002', '2025-02-28 02:45:30'),
(3, '104201003', '2025-02-28 02:45:30'),
(4, '104201004', '2025-02-28 02:45:30'),
(5, '104201005', '2025-02-28 02:45:30'),
(6, '104201006', '2025-02-28 02:45:30'),
(7, '104201007', '2025-02-28 02:45:30'),
(8, '104201008', '2025-02-28 02:45:30'),
(9, '104201009', '2025-02-28 02:45:30'),
(10, '104201010', '2025-02-28 02:45:30'),
(11, '104201011', '2025-02-28 02:45:30'),
(12, '104201012', '2025-02-28 02:45:30'),
(13, '104201013', '2025-02-28 02:45:30'),
(14, '104201014', '2025-02-28 02:45:30'),
(15, '104201015', '2025-02-28 02:45:30'),
(16, '104201016', '2025-02-28 02:45:30'),
(17, '104201017', '2025-02-28 02:45:30'),
(18, '104201018', '2025-02-28 02:45:30'),
(19, '104201019', '2025-02-28 02:45:30'),
(20, '104201020', '2025-02-28 02:45:30'),
(21, '104201021', '2025-02-28 02:45:30'),
(22, '104201022', '2025-02-28 02:45:30'),
(23, '104201023', '2025-02-28 02:45:30'),
(24, '104201024', '2025-02-28 02:45:30'),
(25, '104201025', '2025-02-28 02:45:30'),
(26, '104201026', '2025-02-28 02:45:30'),
(27, '104201027', '2025-02-28 02:45:30'),
(28, '104201028', '2025-02-28 02:45:30'),
(29, '104201029', '2025-02-28 02:45:30'),
(30, '104201030', '2025-02-28 02:45:30'),
(31, '104201031', '2025-02-28 02:45:30'),
(32, '104201032', '2025-02-28 02:45:30'),
(33, '104201033', '2025-02-28 02:45:30'),
(34, '104201034', '2025-02-28 02:45:30'),
(35, '104201035', '2025-02-28 02:45:30'),
(36, '104201036', '2025-02-28 02:45:30'),
(37, '104201037', '2025-02-28 02:45:30'),
(38, '104201038', '2025-02-28 02:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_assessment_files`
--

CREATE TABLE `barangay_assessment_files` (
  `file_id` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL,
  `criteria_keyctr` bigint(20) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `comments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`comments`)),
  `status` enum('approved','pending','declined') NOT NULL,
  `file_path` text NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_assessment_files`
--

INSERT INTO `barangay_assessment_files` (`file_id`, `barangay_id`, `criteria_keyctr`, `date_uploaded`, `comments`, `status`, `file_path`, `file_name`) VALUES
(42, '104201001', 38, '2025-02-27 16:58:27', '{}', 'pending', '../../files/67c029338663a_4B_wk01_DiamadaWillow.pdf', '4B_wk01_DiamadaWillow.pdf'),
(43, '104201006', 43, '2025-02-27 16:58:57', '{}', 'pending', '../../files/67c02951e709e_4B_wk01_DiamadaWillow.pdf', '4B_wk01_DiamadaWillow.pdf'),
(44, '104201006', 42, '2025-02-27 16:59:23', '{}', 'pending', '../../files/67c0296b2a4a2_4B_wk01_DiamadaWillow.pdf', '4B_wk01_DiamadaWillow.pdf'),
(45, '104201001', 41, '2025-02-27 16:59:46', '{}', 'pending', '../../files/67c029820523e_4B_wk01_DiamadaWillow.pdf', '4B_wk01_DiamadaWillow.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `keyctr` int(11) NOT NULL,
  `country_code` text DEFAULT NULL,
  `country_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`keyctr`, `country_code`, `country_name`) VALUES
(8, 'PH', 'PHILIPPINES');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_area`
--

CREATE TABLE `maintenance_area` (
  `keyctr` bigint(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area`
--

INSERT INTO `maintenance_area` (`keyctr`, `description`, `trail`) VALUES
(1, 'AREA I', 'Updated at 2024-11-22 05:51:12'),
(2, 'AREA II', ''),
(3, 'AREA III', ''),
(4, 'AREA IV', ''),
(5, 'AREA V', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_area_description`
--

CREATE TABLE `maintenance_area_description` (
  `keyctr` bigint(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area_description`
--

INSERT INTO `maintenance_area_description` (`keyctr`, `description`, `trail`) VALUES
(1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', ''),
(2, 'DISASTER PREPAREDNESS', ''),
(3, 'SAFETY, PEACE AND ORDER', ''),
(4, 'SOCIAL PROTECTION AND SENSITIVITY', ''),
(5, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', ''),
(6, 'ENVIRONMENTAL MANAGEMENT', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_area_indicators`
--

CREATE TABLE `maintenance_area_indicators` (
  `keyctr` bigint(20) NOT NULL,
  `governance_code` bigint(20) NOT NULL,
  `desc_keyctr` bigint(20) NOT NULL,
  `area_description` varchar(200) NOT NULL,
  `indicator_code` varchar(6) NOT NULL,
  `indicator_description` text NOT NULL,
  `relevance_def` text NOT NULL,
  `min_requirement` tinyint(1) NOT NULL DEFAULT 0,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area_indicators`
--

INSERT INTO `maintenance_area_indicators` (`keyctr`, `governance_code`, `desc_keyctr`, `area_description`, `indicator_code`, `indicator_description`, `relevance_def`, `min_requirement`, `trail`) VALUES
(1, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.1', 'COMPLIANCE WITH THE BARANGAY FULL DISCLOSURE POLICY (BFDP)', 'Pursuant to Section 352 of the Local\nGovernment Code of 1991 (R.A.\n7160), and DILG Memorandum\nCircular Nos. 2014-811 and\n2022-0272, barangays shall\ndemonstrate good financial\nhousekeeping, and to ensure that\nbarangays adhere to the highest\nideals and standards of transparency\nand accountability, all Punong\nBarangays are directed to post in an\narea inside the barangay hall that\ncan be easily viewed by the public\nand on their website (if available),\nthe seven (7) documents as\nprescribed by the Department of\nBudget and Management (DBM).', 1, ''),
(2, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.2', 'INNOVATIONS ON REVENUE GENERATION OR EXERCISE OF CORPORATE POWERS', 'Based on Section 152 of the Local Government Code (LGC) of 1991, Barangays may levy taxes, fees, and charges, as provided in the Code, which shall exclusively accrue to them.', 0, 'Updated at 2024-11-25 07:37:23'),
(3, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.3', 'APPROVAL OF THE BARANGAY BUDGET ON THE SPECIFIED TIMEFRAME', 'Budget authorization is the process of adopting and enacting the annual Barangay Budget into an Appropriation Ordinance pursuant to Section391(a)(3) of the LGC, which provides that “the Sangguniang Barangay shall enact annual and supplemental budgets in accordance with the provisions of this Code”.', 0, ''),
(4, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.4', 'ALLOCATION FOR STATUTORY PROGRAMS AND PROJECTS AS MANDATED BY LAWS AND/OR OTHER ISSUANCES', 'DBM-LBM No.854 defines allocations for statutory programs and projects as the budgeted resources designated for initiatives mandated by legislation or other official pronouncements. Moreover, it emphasizes that priority allocation for the National Tax Allotment (NTA) and other local resources must be directed towards fulfilling the obligations outlined in Section17(b) of the LGC. These obligations encompass providing essential services and facilities to the local community.', 0, ''),
(5, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.5', 'POSTING OF THE BARANGAY CITIZEN’SCHARTER (CitCha)', 'Pursuant to Section 6 of Republic Act (RA) No.94855 as amended by RA No. 110326, all government agencies, including departments, bureaus, offices and instrumentalities, government owned or controlled corporations (GOCCs), government financial institutions (GFIs), state universities and colleges (SUCs), and local government units (LGUs) shall set up their respective most current and updated service standards to be known as the Citizen’s Charter.', 0, ''),
(6, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.6', 'RELEASE OF THE SANGGUNIANG KABATAAN (SK) FUNDS OF THE BARANGAY', 'Section 20 (a) of the SK Reform Act of 2015 states that all the income of the barangay derived from whatever source shall accrue to its general fund and shall, at the option of the barangay concerned, be kept as a trust fund in the custody of the city or municipal treasurer or be deposited in a bank, preferably government-owned, situated in or nearest to its area of jurisdiction.\r\n\r\nFurther, it mandates that 10% of the general fund of the barangay shall be set aside for the SK. The Sangguniang Barangay shall appropriate the SK funds in lump-sum which shall be disbursed solely for youth development and empowerment purposes.\r\n\r\nSection 20 (b) of the same Act also states that SK have financial independence in its operation, and expenditure.\r\n\r\nItem 3.2.1 of the DBM-DILG-NYC JMC No.1, s.20197 dated January 23,2019 provides that the SK funds shall be automatically released by the barangay to the SK and shall not be subject to any lien or holdback that may be imposed by the barangay for whatever purpose.\r\n\r\nItem 3.2.2 of the same JMC states that the SK shall open a current account in the name of the SK in a bank, preferably government-owned, situated in or nearest to its area of jurisdiction, with the SK chairperson and the SK treasurer as the official signatories\r\n\r\nItem 3.2.3 of the same JMC mandates that the SK funds shall be deposited by the barangay in the current account of the SK not later than 5WD after crediting of the monthly NTA share of the barangay.\r\n\r\nThe barangay may opt to transfer/release the SK funds earlier than herein prescribed on an annual, semestral or quarterly basis, subject to the written agreement between the barangay and the SK. \r\n\r\nItem3.2.4 provides that in case of barangays without elected SK officials, the barangay shall transfer the corresponding ten percent (10%) SK Fund to the trust fund of the barangay, and the same shall be released by the barangay upon the election of the SK officials concerned.\r\n\r\nSection 20 of RA 10742 states that the Sangguniang Kabataan funds shall be governed by the following provisions: (a)All the income of the barangay derived from whatever source shall accrue to its general fund and shall, at the option of the barangay concerned, be kept as trust fund in the custody of the city or municipal treasurer or be deposited in a bank preferably government-owned, situated in or nearest to its area of jurisdiction. Such funds shall be disbursed in accordance with the provisions of this Act. Ten percent (10%) of the general fund of the barangay shall be set aside for the Sangguniang Kabataan. The Sangguniang Barangay shall appropriate the Sangguniang Kabataan funds in lump-sum which shall be disbursed solely for youth development and empowerment purposes \r\n\r\nNote: The Sangguniang Kabataan Frequently Asked Questions can be accessed through the link: https://bit.ly/SK_FAQ-SGLGB\r\n\r\nItem 3.3.1.2of the DBM-DILG-NYC JMC No. 1, s. 2019 dated January 23, 2019, states that the Comprehensive Barangay Youth Development Plan (CBYDP) shall serve as the basis for the preparation of the Annual Barangay Youth Investment Program (ABYIP). The ABYIP shall contain the specific programs, projects, and activities with corresponding project costs, including the necessary fund flows to approximate the reasonable timing in the release of funds. It is understood that the ABYIP shall reflect the total resource requirement for the budget year.\r\n\r\nItem 3.3.1.3 of the same JMC also states that the ABYIP shall be prepared and approved by the SK through a resolution before the start of the preparation of the SK annual budget.', 0, ''),
(7, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.7', 'CONDUCT OF BARANGAY ASSEMBLY', 'Section 397 (b) of R.A. No. 7160 mandates that the barangay Assembly shall meet at least twice a year to hear and discuss the semestral report of the barangay concerning its activities and finances as well as problems affecting the barangay.\r\n\r\nProclamation No.599 series of 2018 dated October 9, 2018, declares the Saturdays and Sundays of March and October as barangay assembly days.\r\n\r\nDILG MC No. 2023-032 mandates the Barangay Assembly Day shall be conducted, as much as practicable, face-to-face or blended approach (combination of face-to-face and online mode) by all barangays on any Saturdays or Sundays of March 2023.', 0, ''),
(8, 2, 2, 'DISASTER PREPAREDNESS', '2.1', 'FUNCTIONALITY OF THE BARANGAY DISASTER RISK REDUCTION AND MANAGEMENT COMMITTEE (BDRRMC)', 'Section 12 of RA 101218 states that: there shall be established an LDRRMO in every province, city and municipality, and a Barangay Disaster Risk Reduction and Management Committee (BDRRMC) in every barangay which shall be responsible for setting the direction, development, implementation and coordination of disaster risk management programs within their territorial jurisdiction.\r\n\r\nNDRRMCMCNo.07, s.20229 mandates of organizing not only the National DRRM Council but Regional and Local DRRM Councils as well as ensuring membership of Civil Society Organizations (CSOs and the private sector therein.\r\n\r\nSection 12 of RA 10121 provides that:(c) The provincial, city and municipal DRRMOs or BDRRMCs shall perform the following functions with impartiality given the emerging challenges brought by disasters of our times:\r\n\r\n(7) Prepare and submit to the local sanggunian through the LDRRMC and the LDC the annual LDRRMO Plan and budget, the proposed programming of the LDRRMF, other dedicated disaster risk reduction and management resources, and other regular funding source/s and budgetary support of the LDRRMO/BDRRMC; NDRRMC MC No. 03, s. 202210 mandates the compliance of barangays in adopting and utilizing the Enhanced Quality Assessment Tool (QAS) for BDRRMP/C, and there view of the BDRRM Plan by the C/M review team composed of the following:\r\n ● Team Leader-C/MDRRMO\r\n ● Assistant Team Leader-C/MPDO\r\n ● Team Member-C/MSWDO\r\n ● Secretariat-C/MDRRMO Staff\r\n ● Oversight-C/MLGOO\r\n\r\nSection 21 of RA 10121 provides that not less than five percent (5%) of the estimated revenue from regular sources shall be set aside as the LDRRMF to support disaster risk management activities such as, but not limited to, pre-disaster preparedness programs including training, purchasing life-saving rescue equipment, supplies and medicines, for post-disaster activities, and for the payment of premiums on calamity insurance.\r\n\r\nSection 21 of RA 10121 provides that not less than five percent (5%) of the estimated revenue from regular sources shall be set aside as the LDRRMF to support disaster risk management activities such as, but not limited to, pre-disaster preparedness programs including training, purchasing life-saving rescue equipment, supplies and medicines, for post-disaster activities, and for the payment of premiums on calamity insurance.\r\n\r\nSection 4.0 of the NDRRMC, DBM and DILG JMC No. 2013-111 dated March 25, 2013 provides that the LDRRMF shall cover the thirty percent (30%) lump-sum allocation for Quick Response Fund (QRF) and the seventy percent (70%) allocation for disaster prevention and mitigation, preparedness, response, rehabilitation and recovery.', 0, ''),
(9, 2, 2, 'DISASTER PREPAREDNESS', '2.2', 'EXTENT OF RISK ASSESSMENT AND EARLY WARNING SYSTEM (EWS)', 'Based on Rule 6, Section 4 of the IRR of RA 10121, the BDRRMC, in coordination with concerned national agencies and instrumentalities shall perform the following functions with impartiality, given the emerging challenges brought by disasters of our times:\r\n (3) facilitate and support risk \r\n assessments and contingency planning\r\n activities;\r\n (4) maintain a local risk map; and\r\n (5) operate a multi-hazard early\r\n warning system', 0, ''),
(10, 2, 2, 'DISASTER PREPAREDNESS', '2.3', 'EXTENT OF PREPAREDNESS FOR EFFECTIVE RESPONSE AND RECOVERY', 'Section 12 of RA 10121 provides that:(c) The provincial, city and municipal DRRMOs of BDRRMCs shall perform the following functions with. impartiality given the emerging challenges brought by disasters of our times:\r\n\r\n(12) Maintain a database of human resource, equipment, directories, and location of critical infrastructures and their capacities such as hospitals and evacuation centers;\r\n\r\nPer Section 12(b) of RA 10121, the LDRRMOs and the BDRRMCs shall organize, train and directly supervise the local emergency response teams and the accredited community disaster volunteers (ACDVs).\r\n\r\nThe extent of preparedness for effective response and early recovery shall be measured includes the availability of functional disaster equipage.\r\n\r\na) Communication equipment (i.e., 2way radio mobile phone, satellite phones)\r\nb) Rescue vehicle/Alternative vehicle (i.e., ambulance; amphibious vehicle, tricycle, boats, vans, trucks, fire trucks, dump trucks and any appropriate vehicle depending on location at the minimum)\r\nc) Generator set/alternative sources of energy (i.e., portable generator, solar-powered generator)\r\nd) First aid kit\r\ne) Flashlight\r\nf) Personal Protective Equipment (i.e., face mask, gloves, and life vest)\r\n\r\nReference: NDRRMC’s National Disaster Preparedness Plan: Minimum Standards on Disaster Preparedness', 0, ''),
(11, 3, 3, 'SAFETY, PEACE AND ORDER', '3.1', 'FUNCTIONALITY OF THE BARANGAY ANTI-DRUG ABUSE COUNCIL (BADAC)', 'The DILG and DDB Joint Memorandum Circular 2018-0112, provides the guidelines on the functionality and effectiveness and effectiveness of local anti-drug abuse councils. Item V (B) specifically states the creation of the BADAC and its composition.\r\n\r\nDILG DDB JMC No. 2018-01, Item B (3)(h) states that the BADAC shall assist PWUD who surrendered to Barangay Rehabilitation and Referral Desk and refer to CADAC/MADAC and other institutions for appropriate action.\r\n\r\nSection 6 (A), no. 3 of DDB Board Regulation No. 3, s. 201713 states that the BADAC, in coordination with the local PNP unit, shall also take the lead in organizing house clusters with designated cluster leaders\r\n\r\nSection 3, no. 2 of DDB Board Regulation No. 3, s.2017 states that the BADAC shall organize BADAC Auxiliary Teams (BATs) and orient them of their roles and functions.\r\n\r\nNo. 4 (4.2) of DILG Memorandum Circular No. 2017-14214 states that all BADACs are mandated to formulate their BADAC Plan of Action or BADPA. This shall be adopted by the BADAC members and shall form part of the three-year and term-based Barangay Peace and Order and Public Safety (BPOPS) Plan.\r\n\r\nSection 5 of DILG MC 2022-14115 also states that “The BADAC shall formulate a three-year term based plan for the anti-illegal drug activities, and that the “BADAC shall come up with a BADPA summary which includes the formulated strategies, identified PPPSAs, and the calculated funding requirements.”\r\n\r\nAll Sangguniang Barangays are mandated to allocate and utilize funds from their annual budget for the operationalization of their BADPA and other campaigns against illegal drugs and drug abuse.\r\n\r\nPer Article VII, Sec. 51 of Republic Act No. 916516, the substantiality of such fund allocated by the Sangguniang Barangay shall be determined by the concerned C/MLGOO or CD, in consultation with the City/Municipal Chief of Police and local PDEA representative, based on the “perceived needs” of their barangay.\r\n\r\nSection 3, nos. 1 & 4 of DDB Board Regulation No. 3, s. 2017 states that the BADACs, in coordination and collaboration with local institutions/organizations, are mandated to plan, strategize, implement and evaluate programs and projects on drug abuse prevention and reduction\r\n\r\nItems 3 (f) and 5 (a) (1) (c) of DILG DDB JMC No. 2018-01 states to submit all consolidated information report to CADAC/MADAC and Local Police Unit Consolidated Information Report shall refer to all information gathered from all sources such as cluster leaders, barangay auxiliary team, and concerned citizens, on any illegal drug activities occurring within the barangay. Thus, the CIR shall contain detailed information of drug pushers/users, protectors, financiers, marijuana cultivation sites, clandestine laboratory operations and other drug-related data.\r\n\r\nItems 3 (g) (h) and (i) of DILG DDB MC No. 2018-01 states that all Barangay Rehabilitation Referral Desks shall have Barangay Duty Officers, preferably Barangay Health Workers and mandates barangay, through BADACs shall ensure the proper and effective referral and monitoring of status of surrenderers.\r\n\r\nSection 3, no. 6 of DDB Board Regulation No. 3, s. 2017 states that to closely monitor the implementation of their BADPA and other campaigns, all BADACs shall conduct regular meetings at least once a month.', 0, ''),
(12, 3, 3, 'SAFETY, PEACE AND ORDER', '3.2', 'FUNCTIONALITY OF THE BARANGAY PEACE AND ORDER COMMITTEE (BPOC)', 'Pursuant toSection16of the LGC of 1991, the local government shall, within their territorial jurisdiction, promote health and safety, improve public morals, maintain peace and order, and preserve the comfort and convenience of their inhabitants.\r\n\r\nExecutive Order No. 366, s. 1996 states that every barangay shall organize a Barangay Peace and Order Committee (BPOC) to serve as the implementing arm of the City/Municipal Peace and Order Council (C/MPOC) at the barangay level.\r\n\r\nItem 3.1 of DILG MC No. 2017-14217 states that every barangay shall formulate a 3-year, term-based BPOPS Plan within 60 days after the assumption to office of the newly-elected Barangay Officials on the following focus area, namely:\r\n\r\n Peace and Order-shall cover activities \r\n that directly address criminality, \r\n including proliferation of illegal \r\n drugs, armed conflict, and human rights \r\n violations and bring about the \r\n achievement of justice, peace and \r\n order; and\r\n Public Safety-shall cover activities \r\n that protect the community from dangers  \r\n threatening the general welfare and \r\n safety, such as accidents, disaster and \r\n crime.\r\n\r\nItem 5.1 of DILG MC No. 2017-142 states that the BPOC, through the Punong Barangay, shall prepare and submit the Semestral Accomplishment Report on the status of implementation of the target activities or deliverables based on the approved BPOPS Plan to the C/M POC, copy furnish the concerned DILG City Director or C/MLGOO, on the following schedule:\r\n\r\n    1st semester-on or before July 15\r\n    2nd semester-on or before January 15 \r\n    of the ensuing year\r\n\r\nPer DILG MC No. 2017-142 dated October 24, 2017, re: Guidelines in the Formulation of a Simplified BPOPS Plan and DILG MC 2015-130 re: Functions of BPOC, the BPOC is mandated to monitor the status of utilization of funds based on the target activities on the approved BPOPS Plan.', 0, ''),
(13, 3, 3, 'SAFETY, PEACE AND ORDER', '3.3', 'FUNCTIONALITY OF THE LUPONG TAGAPAMAYAPA (LT)', 'The Lupong Tagapamayapa Incentives Awards is an annual search which recognizes outstanding Lupong Tagapamayapa that adequately demonstrate the ability to judiciously and expeditiously resolve cases referred to them and demonstrate exemplary performance and commendable contribution in the promotion and implementation of Katarungang Pambarangay.\r\n\r\nSection 406 (b) of the Local Government Code states that the DILG shall provide for a system of granting economic or other incentives to the lupon or pangkat members who adequately demonstrate the ability to judiciously and expeditiously resolve cases referred to them.\r\n\r\nItem 4.1 of DILG MC 2023-22 defines Lupong Tagapamayapa as the body organized in every barangay composed of the Punong Barangay Chairperson and not less than ten (10) nor more than twenty (20) members from which the members of every Pangkat shall be chosen.\r\n\r\nNote: All barangays, whether or not an LTIA passer, shall be assessed on the Functionality of Lupong Tagapamayapa.\r\n\r\nDILG MC No. 2023-02218, Item 4.8. Systematic Maintenance of Records keeping of the records both in manual and digital forms, of all complaints brought and filed within the barangay.\r\n\r\nDILG MC No. 2023-022, Item 4.12. Meeting exclusively on KP Matters regular meeting held by the Lupon once a month on date set by the Lupon Chairperson, to provide forum for the exchange of ideas on matters relevant to the amicable settlements of dispute, and to enable the various conciliation panel members to share with one another their observations and experiences in effecting speedy resolution disputes, as well as to discuss and devise solutions thereto by harnessing the resources provided by the Sangguniang Barangay and other local resources of the barangay.\r\n\r\nDILG MC No. 2023-022, Item 4.19 KP Training or seminar participated within the assessment period organized skills trainings, seminars, exchange visits and other similar activities conducted by the barangay and attended by the Lupons or attended and participated by the Lupon to improve their knowledge and skills on KP.', 0, ''),
(14, 3, 3, 'SAFETY, PEACE AND ORDER', '3.4', 'ORGANIZATION AND STRENGTHENING CAPACITIES OF BARANGAYTANOD', 'Based on DILG MC No. 2003-4219, the barangay shall organize barangay tanod to carry out the purposes of the barangay government in accordance with the needs of public service. Barangay Tanod is a community brigade composed of civilian volunteers duly appointed by the Punong Barangay upon recommendation of the BPOC. A Chief Tanod/Executive Officer shall also be designated to head the group. The Tanod shall be organized into teams composed of a team leader and 2-4 members. While the LGC provides a maximum of 20 tanods in each barangay, it may create more as may be necessary in the exigency of public service. Said barangay tanod shall undergo orientation and skills training to capacitate them to better perform their roles and responsibilities as agents of peace and development.', 0, ''),
(15, 3, 3, 'SAFETY, PEACE AND ORDER', '3.5', 'BARANGAY INITIATIVES DURING HEALTH EMERGENCIES', 'DILG MC No. 2020-02320 enjoins all local government units (LGUs) to effectively intensify information education campaigns against Coronavirus and implement programs, projects and services that will promote the health and well-being of every Filipino.\r\n\r\nItem 5.1.2.2 states to organize Barangay Health Emergency Response Teams (BHERTs) at the minimum ratio of one team for every 5,000 population, and mobilize them to help implement prevention and mitigation, preparedness and response measures for the nCoV ARD. Each BHERT shall be composed of an Executive Officer, a Barangay Tanod and two (2) Barangay Health Workers, one (1) of whom is preferably a nurse or midwife, and where all are appointed by the Punong Barangay.\r\n\r\nDILG MC No. 2022-04621 states that the Punong Barangays are directed to ensure that a poster and/or tarpaulin is posted in conspicuous public places within the barangay jurisdiction containing the following:\r\n 1. Active telephone number of the \r\n barangay and other contact/information \r\n details such as, but not limited to: \r\n email address and/or social media \r\n account; \r\n 2. Name of the PB and his/her active \r\n cellphone or landline number; and\r\n 3. Name, designation and active \r\n cellphone or landline number of\r\n the members of BHERT.', 0, ''),
(16, 3, 3, 'SAFETY, PEACE AND ORDER', '3.6', 'CONDUCT OF MONTHLY BARANGAY ROAD CLEARING OPERATIONS (BaRCo)', 'DILG MC No. 2022-08522, Item 4.1.3.1 states that all barangay shall conduct regular road clearing operations in all barangay roads, and implement policies for the efficient use of the same, such as the enforcement of no-parking, one-side parking, or other similar strategies, in accordance with the ordinance duly enacted by the Sangguniang Bayan/Panlungsod \r\n\r\nDILG MC 2023-01723 mandates the submission of their respective Monthly BaRCO Reports to the concerned DILG C/M Field Offices.', 0, ''),
(17, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.1', 'FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', 'Pursuant to Republic Act (RA) 9710, otherwise known as the Magna Carta of Women, is a comprehensive women’s human rights law that seeks to eliminate discrimination against women by recognizing, protecting, fulfilling and promoting the rights of Filipino women, especially those in the marginalized sectors. Section12D, Rule IV of the Rules and Regulations Implementing the Magna Carta of Women provides for the establishment of a VAW desk in every barangay to ensure that violence against women cases are fully addressed in a gender-responsive manner.\n\nDILG-DSWD-DepEd-DOH-PCW JMC 2010-224, Item 2.2., Designation of VAW Desk person–the Punong Barangay shall designate a VAW Desk person who is trained in gender-sensitive handling of cases; preferably a woman Sangguniang Member or woman barangay tanod. In cases where there are no trained personnel, ensure that the person assigned shall undergo basic gender sensitivity training and orientation on anti-VAW laws.\n\nItem 5.1.3. of DILG MC No. 2017-114 states that the barangay shall have the approved Barangay GAD Plan and Budget which contains gender-responsive programs and activities to address gender-based violence.\n\nItem 5.1.4. of DILG MC No. 2017-114 states that the barangay shall prepare and submit quarterly accomplishment reports to the C/MSWDO and C/MLGOO within 10 days of the ensuing month.\n\nItem 5.1.4. of DILG MC No. 2017-114 also states that the report must be based on the database/record of VAW cases reported in the barangay and contain relevant information such as total number of VAW cases received, assistance provided to victim-survivors, total number of cases documented for violating RA 9262 and other VAW-related laws, etc.\n\nItem 5.1.4. of DILG MC No. 2017-114 states that the barangay shall prepare and submit monthly accomplishment reports to the City/Municipal Social Welfare and Development Officer (C/MSWDO) and City/Municipal Government Operations Officer (C/MLGOO) within 10 working days of the ensuing month.\n\nPer PCW-DILG-DBM-NEDA JMC No. 2016-01 (Amendments to PCW-DILG-DBM-NEDA JMC No. 2013-01: Guidelines on the Localization of the Magna Carta of Women), the barangay shall prepare and submit their GAD Accomplishment Report of the preceding year and GAD Plan and Budget (GPB)proposal for the succeeding year to the City/Municipal Planning Development Office (C/MPDO) to ensure the alignment of the barangay GAD programs, projects and activities (PPAs) with the priorities of the cities/municipalities exercising jurisdiction over it.\n\nThe GPB shall be submitted not later than March 31 to the DILG City/Municipal Local Government Operations Officer (C/MLGOO) for review and endorsement.\n\nItem 5.5.1.8. of DILG MC No. 2023-104 states that the Barangay VAW Desk Officer shall maintain and regularly update a referral system and linkages to expedite the provision of services and resolution of cases.', 0, ''),
(18, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.2', 'ACCESS TO HEALTH AND SOCIAL WELFARE SERVICES IN THE BARANGAY', 'Part of the discharged function and responsibility of the national agencies and offices that have been devolved pursuant to the Local Government Code (LGC) of 1991 is the maintenance of health and social welfare services including services and facilities related to general hygiene and sanitation.\r\n\r\nSection 8 of PD 156925 states that the implementation of the project shall be the total responsibility of a Provincial/City Nutrition Committee headed by the Governor/City Mayor as Chairperson.\r\n\r\nDILG JMC No.2023-001 states that the Punong Barangay and Sangguniang Barangay are encouraged to appoint other barangay health officials such as Barangay Health Officer (BHO) or Barangay Health Assistant (BHAsst) to strengthen the barangay health system.', 0, ''),
(19, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.3', 'FUNCTIONALITY OF THE BARANGAY DEVELOPMENT COUNCIL (BDC)', 'As mandated under the LGC, Section 106, “each local government unit shall have a comprehensive, multi-sectoral development plan to be initiated by its development council and approved by its Sangguniang Barangay”. This plays a pivotal role in the overall development and progress in setting the direction of economy, social development and coordinating development efforts within the barangays.\r\n\r\nSection 112 of the Local Government Code of 1991, Sectoral or functional committees maybe created by the BDC to assist them in the performance of their functions.\r\n\r\nArticle 182 (g) (3) (iv) of the IRR of the LGC of 1991, The sectoral or functional committees shall conduct public hearings on vital issues affecting the sector or function.\r\n\r\nSection 106 of the Local Government Code of 1991 states that the BDC shall formulate a comprehensive multi-sectoral development plan and be approved by its sanggunian.\r\n\r\nSection 109 of the Local Government Code states that the BDC is mandated to monitor and evaluate the local programs and projects. Hence, BDC shall ensure that planned projects are implemented and executed efficiently and effectively, including the allocated funds for purpose.\r\n\r\nItem (3) (c) under Annex 2-C of the BDC Functionality Assessment Technical Notes states that an Accomplishment Report shall be prepared annually to provide the status report and overview of what was achieved during the given period. The Annual report shall be submitted to the Sangguniang Barangay and forwarded to the DILG.', 0, ''),
(20, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.4', 'IMPLEMENTATION OF THE KASAMBAHAY LAW', 'DILG MC No. 2013-6126 and Item 3.3 of DILG MC No. 2022-10027, state that the Punong barangay shall designate a Kasambahay Desk Officer, through an Executive Order, who shall manage the Kasambahay Desk in the barangay.\r\n\r\nDILG MC No.2013-61 and Item 3.4.5 of DILG MC No. 2022-100, state that the Punong Barangay shall ensure that the Kasambahay Desk Officer perform his/her function, such as, but not limited to preparing and updating, as necessary, the Kasambahay Masterlist (KRForm2).\r\n\r\nSection 7 of the DILG MC No. 2013-61 states that the Punong Barangay through the Kasambahay Desk Officer shall submit to the local Public Employment Service Office (PESO) a Quarterly Kasambahay Report.\r\n\r\nNote: Barangays without kasambahays, are also required to submit the KR Form 2 indicating that there are no registered kasambahays.', 0, ''),
(21, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.5', 'FUNCTIONALITY OF THE BARANGAY COUNCIL FOR THE PROTECTION OF CHILDREN (BCPC)', 'The Department issued DILG MC No. 2021-03928 dated April 7, 2021, which provides for the guidelines for the establishment and operation of LCPC, as well as for the monitoring and evaluation of the functionality of the said council.\r\n\r\nThe LCPC shall be organized in all local government units through an Ordinance by the local Sanggunian or by an Executive Order (EO) of the local chief executive. Thus, in every barangay, there shall be a Barangay Council for the Protection of Children (BCPC)\r\n\r\nPursuant to DILG MC No. 2021-039, Item 5.3.2.5. the C/MCPC shall conduct capability-building activities for all stakeholders on children including the barangay level.\r\n\r\nDILG MC No. 2021-039, Item 5.3.1.2. states that the BCPC shall prepare an Annual Work and Financial Plan (AWFP-LCPC Form 001-A) consistent with its functions as provided herein and, in the Barangay, EO creating it.\r\n\r\nThe BCPC’s AWFP shall be submitted to the barangay before the schedule of budget preparations to ensure incorporation and funding in the Barangay Annual Investment Program (AIP). The AWFP shall be accompanied by a budget proposal or draft Barangay Council Ordinance providing funds for the BCPC.\r\n\r\nDILG MC No. 2021-039, Item 5.3.1.1. states that the BCPC shall establish and maintain an updated and disaggregated database on children within the barangay.\r\n\r\nBarangays are mandated to have a referral system in place in the enforcement of the following protocols:\r\n 1. Protocol for Case Management of \r\n Child Victims of Abuse, Neglect and \r\n Exploitation (Resolution No.1,2.\r\n 2013);\r\n 2. Protocol to Reach Out to Street\r\n Children;\r\n 3. Handling Cases of Children at Risk\r\n and Children in Conflict with the\r\n Law;\r\n 4. Managing Cases of Children in\r\n Conflict with the Law and Children at\r\n Risk; and\r\n 5. Localization of the Comprehensive\r\n Emergency Program for Children\r\n (CEPC) of RA 10821, Children’s \r\n Emergency Relief and Protection Act\r\n\r\nAt the barangay level, it is the Barangay Council for the Protection of Children (BCPC) that shall lead in the identification, implementation and monitoring of programs, projects, and activities for the protection of children.\r\n\r\nItem 5.6.4.1.5. of DILG 2021-039 states that the BCPC shall prepare and submit the BCPC Annual Report, reflecting the accomplishments on children.', 0, ''),
(22, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.6', 'MECHANISM FOR GENDER AND DEVELOPMENT (GAD)', 'Section 36 of RA 9710 provides for the creation and/or strengthening of the GAD Focal Points (GFP).\r\n\r\nAll departments, including their attached agencies, offices, bureaus, states universities and colleges, government-owned and controlled corporations, local government units, and other government instrumentalities shall establish or strengthen their GAD Focal Point System or similar GAD mechanism to catalyze and accelerate gender mainstreaming within the agency or local government unit.', 0, ''),
(23, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.7', 'MAINTENANCE OF UPDATED RECORD OF BARANGAY INHABITANTS (RBIs)', 'Section 394 (d) (6) of the Local Government Code provides that the barangay secretary is mandated to keep an updated record of all inhabitants of the barangay containing the following items of information: name, address, place and date of birth, sex, civil status, citizenship, occupation, and such other items of information as maybe prescribed by law or ordinance\r\n\r\nBased on DILG MC No. 2008-14430, the regular updating of the RBI by the barangay secretary is every six (6) months.\r\n\r\n[DILG MC No.2008-144 remains the latest policy]', 0, ''),
(24, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.8', 'FUNCTIONALITY OF THE BARANGAY NUTRITION COMMITTEE (BNC)', 'DILG MC No. 2018-4231, item 1.4 states that barangays shall organize, reorganize and strengthen functional local nutrition committees at the barangay level.\r\n\r\nBased on the Trainer’s Manual on Nutrition Program Management for LGUs published by the National Nutrition Council in 2017 (Third Printing), the BNC shall be composed of the following members:\r\n 1. Barangay Captain (as chair)\r\n 2. President of the Rural \r\n Improvement Club (RIC)\r\n 3. President, Parent Teacher Child\r\n Association (PTCA)\r\n 4. Head/President, local organization\r\n 5. Sangguniang Members on Health\r\n 6. SK Chairperson\r\n 7. Barangay Nutrition Scholar (BNS)\r\n 8. Day Care Worker\r\n 9. Barangay Nutrition Action \r\n Association (BNAO)\r\n 10. School Principal\r\n 11. Agriculture Technicians\r\n 12. Rural Health Midwife (RHM)\r\n 13. Other as may be identified\r\n\r\nBased on the IRR of RA 1114832 under Rule 13 Sec. 3 (c) (9) (ii), barangay shall be responsible for ensuring the functionality and effectiveness of the Barangay Nutrition Council (BNC) through the formulation of Barangay Nutrition Action Plan (BNAP).\r\n\r\nDILG MC No. 2023-00133 item 6.2.2.3 mandates the BNC to formulate, revise/update the barangay nutrition action plan.\r\n\r\nPer Guidelines on Local Planning 2022 Edition, In the case of the Bangsamoro Autonomous Region for Muslim Mindanao (BARMM), these guidelines also apply. However, BARMM may apply modifications and adjustments as appropriate.\r\n\r\nMalnutrition refers to the deficiencies, excesses, or imbalances in an individual\'s energy and/or nutrient intake. This includes stunting (low height for age), wasting (low weight for height), underweight (low weight for age), micronutrient deficiencies or insufficiency and overweight (obesity).\r\n\r\nOperation Timbang (OPT) Plus is the annual weighing and height measurement of all preschoolers 0-59 months old or below five years old in a community to identify and locate the malnourished children. Data generated through OPT Plus are used for local nutrition action planning, particularly in quantifying the number of malnourished and identifying who will be given priority interventions in the community. Moreover, results of OPT Plus provide information on the nutritional status of the preschoolers and the community in general, thus, providing information on the effectiveness of the local nutrition program.\r\n\r\nItem 2.2.9 of Local Budget Memorandum No.85 states that all LGUs are enjoined to prioritize in the allocation of local funds the PPAs included in their respective local nutrition action plans. Thus, the presence of an Accomplishment Report is imperative to ensure that the targets in the BNAP are properly accomplished and monitored.\r\n\r\nSection V, Item 1.1 of DILG MC 2018-42 mandates the formulation, revision, or updating of the local nutrition action plan to incorporate programs, projects, and activities that target families of nutritionally vulnerable individuals.\r\n\r\nItem 1.10 of the same MC outlines the submission of Barangay PPAN Report to City/Municipality Mayor thru C/MLGOO every 15th of January and July.', 0, ''),
(25, 4, 4, 'SOCIAL PROTECTION AND SENSITIVITY', '4.9', 'HALINA’T MAGTANIMNG PRUTAS AT GULAY (HAPAG) SA BARANGAY PROJECT\r\n\r\n(For Profiling Purposes Only)', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources.\r\n\r\nFurther, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country.\r\n\r\nThe Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023.', 0, ''),
(26, 5, 5, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '5.1', 'POWER TO LEVY OTHER TAXES, FEES OR CHARGES', 'Each local government unit shall exercise its power to create its own sources of revenue and to levy taxes, fees, and charges subject to the provisions of the Code, consistent with the basic policy of local autonomy. Such taxes, fees, and charges shall accrue exclusively to the local government units (LGUs) as mandated under Section 129 of the Local Government\r\nCode of 1991.', 0, ''),
(27, 5, 5, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '5.2', 'COMPLIANCE TO SECTION 11 OF RA 11032 OR THE EASE OF DOING BUSINESS LAW', 'DILG-DPWH-DICT-DTI JMC 2018-0134 defines Building Permit as a document issued by the Building Official to an owner/applicant to proceed with the construction, installation, addition, alteration, renovation, conversion. repair, moving demolition or other work activity of a specific project/building/structure or portions thereof after the accompanying principal plans, specifications and other pertinent documents with the duly notarized application are found satisfactory and substantially conforming with the National Building Code of the Philippines and its IRR.\r\n\r\nIt also defines Locational Clearance as clearance issued by the Zoning Administrator/Zoning Officer to a project that is allowed under the provisions of an ordinance of a particular City/Municipality. It is a requirement for the issuance of Building Permit.\r\n\r\nBased on item 6.3.2.1. of DILG MC No. 2019-17735 dated October 17, 2019, the Sangguniang Barangay shall enact ordinance relative to Barangay Clearance fees on business permit and locational clearance for building permit.\r\n\r\nBased on item 6.3.2.2. of DILG MC No. 2019-177 dated October 17, 2019, the Sangguniang Barangay shall pass a resolution authorizing the City/Municipal Treasurer to collect fees for Barangay Clearance for Business permit and locational clearance purposes.', 0, ''),
(28, 5, 5, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '5.3', 'ISSUANCE OF BARANGAY CERTIFICATION NOT COVERED BY DILG MC NO. 2019-177 SUCH AS: RESIDENCY, INDIGENCY, ETC, WITHIN SEVEN (7) WORKING DAYS', 'Based on Section 152 (c) of the Local Government Code of 1991 the application for barangay certification shall be acted upon within seven (7) working days from the filing thereof. In the event that the certification is not issued within the said period, the city or municipality may issue the said license or permit.', 0, ''),
(29, 6, 6, 'ENVIRONMENTAL MANAGEMENT', '6.1', 'FUNCTIONALITY OF THE BARANGAY ECOLOGICAL SOLID WASTE MANAGEMENT COMMITTEE (BESWMC)', 'For efficient, effective and economical governance, the purpose of which is the general welfare of the barangay and its inhabitants pursuant to Section 16 of the Local Government Code of 1991, the Punong Barangay shall enforce laws and regulations relating to pollution control and protection of the environment.\r\n\r\nRule VI, Section 6 and 7 of IRR of Republic Act 900336 provides for the creation of the Barangay Ecological Solid Waste Management Committee and its functions and responsibilities.\r\n\r\nRule VI, Section 6 (a) of IRR of R.A. 9003 provides for the formulation of the solid waste management program consistent with the city/municipality plan\r\n\r\nSec 5, Rule XV of the IRR of R.A. 9003 provides that Barangay councils may issue council resolutions to establish ordinances for the creation of a Local Solid Waste Management Fund (also known as the Local Fund), pursuant to the relevant provisions of RA 7160.\r\n\r\nSection 5.3.4 of DILG MC No. 2018-11237 dated July 12, 2018 with the subject: Organization or Reorganization of the Barangay Ecological Solid Waste Management Committee (BESWMC) provides that the BESWMC shall allocate barangay funds for the ecological solid waste management program, approved by the sangguniang barangay\r\n\r\nItem No.5.3.6. of the same MC states that the BESWMC shall conduct barangay-initiated training for residents on segregation, composting, recycling, livelihood, and other environmental-related activities to promote environmental protection, preservation and awareness.\r\n\r\nItem 5.3.9 of DILG MC No. 2018-112 states that the BESWMC shall prepare and submit a monthly accomplishment report on the implementation status of its PPAs and deliverables based on the approved BESWMC Program. The said report shall be submitted to C/MENRO or C/MSWM Board not later than the 5th day of every month, copy furnished to the concerned City Director or the C/MLGOO for monitoring purposes.', 0, ''),
(30, 6, 6, 'ENVIRONMENTAL MANAGEMENT', '6.2', 'EXISTENCE OF A SOLID WASTE MANAGEMENT FACILITY PURSUANT TO R.A. 9003', 'Per section 5.3.3 of DILG MC No. 2018-112, a Materials Recovery Facility (MRF) in every barangay or cluster of barangays must be established whether in a barangay-owned, leased land, or any suitable open space to be determined by the barangay through its Sanggunian.\r\n\r\nSection 33 of RA 9003 provides that, “Materials recovery facility shall be designed to receive, sort, process, and store compostable and recyclable material efficiently and in an environmentally sound manner. That facility shall address the following considerations:(a) The building and/or land layout and equipment must be designed to accommodate efficient and safe materials processing, movement, and storage; and (b) The building must be designed to allow efficient and safe external access and to accommodate internal flow.”\r\n\r\nDILG MC No. 2018-20738 states that Materials Recovery System (MRS) can be accepted in locations where there is limited space to establish an MRS. For purposes of the validation, a Memorandum of Agreement (MOA) with the existing junk shop and/or the presence of other materials recovery scheme is the other basis of its functionality.', 0, ''),
(31, 6, 6, 'ENVIRONMENTAL MANAGEMENT', '6.3', 'PROVISION OF SUPPORT MECHANISMS FOR SEGREGATED COLLECTION', 'Section 10 of R.A. No. 9003 stipulates the segregation and collection of solid waste shall be conducted at the barangay level specifically for biodegradable, compostable, and reusable wastes.\r\n \r\n \r\n', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_area_mininumreqs`
--

CREATE TABLE `maintenance_area_mininumreqs` (
  `keyctr` bigint(20) NOT NULL,
  `indicator_keyctr` bigint(20) NOT NULL,
  `reqs_code` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `sub_mininumreqs` tinyint(1) NOT NULL DEFAULT 0,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area_mininumreqs`
--

INSERT INTO `maintenance_area_mininumreqs` (`keyctr`, `indicator_keyctr`, `reqs_code`, `description`, `sub_mininumreqs`, `trail`) VALUES
(1, 1, '1.1.1', 'Posted the following CY 2023 financial\ndocuments in the BFDP board:\na) Barangay Financial Report\nb) Barangay Budget\nc) Summary of Income and Expenditures\nd) 20% Component of the NTA Utilization\ne) Annual Procurement Plan or Procurement List\nf) List of Notices of Award (1st - 3rd Quarter of CY 2023)\ng) Itemized Monthly Collections and Disbursements\n(January to September 2023)', 0, ''),
(2, 1, '1.1.2', 'Accomplished and signed BFR with received stamp from the Office of the C/M Accountant', 0, ''),
(3, 2, '1.2.1', 'Increase in local resources in CY 2023', 0, ''),
(4, 3, '1.3.1', 'Presence of a Barangay Appropriation Ordinance approved on or before December 31,2022\n\nConsideration: Approval until March 31, 2023', 0, ''),
(5, 4, '1.4.1', 'With allocated funds for the following statutory programs and projects:\r\n a) At least 20% of the NTA is allocated for development programs;\r\n b) Not less than five percent (5%) shall be set aside as the Local Disaster Risk Reduction and Management Fund;\r\n c) Gender and Development;\r\n d) Senior Citizens and Persons with Disabilities;\r\n e) Implementation of the programs of the Local Councils for the Protection of Children; and  \r\n f) Ten percent (10%) for the Sangguniang\r\n Kabataan', 0, ''),
(6, 5, '1.5.1', 'Barangay Citizens’ Charter posted at a conspicuous place (e.g. barangay hall, market, transport terminal, or multi-purpose hall)', 0, ''),
(7, 6, '1.6.1', 'Compliance with Section 20 of the SK Reform Act of 2015 and Item 3.2 of DBM-DILG-NYC JMC No.1, s.2019 dated January 23,2019', 1, ''),
(8, 6, '1.6.2', 'Presence of Approved Annual Barangay Youth Investment Program (ABYIP) for 2023', 0, ''),
(9, 7, '1.7.1', 'Conducted the 1st semester Barangay Assembly for CY 2023', 0, ''),
(10, 8, '2.1.1', 'Structure\r\n\r\nOrganized BDRRMC with its composition compliant to the provisions of NDRRMC, DILG, DBM, and CSC JMCNo.2014-01.\r\n\r\nMinimum Composition of the BDRRMC:\r\n 1. Punong Barangay;\r\n 2. A Representative from the Sangguniang\r\n Barangay; and\r\n 3. 2 CSO representatives from the \r\n existing and active community-based \r\n people’s organizations representing the \r\n most vulnerable and marginalized groups \r\n in the barangay (Item 5.7. of NDRRMC, \r\n DILG, DBM, and CSC JMC No.2014-01)', 0, ''),
(11, 8, '2.1.2', 'Plan\r\n\r\nApproved Barangay Disaster Risk Reduction and Management (BDRRM) Plan covering CY 2023, adopted by the Sangguniang Barangay', 0, ''),
(12, 8, '2.1.3', 'Budget\r\n\r\nAllocation of at least 5%of the Estimated Revenue from Regular Sources as BDRRM Fund\r\n\r\nNote: To compute the allocation: (BDRRMF Allocated / Estimated Total Revenue from Regular Sources) x 100', 0, ''),
(13, 8, '2.1.4', 'Accomplishment Reports\r\n\r\nNote: Barangay officials have the option to submit both the physical and financial reports. However, for the SGLGB Assessment, only one of the above reports is required.', 1, ''),
(14, 9, '2.2.1', 'Conducted an activity in relation to Risk Assessment in the barangay not earlier than CY 2020', 0, ''),
(15, 9, '2.2.2', 'Barangay Risk/Hazard Map which indicates possible risks—natural or man-made. (e.g. flood-prone and landslide-prone areas, etc.)', 0, ''),
(16, 9, '2.2.3', 'An established Early Warning System (EWS) for the top two (2) hazards present in the barangay', 0, ''),
(17, 10, '2.3.1', 'A barangay must have a permanent or temporary evacuation center', 0, ''),
(18, 10, '2.3.2', 'A barangay must have the following disaster supplies/equipment:\r\n a) Communication equipment\r\n b) Rescue vehicle/Alternative vehicle\r\n c) Generator set/alternative sources of \r\n energy\r\n d) First aid kit\r\n e) Flashlight\r\n f) Personal Protective Equipment', 0, ''),
(19, 11, '3.1.1', 'Structure\r\n\r\nOrganized BADAC with its composition and appropriate committees (Committees on Operations and on Advocacy) compliant to DILG-DDB JMC No. 2018-01\r\n\r\nMinimum Composition of the BADAC:\r\n 1. Punong Barangay\r\n 2. SBM\r\n 3. SK Chairperson\r\n 4. Public School \r\n Principal/Representative\r\n 5. Chief Tanod/ Executive Officer\r\n 6. At least 2 representatives of \r\n NGOs/CSOs\r\n 7. Representative of Faith-Based\r\n Organization\r\n 8. C/M Chief of Police or \r\n Representative\r\n\r\nMinimum Composition of the BADAC Committees:\r\n A. Committee on Operations\r\n    1. SBM\r\n    2. Executive Officer/Chief Tanod\r\n    3. BADAC Auxiliary Team (BAT)\r\n B. Committee on Advocacy\r\n    1. SBM\r\n    2. SK Chairperson\r\n    3. Public School \r\n    Principal/Representative\r\n    4. At least 2 representatives of \r\n    NGOs/CSOs\r\n    5. Representative of Faith-Based \r\n    Organization', 0, ''),
(20, 11, '3.1.2', 'Establishment of Barangay Rehabilitation Referral Desk with Designated Barangay Duty Office', 0, ''),
(21, 11, '3.1.3', 'Organization of House Clusters with designated House Cluster Leaders (HCL)', 0, ''),
(22, 11, '3.1.4', 'Organization of BADAC Auxiliary Team (BAT)', 0, ''),
(23, 11, '3.1.5', 'Plan:\r\nFormulation of BADAC Plan of Action (BADPA) coveringCY2023', 0, ''),
(24, 11, '3.1.6', 'Budget:\r\nAllocation of substantial amount for anti-illegal drugs initiative', 0, ''),
(25, 11, '3.1.7', 'Implementation of Drug Abuse Prevention Advocacy Campaigns Barangay organized at least 1 community-based IEC Activity during CY 2023', 0, ''),
(26, 11, '3.1.8', 'Implementation of Drug-Clearing Operations-Submission of Consolidated Information Report (CIR) to CADAC/MADAC and Local PNP Unit\r\n\r\nNote: Drug-unaffected barangays shall also submit updated CIR, stating in the report that there is absence of illegal drug-related activities in the barangays. The same applies to drug-free and drug-cleared barangays', 0, ''),
(28, 11, '3.1.9', 'Implementation of Community-Based Intervention for Person Who Used Drugs (PWUDS)-Presence of referral system', 0, ''),
(29, 11, '3.1.10', 'Conduct of Monthly Meetings', 0, ''),
(30, 12, '3.2.1', 'Structure:\r\nOrganized BPOC with its composition compliant to the provisions of EO No. 366, s. of 1996\r\n\r\nMinimum composition of the BPOC:\r\n 1. Punong Barangay\r\n 2. Sangguniang Kabataan Chairperson\r\n 3. A member of the Lupon Tagapamayapa\r\n 4. A Public School Teacher\r\n 5. PNP Officer\r\n 6. A representative of the Interfaith \r\n Group\r\n 7. A Senior Citizen\r\n 8. At least three (3) members of the \r\n existing Barangay-Based Anti-Crime or\r\n Neighborhood Watch Groups or an NGO\r\n representative\r\n 9. A Barangay Tanod', 0, ''),
(31, 12, '3.2.2', 'Plan\r\nFormulated Barangay Peace and Order and Public Safety (BPOPS) Plan in accordance with DILG MC 2017-142 covering CY 2023', 0, ''),
(32, 12, '3.2.3', 'Accomplishment Reports\r\n\r\nNote: Barangay officials have the option to submit both the physical and financial reports. However, for the SGLGB Assessment, only one of the above documents is required.', 1, ''),
(33, 13, '3.3.1', 'Structure:\r\nOrganized Lupong Tagapamayapa', 0, ''),
(34, 13, '3.3.2', 'System\r\nSystematic maintenance of records of cases', 1, ''),
(35, 13, '3.3.3', 'Meetings:\r\nConducted monthly meetings for the administration of the Katarungang Pambarangay', 0, ''),
(36, 13, '3.3.4', 'Trainings:\r\nAttendance of LT to KP training or seminar not earlier than CY 2020', 0, ''),
(37, 14, '3.4.1', 'Structure:\r\nOrganized Barangay Tanod with its composition compliant to the provisions of DILG MCNo.2003-42\r\n\r\nComposition of a Barangay Tanod:\r\n 1. Chief Tanod/Executive\r\n Officer\r\n 2. Team Leaders\r\n 3. Team Members', 0, ''),
(38, 14, '3.4.2', 'Trainings:\r\nAttendance of barangay tanod to necessary training not earlier than 2020', 0, ''),
(39, 15, '3.5.1', 'Organized Barangay Health and Emergency Response Team (BHERT) with its composition compliant to the provisions of DILG MCNo.2020-023\r\n\r\nMinimum composition of the BHERTs:\r\n 1. Executive Officer\r\n 2. A Barangay Tanod\r\n 3. 2 BHWs', 0, ''),
(40, 15, '3.5.2', 'Poster or tarpaulin containing the active telephone and/or cellphone Numbers of the Barangay, Punong Barangay and BHERT Members posted in conspicuous public places within the barangay jurisdiction', 0, ''),
(41, 16, '3.6.1', 'Conducted BaRCO on a monthly basis in CY 2023', 0, ''),
(42, 17, '4.1.1', 'Structure:\nOrganized Barangay VAW Desk and designated Barangay VAW Desk Officer', 0, ''),
(43, 17, '4.1.2', 'Training:\r\nAttendance of the Barangay VAW Desk Officer to at least one (1) training/orientation related to gender-sensitive handling of VAW Cases not earlier than CY 2020', 0, ''),
(44, 17, '4.1.3', 'Plan and Budget:\r\nApproved CY 2023 Barangay Gender and Development (GAD) Plan and Budget', 0, ''),
(45, 17, '4.1.4', 'Accomplishment Reports:\r\nQuarterly accomplishment reports based on the database/records of VAW cases reported in the barangay containing relevant information such as total number of VAW cases received, assistance provided to victim-survivors, total number of cases documented for violating RA 9262 and other VAW-related laws, total barangay population, number of male and female in the barangay, and minor to adult ratio', 0, ''),
(46, 17, '4.1.5', 'Database:\r\nUpdated database on VAW cases reported to the barangay, with the following information at the minimum:\r\na) total number of VAW cases received\r\n ● number of cases documented for\r\n violating RA 9262\r\n ● number of cases documented for\r\n violating other VAW-related laws\r\nb) assistance provided to victim-survivors', 0, ''),
(47, 17, '4.1.6', 'Accomplishment Reports', 1, ''),
(48, 17, '4.1.7', 'Referral Network', 1, ''),
(49, 18, '4.2.1', 'Presence of a Barangay Health Station/Center Consideration: Clustered Health Station/Center accessed by several barangays in a city/municipality', 0, ''),
(50, 18, '4.2.2', '(For Profiling Purposes Only)\r\n\r\nAppointment of the following Barangay Health Personnel:\r\n 1. Accredited Barangay Health Worker \r\n (BHW);\r\n\r\n AND/OR\r\n\r\n 2.Barangay Health Officer (BHO) or \r\n Barangay Health Assistant (BHAsst)', 0, ''),
(51, 18, '4.2.3', 'Appointment of a Barangay Nutrition Scholar (BNS)', 0, ''),
(52, 18, '4.2.4', 'Availability of health services in the BHS/C such as:\r\n a) immunization\r\n b) maternal and child healthcare\r\n c) family planning\r\n d) health education', 0, ''),
(53, 19, '4.3.1', 'Structure:\r\nOrganized BDC with its composition compliant to Section 107 of RA 7160', 0, ''),
(54, 19, '4.3.2', 'Meeting:\r\nConducted meetings, public hearings, and/or barangay assemblies for public consultation', 0, ''),
(55, 19, '4.3.3', 'Plan\r\nApproved Barangay Development Plan', 0, ''),
(56, 19, '4.3.4', 'Accomplishments Reports:\r\n a) At least 50% accomplishment of the \r\n physical targets in the BDP\r\n OR\r\n b) At least 50% fund utilization rate of \r\n the CY 2023 BDP Budget', 0, ''),
(57, 20, '4.4.1', 'Presence of Kasambahay Desk with designated Kasambahay Desk Officer (KDO)', 0, ''),
(58, 20, '4.4.2', 'Maintenance/updating of a Kasambahay Masterlist', 0, ''),
(59, 21, '4.5.1', 'STRUCTURE\r\nOrganized Barangay Council for Protection of Children (BCPC) with its composition compliant to the provisions of DILG MC No. 2021-039', 0, ''),
(60, 21, '4.5.2', 'Trainings:\r\nAttendance of the Members of the Barangay Council for Protection of Children (BCPC) to a training/orientation related to their functions not earlier than CY 2020', 0, ''),
(61, 21, '4.5.3', 'Plan:\r\nPresence of an approved BCPC Annual Work and Financial Plan', 0, ''),
(62, 21, '4.5.4', 'Database:\r\nEstablishment and maintenance of updated Database on Children disaggregated by age, sex, ethnicity, with or without disabilities, OSCY, etc.', 0, ''),
(63, 21, '4.5.5', 'System:\r\n a. Presence of updated \r\n Localized Flowchart of Referral System \r\n not earlier than CY 2020;\r\n b. Presence of Comprehensive Barangay \r\n Juvenile Intervention Program/Diversion \r\n Program (For profiling); and\r\n c. Presence of Children at Risk (CAR) \r\n and Children in Conflict with the Law\r\n (CICL) registry (For profiling).', 0, ''),
(64, 21, '4.5.6', 'Accomplishment Reports:\r\n  a) At least 50% accomplishment of the\r\n  physical targets in the BCPCAWFP\r\n  OR\r\n  b) At least 50% utilization rate of CY\r\n  2023 BCPC AWFP Budget', 0, ''),
(65, 22, '4.6.1', 'Organized Barangay GAD Focal Point System', 0, ''),
(66, 23, '4.7.1', 'Presence of updated RBI for the first (1st) semester of CY 2023', 0, ''),
(67, 24, '4.8.1', 'Structure:\r\nOrganized BNC', 0, ''),
(68, 24, '4.8.2', 'Plan:\r\nPresence of approved CY 2023 BNAP', 0, ''),
(69, 24, '4.8.3', 'Decrease in Prevalence Rate in the barangay, for the following categories:\r\n 1. Underweight and Severe Underweight\r\n 2. Stunting and Severe Stunting; and\r\n 3. Moderate Wasting and Severe Wasting', 0, ''),
(70, 24, '4.8.4', 'Accomplishment Reports:\r\n\r\na) At least 50% accomplishment of the physical targets in the CY 2023 BNAP\r\n\r\nOR\r\n\r\nb) At least 50% fund utilization rate of the CY 2023 BNAP Budget', 0, ''),
(71, 25, '4.9.1', 'Established a Barangay Community Garden (BCG)', 0, ''),
(72, 25, '4.9.2', 'Enacted Ordinance for the Establishment of a Barangay Community Garden', 0, ''),
(73, 25, '4.9.3', 'Designated SBM to Manage the Barangay Community Garden', 0, ''),
(74, 25, '4.9.4', 'Conducted at least One (1) Advocacy Campaign/Awareness on community household gardening', 0, ''),
(75, 25, '4.9.5', 'Established Group of Volunteers on the Implementation of the Community Garden', 0, ''),
(76, 26, '5.1.1', 'Enacted Barangay Tax Ordinance pursuant to Sec.129 of the LG', 0, ''),
(77, 27, '5.2.1', 'Enacted Barangay Ordinance relative to Barangay Clearance fees on business permit and locational clearance for building permit pursuant to DILG MC No. 2019-177', 0, ''),
(78, 27, '5.2.2', 'Approved resolution authorizing the City/Municipal Treasurer to collect fees for Barangay Clearance for Business permit and locational clearance purposes pursuant to DILG MC No. 2019-177.', 0, ''),
(79, 28, '5.3.1', 'Presence of a Citizens’ Charter on the issuance of barangay certification posted in the barangay hall', 0, ''),
(80, 29, '6.1.1', 'Structure\r\nOrganized BESWMC with composition compliant to DILGMC No.2018-112', 0, ''),
(81, 29, '6.1.2', 'Plan\nApproved Solid Waste Management Program/Plan with corresponding fund allocation', 0, ''),
(82, 29, '6.1.3', 'Trainings\r\nAttendance of BESWMC to necessary training related to promoting environmental protection, preservation and awareness not earlier than CY 2020', 0, ''),
(83, 29, '6.1.4', 'Accomplishment Reports:\r\n a) At least 50% accomplishment of the \r\n physical targets in the BESWMP\r\n OR\r\n b) At least 50% utilization rate of CY \r\n 2023 BESWM Budget', 0, ''),
(84, 30, '6.2.1', 'Presence of a Materials Recovery Facility (MRF)/Materials Recovery System (MRS)-Established MRF operated by the barangay-MRS-Clustered MRF', 0, ''),
(85, 31, '6.3.1', 'Enacted Barangay Ordinance or similar issuance on segregation of wastes at-source', 0, ''),
(86, 0, '111.1', 'asdasdsdasjdh', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_area_mininumreqs_sub`
--

CREATE TABLE `maintenance_area_mininumreqs_sub` (
  `keyctr` bigint(20) NOT NULL,
  `mininumreq_keyctr` bigint(20) DEFAULT NULL,
  `indicator_keyctr` bigint(20) NOT NULL,
  `reqs_code` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area_mininumreqs_sub`
--

INSERT INTO `maintenance_area_mininumreqs_sub` (`keyctr`, `mininumreq_keyctr`, `indicator_keyctr`, `reqs_code`, `description`, `trail`) VALUES
(1, 7, 6, '1.6.1.1', 'The barangay has Barangay-SK Agreement for the release/deposit;', ''),
(2, 7, 6, '1.6.1.2', 'The barangay does not have Barangay-SK Agreement but with current account;', ''),
(3, 7, 6, '1.6.1.3', 'The barangay does not have SK Officials or with SK Officials but no quorum and/or No SK Bank Account', ''),
(5, 13, 8, '2.1.4.1', 'At least 50% accomplishment of the physical targets in the BDRRM Plan', ''),
(6, 13, 8, '2.1.4.2', 'At least 50% fund utilization of the 70% component of CY 2023 BDRRMF Preparedness component as of December 31, 2023.', ''),
(7, 32, 12, '3.2.3.1', 'At least50% accomplishment of the physical targets in the BPOPs Plan', ''),
(8, 32, 12, '3.2.3.2', 'At least 50% fund utilization rate of the CY 2023 BPOPs Budget.', ''),
(9, 34, 13, '3.3.2.1', 'For barangays of cities: Computer database with searchable information', ''),
(10, 34, 13, '3.3.2.2', 'For barangays of municipalities: Manual Records (Case Record Book) OR Digital Record Filing (scanned copy of KP files)', ''),
(11, 47, 17, '4.1.6.1', 'At least 50% accomplishment of the physical targets in the GAD Plan', ''),
(12, 47, 17, '4.1.6.2', 'At least 50% fund utilization of the CY 2023 GAD Budget', ''),
(13, 48, 17, '4.1.7.1', 'Presence of Referral System Flow Chart (For profiling); and', ''),
(14, 48, 17, '4.1.7.2', 'Presence of Directory of agencies/individuals providing services to victim-survivors (For profiling)', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_category`
--

CREATE TABLE `maintenance_category` (
  `code` varchar(6) NOT NULL,
  `short_def` varchar(15) NOT NULL,
  `description` varchar(200) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_category`
--

INSERT INTO `maintenance_category` (`code`, `short_def`, `description`, `trail`) VALUES
('CORE', 'CORE', 'CORE GOVERNANCE', ''),
('ESSE', 'ESSENTIAL', 'ESSENTIAL GOVERNANCE', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_critera_setup_area_mininumreqs`
--

CREATE TABLE `maintenance_critera_setup_area_mininumreqs` (
  `keyctr` bigint(20) NOT NULL,
  `criteria_keyctr` bigint(20) NOT NULL,
  `indicator_keyctr` bigint(20) NOT NULL,
  `minreqs_keyctr` bigint(20) NOT NULL,
  `reqs_code` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `sub_mininumreqs` tinyint(1) NOT NULL DEFAULT 0,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_critera_setup_area_mininumreqs`
--

INSERT INTO `maintenance_critera_setup_area_mininumreqs` (`keyctr`, `criteria_keyctr`, `indicator_keyctr`, `minreqs_keyctr`, `reqs_code`, `description`, `sub_mininumreqs`, `trail`) VALUES
(1, 1, 1, 1, '1', 'Three (3) BFDP Monitoring\nForm A of the DILG Advisory\ncovering the 1st to 3rd quarter\nmonitoring data signed by the\nCity Director/C/MLGOO,\nPunong Barangay and\nBarangay Secretary; and', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_critera_setup_area_mininumreqs_sub`
--

CREATE TABLE `maintenance_critera_setup_area_mininumreqs_sub` (
  `keyctr` bigint(20) NOT NULL,
  `criteria_minreqkeyctr` bigint(20) NOT NULL,
  `minreq_keyctr` bigint(20) NOT NULL,
  `reqs_code` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_critera_setup_movs`
--

CREATE TABLE `maintenance_critera_setup_movs` (
  `keyctr` bigint(20) NOT NULL,
  `setupminreqs_keyctr` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_critera_setup_movs_docsource`
--

CREATE TABLE `maintenance_critera_setup_movs_docsource` (
  `keyctr` bigint(20) NOT NULL,
  `setupmov_keyctr` bigint(20) NOT NULL,
  `srccode` varchar(10) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_critera_setup_movs_docsource_sub`
--

CREATE TABLE `maintenance_critera_setup_movs_docsource_sub` (
  `keyctr` bigint(20) NOT NULL,
  `setupmov_subkeyctr` bigint(20) NOT NULL,
  `srccode` varchar(10) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_critera_setup_movs_sub`
--

CREATE TABLE `maintenance_critera_setup_movs_sub` (
  `keyctr` bigint(20) NOT NULL,
  `setupminreqs_subkeyctr` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_criteria_setup`
--

CREATE TABLE `maintenance_criteria_setup` (
  `keyctr` bigint(20) UNSIGNED NOT NULL,
  `version_keyctr` bigint(20) DEFAULT NULL,
  `indicator_keyctr` bigint(20) DEFAULT NULL,
  `minreqs_keyctr` bigint(20) NOT NULL,
  `sub_minimumreqs` tinyint(1) NOT NULL,
  `movdocs_reqs` text NOT NULL,
  `template` varchar(300) NOT NULL,
  `data_source` int(11) DEFAULT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_criteria_setup`
--

INSERT INTO `maintenance_criteria_setup` (`keyctr`, `version_keyctr`, `indicator_keyctr`, `minreqs_keyctr`, `sub_minimumreqs`, `movdocs_reqs`, `template`, `data_source`, `trail`) VALUES
(36, 1, 6, 8, 1, 'aaaaaaaaaaaa', '', 1, 'Edited at 2025-02-21 09:53:14'),
(37, 1, 4, 5, 1, 'test', '', 1, 'Created at 2025-02-19 07:38:14'),
(38, 1, 8, 10, 1, '1', '', 2, 'Created at 2025-02-19 07:38:42'),
(39, 1, 6, 8, 1, 'aaaaaaaaaa', '', 1, 'Edited at 2025-02-21 09:53:30'),
(40, 1, 30, 84, 1, 'test', '', 1, 'Created at 2025-02-19 08:34:38'),
(41, 1, 11, 19, 1, 'test', '', 1, 'Created at 2025-02-20 03:43:03'),
(42, 1, 1, 1, 0, 'Three (3) BFDP Monitoring\r\nForm A of the DILG Advisory\r\ncovering the 1\r\nst\r\nto 3\r\nrd quarter\r\nmonitoring data signed by the\r\nCity Director/C/MLGOO,\r\nPunong Barangay and\r\nBarangay Secretary; and', 'https://bit.ly/BFDPMonitoring-FormA', 1, 'Edited at 2025-02-25 03:38:33'),
(43, 1, 1, 1, 0, 'Two (2) Photo Documentation\r\nof the BFDP board showing the\r\nname of the barangay\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\nBarangay Secretary\r\n2 Memorandum Circular Re \"Reminders on the Preparation of the Barangay Financial Report, Its Submission to the City / Municipal Accountant and the Posting of test', '', 1, 'Edited at 2025-02-24 05:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_criteria_setup1`
--

CREATE TABLE `maintenance_criteria_setup1` (
  `keyctr` bigint(20) NOT NULL,
  `version_keyctr` bigint(20) DEFAULT NULL,
  `governance_keyctr` bigint(20) DEFAULT NULL,
  `indicator_keyctr` bigint(20) DEFAULT NULL,
  `indicator_code` bigint(20) DEFAULT NULL,
  `indicator_description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_criteria_setup1`
--

INSERT INTO `maintenance_criteria_setup1` (`keyctr`, `version_keyctr`, `governance_keyctr`, `indicator_keyctr`, `indicator_code`, `indicator_description`, `trail`) VALUES
(1, 1, 1, 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_criteria_version`
--

CREATE TABLE `maintenance_criteria_version` (
  `keyctr` bigint(20) NOT NULL,
  `short_def` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `active_yr` varchar(4) NOT NULL,
  `active_` tinyint(1) NOT NULL DEFAULT 1,
  `duration` varchar(100) NOT NULL,
  `is_accepting_response` tinyint(1) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_criteria_version`
--

INSERT INTO `maintenance_criteria_version` (`keyctr`, `short_def`, `description`, `active_yr`, `active_`, `duration`, `is_accepting_response`, `trail`) VALUES
(1, 'VERSION I', 'CRITERIA VERSION FOR 2024-2026', '2024', 1, 'March 2029a', 1, 'Updated at 2025-02-25 08:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_document_source`
--

CREATE TABLE `maintenance_document_source` (
  `keyctr` bigint(20) NOT NULL,
  `srccode` varchar(10) NOT NULL,
  `srcdesc` varchar(200) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_document_source`
--

INSERT INTO `maintenance_document_source` (`keyctr`, `srccode`, `srcdesc`, `trail`) VALUES
(1, 'BRGYSEC', 'Barangay Secretary\r\n', 'Modified at 2025-02-19 08:53:09'),
(2, 'BRGYTRE', 'Barangay Treasurer', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_forms_access`
--

CREATE TABLE `maintenance_forms_access` (
  `module` varchar(2) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_forms_access`
--

INSERT INTO `maintenance_forms_access` (`module`, `code`, `description`, `trail`) VALUES
('1', 'M-001', 'Maintenance Area', ''),
('1', 'M-002', 'Maintenance Area Description', ''),
('1', 'M-003', 'Maintenance Indicators', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_governance`
--

CREATE TABLE `maintenance_governance` (
  `keyctr` bigint(20) NOT NULL,
  `cat_code` varchar(6) NOT NULL,
  `area_keyctr` bigint(20) NOT NULL,
  `desc_keyctr` bigint(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_governance`
--

INSERT INTO `maintenance_governance` (`keyctr`, `cat_code`, `area_keyctr`, `desc_keyctr`, `description`, `trail`) VALUES
(1, 'CORE', 1, 1, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', ''),
(2, 'CORE', 2, 2, 'DISASTER PREPAREDNESS', ''),
(3, 'CORE', 3, 3, 'SAFETY, PEACE AND ORDER', ''),
(4, 'ESSE', 1, 4, 'SOCIAL PROTECTION AND SENSITIVITY', ''),
(5, 'ESSE', 2, 5, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', ''),
(6, 'ESSE', 3, 6, 'ENVIRONMENTAL MANAGEMENT', '');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_module_form`
--

CREATE TABLE `maintenance_module_form` (
  `mod_` varchar(2) NOT NULL,
  `description` text NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_module_form`
--

INSERT INTO `maintenance_module_form` (`mod_`, `description`, `trail`) VALUES
('1', 'MAINTENANCE', ''),
('2', 'BARANGAY TRANSACTIONS', ''),
('3', 'BARANGAY', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `is_read`, `created_at`) VALUES
(1, 23, 'super admin commented on your submission', 'The super admin Master commented File ID 40.', 0, '2025-02-27 07:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `super_admin_delete` tinyint(1) DEFAULT 0,
  `super_admin_read` tinyint(1) DEFAULT 0,
  `super_admin_create` tinyint(1) DEFAULT 0,
  `users_create` tinyint(1) DEFAULT 0,
  `users_delete` tinyint(1) DEFAULT 0,
  `users_update` tinyint(1) DEFAULT 0,
  `users_read` tinyint(1) DEFAULT 0,
  `roles_create` tinyint(1) DEFAULT 0,
  `roles_delete` tinyint(1) DEFAULT 0,
  `roles_update` tinyint(1) DEFAULT 0,
  `roles_read` tinyint(1) DEFAULT 0,
  `criteria_create` tinyint(1) DEFAULT 0,
  `criteria_read` tinyint(1) DEFAULT 0,
  `criteria_update` tinyint(1) DEFAULT 0,
  `criteria_delete` tinyint(1) DEFAULT 0,
  `assessment_submissions_create` tinyint(1) DEFAULT 0,
  `assessment_submissions_read` tinyint(1) DEFAULT 0,
  `assessment_submissions_update` tinyint(1) DEFAULT 0,
  `assessment_submissions_delete` tinyint(1) DEFAULT 0,
  `assessment_submissions_approve_disapprove` tinyint(1) DEFAULT 0,
  `assessment_comments_create` tinyint(1) DEFAULT 0,
  `assessment_comments_read` tinyint(1) DEFAULT 0,
  `assessment_comments_update` tinyint(1) DEFAULT 0,
  `assessment_comments_delete` tinyint(1) DEFAULT 0,
  `map_read` tinyint(1) DEFAULT 0,
  `reports_read` tinyint(1) DEFAULT 0,
  `reports_generate` tinyint(1) DEFAULT 0,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `super_admin_delete`, `super_admin_read`, `super_admin_create`, `users_create`, `users_delete`, `users_update`, `users_read`, `roles_create`, `roles_delete`, `roles_update`, `roles_read`, `criteria_create`, `criteria_read`, `criteria_update`, `criteria_delete`, `assessment_submissions_create`, `assessment_submissions_read`, `assessment_submissions_update`, `assessment_submissions_delete`, `assessment_submissions_approve_disapprove`, `assessment_comments_create`, `assessment_comments_read`, `assessment_comments_update`, `assessment_comments_delete`, `map_read`, `reports_read`, `reports_generate`, `last_modified`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-29 09:36:53'),
(4, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '2025-02-10 05:51:58'),
(5, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '2025-02-10 06:16:09'),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-10 06:32:19'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-11 00:53:46'),
(8, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '2025-02-12 10:36:12'),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:41:34'),
(13, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:41:56'),
(14, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:45:53'),
(15, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:47:12'),
(16, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:50:35'),
(17, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:55:18'),
(18, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:55:38'),
(19, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:55:51'),
(20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 06:58:45'),
(21, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 07:00:26'),
(24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 07:22:56'),
(25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-13 08:01:46'),
(28, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '2025-02-14 12:22:34'),
(29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-02-24 08:14:52'),
(30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-15 01:26:05'),
(31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-02-15 01:26:26'),
(32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-15 01:26:26'),
(33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-15 01:27:35'),
(34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-02-15 01:28:53'),
(35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-15 02:05:49'),
(36, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-15 02:07:10'),
(37, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-16 12:45:40'),
(38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-24 08:07:50'),
(39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-24 08:07:50'),
(40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-24 08:07:50'),
(41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-24 08:07:50'),
(42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-24 08:07:50'),
(43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-02-24 08:15:59'),
(44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-02-24 08:15:59'),
(45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-02-24 08:15:59'),
(46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-02-24 08:15:59'),
(47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-02-24 08:15:59'),
(48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-02-24 08:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `refbarangay`
--

CREATE TABLE `refbarangay` (
  `brgyid` varchar(10) NOT NULL,
  `brgyname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refbarangay`
--

INSERT INTO `refbarangay` (`brgyid`, `brgyname`) VALUES
('104201001', 'Balintonga'),
('104201002', 'Banisilon'),
('104201003', 'Burgos'),
('104201004', 'Calube'),
('104201005', 'Caputol'),
('104201006', 'Casusan'),
('104201007', 'Conat'),
('104201008', 'Culpan'),
('104201009', 'Dalisay'),
('104201010', 'Dullan'),
('104201011', 'Ibabao'),
('104201012', 'Labo'),
('104201013', 'Lawa-an'),
('104201014', 'Lobogon'),
('104201015', 'Lumbayao'),
('104201016', 'Macubon'),
('104201017', 'Makawa'),
('104201018', 'Manamong'),
('104201019', 'Matipaz'),
('104201020', 'Maular'),
('104201021', 'Mitazan'),
('104201022', 'Mohon'),
('104201023', 'Monterico'),
('104201024', 'Nabuna'),
('104201025', 'Ospital'),
('104201026', 'Palayan'),
('104201027', 'Pelong'),
('104201028', 'Roxas'),
('104201029', 'San Pedro'),
('104201030', 'Santa Ana'),
('104201031', 'Sinampongan'),
('104201032', 'Taguanao'),
('104201033', 'Tawi-tawi'),
('104201034', 'Toril'),
('104201035', 'Tubod'),
('104201036', 'Tuburan'),
('104201037', 'Tugaya'),
('104201038', 'Zamora');

-- --------------------------------------------------------

--
-- Table structure for table `refcity`
--

CREATE TABLE `refcity` (
  `provid` varchar(10) NOT NULL,
  `cityid` varchar(10) NOT NULL,
  `cityname` varchar(30) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refcity`
--

INSERT INTO `refcity` (`provid`, `cityid`, `cityname`, `trail`) VALUES
('1042', '104201000', 'Aloran', ''),
('1042', '104202000', 'Baliangao', ''),
('1042', '104203000', 'Bonifacio', ''),
('1042', '104204000', 'Calamba', ''),
('1042', '104205000', 'Clarin', ''),
('1042', '104206000', 'Concepcion', ''),
('1042', '104207000', 'Jimenez', ''),
('1042', '104208000', 'Lopez Jaena', ''),
('1042', '104209000', 'Oroquieta City', ''),
('1042', '104210000', 'Ozamiz City', ''),
('1042', '104211000', 'Panaon', ''),
('1042', '104212000', 'Plaridel', ''),
('1042', '104213000', 'Sapang Dalaga', ''),
('1042', '104214000', 'Sinacaban', ''),
('1042', '104216000', 'Tudela', ''),
('1042', '104217214', 'Tangub City', ''),
('1042', 'Concepcion', 'Don Victoriano Chiongbian (don', '');

-- --------------------------------------------------------

--
-- Table structure for table `refprovince`
--

CREATE TABLE `refprovince` (
  `provid` varchar(10) NOT NULL,
  `provname` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refprovince`
--

INSERT INTO `refprovince` (`provid`, `provname`, `country`, `trail`) VALUES
('1042', 'Misamis Occidental', 'PH', ''),
('1043', 'Misamis Oriental', 'PH', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `allow_bar` tinyint(1) NOT NULL DEFAULT 0,
  `bar_perms` int(11) DEFAULT NULL,
  `gen_perms` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `allow_bar`, `bar_perms`, `gen_perms`, `last_modified`) VALUES
(1, 'super admin', 0, NULL, 1, '2025-02-14 02:27:14'),
(21, 'sec', 1, 29, 30, '2025-02-15 01:26:05'),
(22, 'auditor', 1, 31, 32, '2025-02-15 01:26:26'),
(23, 'admin', 0, 35, 36, '2025-02-15 02:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE `setup` (
  `keyctr` bigint(20) NOT NULL,
  `category` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `area_desc` varchar(200) NOT NULL,
  `indicator_code` varchar(200) NOT NULL,
  `indicator_description` varchar(200) NOT NULL,
  `indicator_rd` varchar(200) NOT NULL,
  `reqs_code` varchar(200) NOT NULL,
  `mininumreqs_desc` varchar(200) NOT NULL,
  `doc_requirements` varchar(200) NOT NULL,
  `data_source` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_num` varchar(10) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `profile_pic` varchar(200) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `email`, `mobile_num`, `role_id`, `is_disabled`, `profile_pic`, `last_modified`) VALUES
(1, 'Master', 'admin', '$2y$10$yfE11dwq71p0Zho2ZJyluuB7jiYR.jbEWg0Bustga2nIjRFZRHP9m', 'admin@gmail.com', '9123456789', 1, 0, '../uploads/profile_1.jpg', '2025-02-14 02:37:52'),
(21, 'testing', 'testingAud', '$2y$10$6b22Jzod.WNWudYcgRmZsuvpUXXG1BEIZBJ1tlf22rdZGQm0y6n8C', 'testing@testingdfghdfgh.com', '3982734757', 22, 0, NULL, '2025-02-15 01:28:53'),
(22, 'testing', 'testingAd', '$2y$10$AgbJjY7S5RVCBTrpTHqJO.GyvrrE1GoVg6kK7gHMxfRuN/WQdhWJ2', 'testing@testingbbbalskjdhfla.com', '3987237457', 23, 0, NULL, '2025-02-16 12:45:40'),
(23, 'sec', 'sec', '$2y$10$5/FutWPhSwUaIHUnhtHjyej2uuZXocQX2Wnv49KK.CH/3WgLpKL1W', 'sec@gmail.com', '9376206802', 21, 0, NULL, '2025-02-24 08:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL,
  `user_roles_barangay_id` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `permissions_id`, `user_roles_barangay_id`, `last_modified`) VALUES
(1, 1, NULL, '2025-01-29 09:41:16'),
(22, 37, NULL, '2025-02-16 12:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_barangay`
--

CREATE TABLE `user_roles_barangay` (
  `user_id` int(11) NOT NULL,
  `barangay_id` varchar(10) DEFAULT NULL,
  `indicator_id` bigint(20) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles_barangay`
--

INSERT INTO `user_roles_barangay` (`user_id`, `barangay_id`, `indicator_id`, `permission_id`, `last_modified`) VALUES
(21, NULL, 1, 34, '2025-02-15 01:28:53'),
(23, NULL, 6, 43, '2025-02-24 08:09:34'),
(23, NULL, 4, 44, '2025-02-24 08:09:34'),
(23, NULL, 8, 45, '2025-02-24 08:09:34'),
(23, NULL, 30, 46, '2025-02-24 08:09:34'),
(23, NULL, 11, 47, '2025-02-24 08:09:34'),
(23, NULL, 1, 48, '2025-02-24 08:09:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `barangay_assessment`
--
ALTER TABLE `barangay_assessment`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `barangay_assessment_files`
--
ALTER TABLE `barangay_assessment_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `maintenance_area`
--
ALTER TABLE `maintenance_area`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `maintenance_area_description`
--
ALTER TABLE `maintenance_area_description`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `maintenance_area_indicators`
--
ALTER TABLE `maintenance_area_indicators`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `governance_code` (`governance_code`),
  ADD KEY `desc_keyctr` (`desc_keyctr`);

--
-- Indexes for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `maintenance_area_mininumreqs_sub`
--
ALTER TABLE `maintenance_area_mininumreqs_sub`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `maintenance_area_mininumreqs_sub_ibfk_1` (`mininumreq_keyctr`),
  ADD KEY `indicator_keyctr` (`indicator_keyctr`);

--
-- Indexes for table `maintenance_category`
--
ALTER TABLE `maintenance_category`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `maintenance_critera_setup_area_mininumreqs`
--
ALTER TABLE `maintenance_critera_setup_area_mininumreqs`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `maintenance_critera_setup_area_mininumreqs_ibfk_1` (`criteria_keyctr`),
  ADD KEY `indicator_keyctr` (`indicator_keyctr`),
  ADD KEY `minreqs_keyctr` (`minreqs_keyctr`);

--
-- Indexes for table `maintenance_critera_setup_area_mininumreqs_sub`
--
ALTER TABLE `maintenance_critera_setup_area_mininumreqs_sub`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `criteria_minreqkeyctr` (`criteria_minreqkeyctr`),
  ADD KEY `maintenance_critera_setup_area_mininumreqs_sub_ibfk_2` (`minreq_keyctr`);

--
-- Indexes for table `maintenance_critera_setup_movs`
--
ALTER TABLE `maintenance_critera_setup_movs`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `setupminreqs_keyctr` (`setupminreqs_keyctr`);

--
-- Indexes for table `maintenance_critera_setup_movs_docsource`
--
ALTER TABLE `maintenance_critera_setup_movs_docsource`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `setupmov_keyctr` (`setupmov_keyctr`);

--
-- Indexes for table `maintenance_critera_setup_movs_docsource_sub`
--
ALTER TABLE `maintenance_critera_setup_movs_docsource_sub`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `setupmov_subkeyctr` (`setupmov_subkeyctr`);

--
-- Indexes for table `maintenance_critera_setup_movs_sub`
--
ALTER TABLE `maintenance_critera_setup_movs_sub`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `setupminreqs_subkeyctr` (`setupminreqs_subkeyctr`);

--
-- Indexes for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  ADD PRIMARY KEY (`keyctr`),
  ADD UNIQUE KEY `keyctr` (`keyctr`),
  ADD KEY `version_keyctr` (`version_keyctr`),
  ADD KEY `indicator_code` (`indicator_keyctr`),
  ADD KEY `minreqs_keyctr` (`minreqs_keyctr`);

--
-- Indexes for table `maintenance_criteria_setup1`
--
ALTER TABLE `maintenance_criteria_setup1`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `governance_keyctr` (`governance_keyctr`),
  ADD KEY `version_keyctr` (`version_keyctr`),
  ADD KEY `indicator_keyctr` (`indicator_keyctr`);

--
-- Indexes for table `maintenance_criteria_version`
--
ALTER TABLE `maintenance_criteria_version`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `maintenance_document_source`
--
ALTER TABLE `maintenance_document_source`
  ADD PRIMARY KEY (`keyctr`),
  ADD UNIQUE KEY `srccode` (`srccode`);

--
-- Indexes for table `maintenance_forms_access`
--
ALTER TABLE `maintenance_forms_access`
  ADD PRIMARY KEY (`code`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `maintenance_governance`
--
ALTER TABLE `maintenance_governance`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `cat_code` (`cat_code`),
  ADD KEY `area_keyctr` (`area_keyctr`),
  ADD KEY `desc_keyctr` (`desc_keyctr`);

--
-- Indexes for table `maintenance_module_form`
--
ALTER TABLE `maintenance_module_form`
  ADD PRIMARY KEY (`mod_`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ibfk_1` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refbarangay`
--
ALTER TABLE `refbarangay`
  ADD PRIMARY KEY (`brgyid`);

--
-- Indexes for table `refcity`
--
ALTER TABLE `refcity`
  ADD PRIMARY KEY (`cityid`),
  ADD KEY `provid` (`provid`);

--
-- Indexes for table `refprovince`
--
ALTER TABLE `refprovince`
  ADD PRIMARY KEY (`provid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `bar_perms` (`bar_perms`),
  ADD KEY `gen_perms` (`gen_perms`);

--
-- Indexes for table `setup`
--
ALTER TABLE `setup`
  ADD PRIMARY KEY (`keyctr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile_num` (`mobile_num`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `permissions_id` (`permissions_id`),
  ADD KEY `user_roles_barangay_id` (`user_roles_barangay_id`);

--
-- Indexes for table `user_roles_barangay`
--
ALTER TABLE `user_roles_barangay`
  ADD UNIQUE KEY `user_id` (`user_id`,`barangay_id`,`indicator_id`,`permission_id`),
  ADD KEY `barangay_id` (`barangay_id`),
  ADD KEY `indicator_id` (`indicator_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `barangay_assessment`
--
ALTER TABLE `barangay_assessment`
  MODIFY `keyctr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `barangay_assessment_files`
--
ALTER TABLE `barangay_assessment_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `keyctr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `maintenance_area`
--
ALTER TABLE `maintenance_area`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `maintenance_area_description`
--
ALTER TABLE `maintenance_area_description`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `maintenance_area_indicators`
--
ALTER TABLE `maintenance_area_indicators`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  MODIFY `keyctr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `maintenance_criteria_version`
--
ALTER TABLE `maintenance_criteria_version`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance_document_source`
--
ALTER TABLE `maintenance_document_source`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `maintenance_governance`
--
ALTER TABLE `maintenance_governance`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`bar_perms`) REFERENCES `permissions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`gen_perms`) REFERENCES `permissions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_3` FOREIGN KEY (`user_roles_barangay_id`) REFERENCES `user_roles_barangay` (`user_id`);

--
-- Constraints for table `user_roles_barangay`
--
ALTER TABLE `user_roles_barangay`
  ADD CONSTRAINT `user_roles_barangay_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_barangay_ibfk_2` FOREIGN KEY (`barangay_id`) REFERENCES `refbarangay` (`brgyid`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_roles_barangay_ibfk_3` FOREIGN KEY (`indicator_id`) REFERENCES `maintenance_area_indicators` (`keyctr`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_roles_barangay_ibfk_4` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
