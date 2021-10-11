-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 07:55 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop3`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `link`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Banner home 1', 'cua-hang', 'Banner_home_1.jpg', 1, '2021-06-14 20:50:55', '2021-06-14 21:07:52'),
(2, 'Banner trang chu 2', 'cua-hang', 'Banner_trang_chu_2.jpg', 1, '2021-06-14 20:52:15', '2021-06-14 21:26:35'),
(3, 'Banner trang chu 3', 'cua-hang?category_id=6', 'Banner_trang_chu_3.jpg', 1, '2021-06-14 20:56:34', '2021-06-14 21:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Nhãn hiệu 1', '2021-06-12 09:27:08', '2021-06-12 09:27:08', 1),
(2, 'Nhãn hiệu 2', '2021-06-12 09:27:21', '2021-06-12 09:27:21', 1),
(3, 'Nhãn hiệu 3', '2021-06-12 09:27:31', '2021-06-12 09:27:31', 0),
(4, 'Nhãn hiệu 4', '2021-06-12 22:19:31', '2021-06-12 22:19:31', 1),
(5, 'Nhãn hiệu 5', '2021-06-12 22:19:47', '2021-06-12 22:19:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `price`, `size`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(9, 9, 'Sản phẩm văn phòng 2 copy', 'KL-VH-2', '', 2000000, '', 1, '', 'GwNWpeoUVyTJbOV0hjWi2X3E9pRGMCPbIzhMrpo9', NULL, NULL),
(18, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, '', 'v7K4j33iDlMs4ymgwuAHGVbtQmefHKgdKxQjL7Jb', NULL, NULL),
(19, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'v7K4j33iDlMs4ymgwuAHGVbtQmefHKgdKxQjL7Jb', NULL, NULL),
(20, 13, 'Sản phẩm treo tường 2', 'KL-TT-2', '', 400000, '', 1, '', 'v7K4j33iDlMs4ymgwuAHGVbtQmefHKgdKxQjL7Jb', NULL, NULL),
(21, 7, 'Sản phẩm ánh sáng 2', 'KL-AS-2', '', 2800000, '', 1, '', 'v7K4j33iDlMs4ymgwuAHGVbtQmefHKgdKxQjL7Jb', NULL, NULL),
(22, 7, 'Sản phẩm ánh sáng 2', 'KL-AS-2', '', 2800000, '', 1, '', 'wJVcB1HgTYoOFuA4unOPwRDfX7U6Tr1bIcTNjbWF', NULL, NULL),
(23, 13, 'Sản phẩm treo tường 2', 'KL-TT-2', '', 500000, 'Size L', 1, 'admin@admin.com', 'dwvHJDx152C2twmyLVzqalr71QmD3tySsh73375E', NULL, NULL),
(24, 13, 'Sản phẩm treo tường 2', 'KL-TT-2', '', 490000, 'Size M', 1, 'admin@admin.com', 'dwvHJDx152C2twmyLVzqalr71QmD3tySsh73375E', NULL, NULL),
(25, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'g0t6HhNuaKbOepfa5hTAUhUTl1vX96hvw3fSqMd3', NULL, NULL),
(26, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'g0t6HhNuaKbOepfa5hTAUhUTl1vX96hvw3fSqMd3', NULL, NULL),
(27, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', '5b3BoKO1EMjj4jA9NxW7CyCKvvRiUde4f33gsM39', NULL, NULL),
(28, 10, 'Sản phẩm ngoài trời 2', 'KL-NT-2', '', 30000000, '', 1, '', '5b3BoKO1EMjj4jA9NxW7CyCKvvRiUde4f33gsM39', NULL, NULL),
(29, 8, 'Sản phẩm trong nhà 2', 'KL-TN-2', '', 7101000, '', 1, '', '5b3BoKO1EMjj4jA9NxW7CyCKvvRiUde4f33gsM39', NULL, NULL),
(30, 15, 'Sản phẩm bếp 3', 'KL-B-3', '', 89000, '', 1, '', 'EMOZw3U1TWEhLt35Hg4iPQpGLv9qUWMXavrglfhY', NULL, NULL),
(31, 10, 'Sản phẩm ngoài trời 2', 'KL-NT-2', '', 30000000, '', 1, '', 'EMOZw3U1TWEhLt35Hg4iPQpGLv9qUWMXavrglfhY', NULL, NULL),
(32, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, '', 'EMOZw3U1TWEhLt35Hg4iPQpGLv9qUWMXavrglfhY', NULL, NULL),
(33, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'q9HJAZAPNBrAFQGUExWPZKpxr7WnmwLgDdPFaNZK', NULL, NULL),
(34, 11, 'Dien thoai 1', 'KL-DT-1', '', 622160, '', 1, '', 'LTHJYzgaCSk8418LwmHNgY2REuq0wvSuhdguyzIe', NULL, NULL),
(35, 12, 'Sản phẩm ánh sáng 3', 'KL-AS-3', '', 810000, '', 1, '', 'q9HJAZAPNBrAFQGUExWPZKpxr7WnmwLgDdPFaNZK', NULL, NULL),
(36, 15, 'Sản phẩm bếp 3', 'KL-B-3', '', 89000, '', 1, '', 'q9HJAZAPNBrAFQGUExWPZKpxr7WnmwLgDdPFaNZK', NULL, NULL),
(37, 18, 'Sản phẩm ánh sáng 4', 'KL-AS-4', '', 400000, '', 1, 'chau@gmail.com', '69TLL617offDysEBsac4mAZLqoVWELvuxjEQCUw3', NULL, NULL),
(38, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, 'chau@gmail.com', '69TLL617offDysEBsac4mAZLqoVWELvuxjEQCUw3', NULL, NULL),
(39, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, 'chau@gmail.com', '69TLL617offDysEBsac4mAZLqoVWELvuxjEQCUw3', NULL, NULL),
(40, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'rWI824dQxu6wZBm5YecVSGvVBt3FloE1Qgh5xNI2', NULL, NULL),
(41, 12, 'Sản phẩm ánh sáng 3', 'KL-AS-3', '', 810000, '', 3, '', 'rWI824dQxu6wZBm5YecVSGvVBt3FloE1Qgh5xNI2', NULL, NULL),
(42, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, '', 'rWI824dQxu6wZBm5YecVSGvVBt3FloE1Qgh5xNI2', NULL, NULL),
(43, 9, 'Sản phẩm văn phòng 2', 'KL-VH-2', '', 2000000, '', 7, '', 'rWI824dQxu6wZBm5YecVSGvVBt3FloE1Qgh5xNI2', NULL, NULL),
(44, 10, 'Sản phẩm ngoài trời 2', 'KL-NT-2', '', 30000000, '', 2, '', 'rWI824dQxu6wZBm5YecVSGvVBt3FloE1Qgh5xNI2', NULL, NULL),
(45, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 2, '', '2wTnSKHBokrah6U6JzqCzXCTKE33vYgVj4Ys8Gdg', NULL, NULL),
(46, 13, 'Sản phẩm treo tường 2', 'KL-TT-2', '', 400000, '', 1, '', '2wTnSKHBokrah6U6JzqCzXCTKE33vYgVj4Ys8Gdg', NULL, NULL),
(47, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'JYnIy2L7X6SglU2Z0ubDkPgkiKlhBCwnHNY2NMqv', NULL, NULL),
(48, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'JYnIy2L7X6SglU2Z0ubDkPgkiKlhBCwnHNY2NMqv', NULL, NULL),
(49, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'scpKVlim1lpbXMtjJLFRD2sY0iG03bghbwWTq7xn', NULL, NULL),
(50, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', '6zhG848xyNxKK92fguIT30rU4YGaMF2mCjvhrjxk', NULL, NULL),
(51, 15, 'Sản phẩm bếp 3', 'KL-B-3', '', 89000, '', 1, '', 'pOnRsFppERW4Uze7eqVXc2BNgGq5tnV0L47bFjYK', NULL, NULL),
(52, 12, 'Sản phẩm ánh sáng 3', 'KL-AS-3', '', 810000, '', 1, '', 'pOnRsFppERW4Uze7eqVXc2BNgGq5tnV0L47bFjYK', NULL, NULL),
(53, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'vx0K2DoiWKeRPOfgxEOSDNkz45sV4hJuZlDT2zPj', NULL, NULL),
(54, 10, 'Sản phẩm ngoài trời 2', 'KL-NT-2', '', 30000000, '', 1, '', 'vx0K2DoiWKeRPOfgxEOSDNkz45sV4hJuZlDT2zPj', NULL, NULL),
(55, 13, 'Sản phẩm treo tường 2', 'KL-TT-2', '', 400000, '', 1, '', 'SToZhiv32f1YWkCAV2vAqeSPgvZBWH2tySDRJo2n', NULL, NULL),
(56, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'qWuBtylP0rE6kbn3f6xTz6VS3bAjCwzIiHGEej10', NULL, NULL),
(57, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'u0gkps4Na39Iosjj4s9Br7WafZTJWTWieOY2o0PM', NULL, NULL),
(58, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'rihn91z57nyrvduRokG8apHTdKIcRDFFaoQgbkQg', NULL, NULL),
(59, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'rihn91z57nyrvduRokG8apHTdKIcRDFFaoQgbkQg', NULL, NULL),
(60, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, '', 'ODbedWOSg17WPi89UQctkVEjM8v3kAxmMv7dKvm3', NULL, NULL),
(61, 14, 'Sản phẩm trong nhà 3', 'KL-TN-3', '', 45000, '', 1, '', 'ODbedWOSg17WPi89UQctkVEjM8v3kAxmMv7dKvm3', NULL, NULL),
(62, 18, 'San pham vang phong 5', 'KL-AS-4', '', 400000, '', 1, '', '1dU0PgZWDVEaDlRjiCdWZ59dP4qM9O1u69HO4iOA', NULL, NULL),
(63, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, '', '1dU0PgZWDVEaDlRjiCdWZ59dP4qM9O1u69HO4iOA', NULL, NULL),
(64, 13, 'Sản phẩm treo tường 2', 'KL-TT-2', '', 400000, '', 3, '', '1dU0PgZWDVEaDlRjiCdWZ59dP4qM9O1u69HO4iOA', NULL, NULL),
(68, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, 'chau@gmail.com', 'sWV3m95hS78UXtdlK4AkHJEf0vtHu8HdTeFT0UUN', NULL, NULL),
(69, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, 'chau@gmail.com', 'sWV3m95hS78UXtdlK4AkHJEf0vtHu8HdTeFT0UUN', NULL, NULL),
(70, 17, 'Sản phẩm treo tường 3', 'KL-TT-3', '', 300000, '', 1, 'chau@gmail.com', 'cnFLt87b2kPBNKv0eYHKtkefW1orWeqjZY0ctefP', NULL, NULL),
(71, 16, 'Sản phẩm ngoài trời 3', 'KL-NT-3', '', 200000, '', 1, 'chau@gmail.com', 'cnFLt87b2kPBNKv0eYHKtkefW1orWeqjZY0ctefP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `parent_id`, `featured`, `created_at`, `updated_at`, `is_active`, `image`) VALUES
(1, 'Nội thất trong nhà', 'Các sản phảm nội thất trong nhà đẹp,hiện đại', NULL, 1, '2021-06-12 09:02:27', '2021-06-12 09:02:27', 1, 'Nội_thất_trong_nhà.jpg'),
(2, 'Nội thất văn phòng', 'Các sản phẩm nội thất văn phòng hiện đại,tiện nghi', NULL, 1, '2021-06-12 09:03:50', '2021-06-13 04:07:49', 1, 'Nội_thất_văn_phòng.jpg'),
(3, 'Nội thất ngoài trời', 'Các sản phẩm nội thất ngoài trời', NULL, 0, '2021-06-12 09:05:02', '2021-06-13 03:23:55', 1, 'Nội_thất_ngoài_trời.jpg'),
(4, 'Nội thất ánh sáng', 'Hiện đại,tiện nghi,đẹp', NULL, 1, '2021-06-12 09:06:26', '2021-06-18 11:12:22', 1, 'Nội_thất_ánh_sáng.jpg'),
(5, 'Nội thất treo tường', 'Mẫu mã đa dạng', NULL, 0, '2021-06-12 09:07:29', '2021-06-13 03:24:16', 1, 'Nội_thất_treo_tường.jpg'),
(6, 'Nội thất bếp', 'Nhiều mẫu mã mới hiện đại', NULL, 0, '2021-06-12 09:09:44', '2021-06-13 03:24:24', 1, 'Nội_thất_bếp.jpg'),
(7, 'Trong nhà 1', NULL, 1, 1, '2021-06-14 22:23:22', '2021-06-14 22:23:22', 1, NULL),
(8, 'Trong nhà 2', NULL, 1, 1, '2021-06-14 22:23:45', '2021-06-14 22:23:45', 1, NULL),
(9, 'Trong nhà 2.1', NULL, 8, 1, '2021-06-14 22:24:05', '2021-06-14 22:24:05', 1, NULL),
(10, 'Ánh sáng 1', NULL, 4, 1, '2021-06-14 22:24:54', '2021-06-14 22:24:54', 1, NULL),
(11, 'Ánh sáng 2', NULL, 4, 1, '2021-06-14 22:25:18', '2021-06-14 22:25:18', 1, NULL),
(12, 'Bếp 1', NULL, 6, 1, '2021-06-14 22:25:52', '2021-06-14 22:25:52', 1, NULL),
(13, 'Bếp 1.1', NULL, 12, 1, '2021-06-14 22:26:21', '2021-06-14 22:26:21', 1, NULL),
(14, 'Bếp 1.2', NULL, 12, 1, '2021-06-14 22:26:42', '2021-06-14 22:26:42', 1, NULL),
(15, 'Trong nhà 2.1.1', NULL, 9, 1, '2021-06-15 22:38:52', '2021-06-15 22:38:52', 1, NULL),
(16, 'trong nha 1.1', NULL, 7, 1, '2021-06-26 03:17:17', '2021-06-26 03:17:17', 1, NULL),
(17, 'trong nha 1.2', NULL, 7, 1, '2021-06-26 03:17:39', '2021-06-26 03:17:39', 1, NULL),
(18, 'trong nha 2.2', NULL, 8, 1, '2021-06-26 03:18:07', '2021-06-26 03:18:07', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_features`
--

