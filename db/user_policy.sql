-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 02:46 PM
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
  `mobileNo` bigint(20) NOT NULL,
  `isDisabled` tinyint(1) DEFAULT 0,
  `policyRead` tinyint(1) DEFAULT 0,
  `barangay` varchar(50) DEFAULT NULL,
  `accessLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_policy`
--

INSERT INTO `user_policy` (`id`, `username`, `fullName`, `password`, `email`, `mobileNo`, `isDisabled`, `policyRead`, `barangay`, `accessLevel`) VALUES
('413fccd5-c701-11ef-aed0-4ccc6a4b4f05', 'a', 'a', '$2y$10$mZNPS7wb4vZDdYCKD7DTU.LCZiVFVT5W1XGiXk4DBCeSbAwdKKKWm', 'a@a.com', 9184671626, 0, 0, 'Lobogon', 2),
('6f1599ac-c701-11ef-aed0-4ccc6a4b4f05', 'testing', 'testing', '$2y$10$LLrRWnzum8n.NMaBay/FtuUPlX8D36HAgW.LB0RRFaXxEKY95p3/y', 'testing@testing.com', 91283871755, 0, 0, 'N/A', 0),
('944ce6d1-c701-11ef-aed0-4ccc6a4b4f05', 'testing', 'testing', '$2y$10$B2Awl1v93Sd3m52T.OZ7S.IO1AKE/O4x0SdgQd8XD6T2E9I6IFBea', 'testing@testing.com', 91283871755, 0, 0, 'N/A', 0),
('a65060b2-cf58-11ef-9ccc-088fc37fb4a8', 'a', 'a', '$2y$10$jwRN8BC6K4mKIeR0EDsgce666/tH5Po0V7G2QYAU.EP6J7OfLezHC', 'a@a.com', 639823747623, 0, 0, 'N/A', 0),
('fe02106d-cf58-11ef-9ccc-088fc37fb4a8', 'b', 'b', '$2y$10$ERhkSCoTEPdTNZuURc6UCOs4AR9ycDIPOawPUPRl82Xq7aeLBMKVi', 'b@b.com', 63, 0, 0, 'Balintonga', 0);

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
