-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2017 at 08:50 PM
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
-- Table structure for table `mscarts`
--

CREATE TABLE `mscarts` (
  `idcart` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `msproducts`
--

CREATE TABLE `msproducts` (
  `idproduct` int(11) NOT NULL,
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

INSERT INTO `msproducts` (`idproduct`, `name`, `price`, `weight`, `stock`, `image`, `insertby`) VALUES
(1, 'Mouse', 50000, '1kg', 95, 'images1.jpg', 1),
(2, 'Keyboard', 600000, '1kg', 99, 'images2.png', 1),
(3, 'Kemeja', 150000, '0.5kg', 100, 'images3.jpg', 1),
(4, 'Celana', 70000, '0.2kg', 100, 'images4.jpg', 1),
(5, 'Monitor', 1000000, '1kg', 99, 'images5.jpg', 1),
(9, 'Meja', 500000, '5kg', 34, 'images6.JPG\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `msusers`
--

CREATE TABLE `msusers` (
  `iduser` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `birthdate` date NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `role` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msusers`
--

INSERT INTO `msusers` (`iduser`, `fullname`, `phone`, `email`, `password`, `gender`, `birthdate`, `address`, `photo`, `role`) VALUES
(1, 'ini admin', '08789055224', 'admin@gmail.com', '123456', 'Male', '1996-07-11', 'ini jalan', 'hipster-512', 'admin'),
(2, 'ini member', '08789055224', 'member@gmail.com', '123456', 'Male', '1996-07-11', 'ini jalan', 'photo.png', 'member'),
(3, 'null', '123123123213', 'asdasdaas@asd.com', '123123', 'female', '1996-05-12', 'photo.png', 'photo.png', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `trdetails`
--

CREATE TABLE `trdetails` (
  `iddetail` int(11) NOT NULL,
  `idtransaction` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trdetails`
--

INSERT INTO `trdetails` (`iddetail`, `idtransaction`, `idproduct`, `quantity`, `subtotal`) VALUES
(1, 2, 2, 1, 600000),
(2, 2, 1, 1, 50000),
(4, 4, 5, 1, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `trtransactions`
--

CREATE TABLE `trtransactions` (
  `idtransaction` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trtransactions`
--

INSERT INTO `trtransactions` (`idtransaction`, `iduser`, `status`, `datetime`, `total`) VALUES
(2, 2, 'Waiting for Approval', '2017-01-13 19:14:35', 650000),
(4, 2, 'Completed', '2017-01-13 19:38:10', 1000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscarts`
--
ALTER TABLE `mscarts`
  ADD PRIMARY KEY (`idcart`);

--
-- Indexes for table `msproducts`
--
ALTER TABLE `msproducts`
  ADD PRIMARY KEY (`idproduct`),
  ADD UNIQUE KEY `productid` (`idproduct`);

--
-- Indexes for table `msusers`
--
ALTER TABLE `msusers`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `trdetails`
--
ALTER TABLE `trdetails`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indexes for table `trtransactions`
--
ALTER TABLE `trtransactions`
  ADD PRIMARY KEY (`idtransaction`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mscarts`
--
ALTER TABLE `mscarts`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `msproducts`
--
ALTER TABLE `msproducts`
  MODIFY `idproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `msusers`
--
ALTER TABLE `msusers`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `trdetails`
--
ALTER TABLE `trdetails`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `trtransactions`
--
ALTER TABLE `trtransactions`
  MODIFY `idtransaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
