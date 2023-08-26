-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 11:35 AM
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
(1, 'Apple 1', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-15 16:10:04'),
(2, 'Apple 2', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-15 16:10:05'),
(3, 'Apple 3', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-25 21:31:54'),
(4, 'Apple 4', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-25 21:31:57'),
(5, 'Apple 5', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-25 21:32:00'),
(6, 'Apple 6', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-25 21:32:03'),
(7, 'Apple 7', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-25 21:32:05'),
(8, 'Apple 8', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2023-08-15 12:00:16', '2023-08-25 21:32:08');

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
(1, 'Mac Book 1', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-15 16:03:17'),
(2, 'Mac Book 2', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:41'),
(3, 'Mac Book 3', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-15 16:03:24'),
(4, 'Mac Book 4', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:43'),
(5, 'Mac Book 5', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:46'),
(6, 'Mac Book 6', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:48'),
(7, 'Mac Book 7', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:50'),
(8, 'Mac Book 8', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:52'),
(9, 'Mac Book 9', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:54'),
(10, 'Mac Book 10', 'https://photo.teamrabbil.com/images/2023/08/15/Phones--Tablets-01-3944.png', '2023-08-15 11:59:11', '2023-08-25 21:32:57');

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
(1, 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', '01785388919', 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', 1, '2023-08-25 21:34:14', '2023-08-25 21:34:14');

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
  `val_id` varchar(100) NOT NULL DEFAULT '0',
  `delivery_status` enum('Pending','Processing','Completed') NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `val_id`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '64e92882b5171', '0', 'Pending', 'Pending', 1, '2023-08-25 16:17:38', '2023-08-25 16:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(50) NOT NULL,
  `sale_price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '5', '470000', '2023-08-25 16:17:38', '2023-08-25 16:17:38');

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
(2, '2023_02_16_065502_create_users', 1),
(3, '2023_02_16_065520_create_customer_profiles', 1),
(4, '2023_02_16_065529_create_categories', 1),
(5, '2023_02_16_065654_create_brands', 1),
(6, '2023_02_17_114815_create_products', 1),
(7, '2023_02_17_144756_create_product_reviews', 1),
(8, '2023_02_17_164424_create_product_details', 1),
(9, '2023_02_17_184723_create_product_sliders', 1),
(10, '2023_02_17_191300_create_product_wishes', 1),
(11, '2023_02_17_194301_create_product_carts', 1),
(12, '2023_08_06_131501_create_sslcommerz_accounts', 1),
(13, '2023_08_06_131940_create_invoices', 1),
(14, '2023_08_06_131941_create_invoice_products', 1),
(15, '2023_08_08_051859_create_policies', 1);

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
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('about','refund','terms','how to buy','contact','complain') NOT NULL,
  `des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `des`) VALUES
(1, 'about', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 'refund', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'terms', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 'how to buy', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(5, 'contact', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(6, 'complain', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

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
(1, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-20 13:47:52'),
(2, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-20 15:22:37'),
(3, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(4, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(5, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(6, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(7, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(8, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(9, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(10, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(11, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(12, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(13, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(14, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(15, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(16, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(17, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(18, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(19, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(20, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(21, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(22, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(23, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(24, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(25, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(26, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(27, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(28, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(29, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(30, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(31, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(32, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(33, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(34, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(35, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(36, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(37, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(38, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(39, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(40, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06'),
(41, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-08-15 12:24:06');

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
(4, 1, 4, 'Red', 'X', '5', '470000', '2023-08-25 16:17:32', '2023-08-25 16:17:32');

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
(1, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 1, '2023-08-20 13:49:16', '2023-08-20 14:23:39'),
(2, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 2, '2023-08-20 13:49:16', '2023-08-20 14:23:39');

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
(1, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', '5', 1, 1, '2023-08-25 21:35:23', '2023-08-25 21:35:23');

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
(1, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '$900USD', 'https://photo.teamrabbil.com/images/2023/08/15/banner.png', 1, '2023-08-15 12:42:46', '2023-08-15 12:42:46'),
(3, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '$900USD', 'https://photo.teamrabbil.com/images/2023/08/15/banner.png', 2, '2023-08-15 12:42:46', '2023-08-15 12:42:46'),
(4, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '$900USD', 'https://photo.teamrabbil.com/images/2023/08/15/banner.png', 3, '2023-08-15 12:42:46', '2023-08-15 12:42:46');

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
(1, 1, 1, '2023-08-25 15:50:14', '2023-08-25 15:50:14'),
(3, 3, 1, '2023-08-25 15:50:23', '2023-08-25 15:50:23');

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
(1, 'teamr64c9e84055219', 'teamr64c9e84055219@ssl', 'BDT', 'http://localhost:3000/PaymentSuccess', 'http://localhost:3000/PaymentFail', 'http://localhost:3000/PaymentCancel', 'http://localhost:3000/api/PaymentIPN', 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php', '2023-08-25 21:35:23', '2023-08-25 21:35:23');

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
(1, 'engr.rabbil@yahoo.com', '0', '2023-08-20 09:13:06', '2023-08-25 16:16:18');

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
  ADD KEY `invoice_products_product_id_foreign` (`product_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`);

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
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

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
