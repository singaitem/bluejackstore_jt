-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2017 at 04:43 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluejack_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `msproducts`
--

CREATE TABLE `msproducts` (
  `productid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `insertby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msproducts`
--

INSERT INTO `msproducts` (`productid`, `name`, `price`, `weight`, `stock`, `image`, `insertby`) VALUES
(1, 'Mouse', 50000, '1kg', 100, 'images1.jpg', 1),
(2, 'Keyboard', 600000, '1kg', 100, 'images2.png', 1),
(3, 'Kemeja', 150000, '0.5kg', 100, 'images3.jpg', 1),
(4, 'Celana', 70000, '0.2kg', 100, 'images4.jpg', 1),
(5, 'Monitor', 1000000, '1kg', 100, 'images5.jpg', 1),
(9, 'Meja', 500000, '5kg', 35, 'images6.JPG\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msproducts`
--
ALTER TABLE `msproducts`
  ADD PRIMARY KEY (`productid`),
  ADD UNIQUE KEY `productid` (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msproducts`
--
ALTER TABLE `msproducts`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
