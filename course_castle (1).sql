-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 12:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_castle`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pro` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `subheading2` varchar(255) DEFAULT NULL,
  `content2` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `subheading3` varchar(255) DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `admin_id`, `admin_name`, `admin_pro`, `title`, `subheading`, `img_title`, `article`, `subheading2`, `content2`, `img2`, `subheading3`, `content3`, `img3`, `create_date`) VALUES
(1, 15, 'mohamed', 'mohamed', 'commend line', 'commend line', 'GEN-Top102021-1290x860-2.png', ' commend line', '', ' ', '', '', ' ', '', '2023-02-08 00:04:06'),
(2, 15, 'mohamed', 'mohamed', 'commend line', 'commend line', 'GEN-Top102021-1290x860-2.png', ' commend line', '', ' ', '', '', ' ', '', '2023-02-08 00:04:27'),
(3, 15, 'mohamed', 'mohamed', 'commend line', 'commend line', 'GEN-Top102021-1290x860-2.png', ' commend line', 'commend line', ' commend line', 'GEN-Top102021-1290x860-2.png', 'commend line', ' commend line', 'GEN-Top102021-1290x860-2.png', '2023-02-08 00:14:41'),
(4, 15, 'mohamed', 'mohamed', 'commend line', 'commend line', 'GEN-Top102021-1290x860-2.png', ' commend line', 'commend line', ' commend line', 'GEN-Top102021-1290x860-2.png', 'commend line', ' commend line', 'GEN-Top102021-1290x860-2.png', '2023-02-08 00:18:06'),
(5, 15, 'mohamed', 'mohamed', 'commend line', 'commend line', 'GEN-Top102021-1290x860-2.png', ' SSDADS', '', ' ', '', '', ' ', '', '2023-02-08 00:18:13'),
(6, 5, 'mido', 'mido', 'commend line', 'commend line', 'GEN-Top102021-1290x860-2.png', ' commend line', '', ' ', '', '', ' ', '', '2023-02-09 02:36:29'),
(7, 10, 'abdelrahman11', 'upload/logo (3).png', 'The 10 Most Popular Articles in 2022 (So Far)', 'The 10 Most Popular Articles in 2022 (So Far)', 'GEN-Top102021-1290x860-2.png', ' The 10 Most Popular Articles in 2022 (So Far)', '', ' ', '', '', ' ', '', '2023-02-09 03:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pro` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `subheading2` varchar(255) DEFAULT NULL,
  `content2` text DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `subheading3` varchar(255) DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `admin_id`, `admin_name`, `admin_pro`, `title`, `subheading`, `img_title`, `article`, `subheading2`, `content2`, `img2`, `subheading3`, `content3`, `img3`, `create_date`) VALUES
(13, 5, 'mido', 'mido', 'The 10 Most Popular Articles in 2022 (So Far)', 'The 10 Most Popular Articles in 2022 (So Far)', 'image.png', ' The 10 Most Popular Articles in 2022 (So Far)', '', ' ', '', '', ' ', '', '2023-02-09 03:20:52'),
(14, 10, 'abdelrahman11', 'upload/logo (3).png', 'The 10 Most Popular Articles in 2022 (So Far)', 'The 10 Most Popular Articles in 2022 (So Far)', 'GEN-Top102021-1290x860-2.png', ' The 10 Most Popular Articles in 2022 (So Far)The 10 Most Popular Articles in 2022 (So Far)The 10 Most Popular Articles in 2022 (So Far)The 10 Most Popular Articles in 2022 (So Far)The 10 Most Popular Articles in 2022 (So Far)The 10 Most Popular Articles in 2022 (So Far)', 'The 10 Most Popular Articles in 2022 (So Far)', ' The 10 Most Popular Articles in 2022 (So Far)', 'GEN-Top102021-1290x860-2.png', 'The 10 Most Popular Articles in 2022 (So Far)', ' The 10 Most Popular Articles in 2022 (So Far)', 'GEN-Top102021-1290x860-2.png', '2023-02-09 03:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `message` text NOT NULL,
  `time_message` datetime NOT NULL,
  `user_ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `time_message`, `user_ip`) VALUES
(1, 'ahmed mohamed', '', 0, ' sdads', '2023-02-07 23:50:54', '::1'),
(2, 'ahmed mohamed', '', 0, ' dasdsad', '2023-02-07 23:50:59', '::1'),
(3, 'ahmed mohamed', '01128824223', 0, ' asdsadasdad', '2023-02-08 00:24:07', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` int(11) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `login_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `pro_img`, `role`, `login_date`) VALUES
(1, 'abdelrahman ', 'Abdelrahman ', 'Abdelrahman ', 'Abdelrahman', 0, 'GEN-Top102021-1290x860-2.png', NULL, '2023-02-07 23:39:29'),
(5, 'mido', 'mido', 'mido', 'mido', 123, 'mido', 'admin', '2023-02-08 00:54:28'),
(10, 'abdelrahman11', 'abdelrahman', 'abdelrahman11', 'abdelrahman', 123, 'upload/logo (3).png', 'admin', '2023-02-09 02:37:10'),
(15, 'mohamed', 'mohamed', 'mohamed', 'mohamed', 123, 'mohamed', NULL, '2023-02-07 22:41:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `admin_pro` (`admin_pro`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`),
  ADD KEY `admin_pro` (`admin_pro`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `pro_img` (`pro_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `register` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `register` (`username`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`admin_pro`) REFERENCES `register` (`pro_img`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `register` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `register` (`username`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`admin_pro`) REFERENCES `register` (`pro_img`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
