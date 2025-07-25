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
-- Dumping data for table `shopping_order_addresses`
--

INSERT INTO `shopping_order_addresses` (`id`, `name`, `city`, `address`, `phone`, `phone_option`, `notes`) VALUES
(1, 'Kareem Muhammad', 'القاهرة', 'Villa 100 - Street 12\r\nالعبور - الحى الثانى - محلية 34', '01151571160', NULL, NULL),
(2, 'طه محمد صلاح الدين', 'القاهرة', 'كمبوند مون سيتى عماره  ٦ شقه ٦٠٢ طريق مصر اسماعيليه الصحراوى بجوار  جمعيه امحتب مدينه السلام القاهره', '01555650185', '01004809387', NULL),
(3, 'طه محمد صلاح الدين محمد', 'القاهرة', 'كمبوند مون سيتى عماره ٦ شقه ٦٠٢  طريق مصر اسماعيليه الصحراوى بجوار جمعيه امحتب السلام القاهره', '01555650185', '01004809387', NULL),
(4, 'Ayah mousa', 'الإسكندرية', 'الاسكندريه \r\nالشلالات شارع صلاح مصطفى تفرع خصوصي ٣٠ عماره العبور الدور 6 شقه 67 \r\nبجوار مستشفى اسكندريه للاذن', '01115856188', NULL, NULL),
(5, 'تتيت', 'الإسكندرية', 'شبرامنت hsbhhjsjjw', '01223292806', NULL, NULL),
(6, 'Tamer', 'القليوبية', 'Ghdhejkjdkrkrki4krdkej', '01223292806', NULL, NULL),
(7, 'سامح الاباصيري حسن', 'الجيزة', '573 ال 2000 قطعة ،التوسعات الشمالية، 6 اكتوبر', '01202277333', '01009484593', NULL),
(8, 'احمد زكريا احمد زهير', 'الجيزة', '6 اكتوبر طريق الوحات الفردوس جيش جيزه', '01009846112', NULL, NULL),
(9, 'أيمن عبد العزيز صبح', 'البحيرة', '4 شارع خالد بن الوليد/ ابو المطامير/ البحيرة', '01001836630', NULL, NULL),
(10, 'د.محمد غانم محمد عبدالناصر', 'المنيا', 'محافظة المنيا \r\nالمنيا الجديدة \r\nالحي الخامس \r\nبجوار موقف قستور\r\nاما مصنع بري هوم للاخشاب', '01010840769', '01009049445', NULL),
(11, 'د.محمد غانم محمد عبدالناصر', 'المنيا', 'محافظة المنيا \r\nالمنيا الجديدة \r\nالحي الخامس \r\nبجوار موقف قستور\r\nامام مصنع بري هوم للاخشاب', '01010840769', '01009049445', NULL),
(12, 'حسام', 'دمياط', 'دمياط فارسكور ميت الشيوخ كوبري هلالي منزل ا احمد شكري سليم', '01030257315', '01147379513', NULL),
(13, 'Hesham el nukbassy', 'الجيزة', '21 شارع احمد كامل اول فيصل امام معرض الابيض الجهة المقابلة الدور الرابع شقة 11 الباب الخشبي عند هشام\r\n\r\nلو من ناحية الهرم هيكون شارع المحافظة اخر عماره في الشارع عماره 21 الرابع شقة 11 الباب الخشبي عند هشام\r\n\r\nالافضل تيجي من فيصل عشان تخش و تعرف تركن', '01200079580', '01289669769', NULL),
(14, 'Bassma Elmongy', 'دمياط', 'دمياط - دمياط الجديده - شارع ١٠٠ - الصحبجيه', '01000961138', '01000961103', NULL),
(15, 'سهام المنجي', 'دمياط', 'دمياط - دمياط الجديده - شارع ١٠٠ - شارع الصحبجيه', '01000961149', '01000961138', NULL),
(16, 'Rehab Ahmed', 'مطروح', 'الساحل الشمالي قريه علاء الدين الكيلو ٧٣.٥ شاليه رقم ٤ د شرقي الدور الأول', '01067622779', NULL, NULL),
(17, 'وسام حسين', 'الجيزة', '475 مدينة الخمائل المرحلة الثالثه ب الدور الاول شقه ١٢\r\nالشيخ زايد', '01025078466', '01114939529', NULL),
(18, 'Mohammad Makkawy', 'القاهرة', 'Villa 126 East elshrouk, 2', '01285583006', NULL, NULL),
(19, 'محمد احمد السيد', 'القاهرة', 'المقطم - شارع الجامعة الحديثة', '01156766611', '01015793576', NULL),
(20, 'نجاه عبد الحميد', 'الجيزة', 'مدينه ٦ أكتوبر الحي المتميز شارع محمد ناجى عمارة ٣٦ أ الدور الرابع و الاخير لا يوجد بكل دور سوى شقه واحدة فقط', '01098844387', '01281501818', NULL),
(21, 'ياسمين كمال محمد عبدالرحمن', 'القاهرة', '٣١ ك جاردينيا هايتس اتنين \r\nالدور الاول', '01022229146', '01000097109', NULL),
(22, 'تجربة', 'الغربية', 'اليم ،تياتيت', '01014090880', NULL, NULL),
(23, 'Amgad Eldesouky', 'السويس', 'العين السخنه قريه ايلمونت الجلاله قبل مدينه الجلاله مباشره', '01229903406', NULL, NULL),
(24, 'دينا كامل', 'القاهرة', 'القاهرة الجديدة، التجمع الخامس، المستثمرين الجنوبية عند الجامعة الامريكية ومول بوينت ناينتي \r\n\r\nضاحية الشرق للتأمين، عمارة ٨٢ الدور التالت شقة ٢٢', '01022390323', NULL, NULL),
(25, 'سلمى سامح شوقي عبدالمحسن', 'الدقهلية', 'المنصوره .. دكرنس .. العزازنه ..  بجوار المدرسه الإعداديه', '01015132219', '01015141791', NULL),
(26, 'د.زينب حامد', 'الجيزة', 'اكتوبر الحي 11 منطقة 21 عمارة 35 شقه 3', '01013207851', '01032528845', NULL),
(27, 'محمد حموده مراد', 'البحيرة', 'البحيره مركز رشيد قرية ديبي مسجد الزاويه', '01140134759', '01227807702', NULL),
(28, 'Abdo Bakry', 'القاهرة', 'موسي بن نصير\r\n7', '01145720720', NULL, NULL),
(29, 'اسماء رمضان محمد', 'الدقهلية', 'محافظة الدقهلية مركز المنصوره \r\nعزبه بلجاي أمام منزل النور', '01008847240', '01008305822', NULL),
(30, 'احمد جمال عبدالله', 'الجيزة', 'عمارة ٦١ تعاونيات الحى ١١ -الشماليات اكتوبر', '01115163696', NULL, NULL),
(31, 'السيد محمد عمر', 'الإسكندرية', 'الاسكندرية سموحة عمارات سوميد ٢ شقة ٢٠٩ بجوار كوبري ١٤ مايو ومستشفي الاوعية للدموية و القدم السكري', '01221991500', '01550205027', NULL),
(32, 'شاليمار عبدالله', 'القاهرة', '٢٥شارع الميرغني مصر الجديدة الدور الأرضي شقه ١ امام قصر الاتحاديه', '01122020220', '01033660066', NULL),
(33, '‪Rasha Alaa‬‏', 'سوهاج', 'سوهاج اخميم الصوامعه شرق\r\n٥', '01027799513', '01027799513', NULL),
(34, 'أسماء', 'القاهرة', '٤ عمارات المقاولون العرب - المنطقة ١١ الحي ٨ مدينة نصر (آخر ش مصطفى النحاس بالقرب من مسجد المؤمن المهيمن المعصراوي سابقا وعمارات التوفيقية)', '01551883816', NULL, NULL),
(35, 'Mahmoud Hafez', 'أسوان', 'غرب سهيل ، اسوان ، بجوار فندق كاتو وايدي', '01028862996', NULL, NULL),
(36, 'محمد جلال علي سعد', 'الغربية', 'طنطا شارع الإمام محمد عبده المتفرع من شارع سليمان بالنحاس امام كنيسة مارجرجس برج الزراعيين الدور الثالث شقة تسعة امام سوبر ماركت الكوثر', '01026811120', NULL, NULL),
(37, 'Abdelgalil Rady', 'القاهرة', '15st, elkhamssen, elnozha\r\n12', '01061096148', NULL, NULL),
(38, 'Gasser Elmaghraby', 'القاهرة', 'شارع الخمسين - الشطر الثالث عشر - زهراء المعادي\r\nعماره رقم ٨٧/١١ الدور السابع شقة رقم ٧٥\r\nاسفل العقار البنك الاهلي فرع الخمسين', '01002131165', '01003456055', NULL),
(39, 'Yasmine mohammed', 'القاهرة', 'حلوان مدينه ١٥ مايو مجاوره 11 حى ح عماره 2 شقه 4', '01003741055', NULL, NULL),
(40, 'عبدالرحمن سعيد أبوزيد حماد', 'الأقصر', 'ش مشمش المتفرع من التليفزيون \r\nفى نص الشارع عمارة جنب محل المدينة المنورة للادوات المنزلية ومحل مريم\r\n الدور الرابع الشقة على ايدك الشمال انت وطالع', '01095563633', '01555566836', NULL),
(41, 'الحسين عادل عبد الحميد', 'قنا', 'قنا، ابو تشت ، السليمات ، نجع ابو قريع', '01090136897', '01140322738', NULL),
(42, 'علاء', 'القليوبية', 'سكن مصر العبور الجديدة', '01005543075', NULL, NULL),
(43, 'mohamed ez', 'الجيزة', '1341 ahvu 15 pd 4 2', '01114877385', NULL, NULL),
(44, 'حسين كامل', 'القاهرة', 'القاهرة-المقطم\r\nشارع المقطم قطعه 5262  الدور الاول بعد فندق مونت كايرو', '01006942368', NULL, NULL),
(45, 'محمود داود', 'أسوان', 'اسوان شارع مصر للطيران امام جمعية السلطان ابو العلا', '01065456650', '01129566776', NULL),
(46, 'محمود مرزوق', 'الجيزة', '٢٠ ش محمد يوسف متفرع من شارع الدكتور لاشين فيصل أمام مدرسة المستقبل للغات الدور الرابع', '01001148445', '01553700750', NULL),
(47, 'كريم درويش', 'الإسكندرية', 'وصف العنوان بالتفصيل وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(48, 'كريم درويش', 'الإسكندرية', 'وصف العنوان بالتفصيل وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(49, 'احمد عبادى', 'القاهرة', 'وصف العنوان بالتفصيل', '01110510003', NULL, NULL),
(50, 'احمد عبادى', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(51, 'Mostafa Omran', 'القليوبية', 'Obour\r\n42 العبور تست نست تست تست تست', '01555957585', NULL, NULL),
(52, 'Test test', 'القاهرة', '1341 f6 distr', '01114877385', NULL, NULL),
(53, 'Mostafa Omran', 'القليوبية', 'Obour\r\n42 test test test', '01555957585', NULL, NULL),
(54, 'Mostafa Omran', 'البحر الأحمر', 'Obour\r\n42     test    test    test    test    test', '01555957585', NULL, NULL),
(55, 'Mostafa Omran', 'القليوبية', 'Obour\r\n42 test tets', '01555957585', NULL, NULL),
(56, 'motest TEstmo', 'الجيزة', 'saSAS\r\n12jklhjlhj jhjkhjb hjhjb jhjkn', '01010101010', '01010101010', NULL),
(57, 'Mostafa Omran', 'الإسكندرية', 'Obour\r\n42 tes test test test', '01555957585', NULL, NULL),
(58, 'test test', 'الجيزة', '1341 2 distr', '01114877385', NULL, NULL),
(59, 'وديد فوزي', 'القاهرة', 'Ahmed El-Sawy, Nasr City, Cairo\r\nرقم العمارة 54\r\nالدور الأول شقة 3', '01276257444', NULL, NULL),
(60, 'مجدى عباس', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(61, 'test test', 'القاهرة', '1341\r\n2 maadi', '01114877385', NULL, NULL),
(62, 'Mos AYm', 'القاهرة', 'madii, maaddi', '01010101010', NULL, NULL),
(63, 'مجدى عباس', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(64, 'test test', 'القاهرة', '1341 maadi\r\n\r\n2', '01114877385', NULL, NULL),
(65, 'test test', 'القاهرة', '1341\r\n2maadi', '01114877385', NULL, NULL),
(66, 'test test', 'القاهرة', '1341\r\n2 maadi', '1114877385', NULL, NULL),
(67, 'test test', 'القاهرة', '1341\r\n2maadi', '01114877385', NULL, NULL),
(68, 'test test', 'القاهرة', '1341\r\n2maadi', '01114877385', NULL, NULL),
(69, 'اسلام درويش', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(70, 'Mostafa Omran', 'الجيزة', 'Obour\r\n42 test test test', '01555957585', NULL, NULL),
(71, 'mohamed ez', 'القاهرة', '1341\r\n2maadi', '01114877385', NULL, NULL),
(72, 'Moeuiqtyfd AY', 'القاهرة', 'maqsxwasbnman,dii', '01080079670', NULL, NULL),
(73, 'Mostafa mohamed', 'القاهرة', 'madii\r\nmaaddi', '01010101010', NULL, NULL),
(74, 'د حسام جزر', 'البحيرة', 'ابو حمص -البحيرة-صيدلية الايمان', '01114892112', '01097111127', NULL),
(75, 'ظواهر كونية', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(76, 'كريم عباس', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(77, 'خالد عباس', 'القاهرة', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(78, 'عمرو رجب', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(79, 'يوسف درويش', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(80, 'محمود الضاوى', 'القاهرة', 'وصف العنوان بالتفصيل *', '01221563252', NULL, NULL),
(81, 'Mostafa Omran', 'أسوان', 'Obour\r\n42 تاتنلاتتاتباتبابت', '01555957585', NULL, NULL),
(82, 'Mostafa Omran', 'الأقصر', 'Obour فثسف فثفءلؤف لؤاري\r\n42', '01555957585', NULL, NULL),
(83, 'Engy R. Mansour', 'الجيزة', '6 اكتوبر طريق مول مصر كومبوند لافيدا البستان فيلا حنان 18 علي 20005', '01096438256', '01094385207', NULL),
(84, 'سامح محمد', 'الجيزة', 'الجيزة ٦ اكتوبر طريق السلام امام جامعة ام اس اية الحي الاول المجاورة السابعة عمارة الوفاء ١٣١٣ شقة ١٩', '01096708397', '01013147664', NULL),
(85, 'سامح محمد', 'الجيزة', 'الجيزة ٦ اكتوبر طريق السلام امام جامعة ام اس اية الحي الاول المجاورة السابعة عمارة الوفاء ١٣١٣ شقة ١٩', '01096708397', '01013147664', NULL),
(86, 'ايمان انور', 'الإسكندرية', '١١ شارع الكنيسة الانجليزية ستانلى\r\nفوق صيدلية د محمد عميرة\r\nالدور الرابع شقة ١١', '01000114325', '01007050186', NULL),
(87, 'احمد كمال', 'الشرقية', 'الحسينية شارع السرايجة', '01068827345', NULL, NULL),
(88, 'امنيه مصطفي عبد المنعم', 'الشرقية', 'فاقوس شرقيه \r\nمساكن احمد حلمي عماره 13\r\nالدور الاول', '01093369924', '01019947747', NULL),
(89, 'سامح عبدالهادي', 'الدقهلية', 'عزبة الشال-شارع الرمل-اول تقاطع يمين-اول تقاطع شمال من عند اولاد ابو شنب للجملة-اخر بيت على الشمال', '01098857083', '01018747160', NULL),
(90, 'Kenzie sultan', 'الجيزة', 'الشيخ زايد ،كمباوند حدايق المهندسين ، عمارة ٤٣٢، الدور ال٣، شقة ١٠', '01026602406', NULL, NULL),
(91, 'احمد مصطفى', 'القاهرة', '7 شارع البحرين -متفرع من شارع الحجاز -امام بوابة المريلاند -مصر الجديدة -القاهرة', '01210006512', NULL, NULL),
(92, 'هبه القمري', 'الإسكندرية', 'شارع الملك كومباند مارسيليا فلورانس المنتزة برج نازلي ١ الدور الأول شقه ٣ فوق بنك مصر', '01097745977', '01050750180', NULL),
(93, 'motest TEstmo', 'القاهرة', 'saSAShjjhjkhj khgkgkhg cccjhlhj', '01010101010', '010101010100', NULL),
(94, 'motest TEstmo', 'القاهرة', 'saSAS hbkbhkhgkhg hjkjlh', '01010101010', NULL, NULL),
(95, 'Mostafa Omran', 'القاهرة', 'Obour\r\n42 jsj jsj jsj jsjsj j', '01555957585', NULL, NULL),
(96, 'mohamed ez', 'القاهرة', '1341\r\n2maadi', '01114877385', NULL, NULL),
(97, 'motest TEstmo', 'القاهرة', 'nnnnn                             kljjhjlhjhjh lkjhlhljhljh          kjkjkjklnn  mmmmm kjjjj', '01010101010', '01010101010', NULL),
(98, 'هانى درويش', 'القاهرة', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(99, 'هانى محمد محم ددرويش', 'القاهرة', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(100, 'هانى محمد محم ددرويش', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(101, 'هانى محمد محم ددرويش', 'الإسكندرية', 'صف العنوان بالتفصيل', '01221563252', NULL, NULL),
(102, 'هانى محمد محم ددرويش', 'الإسكندرية', 'وصف العنوان بالتفصيل', '01221563252', NULL, NULL),
(103, 'Mostafa Omran', 'القاهرة', 'Obour\r\n42\r\nTest', '01555957585', NULL, NULL),
(104, 'Mostafa Omran', 'القاهرة', 'Obour\r\n42تااىلةةت', '01555957585', NULL, NULL),
(105, 'تقيمحمد جاد', 'القاهرة', 'العبورنناتانتلااهةىلب', '01146926482', NULL, NULL),
(106, 'عمرو رضا', 'القاهرة', 'القاهره العبور نجيب محفوظ', '01222927631', '01002329778', NULL),
(107, 'مايسه حلمي محمد خليل', 'الجيزة', 'الجيزة، اكتوبر، طريق الواحات، كومباوند دجلة بالمز، برج F646، الدور الثاني، شقة 202', '01099729958', '01098940821', NULL),
(108, 'نجوي علام', 'الغربية', 'المحله الكبري.منشية البكري . شارع مكة المكرمة المتفرع من شارع مستشفي الصفوه امام مسجد الحق', '01211491210', NULL, NULL),
(109, 'تيست تيست تيست', 'القاهرة', 'اختباراختباراختباراختباراختباراختباراختباراختباراختبار', '01222222222', NULL, NULL),
(110, 'المصطفى محمود مدكور', 'القاهرة', '٥ حارة الفقي الأميرية البلد بعد مصنع سيما أمام شركة المياه على ناصية الحارة وايت هورس للنقل', '01006313461', NULL, NULL),
(111, 'المصطفى محمود مدكور', 'القاهرة', '٥ حارة الفقي الأميرية البلد بعد مصنع سيما أمام شركة المياه على ناصية الحارة وايت هورس للنقل', '01006313461', NULL, NULL),
(112, 'بيتر سفين سملوك شمروخ', 'قنا', 'أمام مدرسة الاعدادية الجديدة خلف السنترال\r\nنجع حمادى\r\nمحافظة قنا', '01285625391', NULL, NULL),
(113, 'تاتانالتنل', 'الجيزة', 'خاخخغعخعغخعغعغخغعخعخخ', '01000001122', NULL, NULL),
(114, 'ياسمين مشعل', 'القاهرة', '10 جمال الدين قاسم،مدينه نصر،المنطقه الثامنه،امام صيدليه حياه،بجوار كافيه نوح، الدور الرابع يمين الاسانسير، اؤجو الاتصال عند الوصول', '01005839313', '01126167847', NULL),
(115, 'د. سارة إبراهيم', 'الإسكندرية', '٢ ش محمود صدقي، سيدي بشر بحري، الأسكندرية - \r\nمتفرع من ش جمال عبد الناصر قبل النفق والبنزينة، علي قمة الشارع توكيل سامسونج،\r\nآخر الشارع العمارة علي اليمين', '01554585403', NULL, NULL),
(116, 'د. سارة إبراهيم', 'الإسكندرية', '٢ ش محمود صدقي، سيدي بشر بحري، الأسكندرية - \r\nمتفرع من ش جمال عبد الناصر قبل النفق والبنزينة، علي قمة الشارع توكيل سامسونج،\r\nآخر الشارع العمارة علي اليمين', '01554585403', '5504661', NULL),
(117, 'Hanan Yasser', 'الإسكندرية', 'الإسكندرية العجيمي البيطاش شارع مستشفى صلاح العوضي عمارة 5', '01279624229', '01211177824', NULL),
(118, 'mohamed ez', 'القاهرة', '1342 khzan st', '01114877385', NULL, NULL),
(119, 'Mostafa Omran', 'القليوبية', 'Obour\r\n42 لاللنبنبتبتنب', '01555957585', NULL, NULL),
(120, 'mostafa omran', 'القاهرة', ',mfkldsfkjldskfkl;sndfklsldfsd;flkhkj hhgkjg', '01555957585', NULL, NULL),
(121, 'Nada Refaat', 'الجيزة', 'الشيخ زايد الحي الخامس مجاوره ٢ فيلا ٢٢٢ خلف البنك الاهلي', '01097257456', '01018046003', NULL),
(122, 'Om Ganaao', 'القاهرة', '19شارع معهد ناصر برج 4الدور 28 شقه 17', '01552723930', '01151923410', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
