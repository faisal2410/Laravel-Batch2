-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 04:24 AM
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
-- Database: `apple_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(50) NOT NULL,
  `brandImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png', '2023-08-05 13:40:40', '2023-08-05 13:54:36'),
(2, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png', '2023-08-05 13:40:40', '2023-08-05 13:54:40'),
(3, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png', '2023-08-05 13:40:40', '2023-08-05 13:54:43'),
(4, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png', '2023-08-05 13:40:40', '2023-08-05 13:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
(1, 'Macbook', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', '2023-08-05 13:57:03', '2023-08-05 13:57:03'),
(2, 'Macbook', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', '2023-08-05 13:57:03', '2023-08-05 13:57:03'),
(3, 'Macbook', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', '2023-08-05 13:57:03', '2023-08-05 13:57:03'),
(4, 'Macbook', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', '2023-08-05 13:57:03', '2023-08-05 13:57:03');

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
(2, '2023_02_16_065654_create_brands', 1),
(3, '2023_02_16_065529_create_categories', 2),
(4, '2023_02_17_114815_create_products', 3),
(5, '2023_02_17_184723_create_product_sliders', 4);

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
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double(8,2) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(2, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04'),
(3, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04'),
(4, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04'),
(5, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04'),
(6, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04'),
(7, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04'),
(8, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/71tpda7cwul._ac_sl1500_.jpg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-05 16:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `price`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '$900USD', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image', 2, '2023-08-05 16:33:28', '2023-08-05 16:33:41'),
(3, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '$900USD', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image', 3, '2023-08-05 16:33:28', '2023-08-05 16:33:41'),
(4, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '$900USD', 'https://www.electrosonicbd.com/media/catalog/product/cache/1/image', 4, '2023-08-05 16:33:28', '2023-08-05 16:33:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
