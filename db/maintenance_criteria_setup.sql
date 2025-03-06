-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2025 at 09:19 AM
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
(51, 2, 37, 94, 1, 'EO (signed by the PB) or similar\r\nissuance (resolution/ordinance\r\nsigned by the PB, Barangay\r\nSecretary and SBMs) on the\r\nestablishment of Barangay VAW\r\nDesk and designated VAW Desk\r\nOfficer covering January to\r\nOctober 2023\r\n', '', 5, 'Created at 2025-03-06 07:45:12'),
(52, 2, 37, 95, 1, 'At least one (1) copy of proof of\r\ntraining such as Certificate of\r\nCompletion and/or Participation', '', 5, 'Created at 2025-03-06 07:45:59'),
(53, 2, 37, 96, 1, 'Approved Barangay GAD Plan\r\nand Budget for CY 2023\r\n', '', 5, 'Created at 2025-03-06 07:46:51'),
(54, 2, 37, 97, 1, 'Accomplishment Report covering\r\n1st to 3rd quarter of CY 2023 with\r\nreceived stamp by the C/MSWDO\r\nand C/MLGOO\r\n', '[\"https://bit.ly/VAWDesk-Form5\"]', 5, 'Created at 2025-03-06 07:47:24'),
(55, 2, 37, 98, 1, 'Copy of the generated report or\r\nscreenshot of the updated\r\ndatabase of VAW cases reported\r\nto the barangay with the total no.\r\nof VAW Cases and assistance\r\nprovided\r\n', '', 5, 'Created at 2025-03-06 07:48:49'),
(56, 2, 37, 99, 0, '1. 2023 GAD Accomplishment\r\nReport; and\r\n2. Certification on the\r\nsubmitted CY 2023 GAD\r\nAccomplishment Report\r\nsigned by the C/MSWDO or\r\nC/MLGOO\r\n', '[\"https://bit.ly/Certification-GAD-Ac complishment\"]', 5, 'Created at 2025-03-06 07:50:02'),
(57, 2, 37, 100, 0, 'Flow Chart based on Annex C -\r\nEstablishment of Referral System\r\nAnnex J - Directory Form\r\n', '[\"https://bit.ly/Annex-C-and-Annex-J\"]', 5, 'Created at 2025-03-06 07:50:57');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maintenance_criteria_setup`
--
ALTER TABLE `maintenance_criteria_setup`
  MODIFY `keyctr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
