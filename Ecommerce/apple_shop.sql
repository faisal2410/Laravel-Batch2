-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 09:41 PM
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
(1, 'Macbook', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', '2023-08-05 13:57:03', '2023-08-06 06:14:16'),
(2, 'Macbook', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', '2023-08-05 13:57:03', '2023-08-06 06:14:19'),
(3, 'Macbook', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', '2023-08-05 13:57:03', '2023-08-06 06:14:21'),
(4, 'Macbook', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', '2023-08-05 13:57:03', '2023-08-06 06:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `customer_profiles`
--

CREATE TABLE `customer_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_add` varchar(500) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_state` varchar(50) NOT NULL,
  `cus_postcode` varchar(50) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_phone` varchar(50) NOT NULL,
  `cus_fax` varchar(50) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `ship_add` varchar(100) NOT NULL,
  `ship_city` varchar(100) NOT NULL,
  `ship_state` varchar(100) NOT NULL,
  `ship_postcode` varchar(100) NOT NULL,
  `ship_country` varchar(100) NOT NULL,
  `ship_phone` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_profiles`
--

INSERT INTO `customer_profiles` (`id`, `cus_name`, `cus_add`, `cus_city`, `cus_state`, `cus_postcode`, `cus_country`, `cus_phone`, `cus_fax`, `ship_name`, `ship_add`, `ship_city`, `ship_state`, `ship_postcode`, `ship_country`, `ship_phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rabbil Hasan Rupom', 'Adabor,Dhaka', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', '01711111111', '01711111111', 'Rabbil Hasan', 'Adabor, Dhaka', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', '', 1, '2023-08-06 07:17:36', '2023-08-06 03:04:35'),
(3, 'Rabbil Hasan', 'Adabor,Dhaka', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', '01711111111', '01711111111', 'Rabbil Hasan', 'Adabor, Dhaka ', 'Dhaka', 'Dhaka', '1200', 'Bangladesh', '', 2, '2023-08-06 07:17:36', '2023-08-06 07:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `payable` varchar(50) NOT NULL,
  `cus_details` varchar(500) NOT NULL,
  `ship_details` varchar(500) NOT NULL,
  `tran_id` varchar(100) NOT NULL,
  `delivery_status` enum('Pending','Processing','Completed') NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff296d43fb', 'Pending', 'Pending', 1, '2023-08-06 13:20:54', '2023-08-06 13:20:54'),
(6, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff2e717d2a', 'Pending', 'Pending', 1, '2023-08-06 13:22:15', '2023-08-06 13:22:15'),
(7, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff2e8761e9', 'Pending', 'Pending', 1, '2023-08-06 13:22:16', '2023-08-06 13:22:16'),
(8, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff32461d14', 'Pending', 'Pending', 1, '2023-08-06 13:23:16', '2023-08-06 13:23:16'),
(9, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff38109d05', 'Pending', 'Pending', 1, '2023-08-06 13:24:49', '2023-08-06 13:24:49'),
(10, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff3e700767', 'Pending', 'Pending', 1, '2023-08-06 13:26:31', '2023-08-06 13:26:31'),
(11, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff419c1f99', 'Pending', 'Pending', 1, '2023-08-06 13:27:21', '2023-08-06 13:27:21'),
(12, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff43a83e6d', 'Pending', 'Pending', 1, '2023-08-06 13:27:54', '2023-08-06 13:27:54'),
(13, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff4737a957', 'Pending', 'Pending', 1, '2023-08-06 13:28:51', '2023-08-06 13:28:51'),
(14, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff49542442', 'Pending', 'Pending', 1, '2023-08-06 13:29:25', '2023-08-06 13:29:25'),
(15, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff4be6be5a', 'Pending', 'Pending', 1, '2023-08-06 13:30:06', '2023-08-06 13:30:06'),
(16, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff4c665e8b', 'Pending', 'Pending', 1, '2023-08-06 13:30:14', '2023-08-06 13:30:14'),
(18, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff4e849853', 'Pending', 'Pending', 1, '2023-08-06 13:30:48', '2023-08-06 13:30:48'),
(19, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff5553fa0d', 'Pending', 'Pending', 1, '2023-08-06 13:32:37', '2023-08-06 13:32:37'),
(20, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff5b5e60a1', 'Pending', 'Pending', 1, '2023-08-06 13:34:13', '2023-08-06 13:34:13'),
(21, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff5c3bb06e', 'Pending', 'Pending', 1, '2023-08-06 13:34:27', '2023-08-06 13:34:27'),
(22, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff62b5544a', 'Pending', 'Pending', 1, '2023-08-06 13:36:11', '2023-08-06 13:36:11'),
(23, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff63c926b1', 'Pending', 'Pending', 1, '2023-08-06 13:36:28', '2023-08-06 13:36:28'),
(24, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff65c586f1', 'Pending', 'Pending', 1, '2023-08-06 13:37:00', '2023-08-06 13:37:00'),
(25, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff6b8b82de', 'Pending', 'Pending', 1, '2023-08-06 13:38:32', '2023-08-06 13:38:32'),
(26, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff71238405', 'Pending', 'Pending', 1, '2023-08-06 13:40:02', '2023-08-06 13:40:02'),
(27, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff7161451e', 'Pending', 'Pending', 1, '2023-08-06 13:40:06', '2023-08-06 13:40:06'),
(28, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff751b7469', 'Pending', 'Pending', 1, '2023-08-06 13:41:05', '2023-08-06 13:41:05'),
(29, '470000', '14100', '484100', 'Name:Rabbil Hasan Rupom,Address:Adabor,Dhaka,City:Dhaka,Phone: 01711111111', 'Name:Rabbil Hasan,Address:Adabor, Dhaka ,City:Dhaka ,Phone: 01711111111', '64cff768d35dd', 'Pending', 'Pending', 1, '2023-08-06 13:41:28', '2023-08-06 13:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(50) NOT NULL,
  `sale_price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(3, 4, 5, '5', '470000', '2023-08-06 13:20:54', '2023-08-06 13:20:54'),
(5, 6, 5, '5', '470000', '2023-08-06 13:22:15', '2023-08-06 13:22:15'),
(6, 7, 5, '5', '470000', '2023-08-06 13:22:16', '2023-08-06 13:22:16'),
(7, 8, 5, '5', '470000', '2023-08-06 13:23:16', '2023-08-06 13:23:16'),
(8, 9, 5, '5', '470000', '2023-08-06 13:24:49', '2023-08-06 13:24:49'),
(9, 10, 5, '5', '470000', '2023-08-06 13:26:31', '2023-08-06 13:26:31'),
(10, 11, 5, '5', '470000', '2023-08-06 13:27:21', '2023-08-06 13:27:21'),
(11, 12, 5, '5', '470000', '2023-08-06 13:27:54', '2023-08-06 13:27:54'),
(12, 13, 5, '5', '470000', '2023-08-06 13:28:51', '2023-08-06 13:28:51'),
(13, 14, 5, '5', '470000', '2023-08-06 13:29:25', '2023-08-06 13:29:25'),
(14, 15, 5, '5', '470000', '2023-08-06 13:30:06', '2023-08-06 13:30:06'),
(15, 16, 5, '5', '470000', '2023-08-06 13:30:14', '2023-08-06 13:30:14'),
(17, 18, 5, '5', '470000', '2023-08-06 13:30:48', '2023-08-06 13:30:48'),
(18, 19, 5, '5', '470000', '2023-08-06 13:32:37', '2023-08-06 13:32:37'),
(19, 20, 5, '5', '470000', '2023-08-06 13:34:13', '2023-08-06 13:34:13'),
(20, 21, 5, '5', '470000', '2023-08-06 13:34:27', '2023-08-06 13:34:27'),
(21, 22, 5, '5', '470000', '2023-08-06 13:36:11', '2023-08-06 13:36:11'),
(22, 23, 5, '5', '470000', '2023-08-06 13:36:28', '2023-08-06 13:36:28'),
(23, 24, 5, '5', '470000', '2023-08-06 13:37:00', '2023-08-06 13:37:00'),
(24, 25, 5, '5', '470000', '2023-08-06 13:38:32', '2023-08-06 13:38:32'),
(25, 26, 5, '5', '470000', '2023-08-06 13:40:02', '2023-08-06 13:40:02'),
(26, 27, 5, '5', '470000', '2023-08-06 13:40:06', '2023-08-06 13:40:06'),
(27, 28, 5, '5', '470000', '2023-08-06 13:41:05', '2023-08-06 13:41:05'),
(28, 29, 5, '5', '470000', '2023-08-06 13:41:28', '2023-08-06 13:41:28');

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
(5, '2023_02_17_184723_create_product_sliders', 4),
(6, '2023_02_17_164424_create_product_details', 5),
(7, '2023_02_16_065502_create_users', 6),
(9, '2023_02_16_065520_create_customer_profiles', 7),
(10, '2023_02_17_144756_create_product_reviews', 8),
(11, '2023_02_17_191300_create_product_wishes', 9),
(15, '2023_02_17_194301_create_product_carts', 10),
(16, '2023_08_06_131501_create_sslcommerz_accounts', 11),
(17, '2023_08_06_131940_create_invoices', 12),
(18, '2023_08_06_131941_create_invoice_products', 12);

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
(2, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 06:13:43'),
(3, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 06:13:49'),
(4, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 1, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 13:01:58'),
(5, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 06:13:54'),
(6, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 06:13:58'),
(7, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 06:14:03'),
(8, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '100', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 1, 4.80, 'popular', 1, 1, '2023-08-05 16:20:04', '2023-08-06 06:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(4, 1, 5, 'Red', 'X', '5', '470000', '2023-08-06 13:15:30', '2023-08-06 13:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL,
  `des` longtext NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', '<table style=\"height:396px; width:1199px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>Height: 0.45 inch (1.15 cm) Width: 13.40 inches (34.04 cm) Depth: 9.35 inches (23.76 cm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>Liquid Retina display 15.3-inch (diagonal) LED-backlit display with IPS technology;1 2880-by-1864 native resolution at 224 pixels per inch with support for 1 billion colors 500 nits brightness Wide color (P3) True Tone technology</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>3.3 pounds (1.51 kg)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chip</td>\r\n			<td>Apple M2 chip</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>8-core CPU with 4 performance cores and 4 efficiency cores</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>10-core GPU, 16-core Neural Engine</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OS</td>\r\n			<td>macOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keyboard and Trackpad</td>\r\n			<td>Backlit Magic Keyboard with: 78 (U.S.) or 79 (ISO) keys including 12 full-height function keys and 4 arrow keys in an inverted-T arrangement Touch ID Ambient light sensor Force Touch trackpad for precise cursor control and pressure-sensing capabilities; enables Force clicks, accelerators, pressure-sensitive drawing, and Multi-Touch gestures</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wireless</td>\r\n			<td>Wi-Fi Wi-Fi 6 (802.11ax) Bluetooth Bluetooth 5.3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Audio</td>\r\n			<td>Six-speaker sound system with force-cancelling woofers Wide stereo sound Support for Spatial Audio when playing music or video with Dolby Atmos on built-in speakers Spatial Audio with dynamic head tracking when using AirPods (3rd generation), AirPods Pro, and AirPods Max Three-mic array with directional beamforming 3.5 mm headphone jack with advanced support for high-impedance headphones</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>66.5-watt‑hour lithium‑polymer battery</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Charging</td>\r\n			<td>Fast-charge capable with 70W USB-C Power Adapter</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Red,Green,Blue', '13,14,15,16', 2, '2023-08-06 06:17:50', '2023-08-06 06:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(1000) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `rating`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '5', 1, 2, '2023-08-06 09:13:18', '2023-08-06 05:35:19'),
(2, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', '5', 3, 2, '2023-08-06 09:13:18', '2023-08-06 09:13:18'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '5', 1, 8, '2023-08-06 05:35:47', '2023-08-06 05:35:47');

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
(1, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '$900USD', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 2, '2023-08-05 16:33:28', '2023-08-06 06:14:34'),
(3, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '$900USD', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 3, '2023-08-05 16:33:28', '2023-08-06 06:14:36'),
(4, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '$900USD', 'https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20230302_1677735164_773214.jpeg', 4, '2023-08-05 16:33:28', '2023-08-06 06:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2023-08-06 11:42:14', '2023-08-06 11:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_accounts`
--

CREATE TABLE `sslcommerz_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_passwd` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `success_url` varchar(255) NOT NULL,
  `fail_url` varchar(255) NOT NULL,
  `cancel_url` varchar(255) NOT NULL,
  `ipn_url` varchar(255) NOT NULL,
  `init_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_accounts`
--

INSERT INTO `sslcommerz_accounts` (`id`, `store_id`, `store_passwd`, `currency`, `success_url`, `fail_url`, `cancel_url`, `ipn_url`, `init_url`, `created_at`, `updated_at`) VALUES
(1, 'teamr64c9e84055219', 'teamr64c9e84055219@ssl', 'BDT', 'http://yoursite.com/success.php', 'http://yoursite.com/fail.php', 'http://yoursite.com/cancel.php', 'http://yoursite.com/fail.php', 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'engr.rabbil@yahoo.com', '0', '2023-08-06 00:27:08', '2023-08-06 13:14:57'),
(2, 'engr.rabbil@outlook.com', '926998', '2023-08-06 00:27:08', '2023-08-06 00:44:15');

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
-- Indexes for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`);

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
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`),
  ADD KEY `product_carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishes_product_id_foreign` (`product_id`),
  ADD KEY `product_wishes_user_id_foreign` (`user_id`);

--
-- Indexes for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD CONSTRAINT `customer_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_profiles` (`id`),
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
