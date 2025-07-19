-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 08:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cottton_shop_web_back`
--

--
-- Dumping data for table `pro_categories`
--

INSERT INTO `pro_categories` (`id`, `parent_id`, `old_id`, `old_parent`, `deep`, `photo`, `photo_thum_1`, `icon`, `is_active`, `postion`, `product_count`, `created_at`, `updated_at`) VALUES
(1, NULL, 16, 0, 0, 'images/category/1/levels-YQZVPMjlJ8.webp', 'images/category/1/levels-uMUESGu1eR.webp', NULL, 1, 0, 236, '2024-03-08 07:09:41', '2024-04-27 06:06:46'),
(2, 1, 229, 0, 1, 'images/category/2/1725800839_oEZeoWZVrWqsEzv_.webp', 'images/category/2/1725800839_98sllhmAChONAgp_.webp', NULL, 1, 0, 9, '2024-03-08 07:09:41', '2024-09-08 17:07:19'),
(3, NULL, 230, 0, 0, 'wp-content/uploads/2023/10/33.jpg', 'wp-content/uploads/2023/10/33.jpg', NULL, 1, 0, 66, '2024-03-08 07:09:41', '2024-03-08 07:09:41'),
(4, NULL, 231, 0, 0, 'images/category/4/protection-covers-tXKlhHGOL5.webp', 'images/category/4/protection-covers-qrkkqnS8hJ.webp', NULL, 1, 0, 10, '2024-03-08 07:09:41', '2024-04-27 06:16:08'),
(5, NULL, 232, 0, 0, 'images/category/5/blanket-BnF2rxg8eR.webp', 'images/category/5/blanket-Z3SZU48baC.webp', NULL, 1, 0, 131, '2024-03-08 07:09:41', '2024-04-27 06:10:33'),
(7, 1, 295, 16, 1, 'images/category/7/1725801564_7ER1j32mzgMsnyt_.webp', 'images/category/7/1725801564_WOz4rYSn5xsLqkm_.webp', NULL, 1, 0, 49, '2024-03-08 07:09:41', '2024-09-08 17:19:24'),
(8, 1, 296, 16, 1, 'images/category/8/1725801658_OPA4005NMR1DO5d_.webp', 'images/category/8/1725801658_tsiGhbvQxCabqxe_.webp', NULL, 1, 0, 83, '2024-03-08 07:09:41', '2024-09-08 17:20:58'),
(9, 1, 297, 16, 1, 'images/category/9/1725801882_OXXofX5VUPGDqLd_.webp', 'images/category/9/1725801882_U6lXJGXHb9rtthi_.webp', NULL, 1, 0, 152, '2024-03-08 07:09:41', '2024-09-08 17:24:42'),
(10, 2, 298, 229, 2, 'images/category/10/1725802043_1SPjMd1s4vvfewG_.webp', 'images/category/10/1725802044_AS9c8obwUlLte44_.webp', NULL, 1, 0, 1, '2024-03-08 07:09:41', '2024-09-08 17:27:24'),
(11, 2, 299, 229, 2, 'images/category/11/1725802137_w0mkSq5XPHmHzgd_.webp', 'images/category/11/1725802137_miPsVk73WshxlOG_.webp', NULL, 1, 0, 3, '2024-03-08 07:09:41', '2024-09-08 17:28:57'),
(12, 1, 300, 229, 1, 'images/category/12/1725802228_Jk0BwuVA8hIqR2d_.webp', 'images/category/12/1725802228_2GGzBVZcHNNBBNi_.webp', NULL, 1, 0, 0, '2024-03-08 07:09:41', '2024-09-08 17:30:28'),
(13, 3, 301, 230, 1, 'images/category/13/1725802447_mvRmWmoqRtw6r4z_.webp', 'images/category/13/1725802447_4UvUIRsa3EbrTuE_.webp', NULL, 1, 0, 8, '2024-03-08 07:09:41', '2024-09-08 17:34:07'),
(14, 3, 302, 230, 1, 'images/category/14/1725802514_NrUOb1mSv7fsrfy_.webp', 'images/category/14/1725802514_YC1wre0zTivLGfQ_.webp', NULL, 1, 0, 20, '2024-03-08 07:09:41', '2024-09-08 17:35:14'),
(18, 1, 326, 0, 1, 'images/category/18/1725802627_JRuAVUNjImI87sj_.webp', 'images/category/18/1725802627_bKeltOSNPPXwIKb_.webp', NULL, 1, 0, 0, '2024-03-08 07:09:41', '2024-09-08 17:37:07'),
(20, 1, 469, 0, 1, 'images/category/20/1725802779_OzZ7DBeQfljaojT_.webp', 'images/category/20/1725802779_KUtCXYt2uWqm7mk_.webp', NULL, 1, 0, 0, '2024-03-08 07:09:41', '2024-09-08 17:39:39'),
(23, NULL, 1011, 0, 0, 'images/category/23/sheets-4WEtMB61vG.webp', 'images/category/23/sheets-I6fSxo6Cxb.webp', NULL, 1, 0, 36, '2024-03-08 07:09:41', '2024-04-27 06:12:18'),
(24, NULL, 1619, 0, 0, 'images/category/24/1725802981_ESocLaYzS2rEnN3_.webp', 'images/category/24/1725802981_1UJT0VdytlvJZcW_.webp', NULL, 1, 0, 9, '2024-03-08 07:09:41', '2024-09-08 17:43:01'),
(25, NULL, 1818, 0, 0, 'images/category/25/towels-and-bathrobes-NHbrqDDwLZ.webp', 'images/category/25/towels-and-bathrobes-nkkcFjK8bS.webp', NULL, 1, 0, 56, '2024-03-08 07:09:41', '2024-04-27 06:13:52'),
(26, NULL, 2263, 0, 0, 'images/category/26/1725803108_0vnHITHjh31mf6r_.webp', 'images/category/26/1725803108_Qnq4TVI9vAYY4dK_.webp', NULL, 1, 0, 10, '2024-03-08 07:09:41', '2024-09-08 17:45:08'),
(27, NULL, 2370, 0, 0, 'images/category/27/1725803233_JUMburHCuOy5ft3_.webp', 'images/category/27/1725803233_lz0bqCI0yPP1VZG_.webp', NULL, 1, 0, 7, '2024-03-08 07:09:41', '2024-09-08 17:47:13'),
(28, NULL, 2439, 0, 0, 'images/category/28/1725803417_xWr2YzMtibiiwgD_.webp', 'images/category/28/1725803417_hMGjqyu9BjxXBIS_.webp', NULL, 1, 0, 1, '2024-03-08 07:09:41', '2024-09-08 17:50:17'),
(30, 1, NULL, NULL, 1, 'images/category/30/1725803621_GnQSXlVUCEQTs5G_.webp', 'images/category/30/1725803621_bIcaegACiYiOEro_.webp', NULL, 1, 0, 0, '2024-05-03 06:29:06', '2024-09-08 17:53:41'),
(31, 3, NULL, NULL, 1, 'images/category/31/1725803720_lLlxzoTOEFODRIQ_.webp', 'images/category/31/1725803720_FyitdUAE7GJMX2Q_.webp', NULL, 1, 0, 0, '2024-05-07 10:22:40', '2024-09-08 17:55:20'),
(32, 13, NULL, NULL, 2, 'images/category/32/1725803831_X2brWZ1PWf9Nu1l_.webp', 'images/category/32/1725803831_unf9wtJahw3Jypj_.webp', NULL, 1, 0, 0, '2024-05-22 11:55:33', '2024-09-08 17:57:11'),
(33, NULL, NULL, NULL, 0, 'images/category/33/1725803790_WLjfoYUrYng8vLf_.webp', 'images/category/33/1725803790_MctazUEJiFLoJkQ_.webp', NULL, 1, 0, 0, '2024-06-02 06:57:05', '2024-09-08 17:56:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
