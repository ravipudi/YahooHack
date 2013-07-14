-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2013 at 04:19 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scribble_db`
--
CREATE DATABASE IF NOT EXISTS `scribble_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scribble_db`;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE IF NOT EXISTS `hashtags` (
  `h_id` int(15) NOT NULL,
  `h_text` text NOT NULL,
  `u_id` int(10) NOT NULL,
  `p_count` int(5) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hashtags`
--

INSERT INTO `hashtags` (`h_id`, `h_text`, `u_id`, `p_count`) VALUES
(0, 'hbv,mvhm', 1, 1),
(1, '#ghfgh', 0, 1),
(2, 'scXxZCxxCxZCZXcX', 4, 0),
(3, '#hjgsadfj ', 4, 0),
(4, '#vmhxbvcmb,jzx ,mcvjjkdv', 4, 0),
(5, '#facebook dgfcgsdjvsdbvbs dsvbhjsv djfjbv vcbkjbvdjbjkbdv sdvjbkjbvmnb dsvbb', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `p_id` int(15) NOT NULL,
  `u_id` int(10) NOT NULL,
  `p_text` text NOT NULL,
  `p_img` text NOT NULL,
  `p_url` varchar(15) NOT NULL,
  `p_priv` int(2) NOT NULL,
  `p_time` varchar(15) NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_url` (`p_url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`p_id`, `u_id`, `p_text`, `p_img`, `p_url`, `p_priv`, `p_time`) VALUES
(0, 0, 'jbjbjk', '', 'hgkhj', 0, '55767'),
(1, 4, 'scXxZCxxCxZCZXcX', '', 'fgdf', 0, ''),
(2, 4, 'scXxZCxxCxZCZXcX', '', 'zSHU6MNtPX', 0, ''),
(3, 4, 'scXxZCxxCxZCZXcX #sfvc', '', 'N9XmcpK8j2', 0, ''),
(4, 4, 'scXxZCxxCxZCZXcX', '', 'pjHIklnMu7', 0, ''),
(5, 4, 'hbdsfg #hjgsadfj  hdsfdskj', '', '0BcRUE9uxd', 0, ''),
(6, 4, 'dhfzjgxvjksd\r\ndhjfajhd #vmhxbvcmb,jzx ,mcvjjkdv zxcbkj', '', 'UulLTQjMyB', 0, ''),
(7, 4, 'sfadfasdgvhjk hjvdfjhvadjhf hasfvchajsdf dhjfahdsfhvd hsfagshfgjdsagfjhgd hhfhfdaf #facebook dgfcgsdjvsdbvbs dsvbhjsv djfjbv vcbkjbvdjbjkbdv sdvjbkjbvmnb dsvbb ', '', 'xmsBTik9nO', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(10) NOT NULL,
  `u_name` varchar(25) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_pass` varchar(21) NOT NULL,
  `u_code` varchar(12) NOT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_name` (`u_name`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_email`, `u_pass`, `u_code`) VALUES
(0, '0', '0', '0', '0'),
(1, 'KjRvTBaWE2x0', 'a', 'a', ''),
(2, '2VY8BifTpWqv', 'b', 'b', ''),
(3, 'D5ZEq0BvtTy9', 'c', 'b', ''),
(4, 'jfcN5m0BOnJA', 'd', 'd', '8qBO532Ajbkp'),
(5, 'Fa_ZoNt1ynL4', 'e', 'd', ''),
(6, '_9XacHZM7mrs', 'f', 'd', ''),
(7, 'ke9yjhxf0bJ3', 'fod', 'd', ''),
(8, 'YfTrynQHV2R8', 'askjdskl', '12341234', ''),
(9, 'DpS7tfmWdyu1', 'asdfasdf', 'asdfasdf', ''),
(10, 'bhDuU6i1pyVe', 'asdfasdf1', 'asdfasdf', ''),
(11, 'Cu_D5O0BSYLA', '123412341234', '12341234', ''),
(12, 'RFKAe41LJSfW', '123456789', '1234', ''),
(13, 'xw0Y6Fo3VHqv', 'asdfgasdf', '12341234', ''),
(14, 'OFwTnfNPS0Ym', '1234qwer1234', '12341234', ''),
(15, 'o6jFfNCs2HIe', '123411234', '12341234', ''),
(16, 'NV7WC0svFOGp', '11231234', '12341234', ''),
(17, 'PeXw54l6YDZB', '12341234qwer', '12341234', ''),
(18, 'kg5L6V1MGKom', '12341234qwer2', '12341234', ''),
(19, 'OMRB7xhGAa0m', 'asdjmasdf', '12341234', ''),
(20, 'WacHQlrK4iY2', 'asdjmasdf6', '12341234', ''),
(21, 'UtXlDjLnmqHu', 'asdfjmlm', '1234qwer', ''),
(22, 'E_c9q2Ulsj4I', 'asdf1234', '1234', ''),
(23, '74XOdylsA8Ic', 'asdf12345', '1234', ''),
(24, 'OsZ9jywQ7iBa', 'asdfdsa', '1234', ''),
(25, 'atrOji7nThV9', '1234qwer12', '1234', ''),
(26, 'gbxUDFsupAX5', 'ddxzfvadsbn', '1234', ''),
(27, 'nDopSFkadmRu', 'ddxzfvadsbnd', '1234', ''),
(28, 'a_02TNACQDMx', 'ddxzfvadsbndf', '1234', ''),
(29, 'nhGqH3PdalvE', 'ddxzfvadsbndff', '1234', ''),
(30, 'MBOFcDQxe62E', 'ddxzfvadsbndffcv', '1234', ''),
(31, '1HAic3fbF_y6', 'ddxzfvadsbndffcvfgdshcv', '1234', ''),
(32, 'nmJkc23so06u', 'ddxzfvadsbndffcvfgd', '1234', ''),
(33, '1SQFMVhlNUfO', 'cvdcxvzzcx', '1234', ''),
(34, '6HbJu92tDWQ4', 'cvdcxvf', '1234', '7Q6XZpMhNUoI'),
(35, 'p5SCqFXcAVLU', 'dsgasdgsa', 'd', ''),
(36, 'GxiP1UdA_S0m', 'asdfadzxf', 'w', ''),
(37, 'YiX4eI58ucBy', 'dsafadsfwewer', 'qqq', ''),
(38, 'nWjVhblqIFoy', 'dsgasgf', 'er', ''),
(39, 'WTO7zlAq_MGS', 'dsgasgfd', 'er', ''),
(40, 'cb1NrI_8gVDo', 'dfadf', 'df', ''),
(41, 'WC6htjRuVydL', 'sdgsgsd', 'sd', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
