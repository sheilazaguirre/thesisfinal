-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 05:29 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announceID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `announceTitle` varchar(50) NOT NULL,
  `announceFile` varchar(150) NOT NULL,
  `announceDetail` varchar(150) NOT NULL,
  `announceDate` varchar(50) NOT NULL,
  `dateUploaded` datetime NOT NULL,
  `dateModified` datetime NOT NULL,
  `dateExpiry` datetime NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announceID`, `userID`, `announceTitle`, `announceFile`, `announceDetail`, `announceDate`, `dateUploaded`, `dateModified`, `dateExpiry`, `status`) VALUES
(1, 1, 'try1', '', 'try', '2018-03-10', '2018-03-09 00:26:45', '2018-03-09 13:35:02', '2018-09-09 00:26:45', 'Archived'),
(2, 5, 'try', 'lesson.JPG', 'try audit', '2018-03-16', '2018-03-16 02:46:50', '0000-00-00 00:00:00', '2018-09-16 02:46:50', 'Active'),
(3, 6, 'adf', 'no.JPG', 'adsf', '2018-03-16', '2018-03-16 03:21:59', '0000-00-00 00:00:00', '2018-09-16 03:21:59', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `apid` int(11) NOT NULL,
  `apfn` varchar(50) NOT NULL,
  `apln` varchar(50) NOT NULL,
  `apmn` varchar(50) NOT NULL,
  `courseID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthdate` date NOT NULL,
  `age` tinyint(4) NOT NULL,
  `birthplace` varchar(150) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `civstat` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `addcity` varchar(150) NOT NULL,
  `addprov` varchar(150) DEFAULT NULL,
  `elemschool` varchar(50) NOT NULL,
  `secschool` varchar(50) NOT NULL,
  `tertschool` varchar(50) NOT NULL,
  `reasonleave` varchar(150) NOT NULL,
  `guardianame` varchar(50) DEFAULT NULL,
  `relationship` varchar(20) DEFAULT NULL,
  `fathername` varchar(50) NOT NULL,
  `fatherocc` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `motherocc` varchar(50) NOT NULL,
  `datesubmitted` datetime NOT NULL,
  `datemodified` datetime DEFAULT NULL,
  `studentstat` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`apid`, `apfn`, `apln`, `apmn`, `courseID`, `email`, `mobile`, `birthdate`, `age`, `birthplace`, `gender`, `civstat`, `nationality`, `religion`, `addcity`, `addprov`, `elemschool`, `secschool`, `tertschool`, `reasonleave`, `guardianame`, `relationship`, `fathername`, `fatherocc`, `mothername`, `motherocc`, `datesubmitted`, `datemodified`, `studentstat`, `status`) VALUES
(11, 'First', 'Last', 'Middle', 0, 'beper.ong@benilde.edu.ph', '(0926)047-2440', '2016-12-30', 22, 'Mamburao Occidental Mindoro', 'Transginger', 'Single', 'Filipino', 'Catholic', 'asdzxcasda', 'zxc', 'asdzxca', 'dzxcasdas', 'zvcads', 'asdzxcasd', '', '', 'xcvzafd', 'adsfsdfz', 'fdsafdsf', 'aadfsasdf', '2017-10-24 08:20:40', '2017-11-07 09:59:01', 'Approved', 'Closed'),
(12, 'Beper', 'Ong', 'Middle', 0, 'beper.ong@benilde.edu.ph', '09260472440', '1995-11-06', 22, 'Mamburao Occidental Mindoro', 'Transginger', 'Single', 'Filipino', 'Catholic', 'asdzxcasda', 'zxc', 'MCS', 'OMNHS', 'Huh?', 'I hate the school bow\r\n', 'Cardo Dalisay', 'Waifu', 'Darth Vader', 'My father', 'Never met her', 'Single wut?!', '2017-10-24 08:48:04', '0000-00-00 00:00:00', 'Approved', 'Closed'),
(13, 'Beper', 'Ong', 'Test 3', 0, 'beper.ong@benilde.edu.ph', '09260472440', '2012-09-28', 22, 'Mamburao Occidental Mindoro', 'She-male', 'Single', 'Filipino', 'Catholic', 'asdzxcasda', 'zxc', 'MCS', 'OMNHS', 'Huh?', 'I dont layk', '', '', 'Bernabe', 'Worker', 'Perla', 'Bahay', '2017-10-24 09:12:45', '2017-10-24 09:13:01', 'Pending', 'Archived'),
(14, 'Beper', 'Ong', 'Clenista', 0, 'beper.ong@benilde.edu.ph', '09260472440', '1995-02-27', 22, 'Occidental Mindoro', 'Male', 'Single', 'Filipino', 'Catholic', 'Sto. Cristo Street Binondo Manila', 'Mamburao Occidental Mindoro', 'MCS', 'OMNHS', 'OMNHS', 'Too much units dropped', '', '', 'Bernabe Ong', 'Businessman', 'Perla Ong', 'Housewife', '2017-10-31 11:13:13', '2017-11-03 09:21:15', 'Pending', 'Closed'),
(15, 'Beper', 'Ong', 'Test', 0, 'beper.ong@benilde.edu.ph', '09260472440', '2000-01-30', 17, 'Occidental Mindoro', 'Male', 'Single', 'Chinese', 'Catholic', 'Sto. Cristo Street Binondo Manila', 'Mamburao Occidental Mindoro', 'MCS', 'OMNHS', 'OMNHS', 'nothing', 'qq', '', 'aDASCXC', 'mviadnav', 'mksdnadi', 'nmsfaiosdxzc', '2017-11-03 09:03:14', NULL, 'Approved', 'Closed'),
(16, 'Beper', 'Ong', 'Login test', 0, 'beper.ong@benilde.edu.ph', '(0926)047-2440', '2018-02-07', 18, 'Occidental Mindoro', 'Male', 'Single', 'Chinese', 'Catholic', 'Sto. Cristo Street Binondo Manila', 'Mamburao Occidental Mindoro', 'MCS', 'OMNHS', 'OMNHS', 'asdkjocjas', '', '', 'Bernabe Ong', 'Businessman', 'Perla Ong', 'Housewife', '2017-11-08 08:12:56', '2018-02-17 10:57:29', 'Pending', 'Active'),
(17, 'Beper Test', 'Ong', 'Test', 0, 'beper.ong@benilde.edu.ph', '09260472440', '1992-06-18', 25, 'Occidental Mindoro', 'Male', 'Single', 'Filipino', 'Catholic', 'Sto. Cristo Street Binondo Manila', '', 'MCS', 'OMNHS', 'OMNHS', 'Reasoon', '', '', 'Bernabe Ong', 'Businessman', 'Perla Ong', 'Housewife', '2017-11-08 10:30:08', NULL, 'Approved', 'Closed'),
(18, 'Shaun Xavier', 'Pascual', 'Beper Test', 0, 'bep@yahoo.com', '09260472440', '1996-04-24', 21, 'Occidental Mindoro', 'Male', 'Single', 'Filipino', 'Catholic', 'Sto. Cristo Street Binondo Manila', '', 'MCS', 'OMNHS', 'OMNHS', 'Test', '', '', 'Bernabe Ong', 'Businessman', 'Perla Ong', 'Housewife', '2017-11-08 12:17:48', '2017-11-08 12:18:42', 'Approved', 'Closed'),
(19, '1sjaiu', 'Pasudasucj', 'ASDJashdah', 0, 'shaunmxm@gmail.com', '(0977)750-1264', '0496-02-10', 127, 'Manilaj', 'Make', 'sdjsdjas', 'Chinese', 'Mahsdjasd', 'Pasjdajsd', 'AKSDasdjasj', 'KASDsdfsjd', 'JASdahsdhashd', 'KDASJDA', 'FIAled', 'AJSDJASJDAsd', 'ASJdjasjd', 'ASDASJDFSD', 'ASDKASDKA', 'AKJSDJASDJA', 'AKSDJASDJASd', '2017-11-09 12:59:33', NULL, 'Approved', 'Closed'),
(20, 'TEst', 'TEst', 'test', 2, 'test@yahoo.com', '(0926)484-8484', '0000-00-00', 23, 'Test', 'tESt', 'testset', 'Filipino', 'test', 'testset', 'tests', 'testset', 'testest', 'testse', 'Testing', '', 'tes', 'Testing', 'testste', 'testes', 'test', '2018-03-07 10:26:12', NULL, 'Approved', 'Closed'),
(21, 'BeperTESTING', 'TEST', 'TEST', 1, 'test@yahoo.com', '(0926)262-6262', '1995-02-27', 23, 'Kanto', 'Male', 'Single', 'Filipino', 'Catholic', 'Testing', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', '', '', 'TEST', 'TEST', 'TEST', 'TEST', '2018-03-09 20:24:29', '2018-03-09 20:36:56', 'Approved', 'Closed'),
(22, 'Test', 'Test', 'Test', 3, 'Test@yahoo.com', '(0916)161-6166', '0000-00-00', 23, 'Test', 'Male', 'Single', 'Filipino', 'Catholic', 'test', '', 'Test', 'Test', 'Test', 'Test', '', '', 'Test', 'Test', 'Test', 'Test', '2018-03-10 01:13:57', NULL, 'Approved', 'Closed'),
(23, 'john', 'doe', 'lopez', 3, 'jondoe@yahoo.com', '(0915)002-4930', '0000-00-00', 22, 'manila', 'Male', 'Single', 'Filipino', 'Christian', 'pasay', 'n/a', 'Makati Hope Christian School', 'Makati Hope Christian School', 'n/a', 'n/a', '', '', 'johnny yap', 'Business Owner', 'liza yap', 'house wife', '2018-03-15 22:54:04', NULL, 'Pending', 'Active'),
(24, 'Beper', 'Ong', 'Test', 2, 'bep@yahoo.com', '(0926)047-2440', '1995-02-27', 23, 'Manila', 'Male', 'Married', 'Filipino', 'Christian', '369 L. Santos St.', 'St.James Academy', 'St.James Academy', 'St.James Academy', 'St.James Academy', 'Something personal', '', '', 'MYdad', 'Seaman', 'MYmom', 'Manager', '2018-03-23 06:06:59', '2018-03-23 06:08:42', 'Approved', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignID` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `assignFile` varchar(150) NOT NULL,
  `assignDesc` varchar(150) NOT NULL,
  `assignTitle` varchar(50) NOT NULL,
  `dateUploaded` datetime NOT NULL,
  `dateModified` datetime NOT NULL,
  `dateExpiry` datetime NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auditlogs`
--

CREATE TABLE `auditlogs` (
  `auditID` int(11) NOT NULL,
  `userIDNo` int(11) NOT NULL,
  `auditDesc` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auditlogs`
--

