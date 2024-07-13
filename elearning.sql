-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 02:40 PM
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
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assign_id` int(11) NOT NULL,
  `assign_dur` varchar(50) NOT NULL,
  `assign_marks` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `certificate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assign_id`, `assign_dur`, `assign_marks`, `course_id`, `certificate_id`) VALUES
(1, '1week', 45, 101, 11),
(2, '2week', 50, 102, 44),
(3, '3days', 48, 101, 22),
(4, '1week', 39, 103, 55),
(5, '2days', 46, 102, 33),
(6, '2week', 42, 103, 66),
(7, '4weeks', 50, 104, 88),
(8, '3weeks', 50, 105, 109),
(9, '2weeks', 50, 106, 99);

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `certificate_id` int(11) NOT NULL,
  `certificate_name` varchar(50) NOT NULL,
  `certificate_issdate` date NOT NULL,
  `certificate_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`certificate_id`, `certificate_name`, `certificate_issdate`, `certificate_level`) VALUES
(11, 'Data Structures', '2024-02-14', 'Elite+Silver'),
(22, 'Data Structures', '2024-03-20', 'Elite+Gold'),
(33, 'Design And Analysis of Algorithm', '2024-04-24', 'Elite+Silver'),
(44, 'Design And Analysis of Algorithm', '2024-03-20', 'Elite+Gold'),
(55, 'Python Programming', '2024-05-24', 'Elite+Silver'),
(66, 'Python Programming', '2024-06-04', 'Elite+Gold'),
(77, 'C Programming', '2024-01-05', 'Elite+Silver'),
(88, 'C Programming', '2024-02-28', 'Elite+Gold'),
(99, 'Data Base Management System', '2024-08-20', 'Elite+Silver'),
(109, 'Data Base Management System', '2024-03-01', 'Elite+Gold');

-- --------------------------------------------------------

--
-- Table structure for table `completes`
--

CREATE TABLE `completes` (
  `student_id` int(11) NOT NULL,
  `assign_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `completes`
--

INSERT INTO `completes` (`student_id`, `assign_id`) VALUES
(1001, 4),
(1001, 6),
(1001, 7),
(1002, 7),
(1002, 8),
(1003, 2),
(1003, 4),
(1003, 5),
(1003, 6),
(1003, 7),
(1004, 2),
(1004, 4),
(1004, 5),
(1004, 6),
(1004, 8),
(1004, 9),
(1005, 2),
(1005, 4),
(1005, 5),
(1005, 6),
(1006, 9);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `start_date`, `end_date`) VALUES
(101, 'Data Structures', '2024-02-01', '2024-02-29'),
(102, 'Design And Analysis Of Algorithm', '2024-01-01', '2024-03-01'),
(103, 'Python Programming', '2023-10-11', '2024-02-01'),
(104, 'C Programming', '2023-07-11', '2024-02-07'),
(105, 'Data Base Management System', '2023-11-15', '2024-02-29'),
(106, 'Cloud Computing', '2023-09-15', '2024-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `courseslogs`
--

CREATE TABLE `courseslogs` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `start date` date NOT NULL,
  `end date` date NOT NULL,
  `action` varchar(40) NOT NULL,
  `date and time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`student_id`, `course_id`) VALUES
