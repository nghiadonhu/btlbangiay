-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2023 lúc 05:42 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btlbbangiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietanhsp`
--

CREATE TABLE `chitietanhsp` (
  `ID` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Anh` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(500) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `Email` varchar(1500) NOT NULL,
  `SoDT` varchar(11) NOT NULL,
  `TaiKhoan` varchar(500) NOT NULL,
  `MatKhau` varchar(500) NOT NULL,
  `create_at` varchar(500) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(500) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `HoTen`, `DiaChi`, `Email`, `SoDT`, `TaiKhoan`, `MatKhau`, `create_at`, `updated_at`) VALUES
(1, 'Đồng Văn Công', 'Hải Dương', 'Dongvancong24@gmail.com', '0334624356', 'vancong24', '123', 'current_timestamp()', 'current_timestamp()'),
(2, 'Nguyễn Duy Thái', 'Hưng Yên', 'Nguyenduythai08@gmail.com', '0923472343', '', '', 'current_timestamp()', 'current_timestamp()'),
(3, 'Thấp Văn Dân', 'Văn Lâm', 'Caovandan27@gmail.com', '0234827334', '', '', 'current_timestamp()', 'current_timestamp()');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `ID` int(11) NOT NULL,
  `TenLoai` varchar(500) NOT NULL,
  `GhiChu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`ID`, `TenLoai`, `GhiChu`) VALUES
(1, 'Football', 'Khi ở trên sân bóng, các cầu thủ nên đi giày có đinh, gai hoặc đinh tán ở đế, bởi chúng giúp bám mặt cỏ sân bóng tốt hơn. Giày đá bóng không có mũi nhọn nên không có lực cản khi đá bóng. Chúng có thiết kế vừa vặn với cảm giác bó sát đôi chân, khiến cầu thủ có cảm giác như chân chạm vào quả bóng khi đá.'),
(2, 'Running', 'Khi đã sẵn sàng để chạy bộ, người tập sẽ cần một đôi giày có lớp đệm dày để hấp thụ chấn động khi chân giẫm xuống mặt đường. Giày chạy bộ được thiết kế để tạo chuyển động hướng về phía trước, đồng thời bảo vệ phần trước của bàn chân và gót chân. Một đôi giày chạy bộ tốt sẽ tránh được nguy cơ gãy xương do căng thẳng, viêm gân hoặc các vấn đề khác.'),
(3, 'Lifestyle', 'Nếu muốn chạy chân trần nhưng có dụng cụ hỗ trợ, những đôi giày tối giản kiểu “5 ngón” chính là lựa chọn lý tưởng cho người tập. Chúng nhẹ, linh hoạt và không đệm dày. Hiện vẫn chưa rõ loại giày này tốt hơn hay kém hơn những đôi giày khác trong việc ngăn ngừa chấn thương. Một nghiên cứu cho thấy tình trạng đau và chấn thương phổ biến hơn ở những người chạy bộ đi giày tối giản. Những người có trọng lượng lớn có nguy cơ bị chấn thương cao hơn.'),
(4, 'Badminton', 'Khi chơi quần vợt, người chơi thực hiện rất nhiều chuyển động nhanh từ bên này sang bên kia của sân thể thao. Muốn vậy, người chơi cần những đôi giày vừa hỗ trợ bên trong vừa hỗ trợ bên ngoài bàn chân. Đồng thời, đôi giày cần linh hoạt ở phần đế để có thể chuyển động nhanh về phía trước. Khi chơi tennis trên sân mềm, người chơi nên chọn đôi giày có đế mềm. Còn khi chơi trên sân cứng, người chơi nên chọn đôi giày có đế nhiều gai.'),
(5, 'Tennis', 'Môn thể thao yêu cầu di chuyển nhanh như tennis sẽ cần người chơi mang đôi giày có thiết kế đế linh hoạt, vừa hỗ trợ bên trong và bên ngoài bàn chân. Một điểm lưu ý khi chọn giày chơi tennis đó chính là trọng lượng của giày, bởi người chơi cần di chuyển khá nhiều. Phụ thuộc vào sân tennis cứng hay mềm mà người chơi sẽ lựa chọn phần đế giày khác nhau. Phần lớn, những đôi giày tennis hiện nay đều có khả năng chống trơn, phần lót mềm và nhẹ.'),
(6, 'Football', 'Bóng đá – một bộ môn thể thao phổ biến được nhiều người quan tâm và vô cùng yêu thích, nên chắc chắn ai cũng biết những đôi giày bóng đá của các cầu thủ trên sân cỏ sẽ cần được thiết kế đặc biệt hơn. Kiểu giày này không có mũi nhọn nên sẽ không tạo ra lực cản khi đá bóng, dưới đế giày có đinh hoặc gai tán giúp bám mặt sân cỏ tốt hơn. \r\n\r\n'),
(7, 'Golf', 'Đã là một người chơi golf chính hiệu, bạn sẽ cần những đôi giày chơi golf chuyên nghiệp để bảo vệ chân tốt với đế giày thiết kế chắc chắn nhằm cố định bàn chân người chơi khi xoay, tránh trường hợp bị trơn trượt. ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID` int(11) NOT NULL,
  `TenNCC` varchar(500) NOT NULL,
  `DiaChi` text NOT NULL,
  `SoDT` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID`, `TenNCC`, `DiaChi`, `SoDT`) VALUES
(1, 'Nike', '', ''),
(2, 'Adidas', '', ''),
(3, 'Vans', '', ''),
(4, 'Balenciaga', '', ''),
(5, 'Converse', '', ''),
(6, 'Reebok', '', ''),
(7, 'Puma', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `country` varchar(1500) NOT NULL,
  `street_address` varchar(1500) NOT NULL,
  `postcode_zip` varchar(500) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `payment_type` varchar(500) NOT NULL,
  `created_at` varchar(500) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(500) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `first_name`, `last_name`, `country`, `street_address`, `postcode_zip`, `phone`, `email`, `notes`, `payment_type`, `created_at`, `updated_at`) VALUES
(1, 'Đồng Văn', 'Công', 'Việt Nam', 'Đình Cao - Phù Cừ - Hưng Yên', '3242342', '0334624356', 'congkoi090@gmail.com', 'Giao Hàng Nhanh', 'Paypal', '2023-05-22 02:50:45', '2023-05-22 02:50:45'),
(2, 'Cao Văn', 'Dân', 'Việt Nam', 'Đình Dù', '080323', '04263432422', 'congkoi090@gmail.com', 'Giao Hàng Nhanh', 'Paypal', '2023-05-22 09:51:32', '2023-05-22 09:51:32'),
(3, 'Đồng Văn', 'Duy Thai', 'Việt Nam', 'Đình Cao - Phù Cừ - Hưng Yên', '3242342', '0987323201', 'test@example.com', 'Giao Hàng Nhanh', 'Paypal', '2023-05-22 09:58:29', '2023-05-22 09:58:29'),
(4, 'Đồng Văn', 'Duy Thai', 'Việt Nam', 'Đình Cao - Phù Cừ - Hưng Yên', '3242342', '0987323201', 'test@example.com', 'Giao Hàng Nhanh', 'Paypal', '2023-05-22 09:59:06', '2023-05-22 09:59:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detials`
--

