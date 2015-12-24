-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2015 at 08:19 PM
-- Server version: 5.6.27-0ubuntu1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ASR`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_login`
--

CREATE TABLE IF NOT EXISTS `faculty_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_login`
--

INSERT INTO `faculty_login` (`username`, `password`) VALUES
('500001', 'd561c7c03c1f2831904823a95835ff5f'),
('500002', 'd561c7c03c1f2831904823a95835ff5f'),
('500003', 'd561c7c03c1f2831904823a95835ff5f');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `facultyID` int(11) NOT NULL,
  `CourseCode` varchar(8) NOT NULL,
  `CourseSlot` varchar(20) NOT NULL,
  `groupID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`facultyID`, `CourseCode`, `CourseSlot`, `groupID`) VALUES
(500001, 'SWE234', 'L5+L6', 1),
(500001, 'SWE301', 'A2', 2),
(500002, 'SWE234', 'L7+L8', 3),
(500003, 'SWE503', 'L17+L18+L19', 4);

-- --------------------------------------------------------

--
-- Table structure for table `student_group`
--

CREATE TABLE IF NOT EXISTS `student_group` (
  `username` varchar(100) NOT NULL,
  `groupID` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `CourseSlot` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_group`
--

INSERT INTO `student_group` (`username`, `groupID`, `id`, `CourseSlot`) VALUES
('12MSE1091', 1, 1, 'L5+L6'),
('12MSE1002', 1, 2, 'L5+L6'),
('12MSE1093', 1, 3, 'L5+L6'),
('12MSE1094', 1, 4, 'L5+L6'),
('12MSE1098', 1, 5, 'L5+L6'),
('12MSE1097', 1, 6, 'L5+L6'),
('12MSE1004', 1, 7, 'L5+L6'),
('12MSE1005', 1, 8, 'L5+L6'),
('12MSE1006', 1, 9, 'L5+L6'),
('12MSE1007', 1, 10, 'L5+L6'),
('12MSE1008', 1, 11, 'L5+L6'),
('12MSE1009', 1, 12, 'L5+L6'),
('12MSE1010', 1, 13, 'L5+L6'),
('12MSE1001', 1, 14, 'L5+L6'),
('12MSE1100', 1, 15, 'L5+L6'),
('12MSE1101', 1, 16, 'L5+L6'),
('12MSE1102', 1, 17, 'L5+L6'),
('12MSE1111', 1, 18, 'L5+L6'),
('12MSE2222', 1, 19, 'L5+L6'),
('12MSE1091', 2, 20, 'A2'),
('12MSE1002', 2, 21, 'A2'),
('12MSE1093', 2, 22, 'A2'),
('12MSE1094', 2, 23, 'A2'),
('12MSE1098', 2, 24, 'A2'),
('12MSE1097', 2, 25, 'A2'),
('12MSE1004', 2, 26, 'A2'),
('12MSE1005', 2, 27, 'A2'),
('12MSE1007', 2, 28, 'A2'),
('12MSE1008', 2, 29, 'A2'),
('12MSE1010', 2, 30, 'A2'),
('12MSE1001', 2, 31, 'A2'),
('12MSE1100', 2, 32, 'A2'),
('12MSE1101', 2, 33, 'A2'),
('12MSE1102', 2, 34, 'A2'),
('12MSE1091', 3, 35, 'L7+L8'),
('12MSE1092', 3, 36, 'L7+L8'),
('12MSE1093', 3, 37, 'L7+L8'),
('12MSE1094', 3, 38, 'L7+L8'),
('12MSE1095', 3, 39, 'L7+L8'),
('12MSE1096', 3, 40, 'L7+L8'),
('12MSE1097', 3, 41, 'L7+L8'),
('12MSE1098', 3, 42, 'L7+L8'),
('12MSE1099', 3, 43, 'L7+L8'),
('12MSE1100', 3, 44, 'L7+L8'),
('13MSE1002', 3, 45, 'L7+L8'),
('13MSE1004', 3, 46, 'L7+L8'),
('13MSE1006', 3, 47, 'L7+L8'),
('13MSE1008', 3, 48, 'L7+L8'),
('13MSE1010', 3, 49, 'L7+L8'),
('13MSE1012', 3, 50, 'L7+L8'),
('13MSE1014', 3, 51, 'L7+L8'),
('13MSE1016', 3, 52, 'L7+L8'),
('13MSE1018', 3, 53, 'L7+L8'),
('13MSE1020', 3, 54, 'L7+L8'),
('11MSE1001', 3, 55, 'L7+L8'),
('11MSE1002', 3, 56, 'L7+L8'),
('11MSE1003', 3, 57, 'L7+L8'),
('11MSE1004', 3, 58, 'L7+L8'),
('11MSE1005', 3, 59, 'L7+L8'),
('11MSE1006', 3, 60, 'L7+L8'),
('11MSE1007', 3, 61, 'L7+L8'),
('11MSE1008', 3, 62, 'L7+L8'),
('11MSE1009', 3, 63, 'L7+L8'),
('11MSE1010', 3, 64, 'L7+L8'),
('12MSE1091', 4, 65, 'L17+L18+L19'),
('12MSE1092', 4, 66, 'L17+L18+L19'),
('12MSE1093', 4, 67, 'L17+L18+L19'),
('12MSE1094', 4, 68, 'L17+L18+L19'),
('12MSE1095', 4, 69, 'L17+L18+L19'),
('12MSE1096', 4, 70, 'L17+L18+L19'),
('12MSE1097', 4, 71, 'L17+L18+L19'),
('12MSE1098', 4, 72, 'L17+L18+L19'),
('12MSE1099', 4, 73, 'L17+L18+L19'),
('12MSE1100', 4, 74, 'L17+L18+L19'),
('13MSE1002', 4, 75, 'L17+L18+L19'),
('13MSE1004', 4, 76, 'L17+L18+L19');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE IF NOT EXISTS `student_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`username`, `password`) VALUES
('12MSE1097', '204937ceeabb4d4b80bd103e99d70a55');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `faculty_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `test_name` varchar(255) NOT NULL,
  `test_type` enum('CODE','MCQ') DEFAULT NULL,
  `test_duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`faculty_id`, `test_id`, `group_id`, `start_time`, `end_time`, `test_name`, `test_type`, `test_duration`) VALUES
(500001, 16600, 1, '2015-12-25 10:30:00', '2015-12-26 10:40:00', 'MSSE', 'CODE', 75),
(500001, 62253, NULL, NULL, NULL, 'B Tech', 'CODE', 55);

-- --------------------------------------------------------

--
-- Table structure for table `test_code_16600`
--

CREATE TABLE IF NOT EXISTS `test_code_16600` (
  `question` text NOT NULL,
  `input1` text NOT NULL,
  `input2` text NOT NULL,
  `input3` text NOT NULL,
  `output1` text NOT NULL,
  `output2` text NOT NULL,
  `output3` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_code_16600`
