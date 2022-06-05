-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 08:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects`
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
(5, '2022_05_26_203100_create_product_table', 2),
(6, '2022_05_26_203627_create_signup_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`) VALUES
(1, 'Full Sleeve Solid Boys Casual Jacket', 400, 350, 10, '689252721_gallery-1A.jpg', 'Jacket', 'Give your winter wardrobe a style upgrade with the HRX Boys Active Jacket. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys.', 'Jacket', 'Jacket', 'Jacket'),
(2, 'Boys Graphic Print Hosiery TShirt', 425, 400, 10, '417562076_gallery-2B.jpg', 'Shirt', 'Give your summer wardrobe a style upgrade with the HRX Boys Active T\'Shirt. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys.', 'Shirt', 'Shirt', 'Shirt'),
(3, 'New Gen-India Casual TShirt', 375, 350, 5, '591941084_gallery-4D.jpg', 'Shirt', 'Give your summer wardrobe a style upgrade with the HRX Men\'s Active T\'Shirt. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys.', 'Shirt', 'Shirt', 'Shirt'),
(4, 'Graphic Print Pure Cotton Yellow TShirt', 450, 400, 6, '845595782_gallery-5B.jpg', 'Shirt', 'Give your summer wardrobe a style upgrade with the HRX Men\'s Active T\'Shirt. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys.', 'Shirt', 'Shirt', 'Shirt'),
(5, 'Graphic Print Pure Cotton Green TShirt', 500, 450, 6, '561832256_gallery-5A.jpg', 'Shirt', 'Give your summer wardrobe a style upgrade with the HRX Men\'s Active T\'Shirt. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys.', 'Shirt', 'Shirt', 'Shirt'),
(6, 'Graphic Print Yellow TShirt', 415, 400, 10, '256378022_gallery-5D.jpg', 'Shirt', 'Give your summer wardrobe a style upgrade with the HRX Men\'s Active T\'Shirt. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys.', 'Shirt', 'Shirt', 'Shirt'),
(7, 'Girls Long Skirt', 500, 450, 7, '318765813_Girl 1.jpg', 'Long Skirt', 'Girl\'s Classic Versatile Stretchy Skirt All Time Trendy Long Skirt Skater', 'Long Skirt', 'Long Skirt', 'Long Skirt'),
(8, 'Girls Top Short', 475, 450, 4, '216658794_Girl 5.jpg', 'Skirt', 'Printed skirt, has a zip closure and slit on the back', 'Skirt', 'Skirt', 'Skirt'),
(9, 'Girls Red Skirt', 500, 450, 5, '508615995_Girl 2.jpeg', 'Skirt', 'Burgundy solid accordion pleats woven flared  red skirt, has an elasticated waistband, flared hem', 'Skirt', 'Skirt', 'Skirt'),
(10, 'Rainbow Skirt', 500, 500, 5, '149637547_Girl 4.jpg', 'Skirt', 'Rainbow printed flared skirt with pom-pom and tiered detail, has an elasticated waistband with drawstring closure, flared hem', 'Skirt', 'Skirt', 'Skirt'),
(11, 'Girls Black Skirt', 375, 350, 10, '449992476_Girl 3.jpg', 'Skirt', 'Black solid pencil skirt, has an elasticated waistband, straight hem', 'Skirt', 'Skirt', 'Skirt'),
(12, 'Boys Yellow Shirt Pant', 600, 500, 3, '241244209_img1.jpeg', 'TShirt', 'Yellow self-design T-shirt and has a polo collar and  a Pant', 'TShirt', 'TShirt', 'TShirt'),
(13, 'Boys Red Kurta Pajama', 550, 500, 7, '319460977_img2.jpg', 'Kurta Pajama', 'Red printed kurta with dhoti pants', 'Kurta Pajama', 'Kurta Pajama', 'Kurta Pajama'),
(14, 'Winter Jacket', 500, 500, 3, '860091744_exclusive.png', 'Jacket', 'Exclusive Green Jacket with zip', 'Jacket', 'Jacket', 'Jacket'),
(15, 'Girls Yellow Short Skirt', 450, 400, 5, '567722764_img3.jpg', 'Skirt', 'Bring in the ethnic vibe with this tiered yellow skirt. Printed with floral motifs, it is easy to pair and flatters the waist with smocked detailing. Time to add a touch of style to your every spin.', 'Skirt', 'Skirt', 'Skirt'),
(16, 'MammyPoko Pants Extra-L', 500, 500, 15, '396692613_buy-1.jpg', 'Dippers', 'Set of 2 Premium Wonder Pullups Diapers - Medium - 36 Pieces each', 'Dippers', 'Dippers', 'Dippers'),
(17, 'HIMALAYA Happy Gift Pack', 675, 600, 10, '911623107_product-6.jpg', 'Gift Pack', 'Himalaya Babies necessary product gift pack, 100 ml each', 'Gift Pack', 'Gift Pack', 'Gift Pack'),
(18, 'HIMALAYA Baby Lotion and Massage Oil', 425, 400, 7, '982799407_gallery-7B.jpg', 'Lotion', 'Himalaya babies Lotion and  Massage Oil 100 ml', 'Lotion', 'Lotion', 'Lotion'),
(19, 'Cheesy Baby Sleeping Bed Combo', 650, 600, 8, '566945768_buy-3.jpg', 'Bed Combo', 'TC Multi Floral Polycotton net bed with Pillow Covers', 'Bed Combo', 'Bed Combo', 'Bed Combo'),
(20, 'Fareto Cotton Bedding Set', 675, 600, 5, '306893207_gallery-11C.jpg', 'Bed Set', 'Set content: 2 bedsheet with 4 pillow covers, Quality: fine, Colour: blue , Pattern: graphic', 'Bed Set', 'Bed Set', 'Bed Set'),
(21, 'YNA Baby Kick Play Gym Mosquito Net', 500, 450, 6, '664139462_gallery-10B.jpg', 'Mosquito Net', 'Babies Long-lasting superior quality zippers and double-stitched lining which stays like new even post washing Mosquito Net', 'mosquito net', 'mosquito net', 'mosquito net');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `FullName`, `UserName`, `Number`, `Email`, `Password`, `CPassword`, `created_at`, `updated_at`) VALUES
(1, 'Deblina Banerjee', 'dEBLINA7', '6289456669', 'deblina@gmail.com', '$2y$10$0n7H/IUez4gvQNnPs9S1lu7zcUSstB5efhfSKSAaZXjdLIT6RDP6e', '$2y$10$zsofeNZsR5GQNo6SWHPg9Oskzew5OOk3uC0.hbrvWTxDr8XV2iBmK', NULL, NULL),
(2, 'ABCDEFBanerjee', 'abcad37', '6289656669', 'abcd@gmail.com', '$2y$10$efwwS4pFFcr74JwG4kxOve3tg0n5NLhzeC.0iYfANzi8oaYsTAyra', '$2y$10$E6CZ9trBWJMq2x9fCNFSJuVAvRFxw9iq55d9UuktpmIOqAjauYoqG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pnum` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conpass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `uname`, `pnum`, `email`, `email_verified_at`, `password`, `conpass`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'deblina', 'dEBLINA7', 1234567890, 'tinytressers@outlook.com', NULL, '$2y$10$pddPtktSYLTke0AC96byl.HgnaovY/OLIFmaW.DB8ILMiGY2bdI8u', '$2y$10$IKoQ3lIMUYatZ89TGp.tIevQMUtHKiqxmX/Mrft5aHe3wSWbFJC6a', NULL, '2022-05-28 11:50:49', '2022-05-28 11:50:49'),
(3, 'Deblina', 'epiz_31284577', 1234567894, 'fdd@gmail.com', NULL, '$2y$10$vl74.1KGorxmUeicpng0UO5DtW6y664yULEJbL6eX4wCct4pDWe7W', '$2y$10$X5T.Hi90ln9q5DN3znW7ouoGx7ehS2QtVwC1Ib8BrlnGd4ICcVWp.', NULL, '2022-05-28 11:52:07', '2022-05-28 11:52:07'),
(4, 'gk', 'mt', 1234567890, 'sf@gmail.com', NULL, '$2y$10$iivE3R/OntK02lv12nm74eL3pbbeVCE2rFfPPRpo.t4zLpqKF0Jje', '$2y$10$3r5XQeMyIXhgYT6g2Cd3je7e1jtLX1c38.T.g44BIZDrnx6pqS40.', NULL, '2022-05-28 12:02:36', '2022-05-28 12:02:36'),
(5, 'subhodeep moitra', 'subho82', 1232456987, 'subhodeep@gmail.com', NULL, '$2y$10$dwoA12pWbjk20vtGWYeqQeZWZvNszGbLP64fiCM6iONcQJD2H2kIe', '$2y$10$Bs/kx5YQ6zSYAwNAQoGcL.jZTAqtmKnvnB0pKyTwzYS.O42iu0vXW', NULL, '2022-05-28 13:11:43', '2022-05-28 13:11:43');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `signup_email_unique` (`Email`),
  ADD UNIQUE KEY `signup_password_unique` (`Password`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
