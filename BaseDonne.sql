-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 05:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caracteristiques` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtestock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixAchat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixVente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prixSolde` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageartpetitf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageartgrandf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `scategorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `caracteristiques`, `designation`, `marque`, `reference`, `qtestock`, `prixAchat`, `prixVente`, `prixSolde`, `imageartpetitf`, `imageartgrandf`, `categorieID`, `scategorieID`, `created_at`, `updated_at`) VALUES
(5, '64 gb ', 'Telephone Android', 'Samsung', 'SA1264gb', '10', '123', '150', '130', '../storage/images/A12.jpg', '[\"../storage/images/A12-1.jpg\"]', 1035, 8, '2022-05-29 14:02:11', '2022-05-29 14:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomcategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagecategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nomcategorie`, `imagecategorie`, `created_at`, `updated_at`) VALUES
(1025, 'electromenager', 'electromenager.jpg', NULL, NULL),
(1026, 'electronique', 'electronique.jpg', NULL, '2022-04-18 21:31:35'),
(1027, 'informatique', 'informatique.jpg', NULL, NULL),
(1028, 'jardin', 'jardin.jpg', NULL, NULL),
(1030, 'mode', 'mode.jpg', NULL, NULL),
(1031, 'santeBeaute', 'santeBeaute.jpg', NULL, NULL),
(1032, 'sport', 'sport.jpg', NULL, NULL),
(1033, 'superette', 'superette.jpg', NULL, NULL),
(1034, 'telephonetablette', 'telephonetablette.jpg', NULL, '2022-05-04 12:34:26'),
(1035, 'automoto', 'automoto.jpg', NULL, '2022-05-04 12:53:21'),
(1036, 'bureau', 'bureau.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `npr`, `adresse`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Evert Brown', '82566 Kathleen Village\nPort Emiliachester, ID 62953-5709', 'schmidt.jeremie@example.org', NULL, NULL),
(3, 'Ewell Grimes', '707 Layne Groves Apt. 729\nNew Lexusmouth, NM 73039', 'ybernhard@example.net', NULL, NULL),
(4, 'Alysa Breitenberg DDS', '534 Howe Shoal Suite 623\nBlandaberg, NC 62973', 'kane.sanford@example.com', NULL, NULL);

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
(5, '2022_03_01_084542_create_clients_table', 1),
(6, '2022_03_01_094847_create_categories_table', 2),
(7, '2022_03_01_101417_create_scategories_table', 3),
(8, '2022_03_08_083441_create_articles_table', 4);

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
-- Table structure for table `scategories`
--

CREATE TABLE `scategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomscategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagescat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scategories`
--