CREATE TABLE `category_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` tinyint(4) NOT NULL COMMENT '1 => text, 2 => color',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_features`
--

INSERT INTO `category_features` (`id`, `field_title`, `field_type`, `category_id`, `created_at`, `updated_at`) VALUES
(17, 'Red', 2, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(18, 'Blue', 2, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(19, 'Black', 2, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(20, '60x80', 1, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(21, '90x100', 1, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(22, 'Size L', 1, 5, '2021-07-10 10:53:26', '2021-07-10 10:53:26'),
(23, 'Size M', 1, 5, '2021-07-10 10:53:26', '2021-07-10 10:53:26'),
(24, 'Size 4x5m', 1, 5, '2021-07-10 10:53:26', '2021-07-10 10:53:26'),
(25, 'Blue', 2, 1, '2021-09-02 23:24:48', '2021-09-02 23:24:48'),
(26, 'Red', 2, 1, '2021-09-02 23:24:48', '2021-09-02 23:24:48'),
(27, '5x10m', 1, 1, '2021-09-02 23:24:48', '2021-09-02 23:24:48'),
(28, '10x20m', 1, 1, '2021-09-02 23:24:48', '2021-09-02 23:24:48'),
(29, '8x9m', 1, 2, '2021-09-02 23:25:30', '2021-09-02 23:25:30'),
(30, '9x10', 1, 2, '2021-09-02 23:25:30', '2021-09-02 23:25:30'),
(31, 'Red', 2, 2, '2021-09-02 23:25:30', '2021-09-02 23:25:30'),
(32, 'Yellow', 2, 2, '2021-09-02 23:25:30', '2021-09-02 23:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `cat_news`
--

CREATE TABLE `cat_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cat_news`
--

INSERT INTO `cat_news` (`id`, `title`, `description`, `parent_id`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục tin tức 1', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:37:19', '2021-06-14 09:37:19'),
(2, 'Danh mục tin tức 2', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:37:42', '2021-06-14 09:37:42'),
(3, 'Danh mục tin tức 3', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:38:16', '2021-06-14 09:38:16'),
(4, 'Danh mục tin tức 4', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:38:30', '2021-06-14 09:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TP HCM', NULL, NULL),
(2, 'Hà Nội', NULL, NULL),
(3, 'Hải Phòng', NULL, NULL),
(4, 'Đà Nẵng', NULL, NULL),
(5, 'An Giang', NULL, NULL),
(6, 'Bà Rịa - Vũng Tàu', NULL, NULL),
(7, 'Bắc Giang', NULL, NULL),
(8, 'Bắc Kạn', NULL, NULL),
(9, 'Bạc Liêu', NULL, NULL),
(10, 'Bắc Ninh', NULL, NULL),
(11, 'Bến Tre', NULL, NULL),
(12, 'Bình Định', NULL, NULL),
(13, 'Bình Dương', NULL, NULL),
(14, 'Bình Phước', NULL, NULL),
(15, 'Bình Thuận', NULL, NULL),
(16, 'Cà Mau', NULL, NULL),
(17, 'Cao Bằng', NULL, NULL),
(18, 'Cần Thơ', NULL, NULL),
(19, 'Đắk Lắk', NULL, NULL),
(20, 'Đắk Nông', NULL, NULL),
(21, 'Điện Biên', NULL, NULL),
(22, 'Đồng Nai', NULL, NULL),
(23, 'Đồng Tháp', NULL, NULL),
(24, 'Gia Lai', NULL, NULL),
(25, 'Hà Giang', NULL, NULL),
(26, 'Hà Nam', NULL, NULL),
(27, 'Hà Tĩnh', NULL, NULL),
(28, 'Hải Dương', NULL, NULL),
(29, 'Hậu Giang', NULL, NULL),
(30, 'Hòa Bình', NULL, NULL),
(31, 'Hưng Yên', NULL, NULL),
(32, 'Khánh Hòa', NULL, NULL),
(33, 'Kiên Giang', NULL, NULL),
(34, 'Kon Tum', NULL, NULL),
(35, 'Lai Châu', NULL, NULL),
(36, 'Lâm Đồng', NULL, NULL),
(37, 'Lạng Sơn', NULL, NULL),
(38, 'Lào Cai', NULL, NULL),
(39, 'Long An', NULL, NULL),
(40, 'Nam Định', NULL, NULL),
(41, 'Nghệ An', NULL, NULL),
(42, 'Ninh Bình', NULL, NULL),
(43, 'Ninh Thuận', NULL, NULL),
(44, 'Phú Thọ', NULL, NULL),
(45, 'Quảng Bình', NULL, NULL),
(46, 'Quảng Nam', NULL, NULL),
(47, 'Quảng Ngãi', NULL, NULL),
(48, 'Quảng Ninh', NULL, NULL),
(49, 'Quảng Trị', NULL, NULL),
(50, 'Sóc Trăng', NULL, NULL),
(51, 'Sơn La', NULL, NULL),
(52, 'Tây Ninh', NULL, NULL),
(53, 'Thái Bình', NULL, NULL),
(54, 'Thái Nguyên', NULL, NULL),
(55, 'Thanh Hóa', NULL, NULL),
(56, 'Thừa Thiên Huế', NULL, NULL),
(57, 'Tiền Giang', NULL, NULL),
(58, 'Trà Vinh', NULL, NULL),
(59, 'Tuyên Quang', NULL, NULL),
(60, 'Vĩnh Long', NULL, NULL),
(61, 'Vĩnh Phúc', NULL, NULL),
(62, 'Yên Bái', NULL, NULL),
(63, 'Phú Yên', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `mobile`, `email`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 'cuong', '1234567890', 'cuong@gmail.com', 'test', '2021-06-27 02:47:33', '2021-06-27 02:59:48', 1),
(2, 'do khac lam', '898090', 'lam@gmail.com', 'test queue job', '2021-07-25 11:13:21', '2021-07-25 11:13:21', 0),
(3, 'chau', 'i8980', 'chau@gmail.com', 'queue job', '2021-07-25 11:27:05', '2021-07-25 11:27:05', 0),
(4, 'chau', '90-9-', 'chau@gmail.com', 'test job', '2021-07-25 11:31:39', '2021-07-25 11:31:39', 0),
(5, 'chau', '0-890', 'chau@gmail.com', 'test job', '2021-07-25 11:34:03', '2021-07-25 11:34:03', 0),
(6, 'le minh chau', '0980', 'chau@gmail.com', 'tes job', '2021-07-25 11:40:44', '2021-07-25 11:40:44', 0),
(7, 'chau', '543', 'chau@gmail.com', 'tes job', '2021-07-25 11:51:56', '2021-07-25 11:51:56', 0),
(8, 'do khac lam', '545', 'chau@gmail.com', 'test job', '2021-07-25 12:01:42', '2021-07-25 12:01:42', 0),
(9, 'cuong', '8790', 'cuong@gmail.com', 'jkljkll', '2021-07-25 12:11:12', '2021-07-25 12:11:12', 0),
(10, 'dafda', '454', 'fdafda@gmail.com', 'fdafda', '2021-07-25 12:19:53', '2021-07-25 12:19:53', 0),
(11, 'fdaf', '5432', 'fad@gmail.com', 'fdasfads', '2021-07-25 23:01:52', '2021-07-25 23:01:52', 0),
(12, 'fdafda', '5432', 'dokhaclam@gmail.com', 'fdafad', '2021-07-25 23:06:16', '2021-07-25 23:06:16', 0),
(13, 'fdas', '80980', 'chau@gmail.com', 'dafdfd', '2021-07-25 23:08:19', '2021-07-25 23:08:19', 0),
(14, 'fa', '543', 'chau@gmail.com', 'fadfda', '2021-07-25 23:35:39', '2021-07-25 23:35:39', 0),
(15, 'chau', '653563', 'chau@gmail.com', 'gdsafd', '2021-07-25 23:47:20', '2021-07-25 23:47:20', 0),
(16, 'chau', '343', 'chau@gmail.com', 'est', '2021-07-26 04:11:39', '2021-07-26 04:11:39', 0),
(17, 'do khac lam', 'ddddddddd', 'chau@gmail.com', 'ddddddddddd', '2021-07-26 04:19:17', '2021-07-26 04:19:17', 0),
(18, 'chau le minh', '3333333333', 'admin@admin.com', '3333333333', '2021-07-26 04:25:36', '2021-07-26 04:25:36', 0),
(19, 'chau le minh', '3333333333', 'admin@admin.com', '3333333333', '2021-07-26 04:26:06', '2021-07-26 04:26:06', 0),
(20, 'do khac lam', '454', 'chau@gmail.com', 'ttrtrwtrew', '2021-07-26 04:29:49', '2021-07-26 04:29:49', 0),
(21, 'le minh chau', '56565', 'chau@gmail.com', '65654654', '2021-07-26 04:31:53', '2021-07-26 04:31:53', 0),
(22, 'chau', '4543', 'chau@gmail.com', 'fdafdafda', '2021-07-26 04:38:04', '2021-07-26 04:38:04', 0),
(23, 'cuong', '45454', 'cuong@gmail.com', '545454', '2021-07-26 04:44:33', '2021-07-26 04:44:33', 0),
(24, 'chau le minh', '5656565', 'admin@admin.com', '6565656', '2021-07-26 04:46:35', '2021-07-26 04:46:35', 0),
(25, 'cuong', '4444444444444', 'cuong@gmail.com', '55555555555555', '2021-07-26 05:00:29', '2021-07-26 05:00:29', 0),
(26, 'cuong', '4444444444444', 'cuong@gmail.com', '55555555555555', '2021-07-26 05:01:19', '2021-07-26 05:01:19', 0),
(27, 'cuong', '4444444444444', 'cuong@gmail.com', '55555555555555', '2021-07-26 05:01:56', '2021-07-26 05:01:56', 0),
(28, 'do khac lam', '77777777', 'chau@gmail.com', '6666666666', '2021-07-26 05:05:04', '2021-07-26 05:05:04', 0),
(29, 'do khac lam', '565', 'chau@gmail.com', '6546456', '2021-07-26 05:06:40', '2021-07-26 05:06:40', 0),
(30, 'chau', '454', 'chau@gmail.com', '888888888', '2021-07-26 05:08:12', '2021-07-26 05:08:12', 0),
(31, 'le minh chau', '444', 'chau@gmail.com', '4444', '2021-07-26 05:34:03', '2021-07-26 05:34:03', 0),
(32, 'le minh chau', '444', 'chau@gmail.com', '4444', '2021-07-26 05:34:40', '2021-07-26 05:34:40', 0),
(33, 'le minh chau', '444', 'chau@gmail.com', '4444', '2021-07-26 05:35:38', '2021-07-26 05:35:38', 0),
(34, 'le minh chau', '88888', 'chau@gmail.com', '777777', '2021-07-26 05:44:26', '2021-07-26 05:44:26', 0),
(35, 'chau', '4543', 'chau@gmail.com', '45454', '2021-07-26 09:50:20', '2021-07-26 09:50:20', 0),
(36, 'chau', '33333333333', 'chau@gmail.com', '222222222222222', '2021-07-26 09:53:29', '2021-07-26 09:53:29', 0),
(37, 'cuong', '11111111111', 'cuong@gmail.com', '22222222222', '2021-07-26 09:57:42', '2021-07-26 09:57:42', 0),
(38, 'do khanh thy', '234', 'test@gmail.com', '456', '2021-07-26 10:05:47', '2021-07-26 10:05:47', 0),
(39, 'do khac lam', '5454', 'chau@gmail.com', '54354', '2021-07-27 23:46:28', '2021-07-27 23:46:28', 0),
(40, 'do khac lam', '545', 'chau@gmail.com', '56536', '2021-07-27 23:49:04', '2021-07-27 23:49:04', 0),
(41, 'do khac lam', '545', 'chau@gmail.com', '56536', '2021-07-27 23:50:10', '2021-07-27 23:50:10', 0),
(42, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:04:51', '2021-07-28 00:04:51', 0),
(43, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:05:15', '2021-07-28 00:05:15', 0),
(44, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:06:03', '2021-07-28 00:06:03', 0),
(45, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:09:24', '2021-07-28 00:09:24', 0),
(46, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:10:25', '2021-07-28 00:10:25', 0),
(47, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:11:42', '2021-07-28 00:11:42', 0),
(48, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:13:02', '2021-07-28 00:13:02', 0),
(49, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:14:22', '2021-07-28 00:14:22', 0),
(50, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:14:53', '2021-07-28 00:14:53', 0),
(51, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:16:36', '2021-07-28 00:16:36', 0),
(52, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:17:30', '2021-07-28 00:17:30', 0),
(53, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:18:27', '2021-07-28 00:18:27', 0),
(54, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:19:00', '2021-07-28 00:19:00', 0),
(55, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:19:39', '2021-07-28 00:19:39', 0),
(56, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:20:22', '2021-07-28 00:20:22', 0),
(57, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:20:55', '2021-07-28 00:20:55', 0),
(58, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:22:05', '2021-07-28 00:22:05', 0),
(59, 'do khac lam', '5425', 'cuong@gmail.com', '54254', '2021-07-28 00:22:53', '2021-07-28 00:22:53', 0),
(60, 'chau le minh', '875', 'chau@gmail.com', '8787587', '2021-07-28 00:25:32', '2021-07-28 00:25:32', 0),
(61, 'do khanh thy', '542', 'test@gmail.com', '542542', '2021-07-28 00:34:11', '2021-07-28 00:34:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'KL-10', 10, 'Phần trăm', '2021-07-21', 1, '2021-06-19 21:11:11', '2021-07-12 10:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `mobile`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 3, 'chaucuong@gmail.com', 'do chi cuong', '1111', 'TP HCM', '11', '99999', NULL, '2021-06-20 05:39:32', '2021-06-24 10:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '6fdb06a2-75da-457a-8f4f-965ed0f8fb62', 'database', 'default', '{\"uuid\":\"6fdb06a2-75da-457a-8f4f-965ed0f8fb62\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: request in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:41\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(41): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 41, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-25 11:18:24'),
(2, '839a72b6-9474-4ef1-879b-4494f0653a05', 'database', 'default', '{\"uuid\":\"839a72b6-9474-4ef1-879b-4494f0653a05\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"eKAwBc6nLeYnAApLobToaUk0CSkpX6WJywfPJ1az\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:5:\\\"0-890\\\";s:7:\\\"message\\\";s:8:\\\"test job\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:42\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-25 11:37:07'),
(3, '990d95c0-7d41-4758-a24d-320d18f5574c', 'database', 'default', '{\"uuid\":\"990d95c0-7d41-4758-a24d-320d18f5574c\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"eKAwBc6nLeYnAApLobToaUk0CSkpX6WJywfPJ1az\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"543\\\";s:7:\\\"message\\\";s:7:\\\"tes job\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:43\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-25 11:55:00'),
(4, '5afdbd53-8882-48cd-858d-42999c1a2f41', 'database', 'default', '{\"uuid\":\"5afdbd53-8882-48cd-858d-42999c1a2f41\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"eKAwBc6nLeYnAApLobToaUk0CSkpX6WJywfPJ1az\\\";s:4:\\\"name\\\";s:11:\\\"do khac lam\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"545\\\";s:7:\\\"message\\\";s:8:\\\"test job\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:43\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-25 12:04:43'),
(5, '2e870e5b-be6c-4019-b8f8-2027c683b53e', 'database', 'default', '{\"uuid\":\"2e870e5b-be6c-4019-b8f8-2027c683b53e\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [dokhaclam] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'dokhaclam\')\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(\'dokhaclam\', NULL)\n#6 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(48): Illuminate\\Mail\\Message->from(\'dokhaclam\')\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): App\\Jobs\\SendWelcomeEmail->App\\Jobs\\{closure}(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#10 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-07-25 12:14:16'),
(6, '751748a2-5d7f-4e98-91e3-8ef160be0fd6', 'database', 'default', '{\"uuid\":\"751748a2-5d7f-4e98-91e3-8ef160be0fd6\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2021-07-26 06:52:20.639243\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendWelcomeEmail has been attempted too many times or run too long. The job may have previously timed out. in C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:717\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(486): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(400): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2021-07-26 04:17:50');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, 'f6e47085-9a0d-4c11-9e34-2ff1ebc209b6', 'database', 'default', '{\"uuid\":\"f6e47085-9a0d-4c11-9e34-2ff1ebc209b6\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [dokhaclam] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'dokhaclam\')\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(\'dokhaclam\', NULL)\n#6 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Mail\\Message->from(\'dokhaclam\')\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): App\\Jobs\\SendWelcomeEmail->App\\Jobs\\{closure}(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#10 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(52): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-07-26 04:19:21'),
(8, '3ba4f233-95a4-4119-b420-65d9fcff0e51', 'database', 'default', '{\"uuid\":\"3ba4f233-95a4-4119-b420-65d9fcff0e51\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [dokhaclam] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'dokhaclam\')\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(\'dokhaclam\', NULL)\n#6 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Mail\\Message->from(\'dokhaclam\')\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): App\\Jobs\\SendWelcomeEmail->App\\Jobs\\{closure}(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#10 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(52): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-07-26 04:29:51'),
(9, 'a09a5e2e-471f-400b-90ec-550c39589680', 'database', 'default', '{\"uuid\":\"a09a5e2e-471f-400b-90ec-550c39589680\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:5:\\\"cuong\\\";s:5:\\\"email\\\";s:15:\\\"cuong@gmail.com\\\";s:6:\\\"mobile\\\";s:5:\\\"45454\\\";s:7:\\\"message\\\";s:6:\\\"545454\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: request in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(45): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 45, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 04:44:34'),
(10, '9e9437d0-1ccd-44a8-b147-778e7f0f7ae9', 'database', 'default', '{\"uuid\":\"9e9437d0-1ccd-44a8-b147-778e7f0f7ae9\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:12:\\\"chau le minh\\\";s:5:\\\"email\\\";s:15:\\\"admin@admin.com\\\";s:6:\\\"mobile\\\";s:7:\\\"5656565\\\";s:7:\\\"message\\\";s:7:\\\"6565656\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-26 04:46:37'),
(11, '6756ab64-1f83-4c0e-b222-8ce64cb6936b', 'database', 'default', '{\"uuid\":\"6756ab64-1f83-4c0e-b222-8ce64cb6936b\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:11:\\\"do khac lam\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:8:\\\"77777777\\\";s:7:\\\"message\\\";s:10:\\\"6666666666\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-26 05:05:06');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(12, 'c15b7aff-5734-4cce-a6e4-7c1595c3c78f', 'database', 'default', '{\"uuid\":\"c15b7aff-5734-4cce-a6e4-7c1595c3c78f\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:11:\\\"do khac lam\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"565\\\";s:7:\\\"message\\\";s:7:\\\"6546456\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: email in C:\\xampp\\htdocs\\shop3\\storage\\framework\\views\\7bc192a4425607ce859272aef3ecd4a97337cfed.php:8\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\storage\\framework\\views\\7bc192a4425607ce859272aef3ecd4a97337cfed.php(8): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 8, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail\', NULL, NULL, Array)\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#14 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: email (View: C:\\xampp\\htdocs\\shop3\\resources\\views\\mail.blade.php) in C:\\xampp\\htdocs\\shop3\\resources\\views/mail.blade.php:8\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\resources\\views/mail.blade.php(8): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 8, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail\', NULL, NULL, Array)\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#14 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}', '2021-07-26 05:06:43'),
(13, 'e8e643ed-1df8-4604-be4c-cefc74ee933e', 'database', 'default', '{\"uuid\":\"e8e643ed-1df8-4604-be4c-cefc74ee933e\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"454\\\";s:7:\\\"message\\\";s:9:\\\"888888888\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Trying to get property \'name\' of non-object in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(45): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Trying to get p...\', \'C:\\\\xampp\\\\htdocs...\', 45, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 05:08:13'),
(14, '18e527b3-3513-4085-9c31-6fe19adc86a0', 'database', 'default', '{\"uuid\":\"18e527b3-3513-4085-9c31-6fe19adc86a0\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:4:{s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:4:\\\"name\\\";s:12:\\\"le minh chau\\\";s:6:\\\"mobile\\\";s:5:\\\"88888\\\";s:10:\\\"user_query\\\";s:6:\\\"777777\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined index: message in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:48\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(48): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 48, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 05:44:29'),
(15, '9e5cc5ec-85b8-42fc-89ad-5c3e0ba4e7dd', 'database', 'default', '{\"uuid\":\"9e5cc5ec-85b8-42fc-89ad-5c3e0ba4e7dd\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:4:{s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:6:\\\"mobile\\\";s:4:\\\"4543\\\";s:10:\\\"user_query\\\";s:5:\\\"45454\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined index: message in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:48\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(48): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 48, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 09:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"37c1b863-1777-4680-a8b6-d84e965a3005\",\"displayName\":\"App\\\\Notifications\\\\OffersNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\OffersNotification\\\":12:{s:47:\\\"\\u0000App\\\\Notifications\\\\OffersNotification\\u0000offerData\\\";a:6:{s:4:\\\"name\\\";s:16:\\\"le thi minh chau\\\";s:4:\\\"body\\\";s:71:\\\"Ban vua moi dat hang tren shop cua chung toi.Ma don hang KL-IDkL0XaNWYU\\\";s:6:\\\"thanks\\\";s:6:\\\"cam on\\\";s:9:\\\"offerText\\\";s:25:\\\"Kiem tra don hang cua ban\\\";s:8:\\\"offerUrl\\\";s:40:\\\"http:\\/\\/localhost\\/shop3\\/public\\/my-account\\\";s:4:\\\"data\\\";s:14:\\\"KL-IDkL0XaNWYU\\\";}s:2:\\\"id\\\";s:36:\\\"c03e8654-3136-450e-a360-04b57902244f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1630664676, 1630664676),
(2, 'default', '{\"uuid\":\"c731bfd1-cb0b-4c1f-ae64-54c804f27c2d\",\"displayName\":\"App\\\\Notifications\\\\OffersNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\OffersNotification\\\":12:{s:47:\\\"\\u0000App\\\\Notifications\\\\OffersNotification\\u0000offerData\\\";a:6:{s:4:\\\"name\\\";s:16:\\\"le thi minh chau\\\";s:4:\\\"body\\\";s:71:\\\"Ban vua moi dat hang tren shop cua chung toi.Ma don hang KL-IDkL0XaNWYU\\\";s:6:\\\"thanks\\\";s:6:\\\"cam on\\\";s:9:\\\"offerText\\\";s:25:\\\"Kiem tra don hang cua ban\\\";s:8:\\\"offerUrl\\\";s:40:\\\"http:\\/\\/localhost\\/shop3\\/public\\/my-account\\\";s:4:\\\"data\\\";s:14:\\\"KL-IDkL0XaNWYU\\\";}s:2:\\\"id\\\";s:36:\\\"c03e8654-3136-450e-a360-04b57902244f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1630664677, 1630664677);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'le thi minh chau', 'chau@gmail.com', '2021-07-27 22:29:12', '2021-07-27 22:29:12'),
(2, 'le thi minh chau', 'chau@gmail.com', '2021-07-27 22:30:03', '2021-07-27 22:30:03'),
(3, 'cuong', 'cuong@gmail.com', '2021-07-27 23:18:12', '2021-07-27 23:18:12');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_15_074346_create_categories_table', 1),
(5, '2021_04_15_074445_create_category_features_table', 1),
(6, '2021_04_15_074458_create_brands_table', 1),
(7, '2021_04_15_074509_create_products_table', 1),
(8, '2021_04_15_074520_create_product_gallery_table', 1),
(9, '2021_04_15_074532_create_product_features_table', 1),
(10, '2021_04_15_074547_create_shopping_cart_table', 1),
(11, '2021_04_15_074600_create_shipping_addresses_table', 1),
(12, '2021_04_15_074611_create_payment_methods_table', 1),
(13, '2021_04_15_074625_create_orders_table', 1),
(14, '2021_04_15_075024_create_order_details_table', 1),
(15, '2021_04_15_075358_add_is_super_admin_to_users_table', 1),
(16, '2021_04_15_081910_create_sliders_table', 1),
(17, '2021_04_15_082817_create_tags_table', 1),
(18, '2021_04_15_083020_create_product_tag_table', 1),
(19, '2021_04_15_154917_create_reviews_table', 1),
(20, '2021_04_15_180349_create_permission_tables', 1),
(21, '2021_04_15_181942_create_settings_table', 1),
(22, '2021_04_17_083013_add_column_to_users_table', 1),
(23, '2021_04_17_092235_add_column_image_to_users_table', 1),
(24, '2021_04_20_174144_add_column_is_active_to_categories_tables', 1),
(25, '2021_04_22_064327_add_column_is_active_to_brands_table', 1),
(26, '2021_04_22_174304_add_column_is_active_to_sliders_table', 1),
(27, '2021_04_22_174443_add_column_names_to_sliders_table', 1),
(28, '2021_04_23_160522_add_colunm_image_to_categories_table', 1),
(29, '2021_04_23_160615_add_colunm_is_active_to_settings_table', 1),
(30, '2021_04_23_170446_add_colunm_type_to_settings_table', 1),
(31, '2021_04_24_074228_add_column_is_active_to_products_table', 1),
(32, '2021_04_24_095459_add_column_image_to_products_table', 1),
(33, '2021_04_27_171122_create_coupon_table', 1),
(34, '2021_05_01_100133_add_column_namefour_to_sliders_table', 1),
(35, '2021_05_06_082553_add_column_new_to_products_table', 1),
(36, '2021_05_06_162729_add_column_additional_to_products_table', 1),
(37, '2021_05_07_075039_create_cart_table', 1),
(38, '2021_05_13_173237_add_column_info_address_to_users_table', 1),
(39, '2021_05_13_173711_add_column_mobile_to_users_table', 1),
(40, '2021_05_13_193054_create_city_table', 1),
(41, '2021_05_14_160953_create_delivery_address_table', 1),
(42, '2021_05_17_050030_add_column_extra_to_orders_table', 1),
(43, '2021_05_17_051803_create_orders_products_table', 1),
(44, '2021_05_17_100040_add_column_color_to_orders_products_table', 1),
(45, '2021_05_18_102058_add_column_ma_order_to_orders_table', 1),
(46, '2021_05_19_111035_add_column_rating_to_products_table', 1),
(47, '2021_05_19_124642_add_column_status_to_reviews_table', 1),
(48, '2021_05_25_103953_create_cat_news_controllers_table', 1),
(49, '2021_05_25_171301_create_news_table', 1),
(50, '2021_05_26_093117_create_taggable_table', 1),
(51, '2021_05_28_051539_create_contacts_table', 1),
(52, '2021_05_30_173850_add_column_noi_bat_to_products_table', 1),
(53, '2021_05_30_174008_add_column_product_id_to_orders_table', 1),
(54, '2021_06_03_123342_add_column_status_to_contacts_table', 1),
(55, '2021_06_03_174731_create_newsletters_table', 1),
(56, '2021_06_03_184827_add_column_status_to_newsletters_table', 1),
(57, '2021_06_12_092146_add_column_price_bigint_to_products_table', 2),
(58, '2021_06_14_172642_create_banners_table', 3),
(59, '2021_06_21_074625_create_orders_table', 4),
(60, '2021_06_21_102058_add_column_ma_order_to_orders_table', 5),
(61, '2021_06_25_174738_add_column_note_to_orders_table', 6),
(62, '2021_07_25_172454_create_jobs_table', 7),
(63, '2021_07_27_041442_create_notifications_table', 8),
(64, '2021_07_28_044206_create_login_history_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cat_news_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `cat_news_id`, `title`, `description`, `content`, `image_path`, `image_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tin tức 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat.', '<div class=\"blog-post-content-inner\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat.</p>\r\n</div>\r\n<div class=\"single-post-content\">\r\n<p class=\"quate-speech\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p><img src=\"/shop3/public/storage/photos/1/news/blog-13.jpg\" alt=\"\" width=\"450\" height=\"277\" /></p>\r\n<p>&nbsp;</p>\r\n</div>', NULL, 'Tin_tức_1.jpg', 1, '2021-06-14 09:46:25', '2021-06-14 09:47:44'),
(2, 1, 2, 'Tin tức 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>', NULL, 'Tin_tức_2.jpg', 1, '2021-06-14 09:48:45', '2021-06-26 21:36:16'),
(3, 1, 3, 'Tin tức 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.', '<p><br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. &nbsp; &nbsp;&nbsp;</p>', NULL, 'Tin_tức_3.jpg', 1, '2021-06-14 09:49:57', '2021-06-26 21:36:33'),
(4, 1, 4, 'Tin tức 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.', '<p><br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. &nbsp; &nbsp;&nbsp;</p>', NULL, 'Tin_tức_4.jpg', 1, '2021-06-14 09:50:30', '2021-06-26 21:36:46'),
(5, 1, 1, 'Giới thiệu', 'Đang cập nhật mô tả', '<p>nội dung đang cập nhật</p>\r\n<p><img src=\"/shop3/public/storage/photos/1/news/blog-13.jpg\" alt=\"\" width=\"450\" height=\"277\" /></p>', NULL, 'Giới_thiệu.jpg', 1, '2021-06-26 21:07:26', '2021-06-26 21:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`, `status`) VALUES
(1, 'lam0@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(2, 'lam1@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(3, 'lam2@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(4, 'lam3@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(5, 'lam4@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(6, 'lam5@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(7, 'lam6@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(8, 'lam7@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(9, 'lam8@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(10, 'lam9@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(11, 'lam10@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(12, 'lam11@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(13, 'lam12@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(14, 'lam13@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(15, 'lam14@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(16, 'lam15@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(17, 'lam16@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(18, 'lam17@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(19, 'lam18@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(20, 'lam19@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(21, 'lam20@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(22, 'lam21@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(23, 'lam22@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(24, 'lam23@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(25, 'lam24@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(26, 'lam25@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(27, 'lam26@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(28, 'lam27@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(29, 'lam28@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(30, 'lam29@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(31, 'lam30@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(32, 'lam31@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(33, 'lam32@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(34, 'lam33@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(35, 'lam34@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(36, 'lam35@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(37, 'lam36@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(38, 'lam37@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(39, 'lam38@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(40, 'lam39@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(41, 'lam40@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(42, 'lam41@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(43, 'lam42@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(44, 'lam43@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(45, 'lam44@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(46, 'lam45@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(47, 'lam46@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(48, 'lam47@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(49, 'lam48@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(50, 'lam49@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('1f7cd6a5-2b31-46c5-bd46-4afe774dbc8d', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 3, '{\"data\":\"KL-1QKCfCA2rKB\"}', '2021-07-26 23:23:39', '2021-07-26 23:07:18', '2021-07-26 23:23:39'),
('2c4a93ae-57be-43ee-846a-99ea8bea4983', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 2, '{\"data\":\"KL-8bIsg8RYWWq\"}', '2021-07-27 03:34:28', '2021-07-27 03:11:02', '2021-07-27 03:34:28'),
('53c99deb-2ade-4258-954e-533f3caf510e', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 3, '{\"data\":\"KL-G7kIEYJ7hoa\"}', '2021-07-26 23:23:39', '2021-07-26 23:02:01', '2021-07-26 23:23:39'),
('cc0e104c-c17b-4683-8380-2f75692a487a', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 2, '{\"data\":\"KL-ZrQ7qtOsaqM\"}', NULL, '2021-07-27 03:08:15', '2021-07-27 03:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_price` bigint(20) NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charges` double(8,2) DEFAULT NULL,
  `coupon_code` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ma_order` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `user_email`, `name`, `address`, `city`, `state`, `mobile`, `postal_code`, `shipping_charges`, `coupon_code`, `coupon_amount`, `payment_method`, `created_at`, `updated_at`, `ma_order`, `product_id`, `note`) VALUES
(60, 3, 'Hoàn thành', 1170000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, 'KL-10', 130000.00, 'Sau khi nhận hàng', '2021-06-24 11:40:24', '2021-06-25 11:34:18', 'KL-W3rHHKoZVz0', NULL, 'cap nhat so luong san pham'),
(61, 3, 'Đang xử lý', 879000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-06-24 11:43:20', '2021-06-24 11:43:20', 'KL-m0lo3oubFgl', NULL, NULL),
(62, 3, 'Đang xử lý', 620100, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, 'KL-10', 68900.00, 'Sau khi nhận hàng', '2021-07-12 11:00:30', '2021-07-12 11:00:30', 'KL-oR6uz9pLygV', NULL, NULL),
(63, 3, 'Đang xử lý', 630000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, 'KL-10', 70000.00, 'Sau khi nhận hàng', '2021-07-12 21:20:38', '2021-07-12 21:20:38', 'KL-IHYeqeiywrT', NULL, NULL),
(64, 3, 'Đang xử lý', 245000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-07-26 22:37:52', '2021-07-26 22:37:52', 'KL-d3sRPPo1dBo', NULL, NULL),
(65, 3, 'Đang xử lý', 810000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-07-26 23:01:50', '2021-07-26 23:01:50', 'KL-G7kIEYJ7hoa', NULL, NULL),
(66, 3, 'Đang xử lý', 2000000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-07-26 23:07:07', '2021-07-26 23:07:07', 'KL-1QKCfCA2rKB', NULL, NULL),
(67, 2, 'Đang xử lý', 245000, 'cuong@gmail.com', 'cuong', '345', 'TP HCM', '3', '0909090', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-07-27 03:08:02', '2021-07-27 03:08:02', 'KL-ZrQ7qtOsaqM', NULL, NULL),
(68, 2, 'Đang xử lý', 1000000, 'cuong@gmail.com', 'cuong', '345', 'TP HCM', '3', '0909090', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-07-27 03:10:52', '2021-07-27 03:10:52', 'KL-8bIsg8RYWWq', NULL, NULL),
(69, 3, 'Đang xử lý', 500000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, NULL, '', 0.00, 'Sau khi nhận hàng', '2021-09-03 03:24:32', '2021-09-03 03:24:32', 'KL-IDkL0XaNWYU', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_price`, `product_qty`, `created_at`, `updated_at`, `product_color`) VALUES
(220, 60, 3, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-06-24 11:40:24', '2021-06-24 11:40:24', ''),
(221, 60, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-06-24 11:40:24', '2021-06-24 11:40:24', ''),
(222, 60, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 3, '2021-06-24 11:40:24', '2021-06-24 11:40:24', ''),
(223, 61, 3, 15, 'KL-B-3', 'Sản phẩm bếp 3', '', 89000, 1, '2021-06-24 11:43:20', '2021-06-24 11:43:20', ''),
(224, 61, 3, 13, 'KL-TT-2', 'Sản phẩm treo tường 2', '', 400000, 1, '2021-06-24 11:43:20', '2021-06-24 11:43:20', ''),
(225, 61, 3, 14, 'KL-TN-3', 'Sản phẩm trong nhà 3', '', 45000, 2, '2021-06-24 11:43:20', '2021-06-24 11:43:20', ''),
(226, 61, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-06-24 11:43:20', '2021-06-24 11:43:20', ''),
(227, 63, 3, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-07-12 21:20:39', '2021-07-12 21:20:39', ''),
(228, 63, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-07-12 21:20:39', '2021-07-12 21:20:39', ''),
(229, 63, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-07-12 21:20:39', '2021-07-12 21:20:39', ''),
(230, 63, 3, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-07-12 21:20:39', '2021-07-12 21:20:39', ''),
(231, 63, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-07-12 21:20:39', '2021-07-12 21:20:39', ''),
(232, 64, 3, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-07-26 22:37:52', '2021-07-26 22:37:52', ''),
(233, 64, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-07-26 22:37:52', '2021-07-26 22:37:52', ''),
(234, 64, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-07-26 22:37:52', '2021-07-26 22:37:52', ''),
(235, 64, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-07-26 22:37:52', '2021-07-26 22:37:52', ''),
(236, 64, 3, 14, 'KL-TN-3', 'Sản phẩm trong nhà 3', '', 45000, 1, '2021-07-26 22:37:52', '2021-07-26 22:37:52', ''),
(237, 65, 3, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-07-26 23:01:50', '2021-07-26 23:01:50', ''),
(238, 65, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-07-26 23:01:50', '2021-07-26 23:01:50', ''),
(239, 65, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-07-26 23:01:50', '2021-07-26 23:01:50', ''),
(240, 65, 3, 12, 'KL-AS-3', 'Sản phẩm ánh sáng 3', '', 810000, 1, '2021-07-26 23:01:50', '2021-07-26 23:01:50', ''),
(241, 66, 3, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-07-26 23:07:07', '2021-07-26 23:07:07', ''),
(242, 66, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-07-26 23:07:07', '2021-07-26 23:07:07', ''),
(243, 66, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-07-26 23:07:07', '2021-07-26 23:07:07', ''),
(244, 66, 3, 9, 'KL-VH-2', 'Sản phẩm văn phòng 2', '', 2000000, 1, '2021-07-26 23:07:07', '2021-07-26 23:07:07', ''),
(245, 67, 2, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-07-27 03:08:02', '2021-07-27 03:08:02', ''),
(246, 67, 2, 14, 'KL-TN-3', 'Sản phẩm trong nhà 3', '', 45000, 1, '2021-07-27 03:08:02', '2021-07-27 03:08:02', ''),
(247, 68, 2, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 3, '2021-07-27 03:10:52', '2021-07-27 03:10:52', ''),
(248, 68, 2, 18, 'KL-AS-4', 'Sản phẩm ánh sáng 4', '', 400000, 1, '2021-07-27 03:10:52', '2021-07-27 03:10:52', ''),
(249, 69, 3, 17, 'KL-TT-3', 'Sản phẩm treo tường 3', '', 300000, 1, '2021-09-03 03:24:32', '2021-09-03 03:24:32', ''),
(250, 69, 3, 16, 'KL-NT-3', 'Sản phẩm ngoài trời 3', '', 200000, 1, '2021-09-03 03:24:33', '2021-09-03 03:24:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'paypal', NULL, NULL),
(2, 'Pay on delivery', 'cash', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(2, 'edit_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(3, 'delete_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(4, 'list_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(5, 'create_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(6, 'edit_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(7, 'delete_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(8, 'list_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(9, 'create_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(10, 'edit_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(11, 'delete_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(12, 'list_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(13, 'create_banner', 'web', '2021-09-07 03:43:23', '2021-09-07 03:43:23'),
(14, 'list_banner', 'web', '2021-09-07 03:52:28', '2021-09-07 03:52:28'),
(15, 'edit_banner', 'web', '2021-09-07 03:52:44', '2021-09-07 03:52:44'),
(16, 'delete_banner', 'web', '2021-09-07 03:52:59', '2021-09-07 03:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_start_date` date DEFAULT NULL,
  `discount_end_date` date DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(4) NOT NULL DEFAULT '1',
  `additional` text COLLATE utf8mb4_unicode_ci,
  `noi_bat` tinyint(4) NOT NULL DEFAULT '1',
  `price` bigint(20) NOT NULL,
  `pro_total_rating` int(11) NOT NULL DEFAULT '1' COMMENT 'Tổng số đánh giá',
  `pro_total_number` int(11) NOT NULL DEFAULT '1' COMMENT 'Tổng số đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `amount`, `discount`, `discount_start_date`, `discount_end_date`, `created_by`, `category_id`, `brand_id`, `product_code`, `featured`, `created_at`, `updated_at`, `is_active`, `image`, `new`, `additional`, `noi_bat`, `price`, `pro_total_rating`, `pro_total_number`) VALUES
(1, 'Sản phẩm trong nhà 1', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress<img src=\"/shop3/public/storage/photos/1/product/7.jpg\" alt=\"\" width=\"800\" height=\"800\" /></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 20, 10, '2021-06-18', '2021-06-23', 1, 1, 2, 'KL-TN-1', 1, '2021-06-12 09:31:16', '2021-06-17 22:45:31', 1, 'Sản_phẩm_trong_nhà_1.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco\r\n\r\n    - 0.5 mm Dail\r\n    - Inspired vector icons\r\n    - Very modern style', 1, 2000000, 1, 1),
(2, 'Sản phẩm văn phòng 1', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 59, 10, NULL, NULL, 1, 2, 1, 'KL-VH-1', 1, '2021-06-12 21:34:12', '2021-06-12 21:34:12', 1, 'Sản_phẩm_văn_phòng_1.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 600000, 1, 1),
(3, 'Sản phẩm ngoài trời 1', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 50, 20, NULL, NULL, 1, 3, 3, 'KL-NT-1', 1, '2021-06-12 21:36:48', '2021-06-12 21:36:48', 1, 'Sản_phẩm_ngoài_trời_1.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 30000000, 1, 1),
(4, 'Sản phẩm ánh sáng 1', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 80, 50, NULL, NULL, 1, 4, 1, 'KL-AS-1', 1, '2021-06-12 21:39:18', '2021-06-12 21:39:18', 1, 'Sản_phẩm_ánh_sáng_1.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 20000, 1, 1),
(5, 'Sản phẩm treo tường 1', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 80, 0, NULL, NULL, 1, 5, 2, 'KL-TT-1', 1, '2021-06-12 21:42:46', '2021-06-12 21:42:46', 1, 'Sản_phẩm_treo_tường_1.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 5550000, 1, 1),
(6, 'Sản phẩm bếp 1', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 90, 25, NULL, NULL, 1, 6, 1, 'KL-B-1', 1, '2021-06-12 21:44:56', '2021-06-12 21:44:56', 1, 'Sản_phẩm_bếp_1.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 600000, 1, 1),
(7, 'Sản phẩm ánh sáng 2', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 67, 60, NULL, NULL, 1, 4, 1, 'KL-AS-2', 1, '2021-06-12 22:18:56', '2021-06-12 22:18:56', 1, 'Sản_phẩm_ánh_sáng_2.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 7000000, 1, 1),
(8, 'Sản phẩm trong nhà 2', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 10, 10, NULL, NULL, 1, 1, 4, 'KL-TN-2', 1, '2021-06-12 22:21:56', '2021-06-12 22:21:56', 1, 'Sản_phẩm_trong_nhà_2.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 7890000, 1, 1),
(9, 'Sản phẩm văn phòng 2', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 10, 0, NULL, NULL, 1, 2, 2, 'KL-VH-2', 1, '2021-06-12 22:24:17', '2021-06-12 22:24:17', 1, 'Sản_phẩm_văn_phòng_2.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 2000000, 1, 1),
(10, 'Sản phẩm ngoài trời 2', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 90, 40, NULL, NULL, 1, 3, 5, 'KL-NT-2', 1, '2021-06-12 22:26:35', '2021-06-12 22:26:35', 1, 'Sản_phẩm_ngoài_trời_2.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 50000000, 1, 1),
(11, 'Sản phẩm bếp 2', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n<p><img src=\"/shop3/public/storage/photos/1/product/19.jpg\" alt=\"\" width=\"360\" height=\"360\" /></p>\r\n</div>\r\n</div>', 70, 80, NULL, NULL, 1, 6, 5, 'KL-B-2', 1, '2021-06-12 22:30:17', '2021-06-12 22:33:27', 1, 'Sản_phẩm_bếp_2.jpg', 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 888800, 1, 1),
(12, 'Sản phẩm ánh sáng 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco</p>\r\n<div class=\"pro-details-list\">\r\n<ul>\r\n<li>- 0.5 mm Dail</li>\r\n<li>- Inspired vector icons</li>\r\n<li>- Very modern style</li>\r\n</ul>\r\n</div>', 90, 10, NULL, NULL, 1, 4, 1, 'KL-AS-3', 1, '2021-06-13 02:41:30', '2021-06-23 05:09:20', 1, 'Sản_phẩm_ánh_sáng_3.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 900000, 2, 3),
(13, 'Sản phẩm treo tường 2', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 90, 0, NULL, NULL, 1, 5, 5, 'KL-TT-2', 1, '2021-06-13 02:44:07', '2021-06-13 02:44:07', 1, 'Sản_phẩm_treo_tường_2.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 400000, 1, 1),
(14, 'Sản phẩm trong nhà 3', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 90, 0, NULL, NULL, 1, 1, 2, 'KL-TN-3', 1, '2021-06-13 02:47:01', '2021-06-13 02:47:01', 1, 'Sản_phẩm_trong_nhà_3.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 45000, 1, 1),
(15, 'Sản phẩm bếp 3', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 90, 0, NULL, NULL, 1, 6, 3, 'KL-B-3', 1, '2021-06-13 02:49:21', '2021-06-23 04:35:27', 1, 'Sản_phẩm_bếp_3.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 89000, 2, 5),
(16, 'Sản phẩm ngoài trời 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco</p>\r\n<div class=\"pro-details-list\">\r\n<ul>\r\n<li>- 0.5 mm Dail</li>\r\n<li>- Inspired vector icons</li>\r\n<li>- Very modern style</li>\r\n</ul>\r\n</div>', 87, 90, NULL, NULL, 1, 3, 2, 'KL-NT-3', 1, '2021-06-13 04:11:23', '2021-07-12 23:20:03', 1, 'Sản_phẩm_ngoài_trời_3.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 2000000, 4, 12),
(17, 'Sản phẩm treo tường 3', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 79, 50, NULL, NULL, 1, 5, 5, 'KL-TT-3', 1, '2021-06-13 04:13:33', '2021-06-25 11:34:18', 1, 'Sản_phẩm_treo_tường_3.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 600000, 1, 1),
(18, 'San pham vang phong 5', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 889, 80, '2021-09-03', '2021-10-31', 1, 2, 4, 'KL-AS-4', 1, '2021-06-13 04:15:24', '2021-09-02 23:23:21', 1, 'Sport_machine.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 2000000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `field_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `product_id`, `field_id`, `field_value`, `created_at`, `updated_at`) VALUES
(42, 13, 22, '500000', '2021-07-10 10:54:31', '2021-07-10 10:54:31'),
(43, 13, 23, '490000', '2021-07-10 10:54:31', '2021-07-10 10:54:31'),
(44, 13, 24, '380000', '2021-07-10 10:54:31', '2021-07-10 10:54:31'),
(53, 18, 29, '3000000', '2021-09-02 23:26:16', '2021-09-02 23:26:16'),
(54, 18, 30, '1990000', '2021-09-02 23:26:16', '2021-09-02 23:26:16'),
(55, 18, 31, '#e6200a', '2021-09-02 23:26:16', '2021-09-02 23:26:16'),
(56, 18, 32, '#f4f80d', '2021-09-02 23:26:16', '2021-09-02 23:26:16'),
(57, 17, 22, '700000', '2021-09-02 23:27:11', '2021-09-02 23:27:11'),
(58, 17, 23, '500000', '2021-09-02 23:27:11', '2021-09-02 23:27:11'),
(59, 17, 24, '650000', '2021-09-02 23:27:11', '2021-09-02 23:27:11'),
(60, 14, 25, '#0a18e6', '2021-09-02 23:28:02', '2021-09-02 23:28:02'),
(61, 14, 26, '#ea2c0b', '2021-09-02 23:28:02', '2021-09-02 23:28:02'),
(62, 14, 27, '50000', '2021-09-02 23:28:02', '2021-09-02 23:28:02'),
(63, 14, 28, '40000', '2021-09-02 23:28:02', '2021-09-02 23:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(69, '16239951322b44928ae11fb9384c4cf38708677c48.jpg', 1, '2021-06-17 22:45:32', '2021-06-17 22:45:32'),
(70, '162399513219f3cd308f1455b3fa09a282e0d496f4.jpg', 1, '2021-06-17 22:45:33', '2021-06-17 22:45:33'),
(71, '16239953234c5bde74a8f110656874902f07378009.jpg', 2, '2021-06-17 22:48:43', '2021-06-17 22:48:43'),
(72, '16239953239fe8593a8a330607d76796b35c64c600.jpg', 2, '2021-06-17 22:48:44', '2021-06-17 22:48:44'),
(73, '16239953238f121ce07d74717e0b1f21d122e04521.jpg', 2, '2021-06-17 22:48:44', '2021-06-17 22:48:44'),
(74, '162399532381e74d678581a3bb7a720b019f4f1a93.jpg', 2, '2021-06-17 22:48:45', '2021-06-17 22:48:45'),
(75, '1624008899a02ffd91ece5e7efeb46db8f10a74059.jpg', 3, '2021-06-18 02:34:59', '2021-06-18 02:34:59'),
(76, '1624008899d93ed5b6db83be78efb0d05ae420158e.jpg', 3, '2021-06-18 02:35:00', '2021-06-18 02:35:00'),
(77, '16240088997ce3284b743aefde80ffd9aec500e085.jpg', 3, '2021-06-18 02:35:00', '2021-06-18 02:35:00'),
(78, '1624008899ca75910166da03ff9d4655a0338e6b09.jpg', 3, '2021-06-18 02:35:00', '2021-06-18 02:35:00'),
(79, '1624009055ede7e2b6d13a41ddf9f4bdef84fdc737.jpg', 4, '2021-06-18 02:37:35', '2021-06-18 02:37:35'),
(80, '162400905538913e1d6a7b94cb0f55994f679f5956.jpg', 4, '2021-06-18 02:37:35', '2021-06-18 02:37:35'),
(81, '16240090557eacb532570ff6858afd2723755ff790.jpg', 4, '2021-06-18 02:37:36', '2021-06-18 02:37:36'),
(82, '16240090551c9ac0159c94d8d0cbedc973445af2da.jpg', 4, '2021-06-18 02:37:36', '2021-06-18 02:37:36'),
(83, '16240091244ffce04d92a4d6cb21c1494cdfcd6dc1.jpg', 5, '2021-06-18 02:38:44', '2021-06-18 02:38:44'),
(84, '16240091246ecbdd6ec859d284dc13885a37ce8d81.jpg', 5, '2021-06-18 02:38:44', '2021-06-18 02:38:44'),
(85, '16240091242a79ea27c279e471f4d180b08d62b00a.jpg', 5, '2021-06-18 02:38:45', '2021-06-18 02:38:45'),
(86, '16240091242b24d495052a8ce66358eb576b8912c8.jpg', 5, '2021-06-18 02:38:45', '2021-06-18 02:38:45'),
(87, '16240091716da37dd3139aa4d9aa55b8d237ec5d4a.jpg', 6, '2021-06-18 02:39:31', '2021-06-18 02:39:31'),
(88, '16240091711543843a4723ed2ab08e18053ae6dc5b.jpg', 6, '2021-06-18 02:39:32', '2021-06-18 02:39:32'),
(89, '162400917182aa4b0af34c2313a562076992e50aa3.jpg', 6, '2021-06-18 02:39:32', '2021-06-18 02:39:32'),
(90, '1624009171ffeabd223de0d4eacb9a3e6e53e5448d.jpg', 6, '2021-06-18 02:39:33', '2021-06-18 02:39:33'),
(91, '1624016831903ce9225fca3e988c2af215d4e544d3.jpg', 7, '2021-06-18 04:47:11', '2021-06-18 04:47:11'),
(92, '1624016831f340f1b1f65b6df5b5e3f94d95b11daf.jpg', 7, '2021-06-18 04:47:12', '2021-06-18 04:47:12'),
(93, '16240168317a614fd06c325499f1680b9896beedeb.jpg', 7, '2021-06-18 04:47:13', '2021-06-18 04:47:13'),
(94, '1624016831c8fbbc86abe8bd6a5eb6a3b4d0411301.jpg', 7, '2021-06-18 04:47:13', '2021-06-18 04:47:13'),
(95, '16240168830d7de1aca9299fe63f3e0041f02638a3.jpg', 8, '2021-06-18 04:48:03', '2021-06-18 04:48:03'),
(96, '16240168832dace78f80bc92e6d7493423d729448e.jpg', 8, '2021-06-18 04:48:03', '2021-06-18 04:48:03'),
(97, '1624016883e2c0be24560d78c5e599c2a9c9d0bbd2.jpg', 8, '2021-06-18 04:48:04', '2021-06-18 04:48:04'),
(98, '162401688300ec53c4682d36f5c4359f4ae7bd7ba1.jpg', 8, '2021-06-18 04:48:04', '2021-06-18 04:48:04'),
(99, '162401693702a32ad2669e6fe298e607fe7cc0e1a0.jpg', 9, '2021-06-18 04:48:57', '2021-06-18 04:48:57'),
(100, '16240169370c74b7f78409a4022a2c4c5a5ca3ee19.jpg', 9, '2021-06-18 04:48:57', '2021-06-18 04:48:57'),
(101, '1624016937d86ea612dec96096c5e0fcc8dd42ab6d.jpg', 9, '2021-06-18 04:48:58', '2021-06-18 04:48:58'),
(102, '16240169371ff8a7b5dc7a7d1f0ed65aaa29c04b1e.jpg', 9, '2021-06-18 04:48:58', '2021-06-18 04:48:58'),
(103, '1624016977ede7e2b6d13a41ddf9f4bdef84fdc737.jpg', 10, '2021-06-18 04:49:37', '2021-06-18 04:49:37'),
(104, '16240169771a5b1e4daae265b790965a275b53ae50.jpg', 10, '2021-06-18 04:49:38', '2021-06-18 04:49:38'),
(105, '162401697746ba9f2a6976570b0353203ec4474217.jpg', 10, '2021-06-18 04:49:38', '2021-06-18 04:49:38'),
(106, '1624016977f73b76ce8949fe29bf2a537cfa420e8f.jpg', 10, '2021-06-18 04:49:38', '2021-06-18 04:49:38'),
(107, '162401838208d98638c6fcd194a4b1e6992063e944.jpg', 11, '2021-06-18 05:13:02', '2021-06-18 05:13:02'),
(108, '16240183829b70e8fe62e40c570a322f1b0b659098.jpg', 11, '2021-06-18 05:13:02', '2021-06-18 05:13:02'),
(109, '1624018382d240e3d38a8882ecad8633c8f9c78c9b.jpg', 11, '2021-06-18 05:13:03', '2021-06-18 05:13:03'),
(110, '1624018382bac9162b47c56fc8a4d2a519803d51b3.jpg', 11, '2021-06-18 05:13:03', '2021-06-18 05:13:03'),
(111, '1624018441f7e6c85504ce6e82442c770f7c8606f0.jpg', 12, '2021-06-18 05:14:01', '2021-06-18 05:14:01'),
(112, '1624018441c8ffe9a587b126f152ed3d89a146b445.jpg', 12, '2021-06-18 05:14:02', '2021-06-18 05:14:02'),
(113, '1624018441168908dd3227b8358eababa07fcaf091.jpg', 12, '2021-06-18 05:14:02', '2021-06-18 05:14:02'),
(114, '16240184417380ad8a673226ae47fce7bff88e9c33.jpg', 12, '2021-06-18 05:14:03', '2021-06-18 05:14:03'),
(115, '162401849008d98638c6fcd194a4b1e6992063e944.jpg', 13, '2021-06-18 05:14:50', '2021-06-18 05:14:50'),
(116, '1624018490670e8a43b246801ca1eaca97b3e19189.jpg', 13, '2021-06-18 05:14:51', '2021-06-18 05:14:51'),
(117, '1624018490b7bb35b9c6ca2aee2df08cf09d7016c2.jpg', 13, '2021-06-18 05:14:51', '2021-06-18 05:14:51'),
(118, '1624018490d045c59a90d7587d8d671b5f5aec4e7c.jpg', 13, '2021-06-18 05:14:52', '2021-06-18 05:14:52'),
(119, '1624018552149e9677a5989fd342ae44213df68868.jpg', 14, '2021-06-18 05:15:52', '2021-06-18 05:15:52'),
(120, '1624018552892c91e0a653ba19df81a90f89d99bcd.jpg', 14, '2021-06-18 05:15:52', '2021-06-18 05:15:52'),
(121, '162401855234ed066df378efacc9b924ec161e7639.jpg', 14, '2021-06-18 05:15:52', '2021-06-18 05:15:52'),
(122, '16240185524b0250793549726d5c1ea3906726ebfe.jpg', 14, '2021-06-18 05:15:53', '2021-06-18 05:15:53'),
(123, '1624018598670e8a43b246801ca1eaca97b3e19189.jpg', 15, '2021-06-18 05:16:38', '2021-06-18 05:16:38'),
(124, '1624018598ebd9629fc3ae5e9f6611e2ee05a31cef.jpg', 15, '2021-06-18 05:16:38', '2021-06-18 05:16:38'),
(125, '162401859801386bd6d8e091c2ab4c7c7de644d37b.jpg', 15, '2021-06-18 05:16:39', '2021-06-18 05:16:39'),
(126, '1624018598d1f255a373a3cef72e03aa9d980c7eca.jpg', 15, '2021-06-18 05:16:39', '2021-06-18 05:16:39'),
(127, '1624018632819f46e52c25763a55cc642422644317.jpg', 16, '2021-06-18 05:17:12', '2021-06-18 05:17:12'),
(128, '162401863208d98638c6fcd194a4b1e6992063e944.jpg', 16, '2021-06-18 05:17:12', '2021-06-18 05:17:12'),
(129, '1624018688aba3b6fd5d186d28e06ff97135cade7f.jpg', 17, '2021-06-18 05:18:08', '2021-06-18 05:18:08'),
(130, '1624018688aeb3135b436aa55373822c010763dd54.jpg', 17, '2021-06-18 05:18:09', '2021-06-18 05:18:09'),
(131, '162401868851ef186e18dc00c2d31982567235c559.jpg', 17, '2021-06-18 05:18:09', '2021-06-18 05:18:09'),
(132, '1624018688b2f627fff19fda463cb386442eac2b3d.jpg', 17, '2021-06-18 05:18:10', '2021-06-18 05:18:10'),
(133, '1624018688c4015b7f368e6b4871809f49debe0579.jpg', 17, '2021-06-18 05:18:10', '2021-06-18 05:18:10'),
(134, '1624018688df6d2338b2b8fce1ec2f6dda0a630eb0.jpg', 17, '2021-06-18 05:18:10', '2021-06-18 05:18:10'),
(135, '1624018730a8abb4bb284b5b27aa7cb790dc20f80b.jpg', 18, '2021-06-18 05:18:50', '2021-06-18 05:18:50'),
(136, '1624018730e0cf1f47118daebc5b16269099ad7347.jpg', 18, '2021-06-18 05:18:50', '2021-06-18 05:18:50'),
(137, '1624018730e44fea3bec53bcea3b7513ccef5857ac.jpg', 18, '2021-06-18 05:18:51', '2021-06-18 05:18:51'),
(138, '1624018730c5ff2543b53f4cc0ad3819a36752467b.jpg', 18, '2021-06-18 05:18:51', '2021-06-18 05:18:51'),
(139, '162401873053fde96fcc4b4ce72d7739202324cd49.jpg', 18, '2021-06-18 05:18:51', '2021-06-18 05:18:51'),
(140, '1624018730f4552671f8909587cf485ea990207f3b.jpg', 18, '2021-06-18 05:18:52', '2021-06-18 05:18:52'),
(141, '1624018730b73dfe25b4b8714c029b37a6ad3006fa.jpg', 18, '2021-06-18 05:18:52', '2021-06-18 05:18:52'),
(142, '16240187309872ed9fc22fc182d371c3e9ed316094.jpg', 18, '2021-06-18 05:18:53', '2021-06-18 05:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 16, 3, 3, 'sản phẩm bình thường', '2021-06-23 02:45:29', '2021-06-23 02:45:29', 0),
(2, 16, 2, 5, 'sản phẩm tuyệt vời', '2021-06-23 02:48:12', '2021-06-23 02:48:12', 0),
(3, 15, 2, 4, 'san pham tot', '2021-06-23 04:35:27', '2021-06-23 04:35:27', 0),
(4, 12, 2, 2, 'san pham tam duoc', '2021-06-23 05:09:20', '2021-06-23 05:09:20', 0),
(5, 16, 3, 3, 'test', '2021-07-12 23:20:03', '2021-07-12 23:20:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Quan ly banner', 'web', '2021-09-07 03:57:36', '2021-09-07 03:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(13, 1),
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`, `is_active`, `type`) VALUES
(1, 'Vận chuyển', 'Miễn phí vận chuyển hóa đơn trên 200 ngàn', '2021-06-18 09:15:04', '2021-06-18 09:15:04', 1, 'Textarea'),
(2, 'Đổi trả hàng', 'Đổi trả hàng lỗi trong 30 ngày', '2021-06-18 09:17:25', '2021-06-18 09:17:25', 1, 'Textarea'),
(3, 'Bảo mật', 'Chúng tôi bảo mật thông tin khách hàng khi thanh toán!', '2021-06-18 09:20:37', '2021-06-18 09:20:37', 1, 'Textarea');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(4) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `nametwo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namethree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namefour` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `content`, `image_path`, `image_name`, `created_at`, `updated_at`, `is_active`, `nametwo`, `namethree`, `namefour`) VALUES
(1, 'Nơi mua sắm uy tín', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n<p><img src=\"/shop3/public/storage/photos/1/sliders/7.jpg\" alt=\"\" width=\"800\" height=\"800\" /></p>', NULL, 'Nơi_mua_sắm_uy_tín.jpg', '2021-06-13 21:39:41', '2021-06-13 21:39:41', 1, 'Cập nhật nhiều mẫu mới', 'Tiện lợi', 'cua-hang'),
(2, 'Bộ sưu tập mới', 'Đang cập nhật', '<p>Đang cập nhật</p>', NULL, 'Bộ_sưu_tập_mới.jpg', '2021-06-13 21:43:02', '2021-06-13 21:43:02', 1, 'Nội thất trong nhà', 'Thư giãn với ghế mới', 'cua-hang');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\News', 1, '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(2, 2, 'App\\Models\\News', 1, '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(3, 3, 'App\\Models\\News', 2, '2021-06-14 09:48:46', '2021-06-14 09:48:46'),
(4, 2, 'App\\Models\\News', 2, '2021-06-14 09:48:46', '2021-06-14 09:48:46'),
(5, 4, 'App\\Models\\News', 3, '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(6, 5, 'App\\Models\\News', 3, '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(7, 1, 'App\\Models\\News', 4, '2021-06-14 09:50:30', '2021-06-14 09:50:30'),
(8, 2, 'App\\Models\\News', 4, '2021-06-14 09:50:30', '2021-06-14 09:50:30'),
(9, 3, 'App\\Models\\News', 4, '2021-06-14 09:50:30', '2021-06-14 09:50:30'),
(10, 6, 'App\\Models\\News', 5, '2021-06-26 21:07:27', '2021-06-26 21:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'đèn', '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(2, 'ghe', '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(3, 'bàn', '2021-06-14 09:48:45', '2021-06-14 09:48:45'),
(4, 'đồng hồ', '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(5, 'giường', '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(6, 'gioi-thieu', '2021-06-26 21:07:26', '2021-06-26 21:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_super_admin`, `is_active`, `image`, `address`, `country`, `city`, `postal_code`, `state`, `mobile`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$wDY6X5.xxXCIBKGmnKwjgufClU8UMiL.kp4BWzYebLN0Y3ulMCsHW', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'cuong', 'cuong@gmail.com', NULL, '$2y$10$Zv19bfMiSgrt5vmtCRBC0.lW2Yua.DyIWQ35eoHrDOUqvQ17gpI8q', NULL, '2021-06-17 09:09:04', '2021-07-27 03:10:51', 0, 1, NULL, '345', NULL, 'TP HCM', NULL, '3', '0909090'),
(3, 'le thi minh chau', 'chau@gmail.com', NULL, '$2y$10$jsTesBBUVIl3VeQb5Zn5q.pltrlWwDMceH9Wk2GlyyoHdnB/7NfUG', NULL, '2021-06-17 09:15:55', '2021-09-03 03:24:30', 0, 1, '1624513534_.png', '111/222', NULL, 'Hà Nội', NULL, '1111', '999999'),
(4, 'Khanh thy', 'khanhthy@gmail.com', NULL, '$2y$10$BLOk7ulPpe5z3/hsxMjF4up85TbGr3WqhAMom3OODP7PevBkpeEA6', NULL, '2021-09-07 03:14:49', '2021-09-07 03:27:05', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_features`
--
ALTER TABLE `category_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_features_category_id_foreign` (`category_id`);

--
-- Indexes for table `cat_news`
--
ALTER TABLE `cat_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_news_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`),
  ADD KEY `news_cat_news_id_foreign` (`cat_news_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_features_product_id_foreign` (`product_id`),
  ADD KEY `product_features_field_id_foreign` (`field_id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_gallery_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_setting_key_unique` (`setting_key`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_cart_user_id_foreign` (`user_id`),
  ADD KEY `shopping_cart_product_id_foreign` (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_foreign` (`tag_id`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_features`
--
ALTER TABLE `category_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cat_news`
--
ALTER TABLE `cat_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_features`
--
ALTER TABLE `category_features`
  ADD CONSTRAINT `category_features_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cat_news`
--
ALTER TABLE `cat_news`
  ADD CONSTRAINT `cat_news_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cat_news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_cat_news_id_foreign` FOREIGN KEY (`cat_news_id`) REFERENCES `cat_news` (`id`),
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `product_features_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `category_features` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_features_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD CONSTRAINT `product_gallery_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD CONSTRAINT `shipping_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
