-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 06:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `candygram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`Username`, `Password`) VALUES
('98d34c1758b15b5a359b69c2b08c5767', '98d34c1758b15b5a359b69c2b08c5767'),
('Alif', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(7) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Birthday_Date` varchar(11) NOT NULL,
  `FB_Join_Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Name`, `Email`, `Password`, `Gender`, `Birthday_Date`, `FB_Join_Date`) VALUES
(27, 'Manjot Sidhu', 'manjot.gni@gmail.com', 'manjotissidhu', 'Male', '1-6-2000', ''),
(29, 'alif Alam', 'alif7alam@gmail.com', '1234', 'Male', '26-8-1996', ''),
(30, 'aliff ', 'alif9alam@gmail.com', '1234', 'Female', '15-3-2002', ''),
(31, 'kam rul', 'alifalam@gmail.com', '1234', 'Male', '16-10-2001', ''),
(32, 'abc def', 'abc@gmail.com', '1234', 'Female', '13-11-2002', ''),
(33, 'aliff def', 'alif2alam@gmail.com', '1234', 'Male', '17-10-2001', ''),
(34, 'aliff def', 'alif12alam@gmail.com', '1234', 'Female', '17-10-2001', ''),
(35, 'alif def', 'alif81alam@gmail.com', '1234', 'Female', '18-8-1999', ''),
(36, 'kam def', 'alif80alam@gmail.com', '1234', 'Female', '17-11-2000', ''),
(37, 'kam Alam', 'atoxyz9@gmail.com', '1234', 'Female', '16-11-2000', ''),
(43, 'Hasan  Al Banna', 'hasan7@gmail.com', '1234', 'Male', '14-4-2003', ''),
(44, 'inti sar', 'harun@gmail.com', '12345', 'Male', '14-6-2002', ''),
(45, 'Alif Alam', 'alifalam7@gmail.com', '1234', 'Male', '11-9-2005', ''),
(46, 'Alif Robin', 'alifrobin@gmail.com', '1234', 'Male', '11-7-2002', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `post_txt` text NOT NULL,
  `post_pic` varchar(150) NOT NULL,
  `post_time` varchar(30) NOT NULL,
  `priority` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`post_id`, `user_id`, `post_txt`, `post_pic`, `post_time`, `priority`) VALUES
(82, 27, 'Hello !!! Proud to say  that basic website has been completed', '', '23-5-2017 11:19', 'Public'),
(84, 29, 'Joined Candygram', '', '', 'Public'),
(85, 29, 'added a new photo.', '', '2-8-2018 3:39', 'Public'),
(86, 29, 'ddd', '', '2-8-2018 3:43', 'Public'),
(87, 30, 'Joined Candygram', '', '', 'Public'),
(88, 32, 'Joined Candygram', '', '', 'Public'),
(91, 43, 'Joined Candygram', '', '', 'Public'),
(92, 43, '&#2479;\r\n', '', '2-8-2018 20:20', 'Public'),
(93, 43, 'cqecw', '', '2-8-2018 20:39', 'Public'),
(94, 43, 'cqecw', '', '2-8-2018 20:39', 'Public'),
(95, 43, 'cqecw', '', '2-8-2018 20:39', 'Public'),
(96, 43, 'bjkbj', '', '2-8-2018 20:40', 'Public'),
(97, 43, 'bjkbj', '', '2-8-2018 20:40', 'Public'),
(101, 46, 'Joined Candygram', '', '', 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_comment`
--

CREATE TABLE `user_post_comment` (
  `comment_id` int(7) NOT NULL,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post_comment`
--

INSERT INTO `user_post_comment` (`comment_id`, `post_id`, `user_id`, `comment`) VALUES
(3, 82, 29, 'ggg'),
(4, 82, 29, 'ggg'),
(5, 91, 43, 'ggg'),
(6, 91, 43, 'ggg'),
(7, 91, 43, 'ggg'),
(8, 91, 43, 'ggg'),
(9, 91, 43, 'ggg'),
(10, 91, 43, 'ggg'),
(11, 91, 43, 'ggg'),
(12, 91, 43, 'ggg');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_status`
--

CREATE TABLE `user_post_status` (
  `status_id` int(7) NOT NULL,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post_status`
--

INSERT INTO `user_post_status` (`status_id`, `post_id`, `user_id`, `status`) VALUES
(7, 82, 29, 'Like'),
(8, 91, 43, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_pic`
--

CREATE TABLE `user_profile_pic` (
  `profile_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_pic`
--

INSERT INTO `user_profile_pic` (`profile_id`, `user_id`, `image`) VALUES
(24, 27, 'androidify-1465045463010.gif'),
(26, 29, 'IMG_0746.JPG'),
(27, 30, 'WIN_20171115_23_52_36_Pro.jpg'),
(28, 32, 'WIN_20171115_23_52_44_Pro.jpg'),
(29, 33, 'WIN_20171115_23_52_46_Pro.jpg'),
(30, 34, 'WIN_20171115_23_52_46_Pro.jpg'),
(31, 35, 'WIN_20171115_23_52_46_Pro.jpg'),
(32, 36, 'WIN_20171115_23_52_38_Pro.jpg'),
(33, 37, 'WIN_20171115_23_52_38_Pro.jpg'),
(39, 43, 'Capture.PNG'),
(40, 31, 'PicsArt_10-24-04.16.09.jpg'),
(41, 44, 'Capture.PNG'),
(42, 45, 'PicsArt_10-24-04.16.09.jpg'),
(43, 46, 'PicsArt_10-24-04.16.09.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_secret_quotes`
--

CREATE TABLE `user_secret_quotes` (
  `user_id` int(7) NOT NULL,
  `Question1` varchar(50) NOT NULL,
  `Answer1` varchar(20) NOT NULL,
  `Question2` varchar(50) NOT NULL,
  `Answer2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_secret_quotes`
--

INSERT INTO `user_secret_quotes` (`user_id`, `Question1`, `Answer1`, `Question2`, `Answer2`) VALUES
(27, 'what is the first name of your favorite uncle?', 'manjot', 'where did you meet you spouse?', 'manjot'),
(29, 'select one', 'noone', 'select one', 'noone'),
(30, 'what is the first name of your favorite uncle?', 'noone', 'where did you meet you spouse?', 'noone'),
(32, 'what is the first name of your favorite uncle?', 'noone', 'what is the first name of your favorite uncle?', 'noone'),
(43, 'what is the first name of your favorite uncle?', 'noone', 'what is the first name of your favorite uncle?', 'noone'),
(31, 'what is the first name of your favorite uncle?', 'noone', 'what is the first name of your favorite uncle?', 'noone'),
(44, 'what is the first name of your favorite uncle?', 'nlll', 'what is the first name of your favorite uncle?', 'm,,'),
(45, 'what is the first name of your favorite uncle?', 'à¦šà¦Ÿà§à¦Ÿà¦—à§à¦', '', ''),
(46, 'what is the first name of your favorite uncle?', 'à¦šà¦Ÿà§à¦Ÿà¦—à§à¦', 'what is the first name of your favorite uncle?', 'à¦¨à§Œà¦•à¦¾');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_post`
--
ALTER TABLE `user_post`
  MODIFY `post_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  MODIFY `comment_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_post_status`
--
ALTER TABLE `user_post_status`
  MODIFY `status_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  MODIFY `profile_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD CONSTRAINT `user_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD CONSTRAINT `user_post_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_post` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD CONSTRAINT `user_profile_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD CONSTRAINT `user_secret_quotes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
