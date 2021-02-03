-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 11:26 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dining`
--

CREATE TABLE `dining` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `members` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dining`
--

INSERT INTO `dining` (`id`, `name`, `email`, `contact`, `type`, `date`, `members`) VALUES
(1, 'Jeevan Kishore K N', 'jeevankishore21@gmail.com', '9008892001', 'Breakfast', '10/23/2019', 2),
(2, 'Nikhil', 'nikhilsingh@gmail.com', '9343436313', 'Lunch', '11/07/2019', 3),
(3, 'Pavan', 'pavanavittala@gmail.com', '9131213161', 'Dinner', '11/22/2019', 4),
(4, 'Jeevan Kishore K N', 'jeevankishore21@gmail.com', '9008892001', 'Lunch', '10/23/2019', 6);

-- --------------------------------------------------------

--
-- Table structure for table `diningpayment`
--

CREATE TABLE `diningpayment` (
  `paymentID` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diningpayment`
--

INSERT INTO `diningpayment` (`paymentID`, `amount`) VALUES
(1, 1000),
(2, 1500),
(3, 2000),
(4, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `members` int(255) NOT NULL,
  `checkin` varchar(255) NOT NULL,
  `nights` int(10) NOT NULL,
  `rooms` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `email`, `contact`, `members`, `checkin`, `nights`, `rooms`) VALUES
(1, 'Jeevan Kishore K N', 'jeevankishore21@gmail.com', '9008892001', 4, '09/09/2019', 2, 2),
(2, 'Nikhil', 'nikhilsingh@gmail.com', '9343436313', 2, '09/19/2019', 1, 2),
(3, 'Pavan', 'pavanavittala@gmail.com', '1234567890', 2, '09/27/2019', 1, 4),
(4, 'Apeksha', 'apeksha.bharadwaj@gmail.com', '900000000', 2, '09/15/2019', 1, 4),
(5, 'Koushal', 'koushal@gmail.com', '1234567890', 3, '10/09/2019', 3, 3),
(6, 'Jeevan Kishore K N', 'jeevankishore21@gmail.com', '9343436313', 3, '09/15/2019', 1, 1),
(7, 'Samanth', 'sammy@gmail.com', '9131213161', 2, '10/17/2019', 2, 4),
(8, 'Apeksha', 'apeksha.bharadwaj@gmail.com', '9323436373', 4, '09/19/2019', 2, 2),
(9, 'Nikhil Singh Mahala', 'nikhilsingh@gmail.com', '9131213161', 2, '09/27/2019', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roompayment`
--

CREATE TABLE `roompayment` (
  `paymentID` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roompayment`
--

INSERT INTO `roompayment` (`paymentID`, `amount`) VALUES
(1, 6000),
(2, 4000),
(3, 8000),
(4, 8000),
(5, 27000),
(6, 3000),
(7, 16000),
(8, 32000),
(9, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`firstname`, `lastname`, `email`, `password`) VALUES
('Aditya', 'Harish', 'aditya@gmail.com', '$2y$10$iM1IYqeMn0xmszELgDQerOKSN5oEKH2AnNoADFREZiCHJFFduYRC.'),
('Aishwarya', 'B J', 'aish123@gmail.com', '$2y$10$PtkFKs4w.gMRbolxb434heVzQdpRixEt6w7aY30wxeSMLo7VaxR2u'),
('Apeksha', 'Bharadwaj', 'apeksha.bharadwaj@gmail.com', '$2y$10$ZJQcXpMMMZ/7OaNtOjxlROL1Mvoi1WArC8xXK3Xde7eumYLs85DHK'),
('fewf', 'dwdw', 'ewff@geg.com', '$2y$10$SIIEwABpFtL4XmFzKkw0G.wFC.XcoSyAplETl93833HCfb2ctKcc2'),
('Goutham', 'Kumar', 'goutham@gmail.com', '$2y$10$KhUzVAFVW15EE1rXndMjze5Q9i5ZCf8sva1RZ3rnuWt6glTxivNly'),
('Jeevan', 'Kishore', 'jeevankishore21@gmail.com', '$2y$10$YWyLPAZyKbcVYsj5qe640.XSgOJRGrwOKvR6JPjsHiwEnckjijKjO'),
('Koushal', 'Bhat', 'koushal@gmail.com', '$2y$10$lmKdE23A7oQ24y14xKR5P.4/K3WI8Rzw4PzCRK7kIT4IkAImBmctC'),
('Nikhil', 'Singh', 'nik@gmail.com', '$2y$10$VaaqnJTFv43QSHnyDQuiguTSh0hU5vAyOOgQ18YglBKwTN4dSN2qu'),
('Nikhil', 'Singh', 'nikhilsingh@gmail.com', '$2y$10$JxDLrkxeZj6epq2PwNCynOe3IxsC3m9pNaCmkemisKbezulAB2Rri'),
('Nitisha', 'J B', 'nitisha@gmail.com', '$2y$10$Ua27YgbGxuKKlDB7oIu0y.NmDzXxEVj0iMVnov.BRSHGAum0UOr/e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dining`
--
ALTER TABLE `dining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diningpayment`
--
ALTER TABLE `diningpayment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `subject` (`subject`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roompayment`
--
ALTER TABLE `roompayment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dining`
--
ALTER TABLE `dining`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `diningpayment`
--
ALTER TABLE `diningpayment`
  MODIFY `paymentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roompayment`
--
ALTER TABLE `roompayment`
  MODIFY `paymentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diningpayment`
--
ALTER TABLE `diningpayment`
  ADD CONSTRAINT `diningpayment_ibfk_1` FOREIGN KEY (`paymentID`) REFERENCES `dining` (`id`);

--
-- Constraints for table `roompayment`
--
ALTER TABLE `roompayment`
  ADD CONSTRAINT `roompayment_ibfk_1` FOREIGN KEY (`paymentID`) REFERENCES `reservation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
