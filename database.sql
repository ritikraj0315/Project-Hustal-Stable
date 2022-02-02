-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2022 at 10:21 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omegadri_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `vhost_admin`
--

CREATE TABLE `vhost_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_email` varchar(70) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vhost_client`
--

CREATE TABLE `vhost_client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_email` varchar(70) NOT NULL,
  `client_password` varchar(100) NOT NULL,
  `client_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vhost_cpanel`
--

CREATE TABLE `vhost_cpanel` (
  `cpanel_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `cpanel_username` varchar(20) NOT NULL,
  `cpanel_label` varchar(150) NOT NULL,
  `cpanel_client_username` varchar(30) NOT NULL,
  `cpanel_password` varchar(40) NOT NULL,
  `cpanel_status` int(1) NOT NULL,
  `cpanel_domain` varchar(30) NOT NULL,
  `cpanel_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vhost_ssl`
--

CREATE TABLE `vhost_ssl` (
  `ssl_id` int(11) NOT NULL,
  `ssl_key` int(11) NOT NULL,
  `private_key` varchar(1200) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vhost_ticket`
--

CREATE TABLE `vhost_ticket` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ticket_subject` varchar(150) NOT NULL,
  `ticket_content` varchar(700) NOT NULL,
  `ticket_date` varchar(10) NOT NULL,
  `ticket_time` varchar(20) NOT NULL,
  `ticket_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vhost_ticket_reply`
--

CREATE TABLE `vhost_ticket_reply` (
  `reply_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `reply_content` varchar(700) NOT NULL,
  `reply_by` int(11) NOT NULL,
  `reply_date` varchar(10) NOT NULL,
  `reply_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vhost_admin`
--
ALTER TABLE `vhost_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `vhost_client`
--
ALTER TABLE `vhost_client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_password` (`client_password`);

--
-- Indexes for table `vhost_cpanel`
--
ALTER TABLE `vhost_cpanel`
  ADD PRIMARY KEY (`cpanel_id`);

--
-- Indexes for table `vhost_ssl`
--
ALTER TABLE `vhost_ssl`
  ADD PRIMARY KEY (`ssl_id`);

--
-- Indexes for table `vhost_ticket`
--
ALTER TABLE `vhost_ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `vhost_ticket_reply`
--
ALTER TABLE `vhost_ticket_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vhost_admin`
--
ALTER TABLE `vhost_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vhost_client`
--
ALTER TABLE `vhost_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vhost_cpanel`
--
ALTER TABLE `vhost_cpanel`
  MODIFY `cpanel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vhost_ssl`
--
ALTER TABLE `vhost_ssl`
  MODIFY `ssl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vhost_ticket`
--
ALTER TABLE `vhost_ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vhost_ticket_reply`
--
ALTER TABLE `vhost_ticket_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
