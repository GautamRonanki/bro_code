-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 12:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bro_code`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '1AAgmg8HDB1puYhO0xY3TAa0fw5cest0', 1, '2021-07-11 09:52:30', '2021-07-11 04:22:30', '2021-07-11 04:22:30'),
(2, 2, 'HyDlo6bCcP5M2cTCB5RQcTbVgHUzpRRh', 1, '2021-08-13 16:37:08', '2021-08-13 11:07:07', '2021-08-13 11:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `first_name`, `last_name`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gautam', 'Ronanki', '76/3', NULL, 'Secunderabad', 'TS', '500015', 'IN', '2021-07-13 12:52:27', '2021-07-13 12:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'gucci', 0, '2021-07-13 12:47:34', '2021-08-13 09:51:01'),
(2, 'superdry', 1, '2021-08-13 09:52:14', '2021-08-13 09:52:14'),
(3, 'calvin-klein', 1, '2021-08-13 09:53:35', '2021-08-13 09:53:35'),
(4, 'us-polo-assn', 1, '2021-08-13 09:54:32', '2021-08-13 09:54:32'),
(5, 'zara', 1, '2021-08-13 09:55:20', '2021-08-13 09:55:20'),
(6, 'levis', 1, '2021-08-13 09:56:07', '2021-08-13 09:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Gucci'),
(2, 2, 'en', 'SuperDry'),
(3, 3, 'en', 'Calvin Klein'),
(4, 4, 'en', 'U.S. Polo Assn.'),
(5, 5, 'en', 'Zara'),
(6, 6, 'en', 'Levis');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(6, NULL, 'clothing', NULL, 1, 1, '2021-08-13 08:49:29', '2021-08-13 08:49:29'),
(7, 6, 'shirts', NULL, 0, 1, '2021-08-13 08:49:58', '2021-08-13 08:49:58'),
(8, 6, 'collar-tees', NULL, 0, 1, '2021-08-13 08:50:31', '2021-08-13 08:50:31'),
(9, 6, 'round-neck-tees', NULL, 0, 1, '2021-08-13 08:50:46', '2021-08-13 08:50:46'),
(10, 6, 'sweat-tees', NULL, 0, 1, '2021-08-13 08:51:44', '2021-08-13 08:51:44'),
(11, 6, 'jeans', NULL, 0, 1, '2021-08-13 08:51:56', '2021-08-13 08:51:56'),
(12, 6, 'trousers', NULL, 0, 1, '2021-08-13 08:52:09', '2021-08-13 08:52:09'),
(13, 6, 'tracks', NULL, 0, 1, '2021-08-13 08:52:25', '2021-08-13 08:52:25'),
(14, 6, 'shorts', NULL, 0, 1, '2021-08-13 08:52:40', '2021-08-13 08:52:40'),
(15, NULL, 'footwear', NULL, 1, 1, '2021-08-13 08:52:59', '2021-08-13 08:52:59'),
(16, 15, 'casual', NULL, 0, 1, '2021-08-13 08:53:26', '2021-08-13 08:53:26'),
(17, 15, 'formal', NULL, 0, 1, '2021-08-13 08:53:37', '2021-08-13 08:53:37'),
(18, 15, 'sports', NULL, 0, 1, '2021-08-13 08:53:51', '2021-08-13 08:53:51'),
(19, 15, 'flip-flops', NULL, 0, 1, '2021-08-13 08:54:06', '2021-08-13 08:54:06'),
(20, NULL, 'accessories', NULL, 1, 1, '2021-08-13 08:54:25', '2021-08-13 08:54:34'),
(21, 20, 'caps', NULL, 0, 1, '2021-08-13 08:54:48', '2021-08-13 08:54:48'),
(22, 20, 'belts', NULL, 0, 1, '2021-08-13 08:55:01', '2021-08-13 08:55:01'),
(23, 20, 'wallets', NULL, 0, 1, '2021-08-13 08:55:17', '2021-08-13 08:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(6, 6, 'en', 'Clothing'),
(7, 7, 'en', 'Shirts'),
(8, 8, 'en', 'Collar Tees'),
(9, 9, 'en', 'Round Neck Tees'),
(10, 10, 'en', 'Sweat Tees'),
(11, 11, 'en', 'Jeans'),
(12, 12, 'en', 'Trousers'),
(13, 13, 'en', 'Tracks'),
(14, 14, 'en', 'Shorts'),
(15, 15, 'en', 'Footwear'),
(16, 16, 'en', 'Casual'),
(17, 17, 'en', 'Formal'),
(18, 18, 'en', 'Sports'),
(19, 19, 'en', 'Flip Flops'),
(20, 20, 'en', 'Accessories'),
(21, 21, 'en', 'Caps'),
(22, 22, 'en', 'Belts'),
(23, 23, 'en', 'Wallets');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '1.0000', '2021-07-11 04:22:34', '2021-07-11 04:22:34'),
(2, 'INR', '1.0000', '2021-07-11 10:01:11', '2021-07-11 10:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `default_addresses`
--

CREATE TABLE `default_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `default_addresses`
--

