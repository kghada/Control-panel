-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 03:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base-d`
--

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--


CREATE TABLE `directions` (
  `Id` int(4) NOT NULL AUTO_INCREMENT, --allows the database to automatically generate a unique identifier for each row
  `Forward` enum('f', '') NOT NULL DEFAULT '',
  `Backward` enum('b', '') NOT NULL DEFAULT '',
  `Stop` enum('s', '') NOT NULL DEFAULT '',
  `Left` enum('l', '') NOT NULL DEFAULT '',
  `Right` enum('r', '') NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directions`
--

INSERT INTO `directions` (`Forward`, `Backward`, `Stop`, `Left`, `Right`) VALUES
('', '', '', '', ''),
('f', '', '', '', ''),
('', '', 's', '', ''),
('', '', '', '', 'r'),
('', '', 's', '', ''),
('', '', '', 'l', ''),
('', 'b', '', '', ''),
('', 'b', '', '', ''),
('', '', '', 'l', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directions`
--
ALTER TABLE `directions`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
