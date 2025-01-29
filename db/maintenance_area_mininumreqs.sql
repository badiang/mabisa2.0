-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 05:34 AM
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
(26, 0, '3.1.8', 'Implementation of Drug-Clearing Operations-Submission of Consolidated Information Report (CIR) to CADAC/MADAC and Local PNP Unit\r\n\r\nNote: Drug-unaffected barangays shall also submit updated CIR, stating in the report that there is absence of illegal drug-related activities in the barangays. The same applies to drug-free and drug-cleared barangays', 0, ''),
(28, 0, '3.1.9', 'Implementation of Community-Based Intervention for Person Who Used Drugs (PWUDS)-Presence of referral system', 0, ''),
(29, 0, '3.1.10', 'Conduct of Monthly Meetings', 0, ''),
(30, 0, '3.2.1', 'Structure:\r\nOrganized BPOC with its composition compliant to the provisions of EO No. 366, s. of 1996\r\n\r\nMinimum composition of the BPOC:\r\n 1. Punong Barangay\r\n 2. Sangguniang Kabataan Chairperson\r\n 3. A member of the Lupon Tagapamayapa\r\n 4. A Public School Teacher\r\n 5. PNP Officer\r\n 6. A representative of the Interfaith \r\n Group\r\n 7. A Senior Citizen\r\n 8. At least three (3) members of the \r\n existing Barangay-Based Anti-Crime or\r\n Neighborhood Watch Groups or an NGO\r\n representative\r\n 9. A Barangay Tanod', 0, ''),
(31, 0, '3.2.2', 'Plan\r\nFormulated Barangay Peace and Order and Public Safety (BPOPS) Plan in accordance with DILG MC 2017-142 covering CY 2023', 0, ''),
(32, 0, '3.2.3', 'Accomplishment Reports\r\n\r\nNote: Barangay officials have the option to submit both the physical and financial reports. However, for the SGLGB Assessment, only one of the above documents is required.', 1, ''),
(33, 0, '3.3.1', 'Structure:\r\nOrganized Lupong Tagapamayapa', 0, ''),
(34, 0, '3.3.2', 'System\r\nSystematic maintenance of records of cases', 1, ''),
(35, 0, '3.3.3', 'Meetings:\r\nConducted monthly meetings for the administration of the Katarungang Pambarangay', 0, ''),
(36, 0, '3.3.4', 'Trainings:\r\nAttendance of LT to KP training or seminar not earlier than CY 2020', 0, ''),
(37, 0, '3.4.1', 'Structure:\r\nOrganized Barangay Tanod with its composition compliant to the provisions of DILG MCNo.2003-42\r\n\r\nComposition of a Barangay Tanod:\r\n 1. Chief Tanod/Executive\r\n Officer\r\n 2. Team Leaders\r\n 3. Team Members', 0, ''),
(38, 0, '3.4.2', 'Trainings:\r\nAttendance of barangay tanod to necessary training not earlier than 2020', 0, ''),
(39, 0, '3.5.1', 'Organized Barangay Health and Emergency Response Team (BHERT) with its composition compliant to the provisions of DILG MCNo.2020-023\r\n\r\nMinimum composition of the BHERTs:\r\n 1. Executive Officer\r\n 2. A Barangay Tanod\r\n 3. 2 BHWs', 0, ''),
(40, 0, '3.5.2', 'Poster or tarpaulin containing the active telephone and/or cellphone Numbers of the Barangay, Punong Barangay and BHERT Members posted in conspicuous public places within the barangay jurisdiction', 0, ''),
(41, 0, '3.6.1', 'Conducted BaRCO on a monthly basis in CY 2023', 0, ''),
(42, 0, '4.1.1', 'Structure:\nOrganized Barangay VAW Desk and designated Barangay VAW Desk Officer', 0, ''),
(43, 0, '4.1.2', 'Training:\r\nAttendance of the Barangay VAW Desk Officer to at least one (1) training/orientation related to gender-sensitive handling of VAW Cases not earlier than CY 2020', 0, ''),
(44, 0, '4.1.3', 'Plan and Budget:\r\nApproved CY 2023 Barangay Gender and Development (GAD) Plan and Budget', 0, ''),
(45, 0, '4.1.4', 'Accomplishment Reports:\r\nQuarterly accomplishment reports based on the database/records of VAW cases reported in the barangay containing relevant information such as total number of VAW cases received, assistance provided to victim-survivors, total number of cases documented for violating RA 9262 and other VAW-related laws, total barangay population, number of male and female in the barangay, and minor to adult ratio', 0, ''),
(46, 0, '4.1.5', 'Database:\r\nUpdated database on VAW cases reported to the barangay, with the following information at the minimum:\r\na) total number of VAW cases received\r\n ● number of cases documented for\r\n violating RA 9262\r\n ● number of cases documented for\r\n violating other VAW-related laws\r\nb) assistance provided to victim-survivors', 0, ''),
(47, 0, '4.1.6', 'Accomplishment Reports', 1, ''),
(48, 0, '4.1.7', 'Referral Network', 1, ''),
(49, 0, '4.2.1', 'Presence of a Barangay Health Station/Center Consideration: Clustered Health Station/Center accessed by several barangays in a city/municipality', 0, ''),
(50, 0, '4.2.2', '(For Profiling Purposes Only)\r\n\r\nAppointment of the following Barangay Health Personnel:\r\n 1. Accredited Barangay Health Worker \r\n (BHW);\r\n\r\n AND/OR\r\n\r\n 2.Barangay Health Officer (BHO) or \r\n Barangay Health Assistant (BHAsst)', 0, ''),
(51, 0, '4.2.3', 'Appointment of a Barangay Nutrition Scholar (BNS)', 0, ''),
(52, 0, '4.2.4', 'Availability of health services in the BHS/C such as:\r\n a) immunization\r\n b) maternal and child healthcare\r\n c) family planning\r\n d) health education', 0, ''),
(53, 0, '4.3.1', 'Structure:\r\nOrganized BDC with its composition compliant to Section 107 of RA 7160', 0, ''),
(54, 0, '4.3.2', 'Meeting:\r\nConducted meetings, public hearings, and/or barangay assemblies for public consultation', 0, ''),
(55, 0, '4.3.3', 'Plan\r\nApproved Barangay Development Plan', 0, ''),
(56, 0, '4.3.4', 'Accomplishments Reports:\r\n a) At least 50% accomplishment of the \r\n physical targets in the BDP\r\n OR\r\n b) At least 50% fund utilization rate of \r\n the CY 2023 BDP Budget', 0, ''),
(57, 0, '4.4.1', 'Presence of Kasambahay Desk with designated Kasambahay Desk Officer (KDO)', 0, ''),
(58, 0, '4.4.2', 'Maintenance/updating of a Kasambahay Masterlist', 0, ''),
(59, 0, '4.5.1', 'STRUCTURE\r\nOrganized Barangay Council for Protection of Children (BCPC) with its composition compliant to the provisions of DILG MC No. 2021-039', 0, ''),
(60, 0, '4.5.2', 'Trainings:\r\nAttendance of the Members of the Barangay Council for Protection of Children (BCPC) to a training/orientation related to their functions not earlier than CY 2020', 0, ''),
(61, 0, '4.5.3', 'Plan:\r\nPresence of an approved BCPC Annual Work and Financial Plan', 0, ''),
(62, 0, '4.5.4', 'Database:\r\nEstablishment and maintenance of updated Database on Children disaggregated by age, sex, ethnicity, with or without disabilities, OSCY, etc.', 0, ''),
(63, 0, '4.5.5', 'System:\r\n a. Presence of updated \r\n Localized Flowchart of Referral System \r\n not earlier than CY 2020;\r\n b. Presence of Comprehensive Barangay \r\n Juvenile Intervention Program/Diversion \r\n Program (For profiling); and\r\n c. Presence of Children at Risk (CAR) \r\n and Children in Conflict with the Law\r\n (CICL) registry (For profiling).', 0, ''),
(64, 0, '4.5.6', 'Accomplishment Reports:\r\n  a) At least 50% accomplishment of the\r\n  physical targets in the BCPCAWFP\r\n  OR\r\n  b) At least 50% utilization rate of CY\r\n  2023 BCPC AWFP Budget', 0, ''),
(65, 0, '4.6.1', 'Organized Barangay GAD Focal Point System', 0, ''),
(66, 0, '4.7.1', 'Presence of updated RBI for the first (1st) semester of CY 2023', 0, ''),
(67, 0, '4.8.1', 'Structure:\r\nOrganized BNC', 0, ''),
(68, 0, '4.8.2', 'Plan:\r\nPresence of approved CY 2023 BNAP', 0, ''),
(69, 0, '4.8.3', 'Decrease in Prevalence Rate in the barangay, for the following categories:\r\n 1. Underweight and Severe Underweight\r\n 2. Stunting and Severe Stunting; and\r\n 3. Moderate Wasting and Severe Wasting', 0, ''),
(70, 0, '4.8.4', 'Accomplishment Reports:\r\n\r\na) At least 50% accomplishment of the physical targets in the CY 2023 BNAP\r\n\r\nOR\r\n\r\nb) At least 50% fund utilization rate of the CY 2023 BNAP Budget', 0, ''),
(71, 0, '4.9.1', 'Established a Barangay Community Garden (BCG)', 0, ''),
(72, 0, '4.9.2', 'Enacted Ordinance for the Establishment of a Barangay Community Garden', 0, ''),
(73, 0, '4.9.3', 'Designated SBM to Manage the Barangay Community Garden', 0, ''),
(74, 0, '4.9.4', 'Conducted at least One (1) Advocacy Campaign/Awareness on community household gardening', 0, ''),
(75, 0, '4.9.5', 'Established Group of Volunteers on the Implementation of the Community Garden', 0, ''),
(76, 0, '5.1.1', 'Enacted Barangay Tax Ordinance pursuant to Sec.129 of the LG', 0, ''),
(77, 0, '5.2.1', 'Enacted Barangay Ordinance relative to Barangay Clearance fees on business permit and locational clearance for building permit pursuant to DILG MC No. 2019-177', 0, ''),
(78, 0, '5.2.2', 'Approved resolution authorizing the City/Municipal Treasurer to collect fees for Barangay Clearance for Business permit and locational clearance purposes pursuant to DILG MC No. 2019-177.', 0, ''),
(79, 0, '5.3.1', 'Presence of a Citizens’ Charter on the issuance of barangay certification posted in the barangay hall', 0, ''),
(80, 0, '6.1.1', 'Structure\r\nOrganized BESWMC with composition compliant to DILGMC No.2018-112', 0, ''),
(81, 0, '6.1.2', 'Plan\nApproved Solid Waste Management Program/Plan with corresponding fund allocation', 0, ''),
(82, 0, '6.1.3', 'Trainings\r\nAttendance of BESWMC to necessary training related to promoting environmental protection, preservation and awareness not earlier than CY 2020', 0, ''),
(83, 0, '6.1.4', 'Accomplishment Reports:\r\n a) At least 50% accomplishment of the \r\n physical targets in the BESWMP\r\n OR\r\n b) At least 50% utilization rate of CY \r\n 2023 BESWM Budget', 0, ''),
(84, 0, '6.2.1', 'Presence of a Materials Recovery Facility (MRF)/Materials Recovery System (MRS)-Established MRF operated by the barangay-MRS-Clustered MRF', 0, ''),
(85, 0, '6.3.1', 'Enacted Barangay Ordinance or similar issuance on segregation of wastes at-source', 0, ''),
(86, 0, '111.1', 'asdasdsdasjdh', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  ADD PRIMARY KEY (`keyctr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maintenance_area_mininumreqs`
--
ALTER TABLE `maintenance_area_mininumreqs`
  MODIFY `keyctr` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
