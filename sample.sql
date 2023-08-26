-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 07:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hobbie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `hobbie_name`, `created_at`, `updated_at`) VALUES
(1, 'Reading Books', '2023-08-26 16:52:46', '2023-08-26 16:52:46'),
(2, 'Browsing Net', '2023-08-26 16:52:46', '2023-08-26 16:52:46'),
(3, 'Playing Games', '2023-08-26 16:55:11', '2023-08-26 16:55:11'),
(4, 'Playing Music', '2023-08-26 16:55:11', '2023-08-26 16:55:11');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_25_125337_hobbies', 1),
(6, '2023_08_25_130805_user_hobbies', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'eshwar', 'reddy', '2023-08-26 11:28:26', '2023-08-26 11:28:26'),
(2, 'varun', 'kumar', '2023-08-26 11:28:46', '2023-08-26 11:28:46'),
(3, 'vaishnavi', 'r', '2023-08-26 11:29:02', '2023-08-26 11:29:02'),
(4, 'Vasu', 'M', '2023-08-26 11:29:13', '2023-08-26 11:29:13'),
(5, 'Kranthi', 'Kumar', '2023-08-26 11:29:24', '2023-08-26 11:29:24'),
(6, 'Narasimhulu', 'N', '2023-08-26 11:29:41', '2023-08-26 11:29:41'),
(7, 'Suresh', 'J', '2023-08-26 11:29:52', '2023-08-26 11:29:52'),
(8, 'Chinta', 'Ram Mohan', '2023-08-26 11:30:02', '2023-08-26 11:30:02'),
(9, 'Madan', 'Mohan', '2023-08-26 11:30:13', '2023-08-26 11:30:13'),
(10, 'Murthy', 'P', '2023-08-26 11:31:01', '2023-08-26 11:31:01'),
(11, 'Sunil', 'yadav', '2023-08-26 11:34:11', '2023-08-26 11:34:11'),
(12, 'Vishnu', 'Priya', '2023-08-26 11:34:21', '2023-08-26 11:34:21'),
(13, 'Raghav', 'R', '2023-08-26 11:34:49', '2023-08-26 11:34:49'),
(14, 'Mahesh', 'M', '2023-08-26 11:34:57', '2023-08-26 11:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_hobbies`
--

CREATE TABLE `user_hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `hobby_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_hobbies`
--

INSERT INTO `user_hobbies` (`id`, `user_id`, `hobby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-26 11:28:26', '2023-08-26 11:28:26'),
(2, 1, 2, '2023-08-26 11:28:26', '2023-08-26 11:28:26'),
(3, 1, 3, '2023-08-26 11:28:27', '2023-08-26 11:28:27'),
(4, 2, 1, '2023-08-26 11:28:46', '2023-08-26 11:28:46'),
(5, 2, 4, '2023-08-26 11:28:46', '2023-08-26 11:28:46'),
(6, 3, 1, '2023-08-26 11:29:02', '2023-08-26 11:29:02'),
(7, 3, 2, '2023-08-26 11:29:02', '2023-08-26 11:29:02'),
(8, 4, 1, '2023-08-26 11:29:13', '2023-08-26 11:29:13'),
(9, 4, 4, '2023-08-26 11:29:13', '2023-08-26 11:29:13'),
(10, 5, 1, '2023-08-26 11:29:24', '2023-08-26 11:29:24'),
(11, 5, 2, '2023-08-26 11:29:24', '2023-08-26 11:29:24'),
(12, 5, 4, '2023-08-26 11:29:24', '2023-08-26 11:29:24'),
(13, 6, 1, '2023-08-26 11:29:41', '2023-08-26 11:29:41'),
(14, 6, 4, '2023-08-26 11:29:41', '2023-08-26 11:29:41'),
(15, 7, 1, '2023-08-26 11:29:52', '2023-08-26 11:29:52'),
(16, 7, 3, '2023-08-26 11:29:52', '2023-08-26 11:29:52'),
(17, 8, 1, '2023-08-26 11:30:02', '2023-08-26 11:30:02'),
(18, 9, 3, '2023-08-26 11:30:13', '2023-08-26 11:30:13'),
(19, 10, 2, '2023-08-26 11:31:01', '2023-08-26 11:31:01'),
(20, 10, 4, '2023-08-26 11:31:01', '2023-08-26 11:31:01'),
(21, 11, 3, '2023-08-26 11:34:11', '2023-08-26 11:34:11'),
(22, 12, 3, '2023-08-26 11:34:21', '2023-08-26 11:34:21'),
(23, 13, 4, '2023-08-26 11:34:49', '2023-08-26 11:34:49'),
(24, 14, 2, '2023-08-26 11:34:57', '2023-08-26 11:34:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_hobbies`
--
ALTER TABLE `user_hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
