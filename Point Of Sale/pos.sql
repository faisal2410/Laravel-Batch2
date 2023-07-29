-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 29, 2023 at 09:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(21, 'Italian Cuisine', 2, '2023-07-23 14:01:47', '2023-07-23 14:01:47'),
(22, 'Mexican Food', 2, '2023-07-23 14:01:47', '2023-07-23 14:01:47'),
(23, 'Indian Dishes', 2, '2023-07-23 14:01:47', '2023-07-23 14:01:47'),
(24, 'Chinese Cuisine', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(25, 'Japanese Sushi', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(26, 'American BBQ', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(27, 'Mediterranean Food', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(28, 'Thai Delicacies', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(29, 'Greek Cuisine', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(30, 'Korean BBQ', 2, '2023-07-23 14:01:48', '2023-07-23 14:01:48'),
(31, 'Cakes', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(32, 'Cookies', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(33, 'Pastries', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(34, 'Chocolates', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(35, 'Ice Creams', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(36, 'Gulab Jamun', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(37, 'Rasgulla', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(38, 'Barfi', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(39, 'Jalebi', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(40, 'Ladoo', 1, '2023-07-23 14:03:34', '2023-07-23 14:03:34'),
(42, 'Mango', 1, '2023-07-25 23:27:40', '2023-07-25 23:27:40'),
(43, 'Mango', 1, '2023-07-25 23:27:50', '2023-07-25 23:27:50'),
(44, 'demo', 2, '2023-07-25 23:28:55', '2023-07-25 23:28:55'),
(45, 'Mango', 1, '2023-07-25 23:29:11', '2023-07-25 23:29:11'),
(46, 'asdasdasd', 1, '2023-07-25 23:30:55', '2023-07-25 23:30:55'),
(47, 'Example', 1, '2023-07-25 23:31:48', '2023-07-25 23:31:48'),
(48, 'Demo', 1, '2023-07-25 23:32:41', '2023-07-25 23:32:41'),
(49, 'Demo', 1, '2023-07-25 23:32:46', '2023-07-25 23:32:46'),
(50, 'Demo1', 1, '2023-07-25 23:33:32', '2023-07-25 23:33:32'),
(51, '234w3qrweqreafr', 1, '2023-07-25 23:33:37', '2023-07-25 23:33:37'),
(52, 'sdfsdfs', 1, '2023-07-25 23:34:31', '2023-07-25 23:34:31'),
(53, 'r', 1, '2023-07-25 23:34:36', '2023-07-27 05:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', '1234567890', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(2, 'Jane Smith', 'jane.smith@example.com', '9876543210', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(3, 'Michael Johnson', 'michael.j@example.com', '5551112222', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(4, 'Emily Brown', 'emily.brown@example.com', '4443332222', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(5, 'Robert Lee', 'robert.lee@example.com', '9871234560', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(6, 'Sophia Wilson', 'sophia.w@example.com', '1112223334', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(7, 'William Turner', 'william.t@example.com', '9998887770', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(8, 'Olivia Martin', 'olivia.m@example.com', '6665554441', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(9, 'James Anderson', 'james.a@example.com', '5554443332', 1, '2023-07-23 13:54:43', '2023-07-23 13:54:43'),
(11, 'Rahul Sharma', 'rahul.sharma@example.com', '+91 9876543210', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(12, 'Priya Patel', 'priya.patel@example.com', '+91 8765432109', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(13, 'Amit Singh', 'amit.singh@example.com', '+91 7654321098', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(14, 'Neha Gupta', 'neha.gupta@example.com', '+91 6543210987', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(15, 'Rajesh Kumar', 'rajesh.kumar@example.com', '+91 5432109876', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(16, 'Anjali Desai', 'anjali.desai@example.com', '+91 4321098765', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(17, 'Vikram Joshi', 'vikram.joshi@example.com', '+91 3210987654', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(18, 'Pooja Verma', 'pooja.verma@example.com', '+91 2109876543', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(19, 'Aryan Srinivasan', 'aryan.srinivasan@example.com', '+91 1098765432', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37'),
(20, 'Sneha Reddy', 'sneha.reddy@example.com', '+91 9876543210', 2, '2023-07-23 13:55:37', '2023-07-23 13:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_07_11_152531_create_users', 1),
(5, '2023_07_23_133550_create_customers', 2),
(6, '2023_07_23_133551_create_categories', 2),
(7, '2023_07_23_133552_create_products', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `price`, `unit`, `img_url`, `created_at`, `updated_at`) VALUES
(4, 2, 22, 'ABC', '200', 'kg', 'uploads/2-1690134298-AFP-000398865-1000.webp', '2023-07-24 00:44:58', '2023-07-24 00:51:56'),
(5, 1, 22, 'ABC', '200', 'kg', 'uploads/2-1690134298-AFP-000398865-1000.webp', '2023-07-24 00:44:58', '2023-07-24 00:51:56'),
(6, 1, 22, 'ABC', '200', 'kg', 'uploads/2-1690134298-AFP-000398865-1000.webp', '2023-07-24 00:44:58', '2023-07-24 00:51:56'),
(7, 1, 22, 'ABC', '100', 'kg', 'uploads/2-1690134298-AFP-000398865-1000.webp', '2023-07-24 00:44:58', '2023-07-25 16:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `password`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'RabbilH', 'Hasan', 'engr.rabbil@yahoo.com', '01785388919', '123', '0', '2023-07-16 21:24:03', '2023-07-24 01:37:36'),
(2, 'Liakot', 'Biswas', 'liakot@yahoo.com', '01701063280', 'abc', '0', '2023-07-16 21:24:03', '2023-07-23 16:51:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
