-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 06:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-01 07:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblallotment`
--

CREATE TABLE `tblallotment` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Block` varchar(10) DEFAULT NULL,
  `FlatNum` int(10) DEFAULT NULL,
  `EContactnum` bigint(10) DEFAULT NULL,
  `Noofmember` int(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `AllotmentDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblallotment`
--

INSERT INTO `tblallotment` (`ID`, `Name`, `ContactNumber`, `Block`, `FlatNum`, `EContactnum`, `Noofmember`, `Address`, `AllotmentDate`) VALUES
(1, 'Amit Kumar', 8541236541, 'A', 106, 7418529630, 8, 'NA', '2024-11-15 13:20:54'),
(2, 'Gariam Singh', 7456321023, 'B', 205, 9632145698, 5, 'NA', '2024-11-15 13:22:00'),
(3, 'Anuj kumar', 8745632102, 'D', 405, 4561234563, 6, 'NA', '2024-11-15 13:22:43'),
(5, 'Rahul Yadav', 142563210, 'F', 605, 745632102, 7, 'NA', '2024-11-15 13:26:49'),
(6, 'Ajay Singh', 7854123698, 'D', 102, 1233211230, 4, 'Na', '2024-11-16 05:04:26'),
(7, 'Sanjeev Kumar', 6541230123, 'B', 207, 1233214562, 5, 'NA', '2024-11-16 05:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblbill`
--

CREATE TABLE `tblbill` (
  `ID` int(10) NOT NULL,
  `Block` varchar(20) DEFAULT NULL,
  `FlatNum` int(10) DEFAULT NULL,
  `PricepUnit` int(10) DEFAULT NULL,
  `UnitCons` int(10) DEFAULT NULL,
  `Echarge` varchar(50) DEFAULT NULL,
  `BillDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbill`
--

INSERT INTO `tblbill` (`ID`, `Block`, `FlatNum`, `PricepUnit`, `UnitCons`, `Echarge`, `BillDate`) VALUES
(1, 'F', 605, 10, 123, '1230', '2024-11-15 13:27:39'),
(2, 'D', 102, 5, 410, '2050', '2024-11-16 05:05:14'),
(3, 'B', 207, 6, 123, '738', '2024-11-16 05:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblblocks`
--

CREATE TABLE `tblblocks` (
  `ID` int(10) NOT NULL,
  `BlockName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblblocks`
--

INSERT INTO `tblblocks` (`ID`, `BlockName`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(9, 'H'),
(10, 'I'),
(11, 'J'),
(12, 'K'),
(13, 'L'),
(14, 'M'),
(15, 'N'),
(16, 'O'),
(17, 'P'),
(18, 'Q'),
(19, 'R'),
(20, 'S'),
(21, 'T'),
(22, 'U'),
(23, 'V'),
(24, 'W'),
(25, 'X'),
(26, 'Y'),
(27, 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplain`
--

CREATE TABLE `tblcomplain` (
  `ID` int(10) NOT NULL,
  `RequestID` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ComplainType` varchar(200) DEFAULT NULL,
  `ComplainDes` mediumtext DEFAULT NULL,
  `CompRaisedate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResolvedDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcomplain`
--

INSERT INTO `tblcomplain` (`ID`, `RequestID`, `UserID`, `ComplainType`, `ComplainDes`, `CompRaisedate`, `AdminRemark`, `Status`, `ResolvedDate`) VALUES
(1, 270296649, 5, 'Electrical', 'Need electrician', '2024-11-16 04:35:13', 'Complaint resolved.', 'Resolved', '2024-11-16 04:48:31'),
(2, 341542439, 7, 'Parking', 'Some park car in my parking', '2024-11-16 05:12:35', 'Issue resolved', 'Resolved', '2024-11-16 05:13:00'),
(3, 375432701, 3, 'Carpenter', 'Sent Carpenter as soon as possible.', '2024-11-16 14:28:01', 'Resolved', 'Resolved', '2024-11-16 14:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblflat`
--

CREATE TABLE `tblflat` (
  `ID` int(10) NOT NULL,
  `FlatNum` int(50) DEFAULT NULL,
  `Floor` varchar(50) DEFAULT NULL,
  `Block` varchar(50) DEFAULT NULL,
  `FlatType` varchar(120) DEFAULT NULL,
  `MCharge` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblflat`
--

INSERT INTO `tblflat` (`ID`, `FlatNum`, `Floor`, `Block`, `FlatType`, `MCharge`, `CreationDate`) VALUES
(1, 101, 'First Floor', 'A', '1 bhk', '1500', '2024-09-10 13:00:18'),
(2, 102, 'First Floor', 'A', '2 bhk', '2000', '2024-09-10 13:00:18'),
(3, 103, 'First Floor', 'A', '3 bhk', '3000', '2024-09-10 13:00:18'),
(4, 104, 'First Floor', 'A', '4 bhk', '3500', '2024-09-10 13:00:18'),
(5, 105, '1st Floor', 'A', '5 bhk', '4000', '2024-09-10 13:00:18'),
(6, 106, '1st floor', 'A', 'Duplex', '5000', '2024-09-10 13:00:18'),
(7, 107, '1 st floor', 'A', 'Suits', '5500', '2024-09-10 13:00:18'),
(8, 201, '2 nd floor', 'B', '1 bhk', '1500', '2024-09-10 13:00:18'),
(9, 202, '2nd floor', 'B', '2 bhk', '2000', '2024-09-10 13:00:18'),
(10, 203, '2 nd floor', 'B', '3 bhk', '3000', '2024-09-10 13:00:18'),
(11, 204, '2 nd floor', 'B', '4 bhk', '3500', '2024-09-10 13:00:18'),
(12, 205, '2 nd floor', 'B', '5 bhk', '4000', '2024-09-10 13:00:18'),
(13, 206, '2 nd floor', 'B', 'Duplex', '5000', '2024-09-10 13:00:18'),
(14, 207, '2nd floor', 'B', 'Suits', '5500', '2024-09-10 13:00:18'),
(15, 301, '3 rd floor', 'C', '1 bhk', '1500', '2024-09-10 13:00:18'),
(16, 302, '3 rd floor', 'C', '2 bhk', '2000', '2024-09-10 13:00:18'),
(17, 303, '3 rd floor', 'C', '3 bhk', '3000', '2024-09-10 13:00:18'),
(18, 304, '3 rd floor', 'C', '4 bhk', '3500', '2024-09-10 13:00:18'),
(19, 305, '3 rd floor', 'C', '5 bhk', '4000', '2024-09-10 13:00:18'),
(20, 306, '3rd floor', 'C', 'Duplex', '5000', '2024-09-10 13:00:18'),
(21, 307, '3 rd floor', 'C', 'Suits', '5500', '2024-09-10 13:00:18'),
(22, 401, '4 th floor', 'D', '1 bhk', '1500', '2024-09-10 13:00:18'),
(23, 402, '4 th floor', 'D', '2 bhk', '2000', '2024-09-10 13:00:18'),
(24, 403, '4 th floor', 'D', '3 bhk', '3000', '2024-09-10 13:00:18'),
(25, 404, '4 th floor', 'D', '4 bhk', '3500', '2024-09-10 13:00:18'),
(26, 405, '4 th floor', 'D', '5 bhk', '4000', '2024-09-10 13:00:18'),
(27, 406, '4 th floor', 'D', 'Duplex', '4500', '2024-09-10 13:00:18'),
(28, 407, '4 th floor', 'D', 'Suits', '5000', '2024-09-10 13:00:18'),
(29, 501, '5 th floor', 'E', '1 bhk', '1500', '2024-09-10 13:00:18'),
(30, 502, '5 th floor', 'E', '2 bhk', '2000', '2024-09-10 13:00:18'),
(31, 503, '5 th floor', 'E', '3 bhk', '3000', '2024-09-10 13:00:18'),
(32, 504, '5 th floor', 'E', '4 bhk', '3500', '2024-09-10 13:00:18'),
(33, 505, '5 th floor', 'E', '5 bhk', '4000', '2024-09-10 13:00:18'),
(34, 506, '5 th floor', 'E', 'Duplex', '4500', '2024-09-10 13:00:18'),
(35, 507, '5 th floor', 'E', 'Suits', '5000', '2024-09-10 13:00:18'),
(36, 601, '6 th floor', 'F', '1 bhk', '1500', '2024-09-10 13:00:18'),
(37, 602, '6 th floor', 'F', '2 bhk', '2000', '2024-09-10 13:00:18'),
(38, 603, '6 th floor', 'F', '3 bhk', '3000', '2024-09-10 13:00:18'),
(39, 604, '6 th floor', 'F', '4 bhk', '3500', '2024-09-10 13:00:18'),
(40, 605, '6 th floor', 'F', '5 bhk', '4000', '2024-09-10 13:00:18'),
(41, 606, '6 th floor', 'F', 'Duplex', '4500', '2024-09-10 13:00:18'),
(42, 606, '6 th floor', 'F', 'Duplex', '4500', '2024-09-10 13:00:18'),
(43, 607, '6 th floor', 'F', 'Suits', '5000', '2024-09-10 13:00:18'),
(44, 102, '1 st floor', 'D', 'Suits', '6500', '2024-09-10 13:00:18'),
(45, 201, 'Second Floor', 'A', '3 bhk', '3200', '2024-09-10 13:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(10) NOT NULL,
  `VisitorName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `WhomtoMeet` varchar(200) DEFAULT NULL,
  `ReasontoMeet` mediumtext DEFAULT NULL,
  `Block` varchar(50) DEFAULT NULL,
  `FlatNo` varchar(50) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(200) DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `VisitorName`, `MobileNumber`, `Address`, `WhomtoMeet`, `ReasontoMeet`, `Block`, `FlatNo`, `EnterDate`, `remark`, `outtime`) VALUES
(1, 'Amit kumar', 452145632, 'Hno18 Sector 10 Noida UP', 'Rahul', 'Personal', 'F', '605', '2024-11-16 03:06:59', 'NA', '2024-11-16 03:12:30'),
(3, 'John', 4564564563, 'A 12 Sector 12 Noida UP', 'Ajay', 'Personal', 'D', '102', '2024-11-16 05:06:09', NULL, NULL),
(4, 'Anjana', 14256321, 'A 123 Xyz Street Ghazibad', 'Sanjeev', 'Na', 'B', '207', '2024-11-16 05:11:16', 'out', '2024-11-16 05:12:11'),
(5, 'Rakesh Daman', 7894563699, 'K-990, KL Socitey', 'Anuj Kumar', 'Guest', 'D', '405', '2024-11-16 14:36:25', 'Out', '2024-11-16 14:37:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblallotment`
--
ALTER TABLE `tblallotment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Block` (`Block`),
  ADD KEY `FlatNum` (`FlatNum`);

--
-- Indexes for table `tblbill`
--
ALTER TABLE `tblbill`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Block` (`Block`),
  ADD KEY `FlatNum` (`FlatNum`);

--
-- Indexes for table `tblblocks`
--
ALTER TABLE `tblblocks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomplain`
--
ALTER TABLE `tblcomplain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tblflat`
--
ALTER TABLE `tblflat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Block` (`Block`),
  ADD KEY `FlatNo` (`FlatNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblallotment`
--
ALTER TABLE `tblallotment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbill`
--
ALTER TABLE `tblbill`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblblocks`
--
ALTER TABLE `tblblocks`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcomplain`
--
ALTER TABLE `tblcomplain`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblflat`
--
ALTER TABLE `tblflat`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
