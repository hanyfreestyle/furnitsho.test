-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 09:02 AM
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
-- Dumping data for table `shopping_order_products`
--

INSERT INTO `shopping_order_products` (`id`, `order_id`, `product_id`, `variant_id`, `sku`, `name`, `price`, `regular_price`, `qty`) VALUES
(1, 1, 28, 966, '28-373171888', 'مراتب يانسن بلوماس - 195 سم -120 سم', 4828.00, 5680.00, 1.00),
(2, 2, 47, 3500, '47-473585956', 'مرتبة ديلوكس فوربد ارتفاع 25 سم - 200 سم -120 سم', 5117.00, 5815.00, 4.00),
(3, 2, 48, 3468, '48-415346643', 'مرتبة اكسترا فوربد ارتفاع 27 سم - 200 سم -160 سم', 8140.00, 9250.00, 1.00),
(4, 2, 406, NULL, '406-785626739', 'خداديه سوفت فوربد', 225.00, NULL, 12.00),
(5, 3, 9679, 9682, '9679-473162316', 'واقى مرتبة مضاد للماء - 120 سم', 450.00, NULL, 4.00),
(6, 3, 9679, 9688, '9679-473162316', 'واقى مرتبة مضاد للماء - 200 سم', 750.00, NULL, 1.00),
(7, 3, 47, 3500, '47-473585956', 'مرتبة ديلوكس فوربد ارتفاع 25 سم - 200 سم -120 سم', 5117.00, 5815.00, 4.00),
(8, 3, 48, 3468, '48-415346643', 'مرتبة اكسترا فوربد ارتفاع 27 سم - 200 سم -160 سم', 8140.00, 9250.00, 1.00),
(9, 3, 406, NULL, '406-785626739', 'خداديه سوفت فوربد', 225.00, NULL, 12.00),
(10, 4, 99, 2380, '99-253784819', 'مرتبة هابيتات كومفورت 29 سم - 190 سم -160 سم', 6290.00, 7400.00, 1.00),
(11, 5, 102, 2287, '102-473857671', 'مرتبة هابيتات كونتراكت - 190 سم -120 سم', 4722.00, 5555.00, 1.00),
(12, 6, 734, 4249, '734-299777961', 'فوربد لحاف مايكروفايبر 3 قطع مجوز - دابل', 1210.00, NULL, 1.00),
(13, 7, 102, 2307, '102-473857671', 'مرتبة هابيتات كونتراكت - 200 سم -120 سم', 4722.00, 5555.00, 4.00),
(14, 7, 23, 1058, '23-498848872', 'مرتبة يانسن كتراكت بيلوتوب ارتفاع 29 سم - 200 سم -180 سم', 8942.00, 10520.00, 1.00),
(15, 7, 361, 2935, '361-849595369', 'مخدة  فيرجن وندرلاند قماش ميكروفيبر - 120 سم', 380.00, NULL, 4.00),
(16, 7, 316, 5641, '316-182383656', 'خددية فايبر بيوتي بد اند بد - 1000 جرام', 155.00, NULL, 6.00),
(17, 7, 361, 2941, '361-849595369', 'مخدة  فيرجن وندرلاند قماش ميكروفيبر - 180 سم', 560.00, NULL, 1.00),
(18, 7, 10025, 10044, '10025-618647229', 'واقي فيبر هابيتات - 200 سم -180 سم', 733.00, NULL, 1.00),
(19, 7, 10025, 10040, '10025-618647229', 'واقي فيبر هابيتات - 200 سم -120 سم', 489.00, NULL, 4.00),
(20, 7, 641, 6265, '641-599169916', 'مراتب الدورا تطريه سوبر سوفت 5 سم - 200 سم -180 سم', 887.00, 985.00, 1.00),
(21, 8, 14, 1656, '14-275125586', 'مرتبة مارفي انجلندر ارتفاع 20 سم - 200 سم -120 سم', 5826.00, 6620.00, 2.00),
(22, 9, 8, 1803, '8-284574526', 'مرتبة سيزونال انجلندر ارتفاع 25 سم - 195 سم -160 سم', 6477.00, 7360.00, 1.00),
(23, 10, 816, 4051, '816-669829382', 'مراتب ريتش هوم ستار بيد 25 سم - 190 سم -90 سم', 1870.00, 2126.00, 3.00),
(24, 11, 816, 4051, '816-669829382', 'مراتب ريتش هوم ستار بيد 25 سم - 190 سم -90 سم', 1870.00, 2126.00, 3.00),
(25, 12, 6, 1854, '6-496363948', 'مرتبة انجلندر كلاسيك - 195 سم -120 سم', 4391.00, 4990.00, 2.00),
(26, 12, 295, 2160, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 200 سم -160 سم', 9562.00, 11250.00, 1.00),
(27, 13, 10025, 10032, '10025-618647229', 'واقي فيبر هابيتات - 195 سم -120 سم', 476.00, NULL, 2.00),
(28, 13, 9518, 11453, '9518-784696237', 'ريتش هوم خدادية ريش نعام - 1200 جرام', 375.00, NULL, 1.00),
(29, 13, 98, 2417, '98-756184994', 'مرتبة هابيتات دريم 32 سم - 195 سم -120 سم', 6545.00, 7700.00, 2.00),
(30, 13, 401, 4040, '401-667394442', 'مخدة فايبر رول فوربد - 120 سم', 385.00, NULL, 2.00),
(31, 14, 350, 2683, '350-766458238', 'مرتبة وندرلاند ريفيرا - 190 سم -120 سم', 3154.00, 3585.00, 1.00),
(32, 15, 350, 2683, '350-766458238', 'مرتبة وندرلاند ريفيرا - 190 سم -120 سم', 3154.00, 3585.00, 1.00),
(33, 16, 16, 1596, '16-225323567', 'مرتبة انجلندر فيسكوبيدك - 195 سم -160 سم', 12206.00, 13870.00, 1.00),
(34, 17, 129, 6870, '129-388763186', 'مرتبة هاي سليب جولد تايم - 200 سم -160 سم', 5644.00, 7526.00, 1.00),
(35, 18, 291, 2223, '291-616518883', 'مرتبة هابيتات بلاتينيوم 24 سم - 200 سم -200 سم', 6630.00, 7800.00, 1.00),
(36, 19, 663, 9325, '663-457272789', 'مراتب بيد مون هافي هاي كلاس 30 سم - 195 سم -150 سم', 6733.00, 7651.00, 1.00),
(37, 20, 295, 2163, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 200 سم -200 سم', 11900.00, 14000.00, 1.00),
(38, 21, 10, 1746, '10-623298786', 'مرتبة انجلندر ليدي - 195 سم -120 سم', 5254.00, 5970.00, 2.00),
(39, 22, 272, 1436, '272-435989187', 'مرتبة بريليانت انجلندر ارتفاع 38 سم - 195 سم -180 سم', 26215.00, 29790.00, 1.00),
(40, 23, 355, 2587, '355-658735916', 'مرتبة وندرلاند لاكشري 25 سم - 195 سم -120 سم', 4642.00, 5275.00, 2.00),
(41, 23, 355, 2605, '355-658735916', 'مرتبة وندرلاند لاكشري 25 سم - 200 سم -180 سم', 6965.00, 7915.00, 1.00),
(42, 24, 582, 10148, '582-397369527', 'مراتب لايف ماتريس بوكيت كمفي 25 سم - 200 سم -150 سم', 5820.00, 6848.00, 1.00),
(43, 25, 4, 1223, '4-669386114', 'مرتبة ماريوت يانسن ارتفاع 22 سم - 200 سم -100 سم', 4114.00, 4840.00, 2.00),
(44, 26, 54, 4787, '54-864917653', 'مرتبة اورانج المأمون - 190 سم -150 سم', 5808.00, 6600.00, 1.00),
(45, 27, 295, 2146, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 190 سم -160 سم', 9562.00, 11250.00, 1.00),
(46, 28, 73, 6477, '73-824343296', 'مرتبة تيوليب الدورا ارتفاع 32 سم - 195 سم -160 سم', 8784.00, 9760.00, 1.00),
(47, 29, 604, 4500, '604-559244997', 'مراتب ريتش هوم سوبر جولدن قطن 27 سم - 190 سم -120 سم', 4104.00, 4560.00, 2.00),
(48, 30, 357, 2520, '357-813526264', 'مرتبة وندرلاند امبريال 28 سم - 195 سم -170 سم', 9548.00, 10850.00, 1.00),
(49, 31, 16, 1597, '16-225323567', 'مرتبة انجلندر فيسكوبيدك - 195 سم -170 سم', 12971.00, 14740.00, 1.00),
(50, 31, 10016, 10021, '10016-928164149', 'مخدات سوبر ريلاكس - 170 سم', 545.00, NULL, 1.00),
(51, 31, 403, 8544, '403-191492693', 'مخدة سيلكي فوربد - 1500 جرام', 645.00, NULL, 2.00),
(52, 31, 411, 11896, '411-872659123', 'كفر مرتبة ميلتون بشكير  قطن فوربد - 170 سم', 970.00, NULL, 1.00),
(53, 31, 304, NULL, '304-958822597', 'خددية ميموري فوم إيطالي كونتور المأمون', 535.00, NULL, 2.00),
(54, 32, 155, 5578, '155-817467924', 'مرتبة بد اند بد ديلوكس - 195 سم -180 سم', 7048.00, 8010.00, 1.00),
(55, 33, 446, NULL, '446-556423527', 'كوفيرته فرو فوربد', 1.00, NULL, 1.00),
(56, 33, 640, 6289, '640-642357654', 'مراتب الدورا تطريه سوفت ارتفاع 5 سم - 200 سم -90 سم', 261.00, 290.00, 1.00),
(57, 34, 315, 5630, '315-229324346', 'مخدة فايبر بد اند بد - 120 سم', 288.00, NULL, 2.00),
(58, 35, 674, 5734, '674-719441623', 'مراتب بورتو ميراج ارتفاع 25 سم - 200 سم -90 سم', 2486.00, 2763.00, 8.00),
(59, 36, 37, 3636, '37-796154317', 'مرتبة برايم فوربد ارتفاع 30 سم - 195 سم -160 سم', 10045.00, 11415.00, 1.00),
(60, 37, 609, 5321, '609-331257185', 'مرتبة ريتش هوم كبنج بيد 30 سم - 190 سم -90 سم', 2001.00, 2223.00, 1.00),
(61, 38, 316, 5641, '316-182383656', 'خددية فايبر بيوتي بد اند بد - 1000 جرام', 155.00, NULL, 4.00),
(62, 39, 9679, 9685, '9679-473162316', 'واقى مرتبة مضاد للماء - 160 سم', 600.00, NULL, 1.00),
(63, 39, 9634, NULL, '9634-777991922', 'خدادية ميمورى فوم استاندر', 650.00, NULL, 1.00),
(64, 39, 12238, 12253, '12238-689669888', 'مرتبة اميريكان انجلندر ارتفاع 34 سم - 195 سم -160 سم', 14194.00, 16130.00, 1.00),
(65, 40, 272, 1443, '272-435989187', 'مرتبة بريليانت انجلندر ارتفاع 38 سم - 200 سم -160 سم', 23302.00, 26480.00, 1.00),
(66, 41, 357, 2532, '357-813526264', 'مرتبة وندرلاند امبريال 28 سم - 200 سم -170 سم', 9548.00, 10850.00, 1.00),
(67, 42, 295, 2160, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 200 سم -160 سم', 10462.00, 11250.00, 1.00),
(68, 43, 102, 2285, '102-473857671', 'مرتبة هابيتات كونتراكت - 190 سم -100 سم', 4417.00, 4750.00, 1.00),
(69, 44, 9379, 9504, '9379-936294852', 'كفرات ضد المياه هابيتات - 200 سم -180 سم -27 سم', 773.00, NULL, 1.00),
(70, 45, 385, NULL, '385-299815237', 'خدادية فايبر كروي فيرجن دبل نت 1000جم 70x50 فاميلي بد', 295.00, NULL, 2.00),
(71, 45, 11474, NULL, '11474-327961392', 'خدادية ميموري جيل 60x40 يانسن', 1250.00, NULL, 1.00),
(72, 45, 9634, NULL, '9634-777991922', 'خدادية ميمورى فوم استاندر', 650.00, NULL, 1.00),
(73, 46, 9669, 9672, '9669-899557141', 'واقى مرتبة فايبر - 120 سم', 310.00, NULL, 2.00),
(74, 47, 11950, 11951, '11950-192996695', 'بروتكتور كلاس-A الدورا - 90 سم', 305.00, NULL, 1.00),
(75, 47, 55, 4745, '55-726681858', 'مرتبة سيلفر المأمون ارتفاع 25 سم - 190 سم -90 سم', 4356.00, 4950.00, 1.00),
(76, 48, 11950, 11951, '11950-192996695', 'بروتكتور كلاس-A الدورا - 90 سم', 305.00, NULL, 1.00),
(77, 48, 55, 4745, '55-726681858', 'مرتبة سيلفر المأمون ارتفاع 25 سم - 190 سم -90 سم', 4356.00, 4950.00, 1.00),
(78, 49, 292, 1366, '292-494649222', 'مرتبة جوري يانسن - 190 سم -90 سم', 7762.00, 8820.00, 1.00),
(79, 50, 292, 1366, '292-494649222', 'مرتبة جوري يانسن - 190 سم -90 سم', 7762.00, 8820.00, 1.00),
(80, 51, 269, 906, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 195 سم -160 سم', 13077.00, 14860.00, 1.00),
(81, 52, 295, 2143, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 190 سم -120 سم', 7905.00, 8500.00, 1.00),
(82, 53, 269, 909, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 195 سم -200 سم', 16350.00, 18580.00, 1.00),
(83, 54, 269, 903, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 195 سم -120 سم', 9812.00, 11150.00, 1.00),
(84, 55, 295, 2151, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 195 سم -140 سم', 9067.00, 9750.00, 1.00),
(85, 56, 292, 1369, '292-494649222', 'مرتبة جوري يانسن - 190 سم -140 سم', 12074.00, 13720.00, 2.00),
(86, 57, 132, 6827, '132-587929641', 'مرتبة هاي سليب جالاكسي بوكيت - 195 سم -170 سم', 8763.00, 10954.00, 1.00),
(87, 58, 55, 4745, '55-726681858', 'مرتبة سيلفر المأمون ارتفاع 25 سم - 190 سم -90 سم', 4356.00, 4950.00, 1.00),
(88, 59, 272, 1434, '272-435989187', 'مرتبة بريليانت انجلندر ارتفاع 38 سم - 195 سم -160 سم', 23302.00, 26480.00, 1.00),
(89, 60, 295, 2143, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 190 سم -120 سم', 7905.00, 8500.00, 1.00),
(90, 61, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(91, 61, 46, 3509, '46-711252814', 'مرتبة كومباكت فوربد ارتفاع 25 سم - 190 سم -90 سم', 4290.00, 4875.00, 1.00),
(92, 62, 269, 896, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 190 سم -150 سم', 12267.00, 13940.00, 2.00),
(93, 63, 11964, 11975, '11964-119197929', 'مخدة فيبر الدورا - 200 سم', 405.00, NULL, 1.00),
(94, 64, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(95, 64, 46, 3509, '46-711252814', 'مرتبة كومباكت فوربد ارتفاع 25 سم - 190 سم -90 سم', 4290.00, 4875.00, 1.00),
(96, 65, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(97, 65, 46, 3509, '46-711252814', 'مرتبة كومباكت فوربد ارتفاع 25 سم - 190 سم -90 سم', 4290.00, 4875.00, 1.00),
(98, 66, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(99, 66, 46, 3509, '46-711252814', 'مرتبة كومباكت فوربد ارتفاع 25 سم - 190 سم -90 سم', 4290.00, 4875.00, 1.00),
(100, 67, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(101, 68, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(102, 69, 11964, 11975, '11964-119197929', 'مخدة فيبر الدورا - 200 سم', 405.00, NULL, 2.00),
(103, 70, 269, 903, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 195 سم -120 سم', 9812.00, 11150.00, 1.00),
(104, 71, 6, 1843, '6-496363948', 'مرتبة انجلندر كلاسيك - 190 سم -90 سم', 3291.00, 3740.00, 1.00),
(105, 72, 269, 896, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 190 سم -150 سم', 12267.00, 13940.00, 1.00),
(106, 73, 295, 2154, '295-491564536', 'مرتبه هابيتات هيفين 28 سم - 195 سم -170 سم', 11160.00, 12000.00, 1.00),
(107, 74, 692, 2089, '692-193227519', 'مراتب هابيتات ميموري 6 سم - 190 سم -120 سم', 3720.00, 4000.00, 2.00),
(108, 75, 269, 892, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 190 سم -90 سم', 7357.00, 8360.00, 1.00),
(109, 76, 29, 928, '29-321371391', 'مراتب سكاندي يانسن ارتفاع 25 سم - 190 سم -90 سم', 4638.00, 5270.00, 1.00),
(110, 77, 24, 1006, '24-138456687', 'مرتبة يانسن كليوباترا ارتفاع 24 سم - 190 سم -90 سم', 3115.00, 3540.00, 1.00),
(111, 78, 797, 4125, '797-618921539', 'فوربد لحاف قطن مخلوط 3 قطع مجوز - دابل', 1595.00, NULL, 1.00),
(112, 79, 467, NULL, '467-858834398', 'طقم مفرش شانيليا تركي فوربد', 2130.00, NULL, 1.00),
(113, 80, 467, NULL, '467-858834398', 'طقم مفرش شانيليا تركي فوربد', 2130.00, NULL, 1.00),
(114, 80, 421, NULL, '421-526111732', 'ملاية قطن ستان مجوز 5 قطع فوربد', 1065.00, NULL, 1.00),
(115, 81, 46, 3532, '46-711252814', 'مرتبة كومباكت فوربد ارتفاع 25 سم - 195 سم -200 سم', 9280.00, 10545.00, 3.00),
(116, 82, 70, 6578, '70-639878925', 'مرتبة ميلودي الدورا ارتفاع 26 سم - 195 سم -180 سم', 8130.00, 9565.00, 3.00),
(117, 83, 609, 5344, '609-331257185', 'مرتبة ريتش هوم كينج بيد 30 سم - 200 سم -120 سم', 3335.00, 3705.00, 1.00),
(118, 84, 394, 3751, '394-847217396', 'مرتبة ستار إسفنج فوربد ارتفاع 10 سم - 195 سم -110 سم', 2134.00, 2425.00, 1.00),
(119, 84, 5416, 5420, '5416-581284963', 'مراتب ريتش هوم  تطرية فايبر ارتفاع 10 سم - 110 سم', 740.00, NULL, 1.00),
(120, 85, 9599, 9613, '9599-151882294', 'ريتش هوم كوفر بجوانب معالج ضد الماء - 110 سم', 490.00, NULL, 1.00),
(121, 86, 14, 1641, '14-275125586', 'مرتبة مارفي انجلندر ارتفاع 20 سم - 190 سم -160 سم', 7762.00, 8820.00, 1.00),
(122, 87, 301, NULL, '301-542725796', 'خددية ميموري فوم كونتور المأمون', 1300.00, NULL, 1.00),
(123, 88, 37, 3620, '37-796154317', 'مرتبة برايم فوربد ارتفاع 30 سم - 190 سم -120 سم', 7564.00, 8595.00, 2.00),
(124, 89, 20, 1098, '20-218992369', 'مرتبة يانسن الماني قطن ارتفاع 25 سم - 190 سم -120 سم', 4506.00, 5120.00, 2.00),
(125, 90, 674, 5737, '674-719441623', 'مراتب بورتو ميراج ارتفاع 25 سم - 200 سم -120 سم', 3246.00, 3607.00, 2.00),
(126, 91, 364, 3270, '364-682589994', 'مخده ميموري سيتي فوم فيبر ريسيكل قماش بفته - 90 سم', 185.00, NULL, 1.00),
(127, 92, 385, NULL, '385-299815237', 'خدادية فايبر كروي فيرجن دبل نت 1000جم 70x50 فاميلي بد', 295.00, NULL, 4.00),
(128, 92, 800, NULL, '800-988968449', 'خددية فريش1000 جم 70x50 المأمون', 530.00, NULL, 2.00),
(129, 92, 407, 4026, '407-754687891', 'خداديه فلافي فوربد - 100 سم', 270.00, NULL, 2.00),
(130, 93, 292, 1369, '292-494649222', 'مرتبة جوري يانسن - 190 سم -140 سم', 12074.00, 13720.00, 1.00),
(131, 94, 414, NULL, '414-513272968', 'لحاف قطن ستان فوربد', 1810.00, NULL, 1.00),
(132, 95, 269, 902, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 195 سم -100 سم', 8175.00, 9290.00, 1.00),
(133, 96, 269, 893, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 190 سم -100 سم', 8175.00, 9290.00, 1.00),
(134, 97, 9660, 9661, '9660-946498613', 'لحاف فايبر - 220x180', 700.00, NULL, 1.00),
(135, 98, 293, 1339, '293-934531978', 'مرتبة يانسن بيدك - 190 سم -90 سم', 8950.00, 10170.00, 1.00),
(136, 99, 293, 1339, '293-934531978', 'مرتبة يانسن بيدك - 190 سم -90 سم', 8950.00, 10170.00, 1.00),
(137, 100, 293, 1339, '293-934531978', 'مرتبة يانسن بيدك - 190 سم -90 سم', 8950.00, 10170.00, 1.00),
(138, 101, 293, 1339, '293-934531978', 'مرتبة يانسن بيدك - 190 سم -90 سم', 8950.00, 10170.00, 1.00),
(139, 102, 293, 1339, '293-934531978', 'مرتبة يانسن بيدك - 190 سم -90 سم', 8950.00, 10170.00, 1.00),
(140, 103, 11964, 11966, '11964-119197929', 'مخدة فيبر الدورا - 100 سم', 230.00, NULL, 1.00),
(141, 104, 11964, 11965, '11964-119197929', 'مخدة فيبر الدورا - 90 سم', 215.00, NULL, 1.00),
(142, 105, 342, 3211, '342-262356588', 'مرتبة رومانس سيتي فوم - 195 سم -100 سم', 2508.00, 2850.00, 1.00),
(143, 106, 293, 1352, '293-934531978', 'مرتبة يانسن بيدك - 195 سم -150 سم', 14925.00, 16960.00, 1.00),
(144, 107, 101, 2330, '101-382193865', 'مرتبة هابيتات بودي ريست بلس 27 سم - 195 سم -160 سم', 8370.00, 9000.00, 1.00),
(145, 107, 100, 2357, '100-129559762', 'مرتبة هابيتات جولد - 195 سم -120 سم', 4185.00, 4500.00, 1.00),
(146, 108, 553, NULL, '553-854495912', 'عرض العرسان', 14950.00, 16076.00, 1.00),
(147, 109, 23, 1044, '23-498848872', 'مرتبة يانسن كتراكت بيلوتوب ارتفاع 29 سم - 195 سم -120 سم', 6169.00, 7010.00, 1.00),
(148, 110, 396, 8671, '396-765761321', 'بلوتوب طبقة تطرية فايبر فوربد - 200 سم -120 سم', 880.00, NULL, 1.00),
(149, 111, 396, 8671, '396-765761321', 'بلوتوب طبقة تطرية فايبر فوربد - 200 سم -120 سم', 880.00, NULL, 1.00),
(150, 112, 47, 3486, '47-473585956', 'مرتبة ديلوكس فوربد ارتفاع 25 سم - 195 سم -100 سم', 4299.00, 4885.00, 2.00),
(151, 112, 401, 4038, '401-667394442', 'مخدة فايبر رول فوربد - 100 سم', 335.00, NULL, 2.00),
(152, 113, 351, 2897, '351-475636192', 'مرتبة وندرلاند نيو ماريوت ارتفاع 15 سم - 190 سم -100 سم', 3317.00, 3770.00, 1.00),
(153, 114, 310, NULL, '310-642877853', 'خددية رقبة ميموري المأمون', 320.00, NULL, 2.00),
(154, 115, 678, 8156, '678-765682963', 'مراتب سبرينج اير لاتكس زون 18 سم - 200 سم -100 سم', 22941.00, 25490.00, 1.00),
(155, 116, 678, 8156, '678-765682963', 'مراتب سبرينج اير لاتكس زون 18 سم - 200 سم -100 سم', 22941.00, 25490.00, 1.00),
(156, 117, 315, 5629, '315-229324346', 'مخدة فايبر بد اند بد - 100 سم', 240.00, NULL, 1.00),
(157, 117, 316, 5641, '316-182383656', 'خددية فايبر بيوتي بد اند بد - 1000 جرام', 155.00, NULL, 1.00),
(158, 118, 293, 1349, '293-934531978', 'مرتبة يانسن بيدك 25 سم - 195 سم -100 سم', 10509.00, 11300.00, 1.00),
(159, 119, 292, 1367, '292-494649222', 'مرتبة جوري يانسن - 190 سم -100 سم', 9114.00, 9800.00, 1.00),
(160, 120, 269, 902, '269-794342379', 'مرتبة رويالتي يانسن بارتفاع 35 سم - 195 سم -100 سم', 8640.00, 9290.00, 1.00),
(161, 121, 46, 3526, '46-711252814', 'مرتبة كومباكت فوربد ارتفاع 25 سم - 195 سم -140 سم', 6538.00, 7430.00, 1.00),
(162, 122, 477, 11646, '477-677636673', 'سرير حديد مع مرتبة ارتفاع 10 سم فوربد - 100 سم', 4380.00, NULL, 1.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
