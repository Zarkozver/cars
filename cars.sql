-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2020 at 01:39 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Audi', NULL, NULL),
(2, 'BMW', NULL, NULL),
(3, 'Ferrari', NULL, NULL),
(4, 'Fiat', NULL, NULL),
(5, 'Renault', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand_id`, `price`, `year`, `photo`, `created_at`, `updated_at`) VALUES
(16, '8UI4gk3sI5', '3', 1437, 2011, 'http://lorempixel.com/400/200/transport/1', NULL, NULL),
(17, 'kLTgc4igeG', '2', 1173, 2014, 'http://lorempixel.com/400/200/transport/8', NULL, NULL),
(18, 'Rjoe0Yc2F5', '3', 2917, 2000, 'http://lorempixel.com/400/200/transport/4', NULL, NULL),
(19, 'JL4PD4vYwC', '4', 1677, 2003, 'http://lorempixel.com/400/200/transport/7', NULL, NULL),
(20, 'YJ7EWcejsE', '3', 1173, 2004, 'http://lorempixel.com/400/200/transport/5', NULL, NULL),
(21, 'XVXacRhFuF', '5', 2119, 2009, 'http://lorempixel.com/400/200/transport/1', NULL, NULL),
(22, 'vm8N4uh49M', '1', 1884, 2011, 'http://lorempixel.com/400/200/transport/7', NULL, NULL),
(23, 'e0sWaqa1AT', '1', 2188, 2012, 'http://lorempixel.com/400/200/transport/3', NULL, NULL),
(24, 'vUqEysmXYb', '3', 1841, 2005, 'http://lorempixel.com/400/200/transport/10', NULL, NULL),
(25, 'fIL9QPKD5y', '5', 2126, 2012, 'http://lorempixel.com/400/200/transport/3', NULL, NULL),
(26, 'mqsPhT2o29', '3', 1710, 2008, 'http://lorempixel.com/400/200/transport/10', NULL, NULL),
(27, 'hyfscaYxJc', '5', 1544, 2004, 'http://lorempixel.com/400/200/transport/7', NULL, NULL),
(28, 'GBAhtTvjX6', '2', 1888, 2009, 'http://lorempixel.com/400/200/transport/9', NULL, NULL),
(29, 'NPfD8t9WUK', '1', 2329, 2013, 'http://lorempixel.com/400/200/transport/5', NULL, NULL),
(30, 'FRHs5oqBuH', '5', 1938, 2013, 'http://lorempixel.com/400/200/transport/7', NULL, NULL),
(31, 'x7Lfbj6Xiy', '1', 2779, 2019, 'http://lorempixel.com/400/200/transport/2', NULL, NULL),
(32, '3Uycp5V6vE', '2', 2508, 2010, 'http://lorempixel.com/400/200/transport/2', NULL, NULL),
(33, 'hqASwHUlUU', '5', 1276, 2003, 'http://lorempixel.com/400/200/transport/3', NULL, NULL),
(34, 'BxDu6rWaDK', '5', 1313, 2018, 'http://lorempixel.com/400/200/transport/3', NULL, NULL),
(35, 'll6uGcOkrL', '5', 2722, 2011, 'http://lorempixel.com/400/200/transport/1', NULL, NULL),
(36, 'X00zXjlOaz', '4', 1996, 2001, 'http://lorempixel.com/400/200/transport/8', NULL, NULL),
(37, 'si0edCrDRo', '4', 1320, 2017, 'http://lorempixel.com/400/200/transport/10', NULL, NULL),
(38, '25pIYJzauX', '2', 2387, 2011, 'http://lorempixel.com/400/200/transport/4', NULL, NULL),
(39, 'A6sQZWzFfS', '1', 1920, 2020, 'http://lorempixel.com/400/200/transport/1', NULL, NULL),
(40, 'KCDBks68Vc', '3', 1742, 2009, 'http://lorempixel.com/400/200/transport/8', NULL, NULL),
(41, 'dkCIZStXem', '2', 2002, 2016, 'http://lorempixel.com/400/200/transport/6', NULL, NULL),
(42, 'alDRMB2uvv', '2', 1637, 2005, 'http://lorempixel.com/400/200/transport/10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_07_31_165606_create_cars_table', 1),
(13, '2020_07_31_170754_create_brands_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zarko', 'gamerisub@gmail.com', NULL, '$2y$10$jkfgpK3TU7hiSwKZFfSj/u4s4OItq3ZbfmCImzbEEgaYf8QxUQRGq', NULL, '2020-07-31 15:14:18', '2020-07-31 15:14:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
