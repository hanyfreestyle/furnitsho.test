-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2024 at 05:47 PM
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
-- Database: `cottton_shop_web`
--

--
-- Dumping data for table `config_ads_photos`
--

INSERT INTO `config_ads_photos` (`id`, `cat_id`, `photo`, `link`, `col`, `is_active`, `position`) VALUES
(6, 'header', 'images/ads-photo/header-kHij216EQy.webp', NULL, 'col-lg-6', 1, 0),
(8, 'footer', 'images/ads-photo/footer-WkJQ4qstOX.webp', NULL, 'col-lg-12', 1, 0),
(9, 'header', 'images/ads-photo/header-i10JxjC55z.webp', NULL, 'col-lg-6', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
