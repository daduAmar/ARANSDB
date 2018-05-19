-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2018 at 07:11 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arans`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adid` int(11) NOT NULL,
  `uname` varchar(80) NOT NULL,
  `pswd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adid`, `uname`, `pswd`) VALUES
(1, 'admin', 'arans');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignid` int(11) NOT NULL,
  `subid` int(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignid`, `subid`, `content`, `date`) VALUES
(4, 18, 'write a passage', '2018-05-15'),
(5, 19, 'prepare a bio sketch of cloud computing', '2018-05-16'),
(6, 19, 'xyz', '2018-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(11) NOT NULL,
  `tid` int(50) NOT NULL,
  `stdid` int(50) NOT NULL,
  `subid` int(80) NOT NULL,
  `status` int(40) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `tid`, `stdid`, `subid`, `status`, `date`) VALUES
(78, 392, 36, 19, 1, '2018-05-14'),
(79, 392, 37, 19, 0, '2018-05-14'),
(81, 392, 36, 18, 1, '2018-05-14'),
(82, 392, 37, 18, 1, '2018-05-14'),
(83, 392, 36, 18, 1, '2018-05-17'),
(84, 392, 37, 18, 1, '2018-05-17'),
(85, 392, 36, 18, 1, '2018-05-18'),
(86, 392, 37, 18, 0, '2018-05-18'),
(87, 396, 31, 21, 1, '2018-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `nid` int(11) NOT NULL,
  `subid` int(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`nid`, `subid`, `path`, `date`) VALUES
(10, 18, 'uploads/5afa7d743ca258.66836029.jpeg', '2018-05-15'),
(11, 19, 'uploads/5afa7d954041e9.53176416.jpg', '2018-05-15'),
(12, 20, 'uploads/5afe64f1e939d0.42622723.docx', '2018-05-18'),
(13, 20, 'uploads/5afe665a5668a7.40275339.jpg', '2018-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stdid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `rollno` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `sem` varchar(40) NOT NULL,
  `uname` varchar(70) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stdid`, `name`, `rollno`, `email`, `sem`, `uname`, `password`) VALUES
(31, 'AmarG', '43', 'manu@gmail.com', '2nd', 'Amar', 'wer'),
(34, 'Bageshree', '44', 'bages31@gmail.com', '1st', 'bages31', '123'),
(36, 'Dipa', '32', 'dipamoni@gmail.com', '3rd', 'dipamoni', '1234'),
(37, 'Bharati', '88', 'bharati34@gmail.com', '3rd', 'bharati34', 'asdf'),
(38, 'Rishi', '23', 'rishi26@gmail.com', '4th', 'rishi26', '1234'),
(39, 'Samson', '38', 'samson@gmail.com', '1st', 'samson12', 'sam');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `subname` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `tid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subname`, `sem`, `tid`) VALUES
(18, 'English', '3rd', 392),
(19, 'Cloud computing ', '3rd', 392),
(20, 'cc', '4th', 394),
(21, 'otqt', '2nd', 396),
(22, 'Java', '3rd', 395),
(25, 'Biology', '6th', 394),
(29, 'Physics', '2nd', 396),
(30, 'History', '1st', 392),
(31, '8051', '5th', 396),
(37, 'Phython', '6th', 392),
(43, 'C++', '2nd', 394),
(44, 'Chemistry', '3rd', 395);

-- --------------------------------------------------------

--
-- Table structure for table `s_assignment`
--

CREATE TABLE `s_assignment` (
  `s_upid` int(11) NOT NULL,
  `stdid` int(255) NOT NULL,
  `subid` int(255) NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `s_path` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_assignment`
--

INSERT INTO `s_assignment` (`s_upid`, `stdid`, `subid`, `rollno`, `sem`, `s_path`, `date`) VALUES
(3, 31, 21, '43', '2nd', 'uploads/5afffcd48bc505.94156854.docx', '2018-05-19'),
(4, 31, 29, '43', '2nd', 'uploads/5b0009b8ebe0d3.21104975.pdf', '2018-05-18'),
(7, 31, 43, '43', '2nd', 'uploads/5b001748422db8.76270421.pdf', '2018-05-19'),
(8, 36, 18, '32', '3rd', 'uploads/5b002387cdd556.25977604.docx', '2018-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tid` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(70) NOT NULL,
  `username` varchar(80) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tid`, `name`, `email`, `username`, `pswd`, `status`) VALUES
(392, 'Amarikikim', 'amar@gmail.com', 'amar', '$2y$10$oYy/utchh2GZAmQ6POZveuXIYzgw2gOrcQLH76cVdeVLqWTSA0xly', 1),
(394, 'ChandraniBorah', 'cb@gmail.com', 'cb2', '$2y$10$vDe7tbHgGplaj1JX4fBm0upcFtimDXjVKKe6RNqn3qjYCvLoJGmay', 1),
(395, 'Priya Singh', 'priya@gmail.com', 'ps23', '$2y$10$0Miazqt/xg.Wz3YWvJoSkeOwa6nGAimho2tag0C5YXBMYkh2EMEN2', 1),
(396, 'Chandrani Borah', 'chandraniborah123@gmail.com', 'chand', '$2y$10$BU3m..VoZWEe.IL1HF7PxOND3W67ccJhY6u63wuEeCsPlIOGAuPbi', 1),
(397, 'Dipsikha', 'dip@gmail.com', 'dip', '$2y$10$ugsvitDlb2rqyrZZjT9IkuAx/ZQIoBwpAqrzBqDNqTRQjlCMwUJbG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `vid` int(11) NOT NULL,
  `stdid` int(255) NOT NULL,
  `nid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adid`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `pswd` (`pswd`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignid`),
  ADD KEY `subid` (`subid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `attendance_ibfk_1` (`tid`),
  ADD KEY `stdid` (`stdid`),
  ADD KEY `subid` (`subid`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `subid` (`subid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stdid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `subname_3` (`subname`),
  ADD KEY `tid` (`tid`),
  ADD KEY `subname` (`subname`) USING BTREE,
  ADD KEY `subname_2` (`subname`) USING BTREE;

--
-- Indexes for table `s_assignment`
--
ALTER TABLE `s_assignment`
  ADD PRIMARY KEY (`s_upid`),
  ADD KEY `subid` (`subid`),
  ADD KEY `stdid` (`stdid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `stdid` (`stdid`),
  ADD KEY `nid` (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `s_assignment`
--
ALTER TABLE `s_assignment`
  MODIFY `s_upid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`stdid`) REFERENCES `students` (`stdid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_assignment`
--
ALTER TABLE `s_assignment`
  ADD CONSTRAINT `s_assignment_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_assignment_ibfk_2` FOREIGN KEY (`stdid`) REFERENCES `students` (`stdid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `view`
--
ALTER TABLE `view`
  ADD CONSTRAINT `view_ibfk_1` FOREIGN KEY (`stdid`) REFERENCES `students` (`stdid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `view_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `note` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
