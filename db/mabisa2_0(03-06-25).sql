-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2025 at 05:27 AM
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
  `action` varchar(500) NOT NULL,
  `time_and_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`action_id`, `user_id`, `username`, `action`, `time_and_date`) VALUES
(276, 1, 'admin', 'Created a New Version with Short Definition: 2025-2028, Description: Version for Year 2025 to 2028, Active Year: 2025-2028, and is Active: 1', '2025-03-06 10:33:34'),
(277, 1, 'admin', 'Edited a Version with ID:2 to Short Definition: Version 1, Description: Version for Year 2025 to 2028, Active Year: 2025, and is Active: 1', '2025-03-06 10:33:47'),
(278, 1, 'admin', 'Created a New Area: AREA I with Description: FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '2025-03-06 10:34:33'),
(279, 1, 'admin', 'Created a New Area: AREA II with Description: DISASTER PREPAREDNESS', '2025-03-06 10:35:04'),
(280, 1, 'admin', 'Created a New Area: AREA III with Description: SAFETY, PEACE AND ORDER', '2025-03-06 10:35:22'),
(281, 1, 'admin', 'Created a New Area: AREA I with Description: SOCIAL PROTECTION AND SENSITIVITY', '2025-03-06 10:37:06'),
(282, 1, 'admin', 'Created a New Area: AREA II with Description: BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '2025-03-06 10:37:23'),
(283, 1, 'admin', 'Created a New Area: AREA III with Description: ENVIRONMENTAL MANAGEMENT', '2025-03-06 10:37:48'),
(284, 1, 'admin', 'Created a New Governance Entry with Cat Code: CORE, Area ID: 10, Description ID: 10', '2025-03-06 10:44:03'),
(285, 1, 'admin', 'Created a New Governance Entry with Cat Code: CORE, Area ID: 14, Description ID: 14', '2025-03-06 10:44:27'),
(286, 1, 'admin', 'Updated Governance Entry with ID: 13 to Cat Code: CORE, Area ID: 11, Description ID: 11', '2025-03-06 10:44:45'),
(287, 1, 'admin', 'Created a New Governance Entry with Cat Code: CORE, Area ID: 12, Description ID: 12', '2025-03-06 10:44:55'),
(288, 1, 'admin', 'Created a New Governance Entry with Cat Code: ESSE, Area ID: 13, Description ID: 13', '2025-03-06 10:45:11'),
(289, 1, 'admin', 'Created a New Governance Entry with Cat Code: ESSE, Area ID: 14, Description ID: 14', '2025-03-06 10:45:20'),
(290, 1, 'admin', 'Created a New Governance Entry with Cat Code: ESSE, Area ID: 15, Description ID: 15', '2025-03-06 10:45:29'),
(291, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK and Relevance Definition: Pursuant to Republic Act (RA) 9710, otherwise known as the Magna Carta of Women, is a comprehensive women’s human rights law that seeks to eliminate discrimination against women by recognizing, protecting, fulfilling and promoting the rights of Filipino women, especially those in the mar', '2025-03-06 10:54:10'),
(292, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.1, Description: Organized Barangay\r\nVAW Desk and\r\ndesignated Barangay\r\nVAW Desk Officer\r\n, and Sub Minimum Requirements: 0', '2025-03-06 11:03:44'),
(293, 1, 'admin', 'Created a New Document Source with Source Code: SEC, and Source Description: Secretary', '2025-03-06 11:03:59'),
(294, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 89, Sub Minimum Requirements: 0, MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of Barangay VAW\r\nDesk and designated VAW Desk\r\nOfficer covering January to\r\nOctober 2023\r\n, and Document Source: 5', '2025-03-06 11:05:06'),
(295, 1, 'admin', 'Updated Indicator: 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK, Relevance Definition: Pursuant to Republic Act (RA) 9710, otherwise known as the Magna Carta of Women, is a comprehensive women’s human rights law that seeks to eliminate discrimination against women by recognizing, protecting, fulfilling and promoting the rights of Filipino women, especially those in the marginalize', '2025-03-06 11:06:49'),
(296, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.2, Description: At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n, and Sub Minimum Requirements: 0', '2025-03-06 11:07:26'),
(297, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.3, Description: Approved Barangay GAD Plan\r\nand Budget for CY 2023\r\n, and Sub Minimum Requirements: 0', '2025-03-06 11:07:44'),
(298, 1, 'admin', 'Updated Minimum Requirement with ID: 90, to Indicator ID: 37, Requirements Code: 4.1.2, Description: Attendance of the\r\nBarangay VAW Desk\r\nOfficer to at least one (1)\r\ntraining/orientation\r\nrelated to\r\ngender-sensitive handling\r\nof VAW Cases not earlier\r\nthan CY 2020, and Sub Minimum Requirements: 0', '2025-03-06 11:08:05'),
(299, 1, 'admin', 'Updated Minimum Requirement with ID: 91, to Indicator ID: 37, Requirements Code: 4.1.3, Description: Approved CY 2023\r\nBarangay Gender and\r\nDevelopment (GAD) Plan\r\nand Budget\r\n, and Sub Minimum Requirements: 0', '2025-03-06 11:08:18'),
(300, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.4, Description: Quarterly accomplishment\r\nreports based on the\r\ndatabase/records of VAW\r\ncases reported in the\r\nbarangay containing\r\nrelevant information such\r\nas total number of VAW\r\ncases received,\r\nassistance provided to\r\nvictim-survivors, total\r\nnumber of cases\r\ndocumented for violating\r\nRA 9262 and other\r\nVAW-related laws, total\r\nbarangay population,\r\nnumber of male and\r\nfemale in the barangay,\r\nand minor to adu', '2025-03-06 11:08:38'),
(301, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 90, Sub Minimum Requirements: 0, MOV Documents Requirements: At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n, and Document Source: 5', '2025-03-06 11:09:07'),
(302, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 89, Sub Minimum Requirements: 0, MOV Documents Requirements: At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n, and Document Source: 5', '2025-03-06 11:09:56'),
(303, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 342, Description: asdas, and Sub Minimum Requirements: 0', '2025-03-06 11:26:33'),
(304, 1, 'admin', 'Updated Minimum Requirement with ID: 93, to Indicator ID: 37, Requirements Code: 342, Description: asdas, and Sub Minimum Requirements: 0', '2025-03-06 11:29:54'),
(305, 1, 'admin', 'Updated Minimum Requirement with ID: 89, to Indicator ID: 37, Requirements Code: 4.1.1, Description: Organized Barangay\r\nVAW Desk and\r\ndesignated Barangay\r\nVAW Desk Officer\r\n, and Sub Minimum Requirements: 0', '2025-03-06 11:29:58'),
(306, 1, 'admin', 'Updated Indicator: 4.1, Governance Code: 12, Area Description: FINANCIAL ADMINISTRATION AND SUSTAINABILITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 11:35:17'),
(307, 1, 'admin', 'Updated Indicator: 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 11:35:27'),
(308, 1, 'admin', 'Created a new Indicator with Governance Code: 12, Area Description: FINANCIAL ADMINISTRATION AND SUSTAINABILITY, Indicator Description: sdad', '2025-03-06 11:39:10'),
(309, 1, 'admin', 'Deleted an Indicator Description with Id: 38', '2025-03-06 11:39:18'),
(310, 1, 'admin', 'Updated Indicator: 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 11:43:38'),
(311, 1, 'admin', 'Updated Indicator: 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 11:43:51'),
(312, 1, 'admin', 'Updated Indicator: 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 11:44:41'),
(313, 1, 'admin', 'Updated Indicator: 4.1 → 4.12, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 12:19:22'),
(314, 1, 'admin', 'Updated Indicator: 4.12 → 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 12:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_assessment`
--