--

INSERT INTO `test_code_16600` (`question`, `input1`, `input2`, `input3`, `output1`, `output2`, `output3`, `id`) VALUES
('l;mck;smkvsklfv', 'klnklfvnkl', 'klnfklvnln', 'njlfljlk', 'klnlfkvnkl', 'jfjkvjk', 'lkbn', 1),
('ksf;ksmmkfksf\r\n'';fkldsg\r\ndsglds\r\ng', 'lnfvkl\r\nsdg;dfg\r\nsdg', 'ldflksdng\r\nsglsdg', 'ldngsdg\r\nsdgsdg\r\ns', 'ljdfnbds\r\ngb;sdg\r\nsdf\r\ngd', 'elng\r\nsdg;sdg\r\nsdf', 'lgbd\r\nsgsdg\r\ns', 2);

-- --------------------------------------------------------

--
-- Table structure for table `test_code_62253`
--

CREATE TABLE IF NOT EXISTS `test_code_62253` (
  `question` text NOT NULL,
  `input1` text NOT NULL,
  `input2` text NOT NULL,
  `input3` text NOT NULL,
  `output1` text NOT NULL,
  `output2` text NOT NULL,
  `output3` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_code_62253`
--

INSERT INTO `test_code_62253` (`question`, `input1`, `input2`, `input3`, `output1`, `output2`, `output3`, `id`) VALUES
('I\r\nilvv\r\nsvsv\r\nvf', 'lnifvrv\r\nervergver', 'jrnvjler\r\nervjkenrjl', 'jlrelngvle\r\nerjglerg', 'lfnvker\r\nververn', 'vlenve\r\nrgejr', 'eglenlkrg\r\nwrgwwegw', 1),
('dfnks;m\r\nsadfas\r\nfsadf', '8943\r\nfawfa', 'er\r\ngvsd\r\ns', 'slfknk\r\nargelrg', 'r\r\ngsdv\r\n', 'f\r\ngvsdvs', 'ERGER\r\nER', 2),
('LNKLNSKFVS\r\nDLNDSF', 'LKNRLGVD\r\nSLNDF', 'LNDGLKS\r\nSDGKSDLKF', 'LNDFGLSNDLG\r\nSGKSDBGSD', 'LNLDB\r\nDSFKB', 'LDNGBLSD\r\nSDKGBS', 'LFNFLNKSDF\r\nGSDKGNSD', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE IF NOT EXISTS `test_result` (
  `test_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `score` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `faculty_login`
--
ALTER TABLE `faculty_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `student_group`
--
ALTER TABLE `student_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `test_code_16600`
--
ALTER TABLE `test_code_16600`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_code_62253`
--
ALTER TABLE `test_code_62253`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groupID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_group`
--
ALTER TABLE `student_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `test_code_16600`
--
ALTER TABLE `test_code_16600`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `test_code_62253`
--
ALTER TABLE `test_code_62253`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_result`
--
ALTER TABLE `test_result`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
