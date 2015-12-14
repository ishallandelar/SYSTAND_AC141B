-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2015 at 04:22 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ac141_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `list_price` decimal(9,2) NOT NULL,
  `cost_price` decimal(9,2) NOT NULL,
  `type` varchar(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `uom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `list_price`, `cost_price`, `type`, `category`, `uom`) VALUES
(1, 'Paracetamol', '7.00', '5.00', 'Capsule', 'Pain Reliver', 'piece');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `patients_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `ward/service` varchar(100) NOT NULL,
  `tel._no` int(11) NOT NULL,
  `age` int(2) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `date_admitted` int(11) NOT NULL,
  `date_discharge` int(11) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `civil_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_line`
--

CREATE TABLE `sale_line` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `quantity` int(100) NOT NULL,
  `uom` int(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `unit_price` decimal(9,2) NOT NULL,
  `amount` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_line`
--
ALTER TABLE `sale_line`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sale_line`
--
ALTER TABLE `sale_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
