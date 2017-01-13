-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2017 at 10:15 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bluejack_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscarts`
--

CREATE TABLE IF NOT EXISTS `mscarts` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `msproducts`
--

CREATE TABLE IF NOT EXISTS `msproducts` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `insertby` int(11) NOT NULL,
  PRIMARY KEY (`idproduct`),
  UNIQUE KEY `idproduct` (`idproduct`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `msproducts`
--

INSERT INTO `msproducts` (`idproduct`, `name`, `price`, `weight`, `stock`, `image`, `insertby`) VALUES
(1, 'Mouse', 50000, '1kg', 100, 'images1.jpg', 1),
(2, 'Keyboard', 600000, '1kg', 99, 'images2.png', 1),
(3, 'Kemeja', 150000, '0.5kg', 100, 'images3.jpg', 1),
(4, 'Celana', 70000, '0.2kg', 100, 'images4.jpg', 1),
(5, 'Monitor', 1000000, '1kg', 99, 'images5.jpg', 1),
(9, 'Meja', 500000, '5kg', 34, 'images6.JPG\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `msreview`
--

CREATE TABLE IF NOT EXISTS `msreview` (
  `idreview` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`idreview`),
  UNIQUE KEY `idreview` (`idreview`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `msreview`
--

INSERT INTO `msreview` (`idreview`, `iduser`, `idproduct`, `review`, `rate`) VALUES
(5, 1, 1, 'wkkw keren ya', 2),
(6, 1, 1, 'yihaaaaa , mantapaa', 5);

-- --------------------------------------------------------

--
-- Table structure for table `msusers`
--

CREATE TABLE IF NOT EXISTS `msusers` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `birthdate` date NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `role` varchar(7) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

CREATE TABLE IF NOT EXISTS `trdetails` (
  `iddetail` int(11) NOT NULL AUTO_INCREMENT,
  `idtransaction` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`iddetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `trtransactions` (
  `idtransaction` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`idtransaction`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `trtransactions`
--

INSERT INTO `trtransactions` (`idtransaction`, `iduser`, `status`, `datetime`, `total`) VALUES
(2, 2, 'Waiting for Approval', '2017-01-13 19:14:35', 650000),
(4, 2, 'Completed', '2017-01-13 19:38:10', 1000000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
