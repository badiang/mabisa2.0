-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2025 at 05:13 AM
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
(314, 1, 'admin', 'Updated Indicator: 4.12 → 4.1, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF BARANGAY VIOLENCE AGAINST WOMEN (VAW) DESK', '2025-03-06 12:19:26'),
(315, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.1, Description: Structure:\r\nOrganized Barangay\r\nVAW Desk and\r\ndesignated Barangay\r\nVAW Desk Officer, and Sub Minimum Requirements: 0', '2025-03-06 13:27:11'),
(316, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.2, Description: Training:\r\nAttendance of the\r\nBarangay VAW Desk\r\nOfficer to at least one (1)\r\ntraining/orientation\r\nrelated to\r\ngender-sensitive handling\r\nof VAW Cases not earlier\r\nthan CY 2020\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:28:12'),
(317, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.3, Description:  Plan and Budget:\r\nApproved CY 2023\r\nBarangay Gender and\r\nDevelopment (GAD) Plan\r\nand Budget, and Sub Minimum Requirements: 0', '2025-03-06 13:28:45'),
(318, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.4, Description:  Accomplishment\r\nReports:\r\nQuarterly accomplishment\r\nreports based on the\r\ndatabase/records of VAW\r\ncases reported in the\r\nbarangay containing\r\nrelevant information such\r\nas total number of VAW\r\ncases received,\r\nassistance provided to\r\nvictim-survivors, total\r\nnumber of cases\r\ndocumented for violating\r\nRA 9262 and other\r\nVAW-related laws, total\r\nbarangay population,\r\nnumber of male and\r\nfemale in the ', '2025-03-06 13:29:40'),
(319, 1, 'admin', 'Deleted a Criteria with an ID: 47', '2025-03-06 13:30:40'),
(320, 1, 'admin', 'Deleted a Criteria with an ID: 48', '2025-03-06 13:30:43'),
(321, 1, 'admin', 'Deleted a Criteria with an ID: 49', '2025-03-06 13:30:45'),
(322, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 95, Sub Minimum Requirements: 1, MOV Documents Requirements: as, and Document Source: 5', '2025-03-06 13:31:02'),
(323, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.5, Description:  Database:\r\nUpdated database on\r\nVAW cases reported to\r\nthe barangay, with the\r\nfollowing information at\r\nthe minimum:\r\na) total number of VAW\r\ncases received\r\n● number of cases\r\ndocumented for\r\nviolating RA 9262\r\n● number of cases\r\ndocumented for\r\nviolating other\r\nVAW-related laws\r\nb) assistance provided to\r\nvictim-survivors\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:32:28'),
(324, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.6 , Description:  Accomplishment\r\nReports\r\n4.1.6.1. At least 50%\r\naccomplishment of thephysical targets in the GAD\r\nPlan\r\nOR\r\n4.1.6.2. At least 50% fund\r\nutilization of the CY 2023\r\nGAD Budget\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:35:52'),
(325, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 37, Requirements Code: 4.1.7, Description: Referral Network\r\n4.1.7.1. Presence of Referral\r\nSystem Flow Chart (For\r\nprofiling) ; and\r\n4.1.7.2. Presence of Directory\r\nof agencies/individuals\r\nproviding services to\r\nvictim-survivors (For\r\nprofiling)\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:36:59'),
(326, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description:  ACCESS TO HEALTH AND SOCIAL WELFARE SERVICES IN THE BARANGAY', '2025-03-06 13:38:02'),
(327, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 39, Requirements Code: 4.2.1. , Description: Presence of a Barangay\r\nHealth Station/Center\r\nConsideration: Clustered Health\r\nStation/Center accessed by\r\nseveral barangays in a\r\ncity/municipality\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:41:32'),
(328, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 39, Requirements Code: 4.2.2, Description: Part of the discharged function and\r\nresponsibility of the national agencies\r\nand offices that have been devolved\r\npursuant to the Local Government\r\nCode (LGC) of 1991 is the maintenance\r\nof health and social welfare services\r\nincluding services and facilities related\r\nto general hygiene and sanitation.\r\nSection 8 of PD 156925 states that the\r\nimplementation of the project shall be\r\nthe total responsi', '2025-03-06 13:45:08'),
(329, 1, 'admin', 'Updated Minimum Requirement with ID: 102, to Indicator ID: 39, Requirements Code: 4.2.2, Description: Appointment of the\r\nfollowing Barangay Health\r\nPersonnel:\r\n1. Accredited Barangay\r\nHealth Worker (BHW);AND/OR\r\n2.Barangay Health Officer\r\n(BHO) or Barangay Health\r\nAssistant (BHAsst)\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:46:17'),
(330, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 39, Requirements Code: 4.2.3., Description: Appointment of a\r\nBarangay Nutrition\r\nScholar (BNS)\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:47:00'),
(331, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 39, Requirements Code: 4.2.4., Description: Availability of health\r\nservices in the BHS/C\r\nsuch as:\r\na) immunization\r\nb) maternal and child\r\nhealthcare\r\nc) family planning\r\nd) health education, and Sub Minimum Requirements: 0', '2025-03-06 13:48:02'),
(332, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF THE BARANGAY DEVELOPMENT COUNCIL (BDC)', '2025-03-06 13:49:02'),
(333, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 40, Requirements Code: 4.3.1, Description: Structure:\r\nOrganized BDC with its\r\ncomposition compliant to\r\nSection 107 of RA 7160, and Sub Minimum Requirements: 0', '2025-03-06 13:50:35'),
(334, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 40, Requirements Code: 4.3.2, Description: Meeting:\r\nConducted meetings,\r\npublic hearings, and/or\r\nbarangay assemblies for\r\npublic consultation, and Sub Minimum Requirements: 0', '2025-03-06 13:51:16'),
(335, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 40, Requirements Code: 4.3.3, Description: Plan\r\nApproved Barangay\r\nDevelopment Plan, and Sub Minimum Requirements: 0', '2025-03-06 13:51:39'),
(336, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 40, Requirements Code: 4.3.4, Description: Accomplishments\r\nReports:\r\n4.3.4 a) At least 50%\r\naccomplishment of the physical\r\ntargets in the BDP\r\nOR\r\n4.3.4 b) At least 50% fund\r\nutilization rate of the CY 2023\r\nBDP Budget\r\n, and Sub Minimum Requirements: 0', '2025-03-06 13:52:30'),
(337, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: IMPLEMENTATION OF THE KASAMBAHAY LAW', '2025-03-06 13:53:00'),
(338, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 41, Requirements Code: 4.4.1 , Description:  Presence of Kasambahay\r\nDesk with designated\r\nKasambahay Desk\r\nOfficer (KDO), and Sub Minimum Requirements: 0', '2025-03-06 13:53:38'),
(339, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 41, Requirements Code: 4.4.2, Description: Maintenance/updating of\r\na Kasambahay\r\nMasterlist, and Sub Minimum Requirements: 0', '2025-03-06 13:54:01'),
(340, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF THE BARANGAY COUNCIL FOR THE PROTECTION OF CHILDREN (BCPC)', '2025-03-06 13:54:43'),
(341, 1, 'admin', 'Updated Indicator: 4.4 → 4.5, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF THE BARANGAY COUNCIL FOR THE PROTECTION OF CHILDREN (BCPC)', '2025-03-06 13:56:10'),
(342, 1, 'admin', 'Updated Indicator: 4.5 → 4.4, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF THE BARANGAY COUNCIL FOR THE PROTECTION OF CHILDREN (BCPC)', '2025-03-06 13:57:09'),
(343, 1, 'admin', 'Updated Indicator: Keyctr: 41, New Indicator Code: 4.4, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF THE BARANGAY COUNCIL FOR THE PROTECTION OF CHILDREN (BCPC)', '2025-03-06 14:00:02'),
(344, 1, 'admin', 'Updated Indicator: Keyctr: 41, New Indicator Code: 4.4, Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: IMPLEMENTATION OF THE KASAMBAHAY LAW', '2025-03-06 14:00:18'),
(345, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 42, Requirements Code: 4.5.1 , Description:  Structure:\r\nOrganized Barangay\r\nCouncil for Protection of\r\nChildren (BCPC) with its\r\ncomposition compliant to\r\nthe provisions of DILG\r\nMC No. 2021-039\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:01:44'),
(346, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 42, Requirements Code: 4.5.2 , Description:  Trainings:\r\nAttendance of the\r\nMembers of the\r\nBarangay Council for\r\nProtection of Children\r\n(BCPC) to a\r\ntraining/orientation\r\nrelated to their functions\r\nnot earlier than CY 2020, and Sub Minimum Requirements: 0', '2025-03-06 14:02:56'),
(347, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 42, Requirements Code: 4.5.3, Description: Plan:\r\nPresence of an approved\r\nBCPC Annual Work and\r\nFinancial Plan, and Sub Minimum Requirements: 0', '2025-03-06 14:03:37'),
(348, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 42, Requirements Code: 4.5.4, Description: Database:\r\nEstablishment and\r\nmaintenance of updated\r\nDatabase on Children\r\ndisaggregated by age,\r\nsex, ethnicity, with or\r\nwithout disabilities,\r\nOSCY, etc.\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:05:09'),
(349, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 42, Requirements Code: 4.5.5, Description: System:\r\na. Presence of updated\r\nLocalized Flow Chart of\r\nReferral System not\r\nearlier than CY 2020;\r\nb. Presence of\r\nComprehensive\r\nBarangay Juvenile\r\nIntervention\r\nProgram/Diversion\r\nProgram (For profiling);\r\nand\r\nc. Presence of Children at\r\nRisk (CAR) and Children\r\nin Conflict with the Law\r\n(CICL) registry (For\r\nprofiling)., and Sub Minimum Requirements: 0', '2025-03-06 14:06:08'),
(350, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 42, Requirements Code: 4.5.6, Description:  Accomplishment\r\nReports:\r\n4.5.6 a) At least 50%\r\naccomplishment of the\r\nphysical targets in the\r\nBCPC AWFP\r\nOR\r\n4.5.6 b) At least 50%\r\nutilization rate of CY\r\n2023 BCPC AWFP\r\nBudget, and Sub Minimum Requirements: 0', '2025-03-06 14:07:43'),
(351, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: MECHANISM FOR GENDER AND DEVELOPMENT (GAD)', '2025-03-06 14:12:46'),
(352, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 43, Requirements Code: 4.6.1 , Description: Organized Barangay\r\nGAD Focal Point\r\nSystem29, and Sub Minimum Requirements: 0', '2025-03-06 14:13:35'),
(353, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description:  MAINTENANCE OF UPDATED RECORD OF BARANGAY INHABITANTS (RBIs)', '2025-03-06 14:14:02'),
(354, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 44, Requirements Code: 4.7.1 , Description: Presence of updated RBI\r\nfor the first (1st) semester\r\nof CY 2023, and Sub Minimum Requirements: 0', '2025-03-06 14:15:09'),
(355, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description: FUNCTIONALITY OF THE BARANGAY NUTRITION COMMITTEE (BNC)', '2025-03-06 14:15:43'),
(356, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 45, Requirements Code: 4.8.1, Description:  Structure:\r\nOrganized BNC, and Sub Minimum Requirements: 0', '2025-03-06 14:18:15'),
(357, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 45, Requirements Code: 4.8.2, Description: Plan:\r\nPresence of approved CY\r\n2023 BNAP, and Sub Minimum Requirements: 0', '2025-03-06 14:19:10'),
(358, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 45, Requirements Code: 4.8.3, Description: Decrease in Prevalence\r\nRate in the barangay, for\r\nthe following categories:\r\n1. Underweight and\r\nSevere Underweight\r\n2. Stunting and Severe\r\nStunting;and\r\n3. Moderate Wasting and\r\nSevere Wasting, and Sub Minimum Requirements: 0', '2025-03-06 14:19:47'),
(359, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 45, Requirements Code: 4.8.4 , Description: a) At least 50%\r\naccomplishment of the physical\r\ntargets in the CY 2023 BNAP OR\r\n b) At least 50% fund\r\nutilization rate of the CY 2023\r\nBNAP Budget, and Sub Minimum Requirements: 0', '2025-03-06 14:21:46'),
(360, 1, 'admin', 'Created a new Indicator with Governance Code: 15, Area Description: SOCIAL PROTECTION AND SENSITIVITY, Indicator Description:  HALINA’T MAGTANIM NG PRUTAS AT GULAY (HAPAG) SA BARANGAY PROJECT', '2025-03-06 14:23:06'),
(361, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 46, Requirements Code: 4.9.1, Description: Established a Barangay\r\nCommunity Garden (BCG), and Sub Minimum Requirements: 0', '2025-03-06 14:23:54'),
(362, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 46, Requirements Code: 4.9.2, Description: Enacted Ordinance for\r\nthe Establishment of a\r\nBarangay Community Garden\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:24:22'),
(363, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 46, Requirements Code: 4.9.3, Description: Designated SBM to\r\nManage the Barangay\r\nCommunity Garden, and Sub Minimum Requirements: 0', '2025-03-06 14:24:44'),
(364, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 46, Requirements Code: 4.9.4, Description: Conducted at least One\r\n(1) Advocacy Campaign/\r\nAwareness on community\r\nhousehold gardening\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:25:32'),
(365, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 46, Requirements Code: 4.9.5, Description: Established Group of\r\nVolunteers on the\r\nImplementation of the\r\nCommunity Garden, and Sub Minimum Requirements: 0', '2025-03-06 14:26:07'),
(366, 1, 'admin', 'Created a new Indicator with Governance Code: 16, Area Description: BUSINESS-FRIENDLINESS AND COMPETITIVENESS, Indicator Description: POWER TO LEVY OTHER TAXES, FEES OR CHARGES', '2025-03-06 14:27:20'),
(367, 1, 'admin', 'Created a new Indicator with Governance Code: 16, Area Description: BUSINESS-FRIENDLINESS AND COMPETITIVENESS, Indicator Description: COMPLIANCE TO SECTION 11 OF RA 11032 OR THE EASE OF DOING BUSINESS LAW', '2025-03-06 14:27:54'),
(368, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 47, Requirements Code: 5.1.1, Description: Enacted Barangay Tax\r\nOrdinance pursuant to\r\nSec. 129 of the LGC, and Sub Minimum Requirements: 0', '2025-03-06 14:28:45'),
(369, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 48, Requirements Code: 5.2.1, Description: Enacted Barangay\r\nOrdinance relative to\r\nBarangay Clearance fees\r\non business permit and\r\nlocational clearance for\r\nbuilding permit pursuant\r\nto DILG MC No.\r\n2019-177\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:29:50'),
(370, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 48, Requirements Code: 5.2.2, Description: Approved resolution\r\nauthorizing the\r\nCity/Municipal Treasurer\r\nto collect fees for\r\nBarangay Clearance for\r\nBusiness permit and\r\nlocational clearance\r\npurposes pursuant to\r\nDILG MC No. 2019-177.\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:30:14'),
(371, 1, 'admin', 'Created a new Indicator with Governance Code: 16, Area Description: BUSINESS-FRIENDLINESS AND COMPETITIVENESS, Indicator Description: ISSUANCE OF BARANGAY CERTIFICATION NOT COVERED BY DILG MC NO. 2019-177 SUCH AS: RESIDENCY, INDIGENCY, ETC, WITHIN SEVEN (7) WORKING DAYS', '2025-03-06 14:31:19'),
(372, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 49, Requirements Code: 5.3.1 , Description: Presence of a Citizens’\r\nCharter on the issuance\r\nof barangay certification\r\nposted in the barangay\r\nhall, and Sub Minimum Requirements: 0', '2025-03-06 14:31:56'),
(373, 1, 'admin', 'Created a new Indicator with Governance Code: 17, Area Description: ENVIRONMENTAL MANAGEMENT, Indicator Description: FUNCTIONALITY OF THE BARANGAY ECOLOGICAL SOLID WASTE MANAGEMENT COMMITTEE (BESWMC)', '2025-03-06 14:32:59'),
(374, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 50, Requirements Code: 6.1.1, Description: Structure\r\nOrganized BESWMC\r\nwith composition\r\ncompliant to DILG MC\r\nNo. 2018-112, and Sub Minimum Requirements: 0', '2025-03-06 14:33:59'),
(375, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 50, Requirements Code: 6.1.2, Description: Plan\r\nApproved Solid Waste\r\nManagement\r\nProgram/Plan with\r\ncorresponding fund\r\nallocation, and Sub Minimum Requirements: 0', '2025-03-06 14:34:59'),
(376, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 50, Requirements Code: 6.1.3, Description: Trainings\r\nAttendance of BESWMC\r\nto necessary training\r\nrelated to promoting\r\nenvironmental protection,\r\npreservation and\r\nawareness not earlier\r\nthan CY 2020\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:35:46'),
(377, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 50, Requirements Code: 6.1.4, Description: Accomplishment\r\nReports:\r\n6.1.4 a) At least 50%\r\naccomplishment of the physical\r\ntargets in the BESWMP\r\nOR\r\n6.1.4 b) At least 50% utilization\r\nrate of CY 2023 BESWM\r\nBudget\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:36:42'),
(378, 1, 'admin', 'Created a new Indicator with Governance Code: 17, Area Description: ENVIRONMENTAL MANAGEMENT, Indicator Description:  EXISTENCE OF A SOLID WASTE MANAGEMENT FACILITY PURSUANT TO R.A. 9003', '2025-03-06 14:37:29'),
(379, 1, 'admin', 'Created a new Indicator with Governance Code: 17, Area Description: ENVIRONMENTAL MANAGEMENT, Indicator Description: PROVISION OF SUPPORT MECHANISMS FOR SEGREGATED COLLECTION', '2025-03-06 14:38:48'),
(380, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 51, Requirements Code: 6.2.1 , Description: Presence of a Materials\r\nRecovery Facility (MRF)/\r\nMaterials Recovery\r\nSystem (MRS)\r\n- Established MRF\r\noperated by the barangay\r\n- MRS\r\n- Clustered MRF, and Sub Minimum Requirements: 0', '2025-03-06 14:39:58'),
(381, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 52, Requirements Code: 6.3.1, Description:  Enacted Barangay\r\nOrdinance or similar issuance on segregation\r\nof wastes at-source\r\n, and Sub Minimum Requirements: 0', '2025-03-06 14:41:08'),
(382, 1, 'admin', 'Deleted a Criteria with an ID: 50', '2025-03-06 14:41:33'),
(383, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 94, Sub Minimum Requirements: 1, MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of Barangay VAW\r\nDesk and designated VAW Desk\r\nOfficer covering January to\r\nOctober 2023\r\n, and Document Source: 5', '2025-03-06 14:45:12'),
(384, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 95, Sub Minimum Requirements: 1, MOV Documents Requirements: At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation, and Document Source: 5', '2025-03-06 14:45:59'),
(385, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 96, Sub Minimum Requirements: 1, MOV Documents Requirements: Approved Barangay GAD Plan\r\nand Budget for CY 2023\r\n, and Document Source: 5', '2025-03-06 14:46:51'),
(386, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 97, Sub Minimum Requirements: 1, MOV Documents Requirements: Accomplishment Report covering\r\n1st to 3rd quarter of CY 2023 with\r\nreceived stamp by the C/MSWDO\r\nand C/MLGOO\r\n, and Document Source: 5', '2025-03-06 14:47:24'),
(387, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 98, Sub Minimum Requirements: 1, MOV Documents Requirements: Copy of the generated report or\r\nscreenshot of the updated\r\ndatabase of VAW cases reported\r\nto the barangay with the total no.\r\nof VAW Cases and assistance\r\nprovided\r\n, and Document Source: 5', '2025-03-06 14:48:49'),
(388, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 99, Sub Minimum Requirements: , MOV Documents Requirements: 1. 2023 GAD Accomplishment\r\nReport; and\r\n2. Certification on the\r\nsubmitted CY 2023 GAD\r\nAccomplishment Report\r\nsigned by the C/MSWDO or\r\nC/MLGOO\r\n, and Document Source: 5', '2025-03-06 14:50:02'),
(389, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 100, Sub Minimum Requirements: , MOV Documents Requirements: Flow Chart based on Annex C -\r\nEstablishment of Referral System\r\nAnnex J - Directory Form\r\n, and Document Source: 5', '2025-03-06 14:50:57'),
(390, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 94, Sub Minimum Requirements: , MOV Documents Requirements: test, Template Links: [\"facebook.com\",\"yt.com\",\"yes.com\"], and Document Source: 5', '2025-03-06 15:54:21'),
(391, 1, 'admin', 'Edited a Criteria with id: 58, with updated Template Links.', '2025-03-06 16:16:18'),
(392, 1, 'admin', 'Edited a Criteria with id: 58, with updated Template Links.', '2025-03-06 16:17:02'),
(393, 1, 'admin', 'Deleted a Criteria with an ID: 58', '2025-03-06 16:18:47'),
(394, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 94, Sub Minimum Requirements: 1, MOV Documents Requirements: test, Template Links: [\"facebook.com\",\"yt.com\",\"yes.com\"], and Document Source: 5', '2025-03-06 16:19:18'),
(395, 1, 'admin', 'Deleted a Criteria with an ID: 59', '2025-03-06 16:19:23'),
(396, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 39, Minimum Requirements ID: 101, Sub Minimum Requirements: , MOV Documents Requirements: Photo documentation of the\r\nBHS/C\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\nFor clustered BHS/C: Certification\r\nfrom C/MHO on the clustering\r\nscheme\r\n, Template Links: [\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\",\"https:\\/\\/bit.ly\\/Certification-HealthCenter\"], and Document Source: 5', '2025-03-06 16:45:09'),
(397, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 39, Minimum Requirements ID: 102, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nAppointment of BHW and/or BHO\r\nor BHAsst covering January to\r\nOctober 2023\r\n, Template Links: [\"\"], and Document Source: 5', '2025-03-06 16:46:39'),
(398, 1, 'admin', 'Deleted a Criteria with an ID: 61', '2025-03-06 16:51:29'),
(399, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 39, Minimum Requirements ID: 102, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nAppointment of BHW and/or BHO\r\nor BHAsst covering January to\r\nOctober 2023\r\n, Template Links: , and Document Source: 5', '2025-03-06 16:52:23'),
(400, 1, 'admin', 'Logged In', '2025-03-07 06:25:54'),
(401, 1, 'admin', 'Edited a Criteria with id: 57, with updated Template Links.', '2025-03-07 06:27:31'),
(402, 1, 'admin', 'Edited a Criteria with id: 57, with updated Template Links.', '2025-03-07 06:28:31'),
(403, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:29:41'),
(404, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:29:55'),
(405, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:30:04'),
(406, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:30:44'),
(407, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:32:28'),
(408, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:32:47'),
(409, 1, 'admin', 'Edited a Criteria with id: 62, with updated Template Links.', '2025-03-07 06:32:54'),
(410, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 37, Minimum Requirements ID: 95, Sub Minimum Requirements: , MOV Documents Requirements: asa, Template Links: [\"https:\\/\\/bit.ly\\/BFDPMonitoring-FormA\",\"test\"], and Document Source: 5', '2025-03-07 06:33:23'),
(411, 1, 'admin', 'Edited a Criteria with id: 63, with updated Template Links.', '2025-03-07 06:33:33'),
(412, 1, 'admin', 'Deleted a Criteria with an ID: 63', '2025-03-07 06:33:38'),
(413, 1, 'admin', 'Created a new Indicator with Governance Code: 12, Area Description: FINANCIAL ADMINISTRATION AND SUSTAINABILITY, Indicator Description: COMPLIANCE WITH THE BARANGAY FULL DISCLOSURE POLICY (BFDP)', '2025-03-07 09:15:41'),
(414, 1, 'admin', 'Created a new Minimum Requirement with Indicator ID: 53, Requirements Code: 1.1.1, Description: 1.1.1. Posted the following CY\r\n2023 financial\r\ndocuments in the BFDP\r\nboard:\r\na) Barangay Financial\r\nReport\r\nb) Barangay Budget\r\nc) Summary of Income\r\nand Expenditures\r\nd) 20% Component of\r\nthe NTA Utilization\r\ne) Annual Procurement\r\nPlan or\r\nProcurement List\r\nf) List of Notices of\r\nAward (1st\r\n- 3rd Quarter\r\nof CY 2023)\r\n, and Sub Minimum Requirements: 0', '2025-03-07 09:16:27'),
(415, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 53, Minimum Requirements ID: 138, Sub Minimum Requirements: 0, MOV Documents Requirements: test, Template Links: , and Document Source: 5', '2025-03-07 09:17:09'),
(416, 1, 'admin', 'Deleted a Criteria with an ID: 64', '2025-03-07 09:38:57'),
(417, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 39, Minimum Requirements ID: 103, Sub Minimum Requirements: , MOV Documents Requirements: 1. EO (signed by the PB) or\r\nsimilar issuance\r\n(resolution/ordinance signed\r\nby the PB, Barangay\r\nSecretary and SBMs) on the\r\nappointment of BNS\r\n, Template Links: , and Document Source: 5', '2025-03-07 09:48:42'),
(418, 1, 'admin', 'Created a New Criteria with Version ID: <br />\r\n<b>Warning</b>:  Array to string conversion in <b>C:\\xampp\\htdocs\\mabisa2.0\\Admin\\criteria\\add.php</b> on line <b>37</b><br />\r\nArray, Indicator ID: 39, Minimum Requirements ID: 104, Sub Minimum Requirements: , MOV Documents Requirements: Certification on the provision of\r\nhealth services signed by the\r\nC/MHO\r\n, Template Links: [\"https:\\/\\/bit.ly\\/Certification-HealthServices\"], and Document Source: 5', '2025-03-07 09:52:13'),
(419, 1, 'admin', 'Created a New Criteria with Version ID: <br />\r\n<b>Warning</b>:  Array to string conversion in <b>C:\\xampp\\htdocs\\mabisa2.0\\Admin\\criteria\\add.php</b> on line <b>42</b><br />\r\nArray, Indicator ID: 53, Minimum Requirements ID: 138, Sub Minimum Requirements: , MOV Documents Requirements: yey, Template Links: , and Document Source: 5', '2025-03-07 09:57:18'),
(420, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 53, Minimum Requirements ID: 138, Sub Minimum Requirements: , MOV Documents Requirements: asa, Template Links: , and Document Source: 5', '2025-03-07 09:59:05'),
(421, 1, 'admin', 'Edited a Criteria with id: 68, with updated Template Links.', '2025-03-07 09:59:11'),
(422, 1, 'admin', 'Deleted a Criteria with an ID: 68', '2025-03-07 10:00:01'),
(423, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 53, Minimum Requirements ID: 138, Sub Minimum Requirements: , MOV Documents Requirements: sass, Template Links: , and Document Source: 5', '2025-03-07 10:00:33'),
(424, 1, 'admin', 'Deleted a Criteria with an ID: 69', '2025-03-07 10:00:42'),
(425, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 53, Minimum Requirements ID: 138, Sub Minimum Requirements: , MOV Documents Requirements: tsetsa, Template Links: , and Document Source: 5', '2025-03-07 10:00:56'),
(426, 1, 'admin', 'Deleted a Criteria with an ID: 70', '2025-03-07 10:03:16'),
(427, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 40, Minimum Requirements ID: 105, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs)\r\norganizing/reconstituting the BDC\r\nwith its composition compliant to\r\nSection 107 of RA 7160 covering\r\nJanuary to October 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:03:52'),
(428, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 40, Minimum Requirements ID: 106, Sub Minimum Requirements: , MOV Documents Requirements: Post activity report or Minutes\r\nwith attendance sheet, covering\r\nCY 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:04:55'),
(429, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 40, Minimum Requirements ID: 107, Sub Minimum Requirements: , MOV Documents Requirements: 1. Approved Barangay\r\nDevelopment Plan covering\r\nCY 2023\r\n2. SB Resolution adopting the\r\nBDP\r\n, Template Links: [\"https:\\/\\/bit.ly\\/BDC-with-Resolution\"], and Document Source: 5', '2025-03-07 10:05:27'),
(430, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 40, Minimum Requirements ID: 108, Sub Minimum Requirements: , MOV Documents Requirements: CY 2023 Accomplishment Report\r\nwith received stamp by the\r\nC/MPDC, Template Links: , and Document Source: 5', '2025-03-07 10:07:22'),
(431, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 41, Minimum Requirements ID: 109, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) designating\r\na KDO to manage the\r\nKasambahay Desk, signed by the\r\nPB, Barangay Secretary and\r\nSBMs covering January to\r\nOctober 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:10:04'),
(432, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 41, Minimum Requirements ID: 110, Sub Minimum Requirements: , MOV Documents Requirements: Copy of the Updated Kasambahay\r\nReport for the 3\r\nrd Quarter\r\n(July-September 2023), Template Links: [\"https:\\/\\/bit.ly\\/Form2-KasambahayMasterlist\"], and Document Source: 5', '2025-03-07 10:10:43'),
(433, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 42, Minimum Requirements ID: 111, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance signed by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of BCPC covering\r\nJanuary to October 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:11:31'),
(434, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 42, Minimum Requirements ID: 112, Sub Minimum Requirements: , MOV Documents Requirements: At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:12:05'),
(435, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 42, Minimum Requirements ID: 113, Sub Minimum Requirements: , MOV Documents Requirements: Approved BCPC Annual Work and\r\nFinancial Plan (AWFP) for CY\r\n2023\r\n, Template Links: [\"https:\\/\\/bit.ly\\/BCPC-AWFP-Form001-A\"], and Document Source: 5', '2025-03-07 10:12:48'),
(436, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 42, Minimum Requirements ID: 114, Sub Minimum Requirements: , MOV Documents Requirements: Copy of the generated report or\r\nscreenshot of the updated\r\ndatabase on children covering\r\nJanuary to October 31, 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:13:21'),
(437, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 42, Minimum Requirements ID: 115, Sub Minimum Requirements: , MOV Documents Requirements: Updated Localized Flow Chart of\r\nReferral System\r\nCopy of Comprehensive Barangay\r\nJuvenile Intervention\r\nProgram/Diversion Program\r\nCopy of Juvenile Justice and\r\nWelfare Council’s Children at Risk\r\n(CAR) and Children in Conflict with\r\nthe Law (CICL) registry, Template Links: , and Document Source: 5', '2025-03-07 10:14:24'),
(438, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 42, Minimum Requirements ID: 116, Sub Minimum Requirements: , MOV Documents Requirements: Approved Accomplishment Report\r\non BCPC AWFP for CY 2023 with\r\nreceived stamp by the\r\nCity/Municipality Inter-Agency\r\nMonitoring Task Force (IMTF), Template Links: , and Document Source: 5', '2025-03-07 10:16:55'),
(439, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 43, Minimum Requirements ID: 117, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay Secretary and SBMs) organizing\r\nthe Barangay GAD Focal Point\r\nSystem covering January to\r\nOctober 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:17:30'),
(440, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 44, Minimum Requirements ID: 118, Sub Minimum Requirements: , MOV Documents Requirements: 1. RBI Monitoring Form C; and\r\n2. List of barangays with RBI\r\ncovering the 1st Semester\r\nof CY 2023 (generated from\r\nthe BIS-BPS) certified by\r\nthe C/MLGOO\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:18:05'),
(441, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 45, Minimum Requirements ID: 119, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) organizing\r\nthe Barangay Nutrition Committee\r\n(BNC) covering January to\r\nOctober 2023\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:23:54'),
(442, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 45, Minimum Requirements ID: 120, Sub Minimum Requirements: , MOV Documents Requirements: Approved CY 2023 BNAP signed\r\nby the BNC\r\n, Template Links: [\"https:\\/\\/bit.ly\\/Sample-BNAP\"], and Document Source: 5', '2025-03-07 10:25:10'),
(443, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 45, Minimum Requirements ID: 121, Sub Minimum Requirements: , MOV Documents Requirements: Operation Timbang (OPT) Plus\r\nForm 1A (Barangay Tally and\r\nSummary Sheet of Preschoolers\r\nwith Weight & Height\r\nMeasurement by Age Group,\r\nSex and Nutritional Status) of\r\nCYs 2022 and 2023; and\r\nCertification from the C/MHO on\r\nthe Decrease in Prevalence Rate\r\n, Template Links: [\"https:\\/\\/bit.ly\\/OPT-Plus_Form1A\",\"https:\\/\\/bit.ly\\/Certification-Decr', '2025-03-07 10:26:47'),
(444, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 45, Minimum Requirements ID: 122, Sub Minimum Requirements: , MOV Documents Requirements: 1. Accomplishment Report on\r\nCY 2023 BNAP;\r\n2. Certification on the\r\nsubmitted BNAP\r\nAccomplishment Report for\r\nCY 2023 signed by the\r\nC/MLGOO\r\n\r\n, Template Links: [\"https:\\/\\/bit.ly\\/Certification-BNAP\"], and Document Source: 5', '2025-03-07 10:28:07'),
(445, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 46, Minimum Requirements ID: 123, Sub Minimum Requirements: , MOV Documents Requirements: Photo documentation of the\r\nestablished BCG\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:28:58'),
(446, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 46, Minimum Requirements ID: 124, Sub Minimum Requirements: , MOV Documents Requirements: Ordinance signed by the PB,\r\nBarangay Secretary and SBMs) on\r\nthe establishment of a BCG\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:29:32'),
(447, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 46, Minimum Requirements ID: 125, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\ndesignated SMB to manage the\r\nBCG\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:30:19'),
(448, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 46, Minimum Requirements ID: 126, Sub Minimum Requirements: , MOV Documents Requirements: Proof of conduct of at least one (1)\r\nAdvocacy Campaign/Awareness\r\n(Photo/Social Media Post,\r\nPAR/AR, etc.), Template Links: , and Document Source: 5', '2025-03-07 10:31:08'),
(449, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 46, Minimum Requirements ID: 127, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablished group volunteers\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:31:46'),
(450, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 47, Minimum Requirements ID: 128, Sub Minimum Requirements: , MOV Documents Requirements: Enacted Barangay Tax Ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs, Template Links: , and Document Source: 5', '2025-03-07 10:42:25'),
(451, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 48, Minimum Requirements ID: 129, Sub Minimum Requirements: , MOV Documents Requirements: Enacted Barangay Ordinance\r\n(signed by the PB, Barangay\r\nSecretary and SBMs) relative to\r\nBarangay Clearance Fees on\r\nbusiness permit and locational\r\nclearance for building permit.\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:47:31'),
(452, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 48, Minimum Requirements ID: 130, Sub Minimum Requirements: , MOV Documents Requirements: Approved resolution authorizing\r\nthe City/Municipal Treasurer to\r\ncollect fees for Barangay\r\nClearance for Business permit and\r\nlocational clearance purposes\r\nsigned by PB, Barangay Secretary\r\nand SBMs.\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:48:04'),
(453, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 49, Minimum Requirements ID: 131, Sub Minimum Requirements: , MOV Documents Requirements: Photo documentation of the\r\nCitizens’ Charter on the issuance\r\nof barangay certification only\r\n(name of the barangay should be\r\nvisible)\r\nPhoto Requirements:\r\nOne (1) photo with Distant\r\nView; and\r\nOne (1) photo with Close-up\r\nView\r\n, Template Links: [\"https:\\/\\/bit.ly\\/Sample-PhotoDocumentation\",\"\"], and Document Source: 5', '2025-03-07 10:48:42'),
(454, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 50, Minimum Requirements ID: 132, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\norganization of the BESWMC\r\n, Template Links: , and Document Source: 5', '2025-03-07 10:49:15'),
(455, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 50, Minimum Requirements ID: 133, Sub Minimum Requirements: , MOV Documents Requirements: Approved Solid Waste\r\nManagement Program/Plan\r\ncovering CY 2023 with\r\ncorresponding fund allocation\r\n, Template Links: [\"https:\\/\\/bit.ly\\/BESWMC-Program-Plan\"], and Document Source: 5', '2025-03-07 10:49:51'),
(456, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 50, Minimum Requirements ID: 134, Sub Minimum Requirements: , MOV Documents Requirements: At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation, Template Links: , and Document Source: 5', '2025-03-07 10:50:17');
INSERT INTO `audit_log` (`action_id`, `user_id`, `username`, `action`, `time_and_date`) VALUES
(457, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 50, Minimum Requirements ID: 135, Sub Minimum Requirements: , MOV Documents Requirements: Three (3) Monthly\r\nAccomplishment Reports\r\ncovering July-September 2023, Template Links: [\"https:\\/\\/bit.ly\\/Sample-MonthlyAccomplish mentReport\"], and Document Source: 5', '2025-03-07 10:50:47'),
(458, 1, 'admin', 'Edited a Criteria with id: 51, with updated Template Links.', '2025-03-07 10:51:09'),
(459, 1, 'admin', 'Edited a Criteria with id: 51, with updated Template Links.', '2025-03-07 10:51:17'),
(460, 1, 'admin', 'Edited a Criteria with id: 51, with updated Template Links.', '2025-03-07 10:51:55'),
(461, 1, 'admin', 'Edited a Criteria with id: 51, with updated Template Links.', '2025-03-07 10:52:46'),
(462, 1, 'admin', 'Edited a Criteria with id: 51, with updated Template Links.', '2025-03-07 10:54:22'),
(463, 1, 'admin', 'Edited a Criteria with id: 51, with updated Template Links.', '2025-03-07 10:54:54'),
(464, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 51, Minimum Requirements ID: 136, Sub Minimum Requirements: , MOV Documents Requirements: For MRF operated by the\r\nbarangay:\r\nPhoto documentation of the\r\nMRF/MRF Records of the\r\nbarangay\r\nPhoto Requirements:\r\nOne (1) photo with Distant View;\r\nand\r\nOne (1) photo with Close-up\r\nView\r\nFor MRS:\r\n1. MOA with junkshop;\r\n2. Mechanism to process\r\nbiodegradable wastes; and3. MOA with service provider\r\nfor collection of\r\nbiodegradable wastes and\r\nre', '2025-03-07 10:56:30'),
(465, 1, 'admin', 'Created a New Criteria with Version ID: 2, Indicator ID: 52, Minimum Requirements ID: 137, Sub Minimum Requirements: , MOV Documents Requirements: EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on\r\nsegregation of wastes at-source, Template Links: , and Document Source: 5', '2025-03-07 10:56:57'),
(466, 1, 'admin', 'Updated Minimum Requirement with ID: 103, to Indicator ID: 39, Requirements Code: 4.2.3., Description: Appointment of a\r\nBarangay Nutrition\r\nScholar (BNS)\r\n, and Sub Minimum Requirements: 0', '2025-03-07 11:41:33'),
(467, 1, 'admin', 'Updated Minimum Requirement with ID: 104, to Indicator ID: 39, Requirements Code: 4.2.4., Description: Availability of health\r\nservices in the BHS/C\r\nsuch as:\r\na) immunization\r\nb) maternal and child\r\nhealthcare\r\nc) family planning\r\nd) health education, and Sub Minimum Requirements: 0', '2025-03-07 11:42:15');

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
(53, 12, 10, 'FINANCIAL ADMINISTRATION AND SUSTAINABILITY', '1.1', 'COMPLIANCE WITH THE BARANGAY FULL DISCLOSURE POLICY (BFDP)', 1, 'Created at 2025-03-07 02:15:41');

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
(138, 53, '1.1.1', 'Pursuant to Section 352 of the Local\r\nGovernment Code of 1991 (R.A.\r\n7160), and DILG Memorandum\r\nCircular Nos. 2014-811 and\r\n2022-0272\r\n, barangays shall\r\ndemonstrate good financial\r\nhousekeeping, and to ensure that\r\nbarangays adhere to the highest\r\nideals and standards of transparency\r\nand accountability, all Punong\r\nBarangays are directed to post in an\r\narea inside the barangay hall that\r\ncan be easily viewed by the public\r\nand on their website (if available),\r\nthe seven (7) documents as\r\nprescribed by the Department of\r\nBudget and Management (DBM).\r\n', '1.1.1. Posted the following CY\r\n2023 financial\r\ndocuments in the BFDP\r\nboard:\r\na) Barangay Financial\r\nReport\r\nb) Barangay Budget\r\nc) Summary of Income\r\nand Expenditures\r\nd) 20% Component of\r\nthe NTA Utilization\r\ne) Annual Procurement\r\nPlan or\r\nProcurement List\r\nf) List of Notices of\r\nAward (1st\r\n- 3rd Quarter\r\nof CY 2023)\r\n', 0, '');

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
(103, 2, 52, 137, 0, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on\r\nsegregation of wastes at-source', '', 5, 'Created at 2025-03-07 03:56:57');

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `is_read`, `created_at`, `file_link`) VALUES
(1, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 1, '2025-03-06 22:36:26', NULL),
(2, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 1, '2025-03-06 22:36:34', NULL),
(3, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 08:46:39', NULL),
(4, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 08:46:39', NULL),
(5, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 08:52:23', NULL),
(6, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 08:52:23', NULL),
(7, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 22:33:23', NULL),
(8, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-06 22:33:23', NULL),
(9, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:17:09', NULL),
(10, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:17:09', NULL),
(11, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:48:42', NULL),
(12, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:48:42', NULL),
(13, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:52:13', NULL),
(14, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:52:13', NULL),
(15, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:57:18', NULL),
(16, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:57:18', NULL),
(17, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:59:05', NULL),
(18, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 01:59:05', NULL),
(19, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:00:33', NULL),
(20, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:00:33', NULL),
(21, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:00:56', NULL),
(22, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:00:56', NULL),
(23, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:03:52', NULL),
(24, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:03:52', NULL),
(25, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:04:55', NULL),
(26, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:04:55', NULL),
(27, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:05:27', NULL),
(28, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:05:27', NULL),
(29, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:07:22', NULL),
(30, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:07:22', NULL),
(31, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:10:04', NULL),
(32, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:10:04', NULL),
(33, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:10:43', NULL),
(34, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:10:43', NULL),
(35, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:11:31', NULL),
(36, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:11:31', NULL),
(37, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:12:05', NULL),
(38, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:12:05', NULL),
(39, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:12:48', NULL),
(40, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:12:48', NULL),
(41, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:13:21', NULL),
(42, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:13:21', NULL),
(43, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:14:24', NULL),
(44, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:14:24', NULL),
(45, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:16:55', NULL),
(46, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:16:55', NULL),
(47, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:17:30', NULL),
(48, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:17:30', NULL),
(49, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:18:05', NULL),
(50, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:18:05', NULL),
(51, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:23:54', NULL),
(52, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:23:54', NULL),
(53, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:25:10', NULL),
(54, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:25:10', NULL),
(55, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:26:47', NULL),
(56, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:26:47', NULL),
(57, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:28:07', NULL),
(58, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:28:07', NULL),
(59, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:28:58', NULL),
(60, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:28:58', NULL),
(61, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:29:32', NULL),
(62, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:29:32', NULL),
(63, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:30:19', NULL),
(64, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:30:19', NULL),
(65, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:31:08', NULL),
(66, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:31:08', NULL),
(67, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:31:46', NULL),
(68, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:31:46', NULL),
(69, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:42:25', NULL),
(70, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:42:25', NULL),
(71, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:47:31', NULL),
(72, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:47:31', NULL),
(73, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:48:04', NULL),
(74, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:48:04', NULL),
(75, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:48:42', NULL),
(76, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:48:42', NULL),
(77, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:49:15', NULL),
(78, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:49:15', NULL),
(79, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:49:51', NULL),
(80, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:49:51', NULL),
(81, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:50:17', NULL),
(82, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:50:17', NULL),
(83, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:50:47', NULL),
(84, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:50:47', NULL),
(85, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:56:30', NULL),
(86, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:56:30', NULL),
(87, 31, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:56:57', NULL),
(88, 32, 'New Criteria Setup!', 'The super admin Master created new criteria. Please check them in your respective barangays.', 0, '2025-03-07 02:56:57', NULL);

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
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

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
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  MODIFY `keyctr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
