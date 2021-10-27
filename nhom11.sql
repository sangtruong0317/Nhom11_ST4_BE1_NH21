-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 20, 2021 lúc 04:17 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom11`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(111, 'Apple'),
(112, 'Oppo'),
(113, 'Samsung'),
(114, 'XiaoMi'),
(115, 'Nokia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `images`, `description`, `feature`, `create_at`) VALUES
(1, 'Iphone 12 Pro Max 256GB', 111, 122, 43990000, 'ip12promax.jpg', 'iPhone 12 Pro Max chính là mẫu điện thoại cao cấp nhất thuộc dòng iPhone 12 Series được thiết kế cạnh phẳng giống như iPhone 4 và iPhone 5 thời xưa. Tuy nhiên, iPhone 12 này mang trên mình bộ khung sử dụng vật liệu thép không gỉ chuyên dụng trong ngành hàng không, quy trình đúc và ép phun kiểu mới cho độ bền cứng cáp, bền bỉ.', 1, '2021-10-20 04:16:16'),
(2, 'AirPods 2 Apple MV7N2\r\n', 111, 124, 4490000, 'airpods.jpg', 'Tai nghe Bluetooth AirPods 2 Apple MV7N2 Trắng vẫn giữ cho mình thiết kế hiện đại, cao cấp, hợp thời trang.', 0, '2021-10-20 04:16:16'),
(3, 'Macbook Pro 13 inch 2020', 111, 123, 49000000, 'mac.jpg', 'Là chiếc máy “con cưng” của Apple được trang bị tất cả những gì tốt nhất với con chip mạnh mẽ, Apple cho biết nếu bạn nâng cấp từ MacBook Pro 13 inch sử dụng CPU lõi tứ lên thì hiệu năng tăng tới 2.8 lần. Đồ họa tích hợp Iris Plus mới cũng cho hiệu năng cao hơn tới 80% so với phiên bản năm ngoái.', 0, '2021-10-20 04:16:16'),
(4, 'Apple TV 4K 32GB', 111, 126, 3990000, 'appletv4k.jpg', 'Thiết bị kết nối thông minh Apple TV 4K Kết nối iPhone, iPad, Macbook lên TV 4K qua WiFi Stream phim, ảnh, nhạc từ iPhone, iPad, Macbook lên TV 4K Kết nối Wi-Fi & Ethernet Tích hợp Apple AirPlay & iCloud Hỗ trợ độ phân giải 4K HDR (UltraHD) qua HDMI Bộ nhớ 32GB / 64GB 64-bit A10X Fusion Chip Đi kèm Siri Remote Control.', 0, '2021-10-20 04:16:16'),
(5, 'Apple Watch Series 6 GPS 40MM Blue Aluminum Case With Deep Navy Sport Band', 111, 125, 11400000, 'watchapp.jpg', 'Vẫn là ngôn ngữ thiết kế cũ nhưng Apple Watch S6 vẫn thu hút 1 lượng lớn quan tâm từ người dùng trên toàn thế giới. Mẫu smartwatch 2020 được Apple giới thiệu như là một thiết bị y tế cá nhân đã được cải tiến, bổ sung thêm nhiều tính năng thông minh, hãng cũng tiết lộ Apple Watch Series 6 năm nay sẽ hướng đến sức khỏe và nhu cầu người tiêu dùng hơn bao giờ hết và đây sẽ là sản phẩm cần thiết cho bạn trong tình hình đại dịch toàn cầu năm nay.', 1, '2021-10-20 04:16:16'),
(6, 'Nokia 8.3 5G', 111, 122, 10990000, 'dtnka.jpg', 'Nokia 8.3 được trang bị con chip Snapdragon 765G tích hợp modem 5G hỗ trợ đa băng tần, giúp Nokia 8.3 trở thành thiết bị đầu tiên có khả năng kết nối 5G trên toàn cầu ', 1, '2021-10-20 04:16:16'),
(7, 'Nokia 5.3', 111, 122, 2890000, 'dtnka2.jpg', 'Nokia 5.3 gây ấn tượng bởi màn hình cực rộng lên đến 6.55 inch cung cấp một không gian hiển thị thoáng đãng cho bạn thoải mái chơi game hay xem video.', 0, '2021-10-20 04:16:16'),
(8, 'Tai nghe EP Kanen IP-225', 111, 124, 82000, 'nghenka.jpg', 'Tai nghe phối màu trang nhã, hợp thời trang. Tương thích tốt với nhiều dòng điện thoại. Tai nghe dạng nút giúp cách âm tốt với bên ngoài. Có nút ấn nhận cuộc gọi, ngừng/chơi nhạc, tăng/giảm âm lượng. Dây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 0, '2021-10-20 04:16:16'),
(9, 'Nokia C2 16GB Ram 1GB', 111, 122, 1290000, 'dtnka3.jpg', 'Nokia C2 16GB RAM 1GB là một smartphone thuộc phân khúc giá rẻ nhưng thiết kế kế và tính năng thì không thua kém bất cứ smartphone tầm trung nào', 1, '2021-10-20 04:16:16'),
(10, 'Nokia 3.2 16Gb', 111, 122, 1290000, 'dtnka4.jpg', 'IPS LCD, 6.2\", HD+ Hệ điều hànhAndroid 9 Pie (Android One) Camera sau13 MP Camera trước5 MP CPUQualcomm Snapdragon 429 4 nhân 64-bit RAM2 GB Bộ nhớ trong16 GB Thẻ nhớ ngoàiMicroSD, hỗ trợ tối đa 400 GB SIM2 Nano SIM, Hỗ trợ 4G Dung lượng pin4000 mAh', 1, '2021-10-20 04:16:16'),
(1245, 'Smart Tivi Xiaomi 75inch 4K HDR - TV754S', 114, 126, 24995000, 'tvxiaomi.jpg', 'Tivi Xiaomi TV4s 75inch nhập khẩu do Tivixiaomiphân phối. Giao diện full Tiếng Việt Bảo hành lỗi đổi mới trong tháng đầu sử dụng Hotline .888 để được giá ship rẻ + Chipquad-core,vi xử lý 64-bithỗ trợ trình chiếuhình ảnh độngcó độ phân giảicao. + Độ phân giải , tấm nền IPS. Bảo hành lỗi đổi mới trong 1 tháng đầu sử dụng + Tái tạo màu sắc tuyệt vời, công nghệ HDR + Viền kim loại sang trọng tạo điểm nhấn cho phòng khách của bạn + Tích hợp sẵn khá nhiều chuẩn kết nối như HDMI , USB , VGA,cổng mạng Ethernet, cổng kết nối ầm thanh và kết nối ăng ten. + MIUI TV OS quen thuộc với kho ứng dụng của HĐHAndroid khổng lồ + Backlight: edge-lit + Đèn nền thông minh: 10 phân vùng thông minh + Động Backlight: Hỗ trợ + Độ bão hòa màu cao: Hỗ trợ + Góc nhìn: 178 [DEG.] + Năng động đáp ứng: 8 ms + Độ tương phản tĩnh: 5000: 1 + Refresh Rate:60HzCPU:64-Wei Cortex A53 quad-core GHzGPU:Mali-T830 MP2 lên đến 750MHz + Bộ nhớ:2 GBFlash Memory:8GB #tivi #tivixiaomi# #tivi75inch #tivi75inch #hdr', 0, '2021-10-20 04:16:16'),
(1552, 'Laptop Xiaomi Pro 15.6 i7-10510U Processor NVIDIA GeForce MX250 Graphic Card DDR4 (16GB/1TB)', 114, 123, 32231000, 'laptop.jpg', 'Bộ xử lý Intel Core thứ 10: Được trang bị bộ xử lý Intel Core i7 thế hệ thứ 10, tần số lên tới 4.9 GHz và cải thiện 7% -10% về hiệu suất, để dễ dàng xử lý ứng dụng quy mô lớn và nhiều tác vụ, để làm việc và học tập hiệu quả.\r\nNâng cấp Card đồ họa GeForce MX250: Trang bị card đồ họa hiệu năng cao TDP NVIDIA GeForce MX250 và áp dụng kiến ​​trúc NVIDIA Pascal, công cụ đồ họa mạnh mẽ và công nghệ thế hệ mới, để mang lại hình ảnh rõ ràng và sống động và trải nghiệm chơi game mượt mà.\r\nHệ thống làm mát ống dẫn nhiệt kép: Ống dẫn nhiệt kép làm tăng diện tích dẫn nhiệt và giảm nhiệt hiệu quả, để đảm bảo hiệu suất của bộ xử lý và card đồ họa.', 1, '2021-10-20 04:16:16'),
(1563, 'Samsung Galaxy M51', 113, 122, 8090000, 'm51.jpg', 'Ấn tượng ban đầu với màn hình của Galaxy M51 là kiểu màn hình Infinity-O rộng 6.7 inch. Kiểu thiết kế này đưa camera selfie thu gọn hơn chỉ bằng một hình tròn nhỏ cùng thiết kế màn hình tràn viền làm tăng khả năng hiển thị hình ảnh hơn.\r\n\r\nNgoài ra, máy còn sở hữu công nghệ màn hình Super AMOLED Plus mang đến chất lượng hiển thị sắc nét, hình ảnh tươi tắn cho bạn tận hưởng các chương trình giải trí hấp dẫn, thưởng thức các bộ phim bom tấn, chơi những tựa game yêu thích vô cùng bắt mắt.', 1, '2021-10-20 04:16:16'),
(1513, 'Tai nghe Samsung Galaxy Buds Live', 113, 124, 3290000, 'bUDSlIVE.jpg', '', 1, '2021-10-20 04:16:16'),
(5613, 'Màn hình ghép Videowall 55″ viền 3.5 LG 55LV75D', 113, 126, 98000000, 'videowall.jpg', 'Công nghệ đèn nền LED của LG đảm bảo độ đồng đều cao về độ sáng để đảm bảo hình ảnh rõ nét. Trên các màn hình khác, một số điểm nhất định có thể xuất hiện tối hơn các màn hình khác, nhưng LV77D / 75D mới tạo ra khả năng hiển thị cao và độ sáng nhất quán trên toàn màn hình.', 0, '2021-10-20 04:16:16'),
(1654, 'Smart Watch Samsung Galaxy Watch Active 2 44mm Stainless Steel (SM-R820S)', 113, 125, 7690000, 'smartwatch.jpg', 'Battery 340mAh\r\nAP Exynos 9110 Dual core 1.15GHz\r\nOS Tizen Based Wearable OS 4.0\r\nMemory LTE: 1.5GB RAM + 4GB Internal Memory\r\nBluetooth: 768MB RAM + 4GB Internal Memory\r\nConnectivity LTE*, Bluetooth® 5.0,\r\nWi-Fi b/g/n, NFC, A-GPS/GLONASS/Beidou1\r\n* LTE connectivity only available in LTE models\r\nVIEW MORE CARRIERS\r\nSensor Accelerometer, Gyro, Barometer, HRM, Ambient Light\r\nDurability 5ATM + IP68 / MIL-STD-810G\r\nCompatibility Samsung, other Android: Android 5.0 or higher & RAM 1.5GB above\r\niPhone: iPhone 5 and above, iOS 9.0 or above\r\n* Activation feature for Mobile Network of Galaxy Watch Active2 with Non-Samsung smartphones may not be available in some count', 0, '2021-10-20 04:16:16'),
(1652, 'Xiaomi Mi 10T Pro 5G', 114, 122, 12990000, 'xiaomi.jpg', 'i 10T Pro 5G mẫu smartphone cao cấp của Xiaomi trong năm 2020 cuối cùng cũng được trình làng với loạt những thông số gây “choáng ngợp”: màn hình tần số quét 144 Hz, vi xử lý Snapdragon 865 và cụm camera khủng 108 MP kèm theo đó là một mức giá dễ chịu cho người dùng.', 0, '2021-10-20 04:16:16'),
(1354, 'SamSung Galaxy Note 10 PLUS 256GB', 113, 122, 12990000, 'note10.jpg', 'DxOMark là chuyên trang đánh giá camera uy tín thế giới mới đây đã khẳng định, Galaxy Note 10+ là chiếc smartphone có camera tốt nhất hiện nay.\r\nGalaxy Note 10+ có camera chính 12 MP với khẩu độ có thể thay đổi từ F/1.5 – F/2.4, hỗ trợ chống rung quang học OIS và tự động lấy nét dual-pixel.', 1, '2021-10-20 04:16:16'),
(1623, 'Vòng đeo tay thông minh Xiaomi Mi-Band 4', 114, 125, 699000, 'miband4.jpg', 'Xiaomi Mi Smart Band 4 được cải tiến với nhiều tính năng đột phá mới, là chiếc vòng đeo tay thông minh đầu tiên sử dụng màn hình cảm ứng màu AMOLED, có khả năng theo dõi sức khỏe và vận động, thời lượng sử dụng pin lên tới 20 ngày, dây có thể tháo rời, đế sạc nam châm, chống nước 5 ATM, kết nối Bluetooth 5.0.', 1, '2021-10-20 04:16:16'),
(1561, 'Tai nghe Bluetooth không dây Xiaomi QCY T7', 114, 124, 412000, 'tainghexiaomi.jpg', '3mm Big Dynamic Driver-Bringing Impressing Sound Stage\r\nPairing Animation-Popping up Upon Opening Lid\r\n17.5 Hours of Long Battery Life-Music Never Stopping\r\nENC Audio Technology\r\nUpdated Hardcore Chip-Fast and Unbreakable Connection\r\nPrivate Assistant at Your Service-Just Give Your Order', 0, '2021-10-20 04:16:16'),
(123124, 'Oppo find x2', 112, 122, 17750000, 'oppofindx2.jpg', 'Oppo Find X2 xứng đáng là một chiếc flagship đầu bảng hiện nay. Chiếc smartphone này không chỉ tốt gỗ mà còn tốt cả nước sơn. Bạn chắc chắn sẽ không cảm thấy thất vọng khi trải nghiệm siêu phẩm này.', 1, '2021-10-20 04:16:16'),
(123125, 'Tai nghe oppo 135', 112, 124, 99000, 'taingheoppomh135.jpg', 'Giới thiệu sản phẩm: Tai nghe cho dòng sản phẩm của Oppo có thể dùng cho nhiều thiết bị, điện thoại nghe nhạc khác có đầu ra âm thanh 3.5mm. Bas, Boot Stereo chuẩn, có mic để đàm thoại. Chất lượng âm thanh tuyệt vời, sợi dây tốt hơn, bền hơn, đầu có đệm mút chắc chắn tuyệt vời. Tai nghe với âm bass tốt, độ trong vừa phải. Dây dài: Theo tiêu chuẩn. Màu sắc: TRẮNG . Microphone được tích hợp ngay trên cáp giúp bạn không bỏ lỡ cuộc gọi nào Đầu tai nghe được làm bằng silicon mềm không gây đau..', 0, '2021-10-20 04:16:16'),
(123126, 'Oppo Reno4 Pro', 112, 122, 10150000, 'opporeno4pro.jpg', 'Tai nghe, Sách hướng dẫn, dụng cụ lấy sim, Miếng dán màn hình (Đã dán sẵn), Vỏ bảo vệ, Cáp USB Type C (Hỗ trợ sạc nhanh), OPPO RENO4 PRO, Củ Sạc Super VOOC', 1, '2021-10-20 04:16:16'),
(123127, 'OPPO Reno3', 112, 122, 7590000, 'opporeno3.jpg', ' OPPO Reno 3 được trang bị cấu hình tốt với chip MediaTek Helio P90 + 8 GB RAM đáp ứng tốt các nhu cầu từ lướt web, xem film cho đến chiến các tựa game đình đám hiện nay.', 0, '2021-10-20 04:16:16'),
(123128, 'OPPO watch 46mm', 112, 125, 6791000, 'oppowatch46mm.jpg', 'Đồng hồ thông minh Oppo Watch màu đen phiên bản 46mm sử dụng mặt đồng hồ vuông, bo cong nhẹ ở 4 cạnh, cùng với mặt kính bo cong 2D sang hai bên có chiều sâu tạo cảm giác như mặt kính cong 3D, màn hình AMOLED 1.91 inch độ phân giải 402 x 476 pixels, mật độ điểm ảnh 326 ppi và dải màu rộng chuẩn DCI-P3 cho chất lượng hiển thị sắc nét, sống động. Dây đeo silicon cho cảm giác mang được dễ chịu và thoải mái', 1, '2021-10-20 04:16:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(122, 'Điện Thoại'),
(123, 'Laptop'),
(124, 'Tai nghe'),
(125, 'Đồng hồ'),
(126, 'Ti vi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
