-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2017 at 06:32 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msusers`
--
ALTER TABLE `msusers`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msusers`
--
ALTER TABLE `msusers`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