INSERT INTO `auditlogs` (`auditID`, `userIDNo`, `auditDesc`, `timestamp`, `status`) VALUES
(1, 11410020, '$2y$10$Paaa31jLytojwEun8CYSt.5G9GAChZwerlRrbXgqRvb', '2017-11-08 09:31:01', ''),
(2, 11210032, '$2y$10$97Z2wvhDh86npDvOqdhZ4OYgHju74U.dXx2egvD5vE1', '2017-11-08 11:15:11', ''),
(3, 11210032, '$2y$10$97Z2wvhDh86npDvOqdhZ4OYgHju74U.dXx2egvD5vE1', '2017-11-09 12:13:25', ''),
(4, 1, '$2y$10$1/4ENc8h6Ske/jBSk9sqiedU2SSMEvr94ptBT5GnaoQ', '2018-03-09 06:10:55', ''),
(5, 11810004, 'Logged In', '2018-03-09 08:40:35', ''),
(6, 11810025, 'Logged In', '2018-03-12 05:03:38', ''),
(7, 11810025, 'Logged In', '2018-03-13 06:17:15', ''),
(8, 11810025, 'Logged In', '2018-03-14 05:02:00', ''),
(9, 11810030, 'Logged In', '2018-03-14 05:04:41', ''),
(10, 11810007, 'Logged In', '2018-03-14 07:30:53', ''),
(11, 11810005, 'Logged In', '2018-03-14 11:49:47', ''),
(12, 11810005, 'Logged In', '2018-03-14 17:38:46', ''),
(13, 20181006, 'Logged In', '2018-03-14 19:47:57', ''),
(14, 20181006, 'Logged In', '2018-03-14 19:48:31', ''),
(15, 11810006, 'Logged In', '2018-03-14 20:10:14', ''),
(16, 11810006, 'Logged Out', '2018-03-14 20:10:55', ''),
(17, 20181005, 'Logged In', '2018-03-14 20:11:19', ''),
(18, 11810006, 'Logged In', '2018-03-14 20:16:54', ''),
(19, 11810006, 'Download', '2018-03-14 20:30:24', ''),
(20, 11810006, 'Download', '2018-03-14 20:30:24', ''),
(21, 11810006, 'Download', '2018-03-14 20:30:24', ''),
(22, 11810006, 'Download', '2018-03-14 20:30:24', ''),
(23, 11810006, 'Download', '2018-03-14 20:30:25', ''),
(24, 11810006, 'Download', '2018-03-14 20:30:25', ''),
(25, 11810006, 'Download', '2018-03-14 20:30:25', ''),
(26, 11810006, 'Download', '2018-03-14 20:30:25', ''),
(27, 11810006, 'Download', '2018-03-14 20:30:25', ''),
(28, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(29, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(30, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(31, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(32, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(33, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(34, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(35, 11810006, 'Download', '2018-03-14 20:30:26', ''),
(36, 11810006, 'Download', '2018-03-14 20:30:27', ''),
(37, 11810006, 'Download', '2018-03-14 20:30:27', ''),
(38, 11810006, 'Download', '2018-03-14 20:30:27', ''),
(39, 11810006, 'Download', '2018-03-14 20:30:27', ''),
(40, 11810006, 'Download', '2018-03-14 20:30:28', ''),
(41, 11810006, 'Download', '2018-03-14 20:30:28', ''),
(42, 11810006, 'Download', '2018-03-14 20:30:28', ''),
(43, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(44, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(45, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(46, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(47, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(48, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(49, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(50, 11810006, 'Download', '2018-03-14 20:30:29', ''),
(51, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(52, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(53, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(54, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(55, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(56, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(57, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(58, 11810006, 'Download', '2018-03-14 20:30:30', ''),
(59, 11810006, 'Download', '2018-03-14 20:30:31', ''),
(60, 11810006, 'Download', '2018-03-14 20:30:31', ''),
(61, 11810006, 'Download', '2018-03-14 20:30:31', ''),
(62, 11810006, 'Download', '2018-03-14 20:30:31', ''),
(63, 11810006, 'Download', '2018-03-14 20:30:31', ''),
(64, 11810006, 'Download', '2018-03-14 20:30:31', ''),
(65, 11810006, 'Download', '2018-03-14 20:30:32', ''),
(66, 11810006, 'Download', '2018-03-14 20:30:32', ''),
(67, 11810006, 'Download', '2018-03-14 20:30:32', ''),
(68, 11810006, 'Download', '2018-03-14 20:30:32', ''),
(69, 11810006, 'Download', '2018-03-14 20:30:34', ''),
(70, 11810006, 'Download', '2018-03-14 20:30:34', ''),
(71, 11810006, 'Download', '2018-03-14 20:30:34', ''),
(72, 11810006, 'Download', '2018-03-14 20:30:34', ''),
(73, 11810006, 'Download', '2018-03-14 20:30:34', ''),
(74, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(75, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(76, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(77, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(78, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(79, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(80, 11810006, 'Download', '2018-03-14 20:30:35', ''),
(81, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(82, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(83, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(84, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(85, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(86, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(87, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(88, 11810006, 'Download', '2018-03-14 20:30:36', ''),
(89, 11810006, 'Download', '2018-03-14 20:30:37', ''),
(90, 11810006, 'Download', '2018-03-14 20:30:42', ''),
(91, 11810006, 'Download', '2018-03-14 20:30:43', ''),
(92, 11810006, 'Download', '2018-03-14 20:30:43', ''),
(93, 11810006, 'Download', '2018-03-14 20:30:43', ''),
(94, 11810006, 'Download', '2018-03-14 20:30:43', ''),
(95, 11810006, 'Download', '2018-03-14 20:30:43', ''),
(96, 11810006, 'Download', '2018-03-14 20:30:43', ''),
(97, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(98, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(99, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(100, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(101, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(102, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(103, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(104, 11810006, 'Download', '2018-03-14 20:30:44', ''),
(105, 11810006, 'Download', '2018-03-14 20:30:45', ''),
(106, 11810006, 'Download', '2018-03-14 20:30:45', ''),
(107, 11810006, 'Download', '2018-03-14 20:30:45', ''),
(108, 11810006, 'Download', '2018-03-14 20:30:45', ''),
(109, 11810006, 'Download', '2018-03-14 20:30:45', ''),
(110, 11810006, 'Download', '2018-03-14 20:30:46', ''),
(111, 11810006, 'Download', '2018-03-14 20:30:46', ''),
(112, 11810006, 'Download', '2018-03-14 20:30:46', ''),
(113, 11810006, 'Download', '2018-03-14 20:30:46', ''),
(114, 11810006, 'Download', '2018-03-14 20:30:46', ''),
(115, 11810006, 'Download', '2018-03-14 20:30:47', ''),
(116, 11810006, 'Download', '2018-03-14 20:30:47', ''),
(117, 11810006, 'Download', '2018-03-14 20:30:47', ''),
(118, 11810006, 'Download', '2018-03-14 20:30:47', ''),
(119, 11810006, 'Download', '2018-03-14 20:30:47', ''),
(120, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(121, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(122, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(123, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(124, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(125, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(126, 11810006, 'Download', '2018-03-14 20:30:48', ''),
(127, 11810006, 'Download', '2018-03-14 20:30:49', ''),
(128, 11810006, 'Download', '2018-03-14 20:30:49', ''),
(129, 11810006, 'Download', '2018-03-14 20:30:49', ''),
(130, 11810006, 'Download', '2018-03-14 20:30:49', ''),
(131, 11810006, 'Download', '2018-03-14 20:30:49', ''),
(132, 11810006, 'Download', '2018-03-14 20:30:55', ''),
(133, 11810006, 'Download', '2018-03-14 20:30:55', ''),
(134, 11810006, 'Download', '2018-03-14 20:30:55', ''),
(135, 11810006, 'Download', '2018-03-14 20:30:55', ''),
(136, 11810006, 'Download', '2018-03-14 20:30:55', ''),
(137, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(138, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(139, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(140, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(141, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(142, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(143, 11810006, 'Download', '2018-03-14 20:30:56', ''),
(144, 11810006, 'Download', '2018-03-14 20:30:57', ''),
(145, 11810006, 'Download', '2018-03-14 20:30:57', ''),
(146, 11810006, 'Download', '2018-03-14 20:30:57', ''),
(147, 11810006, 'Download', '2018-03-14 20:30:57', ''),
(148, 11810006, 'Download', '2018-03-14 20:30:58', ''),
(149, 11810006, 'Download', '2018-03-14 20:30:58', ''),
(150, 11810006, 'Download', '2018-03-14 20:30:58', ''),
(151, 11810006, 'Download', '2018-03-14 20:30:58', ''),
(152, 11810006, 'Download', '2018-03-14 20:30:58', ''),
(153, 11810006, 'Download', '2018-03-14 20:30:58', ''),
(154, 11810006, 'Download', '2018-03-14 20:31:02', ''),
(155, 11810006, 'Download', '2018-03-14 20:31:02', ''),
(156, 11810006, 'Download', '2018-03-14 20:31:03', ''),
(157, 11810006, 'Download', '2018-03-14 20:31:03', ''),
(158, 11810006, 'Download', '2018-03-14 20:31:03', ''),
(159, 11810006, 'Download', '2018-03-14 20:31:03', ''),
(160, 11810006, 'Download', '2018-03-14 20:31:03', ''),
(161, 11810006, 'Download', '2018-03-14 20:31:03', ''),
(162, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(163, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(164, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(165, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(166, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(167, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(168, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(169, 11810006, 'Download', '2018-03-14 20:31:04', ''),
(170, 11810006, 'Download', '2018-03-14 20:31:05', ''),
(171, 11810006, 'Download', '2018-03-14 20:31:05', ''),
(172, 11810006, 'Download', '2018-03-14 20:31:05', ''),
(173, 11810006, 'Download', '2018-03-14 20:31:05', ''),
(174, 11810006, 'Download', '2018-03-14 20:31:05', ''),
(175, 11810006, 'Logged Out', '2018-03-14 20:34:29', ''),
(176, 11810007, 'Logged In', '2018-03-14 20:35:55', ''),
(177, 11810007, 'Logged Out', '2018-03-14 20:37:01', ''),
(178, 11810006, 'Logged In', '2018-03-14 20:37:18', ''),
(179, 11810006, 'Logged In', '2018-03-15 01:16:17', ''),
(180, 11810006, 'Logged Out', '2018-03-15 01:20:46', ''),
(181, 11810005, 'Logged In', '2018-03-15 01:21:19', ''),
(182, 11810005, 'Download Assignment', '2018-03-15 02:06:55', ''),
(183, 11810005, 'Download Assignment', '2018-03-15 02:09:33', ''),
(184, 11810005, 'Download Lesson', '2018-03-15 02:14:24', ''),
(185, 20181006, 'Logged In', '2018-03-15 05:52:59', ''),
(186, 20181006, 'Uploaded Assignment', '2018-03-15 05:53:32', ''),
(187, 1, 'Logged In', '2018-03-15 14:10:25', ''),
(188, 1, 'Logged In', '2018-03-15 14:13:23', ''),
(189, 5, 'Added announcement', '2018-03-15 18:46:50', ''),
(190, 5, 'Added announcement', '2018-03-15 19:21:59', ''),
(191, 5, 'Added Course', '2018-03-15 19:38:34', ''),
(192, 20181006, 'Logged In', '2018-03-15 20:19:34', ''),
(193, 20181006, 'Logged In', '2018-03-15 20:38:36', ''),
(194, 20181006, 'Uploaded Assignment', '2018-03-15 20:41:21', ''),
(195, 20181006, 'Uploaded Assignment', '2018-03-15 20:42:47', ''),
(196, 20181006, 'Logged Out', '2018-03-15 21:21:06', ''),
(197, 5, 'Successfully added a new applicant', '2018-03-15 21:54:04', ''),
(198, 11810005, 'Logged In', '2018-03-21 05:38:48', ''),
(199, 11810005, 'Logged Out', '2018-03-21 05:40:15', ''),
(200, 20181001, 'Logged In', '2018-03-21 05:41:11', ''),
(201, 20181001, 'Logged Out', '2018-03-21 05:41:41', ''),
(202, 20181005, 'Logged In', '2018-03-21 05:42:20', ''),
(203, 20181005, 'Logged Out', '2018-03-21 05:42:29', ''),
(204, 20181006, 'Logged In', '2018-03-21 05:43:28', ''),
(205, 1, 'Logged In', '2018-03-21 05:45:11', ''),
(206, 20181006, 'Logged In', '2018-03-21 05:57:00', ''),
(207, 20181008, 'Logged In', '2018-03-22 05:23:46', ''),
(208, 20181008, 'Logged Out', '2018-03-22 05:24:33', ''),
(209, 20181007, 'Logged In', '2018-03-22 05:25:05', ''),
(210, 20181007, 'Logged Out', '2018-03-22 05:28:34', ''),
(211, 20181009, 'Logged In', '2018-03-22 05:29:00', ''),
(212, 20181006, 'Logged In', '2018-03-22 05:34:39', ''),
(213, 20181006, 'Logged Out', '2018-03-22 05:35:01', ''),
(214, 20181008, 'Logged In', '2018-03-22 05:41:12', ''),
(215, 20181006, 'Logged In', '2018-03-22 07:54:27', ''),
(216, 20181008, 'Logged In', '2018-03-22 07:56:10', ''),
(217, 20181008, 'Logged Out', '2018-03-22 08:21:10', ''),
(218, 20181006, 'Logged In', '2018-03-22 08:21:52', ''),
(219, 20181007, 'Logged In', '2018-03-22 08:37:37', ''),
(220, 20181007, 'Logged Out', '2018-03-22 08:37:45', ''),
(221, 20181006, 'Logged In', '2018-03-22 08:38:03', ''),
(222, 20181006, 'Logged Out', '2018-03-22 09:12:07', ''),
(223, 20181006, 'Logged In', '2018-03-22 09:52:38', ''),
(224, 20181006, 'Logged Out', '2018-03-22 10:02:14', ''),
(225, 20181006, 'Logged In', '2018-03-22 10:02:32', ''),
(226, 20181006, 'Logged In', '2018-03-22 12:58:29', ''),
(227, 20181006, 'Logged In', '2018-03-22 19:54:27', ''),
(228, 11810024, 'Logged In', '2018-03-22 20:18:04', ''),
(229, 20181006, 'Logged In', '2018-03-22 22:52:16', ''),
(230, 20181006, 'Logged Out', '2018-03-22 22:55:56', ''),
(231, 11810024, 'Logged In', '2018-03-22 22:56:15', ''),
(232, 11810024, 'Logged Out', '2018-03-22 22:57:52', ''),
(233, 20181006, 'Logged In', '2018-03-22 22:58:13', ''),
(234, 11810021, 'Logged In', '2018-03-22 22:59:06', ''),
(235, 11810021, 'Logged Out', '2018-03-22 22:59:13', ''),
(236, 11810004, 'Logged In', '2018-03-22 22:59:30', ''),
(237, 11810004, 'Logged Out', '2018-03-22 23:00:21', ''),
(238, 11810024, 'Logged In', '2018-03-22 23:00:38', ''),
(239, 20181006, 'Logged In', '2018-03-22 23:03:33', ''),
(240, 1801, 'Successfully edited an applicant', '2018-03-23 05:08:42', ''),
(241, 1801, 'Sucessfully added a student from applicant', '2018-03-23 05:08:48', ''),
(242, 20181006, 'Logged In', '2018-03-23 05:16:23', ''),
(243, 20181006, 'Uploaded lesson', '2018-03-23 05:21:46', ''),
(244, 20181006, 'Uploaded Assignment', '2018-03-23 05:22:01', ''),
(245, 20181006, 'Logged Out', '2018-03-23 05:22:10', ''),
(246, 11810004, 'Logged In', '2018-03-23 05:22:29', ''),
(247, 11810004, 'Download Lesson', '2018-03-23 05:23:47', ''),
(248, 11810004, 'Logged Out', '2018-03-23 05:26:22', ''),
(249, 1, 'Logged In', '2018-03-23 05:27:01', ''),
(250, 1, 'Logged Out', '2018-03-23 05:30:07', ''),
(251, 1801, 'Added Subject', '2018-03-26 08:35:05', ''),
(252, 1801, 'Added Subject', '2018-03-26 08:36:34', ''),
(253, 1801, 'Added Subject', '2018-03-26 08:40:20', ''),
(254, 1801, 'Added Subject', '2018-03-26 08:45:06', ''),
(255, 1801, 'Added Subject', '2018-03-26 09:18:06', ''),
(256, 1801, 'Added Subject', '2018-03-26 09:19:01', ''),
(257, 1801, 'Added Subject', '2018-03-26 09:19:19', ''),
(258, 1801, 'Added Subject', '2018-03-26 09:19:38', ''),
(259, 1801, 'Added Subject', '2018-03-26 09:20:08', ''),
(260, 1801, 'Added Subject', '2018-03-26 09:20:30', ''),
(261, 1801, 'Added Subject', '2018-03-26 09:20:49', ''),
(262, 1801, 'Added Subject', '2018-03-26 09:21:08', ''),
(263, 1801, 'Added Subject', '2018-03-26 09:21:52', ''),
(264, 1801, 'Added Subject', '2018-03-26 09:28:31', ''),
(265, 1801, 'Added Subject', '2018-03-26 09:29:41', ''),
(266, 1801, 'Added Subject', '2018-03-26 09:30:49', ''),
(267, 1801, 'Added Subject', '2018-03-26 09:33:03', ''),
(268, 1801, 'Added Subject', '2018-03-26 09:33:32', ''),
(269, 1801, 'Added Subject', '2018-03-26 09:34:17', ''),
(270, 1801, 'Added Subject', '2018-03-26 09:35:14', ''),
(271, 1801, 'Added Subject', '2018-03-26 09:35:51', ''),
(272, 1801, 'Added Subject', '2018-03-26 09:36:36', ''),
(273, 1801, 'Added Subject', '2018-03-26 09:37:21', ''),
(274, 1801, 'Added Subject', '2018-03-26 09:37:53', ''),
(275, 1801, 'Added Subject', '2018-03-26 09:38:16', ''),
(276, 1801, 'Added Subject', '2018-03-26 09:38:48', ''),
(277, 1801, 'Added Subject', '2018-03-26 09:39:42', ''),
(278, 1801, 'Added Subject', '2018-03-26 09:40:20', ''),
(279, 1801, 'Added Subject', '2018-03-26 09:41:27', ''),
(280, 1801, 'Added Subject', '2018-03-26 09:42:04', ''),
(281, 1801, 'Added Subject', '2018-03-26 10:42:23', ''),
(282, 1801, 'Added Subject', '2018-03-26 10:42:57', ''),
(283, 1801, 'Added Subject', '2018-03-26 10:43:17', ''),
(284, 1801, 'Added Subject', '2018-03-26 10:43:54', ''),
(285, 1801, 'Added Subject', '2018-03-26 10:44:18', ''),
(286, 1801, 'Added Subject', '2018-03-26 10:44:39', ''),
(287, 1801, 'Added Subject', '2018-03-26 10:46:57', ''),
(288, 1801, 'Added Subject', '2018-03-26 10:47:35', ''),
(289, 1801, 'Added Subject', '2018-03-26 10:48:01', ''),
(290, 1801, 'Added Subject', '2018-03-26 10:49:07', ''),
(291, 1801, 'Added Subject', '2018-03-26 10:49:35', ''),
(292, 1801, 'Added Subject', '2018-03-26 10:50:30', ''),
(293, 1801, 'Added Subject', '2018-03-26 10:50:51', ''),
(294, 1801, 'Added Subject', '2018-03-26 10:51:10', ''),
(295, 1801, 'Added Subject', '2018-03-26 10:51:31', ''),
(296, 1801, 'Added Subject', '2018-03-26 10:52:41', ''),
(297, 1801, 'Added Subject', '2018-03-26 10:53:05', ''),
(298, 1801, 'Added Subject', '2018-03-26 10:53:38', ''),
(299, 1801, 'Added Subject', '2018-03-26 10:54:48', ''),
(300, 1801, 'Added Subject', '2018-03-26 10:55:08', ''),
(301, 1801, 'Added Subject', '2018-03-26 11:00:22', ''),
(302, 1801, 'Added Subject', '2018-03-26 11:00:45', ''),
(303, 1801, 'Added Subject', '2018-03-26 11:01:17', ''),
(304, 1801, 'Added Subject', '2018-03-26 11:03:25', ''),
(305, 1801, 'Added Subject', '2018-03-26 11:03:58', ''),
(306, 1801, 'Added Subject', '2018-03-26 11:04:33', ''),
(307, 1801, 'Added Subject', '2018-03-26 11:05:05', ''),
(308, 1801, 'Added Subject', '2018-03-26 11:05:58', ''),
(309, 1801, 'Added Subject', '2018-03-26 11:06:21', ''),
(310, 1801, 'Added Subject', '2018-03-26 11:19:57', ''),
(311, 1801, 'Added Subject', '2018-03-26 11:20:34', ''),
(312, 1801, 'Added Subject', '2018-03-26 11:21:59', ''),
(313, 1801, 'Added Subject', '2018-03-26 11:23:51', ''),
(314, 1801, 'Added Subject', '2018-03-26 11:24:39', ''),
(315, 1801, 'Added Subject', '2018-03-26 11:24:59', ''),
(316, 1801, 'Added Subject', '2018-03-26 11:25:29', ''),
(317, 1801, 'Added Subject', '2018-03-26 11:26:49', ''),
(318, 1801, 'Added Subject', '2018-03-26 11:27:18', ''),
(319, 1801, 'Added Subject', '2018-03-26 11:27:41', ''),
(320, 1801, 'Added Subject', '2018-03-26 11:28:02', ''),
(321, 1801, 'Added Subject', '2018-03-26 11:28:23', ''),
(322, 1801, 'Added Subject', '2018-03-26 11:28:55', ''),
(323, 1801, 'Added Subject', '2018-03-26 11:29:44', ''),
(324, 1801, 'Added Subject', '2018-03-26 11:30:05', ''),
(325, 1801, 'Added Subject', '2018-03-26 11:30:20', ''),
(326, 1801, 'Added Subject', '2018-03-26 11:30:38', ''),
(327, 1801, 'Added Subject', '2018-03-26 11:31:00', ''),
(328, 1801, 'Added Subject', '2018-03-26 11:31:30', ''),
(329, 1801, 'Added Subject', '2018-03-26 11:32:01', ''),
(330, 1801, 'Added Subject', '2018-03-26 11:32:25', ''),
(331, 1801, 'Added Subject', '2018-03-26 11:33:03', ''),
(332, 1801, 'Added Subject', '2018-03-26 11:33:32', ''),
(333, 1801, 'Added Subject', '2018-03-26 11:34:11', ''),
(334, 1801, 'Added Subject', '2018-03-26 11:34:56', ''),
(335, 1801, 'Added Subject', '2018-03-26 11:36:14', ''),
(336, 1801, 'Added Subject', '2018-03-26 11:36:47', ''),
(337, 1801, 'Added Subject', '2018-03-26 11:37:12', ''),
(338, 1801, 'Added Subject', '2018-03-26 11:38:10', ''),
(339, 1801, 'Added Subject', '2018-03-26 11:39:45', ''),
(340, 1801, 'Added Subject', '2018-03-26 11:40:20', ''),
(341, 1801, 'Added Subject', '2018-03-26 11:41:09', ''),
(342, 1801, 'Added Subject', '2018-03-26 11:41:57', ''),
(343, 1801, 'Added Subject', '2018-03-26 11:42:49', ''),
(344, 1801, 'Added Subject', '2018-03-26 11:45:21', ''),
(345, 1801, 'Added Subject', '2018-03-26 11:46:10', ''),
(346, 1801, 'Added Subject', '2018-03-26 11:46:29', ''),
(347, 1801, 'Added Subject', '2018-03-26 11:46:48', ''),
(348, 1801, 'Added Subject', '2018-03-26 11:47:08', ''),
(349, 1801, 'Added Subject', '2018-03-26 11:47:24', ''),
(350, 1801, 'Added Subject', '2018-03-26 11:48:08', ''),
(351, 1801, 'Added Subject', '2018-03-26 11:49:27', ''),
(352, 1801, 'Added Subject', '2018-03-26 11:50:13', ''),
(353, 1801, 'Added Subject', '2018-03-26 11:50:42', ''),
(354, 1801, 'Added Subject', '2018-03-26 11:51:26', ''),
(355, 1801, 'Added Subject', '2018-03-26 11:51:45', ''),
(356, 1801, 'Added Subject', '2018-03-26 11:52:14', ''),
(357, 1801, 'Added Subject', '2018-03-26 11:52:34', ''),
(358, 1801, 'Added Subject', '2018-03-26 11:53:07', ''),
(359, 1801, 'Added Subject', '2018-03-26 11:53:47', ''),
(360, 1801, 'Added Subject', '2018-03-26 11:54:18', ''),
(361, 1801, 'Added Subject', '2018-03-26 11:54:45', ''),
(362, 1801, 'Added Subject', '2018-03-26 11:55:35', ''),
(363, 1801, 'Added Subject', '2018-03-26 11:56:12', ''),
(364, 1801, 'Added Subject', '2018-03-26 11:56:36', ''),
(365, 1801, 'Added Subject', '2018-03-26 11:57:18', ''),
(366, 1801, 'Added Subject', '2018-03-26 11:57:44', ''),
(367, 1801, 'Added Subject', '2018-03-26 11:58:12', ''),
(368, 1801, 'Added Subject', '2018-03-26 11:58:33', ''),
(369, 1801, 'Added Subject', '2018-03-26 11:58:58', ''),
(370, 1801, 'Added Subject', '2018-03-26 11:59:19', ''),
(371, 1801, 'Added Subject', '2018-03-26 12:00:27', ''),
(372, 1801, 'Added Subject', '2018-03-26 12:00:56', ''),
(373, 1801, 'Added Subject', '2018-03-26 12:01:34', ''),
(374, 1801, 'Added Subject', '2018-03-26 12:02:03', ''),
(375, 1801, 'Added Subject', '2018-03-26 12:02:23', ''),
(376, 1801, 'Added Subject', '2018-03-26 12:02:48', ''),
(377, 1801, 'Added Subject', '2018-03-26 12:03:08', ''),
(378, 1801, 'Added Subject', '2018-03-26 12:03:34', ''),
(379, 1801, 'Added Subject', '2018-03-26 12:13:36', ''),
(380, 1801, 'Added Subject', '2018-03-26 12:14:17', ''),
(381, 1801, 'Added Subject', '2018-03-26 12:14:41', ''),
(382, 1801, 'Added Subject', '2018-03-26 12:25:13', ''),
(383, 1801, 'Added Subject', '2018-03-26 12:25:39', ''),
(384, 1801, 'Added Subject', '2018-03-26 12:26:06', ''),
(385, 1801, 'Added Subject', '2018-03-26 12:26:58', ''),
(386, 1801, 'Added Subject', '2018-03-26 12:27:18', ''),
(387, 1801, 'Added Subject', '2018-03-26 12:28:23', ''),
(388, 1801, 'Added Subject', '2018-03-26 12:30:38', ''),
(389, 1801, 'Added Subject', '2018-03-26 12:31:06', ''),
(390, 1801, 'Added Subject', '2018-03-26 12:31:26', ''),
(391, 1801, 'Added Subject', '2018-03-26 12:31:44', ''),
(392, 1801, 'Added Subject', '2018-03-26 12:32:10', ''),
(393, 1801, 'Added Subject', '2018-03-26 12:32:54', ''),
(394, 1801, 'Added Subject', '2018-03-26 12:33:34', ''),
(395, 1801, 'Added Subject', '2018-03-26 12:33:55', ''),
(396, 1801, 'Added Subject', '2018-03-26 12:34:28', ''),
(397, 1801, 'Added Subject', '2018-03-26 12:45:00', ''),
(398, 1801, 'Added Subject', '2018-03-26 12:45:30', ''),
(399, 1801, 'Added Subject', '2018-03-26 12:45:51', ''),
(400, 1801, 'Added Subject', '2018-03-26 12:46:08', ''),
(401, 1801, 'Added Subject', '2018-03-26 12:46:31', ''),
(402, 1801, 'Added Subject', '2018-03-26 12:46:56', ''),
(403, 1801, 'Added Subject', '2018-03-26 12:47:30', ''),
(404, 1801, 'Added Subject', '2018-03-26 12:47:56', ''),
(405, 1801, 'Added Subject', '2018-03-26 12:48:26', ''),
(406, 1801, 'Added Subject', '2018-03-26 12:49:28', ''),
(407, 1801, 'Added Subject', '2018-03-26 12:49:45', ''),
(408, 1801, 'Added Subject', '2018-03-26 12:50:03', ''),
(409, 1801, 'Added Subject', '2018-03-26 12:50:21', ''),
(410, 1801, 'Added Subject', '2018-03-26 12:50:45', ''),
(411, 1801, 'Added Subject', '2018-03-26 12:51:06', ''),
(412, 1801, 'Added Subject', '2018-03-26 12:51:33', ''),
(413, 1801, 'Added Subject', '2018-03-26 12:53:17', ''),
(414, 1801, 'Added Subject', '2018-03-26 12:53:42', ''),
(415, 1801, 'Added Subject', '2018-03-26 12:54:13', ''),
(416, 1801, 'Added Subject', '2018-03-26 12:54:32', ''),
(417, 1801, 'Added Subject', '2018-03-26 12:55:03', ''),
(418, 1801, 'Added Subject', '2018-03-26 12:55:33', ''),
(419, 1801, 'Added Subject', '2018-03-26 12:56:08', ''),
(420, 1801, 'Added Subject', '2018-03-26 12:56:49', ''),
(421, 1801, 'Added Subject', '2018-03-26 12:57:09', ''),
(422, 1801, 'Added Subject', '2018-03-26 12:57:41', ''),
(423, 1801, 'Added Subject', '2018-03-26 12:58:01', ''),
(424, 1801, 'Added Subject', '2018-03-26 12:58:29', ''),
(425, 1801, 'Added Subject', '2018-03-26 12:58:58', ''),
(426, 1801, 'Added Subject', '2018-03-26 12:59:32', ''),
(427, 1801, 'Added Subject', '2018-03-26 13:00:00', ''),
(428, 1801, 'Added Subject', '2018-03-26 13:00:24', ''),
(429, 1801, 'Added Subject', '2018-03-26 13:01:38', ''),
(430, 1801, 'Added Subject', '2018-03-26 13:01:54', ''),
(431, 1801, 'Added Subject', '2018-03-26 13:02:13', ''),
(432, 1801, 'Added Subject', '2018-03-26 13:02:35', ''),
(433, 1801, 'Added Subject', '2018-03-26 13:03:06', ''),
(434, 1801, 'Added Subject', '2018-03-26 13:03:27', ''),
(435, 1801, 'Added Subject', '2018-03-26 13:03:52', ''),
(436, 1801, 'Added Subject', '2018-03-26 13:04:21', ''),
(437, 1801, 'Added Subject', '2018-03-26 13:04:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `blockID` int(255) NOT NULL,
  `blockCode` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`blockID`, `blockCode`, `status`) VALUES
(1, 'TI101', 'Active'),
(2, 'TI102', 'Active'),
(3, 'Semento', 'Archive'),
(4, 'TE003', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `facultyID` int(11) NOT NULL,
  `timeSlotID` int(11) NOT NULL,
  `venueID` int(11) NOT NULL,
  `academicYear` varchar(4) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classID`, `subjectID`, `facultyID`, `timeSlotID`, `venueID`, `academicYear`, `semester`, `remarks`, `status`) VALUES
(1, 169, 20181006, 14, 7, '2018', '1ST', 'Enrolled', 'Active'),
(2, 171, 20181006, 18, 16, '2018', '1ST', 'Enrolled', 'Archive'),
(3, 57, 20181006, 18, 17, '2018', '1st', 'Enrolled', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `classlist`
--

CREATE TABLE `classlist` (
  `classListID` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `dateAdded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classlist`
--

INSERT INTO `classlist` (`classListID`, `classID`, `studentID`, `remarks`, `dateAdded`) VALUES
(1, 1, 11810001, 'Enrolled', '2018-03-22'),
(2, 1, 11810002, 'Enrolled', '2018-03-22'),
(3, 1, 11810003, 'Enrolled', '2018-03-22'),
(4, 1, 11810004, 'Enrolled', '2018-03-22'),
(5, 1, 11810005, 'Enrolled', '2018-03-22'),
(6, 1, 11810006, 'Enrolled', '2018-03-22'),
(7, 1, 11810007, 'Enrolled', '2018-03-22'),
(8, 1, 11810008, 'Enrolled', '2018-03-22'),
(9, 1, 11810009, 'Enrolled', '2018-03-22'),
(10, 1, 11810010, 'Enrolled', '2018-03-22'),
(11, 1, 11810011, 'Enrolled', '2018-03-22'),
(12, 1, 11810012, 'Enrolled', '2018-03-22'),
(13, 1, 11810013, 'Enrolled', '2018-03-22'),
(14, 1, 11810014, 'Enrolled', '2018-03-22'),
(15, 1, 11810015, 'Enrolled', '2018-03-22'),
(16, 1, 11810016, 'Enrolled', '2018-03-22'),
(17, 1, 11810017, 'Enrolled', '2018-03-22'),
(18, 1, 11810018, 'Enrolled', '2018-03-22'),
(19, 1, 11810019, 'Enrolled', '2018-03-22'),
(20, 1, 11810020, 'Enrolled', '2018-03-22'),
(21, 1, 11810021, 'Enrolled', '2018-03-22'),
(22, 1, 11810022, 'Enrolled', '2018-03-22'),
(23, 1, 11810023, 'Enrolled', '2018-03-22'),
(24, 1, 11810024, 'Enrolled', '2018-03-22'),
(25, 1, 11810025, 'Enrolled', '2018-03-22'),
(26, 2, 11810004, 'Enrolled', '2018-03-14'),
(27, 2, 11810005, 'Enrolled', '2018-03-14'),
(28, 2, 11810006, 'Enrolled', '2018-03-14'),
(29, 2, 11810007, 'Enrolled', '2018-03-14'),
(30, 2, 11810001, 'Enrolled', '2018-03-14'),
(31, 2, 11810008, 'Enrolled', '2018-03-14'),
(32, 2, 11810009, 'Enrolled', '2018-03-14'),
(33, 2, 11810010, 'Enrolled', '2018-03-14'),
(34, 2, 11810011, 'Enrolled', '2018-03-14'),
(35, 2, 11810012, 'Enrolled', '2018-03-14'),
(36, 2, 11810013, 'Enrolled', '2018-03-14'),
(37, 2, 11810014, 'Enrolled', '2018-03-14'),
(38, 2, 11810015, 'Enrolled', '2018-03-14'),
(39, 2, 11810016, 'Enrolled', '2018-03-14'),
(40, 2, 11810017, 'Enrolled', '2018-03-14'),
(41, 2, 11810018, 'Enrolled', '2018-03-14'),
(42, 2, 11810019, 'Enrolled', '2018-03-14'),
(43, 2, 11810020, 'Enrolled', '2018-03-14'),
(44, 2, 11810021, 'Enrolled', '2018-03-14'),
(45, 2, 11810022, 'Enrolled', '2018-03-14'),
(46, 2, 11810023, 'Enrolled', '2018-03-14'),
(47, 2, 11810024, 'Enrolled', '2018-03-14'),
(48, 2, 11810025, 'Enrolled', '2018-03-14'),
(49, 2, 11810026, 'Enrolled', '2018-03-14'),
(50, 2, 11810027, 'Enrolled', '2018-03-14'),
(51, 2, 11810028, 'Enrolled', '2018-03-14'),
(52, 3, 11810003, 'Enrolled', '2018-03-23'),
(53, 3, 11810004, 'Enrolled', '2018-03-14'),
(54, 3, 11810005, 'Enrolled', '2018-03-14'),
(55, 3, 11810006, 'Enrolled', '2018-03-14'),
(56, 3, 11810007, 'Enrolled', '2018-03-14'),
(57, 3, 11810001, 'Enrolled', '2018-03-14'),
(58, 3, 11810008, 'Enrolled', '2018-03-14'),
(59, 3, 11810009, 'Enrolled', '2018-03-14'),
(60, 3, 11810010, 'Enrolled', '2018-03-14'),
(61, 3, 11810011, 'Enrolled', '2018-03-14'),
(62, 3, 11810012, 'Enrolled', '2018-03-14'),
(63, 3, 11810013, 'Enrolled', '2018-03-14'),
(64, 3, 11810014, 'Enrolled', '2018-03-14'),
(65, 3, 11810015, 'Enrolled', '2018-03-14'),
(66, 3, 11810016, 'Enrolled', '2018-03-14'),
(67, 3, 11810017, 'Enrolled', '2018-03-14'),
(68, 3, 11810018, 'Enrolled', '2018-03-14'),
(69, 3, 11810019, 'Enrolled', '2018-03-14'),
(70, 3, 11810020, 'Enrolled', '2018-03-14'),
(71, 3, 11810021, 'Enrolled', '2018-03-14'),
(72, 3, 11810022, 'Enrolled', '2018-03-14'),
(73, 3, 11810023, 'Enrolled', '2018-03-14'),
(74, 3, 11810024, 'Enrolled', '2018-03-14'),
(75, 3, 11810025, 'Enrolled', '2018-03-14'),
(76, 3, 11810026, 'Enrolled', '2018-03-14'),
(77, 3, 11810027, 'Enrolled', '2018-03-14'),
(78, 3, 11810028, 'Enrolled', '2018-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseCode` varchar(10) NOT NULL,
  `courseName` varchar(70) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `dateModified` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseCode`, `courseName`, `remarks`, `dateAdded`, `dateModified`, `status`) VALUES
(1, 'BS-CS', 'Bachelor of Computer Science', 'Major in Computer Science', '2018-02-08 23:38:25', '2018-02-08 23:38:50', 'Active'),
(2, 'BS-SEM', 'Bachelor of Secondary Education Major in Mathematics', 'Major in Mathematics', '2018-02-08 23:39:54', '2018-02-08 23:42:26', 'Active'),
(3, 'BS-EE', 'Bachelor of Elementary Education', 'Elementary Education', '2018-02-08 23:41:26', NULL, 'Active'),
(4, 'BS-SEF', 'Bachelor of Secondary Education Major in Filipino', 'Major in Filipino', '2018-02-08 23:42:14', NULL, 'Active'),
(5, 'BS-BA', 'Bachelor of Science in Business Administration', 'Major in Business Administration', '2018-02-08 23:43:15', NULL, 'Active'),
(6, 'BS-SESH', 'Bachelor of Secondary Education Major in Science & Health', 'Major in Science & Health', '2018-02-08 23:44:02', NULL, 'Active'),
(7, 'try', 'yrt', 'tr', '2018-03-16 03:38:34', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `dlID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `lessonID` int(11) NOT NULL,
  `assignID` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `dateModified` datetime NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyID`, `userID`, `subjectID`, `remarks`, `dateAdded`, `dateModified`, `status`) VALUES
(1, 14, 5, 'Major in Psychology', '2018-02-09 01:59:08', '0000-00-00 00:00:00', 'Active'),
(2, 11, 2, 'Filipino Only', '2018-02-09 01:59:28', '0000-00-00 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `gradeID` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `grade` varchar(4) NOT NULL,
  `fgrade` varchar(4) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `lastSaved` datetime NOT NULL,
  `dateSubmitted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `lessonID` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `lessonFile` varchar(150) NOT NULL,
  `lessonDesc` varchar(150) NOT NULL,
  `lessonTitle` varchar(50) NOT NULL,
  `dateUploaded` datetime NOT NULL,
  `dateModified` datetime NOT NULL,
  `dateExpiry` datetime NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prof`
--

CREATE TABLE `prof` (
  `profID` int(11) NOT NULL,
  `facultyID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prof`
--

INSERT INTO `prof` (`profID`, `facultyID`, `subjectID`, `remarks`, `status`) VALUES
(1, 0, 54, 'ssdf', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `blockID` int(11) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentID`, `userID`, `blockID`, `dateAdded`, `dateModified`, `status`) VALUES
(1, 1, 1, '2017-09-30 05:54:54', '2017-09-30 05:56:23', 'Active'),
(2, 32, 1, '2017-11-08 03:34:20', '2017-11-08 10:34:20', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjectID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectCode` varchar(15) NOT NULL,
  `subjectName` varchar(100) NOT NULL,
  `subjectType` varchar(50) NOT NULL,
  `units` int(11) NOT NULL,
  `year` varchar(3) NOT NULL,
  `semester` varchar(3) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectID`, `courseID`, `subjectCode`, `subjectName`, `subjectType`, `units`, `year`, `semester`, `status`) VALUES
(1, 5, 'Eng 1', 'English Communication 1', 'Lecture', 3, '1st', '1ST', 'Active'),
(2, 5, 'Fil 1', 'Sining ng Komunikasyon', 'Lecture', 3, '1st', '1ST', 'Active'),
(3, 5, 'Soc Sci 1', 'Philippine History', 'Lecture', 3, '1st', '1ST', 'Active'),
(4, 5, 'Math 1', 'College Algebra', 'Lecture', 3, '1st', '1ST', 'Active'),
(5, 5, 'Psycho 1', 'General Psychology', 'Lecture', 3, '1st', '1ST', 'Active'),
(6, 5, 'Nat Sci 1', 'Earth Science', 'Lecture', 3, '1st', '1ST', 'Active'),
(7, 5, 'Mgt 1', 'Principles of Management', 'Lecture', 3, '1st', '1ST', 'Active'),
(8, 5, 'CWTS 101', 'Civic Welfare 1', 'NSTP', 3, '1st', '1ST', 'Active'),
(9, 5, 'PE 101', 'Self Testing Activities', 'P.E.', 2, '1st', '1ST', 'Active'),
(10, 5, 'Eng 2', 'English Communication 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(11, 5, 'Fil 2', 'Pagbasa at Pagsulat sa Ibat-ibang Disiplina', 'Lecture', 3, '1st', '2ND', 'Active'),
(12, 5, 'Nat Sci 1', 'Biological Science', 'Lecture', 3, '1st', '2ND', 'Active'),
(13, 5, 'Mgt 2', 'Business Organization & Management', 'Lecture', 3, '1st', '2ND', 'Active'),
(14, 5, 'Math 2', 'Statistics/Probability', 'Lecture', 3, '1st', '2ND', 'Active'),
(15, 5, 'Soc Sci 2', 'Basic Economics w/ TAR', 'Lecture', 3, '1st', '2ND', 'Active'),
(16, 5, 'Soc Sci 3', 'Contemporary World Geography', 'Lecture', 3, '1st', '2ND', 'Active'),
(17, 5, 'CWTS 102', 'Civic Welfare 2', 'NSTP', 3, '1st', '2ND', 'Active'),
(18, 5, 'PE 102', 'Fundamentals of Rhythmic Activities', 'P.E.', 2, '1st', '2ND', 'Active'),
(19, 5, 'Eng 3', 'Modern Communication (Writing & Oral Comm.)', 'Lecture', 3, '2nd', '1ST', 'Active'),
(20, 5, 'Fil 3', 'Retorika', 'Lecture', 3, '2nd', '1ST', 'Active'),
(21, 5, 'Math 4', 'Business Mathematics', 'Lecture', 3, '2nd', '1ST', 'Active'),
(22, 5, 'Fin 1', 'Financial Management/Basic Business', 'Lecture', 3, '2nd', '1ST', 'Active'),
(23, 5, 'Soc Sci 4', 'Politics & Governance w/ Phil Constitution', 'Lecture', 3, '2nd', '1ST', 'Active'),
(24, 5, 'Mgt 4', 'Office Management & Automation', 'Lecture', 3, '2nd', '1ST', 'Active'),
(25, 5, 'Mgt 3', 'Public Administration', 'Lecture', 3, '2nd', '1ST', 'Active'),
(26, 5, 'PE 3', 'Group Games', 'P.E.', 2, '2nd', '1ST', 'Active'),
(27, 5, 'Eng 4', 'Modern Communication 2', 'Lecture', 3, '2nd', '2ND', 'Active'),
(28, 5, 'Bus Law 1', 'Obligation & Contract', 'Lecture', 3, '2nd', '2ND', 'Active'),
(29, 5, 'Mrktg 1', 'Principles of Marketing', 'Lecture', 3, '2nd', '2ND', 'Active'),
(30, 5, 'Soc Sci 5', 'Life, Work & of Rizal', 'Lecture', 3, '2nd', '2ND', 'Active'),
(31, 5, 'Soc Sci 6', 'Society & Culture w/ Family Planning', 'Lecture', 3, '2nd', '2ND', 'Active'),
(32, 5, 'Philo 1', 'Philosophy of Man', 'Lecture', 3, '2nd', '2ND', 'Active'),
(33, 5, 'Mgt 5', 'Wage & Salary Administration', 'Lecture', 3, '2nd', '2ND', 'Active'),
(34, 5, 'PE 4', 'Social Recreation', 'P.E.', 2, '2nd', '2ND', 'Active'),
(35, 5, 'Lit 1', 'Literatures of the Philippines', 'Lecture', 3, '3rd', '1ST', 'Active'),
(36, 5, 'Nat Sci 3', 'Ecology', 'Lecture', 3, '3rd', '1ST', 'Active'),
(37, 5, 'Bus Law 2', 'Laws on Business Organization', 'Lecture', 3, '3rd', '1ST', 'Active'),
(38, 5, 'Mgt 6', 'Labor & Management Relations', 'Lecture', 3, '3rd', '1ST', 'Active'),
(39, 5, 'Mgt 7', 'Materials Management', 'Lecture', 3, '3rd', '1ST', 'Active'),
(40, 5, 'Soc Sci 8', 'Introduction to Microeconomics', 'Lecture', 3, '3rd', '1ST', 'Active'),
(41, 5, 'Mgt 14', '(HRM1) Introduction to Hotel & Restaurant Management', 'Lecture', 3, '3rd', '1ST', 'Active'),
(42, 5, 'Lit 2', 'Literature of the World', 'Lecture', 3, '3rd', '2ND', 'Active'),
(43, 5, 'Fin 2', 'Business Finance', 'Lecture', 3, '3rd', '2ND', 'Active'),
(45, 5, 'Art Educ', 'Art Appreciation/Art Education', 'Lecture', 3, '3rd', '2ND', 'Active'),
(46, 5, 'Educ 4', 'Values Education/Professional Ethics', 'Lecture', 3, '3rd', '2ND', 'Active'),
(47, 5, 'Mgt 9', 'Supervisory & Executive Development', 'Lecture', 3, '3rd', '2ND', 'Active'),
(48, 5, 'Mgt 10', 'Manufacturing Management', 'Lecture', 3, '3rd', '2ND', 'Active'),
(49, 5, 'Mgt 11', 'Planning Policy Formulation', 'Lecture', 3, '3rd', '2ND', 'Active'),
(50, 5, 'Comp Sci 1', 'Computer Literacy', 'Lecture', 3, '4th', '1ST', 'Active'),
(51, 5, 'Psycho 11', 'Industrial Psychology', 'Lecture', 3, '4th', '1ST', 'Active'),
(52, 5, 'Mgt 12', 'Management in Small Business', 'Lecture', 3, '4th', '1ST', 'Active'),
(53, 5, 'Mgt 13', 'Risk Management', 'Lecture', 3, '4th', '1ST', 'Active'),
(54, 5, 'Acctg 1', 'Fundamentals of Accounting', 'Lecture', 3, '4th', '1ST', 'Active'),
(55, 5, 'Acctg 2', 'Fundamentals of Accounting', 'Lecture', 3, '4th', '1ST', 'Active'),
(56, 5, 'PDPR', 'Personality Development & Public Relations', 'Lecture', 3, '4th', '1ST', 'Active'),
(57, 5, 'Tax 2', 'Income Tax Law', 'Lecture', 3, '4th', '2ND', 'Active'),
(58, 5, 'Comp Sci 2', 'Fundamentals of Problem Solving & Programming', 'Laboratory', 3, '4th', '2ND', 'Active'),
(59, 5, 'Mgt 15', 'Import & Export Management', 'Lecture', 3, '4th', '2ND', 'Active'),
(60, 5, 'Acctg 3', 'Partnership & Corporation', 'Lecture', 6, '4th', '2ND', 'Active'),
(61, 5, 'Mgt 16', 'Management Practicum', 'Lecture', 3, '4th', '2ND', 'Active'),
(62, 2, 'Eng 101', 'English Communication 1', 'Lecture', 3, '1st', '1ST', 'Active'),
(63, 2, 'Fil 101', 'Sining ng Komunikasyon', 'Lecture', 3, '1st', '1ST', 'Active'),
(64, 2, 'Hist 101', 'Philippine History', 'Lecture', 3, '1st', '1ST', 'Active'),
(65, 2, 'Psycho 101', 'General Psychology', 'Lecture', 3, '1st', '1ST', 'Active'),
(66, 2, 'Nat Sci 101', 'Earth Science', 'Lecture', 3, '1st', '1ST', 'Active'),
(67, 2, 'Hum 101', 'Art Appreciation', 'Lecture', 3, '1st', '1ST', 'Active'),
(68, 2, 'Math 101', 'College Algebra', 'Lecture', 3, '1st', '1ST', 'Active'),
(69, 2, 'CWTS 101', 'Civic Welfare 1', 'NSTP', 3, '1st', '1ST', 'Active'),
(70, 2, 'PE 101', 'Self Testing Activities', 'P.E.', 2, '1st', '1ST', 'Active'),
(71, 2, 'Eng 102', 'English Communication 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(72, 2, 'Fil 102', 'Pagbasa at Pagsulat sa Ibat-ibang Disiplina', 'Lecture', 3, '1st', '2ND', 'Active'),
(73, 2, 'Nat Sci 102', 'Biological Science', 'Lecture', 3, '1st', '2ND', 'Active'),
(74, 2, 'PS 101', 'Politics & Governance w/ Phil Constitution', 'Lecture', 3, '1st', '2ND', 'Active'),
(75, 2, 'SS 101', 'Life, Works & Writing of Rizal', 'Lecture', 3, '1st', '2ND', 'Active'),
(76, 2, 'Math 102', 'Basic Mathematics', 'Lecture', 3, '1st', '2ND', 'Active'),
(77, 2, 'ICT 101', 'Intro to Information Technology', 'Laboratory', 3, '1st', '2ND', 'Active'),
(78, 2, 'CWTS 102', 'Civic Welfare 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(79, 2, 'PE 102', 'Fundamentals of Rhythmic Activities', 'P.E.', 2, '1st', '2ND', 'Active'),
(80, 2, 'Eng 103', 'Modern Communication (Writing & Oral Comm.)', 'Lecture', 3, '2nd', '1ST', 'Active'),
(81, 2, 'Music 101', 'Fund. of Music', 'Lecture', 3, '2nd', '1ST', 'Active'),
(82, 2, 'CL 101', 'Children\'s Literature', 'Lecture', 3, '2nd', '1ST', 'Active'),
(83, 2, 'Educ 101', 'Child & Adolescent Development', 'Lecture', 3, '2nd', '1ST', 'Active'),
(84, 2, 'Educ 102', 'Educational Technology 1', 'Lecture', 3, '2nd', '1ST', 'Active'),
(85, 2, 'ICT 102', 'Computer Application', 'Laboratory', 3, '2nd', '1ST', 'Active'),
(86, 2, 'Math 103', 'Advance Algebra', 'Lecture', 3, '2nd', '1ST', 'Active'),
(87, 2, 'Math 104', 'Advance Statistics', 'Lecture', 3, '2nd', '1ST', 'Active'),
(88, 2, 'PE 103', 'Group Games', 'P.E.', 2, '2nd', '1ST', 'Active'),
(89, 2, 'Educ 103', 'Educational Technology 2', 'Lecture', 3, '2nd', '2ND', 'Active'),
(90, 2, 'Educ 104', 'Principles of Teaching', 'Lecture', 3, '2nd', '2ND', 'Active'),
(91, 2, 'Educ 105', 'Facilitating Learning', 'Lecture', 3, '2nd', '2ND', 'Active'),
(92, 2, 'Educ 106', 'The Social Dimensions of Education', 'Lecture', 3, '2nd', '2ND', 'Active'),
(93, 2, 'Lit 1', 'Philippine Literature', 'Lecture', 3, '2nd', '2ND', 'Active'),
(94, 2, 'DR 101', 'Developmental Reading 1', 'Lecture', 3, '2nd', '2ND', 'Active'),
(95, 2, 'Math 105', 'Trigonometry', 'Lecture', 3, '2nd', '2ND', 'Active'),
(96, 2, 'Math 106', 'Plane Geometry', 'Lecture', 3, '2nd', '2ND', 'Active'),
(97, 2, 'PE 104', 'Social Recreation', 'P.E.', 2, '2nd', '2ND', 'Active'),
(98, 2, 'Educ 107', 'The Teaching Profession', 'Lecture', 3, '3rd', '1ST', 'Active'),
(99, 2, 'Educ 108', 'Principles of Teaching 2', 'Lecture', 3, '3rd', '1ST', 'Active'),
(100, 2, 'Educ 109', 'Assessment of Student Learning 1', 'Lecture', 2, '3rd', '1ST', 'Active'),
(101, 2, 'Educ 110', 'Field Studies 1 & 2', 'Lecture', 3, '3rd', '1ST', 'Active'),
(102, 2, 'Educ 201', 'Logical & Critical Thinking', 'Lecture', 3, '3rd', '1ST', 'Active'),
(103, 2, 'Math 107', 'Solid Geometry', 'Lecture', 3, '3rd', '1ST', 'Active'),
(104, 2, 'Math 108', 'Probability', 'Lecture', 3, '3rd', '1ST', 'Active'),
(105, 2, 'Math 109', 'Analytic Geometry', 'Lecture', 3, '3rd', '1ST', 'Active'),
(106, 2, 'Math 110', 'Linear Algebra', 'Lecture', 3, '3rd', '1ST', 'Active'),
(107, 2, 'SS 102', 'Principles of Economics w/ TAR', 'Lecture', 3, '3rd', '2ND', 'Active'),
(108, 2, 'Educ 111', 'Assessment of Student Learning 2', 'Lecture', 3, '3rd', '2ND', 'Active'),
(109, 2, 'Educ 112', 'Field Studies 3 & 4', 'Lecture', 2, '3rd', '2ND', 'Active'),
(110, 2, 'Educ 113', 'Intro to Curriculum Development', 'Lecture', 3, '3rd', '2ND', 'Active'),
(111, 2, 'Educ 202', 'Educational Psychology', 'Lecture', 3, '3rd', '2ND', 'Active'),
(112, 2, 'Math 111', 'Number Theory', 'Lecture', 3, '3rd', '2ND', 'Active'),
(113, 2, 'Math 112', 'Modern Geometry', 'Lecture', 3, '3rd', '2ND', 'Active'),
(114, 2, 'Math 113', 'Calculus 1', 'Lecture', 3, '3rd', '2ND', 'Active'),
(115, 2, 'Math 114', 'Abstract Algebra', 'Lecture', 3, '3rd', '2ND', 'Active'),
(116, 2, 'Lit 102', 'Literature of the World', 'Lecture', 3, '4th', '1ST', 'Active'),
(117, 2, 'Math 115', 'Action Research in Math', 'Lecture', 3, '4th', '1ST', 'Active'),
(118, 2, 'Math 116', 'Calculus 2', 'Lecture', 3, '4th', '1ST', 'Active'),
(119, 2, 'Math 117', 'History of Math', 'Lecture', 3, '4th', '1ST', 'Active'),
(120, 2, 'Educ 203', 'Non-Formal Education', 'Lecture', 3, '4th', '1ST', 'Active'),
(121, 2, 'Educ 114', 'Field Studies 5 & 6', 'Lecture', 2, '4th', '1ST', 'Active'),
(122, 2, 'Educ 115', 'Special Tropics 1, 2 & 3', 'Lecture', 3, '4th', '1ST', 'Active'),
(123, 2, 'Educ 116', 'Practicum', 'Lecture', 6, '4th', '2ND', 'Active'),
(124, 1, 'Eng 1', 'English Communication 1', 'Lecture', 3, '1st', '1ST', 'Active'),
(125, 1, 'Fil 1', 'Sining ng Komunikasyon', 'Lecture', 3, '1st', '1ST', 'Active'),
(126, 1, 'Soc Sci 1', 'Philippine History', 'Lecture', 3, '1st', '1ST', 'Active'),
(127, 1, 'Math 1', 'College Algebra', 'Lecture', 3, '1st', '1ST', 'Active'),
(128, 1, 'Psycho 1', 'General Psychology', 'Lecture', 3, '1st', '1ST', 'Active'),
(129, 1, 'Comp Sci A', 'Orientation in Information Technology', 'Laboratory', 3, '1st', '1ST', 'Active'),
(130, 1, 'Comp Sci 1', 'Computer Fundamentals', 'Laboratory', 3, '1st', '1ST', 'Active'),
(131, 1, 'CWTS 101', 'Civic Welfare 1', 'NSTP', 3, '1st', '1ST', 'Active'),
(132, 1, 'PE 1', 'Self Testing Activities', 'P.E.', 2, '1st', '1ST', 'Active'),
(133, 1, 'Eng 2', 'English Communication 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(134, 1, 'Fil 2', 'Pagbasa at Pagsulat sa Ibat-ibang Disiplina', 'Lecture', 3, '1st', '2ND', 'Active'),
(135, 1, 'Math 3', 'Trigonometry/Analytical Geometry', 'Lecture', 3, '1st', '2ND', 'Active'),
(136, 1, 'Soc Sci 2', 'Basic Economics w/ TAR', 'Lecture', 3, '1st', '2ND', 'Active'),
(137, 1, 'Comp Sci B', 'Code of Ethics for Filipino IT Professionals', 'Laboratory', 3, '1st', '2ND', 'Active'),
(138, 1, 'Comp Sci 2', 'Fund. of Problem Solving & Quality Process', 'Laboratory', 3, '1st', '2ND', 'Active'),
(139, 1, 'Soc Sci 5', 'Life, Work & Writing  of Rizal', 'Lecture', 3, '1st', '2ND', 'Active'),
(140, 1, 'CWTS 102', 'Civic Welfare 2', 'NSTP', 3, '1st', '2ND', 'Active'),
(141, 1, 'PE 2', 'Fundamentals of Rhythmic Activities', 'P.E.', 2, '1st', '2ND', 'Active'),
(142, 1, 'Eng 4', 'Modern Communication 2', 'Lecture', 3, '2nd', '1ST', 'Active'),
(143, 1, 'Philo 1', 'Philosophy of Man', 'Lecture', 3, '2nd', '1ST', 'Active'),
(144, 1, 'Math 5', 'Discrete Math 1', 'Lecture', 3, '2nd', '1ST', 'Active'),
(145, 1, 'Soc Sci 4', 'Politics & Governance w/ Phil Constitution', 'Lecture', 3, '2nd', '1ST', 'Active'),
(146, 1, 'Nat Sci 4', 'Physics 1', 'Lecture', 3, '2nd', '1ST', 'Active'),
(147, 1, 'Comp Sci 3', 'Fundamentals of Programming', 'Laboratory', 3, '2nd', '1ST', 'Active'),
(148, 1, 'Comp Sci 4', 'Quality Consciousness Habit & Processes', 'Laboratory', 3, '2nd', '1ST', 'Active'),
(149, 1, 'PE 3', 'Group Games', 'P.E.', 2, '2nd', '1ST', 'Active'),
(150, 1, 'Eng 5', 'Modern Communication 3', 'Lecture', 3, '2nd', '2ND', 'Active'),
(151, 1, 'Soc Sci 6', 'Society & Culture w/ Family Planning', 'Lecture', 3, '2nd', '2ND', 'Active'),
(152, 1, 'Math 2', 'Statistics/Probability', 'Lecture', 3, '2nd', '2ND', 'Active'),
(153, 1, 'Educ 4', 'Values Education/Professional Ethics', 'Lecture', 3, '2nd', '2ND', 'Active'),
(154, 1, 'Comp Sci 5', 'Logic, Designs & Digital Computer Circuits', 'Laboratory', 3, '2nd', '2ND', 'Active'),
(155, 1, 'Comp Sci 6', 'Data Structure', 'Laboratory', 3, '2nd', '2ND', 'Active'),
(156, 1, 'PDPR', 'Personality Development & Public Relations', 'Lecture', 3, '2nd', '2ND', 'Active'),
(157, 1, 'PE 4', 'Social Recreation', 'P.E.', 2, '2nd', '2ND', 'Active'),
(158, 1, 'Lit 1', 'Literatures of the Philippines', 'Lecture', 3, '3rd', '1ST', 'Active'),
(159, 1, 'Math 6', 'Analysis 1 (Problem Solving w/ Quantity Process)', 'Lecture', 3, '3rd', '1ST', 'Active'),
(160, 1, 'Nat Sci 5', 'Physics 2', 'Lecture', 3, '3rd', '1ST', 'Active'),
(161, 1, 'Comp Sci 7', 'Principles of Programming Language', 'Laboratory', 3, '3rd', '1ST', 'Active'),
(162, 1, 'Comp Sci 8', 'Principles of File Organization', 'Laboratory', 3, '3rd', '1ST', 'Active'),
(163, 1, 'Comp Sci 9', 'Intro to Computer System Organization', 'Laboratory', 3, '3rd', '1ST', 'Active'),
(164, 1, 'Mgt 1', 'Principles of Management', 'Lecture', 3, '3rd', '1ST', 'Active'),
(165, 1, 'Lit 2', 'Literature of the World', 'Lecture', 3, '3rd', '2ND', 'Active'),
(166, 1, 'Math 7', 'Abstract Algebra', 'Lecture', 3, '3rd', '2ND', 'Active'),
(167, 1, 'Fil 3', 'Retorika', 'Lecture', 3, '3rd', '2ND', 'Active'),
(168, 1, 'Soc Sci 7', 'Introduction to Sociology', 'Lecture', 3, '3rd', '2ND', 'Active'),
(169, 1, 'Comp Sci 10', 'Operating System', 'Laboratory', 3, '3rd', '2ND', 'Active'),
(170, 1, 'Comp Sci 11', 'Electrimagmetism and Electricity', 'Laboratory', 3, '3rd', '2ND', 'Active'),
(171, 1, 'Comp Sci 12', 'Principles of Data Base Management Systems', 'Laboratory', 3, '3rd', '2ND', 'Active'),
(172, 1, 'Math 8', 'Discrete Math 2', 'Lecture', 3, '4th', '1ST', 'Active'),
(173, 1, 'Art Educ', 'Art Appreciation/Art Education', 'Lecture', 3, '4th', '1ST', 'Active'),
(174, 1, 'Comp Sci 13', 'Design Analysis of Algorithms', 'Laboratory', 3, '4th', '1ST', 'Active'),
(175, 1, 'Comp Sci 14', 'Assembly Language of C Language or Pascal', 'Laboratory', 3, '4th', '1ST', 'Active'),
(176, 1, 'Comp Sci C', 'Computer Graphics', 'Laboratory', 3, '4th', '1ST', 'Active'),
(177, 1, 'Educ 1', 'Principles and Methods of Teaching', 'Lecture', 3, '4th', '1ST', 'Active'),
(178, 1, 'Comp Sci D', 'Object Oriented Programming', 'Laboratory', 3, '4th', '1ST', 'Active'),
(179, 1, 'Math 9', 'Calculus(Differentiation & Integration, Vector & Solid Analytic Geometry)', 'Lecture', 3, '4th', '2ND', 'Active'),
(180, 1, 'Comp Sci 15', 'Technical Writing & Presentation Skills in IT', 'Laboratory', 3, '4th', '2ND', 'Active'),
(181, 1, 'Comp Sci 16', 'Computer Design', 'Laboratory', 3, '4th', '2ND', 'Active'),
(182, 1, 'Comp Sci 17', 'Theory Computation', 'Laboratory', 3, '4th', '2ND', 'Active'),
(183, 1, 'Comp Sci 18', 'Automata Theory', 'Laboratory', 3, '4th', '2ND', 'Active'),
(184, 1, 'Comp Sci 19', 'Principles of Data Communication & Networking', 'Laboratory', 3, '4th', '2ND', 'Active'),
(185, 1, 'Comp Sci E', 'Introduction to Software Engineering', 'Laboratory', 3, '4th', '2ND', 'Active'),
(190, 3, 'Eng 101', 'English Communication 1', 'Lecture', 3, '1st', '1ST', 'Active'),
(191, 3, 'Fil 1', 'Sining ng Komunikasyon', 'Lecture', 3, '1st', '1ST', 'Active'),
(192, 3, 'Hist 101', 'Philippine History', 'Lecture', 3, '1st', '1ST', 'Active'),
(193, 3, 'Psycho 1', 'General Psychology', 'Lecture', 3, '1st', '1ST', 'Active'),
(194, 3, 'Nat Sci 101', 'Earth Science', 'Lecture', 3, '1st', '1ST', 'Active'),
(195, 3, 'Hum 101', 'Art Appreciation', 'Lecture', 3, '1st', '1ST', 'Active'),
(196, 3, 'Math 101', 'Basic Mathematics', 'Lecture', 3, '1st', '1ST', 'Active'),
(197, 3, 'CWTS 101', 'Civic Welfare 1', 'NSTP', 3, '1st', '1ST', 'Active'),
(198, 3, 'PE 101', 'Self Testing Activities', 'P.E.', 2, '1st', '1ST', 'Active'),
(199, 3, 'Eng 102', 'English Communication 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(200, 3, 'Fil 2', 'Pagbasa at Pagsulat sa Ibat-ibang Disiplina', 'Lecture', 3, '1st', '2ND', 'Active'),
(201, 3, 'PS 101', 'Politics & Governance w/ Phil Constitution', 'Lecture', 3, '1st', '2ND', 'Active'),
(202, 3, 'SS 101', 'Life, Works & Writing of Rizal', 'Lecture', 3, '1st', '2ND', 'Active'),
(203, 3, 'Math 102', 'College Algebra', 'Lecture', 3, '1st', '2ND', 'Active'),
(204, 3, 'ICT 101', 'Introduction to Information Technology', 'Laboratory', 3, '1st', '2ND', 'Active'),
(205, 3, 'CWTS 102', 'Civic Welfare 2', 'NSTP', 3, '1st', '2ND', 'Active'),
(206, 3, 'PE 102', 'Fundamentals of Rhythmic Activities', 'P.E.', 2, '1st', '2ND', 'Active'),
(207, 3, 'Eng 103', 'Modern Communication (Writing & Oral Comm.)', 'Lecture', 3, '2nd', '1ST', 'Active'),
(208, 3, 'Fil 3', 'Ang Panitkang Filipino', 'Lecture', 3, '2nd', '1ST', 'Active'),
(209, 3, 'MAPEH 101', 'Fundamentals of MAPEH', 'Lecture', 3, '2nd', '1ST', 'Active'),
(210, 3, 'CL 101', 'Children\'s Literature', 'Lecture', 3, '2nd', '1ST', 'Active'),
(211, 3, 'Educ 101', 'Child & Adolescent Development', 'Lecture', 3, '2nd', '1ST', 'Active'),
(212, 3, 'Educ 102', 'Educational Technology 1', 'Lecture', 3, '2nd', '1ST', 'Active'),
(213, 3, 'ICT 102', 'Computer Applications', 'Laboratory', 3, '2nd', '1ST', 'Active'),
(214, 3, 'Math 103', 'Advance Algebra & Trigonometry', 'Lecture', 3, '2nd', '1ST', 'Active'),
(215, 3, 'PE 103', 'Group Games', 'P.E.', 2, '2nd', '1ST', 'Active'),
(216, 3, 'Educ 103', 'Educational Technology 2', 'Lecture', 3, '2nd', '2ND', 'Active'),
(217, 3, 'Educ 104', 'Principles of Teaching', 'Lecture', 3, '2nd', '2ND', 'Active'),
(218, 3, 'Educ 105', 'Facilitating Learning', 'Lecture', 3, '2nd', '2ND', 'Active'),
(219, 3, 'Educ 106', 'The Social Dimensions of Education', 'Lecture', 3, '2nd', '2ND', 'Active'),
(220, 3, 'Lit 1', 'Philippine Literature', 'Lecture', 3, '2nd', '2ND', 'Active'),
(221, 3, 'DR 101', 'Developmental Reading 1', 'Lecture', 3, '2nd', '2ND', 'Active'),
(222, 3, 'Nat Sci 103', 'Ecology', 'Lecture', 3, '2nd', '2ND', 'Active'),
(223, 3, 'Math 104', 'Plane & Solid Geometry', 'Lecture', 3, '2nd', '2ND', 'Active'),
(224, 3, 'PE 104', 'Social Recreation', 'P.E.', 2, '2nd', '2ND', 'Active'),
(225, 3, 'Educ 107', 'The Teaching Profession', 'Lecture', 3, '3rd', '1ST', 'Active'),
(226, 3, 'Educ 108', 'Principles of Teaching 2', 'Lecture', 2, '3rd', '1ST', 'Active'),
(227, 3, 'Educ 109', 'Assessment of Student Learning 1', 'Lecture', 3, '3rd', '1ST', 'Active'),
(228, 3, 'Educ 110', 'Field Studies 1 & 2', 'Lecture', 3, '3rd', '1ST', 'Active'),
(229, 3, 'Educ 201', 'Logical & Critical Thinking', 'Lecture', 3, '3rd', '1ST', 'Active'),
(230, 3, 'Math 106', 'Analytic Geometry', 'Lecture', 3, '3rd', '1ST', 'Active'),
(231, 3, 'Val Ed 101', 'Values Education 1', 'Lecture', 3, '3rd', '1ST', 'Active'),
(232, 3, 'Geo 101', 'Basic Geography', 'Lecture', 3, '3rd', '1ST', 'Active'),
(233, 3, 'Nat Sci 104', 'Inorganic Chemistry', 'Lecture', 3, '3rd', '1ST', 'Active'),
(234, 3, 'Educ 111', 'Assessment of Student Learning 2', 'Lecture', 3, '3rd', '2ND', 'Active'),
(235, 3, 'Educ 112', 'Field Studies 3 & 4', 'Lecture', 2, '3rd', '2ND', 'Active'),
(236, 3, 'Educ 113', 'Introduction to Curriculum Development', 'Lecture', 3, '3rd', '2ND', 'Active'),
(237, 3, 'Educ 202', 'Educational Psychology', 'Lecture', 3, '3rd', '2ND', 'Active'),
(238, 3, 'Math 107', 'Problem Solving', 'Lecture', 3, '3rd', '2ND', 'Active'),
(239, 3, 'NFE 101', 'Non-Formal Education', 'Lecture', 3, '3rd', '2ND', 'Active'),
(240, 3, 'Fil 104', 'Mga Anyo ng Kontemp Panitikan ng Filipino', 'Lecture', 3, '3rd', '2ND', 'Active'),
(241, 3, 'Nat Sci 105', 'Physics of Health & Science', 'Lecture', 3, '3rd', '2ND', 'Active'),
(242, 3, 'SS 102', 'Principles of Economics w/ TAR', 'Lecture', 3, '3rd', '2ND', 'Active'),
(243, 3, 'Lit 102', 'Literature of the World', 'Lecture', 3, '4th', '1ST', 'Active'),
(244, 3, 'DR 102', 'Developmental Reading 2', 'Lecture', 3, '4th', '1ST', 'Active'),
(245, 3, 'Nat Sci 106', 'Astronomy', 'Lecture', 3, '4th', '1ST', 'Active'),
(246, 3, 'GE 102', 'Geography & Natural Resources of the Phil.', 'Lecture', 3, '4th', '1ST', 'Active'),
(247, 3, 'Nat Sci 107', 'Geography Natural Resources', 'Lecture', 3, '4th', '1ST', 'Active'),
(248, 3, 'Pre Ed 101', 'Pre-School Education', 'Lecture', 3, '4th', '1ST', 'Active'),
(249, 3, 'Educ 114', 'Field Studies 5 & 6', 'Lecture', 3, '4th', '1ST', 'Active'),
(250, 3, 'Educ 115', 'Special Tropics 1, 2 & 3', 'Lecture', 2, '4th', '1ST', 'Active'),
(251, 3, 'Educ 116', 'Practicum', 'Lecture', 6, '4th', '2ND', 'Active'),
(252, 4, 'Eng 101', 'English Communication 1', 'Lecture', 3, '1st', '1ST', 'Active'),
(253, 4, 'Fil 101', 'Sining ng Komunikasyon', 'Lecture', 3, '1st', '1ST', 'Active'),
(254, 4, 'Hist 101', 'Philippine History', 'Lecture', 3, '1st', '1ST', 'Active'),
(255, 4, 'Psycho 101', 'General Psychology', 'Lecture', 3, '1st', '1ST', 'Active'),
(256, 4, 'Nat Sci 101', 'Earth Science', 'Lecture', 3, '1st', '1ST', 'Active'),
(257, 4, 'Hum 101', 'Art Appreciation', 'Lecture', 3, '1st', '1ST', 'Active'),
(258, 4, 'Math 101', 'College Algebra', 'Lecture', 3, '1st', '1ST', 'Active'),
(259, 4, 'CWTS 101', 'Civic Welfare 1', 'NSTP', 3, '1st', '1ST', 'Active'),
(260, 4, 'PE 101', 'Self Testing Activities', 'P.E.', 2, '1st', '1ST', 'Active'),
(261, 4, 'Eng 102', 'English Communication 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(262, 4, 'Fil 102', 'Pagbasa at Pagsulat sa Ibat-ibang Disiplina', 'Lecture', 3, '1st', '2ND', 'Active'),
(263, 4, 'Nat Sci 102', 'Biological Science', 'Lecture', 3, '1st', '2ND', 'Active'),
(264, 4, 'PS 101', 'Politics & Governance w/ Phil Constitution', 'Lecture', 3, '1st', '2ND', 'Active'),
(265, 4, 'SS 101', 'Life, Works & Writing of Rizal', 'Lecture', 3, '1st', '2ND', 'Active'),
(266, 4, 'Fil 103', 'Introduksyon sa Pag-aaral ng Wika', 'Lecture', 3, '1st', '2ND', 'Active'),
(267, 4, 'ICT 101', 'Intro to Information Technology', 'Laboratory', 3, '1st', '2ND', 'Active'),
(268, 4, 'CWTS 102', 'Civic Welfare 2', 'NSTP', 3, '1st', '2ND', 'Active'),
(269, 4, 'PE 102', 'Fund. of Rhythmic Activities', 'P.E.', 2, '1st', '2ND', 'Active'),
(270, 4, 'Eng 103', 'Modern Communication (Writing & Oral Comm.)', 'Lecture', 3, '2nd', '1ST', 'Active'),
(271, 4, 'Music 101', 'Fund. of Music', 'Lecture', 3, '2nd', '1ST', 'Active'),
(272, 4, 'CL 101', 'Children\'s Literature', 'Lecture', 3, '2nd', '1ST', 'Active'),
(273, 4, 'Educ 101', 'Child & Adolescent Development', 'Lecture', 3, '2nd', '1ST', 'Active'),
(274, 4, 'Educ 102', 'Educational Technology 1', 'Lecture', 3, '2nd', '1ST', 'Active'),
(275, 4, 'ICT 102', 'Computer Application', 'Laboratory', 3, '2nd', '1ST', 'Active'),
(276, 4, 'Fil 104', 'Panimulang Linggwistika', 'Lecture', 3, '2nd', '1ST', 'Active'),
(277, 4, 'Fil 105', 'Istruktura ng Wikang Filipino', 'Lecture', 3, '2nd', '1ST', 'Active'),
(278, 4, 'PE 103', 'Group Games', 'P.E.', 2, '2nd', '1ST', 'Active'),
(279, 4, 'Educ 103', 'Educational Technology 2', 'Lecture', 3, '2nd', '2ND', 'Active'),
(280, 4, 'Educ 104', 'Principles of Teaching', 'Lecture', 3, '2nd', '2ND', 'Active'),
(281, 4, 'Educ 105', 'Facilitating Learning', 'Lecture', 3, '2nd', '2ND', 'Active'),
(282, 4, 'Educ 106', 'The Social Dimensions of Education', 'Lecture', 3, '2nd', '2ND', 'Active'),
(283, 4, 'Lit 101', 'Philippine Literature', 'Lecture', 3, '2nd', '2ND', 'Active'),
(284, 4, 'DR 101', 'Developmental Reading 1', 'Lecture', 3, '2nd', '2ND', 'Active'),
(285, 4, 'Fil 106', 'Pagtuturo at Pagtatayasa sa Pakikinig at Pagsasalita', 'Lecture', 3, '2nd', '2ND', 'Active'),
(286, 4, 'Fil 107', 'Pagtuturo at Pagtatayasa sa Pagbasa at Pagsulat', 'Lecture', 3, '2nd', '2ND', 'Active'),
(287, 4, 'PE 104', 'Social Recreation', 'P.E.', 2, '2nd', '2ND', 'Active'),
(288, 4, 'Educ 107', 'The Teaching Profession', 'Lecture', 3, '3rd', '1ST', 'Active'),
(289, 4, 'Educ 108', 'Principles of Teaching 2', 'Lecture', 3, '3rd', '1ST', 'Active'),
(290, 4, 'Educ 109', 'Assessment of Student Learning 1', 'Lecture', 3, '3rd', '1ST', 'Active'),
(291, 4, 'Educ 110', 'Field Studies 1 & 2', 'Lecture', 2, '3rd', '1ST', 'Active'),
(292, 4, 'Educ 201', 'Logical & Critical Thinking', 'Lecture', 3, '3rd', '1ST', 'Active'),
(293, 4, 'Fil 108', 'Introduksyon sa Pagsasalin', 'Lecture', 3, '3rd', '1ST', 'Active'),
(294, 4, 'Fil 109', 'Introduksyon sa Pananaliksik Wika at Panitikan', 'Lecture', 3, '3rd', '1ST', 'Active'),
(295, 4, 'Fil 110', 'Introduksyon sa Pamamahayag', 'Lecture', 3, '3rd', '1ST', 'Active'),
(296, 4, 'Fil 111', 'Panitikan ng Rehiyon', 'Lecture', 3, '3rd', '1ST', 'Active'),
(297, 4, 'SS 102', 'Principles of Economics w/ TAR', 'Lecture', 3, '3rd', '2ND', 'Active'),
(298, 4, 'Educ 111', 'Assessment of Student Learning 2', 'Lecture', 3, '3rd', '2ND', 'Active'),
(299, 4, 'Educ 112', 'Field Studies 3 & 4', 'Lecture', 2, '3rd', '2ND', 'Active'),
(300, 4, 'Educ 113', 'Introduction to Curriculum Development', 'Lecture', 3, '3rd', '2ND', 'Active'),
(301, 4, 'Educ 202', 'Educational Psychology', 'Lecture', 3, '3rd', '2ND', 'Active'),
(302, 4, 'Fil 112', 'Kulturang Popular', 'Lecture', 3, '3rd', '2ND', 'Active'),
(303, 4, 'Fil 113', 'Sanaysay at Talumpati', 'Lecture', 3, '3rd', '2ND', 'Active'),
(304, 4, 'Fil 114', 'Panunuring Pampanitikan', 'Lecture', 3, '3rd', '2ND', 'Active'),
(305, 4, 'Fil 115', 'Maikling Kwentong Filipino', 'Lecture', 3, '3rd', '2ND', 'Active'),
(306, 4, 'Lit 102', 'Literature of the World', 'Lecture', 3, '4th', '1ST', 'Active'),
(307, 4, 'Fil 116', 'Panulaang Filipino', 'Lecture', 3, '4th', '1ST', 'Active'),
(308, 4, 'Fil 117', 'Pagbasa ng mga Obra Maestrang Pilipino', 'Lecture', 3, '4th', '1ST', 'Active'),
(309, 4, 'Fil 118', 'Pagtuturo at Pagtataya sa Panitikan', 'Lecture', 3, '4th', '1ST', 'Active'),
(310, 4, 'Educ 203', 'Non-Formal Education', 'Lecture', 3, '4th', '1ST', 'Active'),
(311, 4, 'Educ 114', 'Field Studies 5 & 6', 'Lecture', 2, '4th', '1ST', 'Active'),
(312, 4, 'Educ 115', 'Special Tropics 1, 2 & 3', 'Lecture', 3, '4th', '1ST', 'Active'),
(313, 4, 'Educ 116', 'Practicum', 'Lecture', 6, '4th', '2ND', 'Active'),
(314, 6, 'Eng 101', 'English Communication 1', 'Lecture', 3, '1st', '1ST', 'Active'),
(315, 6, 'Fil 101', 'Sining ng Komunikasyon', 'Lecture', 3, '1st', '1ST', 'Active'),
(316, 6, 'Hist 101', 'Philippine History', 'Lecture', 3, '1st', '1ST', 'Active'),
(317, 6, 'Math 101', 'College Algebra', 'Lecture', 3, '1st', '1ST', 'Active'),
(318, 6, 'Nat Sci 101', 'Earth Science', 'Lecture', 3, '1st', '1ST', 'Active'),
(319, 6, 'Hum 101', 'Art Appreciation', 'Lecture', 3, '1st', '1ST', 'Active'),
(320, 6, 'Psycho 101', 'General Psychology', 'Lecture', 3, '1st', '1ST', 'Active'),
(321, 6, 'CWTS 101', 'Civic Welfare 1', 'NSTP', 3, '1st', '1ST', 'Active'),
(322, 6, 'PE 101', 'Self Testing Activities', 'P.E.', 3, '1st', '1ST', 'Active'),
(323, 6, 'Eng 102', 'English Communication 2', 'Lecture', 3, '1st', '2ND', 'Active'),
(324, 6, 'Fil 102', 'Pagbasa at Pagsulat sa Ibat-ibang Disiplina', 'Lecture', 3, '1st', '2ND', 'Active'),
(325, 6, 'Nat Sci 102', 'Biological Science', 'Lecture', 3, '1st', '2ND', 'Active'),
(326, 6, 'PS 101', 'Politics & Governance w/ Phil Constitution', 'Lecture', 3, '1st', '2ND', 'Active'),
(327, 6, 'SS 101', 'Life, Works & Writing of Rizal', 'Lecture', 3, '1st', '2ND', 'Active'),
(328, 6, 'Science 101', 'Science, Technology & Society', 'Lecture', 3, '1st', '2ND', 'Active'),
(329, 6, 'ICT 101', 'Introduction to Information Technology', 'Laboratory', 3, '1st', '2ND', 'Active'),
(330, 6, 'CWTS 102', 'Civic Welfare 2', 'NSTP', 3, '1st', '2ND', 'Active'),
(331, 6, 'PE 102', 'Fundamentals of Rhythmic Activities', 'P.E.', 2, '1st', '2ND', 'Active'),
(332, 6, 'Eng 103', 'Modern Communication (Writing & Oral Comm.)', 'Lecture', 3, '2nd', '1ST', 'Active'),
(333, 6, 'Fil 3', 'Ang Panitikang Filipino', 'Lecture', 3, '2nd', '1ST', 'Active'),
(334, 6, 'Music 101', 'Fund. of Music', 'Lecture', 3, '2nd', '1ST', 'Active'),
(335, 6, 'CL 101', 'Children\'s Literature', 'Lecture', 3, '2nd', '1ST', 'Active'),
(336, 6, 'Educ 101', 'Child & Adolescent Development', 'Lecture', 3, '2nd', '1ST', 'Active'),
(337, 6, 'Educ 102', 'Educational Technology 1', 'Lecture', 3, '2nd', '1ST', 'Active'),
(338, 6, 'Science 102', 'General Zoology', 'Lecture', 5, '2nd', '1ST', 'Active'),
(339, 6, 'PE 103', 'Group Games', 'P.E.', 2, '2nd', '1ST', 'Active'),
(340, 6, 'Educ 103', 'Educational Technology 2', 'Lecture', 3, '2nd', '2ND', 'Active'),
(341, 6, 'Educ 104', 'Principles of Teaching', 'Lecture', 3, '2nd', '2ND', 'Active'),
(342, 6, 'Educ 105', 'Facilitating Learning', 'Lecture', 3, '2nd', '2ND', 'Active'),
(343, 6, 'Educ 106', 'The Social Dimensions of Education', 'Lecture', 3, '2nd', '2ND', 'Active'),
(344, 6, 'Lit 101', 'Philippine Literature', 'Lecture', 3, '2nd', '2ND', 'Active'),
(345, 6, 'DR 101', 'Developmental Reading 1', 'Lecture', 3, '2nd', '2ND', 'Active'),
(346, 6, 'Science 103', 'General Botany', 'Lecture', 5, '2nd', '2ND', 'Active'),
(347, 6, 'PE 104', 'Social Recreation', 'P.E.', 2, '2nd', '2ND', 'Active'),
(348, 6, 'Educ 107', 'The Teaching Profession', 'Lecture', 3, '3rd', '1ST', 'Active'),
(349, 6, 'Educ 108', 'Principles of Teaching 2', 'Lecture', 3, '3rd', '1ST', 'Active'),
(350, 6, 'Educ 109', 'Assessment of Student Learning 1', 'Lecture', 3, '3rd', '1ST', 'Active'),
(351, 6, 'Educ 110', 'Field Studies 1 & 2', 'Lecture', 2, '3rd', '1ST', 'Active'),
(352, 6, 'Educ 201', 'Logical & Critical Thinking', 'Lecture', 3, '3rd', '1ST', 'Active'),
(353, 6, 'Science 104', 'History & Philisophy of Science', 'Lecture', 3, '3rd', '1ST', 'Active'),
(354, 6, 'Science 105', 'General & Inorganic Chemistry', 'Lecture', 5, '3rd', '1ST', 'Active'),
(355, 6, 'Science 106', 'Cell Biology', 'Lecture', 3, '3rd', '1ST', 'Active'),
(356, 6, 'SS 102', 'Principles of Economics w/ TAR', 'Lecture', 3, '3rd', '2ND', 'Active'),
(357, 6, 'Educ 111', 'Assessment of Student Learning 2', 'Lecture', 3, '3rd', '2ND', 'Active'),
(358, 6, 'Educ 112', 'Field Studies 3 & 4', 'Lecture', 2, '3rd', '2ND', 'Active'),
(359, 6, 'Educ 113', 'Intro to Curriculum Development', 'Lecture', 3, '3rd', '2ND', 'Active'),
(360, 6, 'Educ 202', 'Educational Psychology', 'Lecture', 3, '3rd', '2ND', 'Active'),
(361, 6, 'Science 107', 'Organic Chemistry', 'Lecture', 5, '3rd', '2ND', 'Active'),
(362, 6, 'Science 108', 'General Ecology', 'Lecture', 5, '3rd', '2ND', 'Active'),
(363, 6, 'Science 109', 'Biotechniques', 'Lecture', 3, '3rd', '2ND', 'Active'),
(364, 6, 'Lit 102', 'Literature of the World', 'Lecture', 3, '4th', '1ST', 'Active'),
(365, 6, 'Educ 203', 'Non-Formal Education', 'Lecture', 3, '4th', '1ST', 'Active'),
(366, 6, 'Educ 114', 'Field Studies 5 & 6', 'Lecture', 2, '4th', '1ST', 'Active'),
(367, 6, 'Educ 118', 'Special Tropics 1, 2 & 3', 'Lecture', 3, '4th', '1ST', 'Active'),
(368, 6, 'Science 110', 'Microbiology', 'Lecture', 5, '4th', '1ST', 'Active'),
(369, 6, 'Science 111', 'Genetics', 'Lecture', 4, '4th', '1ST', 'Active'),
(370, 6, 'Science 112', 'Physics for Health Science', 'Lecture', 3, '4th', '1ST', 'Active'),
(371, 6, 'Science 113', 'Anatomy & Physiology', 'Lecture', 4, '4th', '1ST', 'Active'),
(372, 6, 'Educ 116', 'Practicum', 'Lecture', 6, '4th', '2ND', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `timeSlotID` int(11) NOT NULL,
  `dayOfWeek` varchar(10) NOT NULL,
  `startTime` varchar(50) NOT NULL,
  `endTime` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`timeSlotID`, `dayOfWeek`, `startTime`, `endTime`, `status`) VALUES
(1, 'M&W', '08:00', '09:30', 'Active'),
(2, 'M&W', '9:40', '11:10', 'Active'),
(4, 'M&W', '11:20', '12:50', 'Active'),
(5, 'M&W', '13:00', '14:30', 'Active'),
(6, 'M&W', '14:40', '16:10', 'Active'),
(7, 'M&W', '16:20', '17:50', 'Active'),
(8, 'M&W', '18:00', '19:30', 'Active'),
(9, 'T&TH', '8:00', '9:30', 'Active'),
(10, 'T&TH', '9:40', '11:10', 'Active'),
(11, 'T&TH', '11:20', '12:50', 'Active'),
(12, 'T&TH', '13:00', '14:30', 'Active'),
(13, 'T&TH', '14:40', '16:10', 'Active'),
(14, 'T&TH', '16:20', '17:50', 'Active'),
(15, 'T&TH', '18:00', '19:30', 'Active'),
(17, 'F', '8:00', '9:30', 'Active'),
(18, 'F', '9:40', '11:10', 'Active'),
(19, 'F', '11:20', '12:50', 'Active'),
(20, 'F', '13:00', '14:30', 'Active'),
(21, 'F', '14:40', '16:10', 'Active'),
(22, 'F', '16:20', '17:50', 'Active'),
(23, 'F', '18:00', '19:30', 'Active'),
(24, 'S', '8:00', '9:30', 'Active'),
(25, 'S', '9:40', '11:10', 'Active'),
(26, 'S', '11:20', '12:50', 'Active'),
(27, 'S', '13:00', '14:30', 'Active'),
(28, 'S', '14:40', '16:10', 'Active'),
(29, 'S', '16:20', '17:50', 'Active'),
(30, 'S', '18:00', '19:30', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userIDNo` int(11) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `userLN` varchar(50) NOT NULL,
  `userFN` varchar(50) NOT NULL,
  `userMN` varchar(50) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPassword` varchar(300) NOT NULL,
  `userMobile` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `courseID` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `age` tinyint(4) NOT NULL,
  `birthplace` varchar(150) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `civstat` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `addcity` varchar(150) NOT NULL,
  `addprov` varchar(150) DEFAULT NULL,
  `elemschool` varchar(50) NOT NULL,
  `secschool` varchar(50) NOT NULL,
  `tertschool` varchar(50) NOT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `relation` varchar(30) DEFAULT NULL,
  `fathername` varchar(100) NOT NULL,
  `fatherocc` varchar(50) NOT NULL,
  `mothername` varchar(100) NOT NULL,
  `motherocc` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `datemodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userIDNo`, `userTypeID`, `userLN`, `userFN`, `userMN`, `userEmail`, `userPassword`, `userMobile`, `status`, `courseID`, `birthdate`, `age`, `birthplace`, `gender`, `civstat`, `nationality`, `religion`, `addcity`, `addprov`, `elemschool`, `secschool`, `tertschool`, `guardian`, `relation`, `fathername`, `fatherocc`, `mothername`, `motherocc`, `dateadded`, `datemodified`) VALUES
(1, 1, 1, 'Kho', 'Hidden', 'Que', 'hiddenkho@outlook.com', '$2y$10$1/4ENc8h6Ske/jBSk9sqiedU2SSMEvr94ptBT5GnaoQ2yToQP30Ye', '(0917)000-0001', 'Active', 0, '1980-02-07', 37, 'Metro Manila', 'Male', 'Married', 'Filipino', 'Catholic', 'Pasay City', 'N/A\r\n', 'sample', 'sample', 'sample', 'mike', 'cousin', 'Lyold', 'sample', 'Elizabeth', 'sample', '2018-01-18 09:52:14', NULL),
(2, 2, 1, 'Dallas', 'Israel', 'Quinones', 'mangkaknorr@outlook.com', '$2y$10$RE3xMvuTunnyVS1OraGVKeLEcm9ePtkhmphnvhh1J9J.tkusjVxx6', '(0917)000-0002', 'Active', 0, '1978-07-13', 39, 'Masbate', 'Female', 'Married', 'Filipino', 'Catholic', 'Metro Manila', 'Masbate', 'sample', 'sample', 'sample', 'anton', 'uncle', 'john', 'farmer', 'lyza', 'store owner', '2018-01-18 09:58:07', NULL),
(3, 3, 1, 'Hernandez', 'Shea', 'Acebedo', 'cheatermirienda@outlook.com', '$2y$10$dIEA7hfykoclxuC4gyoKW.AH8kRF3DRlfFyYe613lVX80LsDov9ba', '(0017)000-0003', 'Active', 0, '1982-11-12', 35, 'Metro Manila', 'Female', 'Married', 'Filipino', 'Catholic', 'Paranaque', 'N/A', 'sample', 'sample', 'sample', 'Anna', 'Nanny', 'Lucas', 'mechanics', 'ryza', 'call center', '2018-01-18 10:02:33', NULL),
(4, 1801, 4, 'Luciano', 'Catherine', 'Aquino', 'catherinejalili@outlook.com', '$2y$10$GJQDSPkLXqqGXsDZXpCF/uUth.i.iwQNutweTU7zanajknQpDt3EC', '(0917)000-0004', 'Active', 0, '1986-08-12', 31, 'Metro Manila', 'Female', 'Single', 'Filipino', 'Catholic', 'Las Pinas', 'N/A', 'sample', 'sample', 'sample', 'Juan', 'Cousin', 'Noel', 'Store Owner', 'Jen', 'store owner', '2018-01-18 10:07:50', NULL),
(5, 1802, 4, 'Legazpi', 'Franco', 'Dacudag', 'zsazsagrain@outlook.com', '$2y$10$.UJs18GxNyyKShh5a2cszu16NOKBdk.Nbwxvb7u0qGyMzP3g91UMS', '(0917)000-0005', 'Active', 0, '1983-07-13', 34, 'metro manila', 'Male', 'Married', 'Filipino', 'Catholic', 'malabon', 'n/a', 'sample', 'sample', 'sample', 'Analiza', 'Grand Mother', 'henry', 'officer', 'jean', 'teacher', '2018-01-18 10:15:08', NULL),
(6, 1803, 4, 'Dimaunahan', 'stanley', 'Gordon', 'hugejackedman@outlook', '$2y$10$aKde.eH4jYxBGGUctCF3zeh2lP1P87jX8/ojflNzWrf5F3qb5lwu6', '(0917)000-0006', 'Active', 0, '1984-04-18', 33, 'metro manila', 'Male', 'Single', 'Filipino', 'Catholic', 'quezon', 'n/a', 'sample', 'sample', 'sample', 'none', 'none', 'sean', 'Computer analysts', 'nadine', 'Shoe maker', '2018-01-18 10:19:59', NULL),
(7, 20181001, 2, 'Razon', 'Perry', 'Espana', 'williebayolie@outlook.com', '$2y$10$/VSDt/CspN.tDUYeo50EQ.D00yT09SGi7F//iYpbiaF8He3B369r2', '(0917)000-0007', 'Active', 0, '1974-07-12', 43, 'Iloilo', 'Female', 'Married', 'Filipino', 'Catholic', 'manila', 'iloilo', 'sample', 'sample', 'sample', 'Tony', 'Brother', 'Kaden', 'farmer', 'Sally', 'housewife', '2018-01-18 12:29:43', NULL),
(8, 20181002, 2, 'Arabejo', 'Natalio', 'Dumlao', 'broadpete@outlook.com', '$2y$10$DlFH2SJeoG2qs5SoNk1WTOnWtE.l7mAdV0YCKXu9guolQvlgk0Lhu', '(0917)000-0008', 'Active', 0, '1990-09-05', 27, 'Metro Manila', 'Male', 'Single', 'Filipino', 'Catholic', 'Pasig City', 'n/a', 'sample', 'sample', 'sample', 'Theo', 'Father', 'Theo', 'Teacher', 'Elvita', 'Nurse', '2018-01-18 12:33:59', NULL),
(9, 20181003, 2, 'Peterson', 'Abby', 'Alejo', 'roadtheedothirteen@outlook.com', '$2y$10$7u05rv82tq1RIrnnPlZrv.tkCXrFJvE6bYI5vs2d0WLWEanuDRSWe', '(0917)000-0009', 'Active', 0, '1987-02-11', 30, 'Metro Manila', 'Female', 'Married', 'Filipino', 'Catholic', 'Manila', 'n/a', 'sample', 'sample', 'sample', 'Harry', 'Cousin', 'Stephen', 'Broadcaster', 'Gail', 'Librarian', '2018-01-18 12:38:14', NULL),
(10, 20181004, 2, 'Roxas', 'Leah', 'Quiason', 'antoniusthrillianus@outlook.com', '$2y$10$3ptLlMqF23MdqNtIVjy.6OIt30Un.kxSq1s.XgeDZ3RbJexH1zjIC', '(0917)000-0010', 'Active', 0, '1966-08-07', 51, 'Metro Manila', 'Female', 'Married', 'Filipino', 'Evangelical', 'Manila', 'n/a', 'sample', 'sample', 'sample', 'Jerry', 'Cousin', 'Sam', 'Architect', 'Martha', 'Designer', '2018-01-18 12:50:14', NULL),
(11, 20181005, 2, 'Salvador', 'Ronaldo', 'Omar', 'robbingpaddillus@gmail.com', '$2y$10$AzJGYLx3ixb9u2joc1KsMOCZ/dYkv3iz7q9jQAElMqsypVNzm3HuS', '(0917)000-0011', 'Active', 0, '1980-12-29', 37, 'Metro Manila', 'Male', 'Married', 'Filipino', 'Catholic', 'Quezon City', 'n/a', 'sample', 'sample', 'sample', 'Jake', 'Brother', 'Marcel', 'Journalist', 'Elsa', 'Store Owner', '2018-01-18 13:28:09', NULL),
(12, 20181006, 2, 'Ortega', 'Elisa', 'Fajardo', 'dannietargaryano@gmail.com', '$2y$10$LAOqD4UEARfHJaqzCFOO5.vmp3HcsENWMkfweQyBDySTF1rdmUZZe', '(0917)000-0012', 'Active', 0, '1988-04-27', 29, 'Leyte', 'Female', 'Married', 'Filipino', 'Catholic', 'Manila', 'Leyte', 'sample', 'sample', 'sample', 'Rey', 'Brother', 'Zion', 'Artist', 'Catalina', 'Artist', '2018-01-18 13:39:51', NULL),
(13, 20181007, 2, 'Moreno', 'Simon', 'Davis', 'itimnabalo@gmail.com', '$2y$10$ptQE.9enO/NS9Q75XNBJh.OwS3ir1FfmetxAwSsCVAROFcglwVHS.', '(0917)000-0013', 'Active', 0, '1990-03-31', 27, 'Metro Manila', 'Male', 'Single', 'Filipino', 'Evangelical', 'Manila', 'n/a', 'sample', 'sample', 'sample', 'Analiza', 'Mother', 'Hernando', 'Teacher', 'Analiza', 'Teacher', '2018-01-18 13:43:50', NULL),
(14, 20181008, 2, 'Arcega', 'Emesta', 'Camat', 'iskarlatangbruha@gmail.com', '$2y$10$WcHGEiOUvVDgsjE2g0ELC.RxCTRhX5DbLzkBOoff.XS7vrKnZdHEi', '(0917)000-0014', 'Active', 0, '1990-08-30', 27, 'Metro Manila', 'Female', 'Single', 'Filipino', 'Evangelical', 'Manila', 'n/a', 'sample', 'sample', 'sample', 'Belicia', 'Mother', 'Marcos', 'mechanics', 'Maria', 'Analyst', '2018-01-18 14:33:08', NULL),
(15, 20181009, 2, 'Fernandez', 'Ryan', 'Lacson', 'vicksuetoe321@gmail.com', '$2y$10$OQpGMBnyvgRI2zKUxoN9aOIMa8IbUTBW/NT1Oaa4llGmAmLjA.rfm', '(0917)000-0015', 'Active', 0, '1981-11-28', 36, 'Metro Manila', 'Male', 'Married', 'Filipino', 'Catholic', 'Manila', 'n/a', 'sample', 'sample', 'sample', 'Henry', 'Father', 'Henry', 'Optalmologist', 'Jane', 'Nurse', '2018-01-18 14:38:07', NULL),
(16, 20181010, 2, 'Pavia', 'Marilyn', 'Daplas', 'ianmanoy24@yahoo.com', '$2y$10$aNIcpgKMpnfRorG6luaQW.PxLlqVGM79eaMs7WF3Jr.zHO8hbCUhq', '(0917)000-0016', 'Active', 0, '1988-08-01', 29, 'Cebu', 'Female', 'Married', 'Filipino', 'Catholic', 'Manila', 'Cebu', 'sample', 'sample', 'sample', 'Athena', 'Sister', 'Alfredo', 'Farmer', 'Sandra', 'store owner', '2018-01-18 14:50:55', NULL),
(17, 11810001, 3, 'Blake', 'Ian', 'Veneracion', 'ianmanoy24@yahoo.com', '$2y$10$A96ICsumikc8O8DOO/3.cO3Fp8G.hAckH3V/kXgZdNJ.t6UWl30.K', '(0926)010-1010', 'Active', 5, '1998-07-12', 19, 'St Luke\'s Hospital', 'Male', 'Single', 'Filipino', 'Catholic', 'Binondo Manila', '', 'Mamburao Central School', 'Sample', 'Sample', '', '', 'Kiko Magalona', 'Rapper', 'Michaela Baldos', 'Housewife', '2018-01-19 09:37:59', NULL),
(18, 11810002, 3, 'Sanchez', 'Victoria', 'Lopez', 'victorsanchz416@yahoo.com', '$2y$10$LW78zDXeaJsqenPtmUa4xuW6hfR2ckCWO5bPbEMA7PtkOhrWnh7gW', '(0995)012-5354', 'Active', 2, '1995-06-13', 22, 'UST Hospital', 'Female', 'Single', 'Filipino', 'Christian', 'Sta. Cruz Manila', '', 'Sample', 'Sample', 'Sample', '', '', 'Mike Enriquez', 'Reporter', 'Jessica Soho', 'Reporter', '2018-01-19 09:42:18', NULL),
(19, 11810003, 3, 'Go', 'Troy', 'Tan', 'troymanoi69@yahoo.com', '$2y$10$oDwYkLlVlgzxnc9/RFbIq.9vvykDr7JBsXXroq2TotmfpJiJh4MW2', '(0995)613-5421', 'Active', 3, '1997-05-28', 20, 'Philippine General Hospital', 'Male', 'Single', 'Chinese', 'Buddhism', 'Bonifacio Global City Taguig, Manila', '', 'Sample Data', 'Sample Data', 'Sample Data', '', '', 'Henry Sy', 'Chinese Mogul', 'Korina Sanchez', 'Reporter', '2018-01-19 09:44:58', NULL),
(20, 11810004, 3, 'Ong', 'Beper', 'Clenista', 'beper.ong@benilde.edu.ph', '$2y$10$AOebJRgvwb/e5MqJLrxvr.3oSrsANpSesDw2lMnABMR3flmHRgeCe', '(0926)047-2440', 'Active', 5, '1995-02-27', 22, 'Mamburao Occidental Mindoro provincial hospital', 'Male', 'Single', 'Filipino', 'Catholic', 'Sto. Cristo Street Binondo Manila\r\n', '', 'Mamburao Central School', 'Occidental Mindoro National Highschool', 'Occidental Mindoro National Highschool', '', '', 'Bernabe Ong', 'Businessman', 'Perla Ong', 'Businesswoman', '2018-01-19 09:46:50', NULL),
(21, 11810005, 3, 'Zaguirre', 'Sheila Mae', 'Polhen', 'sheila.zaguirre@benilde.edu.ph', '$2y$10$3q1rzgxiZsGM.Dlb./VS0uTF/gW9Y34zcZ1QOHZUEuLvLP1pOColS', '(0915)905-0303', 'Active', 4, '1997-11-13', 20, 'San Juan de Dios general Hospital', 'Female', 'Single', 'Chinese', 'Catholic', 'Pasay City', '', 'Gideon Academy', 'Gideon Academy', 'DLS-CSB', '', '', 'James Zaguirre', 'Businessman', 'Lilibeth Zaguirre', 'Store owner', '2018-01-19 09:49:43', NULL),
(22, 11810006, 3, 'Pascual', 'Shaun Xavier', 'Gideon', 'shaunxavierpascual@gmail.com', '$2y$10$v3R8.ftBWyl1GZlaQHUpCONYBjQ8yh0xWWlGHJNJFkaW8v.H/ySQO', '(0915)151-5151', 'Active', 6, '1996-10-13', 21, 'Chinese General Hospital', 'Male', 'Single', 'Filipino', 'Catholic', 'Navotas City', '', 'GAPC', 'GAPC', 'Sample', '', '', 'Michael Jordan', 'Basketball Legend', 'Oprah Winfrey', 'Smile giver', '2018-01-19 09:52:18', NULL),
(23, 11810007, 3, 'Villanueva', 'Miko', 'Ganda', 'mikovillanueva96@gmail.com', '$2y$10$ERrEDdJev7Q2OLmsDqTkVuLRyMz8q6dXFJpY0Y8IbYXCxDbBNQbJK', '(0915)161-1300', 'Active', 1, '1996-02-15', 21, 'Sample', 'Male', 'Single', 'Filipino', 'Catholic', 'Sample\r\n', '', 'Gideon Academy', 'Sample', 'DLS-CSB', '', '', 'Manny Pacquiao', 'Boxer', 'Kris Aquino', 'Host', '2018-01-19 09:54:31', NULL),
(24, 11810008, 3, 'Ozawa', 'Maria', 'Sample', 'marialim675@yahoo.com', '$2y$10$UnySz/41TYogJPXsG05sQuZC.8/VkLLveaaHItuzy4nPuariKoqZm', '(0915)222-2151', 'Active', 3, '1997-05-14', 20, 'Sample', 'Female', 'Single', 'Filipino', 'Catholic', 'Sample\r\n', '', 'Sample', 'Sample', 'Sample', '', '', 'Ralph Comia', 'None', 'Julienna Santos', 'Developer', '2018-01-19 09:56:24', NULL),
(25, 11810009, 3, 'James', 'Lebron', 'Brown', 'jameslebron41@outlook.com', '$2y$10$OlTdbbG40dmFhe5hMOoTveAiN.WRHOy9argdgOeAQs78LxVT9U.Xi', '(0999)158-7563', 'Active', 4, '1997-02-15', 20, 'Sample', 'Male', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'James Senior', 'Basketball player', 'Lilybeth Comia', 'Store owner', '2018-01-19 09:59:21', NULL),
(26, 11810010, 3, 'Santos', 'Julienne', 'Limpin', 'johnmor556@yahoo.com', '$2y$10$a4Xqre5v6nmF07vzPcOGpe.nq9KuU.BwoDY14.ssfPsV0NrgfSFpC', '(0915)678-4954', 'Active', 2, '1995-01-26', 22, 'Sample', 'Female', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Julio Santos', 'Seaman', 'Jane Santos', 'Housewife', '2018-01-19 10:02:52', NULL),
(27, 11810011, 3, 'Comia', 'Ralph', 'Gavan', 'mikejordan64@outlook.com', '$2y$10$4HnNMw2U6048sWfWQrvLMu1Fn95uKk582eHmQSf51Y775e8j/dLkO', '(0915)624-8103', 'Active', 2, '1996-01-08', 22, 'Sample', 'Male', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Manny Comia', 'OFW', 'Mandy Comia', 'OFW', '2018-01-19 10:05:53', NULL),
(28, 11810012, 3, 'Valmeo', 'Bianca', 'Teng', 'irvingkyrie32@outlook.com', '$2y$10$HPZ.rRspRa/PDzQ80Xz/C.TPefPlvdJFdIZMa8ksI1.fl/FhEWAU6', '(0916)842-6849', 'Active', 6, '1995-02-15', 22, 'Sample', 'Female', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Blake Valmeo', 'Cashier', 'Joan Valmeo', 'Architech', '2018-01-19 10:07:44', NULL),
(29, 11810013, 3, 'Talimban', 'Bea', 'Supot', 'stephcarry1@outlook.com', '$2y$10$PbFFtPqAtk0X1j/BgyXz3u2MnJo7BDHNntUzc7qba26ClyEThp1Le', '(0915)846-9555', 'Active', 1, '1996-03-16', 21, 'Sample', 'Female', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'John Talimban', 'Engineer', 'Joan Talimban', 'Teacher', '2018-01-19 10:11:11', NULL),
(30, 11810014, 3, 'Estera', 'Gian', 'Baldoza', 'junanaksjanah@yahoo.com', '$2y$10$3cJLyEdCXZDOnwOJuHGUD.tBdZFxUTzHfv2B830YGIep9jZKLmjHK', '(0915)984-6222', 'Active', 3, '1996-12-15', 21, 'Sample', 'Female', 'Single', 'Filipino', 'Catholic', 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', '', '', 'Jonathan Estera', 'Oil producer', 'Caroline Estera', 'Cashier', '2018-01-19 10:13:48', NULL),
(31, 11810015, 3, 'Tuazon', 'Paul', 'Mercedez', 'angelovillanueva1@outlook.com', '$2y$10$UmB2LYfWMuY9.qnB2wg.oevaA8.yyzYc99CpXFeObWDyaacL.iZ7W', '(0915)684-9994', 'Active', 3, '1997-02-28', 20, 'Sample', 'Male', 'Single', 'Filipino', 'Catholic', 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', '', '', 'Michael Tuazon', 'Construction worker', 'Maja Tuazon', 'Social media ambassador', '2018-01-19 10:17:04', NULL),
(32, 11810016, 3, 'Hernando', 'Alexa', 'Sy', 'mangkaknorr@gmail.com', '$2y$10$gzNvN9OQr7DzZNotwoZxOO32hnr/BDyNe/NX5kX9L6ZXLZ3EEFAGi', '(0915)874-8933', 'Active', 4, '1999-09-25', 18, 'Sample', 'Male', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Felix Hernando', 'Engineer', 'Theresa Hernando', 'Housewife', '2018-01-19 10:31:00', NULL),
(33, 11810017, 3, 'Remulla', 'Jionna', 'Ong', 'mangka.knorr@yahoo.com', '$2y$10$eceIAyosl9vcQ5s7iBrhD.47bobNy/.2hikPaPi5I1OizprO8v8z6', '(0916)849-6288', 'Active', 6, '1996-02-16', 21, 'Sample', 'Male', 'Single', 'Filipino', 'Christian', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Nikko Remulla', 'Policeman', 'Tintin Remulla', 'Nurse', '2018-01-19 10:49:41', NULL),
(34, 11810018, 3, 'Su', 'Samantha', 'Supsop', 'cheatermirienda@gmail.com', '$2y$10$t9Va92BKP24mBbDr18kTQuSd0c24tRifPSBKAu4CU3BCuoAogc0ge', '(0956)842-9233', 'Active', 2, '1997-05-15', 20, 'Sample', 'Female', 'Single', 'Filipino', 'Catholic', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Ramon Su', 'Store Owner', 'Sheila Su', 'Petshop Owner', '2018-01-19 10:52:16', NULL),
(35, 11810019, 3, 'Magsaysay', 'Joseph', 'Sy', 'cheatermirienda@yahoo.com', '$2y$10$LdrNY8mysOPwxTm1f9b7m.lKUtDPplkcMgxI87HkMRCmvNoJHsYDa', '(0915)974-6222', 'Active', 5, '1996-02-29', 21, 'Sample', 'Male', 'Single', 'Chinese', 'Christian', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Ralph Magsaysay', 'Gardener', 'Felicia Magsaysay', 'Dentist', '2018-01-19 10:54:33', NULL),
(36, 11810020, 3, 'Filipinas', 'Luzviminda', 'Asia', 'hiddenkho3039@gmail.com', '$2y$10$.2SgrXOAfNEU7uCwxBWpaO37O.64pTdmbv.pDlrJ101Lc6l8hNF3S', '(0916)849-9211', 'Active', 1, '1997-10-17', 20, 'Sample', 'Female', 'Single', 'Filipino', 'Christian', 'Sample', '', 'Sample', 'Sample', 'Sample', '', '', 'Henrico Filipinas', 'Governor', 'Lucia Filipinas', 'Assistant Brand Manager', '2018-01-19 10:58:01', NULL),
(37, 11810021, 3, 'Ang', 'Aaron', 'Bacong', 'aaron12@gmail.com', '$2y$10$f2b1Wq6gX9TjQuVPPDC9nuO5PmZ2qA/kpRu1jbbgjd/pCUEMqU1Ke', '(0916)343-7847', 'Active', 0, '1997-12-15', 20, 'Pasay City', 'Male', 'Single', 'Filipino', 'Christian', 'Pasay City', 'sample', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Albert Ang', 'Architect', 'Julia Ang', 'Physicist', '2018-02-13 14:58:15', NULL),
(38, 11810022, 3, 'Mulingtapang', 'Kristen', 'Ang', 'ten_ten@gmail.com', '$2y$10$VzE5JcM5IL.EpzP6FTx3wuXfzMW.Y4y5WseLzhjC7796c7WZTTgQ2', '(0905)275-9238', 'Active', 0, '1997-12-25', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Pasay City', 'Bacolod', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Mark Mulingtapang', 'Photographer', 'Gail Mulingtapang', 'Writer', '2018-02-13 15:01:28', NULL),
(39, 11810023, 3, 'Chan', 'Jamie', 'So', 'jamieann97@gmail.com', '$2y$10$.0ujVyx5.ItBv8WRp8RYhOtb7eYElG8MFm.o8BdyK0s1UTZYItAUS', '(0922)385-9246', 'Active', 0, '1997-04-10', 20, 'Pasay City', 'Female', 'Single', 'Filipino', 'Christian', 'Pasay City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'John Chan', 'IT Manager', 'Jane Chan', 'Denist', '2018-02-13 15:04:54', NULL),
(40, 11810024, 3, 'Yu', 'Lance', 'Timkang', 'lance19@gmail.com', '$2y$10$B41QBo0hRvVxJZRVzkOwf.gPKO1ocY9CWl8tCvzaa7Etcly4uzLWC', '(0922)885-9404', 'Active', 0, '1997-05-19', 20, 'Manila City', 'Male', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Henry Yu', 'Economist', 'Lanny Yu', 'Receptionist', '2018-02-13 15:07:21', NULL),
(41, 11810025, 3, 'Jao', 'Princess', 'Baynosa', 'princessj06@gmail.com', '$2y$10$iZKEZ8IbRUtAAHN4N6dvpOlxXHnTo8rbFxyQqwdo/UFm1Toy8LXmK', '(0917)923-0811', 'Active', 0, '1996-12-06', 21, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Paranaque City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Bryan Jao', 'Auto Mechanic', 'Daisy Jao', 'Physician', '2018-02-13 15:10:34', NULL),
(42, 11810026, 3, 'Sy', 'Ryan', 'Rivera', 'rysy13@gmail.com', '$2y$10$EFR9jFFPvC/s02W.4o3umepMB/purDEV3QIGxTR571HRtN1KvGQe.', '(0915)248-0509', 'Active', 0, '1997-10-13', 20, 'Manila City', 'Male', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Daniel Sy', 'Doctor', 'Felia Sy', 'Store Owner', '2018-02-13 15:15:20', NULL),
(43, 11810027, 3, 'Santillan', 'Jayson', 'Huang', 'jayson082497@gmail.com', '$2y$10$fsbH/dkGdBFPtjV0iRKv3up/F1kgOx3.AJBZBkQYfyLejR5gqa942', '(0927)273-5850', 'Active', 0, '1996-08-24', 21, 'Manila City', 'Male', 'Single', 'Chinese', 'Buddhism', 'Manila City ', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Willy Santillan', 'CEO', 'Bela Santillan', 'HouseWife', '2018-02-13 15:20:36', NULL),
(44, 11810028, 3, 'Matias', 'John', 'Matel', 'jolo_mat@gmail.com', '$2y$10$yUuZBAjN8n1ZQo21v0x2GOASYvHjo5FKJehaihKP4YTDc5nr/LMCW', '(0915)403-9570', 'Active', 0, '1997-10-12', 20, 'Pasay City', 'Male', 'Single', 'Filipino', 'Christian', 'Pasay City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Fernando Matias', 'Pilot', 'Sally Matias', 'Marketing Manager', '2018-02-13 15:24:21', NULL),
(45, 11810029, 3, 'Ong', 'Czakrina', 'Dominique', 'czakydo97@gmail.com', '$2y$10$NpCKHdICWvfjwuW.ErGeSu8LhcKn6UMKksE2pF1NrcoB85hKalFVq', '(0927)398-1749', 'Active', 0, '1997-09-13', 20, 'Pasay City', 'Female', 'Single', 'Filipino', 'Christian', 'Pasay City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Thomas Ong', 'Accountant', 'Olivia Ong', 'School Counselor', '2018-02-13 15:27:41', NULL),
(46, 11810030, 3, 'Moya', 'Lawrens', 'Uy', 'rensmoyaaa@gmail.com', '$2y$10$/loJcXQTHfh.atA621okj.fcDFK5cdL4mrqHM/q5G.r4bGn/9XK0y', '(0935)194-3100', 'Active', 0, '1997-04-12', 20, 'Manila City', 'Male', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Peter Moya', 'Real Estate Agent', 'Regine Moya', 'High School Teacher', '2018-02-13 15:30:58', NULL),
(47, 11810031, 3, 'Lim', 'Ezekiel', 'So', 'kyleesl98@gmail.com', '$2y$10$F7XMb844o39L0y/.bBspruP66XvMbBJ860Ok5fyIzZCgpKkAdnrX2', '(0917)398-4799', 'Active', 0, '1998-01-06', 20, 'Manila City', 'Male', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Terence Lim', 'Pastor', 'Kathy Lim', 'Pastor', '2018-02-13 15:33:05', NULL),
(48, 11810032, 3, 'Poa', 'Mary', 'Lo', 'meh0997@gmail.com', '$2y$10$Rdt8r3BsR/7xc198Q8/tn.ZFmMZhyFJ9TNUT9xZsJVh.tmOJkUURS', '(0927)961-3222', 'Active', 0, '1997-09-05', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Paranaque City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Wilson Poa', 'Photographer', 'Isabell Poa', 'Event Planner', '2018-02-13 15:38:24', NULL),
(49, 11810033, 3, 'Dela Pena', 'Karen', 'Ling', 'kkdp0919@gmail.com', '$2y$10$xhziAHVloo3jCAaBq/pRiOZyUJWgYfgfpzsnhw2WoezIVMFwF1ZeS', '(0906)719-8430', 'Active', 0, '1997-09-19', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Peter Dela Pena', 'Business Owner', 'Aly Dela Pena', 'HouseWife', '2018-02-13 15:41:30', NULL),
(50, 11810034, 3, 'Ching', 'Shaira', 'Sy', 'shaira25@gmail.com', '$2y$10$1C5pHN6e.qw8EzXjTuXNve73yjmiSPbLJcnZfLDsIv0fclIB3zYL2', '(0922)948-1908', 'Active', 0, '1997-01-25', 21, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Pasay City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Mike Ching', 'Financial Analyst', 'Natalie Ching', 'Designer', '2018-02-13 15:44:41', NULL),
(51, 11810035, 3, 'Bating', 'Christine', 'Miranda', 'cjoyb14@gmail.com', '$2y$10$MszirVteRJR6c0UbykeFte6uQRgxNvPrGijfwOsPOx0X8Ve1/uJeu', '(0915)948-5039', 'Active', 0, '1997-06-14', 20, 'Pasay City', 'Female', 'Single', 'Filipino', 'Christian', 'Pasay City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Herald Banting', 'Lawyer', 'Christina Banting', 'Secretary', '2018-02-13 15:47:41', NULL),
(52, 11810036, 3, 'So', 'Ella', 'Marie', 'elsie17@gmail.com', '$2y$10$mYOqVT.AON2TKcVUkIOHcuBKMjkJWVTE6EFNUXKklI9zZICEHCYWK', '(0927)606-6417', 'Active', 0, '1997-03-17', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Ronald So', 'Business Owner', 'Mary So', 'HouseWife', '2018-02-13 15:50:46', NULL),
(53, 11810037, 3, 'Wong Hin', 'Justine', 'Que', 'justinewh03@gmail.com', '$2y$10$x3WNyrK2IecWqC4a5ppa/OgJ1v6jkG6iAYyqKZ/tVcQomn1UY.t12', '(0905)340-3079', 'Active', 0, '1997-03-03', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Paranaque City', 'Ilo-ilo City', 'Gideon Academy', 'Gideon Academy', 'Sample', '', '', 'Jefferson Wong Hin', 'Store Owner', 'Dabbie Wong Hin', 'Doctor', '2018-02-13 15:53:41', NULL),
(54, 11810038, 3, 'Hernandez', 'Andy', 'Ramos', 'andyhernandez@gmail.com', '$2y$10$reFmku/SAB5cBBPdIHlwCu.rSGPXZq1OI31fw/.Sz8eHb1.gjeByG', '(0927)239-5081', 'Active', 0, '1996-07-31', 21, 'Bacolod City', 'Male', 'Single', 'Chinese', 'Christian', 'Manila City', 'Bacolod City', 'Makati Hope Christian School', 'Makati Hope Christian School', 'Sample', '', '', 'Johnny Hernandez', 'Chef', 'Janelle Hernandez', 'Teacher', '2018-02-13 15:58:35', NULL),
(55, 11810039, 3, 'Perez', 'Jordan', 'Brooke', 'brookeJordan@gmail.com', '$2y$10$Jl7o9JjjhpNgmceA05XjBuchxIhKZl0.SDRjpC0TUtO0lHVeSkRo.', '(0917)239-8509', 'Active', 0, '1996-09-27', 21, 'Manila City', 'Male', 'Single', 'Filipino', 'Catholic', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Daniel Perez', 'Musician', 'Faye Perez', 'Event Organizer', '2018-02-13 16:02:58', NULL),
(56, 11810040, 3, 'Martin', 'Carl', 'Ong', 'martinCO@gmail.com', '$2y$10$W1MWOsKu6T2rNBXRF49AAOfw5YHUcm7leKBnkN0Bg4pOS9QMaMmBS', '(0922)293-5093', 'Active', 0, '1997-08-01', 20, 'Manila City', 'Male', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Christian Martin', 'Business Owner', 'Britanny Martin', 'Editor', '2018-02-13 16:05:30', NULL),
(57, 11810041, 3, 'Castro', 'Alice', 'Ellis', 'alicewonderland@gmail.com', '$2y$10$66JkrfHZSMtT2GsBQlOOs.J/smSUVd3YFsTGhrRD0oth8v9VzZhAW', '(0915)283-4599', 'Active', 0, '1996-04-13', 21, 'Quezon City', 'Female', 'Single', 'Filipino', 'Catholic', 'Quezon City', '', 'Sample', 'Sample', 'Sample', '', '', 'Larry Castro', 'Data Analyst', 'Penny Castro ', 'Executive Assistant', '2018-02-13 16:07:51', NULL),
(58, 11810042, 3, 'Chavez', 'Freddie', 'Nelson', 'ChavezFN@yahoo.com', '$2y$10$.UbMeGoP/bM2ZCQ1XxZO8OrHlsFJ9PzgX1mLFrXky1umFvouQhDhC', '(0922)587-9242', 'Active', 0, '1998-05-30', 19, 'Manila City', 'Male', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Jeff Chavez', 'Basketball Player', 'Marie Chavez', 'Statistician', '2018-02-13 16:10:07', NULL),
(59, 11810043, 3, 'Ingram', 'Carlton', 'Scott', 'carltoningram@yahoo.com', '$2y$10$NFW1VnysydsKsLwtz1jUc.lj7dUM/7iPz.FHVzZ5z6pRx3.Q4nW1O', '(0917)387-9583', 'Active', 0, '1997-10-31', 20, 'Paranaque City', 'Male', 'Single', 'Filipino', 'Catholic', 'Paranaque City', '', 'Sample', 'Sample', 'Sample', '', '', 'Arnold Ingram', 'Insurance Agent', 'Patricia Ingram', 'Journalist', '2018-02-13 16:14:27', NULL),
(60, 11810044, 3, 'Peterson', 'Antonio', 'Bridges', 'petersonanton@yahoo.com', '$2y$10$6ri/0xkqJGm4ir6gtewfz.HJriX/3plB1yB3p8cnMIuM73jvudhWO', '(0936)940-9602', 'Active', 0, '1997-02-04', 21, 'Quezon City', 'Male', 'Single', 'Filipino', 'Christian', 'Quezon City', '', 'Sample', 'Sample', 'Sample', '', '', 'Kirk Peterson', 'Public Relations Specialist', 'Whitney Peterson', 'Journalist', '2018-02-13 16:18:46', NULL),
(61, 11810045, 3, 'Salazar', 'Regina', 'Valdez', 'reginasalazarv@yahoo.com', '$2y$10$x1i5TwkkUZN3NJAniOcr.uUDzLctmq6IfSu.haxqmm4V2hA5rmLBe', '(0917)394-5020', 'Active', 0, '1996-04-10', 21, 'Manila City', 'Female', 'Single', 'Filipino', 'Catholic', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Fred Salazar', 'HR Specialist', 'Dani Salazar', 'Secretary', '2018-02-13 16:22:02', NULL),
(62, 11810046, 3, 'Gonzales', 'Marck', 'Anderson', 'gonzales15marck@yahoo.com', '$2y$10$bYchEhh2ZgIfhGXx9lV4jOTnvUQULCcC1Op903q2vj42121JJJtDO', '(0915)235-0294', 'Active', 0, '1997-03-31', 20, 'Manila City', 'Male', 'Single', 'Filipino', 'Catholic', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Clark Gonzales', 'Mechanical Engineer', 'Rachel Gonzales', 'Mathematician', '2018-02-13 16:25:59', NULL),
(63, 11810047, 3, 'Mendoza', 'Jeanine', 'Clark', 'mendozaj14@yahoo.com', '$2y$10$bLQKaqoiP92mrfBQUJT8q.l6m6i8k.LbGNm1CIfYIZoDAcU0DdbjG', '(0015)948-9879', 'Active', 0, '1997-05-14', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Catholic', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Paul Mendoza', 'Director', 'Elizabeth Mendoza', 'Editor', '2018-02-14 03:43:13', NULL),
(64, 11810048, 3, 'Santos', 'Bill', 'West', 'billwestsantos@yahoo.com', '$2y$10$Y4W.tW.2NR.5LG4.Jos1mOOO6U0zljnTn5tnHPf9sMlZUGO9KboPS', '(0917)387-4913', 'Active', 0, '1996-10-10', 21, 'Pasay City', 'Male', 'Single', 'Filipino', 'Catholic', 'Pasay City', '', 'Sample', 'Sample', 'Sample', '', '', 'Ralph Santos', 'Web Developer', 'Myra Santos', 'Veterinarian', '2018-02-14 03:47:53', NULL),
(65, 11810049, 3, 'Torres', 'Harry', 'Garcia', 'torresharry18@yahoo.com', '$2y$10$JJ1E2VhqObyWrrIRA1yGlewrE5.uclrkLVLp.AKGSQUaOQmS0ntcO', '(0922)735-9878', 'Active', 0, '1996-09-22', 21, 'Quezon City', 'Male', 'Single', 'Filipino', 'Catholic', 'Quezon City', '', 'Sample', 'Sample', 'Sample', '', '', 'Victor Torres', 'Painter', 'Vicky Torres', 'Art Director', '2018-02-14 03:50:48', NULL),
(66, 11810050, 3, 'Morales', 'Mitchell', 'Vasques', 'mmoralesv@yahoo.com', '$2y$10$eG3xpD3yoxgEi4eiBQ15wuPyfW6sn8IRPVodlHP4rrOVKCMHXliy.', '(0918)375-8475', 'Active', 0, '1997-05-11', 20, 'Manila City', 'Female', 'Single', 'Filipino', 'Christian', 'Manila City', '', 'Sample', 'Sample', 'Sample', '', '', 'Henry Morales', 'Business Owner', 'Tiffany Morales', 'Marketing Manager', '2018-02-14 03:53:08', NULL),
(67, 11810051, 3, 'Ongtest', 'Beper', 'Clenista', 'beper.ong@benilde.edu.ph', '$2y$10$XS1npdxt29t1IOGXhSXAV.Sbh6lG4ukQgX6FlK32k6Ytl77/1ujFK', '(0926)151-5151', 'Active', 0, '1995-01-04', 23, 'test', 'Male', 'Single', 'Chinese', 'Catholic', 'test', '', 'Test', 'Test', 'test', '', '', 'test', 'test', 'test', 'test', '2018-03-09 07:18:29', NULL),
(68, 11810051, 3, 'Test', 'Test', 'Test', 'Test@yahoo.com', '$2y$10$7mnekwENhOJOHUdyRBMA3e50Z/foMFMyymJUFFkOPXclw5VvVPyyq', '(0916)161-6166', 'Active', 3, '0000-00-00', 23, 'Test', 'Male', 'Single', 'Filipino', 'Catholic', 'test', '', 'Test', 'Test', 'Test', '', '', 'Test', 'Test', 'Test', 'Test', '2018-03-10 01:14:02', NULL),
(69, 11810051, 3, 'TEST', 'BeperTESTING', 'TEST', 'test@yahoo.com', '$2y$10$FSDn9Fk9k87V4aE9KN4O7.GHnsKL33OsX4iF8JE/xPZO5nwctsexW', '(0926)262-6262', 'Active', 1, '1995-02-27', 23, 'Kanto', 'Male', 'Single', 'Filipino', 'Catholic', 'Testing', 'TEST', 'TEST', 'TEST', 'TEST', '', '', 'TEST', 'TEST', 'TEST', 'TEST', '2018-03-10 02:03:50', NULL),
(70, 11810064, 3, 'Ong', 'Beper', 'Test', 'bep@yahoo.com', '$2y$10$aKpgTGiySEkxywECAFs40ehAFn9H55ECWNPUDIzj527nK1aTwsiHW', '(0926)047-2440', 'Active', 2, '1995-02-27', 23, 'Manila', 'Male', 'Married', 'Filipino', 'Christian', '369 L. Santos St.', 'St.James Academy', 'St.James Academy', 'St.James Academy', 'St.James Academy', '', '', 'MYdad', 'Seaman', 'MYmom', 'Manager', '2018-03-23 06:08:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `userTypeID` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`userTypeID`, `userType`) VALUES
(1, 'Admin'),
(2, 'Faculty'),
(3, 'Student'),
(4, 'Registrar');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `venueID` int(11) NOT NULL,
  `venueCode` varchar(10) NOT NULL,
  `venueName` varchar(100) NOT NULL,
  `venueType` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`venueID`, `venueCode`, `venueName`, `venueType`, `status`) VALUES
(3, 'O101', 'Olivia - 101', 'Classroom', 'Active'),
(4, 'O102', 'Olivia - 102', 'Classroom', 'Active'),
(5, 'O103', 'Olivia - 103', 'Classroom', 'Active'),
(6, 'O104', 'Olivia - 104', 'Classroom', 'Active'),
(7, 'O105', 'Olivia - 105', 'Classroom', 'Active'),
(8, 'O201', 'Olivia - 201', 'Classroom', 'Active'),
(9, 'O202', 'Olivia - 202', 'Classroom', 'Active'),
(10, 'DA101', 'Don Andres - 101', 'Classroom', 'Active'),
(11, 'DA102', 'Don Andres - 102', 'Classroom', 'Active'),
(12, 'DA103', 'Don Andres - 103', 'Classroom', 'Active'),
(13, 'DA104', 'Don Andres - 104', 'Classroom', 'Active'),
(14, 'DA105', 'Don Andres - 105', 'Classroom', 'Active'),
(15, 'A101', 'Adela - 101', 'Classroom', 'Active'),
(16, 'A102', 'Adela - 102', 'Classroom', 'Active'),
(17, 'A103', 'Adela - 103', 'Classroom', 'Active'),
(18, 'A104', 'Adela - 104', 'Classroom', 'Active'),
(19, 'A105', 'Adela - 105', 'Classroom', 'Active'),
(20, 'O204', 'Olivia - 204', 'Classroom', 'Active'),
(21, 'O205', 'Olivia - 205', 'Classroom', 'Active'),
(22, 'O203', 'Olivia - 203', 'Classroom', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announceID`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`apid`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignID`);

--
-- Indexes for table `auditlogs`
--
ALTER TABLE `auditlogs`
  ADD PRIMARY KEY (`auditID`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`blockID`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classID`);

--
-- Indexes for table `classlist`
--
ALTER TABLE `classlist`
  ADD PRIMARY KEY (`classListID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`dlID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`gradeID`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lessonID`);

--
-- Indexes for table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`profID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjectID`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`timeSlotID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`userTypeID`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`venueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `apid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `auditlogs`
--
ALTER TABLE `auditlogs`
  MODIFY `auditID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `blockID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `classlist`
--
ALTER TABLE `classlist`
  MODIFY `classListID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `dlID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `facultyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `gradeID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `prof`
--
ALTER TABLE `prof`
  MODIFY `profID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;
--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `timeSlotID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `userTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `venueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
