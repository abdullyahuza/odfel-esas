-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2022 at 12:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

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
(6295, 'U15CS5001', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6296, 'U15CS5002', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6297, 'U15CS5003', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6298, 'U15CS5004', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6299, 'U15CS5005', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6300, 'U15CS5006', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6301, 'U15CS5007', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6302, 'U15CS5008', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6303, 'U15CS5009', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6304, 'U15CS5010', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6305, 'U15CS5011', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6306, 'U15CS5012', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6307, 'U15CS5013', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6308, 'U15CS5014', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6309, 'U15CS5015', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6310, 'U15CS5016', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6311, 'U15CS5017', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6312, 'U15CS5018', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6313, 'U15CS5019', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6314, 'U15CS5020', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6315, 'U15CS5021', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6316, 'U15CS5022', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6317, 'U15CS5023', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6318, 'U15CS5024', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6319, 'U15CS5025', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6320, 'U15CS5026', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6321, 'U15CS5027', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6322, 'U15CS5028', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6323, 'U15CS5029', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6324, 'U15CS5030', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6325, 'U15CS5031', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6326, 'U15CS5032', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6327, 'U15CS5033', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6328, 'U15CS5034', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6329, 'U15CS5035', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6330, 'U15CS5036', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6331, 'U15CS5037', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6332, 'U15CS5038', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6333, 'U15CS5039', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6334, 'U15CS5040', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6335, 'U15CS5041', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6336, 'U15CS5042', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6337, 'U15CS5043', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6338, 'U15CS5044', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6339, 'U15CS5045', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6340, 'U15CS5046', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6341, 'U15CS5047', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6342, 'U15CS5048', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6343, 'U15CS5049', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6344, 'U15CS5050', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6345, 'U15CS5051', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6346, 'U15CS5052', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6347, 'U15CS5053', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6348, 'U15CS5054', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6349, 'U15CS5055', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6350, 'U15CS5056', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6351, 'U15CS5057', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6352, 'U15CS5058', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6353, 'U15CS5059', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6354, 'U15CS5060', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6355, 'U15CS5061', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6356, 'U15CS5062', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6357, 'U15CS5063', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6358, 'U15CS5064', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6359, 'U15CS5065', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6360, 'U15CS5066', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6361, 'U15CS5067', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6362, 'U15CS5068', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6363, 'U15CS5069', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6364, 'U15CS5070', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6365, 'U15CS5071', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6366, 'U15CS5072', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6367, 'U15CS5073', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6368, 'U15CS5074', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6369, 'U15CS5075', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6370, 'U15CS5076', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6371, 'U15CS5077', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6372, 'U15CS5078', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6373, 'U15CS5079', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6374, 'U15CS5080', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6375, 'U15CS5081', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6376, 'U15CS5082', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6377, 'U15CS5083', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6378, 'U15CS5084', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6379, 'U15CS5085', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6380, 'U15CS5086', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6381, 'U15CS5087', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6382, 'U15CS5088', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6383, 'U15CS5089', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6384, 'U15CS5090', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6385, 'U15CS5091', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6386, 'U15CS5092', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6387, 'U15CS5093', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6388, 'U15CS5094', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6389, 'U15CS5095', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6390, 'U15CS5096', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6391, 'U15CS5097', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6392, 'U15CS5098', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6393, 'U15CS5099', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001'),
(6394, 'U15CS50100', 'Abdull Yahuza', 'COSC001', 'Introduction to computer 001');

-- --------------------------------------------------------

--
-- Table structure for table `odfell_hall_1`
--

CREATE TABLE `odfell_hall_1` (
  `id` int(5) UNSIGNED NOT NULL,
  `seat_number` varchar(20) DEFAULT NULL,
  `reg_num` varchar(20) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `odfell_hall_1`
--

INSERT INTO `odfell_hall_1` (`id`, `seat_number`, `reg_num`, `course_code`) VALUES
(1, 'OH1-1', NULL, NULL),
(2, 'OH1-2', NULL, NULL),
(3, 'OH1-3', NULL, NULL),
(4, 'OH1-4', NULL, NULL),
(5, 'OH1-5', NULL, NULL),
(6, 'OH1-6', NULL, NULL),
(7, 'OH1-7', NULL, NULL),
(8, 'OH1-8', NULL, NULL),
(9, 'OH1-9', NULL, NULL),
(10, 'OH1-10', NULL, NULL),
(11, 'OH1-11', NULL, NULL),
(12, 'OH1-12', NULL, NULL),
(13, 'OH1-13', NULL, NULL),
(14, 'OH1-14', NULL, NULL),
(15, 'OH1-15', NULL, NULL),
(16, 'OH1-16', NULL, NULL),
(17, 'OH1-17', NULL, NULL),
(18, 'OH1-18', NULL, NULL),
(19, 'OH1-19', NULL, NULL),
(20, 'OH1-20', NULL, NULL),
(21, 'OH1-21', NULL, NULL),
(22, 'OH1-22', NULL, NULL),
(23, 'OH1-23', NULL, NULL),
(24, 'OH1-24', NULL, NULL),
(25, 'OH1-25', NULL, NULL),
(26, 'OH1-26', NULL, NULL),
(27, 'OH1-27', NULL, NULL),
(28, 'OH1-28', NULL, NULL),
(29, 'OH1-29', NULL, NULL),
(30, 'OH1-30', NULL, NULL),
(31, 'OH1-31', NULL, NULL),
(32, 'OH1-32', NULL, NULL),
(33, 'OH1-33', NULL, NULL),
(34, 'OH1-34', NULL, NULL),
(35, 'OH1-35', NULL, NULL),
(36, 'OH1-36', NULL, NULL),
(37, 'OH1-37', NULL, NULL),
(38, 'OH1-38', NULL, NULL),
(39, 'OH1-39', NULL, NULL),
(40, 'OH1-40', NULL, NULL),
(41, 'OH1-41', NULL, NULL),
(42, 'OH1-42', NULL, NULL),
(43, 'OH1-43', NULL, NULL),
(44, 'OH1-44', NULL, NULL),
(45, 'OH1-45', NULL, NULL),
(46, 'OH1-46', NULL, NULL),
(47, 'OH1-47', NULL, NULL),
(48, 'OH1-48', NULL, NULL),
(49, 'OH1-49', NULL, NULL),
(50, 'OH1-50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `odfell_hall_2`
--

CREATE TABLE `odfell_hall_2` (
  `id` int(5) UNSIGNED NOT NULL,
  `seat_number` varchar(20) DEFAULT NULL,
  `reg_num` varchar(20) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `odfell_hall_2`
--

INSERT INTO `odfell_hall_2` (`id`, `seat_number`, `reg_num`, `course_code`) VALUES
(1, 'OH2-1', NULL, NULL),
(2, 'OH2-2', NULL, NULL),
(3, 'OH2-3', NULL, NULL),
(4, 'OH2-4', NULL, NULL),
(5, 'OH2-5', NULL, NULL),
(6, 'OH2-6', NULL, NULL),
(7, 'OH2-7', NULL, NULL),
(8, 'OH2-8', NULL, NULL),
(9, 'OH2-9', NULL, NULL),
(10, 'OH2-10', NULL, NULL),
(11, 'OH2-11', NULL, NULL),
(12, 'OH2-12', NULL, NULL),
(13, 'OH2-13', NULL, NULL),
(14, 'OH2-14', NULL, NULL),
(15, 'OH2-15', NULL, NULL),
(16, 'OH2-16', NULL, NULL),
(17, 'OH2-17', NULL, NULL),
(18, 'OH2-18', NULL, NULL),
(19, 'OH2-19', NULL, NULL),
(20, 'OH2-20', NULL, NULL),
(21, 'OH2-21', NULL, NULL),
(22, 'OH2-22', NULL, NULL),
(23, 'OH2-23', NULL, NULL),
(24, 'OH2-24', NULL, NULL),
(25, 'OH2-25', NULL, NULL),
(26, 'OH2-26', NULL, NULL),
(27, 'OH2-27', NULL, NULL),
(28, 'OH2-28', NULL, NULL),
(29, 'OH2-29', NULL, NULL),
(30, 'OH2-30', NULL, NULL),
(31, 'OH2-31', NULL, NULL),
(32, 'OH2-32', NULL, NULL),
(33, 'OH2-33', NULL, NULL),
(34, 'OH2-34', NULL, NULL),
(35, 'OH2-35', NULL, NULL),
(36, 'OH2-36', NULL, NULL),
(37, 'OH2-37', NULL, NULL),
(38, 'OH2-38', NULL, NULL),
(39, 'OH2-39', NULL, NULL),
(40, 'OH2-40', NULL, NULL),
(41, 'OH2-41', NULL, NULL),
(42, 'OH2-42', NULL, NULL),
(43, 'OH2-43', NULL, NULL),
(44, 'OH2-44', NULL, NULL),
(45, 'OH2-45', NULL, NULL),
(46, 'OH2-46', NULL, NULL),
(47, 'OH2-47', NULL, NULL),
(48, 'OH2-48', NULL, NULL),
(49, 'OH2-49', NULL, NULL),
(50, 'OH2-50', NULL, NULL);

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
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) NOT NULL,
  `venueName` varchar(50) DEFAULT NULL,
  `capacity` int(9) DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `venueName`, `capacity`, `code`, `status`) VALUES
(22, 'odfell hall 1', 50, 'OH1', 0),
(24, 'odfell hall 2', 50, 'OH2', 0);

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
-- Indexes for table `odfell_hall_1`
--
ALTER TABLE `odfell_hall_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `odfell_hall_2`
--
ALTER TABLE `odfell_hall_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat_number`
--
ALTER TABLE `seat_number`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `venueName` (`venueName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_reg`
--
ALTER TABLE `course_reg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6395;

--
-- AUTO_INCREMENT for table `odfell_hall_1`
--
ALTER TABLE `odfell_hall_1`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `odfell_hall_2`
--
ALTER TABLE `odfell_hall_2`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `seat_number`
--
ALTER TABLE `seat_number`
  MODIFY `sn` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
