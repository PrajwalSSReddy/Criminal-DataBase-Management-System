-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 05:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `station`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(10) NOT NULL,
  `ID_number` int(15) NOT NULL,
  `Type` char(100) NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'not issued'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `ID_number`, `Type`, `status`) VALUES
(2, 6, 'certificate', 'not issued'),
(3, 8, 'abstract', 'not issued'),
(4, 6, 'abstract', 'not issued');

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

CREATE TABLE `crimes` (
  `Crime_No` int(9) NOT NULL,
  `Status` char(100) NOT NULL DEFAULT 'No action',
  `Category` char(100) NOT NULL,
  `Description` char(100) NOT NULL,
  `Crime_Scene` char(100) NOT NULL,
  `Suspects` char(100) NOT NULL DEFAULT 'Not yet',
  `phoneNumber` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `evidence` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`Crime_No`, `Status`, `Category`, `Description`, `Crime_Scene`, `Suspects`, `phoneNumber`, `Address`, `evidence`) VALUES
(12, 'No action', 'yeewqe', '123123', 'India county, q sub county, Ram negar Bangali tola road.', 'Not yet', 0, '', ''),
(13, 'No action', '13123', '32qe2e', 'India county, Bihar sub county, Ram negar Bangali tola road.', 'Not yet', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_NO` int(6) NOT NULL,
  `Description` char(100) NOT NULL,
  `Last_Seen` date NOT NULL,
  `Item_Name` varchar(1000) NOT NULL,
  `category` char(100) NOT NULL,
  `status` char(100) NOT NULL DEFAULT 'Not found'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_NO`, `Description`, `Last_Seen`, `Item_Name`, `category`, `status`) VALUES
(1, 'Lets see this one', '2015-03-07', 'Phone', 'found', '');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `firstName` char(100) NOT NULL,
  `lastName` char(100) NOT NULL,
  `ID_Number` int(16) NOT NULL,
  `Location` char(100) NOT NULL,
  `Gender` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`firstName`, `lastName`, `ID_Number`, `Location`, `Gender`) VALUES
('nagasiri', 'm', 6, 'india', 'female'),
('siri', 'm', 8, 'india', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `email`) VALUES
(0, 'aaaa', 'fab@gmail.com'),
(1000000, 'admin1234', 'admin@admin.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `id_no` (`ID_number`);

--
-- Indexes for table `crimes`
--
ALTER TABLE `crimes`
  ADD PRIMARY KEY (`Crime_No`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_NO`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`ID_Number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crimes`
--
ALTER TABLE `crimes`
  MODIFY `Crime_No` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_NO` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`ID_number`) REFERENCES `persons` (`ID_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
