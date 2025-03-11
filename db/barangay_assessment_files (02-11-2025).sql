-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 07:18 AM
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
(13, '104201009', 30, '2025-02-11 13:44:04', '[{\"name\":\"name\",\"comment\":\"wow maka horny\",\"timestamp\":1739252802},{\"name\":\"name\",\"comment\":\"asdasd\",\"timestamp\":1739253127},{\"name\":\"name\",\"comment\":\"asdasd\",\"timestamp\":1739253270},{\"name\":\"name\",\"comment\":\"asdasdasd\",\"timestamp\":1739253289},{\"name\":\"name\",\"comment\":\"asdad\",\"timestamp\":1739253466},{\"name\":\"name\",\"comment\":\"fghfhg\",\"timestamp\":1739253474},{\"name\":\"name\",\"comment\":\"testing last\",\"timestamp\":1739253719}]', 'approved', '../../files/67aae3a4b6044_4B_wk01_DiamadaWillow.pdf', '4B_wk01_DiamadaWillow.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay_assessment_files`
--
ALTER TABLE `barangay_assessment_files`
  ADD PRIMARY KEY (`file_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangay_assessment_files`
--
ALTER TABLE `barangay_assessment_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
