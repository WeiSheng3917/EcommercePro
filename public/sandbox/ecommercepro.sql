-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 06:25 PM
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
-- Database: `ecommercepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 'customer', 'customer@gmail.com', '14874512', 'sqlsjhdjqhi', 'Botique For Women', '122', '1', '1701061986.jpg', '4', '23', '2023-11-27 03:05:19', '2023-11-27 03:05:19'),
(24, 'customer', 'customer@gmail.com', '14874512', 'sqlsjhdjqhi', 'Shirt', '17', '1', '1700995635.jpg', '2', '23', '2023-11-27 03:05:19', '2023-11-27 03:05:19'),
(25, 'customer', 'customer@gmail.com', '14874512', 'sqlsjhdjqhi', 'Samsung Mobile', '380', '1', '1701062152.jpg', '7', '23', '2023-11-27 03:05:19', '2023-11-27 03:05:19'),
(41, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', 'Neclace', '498', '3', '1701061908.jpg', '3', '20', '2023-11-30 06:07:43', '2023-11-30 06:44:43'),
(44, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', 'Laptop', '398', '2', '1701062112.jpg', '6', '20', '2023-11-30 06:30:38', '2023-11-30 06:30:40'),
(45, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', 'Botique For Women', '366', '3', '1701061986.jpg', '4', '20', '2023-11-30 06:44:55', '2023-11-30 07:35:00'),
(46, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', 'Samsung Mobile', '380', '1', '1701062152.jpg', '7', '20', '2023-11-30 06:45:25', '2023-11-30 06:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Men', '2023-11-25 07:36:36', '2023-11-25 07:36:36'),
(2, 'Toy', '2023-11-25 07:40:40', '2023-11-25 07:40:40'),
(3, 'Laptop', '2023-11-25 07:41:13', '2023-11-25 07:41:13'),
(4, 'Mobile', '2023-11-25 07:42:51', '2023-11-25 07:42:51'),
(9, 'Medicine', '2023-11-26 01:26:51', '2023-11-26 01:26:51'),
(11, 'Women', '2023-11-26 03:51:28', '2023-11-26 03:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'user', 'this is my first comment from the laravel', '20', '2023-11-30 02:52:26', '2023-11-30 02:52:26'),
(2, 'user', '2nd comment', '20', '2023-11-30 02:53:10', '2023-11-30 02:53:10'),
(3, 'customer', 'dfghjk', '23', '2023-11-30 03:35:15', '2023-11-30 03:35:15'),
(4, 'customer', 'asdfg', '23', '2023-11-30 03:39:54', '2023-11-30 03:39:54'),
(5, 'customer', 'qwertghgfd', '23', '2023-11-30 03:43:26', '2023-11-30 03:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_25_080301_create_sessions_table', 1),
(7, '2023_11_25_152826_create_categories_table', 2),
(8, '2023_11_26_053344_create_products_table', 3),
(9, '2023_11_27_060142_create_carts_table', 4),
(10, '2023_11_27_091438_create_orders_table', 5),
(11, '2023_11_28_102232_create_notifications_table', 6),
(14, '2023_11_30_090713_create_comments_table', 7),
(15, '2023_11_30_090747_create_replies_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(7, 'yamin', 'yamin@gmail.com', '11212121', 'xkasowkdajkn', '22', 'Neclace', '1', '166', '1701061908.jpg', '3', 'paid', 'delivered', '2023-11-27 03:53:37', '2023-11-27 19:05:54'),
(9, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Neclace', '2', '166', '1701061908.jpg', '3', 'paid', 'You cancelled the order', '2023-11-27 07:13:23', '2023-11-30 00:30:59'),
(10, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Samsung Mobile', '1', '380', '1701062152.jpg', '7', 'paid', 'You cancelled the order', '2023-11-27 07:13:23', '2023-11-30 00:32:07'),
(11, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Shirt', '12', '68', '1700995635.jpg', '2', 'paid', 'processing', '2023-11-27 07:13:23', '2023-11-27 07:13:23'),
(12, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'toy', '5', '1000', '1701062020.jpg', '5', 'paid', 'delivered', '2023-11-27 07:13:23', '2023-11-27 23:08:51'),
(14, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Shirt', '1', '17', '1700995635.jpg', '2', 'paid', 'delivered', '2023-11-27 19:10:38', '2023-11-27 19:11:11'),
(15, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Laptop', '1', '199', '1701062112.jpg', '6', 'cash on delivery', 'processing', '2023-11-27 19:10:38', '2023-11-27 19:10:38'),
(16, 'khan', 'yaminshakil7@gmail.com', '1111', 'dhaka', '29', 'Samsung Mobile', '1', '380', '1701062152.jpg', '7', 'cash on delivery', 'processing', '2023-11-28 02:34:34', '2023-11-28 02:34:34'),
(17, 'khan', 'yaminshakil7@gmail.com', '1111', 'dhaka', '29', 'Shirt', '1', '17', '1700995635.jpg', '2', 'cash on delivery', 'processing', '2023-11-28 02:34:34', '2023-11-28 02:34:34'),
(18, 'shakil', 'wallabee004@gmail.com', '1234567345', '1sdfghy sdfgh 2ec', '28', 'Laptop', '1', '199', '1701062112.jpg', '6', 'cash on delivery', 'processing', '2023-11-28 02:49:15', '2023-11-28 02:49:15'),
(19, 'shakil', 'wallabee004@gmail.com', '1234567345', '1sdfghy sdfgh 2ec', '28', 'toy', '1', '200', '1701062020.jpg', '5', 'cash on delivery', 'processing', '2023-11-28 02:49:15', '2023-11-28 02:49:15'),
(20, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Shirt', '1', '17', '1700995635.jpg', '2', 'cash on delivery', 'processing', '2023-11-28 19:32:05', '2023-11-28 19:32:05'),
(21, 'user', 'user@gmail.com', '0101902021', 'xkasowkdajkn', '20', 'Shirt', '1', '17', '1700995635.jpg', '2', 'cash on delivery', 'processing', '2023-11-28 19:32:05', '2023-11-28 19:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(2, 'Shirt', 'This a unique shirt', '1700995635.jpg', 'Men', '10', '20', '17', '2023-11-26 02:47:15', '2023-11-26 21:04:59'),
(3, 'Neclace', 'Dr\'s gift Uncharted 4 Nathan Drake Ring Necklace Engraved Pendant with Adjustable Leather Chain', '1701061908.jpg', 'Women', '12', '200', '166', '2023-11-26 02:52:37', '2023-11-26 21:16:27'),
(4, 'Botique For Women', 'boutique fashions, trendy clothing and fab looks t...', '1701061986.jpg', 'Women', '12', '200', '122', '2023-11-26 03:52:15', '2023-11-26 21:16:40'),
(5, 'toy', 'Best Toy ever', '1701062020.jpg', 'Toy', '16', '200', NULL, '2023-11-26 19:39:53', '2023-11-26 21:13:40'),
(6, 'Laptop', 'super laptop', '1701062112.jpg', 'Laptop', '13', '199', NULL, '2023-11-26 19:40:21', '2023-11-26 21:15:12'),
(7, 'Samsung Mobile', 'Latest mobile that you can buy online', '1701062152.jpg', 'Mobile', '10', '380', NULL, '2023-11-26 19:40:49', '2023-11-26 21:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'customer', '1', 'reply to the first comment', '23', '2023-11-30 03:28:59', '2023-11-30 03:28:59'),
(2, 'customer', '2', 'for the second comment', '23', '2023-11-30 03:34:54', '2023-11-30 03:34:54'),
(3, 'customer', '1', 'adfghsjdkfl', '23', '2023-11-30 03:37:09', '2023-11-30 03:37:09'),
(4, 'customer', '3', 'xdcfgh', '23', '2023-11-30 03:38:27', '2023-11-30 03:38:27'),
(5, 'customer', '2', 'zxxxx', '23', '2023-11-30 03:43:46', '2023-11-30 03:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0mnJ1FJGXgEyxoV3lp26H1aud7DlCr1SluOnQcNu', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmxscUJvVDQxUk8xNUUyUExqNTVQbUJRVlh1SGJvaXJuVEJ4aGlVZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9lY29tbWVyY2Vwcm8ubG9jYWxob3N0OjgwODAiO319', 1701365124);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(20, 'user', 'user@gmail.com', '0', '0101902021', 'xkasowkdajkn', '2023-11-28 09:00:03', '$2y$12$zETMkfwuEavnIWaONxgpBemwOcPSi8JSGZeAa/2qMMu1fZlAMMm6G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 00:22:45', '2023-11-25 00:22:45'),
(21, 'admin', 'admin@gmail.com', '1', '0101902021', 'sqjduiqhi', '2023-11-28 09:00:31', '$2y$12$v80V9kTSr.9HXxuEpDwo2upKN.C9hTHGNMPSezamUvnwlb57DJl7W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 00:24:43', '2023-11-25 00:24:43'),
(22, 'yamin', 'yamin@gmail.com', '0', '11212121', 'xkasowkdajkn', NULL, '$2y$12$1hgrOIuxmBFhod5kRkxNs.m934PalVEao28U5snS4RutY/P.Y7.Ia', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 23:14:46', '2023-11-26 23:14:46'),
(23, 'customer', 'customer@gmail.com', '0', '14874512', 'sqlsjhdjqhi', '2023-11-30 11:28:02', '$2y$12$vi1sHi0lP5k6gnJbeu02quZL20GN3X4ADLX7/U./tuumDJAN1CB1u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-27 01:25:02', '2023-11-27 01:25:02'),
(28, 'shakil', 'wallabee004@gmail.com', '0', '1234567345', '1sdfghy sdfgh 2ec', '2023-11-28 00:58:41', '$2y$12$vFJTdgIw3..F6UjGtuWdPO6zZh/i3.4i13HAo1XJbGGU6hqWlobZO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-28 00:54:41', '2023-11-28 00:58:41'),
(29, 'khan', 'yaminshakil7@gmail.com', '0', '1111', 'dhaka', '2023-11-28 01:12:36', '$2y$12$fOHCYfuNF3zaRLyPdsFja.1fBrA9ut55GVKCso1VGYuxpL0lUx0RW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-28 01:11:44', '2023-11-28 01:11:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
