-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 12:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashorten`
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
(5, '2022_03_10_124811_create_short_urls_table', 1);

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
-- Table structure for table `short_urls`
--

CREATE TABLE `short_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `original_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `short_urls`
--

INSERT INTO `short_urls` (`id`, `user_id`, `original_url`, `short_url`, `visits`, `created_at`, `updated_at`) VALUES
(1000006, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'jQqsfjeUy03gzZbpbki70cTaoYoUEBrvpiAD1USN', '0', '2022-03-14 13:25:23', '2022-03-14 13:25:23'),
(1000007, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'wyABprXQGBURR4jKu3aKGVmhmXhA7eyWwj79EdP6', '0', '2022-03-14 13:27:00', '2022-03-14 13:27:00'),
(1000008, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'R3ORO6AOu7scrSom6uRMF6dQx9bqVJwrxjlcaIog', '0', '2022-03-14 13:28:22', '2022-03-14 13:28:22'),
(1000009, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'QnjY1XhTr0BKAXvxOiKOdg7KcN5svHpRjPjOlChl', '0', '2022-03-14 13:30:28', '2022-03-14 13:30:28'),
(1000010, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'xwOLQZaWTNgpLAntmqb8ao3Acwxx7lEEGq5oTEDi', '0', '2022-03-14 13:30:56', '2022-03-14 13:30:56'),
(1000011, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'bincAeXySbEGZFK2AJB4Os51L9jyfxBJOlFyB70r', '0', '2022-03-14 13:35:23', '2022-03-14 13:35:23'),
(1000012, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'B7HJl5jiB1okwLouc6JiacC5QGTD1DKDojqCrho7', '0', '2022-03-14 13:38:41', '2022-03-14 13:38:41'),
(1000013, NULL, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'r92ndJBxQqpgVsCeZoZPQZpxug3OrkDEhPe4mflf', '0', '2022-03-14 13:55:16', '2022-03-14 13:55:16'),
(1000014, 1, 'https://www.youtube.com/playlist?list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV', 'cLyirqi0psWrzzK7SV1577XVFusvnJuZ31UqhQQd', '0', '2022-03-14 13:57:16', '2022-03-14 13:57:16'),
(1000015, NULL, 'https://www.youtube.com/watch?v=snd3NSkIq_o&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=5&t=386s', 'ofIDBrh8yLbjkuRRvxW6Gpx1SSHYs22VzliBuyYz', '0', '2022-03-21 10:20:51', '2022-03-21 10:20:52'),
(1000016, NULL, 'https://www.youtube.com/watch?v=snd3NSkIq_o&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=5&t=386s', 'P58y3kfaZhKumejhMzqbWvhkQCUAjrAHASOYNSK2', '0', '2022-03-21 10:27:29', '2022-03-21 10:27:29'),
(1000017, NULL, 'https://www.youtube.com/watch?v=snd3NSkIq_o&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=5&t=386s', 'Iafe4BzVc0RzxQ4hBDf6eQpM2rirFdfRN7clHJWV', '0', '2022-03-21 10:28:10', '2022-03-21 10:28:10'),
(1000018, NULL, 'https://laravel.io/forum/how-use-background-image-in-blade', 'RhUqCHp3SkzoxMXTU3fY6afZDiLMCSQASvhOegMi', '0', '2022-03-21 10:57:17', '2022-03-21 10:57:17');

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
(1, 'ban@ban.com', 'ban@ban.com', NULL, '$2y$10$YZleIxPIfj4Zlhq7TyGmcOj9NzSdBZW0w36b1spxGsrTs7lWZKgr.', NULL, '2022-03-14 13:57:01', '2022-03-14 13:57:01');

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
-- Indexes for table `short_urls`
--
ALTER TABLE `short_urls`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000019;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
