-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2022 at 08:06 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseCode` varchar(50) NOT NULL,
  `courseTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseCode`, `courseTitle`) VALUES
('COSC001', 'Introduction to computer 001'),
('COSC002', 'Introduction to computer 002'),
('COSC003', 'Introduction to computer 003'),
('COSC004', 'Introduction to computer 004'),
('COSC005', 'Introduction to computer 005'),
('COSC006', 'Introduction to computer 006'),
('COSC007', 'Introduction to computer 007'),
('COSC008', 'Introduction to computer 008'),
('COSC009', 'Introduction to computer 009');

-- --------------------------------------------------------

--
-- Table structure for table `course_reg`
--

CREATE TABLE `course_reg` (
  `id` int(5) NOT NULL,
  `reg_num` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_title` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_reg`
--

INSERT INTO `course_reg` (`id`, `reg_num`, `name`, `course_code`, `course_title`) VALUES
(6246, 'U15CS5001', '', 'COSC001', ''),
(6247, 'U15CS5002', '', 'COSC001', ''),
(6248, 'U15CS5003', '', 'COSC001', ''),
(6249, 'U15CS5004', '', 'COSC002', ''),
(6250, 'U15CS5005', '', 'COSC001', ''),
(6251, 'U15CS5006', '', 'COSC002', ''),
(6252, 'U15CS5007', '', 'COSC001', ''),
(6253, 'U15CS5008', '', 'COSC001', ''),
(6254, 'U15CS5009', '', 'COSC002', ''),
(6255, 'U15CS5010', '', 'COSC001', ''),
(6256, 'U15CS5011', '', 'COSC001', ''),
(6257, 'U15CS5012', '', 'COSC001', ''),
(6258, 'U15CS5013', '', 'COSC002', ''),
(6259, 'U15CS5014', '', 'COSC001', ''),
(6260, 'U15CS5015', '', 'COSC001', ''),
(6261, 'U15CS5016', '', 'COSC002', ''),
(6262, 'U15CS5017', '', 'COSC002', ''),
(6263, 'U15CS5018', '', 'COSC001', ''),
(6264, 'U15CS5019', '', 'COSC001', ''),
(6265, 'U15CS5020', '', 'COSC002', ''),
(6266, 'U15CS5021', '', 'COSC001', ''),
(6267, 'U15CS5022', '', 'COSC002', ''),
(6268, 'U15CS5023', '', 'COSC002', ''),
(6269, 'U15CS5024', '', 'COSC001', ''),
(6270, 'U15CS5025', '', 'COSC002', ''),
(6271, 'U15CS5026', '', 'COSC002', ''),
(6272, 'U15CS5027', '', 'COSC001', ''),
(6273, 'U15CS5028', '', 'COSC001', ''),
(6274, 'U15CS5029', '', 'COSC001', ''),
(6275, 'U15CS5030', '', 'COSC001', ''),
(6276, 'U15CS5031', '', 'COSC001', ''),
(6277, 'U15CS5032', '', 'COSC001', ''),
(6278, 'U15CS5033', '', 'COSC001', ''),
(6279, 'U15CS5034', '', 'COSC001', ''),
(6280, 'U15CS5035', '', 'COSC001', ''),
(6281, 'U15CS5036', '', 'COSC001', ''),
(6282, 'U15CS5037', '', 'COSC001', ''),
(6283, 'U15CS5038', '', 'COSC001', ''),
(6284, 'U15CS5039', '', 'COSC001', ''),
(6285, 'U15CS5040', '', 'COSC001', ''),
(6286, 'U15CS5041', '', 'COSC001', ''),
(6287, 'U15CS5042', '', 'COSC001', ''),
(6288, 'U15CS5043', '', 'COSC001', ''),
(6289, 'U15CS5044', '', 'COSC001', ''),
(6290, 'U15CS5045', '', 'COSC001', ''),
(6291, 'U15CS5046', '', 'COSC001', ''),
(6292, 'U15CS5047', '', 'COSC001', ''),
(6293, 'U15CS5048', '', 'COSC001', ''),
(6294, 'U15CS5049', '', 'COSC001', '');

-- --------------------------------------------------------

--
-- Table structure for table `odfel_hall_1`
--

CREATE TABLE `odfel_hall_1` (
  `id` int(5) UNSIGNED NOT NULL,
  `seat_number` int(10) DEFAULT NULL,
  `reg_num` varchar(20) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odfel_hall_1`
--

