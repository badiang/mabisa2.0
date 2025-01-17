-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 05:59 AM
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
-- Table structure for table `refbarangay`
--

CREATE TABLE `refbarangay` (
  `brgyid` varchar(10) NOT NULL,
  `brgyname` varchar(30) NOT NULL,
  `auditor` char(36) DEFAULT NULL,
  `secretary` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refbarangay`
--

INSERT INTO `refbarangay` (`brgyid`, `brgyname`, `auditor`, `secretary`) VALUES
('104201001', 'Balintonga', NULL, NULL),
('104201002', 'Banisilon', NULL, NULL),
('104201003', 'Burgos', NULL, NULL),
('104201004', 'Calube', NULL, NULL),
('104201005', 'Caputol', NULL, NULL),
('104201006', 'Casusan', NULL, NULL),
('104201007', 'Conat', NULL, NULL),
('104201008', 'Culpan', NULL, NULL),
('104201009', 'Dalisay', NULL, NULL),
('104201010', 'Dullan', NULL, NULL),
('104201011', 'Ibabao', NULL, NULL),
('104201012', 'Tubod (juan Bacayo)', NULL, NULL),
('104201013', 'Labo', NULL, NULL),
('104201014', 'Lawa-an', NULL, NULL),
('104201015', 'Lobogon', NULL, NULL),
('104201016', 'Lumbayao', NULL, NULL),
('104201017', 'Makawa', NULL, NULL),
('104201018', 'Manamong', NULL, NULL),
('104201019', 'Matipaz', NULL, NULL),
('104201020', 'Maular', NULL, NULL),
('104201021', 'Mitazan', NULL, NULL),
('104201022', 'Mahon', NULL, NULL),
('104201023', 'Monterico', NULL, NULL),
('104201024', 'Nabuna', NULL, NULL),
('104201025', 'Palayan', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `refbarangay`
--
ALTER TABLE `refbarangay`
  ADD PRIMARY KEY (`brgyid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
