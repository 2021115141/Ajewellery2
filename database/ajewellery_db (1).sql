-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 03:18 AM
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
-- Database: `ajewellery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `weight_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `ip_address`, `date_created`, `weight_id`) VALUES
(4, 2, 2, 1, 2, 1, 3500, '', '2020-11-12 17:14:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `date_created`) VALUES
(1, 'Cincin', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque eget ante eu laoreet. Duis a rutrum eros. Duis maximus varius ipsum eu maximus. Proin et feugiat felis, non sodales erat. Nunc porta diam sit amet diam tincidunt, eleifend volutpat erat tristique. Integer vitae ex nec dolor tempus rutrum vel sed nulla. Nam elit enim, placerat vel lectus quis, facilisis sollicitudin velit. Vivamus blandit lectus vitae libero facilisis, vitae bibendum arcu consequat. Duis viverra interdum molestie. Vivamus mattis auctor velit.</span>															', '0000-00-00 00:00:00'),
(2, 'Rantai Leher', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Duis quis felis sit amet odio convallis ullamcorper vel sed eros. Donec leo magna, tincidunt non ipsum quis, semper convallis eros. Nam et lectus vitae est mollis facilisis sit amet vitae metus. Aliquam sagittis ligula non vulputate consequat. Pellentesque non eleifend dolor, ac facilisis velit. Aenean pulvinar eget lorem et dictum. Nulla et sollicitudin eros. Donec eu tortor ac nibh tincidunt gravida id in nisl. Nam auctor ultrices justo et fermentum. Quisque quis risus libero. Aliquam porttitor ante vel sem fringilla suscipit. Nulla ac tempus velit. Sed laoreet vestibulum rutrum. Proin tellus erat, fermentum imperdiet feugiat non, vestibulum at velit. Proin orci lectus, mattis vel ultricies id, iaculis et nunc.</span>															', '0000-00-00 00:00:00'),
(3, 'Pandora', '', '0000-00-00 00:00:00'),
(4, 'Bangel', '', '0000-00-00 00:00:00'),
(5, 'Perak', '', '0000-00-00 00:00:00'),
(6, 'Rantai tangan', '', '0000-00-00 00:00:00'),
(7, 'Rantai Kaki', '', '0000-00-00 00:00:00'),
(8, 'Loket', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `color` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `product_id`, `color`, `date_created`) VALUES
(7, 8, 'gold', '2023-02-12 14:02:45'),
(8, 9, '1', '2023-02-12 14:03:17'),
(9, 10, 'gold', '2023-02-12 14:48:18'),
(10, 8, 'mix croom', '2023-02-14 10:59:40'),
(11, 11, 'gold', '2023-02-15 00:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `user_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_id`, `user_id`, `delivery_address`, `status`, `date_created`, `method`) VALUES
(3, 'SgB4Ey8qLaDxdihc', 1, '', 1, '2023-02-14 12:28:31', ''),
(4, 'JlzOtueE6DXUfxFY', 1, 'saya akan datang ambil dua hari nanti', 1, '2023-02-14 12:31:38', ''),
(5, 'J8tLpI5NVaCdDAO0', 1, '', 0, '2023-02-14 16:44:52', ''),
(12, 'SabfsDViq9cOkvpE', 1, '', 0, '2023-02-14 22:30:37', ''),
(13, 'OGu4zcPvMKjFtioI', 6, '', 0, '2023-02-15 09:23:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `weight_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `date_created`, `weight_id`) VALUES
(4, 3, 8, 10, 14, 1, 250.73, '2023-02-14 12:28:31', 1),
(5, 3, 8, 7, 11, 1, 250.73, '2023-02-14 12:28:31', 1),
(6, 4, 8, 7, 11, 1, 250.73, '2023-02-14 12:31:38', 1),
(7, 5, 8, 7, 11, 2, 250.73, '2023-02-14 16:44:52', 1),
(14, 12, 8, 7, 11, 1, 250.73, '2023-02-14 22:30:37', 2),
(15, 13, 8, 7, 11, 1, 251.98, '2023-02-15 09:23:57', 2),
(16, 13, 8, 7, 14, 1, 251.98, '2023-02-15 09:23:57', 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `item_code` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(255) NOT NULL,
  `wages` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `item_code`, `price`, `type`, `wages`, `date_created`) VALUES
(8, 4, 'rantai kendi gantung love', '																																rantai tangan kendi gantung hati							', '5Pm2AWJXQ6L8c3ye', 0, '916', 100, '2023-02-12 14:02:45'),
(9, 4, '123', '																																123																												', '2r3XHOfLe87h4Zlq', 0, '916', 250, '2023-02-12 14:03:17'),
(10, 2, 'mesin', '																														', 'zEg7XmNePFyxAc4S', 0, '916', 100, '2023-02-12 14:48:18'),
(11, 3, 'Pandora', '															', 'HZRK2LOnX0Qj1lEq', 0, '916', 350, '2023-02-15 00:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_date` date NOT NULL DEFAULT current_timestamp(),
  `setting_type` int(11) NOT NULL,
  `setting_new` double NOT NULL,
  `setting_used` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `setting_date`, `setting_type`, `setting_new`, `setting_used`) VALUES
(1, '2023-01-29', 916, 251.98, 212.4),
(2, '2023-02-02', 916, 257.04, 230.24),
(3, '2023-02-12', 916, 257.04, 213.25),
(4, '2023-02-13', 916, 250.73, 216.9),
(5, '2023-02-14', 916, 250.73, 216.9),
(6, '2023-02-15', 916, 251.98, 216.9);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `product_id`, `size`, `date_created`) VALUES
(11, 8, '16cm', '2023-02-12 14:02:45'),
(12, 9, '1', '2023-02-12 14:03:17'),
(13, 10, '16cm', '2023-02-12 14:48:18'),
(14, 8, '18cm', '2023-02-14 10:59:40'),
(15, 11, '16cm', '2023-02-15 00:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+12354654787', 'Sample', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-11 15:35:19'),
(2, 'Claire', 'Blake', '', '+12345687', 'Sample Address', 'cblake@sample.com', '9de07aee42012876a462e2dc739ffcc5', 2, '', '2020-11-12 14:45:00'),
(3, 'Ainan', 'Mohd Khairulnizam', '', '01137485987', 'kelantan', 'ainan@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '', '2023-02-04 21:00:17'),
(4, 'asd', 'asd', '', '1', 'asd', 'a@a.com', '0cc175b9c0f1b6a831c399e269772661', 2, '', '2023-02-12 14:41:52'),
(5, 'asd', 'asd', '', 'asd', 'asd', 'a@aa.com', '0cc175b9c0f1b6a831c399e269772661', 2, '', '2023-02-12 14:44:28'),
(6, 'salsabilla', 'Mohd Khairulnizam', '', '01137485987', 'kel', 'sal@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '', '2023-02-13 09:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `weights`
--

CREATE TABLE `weights` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weights`
--

INSERT INTO `weights` (`id`, `product_id`, `weight`, `date_created`) VALUES
(1, 7, 12.5, '2023-02-02'),
(2, 8, 12.5, '2023-02-12'),
(3, 9, 1, '2023-02-12'),
(4, 10, 12.5, '2023-02-12'),
(5, 8, 15.2, '2023-02-14'),
(6, 11, 15.54, '2023-02-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
