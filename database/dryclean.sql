-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2012 at 02:21 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dryclean`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `nota` char(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pewangi` varchar(255) NOT NULL,
  `berat` varchar(255) NOT NULL,
  `masuk` date NOT NULL,
  `ambil` date NOT NULL,
  `harga` int(10) NOT NULL,
  `ket` varchar(255) NOT NULL,
  PRIMARY KEY (`nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nota`, `nama`, `pewangi`, `berat`, `masuk`, `ambil`, `harga`, `ket`) VALUES
('1206191', 'Rosmalina', 'Rose', '2', '2012-06-19', '2012-06-21', 5000, 'Tidak'),
('120619200', 'Kemala', 'Lily', '3.5', '2012-06-19', '2012-06-22', 7000, 'Lunas'),
('120619203', 'Ratna', 'Lavender', '2', '2012-06-19', '2012-06-20', 6000, 'Lunas'),
('12061922', 'Siwi', 'Fresh', '1.6', '2012-06-19', '2012-06-21', 4000, 'Tidak'),
('12061941', 'Laela', 'Ocean', '1.7', '2012-06-19', '2012-06-22', 3400, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`) VALUES
('ratna', 'ebd5a8107f770e8e05bcb3b3a5a0f016'),
('yunanta', 'f82e1afa853a4073ca41eae5d74da510');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
