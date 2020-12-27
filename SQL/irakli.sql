-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 04:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irakli`
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
(8, '2020_12_21_150349_create_posts_table', 2),
(9, '2020_12_21_154204_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1e57efff-e788-477e-b7a4-ce213f70bc47', 'App\\Notifications\\UpdatePostNotificaiton', 'App\\Models\\User', 1, '{\"data\":\"Approved Post Id Is: 4\"}', NULL, '2020-12-21 23:48:14', '2020-12-21 23:48:14'),
('48049a36-3f71-4291-8399-4310612ba490', 'App\\Notifications\\UpdatePostNotificaiton', 'App\\Models\\User', 1, '{\"data\":\"Approved Post Id Is: 1\"}', NULL, '2020-12-21 23:48:12', '2020-12-21 23:48:12');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 'Prof.', 'Placeat omnis iusto est cum. Voluptate at itaque error qui.', 1, NULL, '2020-12-21 23:48:09'),
(2, 'Prof.', 'Aut ipsum eveniet est quo hic repellendus numquam. Hic id nulla cum laudantium quibusdam nobis ut. Qui odit aut itaque.', 1, NULL, '2020-12-21 23:47:15'),
(3, 'Mr.', 'Architecto corporis debitis blanditiis molestias nihil. Debitis dicta minus blanditiis molestias cum mollitia.', 1, NULL, '2020-12-21 23:46:18'),
(4, 'Prof.', 'Necessitatibus nam necessitatibus facilis est. Magni magnam quis sit amet asperiores voluptatem. A aut illum veritatis nam. Illo eos qui voluptatem debitis vel id.', 1, NULL, '2020-12-21 23:48:12'),
(5, 'Dr.', 'Excepturi libero recusandae consequatur perspiciatis suscipit nihil est. Qui alias ut incidunt ipsa perferendis. Sunt occaecati minima dignissimos tempora.', 1, NULL, '2020-12-21 23:39:19'),
(6, 'Dr.', 'Neque facilis dolore reiciendis labore nam. Ut voluptates veritatis deleniti. Suscipit vel consequuntur fugit odit amet facere sit.', 1, NULL, '2020-12-21 23:46:39'),
(7, 'Dr.', 'Modi consequuntur qui vitae quod alias beatae. Ipsam molestiae ullam molestias quod eum molestias. Aut eum fugit voluptatem maxime necessitatibus veniam. Enim ut assumenda deleniti quos.', 1, NULL, '2020-12-21 23:44:46'),
(8, 'Ms.', 'Quibusdam ratione ut nam ex consequatur voluptas dolorem at. Soluta autem libero ea ab similique maxime. Et rerum sunt impedit voluptatem.', 1, NULL, NULL),
(9, 'Dr.', 'Alias ratione autem laudantium dolor quaerat dolores. Maxime delectus rerum non ut. Est officia rerum est ea sit.', 1, NULL, NULL),
(10, 'Prof.', 'Reprehenderit ducimus nostrum eos omnis. Adipisci excepturi nulla unde quis aut. Modi asperiores est et enim quidem temporibus dolorem.', 1, NULL, '2020-12-21 23:36:47');

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
(1, 'Jarrod Jerde', 'bmonahan@example.net', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pivyWmTIbh', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(2, 'Julien Fritsch', 'stephanie50@example.net', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jLw8sohdll', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(3, 'Citlalli Hettinger I', 'psmitham@example.net', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FOUH8kDKjy', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(4, 'Dr. King Hermiston', 'kamille06@example.net', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ijGarIvjoA', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(5, 'Bianka Reilly', 'sidney.dickens@example.org', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NbVyUAqtuH', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(6, 'Francisco Cole', 'dwolf@example.org', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LSXl7hxwQT', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(7, 'Casey Balistreri', 'kconn@example.org', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xRoVjQSVD4', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(8, 'Camden Vandervort', 'omclaughlin@example.com', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jvkJUfPKFn', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(9, 'Westley Bogan PhD', 'anna.wiegand@example.org', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6NjGCtjPYd', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(10, 'Prof. Rudolph Reichert', 'pmclaughlin@example.net', '2020-12-21 23:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GML4RumryB', '2020-12-21 23:03:22', '2020-12-21 23:03:22'),
(11, 'Lera Harber', 'obins@example.org', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1K0cxSpL0O', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(12, 'Prof. Louie Fahey IV', 'vernice61@example.org', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ismFmmT5Ek', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(13, 'Samson Schinner', 'qbrown@example.com', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WTa16ZDdm0', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(14, 'Erica Bergnaum MD', 'dandre08@example.com', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XqdnEpyuBz', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(15, 'Edison Jast III', 'brandy58@example.net', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zstrHohOBT', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(16, 'Ima Jast', 'ratke.alexandrea@example.net', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xc6689R1Rq', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(17, 'Cleve Mertz', 'elda.sanford@example.org', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hEWbrnFnAB', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(18, 'Prof. Matilda Gorczany', 'fermin.jerde@example.net', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1WNhkT6H1T', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(19, 'Cleora Okuneva', 'myra01@example.net', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tcuKfTVYpX', '2020-12-21 23:08:00', '2020-12-21 23:08:00'),
(20, 'Mr. Geoffrey Kilback', 'ybecker@example.net', '2020-12-21 23:08:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NqnU1r5oXK', '2020-12-21 23:08:00', '2020-12-21 23:08:00');

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
