-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 04:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phoneCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `empCode` varchar(50) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profileImage` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `breakTime` time NOT NULL,
  `shiftTime` datetime NOT NULL,
  `doc` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `clientName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDeleted` int(10) NOT NULL COMMENT '0 for not deleted, 1 for deleted',
  `isActive` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 for not active, 1 for active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `projectName`, `clientName`, `address`, `state`, `country`, `createdDate`, `updatedDate`, `isDeleted`, `isActive`) VALUES
(1, 'tpm', 'Abc', 'VijayNagar', 'MP', 'Indore', '2021-02-02 17:58:30', '0000-00-00 00:00:00', 0, 1),
(2, 'SampleProject', 'JohnDoe', 'Ashok Nagar', 'MP', 'India', '2021-02-02 18:00:00', '2021-02-02 17:59:44', 0, 1),
(12, 'Sample', 'John', 'White House', 'America', 'US', '2021-02-12 19:08:51', '2021-02-12 19:08:51', 0, 0),
(13, 'Sample', 'John', 'xyz', 'rajasthan', 'india', '2021-02-16 15:45:45', '2021-02-16 15:34:26', 1, 0),
(15, 'SAMPLE One', 'Client One', '123 street ', 'asdf', 'asdf', '2021-02-18 14:46:30', '2021-02-18 14:46:30', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projectbill`
--

CREATE TABLE `projectbill` (
  `id` int(10) NOT NULL,
  `projectCode` varchar(50) NOT NULL,
  `clientName` varchar(255) NOT NULL,
  `projectDescription` varchar(255) NOT NULL,
  `total` varchar(50) NOT NULL,
  `paid` varchar(50) NOT NULL,
  `unPaid` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projectbilldetails`
--

CREATE TABLE `projectbilldetails` (
  `id` int(10) NOT NULL,
  `taskCode` varchar(50) NOT NULL,
  `clientName` varchar(255) NOT NULL,
  `taskDetails` varchar(255) NOT NULL,
  `adarshCostLow` varchar(255) NOT NULL,
  `adarshCostHigh` varchar(255) NOT NULL,
  `percentage` double NOT NULL,
  `parathCostLow` varchar(255) NOT NULL,
  `parathCostHigh` varchar(255) NOT NULL,
  `costToClientLow` varchar(255) NOT NULL,
  `costToClientHigh` varchar(255) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `updatedDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectbilldetails`
--

INSERT INTO `projectbilldetails` (`id`, `taskCode`, `clientName`, `taskDetails`, `adarshCostLow`, `adarshCostHigh`, `percentage`, `parathCostLow`, `parathCostHigh`, `costToClientLow`, `costToClientHigh`, `createdDate`, `updatedDate`) VALUES
(1, 'Ap01', 'Govind', 'Billing Module', '300', '400', 1.2, '350', '450', '650', '850', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 'Ap01', 'Govind', 'Billing Module', '300', '400', 1.2, '350', '450', '650', '850', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(3, 'asd', 'zcc', 'xxc', '30', '40', 1.2, '35', '45', '65', '85', '2021-03-08 17:07:50.000000', '2021-03-08 17:07:50.022727'),
(4, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:10.000000', '2021-03-09 11:36:10.477387'),
(5, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:17.000000', '2021-03-09 11:36:17.548480'),
(6, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:20.000000', '2021-03-09 11:36:20.632244'),
(7, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:21.000000', '2021-03-09 11:36:21.490080'),
(8, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:21.000000', '2021-03-09 11:36:21.789601'),
(9, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:22.000000', '2021-03-09 11:36:22.121842'),
(10, 'SP11', 'Yash', 'Insert Update', '30', '40', 1.2, '31', '41', '61', '81', '2021-03-09 11:36:22.000000', '2021-03-09 11:36:22.341190');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(10) NOT NULL,
  `taskCode` varchar(50) NOT NULL,
  `taskTitle` varchar(255) NOT NULL,
  `taskDescription` varchar(255) NOT NULL,
  `projectCode` varchar(50) NOT NULL,
  `empCode` varchar(50) NOT NULL,
  `estimateTime` varchar(20) NOT NULL,
  `actualTime` varchar(20) NOT NULL,
  `status` int(2) UNSIGNED NOT NULL COMMENT '0 for new task, 1 for working, 2 for pending, 3 for done',
  `comment` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDeleted` int(1) NOT NULL DEFAULT '0' COMMENT '0 for not deleted, 1 for deleted',
  `updatedBy` int(11) NOT NULL,
  `isActive` int(10) NOT NULL DEFAULT '0' COMMENT '0 for not active, 1 for active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `taskCode`, `taskTitle`, `taskDescription`, `projectCode`, `empCode`, `estimateTime`, `actualTime`, `status`, `comment`, `createdDate`, `updatedDate`, `isDeleted`, `updatedBy`, `isActive`) VALUES
(1, 'Ap01', 'Bill Module', 'Abcd', 'tp01', 'Ab201', '3 Month', '4 Month', 0, 'ongoing', '2021-02-03 10:34:41', '2021-02-03 10:40:15', 0, 21, 1),
(2, 'Xy202', 'ABCde', 'xyz', 'tp13', 'P205', '4 Month', '5 Month', 2, 'xyz', '2021-02-03 10:40:35', '2021-02-03 10:40:15', 0, 31, 1),
(3, '201', 'sample', 'sample', '234', 'GS201', '3hr', '4hr', 3, 'good', '2021-02-06 11:38:38', '2021-02-06 11:38:38', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileNumber` varchar(15) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `profileImage` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `mobileNumber`, `userType`, `profileImage`, `createdDate`, `updatedDate`) VALUES
(5, 'ram', 'sharma', '', '', '', '', '', '2021-01-30 00:00:00', '2021-01-30 19:52:28'),
(6, 'Adarsh', 'Tated', '', '', '', '', '', '2021-07-21 19:26:49', '2021-07-21 19:26:49'),
(7, 'Govind', 'Somani', '', '', '', '', '', '2021-07-21 19:28:01', '2021-07-21 19:28:01'),
(8, 'Govind', 'Somani', '', '', '', '', '', '2021-07-21 19:29:42', '2021-07-21 19:29:42'),
(9, 'Ravi', 'Sir', '', '', '', '', '', '2021-07-21 19:30:02', '2021-07-21 19:30:02'),
(10, 'Test', 'User', '', '', '', '', '', '2021-07-21 19:30:42', '2021-07-21 19:30:42'),
(11, 'test', 'userss', '', '', '', '', '', '2021-07-21 19:38:39', '2021-07-21 19:38:39'),
(12, 'Ram', 'Shyam', '', '', '', '', '', '2021-07-21 19:39:27', '2021-07-21 19:39:27'),
(13, 'Ram', 'Shyam', 'ram@gmail.com', '123456', '', '1', '', '2021-10-12 19:34:00', '2021-10-12 19:30:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empCode` (`empCode`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectbill`
--
ALTER TABLE `projectbill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectbilldetails`
--
ALTER TABLE `projectbilldetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foreign_key` (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `primary key` (`id`),
  ADD UNIQUE KEY `taskCode` (`taskCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `projectbill`
--
ALTER TABLE `projectbill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectbilldetails`
--
ALTER TABLE `projectbilldetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projectbill`
--
ALTER TABLE `projectbill`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`id`) REFERENCES `project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
