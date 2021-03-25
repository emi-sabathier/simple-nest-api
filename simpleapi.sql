-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2021 at 09:02 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES
(1, 'Vivien', 'Koch', 'hattie.doyle@example.com', '1995-03-13', '2011-08-22 13:20:31'),
(2, 'Stan', 'Orn', 'abigail28@example.org', '2008-06-16', '1972-12-18 09:03:53'),
(3, 'Guadalupe', 'Rohan', 'maximillia.anderson@example.com', '1978-04-15', '2005-07-27 10:07:27'),
(4, 'Dasia', 'Denesik', 'kasey.fisher@example.org', '1986-07-03', '1971-04-16 05:09:15'),
(5, 'Cloyd', 'Wintheiser', 'ledner.weston@example.org', '2010-02-16', '2016-03-11 21:33:24'),
(6, 'Dominique', 'Schoen', 'rgreenfelder@example.net', '1982-06-08', '1972-07-05 22:03:40'),
(7, 'Gretchen', 'Murphy', 'jimmy.feeney@example.com', '1995-06-19', '1995-03-07 17:22:37'),
(8, 'Lenna', 'Emmerich', 'katharina.bergnaum@example.com', '2013-12-20', '1982-08-17 00:13:18'),
(9, 'Vickie', 'Bogisich', 'wilbert23@example.com', '2018-12-20', '1976-08-01 19:56:28'),
(10, 'Cleta', 'Macejkovic', 'amina.lebsack@example.net', '2011-04-25', '1996-02-07 06:11:04'),
(11, 'Frederik', 'Blick', 'rath.conrad@example.org', '2004-12-06', '1982-07-11 01:57:32'),
(12, 'Ona', 'Kautzer', 'elnora.beatty@example.org', '2004-06-25', '2016-09-23 07:02:17'),
(13, 'Keegan', 'Durgan', 'salma85@example.net', '1997-02-20', '1984-05-08 12:35:06'),
(14, 'Annabel', 'Dickinson', 'raleigh84@example.org', '2005-03-16', '1979-03-24 14:34:12'),
(15, 'Joana', 'Christiansen', 'annabell25@example.org', '1998-11-20', '1990-11-03 17:29:01'),
(16, 'Ashley', 'Crist', 'frami.lizeth@example.org', '1994-03-06', '1983-03-18 13:13:21'),
(17, 'Myrtice', 'Williamson', 'savanah22@example.org', '1985-12-22', '1987-05-16 14:17:32'),
(18, 'Jeffery', 'Nader', 'jenkins.sabina@example.net', '2007-03-05', '1996-04-08 13:50:49'),
(19, 'Bartholome', 'Stiedemann', 'ffriesen@example.org', '1999-01-12', '1994-07-19 03:07:14'),
(20, 'Toney', 'Durgan', 'mitchell.jovani@example.org', '1980-08-29', '1995-11-11 10:16:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
