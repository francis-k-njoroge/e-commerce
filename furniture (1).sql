-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 02:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`category_id`, `category_name`, `category_description`, `created_at`, `updated_at`) VALUES
(1, 'Living Room Furniture', 'Furniture for the living room, including sofas, coffee tables, etc', '2024-10-14 08:49:40', '2024-10-24 10:00:21'),
(2, 'Bedroom Furniture', 'Furniture for the bedroom, including beds, wardrobes, etc.', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(3, 'Dining Room Furniture', 'Furniture for the dining room, including dining tables, chairs, etc.', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(4, 'Office Furniture', 'Furniture for office use, including desks, chairs, storage, etc.', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(5, 'Outdoor Furniture', 'Furniture for outdoor use, including patio sets, chairs, etc.', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(6, 'Kids\' Furniture', 'Furniture for children, including bunk beds, storage, etc.', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(7, 'Storage & Organization', 'Shelves, cabinets, and storage solutions for home organization', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(8, 'Home Décor & Accents', 'Home decor items like rugs, lamps, mirrors, etc.', '2024-10-14 08:49:40', '2024-10-14 08:49:40'),
(12, 'vg', 'vvvhhhh', '2024-10-24 10:07:00', '2024-10-24 10:07:13'),
(13, 'hhh', 'hh', '2024-10-24 11:41:35', '2024-10-24 11:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `buying_price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_on_sale` tinyint(1) DEFAULT 0,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `description`, `buying_price`, `stock_quantity`, `image_url`, `category_name`, `is_featured`, `is_on_sale`, `sale_price`, `created_at`, `updated_at`) VALUES
(37, '3 X6 Bed ', 'brown Mahogany bed king size', 2000.00, 10, 'img/020db7d8011161a5.jpg', 'Bedroom Furniture', 1, 1, 3000.00, '2024-10-17 13:12:22', '2024-10-17 13:12:22'),
(38, '3 X6 Bed ', 'Mahogany bed with folder able ring ', 3000.00, 10, 'img/9e5835f2f6b64176.jpg', 'Bedroom Furniture', 1, 1, 4000.00, '2024-10-17 13:13:59', '2024-10-17 13:13:59'),
(39, 'Black Stackable Conference Chair', 'black conference chair, black office chair, black stackable chair, comfortable conference chair, compact office chair, conference room furniture, conference seating, durable office chair, ergonomic office chair', 2900.00, 10, 'img/701202421fce02cc.webp', 'Office Furniture', 1, 1, 3000.00, '2024-10-17 13:16:58', '2024-10-17 13:16:58'),
(40, 'my one', 'gghhghhghh', 667.00, 8, 'img/1b6ee7911b29f75caeb7a1603d5a64a004a7db9a.jpg', 'Bedroom Furniture', 1, 1, 5000.00, '2024-10-24 10:46:35', '2024-10-24 10:46:35'),
(41, 'Solid Mango Wood Bar Stool 68cm', 'Solid Mango wood bar stool finished in a light Oak wax. This stool is the perfect statement piece for a modern kitchen or would also work well in a traditional setting.', 1000.00, 9, 'img/msi-09d.jpg', 'Living Room Furniture', 1, 1, 15000.00, '2024-10-24 10:55:38', '2024-10-24 10:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(4, 'faith ', 'wairimu', 'wairimu@gmail.com', '$2y$10$wV.dDSMVoy1OolDPw5lV6edO4ssCN4vc1KcwNaspiVgV96p6Vr.yq', '0721500760', 'Dimaini karatina', '2024-10-22 07:12:13', '2024-10-22 07:12:13'),
(5, 'amos', 'wanjiku', 'amos@gmail.com', '$2y$10$eGz2Ru5u/DX0BRh32nses.pb3l58tIHZHBOVoRXbB2F/ILT.xSXV6', '0721500760', 'rongai', '2024-10-22 07:17:44', '2024-10-22 07:17:44'),
(6, 'francis', 'wanjiku', 'franciskamore0203@gmail.com', '$2y$10$JEez6pFOcTKlkj.oBTa1TOwE4KwA6PKL48o8JDw4.wyzHGlifVTg6', '0111446888', 'rongai', '2024-10-22 07:37:22', '2024-10-22 07:37:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
