-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 08:29 AM
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
-- Database: `php_velidation_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(50) NOT NULL,
  `mobile_number` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `hobbies` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `upload` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `age`, `mobile_number`, `email`, `password`, `gender`, `hobbies`, `country`, `address`, `upload`) VALUES
(1, 'shubham', 'tyagi', 25, 9457365480, 'tyagishubham9412@gmail.com', '12345', '', '', '', 'asdfghhhjh', 'shubham tyagi.PNG'),
(3, 'fdffg', 'dss', 23, 1234567890, 'admin@admin.com', '2345', '', '', '', 'asdfghhhjh', 'st.jpeg'),
(4, 'John', 'Doe', 23, 2345678901, 'columbiaconventinstitutecci@gmail.com', '12345', '', '', '', 'fgsdgsdgshs', 'shubham tyagi.PNG'),
(5, 'ankit', 'sharma', 24, 6395301596, 'ishikka@queidt.com', '1234567890', '', 'on', 'Australia', 'sdfdfsgrdjdfgbfgh', 'st.jpeg'),
(6, 'shivam', 'tyagi', 22, 7674456676, 'tyagi@tyagi.com', '34567', '', 'on', 'China', 'gshgeyghgefwt', 'st.jpeg'),
(7, 'nishu', 'tyagi', 21, 8765432145, 'nishu@tyagi.com', '2345', '', '1', 'South Africa', 'fdhrdje', 'shubham tyagi.PNG'),
(8, 'sumit', 'tyagi', 22, 9876564534, 'sumit@sumit.com', '3421', '', 'on', 'Japan', 'thwrhsfg', 'st.jpeg'),
(9, 'rahul', 'rahul', 22, 8765456789, 'rahul@rahul.com', '2345', '', 'on', 'China', 'dghfhsfg', 'shubham tyagi.PNG'),
(10, 'subh', 'tyagi', 23, 9457365490, 'admin565@gmail.com', '3456', '', 'on', 'Japan', 'ghrhs', 'shubham tyagi.PNG'),
(11, 'shubham', 'tyagi', 25, 9457365465, 'admin576@gmail.com', '12345', '', 'rtry', 'India', 'gfjhgfjhgj', 'st.jpeg'),
(12, 'shubham', 'tyagi', 25, 9457704546, 'admin3432@gmail.com', '234', '', 'Football', 'Japan', 'dfghe', 'st.jpeg'),
(13, 'shubham', 'tyagi', 25, 9457365476, 'admin342@gmail.com', '1234', 'm', 'Football', 'Australia', 'fargwetgb', 'shubham tyagi.PNG'),
(14, 'shubham', '', 0, 0, '', '', '', '', '', '', ''),
(15, 'shubham', 'tyagi', 25, 9457365480, 'admin9080@gmail.com', '1234', '', '', '', '', ''),
(16, 'shubham', 'tyagi', 23, 8988776655, 'admin786@gmail.com', '12345', '', 'Hockey', 'Japan', 'sdfgsgfjehfsbeht', 'shubham tyagi.PNG'),
(17, 'shubham', 'Doe', 25, 7674456676, 'admin12321@gmail.com', '12345', '', 'Football', 'South Africa', 'fgfdgfkifj', 'st.jpeg'),
(29, 'John', 'Doe', 25, 7674456679, 'admin945@gmail.com', '2345', '', 'Cricket,Football,', 'Australia', 'sdfgsdgfhjrt', 'shubham tyagi.PNG'),
(30, 'gourav', 'tyagi', 25, 9457365476, 'admin32@gmail.com', '321', '', 'Cricket,Football,Hockey,', 'Japan', 'sgsrydtuy', 'st.jpeg'),
(31, 'shubham', 'tyagi', 25, 9457365475, 'admin75@gmail.com', '234', '', 'Cricket,', 'Australia', 'fghfgjh', 'st.jpeg'),
(32, 'shubham', 'tyagi', 22, 9457365480, 'admin12@gmail.com', '1234', '', 'Cricket,Football,Hockey,Tennis,', 'India', 'tyagi', 'shubham tyagi.PNG'),
(33, 'gourav', 'tyagi', 23, 9457365481, 'admin31@gmail.com', '21', '', 'CricketFootballHockeyTennis', 'Australia', 'gourav', 'shubham tyagi.PNG'),
(35, 'gourav', 'tyagi', 23, 9457365481, 'admin35@gmail.com', '23', '', 'Cricket,Football,Hockey,Tennis,', 'Australia', 'gourav', 'shubham tyagi.PNG'),
(38, 'Mr. Mukesh Tyagi ', 'Tyagi ', 45, 9457365480, 'ishikka111@queidt.com', '12345', '', 'Cricket,Football,', 'Australia', 'vgchchg', 'shubham tyagi.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
