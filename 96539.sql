-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2019 at 11:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `96539`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 40000, '2019-06-12 08:08:19', '2019-06-12 08:08:19'),
(2, 1, 5000, '2019-06-12 08:13:59', '2019-06-12 08:13:59'),
(3, 1, 70000, '2019-06-12 08:14:11', '2019-06-12 08:14:11'),
(4, 2, 30000, '2019-06-12 08:24:59', '2019-06-12 08:24:59'),
(5, 2, 50000, '2019-06-12 08:25:47', '2019-06-12 08:25:47'),
(6, 2, 100000, '2019-06-12 08:26:13', '2019-06-12 08:26:13'),
(7, 2, 180000, '2019-06-12 08:26:53', '2019-06-12 08:26:53'),
(8, 1, 40000, '2019-06-12 08:27:09', '2019-06-12 08:27:09'),
(9, 2, 100000, '2019-06-12 08:37:30', '2019-06-12 08:37:30'),
(10, 3, 100000, '2019-06-12 08:38:57', '2019-06-12 08:38:57'),
(11, 2, 40000, '2019-06-12 08:41:51', '2019-06-12 08:41:51'),
(12, 3, 50000, '2019-06-12 08:42:06', '2019-06-12 08:42:06'),
(13, 3, 20000, '2019-06-14 05:38:25', '2019-06-14 05:38:25'),
(14, 6, 45000, '2019-06-18 11:45:13', '2019-06-18 11:45:13'),
(15, 6, 70000, '2019-06-18 12:03:05', '2019-06-18 12:03:05');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_08_113856_create_students_table', 1),
(4, '2018_06_08_114031_create_fees_table', 1),
(5, '2018_06_09_094513_add_gender_to_students', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullName`, `DateOfBirth`, `Address`, `Balance`, `created_at`, `updated_at`, `gender`) VALUES
(1, 'Student', '1999-02-02', 'STRATH', 100000, '2019-06-12 07:58:59', '2019-06-12 07:58:59', 'Male'),
(2, 'mike muya', '1992-06-04', '78890', 160000, '2019-06-12 08:24:36', '2019-06-12 08:24:36', 'Female'),
(3, 'kamutu', '1998-09-06', '45678', 130000, '2019-06-12 08:38:28', '2019-06-12 08:38:28', 'Male'),
(4, 'Trevor', '2019-02-05', 'dsfxgchj', 200000, '2019-06-18 06:16:07', '2019-06-18 06:16:07', 'Male'),
(5, 'Trevor', '2019-02-05', 'dsfxgchj', 200000, '2019-06-18 06:16:07', '2019-06-18 06:16:07', 'Male'),
(6, 'mimi', '1990-04-22', 'dsfxgchj', 85000, '2019-06-18 11:44:40', '2019-06-18 11:44:40', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'austin', 'admin@admin.com', '$2y$10$.3i2CeF1jMSaSM/mCz2pv.PtZaubgNY4VuMXYo4nOpGqfxeqxaeHW', 'ErT3KFfJm9XqQmdT2T2oKi2XomE7asoI9OX1GWUaLNg19T0NDLzqYB665C7D', '2019-06-12 07:58:27', '2019-06-12 07:58:27'),
(2, 'user', 'user@user.com', '$2y$10$KvwG8Xaph1tDTzJhSpOBCuNZNQMrm7hFjqy0f5zZQsGzR3/MstE.e', 'GSmg0i8uwwA8rVQ7XCW8CvaX7KxOmkDXCv7WnCnFoAekbuwU7hFCVYI04eRE', '2019-06-18 06:15:21', '2019-06-18 06:15:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_student_id_foreign` (`student_id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
