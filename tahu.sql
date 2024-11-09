-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 05:46 AM
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
-- Database: `project semester 1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tahu`
--

CREATE TABLE `tahu` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bahan` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahu`
--

INSERT INTO `tahu` (`id`, `nama`, `bahan`, `jenis`, `harga`) VALUES
(1, 'tahu menor', 'tahu, Ayam, Tepung', 'Tahu Isi Ayam', '10.000'),
(3, 'tahu racun', 'uranium', 'tahu isi uranium ', '5.00000000'),
(6, 'tahu bakso', 'bakso, tahu, tepung', 'tahu isi bakso ', '1000'),
(7, 'tahu bakso', 'bakso, tahu, tepung', 'tahu isi bakso ', '1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tahu`
--
ALTER TABLE `tahu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tahu`
--
ALTER TABLE `tahu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
