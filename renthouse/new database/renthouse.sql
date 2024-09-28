-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 12:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renthouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_property`
--

CREATE TABLE `add_property` (
  `property_id` int(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `vdc_municipality` varchar(50) NOT NULL,
  `ward_no` int(10) NOT NULL,
  `tole` varchar(100) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `estimated_price` bigint(10) NOT NULL,
  `total_rooms` int(10) NOT NULL,
  `bedroom` int(10) NOT NULL,
  `living_room` int(10) NOT NULL,
  `kitchen` int(10) NOT NULL,
  `bathroom` int(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `booked` enum('Yes','No') DEFAULT 'No',
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `owner_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_property`
--

INSERT INTO `add_property` (`property_id`, `country`, `province`, `zone`, `district`, `city`, `vdc_municipality`, `ward_no`, `tole`, `contact_no`, `property_type`, `estimated_price`, `total_rooms`, `bedroom`, `living_room`, `kitchen`, `bathroom`, `description`, `booked`, `latitude`, `longitude`, `owner_id`) VALUES
(15, 'Nepal', 'Gandaki Pradesh', 'Kosi', 'Bhojpur', 'thane', 'VDC', 1, '1', 4322134213, 'Flat Rent', 50000, 1, 1, 1, 1, 1, 'full', 'Yes', '19.256474', '73.143063', 3),
(17, 'Nepal', 'Bagmati Pradesh', 'Lumbini', 'Sankhuwasabha', 'kalyan', 'VDC', 101, 'a-5', 1234567891, 'Flat Rent', 50000, 1, 1, 1, 1, 1, '76', 'Yes', '19.247245', '73.139721', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `tenant_id`, `property_id`) VALUES
(1, 18, 123),
(2, 18, 125),
(3, 18, 15),
(4, 18, 17);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `owner_id`, `tenant_id`, `message`, `timestamp`) VALUES
(3, 3, 18, 'contact me', '2024-04-11 09:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_type` varchar(100) NOT NULL,
  `id_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `full_name`, `email`, `password`, `phone_no`, `address`, `id_type`, `id_photo`) VALUES
(2, 'sahil', 'sahil@gmail.com', '1006f0ae5a7ece19828a67ac62288e05', 1234567891, 'kalyan', 'Citizenship', 'owner-photo/nikesh.png'),
(3, 'saytam singh', 'satyam@gmail.com', '0f2cdafc6b1adf94892b17f355bd9110', 1234567891, 'thane', 'Driving Licence', 'owner-photo/avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `property_photo`
--

CREATE TABLE `property_photo` (
  `property_photo_id` int(12) NOT NULL,
  `p_photo` varchar(500) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_photo`
--

INSERT INTO `property_photo` (`property_photo_id`, `p_photo`, `property_id`) VALUES
(174, 'product-photo/a.jpg', 123),
(175, 'product-photo/b.jpg', 123),
(176, 'product-photo/b.jpg', 124),
(177, 'product-photo/a.jpg', 124),
(178, 'product-photo/nikesh.png', 125),
(179, 'product-photo/carousel.png', 1),
(180, 'product-photo/house.jpg', 1),
(181, 'product-photo/carousel.png', 2),
(182, 'product-photo/house.jpg', 3),
(183, 'product-photo/carousel.png', 4),
(184, 'product-photo/carousel.png', 5),
(185, 'product-photo/house.jpg', 6),
(186, 'product-photo/house.jpg', 8),
(187, 'product-photo/house.jpg', 9),
(189, 'product-photo/carousel.png', 11);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `rating` int(5) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `comment`, `rating`, `property_id`) VALUES
(5, 'This property is very nice.', 5, 123),
(6, 'I love this property.', 4, 124),
(7, 'good room 123', 5, 125);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenant_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_type` varchar(100) NOT NULL,
  `id_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenant_id`, `full_name`, `email`, `password`, `phone_no`, `address`, `id_type`, `id_photo`) VALUES
(17, 'Nikesh Tiwari', 'nikeshtiwari3230@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 987654321, 'Kirtipur-3', 'Citizenship', 'tenant-photo/nikesh.png'),
(18, 'jayesh shelkar', 'jayesh@gmail.com', '4d069b4e77b1d1804bead1d3bea762b8', 1234567891, 'kalyan', 'Driving Licence', 'tenant-photo/nikesh.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_property`
--
ALTER TABLE `add_property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `chat_ibfk_1` (`owner_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `property_photo`
--
ALTER TABLE `property_photo`
  ADD PRIMARY KEY (`property_photo_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_property`
--
ALTER TABLE `add_property`
  MODIFY `property_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_photo`
--
ALTER TABLE `property_photo`
  MODIFY `property_photo_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenant_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_property`
--
ALTER TABLE `add_property`
  ADD CONSTRAINT `add_property_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `add_property` (`property_id`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `add_property` (`property_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