CREATE TABLE `barangay_assessment` (
  `keyctr` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL,
  `last_modified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_ready` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_assessment`
--

INSERT INTO `barangay_assessment` (`keyctr`, `barangay_id`, `last_modified`, `is_ready`) VALUES
(1, '104201001', '2025-03-06 08:27:19', 0),
(2, '104201002', '2025-03-04 04:41:08', 0),
(3, '104201003', '2025-03-04 04:41:08', 0),
(4, '104201004', '2025-03-04 04:41:08', 0),
(5, '104201005', '2025-03-04 04:41:08', 0),
(6, '104201006', '2025-03-04 04:41:08', 0),
(7, '104201007', '2025-03-04 04:41:08', 0),
(8, '104201008', '2025-03-04 04:41:08', 0),
(9, '104201009', '2025-03-04 04:41:08', 0),
(10, '104201010', '2025-03-04 04:41:08', 0),
(11, '104201011', '2025-03-04 04:41:08', 0),
(12, '104201012', '2025-03-04 04:41:08', 0),
(13, '104201013', '2025-03-04 04:41:08', 0),
(14, '104201014', '2025-03-04 04:41:08', 0),
(15, '104201015', '2025-03-04 04:41:08', 0),
(16, '104201016', '2025-03-04 04:41:08', 0),
(17, '104201017', '2025-03-04 04:41:08', 0),
(18, '104201018', '2025-03-04 04:41:08', 0),
(19, '104201019', '2025-03-04 04:41:08', 0),
(20, '104201020', '2025-03-04 04:41:08', 0),
(21, '104201021', '2025-03-04 04:41:08', 0),
(22, '104201022', '2025-03-04 04:41:08', 0),
(23, '104201023', '2025-03-04 04:41:08', 0),
(24, '104201024', '2025-03-04 04:41:08', 0),
(25, '104201025', '2025-03-04 04:41:08', 0),
(26, '104201026', '2025-03-04 04:41:08', 0),
(27, '104201027', '2025-03-04 04:41:08', 0),
(28, '104201028', '2025-03-04 04:41:08', 0),
(29, '104201029', '2025-03-04 04:41:08', 0),
(30, '104201030', '2025-03-04 04:41:08', 0),
(31, '104201031', '2025-03-04 04:41:08', 0),
(32, '104201032', '2025-03-04 04:41:08', 0),
(33, '104201033', '2025-03-04 04:41:08', 0),
(34, '104201034', '2025-03-04 04:41:08', 0),
(35, '104201035', '2025-03-04 04:41:08', 0),
(36, '104201036', '2025-03-04 04:41:08', 0),
(37, '104201037', '2025-03-04 04:41:08', 0),
(38, '104201038', '2025-03-04 04:41:08', 0);

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
(10, 'AREA I', 'Created at 2025-03-06 03:34:33'),
(11, 'AREA II', 'Created at 2025-03-06 03:35:04'),
(12, 'AREA III', 'Created at 2025-03-06 03:35:22'),
(13, 'AREA I', 'Created at 2025-03-06 03:37:06'),
(14, 'AREA II', 'Created at 2025-03-06 03:37:23'),
(15, 'AREA III', 'Created at 2025-03-06 03:37:48');

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
(10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', ''),
(11, 'DISASTER PREPAREDNESS', ''),
(12, 'SAFETY, PEACE AND ORDER', ''),
(13, 'SOCIAL PROTECTION AND SENSITIVITY', ''),
(14, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', ''),
(15, 'ENVIRONMENTAL MANAGEMENT', '');

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
  `min_requirement` tinyint(1) NOT NULL DEFAULT 0,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area_indicators`
--

INSERT INTO `maintenance_area_indicators` (`keyctr`, `governance_code`, `desc_keyctr`, `area_description`, `indicator_code`, `indicator_description`, `min_requirement`, `trail`) VALUES
(37, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.1', 'FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', 1, 'Updated at 2025-03-06 05:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_area_mininumreqs`
--

CREATE TABLE `maintenance_area_mininumreqs` (
  `keyctr` bigint(20) NOT NULL,
  `indicator_keyctr` bigint(20) NOT NULL,
  `reqs_code` varchar(10) NOT NULL,
  `relevance_definition` text NOT NULL,
  `description` text NOT NULL,
  `sub_mininumreqs` tinyint(1) NOT NULL DEFAULT 0,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_area_mininumreqs`
--

INSERT INTO `maintenance_area_mininumreqs` (`keyctr`, `indicator_keyctr`, `reqs_code`, `relevance_definition`, `description`, `sub_mininumreqs`, `trail`) VALUES
(89, 37, '4.1.1', 'asdads', 'Organized Barangay\r\nVAW Desk and\r\ndesignated Barangay\r\nVAW Desk Officer\r\n', 0, ''),
(90, 37, '4.1.2', '', 'Attendance of the\r\nBarangay VAW Desk\r\nOfficer to at least one (1)\r\ntraining/orientation\r\nrelated to\r\ngender-sensitive handling\r\nof VAW Cases not earlier\r\nthan CY 2020', 0, ''),
(91, 37, '4.1.3', '', 'Approved CY 2023\r\nBarangay Gender and\r\nDevelopment (GAD) Plan\r\nand Budget\r\n', 0, ''),
(92, 37, '4.1.4', '', 'Quarterly accomplishment\r\nreports based on the\r\ndatabase/records of VAW\r\ncases reported in the\r\nbarangay containing\r\nrelevant information such\r\nas total number of VAW\r\ncases received,\r\nassistance provided to\r\nvictim-survivors, total\r\nnumber of cases\r\ndocumented for violating\r\nRA 9262 and other\r\nVAW-related laws, total\r\nbarangay population,\r\nnumber of male and\r\nfemale in the barangay,\r\nand minor to adult ratio', 0, ''),
(93, 37, '342', 'test', 'asdas', 0, '');

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
(47, 2, 37, 89, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of Barangay VAW\r\nDesk and designated VAW Desk\r\nOfficer covering January to\r\nOctober 2023\r\n', 'etst', 5, 'Created at 2025-03-06 04:05:06'),
(48, 2, 37, 90, 0, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n', 'ww', 5, 'Created at 2025-03-06 04:09:07'),
(49, 2, 37, 89, 0, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n', 'asda', 5, 'Created at 2025-03-06 04:09:56');

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
(2, 'Version 1', 'Version for Year 2025 to 2028', '2025', 1, '', 0, 'Updated at 2025-03-06 03:33:47');

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
(5, 'SEC', 'Secretary', 'Created at 2025-03-06 04:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_governance`
--

CREATE TABLE `maintenance_governance` (
  `keyctr` bigint(20) NOT NULL,
  `cat_code` varchar(6) NOT NULL,
  `area_keyctr` bigint(20) NOT NULL,
  `desc_keyctr` bigint(20) NOT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_governance`
--

INSERT INTO `maintenance_governance` (`keyctr`, `cat_code`, `area_keyctr`, `desc_keyctr`, `trail`) VALUES
(12, 'CORE', 10, 10, 'Created at 2025-03-06 03:44:03'),
(13, 'CORE', 11, 11, 'Updated at 2025-03-06 03:44:45'),
(14, 'CORE', 12, 12, 'Created at 2025-03-06 03:44:55'),
(15, 'ESSE', 13, 13, 'Created at 2025-03-06 03:45:11'),
(16, 'ESSE', 14, 14, 'Created at 2025-03-06 03:45:20'),
(17, 'ESSE', 15, 15, 'Created at 2025-03-06 03:45:29');

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
(1, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 03:05:06'),
(2, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 03:05:06'),
(3, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 03:09:07'),
(4, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 03:09:07'),
(5, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 03:09:56'),
(6, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 03:09:56');

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
(61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:08:57'),
(62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-03-03 12:58:11'),
(63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-03 12:58:40'),
(64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-03-03 12:58:40'),
(65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:08:13'),
(66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:08:13'),
(67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:08:13'),
(68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:08:13'),
(69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:08:13'),
(75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:09:29'),
(76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:09:29'),
(77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:09:29'),
(78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:09:29'),
(79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-03 13:09:29'),
(93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 02:14:02'),
(94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 02:14:02'),
(95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 02:14:02'),
(96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 02:14:02'),
(97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 02:14:02'),
(98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-03-04 05:22:00'),
(99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-03-04 05:22:00'),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-04 06:11:42'),
(101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-04 06:11:42'),
(102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-04 06:11:42'),
(103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-04 06:11:42'),
(104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-04 06:11:42'),
(105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2025-03-04 06:11:42'),
(106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 06:12:22'),
(107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 06:12:22'),
(108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 06:12:22'),
(109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 06:12:22'),
(110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 06:12:22'),
(111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, '2025-03-04 06:12:22');

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
(24, 'sec', 1, 61, 62, '2025-03-03 12:58:11'),
(25, 'aud', 1, 63, 64, '2025-03-03 12:58:40'),
(26, 'sec2', 1, 98, 99, '2025-03-04 05:22:00');

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
(31, 'sec', 'sec', '$2y$10$LoGIYZouCJFlMgCdH8sLp.wf1rl8nsz4K5G/PNZDhoUBLxhWHExtu', 'sec@gmail.com', '9376206802', 24, 0, NULL, '2025-03-04 06:11:42'),
(32, 'aud', 'aud', '$2y$10$Ovdn/CZbxP0TK1Vd0jHxHuLVtrGAMwiVd414A9iG/JbH/dRLxdPfu', 'aud@gmail.com', '9376206889', 25, 0, NULL, '2025-03-04 06:12:22');

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
(1, 1, NULL, '2025-01-29 09:41:16');

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
(31, '104201001', NULL, 100, '2025-03-04 06:11:42'),
(31, '104201001', NULL, 101, '2025-03-04 06:11:42'),
(31, '104201001', NULL, 102, '2025-03-04 06:11:42'),
(31, '104201001', NULL, 103, '2025-03-04 06:11:42'),
(31, '104201001', NULL, 104, '2025-03-04 06:11:42'),
(31, '104201001', NULL, 105, '2025-03-04 06:11:42'),
(32, '104201001', NULL, 106, '2025-03-04 06:12:22'),
(32, '104201001', NULL, 107, '2025-03-04 06:12:22'),
(32, '104201001', NULL, 108, '2025-03-04 06:12:22'),
(32, '104201001', NULL, 109, '2025-03-04 06:12:22'),
(32, '104201001', NULL, 110, '2025-03-04 06:12:22'),
(32, '104201001', NULL, 111, '2025-03-04 06:12:22');

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
-- Indexes for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  ADD PRIMARY KEY (`keyctr`),
  ADD UNIQUE KEY `keyctr` (`keyctr`),
  ADD KEY `version_keyctr` (`version_keyctr`),
  ADD KEY `indicator_code` (`indicator_keyctr`),
  ADD KEY `minreqs_keyctr` (`minreqs_keyctr`);

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
-- Indexes for table `maintenance_governance`
--
ALTER TABLE `maintenance_governance`
  ADD PRIMARY KEY (`keyctr`),
  ADD KEY `cat_code` (`cat_code`),
  ADD KEY `area_keyctr` (`area_keyctr`),
  ADD KEY `desc_keyctr` (`desc_keyctr`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `barangay_assessment`
--
ALTER TABLE `barangay_assessment`
  MODIFY `keyctr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `barangay_assessment_files`
--
ALTER TABLE `barangay_assessment_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `maintenance_area`
--
ALTER TABLE `maintenance_area`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `maintenance_area_description`
--
ALTER TABLE `maintenance_area_description`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `maintenance_area_indicators`
--
ALTER TABLE `maintenance_area_indicators`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  MODIFY `keyctr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `maintenance_criteria_version`
--
ALTER TABLE `maintenance_criteria_version`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maintenance_document_source`
--
ALTER TABLE `maintenance_document_source`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenance_governance`
--
ALTER TABLE `maintenance_governance`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenance_governance`
--
ALTER TABLE `maintenance_governance`
  ADD CONSTRAINT `fk_area` FOREIGN KEY (`area_keyctr`) REFERENCES `maintenance_area` (`keyctr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_description` FOREIGN KEY (`desc_keyctr`) REFERENCES `maintenance_area_description` (`keyctr`) ON DELETE CASCADE ON UPDATE CASCADE;

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
