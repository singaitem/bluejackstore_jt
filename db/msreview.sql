-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2017 at 09:30 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `msreview`
--

INSERT INTO `msreview` (`idreview`, `iduser`, `idproduct`, `review`, `rate`) VALUES
(5, 1, 1, 'wkkw keren ya', 2),
(6, 1, 1, 'yihaaaaa , mantapaa', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
