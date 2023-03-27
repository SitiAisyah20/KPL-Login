-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 02:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(35, 'Salsa', 'iniemail022@gmail.com', 'default.jpg', '$2y$10$6ISq77pt3pCp.zQk.WbP9OpPPQj.tlU1tomyZR82ypAbC5B5MXVCy', 2, 1, 1674306758);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(4, 3, 'Submenu Management', 'menu/submenu', 'fa fa-fw fa-folder-open', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(2, 'sekarsalsa.7@gmail.com', '0', 0),
(3, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(4, 'athiyaturr.1709@students.amikom.ac.id', '0', 0),
(5, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(6, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(7, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(8, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(9, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(10, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(11, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(12, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(13, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(14, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(15, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(16, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(17, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(18, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(19, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(20, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(21, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(22, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(23, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(24, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(25, 'sekarsalsa.7@students.amikom.ac.id', '2', 0),
(26, 'sekarsalsa.7@students.amikom.ac.id', '0', 0),
(27, 'assbh@gmail.com', 'Uj8QxS0+evFmK1k5VDbk8Lvua9graarX8DtBK7LmYEM=', 1674189037),
(37, 'iniemail0222@gmail.com', 'gwwB2PF5AiKl1MjEmmBZKG1NYdG0MNG+tcfaS+eTOKE=', 1674195222),
(38, 'sekarsalsa.7@students.amikom.ac.id', 'Lgh7iO2y2Q+sVjXCXWyyUaLFkW41CKgaKZqaE7lUIiY=', 1674195349),
(62, 'sekarsalsaarifah123@gmail.com', 'nmC3Rmu8k9F6eRp6A+jzxJcj3/uWkqSXP5aHXswGr4A=', 1674218369),
(81, 'iniemail022@gmail.com', 'DtFc9lP96nHshbqKlO44R8i47hRJTjFAU4o16ZBFO2Q=', 1674306975);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