CREATE TABLE `order_detials` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` varchar(1500) NOT NULL,
  `total` varchar(500) NOT NULL,
  `created_at` varchar(500) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(500) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detials`
--

INSERT INTO `order_detials` (`id`, `order_id`, `product_id`, `qty`, `amount`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '3829000', '3829000', '2023-05-22 02:50:45', '2023-05-22 02:50:45'),
(2, 1, 3, 1, '4699000', '4699000', '2023-05-22 02:50:45', '2023-05-22 02:50:45'),
(3, 2, 3, 1, '4699000', '4699000', '2023-05-22 09:51:32', '2023-05-22 09:51:32'),
(4, 2, 1, 1, '1759000', '1759000', '2023-05-22 09:51:32', '2023-05-22 09:51:32'),
(5, 3, 1, 1, '1759000', '1759000', '2023-05-22 09:58:29', '2023-05-22 09:58:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `HinhAnh` varchar(500) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `TenSP` varchar(1500) NOT NULL,
  `MauSac` varchar(1500) NOT NULL,
  `DonGia` float NOT NULL,
  `GiaSale` float NOT NULL,
  `GhiChu` text NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `KichThuoc` varchar(500) NOT NULL,
  `created_at` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `HinhAnh`, `MaLoai`, `MaNCC`, `TenSP`, `MauSac`, `DonGia`, `GiaSale`, `GhiChu`, `SoLuong`, `KichThuoc`, `created_at`, `updated_at`) VALUES
