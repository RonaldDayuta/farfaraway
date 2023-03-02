-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 03:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhealth_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(8) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`ID`, `username`, `password`) VALUES
(1, 'Admin', '12345'),
(2, 'Admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_initial` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`username`, `pass`, `first_name`, `last_name`, `middle_initial`, `contact_no`, `gender`, `position`, `nationality`, `address`, `age`, `civil_status`) VALUES
('Admin', '1234567', 'Ronald Cristian', 'Dayuta', 'C', '09461977083', 'male', 'admin', 'Filipino', '123 Sesames Street', 19, 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `LID` int(11) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `MName` char(3) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Position` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `CivilStatus` varchar(20) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`LID`, `LName`, `FName`, `MName`, `Address`, `Gender`, `DateOfBirth`, `Position`, `Nationality`, `ContactNumber`, `Age`, `CivilStatus`, `UserName`, `Password`) VALUES
(50037, 'Bonto', 'Rhon', 'B.', 'Putatan Muntinlupa City', 'Male', '2002-11-24', 'Staff', 'FIlipino', '09081602764', 20, 'Single', 'Rhynx', '112402'),
(50042, 'Angeles', 'Jonah', 'M.', 'Somewhere', 'Female', '2003-04-10', 'Assistant', 'Filipina', '09123456789', 19, 'Single', 'Jonah', '1234'),
(50043, 'Dayuta', 'Ronald Cristian', 'D.', '101 San Guillermo Street Bayanan Muntinlupa City', 'Male', '2003-01-27', 'Assistant', 'Filipino', '09461977083', 19, 'Single', 'Assistant', '1234'),
(50045, 'Bonto', 'Rhon Carlo', 'B.', 'Somewhere', 'Male', '2002-11-24', 'Staff', 'Filipino', '09123456789', 20, 'Single', 'Bonto', '1234'),
(50046, 'Iglopas', 'Paul Marvin', 'G.', 'Tunasan na lang', 'Male', '2001-09-20', 'Admin', 'Filipino', '09876543219', 21, 'Single', 'Iglopas', '1234'),
(50047, 'Angeles', 'Janah', 'M.', 'Somewhere', 'Female', '2003-04-10', 'Assistant', 'Filipino', '09123456789', 18, 'Single', 'Angeles', '1234'),
(50048, 'Chin', 'Bowen', 'A.', 'Magdaong Promise Land L7B7 Poblacion Muntinlupa Ci', 'Male', '2003-06-12', 'Admin', 'Filipino', '09123456789', 19, 'Single', 'Chin', '321132'),
(50049, 'Iglopas', 'Paul Marvin', 'G', 'Blk 9 lot 20-21 lira st. villa carolina 1 tunasan ', 'Male', '2001-09-20', 'Admin', 'Filipino', '09959452609', 21, 'Single', 'Iglopas', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedrecord`
--

CREATE TABLE `tblmedrecord` (
  `MRID` int(11) NOT NULL,
  `PID` int(8) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  `BloodPressure` varchar(20) NOT NULL,
  `PulseRate` varchar(20) NOT NULL,
  `SugarLevel` varchar(20) NOT NULL,
  `Temperature` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Symptoms` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmedrecord`
--

INSERT INTO `tblmedrecord` (`MRID`, `PID`, `Height`, `Weight`, `BloodPressure`, `PulseRate`, `SugarLevel`, `Temperature`, `Description`, `Symptoms`) VALUES
(5, 50037, '167', '45', '100', '85', '100', '36', 'headache', 'migraine');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `PID` int(11) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `MName` varchar(20) NOT NULL,
  `BDate` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `CivilStatus` varchar(20) NOT NULL,
  `BloodType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`PID`, `LName`, `FName`, `MName`, `BDate`, `Address`, `Gender`, `Nationality`, `ContactNumber`, `Age`, `CivilStatus`, `BloodType`) VALUES
(7, 'Bonto', 'Rhon', 'B', '2002-11-24', 'Somewhere', 'Male', 'Filipino', '09876543219', 20, 'Single', 'O'),
(8, 'bonto', 'rhon', 'b', '2002-11-24', 'somewhere', 'Male', 'filipino', '09081602764', 20, 'Single', 'o'),
(9, 'DelaCruz', 'David', 'A', '1987-11-03', 'Katarungan Village', 'Male', 'Filipino', '09997180832', 35, 'Single', 'O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `tblmedrecord`
--
ALTER TABLE `tblmedrecord`
  ADD PRIMARY KEY (`MRID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`PID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbllogin`
--
ALTER TABLE `tbllogin`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50050;

--
-- AUTO_INCREMENT for table `tblmedrecord`
--
ALTER TABLE `tblmedrecord`
  MODIFY `MRID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
