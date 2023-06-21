-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 03:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `LOANNO` varchar(8) NOT NULL CHECK (`LOANNO` like 'L%'),
  `CNAME` varchar(15) DEFAULT NULL,
  `BNAME` varchar(20) DEFAULT NULL,
  `AMOUNT` float DEFAULT NULL CHECK (`AMOUNT` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`LOANNO`, `CNAME`, `BNAME`, `AMOUNT`) VALUES
('L201', 'ANIL', 'VRCE', 1000),
('L206', 'MEHUL', 'AJNI', 5000),
('L311', 'SUNIL', 'DHARAMPETH', 3000),
('L321', 'MADHURI', 'ANDHERI', 2000),
('L371', 'PRAMOD', 'VIRAR', 8000),
('L481', 'KRANTI', 'NEHRU PLACE', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BNAME` varchar(20) NOT NULL,
  `CITY` varchar(30) DEFAULT NULL CHECK (`CITY` in ('NAGPUR','DELHI','BANGALORE','BOMBAY'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BNAME`, `CITY`) VALUES
('AJNI', 'NAGPUR'),
('ANDHERI', 'BOMBAY'),
('CHANDNI', 'DELHI'),
('DHARAMPETH', 'NAGPUR'),
('KAROLBAGH', 'DELHI'),
('MG ROAD', 'BANGALORE'),
('NEHRU PALACE', 'DELHI'),
('POWAI', 'BOMBAY'),
('VRCE', 'NAGPUR');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNAME` varchar(15) NOT NULL,
  `CITY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNAME`, `CITY`) VALUES
('ANIL', 'CALCUTTA'),
('KRANTI', 'BOMBAY'),
('MADHURI', 'NAGPUR'),
('MANDAR', 'PATNA'),
('MEHUL', 'BARODA'),
('NAREN', 'BOMBAY'),
('PRAMOD', 'NAGPUR'),
('SANDIP', 'SURAT'),
('SHIVANI', 'BOMBAY'),
('SUNIL', 'DELHI');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `ACTNO` varchar(5) NOT NULL CHECK (`ACTNO` like 'D%'),
  `CNAME` varchar(15) DEFAULT NULL,
  `BNAME` varchar(20) DEFAULT NULL,
  `AMOUNT` float DEFAULT NULL CHECK (`AMOUNT` > 0),
  `ADATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`ACTNO`, `CNAME`, `BNAME`, `AMOUNT`, `ADATE`) VALUES
('D100', 'ANIL', 'VRCE', 1000, '1995-03-01'),
('D101', 'SUNIL', 'ANJNI', 500, '1996-01-04'),
('D102', 'MEHUL', 'KAROLBAGH', 3500, '1995-11-17'),
('D104', 'MADHURI', 'CHANDNI', 1200, '1995-12-17'),
('D105', 'PRAMOD', 'MG ROAD', 3000, '1996-03-27'),
('D106', 'SANDIP', 'ANDHERI', 2000, '1996-03-31'),
('D107', 'SHIVANI', 'VIRAR', 1000, '1995-09-05'),
('D108', 'KRANTI', 'NEHRUPLACE', 5000, '1995-07-02'),
('D109', 'MINU	', 'POWAI', 7000, '1995-08-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`LOANNO`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BNAME`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CNAME`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`ACTNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
