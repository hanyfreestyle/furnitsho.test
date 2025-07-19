-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 09:04 AM
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
-- Dumping data for table `shopping_shipping_rate`
--

INSERT INTO `shopping_shipping_rate` (`id`, `cat_id`, `price_from`, `price_to`, `rate`) VALUES
(1, 1, 1, 5000, 300),
(2, 1, 5001, 10000, 200),
(3, 1, 10001, 100000, 0),
(4, 2, 1, 5000, 400),
(5, 2, 5001, 15000, 500),
(6, 2, 15001, 100000, 500),
(7, 3, 1, 10000, 500),
(8, 3, 10001, 20000, 800),
(9, 3, 20001, 50000, 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