(1001, 103),
(1001, 104),
(1002, 104),
(1002, 105),
(1003, 102),
(1003, 103),
(1003, 104),
(1004, 102),
(1004, 103),
(1004, 105),
(1004, 106),
(1005, 102),
(1005, 103),
(1006, 106);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(50) NOT NULL,
  `faculty_age` int(11) NOT NULL,
  `faculty_exp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `faculty_age`, `faculty_exp`) VALUES
(1, 'Raj', 40, 10),
(3, 'Ram', 31, 8),
(4, 'Sita', 42, 7),
(5, 'chethan', 38, 9),
(6, 'Roopa', 34, 6);

--
-- Triggers `faculty`
--
DELIMITER $$
CREATE TRIGGER `deletefacultylog` BEFORE DELETE ON `faculty` FOR EACH ROW insert into facultylogs values(null,OLD.faculty_id,OLD.faculty_name,old.faculty_age,old.faculty_exp,'Deleted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertfacultylog` AFTER INSERT ON `faculty` FOR EACH ROW insert into facultylogs values(null,NEW.faculty_id,NEW.faculty_name,new.faculty_age,new.faculty_exp,'Inserted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatefacultylog` AFTER UPDATE ON `faculty` FOR EACH ROW insert into facultylogs values(null,NEW.faculty_id,NEW.faculty_name,new.faculty_age,new.faculty_exp,'Updated',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `facultylogs`
--

CREATE TABLE `facultylogs` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(40) NOT NULL,
  `faculty_age` int(11) NOT NULL,
  `faculty_exp` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `dateandtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultylogs`
--

INSERT INTO `facultylogs` (`id`, `faculty_id`, `faculty_name`, `faculty_age`, `faculty_exp`, `action`, `dateandtime`) VALUES
(5, 1, 'Raj', 41, 10, 'Updated', '2024-02-17 22:38:43'),
(6, 1, 'Raj', 40, 10, 'Updated', '2024-02-17 22:38:49'),
(7, 1256, 'rgs', 45, 25, 'Inserted', '2024-02-18 00:47:04'),
(8, 1256, 'rgs', 45, 25, 'Deleted', '2024-02-18 00:49:24'),
(9, 25433245, 'fdbgbh', 50, 25, 'Inserted', '2024-02-18 00:50:25'),
(10, 423, 'hgbnfd', 15, 5, 'Inserted', '2024-02-18 00:51:29'),
(11, 423, 'hgbnfd', 15, 5, 'Deleted', '2024-02-18 00:53:34'),
(12, 25433245, 'fdbgbh', 50, 25, 'Deleted', '2024-02-18 00:53:36'),
(13, 3425, 'dfhyjn', 45, 9, 'Inserted', '2024-02-18 00:53:53'),
(14, 3425, 'dfhyjn', 45, 9, 'Deleted', '2024-02-18 00:54:13'),
(15, 3, 'Ram', 30, 8, 'Updated', '2024-02-18 02:31:27'),
(16, 3, 'Ram', 30, 8, 'Updated', '2024-02-18 02:34:48'),
(17, 3, 'Ram', 30, 8, 'Updated', '2024-02-18 02:37:07'),
(18, 3, 'Ram', 30, 8, 'Updated', '2024-02-18 02:38:01'),
(19, 3, 'Ram', 31, 8, 'Updated', '2024-02-18 02:42:58'),
(20, 3, 'Ram', 31, 8, 'Updated', '2024-02-18 02:51:24'),
(21, 3, 'Ram', 31, 8, 'Updated', '2024-02-18 02:56:01'),
(22, 2, 'Kumar', 28, 6, 'Updated', '2024-02-18 02:56:28'),
(23, 2, 'Kumar', 28, 6, 'Updated', '2024-02-18 02:56:58'),
(24, 2, 'Kumar', 28, 6, 'Updated', '2024-02-18 02:59:23'),
(25, 2, 'Kumar', 28, 6, 'Updated', '2024-02-18 02:59:48'),
(26, 1, 'Raj', 40, 10, 'Updated', '2024-02-18 12:08:29'),
(27, 3, 'Ram', 31, 8, 'Updated', '2024-02-18 12:09:23'),
(28, 1, 'Raj', 40, 10, 'Deleted', '2024-02-18 13:06:53'),
(29, 1, 'Raj', 40, 10, 'Inserted', '2024-02-18 13:07:21'),
(30, 7865, 'fgtj', 45, 75, 'Inserted', '2024-02-18 14:22:24'),
(31, 2354, 'sagt', 23, 10, 'Inserted', '2024-02-18 15:15:24'),
(32, 29, '', 0, 0, 'Inserted', '2024-02-18 16:22:01'),
(33, 30, '', 0, 0, 'Inserted', '2024-02-18 16:22:27'),
(34, 7865, 'fgtj', 45, 75, 'Deleted', '2024-02-18 16:35:39'),
(35, 2354, 'sagt', 23, 10, 'Deleted', '2024-02-18 19:42:52'),
(36, 29, '', 0, 0, 'Deleted', '2024-02-18 19:43:49'),
(37, 30, '', 0, 0, 'Deleted', '2024-02-18 19:44:06'),
(38, 1, 'Raj', 40, 10, 'Updated', '2024-02-18 23:26:57'),
(39, 1, 'Raj', 40, 10, 'Updated', '2024-02-18 23:27:12'),
(40, 234, 'dfh', 65, 34, 'Inserted', '2024-02-18 23:28:00'),
(41, 234, 'dfh', 65, 34, 'Deleted', '2024-02-18 23:28:40'),
(42, 1, 'Raj1', 40, 10, 'Updated', '2024-02-18 23:59:36'),
(43, 1, 'Raj', 40, 10, 'Updated', '2024-02-19 00:00:44'),
(44, 1, 'Raj52', 40, 10, 'Updated', '2024-02-19 00:00:54'),
(45, 1, 'Raj', 40, 10, 'Updated', '2024-02-19 00:01:05'),
(46, 7, 'chethan', 35, 10, 'Inserted', '2024-02-19 12:45:27'),
(47, 2, 'Kumar', 28, 6, 'Deleted', '2024-02-19 13:00:05'),
(48, 5, 'chethan', 38, 9, 'Updated', '2024-02-19 14:33:17'),
(49, 1, 'Raj', 40, 10, 'Updated', '2024-02-19 15:31:43'),
(50, 7, 'chethan', 35, 10, 'Deleted', '2024-02-19 15:36:10'),
(51, 1, 'Raj', 40, 10, 'Updated', '2024-02-19 21:25:07'),
(52, 1, 'Raj', 40, 10, 'Updated', '2024-02-20 10:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`faculty_id`, `course_id`) VALUES
(1, 101),
(1, 103),
(3, 103),
(4, 102),
(4, 103),
(5, 105),
(6, 106);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_grade` varchar(50) NOT NULL,
  `quiz_date` date NOT NULL,
  `quiz_type` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_grade`, `quiz_date`, `quiz_type`, `course_id`) VALUES
(1, 'A+', '2024-02-23', 'MCQ', 101),
(2, 'B', '2024-01-15', 'Programming', 102),
(3, 'C+', '2024-03-15', 'Short Answers', 101),
(4, 'A', '2024-07-17', 'Open Book Exam', 103),
(5, 'B', '2024-08-05', 'Aptitude', 102),
(6, 'B', '2024-09-15', 'MCQ', 105);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `fname`, `lname`, `student_age`, `student_gender`) VALUES
(1001, 'Virat', 'kohli', 24, 'M'),
(1002, 'prajna', 'gowda', 20, 'F'),
(1003, 'Disha', 'Gowda', 20, 'F'),
(1004, 'Sharadhi', 'Gowda', 23, 'F'),
(1005, 'Rajath', 'Kumar', 19, 'M'),
(1006, 'Karthik', 'Prasad', 24, 'M');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `deletestudentlog` BEFORE DELETE ON `student` FOR EACH ROW insert into studentlogs values(null,OLD.student_id,OLD.fname,old.lname,old.student_age,old.student_gender,'Deleted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertstudentlog` AFTER INSERT ON `student` FOR EACH ROW insert into studentlogs values(null,NEW.student_id,NEW.fname,new.lname,new.student_age,new.student_gender,'Inserted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatestudentlog` AFTER UPDATE ON `student` FOR EACH ROW insert into studentlogs values(null,NEW.student_id,NEW.fname,new.lname,new.student_age,new.student_gender,'Updated',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `studentlogs`
--

CREATE TABLE `studentlogs` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_gender` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `date and time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentlogs`
--

INSERT INTO `studentlogs` (`id`, `student_id`, `first_name`, `last_name`, `student_age`, `student_gender`, `action`, `date and time`) VALUES
(4, 1001, 'Virat', 'Kohli', 24, 'M', 'Updated', '2024-02-17 22:27:10'),
(5, 34646, 'ergf', 'erg', 20, 'm', 'Inserted', '2024-02-18 01:04:13'),
(6, 34646, 'ergf', 'erg', 20, 'm', 'Deleted', '2024-02-18 01:04:47'),
(7, 52752, 'ergf', 'erg', 15, 'm', 'Inserted', '2024-02-18 01:15:08'),
(8, 52752, 'ergf', 'erg', 15, 'm', 'Deleted', '2024-02-18 01:16:46'),
(9, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:44:29'),
(10, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:44:51'),
(11, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:45:19'),
(12, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:50:22'),
(13, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:51:09'),
(14, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:51:33'),
(15, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:52:27'),
(16, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:55:57'),
(17, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:56:10'),
(18, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:56:41'),
(19, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:56:57'),
(20, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:57:55'),
(21, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 10:58:20'),
(22, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:10:36'),
(23, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:13:02'),
(24, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:13:31'),
(25, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:15:10'),
(26, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:15:58'),
(27, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:16:10'),
(28, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:16:23'),
(29, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:16:40'),
(30, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:16:53'),
(31, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:17:08'),
(32, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:17:29'),
(33, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:17:51'),
(34, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:18:11'),
(35, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:19:33'),
(36, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:23:10'),
(37, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:25:01'),
(38, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:32:09'),
(39, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:40:04'),
(40, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:40:43'),
(41, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:41:53'),
(42, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-18 11:42:07'),
(43, 3214, 'ergf', 'erg', 23, 'm', 'Inserted', '2024-02-18 15:15:53'),
(44, 143, 'ergf', 'erg', 34, 'm', 'Inserted', '2024-02-18 15:20:34'),
(45, 232, 'ergf', 'erg', 34, 'm', 'Inserted', '2024-02-18 15:29:06'),
(46, 56, 'ergf', 'erg', 3, 'm', 'Inserted', '2024-02-18 15:31:20'),
(47, 76, 'ergf', 'erg', 34, 'm', 'Inserted', '2024-02-18 15:34:44'),
(48, 98, 'ergf', 'erg', 65, 'm', 'Inserted', '2024-02-18 15:38:02'),
(49, 80, 'ergf', 'erg', 56, 'm', 'Inserted', '2024-02-18 15:40:11'),
(50, 561, 'ergf', 'erg', 4, 'm', 'Inserted', '2024-02-18 15:59:50'),
(51, 452, 'ergf', 'erg', 3, 'M', 'Inserted', '2024-02-18 16:02:25'),
(52, 44, 'ergf', 'erg', 4, 'm', 'Inserted', '2024-02-18 16:05:38'),
(53, 34, 'grf', 'erg', 5, 'm', 'Inserted', '2024-02-18 16:06:06'),
(54, 55, 'ergf', 'ertgh', 4, 'm', 'Inserted', '2024-02-18 16:07:24'),
(55, 58, 'ergf', 'erg', 6, 'm', 'Inserted', '2024-02-18 16:08:45'),
(56, 123, 'ergf', 'erg', 7, 'm', 'Inserted', '2024-02-18 16:10:59'),
(57, 66, 'ergf', 'erg', 7, 'm', 'Inserted', '2024-02-18 16:12:03'),
(58, 67, 'ergf', 'erg', 7, 'm', 'Inserted', '2024-02-18 16:12:49'),
(59, 69, 'ergf', 'erg', 7, 'm', 'Inserted', '2024-02-18 16:13:14'),
(60, 1001, 'Virat', 'Kohli', 24, 'M', 'Updated', '2024-02-18 16:31:11'),
(61, 34, 'grf', 'erg', 5, 'm', 'Deleted', '2024-02-18 19:20:12'),
(62, 44, 'ergf', 'erg', 4, 'm', 'Deleted', '2024-02-18 19:24:39'),
(63, 55, 'ergf', 'ertgh', 4, 'm', 'Deleted', '2024-02-18 19:31:04'),
(64, 56, 'ergf', 'erg', 3, 'm', 'Deleted', '2024-02-18 19:53:03'),
(65, 500, 'ergf', 'erg', 78, 'm', 'Inserted', '2024-02-18 23:09:59'),
(66, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:12:03'),
(67, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:13:52'),
(68, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:17:27'),
(69, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:19:27'),
(70, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:19:52'),
(71, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:20:29'),
(72, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:22:44'),
(73, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:24:28'),
(74, 500, 'ergf', 'erg', 78, 'm', 'Updated', '2024-02-18 23:25:22'),
(75, 1001, 'Virat', 'Kohli', 24, 'M', 'Updated', '2024-02-18 23:48:35'),
(76, 1001, 'Virat', 'Kohli', 24, 'M', 'Updated', '2024-02-18 23:48:55'),
(77, 1001, 'Virat', 'Kohli', 24, 'M', 'Updated', '2024-02-18 23:50:33'),
(78, 1001, 'Virat', 'Kohli', 24, 'M', 'Updated', '2024-02-18 23:56:54'),
(79, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-18 23:58:21'),
(80, 78, 'nithin', 'bm', 20, 'm', 'Inserted', '2024-02-19 12:28:07'),
(81, 78, 'nithin', 'bm', 20, 'm', 'Deleted', '2024-02-19 12:28:53'),
(82, 58, 'ergf', 'erg', 6, 'm', 'Deleted', '2024-02-19 13:04:54'),
(83, 66, 'ergf', 'erg', 7, 'm', 'Deleted', '2024-02-19 13:04:56'),
(84, 67, 'ergf', 'erg', 7, 'm', 'Deleted', '2024-02-19 13:04:58'),
(85, 69, 'ergf', 'erg', 7, 'm', 'Deleted', '2024-02-19 13:05:00'),
(86, 76, 'ergf', 'erg', 34, 'm', 'Deleted', '2024-02-19 13:05:02'),
(87, 80, 'ergf', 'erg', 56, 'm', 'Deleted', '2024-02-19 13:05:04'),
(88, 98, 'ergf', 'erg', 65, 'm', 'Deleted', '2024-02-19 13:05:06'),
(89, 123, 'ergf', 'erg', 7, 'm', 'Deleted', '2024-02-19 13:05:08'),
(90, 143, 'ergf', 'erg', 34, 'm', 'Deleted', '2024-02-19 13:05:10'),
(91, 232, 'ergf', 'erg', 34, 'm', 'Deleted', '2024-02-19 13:05:26'),
(92, 452, 'ergf', 'erg', 3, 'M', 'Deleted', '2024-02-19 13:05:26'),
(93, 500, 'ergf', 'erg', 78, 'm', 'Deleted', '2024-02-19 13:05:26'),
(94, 561, 'ergf', 'erg', 4, 'm', 'Deleted', '2024-02-19 13:05:26'),
(95, 3214, 'ergf', 'erg', 23, 'm', 'Deleted', '2024-02-19 13:05:26'),
(96, 1002, 'prajna', 'gowda', 20, 'F', 'Updated', '2024-02-19 13:09:49'),
(97, 1002, 'prajna', 'gowda', 20, 'F', 'Updated', '2024-02-19 13:10:18'),
(98, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 13:18:24'),
(99, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 13:18:57'),
(100, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 13:20:40'),
(101, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 13:21:13'),
(102, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 13:22:21'),
(103, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 14:10:51'),
(104, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 17:28:13'),
(105, 1002, 'prajna', 'gowda', 20, 'F', 'Updated', '2024-02-19 17:28:35'),
(106, 1002, 'prajna', 'gowda', 20, 'F', 'Updated', '2024-02-19 17:30:02'),
(107, 1002, 'prajna', 'gowda', 20, 'F', 'Updated', '2024-02-19 20:06:42'),
(108, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 20:06:57'),
(109, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 21:24:37'),
(110, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 21:24:54'),
(111, 1001, 'Virat', 'kohli', 24, 'M', 'Updated', '2024-02-19 21:50:55'),
(112, 1002, 'prajna', 'gowda', 20, 'F', 'Updated', '2024-02-19 21:53:48'),
(113, 1003, 'Disha', 'Gowda', 20, 'F', 'Updated', '2024-02-19 21:53:57'),
(114, 1004, 'Sharadhi', 'Gowda', 23, 'F', 'Updated', '2024-02-19 21:54:08'),
(115, 1005, 'Rajath', 'Kumar', 19, 'M', 'Updated', '2024-02-19 21:54:18'),
(116, 1006, 'Karthik', 'Prasad', 24, 'M', 'Updated', '2024-02-19 21:54:27'),
(117, 465, 'gdf', 'fgd', 45, 'm', 'Inserted', '2024-02-20 09:10:20'),
(118, 465, 'gdf', 'fgd', 45, 'm', 'Deleted', '2024-02-20 09:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_student_phno`
--

CREATE TABLE `student_student_phno` (
  `student_phno` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_student_phno`
--

INSERT INTO `student_student_phno` (`student_phno`, `student_id`) VALUES
('6360073047', 1002),
('6363550200', 1001),
('7204029722', 1005),
('7894561231', 1003),
('8867230948', 1004),
('99022565656', 1006);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `fk1` (`certificate_id`),
  ADD KEY `fk2` (`course_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`certificate_id`);

--
-- Indexes for table `completes`
--
ALTER TABLE `completes`
  ADD PRIMARY KEY (`student_id`,`assign_id`),
  ADD KEY `fk3` (`assign_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseslogs`
--
ALTER TABLE `courseslogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`student_id`,`course_id`),
  ADD KEY `fk5` (`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `facultylogs`
--
ALTER TABLE `facultylogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`faculty_id`,`course_id`),
  ADD KEY `fk7` (`course_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `fk9` (`course_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `studentlogs`
--
ALTER TABLE `studentlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_student_phno`
--
ALTER TABLE `student_student_phno`
  ADD PRIMARY KEY (`student_phno`,`student_id`),
  ADD KEY `fk10` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courseslogs`
--
ALTER TABLE `courseslogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facultylogs`
--
ALTER TABLE `facultylogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `studentlogs`
--
ALTER TABLE `studentlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`certificate_id`) REFERENCES `certificate` (`certificate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `completes`
--
ALTER TABLE `completes`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`assign_id`) REFERENCES `assignment` (`assign_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk4` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk6` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk8` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `fk9` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_student_phno`
--
ALTER TABLE `student_student_phno`
  ADD CONSTRAINT `fk10` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
