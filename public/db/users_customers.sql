-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 08:58 AM
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
-- Dumping data for table `users_customers`
--

INSERT INTO `users_customers` (`id`, `name`, `email`, `phone`, `whatsapp`, `city_id`, `status`, `is_active`, `photo`, `photo_thum_1`, `email_verified_at`, `password`, `password_temp`, `last_login`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'السيد عمر', 'etmano@hotmail.com', '01223129660', '01223129660', 3, 1, 1, NULL, NULL, NULL, '$2y$10$ef5p96KOJnaZLB/OXWrfluqslVzih7317s9GDK7rMW.5rsZMNqu.2', NULL, '2024-11-10 04:50:42', NULL, NULL, '2024-11-10 09:50:42', NULL),
(2, 'هانى محمد محم ددرويش', 'hany@hanydarwish.com', '01221563252', '01221563252', 3, 1, 1, NULL, NULL, NULL, '$2y$10$vMuBcuT9iFJfLJaZUnDYleZqweuwPQ90AMaYd2qsbUfK.RfY2jA1G', NULL, '2024-04-13 23:52:28', NULL, '2024-04-07 14:58:44', '2024-04-13 21:52:28', NULL),
(3, 'هبة الله محمد', 'hebatallah.mohamed50@gmail.com', '01124930450', '01124930450', 1, 1, 1, NULL, NULL, NULL, '$2y$10$dOn9uz1kD32IDMqsKElCDe0o/VPLA9rGAuiF18/FcMiAGt9B4Wmyu', NULL, '2024-07-25 22:23:28', NULL, '2024-07-26 02:23:28', '2024-07-26 02:23:45', NULL),
(4, 'أحمد زكي', 'Zakia4858@gmail.com', '01014190408', '01014190408', 17, 1, 1, NULL, NULL, NULL, '$2y$10$xEpprv22DVHueBCb3T9ode3SoJdR1I38Wfft7tyPdIEFP4Efie37e', NULL, '2024-07-26 17:30:49', NULL, '2024-07-26 21:30:49', '2024-07-26 21:31:28', NULL),
(5, 'Kareem Muhammad', 'kareemmuhammad9611@gmail.com', '01151571160', NULL, 1, 1, 1, NULL, NULL, NULL, '$2y$10$9RzW60MuKDCkRzu4DQgH2e9WTJ4CD5UKd8/it37YMtGiqzvhJHYpe', NULL, '2024-07-27 19:47:43', NULL, '2024-07-27 23:47:43', '2024-07-27 23:47:54', NULL),
(6, 'طه محمد', 'tahalovefamily@yahoo.com', '01555650185', '01555650185', 1, 1, 1, NULL, NULL, NULL, '$2y$10$pr3uxmaCIuiCNgzcOu1sPegCK8NWlRM/rqnoNXDyeocZoWdzjmNUq', NULL, '2024-07-29 16:21:19', NULL, '2024-07-29 20:21:19', '2024-07-29 20:21:34', NULL),
(7, 'عبير خيري', 'lamar.wael@ymail.com', '60380553', '01067038773', 25, 1, 1, NULL, NULL, NULL, '$2y$10$7vhbau6wi6feTCpGG56kROBDKy79m/.TXMDdaa4X2cKQb4CVMXQSq', NULL, '2024-08-04 08:50:14', NULL, '2024-08-04 12:50:14', '2024-08-04 12:50:51', NULL),
(8, 'د.محمد غانم محمد عبدالناصر', 'ghanem_81@yahoo.com', '01010840769', '01010840769', 25, 1, 1, NULL, NULL, NULL, '$2y$10$Qap8qD1enNqFK1VTJ79jVe9K1JqzPKb1dYsumzoNbNPo66qwDmhRW', NULL, '2024-08-07 17:37:20', NULL, '2024-08-06 20:10:02', '2024-08-07 21:37:20', NULL),
(9, 'Hesham el nukbassy', 'heshampathman@gmail.com', '01200079580', '01200079580', 2, 1, 1, NULL, NULL, NULL, '$2y$10$aawH6L/NM7OstfzjMBlGT.s0m23ypdjEgVcuI11yshtQkS9SyYp5a', NULL, '2024-08-08 13:49:15', NULL, '2024-08-08 14:21:24', '2024-08-08 17:49:15', NULL),
(10, 'Bassma Elmongy', 'bassma.elmongy@icloud.com', '01000961138', '01000961149', 14, 1, 1, NULL, NULL, NULL, '$2y$10$TSigCN4VQvLE4t6THLQlJuR3u4L/ncTRxDjnWlLriJwcx98s3ES/O', NULL, '2024-08-10 00:48:45', NULL, '2024-08-10 04:48:45', '2024-08-10 04:49:23', NULL),
(11, 'احمد السيد', 'ghpen1@gmail.com', '01151939891', '01151939891', 1, 1, 1, NULL, NULL, NULL, '$2y$10$1e6tqZuK4BdNstSywiqTfuvMrjk212tH1Q09/aFJZxXBo0LfHNwUq', NULL, '2024-08-15 12:25:10', NULL, '2024-08-14 19:32:03', '2024-08-15 16:25:10', NULL),
(12, 'Mahmoud Mohamed Tarek', 'bioeng.mahmoudt@gmail.com', '1117681681', '01117681681', 1, 1, 1, NULL, NULL, NULL, '$2y$10$RzUHHN9G5dbrX/Ri8qwfHu9zp6ldBCcfZtSyCNhtJwIH90fG0Cj0e', NULL, '2024-08-19 00:41:15', NULL, '2024-08-19 04:41:15', '2024-08-19 04:41:38', NULL),
(13, 'فاطمة الزهراء احمد محمود احمد', 'Fatmaalzahraaahmed4@gmail.com', '01010060305', '01010060305', 21, 1, 1, NULL, NULL, NULL, '$2y$10$F.bivVXgmH4FF/BNh1csxO6mXIgcbEiFEIUmUakmqMSSX8s1D8ZrW', NULL, '2024-08-20 21:02:37', NULL, '2024-08-21 01:02:37', '2024-08-21 01:02:55', NULL),
(14, 'علاء الدين خالد علي', 'alaaabosabe@gmail.com', '01091855696', '01091855696', 10, 1, 1, NULL, NULL, NULL, '$2y$10$tP8TuSHs.fGHwIOzQh0aEeYyN49wCNUYNkaA48CQlIrP4ls/BvXHu', NULL, '2024-08-23 19:10:06', NULL, '2024-08-23 23:10:06', '2024-08-23 23:10:28', NULL),
(15, 'السيد محمد عمر محمد احمد', 'tomay269@gmail.com', '01221991500', '01221991500', 4, 1, 1, NULL, NULL, NULL, '$2y$10$UEPGr0LkyXnHJVOlTAKaW.qti7YohpFP7ywRI3ORr8YKejOF.j4Gi', NULL, '2024-08-25 15:28:05', NULL, '2024-08-24 21:34:03', '2024-08-25 19:28:05', NULL),
(16, 'Maram Yousif', 'maramabdelwahab174@gmail.com', '01148119701', '01148119701', 2, 1, 1, NULL, NULL, NULL, '$2y$10$hCvUvBtCu7tbMOAZ4jVlk.gKoSTgz37COkJAt9eyHfZiWmOBdo0gi', NULL, '2024-08-26 04:03:43', NULL, '2024-08-26 08:03:43', '2024-08-26 08:04:23', NULL),
(17, 'محمد عوض', 'mawad140@gmail.com', '01000102768', NULL, 1, 1, 1, NULL, NULL, NULL, '$2y$10$LE51ojshIT2N1fOo0VxTF.pD5.XtXEhzF2URTPW8TPKsqV1bhRqiu', NULL, '2024-08-28 20:45:16', NULL, '2024-08-26 20:35:04', '2024-08-29 00:45:16', NULL),
(18, 'مصطفى عبدالعظيم على', 'mostafa2aly2@gmail.com', '01011208649', '01011208649', 25, 1, 1, NULL, NULL, NULL, '$2y$10$SVsJWza/5qejnBL7GUjNNujXO7j5gYiHatgR/L1hip9JdspFzKaN6', NULL, '2024-08-30 19:55:43', NULL, '2024-08-30 23:55:43', '2024-08-30 23:56:29', NULL),
(19, 'Mariem', 'mariemmuhamed8@gmail.com', '01114125097', NULL, 4, 1, 1, NULL, NULL, NULL, '$2y$10$q/7Y85toCaKC7Av8JBGazeJ.fg0.f.dia.G37ysXTR0n1.7XgUggy', NULL, '2024-09-01 19:30:15', NULL, '2024-09-01 23:30:15', '2024-09-01 23:30:22', NULL),
(20, 'موسى احمد عامر', 'moussaamer@outlook.com', '01024647722', NULL, 1, 1, 1, NULL, NULL, NULL, '$2y$10$r8UVPZld.l6jzntavm0R6uBfIXZJRHDInT0H79BMyVjTAQcspusFq', NULL, '2024-09-03 20:17:06', NULL, '2024-09-04 00:17:06', '2024-09-04 00:17:29', NULL),
(21, 'أسماء', 'asmaa.a.elnabqi@gmail.com', '01551883816', '01551883816', 1, 1, 1, NULL, NULL, NULL, '$2y$10$wqrs7VZwyk78.y58BI/SDOP0VGJGI1OGIMZosZlZPePRwHKrxxJ8S', NULL, '2024-09-10 18:54:19', NULL, '2024-09-09 18:10:53', '2024-09-10 22:54:19', NULL),
(22, 'مجدي تعلب قرياقس', 'engygadalla@gmail.com', '01211197857', NULL, 1, 1, 1, NULL, NULL, NULL, '$2y$10$q3O6a7g0n2oeW7rkxMxiuO2w/u57oezVz5iebsj2WO/4HTBZf6iJe', NULL, '2024-09-10 20:35:09', NULL, '2024-09-11 00:35:09', '2024-09-11 00:35:27', NULL),
(23, 'محمد علي', 'moma541980@gmail.com', '01149951898', '01149951898', 1, 1, 1, NULL, NULL, NULL, '$2y$10$KLocALHoql6uwUvb0kyFVONUj2yp2TAR9MwF4sbH7261zKtx0QgBm', NULL, '2024-09-12 07:22:23', NULL, '2024-09-12 11:22:23', '2024-09-12 11:22:40', NULL),
(24, 'Abdelgalil Rady', 'tabebgrah17@gmail.com', '01061096148', '01061096148', 1, 1, 1, NULL, NULL, NULL, '$2y$10$34l7LqSYpVw4VpWej6qr0u8arLAci5YELc6FGlqxLdDk3y30AVKky', NULL, '2024-09-16 15:50:36', NULL, '2024-09-16 19:50:36', '2024-09-16 19:51:01', NULL),
(25, 'AHMED FAWZY', 'Hamadahamada37@yahoo.com', '01000829947', NULL, NULL, 1, 1, NULL, NULL, NULL, '$2y$10$aq.YJ5DONXTxTYVQLAIZquutafQCppS9cu0QrwoZk1U/SS1qr12Gu', NULL, '2024-09-18 21:15:08', NULL, '2024-09-19 01:15:08', '2024-09-19 01:15:08', NULL),
(26, 'sayed', 'sayedelsayed8@gmail.com', '01007443434', '01007443434', 20, 1, 1, NULL, NULL, NULL, '$2y$10$igI7sxOiCoTkvxOHoKpmWec087YNczwvN0Ow6n2lwUZDpsanMnsBG', NULL, '2024-09-19 19:16:44', NULL, '2024-09-19 05:03:45', '2024-09-19 23:16:44', NULL),
(27, 'Gasser Elmaghraby', 'gasserelmaghraby@gmail.com', '01002131165', '01002131165', 1, 1, 1, NULL, NULL, NULL, '$2y$10$oQGVyriJJVUUPz.uMAkKr.SvRaFDNX2PQhY8RYEPiKdgSZig7TJPy', NULL, '2024-09-19 15:03:00', NULL, '2024-09-19 19:03:00', '2024-09-19 19:03:29', NULL),
(28, 'Yasmine', 'yasmine_goaim@yahoo.com', '01003741055', '01003741055', 1, 1, 1, NULL, NULL, NULL, '$2y$10$NLA0tzD6H7CUR9xK6LFlvu2CiA6kgkA38CuzwT2qFdXkNt001WTXW', NULL, '2024-09-20 18:45:31', NULL, '2024-09-20 22:45:31', '2024-09-20 22:45:47', NULL),
(29, 'محمود موسي صابر', 'mosa01064488320@gmail.com', '01064488320', '01064488320', 25, 1, 1, NULL, NULL, NULL, '$2y$10$/UjA0dNyG.qmJZMUqH.Cfe1xylohSAHYKWX8jf/px/xqMLQtJ1sU2', NULL, '2024-09-22 12:07:09', NULL, '2024-09-22 16:07:09', '2024-09-22 16:07:48', NULL),
(30, 'Noura adel', 'Mohamed_allam_atx@hotmail.com', '01005787116', '01005787116', 1, 1, 1, NULL, NULL, NULL, '$2y$10$R5Ld6LPiBTC1aP4XV8BQkez01TgFZmMA6TOiftlFLaxqSfQGT83qC', NULL, '2024-09-23 08:08:04', NULL, '2024-09-23 12:08:04', '2024-09-23 12:08:31', NULL),
(31, 'Abdin Mahmood', 'mahmoudabdan200@gmail.com', '01223098435', '01223098435', 15, 1, 1, NULL, NULL, NULL, '$2y$10$gt1GslTxH0JYpghyVh7oquxaK.bw32.ghtZQKHDMEOFDDCKe33WOO', NULL, '2024-09-29 13:19:56', NULL, '2024-09-29 17:19:56', '2024-09-29 17:20:26', NULL),
(32, 'حمد حسين', 'enghamad54@gmail.com', '01557398390', '0018255220122', 1, 1, 1, NULL, NULL, NULL, '$2y$10$9WCtc461hhoLG.9HyuRsF.WelPcIi8/cH5cgh2M5vzI9JvjaM/VIm', NULL, '2024-10-02 13:12:57', NULL, '2024-10-02 17:12:57', '2024-10-02 17:16:57', NULL),
(33, 'Amira', 'amira.bawady.student@pua.edu.eg', '01114892112', '01114892112', 10, 1, 1, NULL, NULL, NULL, '$2y$10$TSj22gNEgOwKDzRZdExSzONKlvZjcYmbvHypPcLrc.0AwKKKer0A.', NULL, '2024-10-02 21:30:37', NULL, '2024-10-03 01:30:37', '2024-10-03 01:30:58', NULL),
(34, 'Ahmed', 'Ah.abbady@gmail.com', '01110510003', '01110510003', 1, 1, 1, NULL, NULL, NULL, '$2y$10$py.Sz3Zk7hQBac6rKd3yh.8pGjl3jqZFMfDYv13YQVVlW1w8qr3XW', NULL, '2024-10-03 10:52:29', NULL, '2024-10-03 14:52:29', '2024-10-03 14:52:43', NULL),
(35, 'Engy R. Mansour', 'engyrafat114@gmail.com', '01096438256', NULL, 2, 1, 1, NULL, NULL, NULL, '$2y$10$DNatsLsZgezTEF6JWwNupeOycBfqBDAyQz2nb8t7mCPnbD2r2l1Oq', NULL, '2024-10-03 17:35:18', NULL, '2024-10-03 21:35:18', '2024-10-03 21:35:29', NULL),
(36, 'Azza', 'azzaalkadi@yahoo.com', '01000227580', '01000227580', 1, 1, 1, NULL, NULL, NULL, '$2y$10$cZbXKvUVKFORY9IoIta4peDLgQ.8F1cgS28gZ/aJTWvW4tEdQrKTe', NULL, '2024-10-04 11:47:24', NULL, '2024-10-04 15:47:24', '2024-10-04 15:47:48', NULL),
(37, 'احمد مصطفى', 'ahmed2flash@gmail.com', '01210009512', NULL, NULL, 1, 1, NULL, NULL, NULL, '$2y$10$dLEQp4pjc074ylS5tEHo4uUZgXS4Mwm0AdiBZ6nnRKlMGJdkFVS12', NULL, '2024-10-13 13:46:31', NULL, '2024-10-13 17:46:31', '2024-10-13 17:46:31', NULL),
(38, 'Abdelrhman Sabry', 'd.abdelrhmansabry@gmail.com', '1229660955', '01229660955', 2, 1, 1, NULL, NULL, NULL, '$2y$10$/FgNSPR5uZCDGhiUNif6RuR2H5nFFz5rrIb0V4kv668CGxHCPoQoq', NULL, '2024-10-15 04:54:51', NULL, '2024-10-15 08:54:51', '2024-10-15 08:55:47', NULL),
(39, 'منذر رأفت', 'monzer.soliman4@gmail.com', '01110559999', NULL, 2, 1, 1, NULL, NULL, NULL, '$2y$10$M/iveFPV9PMo1zflDuNOp.Olc477Zof2EGjcK9q.PMOEJqvYtNki2', NULL, '2024-10-15 05:22:36', NULL, '2024-10-15 09:22:36', '2024-10-15 09:22:52', NULL),
(40, 'مايسه حلمي', 'nadakhaled1_2@yahoo.com', '01099729958', '01099729958', 2, 1, 1, NULL, NULL, NULL, '$2y$10$xcPoMbMWdQ8qRVav2YCl/uOKEKV7yn/K2wtFp2tv031Xn2Yhg7mzC', NULL, '2024-10-19 09:40:18', NULL, '2024-10-18 18:12:26', '2024-10-19 13:40:18', NULL),
(41, 'بيتر سفين سملوك شمروخ', 'engpetersafeen89@gmail.com', '01285625391', '01285625391', 21, 1, 1, NULL, NULL, NULL, '$2y$10$XzZdVXd4ysYUitFWlnhxLuSHWZUhP4xDHLrfgDbSPek04ko1o6M5m', NULL, '2024-10-22 10:12:53', NULL, '2024-10-22 14:12:53', '2024-10-22 14:13:18', NULL),
(42, 'اسامة حسن فايق حسن', 'osamafayek@outlook.com', '01227202537', NULL, NULL, 1, 1, NULL, NULL, NULL, '$2y$10$.eugA2Uf9Qsix3t/Mop5aOo/A6W5EnHGcH53v6IBPKbr4VjQwVAB6', NULL, '2024-10-26 15:24:39', NULL, '2024-10-26 19:24:39', '2024-10-26 19:24:39', NULL),
(43, 'د.سارة', 'dr.sarah.ibrahim@hotmail.com', '01554585403', '01554585403', 4, 1, 1, NULL, NULL, NULL, '$2y$10$few13OCvJJtAQh/cjz1ZXuvQCtiOGzs83.cskv9uxPeuwHr78sPQ2', NULL, '2024-11-01 18:56:06', NULL, '2024-10-29 15:34:46', '2024-11-01 22:56:06', NULL),
(44, 'هيام نافل عبدالعاطي محمد', 'hayambob@gmail.com', '01097002406', '01097002406', 5, 1, 1, NULL, NULL, NULL, '$2y$10$PKUIcEGh9vxJPh66l8z5NOE3dEi0cyoJef4GTbgZkAIjKlCbvp/DS', NULL, '2024-11-01 23:17:30', NULL, '2024-11-02 03:17:30', '2024-11-02 03:18:07', NULL),
(45, 'سها علي علي', 'I.sha3rawy86@gmail.com', '01229303968', '01229303968', 1, 1, 1, NULL, NULL, NULL, '$2y$10$5qxjpUlS3Ld6nw36FsC6neR45cXwuGRptdDyN9sR/D0hHL5tEw5VG', NULL, '2024-11-04 13:25:59', NULL, '2024-11-04 18:25:59', '2024-11-04 18:26:29', NULL),
(46, 'احمد', 'ahmedzakaria40@yahoo.com', '01220102131', '01220102131', 3, 1, 1, NULL, NULL, NULL, '$2y$10$pKhyxkX4uu0XiY93c7Xp3.N2GbI2ej15sJVELrI32FnYbDQYOFINi', NULL, '2024-11-05 13:25:45', NULL, '2024-11-05 18:25:45', '2024-11-05 18:26:40', NULL),
(47, 'Nada Refaat', 'nadarefaat93@gmail.com', '01097257456', '01097257456', 2, 1, 1, NULL, NULL, NULL, '$2y$10$bSCwwUczvcpRnO4FVL9h9eS3ZnbUazFgC7Y17wA7YjKaw/9vArgxW', NULL, '2024-11-05 16:20:50', NULL, '2024-11-05 21:20:50', '2024-11-05 21:21:06', NULL),
(48, 'صلاح العطار', 'salah.elatar2003@gmail.com', '01092843332', '01092843331', 1, 1, 1, NULL, NULL, NULL, '$2y$10$ghiN4yB8yud2QrrXMuWqcu4GKLbl90dbF.Lxlvxy92yUfENNpZTs6', NULL, '2024-11-06 21:09:40', NULL, '2024-11-07 02:09:40', '2024-11-07 02:10:12', NULL),
(49, 'احمد هاشم', 'alhashme2025@gmail.com', '01118785700', '01118785700', 1, 1, 1, NULL, NULL, NULL, '$2y$10$upaNVOoFsRhgElSCxaENsOxazjKQJv2VG0pS9dpnThIh37UT08Fxa', NULL, '2024-11-08 17:44:08', NULL, '2024-11-08 22:44:08', '2024-11-08 22:45:03', NULL),
(50, 'Om Gana', 'soomasemsem89@gmail.com', '01552723930', '01286290458', 1, 1, 1, NULL, NULL, NULL, '$2y$10$MpgP6Zkbd6tQXgMu2nTPROxLv2LgaUEg71wIc0oQQ/.GBAHJHUGyS', NULL, '2024-11-10 04:54:16', NULL, '2024-11-10 01:36:05', '2024-11-10 09:54:16', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
