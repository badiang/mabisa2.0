-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 03:53 AM
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
-- Database: `mabisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_policy`
--

CREATE TABLE `user_policy` (
  `id` char(36) NOT NULL DEFAULT uuid(),
  `username` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNum` varchar(10) NOT NULL,
  `isDisabled` tinyint(1) DEFAULT 0,
  `policyRead` tinyint(1) DEFAULT 0,
  `barangay` varchar(50) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_policy`
--

INSERT INTO `user_policy` (`id`, `username`, `fullName`, `password`, `email`, `mobileNum`, `isDisabled`, `policyRead`, `barangay`, `role`, `profile_image`) VALUES
('16c971d1-d46a-11ef-9e2d-088fc37fb4a8', 'asdf', 'asdf', '$2y$10$/LH1vi4hmoNE.5Qk/yYr.esdwwNM9D63YODFk5YmD2xDMS1NMgKcW', 'asdf@asdf.com', '9182737123', 0, 0, 'N/A', 'Admin', NULL),
('780102b6-d460-11ef-9e2d-088fc37fb4a8', 'aaa', 'aaa', '$2y$10$jhz3C2OpOcSx8VJXYheMPu.l0t7WtvlSK1PNK1kDidYb8skIspYM6', 'aa@aa.com', '9827834628', 0, 0, 'N/A', 'Admin', NULL),
('9d4f4eaf-d334-11ef-9d6f-088fc37fb4a8', 'willow', 'Willow D. Diamada', '$2y$10$Jkqcrmw0n3z58o0OU8rvruqVSw7jVSM1DUzt0lG3EDLkEZxHPl9hi', 'lgualorantesting@gmail.com', '9188577273', 0, 0, 'N/A', 'Admin', '../uploads/profile_9d4f4eaf-d334-11ef-9d6f-088fc37fb4a8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_policy`
--
ALTER TABLE `user_policy`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