INSERT INTO `odfel_hall_1` (`id`, `seat_number`, `reg_num`, `course_code`) VALUES
(1, 1, 'U15CS5026', 'COSC002'),
(2, 2, NULL, NULL),
(3, 3, 'U15CS5033', 'COSC001'),
(4, 4, 'U15CS5016', 'COSC002'),
(5, 5, 'U15CS5017', 'COSC002'),
(6, 6, 'U15CS5022', 'COSC002'),
(7, 7, 'U15CS5044', 'COSC001'),
(8, 8, 'U15CS5036', 'COSC001'),
(9, 9, 'U15CS5009', 'COSC002'),
(10, 10, 'U15CS5045', 'COSC001'),
(11, 11, 'U15CS5004', 'COSC002'),
(12, 12, 'U15CS5018', 'COSC001'),
(13, 13, 'U15CS5006', 'COSC002'),
(14, 14, 'U15CS5048', 'COSC001'),
(15, 15, 'U15CS5041', 'COSC001'),
(16, 16, 'U15CS5042', 'COSC001'),
(17, 17, 'U15CS5047', 'COSC001'),
(18, 18, 'U15CS5031', 'COSC001'),
(19, 19, 'U15CS5038', 'COSC001'),
(20, 20, 'U15CS5037', 'COSC001'),
(21, 21, 'U15CS5040', 'COSC001'),
(22, 22, 'U15CS5032', 'COSC001'),
(23, 23, 'U15CS5039', 'COSC001'),
(24, 24, 'U15CS5030', 'COSC001'),
(25, 25, 'U15CS5023', 'COSC002'),
(26, 26, 'U15CS5046', 'COSC001'),
(27, 27, 'U15CS5034', 'COSC001'),
(28, 28, 'U15CS5035', 'COSC001'),
(29, 29, 'U15CS5020', 'COSC002'),
(30, 30, 'U15CS5013', 'COSC002');

-- --------------------------------------------------------

--
-- Table structure for table `odfel_hall_2`
--