INSERT INTO `default_addresses` (`id`, `customer_id`, `address_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(5, 12, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(6, 11, 'Modules\\Brand\\Entities\\Brand', 1, 'logo', '2021-08-13 09:51:02', '2021-08-13 09:51:02'),
(7, 89, 'Modules\\Brand\\Entities\\Brand', 2, 'logo', '2021-08-13 09:52:14', '2021-08-13 09:52:14'),
(8, 90, 'Modules\\Brand\\Entities\\Brand', 3, 'logo', '2021-08-13 09:53:35', '2021-08-13 09:53:35'),
(9, 91, 'Modules\\Brand\\Entities\\Brand', 4, 'logo', '2021-08-13 09:54:32', '2021-08-13 09:54:32'),
(10, 92, 'Modules\\Brand\\Entities\\Brand', 5, 'logo', '2021-08-13 09:55:20', '2021-08-13 09:55:20'),
(11, 93, 'Modules\\Brand\\Entities\\Brand', 6, 'logo', '2021-08-13 09:56:07', '2021-08-13 09:56:07'),
(13, 48, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2021-08-13 09:59:51', '2021-08-13 09:59:51'),
(14, 33, 'Modules\\Product\\Entities\\Product', 3, 'base_image', '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(15, 41, 'Modules\\Product\\Entities\\Product', 4, 'base_image', '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(17, 58, 'Modules\\Product\\Entities\\Product', 5, 'base_image', '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(18, 37, 'Modules\\Product\\Entities\\Product', 6, 'base_image', '2021-08-13 10:47:34', '2021-08-13 10:47:34'),
(19, 68, 'Modules\\Product\\Entities\\Product', 7, 'base_image', '2021-08-13 10:49:42', '2021-08-13 10:49:42'),
(20, 62, 'Modules\\Product\\Entities\\Product', 8, 'base_image', '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(21, 51, 'Modules\\Product\\Entities\\Product', 9, 'base_image', '2021-08-13 10:53:49', '2021-08-13 10:53:49'),
(22, 71, 'Modules\\Product\\Entities\\Product', 10, 'base_image', '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(23, 83, 'Modules\\Product\\Entities\\Product', 11, 'base_image', '2021-08-13 10:57:03', '2021-08-13 10:57:03'),
(24, 87, 'Modules\\Product\\Entities\\Product', 12, 'base_image', '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(25, 78, 'Modules\\Product\\Entities\\Product', 13, 'base_image', '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(26, 14, 'Modules\\Product\\Entities\\Product', 14, 'base_image', '2021-08-13 11:03:35', '2021-08-13 11:03:35'),
(27, 20, 'Modules\\Product\\Entities\\Product', 15, 'base_image', '2021-08-13 11:04:29', '2021-08-13 11:04:29'),
(28, 28, 'Modules\\Product\\Entities\\Product', 16, 'base_image', '2021-08-13 11:05:20', '2021-08-13 11:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'sI7VgfyGD34wV72X3pk8CCCI3QrpsZu1TiEM3kJ6.png', 'public_storage', 'media/0ibESBpQiosY6Ogyc9yWNIKlR7rOSL4l9oNEGvB4.png', 'png', 'image/png', '104427', '2021-07-11 16:19:29', '2021-07-11 16:19:29'),
(2, 1, 'kTJZ8JjEO16NYuj28aN9f88c1SKIm9ELvYOE8pvC.png', 'public_storage', 'media/1GGC1AYkhH0OSJCRIqA60s5as0ffKCvwRL61s23J.png', 'png', 'image/png', '122165', '2021-07-11 16:20:46', '2021-07-11 16:20:46'),
(3, 1, 'yAaq3dHTWLOlac12ioxGgVrZ3xtrIhKnL5r3roIl.png', 'public_storage', 'media/dIZzu9RKkUbzLHHku3OGoPg19YZz4ChLdJmrkgLN.png', 'png', 'image/png', '47554', '2021-07-11 16:21:18', '2021-07-11 16:21:18'),
(4, 1, '5siKhRlEDQFmbiJRwCNBW3rDsbG7m1r2PibvtNeF.png', 'public_storage', 'media/Nkt1dfqpgd5Obzxze5jthhCRRAQf14QaU6BYJoZi.png', 'png', 'image/png', '52788', '2021-07-11 16:30:50', '2021-07-11 16:30:50'),
(5, 1, 'yl6rNkswnKQzh7mouQ0HpagRLwBpnq3Mt9LZMRak.png', 'public_storage', 'media/Pb8mtWLu0u1uZ9DUkUkuwHUXp6RvpQKLDDacJ2WU.png', 'png', 'image/png', '27767', '2021-07-11 16:31:03', '2021-07-11 16:31:03'),
(6, 1, 'vm21euwszrldK6E9iEtqsm2WtiJ4OyaA7VIGHPe3.png', 'public_storage', 'media/tCd7YzAN04XR0etg39QlVosGr4RVZv068bQtsSYz.png', 'png', 'image/png', '34602', '2021-07-11 16:31:38', '2021-07-11 16:31:38'),
(7, 1, 'SnNz5B0YIEGCw1OdLhFJbqF7hfCNc80adaLCdqOE.png', 'public_storage', 'media/RfzhPcHiCP2pdEh83rvmMk9Gj60YzR1nLYNL18Uy.png', 'png', 'image/png', '18150', '2021-07-11 16:32:07', '2021-07-11 16:32:07'),
(8, 1, 'yl6rNkswnKQzh7mouQ0HpagRLwBpnq3Mt9LZMRak.png', 'public_storage', 'media/57ibfSeOoKaaAhDPL8JK4u9ZeWXYWJPfdFh2H3xb.png', 'png', 'image/png', '27767', '2021-07-11 16:32:08', '2021-07-11 16:32:08'),
(9, 1, 'pmQxhyWNznFCMZvc4KTv4HNk4RfG3eBlNqR0xsCt.png', 'public_storage', 'media/Rxi9hJ1bKxzrV4T84HqE69NixPjlKzds2HMCfwHS.png', 'png', 'image/png', '9543', '2021-07-11 16:32:09', '2021-07-11 16:32:09'),
(10, 1, '3YFgcINuEaLyLvy6QjxKwKVDMALI9qzmXEN7Vqx3.png', 'public_storage', 'media/QgdPflCY84LWMZMHzpBSoneR2IYmBW47nkJVKx43.png', 'png', 'image/png', '100644', '2021-07-11 16:32:40', '2021-07-11 16:32:40'),
(11, 1, 'download.png', 'public_storage', 'media/eAiZrYx0JihSxB9xxkfrfM243qcxbHpfl79DS7Eq.png', 'png', 'image/png', '734', '2021-07-13 12:47:50', '2021-07-13 12:47:50'),
(12, 1, 'WdwZiJqxwq3mHkSdd2FK940ahSxKj8zv4znTgRZB.webp', 'public_storage', 'media/77vNzOaa5N5UxxFQO0J3PGW9GrFVJsm7IWZwaHXT.webp', 'webp', 'image/webp', '76014', '2021-07-13 12:50:11', '2021-07-13 12:50:11'),
(13, 1, 'blobid0.dat', 'public_storage', 'media/GzoUTrD3haAUXolAtgVyOzzQQlUyaUWaIRwHtIre.svg', 'svg', 'image/svg+xml', '127', '2021-08-13 09:21:25', '2021-08-13 09:21:25'),
(14, 1, '1.jpg', 'public_storage', 'media/nfXVgjKfq4O8T1SkejpjQZFfx8HBAUz6cDVHwlhr.jpg', 'jpg', 'image/jpeg', '6112', '2021-08-13 09:48:10', '2021-08-13 09:48:10'),
(15, 1, '2.jpg', 'public_storage', 'media/PLjDD3SNxJExAnLA9LokecRT2TtsD9nxKoHFNC1g.jpg', 'jpg', 'image/jpeg', '8103', '2021-08-13 09:48:10', '2021-08-13 09:48:10'),
(16, 1, '3.jpg', 'public_storage', 'media/rM6CnTHtb8NI6dVUSRjQ0rjZCEQBsQoMpECAG5IW.jpg', 'jpg', 'image/jpeg', '3948', '2021-08-13 09:48:11', '2021-08-13 09:48:11'),
(17, 1, '4.jpg', 'public_storage', 'media/KaAzLVq6vQGqmAyPXtEbsfrI1RBli3TBUNtkmYvC.jpg', 'jpg', 'image/jpeg', '5135', '2021-08-13 09:48:11', '2021-08-13 09:48:11'),
(18, 1, '5.png', 'public_storage', 'media/YQD5wxPzxjRNYeBzkOqfEHqS8ZavOnce5bURgh5w.png', 'png', 'image/png', '117488', '2021-08-13 09:48:12', '2021-08-13 09:48:12'),
(19, 1, '2.jpg', 'public_storage', 'media/bsQHro8GU9oQVPcSno1C46OYrH3lnwKmZReT1bLS.jpg', 'jpg', 'image/jpeg', '4551', '2021-08-13 09:48:30', '2021-08-13 09:48:30'),
(20, 1, '1.jpg', 'public_storage', 'media/jw3w7UDGG2J2zbMyLapy52rfScRuGfH6Jpvnczip.jpg', 'jpg', 'image/jpeg', '6194', '2021-08-13 09:48:30', '2021-08-13 09:48:30'),
(21, 1, '3.jpg', 'public_storage', 'media/gEoxUPVyafJSwMivWXVubtNAJgVGcVr7n806AArG.jpg', 'jpg', 'image/jpeg', '4511', '2021-08-13 09:48:31', '2021-08-13 09:48:31'),
(22, 1, '4.jpg', 'public_storage', 'media/aDifoLDK7LnvC91d3rHWMiQgqj09sibVqkz67ljt.jpg', 'jpg', 'image/jpeg', '5392', '2021-08-13 09:48:31', '2021-08-13 09:48:31'),
(23, 1, '5.jpg', 'public_storage', 'media/OUNkQP9S9aXLmsoXOejP9Jku6PsBFp5eG6Frub29.jpg', 'jpg', 'image/jpeg', '5320', '2021-08-13 09:48:32', '2021-08-13 09:48:32'),
(24, 1, '1.jpg', 'public_storage', 'media/8NWIrkzq6lDiCLVtQ50EDLt8CYxo1TehQpour0xe.jpg', 'jpg', 'image/jpeg', '7284', '2021-08-13 09:48:35', '2021-08-13 09:48:35'),
(25, 1, '2.jpg', 'public_storage', 'media/OY7W8vhJgNqrvk1cSgwgvP5hKHBWvMdDN01KDPhk.jpg', 'jpg', 'image/jpeg', '4815', '2021-08-13 09:48:35', '2021-08-13 09:48:35'),
(26, 1, '4.jpg', 'public_storage', 'media/E1jxtezvmHcVZ0XhXykzaPAZhaUF7kbKzZ0OJnMk.jpg', 'jpg', 'image/jpeg', '6227', '2021-08-13 09:48:36', '2021-08-13 09:48:36'),
(27, 1, '3.jpg', 'public_storage', 'media/axJ7z28X0vUPdFpuDh6S7vOK8QT8uvh2sE2kuvok.jpg', 'jpg', 'image/jpeg', '4564', '2021-08-13 09:48:36', '2021-08-13 09:48:36'),
(28, 1, '5.jpg', 'public_storage', 'media/D5awKpuF8FxzFDhYKGBqEicFYBrDUqjOCJd5COki.jpg', 'jpg', 'image/jpeg', '6057', '2021-08-13 09:48:37', '2021-08-13 09:48:37'),
(29, 1, '1.jpg', 'public_storage', 'media/srVBGcLpEaonCeO4OTy4M4vZunnLHxRY5EkiXckC.jpg', 'jpg', 'image/jpeg', '6278', '2021-08-13 09:48:41', '2021-08-13 09:48:41'),
(30, 1, '2.jpg', 'public_storage', 'media/BvGyirIORhtYFgWkaiANa0LCXhMKtEgF5oMy4LAe.jpg', 'jpg', 'image/jpeg', '5094', '2021-08-13 09:48:41', '2021-08-13 09:48:41'),
(31, 1, '3.jpg', 'public_storage', 'media/L8dHh6Y20hJuHl7cHKu1GZGRuWRSpLx17YzWuNK8.jpg', 'jpg', 'image/jpeg', '7276', '2021-08-13 09:48:42', '2021-08-13 09:48:42'),
(32, 1, '4.jpg', 'public_storage', 'media/YssfDxHXeU5X057p0PwYZ71ha7N5MFwomKMs0WN4.jpg', 'jpg', 'image/jpeg', '4994', '2021-08-13 09:48:43', '2021-08-13 09:48:43'),
(33, 1, '5.jpg', 'public_storage', 'media/Y5Bg6w8i5QrM5NHbs8ri9nTG4yodZd26vsPybTZN.jpg', 'jpg', 'image/jpeg', '47715', '2021-08-13 09:48:43', '2021-08-13 09:48:43'),
(34, 1, '1.jpg', 'public_storage', 'media/9e0C26FoMG1pw09YEc9QPg6oMcbrzILNn1HXuGGK.jpg', 'jpg', 'image/jpeg', '3779', '2021-08-13 09:48:46', '2021-08-13 09:48:46'),
(35, 1, '2.jpg', 'public_storage', 'media/TK5199TUUi7IqficPopsg29c6DsoS6K7b8iuP0jw.jpg', 'jpg', 'image/jpeg', '4092', '2021-08-13 09:48:47', '2021-08-13 09:48:47'),
(36, 1, '3.jpg', 'public_storage', 'media/xWNGZNngBrzAko2FJm0gn32KWf7Bi2KrZaD6LBhM.jpg', 'jpg', 'image/jpeg', '16995', '2021-08-13 09:48:47', '2021-08-13 09:48:47'),
(37, 1, '4.jpg', 'public_storage', 'media/17NdESbvgrinYw57tRQ29EarCPfnGagCSOybIEE9.jpg', 'jpg', 'image/jpeg', '6717', '2021-08-13 09:48:47', '2021-08-13 09:48:47'),
(38, 1, '5.jpg', 'public_storage', 'media/O3GCC6QZjaxriECK7EX0ndxi2pF6Cterp6BfbgGy.jpg', 'jpg', 'image/jpeg', '4920', '2021-08-13 09:48:48', '2021-08-13 09:48:48'),
(39, 1, '2.jpg', 'public_storage', 'media/f8I1Gry239w0Oocw2T6q87XkOr2qft2sfCv1yGau.jpg', 'jpg', 'image/jpeg', '40139', '2021-08-13 09:48:52', '2021-08-13 09:48:52'),
(40, 1, '1.jpg', 'public_storage', 'media/kBwgEcuJqnWBrF2S8PXw2ntCN4gpjBkf5yzmPPak.jpg', 'jpg', 'image/jpeg', '4505', '2021-08-13 09:48:52', '2021-08-13 09:48:52'),
(41, 1, '3.jpg', 'public_storage', 'media/7sw5OCfZ8g6bLgwFLgaXv9s3dlx2MoElviD1UzNV.jpg', 'jpg', 'image/jpeg', '28949', '2021-08-13 09:48:53', '2021-08-13 09:48:53'),
(42, 1, '4.jpg', 'public_storage', 'media/r83tdf4o0udvods5z4xAGwxAv6IpFV0kUAlaLits.jpg', 'jpg', 'image/jpeg', '6326', '2021-08-13 09:48:53', '2021-08-13 09:48:53'),
(43, 1, '5.jpg', 'public_storage', 'media/eoulFtB5p2W0nnALEZ5xakUSWwH76bLTimP4gYTV.jpg', 'jpg', 'image/jpeg', '4901', '2021-08-13 09:48:54', '2021-08-13 09:48:54'),
(44, 1, '1.jpg', 'public_storage', 'media/VuZeYDWtCv6nxruCgbaartFpLxNmgHTcKXj0mxdF.jpg', 'jpg', 'image/jpeg', '8129', '2021-08-13 09:48:57', '2021-08-13 09:48:57'),
(45, 1, '2.jpg', 'public_storage', 'media/SPAljTu7L7pCZfDl8Ecanqc4VwIIenGJaxjLRmW6.jpg', 'jpg', 'image/jpeg', '7007', '2021-08-13 09:48:57', '2021-08-13 09:48:57'),
(46, 1, '3.jpg', 'public_storage', 'media/TopubdZFUAYTJ2LKEUNwmewlflQMOlP1C81WcOZp.jpg', 'jpg', 'image/jpeg', '4748', '2021-08-13 09:48:59', '2021-08-13 09:48:59'),
(47, 1, '4.jpg', 'public_storage', 'media/avbwNbPcrLj9pf3BZIRjCX9oxHZ2mltZtz7DmOqX.jpg', 'jpg', 'image/jpeg', '9052', '2021-08-13 09:48:59', '2021-08-13 09:48:59'),
(48, 1, '5.jpg', 'public_storage', 'media/ebqrUHAWTK3wbYCbcuahP9DNY6H4QUtAkvS2Xjq0.jpg', 'jpg', 'image/jpeg', '8080', '2021-08-13 09:48:59', '2021-08-13 09:48:59'),
(49, 1, '2.jpg', 'public_storage', 'media/wkSxh7a8NfNA9jsd8YuXBYuXSdgO7Dtr4UTBsw12.jpg', 'jpg', 'image/jpeg', '4534', '2021-08-13 09:49:03', '2021-08-13 09:49:03'),
(50, 1, '1.jpg', 'public_storage', 'media/m2v4mEx7d17XcUi0KVTMzlsng8huSPz2KGsuJZWz.jpg', 'jpg', 'image/jpeg', '5024', '2021-08-13 09:49:03', '2021-08-13 09:49:03'),
(51, 1, '3.jpg', 'public_storage', 'media/ozz8gNYJcO6fI3YoUdp570KLHE3uqjfaqcocru47.jpg', 'jpg', 'image/jpeg', '5616', '2021-08-13 09:49:03', '2021-08-13 09:49:03'),
(52, 1, '4.jpg', 'public_storage', 'media/YD5zcm3VbAgdAJVmvgNTocYGSSZQHLmiOIdt80ZH.jpg', 'jpg', 'image/jpeg', '6435', '2021-08-13 09:49:04', '2021-08-13 09:49:04'),
(53, 1, '5.jpg', 'public_storage', 'media/Q2uTfybuZLfOLfef9wWJuwphVC54h36DzpnTFZo3.jpg', 'jpg', 'image/jpeg', '6095', '2021-08-13 09:49:05', '2021-08-13 09:49:05'),
(54, 1, '1.jpg', 'public_storage', 'media/FNpZNhsTOtnK9OcbNRXmt44aeZhhcLAHSTKrcUUS.jpg', 'jpg', 'image/jpeg', '3561', '2021-08-13 09:49:08', '2021-08-13 09:49:08'),
(55, 1, '2.jpg', 'public_storage', 'media/J718UKRSEn77JNQ54uUZkurGZTmPeJ0VFaMs9Y5F.jpg', 'jpg', 'image/jpeg', '4931', '2021-08-13 09:49:08', '2021-08-13 09:49:08'),
(56, 1, '3.jpg', 'public_storage', 'media/38e91fc5N3OxD16Qgf3Q2Ez6nEGMthm8NiMyTOxT.jpg', 'jpg', 'image/jpeg', '4576', '2021-08-13 09:49:09', '2021-08-13 09:49:09'),
(57, 1, '4.jpg', 'public_storage', 'media/TSc0TgGei4CUegudb0SplqycXojaQvmP1VCs99KG.jpg', 'jpg', 'image/jpeg', '4191', '2021-08-13 09:49:09', '2021-08-13 09:49:09'),
(58, 1, '5.jpg', 'public_storage', 'media/dLuOSmrRX6msmhUgPxPuzCbofJoTdL0XtPNZ1AYg.jpg', 'jpg', 'image/jpeg', '4770', '2021-08-13 09:49:10', '2021-08-13 09:49:10'),
(59, 1, '2.jpg', 'public_storage', 'media/bxP8l0l7kxvBHS6oDLIp8AFtlOo0jdsqkU98Lunp.jpg', 'jpg', 'image/jpeg', '5269', '2021-08-13 09:49:14', '2021-08-13 09:49:14'),
(60, 1, '1.jpg', 'public_storage', 'media/UGQmTbjRCqtqDefbQ84Yji9VxY8yjq1gZBAoCSTD.jpg', 'jpg', 'image/jpeg', '5523', '2021-08-13 09:49:14', '2021-08-13 09:49:14'),
(61, 1, '3.jpg', 'public_storage', 'media/VSRte1gucxQCwZy4FA57GTDoEXNQzlgXHNGXDW1A.jpg', 'jpg', 'image/jpeg', '4323', '2021-08-13 09:49:15', '2021-08-13 09:49:15'),
(62, 1, '4.jpg', 'public_storage', 'media/azCrte74SExDjbWe7pKaLaz9hdEio9vqx9K3NWGl.jpg', 'jpg', 'image/jpeg', '4588', '2021-08-13 09:49:15', '2021-08-13 09:49:15'),
(63, 1, '5.jpg', 'public_storage', 'media/MypX7N2MIqTNbzxzEBEyNQ3U8w0AE6ghTa1gGbyP.jpg', 'jpg', 'image/jpeg', '5493', '2021-08-13 09:49:16', '2021-08-13 09:49:16'),
(64, 1, '2.jpg', 'public_storage', 'media/FmIOttortsgtwcOaRVbbcU4uUoIUEcJKqN5UF9oP.jpg', 'jpg', 'image/jpeg', '6301', '2021-08-13 09:49:19', '2021-08-13 09:49:19'),
(65, 1, '1.jpg', 'public_storage', 'media/yHP4kanihnF7tEN5G0qqY3jZ2qJ5AbqVMfjh9lHW.jpg', 'jpg', 'image/jpeg', '5401', '2021-08-13 09:49:19', '2021-08-13 09:49:19'),
(66, 1, '3.jpg', 'public_storage', 'media/UoVIX0Mt2JGokD7eKF9k66PWUGGddGzOvQBUvzhu.jpg', 'jpg', 'image/jpeg', '4008', '2021-08-13 09:49:21', '2021-08-13 09:49:21'),
(67, 1, '4.jpg', 'public_storage', 'media/t9JNEFL4adGxjpWo4wrdk5ob1qLhl2QnQyUw6I09.jpg', 'jpg', 'image/jpeg', '3610', '2021-08-13 09:49:21', '2021-08-13 09:49:21'),
(68, 1, '5.jpg', 'public_storage', 'media/Oz6KUy5DuuSjaAU4nbZShAYzqbOkZFv0jTru1Wbt.jpg', 'jpg', 'image/jpeg', '3936', '2021-08-13 09:49:21', '2021-08-13 09:49:21'),
(69, 1, '2.jpg', 'public_storage', 'media/YxJEvF6Om1BfCnpjVPgmokHrKhMkqIS4CswH61nx.jpg', 'jpg', 'image/jpeg', '8806', '2021-08-13 09:49:26', '2021-08-13 09:49:26'),
(70, 1, '1.jpg', 'public_storage', 'media/Y1jqBEKnGe108F1N4nBQsY8NDyPlrHh8prg5xGDl.jpg', 'jpg', 'image/jpeg', '6932', '2021-08-13 09:49:26', '2021-08-13 09:49:26'),
(71, 1, '3.jpg', 'public_storage', 'media/v63PBEXY9ReVhNUmKWHKKW13cDBpX9zAiP0uRQE1.jpg', 'jpg', 'image/jpeg', '8900', '2021-08-13 09:49:27', '2021-08-13 09:49:27'),
(72, 1, '4.jpg', 'public_storage', 'media/tZRzuXkNVZAIXnnwCjbmi2XN262au8yiEXFCEgOU.jpg', 'jpg', 'image/jpeg', '7998', '2021-08-13 09:49:28', '2021-08-13 09:49:28'),
(73, 1, '5.jpg', 'public_storage', 'media/dL4m7jWn3exHEiPnDjFThdhvw3EbrwJNoTTQxjje.jpg', 'jpg', 'image/jpeg', '10168', '2021-08-13 09:49:28', '2021-08-13 09:49:28'),
(74, 1, '2.jpg', 'public_storage', 'media/Bi8f8PdgTzOYxAjKJfC6DUaDppmA13p5YYy1pehR.jpg', 'jpg', 'image/jpeg', '7345', '2021-08-13 09:49:31', '2021-08-13 09:49:31'),
(75, 1, '1.jpg', 'public_storage', 'media/SJcoLHQhzizzUmRdDXJk6PR9kAsNciZ0B0t9VNQs.jpg', 'jpg', 'image/jpeg', '8302', '2021-08-13 09:49:31', '2021-08-13 09:49:31'),
(76, 1, '4.png', 'public_storage', 'media/hu6P0VOeMr16ze4PaIA1zzeBZ5QyLS58cVowIdyy.png', 'png', 'image/png', '6479', '2021-08-13 09:49:33', '2021-08-13 09:49:33'),
(77, 1, '3.jpg', 'public_storage', 'media/UnNYfmBD7g8Mhbhk3SDTuILtVHD7s223Pfidlazq.jpg', 'jpg', 'image/jpeg', '5406', '2021-08-13 09:49:33', '2021-08-13 09:49:33'),
(78, 1, '5.jpg', 'public_storage', 'media/IdjtTj5fasYgeIPYW2JuCY2KskwwaDSGfkJxoaSR.jpg', 'jpg', 'image/jpeg', '12057', '2021-08-13 09:49:34', '2021-08-13 09:49:34'),
(79, 1, '2.jpg', 'public_storage', 'media/Ke6nFxIUq1E45RO75XLHoAUmvoyWSvwIasvCCIC9.jpg', 'jpg', 'image/jpeg', '4854', '2021-08-13 09:49:36', '2021-08-13 09:49:36'),
(80, 1, '1.jpg', 'public_storage', 'media/cLIpx5hjCpaIW22IXnt4UFD49uOJ9UaJyXPTMb29.jpg', 'jpg', 'image/jpeg', '6011', '2021-08-13 09:49:36', '2021-08-13 09:49:36'),
(81, 1, '3.jpg', 'public_storage', 'media/wFWCVskbqQU9FLOruYqW3NrUOGVqEtqYm8xk5WXR.jpg', 'jpg', 'image/jpeg', '5242', '2021-08-13 09:49:38', '2021-08-13 09:49:38'),
(82, 1, '4.jpg', 'public_storage', 'media/GJpAMo236oQJXyyTNmKU5zT8tcddT9k4539GvKLH.jpg', 'jpg', 'image/jpeg', '3917', '2021-08-13 09:49:38', '2021-08-13 09:49:38'),
(83, 1, '5.jpg', 'public_storage', 'media/cQm57tZqp3yKj7CtXcBI9ziBi83l2kBQIjxxqQjP.jpg', 'jpg', 'image/jpeg', '5993', '2021-08-13 09:49:38', '2021-08-13 09:49:38'),
(84, 1, '2.jpg', 'public_storage', 'media/0ge6ASWbgXXhWDiKOiqykwY9iVbLijydDg7TlSpd.jpg', 'jpg', 'image/jpeg', '10075', '2021-08-13 09:49:42', '2021-08-13 09:49:42'),
(85, 1, '1.jpg', 'public_storage', 'media/k2FxmUqMfhY4Rw8cjLQw9rwER8RnxzMncFQMQMSP.jpg', 'jpg', 'image/jpeg', '8356', '2021-08-13 09:49:42', '2021-08-13 09:49:42'),
(86, 1, '3.jpg', 'public_storage', 'media/fEvtCEGsoDPRCVDdETFTSHtobSRkBFLtVunCQgKe.jpg', 'jpg', 'image/jpeg', '5576', '2021-08-13 09:49:43', '2021-08-13 09:49:43'),
(87, 1, '4.jpg', 'public_storage', 'media/Ck3X63a5BTte7jSG4OyaG22y5vC0Q2uUCn62VUeI.jpg', 'jpg', 'image/jpeg', '6278', '2021-08-13 09:49:43', '2021-08-13 09:49:43'),
(88, 1, '5.jpg', 'public_storage', 'media/DFXVQCXUcjiCfsVRoZdqvbb3tqLDkj4YUCPVeD6n.jpg', 'jpg', 'image/jpeg', '7014', '2021-08-13 09:49:44', '2021-08-13 09:49:44'),
(89, 1, 'superdry-logo-pic.png', 'public_storage', 'media/xLcPNdiBBtDP1EJ1EVJSQw9iFgZjyVK2qXvyABpv.png', 'png', 'image/png', '10714', '2021-08-13 09:52:04', '2021-08-13 09:52:04'),
(90, 1, 'calvin-klein-logo-font-free-download-1200x900.jpg', 'public_storage', 'media/hfReDYeLU3TvkNV5l3XfQ4ldVDTTChp67T5Gwv8r.jpg', 'jpg', 'image/jpeg', '41639', '2021-08-13 09:53:30', '2021-08-13 09:53:30'),
(91, 1, 'zhf6MXxU.jpg', 'public_storage', 'media/fgcT1hf9kKN3OFf3Drto2j3fvx7MbtY2gZSmyjCM.jpg', 'jpg', 'image/jpeg', '32796', '2021-08-13 09:54:26', '2021-08-13 09:54:26'),
(92, 1, 'ac8cb6ade557a1b3eb5a5ee940dcfb7a.jpg', 'public_storage', 'media/LyV6awGkdR8DDsVGyP25DxfqnwAWPIWqBnaLb5nc.jpg', 'jpg', 'image/jpeg', '91847', '2021-08-13 09:55:15', '2021-08-13 09:55:15'),
(93, 1, 'brand.gif', 'public_storage', 'media/zygyaHd6TT6xWnQlPhwfTQ9qmD1kgU7iMXxm5psa.gif', 'gif', 'image/gif', '3839', '2021-08-13 09:56:02', '2021-08-13 09:56:02'),
(94, 1, 'Untitled design - 2021-08-13T164741.239.png', 'public_storage', 'media/WNNTgUB4QXbskjmDsxPaJuUW9ei1YTABiMR2aLFa.png', 'png', 'image/png', '2777', '2021-08-13 11:17:56', '2021-08-13 11:17:56'),
(95, 1, 'BROCODE.png', 'public_storage', 'media/hn1ER10Nm9Xsn8UAZyIPB5n00UMGJTqOpQlJVRTa.png', 'png', 'image/png', '17864', '2021-08-13 11:34:51', '2021-08-13 11:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `created_at`, `updated_at`) VALUES
(1, '2021-08-13 11:46:47', '2021-08-13 11:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `flash_sale_id`, `product_id`, `end_date`, `price`, `qty`, `position`) VALUES
(1, 1, 3, '2021-11-17', '599.0000', 56, 0),
(2, 1, 11, '2021-11-17', '599.0000', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_translations`
--

INSERT INTO `flash_sale_translations` (`id`, `flash_sale_id`, `locale`, `campaign_name`) VALUES
(1, 1, 'en', 'Flash Sale');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-11 16:09:28', '2021-07-11 16:09:28'),
(2, 1, '2021-07-11 16:12:54', '2021-07-11 16:12:54'),
(3, 1, '2021-07-11 16:16:47', '2021-07-11 16:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT 0,
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-07-11 16:09:28', '2021-07-11 16:09:28'),
(2, 1, 1, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:10:13', '2021-07-11 16:10:13'),
(3, 1, 1, NULL, NULL, 'url', '/brands', NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:11:18', '2021-07-11 16:11:18'),
(4, 1, 1, NULL, 1, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:11:42', '2021-07-11 16:11:42'),
(5, 1, 1, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:12:09', '2021-07-11 16:12:09'),
(6, 2, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-07-11 16:12:54', '2021-07-11 16:12:54'),
(10, 3, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-07-11 16:16:47', '2021-07-11 16:16:47'),
(11, 3, 10, NULL, 1, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:17:01', '2021-07-11 16:17:01'),
(12, 3, 10, NULL, 2, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:17:12', '2021-07-11 16:17:12'),
(13, 3, 10, NULL, 5, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:17:45', '2021-07-11 16:17:45'),
(14, 3, 10, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2021-07-11 16:18:11', '2021-07-11 16:18:11'),
(17, 2, 6, 6, NULL, 'category', NULL, 'las la-tshirt', '_self', NULL, 0, 1, 1, '2021-08-13 09:01:17', '2021-08-13 09:01:17'),
(18, 2, 6, 15, NULL, 'category', NULL, 'las la-shoe-prints', '_self', NULL, 0, 1, 1, '2021-08-13 09:02:13', '2021-08-13 09:04:04'),
(19, 2, 6, 20, NULL, 'category', NULL, 'lar la-clock', '_self', NULL, 0, 1, 1, '2021-08-13 09:04:39', '2021-08-13 09:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 2, 'en', 'Shop'),
(3, 3, 'en', 'Brands'),
(4, 4, 'en', 'About Us'),
(5, 5, 'en', 'Terms Of Use'),
(6, 6, 'en', 'root'),
(10, 10, 'en', 'root'),
(11, 11, 'en', 'About Us'),
(12, 12, 'en', 'FAQ'),
(13, 13, 'en', 'Privacy Policy'),
(14, 14, 'en', 'Terms Of Use'),
(17, 17, 'en', 'Clothing'),
(18, 18, 'en', 'Footwear'),
(19, 19, 'en', 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Primary Menu'),
(2, 2, 'en', 'Category Menu'),
(3, 3, 'en', 'Footer Menu 1');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Page\\Entities\\Page', 1, '2021-07-11 16:06:26', '2021-07-11 16:06:26'),
(2, 'Modules\\Page\\Entities\\Page', 2, '2021-07-11 16:07:02', '2021-07-11 16:07:02'),
(3, 'Modules\\Page\\Entities\\Page', 3, '2021-07-11 16:07:22', '2021-07-11 16:07:22'),
(4, 'Modules\\Page\\Entities\\Page', 4, '2021-07-11 16:07:43', '2021-07-11 16:07:43'),
(5, 'Modules\\Page\\Entities\\Page', 5, '2021-07-11 16:08:12', '2021-07-11 16:08:12'),
(6, 'Modules\\Brand\\Entities\\Brand', 1, '2021-07-13 12:47:34', '2021-07-13 12:47:34'),
(7, 'Modules\\Product\\Entities\\Product', 1, '2021-07-13 12:48:59', '2021-07-13 12:48:59'),
(8, 'Modules\\Brand\\Entities\\Brand', 2, '2021-08-13 09:52:14', '2021-08-13 09:52:14'),
(9, 'Modules\\Brand\\Entities\\Brand', 3, '2021-08-13 09:53:35', '2021-08-13 09:53:35'),
(10, 'Modules\\Brand\\Entities\\Brand', 4, '2021-08-13 09:54:32', '2021-08-13 09:54:32'),
(11, 'Modules\\Brand\\Entities\\Brand', 5, '2021-08-13 09:55:20', '2021-08-13 09:55:20'),
(12, 'Modules\\Brand\\Entities\\Brand', 6, '2021-08-13 09:56:07', '2021-08-13 09:56:07'),
(13, 'Modules\\Product\\Entities\\Product', 2, '2021-08-13 09:58:58', '2021-08-13 09:58:58'),
(14, 'Modules\\Product\\Entities\\Product', 3, '2021-08-13 10:40:46', '2021-08-13 10:40:46'),
(15, 'Modules\\Product\\Entities\\Product', 4, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(16, 'Modules\\Product\\Entities\\Product', 5, '2021-08-13 10:44:43', '2021-08-13 10:44:43'),
(17, 'Modules\\Product\\Entities\\Product', 6, '2021-08-13 10:47:34', '2021-08-13 10:47:34'),
(18, 'Modules\\Product\\Entities\\Product', 7, '2021-08-13 10:49:42', '2021-08-13 10:49:42'),
(19, 'Modules\\Product\\Entities\\Product', 8, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(20, 'Modules\\Product\\Entities\\Product', 9, '2021-08-13 10:53:49', '2021-08-13 10:53:49'),
(21, 'Modules\\Product\\Entities\\Product', 10, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(22, 'Modules\\Product\\Entities\\Product', 11, '2021-08-13 10:57:03', '2021-08-13 10:57:03'),
(23, 'Modules\\Product\\Entities\\Product', 12, '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(24, 'Modules\\Product\\Entities\\Product', 13, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(25, 'Modules\\Product\\Entities\\Product', 14, '2021-08-13 11:03:35', '2021-08-13 11:03:35'),
(26, 'Modules\\Product\\Entities\\Product', 15, '2021-08-13 11:04:29', '2021-08-13 11:04:29'),
(27, 'Modules\\Product\\Entities\\Product', 16, '2021-08-13 11:05:20', '2021-08-13 11:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 1, 'en', NULL, NULL),
(2, 2, 'en', NULL, NULL),
(3, 3, 'en', NULL, NULL),
(4, 4, 'en', NULL, NULL),
(5, 5, 'en', NULL, NULL),
(6, 6, 'en', NULL, NULL),
(7, 7, 'en', NULL, NULL),
(8, 8, 'en', NULL, NULL),
(9, 9, 'en', NULL, NULL),
(10, 10, 'en', NULL, NULL),
(11, 11, 'en', NULL, NULL),
(12, 12, 'en', NULL, NULL),
(13, 13, 'en', NULL, NULL),
(14, 14, 'en', NULL, NULL),
(15, 15, 'en', NULL, NULL),
(16, 16, 'en', NULL, NULL),
(17, 17, 'en', NULL, NULL),
(18, 18, 'en', NULL, NULL),
(19, 19, 'en', NULL, NULL),
(20, 20, 'en', NULL, NULL),
(21, 21, 'en', NULL, NULL),
(22, 22, 'en', NULL, NULL),
(23, 23, 'en', NULL, NULL),
(24, 24, 'en', NULL, NULL),
(25, 25, 'en', NULL, NULL),
(26, 26, 'en', NULL, NULL),
(27, 27, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1),
(63, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(64, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(65, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(66, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(67, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(68, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(69, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(70, '2020_01_15_000346259038_create_flash_sales_table', 1),
(71, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(72, '2020_01_23_011234_create_flash_sale_products_table', 1),
(73, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(74, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(75, '2020_03_05_214602901973_create_brands_table', 1),
(76, '2020_03_05_214602902369_create_brand_translations_table', 1),
(77, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(78, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(79, '2020_04_28_034118164376_create_tags_table', 1),
(80, '2020_04_28_034118164618_create_tag_translations_table', 1),
(81, '2020_04_28_225657_create_product_tags_table', 1),
(82, '2020_05_10_041616_create_updater_scripts_table', 1),
(83, '2020_10_07_175000_create_addresses_table', 1),
(84, '2020_10_07_175004_create_default_addresses_table', 1),
(85, '2020_11_21_163822_add_downloads_columns_to_products_table', 1),
(86, '2021_01_08_203241_change_shipping_method_column_in_orders_table', 1),
(87, '2021_01_09_172744_add_phone_column_to_users_table', 1),
(88, '2021_01_11_170516_create_order_downloads_table', 1),
(89, '2021_02_22_201252_modify_virtual_in_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `type`, `is_required`, `is_global`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'radio_custom', 0, 1, NULL, NULL, '2021-08-13 09:13:33', '2021-08-13 09:13:33'),
(2, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(3, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 09:59:48', '2021-08-13 09:59:48'),
(4, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(5, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(6, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(7, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(8, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(9, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(10, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(11, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(12, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(13, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 10:59:35', '2021-08-13 10:59:35'),
(14, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 11:01:05', '2021-08-13 11:01:05'),
(15, 'radio_custom', 0, 0, 0, NULL, '2021-08-13 11:03:34', '2021-08-13 11:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_translations`
--

INSERT INTO `option_translations` (`id`, `option_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Shirts'),
(2, 2, 'en', 'Size'),
(3, 3, 'en', 'Size'),
(4, 4, 'en', 'Size'),
(5, 5, 'en', 'Size'),
(6, 6, 'en', 'Size'),
(7, 7, 'en', 'Size'),
(8, 8, 'en', 'Size'),
(9, 9, 'en', 'Size'),
(10, 10, 'en', 'Size'),
(11, 11, 'en', 'Size'),
(12, 12, 'en', 'Size'),
(13, 13, 'en', 'Size'),
(14, 14, 'en', 'Size'),
(15, 15, 'en', 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `option_id`, `price`, `price_type`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'fixed', 0, '2021-08-13 09:14:15', '2021-08-13 09:14:15'),
(2, 1, NULL, 'fixed', 1, '2021-08-13 09:14:16', '2021-08-13 09:14:16'),
(3, 1, NULL, 'fixed', 2, '2021-08-13 09:14:16', '2021-08-13 09:14:16'),
(4, 1, NULL, 'fixed', 3, '2021-08-13 09:14:16', '2021-08-13 09:14:16'),
(5, 1, NULL, 'fixed', 4, '2021-08-13 09:14:16', '2021-08-13 09:14:16'),
(6, 1, NULL, 'fixed', 5, '2021-08-13 09:14:16', '2021-08-13 09:14:16'),
(7, 2, NULL, 'fixed', 0, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(8, 2, NULL, 'fixed', 1, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(9, 2, NULL, 'fixed', 2, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(10, 2, NULL, 'fixed', 3, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(11, 2, NULL, 'fixed', 4, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(12, 2, NULL, 'fixed', 5, '2021-08-13 09:15:47', '2021-08-13 09:15:47'),
(13, 3, NULL, 'fixed', 0, '2021-08-13 09:59:48', '2021-08-13 09:59:48'),
(14, 3, NULL, 'fixed', 1, '2021-08-13 09:59:49', '2021-08-13 09:59:49'),
(15, 3, NULL, 'fixed', 2, '2021-08-13 09:59:49', '2021-08-13 09:59:49'),
(16, 3, NULL, 'fixed', 3, '2021-08-13 09:59:50', '2021-08-13 09:59:50'),
(17, 3, NULL, 'fixed', 4, '2021-08-13 09:59:51', '2021-08-13 09:59:51'),
(18, 3, NULL, 'fixed', 5, '2021-08-13 09:59:51', '2021-08-13 09:59:51'),
(19, 4, NULL, 'fixed', 0, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(20, 4, NULL, 'fixed', 1, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(21, 4, NULL, 'fixed', 2, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(22, 4, NULL, 'fixed', 3, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(23, 4, NULL, 'fixed', 4, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(24, 4, NULL, 'fixed', 5, '2021-08-13 10:40:45', '2021-08-13 10:40:45'),
(25, 5, NULL, 'fixed', 0, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(26, 5, NULL, 'fixed', 1, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(27, 5, NULL, 'fixed', 2, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(28, 5, NULL, 'fixed', 3, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(29, 5, NULL, 'fixed', 4, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(30, 5, NULL, 'fixed', 5, '2021-08-13 10:43:24', '2021-08-13 10:43:24'),
(31, 6, NULL, 'fixed', 0, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(32, 6, NULL, 'fixed', 1, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(33, 6, NULL, 'fixed', 2, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(34, 6, NULL, 'fixed', 3, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(35, 6, NULL, 'fixed', 4, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(36, 6, NULL, 'fixed', 5, '2021-08-13 10:45:22', '2021-08-13 10:45:22'),
(37, 7, NULL, 'fixed', 0, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(38, 7, NULL, 'fixed', 1, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(39, 7, NULL, 'fixed', 2, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(40, 7, NULL, 'fixed', 3, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(41, 7, NULL, 'fixed', 4, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(42, 7, NULL, 'fixed', 5, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(43, 7, NULL, 'fixed', 6, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(44, 7, NULL, 'fixed', 7, '2021-08-13 10:47:33', '2021-08-13 10:47:33'),
(45, 8, NULL, 'fixed', 0, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(46, 8, NULL, 'fixed', 1, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(47, 8, NULL, 'fixed', 2, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(48, 8, NULL, 'fixed', 3, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(49, 8, NULL, 'fixed', 4, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(50, 8, NULL, 'fixed', 5, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(51, 8, NULL, 'fixed', 6, '2021-08-13 10:49:41', '2021-08-13 10:49:41'),
(52, 9, NULL, 'fixed', 0, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(53, 9, NULL, 'fixed', 1, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(54, 9, NULL, 'fixed', 2, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(55, 9, NULL, 'fixed', 3, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(56, 9, NULL, 'fixed', 4, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(57, 9, NULL, 'fixed', 5, '2021-08-13 10:51:58', '2021-08-13 10:51:58'),
(58, 10, NULL, 'fixed', 0, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(59, 10, NULL, 'fixed', 1, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(60, 10, NULL, 'fixed', 2, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(61, 10, NULL, 'fixed', 3, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(62, 10, NULL, 'fixed', 4, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(63, 10, NULL, 'fixed', 5, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(64, 10, NULL, 'fixed', 6, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(65, 10, NULL, 'fixed', 7, '2021-08-13 10:53:48', '2021-08-13 10:53:48'),
(66, 11, NULL, 'fixed', 0, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(67, 11, NULL, 'fixed', 1, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(68, 11, NULL, 'fixed', 2, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(69, 11, NULL, 'fixed', 3, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(70, 11, NULL, 'fixed', 4, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(71, 11, NULL, 'fixed', 5, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(72, 11, NULL, 'fixed', 6, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(73, 11, NULL, 'fixed', 7, '2021-08-13 10:55:40', '2021-08-13 10:55:40'),
(74, 12, NULL, 'fixed', 0, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(75, 12, NULL, 'fixed', 1, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(76, 12, NULL, 'fixed', 2, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(77, 12, NULL, 'fixed', 3, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(78, 12, NULL, 'fixed', 4, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(79, 12, NULL, 'fixed', 5, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(80, 12, NULL, 'fixed', 6, '2021-08-13 10:57:02', '2021-08-13 10:57:02'),
(81, 12, NULL, 'fixed', 7, '2021-08-13 10:57:03', '2021-08-13 10:57:03'),
(82, 13, NULL, 'fixed', 0, '2021-08-13 10:59:35', '2021-08-13 10:59:35'),
(83, 13, NULL, 'fixed', 1, '2021-08-13 10:59:35', '2021-08-13 10:59:35'),
(84, 13, NULL, 'fixed', 2, '2021-08-13 10:59:35', '2021-08-13 10:59:35'),
(85, 13, NULL, 'fixed', 3, '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(86, 13, NULL, 'fixed', 4, '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(87, 13, NULL, 'fixed', 5, '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(88, 13, NULL, 'fixed', 6, '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(89, 13, NULL, 'fixed', 7, '2021-08-13 10:59:36', '2021-08-13 10:59:36'),
(90, 14, NULL, 'fixed', 0, '2021-08-13 11:01:05', '2021-08-13 11:01:05'),
(91, 14, NULL, 'fixed', 1, '2021-08-13 11:01:05', '2021-08-13 11:01:05'),
(92, 14, NULL, 'fixed', 2, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(93, 14, NULL, 'fixed', 3, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(94, 14, NULL, 'fixed', 4, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(95, 14, NULL, 'fixed', 5, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(96, 14, NULL, 'fixed', 6, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(97, 14, NULL, 'fixed', 7, '2021-08-13 11:01:06', '2021-08-13 11:01:06'),
(98, 15, NULL, 'fixed', 0, '2021-08-13 11:03:34', '2021-08-13 11:03:34'),
(99, 15, NULL, 'fixed', 1, '2021-08-13 11:03:34', '2021-08-13 11:03:34'),
(100, 15, NULL, 'fixed', 2, '2021-08-13 11:03:34', '2021-08-13 11:03:34'),
(101, 15, NULL, 'fixed', 3, '2021-08-13 11:03:34', '2021-08-13 11:03:34'),
(102, 15, NULL, 'fixed', 4, '2021-08-13 11:03:34', '2021-08-13 11:03:34'),
(103, 15, NULL, 'fixed', 5, '2021-08-13 11:03:34', '2021-08-13 11:03:34'),
(104, 15, NULL, 'fixed', 6, '2021-08-13 11:03:34', '2021-08-13 11:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_value_translations`
--

INSERT INTO `option_value_translations` (`id`, `option_value_id`, `locale`, `label`) VALUES
(1, 1, 'en', 'S'),
(2, 2, 'en', 'M'),
(3, 3, 'en', 'L'),
(4, 4, 'en', 'XL'),
(5, 5, 'en', 'XXL'),
(6, 6, 'en', 'XXXL'),
(7, 7, 'en', 'S'),
(8, 8, 'en', 'M'),
(9, 9, 'en', 'L'),
(10, 10, 'en', 'XL'),
(11, 11, 'en', 'XXL'),
(12, 12, 'en', 'XXXL'),
(13, 13, 'en', 'S'),
(14, 14, 'en', 'M'),
(15, 15, 'en', 'L'),
(16, 16, 'en', 'XL'),
(17, 17, 'en', 'XXL'),
(18, 18, 'en', 'XXXL'),
(19, 19, 'en', 'S'),
(20, 20, 'en', 'M'),
(21, 21, 'en', 'L'),
(22, 22, 'en', 'XL'),
(23, 23, 'en', 'XXL'),
(24, 24, 'en', 'XXXL'),
(25, 25, 'en', 'S'),
(26, 26, 'en', 'M'),
(27, 27, 'en', 'L'),
(28, 28, 'en', 'XL'),
(29, 29, 'en', 'XXL'),
(30, 30, 'en', 'XXXL'),
(31, 31, 'en', 'S'),
(32, 32, 'en', 'M'),
(33, 33, 'en', 'L'),
(34, 34, 'en', 'XL'),
(35, 35, 'en', 'XXL'),
(36, 36, 'en', 'XXXL'),
(37, 37, 'en', '28'),
(38, 38, 'en', '30'),
(39, 39, 'en', '32'),
(40, 40, 'en', '34'),
(41, 41, 'en', '36'),
(42, 42, 'en', '38'),
(43, 43, 'en', '40'),
(44, 44, 'en', '42'),
(45, 45, 'en', '30'),
(46, 46, 'en', '32'),
(47, 47, 'en', '34'),
(48, 48, 'en', '36'),
(49, 49, 'en', '38'),
(50, 50, 'en', '40'),
(51, 51, 'en', '42'),
(52, 52, 'en', 'S'),
(53, 53, 'en', 'M'),
(54, 54, 'en', 'L'),
(55, 55, 'en', 'XL'),
(56, 56, 'en', 'XXL'),
(57, 57, 'en', 'XXXL'),
(58, 58, 'en', '28'),
(59, 59, 'en', '30'),
(60, 60, 'en', '32'),
(61, 61, 'en', '34'),
(62, 62, 'en', '36'),
(63, 63, 'en', '38'),
(64, 64, 'en', '40'),
(65, 65, 'en', '42'),
(66, 66, 'en', '6'),
(67, 67, 'en', '7'),
(68, 68, 'en', '8'),
(69, 69, 'en', '9'),
(70, 70, 'en', '10'),
(71, 71, 'en', '11'),
(72, 72, 'en', '12'),
(73, 73, 'en', '13'),
(74, 74, 'en', '6'),
(75, 75, 'en', '7'),
(76, 76, 'en', '8'),
(77, 77, 'en', '9'),
(78, 78, 'en', '10'),
(79, 79, 'en', '11'),
(80, 80, 'en', '12'),
(81, 81, 'en', '13'),
(82, 82, 'en', '6'),
(83, 83, 'en', '7'),
(84, 84, 'en', '8'),
(85, 85, 'en', '9'),
(86, 86, 'en', '10'),
(87, 87, 'en', '11'),
(88, 88, 'en', '12'),
(89, 89, 'en', '13'),
(90, 90, 'en', '6'),
(91, 91, 'en', '7'),
(92, 92, 'en', '8'),
(93, 93, 'en', '9'),
(94, 94, 'en', '10'),
(95, 95, 'en', '11'),
(96, 96, 'en', '12'),
(97, 97, 'en', '13'),
(98, 98, 'en', '30'),
(99, 99, 'en', '32'),
(100, 100, 'en', '34'),
(101, 101, 'en', '36'),
(102, 102, 'en', '38'),
(103, 103, 'en', '40'),
(104, 104, 'en', '42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_email`, `customer_phone`, `customer_first_name`, `customer_last_name`, `billing_first_name`, `billing_last_name`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_first_name`, `shipping_last_name`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `sub_total`, `shipping_method`, `shipping_cost`, `coupon_id`, `discount`, `total`, `payment_method`, `currency`, `currency_rate`, `locale`, `status`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@gmail.com', '123456789', 'Gautam', 'Ronanki', 'Gautam', 'Ronanki', '76/3', NULL, 'Secunderabad', 'TS', '500015', 'IN', 'Gautam', 'Ronanki', '76/3', NULL, 'Secunderabad', 'TS', '500015', 'IN', '2000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '2000.0000', 'cod', 'INR', '1.0000', 'en', 'pending', NULL, NULL, '2021-07-13 12:55:46', '2021-07-13 12:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_downloads`
--

CREATE TABLE `order_downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 1, '2021-07-11 16:06:25', '2021-07-11 16:06:25'),
(2, 'faq', 1, '2021-07-11 16:07:02', '2021-07-11 16:07:02'),
(3, 'return-policy', 1, '2021-07-11 16:07:22', '2021-07-11 16:07:22'),
(4, 'terms-conditions', 1, '2021-07-11 16:07:43', '2021-07-11 16:07:43'),
(5, 'privacy-policy', 1, '2021-07-11 16:08:12', '2021-07-11 16:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'About Us', '<h1 style=\"text-align: center;\">About Us</h1>\r\n<p>&nbsp;</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>In luctus nunc id lectus pellentesque lacinia.</li>\r\n<li>Pellentesque laoreet mi molestie tortor aliquam, sed hendrerit nisi consectetur.</li>\r\n<li>Nam sed sapien sed lacus placerat euismod in consectetur ex.</li>\r\n<li>Sed et odio ultrices, semper sem sed, scelerisque libero.</li>\r\n<li>Proin ut ex varius libero viverra pellentesque.</li>\r\n</ul>'),
(2, 2, 'en', 'FAQ', '<h1 style=\"text-align: center;\">Help &amp; FAQ</h1>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>What does LOREM mean?</h4>\r\n<p>&lsquo;Lorem ipsum dolor sit amet, consectetur adipisici elit&hellip;&rsquo; (complete text) is dummy text that is not meant to mean anything. It is used as a placeholder in magazine layouts, for example, in order to give an impression of the finished document. The text is intentionally unintelligible so that the viewer is not distracted by the content. The language is not real Latin and even the first word &lsquo;Lorem&rsquo; does not exist. It is said that the lorem ipsum text has been common among typesetters since the 16th century.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use Lorem Ipsum?</h4>\r\n<p>Many times, readers will get distracted by readable text when looking at the layout of a page. Instead of using filler text that says &ldquo;Insert content here,&rdquo; Lorem Ipsum uses a normal distribution of letters, making it resemble standard English. This makes it easier for designers to focus on visual elements, as opposed to what the text on a page actually says. Lorem Ipsum is absolutely necessary in most design cases, too. Web design projects like landing pages, website redesigns and so on only look as intended when they\'re fully-fleshed out with content.</p>'),
(3, 3, 'en', 'Return Policy', '<h1 style=\"text-align: center;\">Return Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Studio Lorem Ipsum will accept returns of UNWORN MERCHANDISE within 14 days of receipt of your order. If 14 days have gone by since receipt of your order, unfortunately we can&rsquo;t offer you a refund or exchange.</p>\r\n<p>&nbsp;</p>\r\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\r\n<p>&nbsp;</p>\r\n<p>To complete your return, we require a receipt or proof of purchase.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Refunds (if applicable)</h4>\r\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.<br />If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Late or missing refunds (if applicable)</h4>\r\n<ul>\r\n<li>If you haven&rsquo;t received a refund yet, first check your bank account again.</li>\r\n<li>Then contact your credit card company, it may take some time before your refund is officially posted.</li>\r\n<li>Next contact your bank. There is often some processing time before a refund is posted.</li>\r\n<li>If you&rsquo;ve done all of this and you still have not received your refund yet, please contact us.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Gifts</h4>\r\n<p>If the item was marked as a gift when purchased and shipped directly to you, you&rsquo;ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\r\n<p>&nbsp;</p>\r\n<p>If the item wasn&rsquo;t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and he will find out about your return.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Shipping</h4>\r\n<p>To return your product, you can request to return the product within 14 days of receipt of your order, and we will email you the return label which you can use to ship the product. Once your return is received and inspected, the refund will be processed to your original method of payment.</p>'),
(4, 4, 'en', 'Terms & Conditions', '<h1 style=\"text-align: center;\">Terms of Service</h1>\r\n<p>&nbsp;</p>\r\n<p>This website is operated by a.season. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to a.season. a.season offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\r\n<p>&nbsp;</p>\r\n<p>By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Online Store Terms</h4>\r\n<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>General Conditions</h4>\r\n<p>We reserve the right to refuse service to anyone for any reason at any time.<br />You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>License</h4>\r\n<p>You must not:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Republish material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Redistribute content from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclaimer</h4>\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>limit or exclude our or your liability for death or personal injury;</li>\r\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>'),
(5, 5, 'en', 'Privacy & Policy', '<h1 style=\"text-align: center;\">Privacy Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Your privacy is as important to us as it is to you. We know you hate SPAM and so do we. That is why we will never sell or share your information with anyone without your express permission. We respect your rights and will do everything in our power to protect your personal information. In the interest of full disclosure, we provide this notice explaining our online information collection practices. This privacy notice discloses the privacy practices for <a href=\"https://envaysoft.com/\">EnvaySoft</a>&nbsp;(herein known as we, us and our company) and applies solely to information collected by this web site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Information Collection, Use, and Sharing</h4>\r\n<p>We are the sole owners of the information collected on this site. We only have access to information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone. We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclosure</h4>\r\n<p>This site uses Google web analytics service. Google may record mouse clicks, mouse movements, scrolling activity as well as text you type in this website. This site does not use Google to collect any personally identifiable information entered in this website. Google does track your browsing habits across web sites which do not use Google services.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Security</h4>\r\n<p>We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.</p>\r\n<p>Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a closed lock icon at the bottom of your web browser, or looking for &ldquo;https&rdquo; at the beginning of the address of the web page.</p>\r\n<p>While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Email Policy</h4>\r\n<p>The following are situations in which you may provide Your Information to us:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>When you fill out forms or fields through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you register for an account with our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you create a subscription for our newsletter or Services.</p>\r\n</li>\r\n<li>\r\n<p>When you provide responses to a survey.</p>\r\n</li>\r\n<li>\r\n<p>When you answer questions on a quiz.</p>\r\n</li>\r\n<li>\r\n<p>When you join or enroll in an event through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you order services or products from, or through our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you provide information to us through a third-party application, service or Website.</p>\r\n</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'DVKAAmDSt7GnEMj3RmDHp06ZlObYq4et', '2021-07-11 10:22:54', '2021-07-11 10:22:54'),
(2, 1, 'FNcvhSDor0z2XiCwQLAQEhhdlb3cI6h9', '2021-07-13 11:25:43', '2021-07-13 11:25:43'),
(4, 1, 'rcjkw5DqUZpZQHin7QxKlvKmmjM9MzS1', '2021-07-14 09:22:47', '2021-07-14 09:22:47'),
(5, 1, 'r0jqBuprSZTkZ5aHwZzWMpFlBeftMOgn', '2021-07-15 04:06:12', '2021-07-15 04:06:12'),
(6, 1, 'GATtLdPsJ6B5pfYjigQz712K0DsZflZe', '2021-07-16 09:47:09', '2021-07-16 09:47:09'),
(7, 1, '8hzjw6IF1GQP9s90DJUpbXtg7AuAGOSX', '2021-07-25 07:45:09', '2021-07-25 07:45:09'),
(9, 1, 'eOGV5D0F4b4ucjpTxMkN0H7jBTTyNKGK', '2021-07-25 11:30:33', '2021-07-25 11:30:33'),
(12, 1, 'Z9wB0qIMOUyrRcv0bWai2BwkfcW03mJC', '2021-08-13 11:12:20', '2021-08-13 11:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`, `virtual`) VALUES
(2, 3, NULL, 'men-slim-fit-self-design-cut-away-collar-casual-shirt', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 5, 1, NULL, NULL, NULL, '2021-08-13 09:58:58', '2021-08-13 10:50:02', 0),
(3, 6, NULL, 'self-design-men-polo-neck-grey-t-shirt', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 10:40:45', '2021-08-13 10:40:45', 0),
(4, 4, NULL, 'striped-men-round-neck-white-blue-t-shirt', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-08-13 10:43:24', '2021-08-16 12:29:51', 0),
(5, NULL, NULL, 'full-sleeve-solid-men-sweatshirt', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-08-13 10:44:43', '2021-08-13 10:49:54', 0),
(6, 6, NULL, 'regular-men-blue-jeans', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-08-13 10:47:33', '2021-08-13 10:47:40', 0),
(7, 3, NULL, 'regular-fit-men-black-cotton-blend-trousers', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-08-13 10:49:41', '2021-08-13 10:49:50', 0),
(8, 6, NULL, 'solid-men-black-track-pants', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-08-13 10:51:58', '2021-08-13 10:52:08', 0),
(9, 6, NULL, 'solid-men-black-sports-shorts', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 10:53:48', '2021-08-13 10:53:48', 0),
(10, 2, NULL, 'white-sneaker-for-mensboys-sneakers-for-men-white', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 10:55:40', '2021-08-13 10:55:40', 0),
(11, 6, NULL, 'officewear-perfect-style-lace-up-for-men-black', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 10:57:02', '2021-08-13 10:57:02', 0),
(12, 2, NULL, 'trendy-sports-running-running-shoes-for-men-orange-grey', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 10:59:35', '2021-08-13 10:59:35', 0),
(13, 6, NULL, 'men-casual-comfort-stylish-grey-slipper-pack-of-1-flip-flops', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 11:01:05', '2021-08-13 11:01:05', 0),
(14, 6, NULL, 'men-evening-party-formal-casual-black-artificial-leather-reversible-belt', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 11:03:34', '2021-08-13 11:03:34', 0),
(15, 6, NULL, 'ny-cap-for-mencaps-baseball-snapback-beanie-sports-adjustable-hiphop-dancing-cap', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2021-08-13 11:04:29', '2021-08-13 11:04:29', 0),
(16, 3, NULL, 'men-brown-artificial-leather-money-clip-10-card-slots', '1000.0000', NULL, 'fixed', NULL, NULL, '1000.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-08-13 11:05:20', '2021-08-13 11:05:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(2, 6),
(2, 7),
(3, 6),
(3, 8),
(4, 6),
(4, 9),
(5, 6),
(5, 10),
(6, 6),
(6, 11),
(7, 6),
(7, 12),
(8, 6),
(8, 13),
(9, 6),
(9, 14),
(10, 15),
(10, 16),
(11, 15),
(11, 17),
(12, 15),
(12, 18),
(13, 15),
(13, 19),
(14, 20),
(14, 22),
(15, 20),
(15, 21),
(16, 20),
(16, 22);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`product_id`, `option_id`) VALUES
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`product_id`, `tag_id`) VALUES
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(2, 2, 'en', 'Men Slim Fit Self Design Cut Away Collar Casual Shirt', '<p>Men Slim Fit Self Design Cut Away Collar Casual Shirt</p>', NULL),
(3, 3, 'en', 'Self Design Men Polo Neck Grey T-Shirt', '<p>Self Design Men Polo Neck Grey T-Shirt</p>', NULL),
(4, 4, 'en', 'Striped Men Round Neck White, Blue T-Shirt', '<p>Striped Men Round Neck White, Blue T-Shirt</p>', NULL),
(5, 5, 'en', 'Full Sleeve Solid Men Sweatshirt', '<p>Full Sleeve Solid Men Sweatshirt</p>', NULL),
(6, 6, 'en', 'Regular Men Blue Jeans', '<p>Regular Men Blue Jeans</p>', NULL),
(7, 7, 'en', 'Regular Fit Men Black Cotton Blend Trousers', '<p>Regular Fit Men Black Cotton Blend Trousers</p>', NULL),
(8, 8, 'en', 'Solid Men Black Track Pants', '<p>Solid Men Black Track Pants</p>', NULL),
(9, 9, 'en', 'Solid Men Black Sports Shorts', '<p>Solid Men Black Sports Shorts</p>', NULL),
(10, 10, 'en', 'White Sneaker For Men\'s/Boy\'s Sneakers For Men  (White)', '<p>White Sneaker For Men\'s/Boy\'s Sneakers For Men&nbsp;&nbsp;(White)</p>', NULL),
(11, 11, 'en', 'Officewear Perfect Style Lace Up For Men  (Black)', '<p>Officewear Perfect Style Lace Up For Men&nbsp;&nbsp;(Black)</p>', NULL),
(12, 12, 'en', 'Trendy Sports Running Running Shoes For Men  (Orange, Grey)', '<p>Trendy Sports Running Running Shoes For Men&nbsp;&nbsp;(Orange, Grey)</p>', NULL),
(13, 13, 'en', 'Men Casual Comfort stylish Grey Slipper (Pack Of 1) Flip Flops', '<p>Men Casual Comfort stylish Grey Slipper (Pack Of 1) Flip Flops</p>', NULL),
(14, 14, 'en', 'Men Evening, Party, Formal, Casual Black Artificial Leather Reversible Belt', '<p>Men Evening, Party, Formal, Casual Black Artificial Leather Reversible Belt</p>', NULL),
(15, 15, 'en', 'N/Y Cap for Men|Caps Baseball Snapback Beanie Sports Adjustable Hiphop Dancing Cap', '<p>N/Y Cap for Men|Caps Baseball Snapback Beanie Sports Adjustable Hiphop Dancing Cap</p>', NULL),
(16, 16, 'en', 'Men Brown Artificial Leather Money Clip  (10 Card Slots)', '<p>Men Brown Artificial Leather Money Clip&nbsp;&nbsp;(10 Card Slots)</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2021-07-11 04:22:29', '2021-07-11 04:22:29'),
(2, NULL, '2021-07-11 04:22:31', '2021-07-11 04:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(2, 2, 'en', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_terms`
--

INSERT INTO `search_terms` (`id`, `term`, `results`, `hits`, `created_at`, `updated_at`) VALUES
(1, 'gfgdfg', 0, 1, '2021-07-11 11:42:30', '2021-07-11 11:42:30'),
(2, 'tj', 0, 1, '2021-07-11 11:42:42', '2021-07-11 11:42:42'),
(3, 'sdfsdf', 0, 2, '2021-07-11 12:05:12', '2021-07-11 12:05:28'),
(4, 'men', 1, 7, '2021-07-13 11:24:31', '2021-07-16 09:57:17'),
(5, 'women', 0, 8, '2021-07-13 13:30:50', '2021-07-16 09:57:13'),
(6, 'kids', 0, 4, '2021-07-13 13:31:20', '2021-07-13 13:31:28'),
(7, 'footwear', 0, 5, '2021-07-13 13:31:38', '2021-07-13 13:32:29'),
(8, 'watches', 0, 5, '2021-07-14 09:08:18', '2021-07-14 09:08:27'),
(9, 'mens', 1, 1, '2021-07-15 04:26:42', '2021-07-15 04:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT 0,
  `plain_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2021-07-11 04:22:30', '2021-07-11 04:22:30'),
(2, 'store_email', 0, 's:17:\"info@brocode.shop\";', '2021-07-11 04:22:31', '2021-07-11 10:00:39'),
(3, 'store_phone', 0, 's:9:\"123456789\";', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(4, 'search_engine', 0, 's:5:\"mysql\";', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(5, 'algolia_app_id', 0, 'N;', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(6, 'algolia_secret', 0, 'N;', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(7, 'active_theme', 0, 's:10:\"Storefront\";', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(8, 'supported_countries', 0, 'a:1:{i:0;s:2:\"IN\";}', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(9, 'default_country', 0, 's:2:\"IN\";', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(10, 'supported_locales', 0, 'a:1:{i:0;s:2:\"en\";}', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(11, 'default_locale', 0, 's:2:\"en\";', '2021-07-11 04:22:31', '2021-07-11 04:22:31'),
(12, 'default_timezone', 0, 's:12:\"Asia/Kolkata\";', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(13, 'customer_role', 0, 's:1:\"2\";', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(14, 'reviews_enabled', 0, 's:1:\"1\";', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(15, 'auto_approve_reviews', 0, 's:1:\"0\";', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(16, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2021-07-11 04:22:31', '2021-07-11 10:29:42'),
(17, 'supported_currencies', 0, 'a:1:{i:0;s:3:\"INR\";}', '2021-07-11 04:22:32', '2021-07-11 10:01:12'),
(18, 'default_currency', 0, 's:3:\"INR\";', '2021-07-11 04:22:32', '2021-07-11 10:01:12'),
(19, 'send_order_invoice_email', 0, 'b:0;', '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(20, 'newsletter_enabled', 0, 's:1:\"0\";', '2021-07-11 04:22:32', '2021-07-11 10:29:43'),
(21, 'local_pickup_cost', 0, 's:1:\"0\";', '2021-07-11 04:22:32', '2021-07-11 10:29:44'),
(22, 'flat_rate_cost', 0, 's:1:\"0\";', '2021-07-11 04:22:32', '2021-07-11 10:29:44'),
(23, 'free_shipping_label', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(24, 'local_pickup_label', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(25, 'flat_rate_label', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(26, 'paypal_label', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(27, 'paypal_description', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(28, 'stripe_label', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(29, 'stripe_description', 1, NULL, '2021-07-11 04:22:32', '2021-07-11 04:22:32'),
(30, 'paytm_label', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(31, 'paytm_description', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(32, 'razorpay_label', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(33, 'razorpay_description', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(34, 'instamojo_label', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(35, 'instamojo_description', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(36, 'cod_label', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(37, 'cod_description', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(38, 'bank_transfer_label', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(39, 'bank_transfer_description', 1, NULL, '2021-07-11 04:22:33', '2021-07-11 04:22:33'),
(40, 'check_payment_label', 1, NULL, '2021-07-11 04:22:34', '2021-07-11 04:22:34'),
(41, 'check_payment_description', 1, NULL, '2021-07-11 04:22:34', '2021-07-11 04:22:34'),
(42, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2021-07-11 04:22:34', '2021-07-11 10:04:48'),
(43, 'maintenance_mode', 0, 's:1:\"0\";', '2021-07-11 10:29:42', '2021-07-11 14:10:17'),
(44, 'store_tagline', 1, NULL, '2021-07-11 10:29:42', '2021-07-11 10:29:42'),
(45, 'bank_transfer_instructions', 1, NULL, '2021-07-11 10:29:42', '2021-07-11 10:29:42'),
(46, 'check_payment_instructions', 1, NULL, '2021-07-11 10:29:42', '2021-07-11 10:29:42'),
(47, 'store_address_1', 0, 'N;', '2021-07-11 10:29:42', '2021-07-11 10:29:42'),
(48, 'store_address_2', 0, 'N;', '2021-07-11 10:29:42', '2021-07-11 10:29:42'),
(49, 'store_city', 0, 'N;', '2021-07-11 10:29:42', '2021-07-11 10:29:42'),
(50, 'store_country', 0, 's:2:\"IN\";', '2021-07-11 10:29:42', '2021-07-11 10:00:39'),
(51, 'store_state', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(52, 'store_zip', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(53, 'store_phone_hide', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(54, 'store_email_hide', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(55, 'currency_rate_exchange_service', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(56, 'fixer_access_key', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(57, 'forge_api_key', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(58, 'currency_data_feed_api_key', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(59, 'auto_refresh_currency_rates', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(60, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(61, 'sms_from', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(62, 'sms_service', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(63, 'vonage_key', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(64, 'vonage_secret', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(65, 'twilio_sid', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(66, 'twilio_token', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(67, 'welcome_sms', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(68, 'new_order_admin_sms', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(69, 'new_order_sms', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(70, 'mail_from_address', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(71, 'mail_from_name', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(72, 'mail_host', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(73, 'mail_port', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(74, 'mail_username', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(75, 'mail_password', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(76, 'mail_encryption', 0, 'N;', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(77, 'welcome_email', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(78, 'admin_order_email', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(79, 'invoice_email', 0, 's:1:\"0\";', '2021-07-11 10:29:43', '2021-07-11 10:29:43'),
(80, 'mailchimp_api_key', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(81, 'mailchimp_list_id', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(82, 'custom_header_assets', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(83, 'custom_footer_assets', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(84, 'facebook_login_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(85, 'facebook_login_app_id', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(86, 'facebook_login_app_secret', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(87, 'google_login_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(88, 'google_login_client_id', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(89, 'google_login_client_secret', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(90, 'free_shipping_enabled', 0, 's:1:\"1\";', '2021-07-11 10:29:44', '2021-07-13 12:55:37'),
(91, 'free_shipping_min_amount', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(92, 'local_pickup_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(93, 'flat_rate_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(94, 'paypal_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(95, 'paypal_test_mode', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(96, 'paypal_client_id', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(97, 'paypal_secret', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(98, 'stripe_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(99, 'stripe_publishable_key', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(100, 'stripe_secret_key', 0, 'N;', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(101, 'paytm_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:44', '2021-07-11 10:29:44'),
(102, 'paytm_test_mode', 0, 's:1:\"0\";', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(103, 'paytm_merchant_id', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(104, 'paytm_merchant_key', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(105, 'razorpay_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(106, 'razorpay_key_id', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(107, 'razorpay_key_secret', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(108, 'instamojo_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(109, 'instamojo_test_mode', 0, 's:1:\"0\";', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(110, 'instamojo_api_key', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(111, 'instamojo_auth_token', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(112, 'cod_enabled', 0, 's:1:\"1\";', '2021-07-11 10:29:45', '2021-07-13 12:51:35'),
(113, 'bank_transfer_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(114, 'check_payment_enabled', 0, 's:1:\"0\";', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(115, 'sms_order_statuses', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(116, 'email_order_statuses', 0, 'N;', '2021-07-11 10:29:45', '2021-07-11 10:29:45'),
(117, 'storefront_welcome_text', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(118, 'storefront_address', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(119, 'storefront_navbar_text', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(120, 'storefront_footer_menu_one_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(121, 'storefront_footer_menu_two_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(122, 'storefront_feature_1_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(123, 'storefront_feature_1_subtitle', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(124, 'storefront_feature_2_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(125, 'storefront_feature_2_subtitle', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(126, 'storefront_feature_3_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(127, 'storefront_feature_3_subtitle', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(128, 'storefront_feature_4_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(129, 'storefront_feature_4_subtitle', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(130, 'storefront_feature_5_title', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(131, 'storefront_feature_5_subtitle', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(132, 'storefront_product_page_banner_file_id', 1, NULL, '2021-07-11 10:04:48', '2021-07-11 10:04:48'),
(133, 'storefront_slider_banner_1_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(134, 'storefront_slider_banner_2_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(135, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(136, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(137, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(138, 'storefront_featured_categories_section_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(139, 'storefront_featured_categories_section_subtitle', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(140, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(141, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(142, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(143, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(144, 'storefront_two_column_banners_1_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(145, 'storefront_two_column_banners_2_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(146, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(147, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(148, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(149, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(150, 'storefront_three_column_banners_1_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(151, 'storefront_three_column_banners_2_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(152, 'storefront_three_column_banners_3_file_id', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(153, 'storefront_product_tabs_2_section_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(154, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2021-07-11 10:04:49', '2021-07-11 10:04:49'),
(155, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(156, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(157, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(158, 'storefront_one_column_banner_file_id', 1, NULL, '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(159, 'storefront_theme_color', 0, 's:12:\"custom_color\";', '2021-07-11 10:04:50', '2021-08-13 12:00:51'),
(160, 'storefront_custom_theme_color', 0, 's:7:\"#d6b300\";', '2021-07-11 10:04:50', '2021-08-13 12:02:13'),
(161, 'storefront_mail_theme_color', 0, 's:12:\"custom_color\";', '2021-07-11 10:04:50', '2021-08-13 11:15:42'),
(162, 'storefront_custom_mail_theme_color', 0, 's:7:\"#fed410\";', '2021-07-11 10:04:50', '2021-08-13 11:54:17'),
(163, 'storefront_slider', 0, 's:1:\"1\";', '2021-07-11 10:04:50', '2021-07-13 11:29:28'),
(164, 'storefront_terms_page', 0, 's:1:\"4\";', '2021-07-11 10:04:50', '2021-07-13 11:29:28'),
(165, 'storefront_privacy_page', 0, 's:1:\"5\";', '2021-07-11 10:04:50', '2021-07-13 11:29:28'),
(166, 'storefront_primary_menu', 0, 's:1:\"1\";', '2021-07-11 10:04:50', '2021-07-11 16:23:27'),
(167, 'storefront_category_menu', 0, 's:1:\"2\";', '2021-07-11 10:04:50', '2021-07-11 16:23:27'),
(168, 'storefront_footer_menu_one', 0, 's:1:\"3\";', '2021-07-11 10:04:50', '2021-07-11 16:23:27'),
(169, 'storefront_footer_menu_two', 0, 'N;', '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(170, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:50', '2021-07-11 16:28:02'),
(171, 'storefront_feature_1_icon', 0, 's:17:\"las la-headphones\";', '2021-07-11 10:04:50', '2021-07-11 16:28:02'),
(172, 'storefront_feature_2_icon', 0, 's:18:\"las la-credit-card\";', '2021-07-11 10:04:50', '2021-07-11 16:28:02'),
(173, 'storefront_feature_3_icon', 0, 's:17:\"las la-shield-alt\";', '2021-07-11 10:04:50', '2021-07-11 16:28:02'),
(174, 'storefront_feature_4_icon', 0, 's:12:\"las la-truck\";', '2021-07-11 10:04:50', '2021-07-11 16:28:02'),
(175, 'storefront_feature_5_icon', 0, 's:21:\"las la-calendar-minus\";', '2021-07-11 10:04:50', '2021-07-11 16:29:16'),
(176, 'storefront_product_page_banner_call_to_action_url', 0, 'N;', '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(177, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(178, 'storefront_facebook_link', 0, 's:1:\"#\";', '2021-07-11 10:04:50', '2021-07-11 14:24:06'),
(179, 'storefront_twitter_link', 0, 'N;', '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(180, 'storefront_instagram_link', 0, 's:1:\"#\";', '2021-07-11 10:04:50', '2021-07-11 14:24:06'),
(181, 'storefront_youtube_link', 0, 'N;', '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(182, 'storefront_slider_banner_1_call_to_action_url', 0, 's:1:\"#\";', '2021-07-11 10:04:50', '2021-07-11 16:31:09'),
(183, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:50', '2021-07-11 10:04:50'),
(184, 'storefront_slider_banner_2_call_to_action_url', 0, 's:1:\"#\";', '2021-07-11 10:04:51', '2021-07-11 16:31:09'),
(185, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(186, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:51', '2021-07-13 11:38:20'),
(187, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 's:1:\"#\";', '2021-07-11 10:04:51', '2021-07-11 16:32:59'),
(188, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(189, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 's:1:\"#\";', '2021-07-11 10:04:51', '2021-07-11 16:32:59'),
(190, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(191, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 's:1:\"#\";', '2021-07-11 10:04:51', '2021-07-11 16:32:59'),
(192, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(193, 'storefront_featured_categories_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:51', '2021-07-11 16:33:51'),
(194, 'storefront_featured_categories_section_category_1_category_id', 0, 's:1:\"6\";', '2021-07-11 10:04:51', '2021-08-13 11:39:16'),
(195, 'storefront_featured_categories_section_category_1_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:51', '2021-07-11 16:33:51'),
(196, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(197, 'storefront_featured_categories_section_category_2_category_id', 0, 's:2:\"20\";', '2021-07-11 10:04:51', '2021-08-13 11:39:16'),
(198, 'storefront_featured_categories_section_category_2_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:51', '2021-07-11 16:33:51'),
(199, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(200, 'storefront_featured_categories_section_category_3_category_id', 0, 's:2:\"15\";', '2021-07-11 10:04:51', '2021-08-13 11:39:16'),
(201, 'storefront_featured_categories_section_category_3_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:51', '2021-07-11 16:33:52'),
(202, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(203, 'storefront_featured_categories_section_category_4_category_id', 0, 's:1:\"7\";', '2021-07-11 10:04:51', '2021-08-13 11:39:16'),
(204, 'storefront_featured_categories_section_category_4_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:51', '2021-08-13 11:39:16'),
(205, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(206, 'storefront_featured_categories_section_category_5_category_id', 0, 'N;', '2021-07-11 10:04:51', '2021-08-13 09:56:53'),
(207, 'storefront_featured_categories_section_category_5_product_type', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(208, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(209, 'storefront_featured_categories_section_category_6_category_id', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(210, 'storefront_featured_categories_section_category_6_product_type', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(211, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(212, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:51', '2021-07-11 16:34:50'),
(213, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:51', '2021-07-11 16:34:50'),
(214, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 's:1:\"6\";', '2021-07-11 10:04:51', '2021-08-13 11:41:29'),
(215, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 'N;', '2021-07-11 10:04:51', '2021-07-11 10:04:51'),
(216, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:51', '2021-07-11 16:34:50'),
(217, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 's:2:\"20\";', '2021-07-11 10:04:52', '2021-08-13 11:41:29'),
(218, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 'N;', '2021-07-11 10:04:52', '2021-07-11 10:04:52'),
(219, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:52', '2021-07-11 16:34:50'),
(220, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 's:2:\"15\";', '2021-07-11 10:04:52', '2021-08-13 11:41:29'),
(221, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 'N;', '2021-07-11 10:04:52', '2021-07-11 10:04:52'),
(222, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 'N;', '2021-07-11 10:04:52', '2021-07-11 10:04:52'),
(223, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 'N;', '2021-07-11 10:04:52', '2021-07-11 10:04:52'),
(224, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 'N;', '2021-07-11 10:04:52', '2021-07-11 10:04:52'),
(225, 'storefront_top_brands_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:52', '2021-08-13 11:59:31'),
(226, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:52', '2021-08-13 11:47:58'),
(227, 'storefront_flash_sale_title', 0, 's:17:\"Best <b>Deals</b>\";', '2021-07-11 10:04:52', '2021-08-13 11:47:35'),
(228, 'storefront_active_flash_sale_campaign', 0, 's:1:\"1\";', '2021-07-11 10:04:52', '2021-08-13 11:47:35'),
(229, 'storefront_vertical_products_1_title', 0, 's:8:\"Clothing\";', '2021-07-11 10:04:52', '2021-08-13 11:47:35'),
(230, 'storefront_vertical_products_1_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:52', '2021-08-13 11:47:35'),
(231, 'storefront_vertical_products_1_category_id', 0, 's:1:\"6\";', '2021-07-11 10:04:53', '2021-08-13 11:47:35'),
(232, 'storefront_vertical_products_1_products_limit', 0, 'N;', '2021-07-11 10:04:53', '2021-07-11 10:04:53'),
(233, 'storefront_vertical_products_2_title', 0, 's:8:\"Footwear\";', '2021-07-11 10:04:53', '2021-08-13 11:47:35'),
(234, 'storefront_vertical_products_2_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:53', '2021-08-13 11:47:35'),
(235, 'storefront_vertical_products_2_category_id', 0, 's:2:\"15\";', '2021-07-11 10:04:53', '2021-08-13 11:47:35'),
(236, 'storefront_vertical_products_2_products_limit', 0, 'N;', '2021-07-11 10:04:53', '2021-07-11 10:04:53'),
(237, 'storefront_vertical_products_3_title', 0, 's:11:\"Accessories\";', '2021-07-11 10:04:53', '2021-08-13 11:47:35'),
(238, 'storefront_vertical_products_3_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:54', '2021-08-13 11:47:35'),
(239, 'storefront_vertical_products_3_category_id', 0, 's:2:\"20\";', '2021-07-11 10:04:54', '2021-08-13 11:47:35'),
(240, 'storefront_vertical_products_3_products_limit', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(241, 'storefront_two_column_banners_enabled', 0, 's:1:\"0\";', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(242, 'storefront_two_column_banners_1_call_to_action_url', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(243, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(244, 'storefront_two_column_banners_2_call_to_action_url', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(245, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(246, 'storefront_product_grid_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:54', '2021-08-13 11:50:47'),
(247, 'storefront_product_grid_section_tab_1_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:54', '2021-08-13 11:50:38'),
(248, 'storefront_product_grid_section_tab_1_category_id', 0, 's:1:\"6\";', '2021-07-11 10:04:54', '2021-08-13 11:50:38'),
(249, 'storefront_product_grid_section_tab_1_products_limit', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(250, 'storefront_product_grid_section_tab_2_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:54', '2021-08-13 11:50:38'),
(251, 'storefront_product_grid_section_tab_2_category_id', 0, 's:2:\"15\";', '2021-07-11 10:04:54', '2021-08-13 11:50:38'),
(252, 'storefront_product_grid_section_tab_2_products_limit', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(253, 'storefront_product_grid_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:54', '2021-08-13 11:50:38'),
(254, 'storefront_product_grid_section_tab_3_category_id', 0, 's:2:\"20\";', '2021-07-11 10:04:54', '2021-08-13 11:50:38'),
(255, 'storefront_product_grid_section_tab_3_products_limit', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(256, 'storefront_product_grid_section_tab_4_product_type', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(257, 'storefront_product_grid_section_tab_4_category_id', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(258, 'storefront_product_grid_section_tab_4_products_limit', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(259, 'storefront_three_column_banners_enabled', 0, 's:1:\"0\";', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(260, 'storefront_three_column_banners_1_call_to_action_url', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(261, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(262, 'storefront_three_column_banners_2_call_to_action_url', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(263, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(264, 'storefront_three_column_banners_3_call_to_action_url', 0, 'N;', '2021-07-11 10:04:54', '2021-07-11 10:04:54'),
(265, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(266, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"1\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(267, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 's:15:\"latest_products\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(268, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(269, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 's:2:\"10\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(270, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 's:24:\"recently_viewed_products\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(271, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(272, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 's:2:\"10\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(273, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(274, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 's:1:\"6\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(275, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(276, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(277, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 's:2:\"15\";', '2021-07-11 10:04:55', '2021-08-13 11:58:13'),
(278, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(279, 'storefront_one_column_banner_enabled', 0, 's:1:\"0\";', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(280, 'storefront_one_column_banner_call_to_action_url', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(281, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(282, 'storefront_footer_tags', 0, 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"2\";i:4;s:1:\"5\";}', '2021-07-11 10:04:55', '2021-07-11 16:26:02'),
(283, 'storefront_featured_categories_section_category_1_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(284, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(285, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(286, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(287, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(288, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(289, 'storefront_product_tabs_1_section_tab_1_products', 0, 'N;', '2021-07-11 10:04:55', '2021-07-11 10:04:55'),
(290, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(291, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(292, 'storefront_product_tabs_1_section_tab_4_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(293, 'storefront_top_brands', 0, 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:1:\"5\";}', '2021-07-11 10:04:56', '2021-08-13 09:56:53'),
(294, 'storefront_vertical_products_1_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(295, 'storefront_vertical_products_2_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(296, 'storefront_vertical_products_3_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(297, 'storefront_product_grid_section_tab_1_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(298, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(299, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(300, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(301, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(302, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(303, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(304, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2021-07-11 10:04:56', '2021-07-11 10:04:56'),
(305, 'storefront_three_column_full_width_banners_background_file_id', 0, 's:1:\"6\";', '2021-07-11 16:32:59', '2021-07-11 16:32:59'),
(306, 'storefront_header_logo', 1, NULL, '2021-08-13 11:35:00', '2021-08-13 11:35:00'),
(307, 'storefront_mail_logo', 1, NULL, '2021-08-13 11:35:00', '2021-08-13 11:35:00'),
(308, 'storefront_favicon', 0, 's:2:\"94\";', '2021-08-13 11:35:01', '2021-08-13 11:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:12:\"BroCode.shop\";'),
(2, 23, 'en', 's:13:\"Free Shipping\";'),
(3, 24, 'en', 's:12:\"Local Pickup\";'),
(4, 25, 'en', 's:9:\"Flat Rate\";'),
(5, 26, 'en', 's:6:\"PayPal\";'),
(6, 27, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 28, 'en', 's:6:\"Stripe\";'),
(8, 29, 'en', 's:29:\"Pay via credit or debit card.\";'),
(9, 30, 'en', 's:5:\"Paytm\";'),
(10, 31, 'en', 's:103:\"The best payment gateway provider in India for e-payment through credit card, debit card & net banking.\";'),
(11, 32, 'en', 's:8:\"Razorpay\";'),
(12, 33, 'en', 's:74:\"Pay securely by Credit or Debit card or Internet Banking through Razorpay.\";'),
(13, 34, 'en', 's:9:\"Instamojo\";'),
(14, 35, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(15, 36, 'en', 's:16:\"Cash On Delivery\";'),
(16, 37, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(17, 38, 'en', 's:13:\"Bank Transfer\";'),
(18, 39, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(19, 40, 'en', 's:19:\"Check / Money Order\";'),
(20, 41, 'en', 's:33:\"Please send a check to our store.\";'),
(21, 44, 'en', 's:16:\"Clothing Company\";'),
(22, 45, 'en', 'N;'),
(23, 46, 'en', 'N;'),
(24, 117, 'en', 's:23:\"Welcome to BroCode.shop\";'),
(25, 118, 'en', 's:20:\"Hyderabad, Telangana\";'),
(26, 119, 'en', 's:15:\"House Of Brands\";'),
(27, 120, 'en', 's:12:\"Our Services\";'),
(28, 121, 'en', 'N;'),
(29, 42, 'en', 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";'),
(30, 122, 'en', 's:12:\"24/7 SUPPORT\";'),
(31, 123, 'en', 's:18:\"Support every time\";'),
(32, 124, 'en', 's:14:\"ACCEPT PAYMENT\";'),
(33, 125, 'en', 's:23:\"PhonePe, GooglePay, UPI\";'),
(34, 126, 'en', 's:15:\"SECURED PAYMENT\";'),
(35, 127, 'en', 's:12:\"100% secured\";'),
(36, 128, 'en', 's:13:\"BRANDED GOODS\";'),
(37, 129, 'en', 's:15:\"Best in quality\";'),
(38, 130, 'en', 's:15:\"BEST IN QUALITY\";'),
(39, 131, 'en', 's:21:\"Best quality products\";'),
(40, 132, 'en', 'N;'),
(41, 133, 'en', 's:1:\"4\";'),
(42, 134, 'en', 's:1:\"5\";'),
(43, 135, 'en', 's:1:\"7\";'),
(44, 136, 'en', 's:2:\"10\";'),
(45, 137, 'en', 's:1:\"9\";'),
(46, 138, 'en', 's:36:\"Top Categories in Sales and Trending\";'),
(47, 139, 'en', 's:107:\"Last Month upto 1500+ Products Sales From this catagory. You can choose a product from here and save money.\";'),
(48, 140, 'en', 's:8:\"Featured\";'),
(49, 141, 'en', 's:7:\"Special\";'),
(50, 142, 'en', 's:11:\"New Arrival\";'),
(51, 143, 'en', 'N;'),
(52, 144, 'en', 'N;'),
(53, 145, 'en', 'N;'),
(54, 146, 'en', 's:8:\"Clothing\";'),
(55, 147, 'en', 's:8:\"Footwear\";'),
(56, 148, 'en', 's:11:\"Accessories\";'),
(57, 149, 'en', 'N;'),
(58, 150, 'en', 'N;'),
(59, 151, 'en', 'N;'),
(60, 152, 'en', 'N;'),
(61, 153, 'en', 's:16:\"Hot Best Sellers\";'),
(62, 154, 'en', 's:15:\"Latest Products\";'),
(63, 155, 'en', 's:15:\"Recently Viewed\";'),
(64, 156, 'en', 's:7:\"On Sale\";'),
(65, 157, 'en', 's:11:\"Top Selling\";'),
(66, 158, 'en', 'N;'),
(67, 306, 'en', 's:2:\"95\";'),
(68, 307, 'en', 's:2:\"95\";');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT 0,
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `speed`, `autoplay`, `autoplay_speed`, `fade`, `dots`, `arrows`, `created_at`, `updated_at`) VALUES
(1, 1000, 1, 5000, 0, 1, 1, '2021-07-11 16:20:31', '2021-07-11 16:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInLeft\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 0, '2021-07-11 16:20:32', '2021-07-13 11:27:45'),
(2, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInLeft\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 1, '2021-07-11 16:21:38', '2021-07-13 11:27:45'),
(3, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInLeft\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 2, '2021-07-11 16:21:39', '2021-07-13 11:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `call_to_action_text`, `direction`) VALUES
(1, 1, 'en', 1, '<b>XIAOMI</b> SPEAKER', 'There are a upgrade for the quality and control in the home', 'SHOP NOW', 'left'),
(2, 2, 'en', 2, '<b>3D</b> Virtual Reality', 'VR 3D glasses with remote control gamepad at best price', 'BUY NOW', 'right'),
(3, 3, 'en', 3, '<b>DJI</b> MAVIC PRO', 'The creative\'s shop for flying cameras and flight controllers', 'ORDER NOW', 'left');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main Slider');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'fashion', '2021-07-11 16:25:06', '2021-07-11 16:25:06'),
(2, 'mens', '2021-07-11 16:25:14', '2021-07-11 16:25:14'),
(3, 'footwear', '2021-07-11 16:25:22', '2021-07-11 16:25:22'),
(4, 'kids', '2021-07-11 16:25:38', '2021-07-11 16:25:38'),
(5, 'women', '2021-07-11 16:25:44', '2021-07-11 16:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Fashion'),
(2, 2, 'en', 'Mens'),
(3, 3, 'en', 'Footwear'),
(4, 4, 'en', 'Kids'),
(5, 5, 'en', 'Women');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2021-07-13 11:25:24', '2021-07-13 11:25:24'),
(2, NULL, 'ip', '::1', '2021-07-13 11:25:24', '2021-07-13 11:25:24'),
(3, NULL, 'global', NULL, '2021-07-13 11:25:31', '2021-07-13 11:25:31'),
(4, NULL, 'ip', '::1', '2021-07-13 11:25:31', '2021-07-13 11:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'User', 'admin@gmail.com', '123456789', '$2y$10$.xnyev4ByNgXsqdRAk1w0Oeji544j.qwdjwM7Cj5HgRFJmJ4DSVuy', NULL, '2021-08-13 16:42:20', '2021-07-11 04:22:30', '2021-08-13 11:12:20'),
(2, 'Gautam', 'Ronanki', 'gautamronanki1412@gmail.com', '8639034190', '$2y$10$iuhdnw2c2vIF7HtsEu3Me.ovnbg45pZOxDAH8DLs5JR.3qodCE1VG', NULL, '2021-08-13 16:37:20', '2021-08-13 11:07:07', '2021-08-13 11:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-11 04:22:30', '2021-07-11 04:22:30'),
(2, 2, '2021-08-13 11:07:08', '2021-08-13 11:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `default_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_downloads_order_id_foreign` (`order_id`),
  ADD KEY `order_downloads_file_id_foreign` (`file_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `default_addresses`
--
ALTER TABLE `default_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_downloads`
--
ALTER TABLE `order_downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD CONSTRAINT `default_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD CONSTRAINT `order_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_downloads_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
