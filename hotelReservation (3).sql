-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2019 at 09:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelReservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `totalrooms` int(255) NOT NULL,
  `classicrooms` int(255) NOT NULL,
  `standardrooms` int(255) NOT NULL,
  `deluxerooms` int(255) NOT NULL,
  `classicsingle` int(255) NOT NULL,
  `classicdouble` int(255) NOT NULL,
  `classictriple` int(255) NOT NULL,
  `standardsingle` int(25) NOT NULL,
  `standarddouble` int(25) NOT NULL,
  `standardtriple` int(11) NOT NULL,
  `deluxesingle` int(11) NOT NULL,
  `deluxedouble` int(25) NOT NULL,
  `deluxetriple` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `totalrooms`, `classicrooms`, `standardrooms`, `deluxerooms`, `classicsingle`, `classicdouble`, `classictriple`, `standardsingle`, `standarddouble`, `standardtriple`, `deluxesingle`, `deluxedouble`, `deluxetriple`) VALUES
(1, 'admin@gmail.com', 'admin', 100, 40, 30, 30, 20, 10, 10, 10, 10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `classicrooms`
--

CREATE TABLE `classicrooms` (
  `id` int(25) NOT NULL,
  `client_id` int(255) NOT NULL,
  `singleroom` int(15) NOT NULL,
  `doubleroom` int(15) NOT NULL,
  `tripleroom` int(15) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `adult` int(10) NOT NULL,
  `children` int(15) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classicrooms`
--

INSERT INTO `classicrooms` (`id`, `client_id`, `singleroom`, `doubleroom`, `tripleroom`, `checkin`, `checkout`, `adult`, `children`, `status`) VALUES
(1, 1, 1, 2, 3, '2019-11-30', '2019-12-01', 1, 0, 'pending'),
(2, 1, 1, 2, 3, '2019-11-30', '2019-12-01', 1, 0, 'pending'),
(3, 1, 1, 0, 0, '2019-11-30', '2019-12-01', 1, 0, 'pending'),
(8, 5, 2, 2, 2, '2019-12-04', '2019-12-05', 1, 1, 'pending'),
(9, 5, 2, 2, 2, '2019-12-04', '2019-12-05', 2, 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `clientReg`
--

CREATE TABLE `clientReg` (
  `client_id` int(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nicNum` int(13) NOT NULL,
  `phoneNum` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientReg`
--

INSERT INTO `clientReg` (`client_id`, `username`, `email`, `password`, `nicNum`, `phoneNum`) VALUES
(1, 'faisal', 'faisal@gmail.com', 'f4668288fdbf9773dd9779d412942905', 2147483647, 2147483647),
(2, 'faisal', 'faisal1@gmail.com', 'f4668288fdbf9773dd9779d412942905', 16202030, 2147483647),
(3, 'khadija', 'khadija@gmail.com', '765c2a897faa3bfc4a37544cef748c17', 2147483647, 2147483647),
(4, 'faisal', 'khan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1634234, 2342344),
(5, 'khadija khan', 'khadijakhan@gmail.com', '765c2a897faa3bfc4a37544cef748c17', 3223, 34242),
(6, 'awais', 'awais@gmail.com', 'bf8f8bc114068709aafc9fa41c3d4b44', 3223, 2344);

-- --------------------------------------------------------

--
-- Table structure for table `dulexrooms`
--

CREATE TABLE `dulexrooms` (
  `id` int(25) NOT NULL,
  `client_id` int(255) NOT NULL,
  `singleroom` int(25) NOT NULL,
  `doubleroom` int(25) NOT NULL,
  `tripleroom` int(25) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `adult` int(10) NOT NULL,
  `children` int(15) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dulexrooms`
--

INSERT INTO `dulexrooms` (`id`, `client_id`, `singleroom`, `doubleroom`, `tripleroom`, `checkin`, `checkout`, `adult`, `children`, `status`) VALUES
(1, 1, 14, 14, 0, '2019-12-10', '2019-12-11', 2, 2, 'pending'),
(2, 1, 0, 2, 0, '2019-12-14', '2019-12-15', 2, 2, 'pending'),
(3, 1, 0, 2, 0, '2019-12-14', '2019-12-15', 2, 2, 'pending'),
(4, 1, 0, 2, 0, '2019-12-14', '2019-12-15', 2, 2, 'pending'),
(5, 1, 0, 2, 0, '2019-12-14', '2019-12-15', 2, 2, 'pending'),
(6, 1, 0, 2, 0, '2019-12-14', '2019-12-15', 2, 2, 'pending'),
(7, 1, 2, 0, 0, '2019-12-12', '2019-12-14', 4, 4, 'pending'),
(8, 5, 2, 2, 2, '2019-12-04', '2019-12-05', 2, 2, 'pending'),
(9, 5, 2, 2, 2, '2019-12-04', '2019-12-05', 2, 2, 'pending'),
(10, 5, 1, 1, 1, '2019-12-07', '2019-12-08', 1, 1, 'pending'),
(11, 5, 1, 1, 1, '2019-12-07', '2019-12-08', 1, 1, 'pending'),
(12, 5, 1, 2, 3, '2019-12-04', '2019-12-05', 4, 4, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `Rooms`
--

CREATE TABLE `Rooms` (
  `room_id` int(11) NOT NULL,
  `accomodation` varchar(25) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rooms`
--

INSERT INTO `Rooms` (`room_id`, `accomodation`, `price`, `type`) VALUES
(1, 'classic', 1000, 'single'),
(2, 'classic', 1000, 'single'),
(3, 'classic', 1000, 'single'),
(4, 'classic', 1000, 'single'),
(5, 'classic', 1000, 'single'),
(6, 'classic', 1000, 'single'),
(7, 'classic', 1000, 'single'),
(8, 'classic', 1000, 'single'),
(9, 'classic', 1000, 'single'),
(10, 'classic', 1000, 'single'),
(11, 'classic', 2000, 'double'),
(12, 'classic', 2000, 'double');

-- --------------------------------------------------------

--
-- Table structure for table `standardrooms`
--

CREATE TABLE `standardrooms` (
  `id` int(25) NOT NULL,
  `client_id` int(255) NOT NULL,
  `singleroom` int(15) NOT NULL,
  `doubleroom` int(15) NOT NULL,
  `tripleroom` int(15) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `adult` int(10) NOT NULL,
  `children` int(15) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standardrooms`
--

INSERT INTO `standardrooms` (`id`, `client_id`, `singleroom`, `doubleroom`, `tripleroom`, `checkin`, `checkout`, `adult`, `children`, `status`) VALUES
(1, 1, 14, 14, 0, '2019-12-05', '2019-12-06', 4, 2, 'pending'),
(2, 1, 2, 0, 0, '2020-01-08', '2019-12-19', 4, 3, 'pending'),
(3, 1, 2, 0, 0, '2019-12-05', '2019-12-06', 2, 1, 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classicrooms`
--
ALTER TABLE `classicrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientReg`
--
ALTER TABLE `clientReg`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `dulexrooms`
--
ALTER TABLE `dulexrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Rooms`
--
ALTER TABLE `Rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `standardrooms`
--
ALTER TABLE `standardrooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classicrooms`
--
ALTER TABLE `classicrooms`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clientReg`
--
ALTER TABLE `clientReg`
  MODIFY `client_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dulexrooms`
--
ALTER TABLE `dulexrooms`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Rooms`
--
ALTER TABLE `Rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `standardrooms`
--
ALTER TABLE `standardrooms`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
