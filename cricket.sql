-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 08:46 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `cur_date`
--

CREATE TABLE IF NOT EXISTS `cur_date` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cur_date`
--

INSERT INTO `cur_date` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(35, '', '14', '2022-05-28'),
(52, '', '12', '2022-05-29'),
(57, '', '7', '2022-05-30'),
(58, '', '6', '2022-05-31'),
(59, '', '5', '2022-08-07'),
(60, '', '4', '2022-03-19'),
(61, '', '3', '2022-05-01'),
(62, '', '2', '2022-01-13'),
(63, '', '1', '2022-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `live_score`
--

CREATE TABLE IF NOT EXISTS `live_score` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_12` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_13` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_14` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_15` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_16` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_17` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_18` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_19` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_20` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `live_score`
--

INSERT INTO `live_score` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `field_12`, `field_13`, `field_14`, `field_15`, `field_16`, `field_17`, `field_18`, `field_19`, `field_20`, `created_date`) VALUES
(5, '41052', 'Team B', 'Southee', 'Blower', '13', '4', '', '', '', 'Field', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(6, '41052', 'Team B', 'Boult', 'Blower', '12', '23', '4', '', '', 'Striker', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(7, '41052', 'Team B', 'Kane', 'Batsman (C)', '0', '1', '0', '0', '1', '', '', 'Boult', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(8, '41052', 'Team B', 'Munro', 'Batsman', '0', '2', '0', '0', '1', 'Out', 'Offline', 'Boult', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(9, '41052', 'Team B', 'Guptil', 'Batsman', '8', '5', '1', '0', '1', 'Striker', 'Offline', 'Boult', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(10, '41052', 'Team A', 'Shami', 'Blower', '', '', '', '', '', 'Bowler', 'Live', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(11, '41052', 'Team A', 'MS Dhoni', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(12, '41052', 'Team A', 'Kolhi', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(13, '41052', 'Team A', 'Dhawan', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(14, '41052', 'Team A', 'Rohit', 'Batsman', '10', '17', '0', '1', '1', 'Out', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(15, '41052', 'Team A', 'Shewag', 'Batsman', '15', '13', '1', '1', '1', 'Out', 'Offline', 'Boult', '', '', '', '', '', '', '', '', '', '2022-04-30'),
(16, '41052', 'Team B', 'Extra', 'Batsman', '3', '2', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(17, '41052', 'Team A', 'Extra', 'Batsman', '3', '4', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(18, '32141', 'India', 'Shami', 'Blower', '', '', '', '', '', 'Out', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(19, '32141', 'India', 'MS Dhoni', 'Batsman (C)', '13', '4', '1', '1', '', 'Stricker', 'Live', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(20, '32141', 'India', 'Rahul', 'Batsman', '4', '4', '0', '0', '2', 'NonStricker', 'Live', 'Boult', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(21, '32141', 'India', 'Shewag', 'Batsman', '', '', '', '', '', 'Striker', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(22, '32141', 'Team B', 'Southee', 'Blower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(23, '32141', 'Team B', 'Boult', 'Blower', '', '', '1', '', '', 'Bowler', 'Live', '', '4', '4', '1', '', '', '', '', '', '', '2022-05-01'),
(24, '32141', 'Team B', 'Kane', 'Batsman (C)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(25, '32141', 'Team B', 'Munro', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(26, '32141', 'Team B', 'Guptil', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(27, '32141', 'Team B', 'Extra', 'Batsman', '', '', '', '', '', 'Out', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-05-01'),
(28, '47387', 'Team A', 'Shewag', 'Batsman', '13', '6', '1', '1', '', 'Field', 'Offline', '', '', '', '', '', '', '', '', '', '', '2022-05-17'),
(29, '47387', 'Team A', 'Rohit', 'Batsman', '4', '6', '0', '0', '1', 'Field', 'Offline', 'Munro', '', '', '', '', '', '', '', '', '', '2022-05-17'),
(30, '47387', 'Team A', 'Dhawan', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-17'),
(31, '47387', 'Team A', 'Shami', 'Bowler', '4', '1', '1', '0', '', 'Bowler', 'Live', '', '10', '7', '0', '', '', '', '', '', '', '2022-05-17'),
(32, '47387', 'Team B', 'Guptil', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-17'),
(33, '47387', 'Team B', 'Munro', 'Batsman', '6', '6', '1', '0', '', 'Striker', 'Live', '', '12', '8', '1', '', '', '', '', '', '', '2022-05-17'),
(34, '47387', 'Team B', 'Kane', 'Batsman (C)', '', '', '', '', '', 'Striker', 'Live', '', '', '', '', '', '', '', '', '', '', '2022-05-17'),
(35, '47387', 'Team B', 'Extra', 'Batsman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-17'),
(36, '47387', 'Team B', 'Boult', 'Bowler', '', '', '', '', '', 'Field', 'Offline', '', '13', '6', '0', '', '', '', '', '', '', '2022-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `created_date`) VALUES
(3, 'Admin', 'admin@gmail.com', 'test', '9999955555', '123456', 'master', 'Dept', 'Desg', 'Admin', 'site', 'area', '', 'Approved', '2022-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `match_score`
--

CREATE TABLE IF NOT EXISTS `match_score` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_12` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_13` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_14` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_15` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_16` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_17` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_18` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_19` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_20` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_21` varchar(100) COLLATE utf8_bin NOT NULL,
  `rating` varchar(100) COLLATE utf8_bin NOT NULL,
  `comment` varchar(100) COLLATE utf8_bin NOT NULL,
  `delay` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL,
  `closing_date` varchar(100) COLLATE utf8_bin NOT NULL,
  `completed` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `match_score`
--

INSERT INTO `match_score` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `field_12`, `field_13`, `field_14`, `field_15`, `field_16`, `field_17`, `field_18`, `field_19`, `field_20`, `field_21`, `rating`, `comment`, `delay`, `created_date`, `closing_date`, `completed`) VALUES
(324, '41052', 'Team A', 'Team B', '10', 'Bangalore', 'Chinaswamy', '30/04/2022', '10:00 AM', 'Team A', 'Bat First', 'Team A Won by 5 Wickets', 'Team B', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-04-30', '', ''),
(325, '32141', 'India', 'Team B', '5', 'Bangalore', 'Chinnaswamy', '01/05/2022', '10:00AM', 'India', 'Bat First', 'India Won by 5 Wickets', 'Team B', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-01', '', ''),
(326, '47387', 'Team A', 'Team B', '2', 'Bangalore', 'Bangalore', '17/05/2022', '11:00 AM', 'Team A', 'Bat First', 'Team A Won by 5 Wickets', 'Nil', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-05-17', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(100) NOT NULL,
  `topic` varchar(100) COLLATE utf8_bin NOT NULL,
  `content` varchar(1000) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `topic`, `content`, `field_1`) VALUES
(2, 'test', 'test', 'http://10.0.2.2/projects/cricket/web/uploads/photo.jpg'),
(3, 'Rohit hits 100', 'New 100 for rohit', '');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `created_date`) VALUES
(57, '', 'Team A', 'Shewag', 'Batsman', '2022-04-30'),
(58, '', 'Team A', 'Rohit', 'Batsman', '2022-04-30'),
(59, '', 'Team A', 'Dhawan', 'Batsman', '2022-04-30'),
(60, '', 'Team A', 'Kolhi', 'Batsman', '2022-04-30'),
(61, '', 'Team A', 'MS Dhoni', 'Batsman', '2022-04-30'),
(62, '', 'Team A', 'Shami', 'Bowler', '2022-04-30'),
(63, '', 'Team B', 'Guptil', 'Batsman', '2022-04-30'),
(64, '', 'Team B', 'Munro', 'Batsman', '2022-04-30'),
(65, '', 'Team B', 'Kane', 'Batsman (C)', '2022-04-30'),
(66, '', 'Team B', 'Boult', 'Bowler', '2022-04-30'),
(67, '', 'Team B', 'Southee', 'Bowler', '2022-04-30'),
(68, '', 'Team A', 'Extra', 'Batsman', '2022-05-01'),
(69, '', 'Team B', 'Extra', 'Batsman', '2022-05-01'),
(70, '', 'India', 'Shewag', 'Batsman', '2022-05-01'),
(71, '', 'India', 'Rahul', 'Batsman', '2022-05-01'),
(72, '', 'India', 'MS Dhoni', 'Batsman (C)', '2022-05-01'),
(73, '', 'India', 'Shami', 'Bowler', '2022-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(63, '', 'Team A', '2022-04-30'),
(64, '', 'Team B', '2022-04-30'),
(65, '', 'India', '2022-05-01'),
(66, '', 'Aus', '2022-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE IF NOT EXISTS `version` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`cus_id`, `email`, `created_date`) VALUES
(77, '1.0', '2022-04-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cur_date`
--
ALTER TABLE `cur_date`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `live_score`
--
ALTER TABLE `live_score`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `match_score`
--
ALTER TABLE `match_score`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
 ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cur_date`
--
ALTER TABLE `cur_date`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `live_score`
--
ALTER TABLE `live_score`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `match_score`
--
ALTER TABLE `match_score`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