INSERT INTO `scategories` (`id`, `nomscategorie`, `imagescat`, `categorieID`, `created_at`, `updated_at`) VALUES
(8, 'Tablette', 'Tablette.jpg', 1027, NULL, NULL),
(9, 'Telecommande', 'Telecommande.jpg', 1026, NULL, NULL),
(10, 'tvled', 'tvled.jpg', 1026, NULL, NULL),
(11, 'Vitamines', 'Vitamines.jpg', 1031, NULL, NULL),
(12, 'Aliments-En-Conserve-M', 'Aliments-En-Conserve-M.png', 1033, NULL, NULL),
(13, 'Android', 'Android.jpg', 1027, NULL, NULL),
(14, 'Bagagerie', 'Bagagerie.png', 1033, NULL, NULL),
(15, 'Basique', 'Basique.jpg', 1027, NULL, NULL),
(17, 'Boissons', 'Boissons.png', 1033, NULL, NULL),
(18, 'bureautique', 'bureautique.jpg', 1027, NULL, NULL),
(19, 'Condiments-&-Sauces-M', 'Condiments-&-Sauces-M.png', 1033, NULL, NULL),
(20, 'cuisine', 'cuisine.jpg', 1025, NULL, NULL),
(21, 'cuisson', 'cuisson.png', 1033, NULL, NULL),
(22, 'Desinfectants', 'Desinfectants.png', 1031, NULL, NULL),
(23, 'Electro', 'Electro.jpg', 1025, NULL, NULL),
(24, 'Equipement-medicaux', 'Equipement-medicaux.jpg', 1031, NULL, NULL),
(25, 'Fixe', 'Fixe.jpg', 1027, NULL, NULL),
(26, 'Grandtv', 'Grandtv.jpg', 1026, NULL, NULL),
(27, 'GROS', 'GROS.jpg', 1025, NULL, NULL),
(28, 'healthy-m', 'healthy-m.png', 1033, NULL, NULL),
(29, 'Hygieneetsante', 'Hygieneetsante.jpg', 1031, NULL, NULL),
(30, 'imprimantes', 'imprimantes.jpg', 1027, NULL, NULL),
(31, 'IPAD', 'IPAD.jpg', 1027, NULL, NULL),
(32, 'Lessive-M', 'Lessive-M.png', 1033, NULL, NULL),
(33, 'MacBooks', 'MacBooks.jpg', 1027, NULL, NULL),
(34, 'Maquillage', 'Maquillage.jpg', 1031, NULL, NULL),
(35, 'massage', 'massage.jpg', 1031, NULL, NULL),
(36, 'Meuble', 'Meuble.jpg', 1033, NULL, NULL),
(37, 'Mode-bebe', 'Mode-bebe.png', 1030, NULL, NULL),
(38, 'Mode-enfant', 'Mode-enfant.png', 1030, NULL, NULL),
(39, 'Mode-femme', 'Mode-femme.png', 1030, NULL, NULL),
(40, 'modehomme', 'modehomme.png', 1030, NULL, NULL),
(41, 'Montre', 'Montre.png', 1030, NULL, NULL),
(42, 'nettoyage', 'nettoyage.png', 1033, NULL, NULL),
(43, 'notebook', 'notebook.jpg', 1027, NULL, NULL),
(44, 'Papiers-et-plastiques-M', 'Papiers-et-plastiques-M.png', 1033, NULL, NULL),
(45, 'ParfumF', 'ParfumF.jpg', 1031, NULL, NULL),
(46, 'ParfumH', 'ParfumH.jpg', 1031, NULL, NULL),
(47, 'Petit-Dejeuner', 'Petit-Dejeuner.png', 1033, NULL, NULL),
(48, 'Pharmacerie', 'Pharmacerie.jpg', 1031, NULL, NULL),
(49, 'Recepteur', 'Recepteur.jpg', 1026, NULL, NULL),
(50, 'scanners', 'scanners.jpg', 1027, NULL, NULL),
(51, 'Smarttv3', 'Smarttv3.png', 1026, NULL, NULL),
(52, 'support', 'support.jpg', 1026, NULL, NULL);

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
(1, 'mohamed', 'mohamed@gmail.com', NULL, '$2y$10$mkI6zGTDyOKQrOKOJHXVvOrXfErrY79YMBd4nokjhAdBst9wpryx2', NULL, '2022-03-28 19:29:16', '2022-03-28 19:29:16'),
(2, 'mohamed2', 'mohamed2@gmail.com', NULL, '$2y$10$AJjlnads4JnI2VqjdU89n.0QsErw8vufPLoYGdMPsrLMWZl44uLBu', NULL, '2022-03-28 19:45:49', '2022-03-28 19:45:49'),
(3, 'mohamed', 'mohamed21@gmail.com', NULL, '$2y$10$DE5W4RFkNs0E8V9ce/.Z/.w521JVX3s3j0ddZJx/qB/dyWa7bJW9e', NULL, '2022-04-03 11:54:09', '2022-04-03 11:54:09'),
(4, 'test', 'test@gmail.com', NULL, '$2y$10$Q3NLWIP07cIvv11Re325GekZy67BDjn9.3znXItCgunN8CpQfamv.', NULL, '2022-05-05 10:54:18', '2022-05-05 10:54:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categorieid_foreign` (`categorieID`),
  ADD KEY `articles_scategorieid_foreign` (`scategorieID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
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
-- Indexes for table `scategories`
--
ALTER TABLE `scategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scategories_categorieid_foreign` (`categorieID`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scategories`
--
ALTER TABLE `scategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_scategorieid_foreign` FOREIGN KEY (`scategorieID`) REFERENCES `scategories` (`id`);

--
-- Constraints for table `scategories`
--
ALTER TABLE `scategories`
  ADD CONSTRAINT `scategories_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