(1, 'fb1.jpg', 1, 1, 'Nike Phantom GX Club TF', 'Baltic Blue/White/Laser', 1759000, 1759000, 'Cho dù bạn mới bắt đầu chơi hay chỉ chơi cho vui, giày Câu lạc bộ sẽ giúp bạn ra sân mà không ảnh hưởng đến chất lượng. Với chất liệu da tổng hợp và dây buộc không đối xứng, chúng giúp mang lại cảm giác chạm bóng chính xác để giúp bạn ghi bàn vào lưới hoặc kiến ​​tạo cho đồng đội bằng một đường chuyền chính xác giúp xoay chuyển trận đấu theo hướng có lợi cho bạn.', 23, 'EU 40', 'urrent_timestamp(', 'urrent_timestamp('),
(2, 'rn1.jpg', 2, 2, 'Nike React Pegasus Trail 4 SE', 'Pure Platinum/Baltic', 3829000, 3829000, 'Chạy là nghi thức hàng ngày của bạn, đưa bạn từ con đường này sang con đường khác khi bạn tìm kiếm những cuộc phiêu lưu và mục tiêu mới. Hãy để Nike React Pegasus Trail 4 đưa bạn đến đó và quay trở lại với cảm giác hỗ trợ và đàn hồi của nó. Lực kéo dưới chân giúp bạn vượt qua địa hình đá mà vẫn mang lại cảm giác êm ái trên đường. Hỗ trợ giữa bàn chân được kiểm soát bởi dây buộc, cho phép bạn tìm thấy sự phù hợp và cảm giác phù hợp. Màu sắc tươi sáng, sắc nét bổ sung cho màu trung tính trong phòng tối, nói lên một thế giới bao trùm, nơi kỹ thuật số và vật lý cùng tồn tại hài hòa. Chú ngựa đáng tin cậy có cánh của bạn đã sẵn sàng cho một hành trình địa hình. Đã đến giờ cất cánh.', 23, 'EU 40', 'urrent_timestamp(', 'urrent_timestamp('),
(3, 'lf1.jpg', 3, 4, 'Nike Air Max 270', 'White/Industrial Blue/Citron', 4699000, 4699000, 'Legendary Air được dỡ bỏ. Lối sống đầu tiên của Nike Air Max mang đến cho bạn phong cách, sự thoải mái và một bong bóng khí lớn. Với cửa sổ lớn và mảng màu tươi tắn, nó cho phép bạn giới thiệu một trong những cải tiến tuyệt vời nhất của Nike. Phần trên nhẹ và thoáng mát và cổ áo cắt siêu thấp khiến nó trở thành trang phục hoàn hảo cho những cuộc vui trong thời tiết ấm áp.', 342, 'EU 11', NULL, NULL),
(4, 'bd.jpg', 4, 6, 'Air Jordan XXXVII Low PF', 'Military Blue/Midnight', 5129000, 5129000, 'Bạn có những bước nhảy và tốc độ—hãy thắt dây giày để nâng cao những gì bạn mang đến sân đấu. AJ mới nhất là tất cả về cất cánh và hạ cánh, với nhiều đơn vị Không khí để giúp bạn cất cánh và bọt Công thức 23 để giảm bớt tác động của bạn. Phần trên được làm từ vải dệt leno chắc chắn, được gia cố sẽ giúp giữ bạn vững chắc cho dù bạn di chuyển nhanh đến đâu—và khiến trò chơi của bạn không bị ảnh hưởng.', 432, 'EU 40', NULL, NULL),
(5, 'tl1.jpg', 5, 3, 'NikeCourt Air Zoom Vapor 11', 'Gridiron/Mineral Teal/Action', 4699000, 4699000, 'Được xác nhận bởi những người vĩ đại của trò chơi, Vapor 11 đã trở lại và tốt hơn bao giờ hết. Thấp hơn mặt sân và được trang bị các thành phần tốc độ, nó giúp bạn chơi với tốc độ nhanh với đủ hỗ trợ để giữ cho bạn nhấp nhô và uyển chuyển trong các hiệp đấu liên tục. Các trụ cột như thành bên đúc cực kỳ chắc chắn và phần trên thoáng khí bổ sung cho một thiết kế bền bỉ, di chuyển nhanh mà bạn đã biết và yêu thích.', 342, 'EU 42', NULL, NULL),
(6, 'tl2.jpg', 5, 1, 'NikeCourt Air Zoom Vapor 9.5 Tour Premium', 'Black/Phantom/White', 4999000, 4999000, 'Khắc tên bạn vào sự vĩ đại với Vapor 9.5 Tour. Đồ họa viết nguệch ngoạc tạo thêm nét vui tươi cho trò chơi của bạn, trong khi các chi tiết thiết kế bằng acrylic phù hợp với những bức tranh tường hùng vĩ được tìm thấy sâu trong sa mạc Nam California, những bức tranh được ban tặng cho những người chiến thắng cũng như các huyền thoại vào mỗi mùa xuân. Nó có mặt trên bằng lưới thoáng khí di chuyển bằng chân của bạn và bộ phận Zoom Air mang lại sự ổn định và cảm giác nhẹ, nhạy trên sân.', 23, 'EU 39', NULL, NULL),
(7, 'lf2.jpg', 3, 1, 'Nike Air More Uptempo \'96', 'Photon Dust/White/Black/Metallic Silver', 5279000, 5279000, 'Có lẽ hơn bất kỳ hình bóng nào khác, Air More Uptempo gói gọn hương vị bóng rổ thập niên 90 ở mức tốt nhất. To và ồn ào, thiết kế không có lỗi này thể hiện sự kết hợp giữa phong cách và sự đổi mới đã tạo nên những làn sóng lớn khi nó ra mắt—và vẫn còn thu hút sự chú ý cho đến ngày nay. Sản phẩm thủ công này giữ cho màu sắc của nó trở nên tinh tế với màu trung tính và điểm nhấn của Bạc ánh kim. Đồ họa AIR mang tính biểu tượng có màu trắng có độ tương phản cao để tạo thêm một chút tinh tế ngoài sân đấu. Rốt cuộc, \"thêm một chút\" là những gì những đôi giày này làm tốt nhất.', 26, 'EU 39', NULL, NULL),
(8, 'gf1.jpg', 7, 1, 'Jordan Retro 6 G', 'White/Infrared 23/Black', 6459000, 6459000, 'Cảm thấy không thể bị đánh bại từ hộp phát bóng đến cú đánh bóng cuối cùng trong một thiết kế hoàn toàn là MJ đời đầu: tốc độ, đẳng cấp và đầy những nét thực sự đầu thập niên 90 như Không khí có thể nhìn thấy và đế cao su mờ tiếp tục đứng vững trước thử thách của thời gian. Mẫu này kết hợp thanh chống của chức vô địch MJ đầu tiên với một số công nghệ chơi gôn tốt nhất của chúng tôi, giúp bạn khẳng định sự tự tin khi đến lúc chinh phục sân.', 26, 'EU 40', NULL, NULL),
(9, 'rn2.jpg', 2, 6, 'FuelCell Rebel TR', 'Blue with orange', 1189000, 1189000, 'Hiệu suất đáp ứng phong cách tiến bộ trong giày chạy bộ nam FuelCell Rebel TR. Giày linh hoạt nhất của chúng tôi cung cấp cho các vận động viên, giày này đi kèm với các tính năng bạn cần để chạy, luyện tập và mọi hoạt động khác. Hệ thống phản hồi động ABZORB bổ sung khả năng phục hồi, trong khi FitWeave Lite mang đến sự linh hoạt nhẹ ở phần trên để giúp bạn đi vào khu vực này.', 432, 'EU 45', NULL, NULL),
(10, 'lf3.jpg', 3, 1, 'Tatum 1 \"St. Louis\" PF', 'White/University Blue/University Gold/University Red', 3519000, 3519000, 'Tất cả những ai biết tôi đều biết rằng tình yêu của tôi dành cho St. Louis sâu đậm ... \" Sâu đậm đến mức chúng tôi đã tạo ra một phiên bản phối màu đặc biệt để kỷ niệm quê hương của Jay. Sự kết hợp táo bạo giữa màu đỏ và trắng sẽ khiến bất kỳ ai đến từ The Lou cũng phải ấn tượng gấp đôi. Thiết kế hoa bách hợp trên gót chân và đế trong phù hợp với lá cờ của thành phố. Còn Đại lộ Archer? Chà, đó là nơi tất cả bắt đầu cho Jayson. Hãy tiếp tục cuộc hành trình bằng cách tôn vinh nguồn gốc của anh ấy ở Tatum 1 \'St. Louis', 342, 'EU 54', NULL, NULL),
(11, 'lf4.jpg', 3, 2, 'Jordan Nu Retro 1 Low', 'Black/Tour Yellow/White', 3089000, 3089000, 'Hai mươi năm sau và những ngọn thấp này đã trở lại. Lấy cảm hứng từ logo Wings ban đầu và thiết kế của Jordan 1, những đôi giày hàng ngày, cả ngày này đã sẵn sàng cho bất cứ điều gì. Rock \'em với một số quần jean rộng thùng thình, trượt băng trong chúng hoặc chỉ trông bay bổng - tùy thuộc vào bạn. Mũ giày bằng da mịn và logo dập nổi lớn sẽ giúp bạn nổi bật dù bạn ăn mặc sang trọng hay lịch sự.', 432, 'EU 44', NULL, NULL),
(12, 'lf5.jpg', 3, 1, 'Air Jordan Low SE', 'Pistachio Frost/Aquatone/Psychic Purple/Celestial Gold', 3369000, 3369000, 'Tận hưởng niềm vui mùa hè với những chiếc AJ1 yêu thích mới của bạn. Được làm bằng sự kết hợp giữa da lộn và vải canvas, đôi giày này mang đến cho bạn sự thoải mái mà bạn biết và yêu thích với bản cập nhật theo mùa.', 1212, 'EU 43', NULL, NULL),
(13, 'fb2.jpg', 1, 1, 'Nike Gripknit Phantom GX Elite AG', 'White with victory blue', 5129000, 5129000, 'Hãy nghĩ về đôi giày của bạn bây giờ và quên chúng vào ngày đua. FuelCell Supercomp Elite v3 được thiết kế với trọng tâm kép là hoàn trả năng lượng và trọng lượng nhẹ hơn, với khả năng hoàn trả năng lượng động của hệ thống Energy Arc được bổ sung bởi phần trên bằng vải dệt kỹ thuật, thoáng khí có lưỡi cài sẵn, để khóa chặt, an toàn phù hợp. Nó không chỉ là một đôi giày chạy bộ. Đó là một chiếc giày đua.', 342, 'EU 41', NULL, NULL),
(14, 'lf6.jpg', 3, 1, 'Nike Air Force 1 \'07', 'White', 2929000, 2929000, 'Sự rạng rỡ vẫn tồn tại trong Nike Air Force 1 \'07, biểu tượng b-ball mang đến một luồng gió mới cho những gì bạn biết rõ nhất: da sắc nét, màu sắc đậm và lượng đèn flash hoàn hảo để khiến bạn tỏa sáng. Kết cấu, da sần với màu xanh cổ điển và trắng tươi làm tăng thêm phong cách di sản, độ bền và khả năng hỗ trợ.', 432, 'EU 43', NULL, NULL),
(15, 'tl3.jpg', 5, 4, 'Nike SuperRep Go 3 Next Nature Flyknit', 'Photon Dust/Sail/Anthracite', 2489650, 2489650, 'Giày Nike SuperRep Go 3 Flyknit mới là một câu chuyện thiết kế cơ bản bắt nguồn từ tính bền vững và đổi mới. Cấu trúc Flyknit được khoanh vùng bao bọc bàn chân của bạn ở 360 độ thoải mái và hỗ trợ. Đế giữa bằng bọt tái chế, được nghiền mịn mang đến cho bạn lớp đệm êm ái khi luyện tập với cường độ cao. Thiết kế nhẹ, có thể đóng gói cho phép bạn giữ chúng ở gần, bất kể buổi tập tiếp theo của bạn đưa bạn đến đâu.', 26, 'EU 43', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Test User', 'test@example.com', '2023-04-22 05:04:55', '$2y$10$lxP0v80tagb5uRAUlYH66OHKE1Bn5ojtM.BWKN3cEw7FXm1hFtjuS', '123456', NULL, NULL),
(3, 'Dan', 'ádasdasdasd', '2023-05-22 11:19:22', '2313323', '', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietanhsp`
--
ALTER TABLE `chitietanhsp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detials`
--
ALTER TABLE `order_detials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detials_ibfk_1` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sanpham_ibfk_1` (`MaLoai`),
  ADD KEY `sanpham_ibfk_2` (`MaNCC`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietanhsp`
--
ALTER TABLE `chitietanhsp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_detials`
--
ALTER TABLE `order_detials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietanhsp`
--
ALTER TABLE `chitietanhsp`
  ADD CONSTRAINT `chitietanhsp_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `order_detials`
--
ALTER TABLE `order_detials`
  ADD CONSTRAINT `order_detials_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `sanpham` (`ID`),
  ADD CONSTRAINT `order_detials_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisanpham` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
