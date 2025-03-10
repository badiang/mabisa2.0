-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2025 at 03:03 AM
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
(37, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.1', 'FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', 1, 'Updated at 2025-03-06 05:19:26'),
(39, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.2', ' ACCESS TO HEALTH AND SOCIAL WELFARE SERVICES IN THE BARANGAY', 1, 'Created at 2025-03-06 06:38:02'),
(40, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.3', 'FUNCTIONALITY OF THE BARANGAY DEVELOPMENT COUNCIL (BDC)', 1, 'Created at 2025-03-06 06:49:02'),
(41, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.4', 'IMPLEMENTATION OF THE KASAMBAHAY LAW', 1, 'Updated at 2025-03-06 07:00:18'),
(42, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.5', 'FUNCTIONALITY OF THE BARANGAY COUNCIL FOR THE PROTECTION OF CHILDREN (BCPC)', 1, 'Updated at 2025-03-06 06:56:10'),
(43, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.6', 'MECHANISM FOR GENDER AND DEVELOPMENT (GAD)', 1, 'Created at 2025-03-06 07:12:46'),
(44, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.7', ' MAINTENANCE OF UPDATED RECORD OF BARANGAY INHABITANTS (RBIs)', 1, 'Created at 2025-03-06 07:14:02'),
(45, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.8', 'FUNCTIONALITY OF THE BARANGAY NUTRITION COMMITTEE (BNC)', 1, 'Created at 2025-03-06 07:15:43'),
(46, 15, 13, 'SOCIAL PROTECTION AND SENSITIVITY', '4.9', ' HALINA’T MAGTANIM NG PRUTAS AT GULAY (HAPAG) SA BARANGAY PROJECT', 1, 'Created at 2025-03-06 07:23:06'),
(47, 16, 14, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '5.1', 'POWER TO LEVY OTHER TAXES, FEES OR CHARGES', 1, 'Created at 2025-03-06 07:27:20'),
(48, 16, 14, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '5.2', 'COMPLIANCE TO SECTION 11 OF RA 11032 OR THE EASE OF DOING BUSINESS LAW', 1, 'Created at 2025-03-06 07:27:54'),
(49, 16, 14, 'BUSINESS-FRIENDLINESS AND COMPETITIVENESS', '5.3', 'ISSUANCE OF BARANGAY CERTIFICATION NOT COVERED BY DILG MC NO. 2019-177 SUCH AS: RESIDENCY, INDIGENCY, ETC, WITHIN SEVEN (7) WORKING DAYS', 1, 'Created at 2025-03-06 07:31:19'),
(50, 17, 15, 'ENVIRONMENTAL MANAGEMENT', '6.1', 'FUNCTIONALITY OF THE BARANGAY ECOLOGICAL SOLID WASTE MANAGEMENT COMMITTEE (BESWMC)', 1, 'Created at 2025-03-06 07:32:59'),
(51, 17, 15, 'ENVIRONMENTAL MANAGEMENT', '6.2', ' EXISTENCE OF A SOLID WASTE MANAGEMENT FACILITY PURSUANT TO R.A. 9003', 1, 'Created at 2025-03-06 07:37:29'),
(52, 17, 15, 'ENVIRONMENTAL MANAGEMENT', '6.3', 'PROVISION OF SUPPORT MECHANISMS FOR SEGREGATED COLLECTION', 1, 'Created at 2025-03-06 07:38:48'),
(234, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.1', 'COMPLIANCE  WITH THE BARANGAY  FULL  DISCLOSURE  POLICY(BFDP)', 1, 'Updated at 2025-03-06 09:38:46'),
(235, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.2', 'INNOVATIONS  ON REVENUE  GENERATIONOR  EXERCISE OF  CORPORATE  POWERS', 1, 'Created at 2025-03-06 09:34:58'),
(236, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.3', 'APPROVAL OF THE BARANGAY  BUDGET ON THE SPECIFIED TIMEFRAME', 1, 'Created at 2025-03-06 09:36:18'),
(253, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.4', 'ALLOCATION  FOR STATUTORY  PROGRAMS AND PROJECTS AS MANDATED BY LAWS AND/OR OTHER ISSUANCES', 1, 'Created at 2025-03-06 09:47:39'),
(254, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.5', ' POSTING OF THE BARANGAY CITIZEN’S CHARTER (CitCha)', 1, 'Created at 2025-03-06 09:48:16'),
(255, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.6', ' RELEASE OF  THE SANGGUNIANG  KABATAAN (SK)  FUNDS OF THE  BARANGAY', 1, 'Created at 2025-03-06 09:48:31'),
(256, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.7', 'CONDUCT OF  BARANGAY  ASSEMBLY', 1, 'Created at 2025-03-06 09:48:47'),
(257, 13, 11, 'DISASTER PREPAREDNESS', '2.1', 'FUNCTIONALITY  OF THE  BARANGAY  DISASTER RISK  REDUCTION AND  MANAGEMENT  COMMITTEE  (BDRRMC)', 1, 'Updated at 2025-03-06 09:53:27'),
(258, 13, 11, 'DISASTER PREPAREDNESS', '2.2', 'EXTENT OF RISK ASSESSMENT AND EARLY  WARNING  SYSTEM (EWS)', 1, 'Updated at 2025-03-06 09:54:51'),
(259, 13, 11, 'DISASTER PREPAREDNESS', '2.3', 'EXTENT OF  PREPAREDNESS  FOR EFFECTIVE  RESPONSE AND  RECOVERY', 1, 'Updated at 2025-03-06 09:54:58'),
(260, 14, 12, 'SAFETY, PEACE AND ORDER', '3.1', 'FUNCTIONALITY  OF THE  BARANGAY  ANTI-DRUGABUSE  COUNCIL (BADAC)', 1, 'Updated at 2025-03-06 09:55:16'),
(261, 14, 12, 'SAFETY, PEACE AND ORDER', '3.2', 'FUNCTIONALITY  OF THE  BARANGAY PEACE  AND ORDER  COMMITTEE  (BPOC)', 1, 'Updated at 2025-03-06 09:55:21'),
(262, 14, 12, 'SAFETY, PEACE AND ORDER', '3.3', 'FUNCTIONALITY  OF THE LUPONG  TAGAPAMAYAPA  (LT)', 1, 'Updated at 2025-03-06 09:55:26'),
(263, 14, 12, 'SAFETY, PEACE AND ORDER', '3.4', 'ORGANIZATION  AND  STRENGTHENING  CAPACITIES OF  BARANGAY TANOD', 1, 'Updated at 2025-03-06 09:55:32'),
(264, 14, 12, 'SAFETY, PEACE AND ORDER', '3.5', 'BARANGAY  INITIATIVES  DURING HEALTH  EMERGENCIES', 1, 'Updated at 2025-03-06 09:55:38'),
(265, 14, 12, 'SAFETY, PEACE AND ORDER', '3.6', 'CONDUCT OF  MONTHLY  BARANGAY ROAD  CLEARING  OPERATIONS  (BaRCo)', 1, 'Updated at 2025-03-06 09:55:45');

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
(94, 37, '4.1.1', 'Pursuant to Republic Act (RA) 9710,\notherwise known as the Magna Carta of\nWomen, is a comprehensive women’s\nhuman rights law that seeks to\neliminate discrimination against women\nby recognizing, protecting, fulfilling and\npromoting the rights of Filipino women,\nespecially those in the marginalized\nsectors. Section 12 D, Rule IV of the\nRules and Regulations Implementing\nthe Magna Carta of Women provides\nfor the establishment of a VAW desk in\nevery barangay to ensure that violence\nagainst women cases are fully\naddressed in a gender-responsive\nmanner.\n', 'Structure:\r\nOrganized Barangay\r\nVAW Desk and\r\ndesignated Barangay\r\nVAW Desk Officer', 0, ''),
(95, 37, '4.1.2', 'DILG-DSWD-DepEd-DOH-PCW JMC\r\n2010-224\r\n, Item 2.2., Designation of\r\nVAW Desk person – the Punong\r\nBarangay shall designate a VAW Desk\r\nperson who is trained in\r\ngender-sensitive handling of cases;\r\npreferably a woman Sangguniang\r\nMember or woman barangay tanod. In\r\ncases where there are no trained\r\npersonnel, ensure that the person\r\nassigned shall undergo basic gender\r\nsensitivity training and orientation on\r\nanti-VAW laws.\r\n', 'Training:\r\nAttendance of the\r\nBarangay VAW Desk\r\nOfficer to at least one (1)\r\ntraining/orientation\r\nrelated to\r\ngender-sensitive handling\r\nof VAW Cases not earlier\r\nthan CY 2020\r\n', 0, ''),
(96, 37, '4.1.3', 'Item 5.1.3. of DILG MC No. 2017-114\r\nstates that the barangay shall have the\r\napproved Barangay GAD Plan and\r\nBudget which contains\r\ngender-responsive programs and\r\nactivities to address gender-based\r\nviolence.\r\n', ' Plan and Budget:\r\nApproved CY 2023\r\nBarangay Gender and\r\nDevelopment (GAD) Plan\r\nand Budget', 0, ''),
(97, 37, '4.1.4', 'Item 5.1.4. of DILG MC No. 2017-114\r\nstates that the barangay shall prepare\r\nand submit quarterly accomplishment\r\nreports to the C/MSWDO and\r\nC/MLGOO within 10 days of the\r\nensuing month.\r\n', ' Accomplishment\r\nReports:\r\nQuarterly accomplishment\r\nreports based on the\r\ndatabase/records of VAW\r\ncases reported in the\r\nbarangay containing\r\nrelevant information such\r\nas total number of VAW\r\ncases received,\r\nassistance provided to\r\nvictim-survivors, total\r\nnumber of cases\r\ndocumented for violating\r\nRA 9262 and other\r\nVAW-related laws, total\r\nbarangay population,\r\nnumber of male and\r\nfemale in the barangay,\r\nand minor to adult ratio', 0, ''),
(98, 37, '4.1.5', 'Item 5.1.4. of DILG MC No. 2017-114\r\nalso states that the report must be\r\nbased on the database /record of VAW cases reported in the barangay and\r\ncontain relevant information such as\r\ntotal number of VAW cases received,\r\nassistance provided to victim-survivors,\r\ntotal number of cases documented for\r\nviolating RA 9262 and other\r\nVAW-related laws, etc.\r\n', ' Database:\r\nUpdated database on\r\nVAW cases reported to\r\nthe barangay, with the\r\nfollowing information at\r\nthe minimum:\r\na) total number of VAW\r\ncases received\r\n● number of cases\r\ndocumented for\r\nviolating RA 9262\r\n● number of cases\r\ndocumented for\r\nviolating other\r\nVAW-related laws\r\nb) assistance provided to\r\nvictim-survivors\r\n', 0, ''),
(99, 37, '4.1.6 ', 'Item 5.1.4. of DILG MC No. 2017-114\r\nstates that the barangay shall prepare\r\nand submit monthly accomplishment\r\nreports to the City/Municipal Social\r\nWelfare and Development Officer\r\n(C/MSWDO) and City/MunicipalGovernment Operations Officer\r\n(C/MLGOO) within 10 working days of\r\nthe ensuing month.\r\nPer PCW-DILG-DBM-NEDA JMC No.\r\n2016-01 (Amendments to\r\nPCW-DILG-DBM-NEDA JMC No.\r\n2013-01: Guidelines on the\r\nLocalization of the Magna Carta of\r\nWomen), the barangay shall prepare\r\nand submit their GAD Accomplishment\r\nReport of the preceding year and GAD\r\nPlan and Budget (GPB) proposal for the\r\nsucceeding year to the City/Municipal\r\nPlanning Development Office\r\n(C/MPDO) to ensure the alignment of\r\nthe barangay GAD programs, projects\r\nand activities (PPAs) with the priorities\r\nof the cities/municipalities exercising\r\njurisdiction over it.\r\nThe GPB shall be submitted not later\r\nthan March 31 to the DILG\r\nCity/Municipal Local Government\r\nOperations Officer (C/MLGOO) for\r\nreview and endorsement.\r\n', ' Accomplishment\r\nReports\r\n4.1.6.1. At least 50%\r\naccomplishment of thephysical targets in the GAD\r\nPlan\r\nOR\r\n4.1.6.2. At least 50% fund\r\nutilization of the CY 2023\r\nGAD Budget\r\n', 0, ''),
(100, 37, '4.1.7', 'Item 5.5.1.8. of DILG MC No. 2023-104\r\nstates that the Barangay VAW Desk\r\nOfficer shall maintain and regularly\r\nupdate a referral system and linkages\r\nto expedite the provision of services\r\nand resolution of cases.\r\n', 'Referral Network\r\n4.1.7.1. Presence of Referral\r\nSystem Flow Chart (For\r\nprofiling) ; and\r\n4.1.7.2. Presence of Directory\r\nof agencies/individuals\r\nproviding services to\r\nvictim-survivors (For\r\nprofiling)\r\n', 0, ''),
(101, 39, '4.2.1. ', 'Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsibility of a\r\nProvincial/City Nutrition Committee\r\nheaded by the Governor/City Mayor as\r\nChairperson.\r\nDILG JMC No. 2023-001 states that the\r\nPunong Barangay and Sangguniang\r\nBarangay are encouraged to appoint\r\nother barangay health officials such as\r\nBarangay Health Officer (BHO) or\r\nBarangay Health Assistant (BHAsst) to\r\nstrengthen the barangay health system.\r\n', 'Presence of a Barangay\r\nHealth Station/Center\r\nConsideration: Clustered Health\r\nStation/Center accessed by\r\nseveral barangays in a\r\ncity/municipality\r\n', 0, ''),
(102, 39, '4.2.2', 'Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsibility of a\r\nProvincial/City Nutrition Committee\r\nheaded by the Governor/City Mayor as\r\nChairperson.\r\nDILG JMC No. 2023-001 states that the\r\nPunong Barangay and Sangguniang\r\nBarangay are encouraged to appoint\r\nother barangay health officials such as\r\nBarangay Health Officer (BHO) or\r\nBarangay Health Assistant (BHAsst) to\r\nstrengthen the barangay health system.\r\n', 'Appointment of the\r\nfollowing Barangay Health\r\nPersonnel:\r\n1. Accredited Barangay\r\nHealth Worker (BHW);AND/OR\r\n2.Barangay Health Officer\r\n(BHO) or Barangay Health\r\nAssistant (BHAsst)\r\n', 0, ''),
(103, 39, '4.2.3.', 'Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsibility of a\r\nProvincial/City Nutrition Committee\r\nheaded by the Governor/City Mayor as\r\nChairperson.\r\nDILG JMC No. 2023-001 states that the\r\nPunong Barangay and Sangguniang\r\nBarangay are encouraged to appoint\r\nother barangay health officials such as\r\nBarangay Health Officer (BHO) or\r\nBarangay Health Assistant (BHAsst) to\r\nstrengthen the barangay health system.\r\n', 'Appointment of a\r\nBarangay Nutrition\r\nScholar (BNS)\r\n', 0, ''),
(104, 39, '4.2.4.', 'Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsibility of a\r\nProvincial/City Nutrition Committee\r\nheaded by the Governor/City Mayor as\r\nChairperson.\r\nDILG JMC No. 2023-001 states that the\r\nPunong Barangay and Sangguniang\r\nBarangay are encouraged to appoint\r\nother barangay health officials such as\r\nBarangay Health Officer (BHO) or\r\nBarangay Health Assistant (BHAsst) to\r\nstrengthen the barangay health system.\r\n', 'Availability of health\r\nservices in the BHS/C\r\nsuch as:\r\na) immunization\r\nb) maternal and child\r\nhealthcare\r\nc) family planning\r\nd) health education', 0, ''),
(105, 40, '4.3.1', 'As mandated under the LGC, Section\r\n106, “each local government unit shall\r\nhave a comprehensive, multi-sectoral\r\ndevelopment plan to be initiated by its\r\ndevelopment council and approved by\r\nits Sangguniang Barangay”. This plays\r\na pivotal role in the overall development\r\nand progress in setting the direction of\r\neconomy, social development and\r\ncoordinating development efforts within\r\nthe barangays.\r\n', 'Structure:\r\nOrganized BDC with its\r\ncomposition compliant to\r\nSection 107 of RA 7160', 0, ''),
(106, 40, '4.3.2', 'Section 112 of the Local Government\r\nCode of 1991, Sectoral or functional\r\ncommittees may be created by the BDC\r\nto assist them in the performance of\r\ntheir functions.\r\nArticle 182 (g) (3) (iv) of the IRR of the\r\nLGC of 1991, The sectoral or functional\r\ncommittees shall conduct public\r\nhearings on vital issues affecting the\r\nsector or function.\r\n', 'Meeting:\r\nConducted meetings,\r\npublic hearings, and/or\r\nbarangay assemblies for\r\npublic consultation', 0, ''),
(107, 40, '4.3.3', 'Section 106 of the Local Government\r\nCode of 1991 states that the BDC shall\r\nformulate a comprehensive\r\nmulti-sectoral development plan and be\r\napproved by its sanggunian', 'Plan\r\nApproved Barangay\r\nDevelopment Plan', 0, ''),
(108, 40, '4.3.4', 'Section 109 of the Local Government\r\nCode states that the BDC is mandated\r\nto monitor and evaluate the local\r\nprograms and projects. Hence, BDC\r\nshall ensure that planned projects are\r\nimplemented and executed efficiently\r\nand effectively, including the allocated\r\nfunds for purpose.\r\nItem (3) (c ) under Annex 2-C of the\r\nBDC Functionality Assessment\r\nTechnical Notes states that an\r\nAccomplishment Report shall be\r\nprepared annually to provide the status\r\nreport and overview of what was\r\nachieved during the given period. The\r\nAnnual report shall be submitted to the\r\nSangguniang Barangay and forwarded\r\nto the DILG.\r\n', 'Accomplishments\r\nReports:\r\n4.3.4 a) At least 50%\r\naccomplishment of the physical\r\ntargets in the BDP\r\nOR\r\n4.3.4 b) At least 50% fund\r\nutilization rate of the CY 2023\r\nBDP Budget\r\n', 0, ''),
(109, 41, '4.4.1 ', 'DILG MC No. 2013-6126 and Item 3.3 of\r\nDILG MC No. 2022-10027\r\n, state that the\r\nPunong barangay shall designate a\r\nKasambahay Desk Officer, through an\r\nExecutive Order, who shall manage the\r\nKasambahay Desk in the barangay.\r\n', ' Presence of Kasambahay\r\nDesk with designated\r\nKasambahay Desk\r\nOfficer (KDO)', 0, ''),
(110, 41, '4.4.2', 'DILG MC No. 2013-61 and Item 3.4.5 of\r\nDILG MC No. 2022-100,state that the\r\nPunong Barangay shall ensure that the\r\nKasambahay Desk Officer perform\r\nhis/her function, such as, but not limited\r\nto preparing and updating, as\r\nnecessary, the Kasambahay Masterlist\r\n(KR Form 2).\r\nSection 7 of the DILG MC No. 2013-61\r\nstates that the Punong Barangay\r\nthrough the Kasambahay Desk Officer\r\nshall submit to the local Public\r\nEmployment Service Office (PESO) a\r\nQuarterly Kasambahay Report.\r\nNote: Barangays without kasambahays,\r\nare also required to submit the KR\r\nForm 2 indicating that there are no\r\nregistered kasambahays.\r\n', 'Maintenance/updating of\r\na Kasambahay\r\nMasterlist', 0, ''),
(111, 42, '4.5.1 ', 'The Department issued DILG MC No.\r\n2021-03928 dated April 7, 2021 which provides for the guidelines for the\r\nestablishment and operation of LCPC,\r\nas well as for the monitoring and\r\nevaluation of the functionality of the\r\nsaid council.\r\nThe LCPC shall be organized in all local\r\ngovernment units through an Ordinance\r\nby the local Sanggunian or by an\r\nExecutive Order (EO) of the local chief\r\nexecutive. Thus, in every barangay,\r\nthere shall be a Barangay Council for\r\nthe Protection of Children (BCPC)', ' Structure:\r\nOrganized Barangay\r\nCouncil for Protection of\r\nChildren (BCPC) with its\r\ncomposition compliant to\r\nthe provisions of DILG\r\nMC No. 2021-039\r\n', 0, ''),
(112, 42, '4.5.2 ', 'Pursuant to DILG MC No. 2021-039,\r\nItem 5.3.2.5. the C/MCPC shall conduct\r\ncapability-building activities for all\r\nstakeholders on children including the\r\nbarangay level.\r\n', ' Trainings:\r\nAttendance of the\r\nMembers of the\r\nBarangay Council for\r\nProtection of Children\r\n(BCPC) to a\r\ntraining/orientation\r\nrelated to their functions\r\nnot earlier than CY 2020', 0, ''),
(113, 42, '4.5.3', 'DILG MC No. 2021-039, Item 5.3.1.2.\r\nstates that the BCPC shall prepare an\r\nAnnual Work and Financial Plan\r\n(AWFP-LCPC Form 001-A) consistent\r\nwith its functions as provided herein\r\nand in the Barangay EO creating it.\r\nThe BCPC’s AWFP shall be submitted\r\nto the barangay before the schedule of\r\nbudget preparations to ensure\r\nincorporation and funding in the\r\nBarangay Annual Investment Program\r\n(AIP). The AWFP shall be\r\naccompanied by a budget proposal or\r\ndraft Barangay Council Ordinance\r\nproviding funds for the BCPC.\r\n', 'Plan:\r\nPresence of an approved\r\nBCPC Annual Work and\r\nFinancial Plan', 0, ''),
(114, 42, '4.5.4', 'DILG MC No. 2021-039, Item 5.3.1.1.\r\nstates that the BCPC shall establish\r\nand maintain an updated and\r\ndisaggregated database on children\r\nwithin the barangay.\r\n', 'Database:\r\nEstablishment and\r\nmaintenance of updated\r\nDatabase on Children\r\ndisaggregated by age,\r\nsex, ethnicity, with or\r\nwithout disabilities,\r\nOSCY, etc.\r\n', 0, ''),
(115, 42, '4.5.5', 'Barangays are mandated to have a\r\nreferral system in place in the\r\nenforcement of the following protocols:\r\n1. Protocol for Case Management of\r\nChild Victims of Abuse, Neglect and\r\nExploitation (Resolution No. 1, 2.\r\n2013);\r\n2. Protocol to Reach Out to Street\r\nChildren;\r\n3. Handling Cases of Children at Risk\r\nand Children in Conflict with the\r\nLaw;\r\n4. Managing Cases of Children in\r\nConflict with the Law and Children at\r\nRisk; and\r\n5. Localization of the Comprehensive\r\nEmergency Program for Children\r\n(CEPC) of RA 10821, Children’s Emergency Relief and Protection\r\nAct\r\n', 'System:\r\na. Presence of updated\r\nLocalized Flow Chart of\r\nReferral System not\r\nearlier than CY 2020;\r\nb. Presence of\r\nComprehensive\r\nBarangay Juvenile\r\nIntervention\r\nProgram/Diversion\r\nProgram (For profiling);\r\nand\r\nc. Presence of Children at\r\nRisk (CAR) and Children\r\nin Conflict with the Law\r\n(CICL) registry (For\r\nprofiling).', 0, ''),
(116, 42, '4.5.6', 'At the barangay level, it is the Barangay\r\nCouncil for the Protection of Children\r\n(BCPC) that shall lead in the\r\nidentification, implementation and\r\nmonitoring of programs, projects, and\r\nactivities for the protection of children.\r\nItem 5.6.4.1.5. of DILG 2021-039 states\r\nthat the BCPC shall prepare and submit\r\nthe BCPC Annual Report, reflecting the\r\naccomplishments on children.\r\n', ' Accomplishment\r\nReports:\r\n4.5.6 a) At least 50%\r\naccomplishment of the\r\nphysical targets in the\r\nBCPC AWFP\r\nOR\r\n4.5.6 b) At least 50%\r\nutilization rate of CY\r\n2023 BCPC AWFP\r\nBudget', 0, ''),
(117, 43, '4.6.1 ', 'Section 36 of RA 9710 provides for the\r\ncreation and/or strengthening of the\r\nGAD Focal Points (GFP).\r\nAll departments, including their\r\nattached agencies, offices, bureaus,\r\nstates universities and colleges,\r\ngovernment-owned and controlled\r\ncorporations, local government units,\r\nand other government instrumentalities\r\nshall establish or strengthen their GAD\r\nFocal Point System or similar GAD\r\nmechanism to catalyze and accelerate\r\ngender mainstreaming within the\r\nagency or local government unit.\r\n', 'Organized Barangay\r\nGAD Focal Point\r\nSystem29', 0, ''),
(118, 44, '4.7.1 ', 'Section 394 (d)(6) of the Local\r\nGovernment Code provides that the\r\nbarangay secretary is mandated to\r\nkeep an updated record of all\r\ninhabitants of the barangay containing\r\nthe following items of information:\r\nname, address, place and date of birth,\r\nsex, civil status, citizenship, occupation, and such other items of information as\r\nmay be prescribed by law or ordinance\r\nBased on DILG MC No. 2008-14430\r\n, the\r\nregular updating of the RBI by the\r\nbarangay secretary is every six (6)\r\nmonths.\r\n[DILG MC No. 2008-144 remains the\r\nlatest policy]\r\n', 'Presence of updated RBI\r\nfor the first (1st) semester\r\nof CY 2023', 0, ''),
(119, 45, '4.8.1', 'DILG MC No. 2018-4231\r\n, item 1.4 states\r\nthat barangays shall organize,\r\nreorganize and strengthen functional\r\nlocal nutrition committees at the\r\nbarangay level.\r\nBased on the Trainer’s Manual on\r\nNutrition Program Management for LGUs published by the National\r\nNutrition Council in 2017 (Third\r\nPrinting), the BNC shall be composed\r\nof the following members:\r\n1. Barangay Captain (as chair)\r\n2. President of the Rural\r\nImprovement Club (RIC)\r\n3. President, Parent Teacher Child\r\nAssociation (PTCA)\r\n4. Head/President, local\r\norganization\r\n5. Sangguniang Members on\r\nHealth\r\n6. SK Chairperson\r\n7. Barangay Nutrition Scholar\r\n(BNS)\r\n8. Day Care Worker\r\n9. Barangay Nutrition Action\r\nAssociation (BNAO)\r\n10.School Principal\r\n11. Agriculture Technicians\r\n12.Rural Health Midwife (RHM)\r\n13.Other as may be identified\r\n', ' Structure:\r\nOrganized BNC', 0, ''),
(120, 45, '4.8.2', 'Based on the IRR of RA 1114832 under\r\nRule 13 Sec. 3 (c) (9) (ii), barangay\r\nshall be responsible for ensuring the\r\nfunctionality and effectiveness of the\r\nBarangay Nutrition Council (BNC)\r\nthrough the formulation of Barangay\r\nNutrition Action Plan (BNAP).\r\nDILG MC No. 2023-00133\r\nitem 6.2.2.3\r\nmandates the BNC to formulate,\r\nrevise/update the barangay nutrition\r\naction plan.\r\n', 'Plan:\r\nPresence of approved CY\r\n2023 BNAP', 0, ''),
(121, 45, '4.8.3', 'Malnutrition refers to the deficiencies,\r\nexcesses, or imbalances in an\r\nindividual\'s energy and/or nutrient\r\nintake. This includes stunting (low\r\nheight for age), wasting (low weight for\r\nheight), underweight (low weight for\r\nage), micronutrient deficiencies or\r\ninsufficiency and overweight (obesity).\r\nOperation Timbang (OPT) Plus is the\r\nannual weighing and height measurement of all preschoolers 0-59\r\nmonths old or below five years old in a\r\ncommunity to identify and locate the\r\nmalnourished children. Data generated\r\nthrough OPT Plus are used for local\r\nnutrition action planning, particularly in\r\nquantifying the number of malnourished\r\nand identifying who will be given priority\r\ninterventions in the community.\r\nMoreover, results of OPT Plus provide\r\ninformation on the nutritional status of\r\nthe preschoolers and the community in\r\ngeneral, thus, providing information on\r\nthe effectiveness of the local nutrition\r\nprogram.\r\n', 'Decrease in Prevalence\r\nRate in the barangay, for\r\nthe following categories:\r\n1. Underweight and\r\nSevere Underweight\r\n2. Stunting and Severe\r\nStunting;and\r\n3. Moderate Wasting and\r\nSevere Wasting', 0, ''),
(122, 45, '4.8.4 ', 'Item 2.2.9 of Local Budget\r\nMemorandum No. 85 states that all\r\nLGUs are enjoined to prioritize in the\r\nallocation of local funds the PPAs\r\nincluded in their respective local\r\nnutrition action plans. Thus, the\r\npresence of an Accomplishment Report\r\nis imperative to ensure that the targets\r\nin the BNAP are properly accomplished\r\nand monitored.\r\nSection V, Item 1.1 of DILG MC\r\n2018-42 mandates the formulation,\r\nrevision, or updating of the local\r\nnutrition action plan to incorporate\r\nprograms, projects, and activities that\r\ntarget families of nutritionally vulnerable\r\nindividuals.\r\nItem 1.10 of the same MC outlines the\r\nthe submission of Baranagy PPAN\r\nReport to City/Municipality Mayor thru\r\nC/MLGOO every 15th of January and\r\nJuly.\r\n', 'a) At least 50%\r\naccomplishment of the physical\r\ntargets in the CY 2023 BNAP OR\r\n b) At least 50% fund\r\nutilization rate of the CY 2023\r\nBNAP Budget', 0, ''),
(123, 46, '4.9.1', 'The Philippine Development Plan\r\n2023-2028 (Chapter 3. Reduce\r\nVulnerabilities and Protect Purchasing\r\nPower) provides that production in\r\nnon-agricultural areas, such as urban\r\nfarming, vertical or rooftop gardening,\r\nand school and community gardening,\r\nshall be further promoted for\r\nsubsistence supply as accessible food\r\nsources.\r\nFurther, the current Administration\r\nrecognizes the need to address hunger\r\nand ensure food security in the country.\r\nHence, in support of the said thrust of\r\nthe current administration and of the\r\nsaid PDP 2023-2028, the Department\r\nthrough the NBOO issued\r\nMemorandum Circular No. 2023-001\r\ndated January 3, 2023, entitled\r\n“Implementation of the Halina’t\r\nMagtanim ng Prutas at Gulay\r\n(HAPAG) sa Barangay Project” to\r\nserve as a strategy to diversify food\r\nsources and contribute to ensuring food\r\nsecurity in the country.\r\nThe Department launched the said\r\nProject dubbed as the “Araw ng\r\nPagkaing Masustansiya at Sapat or\r\nPagkaing MASA” on January 24, 2023\r\nand the Halina’t Magtanim ng Prutas at\r\nGulay (HAPAG) sa Barangay Project,\r\nKadiwa Ay Yaman (KAY), Plants for\r\nBountiful Barangays Movement (PBBM)\r\nor HAPAG KAY PBBM at the Rizal\r\nPark Open Air Auditorium, Manila, in\r\npartnership with the Department of\r\nAgriculture (DA) on March 1, 2023.', 'Established a Barangay\r\nCommunity Garden (BCG)', 0, ''),
(124, 46, '4.9.2', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Enacted Ordinance for\r\nthe Establishment of a\r\nBarangay Community Garden\r\n', 0, ''),
(125, 46, '4.9.3', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Designated SBM to\r\nManage the Barangay\r\nCommunity Garden', 0, ''),
(126, 46, '4.9.4', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Conducted at least One\r\n(1) Advocacy Campaign/\r\nAwareness on community\r\nhousehold gardening\r\n', 0, ''),
(127, 46, '4.9.5', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Established Group of\r\nVolunteers on the\r\nImplementation of the\r\nCommunity Garden', 0, ''),
(128, 47, '5.1.1', 'Each local government unit shall\r\nexercise its power to create its own\r\nsources of revenue and to levy taxes,\r\nfees, and charges subject to the\r\nprovisions of the Code, consistent with\r\nthe basic policy of local autonomy. Such\r\ntaxes, fees, and charges shall accrue\r\nexclusively to the local government\r\nunits (LGUs) as mandated under\r\nSection 129 of the Local Government\r\nCode of 1991.\r\n', 'Enacted Barangay Tax\r\nOrdinance pursuant to\r\nSec. 129 of the LGC', 0, ''),
(129, 48, '5.2.1', 'DILG-DPWH-DICT-DTI JMC 2018-0134\r\ndefines Building Permit as a document\r\nissued by the Building Official to an\r\nowner/applicant to proceed with the\r\nconstruction. installation, addition,\r\nalteration. renovation. conversion.\r\nrepair. moving demolition or other work\r\nactivity of a specific\r\nproject/building/structure or portions\r\nthereof after the accompanying principal\r\nplans, specifications and other pertinent\r\ndocuments with the duly notarized\r\napplication are found satisfactory and\r\nsubstantially conforming with\r\nthe National Building Code of the\r\nPhilippines and its IRR.\r\nIt also defines Locational Clearance as\r\nclearance issued by the Zoning\r\nAdministrator/Zoning Officer to a project\r\nthat is allowed under the provisions of\r\nan ordinance of a particular\r\nCity/Municipality. It is a requirement for\r\nthe issuance of Building Permit.\r\nBased on item 6.3.2.1. of DILG MC No.\r\n2019-17735 dated October 17, 2019, the\r\nSangguniang Barangay shall enact\r\nordinance relative to Barangay\r\nClearance fees on business permit and\r\nlocational clearance for building permit. Based on item 6.3.2.2. of DILG MC No.\r\n2019-177 dated October 17, 2019, the\r\nSangguniang Barangay shall pass a\r\nresolution authorizing the City/Municipal\r\nTreasurer to collect fees for Barangay\r\nClearance for Business permit and\r\nlocational clearance purposes.\r\n', 'Enacted Barangay\r\nOrdinance relative to\r\nBarangay Clearance fees\r\non business permit and\r\nlocational clearance for\r\nbuilding permit pursuant\r\nto DILG MC No.\r\n2019-177\r\n', 0, ''),
(130, 48, '5.2.2', 'DILG-DPWH-DICT-DTI JMC 2018-0134\r\ndefines Building Permit as a document\r\nissued by the Building Official to an\r\nowner/applicant to proceed with the\r\nconstruction. installation, addition,\r\nalteration. renovation. conversion.\r\nrepair. moving demolition or other work\r\nactivity of a specific\r\nproject/building/structure or portions\r\nthereof after the accompanying principal\r\nplans, specifications and other pertinent\r\ndocuments with the duly notarized\r\napplication are found satisfactory and\r\nsubstantially conforming with\r\nthe National Building Code of the\r\nPhilippines and its IRR.\r\nIt also defines Locational Clearance as\r\nclearance issued by the Zoning\r\nAdministrator/Zoning Officer to a project\r\nthat is allowed under the provisions of\r\nan ordinance of a particular\r\nCity/Municipality. It is a requirement for\r\nthe issuance of Building Permit.\r\nBased on item 6.3.2.1. of DILG MC No.\r\n2019-17735 dated October 17, 2019, the\r\nSangguniang Barangay shall enact\r\nordinance relative to Barangay\r\nClearance fees on business permit and\r\nlocational clearance for building permit. Based on item 6.3.2.2. of DILG MC No.\r\n2019-177 dated October 17, 2019, the\r\nSangguniang Barangay shall pass a\r\nresolution authorizing the City/Municipal\r\nTreasurer to collect fees for Barangay\r\nClearance for Business permit and\r\nlocational clearance purposes.\r\n', 'Approved resolution\r\nauthorizing the\r\nCity/Municipal Treasurer\r\nto collect fees for\r\nBarangay Clearance for\r\nBusiness permit and\r\nlocational clearance\r\npurposes pursuant to\r\nDILG MC No. 2019-177.\r\n', 0, ''),
(131, 49, '5.3.1 ', 'Based on Section 152(c) of the Local\r\nGovernment Code of 1991 the\r\napplication for barangay certification\r\nshall be acted upon within seven (7)\r\nworking days from the filing thereof. In\r\nthe event that the certification is not\r\nissued within the said period, the city or\r\nmunicipality may issue the said license\r\nor permit.\r\n', 'Presence of a Citizens’\r\nCharter on the issuance\r\nof barangay certification\r\nposted in the barangay\r\nhall', 0, ''),
(132, 50, '6.1.1', 'For efficient, effective and economical\r\ngovernance, the purpose of which is\r\nthe general welfare of the barangay\r\nand its inhabitants pursuant to Section\r\n16 of the Local Government Code of\r\n1991, the Punong Barangay shall\r\nenforce laws and regulations relating\r\nto pollution control and protection of\r\nthe environment.\r\nRule VI, Section 6 and 7 of IRR of\r\nRepublic Act 900336 provides for the\r\ncreation of the Barangay Ecological\r\nSolid Waste Management Committee\r\nand its functions and responsibilities', 'Structure\r\nOrganized BESWMC\r\nwith composition\r\ncompliant to DILG MC\r\nNo. 2018-112', 0, ''),
(133, 50, '6.1.2', 'Rule VI, Section 6 (a) of IRR of R.A.\r\n9003 provides for the formulation of\r\nthe solid waste management program consistent with the city/municipality\r\nplan\r\nSec 5, Rule XV of the IRR of R.A.\r\n9003 provides that Barangay councils\r\nmay issue council resolutions to\r\nestablish ordinances for the creation\r\nof a Local Solid Waste Management\r\nFund (also known as the Local Fund),\r\npursuant to the relevant provisions of\r\nRA 7160.\r\nSection 5.3.4 of DILG MC No.\r\n2018-11237 dated July 12, 2018 with\r\nthe subject: Organization or\r\nReorganization of the BArangay\r\nEcological Solid Waste Management\r\nCommittee (BESWMC) provides that\r\nthe BESWMC shall allocate barangay\r\nfunds for the ecological solid waste\r\nmanagement program, approved by\r\nthe sangguniang barangay', 'Plan\r\nApproved Solid Waste\r\nManagement\r\nProgram/Plan with\r\ncorresponding fund\r\nallocation', 0, ''),
(134, 50, '6.1.3', 'Item No. 5.3.6. of the same MC states\r\nthat the BESWMC shall conduct\r\nbarangay-initiated training for\r\nresidents on segregation, composting,\r\nrecycling, livelihood, and other\r\nenvironmental-related activities to\r\npromote environmental protection,\r\npreservation and awareness.\r\n', 'Trainings\r\nAttendance of BESWMC\r\nto necessary training\r\nrelated to promoting\r\nenvironmental protection,\r\npreservation and\r\nawareness not earlier\r\nthan CY 2020\r\n', 0, ''),
(135, 50, '6.1.4', 'Item 5.3.9 of DILG MC No. 2018-112\r\nstates that the BESWMC shall prepare\r\nand submit a monthly accomplishment\r\nreport on the implementation status of\r\nits PPAs and deliverables based on\r\nthe approved BESWMC Program. The\r\nsaid report shall be submitted to\r\nC/MENRO or C/MSWM Board not\r\nlater than the 5th day of every month,\r\ncopy furnished to the concerned City\r\nDirector or the C/MLGOO for\r\nmonitoring purposes.\r\n', 'Accomplishment\r\nReports:\r\n6.1.4 a) At least 50%\r\naccomplishment of the physical\r\ntargets in the BESWMP\r\nOR\r\n6.1.4 b) At least 50% utilization\r\nrate of CY 2023 BESWM\r\nBudget\r\n', 0, ''),
(136, 51, '6.2.1 ', 'Per section 5.3.3 of DILG MC No.\r\n2018-112, a Materials Recovery\r\nFacility (MRF) in every barangay or\r\ncluster of barangays must be\r\nestablished whether in a\r\nbarangay-owned, leased land, or any\r\nsuitable open space to be determined\r\nby the barangay through its\r\nSanggunian.\r\nSection 33 of RA 9003 provides that,\r\n“Materials recovery facility shall be\r\ndesigned to receive, sort, process,\r\nand store compostable and recyclable\r\nmaterial efficiently and in an\r\nenvironmentally sound manner. That\r\nfacility shall address the following\r\nconsiderations: (a) The building and/or\r\nland layout and equipment must be\r\ndesigned to accommodate efficient and safe materials processing,\r\nmovement, and storage; and (b) The\r\nbuilding must be designed to allow\r\nefficient and safe external access and\r\nto accommodate internal flow.”\r\nDILG MC No. 2018-20738 states that\r\nMaterials Recovery System (MRS)\r\ncan be accepted in locations where\r\nthere is limited space to establish an\r\nMRS. For purposes of the validation, a\r\nMemorandum of Agreement (MOA)\r\nwith the existing junk shop and/or the\r\npresence of other materials recovery\r\nscheme is the other basis of its\r\nfunctionality.\r\n', 'Presence of a Materials\r\nRecovery Facility (MRF)/\r\nMaterials Recovery\r\nSystem (MRS)\r\n- Established MRF\r\noperated by the barangay\r\n- MRS\r\n- Clustered MRF', 0, ''),
(137, 52, '6.3.1', 'Section 10 of R.A. No. 9003 stipulates\r\nthe segregation and collection of solid waste shall be conducted at the\r\nbarangay level specifically for\r\nbiodegradable, compostable, and\r\nreusable wastes.\r\n', ' Enacted Barangay\r\nOrdinance or similar issuance on segregation\r\nof wastes at-source\r\n', 0, ''),
(294, 237, '4.1.1', 'Pursuant to Republic Act (RA) 9710,\r\notherwise known as the Magna Carta of\r\nWomen, is a comprehensive women’s\r\nhuman rights law that seeks to\r\neliminate discrimination against women\r\nby recognizing, protecting, fulfilling and\r\npromoting the rights of Filipino women,\r\nespecially those in the marginalized\r\nsectors. Section 12 D, Rule IV of the\r\nRules and Regulations Implementing\r\nthe Magna Carta of Women provides\r\nfor the establishment of a VAW desk in\r\nevery barangay to ensure that violence\r\nagainst women cases are fully\r\naddressed in a gender-responsive\r\nmanner.\r\n', 'Structure:\r\nOrganized Barangay\r\nVAW Desk and\r\ndesignated Barangay\r\nVAW Desk Officer', 0, ''),
(295, 237, '4.1.2', 'DILG-DSWD-DepEd-DOH-PCW JMC\r\n2010-224\r\n, Item 2.2., Designation of\r\nVAW Desk person – the Punong\r\nBarangay shall designate a VAW Desk\r\nperson who is trained in\r\ngender-sensitive handling of cases;\r\npreferably a woman Sangguniang\r\nMember or woman barangay tanod. In\r\ncases where there are no trained\r\npersonnel, ensure that the person\r\nassigned shall undergo basic gender\r\nsensitivity training and orientation on\r\nanti-VAW laws.\r\n', 'Training:\r\nAttendance of the\r\nBarangay VAW Desk\r\nOfficer to at least one (1)\r\ntraining/orientation\r\nrelated to\r\ngender-sensitive handling\r\nof VAW Cases not earlier\r\nthan CY 2020\r\n', 0, ''),
(296, 237, '4.1.3', 'Item 5.1.3. of DILG MC No. 2017-114\r\nstates that the barangay shall have the\r\napproved Barangay GAD Plan and\r\nBudget which contains\r\ngender-responsive programs and\r\nactivities to address gender-based\r\nviolence.\r\n', ' Plan and Budget:\r\nApproved CY 2023\r\nBarangay Gender and\r\nDevelopment (GAD) Plan\r\nand Budget', 0, ''),
(297, 237, '4.1.4', 'Item 5.1.4. of DILG MC No. 2017-114\r\nstates that the barangay shall prepare\r\nand submit quarterly accomplishment\r\nreports to the C/MSWDO and\r\nC/MLGOO within 10 days of the\r\nensuing month.\r\n', ' Accomplishment\r\nReports:\r\nQuarterly accomplishment\r\nreports based on the\r\ndatabase/records of VAW\r\ncases reported in the\r\nbarangay containing\r\nrelevant information such\r\nas total number of VAW\r\ncases received,\r\nassistance provided to\r\nvictim-survivors, total\r\nnumber of cases\r\ndocumented for violating\r\nRA 9262 and other\r\nVAW-related laws, total\r\nbarangay population,\r\nnumber of male and\r\nfemale in the barangay,\r\nand minor to adult ratio', 0, ''),
(298, 237, '4.1.5', 'Item 5.1.4. of DILG MC No. 2017-114\r\nalso states that the report must be\r\nbased on the database /record of VAW cases reported in the barangay and\r\ncontain relevant information such as\r\ntotal number of VAW cases received,\r\nassistance provided to victim-survivors,\r\ntotal number of cases documented for\r\nviolating RA 9262 and other\r\nVAW-related laws, etc.\r\n', ' Database:\r\nUpdated database on\r\nVAW cases reported to\r\nthe barangay, with the\r\nfollowing information at\r\nthe minimum:\r\na) total number of VAW\r\ncases received\r\n● number of cases\r\ndocumented for\r\nviolating RA 9262\r\n● number of cases\r\ndocumented for\r\nviolating other\r\nVAW-related laws\r\nb) assistance provided to\r\nvictim-survivors\r\n', 0, ''),
(299, 237, '4.1.6 ', 'Item 5.1.4. of DILG MC No. 2017-114\r\nstates that the barangay shall prepare\r\nand submit monthly accomplishment\r\nreports to the City/Municipal Social\r\nWelfare and Development Officer\r\n(C/MSWDO) and City/MunicipalGovernment Operations Officer\r\n(C/MLGOO) within 10 working days of\r\nthe ensuing month.\r\nPer PCW-DILG-DBM-NEDA JMC No.\r\n2016-01 (Amendments to\r\nPCW-DILG-DBM-NEDA JMC No.\r\n2013-01: Guidelines on the\r\nLocalization of the Magna Carta of\r\nWomen), the barangay shall prepare\r\nand submit their GAD Accomplishment\r\nReport of the preceding year and GAD\r\nPlan and Budget (GPB) proposal for the\r\nsucceeding year to the City/Municipal\r\nPlanning Development Office\r\n(C/MPDO) to ensure the alignment of\r\nthe barangay GAD programs, projects\r\nand activities (PPAs) with the priorities\r\nof the cities/municipalities exercising\r\njurisdiction over it.\r\nThe GPB shall be submitted not later\r\nthan March 31 to the DILG\r\nCity/Municipal Local Government\r\nOperations Officer (C/MLGOO) for\r\nreview and endorsement.\r\n', ' Accomplishment\r\nReports\r\n4.1.6.1. At least 50%\r\naccomplishment of thephysical targets in the GAD\r\nPlan\r\nOR\r\n4.1.6.2. At least 50% fund\r\nutilization of the CY 2023\r\nGAD Budget\r\n', 0, ''),
(300, 237, '4.1.7', 'Item 5.5.1.8. of DILG MC No. 2023-104\r\nstates that the Barangay VAW Desk\r\nOfficer shall maintain and regularly\r\nupdate a referral system and linkages\r\nto expedite the provision of services\r\nand resolution of cases.\r\n', 'Referral Network\r\n4.1.7.1. Presence of Referral\r\nSystem Flow Chart (For\r\nprofiling) ; and\r\n4.1.7.2. Presence of Directory\r\nof agencies/individuals\r\nproviding services to\r\nvictim-survivors (For\r\nprofiling)\r\n', 0, ''),
(301, 239, '4.2.1. ', 'Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsibility of a\r\nProvincial/City Nutrition Committee\r\nheaded by the Governor/City Mayor as\r\nChairperson.\r\nDILG JMC No. 2023-001 states that the\r\nPunong Barangay and Sangguniang\r\nBarangay are encouraged to appoint\r\nother barangay health officials such as\r\nBarangay Health Officer (BHO) or\r\nBarangay Health Assistant (BHAsst) to\r\nstrengthen the barangay health system.\r\n', 'Presence of a Barangay\r\nHealth Station/Center\r\nConsideration: Clustered Health\r\nStation/Center accessed by\r\nseveral barangays in a\r\ncity/municipality\r\n', 0, ''),
(302, 239, '4.2.2', 'Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsibility of a\r\nProvincial/City Nutrition Committee\r\nheaded by the Governor/City Mayor as\r\nChairperson.\r\nDILG JMC No. 2023-001 states that the\r\nPunong Barangay and Sangguniang\r\nBarangay are encouraged to appoint\r\nother barangay health officials such as\r\nBarangay Health Officer (BHO) or\r\nBarangay Health Assistant (BHAsst) to\r\nstrengthen the barangay health system.\r\n', 'Appointment of the\r\nfollowing Barangay Health\r\nPersonnel:\r\n1. Accredited Barangay\r\nHealth Worker (BHW);AND/OR\r\n2.Barangay Health Officer\r\n(BHO) or Barangay Health\r\nAssistant (BHAsst)\r\n', 0, ''),
(303, 239, '4.2.3.', 'Part of the discharged function and responsibility of the national agencies and offices that have been devolved pursuant to the Local Government Code (LGC) of 1991 is the maintenance of health and social welfare services including services and facilities related to general hygiene and sanitation. Section 8 of PD 156925 states that the implementation of the project shall be the total responsibility of a Provincial/City Nutrition Committee headed by the Governor/City Mayor as Chairperson. DILG JMC No. 2023-001 states that the Punong Barangay and Sangguniang Barangay are encouraged to appoint other barangay health officials such as Barangay Health Officer (BHO) or Barangay Health Assistant (BHAsst) to strengthen the barangay health system. ', 'Appointment of a\r\nBarangay Nutrition\r\nScholar (BNS)\r\n', 0, ''),
(304, 239, '4.2.4.', 'Part of the discharged function and responsibility of the national agencies and offices that have been devolved pursuant to the Local Government Code (LGC) of 1991 is the maintenance of health and social welfare services including services and facilities related to general hygiene and sanitation. Section 8 of PD 156925 states that the implementation of the project shall be the total responsibility of a Provincial/City Nutrition Committee headed by the Governor/City Mayor as Chairperson. DILG JMC No. 2023-001 states that the Punong Barangay and Sangguniang Barangay are encouraged to appoint other barangay health officials such as Barangay Health Officer (BHO) or Barangay Health Assistant (BHAsst) to strengthen the barangay health system. ', 'Availability of health\r\nservices in the BHS/C\r\nsuch as:\r\na) immunization\r\nb) maternal and child\r\nhealthcare\r\nc) family planning\r\nd) health education', 0, ''),
(305, 240, '4.3.1', 'As mandated under the LGC, Section\r\n106, “each local government unit shall\r\nhave a comprehensive, multi-sectoral\r\ndevelopment plan to be initiated by its\r\ndevelopment council and approved by\r\nits Sangguniang Barangay”. This plays\r\na pivotal role in the overall development\r\nand progress in setting the direction of\r\neconomy, social development and\r\ncoordinating development efforts within\r\nthe barangays.\r\n', 'Structure:\r\nOrganized BDC with its\r\ncomposition compliant to\r\nSection 107 of RA 7160', 0, ''),
(306, 240, '4.3.2', 'Section 112 of the Local Government\r\nCode of 1991, Sectoral or functional\r\ncommittees may be created by the BDC\r\nto assist them in the performance of\r\ntheir functions.\r\nArticle 182 (g) (3) (iv) of the IRR of the\r\nLGC of 1991, The sectoral or functional\r\ncommittees shall conduct public\r\nhearings on vital issues affecting the\r\nsector or function.\r\n', 'Meeting:\r\nConducted meetings,\r\npublic hearings, and/or\r\nbarangay assemblies for\r\npublic consultation', 0, ''),
(307, 240, '4.3.3', 'Section 106 of the Local Government\r\nCode of 1991 states that the BDC shall\r\nformulate a comprehensive\r\nmulti-sectoral development plan and be\r\napproved by its sanggunian', 'Plan\r\nApproved Barangay\r\nDevelopment Plan', 0, ''),
(308, 240, '4.3.4', 'Section 109 of the Local Government\r\nCode states that the BDC is mandated\r\nto monitor and evaluate the local\r\nprograms and projects. Hence, BDC\r\nshall ensure that planned projects are\r\nimplemented and executed efficiently\r\nand effectively, including the allocated\r\nfunds for purpose.\r\nItem (3) (c ) under Annex 2-C of the\r\nBDC Functionality Assessment\r\nTechnical Notes states that an\r\nAccomplishment Report shall be\r\nprepared annually to provide the status\r\nreport and overview of what was\r\nachieved during the given period. The\r\nAnnual report shall be submitted to the\r\nSangguniang Barangay and forwarded\r\nto the DILG.\r\n', 'Accomplishments\r\nReports:\r\n4.3.4 a) At least 50%\r\naccomplishment of the physical\r\ntargets in the BDP\r\nOR\r\n4.3.4 b) At least 50% fund\r\nutilization rate of the CY 2023\r\nBDP Budget\r\n', 0, ''),
(309, 241, '4.4.1 ', 'DILG MC No. 2013-6126 and Item 3.3 of\r\nDILG MC No. 2022-10027\r\n, state that the\r\nPunong barangay shall designate a\r\nKasambahay Desk Officer, through an\r\nExecutive Order, who shall manage the\r\nKasambahay Desk in the barangay.\r\n', ' Presence of Kasambahay\r\nDesk with designated\r\nKasambahay Desk\r\nOfficer (KDO)', 0, ''),
(310, 241, '4.4.2', 'DILG MC No. 2013-61 and Item 3.4.5 of\r\nDILG MC No. 2022-100,state that the\r\nPunong Barangay shall ensure that the\r\nKasambahay Desk Officer perform\r\nhis/her function, such as, but not limited\r\nto preparing and updating, as\r\nnecessary, the Kasambahay Masterlist\r\n(KR Form 2).\r\nSection 7 of the DILG MC No. 2013-61\r\nstates that the Punong Barangay\r\nthrough the Kasambahay Desk Officer\r\nshall submit to the local Public\r\nEmployment Service Office (PESO) a\r\nQuarterly Kasambahay Report.\r\nNote: Barangays without kasambahays,\r\nare also required to submit the KR\r\nForm 2 indicating that there are no\r\nregistered kasambahays.\r\n', 'Maintenance/updating of\r\na Kasambahay\r\nMasterlist', 0, ''),
(311, 242, '4.5.1 ', 'The Department issued DILG MC No.\r\n2021-03928 dated April 7, 2021 which provides for the guidelines for the\r\nestablishment and operation of LCPC,\r\nas well as for the monitoring and\r\nevaluation of the functionality of the\r\nsaid council.\r\nThe LCPC shall be organized in all local\r\ngovernment units through an Ordinance\r\nby the local Sanggunian or by an\r\nExecutive Order (EO) of the local chief\r\nexecutive. Thus, in every barangay,\r\nthere shall be a Barangay Council for\r\nthe Protection of Children (BCPC)', ' Structure:\r\nOrganized Barangay\r\nCouncil for Protection of\r\nChildren (BCPC) with its\r\ncomposition compliant to\r\nthe provisions of DILG\r\nMC No. 2021-039\r\n', 0, '');
INSERT INTO `maintenance_area_mininumreqs` (`keyctr`, `indicator_keyctr`, `reqs_code`, `relevance_definition`, `description`, `sub_mininumreqs`, `trail`) VALUES
(312, 242, '4.5.2 ', 'Pursuant to DILG MC No. 2021-039,\r\nItem 5.3.2.5. the C/MCPC shall conduct\r\ncapability-building activities for all\r\nstakeholders on children including the\r\nbarangay level.\r\n', ' Trainings:\r\nAttendance of the\r\nMembers of the\r\nBarangay Council for\r\nProtection of Children\r\n(BCPC) to a\r\ntraining/orientation\r\nrelated to their functions\r\nnot earlier than CY 2020', 0, ''),
(313, 242, '4.5.3', 'DILG MC No. 2021-039, Item 5.3.1.2.\r\nstates that the BCPC shall prepare an\r\nAnnual Work and Financial Plan\r\n(AWFP-LCPC Form 001-A) consistent\r\nwith its functions as provided herein\r\nand in the Barangay EO creating it.\r\nThe BCPC’s AWFP shall be submitted\r\nto the barangay before the schedule of\r\nbudget preparations to ensure\r\nincorporation and funding in the\r\nBarangay Annual Investment Program\r\n(AIP). The AWFP shall be\r\naccompanied by a budget proposal or\r\ndraft Barangay Council Ordinance\r\nproviding funds for the BCPC.\r\n', 'Plan:\r\nPresence of an approved\r\nBCPC Annual Work and\r\nFinancial Plan', 0, ''),
(314, 242, '4.5.4', 'DILG MC No. 2021-039, Item 5.3.1.1.\r\nstates that the BCPC shall establish\r\nand maintain an updated and\r\ndisaggregated database on children\r\nwithin the barangay.\r\n', 'Database:\r\nEstablishment and\r\nmaintenance of updated\r\nDatabase on Children\r\ndisaggregated by age,\r\nsex, ethnicity, with or\r\nwithout disabilities,\r\nOSCY, etc.\r\n', 0, ''),
(315, 242, '4.5.5', 'Barangays are mandated to have a\r\nreferral system in place in the\r\nenforcement of the following protocols:\r\n1. Protocol for Case Management of\r\nChild Victims of Abuse, Neglect and\r\nExploitation (Resolution No. 1, 2.\r\n2013);\r\n2. Protocol to Reach Out to Street\r\nChildren;\r\n3. Handling Cases of Children at Risk\r\nand Children in Conflict with the\r\nLaw;\r\n4. Managing Cases of Children in\r\nConflict with the Law and Children at\r\nRisk; and\r\n5. Localization of the Comprehensive\r\nEmergency Program for Children\r\n(CEPC) of RA 10821, Children’s Emergency Relief and Protection\r\nAct\r\n', 'System:\r\na. Presence of updated\r\nLocalized Flow Chart of\r\nReferral System not\r\nearlier than CY 2020;\r\nb. Presence of\r\nComprehensive\r\nBarangay Juvenile\r\nIntervention\r\nProgram/Diversion\r\nProgram (For profiling);\r\nand\r\nc. Presence of Children at\r\nRisk (CAR) and Children\r\nin Conflict with the Law\r\n(CICL) registry (For\r\nprofiling).', 0, ''),
(316, 242, '4.5.6', 'At the barangay level, it is the Barangay\r\nCouncil for the Protection of Children\r\n(BCPC) that shall lead in the\r\nidentification, implementation and\r\nmonitoring of programs, projects, and\r\nactivities for the protection of children.\r\nItem 5.6.4.1.5. of DILG 2021-039 states\r\nthat the BCPC shall prepare and submit\r\nthe BCPC Annual Report, reflecting the\r\naccomplishments on children.\r\n', ' Accomplishment\r\nReports:\r\n4.5.6 a) At least 50%\r\naccomplishment of the\r\nphysical targets in the\r\nBCPC AWFP\r\nOR\r\n4.5.6 b) At least 50%\r\nutilization rate of CY\r\n2023 BCPC AWFP\r\nBudget', 0, ''),
(317, 243, '4.6.1 ', 'Section 36 of RA 9710 provides for the\r\ncreation and/or strengthening of the\r\nGAD Focal Points (GFP).\r\nAll departments, including their\r\nattached agencies, offices, bureaus,\r\nstates universities and colleges,\r\ngovernment-owned and controlled\r\ncorporations, local government units,\r\nand other government instrumentalities\r\nshall establish or strengthen their GAD\r\nFocal Point System or similar GAD\r\nmechanism to catalyze and accelerate\r\ngender mainstreaming within the\r\nagency or local government unit.\r\n', 'Organized Barangay\r\nGAD Focal Point\r\nSystem29', 0, ''),
(318, 244, '4.7.1 ', 'Section 394 (d)(6) of the Local\r\nGovernment Code provides that the\r\nbarangay secretary is mandated to\r\nkeep an updated record of all\r\ninhabitants of the barangay containing\r\nthe following items of information:\r\nname, address, place and date of birth,\r\nsex, civil status, citizenship, occupation, and such other items of information as\r\nmay be prescribed by law or ordinance\r\nBased on DILG MC No. 2008-14430\r\n, the\r\nregular updating of the RBI by the\r\nbarangay secretary is every six (6)\r\nmonths.\r\n[DILG MC No. 2008-144 remains the\r\nlatest policy]\r\n', 'Presence of updated RBI\r\nfor the first (1st) semester\r\nof CY 2023', 0, ''),
(319, 245, '4.8.1', 'DILG MC No. 2018-4231\r\n, item 1.4 states\r\nthat barangays shall organize,\r\nreorganize and strengthen functional\r\nlocal nutrition committees at the\r\nbarangay level.\r\nBased on the Trainer’s Manual on\r\nNutrition Program Management for LGUs published by the National\r\nNutrition Council in 2017 (Third\r\nPrinting), the BNC shall be composed\r\nof the following members:\r\n1. Barangay Captain (as chair)\r\n2. President of the Rural\r\nImprovement Club (RIC)\r\n3. President, Parent Teacher Child\r\nAssociation (PTCA)\r\n4. Head/President, local\r\norganization\r\n5. Sangguniang Members on\r\nHealth\r\n6. SK Chairperson\r\n7. Barangay Nutrition Scholar\r\n(BNS)\r\n8. Day Care Worker\r\n9. Barangay Nutrition Action\r\nAssociation (BNAO)\r\n10.School Principal\r\n11. Agriculture Technicians\r\n12.Rural Health Midwife (RHM)\r\n13.Other as may be identified\r\n', ' Structure:\r\nOrganized BNC', 0, ''),
(320, 245, '4.8.2', 'Based on the IRR of RA 1114832 under\r\nRule 13 Sec. 3 (c) (9) (ii), barangay\r\nshall be responsible for ensuring the\r\nfunctionality and effectiveness of the\r\nBarangay Nutrition Council (BNC)\r\nthrough the formulation of Barangay\r\nNutrition Action Plan (BNAP).\r\nDILG MC No. 2023-00133\r\nitem 6.2.2.3\r\nmandates the BNC to formulate,\r\nrevise/update the barangay nutrition\r\naction plan.\r\n', 'Plan:\r\nPresence of approved CY\r\n2023 BNAP', 0, ''),
(321, 245, '4.8.3', 'Malnutrition refers to the deficiencies,\r\nexcesses, or imbalances in an\r\nindividual\'s energy and/or nutrient\r\nintake. This includes stunting (low\r\nheight for age), wasting (low weight for\r\nheight), underweight (low weight for\r\nage), micronutrient deficiencies or\r\ninsufficiency and overweight (obesity).\r\nOperation Timbang (OPT) Plus is the\r\nannual weighing and height measurement of all preschoolers 0-59\r\nmonths old or below five years old in a\r\ncommunity to identify and locate the\r\nmalnourished children. Data generated\r\nthrough OPT Plus are used for local\r\nnutrition action planning, particularly in\r\nquantifying the number of malnourished\r\nand identifying who will be given priority\r\ninterventions in the community.\r\nMoreover, results of OPT Plus provide\r\ninformation on the nutritional status of\r\nthe preschoolers and the community in\r\ngeneral, thus, providing information on\r\nthe effectiveness of the local nutrition\r\nprogram.\r\n', 'Decrease in Prevalence\r\nRate in the barangay, for\r\nthe following categories:\r\n1. Underweight and\r\nSevere Underweight\r\n2. Stunting and Severe\r\nStunting;and\r\n3. Moderate Wasting and\r\nSevere Wasting', 0, ''),
(322, 245, '4.8.4 ', 'Item 2.2.9 of Local Budget\r\nMemorandum No. 85 states that all\r\nLGUs are enjoined to prioritize in the\r\nallocation of local funds the PPAs\r\nincluded in their respective local\r\nnutrition action plans. Thus, the\r\npresence of an Accomplishment Report\r\nis imperative to ensure that the targets\r\nin the BNAP are properly accomplished\r\nand monitored.\r\nSection V, Item 1.1 of DILG MC\r\n2018-42 mandates the formulation,\r\nrevision, or updating of the local\r\nnutrition action plan to incorporate\r\nprograms, projects, and activities that\r\ntarget families of nutritionally vulnerable\r\nindividuals.\r\nItem 1.10 of the same MC outlines the\r\nthe submission of Baranagy PPAN\r\nReport to City/Municipality Mayor thru\r\nC/MLGOO every 15th of January and\r\nJuly.\r\n', 'a) At least 50%\r\naccomplishment of the physical\r\ntargets in the CY 2023 BNAP OR\r\n b) At least 50% fund\r\nutilization rate of the CY 2023\r\nBNAP Budget', 0, ''),
(323, 246, '4.9.1', 'The Philippine Development Plan\r\n2023-2028 (Chapter 3. Reduce\r\nVulnerabilities and Protect Purchasing\r\nPower) provides that production in\r\nnon-agricultural areas, such as urban\r\nfarming, vertical or rooftop gardening,\r\nand school and community gardening,\r\nshall be further promoted for\r\nsubsistence supply as accessible food\r\nsources.\r\nFurther, the current Administration\r\nrecognizes the need to address hunger\r\nand ensure food security in the country.\r\nHence, in support of the said thrust of\r\nthe current administration and of the\r\nsaid PDP 2023-2028, the Department\r\nthrough the NBOO issued\r\nMemorandum Circular No. 2023-001\r\ndated January 3, 2023, entitled\r\n“Implementation of the Halina’t\r\nMagtanim ng Prutas at Gulay\r\n(HAPAG) sa Barangay Project” to\r\nserve as a strategy to diversify food\r\nsources and contribute to ensuring food\r\nsecurity in the country.\r\nThe Department launched the said\r\nProject dubbed as the “Araw ng\r\nPagkaing Masustansiya at Sapat or\r\nPagkaing MASA” on January 24, 2023\r\nand the Halina’t Magtanim ng Prutas at\r\nGulay (HAPAG) sa Barangay Project,\r\nKadiwa Ay Yaman (KAY), Plants for\r\nBountiful Barangays Movement (PBBM)\r\nor HAPAG KAY PBBM at the Rizal\r\nPark Open Air Auditorium, Manila, in\r\npartnership with the Department of\r\nAgriculture (DA) on March 1, 2023.', 'Established a Barangay\r\nCommunity Garden (BCG)', 0, ''),
(324, 246, '4.9.2', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Enacted Ordinance for\r\nthe Establishment of a\r\nBarangay Community Garden\r\n', 0, ''),
(325, 246, '4.9.3', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Designated SBM to\r\nManage the Barangay\r\nCommunity Garden', 0, ''),
(326, 246, '4.9.4', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Conducted at least One\r\n(1) Advocacy Campaign/\r\nAwareness on community\r\nhousehold gardening\r\n', 0, ''),
(327, 246, '4.9.5', 'The Philippine Development Plan 2023-2028 (Chapter 3. Reduce Vulnerabilities and Protect Purchasing Power) provides that production in non-agricultural areas, such as urban farming, vertical or rooftop gardening, and school and community gardening, shall be further promoted for subsistence supply as accessible food sources. Further, the current Administration recognizes the need to address hunger and ensure food security in the country. Hence, in support of the said thrust of the current administration and of the said PDP 2023-2028, the Department through the NBOO issued Memorandum Circular No. 2023-001 dated January 3, 2023, entitled “Implementation of the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project” to serve as a strategy to diversify food sources and contribute to ensuring food security in the country. The Department launched the said Project dubbed as the “Araw ng Pagkaing Masustansiya at Sapat or Pagkaing MASA” on January 24, 2023 and the Halina’t Magtanim ng Prutas at Gulay (HAPAG) sa Barangay Project, Kadiwa Ay Yaman (KAY), Plants for Bountiful Barangays Movement (PBBM) or HAPAG KAY PBBM at the Rizal Park Open Air Auditorium, Manila, in partnership with the Department of Agriculture (DA) on March 1, 2023. ', 'Established Group of\r\nVolunteers on the\r\nImplementation of the\r\nCommunity Garden', 0, ''),
(328, 247, '5.1.1', 'Each local government unit shall\r\nexercise its power to create its own\r\nsources of revenue and to levy taxes,\r\nfees, and charges subject to the\r\nprovisions of the Code, consistent with\r\nthe basic policy of local autonomy. Such\r\ntaxes, fees, and charges shall accrue\r\nexclusively to the local government\r\nunits (LGUs) as mandated under\r\nSection 129 of the Local Government\r\nCode of 1991.\r\n', 'Enacted Barangay Tax\r\nOrdinance pursuant to\r\nSec. 129 of the LGC', 0, ''),
(329, 248, '5.2.1', 'DILG-DPWH-DICT-DTI JMC 2018-0134\r\ndefines Building Permit as a document\r\nissued by the Building Official to an\r\nowner/applicant to proceed with the\r\nconstruction. installation, addition,\r\nalteration. renovation. conversion.\r\nrepair. moving demolition or other work\r\nactivity of a specific\r\nproject/building/structure or portions\r\nthereof after the accompanying principal\r\nplans, specifications and other pertinent\r\ndocuments with the duly notarized\r\napplication are found satisfactory and\r\nsubstantially conforming with\r\nthe National Building Code of the\r\nPhilippines and its IRR.\r\nIt also defines Locational Clearance as\r\nclearance issued by the Zoning\r\nAdministrator/Zoning Officer to a project\r\nthat is allowed under the provisions of\r\nan ordinance of a particular\r\nCity/Municipality. It is a requirement for\r\nthe issuance of Building Permit.\r\nBased on item 6.3.2.1. of DILG MC No.\r\n2019-17735 dated October 17, 2019, the\r\nSangguniang Barangay shall enact\r\nordinance relative to Barangay\r\nClearance fees on business permit and\r\nlocational clearance for building permit. Based on item 6.3.2.2. of DILG MC No.\r\n2019-177 dated October 17, 2019, the\r\nSangguniang Barangay shall pass a\r\nresolution authorizing the City/Municipal\r\nTreasurer to collect fees for Barangay\r\nClearance for Business permit and\r\nlocational clearance purposes.\r\n', 'Enacted Barangay\r\nOrdinance relative to\r\nBarangay Clearance fees\r\non business permit and\r\nlocational clearance for\r\nbuilding permit pursuant\r\nto DILG MC No.\r\n2019-177\r\n', 0, ''),
(330, 248, '5.2.2', 'DILG-DPWH-DICT-DTI JMC 2018-0134\r\ndefines Building Permit as a document\r\nissued by the Building Official to an\r\nowner/applicant to proceed with the\r\nconstruction. installation, addition,\r\nalteration. renovation. conversion.\r\nrepair. moving demolition or other work\r\nactivity of a specific\r\nproject/building/structure or portions\r\nthereof after the accompanying principal\r\nplans, specifications and other pertinent\r\ndocuments with the duly notarized\r\napplication are found satisfactory and\r\nsubstantially conforming with\r\nthe National Building Code of the\r\nPhilippines and its IRR.\r\nIt also defines Locational Clearance as\r\nclearance issued by the Zoning\r\nAdministrator/Zoning Officer to a project\r\nthat is allowed under the provisions of\r\nan ordinance of a particular\r\nCity/Municipality. It is a requirement for\r\nthe issuance of Building Permit.\r\nBased on item 6.3.2.1. of DILG MC No.\r\n2019-17735 dated October 17, 2019, the\r\nSangguniang Barangay shall enact\r\nordinance relative to Barangay\r\nClearance fees on business permit and\r\nlocational clearance for building permit. Based on item 6.3.2.2. of DILG MC No.\r\n2019-177 dated October 17, 2019, the\r\nSangguniang Barangay shall pass a\r\nresolution authorizing the City/Municipal\r\nTreasurer to collect fees for Barangay\r\nClearance for Business permit and\r\nlocational clearance purposes.\r\n', 'Approved resolution\r\nauthorizing the\r\nCity/Municipal Treasurer\r\nto collect fees for\r\nBarangay Clearance for\r\nBusiness permit and\r\nlocational clearance\r\npurposes pursuant to\r\nDILG MC No. 2019-177.\r\n', 0, ''),
(331, 249, '5.3.1 ', 'Based on Section 152(c) of the Local\r\nGovernment Code of 1991 the\r\napplication for barangay certification\r\nshall be acted upon within seven (7)\r\nworking days from the filing thereof. In\r\nthe event that the certification is not\r\nissued within the said period, the city or\r\nmunicipality may issue the said license\r\nor permit.\r\n', 'Presence of a Citizens’\r\nCharter on the issuance\r\nof barangay certification\r\nposted in the barangay\r\nhall', 0, ''),
(332, 250, '6.1.1', 'For efficient, effective and economical\r\ngovernance, the purpose of which is\r\nthe general welfare of the barangay\r\nand its inhabitants pursuant to Section\r\n16 of the Local Government Code of\r\n1991, the Punong Barangay shall\r\nenforce laws and regulations relating\r\nto pollution control and protection of\r\nthe environment.\r\nRule VI, Section 6 and 7 of IRR of\r\nRepublic Act 900336 provides for the\r\ncreation of the Barangay Ecological\r\nSolid Waste Management Committee\r\nand its functions and responsibilities', 'Structure\r\nOrganized BESWMC\r\nwith composition\r\ncompliant to DILG MC\r\nNo. 2018-112', 0, ''),
(333, 250, '6.1.2', 'Rule VI, Section 6 (a) of IRR of R.A.\r\n9003 provides for the formulation of\r\nthe solid waste management program consistent with the city/municipality\r\nplan\r\nSec 5, Rule XV of the IRR of R.A.\r\n9003 provides that Barangay councils\r\nmay issue council resolutions to\r\nestablish ordinances for the creation\r\nof a Local Solid Waste Management\r\nFund (also known as the Local Fund),\r\npursuant to the relevant provisions of\r\nRA 7160.\r\nSection 5.3.4 of DILG MC No.\r\n2018-11237 dated July 12, 2018 with\r\nthe subject: Organization or\r\nReorganization of the BArangay\r\nEcological Solid Waste Management\r\nCommittee (BESWMC) provides that\r\nthe BESWMC shall allocate barangay\r\nfunds for the ecological solid waste\r\nmanagement program, approved by\r\nthe sangguniang barangay', 'Plan\r\nApproved Solid Waste\r\nManagement\r\nProgram/Plan with\r\ncorresponding fund\r\nallocation', 0, ''),
(334, 250, '6.1.3', 'Item No. 5.3.6. of the same MC states\r\nthat the BESWMC shall conduct\r\nbarangay-initiated training for\r\nresidents on segregation, composting,\r\nrecycling, livelihood, and other\r\nenvironmental-related activities to\r\npromote environmental protection,\r\npreservation and awareness.\r\n', 'Trainings\r\nAttendance of BESWMC\r\nto necessary training\r\nrelated to promoting\r\nenvironmental protection,\r\npreservation and\r\nawareness not earlier\r\nthan CY 2020\r\n', 0, ''),
(335, 250, '6.1.4', 'Item 5.3.9 of DILG MC No. 2018-112\r\nstates that the BESWMC shall prepare\r\nand submit a monthly accomplishment\r\nreport on the implementation status of\r\nits PPAs and deliverables based on\r\nthe approved BESWMC Program. The\r\nsaid report shall be submitted to\r\nC/MENRO or C/MSWM Board not\r\nlater than the 5th day of every month,\r\ncopy furnished to the concerned City\r\nDirector or the C/MLGOO for\r\nmonitoring purposes.\r\n', 'Accomplishment\r\nReports:\r\n6.1.4 a) At least 50%\r\naccomplishment of the physical\r\ntargets in the BESWMP\r\nOR\r\n6.1.4 b) At least 50% utilization\r\nrate of CY 2023 BESWM\r\nBudget\r\n', 0, ''),
(336, 251, '6.2.1 ', 'Per section 5.3.3 of DILG MC No.\r\n2018-112, a Materials Recovery\r\nFacility (MRF) in every barangay or\r\ncluster of barangays must be\r\nestablished whether in a\r\nbarangay-owned, leased land, or any\r\nsuitable open space to be determined\r\nby the barangay through its\r\nSanggunian.\r\nSection 33 of RA 9003 provides that,\r\n“Materials recovery facility shall be\r\ndesigned to receive, sort, process,\r\nand store compostable and recyclable\r\nmaterial efficiently and in an\r\nenvironmentally sound manner. That\r\nfacility shall address the following\r\nconsiderations: (a) The building and/or\r\nland layout and equipment must be\r\ndesigned to accommodate efficient and safe materials processing,\r\nmovement, and storage; and (b) The\r\nbuilding must be designed to allow\r\nefficient and safe external access and\r\nto accommodate internal flow.”\r\nDILG MC No. 2018-20738 states that\r\nMaterials Recovery System (MRS)\r\ncan be accepted in locations where\r\nthere is limited space to establish an\r\nMRS. For purposes of the validation, a\r\nMemorandum of Agreement (MOA)\r\nwith the existing junk shop and/or the\r\npresence of other materials recovery\r\nscheme is the other basis of its\r\nfunctionality.\r\n', 'Presence of a Materials\r\nRecovery Facility (MRF)/\r\nMaterials Recovery\r\nSystem (MRS)\r\n- Established MRF\r\noperated by the barangay\r\n- MRS\r\n- Clustered MRF', 0, ''),
(337, 252, '6.3.1', 'Section 10 of R.A. No. 9003 stipulates\r\nthe segregation and collection of solid waste shall be conducted at the\r\nbarangay level specifically for\r\nbiodegradable, compostable, and\r\nreusable wastes.\r\n', ' Enacted Barangay\r\nOrdinance or similar issuance on segregation\r\nof wastes at-source\r\n', 0, ''),
(338, 234, '1.1.1.', 'Pursuant to Section 352 of the Local\r\nGovernment\r\nCode\r\nof 1991 (R.A.\r\n7160),\r\nand\r\nDILG\r\nMemorandum\r\nCircular\r\nNos.\r\n2014-811\r\nand\r\n2022-0272,\r\nbarangays\r\nshall\r\ndemonstrate\r\ngood\r\nfinancial\r\nhousekeeping, and to ensure that\r\nbarangays\r\nadhere\r\nto the highest\r\nideals and standards of transparency\r\nand\r\naccountability,\r\nall\r\nPunong\r\nBarangays are directed to post in an\r\narea inside the barangay hall that\r\ncan be easily viewed by the public\r\nand on their website (if available),\r\nthe\r\nseven\r\n(7)\r\ndocuments\r\nas\r\nprescribed\r\nby\r\nthe\r\nDepartment of\r\nBudget and Management (DBM).\r\nThe DILG Advisory dated March 25,\r\n2022\r\nwith\r\nthe\r\nsubject:\r\n“Updated\r\nBarangay\r\nFull\r\nDisclosure\r\nPolicy\r\n(BFDP)\r\nForms/Templates”\r\nwas\r\nissued\r\nto\r\ninform\r\nthe\r\nconcerned\r\noffices and officers of the appropriate\r\nforms/templates\r\nthat\r\nshould\r\nbe\r\nsubmitted to effectively monitor the\r\ncompliance of barangays within their\r\nrespective jurisdiction.', 'Posted the following CY\r\n2023 financial\r\ndocuments in the BFDP\r\nboard:\r\na) Barangay Financial\r\nReport\r\nb) Barangay Budget\r\nc) Summary of Income\r\nand Expenditures\r\nd) 20% Component of\r\nthe NTA Utilization\r\ne) Annual Procurement\r\nPlan or\r\nProcurement List\r\nf) List of Notices of\r\nAward (1st - 3rd Quarter\r\nof CY 2023)\r\ng) Itemized Monthly\r\nCollections and\r\nDisbursements\r\n(January to September 2023)', 0, ''),
(339, 234, '1.1.2', 'Per\r\nDBM-DOF-DILG\r\nJMC\r\nNo.\r\n2018-13,\r\nthe\r\nBarangay\r\nTreasurer\r\nshall prepare the Barangay Financial\r\nReport\r\n(BFR)\r\ncontaining\r\nthe\r\ninformation\r\non\r\nthe\r\nStatement\r\nof\r\nReceipt\r\nand\r\nExpenditures\r\n(SRE)\r\nusing the prescribed form.', 'Accomplished and\r\nsigned BFR with\r\nreceived stamp from the\r\nOffice of the C/M\r\nAccountant', 0, ''),
(340, 235, '1.2.1', 'Based on Section 152 of the Local\r\nGovernment Code (LGC) of 1991,\r\nBarangays may levy taxes, fees, and\r\ncharges, as provided in the Code,\r\nwhich\r\nshall exclusively accrue to\r\nthem.', 'Increase in local\r\nresources in CY 2023', 0, ''),
(341, 236, '1.3.1', 'Budget authorization is the process\r\nof adopting and enacting the annual\r\nBarangay\r\nBudget\r\ninto\r\nan\r\nAppropriation Ordinance pursuant to\r\nSection 391(a)(3) of the LGC , which\r\nprovides\r\nthat\r\n“the\r\nSangguniang\r\nBarangay shall enact annual and\r\nsupplemental budgets in accordance\r\nwith the provisions of this Code”.', 'Presence of a Barangay\r\nAppropriation Ordinance\r\napproved on or before\r\nDecember 31, 2022', 0, ''),
(342, 253, '1.4.1', 'DBM-LBM No. 854 defines\r\nallocations for statutory programs\r\nand projects as the budgeted\r\nresources designated for initiatives\r\nmandated by legislation or other\r\nofficial pronouncements. Moreover, it\r\nemphasizes that priority allocation\r\nfor the National Tax Allotment (NTA)\r\nand other local resources must be\r\ndirected towards fulfilling the\r\nobligations outlined in Section 17(b)\r\nof the LGC. These obligations\r\nencompass providing essential\r\nservices and facilities to the local\r\ncommunity.', 'With allocated funds for\r\nthe\r\nfollowing\r\nstatutory\r\nprograms and projects:\r\na) At least 20% of the NTA\r\nis\r\nallocated\r\nfor\r\ndevelopment programs;\r\nb) Not\r\nless\r\nthan\r\nfive\r\npercent (5%) shall be set\r\naside\r\nas\r\nthe\r\nLocal\r\nDisaster Risk Reduction\r\nand Management Fund;\r\nc) Gender\r\nand\r\nDevelopment;\r\nd) Senior\r\nCitizens\r\nand\r\nPersons with Disabilities;\r\ne) Implementation\r\nof\r\nthe\r\nprograms of the Local\r\nCouncils\r\nfor\r\nthe\r\nProtection\r\nof\r\nChildren;\r\nand\r\nf)\r\nTen percent (10%) for\r\nthe\r\nSangguniang\r\nKabataan', 0, ''),
(343, 254, '1.5.1', 'Pursuant to Section 6 of Republic\r\nAct (RA) No. 94855 as amended by\r\nRA\r\nNo.\r\n110326,\r\nall\r\ngovernment\r\nagencies,\r\nincluding\r\ndepartments,\r\nbureaus,\r\noffices\r\nand\r\ninstrumentalities, government owned\r\nor controlled corporations (GOCCs),\r\ngovernment\r\nfinancial\r\ninstitutions\r\n(GFIs),\r\nstate\r\nuniversities\r\nand\r\ncolleges\r\n(SUCs),\r\nand\r\nlocal\r\ngovernment units (LGUs) shall set\r\nup their respective most current and\r\nupdated\r\nservice\r\nstandards\r\nto\r\nbe\r\nknown as the Citizen’s Charter.', ' Barangay Citizens’ Charter\r\nposted at a conspicuous\r\nplace (e.g. barangay hall,\r\nmarket, transport terminal,\r\nor multi-purpose hall)', 0, ''),
(344, 255, '1.6.1', 'Section 20 (a) of the SK Reform Act\r\nof 2015 states that all the income of\r\nthe barangay derived from whatever\r\nsource shall accrue to its general\r\nfund and shall, at the option of the\r\nbarangay concerned, be kept as a\r\ntrust fund in the custody of the city or\r\ninmunicipal treasurer or be deposited\r\na\r\nbank,\r\npreferably\r\ngovernment-owned,\r\nsituated\r\nin or\r\nnearest to its area of jurisdiction.\r\nFurther, it mandates that 10% of the\r\ngeneral fund of the barangay shall\r\nbe\r\nset\r\naside\r\nfor\r\nthe\r\nSK.\r\nThe\r\nSangguniang\r\nBarangay\r\nshall\r\nappropriate\r\nthe\r\nSK\r\nfunds\r\nin\r\nlump-sum which shall be disbursed\r\nsolely for youth development and\r\nempowerment purposes.\r\nSection 20 (b) of the same Act also\r\nstates\r\nthat\r\nSK\r\nhave\r\nfinancial\r\nindependence\r\nin\r\nits\r\noperation,\r\ndisbursement of their fund, income,\r\nand expenditure.\r\nItem 3.2.1 of the DBM-DILG-NYC\r\nJMC No. 1, s. 20197 dated January\r\n23, 2019 provides that the SK funds\r\nshall be automatically released by\r\nthe barangay to the SK and shall not\r\nbe subject to any lien or holdback\r\nthat\r\nmay\r\nbe\r\nimposed\r\nby\r\nthe\r\nbarangay for whatever purpose.\r\nItem 3.2.2 of the same JMC states\r\nthat the SK shall open a current\r\naccount in the name of the SK in a\r\nbank, preferably government-owned,\r\nsituated in or nearest to its area of\r\njurisdiction, with the SK chairperson\r\nand the SK treasurer as the official\r\nsignatories\r\nItem\r\n3.2.3\r\nof\r\nthe\r\nsame\r\nJMC\r\nmandates that the SK funds shall be\r\ndeposited by the barangay in the\r\ncurrent account of the SK not later\r\nthan 5 WD after crediting of the\r\nmonthly NTA share of the barangay.\r\nThe\r\nbarangay\r\nmay\r\nopt\r\nto\r\ntransfer/release the SK funds earlier\r\nthan herein prescribed on an annual,\r\nsemestral or quarterly basis, subject\r\nto the written agreement between\r\nthe barangay and the SK.\r\nItem 3.2.4 provides that in case of\r\nbarangays\r\nwithout\r\nelected\r\nSK\r\nofficials, the barangay shall transfer\r\nthe corresponding ten percent (10%)\r\nSK Fund to the trust fund of the\r\nbarangay, and the same shall be\r\nreleased by the barangay upon the\r\nelection\r\nof\r\nthe\r\nSK\r\nofficials\r\nconcerned.\r\nSection 20 of RA 10742 states that\r\nthe\r\nSangguniang\r\nKabataan funds\r\nshall be governed by the following\r\nprovisions: (a) All the income of the\r\nbarangay\r\nderived\r\nfrom\r\nwhatever\r\nsource shall accrue to its general\r\nfund and shall, at the option of the\r\nbarangay concerned, be kept as\r\ntrust fund in the custody of the\r\ncity or municipal treasurer or be\r\ndeposited\r\nin\r\na\r\nbank\r\npreferably\r\ngovernment-owned,\r\nsituated\r\nin or\r\nnearest to its area of jurisdiction.\r\nSuch funds shall be disbursed in\r\naccordance with the provisions of\r\nthis Act. Ten percent (10%) of the\r\ngeneral fund of the barangay shall\r\nbe set aside for the Sangguniang\r\nKabataan.\r\nThe\r\nSangguniang\r\nBarangay\r\nshall\r\nappropriate\r\nthe\r\nSangguniang\r\nKabataan\r\nfunds\r\nin\r\nlump-sum which shall be disbursed\r\nsolely for youth development and\r\nempowerment purposes\r\nNote:\r\nThe\r\nSangguniang\r\nKabataan\r\nFrequently\r\nAsked\r\nQuestions\r\ncan\r\nbe\r\naccessed\r\nthrough\r\nthe\r\nlink:\r\nhttps://bit.ly/SK_FAQ-SGLGB', '1.6.1 Compliance with Section\r\n20 of the SK Reform Act\r\nof 2015 and Item 3.2 of\r\nDBM-DILG-NYC JMC No.\r\n1, s. 2019 dated January\r\n23, 2019\r\n1.6.1.1.\r\nThe\r\nbarangay\r\nhas\r\nBarangay-SK\r\nAgreement\r\nfor\r\nthe\r\nrelease/deposit;', 0, ''),
(345, 255, '1.6.2', 'Item 3.3.1.2 of the DBM-DILG-NYC\r\nJMC No. 1, s. 2019 dated January\r\n23,\r\n2019\r\nstates\r\nthat\r\nthe\r\nComprehensive\r\nBarangay\r\nYouth\r\nDevelopment\r\nPlan (CBYDP) shall\r\nserve\r\nas\r\nthe\r\nbasis\r\nfor\r\nthe\r\npreparation of the Annual Barangay\r\nYouth Investment Program (ABYIP).\r\nThe ABYIP shall contain the specific\r\nprograms,\r\nprojects,\r\nand\r\nactivities\r\nwith\r\ncorresponding\r\nproject\r\ncosts,\r\nincluding the necessary fund flows to\r\napproximate the reasonable timing in\r\nthe release of funds. It is understood\r\nthat the ABYIP shall reflect the total\r\nresource requirement for the budget\r\nyear.\r\nItem 3.3.1.3 of the same JMC also\r\nstates\r\nthat\r\nthe\r\nABYIP\r\nshall\r\nbe\r\nprepared and approved by the SK\r\nthrough a resolution before the start\r\nof the preparation of the SK annual\r\nbudget.', 'Presence\r\nof\r\nApproved\r\nAnnual\r\nBarangay\r\nYouth\r\nInvestment\r\nProgram\r\n(ABYIP) for 2023', 0, ''),
(346, 256, '1.7.1', 'Section 397 (b) of R.A. No. 7160\r\nmandates\r\nthat\r\nthe\r\nbarangay\r\nAssembly shall meet at least twice a\r\nyear\r\nto\r\nhear\r\nand\r\ndiscuss\r\nthe\r\nsemestral report of the barangay\r\nconcerning its activities and finances\r\nas well as problems affecting the\r\nbarangay.\r\nProclamation No. 599 series of 2018\r\ndated October 9, 2018 declares the\r\nSaturdays and Sundays of March\r\nand October as barangay assembly\r\ndays.\r\nDILG MC No. 2023-032 mandates\r\nthe Barangay Assembly Day shall be\r\nconducted, as much as practicable,face-to-face\r\nor\r\nblended\r\napproach\r\n(combination\r\nof\r\nface-to-face\r\nand\r\nonline mode) by all barangays on\r\nany Saturdays or Sundays of March\r\n2023.', 'Conducted\r\nthe\r\n1st semester Barangay\r\nAssembly for CY 2023', 0, ''),
(347, 257, '2.1.1', 'Section 12 of RA 101218 states that:\r\nthere shall be established an LDRRMO\r\nin every province, city and municipality,\r\nand a Barangay Disaster Risk Reduction\r\nand\r\nManagement\r\nCommittee\r\n(BDRRMC) in every barangay which\r\nshall\r\nbe\r\nresponsible\r\nfor\r\nsetting\r\nthe\r\ndirection, development, implementation\r\nand\r\ncoordination\r\nof\r\ndisaster\r\nrisk\r\nmanagement\r\nprograms\r\nwithin\r\ntheir\r\nterritorial jurisdiction.\r\nNDRRMC MC No. 07, s. 20229\r\nmandates of organizing not only the\r\nNational DRRM Council but Regional\r\nand Local DRRM Councils as well as\r\nensuring membership of Civil Society Organizations (CSOs and the private\r\nsector therein.\r\n', 'Structure\r\nOrganized\r\nBDRRMC\r\nwith\r\nits\r\ncomposition\r\ncompliant\r\nto\r\nthe\r\nprovisions of NDRRMC,\r\nDILG, DBM, and CSC\r\nJMC No. 2014-01.\r\nMinimum Composition of the\r\nBDRRMC:\r\n1. Punong Barangay;\r\n2. A Representative from\r\nthe\r\nSangguniang\r\nBarangay; and\r\n3. 2 CSO representatives\r\nfrom the existing and\r\nactive community-based\r\npeople’s\r\norganizations\r\nrepresenting\r\nthe\r\nmost\r\nvulnerable\r\nand\r\nmarginalized groups in\r\nthe barangay (Item 5.7.\r\nof\r\nNDRRMC,\r\nDILG,\r\nDBM,\r\nand\r\nCSC JMC\r\nNo. 2014-01)', 0, ''),
(348, 257, '2.1.2', 'Section 12 of RA 10121 provides that: (c)\r\nThe\r\nprovincial,\r\ncity\r\nand\r\nmunicipal\r\nDRRMOs or BDRRMCs shall perform the\r\nfollowing functions with impartiality given\r\nthe\r\nemerging\r\nchallenges\r\nbrought\r\nby\r\ndisasters of our times:\r\n(7) Prepare and submit to the local\r\nsanggunian through the LDRRMC and\r\nthe LDC the annual LDRRMO Plan and\r\nbudget, the proposed programming of\r\nthe LDRRMF, other dedicated disaster\r\nrisk\r\nreduction\r\nand\r\nmanagement\r\nresources,\r\nand\r\nother\r\nregular\r\nfunding\r\nsource/s and budgetary support of the\r\nLDRRMO/BDRRMC; NDRRMC MC No.\r\n03, s. 202210 mandates the compliance\r\nof barangays in adopting and utilizing the\r\nEnhanced\r\nQuality\r\nAssessment\r\nTool\r\n(QAS) for BDRRMP/C, and the review of\r\nthe BDRRM Plan by the C/M review\r\nteam composed of the following:\r\n●\r\nTeam Leader - C/MDRRMO\r\n●\r\nAssistant Team Leader - C/MPDO\r\n●\r\nTeam Member - C/MSWDO\r\n●\r\nSecretariat - C/M DRRMO Staff\r\n●\r\nOversight - C/MLGOO', 'Plan\r\nApproved Barangay Disaster\r\nRisk\r\nReduction\r\nand\r\nManagement\r\n(BDRRM) Plan\r\ncovering CY 2023, adopted by\r\nthe Sangguniang Barangay', 0, ''),
(349, 257, '2.1.3', 'Section 21 of RA 10121 provides that not\r\nless\r\nthan\r\nfive\r\npercent\r\n(5%)\r\nof\r\nthe\r\nestimated revenue from regular sources\r\nshall be set aside as the LDRRMF to\r\nsupport\r\ndisaster\r\nrisk\r\nmanagement\r\nactivities such as, but not limited to,\r\npre-disaster\r\npreparedness\r\nprograms\r\nincluding training, purchasing life-saving\r\nrescue\r\nequipment,\r\nsupplies\r\nand\r\nmedicines,\r\nfor\r\npost-disaster\r\nactivities,\r\nand for the payment of premiums on\r\ncalamity insurance.', 'Budget\r\nAllocation of at least\r\n5% of the Estimated\r\nRevenue\r\nfrom\r\nRegular\r\nSources\r\nas\r\nBDRRM Fund\r\nNote: To compute the allocation:\r\n(BDRRMF Allocated / Estimated Total\r\nRevenue from Regular Sources) x 100', 0, ''),
(350, 257, '2.1.4', 'Section 21 of RA 10121 provides that not\r\nless\r\nthan\r\nfive\r\npercent\r\n(5%)\r\nof\r\nthe\r\nestimated revenue from regular sources\r\nshall be set aside as the LDRRMF to\r\nsupport\r\ndisaster\r\nrisk\r\nmanagement\r\nactivities such as, but not limited to,\r\npre-disaster\r\npreparedness\r\nprograms\r\nincluding training, purchasing life-saving\r\nrescue\r\nequipment,\r\nsupplies\r\nand\r\nmedicines,\r\nfor\r\npost-disaster\r\nactivities,\r\nand for the payment of premiums on\r\ncalamity insurance.\r\nSection 4.0 of the NDRRMC, DBM and\r\nDILG JMC No. 2013-111 dated March 25,\r\n2013 provides that the LDRRMF shall\r\ncover the thirty percent (30%) lump-sum\r\nallocation\r\nfor\r\nQuick\r\nResponse\r\nFund\r\n(QRF) and the seventy percent (70%)\r\nallocation for disaster prevention and\r\nmitigation,\r\npreparedness,\r\nresponse,\r\nrehabilitation and recovery.', 'Accomplishment\r\nReports\r\n2.1.4.1\r\nAt\r\nleast\r\n50%\r\naccomplishment\r\nof\r\nthe physical targets\r\nin the BDRRM Plan', 0, ''),
(351, 258, '2.2.1', 'Based on Rule 6, Section 4 of the IRR of\r\nRA\r\n10121,\r\nthe\r\nBDRRMC,\r\nin\r\ncoordination\r\nwith\r\nconcerned\r\nnational\r\nagencies\r\nand\r\ninstrumentalities\r\nshall\r\nperform\r\nthe\r\nfollowing\r\nfunctions\r\nwith\r\nimpartiality,\r\ngiven\r\nthe\r\nemerging\r\nchallenges brought by disasters of our\r\ntimes:\r\n(3)\r\nfacilitate\r\nand\r\nsupport\r\nrisk\r\nassessments and contingency planning\r\nactivities;\r\n(4) maintain a local risk map; and\r\n(5) operate a multi-hazard early\r\nwarning system', 'Conducted an activity in\r\nrelation\r\nto\r\nRisk\r\nAssessment\r\nin\r\nthe\r\nbarangay\r\nnot\r\nearlier\r\nthan CY 2020', 0, ''),
(352, 258, '2.2.2', 'Based on Rule 6, Section 4 of the IRR of\r\nRA\r\n10121,\r\nthe\r\nBDRRMC,\r\nin\r\ncoordination\r\nwith\r\nconcerned\r\nnational\r\nagencies\r\nand\r\ninstrumentalities\r\nshall\r\nperform\r\nthe\r\nfollowing\r\nfunctions\r\nwith\r\nimpartiality,\r\ngiven\r\nthe\r\nemerging\r\nchallenges brought by disasters of our\r\ntimes:\r\n(3)\r\nfacilitate\r\nand\r\nsupport\r\nrisk\r\nassessments and contingency planning\r\nactivities;\r\n(4) maintain a local risk map; and\r\n(5) operate a multi-hazard early\r\nwarning system', 'Barangay\r\nRisk/Hazard\r\nMap\r\nwhich\r\nindicates\r\npossible risks — natural\r\nor\r\nman-made.\r\n(e.g.\r\nflood-prone\r\nand\r\nlandslide-prone\r\nareas,\r\netc.)', 0, ''),
(353, 258, '2.2.3', 'Based on Rule 6, Section 4 of the IRR of\r\nRA\r\n10121,\r\nthe\r\nBDRRMC,\r\nin\r\ncoordination\r\nwith\r\nconcerned\r\nnational\r\nagencies\r\nand\r\ninstrumentalities\r\nshall\r\nperform\r\nthe\r\nfollowing\r\nfunctions\r\nwith\r\nimpartiality,\r\ngiven\r\nthe\r\nemerging\r\nchallenges brought by disasters of our\r\ntimes:\r\n(3)\r\nfacilitate\r\nand\r\nsupport\r\nrisk\r\nassessments and contingency planning\r\nactivities;\r\n(4) maintain a local risk map; and\r\n(5) operate a multi-hazard early\r\nwarning system', 'An\r\nestablished\r\nEarly\r\nWarning System (EWS)\r\nfor\r\nthe\r\ntop\r\ntwo\r\n(2)\r\nhazards present in the\r\nbarangay', 0, ''),
(354, 259, '2.3.1', 'Section 12 of RA 10121 provides that: (c)\r\nThe\r\nprovincial,\r\ncity\r\nand\r\nmunicipal\r\nDRRMOs of BDRRMCs shall perform the\r\nfollowing functions with. impartiality given\r\nthe\r\nemerging\r\nchallenges\r\nbrought\r\nby\r\ndisasters of our times:\r\n(12)\r\nMaintain\r\na\r\ndatabase\r\nof\r\nhuman\r\nresource,\r\nequipment,\r\ndirectories,\r\nand\r\nlocation\r\nof\r\ncritical infrastructures and\r\ntheir capacities such as hospitals and\r\nevacuation centers;\r\nPer Section 12(b) of RA 10121, the\r\nLDRRMOs\r\nand\r\nthe\r\nBDRRMCs shall\r\norganize, train and directly supervise the\r\nlocal emergency response teams and\r\nthe\r\naccredited\r\ncommunity\r\ndisaster\r\nvolunteers (ACDVs).\r\nThe extent of preparedness for effective\r\nresponse and early recovery shall be\r\nmeasured\r\nincludes the availability of\r\nfunctional disaster equipage.\r\na) Communication equipment (i.e., 2 way\r\nradio mobile phone,satellite phones)\r\nb) Rescue vehicle/Alternative vehicle\r\n(i.e., ambulance; amphibious\r\nvehicle,tricycle,boats,vans, trucks, fire\r\ntrucks,dump trucks and any appropriate vehicle\r\ndepending on location at the minimum)\r\nc) Generator set/alternative sources of\r\nenergy (i.e., portable generator, solar-powered\r\ngenerator)\r\nd) First aid kit\r\ne) Flashlight\r\nf) Personal Protective Equipment\r\n(i.e, face mask, gloves,and life vest)\r\nReference:\r\nNDRRMC’s\r\nNational\r\nDisaster\r\nPreparedness\r\nPlan:\r\nMinimum\r\nStandards\r\non\r\nDisaster Preparedness', 'A barangay must have a\r\npermanent or temporary\r\nevacuation center', 0, ''),
(355, 259, '2.3.2', 'Section 12 of RA 10121 provides that: (c)\r\nThe\r\nprovincial,\r\ncity\r\nand\r\nmunicipal\r\nDRRMOs of BDRRMCs shall perform the\r\nfollowing functions with. impartiality given\r\nthe\r\nemerging\r\nchallenges\r\nbrought\r\nby\r\ndisasters of our times:\r\n(12)\r\nMaintain\r\na\r\ndatabase\r\nof\r\nhuman\r\nresource,\r\nequipment,\r\ndirectories,\r\nand\r\nlocation\r\nof\r\ncritical infrastructures and\r\ntheir capacities such as hospitals and\r\nevacuation centers;\r\nPer Section 12(b) of RA 10121, the\r\nLDRRMOs\r\nand\r\nthe\r\nBDRRMCs shall\r\norganize, train and directly supervise the\r\nlocal emergency response teams and\r\nthe\r\naccredited\r\ncommunity\r\ndisaster\r\nvolunteers (ACDVs).\r\nThe extent of preparedness for effective\r\nresponse and early recovery shall be\r\nmeasured\r\nincludes the availability of\r\nfunctional disaster equipage.\r\na) Communication equipment (i.e., 2 way\r\nradio mobile phone,satellite phones)\r\nb) Rescue vehicle/Alternative vehicle\r\n(i.e., ambulance; amphibious\r\nvehicle,tricycle,boats,vans, trucks, fire\r\ntrucks,dump trucks and any appropriate vehicle\r\ndepending on location at the minimum)\r\nc) Generator set/alternative sources of\r\nenergy (i.e., portable generator, solar-powered\r\ngenerator)\r\nd) First aid kit\r\ne) Flashlight\r\nf) Personal Protective Equipment\r\n(i.e, face mask, gloves,and life vest)\r\nReference:\r\nNDRRMC’s\r\nNational\r\nDisaster\r\nPreparedness\r\nPlan:\r\nMinimum\r\nStandards\r\non\r\nDisaster Preparedness', 'A barangay must have\r\nthe following disaster\r\nsupplies/equipment:\r\na)Communication\r\nequipment\r\nb) Rescue\r\nvehicle/Alternative\r\nvehicle\r\nc) Generator\r\nset/alternative\r\nsources of energy\r\nd) First aid kit\r\ne) Flashlight\r\nf) Personal Protective\r\nEquipment', 0, ''),
(356, 260, '3.1.1', 'The DILG and DDB Joint Memorandum\r\nCircular\r\n2018-0112,\r\nprovides\r\nthe\r\nguidelines\r\non\r\nthe\r\nfunctionality\r\nand\r\neffectiveness and effectiveness of local\r\nanti-drug abuse councils.\r\nItem V (B)\r\nspecifically states the creation of the\r\nBADAC and its composition.', 'Structure\r\nOrganized BADAC with\r\nits\r\ncomposition\r\nand\r\nappropriate committees\r\n(Committees\r\non\r\nOperations\r\nand\r\non\r\nAdvocacy) compliant to\r\nDILG-DDB\r\nJMC\r\nNo.\r\n2018-01\r\nMinimum Composition of the\r\nBADAC:\r\n1. Punong Barangay\r\n2. SBM\r\n3. SK Chairperson\r\n4. Public\r\nSchool\r\nPrincipal/Representative\r\n5. Chief Tanod/ Executive\r\nOfficer\r\n6. At\r\nleast\r\n2\r\nrepresentatives\r\nof\r\nNGOs/CSOs\r\n7. Representative\r\nof\r\nFaith-Based\r\nOrganization\r\n8. C/M Chief of Police or\r\nRepresentative\r\nMinimum Composition of the\r\nBADAC Committees:\r\nA. Committee on Operations\r\n1. SBM\r\n2. Executive\r\nOfficer/Chief\r\nTanod\r\n3. BADAC Auxiliary Team\r\n(BAT)\r\nB. Committee on Advocacy\r\n1. SBM\r\n2. SK Chairperson\r\n3. Public\r\nSchool\r\nPrincipal/Representative\r\n4. At\r\nleast\r\n2\r\nrepresentatives\r\nof\r\nNGOs/CSOs\r\n5. Representative\r\nof\r\nFaith-Based\r\nOrganization', 0, ''),
(357, 260, '3.1.2', 'DILG DDB JMC No. 2018-01, Item B\r\n(3)(h) states that the BADAC shall assist\r\nPWUD who surrendered to Barangay\r\nRehabilitation and Referral Desk and\r\nrefer\r\nto\r\nCADAC/MADAC\r\nand\r\nother\r\ninstitutions for appropriate action.', 'Establishment of\r\nBarangay Rehabilitation\r\nReferral Desk with\r\nDesignated Barangay\r\nDuty Officer', 0, ''),
(358, 260, '3.1.3', 'Section 6 (A), no. 3 of DDB Board\r\nRegulation No. 3, s. 201713 states that\r\nthe BADAC, in coordination with the\r\nlocal PNP unit, shall also take the lead in\r\norganizing house clusters with\r\ndesignated cluster leaders', 'Organization of House\r\nClusters with designated\r\nHouse Cluster Leaders\r\n(HCL)', 0, ''),
(359, 260, '3.1.4', 'Section 3, no. 2 of DDB Board\r\nRegulation No. 3, s. 2017 states that the\r\nBADAC shall organize BADAC Auxiliary\r\nTeams (BATs) and orient them of their\r\nroles and functions.', 'Organization of BADAC\r\nAuxiliary Team (BAT)', 0, ''),
(360, 260, '3.1.5', 'No. 4 (4.2) of DILG Memorandum\r\nCircular No. 2017-14214 states that all\r\nBADACs are mandated to formulate\r\ntheir BADAC Plan of Action or BADPA.\r\nThis shall be adopted by the BADAC\r\nmembers and shall form part of the\r\nthree-year and term-based Barangay\r\nPeace and Order and Public Safety\r\n(BPOPS) Plan.\r\nSection 5 of DILG MC 2022-14115 also\r\nstates that “The BADAC shall formulate\r\na three-year term based plan for the\r\nanti-illegal drug activities, and that the\r\n“BADAC shall come up with a BADPA\r\nsummary which includes the formulated\r\nstrategies, identified PPPSAs, and the\r\ncalculated funding requirements.”', 'Plan:\r\nFormulation of BADAC\r\nPlan of Action (BADPA)\r\ncovering CY 2023', 0, ''),
(361, 260, '3.1.6', 'All\r\nSangguniang\r\nBarangays\r\nare\r\nmandated to allocate and utilize funds\r\nfrom\r\ntheir\r\nannual\r\nbudget\r\nfor\r\nthe\r\noperationalization of their BADPA and\r\nother campaigns against illegal drugs\r\nand drug abuse.\r\nPer Article VII, Sec. 51 of Republic Act\r\nNo. 916516, the substantiality of such\r\nfund\r\nallocated\r\nby\r\nthe\r\nSangguniang\r\nBarangay shall be determined by the\r\nconcerned\r\nC/MLGOO\r\nor\r\nCD,\r\nin\r\nconsultation\r\nwith\r\nthe\r\nCity/Municipal\r\nChief\r\nof\r\nPolice\r\nand\r\nlocal\r\nPDEA\r\nrepresentative, based on the “perceived\r\nneeds” of their barangay.', 'Budget:\r\nAllocation of substantial\r\namount\r\nfor\r\nanti-illegal\r\ndrugs initiative', 0, ''),
(362, 260, '3.1.7', 'Section 3, nos. 1 & 4 of DDB Board\r\nRegulation No. 3, s. 2017 states that the\r\nBADACs,\r\nin\r\ncoordination\r\nand\r\ncollaboration\r\nwith\r\nlocal\r\ninstitutions\r\n/\r\norganizations, are mandated to plan,\r\nstrategize,\r\nimplement\r\nand\r\nevaluate\r\nprograms and projects on drug abuse\r\nprevention and reduction', 'Implementation of Drug\r\nAbuse\r\nPrevention\r\nAdvocacy Campaigns -\r\nBarangay\r\norganized at\r\nleast 1 community-based\r\nIEC Activity during CY\r\n2023', 0, ''),
(363, 260, '3.1.8', 'Items 3 (f) and 5 (a) (1) (c) of DILG DDB\r\nJMC No. 2018-01 states to submit all\r\nconsolidated\r\ninformation\r\nreport\r\nto\r\nCADAC/MADAC and Local Police Unit\r\nConsolidated Information Report shall\r\nrefer to all information gathered from all\r\nsources\r\nsuch\r\nas\r\ncluster\r\nleaders,\r\nbarangay auxiliary team, and concerned\r\ncitizens, on any illegal drug activities\r\noccurring within the barangay. Thus, the\r\nCIR shall contain detailed information of\r\ndrug\r\npushers/users,\r\nprotectors,\r\nfinanciers, marijuana cultivation sites,\r\nclandestine laboratory operations and\r\nother drug-related data.', 'Implementation\r\nof\r\nDrug-Clearing\r\nOperations - Submission\r\nof\r\nConsolidated\r\nInformation Report (CIR)\r\nto CADAC/MADAC and\r\nLocal PNP Unit\r\nNote: Drug-unaffected barangays shall\r\nalso submit updated CIR, stating in the\r\nreport that there is absence of illegal\r\ndrug-related activities in the barangays.\r\nThe\r\nsame\r\napplies\r\nto\r\ndrug-free\r\nand\r\ndrug-cleared barangays', 0, ''),
(364, 260, '3.1.9', 'Items 3 (g) (h) and (i) of DILG DDB MC\r\nNo. 2018-01 states that all Barangay\r\nRehabilitation Referral Desks shall have\r\nBarangay Duty Officers, preferably\r\nBarangay Health Workers and mandates\r\nbarangay, through BADACs shall ensure\r\nthe proper and effective referral and\r\nmonitoring of status of surrenderers.', 'Implementation of\r\nCommunity-Based\r\nIntervention for Person\r\nWho Used Drugs\r\n(PWUDS) - Presence of\r\nreferral system', 0, ''),
(365, 260, '3.1.10', 'Section 3, no. 6 of DDB Board\r\nRegulation No. 3, s. 2017 states that to\r\nclosely monitor the implementation of\r\ntheir BADPA and other campaigns, all\r\nBADACs shall conduct regular meetings\r\nat least once a month.', 'Conduct of Monthly\r\nMeetings', 0, '');
INSERT INTO `maintenance_area_mininumreqs` (`keyctr`, `indicator_keyctr`, `reqs_code`, `relevance_definition`, `description`, `sub_mininumreqs`, `trail`) VALUES
(366, 261, '3.2.1', 'Pursuant to Section 16 of the LGC of\r\n1991, the local government shall, within\r\ntheir\r\nterritorial\r\njurisdiction,\r\npromote\r\nhealth and safety, improve public morals,\r\nmaintain peace and order, and preserve\r\nthe comfort and convenience of their\r\ninhabitants.\r\nExecutive Order No. 366, s. 1996 states\r\nthat every barangay shall organize a\r\nBarangay Peace and Order Committee\r\n(BPOC) to serve as the implementing\r\narm of the City/Municipal Peace and\r\nOrder\r\nCouncil\r\n(C/MPOC)\r\nat\r\nthe\r\nbarangay level.', 'Structure:\r\nOrganized BPOC with its\r\ncomposition compliant to\r\nthe provisions of EO No.\r\n366, s. of 1996\r\nMinimum composition of the\r\nBPOC:\r\n1. Punong Barangay\r\n2. Sangguniang Kabataan\r\nChairperson\r\n3. A member of the Lupon\r\nTagapamayapa\r\n4. A Public School Teacher\r\n5. PNP Officer\r\n6. A representative of the\r\nInterfaith Group\r\n7. A Senior Citizen\r\n8. At\r\nleast\r\nthree\r\n(3)\r\nmembers of the existing\r\nBarangay-Based\r\nAnti-Crime\r\nor\r\nNeighborhood\r\nWatch\r\nGroups\r\nor\r\nan\r\nNGO\r\nrepresentative\r\n9. A Barangay Tanod', 0, ''),
(367, 261, '3.2.2', 'Item 3.1 of DILG MC No. 2017-14217\r\nstates\r\nthat\r\nevery\r\nbarangay\r\nshall\r\nformulate a 3-year, term-based BPOPS\r\nPlan within 60 days after the assumption\r\nto office of the newly-elected Barangay\r\nOfficials on the following focus area,\r\nnamely:\r\nPeace and Order - shall cover\r\nactivities\r\nthat\r\ndirectly\r\naddress\r\ncriminality, including proliferation\r\nof illegal drugs, armed conflict,\r\nand human rights violations and\r\nbring about the achievement of\r\njustice, peace and order; and\r\nPublic\r\nSafety\r\n-\r\nshall\r\ncover\r\nactivities\r\nthat\r\nprotect\r\nthe\r\ncommunity\r\nfrom\r\ndangers\r\nthreatening the general welfare\r\nand safety, such as accidents,\r\ndisaster and crime.', 'Plan\r\nFormulated\r\nBarangay\r\nPeace\r\nand\r\nOrder\r\nand\r\nPublic\r\nSafety\r\n(BPOPS)\r\nPlan\r\nin\r\naccordance\r\nto\r\nDILG\r\nMC\r\n2017-142\r\ncovering CY 2023', 0, ''),
(368, 261, '3.2.3', 'Item 5.1 of DILG MC No. 2017-142\r\nstates\r\nthat\r\nthe\r\nBPOC,\r\nthrough\r\nthe\r\nPunong Barangay, shall prepare and\r\nsubmit the Semestral Accomplishment\r\nReport on the status of implementation\r\nof the target activities or deliverables\r\nbased on the approved BPOPS Plan to\r\nthe\r\nC/M\r\nPOC,\r\ncopy\r\nfurnish\r\nthe\r\nconcerned\r\nDILG\r\nCity\r\nDirector\r\nor\r\nC/MLGOO, on the following schedule:\r\n1st semester - on or before July\r\n15\r\n2nd\r\nsemester\r\n-\r\non\r\nor before\r\nJanuary 15 of the ensuing year\r\nPer\r\nDILG\r\nMC\r\nNo.\r\n2017-142\r\ndated\r\nOctober 24, 2017 re: Guidelines in the\r\nFormulation of a Simplified BPOPS Plan\r\nand DILG MC 2015-130 re: Functions of\r\nBPOC,\r\nthe\r\nBPOC\r\nis\r\nmandated\r\nto\r\nmonitor the status of utilization of funds\r\nbased on the target activities on the\r\napproved BPOPS Plan.', 'Accomplishment\r\nReports\r\n3.2.3.1At least 50%\r\naccomplishment of\r\nthe physical targets\r\nin the BPOPs Plan\r\nOR\r\n3.2.3.2 At least 50% fund\r\nutilization rate of the\r\nCY 2023 BPOPs\r\nBudget.\r\nNote: Barangay officials have the option\r\nto submit both the physical and financial\r\nreports. However, for the SGLGB Assessment, only one of the above\r\ndocuments is required.', 0, ''),
(369, 262, '3.3.1', 'The Lupong Tagapamayapa Incentives\r\nAwards\r\nis\r\nan\r\nannual\r\nsearch\r\nwhich\r\nrecognizes\r\noutstanding\r\nLupong\r\nTagapamayapa\r\nthat\r\nadequately\r\ndemonstrate the ability to judiciously and\r\nexpeditiously resolve cases referred to\r\nthem\r\nand\r\ndemonstrate\r\nexemplary\r\nperformance\r\nand\r\ncommendable\r\ncontribution\r\nin\r\nthe\r\npromotion\r\nand\r\nimplementation\r\nof\r\nKatarungang\r\nPambarangay.\r\nSection 406 (b) of the Local Government\r\nCode states that the DILG shall provide\r\nfor a system of granting economic or\r\nother incentives to the lupon or pangkat\r\nmembers who adequately demonstrate\r\nthe\r\nability\r\nto\r\njudiciously\r\nand\r\nexpeditiously resolve cases referred to\r\nthem.\r\nItem 4.1 of DILG MC 2023-22 defines\r\nLupong\r\nTagapamayapa\r\nas\r\nthe body\r\norganized in every barangay composed\r\nof the Punong Barangay Chairperson\r\nand not less than ten (10) nor more than\r\ntwenty (20) members from which the\r\nmembers of every Pangkat shall be\r\nchosen.\r\nNote: All barangays, whether or not an LTIA\r\npasser, shall be assessed on the Functionality of\r\nLupong Tagapamayapa.', 'Structure:\r\nOrganized Lupong\r\nTagapamayapa', 0, ''),
(370, 262, '3.3.2', 'DILG MC No. 2023-02218, Item 4.8.\r\nSystematic Maintenance of Records -\r\nkeeping of the records both in manual\r\nand\r\ndigital\r\nforms,\r\nof\r\nall\r\ncomplaints\r\nbrought and filed within the barangay.', 'System\r\nSystematic maintenance\r\nof records of cases\r\n3.3.2.1 For barangays of\r\ncities:\r\nComputer\r\ndatabase with searchable\r\ninformation', 0, ''),
(371, 262, '3.3.2', 'DILG MC No. 2023-02218, Item 4.8.\r\nSystematic Maintenance of Records -\r\nkeeping of the records both in manual\r\nand\r\ndigital\r\nforms,\r\nof\r\nall\r\ncomplaints\r\nbrought and filed within the barangay.', '3.3.2.2 For barangays of\r\nmunicipalities:\r\nManual Records\r\n(Case Record\r\nBook) OR Digital\r\nRecord Filing\r\n(scanned copy of\r\nKP files)', 0, ''),
(372, 262, '3.3.3', 'DILG\r\nMC No. 2023-022, Item 4.12.\r\nMeeting exclusively on KP Matters -\r\nregular meeting held by the Lupon\r\nonce a month on date set by the Lupon\r\nChairperson, to provide forum for the\r\nexchange of ideas on matters relevant to\r\nthe amicable settlements of dispute, and\r\nto enable the various conciliation panel\r\nmembers to share with one another their\r\nobservations\r\nand\r\nexperiences\r\nin\r\neffecting speedy resolution disputes, as\r\nwell as to discuss and devise solutions\r\nthereto\r\nby\r\nharnessing the resources\r\nprovided by the Sangguniang Barangay\r\nand\r\nother\r\nlocal\r\nresources\r\nof\r\nthe\r\nbarangay.', 'Meetings:\r\nConducted monthly\r\nmeetings for the\r\nadministration of the\r\nKatarungang\r\nPambarangay', 0, ''),
(373, 262, '3.3.4', 'DILG MC No. 2023-022, Item 4.19 KP\r\nTraining\r\nor\r\nseminar\r\nparticipated\r\nwithin\r\nthe\r\nassessment\r\nperiod\r\n-\r\norganized\r\nskills\r\ntrainings,\r\nseminars,\r\nexchange\r\nvisits\r\nand\r\nother\r\nsimilar\r\nactivities conducted by the barangay and\r\nattended by the Lupons or attended and\r\nparticipated by the Lupon to improve\r\ntheir knowledge and skills on KP.', 'Trainings:\r\nAttendance of LT to KP\r\ntraining or seminar not\r\nearlier than CY 2020', 0, ''),
(374, 263, '3.4.1', 'Based on DILG MC No. 2003-4219, the\r\nbarangay shall organize barangay tanod\r\nto\r\ncarry\r\nout\r\nthe\r\npurposes\r\nof\r\nthe\r\nbarangay\r\ngovernment\r\nin\r\naccordance\r\nwith\r\nthe\r\nneeds\r\nof\r\npublic\r\nservice.\r\nBarangay Tanod is a community brigade\r\ncomposed\r\nof civilian volunteers duly\r\nappointed\r\nby\r\nthe\r\nPunong\r\nBarangay\r\nupon recommendation of the BPOC. A\r\nChief Tanod/Executive Officer shall also\r\nbe designated to head the group. The\r\nTanod shall be organized into teams\r\ncomposed of a team leader and 2-4\r\nmembers. While the LGC provides a\r\nmaximum\r\nof\r\n20\r\ntanods\r\nin\r\neach\r\nbarangay, it may create more as may be\r\nnecessary\r\nin the exigency of public\r\nservice.\r\nSaid\r\nbarangay\r\ntanod\r\nshall\r\nundergo\r\norientation\r\nand\r\nskills\r\ntraining\r\nto\r\ncapacitate them to better perform their\r\nroles and responsibilities as agents of\r\npeace and development.', 'Structure:\r\nOrganized Barangay\r\nTanod with its\r\ncomposition compliant to\r\nthe provisions of DILG\r\nMC No. 2003-42\r\nComposition\r\nof\r\na\r\nBarangay\r\nTanod:\r\n1. Chief\r\nTanod/Executive\r\nOfficer\r\n2. Team Leaders\r\n3. Team Members', 0, ''),
(375, 263, '3.4.2', 'Based on DILG MC No. 2003-4219, the\r\nbarangay shall organize barangay tanod\r\nto\r\ncarry\r\nout\r\nthe\r\npurposes\r\nof\r\nthe\r\nbarangay\r\ngovernment\r\nin\r\naccordance\r\nwith\r\nthe\r\nneeds\r\nof\r\npublic\r\nservice.\r\nBarangay Tanod is a community brigade\r\ncomposed\r\nof civilian volunteers duly\r\nappointed\r\nby\r\nthe\r\nPunong\r\nBarangay\r\nupon recommendation of the BPOC. A\r\nChief Tanod/Executive Officer shall also\r\nbe designated to head the group. The\r\nTanod shall be organized into teams\r\ncomposed of a team leader and 2-4\r\nmembers. While the LGC provides a\r\nmaximum\r\nof\r\n20\r\ntanods\r\nin\r\neach\r\nbarangay, it may create more as may be\r\nnecessary\r\nin the exigency of public\r\nservice.\r\nSaid\r\nbarangay\r\ntanod\r\nshall\r\nundergo\r\norientation\r\nand\r\nskills\r\ntraining\r\nto\r\ncapacitate them to better perform their\r\nroles and responsibilities as agents of\r\npeace and development.', 'Trainings:\r\nAttendance of barangay\r\ntanod to necessary\r\ntraining not earlier than\r\n2020', 0, ''),
(376, 264, '3.5.1', 'DILG MC No. 2020-02320 enjoins all\r\nlocal\r\ngovernment\r\nunits\r\n(LGUs)\r\nto\r\neffectively\r\nintensify\r\ninformation\r\neducation\r\ncampaigns\r\nagainst\r\nCoronavirus and implement programs,\r\nprojects and services that will promote\r\nthe\r\nhealth\r\nand\r\nwell-being\r\nof\r\nevery\r\nFilipino.\r\nItem 5.1.2.2 states to organize Barangay\r\nHealth\r\nEmergency\r\nResponse\r\nTeams\r\n(BHERTs) at the minimum ratio of one\r\nteam for every 5,000 population, and\r\nmobilize\r\nthem\r\nto\r\nhelp\r\nimplement\r\nprevention and mitigation, preparedness\r\nand response measures for the nCoV\r\nARD. Each BHERT shall be composed\r\nof an Executive Officer, a Barangay\r\nTanod and two (2) Barangay Health\r\nWorkers, one (1) of whom is preferably a\r\nnurse or midwife, and where all are\r\nappointed by the Punong Barangay.', 'Organized Barangay\r\nHealth and Emergency\r\nResponse Team\r\n(BHERT) with its\r\ncomposition compliant to\r\nthe provisions of DILG\r\nMC No. 2020-023\r\nMinimum composition of the\r\nBHERTs:\r\n1. Executive Officer\r\n2. A Barangay Tanod\r\n3. 2 BHWs', 0, ''),
(377, 264, '3.5.2', 'DILG MC No. 2022-04621 states that the\r\nPunong\r\nBarangays\r\nare\r\ndirected\r\nto\r\nensure that a poster and/or tarpaulin is\r\nposted\r\nin\r\nconspicuous public places\r\nwithin\r\nthe\r\nbarangay\r\njurisdiction\r\ncontaining the following:\r\n1. Active telephone number of the\r\nbarangay\r\nand\r\nother\r\ncontact/information\r\ndetails such\r\nas,\r\nbut\r\nnot\r\nlimited\r\nto:\r\nemail\r\naddress\r\nand/or\r\nsocial\r\nmedia\r\naccount;\r\n2. Name\r\nof\r\nthe\r\nPB\r\nand\r\nhis/her\r\nactive\r\ncellphone\r\nor\r\nlandline\r\nnumber; and\r\n3. Name,\r\ndesignation\r\nand\r\nactive\r\ncellphone or landline number of\r\nthe members of BHERT.', 'Poster\r\nor\r\ntarpaulin\r\ncontaining\r\nthe\r\nactive\r\ntelephone\r\nand/or\r\ncellphone Numbers of\r\nthe Barangay, Punong\r\nBarangay and BHERT\r\nMembers\r\nposted\r\nin\r\nconspicuous\r\npublic\r\nplaces\r\nwithin\r\nthe\r\nbarangay jurisdiction', 0, ''),
(378, 265, '3.6.1', 'DILG MC No. 2022-08522, Item 4.1.3.1\r\nstates that all barangay shall conduct\r\nregular road clearing operations in all\r\nbarangay roads, and implement policies\r\nfor the efficient use of the same, such as\r\nthe enforcement of no-parking, one-side\r\nparking, or other similar strategies, in\r\naccordance\r\nwith\r\nthe\r\nordinance\r\nduly\r\nenacted\r\nby\r\nthe\r\nSangguniang\r\nBayan/Panlungsod\r\nDILG\r\nMC\r\n2023-01723\r\nmandates\r\nthe\r\nsubmission of their respective Monthly\r\nBaRCO Reports to the concerned DILG\r\nC/M Field Offices.', 'Conducted BaRCO on a\r\nmonthly\r\nbasis\r\nin\r\nCY\r\n2023', 0, ''),
(379, 255, '1.6.1', 'Section 20 (a) of the SK Reform Act\r\nof 2015 states that all the income of\r\nthe barangay derived from whatever\r\nsource shall accrue to its general\r\nfund and shall, at the option of the\r\nbarangay concerned, be kept as a\r\ntrust fund in the custody of the city or\r\ninmunicipal treasurer or be deposited\r\na\r\nbank,\r\npreferably\r\ngovernment-owned,\r\nsituated\r\nin or\r\nnearest to its area of jurisdiction.\r\nFurther, it mandates that 10% of the\r\ngeneral fund of the barangay shall\r\nbe\r\nset\r\naside\r\nfor\r\nthe\r\nSK.\r\nThe\r\nSangguniang\r\nBarangay\r\nshall\r\nappropriate\r\nthe\r\nSK\r\nfunds\r\nin\r\nlump-sum which shall be disbursed\r\nsolely for youth development and\r\nempowerment purposes.\r\nSection 20 (b) of the same Act also\r\nstates\r\nthat\r\nSK\r\nhave\r\nfinancial\r\nindependence\r\nin\r\nits\r\noperation,\r\ndisbursement of their fund, income,\r\nand expenditure.\r\nItem 3.2.1 of the DBM-DILG-NYC\r\nJMC No. 1, s. 20197 dated January\r\n23, 2019 provides that the SK funds\r\nshall be automatically released by\r\nthe barangay to the SK and shall not\r\nbe subject to any lien or holdback\r\nthat\r\nmay\r\nbe\r\nimposed\r\nby\r\nthe\r\nbarangay for whatever purpose.\r\nItem 3.2.2 of the same JMC states\r\nthat the SK shall open a current\r\naccount in the name of the SK in a\r\nbank, preferably government-owned,\r\nsituated in or nearest to its area of\r\njurisdiction, with the SK chairperson\r\nand the SK treasurer as the official\r\nsignatories\r\nItem\r\n3.2.3\r\nof\r\nthe\r\nsame\r\nJMC\r\nmandates that the SK funds shall be\r\ndeposited by the barangay in the\r\ncurrent account of the SK not later\r\nthan 5 WD after crediting of the\r\nmonthly NTA share of the barangay.\r\nThe\r\nbarangay\r\nmay\r\nopt\r\nto\r\ntransfer/release the SK funds earlier\r\nthan herein prescribed on an annual,\r\nsemestral or quarterly basis, subject\r\nto the written agreement between\r\nthe barangay and the SK.\r\nItem 3.2.4 provides that in case of\r\nbarangays\r\nwithout\r\nelected\r\nSK\r\nofficials, the barangay shall transfer\r\nthe corresponding ten percent (10%)\r\nSK Fund to the trust fund of the\r\nbarangay, and the same shall be\r\nreleased by the barangay upon the\r\nelection\r\nof\r\nthe\r\nSK\r\nofficials\r\nconcerned.\r\nSection 20 of RA 10742 states that\r\nthe\r\nSangguniang\r\nKabataan funds\r\nshall be governed by the following\r\nprovisions: (a) All the income of the\r\nbarangay\r\nderived\r\nfrom\r\nwhatever\r\nsource shall accrue to its general\r\nfund and shall, at the option of the\r\nbarangay concerned, be kept as\r\ntrust fund in the custody of the\r\ncity or municipal treasurer or be\r\ndeposited\r\nin\r\na\r\nbank\r\npreferably\r\ngovernment-owned,\r\nsituated\r\nin or\r\nnearest to its area of jurisdiction.\r\nSuch funds shall be disbursed in\r\naccordance with the provisions of\r\nthis Act. Ten percent (10%) of the\r\ngeneral fund of the barangay shall\r\nbe set aside for the Sangguniang\r\nKabataan.\r\nThe\r\nSangguniang\r\nBarangay\r\nshall\r\nappropriate\r\nthe\r\nSangguniang\r\nKabataan\r\nfunds\r\nin\r\nlump-sum which shall be disbursed\r\nsolely for youth development and\r\nempowerment purposes\r\nNote:\r\nThe\r\nSangguniang\r\nKabataan\r\nFrequently\r\nAsked\r\nQuestions\r\ncan\r\nbe\r\naccessed\r\nthrough\r\nthe\r\nlink:\r\nhttps://bit.ly/SK_FAQ-SGLGB', '1.6.1.2.\r\nThe\r\nbarangay does not have\r\nBarangay-SK\r\nAgreement\r\nbut\r\nwith\r\ncurrent account;', 0, ''),
(380, 255, '1.6.1', 'Section 20 (a) of the SK Reform Act\r\nof 2015 states that all the income of\r\nthe barangay derived from whatever\r\nsource shall accrue to its general\r\nfund and shall, at the option of the\r\nbarangay concerned, be kept as a\r\ntrust fund in the custody of the city or\r\ninmunicipal treasurer or be deposited\r\na\r\nbank,\r\npreferably\r\ngovernment-owned,\r\nsituated\r\nin or\r\nnearest to its area of jurisdiction.\r\nFurther, it mandates that 10% of the\r\ngeneral fund of the barangay shall\r\nbe\r\nset\r\naside\r\nfor\r\nthe\r\nSK.\r\nThe\r\nSangguniang\r\nBarangay\r\nshall\r\nappropriate\r\nthe\r\nSK\r\nfunds\r\nin\r\nlump-sum which shall be disbursed\r\nsolely for youth development and\r\nempowerment purposes.\r\nSection 20 (b) of the same Act also\r\nstates\r\nthat\r\nSK\r\nhave\r\nfinancial\r\nindependence\r\nin\r\nits\r\noperation,\r\ndisbursement of their fund, income,\r\nand expenditure.\r\nItem 3.2.1 of the DBM-DILG-NYC\r\nJMC No. 1, s. 20197 dated January\r\n23, 2019 provides that the SK funds\r\nshall be automatically released by\r\nthe barangay to the SK and shall not\r\nbe subject to any lien or holdback\r\nthat\r\nmay\r\nbe\r\nimposed\r\nby\r\nthe\r\nbarangay for whatever purpose.\r\nItem 3.2.2 of the same JMC states\r\nthat the SK shall open a current\r\naccount in the name of the SK in a\r\nbank, preferably government-owned,\r\nsituated in or nearest to its area of\r\njurisdiction, with the SK chairperson\r\nand the SK treasurer as the official\r\nsignatories\r\nItem\r\n3.2.3\r\nof\r\nthe\r\nsame\r\nJMC\r\nmandates that the SK funds shall be\r\ndeposited by the barangay in the\r\ncurrent account of the SK not later\r\nthan 5 WD after crediting of the\r\nmonthly NTA share of the barangay.\r\nThe\r\nbarangay\r\nmay\r\nopt\r\nto\r\ntransfer/release the SK funds earlier\r\nthan herein prescribed on an annual,\r\nsemestral or quarterly basis, subject\r\nto the written agreement between\r\nthe barangay and the SK.\r\nItem 3.2.4 provides that in case of\r\nbarangays\r\nwithout\r\nelected\r\nSK\r\nofficials, the barangay shall transfer\r\nthe corresponding ten percent (10%)\r\nSK Fund to the trust fund of the\r\nbarangay, and the same shall be\r\nreleased by the barangay upon the\r\nelection\r\nof\r\nthe\r\nSK\r\nofficials\r\nconcerned.\r\nSection 20 of RA 10742 states that\r\nthe\r\nSangguniang\r\nKabataan funds\r\nshall be governed by the following\r\nprovisions: (a) All the income of the\r\nbarangay\r\nderived\r\nfrom\r\nwhatever\r\nsource shall accrue to its general\r\nfund and shall, at the option of the\r\nbarangay concerned, be kept as\r\ntrust fund in the custody of the\r\ncity or municipal treasurer or be\r\ndeposited\r\nin\r\na\r\nbank\r\npreferably\r\ngovernment-owned,\r\nsituated\r\nin or\r\nnearest to its area of jurisdiction.\r\nSuch funds shall be disbursed in\r\naccordance with the provisions of\r\nthis Act. Ten percent (10%) of the\r\ngeneral fund of the barangay shall\r\nbe set aside for the Sangguniang\r\nKabataan.\r\nThe\r\nSangguniang\r\nBarangay\r\nshall\r\nappropriate\r\nthe\r\nSangguniang\r\nKabataan\r\nfunds\r\nin\r\nlump-sum which shall be disbursed\r\nsolely for youth development and\r\nempowerment purposes\r\nNote:\r\nThe\r\nSangguniang\r\nKabataan\r\nFrequently\r\nAsked\r\nQuestions\r\ncan\r\nbe\r\naccessed\r\nthrough\r\nthe\r\nlink:\r\nhttps://bit.ly/SK_FAQ-SGLGB', '1.6.1.3.\r\nThe\r\nbarangay\r\ndoes\r\nnot\r\nhave\r\nSK\r\nOfficials\r\nor\r\nwith SK Officials but no\r\nquorum and/or No SK\r\nBank Account\r\n\r\nNote: SK Resolution authorizing the\r\nbarangay to utilize the SK Funds if the SK has no bank account yet shall not be\r\nconsidered as MOV under the indicator.', 0, ''),
(381, 257, '2.1.4', 'Section 21 of RA 10121 provides that not\r\nless\r\nthan\r\nfive\r\npercent\r\n(5%)\r\nof\r\nthe\r\nestimated revenue from regular sources\r\nshall be set aside as the LDRRMF to\r\nsupport\r\ndisaster\r\nrisk\r\nmanagement\r\nactivities such as, but not limited to,\r\npre-disaster\r\npreparedness\r\nprograms\r\nincluding training, purchasing life-saving\r\nrescue\r\nequipment,\r\nsupplies\r\nand\r\nmedicines,\r\nfor\r\npost-disaster\r\nactivities,\r\nand for the payment of premiums on\r\ncalamity insurance.\r\nSection 4.0 of the NDRRMC, DBM and\r\nDILG JMC No. 2013-111 dated March 25,\r\n2013 provides that the LDRRMF shall\r\ncover the thirty percent (30%) lump-sum\r\nallocation\r\nfor\r\nQuick\r\nResponse\r\nFund\r\n(QRF) and the seventy percent (70%)\r\nallocation for disaster prevention and\r\nmitigation,\r\npreparedness,\r\nresponse,\r\nrehabilitation and recovery.', '2.1.4.2\r\nAt least 50% fund\r\nutilization of the 70%\r\ncomponent\r\nof\r\nCY 2023\r\nBDRRMF\r\n-\r\nPreparedness\r\ncomponent\r\nas\r\nof\r\nDecember 31, 2023.\r\n\r\nNote: Barangay officials have the option\r\nto submit both the physical and financial\r\nreports. However, for the SGLGB\r\nAssessment, only one of the above\r\nreports is required.', 0, '');

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
  `template` text NOT NULL,
  `data_source` int(11) DEFAULT NULL,
  `trail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_criteria_setup`
--

INSERT INTO `maintenance_criteria_setup` (`keyctr`, `version_keyctr`, `indicator_keyctr`, `minreqs_keyctr`, `sub_minimumreqs`, `movdocs_reqs`, `template`, `data_source`, `trail`) VALUES
(51, 2, 37, 94, 1, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of Barangay VAW\r\nDesk and designated VAW Desk\r\nOfficer covering January to\r\nOctober 2023', '', 5, 'Edited at 2025-03-07 03:54:54'),
(52, 2, 37, 95, 1, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation', '', 5, 'Created at 2025-03-06 07:45:59'),
(53, 2, 37, 96, 1, 'Approved Barangay GAD Plan\r\nand Budget for CY 2023\r\n', '', 5, 'Created at 2025-03-06 07:46:51'),
(54, 2, 37, 97, 1, 'Accomplishment Report covering\r\n1st to 3rd quarter of CY 2023 with\r\nreceived stamp by the C/MSWDO\r\nand C/MLGOO\r\n', '[\"https://bit.ly/VAWDesk-Form5\"]', 5, 'Created at 2025-03-06 07:47:24'),
(55, 2, 37, 98, 1, 'Copy of the generated report or\r\nscreenshot of the updated\r\ndatabase of VAW cases reported\r\nto the barangay with the total no.\r\nof VAW Cases and assistance\r\nprovided\r\n', '', 5, 'Created at 2025-03-06 07:48:49'),
(56, 2, 37, 99, 0, '1. 2023 GAD Accomplishment\r\nReport; and\r\n2. Certification on the\r\nsubmitted CY 2023 GAD\r\nAccomplishment Report\r\nsigned by the C/MSWDO or\r\nC/MLGOO\r\n', '[\"https://bit.ly/Certification-GAD-Ac complishment\"]', 5, 'Created at 2025-03-06 07:50:02'),
(57, 2, 37, 100, 0, 'Flow Chart based on Annex C -\r\nEstablishment of Referral System\r\nAnnex J - Directory Form', '', 5, 'Edited at 2025-03-06 23:28:31'),
(60, 2, 39, 101, 0, 'Photo documentation of the\r\nBHS/C\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\nFor clustered BHS/C: Certification\r\nfrom C/MHO on the clustering\r\nscheme\r\n', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\",\"https:\\/\\/bit.ly\\/Certification-HealthCenter\"]', 5, 'Created at 2025-03-06 09:45:09'),
(62, 2, 39, 102, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nAppointment of BHW and/or BHO\r\nor BHAsst covering January to\r\nOctober 2023', '', 5, 'Edited at 2025-03-06 23:32:54'),
(65, 2, 39, 103, 0, '1. EO (signed by the PB) or\r\nsimilar issuance\r\n(resolution/ordinance signed\r\nby the PB, Barangay\r\nSecretary and SBMs) on the\r\nappointment of BNS\r\n', '', 5, 'Created at 2025-03-07 02:48:42'),
(66, 2, 39, 104, 0, 'Certification on the provision of\r\nhealth services signed by the\r\nC/MHO\r\n', '[\"https:\\/\\/bit.ly\\/Certification-HealthServices\"]', 5, 'Created at 2025-03-07 02:52:13'),
(71, 2, 40, 105, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs)\r\norganizing/reconstituting the BDC\r\nwith its composition compliant to\r\nSection 107 of RA 7160 covering\r\nJanuary to October 2023\r\n', '', 5, 'Created at 2025-03-07 03:03:52'),
(72, 2, 40, 106, 0, 'Post activity report or Minutes\r\nwith attendance sheet, covering\r\nCY 2023\r\n', '', 5, 'Created at 2025-03-07 03:04:55'),
(73, 2, 40, 107, 0, '1. Approved Barangay\r\nDevelopment Plan covering\r\nCY 2023\r\n2. SB Resolution adopting the\r\nBDP\r\n', '[\"https:\\/\\/bit.ly\\/BDC-with-Resolution\"]', 5, 'Created at 2025-03-07 03:05:27'),
(74, 2, 40, 108, 0, 'CY 2023 Accomplishment Report\r\nwith received stamp by the\r\nC/MPDC', '', 5, 'Created at 2025-03-07 03:07:22'),
(75, 2, 41, 109, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) designating\r\na KDO to manage the\r\nKasambahay Desk, signed by the\r\nPB, Barangay Secretary and\r\nSBMs covering January to\r\nOctober 2023\r\n', '', 5, 'Created at 2025-03-07 03:10:04'),
(76, 2, 41, 110, 0, 'Copy of the Updated Kasambahay\r\nReport for the 3\r\nrd Quarter\r\n(July-September 2023)', '[\"https:\\/\\/bit.ly\\/Form2-KasambahayMasterlist\"]', 5, 'Created at 2025-03-07 03:10:43'),
(77, 2, 42, 111, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance signed by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of BCPC covering\r\nJanuary to October 2023\r\n', '', 5, 'Created at 2025-03-07 03:11:31'),
(78, 2, 42, 112, 0, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n', '', 5, 'Created at 2025-03-07 03:12:05'),
(79, 2, 42, 113, 0, 'Approved BCPC Annual Work and\r\nFinancial Plan (AWFP) for CY\r\n2023\r\n', '[\"https:\\/\\/bit.ly\\/BCPC-AWFP-Form001-A\"]', 5, 'Created at 2025-03-07 03:12:48'),
(80, 2, 42, 114, 0, 'Copy of the generated report or\r\nscreenshot of the updated\r\ndatabase on children covering\r\nJanuary to October 31, 2023\r\n', '', 5, 'Created at 2025-03-07 03:13:21'),
(81, 2, 42, 115, 0, 'Updated Localized Flow Chart of\r\nReferral System\r\nCopy of Comprehensive Barangay\r\nJuvenile Intervention\r\nProgram/Diversion Program\r\nCopy of Juvenile Justice and\r\nWelfare Council’s Children at Risk\r\n(CAR) and Children in Conflict with\r\nthe Law (CICL) registry', '', 5, 'Created at 2025-03-07 03:14:24'),
(82, 2, 42, 116, 0, 'Approved Accomplishment Report\r\non BCPC AWFP for CY 2023 with\r\nreceived stamp by the\r\nCity/Municipality Inter-Agency\r\nMonitoring Task Force (IMTF)', '', 5, 'Created at 2025-03-07 03:16:55'),
(83, 2, 43, 117, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay Secretary and SBMs) organizing\r\nthe Barangay GAD Focal Point\r\nSystem covering January to\r\nOctober 2023\r\n', '', 5, 'Created at 2025-03-07 03:17:30'),
(84, 2, 44, 118, 0, '1. RBI Monitoring Form C; and\r\n2. List of barangays with RBI\r\ncovering the 1st Semester\r\nof CY 2023 (generated from\r\nthe BIS-BPS) certified by\r\nthe C/MLGOO\r\n', '', 5, 'Created at 2025-03-07 03:18:05'),
(85, 2, 45, 119, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) organizing\r\nthe Barangay Nutrition Committee\r\n(BNC) covering January to\r\nOctober 2023\r\n', '', 5, 'Created at 2025-03-07 03:23:54'),
(86, 2, 45, 120, 0, 'Approved CY 2023 BNAP signed\r\nby the BNC\r\n', '[\"https:\\/\\/bit.ly\\/Sample-BNAP\"]', 5, 'Created at 2025-03-07 03:25:10'),
(87, 2, 45, 121, 0, 'Operation Timbang (OPT) Plus\r\nForm 1A (Barangay Tally and\r\nSummary Sheet of Preschoolers\r\nwith Weight & Height\r\nMeasurement by Age Group,\r\nSex and Nutritional Status) of\r\nCYs 2022 and 2023; and\r\nCertification from the C/MHO on\r\nthe Decrease in Prevalence Rate\r\n', '[\"https:\\/\\/bit.ly\\/OPT-Plus_Form1A\",\"https:\\/\\/bit.ly\\/Certification-DecreasePrevalenceRate\"]', 5, 'Created at 2025-03-07 03:26:47'),
(88, 2, 45, 122, 0, '1. Accomplishment Report on\r\nCY 2023 BNAP;\r\n2. Certification on the\r\nsubmitted BNAP\r\nAccomplishment Report for\r\nCY 2023 signed by the\r\nC/MLGOO\r\n\r\n', '[\"https:\\/\\/bit.ly\\/Certification-BNAP\"]', 5, 'Created at 2025-03-07 03:28:07'),
(89, 2, 46, 123, 0, 'Photo documentation of the\r\nestablished BCG\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\n', '', 5, 'Created at 2025-03-07 03:28:58'),
(90, 2, 46, 124, 0, 'Ordinance signed by the PB,\r\nBarangay Secretary and SBMs) on\r\nthe establishment of a BCG\r\n', '', 5, 'Created at 2025-03-07 03:29:32'),
(91, 2, 46, 125, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\ndesignated SMB to manage the\r\nBCG\r\n', '', 5, 'Created at 2025-03-07 03:30:19'),
(92, 2, 46, 126, 0, 'Proof of conduct of at least one (1)\r\nAdvocacy Campaign/Awareness\r\n(Photo/Social Media Post,\r\nPAR/AR, etc.)', '', 5, 'Created at 2025-03-07 03:31:08'),
(93, 2, 46, 127, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablished group volunteers\r\n', '', 5, 'Created at 2025-03-07 03:31:46'),
(94, 2, 47, 128, 0, 'Enacted Barangay Tax Ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs', '', 5, 'Created at 2025-03-07 03:42:25'),
(95, 2, 48, 129, 0, 'Enacted Barangay Ordinance\r\n(signed by the PB, Barangay\r\nSecretary and SBMs) relative to\r\nBarangay Clearance Fees on\r\nbusiness permit and locational\r\nclearance for building permit.\r\n', '', 5, 'Created at 2025-03-07 03:47:30'),
(96, 2, 48, 130, 0, 'Approved resolution authorizing\r\nthe City/Municipal Treasurer to\r\ncollect fees for Barangay\r\nClearance for Business permit and\r\nlocational clearance purposes\r\nsigned by PB, Barangay Secretary\r\nand SBMs.\r\n', '', 5, 'Created at 2025-03-07 03:48:04'),
(97, 2, 49, 131, 0, 'Photo documentation of the\r\nCitizens’ Charter on the issuance\r\nof barangay certification only\r\n(name of the barangay should be\r\nvisible)\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\n', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\",\"\"]', 5, 'Created at 2025-03-07 03:48:42'),
(98, 2, 50, 132, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\norganization of the BESWMC\r\n', '', 5, 'Created at 2025-03-07 03:49:15'),
(99, 2, 50, 133, 0, 'Approved Solid Waste\r\nManagement Program/Plan\r\ncovering CY 2023 with\r\ncorresponding fund allocation\r\n', '[\"https:\\/\\/bit.ly\\/BESWMC-Program-Plan\"]', 5, 'Created at 2025-03-07 03:49:51'),
(100, 2, 50, 134, 0, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation', '', 5, 'Created at 2025-03-07 03:50:17'),
(101, 2, 50, 135, 0, 'Three (3) Monthly\r\nAccomplishment Reports\r\ncovering July-September 2023', '[\"https:\\/\\/bit.ly\\/Sample-MonthlyAccomplish mentReport\"]', 5, 'Created at 2025-03-07 03:50:47'),
(102, 2, 51, 136, 0, 'For MRF operated by the\r\nbarangay:\r\nPhoto documentation of the\r\nMRF/MRF Records of the\r\nbarangay\r\nPhoto Requirements:\r\nOne (1) photo with Distant View;\r\nand\r\nOne (1) photo with Close-up\r\nView\r\nFor MRS:\r\n1. MOA with junkshop;\r\n2. Mechanism to process\r\nbiodegradable wastes; and3. MOA with service provider\r\nfor collection of\r\nbiodegradable wastes and\r\nrecyclables for treatment\r\nand temporary storage\r\nFor Clustered MRFs:\r\n1. MOA with the host\r\nbarangay (applicable for\r\nbarangay-clustered MRFs);\r\nand\r\n2. MOA or similar document\r\nindicating coverage of\r\ncity/municipal MRF\r\n(applicable for barangays\r\nclustered to the Central\r\nMRF of City/Municipality)\r\n', '', 5, 'Created at 2025-03-07 03:56:30'),
(103, 2, 52, 137, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on\r\nsegregation of wastes at-source', '', 5, 'Created at 2025-03-07 03:56:57'),
(251, 2, 237, 294, 1, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of Barangay VAW\r\nDesk and designated VAW Desk\r\nOfficer covering January to\r\nOctober 2023\r\n', '', 5, 'Created at 2025-03-06 07:45:12'),
(252, 2, 237, 295, 1, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation', '', 5, 'Created at 2025-03-06 07:45:59'),
(253, 2, 237, 296, 1, 'Approved Barangay GAD Plan\r\nand Budget for CY 2023\r\n', '', 5, 'Created at 2025-03-06 07:46:51'),
(254, 2, 237, 297, 1, 'Accomplishment Report covering\r\n1st to 3rd quarter of CY 2023 with\r\nreceived stamp by the C/MSWDO\r\nand C/MLGOO\r\n', '[\"https://bit.ly/VAWDesk-Form5\"]', 5, 'Created at 2025-03-06 07:47:24'),
(255, 2, 237, 298, 1, 'Copy of the generated report or\r\nscreenshot of the updated\r\ndatabase of VAW cases reported\r\nto the barangay with the total no.\r\nof VAW Cases and assistance\r\nprovided\r\n', '', 5, 'Created at 2025-03-06 07:48:49'),
(256, 2, 237, 299, 0, '1. 2023 GAD Accomplishment\r\nReport; and\r\n2. Certification on the\r\nsubmitted CY 2023 GAD\r\nAccomplishment Report\r\nsigned by the C/MSWDO or\r\nC/MLGOO\r\n', '[\"https://bit.ly/Certification-GAD-Ac complishment\"]', 5, 'Created at 2025-03-06 07:50:02'),
(257, 2, 237, 300, 0, 'Flow Chart based on Annex C -\r\nEstablishment of Referral System\r\nAnnex J - Directory Form\r\n', '[\"https://bit.ly/Annex-C-and-Annex-J\"]', 5, 'Created at 2025-03-06 07:50:57'),
(263, 2, 234, 338, 0, '1. Three (3) BFDP Monitoring\r\nForm A of the DILG Advisory\r\ncovering the 1st to 3rd quarter\r\nmonitoring data signed by the\r\nCity Director/C/MLGOO,\r\nPunong Barangay and\r\nBarangay Secretary; and\r\n2. Two (2) Photo Documentation\r\nof the BFDP board showing the\r\nname of the barangay\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView', '[\"https:\\/\\/bit.ly\\/BFDPMonitoring-FormA\",\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\"]', 5, 'Edited at 2025-03-07 06:58:06'),
(264, 2, 234, 339, 0, 'Annex B of DBM-DOF-DILG JMC\r\nNo. 2018-1', '[\"https:\\/\\/bit.ly\\/AnnexB-BFR-SRE\"]', 5, 'Created at 2025-03-07 06:58:43'),
(265, 2, 235, 340, 0, '1. SRE\r\nfor\r\n2022\r\nand\r\n2023,\r\nsigned by Barangay Treasurer\r\nand Punong Barangay; and\r\n2. Certification\r\non\r\nIncrease\r\nin\r\nLocal Resources signed by the\r\nCity/Municipal\r\nTreasurer/\r\nBudget Officer', '[\"https:\\/\\/bit.ly\\/Certification-IncreaseLocalResources\"]', 5, 'Created at 2025-03-07 23:29:02'),
(266, 2, 236, 341, 0, 'Approved Barangay Appropriation\r\nOrdinance\r\nsigned\r\nby\r\nthe\r\nSangguniang Barangay Members\r\n(SBMs),\r\nSK\r\nChairperson,\r\nBarangay Secretary, and Punong\r\nBarangay.', '', 5, 'Created at 2025-03-07 23:29:37'),
(267, 2, 253, 342, 0, '1. Approved\r\nBarangay\r\nAppropriation Ordinance;\r\n2. Annual\r\nInvestment\r\nProgram\r\nsigned by Barangay Treasurer,\r\nBarangay\r\nSecretary,\r\nand\r\nPunong Barangay;and\r\n3. Certification for the Allocation\r\nfor\r\nStatutory\r\nPrograms\r\nand\r\nProjects\r\nsigned\r\nby\r\nthe\r\nCity/Municipal Budget Officer', '[\"https:\\/\\/bit.ly\\/Certification-StatutoryPrograms\"]', 5, 'Created at 2025-03-07 23:57:30'),
(268, 2, 254, 343, 0, 'Two (2) Photo documentation of\r\nthe Barangay CitCha (name of the\r\nbarangay should be visible)\r\nPhoto Requirements:\r\nOne (1) photo with Distant View;\r\nand\r\nOne (1) photo with Close-up View', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\"]', 5, 'Created at 2025-03-07 23:57:47'),
(269, 2, 255, 344, 0, '1. Copy\r\nof\r\nthe\r\nwritten\r\nagreement; and\r\n2. Proof of deposit reflecting\r\nthe Account No./ Name of\r\nBarangay SK and the total\r\nallocated\r\namount\r\nfor\r\nthe\r\n2023 SK funds\r\nConsideration: In the absence of\r\ndeposit\r\nslips,\r\nbank\r\nstatements\r\nwill be considered, provided that\r\nit shows the transaction date, and\r\nthat the total 10% of the SK Fund\r\nhas been transferred.', '', 5, 'Created at 2025-03-08 00:03:15'),
(270, 2, 255, 379, 0, 'Deposit\r\nslips\r\nreflecting\r\nthe\r\nAccount No./ Name of Barangay\r\nSK and the total allocated amount\r\nfor the 2023 SK funds\r\nConsideration: In the absence of deposit\r\nslips, bank statements will be considered,\r\nprovided that it shows the transaction\r\ndate, and that the total 10% of the SK\r\nFund has been transferred.', '', 5, 'Created at 2025-03-08 00:03:44'),
(271, 2, 255, 380, 0, '1. (a) Proof of transfer of the 10%\r\n2023 SK funds to the trust\r\nfund of the Barangay such as\r\nDeposit Slip or Official Receipt;\r\nOR\r\n(b)\r\nProof\r\nof\r\ntransfer\r\nor\r\ncorresponding\r\nlegal forms/documents issued by\r\nthe city/municipal treasurer if\r\nthe barangay opted that the\r\ncorresponding SK fund be kept\r\nas trust fund in the custody\r\nof the C/M treasurer.', '', 5, 'Created at 2025-03-08 00:04:09'),
(272, 2, 255, 345, 0, 'If the barangay has 5 and above\r\nSK Officials:\r\n1. Approved Resolution\r\napproving the 2023 SK\r\nAnnual/Supplemental\r\nBudget; and\r\n2. An Approved 2023 ABYIP\r\nsigned by the SK\r\nChairperson and its\r\nmembers\r\nIf the barangay has 4 and below\r\nSK Officials:\r\nCertification from the C/MLGOO\r\non number of SK officials', '', 5, 'Created at 2025-03-08 00:05:28'),
(273, 2, 256, 346, 0, 'Post Activity Report/ Minutes on\r\nthe conduct of the 1st semester\r\nBarangay\r\nAssembly\r\n2023\r\nduly\r\napproved by the Punong Barangay', '[\"https:\\/\\/bit.ly\\/PAR-2023-1stSemBAD\"]', 5, 'Created at 2025-03-08 00:05:53'),
(274, 2, 257, 347, 0, 'EO (signed by the PB) or similar\r\nissuance\r\n(resolution/ordinance\r\nsigned\r\nby\r\nthe\r\nPB,\r\nBarangay\r\nSecretary and SBMs) organizing the\r\nBDRRMC\r\nwith\r\nits\r\ncomposition\r\ncompliant to the provisions of JMC\r\nNo. 2014-01, covering January to\r\nOctober 2023', '', 5, 'Created at 2025-03-08 00:06:27'),
(275, 2, 257, 348, 0, '1. Approved BDRRM Plan adopted\r\nby the Sangguniang Barangay ;\r\n2. Resolution adopting the BDRRM\r\nPlan signed by the Sangguniang\r\nBarangay with received stamp\r\nfrom the C/MDRRMO; and\r\n3. Certification\r\non\r\nthe\r\nlist\r\nof\r\nbarangays with approved and\r\nadopted BDRRM Plan covering\r\nCY\r\n2023\r\nsigned\r\nby\r\nthe\r\nC/MDRRMO.', '[\"https:\\/\\/bit.ly\\/Certification-BDRRMP\"]', 5, 'Created at 2025-03-08 00:06:55'),
(276, 2, 257, 349, 0, 'Certification on the\r\nallocation of at\r\nleast 5% of the Estimated Revenue\r\nfrom Regular Sources as BDRRM\r\nFund, signed by the City/Municipal\r\nBudget Officer', '[\"https:\\/\\/bit.ly\\/Certification-BDRRMFund\"]', 5, 'Created at 2025-03-08 00:07:21'),
(277, 2, 257, 350, 0, '1.\r\nAccomplishment\r\nReport;\r\nand\r\n2.\r\nCertification\r\non\r\nthe\r\nsubmission and correctness\r\nof\r\nAccomplishment Report\r\nsigned by the C/MDRRMO', '[\"https:\\/\\/bit.ly\\/Certification-BDRRMP-Physical\"]', 5, 'Edited at 2025-03-08 00:12:02'),
(278, 2, 257, 381, 0, '1.\r\nAnnual LDRRMF Utilization\r\nReport; and\r\n2.\r\nCertification\r\non\r\nthe\r\nsubmission and correctness\r\nof\r\nfund\r\nutilization\r\nreport\r\nsigned by the C/MDRRMO', '[\"https:\\/\\/bit.ly\\/Certification-BDRRMP-Fund\"]', 5, 'Created at 2025-03-08 00:11:33'),
(279, 2, 258, 351, 0, 'Post-Activity\r\nReport\r\nof\r\nactivities\r\nsuch as Climate and Disaster Risk\r\nAssessment, Participatory Disaster\r\nRisk\r\nAssessment,\r\nBDRRM\r\nPlanning, etc.', '', 5, 'Created at 2025-03-08 00:12:53'),
(280, 2, 258, 352, 0, 'Two (2) Photo documentations of\r\nBarangay Risk/Hazard Map\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\"]', 5, 'Created at 2025-03-08 00:13:26'),
(281, 2, 258, 353, 0, 'Two (2) Photo documentations of\r\nEWS\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\"]', 5, 'Created at 2025-03-08 00:13:54'),
(282, 2, 257, 349, 0, '1. Two (2) Photo documentation\r\nof the permanent or alternate\r\nevacuation center; and\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\n\r\n2. Certification on the presence\r\nand location of a permanent\r\nor temporary evacuation\r\ncenter signed by the\r\nC/MDRRMO', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\",\"https:\\/\\/bit.ly\\/Certification-EvacuationCenter\"]', 5, 'Created at 2025-03-08 01:17:36'),
(283, 2, 259, 354, 0, '1. Two (2) Photo documentation\r\nof the permanent or alternate\r\nevacuation center; and\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\n\r\n2. Certification on the presence\r\nand location of a permanent\r\nor temporary evacuation\r\ncenter signed by the\r\nC/MDRRMO', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\",\"https:\\/\\/bit.ly\\/Certification-EvacuationCenter\"]', 5, 'Created at 2025-03-08 01:26:36'),
(284, 2, 259, 355, 0, 'Photo Documentation for each of\r\ndisaster supplies equipment:\r\nPhoto Requirements:\r\nOne (1) photo each with\r\nClose-up View', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation-Equipments\"]', 5, 'Created at 2025-03-08 01:27:16'),
(285, 2, 260, 356, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) creating the\r\nBADAC with its composition and\r\nappropriate committees, covering\r\nJanuary to October 2023', '', 5, 'Created at 2025-03-08 01:27:48'),
(286, 2, 260, 357, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) establishing\r\nthe Rehabilitation Referral Desk\r\ncovering CY 2023', '', 5, 'Created at 2025-03-08 01:28:10'),
(287, 2, 260, 358, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay Secretary and SBMs), organizing\r\nhouse clusters with designated\r\nHCL', '', 5, 'Edited at 2025-03-08 01:45:56'),
(288, 2, 260, 359, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs), organizing\r\nBAT', '', 5, 'Created at 2025-03-08 01:48:27'),
(289, 2, 260, 360, 0, 'Copy of approved BADPA\r\nSummary or copy of approved\r\nBPOPs Plan with BADPA covering\r\nCY 2023', '[\"https:\\/\\/bit.ly\\/BADPA-Template\"]', 5, 'Created at 2025-03-08 01:48:57'),
(290, 2, 260, 361, 0, 'Approved Barangay Appropriation\r\nOrdinance\r\nsigned\r\nby\r\nthe\r\nPB,\r\nBarangay Secretary and SBMs.\r\n\r\nOR\r\n\r\nCopy\r\nof\r\nBarangay\r\nAnnual\r\nInvestment Plan (AIP)', '[\"https:\\/\\/bit.ly\\/Template_AIP\"]', 5, 'Created at 2025-03-08 01:49:47'),
(291, 2, 260, 362, 0, 'Copy of Activity Report prepared\r\nby the BADAC', '', 5, 'Created at 2025-03-08 01:50:11'),
(292, 2, 260, 363, 0, '1. Three (3) Transmittals of CIR,\r\ncovering the 1st to 3rd quarter,\r\nreceived\r\nby\r\nCADAC/MADAC\r\nand Local PNP Unit; AND\r\n2. Certification on\r\nthe submitted\r\nCIR\r\nsigned\r\nby\r\nthe\r\nCADAC/MADAC\r\nand\r\nLocal\r\nPNP Unit', '[\"https:\\/\\/bit.ly\\/Transmittal-CIR\"]', 5, 'Created at 2025-03-08 01:50:40'),
(293, 2, 260, 364, 0, 'Accomplished\r\nBADAC\r\nForm\r\n4-\r\nUnified\r\nBarangay\r\nReport\r\non\r\nReferral Action (UBRA)', '[\"https:\\/\\/bit.ly\\/BADAC-Form4\"]', 5, 'Created at 2025-03-08 01:51:23'),
(294, 2, 260, 365, 0, 'Copy of the BADAC\r\nmonthly\r\nminutes\r\nof\r\nthe\r\nmeeting\r\nwith\r\nattendance\r\nsheets\r\n(at\r\nleast\r\n3\r\nminutes covering CY 2023)', '', 5, 'Created at 2025-03-08 01:52:11'),
(295, 2, 261, 366, 0, 'EO (signed by the PB) or similar\r\nissuance\r\n(resolution/ordinance\r\nsigned\r\nby\r\nthe\r\nPB,\r\nBarangay\r\nSecretary and SBMs) indicating\r\ncorrect membership in accordance\r\nto the EO 366 s. of 1996, covering\r\nJanuary to October 2023', '', 5, 'Created at 2025-03-08 01:52:41'),
(296, 2, 261, 367, 0, 'Approved BPOPS Plan, covering\r\nCY 2023', '', 5, 'Created at 2025-03-08 01:52:55'),
(297, 2, 261, 368, 0, 'Accomplishment Report with the\r\nstatus of implementation of target\r\nactivities and utilization of funds\r\nsubmitted to the C/M POC with\r\nreceived stamp of the DILG City\r\nDirector or C/MLGOO', '', 5, 'Created at 2025-03-08 01:53:17'),
(298, 2, 262, 369, 0, 'At least ten (10) KP Form # 5-\r\nOath of Office of the Lupong\r\nTagapamayapa Members, signed\r\nby the PB', '', 5, 'Created at 2025-03-08 01:55:37'),
(299, 2, 262, 370, 0, 'MOVs for 3.3.2.1\r\nTwo (2) photos with caption of the\r\ncomputer database with\r\nsearchable information\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\"]', 5, 'Created at 2025-03-08 01:56:12'),
(300, 2, 262, 371, 0, 'MOVs for 3.3.2.2\r\nFor barangays of municipalities:\r\nOne (1) photo, with caption on the\r\nmanual record or digital file', '', 5, 'Created at 2025-03-08 01:56:53'),
(301, 2, 262, 372, 0, 'Copies of minutes of meetings\r\nwith attendance sheets (at least 3\r\nminutes covering meetings\r\nconducted in CY 2023)', '', 5, 'Created at 2025-03-08 01:57:13'),
(302, 2, 262, 373, 0, 'At least 1 copy of proof of training\r\nsuch as Certificate of Completion\r\nand/or Participation', '', 5, 'Created at 2025-03-08 01:57:36'),
(303, 2, 263, 374, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\norganization of the Barangay\r\nTanod covering January to\r\nOctober 2023', '', 5, 'Created at 2025-03-08 01:58:00'),
(304, 2, 263, 375, 0, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation', '', 5, 'Created at 2025-03-08 01:58:22'),
(305, 2, 264, 376, 0, 'EO (signed by the PB) or similar\r\nissuance\r\n(resolution/ordinance\r\nsigned\r\nby\r\nthe\r\nPB,\r\nBarangay\r\nSecretary\r\nand\r\nSBMs)\r\non\r\nthe\r\norganization of BHERTs covering\r\nJanuary to October 2023', '', 5, 'Created at 2025-03-08 01:58:38'),
(306, 2, 264, 377, 0, '(a)Two (2) Photo documentations\r\nof poster or tarpaulin\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\nOR\r\n(b) Screenshot of the posting on\r\nsocial media with date covering\r\nCY 2023.', '[\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\"]', 5, 'Created at 2025-03-08 01:59:08'),
(307, 2, 265, 378, 0, '1.\r\nThree\r\n(3)\r\nMonthly\r\nBarCo\r\nReports\r\ncovering\r\nJuly-September 2023;', '', 5, 'Created at 2025-03-08 02:00:23');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_link` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(32, '104201001', NULL, 111, '2025-03-04 06:12:22'),
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
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  MODIFY `keyctr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