CREATE TABLE `odfel_hall_2` (
  `id` int(5) UNSIGNED NOT NULL,
  `seat_number` int(10) DEFAULT NULL,
  `reg_num` varchar(20) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odfel_hall_2`
--

INSERT INTO `odfel_hall_2` (`id`, `seat_number`, `reg_num`, `course_code`) VALUES
(1, 1, 'U15CS5049', 'COSC001'),
(2, 2, 'U15CS5020', 'COSC001'),
(3, 3, 'U15CS5008', 'COSC001'),
(4, 4, NULL, NULL),
(5, 5, 'U15CS5029', 'COSC001'),
(6, 6, 'U15CS5022', 'COSC001'),
(7, 7, 'U15CS5005', 'COSC001'),
(8, 8, 'U15CS5019', 'COSC001'),
(9, 9, 'U15CS5025', 'COSC001'),
(10, 10, 'U15CS5006', 'COSC001'),
(11, 11, 'U15CS5015', 'COSC001'),
(12, 12, 'U15CS5028', 'COSC001'),
(13, 13, 'U15CS5003', 'COSC001'),
(14, 14, 'U15CS5001', 'COSC001'),
(15, 15, 'U15CS5007', 'COSC001'),
(16, 16, 'U15CS5017', 'COSC001'),
(17, 17, 'U15CS5004', 'COSC001'),
(18, 18, 'U15CS5023', 'COSC001'),
(19, 19, 'U15CS5014', 'COSC001'),
(20, 20, 'U15CS5021', 'COSC001'),
(21, 21, 'U15CS5011', 'COSC001'),
(22, 22, 'U15CS5002', 'COSC001'),
(23, 23, 'U15CS5013', 'COSC001'),
(24, 24, 'U15CS5009', 'COSC001'),
(25, 25, 'U15CS5016', 'COSC001'),
(26, 26, 'U15CS5024', 'COSC001'),
(27, 27, 'U15CS5010', 'COSC001'),
(28, 28, 'U15CS5012', 'COSC001'),
(29, 29, 'U15CS5027', 'COSC001'),
(30, 30, 'U15CS5026', 'COSC001');

-- --------------------------------------------------------

--
-- Table structure for table `seat_number`
--

CREATE TABLE `seat_number` (
  `sn` int(10) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `seat_venue` varchar(50) NOT NULL,
  `exam_date` varchar(30) NOT NULL,
  `exam_time` varchar(10) NOT NULL,
  `department` varchar(50) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sofware_lab`
--

CREATE TABLE `sofware_lab` (
  `id` int(5) UNSIGNED NOT NULL,
  `seat_number` int(10) DEFAULT NULL,
  `reg_num` varchar(20) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sofware_lab`
--

INSERT INTO `sofware_lab` (`id`, `seat_number`, `reg_num`, `course_code`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, 'U15CS5009', 'COSC002'),
(8, 8, NULL, NULL),
(9, 9, 'U15CS5002', 'COSC001'),
(10, 10, 'U15CS5016', 'COSC002'),
(11, 11, NULL, NULL),
(12, 12, NULL, NULL),
(13, 13, NULL, NULL),
(14, 14, NULL, NULL),
(15, 15, NULL, NULL),
(16, 16, NULL, NULL),
(17, 17, NULL, NULL),
(18, 18, 'U15CS5004', 'COSC002'),
(19, 19, NULL, NULL),
(20, 20, 'U15CS5027', 'COSC001'),
(21, 21, NULL, NULL),
(22, 22, NULL, NULL),
(23, 23, NULL, NULL),
(24, 24, NULL, NULL),
(25, 25, 'U15CS5015', 'COSC001'),
(26, 26, 'U15CS5007', 'COSC001'),
(27, 27, NULL, NULL),
(28, 28, 'U15CS5029', 'COSC001'),
(29, 29, 'U15CS5046', 'COSC001'),
(30, 30, NULL, NULL),
(31, 31, 'U15CS5018', 'COSC001'),
(32, 32, NULL, NULL),
(33, 33, NULL, NULL),
(34, 34, 'U15CS5006', 'COSC002'),
(35, 35, NULL, NULL),
(36, 36, 'U15CS5039', 'COSC001'),
(37, 37, 'U15CS5028', 'COSC001'),
(38, 38, 'U15CS5010', 'COSC001'),
(39, 39, NULL, NULL),
(40, 40, NULL, NULL),
(41, 41, 'U15CS5049', 'COSC001'),
(42, 42, 'U15CS5035', 'COSC001'),
(43, 43, 'U15CS5032', 'COSC001'),
(44, 44, 'U15CS5019', 'COSC001'),
(45, 45, 'U15CS5023', 'COSC002'),
(46, 46, NULL, NULL),
(47, 47, NULL, NULL),
(48, 48, NULL, NULL),
(49, 49, NULL, NULL),
(50, 50, 'U15CS5044', 'COSC001'),
(51, 51, 'U15CS5047', 'COSC001'),
(52, 52, 'U15CS5033', 'COSC001'),
(53, 53, NULL, NULL),
(54, 54, 'U15CS5038', 'COSC001'),
(55, 55, 'U15CS5020', 'COSC002'),
(56, 56, 'U15CS5037', 'COSC001'),
(57, 57, NULL, NULL),
(58, 58, 'U15CS5031', 'COSC001'),
(59, 59, NULL, NULL),
(60, 60, NULL, NULL),
(61, 61, 'U15CS5036', 'COSC001'),
(62, 62, NULL, NULL),
(63, 63, NULL, NULL),
(64, 64, NULL, NULL),
(65, 65, 'U15CS5040', 'COSC001'),
(66, 66, 'U15CS5025', 'COSC002'),
(67, 67, NULL, NULL),
(68, 68, NULL, NULL),
(69, 69, NULL, NULL),
(70, 70, NULL, NULL),
(71, 71, NULL, NULL),
(72, 72, 'U15CS5034', 'COSC001'),
(73, 73, NULL, NULL),
(74, 74, 'U15CS5001', 'COSC001'),
(75, 75, 'U15CS5021', 'COSC001'),
(76, 76, 'U15CS5013', 'COSC002'),
(77, 77, 'U15CS5017', 'COSC002'),
(78, 78, 'U15CS5005', 'COSC001'),
(79, 79, 'U15CS5012', 'COSC001'),
(80, 80, 'U15CS5030', 'COSC001'),
(81, 81, NULL, NULL),
(82, 82, 'U15CS5024', 'COSC001'),
(83, 83, 'U15CS5043', 'COSC001'),
(84, 84, NULL, NULL),
(85, 85, NULL, NULL),
(86, 86, 'U15CS5042', 'COSC001'),
(87, 87, 'U15CS5003', 'COSC001'),
(88, 88, NULL, NULL),
(89, 89, 'U15CS5022', 'COSC002'),
(90, 90, NULL, NULL),
(91, 91, NULL, NULL),
(92, 92, NULL, NULL),
(93, 93, 'U15CS5048', 'COSC001'),
(94, 94, NULL, NULL),
(95, 95, 'U15CS5045', 'COSC001'),
(96, 96, 'U15CS5026', 'COSC002'),
(97, 97, 'U15CS5014', 'COSC001'),
(98, 98, 'U15CS5008', 'COSC001'),
(99, 99, 'U15CS5041', 'COSC001'),
(100, 100, 'U15CS5011', 'COSC001');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) NOT NULL,
  `venueName` varchar(50) DEFAULT NULL,
  `capacity` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `venueName`, `capacity`) VALUES
(13, 'Odfel hall 2', 30),
(14, 'Odfel hall 1', 30),
(15, 'Sofware Lab', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseCode`),
  ADD UNIQUE KEY `courseTitle` (`courseTitle`);

--
-- Indexes for table `course_reg`
--
ALTER TABLE `course_reg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`reg_num`,`course_code`),
  ADD KEY `fk_courseCode` (`course_code`);

--
-- Indexes for table `odfel_hall_1`
--
ALTER TABLE `odfel_hall_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `odfel_hall_2`
--
ALTER TABLE `odfel_hall_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat_number`
--
ALTER TABLE `seat_number`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `sofware_lab`
--
ALTER TABLE `sofware_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `venueName` (`venueName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_reg`
--
ALTER TABLE `course_reg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6295;

--
-- AUTO_INCREMENT for table `odfel_hall_1`
--
ALTER TABLE `odfel_hall_1`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `odfel_hall_2`
--
ALTER TABLE `odfel_hall_2`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `seat_number`
--
ALTER TABLE `seat_number`
  MODIFY `sn` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sofware_lab`
--
ALTER TABLE `sofware_lab`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_reg`
--
ALTER TABLE `course_reg`
  ADD CONSTRAINT `fk_courseCode` FOREIGN KEY (`course_code`) REFERENCES `courses` (`courseCode`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
