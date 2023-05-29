-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2023 at 12:36 PM
-- Server version: 10.3.36-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamrabb_craftybay`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandImg` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1058.png', '2023-02-19 14:05:15', '2023-04-04 19:22:27'),
(2, 'Nestle ', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1058.png', '2023-02-19 14:05:15', '2023-04-04 19:22:36'),
(3, 'Easy', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1058.png', '2023-02-19 14:05:15', '2023-04-04 19:22:44'),
(4, 'Hatil', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1058.png', '2023-02-19 14:05:15', '2023-04-04 19:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryImg` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1058.png', '2023-02-19 14:03:01', '2023-04-04 19:23:17'),
(2, 'Food', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1059.png', '2023-02-19 14:03:01', '2023-04-04 19:23:17'),
(3, 'Fashion', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1060.png', '2023-02-19 14:03:01', '2023-04-04 19:23:17'),
(4, 'Furniture', 'https://photo.teamrabbil.com/images/2023/04/04/Group-1061.png', '2023-02-19 14:03:01', '2023-04-04 19:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_16_065502_create_users', 1),
(3, '2023_02_16_065520_create_profiles', 1),
(4, '2023_02_16_065529_create_categories', 1),
(5, '2023_02_16_065654_create_brands', 1),
(6, '2023_02_17_114815_create_products', 1),
(7, '2023_02_17_144756_create_product_reviews', 1),
(8, '2023_02_17_164424_create_product_details', 1),
(9, '2023_02_17_184723_create_product_sliders', 1),
(10, '2023_02_17_191300_create_product_wishes', 1),
(11, '2023_02_17_194301_create_product_carts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double(8,2) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(2, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(3, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(4, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(5, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(6, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(7, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(8, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(9, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(10, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04//product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(11, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(12, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'popular', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(13, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(14, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(15, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(16, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(17, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(18, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(19, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'special', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(20, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(21, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(22, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(23, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(24, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(25, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(26, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04'),
(27, 'New Year Special Shoe', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '2000', 0, '0', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, 4.80, 'new', 3, 3, '2023-02-19 14:08:12', '2023-04-04 19:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `email`, `product_id`, `color`, `size`, `created_at`, `updated_at`) VALUES
(1, 'md.rafat.meraz@gmail.com', 4, 'Red', 'X', '2023-03-21 20:12:35', '2023-03-21 20:12:35'),
(2, 'md.rafat.meraz@gmail.com', 1, '#d9d9d9', '36', '2023-03-21 20:35:26', '2023-05-27 21:20:23'),
(4, 'mycoc2972@gmail.com', 14, 'Color(0xff7a5548)', '40.44', '2023-03-26 11:56:17', '2023-04-14 19:34:11'),
(5, 'mycoc2972@gmail.com', 2, 'Color(0xff0e98b1)', '32', '2023-03-26 12:18:05', '2023-04-05 20:04:54'),
(6, 'mycoc2972@gmail.com', 1, '1060716515', '36', '2023-03-26 12:25:28', '2023-03-28 18:06:54'),
(7, 'mycoc2972@gmail.com', 20, 'Color(0xffd9d9d9)', '36', '2023-03-28 17:46:15', '2023-03-28 17:46:15'),
(8, 'mycoc2972@gmail.com', 13, 'Color(0xff212121)', '36', '2023-04-05 18:08:16', '2023-04-05 18:08:16'),
(10, 'kajiraj.raj@gmail.com', 4, 'Red', 'X', '2023-04-07 15:59:08', '2023-04-07 15:59:08'),
(11, 'md.altafsumon@gmail.com', 1, '4280361249', '30', '2023-05-09 20:56:24', '2023-05-09 21:12:36'),
(23, 'pkrazu112@gmail.com', 1, '#0e98b1', '36', '2023-05-28 01:40:43', '2023-05-28 01:45:39'),
(24, 'pkrazu112@gmail.com', 5, '#7a5548', '32', '2023-05-28 01:46:09', '2023-05-28 01:46:09'),
(25, 'pkrazu112@gmail.com', 3, '#d9d9d9', '36', '2023-05-28 01:52:45', '2023-05-28 01:55:09'),
(26, 'arifkhancsebd@gmail.com', 2, '#757575', '40.44', '2023-05-28 10:25:52', '2023-05-28 22:16:01'),
(27, 'kanizfatima257898@gmail.com', 4, 'Red', 'X', '2023-05-28 11:18:31', '2023-05-28 11:18:31'),
(28, 'abms.siddique@gmail.com', 1, 'Red', '40', '2023-05-28 16:03:11', '2023-05-28 16:03:11'),
(29, 'abms.siddique@gmail.com', 20, '#0e98b1', '40.44', '2023-05-28 17:39:27', '2023-05-28 17:39:27'),
(30, 'dibbo255@gmail.com', 2, '#757575', '40.44', '2023-05-29 13:17:58', '2023-05-29 13:17:58'),
(31, 'shahriarshahin2206@gmail.com', 4, 'Red', 'X', '2023-05-29 18:27:35', '2023-05-29 18:27:35'),
(32, 'md.rafat.meraz@gmail.com', 2, '#0e98b1', '36', '2023-05-29 20:26:21', '2023-05-29 20:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 1, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(2, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 2, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(3, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 3, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(4, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 4, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(5, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 5, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(6, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 6, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(7, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 7, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(8, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 8, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(9, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 9, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(10, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 10, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(11, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 11, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(12, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 12, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(13, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 13, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(14, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 14, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(15, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 15, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(16, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 16, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(17, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 17, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(18, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 18, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(19, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 19, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(20, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 20, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(21, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 21, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(22, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 22, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(23, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 23, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(24, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 24, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(25, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 25, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(26, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 26, '2023-02-19 14:12:48', '2023-04-04 19:26:14'),
(29, 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 'Reference site about Lorem Ipsum, giving information on its \r\norigins, as well as a random Lipsum generator Reference site \r\nabout Lorem Ipsum, giving information on its origins, as well as \r\na random Lipsum generator', '#212121,#0E98B1,#7A5548,#D9D9D9,#757575', '30,32,36,40.44', 27, '2023-02-19 14:12:48', '2023-04-04 19:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `email`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'kajiraj.raj@gmail.com', 7, '2023-03-02 00:39:42', '2023-03-02 00:39:42'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'mdsajibhossaintalukder@gmail.com', 7, '2023-03-20 16:21:30', '2023-03-20 16:21:30'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'md.rafat.meraz@gmail.com', 7, '2023-03-21 20:12:09', '2023-03-21 20:12:09'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'rm1530427@gmail.com', 7, '2023-03-30 13:09:16', '2023-03-30 13:09:16'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'mdsajibhossaintalukder@gmail.com', 1, '2023-04-06 16:06:22', '2023-04-06 16:06:22'),
(6, 'FGDs reduce the best known the', 'mdsajibhossaintalukder@gmail.com', 2, '2023-04-06 16:07:30', '2023-04-06 16:08:07'),
(7, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to', 'mycoc2972@gmail.com', 1, '2023-04-09 21:00:55', '2023-04-10 21:28:20'),
(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'kanizfatima257898@gmail.com', 7, '2023-05-28 07:17:04', '2023-05-28 07:17:04'),
(9, 'sfd sdf dsfsdf', 'abms.siddique@gmail.com', 2, '2023-05-28 14:39:18', '2023-05-28 21:25:12'),
(10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 'abms.siddique@gmail.com', 1, '2023-05-28 14:47:51', '2023-05-29 08:19:30'),
(11, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'abms.siddique@gmail.com', 3, '2023-05-28 15:21:02', '2023-05-29 08:21:30'),
(12, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 'abms.siddique@gmail.com', 13, '2023-05-28 15:43:29', '2023-05-28 15:43:29'),
(14, 'hjdjdjd', 'dibbo255@gmail.com', 2, '2023-05-29 01:50:19', '2023-05-29 02:02:27'),
(15, 'jaiaosoo', 'dibbo255@gmail.com', 6, '2023-05-29 01:51:24', '2023-05-29 01:51:24'),
(16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'abms.siddique@gmail.com', 14, '2023-05-29 08:49:40', '2023-05-29 08:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Happy New Year\r\nSpecial Deal \r\nSave 30%', 'Reference site about Lorem Ipsum, giving information on its origins', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 1, '2023-02-19 14:17:51', '2023-04-04 19:26:48'),
(2, 'Happy New Year\r\nSpecial Deal \r\nSave 30%', 'Reference site about Lorem Ipsum, giving information on its origins', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 2, '2023-02-19 14:17:51', '2023-04-04 19:26:52'),
(3, 'Happy New Year\r\nSpecial Deal \r\nSave 30%', 'Reference site about Lorem Ipsum, giving information on its origins', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 3, '2023-02-19 14:17:51', '2023-04-04 19:26:56'),
(4, 'Happy New Year\r\nSpecial Deal \r\nSave 30%', 'Reference site about Lorem Ipsum, giving information on its origins', 'https://photo.teamrabbil.com/images/2023/04/04/product.png', 4, '2023-02-19 14:17:51', '2023-04-04 19:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `email`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 'mdsajibhossaintalukder@gmail.com', 3, '2023-03-20 15:05:33', '2023-03-20 15:05:33'),
(5, 'mdsajibhossaintalukder@gmail.com', 14, '2023-03-20 16:08:01', '2023-03-20 16:08:01'),
(6, 'mdsajibhossaintalukder@gmail.com', 2, '2023-03-20 16:10:58', '2023-03-20 16:10:58'),
(7, 'mdsajibhossaintalukder@gmail.com', 13, '2023-03-20 16:13:17', '2023-03-20 16:13:17'),
(8, 'mdsajibhossaintalukder@gmail.com', 8, '2023-03-20 16:27:54', '2023-03-20 16:27:54'),
(10, 'mycoc2972@gmail.com', 10, '2023-03-26 12:59:34', '2023-03-26 12:59:34'),
(11, 'mdsajibhossaintalukder@gmail.com', 21, '2023-04-06 15:39:07', '2023-04-06 15:39:07'),
(13, 'mycoc2972@gmail.com', 1, '2023-04-10 18:47:32', '2023-04-10 18:47:32'),
(14, 'mycoc2972@gmail.com', 5, '2023-04-13 20:59:29', '2023-04-13 20:59:29'),
(15, 'mycoc2972@gmail.com', 27, '2023-04-14 19:09:01', '2023-04-14 19:09:01'),
(16, 'mycoc2972@gmail.com', 14, '2023-04-14 19:34:03', '2023-04-14 19:34:03'),
(17, 'mycoc2972@gmail.com', 23, '2023-04-14 19:34:53', '2023-04-14 19:34:53'),
(18, 'mycoc2972@gmail.com', 2, '2023-04-14 19:59:49', '2023-04-14 19:59:49'),
(19, 'mycoc2972@gmail.com', 18, '2023-04-29 17:42:59', '2023-04-29 17:42:59'),
(21, 'diunayonahmed@gmail.com', 1, '2023-05-09 20:54:56', '2023-05-09 20:54:56'),
(22, 'parthoroychowdhury7679@gmail.com', 2, '2023-05-24 11:13:40', '2023-05-24 11:13:40'),
(23, 'parthoroychowdhury7679@gmail.com', 13, '2023-05-24 11:27:44', '2023-05-24 11:27:44'),
(24, 'md.rafat.meraz@gmail.com', 2, '2023-05-24 21:39:12', '2023-05-24 21:39:12'),
(25, 'abms.siddique@gmail.com', 1, '2023-05-25 15:45:45', '2023-05-25 15:45:45'),
(26, 'abms.siddique@gmail.com', 2, '2023-05-25 16:19:29', '2023-05-25 16:19:29'),
(27, 'abms.siddique@gmail.com', 15, '2023-05-25 17:22:21', '2023-05-25 17:22:21'),
(28, 'abms.siddique@gmail.com', 13, '2023-05-25 17:27:06', '2023-05-25 17:27:06'),
(29, 'abms.siddique@gmail.com', 25, '2023-05-25 18:03:46', '2023-05-25 18:03:46'),
(30, 'arifkhancsebd@gmail.com', 2, '2023-05-26 17:11:50', '2023-05-26 17:11:50'),
(31, 'arifkhancsebd@gmail.com', 20, '2023-05-26 17:15:59', '2023-05-26 17:15:59'),
(32, 'arifkhancsebd@gmail.com', 3, '2023-05-26 20:41:20', '2023-05-26 20:41:20'),
(33, 'dibbo255@gmail.com', 2, '2023-05-26 21:06:07', '2023-05-26 21:06:07'),
(36, 'dibbo255@gmail.com', 1, '2023-05-27 21:42:50', '2023-05-27 21:42:50'),
(37, 'pkrazu112@gmail.com', 1, '2023-05-28 00:58:50', '2023-05-28 00:58:50'),
(38, 'pkrazu112@gmail.com', 2, '2023-05-28 01:00:03', '2023-05-28 01:00:03'),
(39, 'pkrazu112@gmail.com', 3, '2023-05-28 01:00:16', '2023-05-28 01:00:16'),
(41, 'abms.siddique@gmail.com', 27, '2023-05-28 16:21:51', '2023-05-28 16:21:51'),
(42, 'abms.siddique@gmail.com', 19, '2023-05-28 16:22:21', '2023-05-28 16:22:21'),
(43, 'abms.siddique@gmail.com', 21, '2023-05-28 16:24:29', '2023-05-28 16:24:29'),
(46, 'hasanahmad9812021@ieee.org', 2, '2023-05-28 19:52:12', '2023-05-28 19:52:12'),
(47, 'hasanahmad9812021@ieee.org', 1, '2023-05-28 20:13:06', '2023-05-28 20:13:06'),
(48, 'hasanahmad9812021@ieee.org', 21, '2023-05-28 20:13:20', '2023-05-28 20:13:20'),
(50, 'abms.siddique@gmail.com', 3, '2023-05-29 08:23:20', '2023-05-29 08:23:20'),
(51, 'shahriarshahin2206@gmail.com', 1, '2023-05-29 08:27:00', '2023-05-29 08:27:00'),
(52, 'abms.siddique@gmail.com', 14, '2023-05-29 08:45:04', '2023-05-29 08:45:04'),
(53, 'abms.siddique@gmail.com', 4, '2023-05-29 09:00:55', '2023-05-29 09:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `firstName`, `lastName`, `mobile`, `city`, `shippingAddress`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Rabbil', 'Hasan', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'engr.rabbil@yahoo.com', '2023-02-19 19:27:48', '2023-02-19 19:27:48'),
(2, 'Rabbil', 'Hasan', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'kajiraj.raj@gmail.com', '2023-03-01 15:30:33', '2023-03-01 15:30:33'),
(3, 'Rafat', 'Meraz', '01309063702', 'Dhaka', 'Mirpur 13, Dhaka-1207', 'md.rafat.meraz@gmail.com', '2023-03-02 21:45:06', '2023-03-02 21:46:00'),
(4, 'Monir', 'Hossen', '01740641349', 'Dhaka', 'Mirpur-11, Dhaka-1207', 'ariyankhanmonir999@gmail.com', '2023-03-04 13:34:11', '2023-03-04 13:35:06'),
(5, 'Md Akramul', 'Hossain', '01700000000', 'Dhaka', 'House 12, Eskaton, Banglamotor, Dhaka-1000', 'mycoc2972@gmail.com', '2023-03-06 22:04:10', '2023-04-17 19:52:29'),
(6, 'Md. Nurnabi', 'Miah', '01752929714', 'Dhaka', 'Dhanmondi-32,Dhaka-1207', 'md.nurnabimiah5@gmail.com', '2023-03-08 16:11:04', '2023-03-08 16:11:04'),
(7, 'Fahmidur', 'Rahman', '01759061656', 'Khulna', 'Rajapur,Khulna', 'emkfahmidurrahman@gmail.com', '2023-03-15 15:06:09', '2023-03-15 15:06:09'),
(8, 'Sajib Hasan', 'Talukder', '01909834142', 'MYMENSINGH', 'dhaka', 'mdsajibhossaintalukder@gmail.com', '2023-03-20 09:15:50', '2023-04-07 10:05:53'),
(9, 'Rabbil', 'Hasan', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'tanvirju@hotmail.com', '2023-03-21 23:30:34', '2023-03-21 23:30:34'),
(10, 'Rasel', 'Hossen', '01740641349', 'Dhaka', 'Mirpur-12, Dhaka-1207', 'rm1530427@gmail.com', '2023-03-23 21:42:00', '2023-03-23 21:43:49'),
(11, 'Imtiaz', 'Rony', '01838885589', 'Gazipur', 'Napayara;Bhabanipur;Gazipur Sadar;Gazipur-1740', 'isr2020ss@gmail.com', '2023-03-27 13:39:23', '2023-03-27 13:52:08'),
(12, 'Tanvir', 'Mahtab', '01888888888', 'Bogra', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'jvjhtm14@gmail.com', '2023-04-15 01:57:04', '2023-04-15 01:57:04'),
(13, 'Mahmudul Hoque', 'Zion', '01926381418', 'Dhaka', 'Kuril,Dhaka', 'mhzion11@gmail.com', '2023-04-19 16:03:28', '2023-04-19 16:03:28'),
(14, 'Nayon', 'Ahmed', '01752929714', 'Dhaka', 'Sukhrabad,Dhanmondi-32, Dhaka-1207', 'diunayonahmed@gmail.com', '2023-05-04 10:37:13', '2023-05-04 10:37:13'),
(15, 'Sajedul Islam', 'Rakib', '01609491403', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'rakibmd5050505@gmail.com', '2023-05-07 00:14:51', '2023-05-07 00:14:51'),
(16, 'Altaf', 'hossain', '01816939013', 'Dhaka', 'mirpur-13, Dhaka-1207', 'md.altafsumon@gmail.com', '2023-05-07 04:06:35', '2023-05-07 04:06:35'),
(17, 'Shahriar', 'Shahin', '01571341998', 'Dinajpur', 'Nawabganj 5280, Dinajpur', 'shahriarshahin2206@gmail.com', '2023-05-16 07:40:08', '2023-05-16 07:41:12'),
(18, 'Mohammed', 'Imran', '01786114917', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'emon08ctg@gmail.com', '2023-05-16 21:51:38', '2023-05-16 21:51:38'),
(19, 'Razu', 'Pk', '01723985137', 'Rajshahi', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'pkrazu112@gmail.com', '2023-05-16 22:00:27', '2023-05-16 22:02:10'),
(20, 'Md. Abu Bakar', 'Siddique', '01780494949', 'Dhaka', '62, Anamika Mehedibag, Adabar, Dhaka-1207.', 'abms.siddique@gmail.com', '2023-05-18 15:53:40', '2023-05-18 15:53:40'),
(21, 'D.J', 'SAHA', '01317734711', 'Mymensingh', '29/A Boro Bazar,Mymensingh 2200', 'dibbo255@gmail.com', '2023-05-18 17:35:36', '2023-05-19 13:32:05'),
(22, 'Al', 'Talha', '01631604814', 'Dhaka', 'Ganda, Savar, Dhaka', 'talha.cse201@gmail.com', '2023-05-18 18:24:23', '2023-05-18 19:47:32'),
(23, 'Al', 'Talha', '01631604814', 'Dhaka', 'Ganda, Savar, Dhaka', 'talhamohammad501@gmail.com', '2023-05-18 19:56:49', '2023-05-23 17:49:39'),
(24, 'khan', 'arif', '01792927676', 'pabna', '8/2 Gaus Nagar, New eskaton, dhaka, bangladesh-1200', 'arifkhancsebd@gmail.com', '2023-05-18 21:09:20', '2023-05-28 18:43:09'),
(25, 'Saikat', 'Saha', '01749465355', 'Dhaka', 'Narsingdi,Dhaka', 'saikat.k.k.aiub@gmail.com', '2023-05-19 17:11:26', '2023-05-19 17:12:58'),
(26, 'Rezaul', 'Karim', '01911127231', 'Dhaka', 'Azampur,Uttara, Dhaka-1230', 'rezaul4x@gmail.com', '2023-05-20 07:28:34', '2023-05-20 09:49:36'),
(27, 'Hasan', 'Hasan', '01785388919', 'Sylhet', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'hasanahmad9812021@ieee.org', '2023-05-20 11:06:18', '2023-05-20 11:07:19'),
(28, 'Rabbil', 'Hasan', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'ptushar004@gmail.com', '2023-05-22 10:08:53', '2023-05-22 10:08:53'),
(29, 'Kaniz', 'Fatima', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'kanizfatima257898@gmail.com', '2023-05-22 20:35:42', '2023-05-22 20:36:37'),
(30, 'Al Talha', 'Test', '0132854690', 'Dhaka', 'Ganda, Savar, Dhaka', 'altalha82@mygsuite.co', '2023-05-23 18:30:04', '2023-05-23 18:30:04'),
(31, 'Rabbil', 'Hasan', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'sns05576@gmail.com', '2023-05-23 22:06:16', '2023-05-23 22:06:16'),
(32, 'partha', 'roy choudhuri', '01774040280', 'dhaka', 'dhaka, nikunja 2', 'parthoroychowdhury7679@gmail.com', '2023-05-24 11:12:34', '2023-05-24 11:12:34'),
(33, 'shathi', 'islam', '01303458390', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'ishathi09@gmail.com', '2023-05-24 12:13:27', '2023-05-24 12:14:25'),
(34, 'partha', 'roy', '01774040280', 'dhaka', 'bakak', 'mithunkumardas21@gmail.com', '2023-05-24 18:32:21', '2023-05-24 18:40:16'),
(35, 'Rabbil', 'Hasan', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'aliajannat847@gmail.com', '2023-05-26 19:32:32', '2023-05-26 19:32:32'),
(36, 'Rafat', 'Meraz', '01785388919', 'Dhaka', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'bdhasan009@gmail.com', '2023-05-26 19:32:52', '2023-05-26 21:53:20'),
(37, 'D.J', 'SAHA', '01317734711', 'Mymensingh', '29/A Boro Bazar,Mymensingh 2200', 'divya15-2656@diu.edu.bd', '2023-05-27 00:22:31', '2023-05-27 00:22:31'),
(38, 'Sajedul Islam', 'Rakib', '01715177331', 'Comilla', 'Comilla,Barura-3560', 'rakib.tori@gmail.com', '2023-05-27 23:27:00', '2023-05-27 23:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'engr.rabbil@yahoo.com', '1524', '2023-02-19 19:26:39', '2023-05-26 10:39:04'),
(2, 'kajiraj.raj@gmail.com', '8208', '2023-03-01 15:28:34', '2023-05-10 14:46:31'),
(3, 'md.rafat.meraz@gmail.com', '0', '2023-03-02 21:42:23', '2023-05-29 20:19:00'),
(4, 'ahadabdullah@gmail.com', '4663', '2023-03-03 15:07:51', '2023-03-03 15:07:51'),
(5, 'ariyankhanmonir999@gmail.com', '0', '2023-03-04 13:25:28', '2023-03-25 14:10:10'),
(6, 'mycoc2972@gmail.com', '2021', '2023-03-06 21:53:47', '2023-05-10 09:23:00'),
(7, 'md.nurnabimiah5@gmail.com', '9368', '2023-03-08 15:52:25', '2023-05-04 10:33:42'),
(8, 'emkfahmidurrahman@gmail.com', '0', '2023-03-15 14:43:57', '2023-03-15 15:03:53'),
(9, 'hasansajib4142@gmail.com', '9186', '2023-03-16 20:51:16', '2023-03-19 13:22:01'),
(10, 'mycoc2972@gmial.com', '2536', '2023-03-18 18:49:54', '2023-03-18 18:49:54'),
(11, 'a@gmail.com', '3680', '2023-03-18 19:00:13', '2023-03-22 19:22:28'),
(12, 'a@mail.com', '9968', '2023-03-18 19:35:46', '2023-03-18 19:35:46'),
(13, 'mdsajibhossaintalukder@gmail.com', '0', '2023-03-19 11:18:20', '2023-04-07 10:05:13'),
(14, 'mdsajibhossaintalukder@gmail.co', '6490', '2023-03-19 11:27:19', '2023-03-19 11:27:19'),
(15, 'a@frt.com', '9409', '2023-03-19 18:16:37', '2023-03-19 18:16:37'),
(16, 'prankafi871@gmail.com', '7073', '2023-03-20 18:01:30', '2023-03-20 18:05:18'),
(17, 'mycoc2072@gmail.com', '4071', '2023-03-20 21:09:30', '2023-03-20 21:09:30'),
(18, 'akramul2540@gmail.com', '0', '2023-03-20 21:14:43', '2023-03-25 09:35:39'),
(19, 'tanvirju@hotmail.com', '0', '2023-03-21 23:19:10', '2023-03-21 23:27:01'),
(20, 'anansaiaf@gmail.com', '0', '2023-03-22 20:34:11', '2023-04-06 20:28:45'),
(21, 'rm1530427@gmail.com', '6617', '2023-03-23 21:36:10', '2023-04-04 21:22:54'),
(22, 'ariyankhanmonir111@gmail.com', '0', '2023-03-25 14:19:40', '2023-03-25 20:31:08'),
(23, 'ariyankhanmonir555@gmail.com', '0', '2023-03-25 20:56:17', '2023-03-25 21:25:13'),
(24, 'isr2020ss@gmail.com', '8476', '2023-03-27 11:31:07', '2023-04-13 12:53:13'),
(25, 'isr2020ssl@gmail.com', '2246', '2023-03-27 12:35:56', '2023-03-27 12:43:48'),
(26, 'diunayonahmed@gmail.com', '0', '2023-03-29 13:07:34', '2023-05-09 20:53:33'),
(27, 'zionnstu@gmail.com', '7276', '2023-04-14 07:12:59', '2023-04-19 14:33:44'),
(28, 'jvjhtm14@gmail.com', '0', '2023-04-15 01:11:56', '2023-04-18 10:12:30'),
(29, 'mhzion11@gmail.com', '0', '2023-04-19 15:53:37', '2023-04-19 15:54:34'),
(30, 'tafov69286@pixiil.com', '0', '2023-05-05 16:43:00', '2023-05-07 16:26:48'),
(31, 'rakibmd5050505@gmail.com', '0', '2023-05-06 20:34:33', '2023-05-25 21:03:22'),
(32, 'md.altafsumon@gmail.com', '0', '2023-05-07 04:04:06', '2023-05-29 03:43:56'),
(33, 'mithubogra22@gmail.com', '0', '2023-05-09 22:22:11', '2023-05-22 20:56:14'),
(34, 'aitvetibrahim@gmail.com', '1769', '2023-05-14 20:35:24', '2023-05-27 09:03:36'),
(35, 'bdhasan009@gmail.com', '0', '2023-05-15 10:11:31', '2023-05-26 22:15:39'),
(36, 'hasanali103627@gmail.com', '1881', '2023-05-15 12:02:34', '2023-05-15 18:00:49'),
(37, 'dibbo255@gmail.com', '0', '2023-05-15 17:27:59', '2023-05-29 20:04:10'),
(38, 'duu77@gmail.com', '2747', '2023-05-15 19:43:09', '2023-05-15 19:43:12'),
(39, 'aliajannat847@gmail.com', '0', '2023-05-15 20:07:14', '2023-05-26 19:29:32'),
(40, 'uzzaldatta310@gmail.com', '0', '2023-05-16 02:09:54', '2023-05-19 00:18:43'),
(41, 'shahriarshahin2206@gmail.com', '0', '2023-05-16 07:26:13', '2023-05-29 18:25:58'),
(42, 'emon08ctg@gmail.com', '2800', '2023-05-16 21:33:22', '2023-05-25 21:46:00'),
(43, 'pkrazu112@gmail.com', '0', '2023-05-16 21:46:22', '2023-05-28 22:23:23'),
(44, 'rezaul4x@gmail.com', '0', '2023-05-17 04:51:31', '2023-05-27 19:11:05'),
(45, 'bdhasan00@gmail.com', '7881', '2023-05-17 08:52:13', '2023-05-17 08:52:13'),
(46, 'emon08@gmail.com', '4401', '2023-05-17 14:01:21', '2023-05-17 14:07:43'),
(47, 'talha.cse201@gmail.com', '0', '2023-05-17 20:15:33', '2023-05-26 18:30:32'),
(48, 'pkrazu9@gmail.com', '0', '2023-05-17 21:48:05', '2023-05-18 22:11:13'),
(49, 'ptushar004@gmail.com', '0', '2023-05-18 08:28:16', '2023-05-23 06:59:38'),
(50, 'tt@gmall.com', '7792', '2023-05-18 13:42:00', '2023-05-18 13:42:00'),
(51, 'abms.siddique@gmail.com', '0', '2023-05-18 15:45:59', '2023-05-29 13:14:08'),
(52, 'talhamohammad501@gmail.com', '0', '2023-05-18 19:55:28', '2023-05-23 18:50:16'),
(53, 'arifkhancsebd@gmail.com', '0', '2023-05-18 21:06:20', '2023-05-28 21:53:39'),
(54, 'sns05@gmail.com', '2490', '2023-05-18 21:34:32', '2023-05-18 21:55:06'),
(55, 'sns05576@gmail.com', '0', '2023-05-18 21:55:40', '2023-05-23 22:23:18'),
(56, 'iqraupwork2020@gmail.com', '0', '2023-05-18 23:03:09', '2023-05-18 23:03:36'),
(57, 'divya15-2656@diu.edu.bd', '0', '2023-05-19 15:39:29', '2023-05-27 22:38:03'),
(58, 'saikat.k.k.aiub@gmail.com', '0', '2023-05-19 17:06:12', '2023-05-27 17:53:42'),
(59, 'kanizfatima257898@gmail.com', '0', '2023-05-19 17:39:01', '2023-05-28 07:07:45'),
(60, 'hasanahmad9812021@gmail.com', '0', '2023-05-19 19:08:16', '2023-05-26 22:59:19'),
(61, 'mahmudhossainferdous@gmail.com', '3600', '2023-05-19 20:05:44', '2023-05-19 20:05:44'),
(62, 'rezaul4x@gmai.com', '5522', '2023-05-20 06:27:19', '2023-05-20 06:27:19'),
(63, 'ishathi09@gmail.com', '0', '2023-05-20 07:42:32', '2023-05-28 20:18:41'),
(64, 'softenghasan@gmail.com', '5427', '2023-05-20 09:06:38', '2023-05-20 09:06:38'),
(65, 'softenghasan25@gmail.com', '0', '2023-05-20 09:07:32', '2023-05-20 10:15:50'),
(66, 'hasanahmad9812021@ieee.org', '0', '2023-05-20 10:20:18', '2023-05-28 18:54:16'),
(67, 'hasanahmad9812021@ieee.com', '4608', '2023-05-20 10:58:04', '2023-05-20 10:58:04'),
(68, 'k.arifcsebd@gmail.com', '0', '2023-05-20 17:26:42', '2023-05-20 22:27:24'),
(69, 'talhmohammad501@gmail.com', '4770', '2023-05-20 19:44:29', '2023-05-20 19:44:29'),
(70, 'rabdur055@gmail.com', '0', '2023-05-20 21:54:41', '2023-05-26 21:05:14'),
(71, 'sns05576@gamil.com', '2143', '2023-05-20 22:04:42', '2023-05-20 22:04:42'),
(72, 'sns@gmail.com', '8963', '2023-05-20 22:25:45', '2023-05-20 22:25:45'),
(73, 'abcd@gmail.com', '3858', '2023-05-20 22:27:36', '2023-05-20 22:27:36'),
(74, 'sdfsdaf . _ @gmail.com', '5556', '2023-05-21 13:53:40', '2023-05-21 13:53:40'),
(75, 'aminmd.tahsin243@gamil.com', '4300', '2023-05-21 13:53:55', '2023-05-21 13:53:55'),
(76, 'abms.siddique22ksldfksdf@gmail.com', '7110', '2023-05-21 14:51:47', '2023-05-21 14:55:02'),
(77, 'arahman16@cse.pstu.ac.bd', '0', '2023-05-21 16:06:11', '2023-05-29 19:36:36'),
(78, 'siddique@ail-bd.com', '0', '2023-05-21 17:43:58', '2023-05-24 15:25:21'),
(79, 'siddique@ailbd.com', '3467', '2023-05-21 18:19:05', '2023-05-21 18:19:05'),
(80, 'ishathi59@gmail.com', '9684', '2023-05-22 10:46:01', '2023-05-22 10:59:25'),
(81, ' rabdur055@gmail.com', '0', '2023-05-22 23:03:26', '2023-05-22 23:05:30'),
(82, 'saiat.k.k.aiub@gmail.com', '2108', '2023-05-23 00:19:46', '2023-05-23 00:31:40'),
(83, 'joy.k.k.36@gmail.com', '7129', '2023-05-23 00:33:01', '2023-05-23 00:33:01'),
(84, 'altalha82@mygsuite.co', '0', '2023-05-23 18:29:00', '2023-05-23 18:29:19'),
(85, 'rabdur056@gmail.com', '8694', '2023-05-23 22:24:35', '2023-05-23 22:24:35'),
(86, 'duetianmehedishuvo@gmail.com', '0', '2023-05-24 06:59:23', '2023-05-24 07:00:04'),
(87, 'parthoroychowdhury7679@gmail.com', '0', '2023-05-24 10:11:05', '2023-05-24 11:11:50'),
(88, 'mithunkumardas21@gmail.com', '0', '2023-05-24 18:30:45', '2023-05-24 18:39:41'),
(89, 'nayeemahmedniloy@gmail.com', '0', '2023-05-24 19:52:14', '2023-05-24 19:53:09'),
(90, 'dibbo255@gamil.com', '1318', '2023-05-24 23:39:04', '2023-05-25 15:34:17'),
(91, 'aabms.siddique@gmail.com', '3216', '2023-05-25 14:53:06', '2023-05-25 14:53:06'),
(92, 'rakib.tori@gmail.com', '0', '2023-05-25 22:45:29', '2023-05-27 23:36:43'),
(93, 'ishatthi09@gmail.com', '8279', '2023-05-25 22:58:48', '2023-05-25 22:58:48'),
(94, 'glunda1036@gmail.com', '0', '2023-05-26 10:11:03', '2023-05-26 12:18:17'),
(95, 'shahirsammun00@gmail.com', '0', '2023-05-26 23:20:59', '2023-05-26 23:21:35'),
(96, 'mh.ferdous002@gmail.com', '0', '2023-05-27 05:33:10', '2023-05-27 05:34:06'),
(97, 'ishathi09@gamil.com', '2528', '2023-05-27 08:31:02', '2023-05-27 08:32:40'),
(98, ' ishathi09@gmail.com', '0', '2023-05-27 09:55:19', '2023-05-27 09:55:56'),
(99, 'socis23194@favilu.com', '0', '2023-05-27 15:53:37', '2023-05-27 15:54:00'),
(100, 'djs189426@gmail.com', '0', '2023-05-27 22:43:19', '2023-05-29 01:38:32'),
(101, 'hasanahmad98212021@ieee.org', '7863', '2023-05-28 18:50:01', '2023-05-28 18:50:01'),
(102, 'giyasuddin636@gmail.com', '0', '2023-05-29 10:16:36', '2023-05-29 10:18:25'),
(103, 'rabdur055@gnail.com', '2731', '2023-05-29 18:02:48', '2023-05-29 18:07:41');

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
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`),
  ADD KEY `product_carts_email_foreign` (`email`);

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
  ADD KEY `product_reviews_email_foreign` (`email`),
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
  ADD KEY `product_wishes_email_foreign` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

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
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
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
  ADD CONSTRAINT `product_wishes_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_email_foreign` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
