-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 04:41 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apple-iphone-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `memory` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `model`, `memory`, `color`, `price`, `images`) VALUES
(1, 'Apple iPhone 8', '64 Gb', 'rose gold', 1000, 'https://cdn.tgdd.vn/Products/Images/42/114112/iphone-8-256gb-h4-1-400x460.png'),
(2, 'Apple iPhone 8', '64 Gb', 'grey', 950, 'https://cdn.tgdd.vn/Products/Images/42/114112/iphone-8-256gb-h4-1-400x460.png'),
(3, 'Apple iPhone 8', '64 Gb', 'mate black', 1000, 'https://cdn.tgdd.vn/Products/Images/42/114112/iphone-8-256gb-h4-1-400x460.png'),
(4, 'Apple iPhone 8 Plus', '64 Gb', 'rose gold', 1200, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb2-400x460-1-400x460.png'),
(5, 'Apple iPhone 8 Plus', '64 Gb', 'grey', 1150, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb2-400x460-1-400x460.png'),
(6, 'Apple iPhone 8 Plus', '64 Gb', 'mate black', 1200, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb2-400x460-1-400x460.png'),
(7, 'Apple iPhone X', '64 Gb', 'white', 1350, 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-hh-600x600-400x400.jpg'),
(8, 'Apple iPhone X', '64 Gb', 'mate black', 1350, 'https://cdn.tgdd.vn/Products/Images/42/114111/iphone-x-256gb-h2-400x460.png'),
(9, 'Apple iPhone X', '128 Gb', 'white', 1500, 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-hh-600x600-400x400.jpg'),
(10, 'Apple iPhone X', '128 Gb', 'mate black', 1500, 'https://cdn.tgdd.vn/Products/Images/42/114111/iphone-x-256gb-h2-400x460.png'),
(12, 'Apple Watch 3', '8 Gb', 'Gold Aluminum Case Pink Sand Sport Loop', 495, 'https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/4/2/42/alu/42-alu-gold-sport-loop-pink-s3-grid?wid=270&hei=275&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
