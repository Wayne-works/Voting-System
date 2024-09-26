-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 03:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Wayne', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'John Wayne', 'Eblamo', 'Eblamo.png', '2022-11-25'),
(3, 'Dexter', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Dexter James', 'Estrada', '', '2022-12-06'),
(4, 'Karylle', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Karylle', 'Abante', '', '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(30, 15, 'Juan', 'Dela Cruz', '', ''),
(31, 15, 'wayne', 'eblamo', '', ''),
(32, 16, 'rodrigo', 'duterte', '', ''),
(33, 16, 'ben', 'ben', '', ''),
(34, 17, 'Bea', 'Cruz', '', ''),
(35, 17, 'Adda', 'Zafe', '', 'To Serve!');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `firstname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comment` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`firstname`, `lastname`, `email`, `comment`) VALUES
('', 'eblamo', 'wayne@gmail.com', 'chndxvcvnfbvnv'),
('', 'eblamo', 'wayne@gmail.com', 'chndxvcvnfbvnv'),
('', 'eblamo', 'wayne@gmail.com', 'eqwrrwetergdfgdf'),
('wayne', 'eblamo', 'wayne@gmail.com', 'hjghjfgcghgfuyfkjhlkjlo'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'qeqwtertyer eryeryertrwe'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'wqeqweqweq werwewerwerw'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'werwerwerwerwwdsfsdgfdsf'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'adadasdfsdfegerger'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'rerqweqweqweqtretfdgdfgd'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'rerqweqweqweqtretfdgdfgd'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'rerqweqweqweqtretfdgdfgd'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'dfhjghkjfbnlyfdg hhbbgujhgf'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', ''),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'fhjghghjgfngj hgjghjghjg'),
('wayne', 'eblamo', 'wayne@gmail.com', 'adfsafsdfgds hgfhfgh'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'ewrwerwe ertretetert'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'qweqweq werwererteyretre'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'wqeqweqweterterterterteyrtetwerwe'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'qweqweqweqweqtertert'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'ewrrewterte erterte'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'sadasdasdasda fsfsdfsfs'),
('Wayne', 'Eblamo', 'wayne@yahoo.com', 'qweqweqeqeqw'),
('wayne', 'eblamo', 'wayne@gmail.com', 'erwegdfgdfghdfg'),
('wayne', 'eblamo', 'wayne@gmail.com', 'We are the developer of this site');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(15, 'President', 5, 1),
(16, 'Vice President', 5, 2),
(17, 'Secretary', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `studentnumber` int(9) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `studentnumber`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(8, 201611195, 'KMfGDNgU7Pwyi5v', '$2y$10$dkinfW0UEEfsr9125qki/uIg1ECzTp3mJtuwqUrloSMJP1Bgo7T56', 'wayne', 'Eblamo', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
