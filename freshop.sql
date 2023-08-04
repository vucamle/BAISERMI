-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 01, 2023 lúc 05:49 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaydang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `binhluan_id_user_foreign` (`id_user`),
  KEY `binhluan_id_sanpham_foreign` (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_user`, `name`, `id_sanpham`, `noidung`, `trangthai`, `ngaydang`, `created_at`, `updated_at`) VALUES
(5, 24, 'Nguyễn Thành Trung', 68, 'Ok', '1', 'Sun, Jan 1, 2023 12:45 PM', '2022-12-31 22:45:17', '2022-12-31 22:45:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `MaDH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

DROP TABLE IF EXISTS `chitietgiohang`;
CREATE TABLE IF NOT EXISTS `chitietgiohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MaGH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_GIOHANG` (`MaGH`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`id`, `MaGH`, `MaSP`, `SoLuong`, `Gia`, `updated_at`, `created_at`) VALUES
(110, 26, 58, 2, 100000000, '2021-04-16 01:26:03', '2021-04-16 01:26:02'),
(153, 39, 1, 1, 31490000, '2021-05-29 02:53:56', '2021-05-29 02:53:56'),
(136, 35, 39, 1, 11490000, '2021-04-16 02:00:41', '2021-04-16 02:00:41'),
(152, 39, 2, 1, 31490000, '2021-05-29 02:51:55', '2021-05-29 02:51:55'),
(140, 38, 1, 1, 31490000, '2021-05-08 20:07:28', '2021-05-08 20:07:28'),
(151, 39, 25, 1, 5990000, '2021-05-28 03:07:42', '2021-05-28 03:07:42'),
(111, 26, 60, 2, 25980000, '2021-04-16 01:26:39', '2021-04-16 01:26:39'),
(137, 36, 32, 2, 15580000, '2021-04-16 02:04:16', '2021-04-16 02:03:04'),
(130, 35, 2, 1, 31490000, '2021-04-16 01:57:14', '2021-04-16 01:57:14'),
(131, 35, 26, 1, 6490000, '2021-04-16 01:57:33', '2021-04-16 01:57:33'),
(150, 38, 34, 1, 14990000, '2021-05-27 06:11:51', '2021-05-27 06:11:51'),
(149, 38, 26, 1, 6490000, '2021-05-27 06:10:25', '2021-05-27 06:10:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `TenSP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoLuong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL,
  `TrangThai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chitiethoadon_id_hoadon_foreign` (`id_hoadon`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `id_hoadon`, `TenSP`, `SoLuong`, `Gia`, `ThanhTien`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 2, 'Đu Đủ', '1', '2222VND', 2222, 'Đã đặt hàng', '2022-03-26 04:11:08', '2022-03-26 04:11:08'),
(2, 3, 'Product 10, Product 15, TÁO JULIET HỮU CƠ 500GR, Product 16', '1/1/1/1', '78500785007850054000VND///', 289500, 'Đã đặt hàng', '2022-12-31 22:47:15', '2022-12-31 22:47:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
CREATE TABLE IF NOT EXISTS `danhgia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sp` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `danhgia` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `id_sp`, `id_user`, `noidung`, `ngaylap`, `updated_at`, `created_at`, `danhgia`) VALUES
(1, 1, 4, 'Sản phẩm đúng như mô tả, máy new seal, chất lượng không có gì phải bàn.', '06-04-2021 11:48', '2021-04-05 21:48:04', '2021-04-05 21:48:04', 5),
(2, 2, 4, 'Đánh giá và Nhận xét', '06-04-2021 13:39', '2021-04-05 23:39:52', '2021-04-05 23:39:52', 4),
(3, 2, 4, 'Đánh giá và Nhận xét', '06-04-2021 13:42', '2021-04-05 23:42:37', '2021-04-05 23:42:37', 1),
(4, 1, 4, 'chính hãng', '06-04-2021 14:05', '2021-04-06 00:05:15', '2021-04-06 00:05:15', 4),
(7, 1, 11, 'ok', '08-04-2021 16:43', '2021-04-08 02:43:10', '2021-04-08 02:43:10', 4),
(8, 1, 11, 'okk', '08-04-2021 16:54', '2021-04-08 02:54:21', '2021-04-08 02:54:21', 4),
(9, 1, 11, 't', '12-04-2021 14:27', '2021-04-12 00:27:07', '2021-04-12 00:27:07', 4),
(10, 14, 11, 'siêu phẩm cực đẹp', '14-04-2021 14:58', '2021-04-14 00:58:37', '2021-04-14 00:58:37', 5),
(11, 19, 11, '3                         n.                            4', '15-04-2021 10:42', '2021-04-14 20:42:43', '2021-04-14 20:42:43', 5),
(12, 19, 11, ';!!+++(;-778+;:765-+.                                                          uuiiiii.', '15-04-2021 10:43', '2021-04-14 20:43:26', '2021-04-14 20:43:26', 5),
(13, 19, 11, 'vhhjj', '15-04-2021 10:44', '2021-04-14 20:44:02', '2021-04-14 20:44:02', 5),
(14, 1, 18, 'Hello', '16-04-2021 15:54', '2021-04-16 01:54:23', '2021-04-16 01:54:23', 4),
(15, 1, 18, 'avc', '16-04-2021 15:54', '2021-04-16 01:54:45', '2021-04-16 01:54:45', 4),
(16, 1, 18, 'Ok', '16-04-2021 15:55', '2021-04-16 01:55:51', '2021-04-16 01:55:51', 1),
(17, 1, 18, 'Ok', '16-04-2021 15:56', '2021-04-16 01:56:09', '2021-04-16 01:56:09', 1),
(18, 1, 18, 'Hi', '16-04-2021 15:56', '2021-04-16 01:56:13', '2021-04-16 01:56:13', 1),
(19, 1, 18, 'Ba', '16-04-2021 15:56', '2021-04-16 01:56:15', '2021-04-16 01:56:15', 1),
(20, 1, 11, 'ittt', '19-04-2021 17:32', '2021-04-19 03:32:44', '2021-04-19 03:32:44', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgiareply`
--

DROP TABLE IF EXISTS `danhgiareply`;
CREATE TABLE IF NOT EXISTS `danhgiareply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dg` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidung` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgiareply`
--

INSERT INTO `danhgiareply` (`id`, `id_dg`, `id_user`, `noidung`) VALUES
(1, 1, 4, 'haha'),
(2, 7, 4, 'ádasda'),
(3, 1, 4, 'aa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenDanhMuc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `TenDanhMuc`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 'Top Hàng Đầu', 1, '2020-12-09 02:33:49', '2020-12-30 07:39:08'),
(2, 'Top Giảm Giá', 1, '2020-12-09 02:33:55', '2020-12-30 07:39:15'),
(3, 'Sản  Phẩm Mới', 1, '2020-12-09 02:34:13', '2021-01-01 19:50:18'),
(4, 'Test', 1, '2022-03-26 04:09:56', '2022-12-31 22:48:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `SDT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `TrangThaiDH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `NgayLap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(10) NOT NULL,
  `TongSL` int(11) NOT NULL,
  `TongGia` int(11) NOT NULL,
  `TongTien` double NOT NULL,
  `NgayLap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hoadon_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `user_id`, `hoten`, `sdt`, `diachi`, `thanhtien`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyễn Khánh', 1234567890, 'Đồng Nai', 12937725, 'Đã Xác Nhận', NULL, NULL),
(2, 1, 'Văn An', 1234567890, 'HCM', 2222, 'Đã đặt', '2022-03-26 04:11:08', '2022-03-26 04:11:08'),
(3, 24, 'Nguyễn Thành Trung', 999999994, '55A Bình Thạnh TP Hồ Chí Minh', 289500, 'Đã đặt', '2022-12-31 22:47:15', '2022-12-31 22:47:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloai`, `trangthai`, `created_at`, `updated_at`) VALUES
(21, 'Đu Đủ', '1', '2022-02-28 07:18:50', '2022-02-28 07:18:50'),
(22, 'Dưa Hấu', '1', '2022-03-22 07:48:32', '2022-03-22 07:48:32'),
(23, 'Sữa', '1', '2022-03-26 03:54:59', '2022-03-26 03:54:59'),
(24, 'Rau', '1', '2022-03-26 03:55:06', '2022-03-26 03:55:06'),
(25, 'Cam', '1', '2022-03-26 04:08:37', '2022-03-26 04:08:37'),
(26, 'Táo', '1', '2022-12-31 22:09:01', '2022-12-31 22:09:01'),
(27, 'AAAAAAAAAA', '0', '2022-12-31 22:48:20', '2022-12-31 22:48:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_05_023338_created_loaisanpham_table', 2),
(5, '2020_12_05_023353_created_danhmuc_table', 2),
(6, '2020_12_05_023411_created_sanpham_table', 2),
(7, '2020_12_05_071941_created_hoadon_table', 2),
(8, '2020_12_05_072004_created_chitiethoadon_table', 2),
(9, '2020_12_09_090040_created_binhluan_table', 2),
(10, '2020_12_10_033011_created_binhluan_table', 3),
(11, '2020_12_10_034406_created_binhluan_table', 4),
(12, '2020_12_10_034911_created_binhluan_table', 5),
(13, '2016_06_01_000001_create_oauth_auth_codes_table', 6),
(14, '2016_06_01_000002_create_oauth_access_tokens_table', 6),
(15, '2016_06_01_000003_create_oauth_refresh_tokens_table', 6),
(16, '2016_06_01_000004_create_oauth_clients_table', 6),
(17, '2016_06_01_000005_create_oauth_personal_access_clients_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XacMinh` tinyint(1) NOT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `TenNCC`, `logo`, `DiaChi`, `XacMinh`, `TrangThai`) VALUES
(1, 'Apple FlagShip Offical Store', 'logoIphone.jpg', 'HCM', 1, 1),
(4, 'Samsung Offical Store', 'logoSamsung.jpg', 'HCM', 1, 1),
(5, 'Xiaomi Flagship Offical', 'logoXiaomi.jpg', 'HCM', 1, 1),
(6, 'Vivo Offical Store', 'logoVivo.jpg', 'HCM', 1, 1),
(7, 'Oppo offical store', 'logoOppo.jpg', 'HCM', 0, 1),
(8, 'Louis iPhone', 'louis.png', 'abc', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2902b8b1a394ee3169789d4d86da5ff703edc9390d579c4cd3fcd04c32af4a3f446438eb9f0d028e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 00:02:51', '2021-04-16 00:02:51', '2022-04-16 07:02:51'),
('9b830778e68efac8ddce7bb12a04cc0331e8c1af72fc25541069376102507fc523b9a1a5b311d6af', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 00:53:26', '2021-04-16 00:53:26', '2022-04-16 07:53:26'),
('264f82c741d84f1cdc82553edf207b631533a53785243a7253fbd29f00d3a731e270451a446f1396', 15, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 00:57:22', '2021-04-16 00:57:22', '2022-04-16 07:57:22'),
('6849f5057f791dcfef759a8090f09a9a2947387e93922abaaa501d355ecaa4dbc3ccbdfe236425ba', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 00:58:06', '2021-04-16 00:58:06', '2022-04-16 07:58:06'),
('8bc89ce389a4979817bb23d4ac2065612aba0e15ae7161f3240011d4cc055eb2c01980d26690a6c7', 15, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 00:58:21', '2021-04-16 00:58:21', '2022-04-16 07:58:21'),
('76965ff57cafc4ecfa6f80c9f3ea07360c9a45038ae55113e713cbb38f14295674c6f9c62146bd1a', 15, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 00:59:47', '2021-04-16 00:59:47', '2022-04-16 07:59:47'),
('4c8fd5be5d3e42267217cdcae18f0c5053cb6415c9c397f1b2de871ead8b9490fe5da86b00fec4b7', 15, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-16 01:00:31', '2021-04-16 01:00:31', '2022-04-16 08:00:31'),
('4c539f5438903764a4948dc66b0011fd8b661e5a4086764104f715dce067eaab70bbeac3c543e710', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:00:36', '2021-04-16 01:00:36', '2022-04-16 08:00:36'),
('060ab64646ac64491ab8cb3e6f6c9dbc45de74e3ca255d65f43951dc77e1499ce27d8d9f7ab495b7', 15, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:02:01', '2021-04-16 01:02:01', '2022-04-16 08:02:01'),
('1626f887e5baea2f33a64ecd2d9e853b67237cb587a22eee73ef295bce6cbc729cb562368fae43d2', 15, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:02:14', '2021-04-16 01:02:14', '2022-04-16 08:02:14'),
('7329fd19560f1e125598123603288499f34672ae2f077e276f045595f49527cb101f40ba0d7b106a', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:03:30', '2021-04-16 01:03:30', '2022-04-16 08:03:30'),
('0cd7af11ee6fa59d0416ff00c30970f1b3cfc990230d8abae05c8726bfeb5f176802d5b0d190cbfb', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:13:29', '2021-04-16 01:13:29', '2022-04-16 08:13:29'),
('435e04560c030bcfe777dad4c773b9884250b201f398c92e8c4fb445bf23fff05c8cfd54b1a238d5', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:23:26', '2021-04-16 01:23:26', '2022-04-16 08:23:26'),
('dbb896188c404f7cc449e9d43161fdaca0243feb10ecc904ad77d75f09a3eb59f03b1f4ae4cdfe67', 18, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:28:07', '2021-04-16 01:28:07', '2022-04-16 08:28:07'),
('58ede2791fa83d9b33d2ad2b8b9a07628f397595e63bbea0aa94da2ae42aa8e1097603a4323fb228', 19, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-16 01:30:39', '2021-04-16 01:30:39', '2022-04-16 08:30:39'),
('42817619871be8e19892bf1024113436d66f0f8986d689dcceb27d681985b123903dbae66e963e90', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:34:48', '2021-04-16 01:34:48', '2022-04-16 08:34:48'),
('171a5439767dd89079cb405ec28a2f57e6f2fe8b8779eeff845735bf22038423f1d798760e5bb4fa', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:37:02', '2021-04-16 01:37:02', '2022-04-16 08:37:02'),
('10df5ad3a94d8b827cf944ba8e992405fa5438c9e6c5eef2eef1641639716150b7402cc8d13cd850', 18, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:37:24', '2021-04-16 01:37:24', '2022-04-16 08:37:24'),
('69d51037a15073052b984da94873e96990c06d3fb91e2d3bdd141b7ef76a9ff9b84f4055efdb5a77', 19, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-16 01:37:42', '2021-04-16 01:37:42', '2022-04-16 08:37:42'),
('6a368cb1feecf3198c82fa800ede70c255e7acb7c1cc4288d3e7494fa71b14c27525e32b56e8d088', 19, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-16 01:38:04', '2021-04-16 01:38:04', '2022-04-16 08:38:04'),
('0f5b9b9be4a9f21ab121611b0513558a5e58992da24b096019f47782c3ae0ad0785e69a32fb88cad', 18, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:38:17', '2021-04-16 01:38:17', '2022-04-16 08:38:17'),
('c301e2d44ed80b9e44af2a14d507ef1964aa61632f1677b32bc5505a60679213a49c455d4ffe2331', 19, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-16 01:38:40', '2021-04-16 01:38:40', '2022-04-16 08:38:40'),
('f3576ebd942a88a7e14a8a5b935ebab445f2cce40d51c8fda2ece7837771b7934f864ae8aa95e008', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:40:46', '2021-04-16 01:40:46', '2022-04-16 08:40:46'),
('e5466dff143287e1002be4efd02ea2928b15a63e9801aefc3273442302ce6cfc0da7674716a3d500', 20, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:41:20', '2021-04-16 01:41:20', '2022-04-16 08:41:20'),
('c53dec8594c2210de65752fca95ba65cb175fa029e713a314facfbaaeb383ea9d141dee458990d32', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:44:18', '2021-04-16 01:44:18', '2022-04-16 08:44:18'),
('6ca627acca5ec909b910d1bcb9d5beddd26b7cfe956b651b099057fdf9ae4be0ee3c0f39b6e2cda7', 18, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:44:55', '2021-04-16 01:44:55', '2022-04-16 08:44:55'),
('15da63347bb679ae024e894bb4e4be2511c68dfbea526c0ec0c777e3a85699c84bf0ea243786da8b', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:45:39', '2021-04-16 01:45:39', '2022-04-16 08:45:39'),
('6dcc6c42727cabba639c27eb36f8c73e956a452e2c45b1c11d8bb6eb772fe3d1fd93a7f430750f51', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:45:49', '2021-04-16 01:45:49', '2022-04-16 08:45:49'),
('9f8f173c1594f2285b47e1bd7421dfa6497a95b8846f2e57f5209c6351dbecf46db085fca07cfb07', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:48:33', '2021-04-16 01:48:33', '2022-04-16 08:48:33'),
('280ccaf6afd2999929f7691af7a4149b7acda13109f6cdcd1bf697f19d58577dcc9375cf6dd2d5fb', 17, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 01:58:48', '2021-04-16 01:58:48', '2022-04-16 08:58:48'),
('45c1ecda9c1c5d27f471ccce0ee1545c6e0c7cac8f184223f6eb3dec6e62973ad2fecde81d7d4e4b', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 02:05:30', '2021-04-16 02:05:30', '2022-04-16 09:05:30'),
('2df1e1fe061a1d8029343f6261519e7b2b494468d0e1e1470a64b46908687f84af75caba9a9d6b84', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 02:06:52', '2021-04-16 02:06:52', '2022-04-16 09:06:52'),
('dc2edb99e97ef7c6955b7f9fd39931e56777b41c00b056cbd07a9dc7d5f826c929cca72ebb3b9cbb', 19, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 02:07:32', '2021-04-16 02:07:32', '2022-04-16 09:07:32'),
('7d4e6fb04072f981fb8fd1ec9829cd9e2993035eb47fa54caa27eced3ec804f6dae9be4875489a1b', 17, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-16 02:08:56', '2021-04-16 02:08:56', '2022-04-16 09:08:56'),
('528de7c859f1c3335494beb1afeb838a5b020d15b5897bb5766d5100abf1954ca91263151260b7cc', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 02:48:53', '2021-04-16 02:48:53', '2022-04-16 09:48:53'),
('961e25132c1b4416d369641dea961bf608c0da8d6c3af28f9d2ff8dda5297e60cb181c8efec530ee', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 02:49:43', '2021-04-16 02:49:43', '2022-04-16 09:49:43'),
('8326ca9912adb4d8728ad8df63ca52c9969f7458abe1b72f809f0c85cd7e2108a99b6cd4c22209bf', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:45:42', '2021-04-16 06:45:42', '2022-04-16 13:45:42'),
('a5a19e2342b76f9272ff78d9d2e0d995014809d73efcf81dfe0815bf5e82d8db2cef77c884065cc5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:46:23', '2021-04-16 06:46:23', '2022-04-16 13:46:23'),
('d10fe16e2bd2120097ffdfc0a5a555e8af651ecf6e610ff57f712ca5bfc71ac8812b76463088f2b2', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:47:09', '2021-04-16 06:47:09', '2022-04-16 13:47:09'),
('aa1f5bbc54a4903a90d372c327123c0064d3b80391b67b84c546a2d35c8b83db11c1a878182254e4', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:48:28', '2021-04-16 06:48:28', '2022-04-16 13:48:28'),
('0b5c5824ec78e64dd8e374f3a957f63c48be1c4073c39c95d478172acbcedd911ad831c3a06f8b10', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:49:32', '2021-04-16 06:49:32', '2022-04-16 13:49:32'),
('f0a6249105d6fc4761435d7098eac282ecee04991052d43ee9102810eab3061b6d7c04def032e7a3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:50:12', '2021-04-16 06:50:12', '2022-04-16 13:50:12'),
('57938cf979d1db7adfa56b093412888df4d96800692c62d17ed3b9d035dd6b300a23ff45865f0e38', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-16 06:51:42', '2021-04-16 06:51:42', '2022-04-16 13:51:42'),
('f8e676871f1397a2fd0dd4de668bda9240467825991017468ab16292cd10fa1777e8e6bc7dac04b6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 01:17:14', '2021-04-17 01:17:14', '2022-04-17 08:17:14'),
('1ea75fc80e7b6a41b101082bcdcce472a493da7304eb81e355e15e0183347840e379bacc895ad5a8', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 19:41:08', '2021-04-17 19:41:08', '2022-04-18 02:41:08'),
('8e58dfb4247accc15570f49dddb6fbb58362688877c20b3ce6709934158267fdc8fcef1c218f0d5c', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 19:46:27', '2021-04-17 19:46:27', '2022-04-18 02:46:27'),
('c10b714d749b155bfa4d834b5eab99a4e0d46950c20257b750ec94c429a272d7fdbae4482b3a61d3', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 22:43:54', '2021-04-17 22:43:54', '2022-04-18 05:43:54'),
('67e771eea878b990622a481966c3e3c034c400d100c8ef5cfe926c58c7fc0a82e00a6c88633aa0cb', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 22:48:10', '2021-04-17 22:48:10', '2022-04-18 05:48:10'),
('83589e5c6fb6e7ff8dabfebeff4d9a7fdfb6c7c2aba9305246f345fca7301ad4d08e3b4ab2669c4e', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 23:34:28', '2021-04-17 23:34:28', '2022-04-18 06:34:28'),
('c09cb9a52472b9fba73ad12405c6dc952b6b3475129f33ed29c540839f70e77ff191b9bc028d0cef', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-17 23:45:55', '2021-04-17 23:45:55', '2022-04-18 06:45:55'),
('4b20fe7b07527d3193eae1a8bcf5a8a361ef44297e1c35471e5cfce40e72ce520b42048fdaa342ec', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-18 19:14:09', '2021-04-18 19:14:09', '2022-04-19 02:14:09'),
('f154546a561de366d663443be6070bbd21d264cdff97d3db87240e9531a62ccc4c46690f1dd0ef51', 11, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-19 03:31:02', '2021-04-19 03:31:02', '2022-04-19 10:31:02'),
('1d996353d17b6113f12e4b2f583e6f24d8e983ac57751cf4bade145bb3260073e1a5bdf47a63e96f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-19 03:31:58', '2021-04-19 03:31:58', '2022-04-19 10:31:58'),
('e339dd832a9e1766eedca9274139c55779226d054c1e1cadc88794ff34daa23d5e4201d7ed23b817', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-20 06:28:28', '2021-04-20 06:28:28', '2022-04-20 13:28:28'),
('88d0d840451a3a29d17a41bec0361531b6d92295dd80aee7c2d2ea853e13a20b5ebc57fb074be943', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-20 06:29:10', '2021-04-20 06:29:10', '2022-04-20 13:29:10'),
('69a118f61e088ec71abf59f2bf58fa9abea5ba63917a7c15a4a95508d11f8feaf2f147aa41ec1341', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-20 06:32:16', '2021-04-20 06:32:16', '2022-04-20 13:32:16'),
('2681a975b45d709fe78a3d4d090b2d4ee23fbc99d184bbae6f1b7a7f74b10ede98f9cd391d3b1e48', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-20 06:34:19', '2021-04-20 06:34:19', '2022-04-20 13:34:19'),
('0eee4c10ad1f37ccf8559db3195f37db443c8b4e27ae4b835a79fc9410e42a6d115d7a2e62a4ec56', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-20 06:43:02', '2021-04-20 06:43:02', '2022-04-20 13:43:02'),
('fd403b1c34fe0f661866a635a9b4c5e828baf9b789fbe5e2b2e28ef2423ab1e4c89f9cfb9119f78c', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-23 23:17:49', '2021-04-23 23:17:49', '2022-04-24 06:17:49'),
('d54280503e6184a34f697d4eca5be2e14a61f032233dfaa085e569dfc70a1c335804111708d44a78', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-23 23:22:37', '2021-04-23 23:22:37', '2022-04-24 06:22:37'),
('d102f6549681c173329deef0f3e128d789d7d1bd081cb00e404a829e5ff302e3a6d2371380cb7708', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-23 23:23:21', '2021-04-23 23:23:21', '2022-04-24 06:23:21'),
('72349b4f57a8a183ccef4c1da863cc14ab4d631878f607712dd587434e56f06a6f41e8a3bab2ec67', 11, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-24 00:19:37', '2021-04-24 00:19:37', '2022-04-24 07:19:37'),
('77492b8425d6b1d69eb5a820bcb92d101c74a13c7d50a24b407e0754ea2af57ec853a48a621da41e', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-24 00:19:57', '2021-04-24 00:19:57', '2022-04-24 07:19:57'),
('bc195651a1784a2aa884d719b416944c96afd2854387a49349c7116a55fdfd1c1b233362277e9443', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-24 00:20:57', '2021-04-24 00:20:57', '2022-04-24 07:20:57'),
('cf811a17751620399d083a155b65bed47139dc1c67a14217bcdc4536cee2b6013a6c80eebac7219e', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-24 00:21:29', '2021-04-24 00:21:29', '2022-04-24 07:21:29'),
('c7ec5868c4d62127b8e58e1da49dbeaaea1995bf19f7074e3a5bff2dc125f664f752bd5b5d578047', 4, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-04-25 05:18:21', '2021-04-25 05:18:21', '2022-04-25 12:18:21'),
('195a30586e4370cf9bcf35722833e1eb3d25ed5d953adda06808367fc72c821bdcfcbf86a7723129', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-25 05:18:40', '2021-04-25 05:18:40', '2022-04-25 12:18:40'),
('356f72f48e80864008008243280a367c555b9fbe9bc12d67377a57b964a606421d5bcee58c44633f', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-25 06:07:40', '2021-04-25 06:07:40', '2022-04-25 13:07:40'),
('f87074ce89f6e09fdd58089fb9bf42a202f1aaec579486d557bf9b5a1aa4555cb99aec7eb509dc2f', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-25 06:16:38', '2021-04-25 06:16:38', '2022-04-25 13:16:38'),
('814755b830e3686b48398c5a81ec3d1a50bc1e4810c2d42b7abc883f4ea6fd88d37fcb4935b22372', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-25 06:20:30', '2021-04-25 06:20:30', '2022-04-25 13:20:30'),
('396a995c75c8ff4df20416deee1d04b2cbab60bf3f54bad6df57d3553fe2ac3009d8ec1446c9ba2b', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-26 03:11:05', '2021-04-26 03:11:05', '2022-04-26 10:11:05'),
('8034c3aed2a5de8ba165d3dd2bb741aa9efb669ddfe2746df529c7aa9213a492471e18994edcfb39', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-26 03:13:25', '2021-04-26 03:13:25', '2022-04-26 10:13:25'),
('8c757bf8901ce81a44ec663c6a1687f30c7edfb781d6ea880b6585100e9ea3aeb5d7c955d2074619', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-26 03:24:20', '2021-04-26 03:24:20', '2022-04-26 10:24:20'),
('f61317dc5cb90ce897cd03ad4942e61ac719fe3b13551be1776c6ae690ed2a2b6a3be20374589836', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-26 03:25:24', '2021-04-26 03:25:24', '2022-04-26 10:25:24'),
('27331a2241394c06918dc47ec9aa6ba003da00107f850268e2084220a32c167e4c85897ce86d7bfb', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-26 03:27:56', '2021-04-26 03:27:56', '2022-04-26 10:27:56'),
('70951fb9469c1675a383aa32f31154c8df600db29e39e1d3861b5d92705d4fc88c2bc98d103ea736', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-26 18:18:36', '2021-04-26 18:18:36', '2022-04-27 01:18:36'),
('d936de170f40ae5d8e14a014f93c7df147557df96063fa97bde7de2511dea067338f1db035ee6a62', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 05:49:59', '2021-04-27 05:49:59', '2022-04-27 12:49:59'),
('81db06e0d174048a1dc9a34ddac9218000331bbef0900eeec17faa63f4ffe8b1b84c5c2897a76e96', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:29:04', '2021-04-27 06:29:04', '2022-04-27 13:29:04'),
('0f87d31c6ca790e291c997c4c674e70a852ccba66686fb829634a25596366acb2215f9413ec8fb81', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:37:21', '2021-04-27 06:37:21', '2022-04-27 13:37:21'),
('c5522e11c612af7016de4eb8a0c026c7129d79d37f06ab4fa7b80080a045c7fcc585cee264b77f27', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:40:00', '2021-04-27 06:40:00', '2022-04-27 13:40:00'),
('435dc12daee2383f945d0409cbe21fb8548d344be57c08672f86b0042bfa55ae11987904f172f3fa', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:43:05', '2021-04-27 06:43:05', '2022-04-27 13:43:05'),
('baae1c5ba048a5b8424fc6184de99dba19803f1fcea62d651f7acfbb89bf84a4305b3de8bc1be563', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:45:22', '2021-04-27 06:45:22', '2022-04-27 13:45:22'),
('3ec6b1db524c03801c405f77d54741dcf3d761f0496fc622081779f1fb93b1b8cc2779acb3bb843e', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:45:59', '2021-04-27 06:45:59', '2022-04-27 13:45:59'),
('2a58c19790e180a0cf13d97df049707d68142fdc640b5dd168753d147b61eb287280543b393dbe75', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:47:30', '2021-04-27 06:47:30', '2022-04-27 13:47:30'),
('5b21a2b9212df0bdaeb0e7caa4595479877f594b1dab7191aa4a545f6a0767092ed66352cfea2c5a', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:49:34', '2021-04-27 06:49:34', '2022-04-27 13:49:34'),
('09001839c61b2a4049284a504a30872317620efee17e2bc0c8957aec63590f4dcc012cb686b3a4a8', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:51:56', '2021-04-27 06:51:56', '2022-04-27 13:51:56'),
('23e9de51f87fc69f9347b68f503d6c314f512b5d8a5c11ed9273c3749aa25175a3c0b3b2ad6da645', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:53:23', '2021-04-27 06:53:23', '2022-04-27 13:53:23'),
('de5c3b27a070e7aba4a8f818a4f657340c243990d954b9cd9e09bbe51a3393eff1e85bb568763da3', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:56:05', '2021-04-27 06:56:05', '2022-04-27 13:56:05'),
('665cfb5d7c0aa33999c2c44c81a92e2e00ccd435d40e92aa13963ae7d6fa6d583a6522bc6bba063d', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 06:57:36', '2021-04-27 06:57:36', '2022-04-27 13:57:36'),
('d034be3f4d770c9ca9c87ad70b18ab867b6ed8bb279c3b3f8af6c7a3f1c023db59d7b065cbaace11', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 07:00:32', '2021-04-27 07:00:32', '2022-04-27 14:00:32'),
('e94cf8e07ce911c9cd170dbdabe9886aad5990e6b502ce97fc8fd1cbf13281db012247d41a7777d3', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 07:35:05', '2021-04-27 07:35:05', '2022-04-27 14:35:05'),
('90396cea787faab0365d57ec61a20f19466fd83d27999325324418202e7cba462ef3649c5afb1f92', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-04-27 07:37:33', '2021-04-27 07:37:33', '2022-04-27 14:37:33'),
('e8406bbe6e3e2f94c608d2938b5a739831ee950bf0e850e5c67b198518a191b3f24d95eda84e145d', 4, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-05-03 18:33:48', '2021-05-03 18:33:48', '2022-05-04 01:33:48'),
('7ba0edf9bf0defb805baf14a8bfdbf5be91bff586208a55f7127e09a9548d9cf6b416b64e4742e0f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-07 19:32:47', '2021-05-07 19:32:47', '2022-05-08 02:32:47'),
('a9b56817f6e0a920d2432ec012393f8a9721e85a92842c412d65ee43d7c3fe7231c51fe10c0b7b27', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-07 20:54:51', '2021-05-07 20:54:51', '2022-05-08 03:54:51'),
('294634ad871ee8d33fa7f194cd89bb153400f5975466510ee45523bc13f68f8182236fcac0fee8a8', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-07 21:26:00', '2021-05-07 21:26:00', '2022-05-08 04:26:00'),
('e913201f6fc1054e68d06502c10c4bf0445cf04bbd3dfcf1083a4f64d3cd8750145a1ec489643650', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-07 21:33:21', '2021-05-07 21:33:21', '2022-05-08 04:33:21'),
('b6589f713df10d20adf3a6cc7b6b8cbc3ed501b042e17025a4a7e1c8201593386b61f1e8ea0be7bf', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-07 21:36:58', '2021-05-07 21:36:58', '2022-05-08 04:36:58'),
('b4a92b7d0c17c52f9aad251ffb16bbebd8bb1d5bc71d51941c704db640ff1e56bbf029ae901276c3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-07 21:41:44', '2021-05-07 21:41:44', '2022-05-08 04:41:44'),
('c381101af1bcc1cee734b437288706d9db527872029fc2d119b544200cf334dc481f932bdf7df19b', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-08 20:07:15', '2021-05-08 20:07:15', '2022-05-09 03:07:15'),
('196d0bf1b728e6a851efe401a74447e2465793cbb3815e771e2375b6351bc442833f0e2c4e7c4feb', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-08 20:24:18', '2021-05-08 20:24:18', '2022-05-09 03:24:18'),
('ffcad3b4e4edf51ec049d9ba269810b93eaa4e87732a3a1e61b518a922f23fbebc3ec2f6ccfbd870', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-08 20:27:40', '2021-05-08 20:27:40', '2022-05-09 03:27:40'),
('79eaf7f3724bd57d196fde445a82aa423c25ec06c952f4dff5643829605559ac881be49f245c203a', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-08 20:43:35', '2021-05-08 20:43:35', '2022-05-09 03:43:35'),
('8b7632b5a70c46c55af4e6e4252dedf47c153332c0127d60bfafa279a69bcaf47517ac23bf942491', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-08 21:09:58', '2021-05-08 21:09:58', '2022-05-09 04:09:58'),
('1ab74311d482dccc3199b93726f7a717d8881a17096c302fe7f8f81d39b2aa45361fa740729765d5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 01:56:40', '2021-05-11 01:56:40', '2022-05-11 08:56:40'),
('28b844065a2fa087de12160f93a0f7c4c928281a372954fcb131e51a1227bcb1b11420d7b4f41dc4', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:00:48', '2021-05-11 02:00:48', '2022-05-11 09:00:48'),
('1ce0c140d707094589dbbf2e1b9d1396d43aa955f975e33af66be325b151b9aed5db3ef0df4e0bd5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:03:04', '2021-05-11 02:03:04', '2022-05-11 09:03:04'),
('8578a8b9138a488a541d1968bd107a1890f442f30c2c8f48a15f0536d5c87b473b5f03d6110c6a6e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:04:14', '2021-05-11 02:04:14', '2022-05-11 09:04:14'),
('abf40f842aa082b39bc5441513c37bd4f1629772761d8a33c4b615281d818c0ec95b361bf251773e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:06:17', '2021-05-11 02:06:17', '2022-05-11 09:06:17'),
('fd156203d0bb297252c8f3cca493a5bf7bbb1b4e333874fc6f6046116c0315e4e81002077343defb', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:08:09', '2021-05-11 02:08:09', '2022-05-11 09:08:09'),
('a8269d4c4ba2680af5d686aed36d503fc51d5c574def7d6d38e8c3b86ac5998f2c7bd9852abc9c99', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:08:59', '2021-05-11 02:08:59', '2022-05-11 09:08:59'),
('065003b00af54723980123253e2d1a9f8313782d7a12a77d69f1036014726b09cd835d119ef20715', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:09:25', '2021-05-11 02:09:25', '2022-05-11 09:09:25'),
('0b02c272acc59b4d0e9fcea65a404022eac649e9834370c8956cf4c5095a9ff32f9066dccf15c920', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:12:57', '2021-05-11 02:12:57', '2022-05-11 09:12:57'),
('cb01154da230e012d8566d446f6c69418b6d0211e24a85beaab07c35af6078e7e39a745779570e26', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:15:10', '2021-05-11 02:15:10', '2022-05-11 09:15:10'),
('029d553702dbbcaafff4b92166f624adca4b461cbd5af9c4037f910afd7a9b6f05cff5cffc0f9975', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:15:43', '2021-05-11 02:15:43', '2022-05-11 09:15:43'),
('bd3c08e947c46825fda3738b44897bb354ac4f0a472edef93fefd10016edfdd5d20d2984b17eb306', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:50:59', '2021-05-11 02:50:59', '2022-05-11 09:50:59'),
('f520721ceb220917117ae69655ec8c3c2fc01c9b125bc318cc9d4478bff347eb48e0f8773eb8d057', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:53:55', '2021-05-11 02:53:55', '2022-05-11 09:53:55'),
('b35b2c1fd15b91428c4700a09c741462f56c96b257256df9b473cdc68c28b13acd3d721a47427207', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 02:58:49', '2021-05-11 02:58:49', '2022-05-11 09:58:49'),
('cdec1cad189ca753139c5ee18f7cf376ae8e0f8b1b99740306776af369aab7d4c36d588f46dcb915', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:02:58', '2021-05-11 03:02:58', '2022-05-11 10:02:58'),
('6c4ce326965dac2516b7fb503356bdbfe89edaaddb376cbe5d2e9a391874445723b795b945a8dfd5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:05:19', '2021-05-11 03:05:19', '2022-05-11 10:05:19'),
('1230bdebbf3cb63374c30c253d8899bd304852eaba923cc7e57bf0ab167b9d45942074785635c5f4', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:06:04', '2021-05-11 03:06:04', '2022-05-11 10:06:04'),
('cb597bb8c5e295babc8f5d582efc09415676fe20d57acc4ea727e819a267cca1b81a62cdec3fc6ae', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:06:47', '2021-05-11 03:06:47', '2022-05-11 10:06:47'),
('9af12beead1e65e79e118c9a4140f71345c0662f3394911dc210c60172d3ec4182727c8030f86fd1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:07:52', '2021-05-11 03:07:52', '2022-05-11 10:07:52'),
('d6a5740c37eb7d88425feed3b300361c3c758b0ec1dd19fc6e909bb668e5d1f69de2bc408c413ab1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:14:09', '2021-05-11 03:14:09', '2022-05-11 10:14:09'),
('566cbd864d150eba9713cc726793b25cb47afe1fdfc06fe7b61556eb1288775ef0629fb930fdfdc4', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-11 03:17:16', '2021-05-11 03:17:16', '2022-05-11 10:17:16'),
('74b30556c8a45fae67964ab243b8f635355147eecd31b8ca53ba17c7da5cfc492a11fbc360bfc6ec', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 00:38:54', '2021-05-22 00:38:54', '2022-05-22 07:38:54'),
('e5b458422bb0cc765606a0ce481fa351baf8e9f1e4722da7f35a59c3fe1889ec60551290b940e151', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 00:39:52', '2021-05-22 00:39:52', '2022-05-22 07:39:52'),
('524f8b2a239199f0afa7223f3ded0190739dff26d603e3fe15298f3277f4bc055d43baabd04359a4', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 00:47:44', '2021-05-22 00:47:44', '2022-05-22 07:47:44'),
('489c8c19422d89c56746d8cb89d27e6d7222f2d658769b91cc234b8c822b251d830c9ae08cbb4924', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 01:33:33', '2021-05-22 01:33:33', '2022-05-22 08:33:33'),
('deca0d7d966563ab81913c9e5c7ca8d899beb6b37eb73ccb73cbbf6dcda13a74967d6b86362c1830', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 01:37:11', '2021-05-22 01:37:11', '2022-05-22 08:37:11'),
('54e9e6d6fa6eaf3f0ba0dff8b5720ed39dc42481f6f0cc27ff6c392831a87a9586c8aaa25345d75e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 01:38:00', '2021-05-22 01:38:00', '2022-05-22 08:38:00'),
('4c584b60220b6e218ebb18688f5d396cb7acb7ba9ba5cd5a4342a5e892d76c845888db29b51e8516', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 01:39:22', '2021-05-22 01:39:22', '2022-05-22 08:39:22'),
('5243a1681504deed55484e30979729c77345edffcb2f378cb0f3a7f673023901d9664f350508c679', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 19:56:14', '2021-05-22 19:56:14', '2022-05-23 02:56:14'),
('b6f40e3147081c1de28cf7df173a2d3599346b5ae1578f75417c608f3562841b6b81c4d39953365d', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 20:00:56', '2021-05-22 20:00:56', '2022-05-23 03:00:56'),
('9e8b3513eff00e475ce939592aff9173e76d80714dae4b05604c4eafe65b0db43a73c76079e8299d', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 20:02:59', '2021-05-22 20:02:59', '2022-05-23 03:02:59'),
('15117725c67482b8178232d0900e8ed6333eb11679cc383debc7a7223a396ba1ad9d272690f89748', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 20:08:27', '2021-05-22 20:08:27', '2022-05-23 03:08:27'),
('7a86468b44bde3f92432d7f7dfa0cec9e48fc5893defeb8fa980a160adbc167af000ad020fab0ac9', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 20:12:11', '2021-05-22 20:12:11', '2022-05-23 03:12:11'),
('57bbb743f0d5e1d358acd7baf63d7ea4f12859328055eba92cbdc95d9c1013a4dba688f54c17787c', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 20:30:51', '2021-05-22 20:30:51', '2022-05-23 03:30:51'),
('9cbc46498a9bf422ae9e9876b72712225b6950499b527a013019a553757de726051c6975cb69fb06', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:00:04', '2021-05-22 21:00:04', '2022-05-23 04:00:04'),
('69bdef382787a2bcafc06e4d639561721777bdb2d7953a115b45155ee5e22b68874708468fbfaaed', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:04:16', '2021-05-22 21:04:16', '2022-05-23 04:04:16'),
('c615b8f4a7ed0f2c86fa72285a4135bef9ef6797f24c7c7aa627d64619423c0ba44d539c08b998e6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:05:50', '2021-05-22 21:05:50', '2022-05-23 04:05:50'),
('dd5709e1186b65d7fe025dd7cfafc0e0a290aae7d1219343dd68be39cc63dcd60555cad53968e9fc', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:11:13', '2021-05-22 21:11:13', '2022-05-23 04:11:13'),
('0886dd131c907822dabb05ee5d0bd74be29e188ab86c1aef7ddc56ffc2d75d5f42976e42ed8bee96', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:17:07', '2021-05-22 21:17:07', '2022-05-23 04:17:07'),
('48b2c1bec4d8c96e43472f9cfcaea09a338eb76b09f4622167ee0d3831ce8e39c14f259698f33129', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:32:57', '2021-05-22 21:32:57', '2022-05-23 04:32:57'),
('d31a324e7840a6b4c76e40e08606447178270f8728b45b18b78a5548f680bd1aa6599075fc894083', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:35:02', '2021-05-22 21:35:02', '2022-05-23 04:35:02'),
('d777e0dac3835ffc83520fcd94cba0b6d7043700b745bb18600ad85b29f2ebd4d178d98ac4d285f5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:38:03', '2021-05-22 21:38:03', '2022-05-23 04:38:03'),
('555ae28c5b252b2e4a825bf61033ab91725295140db119e99338e0e662a96dea0a3b69dd065ce5e1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 21:39:02', '2021-05-22 21:39:02', '2022-05-23 04:39:02'),
('0618cae19e51d6f3236aa7d54466d68474b7639f32ec6a72ab49781df6ffca70d0646a3c3ba45172', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 22:07:32', '2021-05-22 22:07:32', '2022-05-23 05:07:32'),
('0658e9c999ab8a9f925e2a8f788e236786a421c3fff97d846bf5bc5d169316c1222d254303da3430', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 22:11:28', '2021-05-22 22:11:28', '2022-05-23 05:11:28'),
('b318fa8d785db360021d50d2c02fffea6c4194de1ee8443d7186065bb9d483b8d1bf57a2e60c3489', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 22:31:28', '2021-05-22 22:31:28', '2022-05-23 05:31:28'),
('be590d473e8d28adc48c6fb5064bfd6add376e65afcd3b657d18c57c945016800497971677ff74b6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 22:34:27', '2021-05-22 22:34:27', '2022-05-23 05:34:27'),
('20fde13c18c2e705e75f774dc295f90d4e8508fd30282d2a6694c3d2bc0db670c99dbb58204b71cd', 11, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-05-22 23:49:35', '2021-05-22 23:49:35', '2022-05-23 06:49:35'),
('d0648095bd6abdd627636098ad392c7c028038bd01b66c114d0c4567f716f09e08fb4c111d1f08f6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-22 23:54:47', '2021-05-22 23:54:47', '2022-05-23 06:54:47'),
('45953a4e1b00a674066fe5cb3c2c790b5ae539f7aa7a433679fad04234d692911408fedfd01a16ae', 11, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-05-22 23:58:19', '2021-05-22 23:58:19', '2022-05-23 06:58:19'),
('3cd818b9345a295e5bfab88b5ef48e739df04445f5c8a08b20afc599917d071bb5b03a29961293b1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 00:20:51', '2021-05-23 00:20:51', '2022-05-23 07:20:51'),
('d5e3e9a2da03885866eef7147398831810e56b85d2ddb115cbfc9ea1da96c394b28466ef77963be1', 11, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-05-23 00:34:57', '2021-05-23 00:34:57', '2022-05-23 07:34:57'),
('8eb7055602aa909c44f3437afe0dfa896738ba42c5ed4ef2cef580d28336a42e28fb2e9b04eb4d12', 11, 1, 'DoAnCaNhanLaravel', '[]', 1, '2021-05-23 00:43:33', '2021-05-23 00:43:33', '2022-05-23 07:43:33'),
('9c78f41f02dc8f88340ed8da29f46a64d21a18ba8df42f9be6371d9d4f41ddbad4a5989af0ca167b', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 00:44:01', '2021-05-23 00:44:01', '2022-05-23 07:44:01'),
('ec68bcec7df8ee332e795db46d71d89bad7a40897ecc74de34d65471820b2fe0259d09849da943db', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 00:49:55', '2021-05-23 00:49:55', '2022-05-23 07:49:55'),
('9aa7a9eaa100c85aa32d2e4c5f7c3980a7431f670df5ca615ad90facea77a63bc34ebdff35ddd341', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:35:35', '2021-05-23 01:35:35', '2022-05-23 08:35:35'),
('f4ba91c30872a9a79007947ec301c26beb765feec7efd579fff7d1a9dfd193f9db156be3a751ae89', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:36:27', '2021-05-23 01:36:27', '2022-05-23 08:36:27'),
('1b73a0f8148b3db2d30b2fc2fb4fa7cb4d228d0021f84f8f27ecd10c93e76b5ae4723ee000dec849', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:37:59', '2021-05-23 01:37:59', '2022-05-23 08:37:59'),
('29903ed6555aaf86961fd54104da2da2ddc48ed681b2dd45c42d88b6a98fc899133e966f93bf32b2', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:38:56', '2021-05-23 01:38:56', '2022-05-23 08:38:56'),
('3f6144a3175c9744ed8d53bb1d56fbd916dca101816c9edce3fa66aaa619890ccded7a64734df2e5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:40:00', '2021-05-23 01:40:00', '2022-05-23 08:40:00'),
('8626114ca139157e56ca9cdbd5c3f155d3aee6afdce14af01dce98b5ec2a7cf64fb2ad1f9d74e8f3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:41:08', '2021-05-23 01:41:08', '2022-05-23 08:41:08'),
('973177247ce7622c18b5d23461e03e3708d4fda7abefcb9c1aff45a56c022797f6cc147090a9dbf5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:41:43', '2021-05-23 01:41:43', '2022-05-23 08:41:43'),
('32ee7d160eb3a2524325bf335d378246c40a1057e2e262b62a44fc3e2d9f2b3896026ed4f9def3b7', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:43:14', '2021-05-23 01:43:14', '2022-05-23 08:43:14'),
('df5d57eabf0b0f6e024dcd58ecb4bbc15482a48162f7abc2e1cb978efddda127029548c91fb85b53', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:43:52', '2021-05-23 01:43:52', '2022-05-23 08:43:52'),
('7ddfa0e98cb4bd8e5ae5494304a8dc3ad4438e556b3cca5c003b001d83c0d8beeaf50b9e9eba068b', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:45:36', '2021-05-23 01:45:36', '2022-05-23 08:45:36'),
('a8b8ff4e2804516e19aef3e70d1c184a22adce663cf72971aef3192d274e9b35113136d62c3b847d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:49:29', '2021-05-23 01:49:29', '2022-05-23 08:49:29'),
('83a42aa6a18e3bd7b93c9f873fd45e6e5c413cc9d930e565fb93cf72061cef4a1746bc083ce8e7e6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:51:59', '2021-05-23 01:51:59', '2022-05-23 08:51:59'),
('3a53df484294ef0d728c15f6736a6644cce560e770c65e222579d40471ac63062fd25887312281d2', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:52:24', '2021-05-23 01:52:24', '2022-05-23 08:52:24'),
('119375934538f22d161c93c41c45ba8edf81129b178bbba228068fde58908e7b2ab903874360ef34', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:53:44', '2021-05-23 01:53:44', '2022-05-23 08:53:44'),
('72410b22d334b8a261e80c835849933f163e98ce4df1a24591310d90ebf68e8ecb011f2f79902b04', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:54:35', '2021-05-23 01:54:35', '2022-05-23 08:54:35'),
('322436b9dfe9bf83446a67f6947e75abdf130cb9d596cd28cc54d66547fba9ea14bfe5278ce95e87', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:55:09', '2021-05-23 01:55:09', '2022-05-23 08:55:09'),
('b7b28bf358c52972bc01250b19b49835224e814d2f1e95320b3a0ea1b628a027a861c3f5eedb2e0d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:56:08', '2021-05-23 01:56:08', '2022-05-23 08:56:08'),
('c89254935199a115cdb8e437cd1faa3cfe28a8dbb1e00ca484812bbbf65a25c7c13befaa3d09353a', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:56:42', '2021-05-23 01:56:42', '2022-05-23 08:56:42'),
('aad7927e12e9b8d04d120bbcafa8e1ac3d6a5fa0607e1e7e2ce76ce1aa1c6f65954264b9f2a684e1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:57:29', '2021-05-23 01:57:29', '2022-05-23 08:57:29'),
('819277ffcd487edf3f7dd061063f907e6287dd932a6cd9ac83108853f84ac50965a88716d3280a2e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 01:59:25', '2021-05-23 01:59:25', '2022-05-23 08:59:25'),
('7ce979113ab307b9a9f30797c39c984a84eee521dc4d22b8b10414fb640afe2a6fdf59b7221e5690', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:02:49', '2021-05-23 02:02:49', '2022-05-23 09:02:49'),
('82a13a5ab82980d7b098b310d7520537b77001404344e279766e69e2da0dd9778b41088c88dc47c9', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:03:46', '2021-05-23 02:03:46', '2022-05-23 09:03:46'),
('bc3c909f9fc4a2caf7aa3e47c7351c35e0c0014458c6253285728d9879eb4362eab7ac196547fda8', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:07:00', '2021-05-23 02:07:00', '2022-05-23 09:07:00'),
('02a23d12fc4a690ffcb270e24104fe0047e024d9cad7914d554229de40426774c3f0ea38c5ea9d8d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:13:55', '2021-05-23 02:13:55', '2022-05-23 09:13:55'),
('3fade466fd68192863321e3d51fe991436d0d98169a12e1f39ec4acfba45fc7d62a503147ed36606', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:15:11', '2021-05-23 02:15:11', '2022-05-23 09:15:11'),
('8a849fa2c3466bf060dfdd18e76b1de7434d61b6f312f07c02a1d94fad3829bdfc16d46c2093c416', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:18:07', '2021-05-23 02:18:07', '2022-05-23 09:18:07'),
('8f20b7490679038fe7c6a1bcec4e196f858ffb8d91c4e9d2bb4d36daf1302202ef2369eac3ac9265', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:18:17', '2021-05-23 02:18:17', '2022-05-23 09:18:17'),
('6c120f8c222a187afe3d15badf5678371daf0b35d458c1a03d86d19c254b1225eac0a691c475ea3f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:21:48', '2021-05-23 02:21:48', '2022-05-23 09:21:48'),
('e48b0dc1af5db5c13846c4dfb1126dd79d1c5e799589a5d5d64e85c9db4452a20490d50c2a3c0623', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:44:40', '2021-05-23 02:44:40', '2022-05-23 09:44:40'),
('2bbfa36f805eda29490b9dbc23ae2d0af930a0b72f9d53a6b91ea7f2688c2cd235cec264494cf998', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:46:16', '2021-05-23 02:46:16', '2022-05-23 09:46:16'),
('1d261fd6905fd3c67d54b07dbd9f6cbee766a76e28f9e48660f7e1af5625139ff24e9c59693274bd', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:49:55', '2021-05-23 02:49:55', '2022-05-23 09:49:55'),
('cede32a609fc5082a0bb1e126d9e94e4f85cdf0c1166b50371da88c52abf008136e9bbb2556b5fad', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:52:03', '2021-05-23 02:52:03', '2022-05-23 09:52:03'),
('7de61368417544c6f8ba7bca48d8d74f3dd4fea6d4346a4b0b451abb4b716f8e96adcf4cc8eb96ed', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:52:12', '2021-05-23 02:52:12', '2022-05-23 09:52:12'),
('cc8a64098d2df74173d5230f9897032fca0d31f8b532e4f3b1c6659d47afb8844bcd028fbd00ae72', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:52:20', '2021-05-23 02:52:20', '2022-05-23 09:52:20'),
('f4d1639f74f9d25208c0668880a27950faf623d74997edd4f32eb5c777a873f3ee11a62a8eb5c7d6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:52:32', '2021-05-23 02:52:32', '2022-05-23 09:52:32'),
('459f99dade5197569dca37de6311a5a3adc1b3e05b653a0dbd2bd7cc75c148084fac71a8ffab3f0f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:52:39', '2021-05-23 02:52:39', '2022-05-23 09:52:39'),
('34f74b505820eb140258287d41c21f828906d91ba93cd90cc94ee786eb70d172dd7d4070ae9ebbff', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:52:45', '2021-05-23 02:52:45', '2022-05-23 09:52:45'),
('d8111463ef05d7813e1e9e924b038dbc07c775ce8f3cafd9a42f876bbdc87651feeaed96cb96c7ea', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-23 02:55:38', '2021-05-23 02:55:38', '2022-05-23 09:55:38'),
('cd5eeb306b26b1e02a29ef885728f972b39ceddf94131967fc2e9560da2b311a5ad766219838178c', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 05:48:15', '2021-05-25 05:48:15', '2022-05-25 12:48:15'),
('57b841270b58bdf72e5b6b958cf035cc1e987bd79376a910f0f391c089e2e89c3bce159fb99ea409', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 05:50:05', '2021-05-25 05:50:05', '2022-05-25 12:50:05'),
('4370b2bc87356158432ab6705d17dc7c45b8f6a1d8cf4a1b1b15e75f0c62cf79e4ddf04de97efece', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 05:52:45', '2021-05-25 05:52:45', '2022-05-25 12:52:45'),
('83bff427d96f6944cb12851d6ddc15d75fdd58380572ecbb2bf4a9ee51997cb64b4a48119438383b', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:03:11', '2021-05-25 06:03:11', '2022-05-25 13:03:11'),
('25e5872b822dd0f4abacbae976c41f4f2c33f91fe8c8bdf15b47d21794af04381646444ce67d0c1f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:07:22', '2021-05-25 06:07:22', '2022-05-25 13:07:22'),
('71947e3c334297691187d35539fd65f9a7a228d76b56ed2d22de8c8577cc3256b238c2162d4ae8e6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:10:53', '2021-05-25 06:10:53', '2022-05-25 13:10:53'),
('93a154a87e9b83bcb9d457cbab212ae4ffb6e79c7f647e853a9ffcb972defff2d037b0f9b17c9a97', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:17:14', '2021-05-25 06:17:14', '2022-05-25 13:17:14'),
('dc254c095d5ea177b016000bf03f8ea2581f749c68ee9740e822801bd4e9f08a8b43cfc0b73a1b33', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:18:39', '2021-05-25 06:18:39', '2022-05-25 13:18:39'),
('a24f30bbfd06b4b86e1e147a84a72c371210e0c3c92ec3977f27d82168ec0c9d63af918709f09331', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:22:06', '2021-05-25 06:22:06', '2022-05-25 13:22:06'),
('d0542d172d0936d8506706148884a96cb037b5da062551072876ceff25c7935676b7c648509e1f2d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-25 06:23:56', '2021-05-25 06:23:56', '2022-05-25 13:23:56'),
('ac7a82664a73c1994af6405385b77ac10853d9de68000d8baac5fe50b4cb68bb98f564d10086ff87', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-27 05:57:55', '2021-05-27 05:57:55', '2022-05-27 12:57:55'),
('d58ecfb5aa71bdf93dec7c1a8abd7d3f569fe24af5b54ac671559aa0fe7271d187b87df182849e2b', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-27 06:09:04', '2021-05-27 06:09:04', '2022-05-27 13:09:04'),
('6eb8ced5d88286b4f06e23ccc90cadfb51cce0a19002bb218acf93d674f69475efca9d9c283423d0', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-27 06:17:59', '2021-05-27 06:17:59', '2022-05-27 13:17:59'),
('010f3adeff60bb8608c50ee0c8983967aac7f2d5a38301c43ac65cca3d179dfb5afb32bb3ea3f0b3', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-27 06:22:05', '2021-05-27 06:22:05', '2022-05-27 13:22:05'),
('2b12234fd77ed0d66e1997b8108871cb32e044f2638f3ce010e89212dcc8908e91edc39f508269e4', 4, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-27 06:24:24', '2021-05-27 06:24:24', '2022-05-27 13:24:24'),
('4d8899962ef6376e26a3e6647e5aadbbde92418e818b82c3b90a30473082d0e389f689c59a80ca1d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:07:30', '2021-05-28 03:07:30', '2022-05-28 10:07:30'),
('6bdbfca91b7d4f091e340f8d08d1555fc828f6acc119dd51565fc5058f14b1232714e9fdaa2972b2', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:09:30', '2021-05-28 03:09:30', '2022-05-28 10:09:30'),
('7e76c9422cec5f85f1e6380d6f8e1fc80e6fb1d97d6debad29095aa08981738f067b394bbbeb9645', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:10:06', '2021-05-28 03:10:06', '2022-05-28 10:10:06'),
('f4838fe26e4f318f4e1661e9d03111642d3e1ddf456a19335221dc18cdff805f17a1cee6f8ee840e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:11:26', '2021-05-28 03:11:26', '2022-05-28 10:11:26'),
('9aadba52bfd29f0dbcd456580fac17ca6ce315b418c7f7f77c721902aa2130084ea43884a91151b8', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:12:54', '2021-05-28 03:12:54', '2022-05-28 10:12:54'),
('1d1c73cdc3622ad297eed209762afe5d4caedeb5d1d95d0d81a132efac214e52ba6fef16a30248e7', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:21:03', '2021-05-28 03:21:03', '2022-05-28 10:21:03'),
('cf3c1fb4610f4df6239bf8e96582e22a535656e3f2bd974e9f13fbe7dd621cdeb4f837052065d1d3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:22:10', '2021-05-28 03:22:10', '2022-05-28 10:22:10'),
('4aa8a15f01934d60a26007f7fb239be145db1b74e6dc763f8a2091d9a7d6d5ddb6f76eb5835897f1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 03:22:49', '2021-05-28 03:22:49', '2022-05-28 10:22:49'),
('ac0ef7065c4c1c0ed6b679e31eaeae7eceb61ce798be1586cfc1c7bf6707057bbf8cc3e0a867c1de', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:11:42', '2021-05-28 06:11:42', '2022-05-28 13:11:42'),
('bd6770a114ad580bd6c457b8f93d1e227794ad0076514a313af1e1dc6d6b33ea781081993eb50f0d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:15:37', '2021-05-28 06:15:37', '2022-05-28 13:15:37'),
('86ab09d266b550ae4ce060a2f8794998e94f8451e99a5037398ff4a6f026242e958d1105044fafa1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:19:38', '2021-05-28 06:19:38', '2022-05-28 13:19:38'),
('be230f30c677f3816ac375345ae86ac83f016e051ea65500d6b71ce59f88e2613f153e6898c4ce60', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:24:22', '2021-05-28 06:24:22', '2022-05-28 13:24:22'),
('2275b14c430cac0e7338da9d92ca13e822544a8f9e4b08ad4b8d8c9707dd5e88dd28320544772212', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:29:38', '2021-05-28 06:29:38', '2022-05-28 13:29:38'),
('bc2482eda21a1fb8df8848a1e2b54b73c51ed4bfae7fbdeb08b183914b335ea9405015c32c8c6e5c', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:31:19', '2021-05-28 06:31:19', '2022-05-28 13:31:19'),
('9265ddafc322e9dd6597b063298342907a0e8ea28261b269dc1beb8a869fe2186d27fd406a79aa98', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:31:54', '2021-05-28 06:31:54', '2022-05-28 13:31:54'),
('ebeb380ad4742b32f3e766e337e5b8fd6bd3f81c4f9153f8ea17f9a7af965930d6d22e4166975838', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:32:48', '2021-05-28 06:32:48', '2022-05-28 13:32:48'),
('3625e890af74e514c49bcf93eaedd7c1cb5c88eddffbdefeb73f0f6413df22b0c7e7e9f57d4be186', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:50:55', '2021-05-28 06:50:55', '2022-05-28 13:50:55'),
('d5c1b8983a37cf461d66a2a1c70befa4ae2ce859b7d4defaf076c38abf7a4a5296ef9f498e07fced', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:53:35', '2021-05-28 06:53:35', '2022-05-28 13:53:35'),
('8f2e9b409c5d03fb164d8ee64df06599f9de3e5194d60396d603b6f963591a79f70ab6295b56728b', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:57:48', '2021-05-28 06:57:48', '2022-05-28 13:57:48'),
('0837d2cfa105a7e9d8d6cae0050ff1fed996677466a7c899b959a019e4f540d9d0c89a3a01f8b860', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 06:59:35', '2021-05-28 06:59:35', '2022-05-28 13:59:35'),
('89098994acb3b0b0f9ea55ae62a9aa32795e381405a777d9c6beb52411e2545ad4999ebe79baa793', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:01:18', '2021-05-28 07:01:18', '2022-05-28 14:01:18'),
('d8efec1842946fe7934e67716595bcf1a541eca7120799e9f8d5f4b545a068cfe1226ceccdc2bed8', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:22:28', '2021-05-28 07:22:28', '2022-05-28 14:22:28'),
('2e6f148fc9d184d68800b383b35ce321882a32bd8f1edd64c4cbfdf348e223969a777cec0dd8c09e', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:31:50', '2021-05-28 07:31:50', '2022-05-28 14:31:50'),
('8c5a74fe4dc525b2e5ecfc2c84a8a116f0b83670a1eefb8dbf26a40cd072d3b0a9ab662d6daa5149', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:33:29', '2021-05-28 07:33:29', '2022-05-28 14:33:29'),
('47fc790a3bdb8db8c2456a665d4a504eb1c356e2c1eb692703efb3d67f4979a36c0775512256b7db', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:43:58', '2021-05-28 07:43:58', '2022-05-28 14:43:58'),
('9b17201e1dcb2795c7d8a9998c21be7480071e73b1104ee2954a1fd6d8a1941839b931a8320cc8c3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:44:56', '2021-05-28 07:44:56', '2022-05-28 14:44:56'),
('82ac47d15723bc1b495c7a72234f700295c5ab2c645d74bae6a78f96741530f88b71d00f64fc84bc', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:45:38', '2021-05-28 07:45:38', '2022-05-28 14:45:38'),
('4e288e6dac2d2020c1e08c89b5669205404198e288f00cd9e62cf423a1f3751b382599cc772e8e7f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:46:24', '2021-05-28 07:46:24', '2022-05-28 14:46:24'),
('7eedcf197e5165399bdd432859270e43faa7a316ff6ddc45da2e5934ed480754033ea88b69d78c17', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:48:18', '2021-05-28 07:48:18', '2022-05-28 14:48:18'),
('4f11ced4ed24b874ef25a511c9c6399b196169acf26e5d309b0440cab45899048817c99243e56b40', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:49:36', '2021-05-28 07:49:36', '2022-05-28 14:49:36'),
('ff2bce817c011a98c3c45c10c30fe5200cff396027fa3cff00e63474ac25a826c82ba859e273e00a', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:51:43', '2021-05-28 07:51:43', '2022-05-28 14:51:43'),
('ad7cefcf0ce61039074b52c2301c4f3c66b3e5420d625e06affb1a5b2f4612f91f3923051f60f3e1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 07:53:01', '2021-05-28 07:53:01', '2022-05-28 14:53:01'),
('a0ac201e629dcb0a4d1c1351dfdcaeaaba494964f04ae905ca14db0048025b402049bc425042027b', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 22:52:12', '2021-05-28 22:52:12', '2022-05-29 05:52:12'),
('0c38c154cd4d4742013a4a1d279ed1c46dac39263d6948e5f5fd6a7ca43bf641f8a6c729e088f86f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:04:50', '2021-05-28 23:04:50', '2022-05-29 06:04:50'),
('a257b0cd0f45d58a03c06dfc5834d59de297460c4953eef44c52e62b05f6ee3a9d9ceefafc90bcd6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:06:47', '2021-05-28 23:06:47', '2022-05-29 06:06:47'),
('0bb6e075978182ab7d31c27e687ad22fbbe7b807e542a0cc6aadafc96124acfb40c69f1563a914bd', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:16:12', '2021-05-28 23:16:12', '2022-05-29 06:16:12'),
('182b396450c526364341059aa328c2480364ab582ad91202cc1f1235722701e5865047cbb74feba5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:17:30', '2021-05-28 23:17:30', '2022-05-29 06:17:30'),
('1cf583de3b5953c1da3984d80cf4b8ad70c14db2718eec6a90b63bba1a2b03cc7590787d84d8f71d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:24:02', '2021-05-28 23:24:02', '2022-05-29 06:24:02'),
('2bf2c444f28ff57eda0f89b3e094229dd3a421bdf4016d464bad317af010a6348f904a87724c33c0', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:24:56', '2021-05-28 23:24:56', '2022-05-29 06:24:56'),
('24b50404feeab0836a9d2f3d858c91b6423137259649d503d97be6c631a2059aa5ee2aba57f99270', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:29:57', '2021-05-28 23:29:57', '2022-05-29 06:29:57'),
('c3ca85a0c3621ce32780b245bbc2a7edf75df39ffe437c685d5f28af12b4312c85fd8eae29cc2d9c', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-28 23:57:42', '2021-05-28 23:57:42', '2022-05-29 06:57:42'),
('1c383641aa7315ff1fbd209e96c4ac6f17f05d07d447ef19e255d9f2a763103b62d734e6d7f43cee', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:07:14', '2021-05-29 00:07:14', '2022-05-29 07:07:14'),
('0cbfdcde89e6a2ee3c8af5eaf0139bff0892fc2c036f797cda1368d6824f48c9c0b9367873e579c1', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:07:48', '2021-05-29 00:07:48', '2022-05-29 07:07:48'),
('dc22dd9b82b419afc2c8c4e650804f80ff82a39532e46b9d5eb9ee85b02e3c66e54cc0c8899f2109', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:15:32', '2021-05-29 00:15:32', '2022-05-29 07:15:32'),
('0d78e8fd285cfff0f877cf40c784dadd4c9049d907e5b224577f55d7a0860c7a9f3a9c7676680fd5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:22:35', '2021-05-29 00:22:35', '2022-05-29 07:22:35'),
('ad3dd5ee93fbb6f48844c4bfeb40740da5009a36af577d375089c72b0a59d4890265e826dae6f6d2', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:33:53', '2021-05-29 00:33:53', '2022-05-29 07:33:53'),
('cd0240c9cf69d86e0ae630bb1496361c4dc74e17a62ccffe57d22feb0c167560e806fb60175f448f', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:37:11', '2021-05-29 00:37:11', '2022-05-29 07:37:11'),
('831dac4a4f04ebaeedb5e5a11f432b0f76f1fc3016d093d67be1eebf950339e645d62195365c597b', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:46:08', '2021-05-29 00:46:08', '2022-05-29 07:46:08'),
('afd99bd4d399c3b525fa1425d7d1f4eee34dc018551695dc18d9ce443e0d1730cd1fdcbd79619eee', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:47:00', '2021-05-29 00:47:00', '2022-05-29 07:47:00'),
('29a47636047afff5e2b7a7c2a6ef29f9712792f376642fbd58ea3b8ad9e4e7008a48689940ff85f3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:52:05', '2021-05-29 00:52:05', '2022-05-29 07:52:05');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7d5330efa4be3376b01115ee2d8bcf23c1d67f7ab8f16cfde83a5d494f5ffc195d3151bd70db6263', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:53:39', '2021-05-29 00:53:39', '2022-05-29 07:53:39'),
('3a37451d6ce170fd0762d7c456285c48570d0c1152db377778688d49367c1d9c15f1313741c05cb5', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:54:11', '2021-05-29 00:54:11', '2022-05-29 07:54:11'),
('d98477286949e551650eddbdfcccf16ddbabba8eba6d8be463dc109d2d89c1af913dda9074295fe2', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:55:15', '2021-05-29 00:55:15', '2022-05-29 07:55:15'),
('083abdb58e8832a6773bbe1fceda09b58ee2b9e01f3261fe33bb7789c8a6748650ff8e48f8403440', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 00:55:55', '2021-05-29 00:55:55', '2022-05-29 07:55:55'),
('64f8eaa0e89d961de1cad44ee3a478610d0b98252e308757dd2388e551302a09afecdb0826198b02', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:00:52', '2021-05-29 01:00:52', '2022-05-29 08:00:52'),
('d8df5799839687a5ce1c5c61934ef7ee51e29365a0eae8e0f96fdda48f0a58ae799cf0b77971d185', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:03:41', '2021-05-29 01:03:41', '2022-05-29 08:03:41'),
('e66491e948dcc932e955aedccd712d860e79bfa4f4a72bceeaddbe33a4d538877655bb3a6383b9df', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:12:59', '2021-05-29 01:12:59', '2022-05-29 08:12:59'),
('de6de48f866dfe7a0599f4a9886335f982f3d4799aca15e98cf0b329917421bfa07bcc665f2357a6', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:13:50', '2021-05-29 01:13:50', '2022-05-29 08:13:50'),
('5115e8d8127282906612c20ba1059a38d5bcd22ba5655359fa64054080b230c69c4306604ded7d5a', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:17:39', '2021-05-29 01:17:39', '2022-05-29 08:17:39'),
('b4294f6b5e30ae54eb141fde51b7b5f80f72bcd45c697dcf1115c35a6ceff297b8c5430406a509d3', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:20:57', '2021-05-29 01:20:57', '2022-05-29 08:20:57'),
('000a3fa38621f3964bd27a8c420c91f0f5dd10c787efc6be2d54df8f7d9ac467e6aa095626e45343', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:21:56', '2021-05-29 01:21:56', '2022-05-29 08:21:56'),
('0e5d47857fe52fd210bb1807998dba448428d9973c208090bf846e15d77a0c68d428065060d9ec1c', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:23:44', '2021-05-29 01:23:44', '2022-05-29 08:23:44'),
('af3100d7fcbdb22a0cd8cd893c7e6821562c0943e796b283a032cf582b29b1310a65e2183126d00c', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:24:19', '2021-05-29 01:24:19', '2022-05-29 08:24:19'),
('624580d562f1712bf4cec77c702c7969f6790a4e60957fd9adab954e791947d825b864d5e1250f70', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 01:24:55', '2021-05-29 01:24:55', '2022-05-29 08:24:55'),
('de2d6c1a9d84e244a15554f1f8a73b370a8601f995939690dcaf70c4f591a845bd263b3b1dcd770d', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 02:00:03', '2021-05-29 02:00:03', '2022-05-29 09:00:03'),
('6fcc7b52135a0373f3c40db86c5e9b09a844f3f75e9761fcc07b6d4cdacd79f6697ad977c2953be9', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 02:17:19', '2021-05-29 02:17:19', '2022-05-29 09:17:19'),
('da613f48d1fab41d747404fcba0bc21730ea7e857f5caf658b1de3e8f328d709e084cd707552c624', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 02:20:06', '2021-05-29 02:20:06', '2022-05-29 09:20:06'),
('251c6a9dfaee0dfdc1ed1a0ae636e37e7e58aca99a27382cbdc3842c1a6da6f64fac5320ad6e4dcc', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 02:43:14', '2021-05-29 02:43:14', '2022-05-29 09:43:14'),
('0e77b3039d3bf18b2b50f0bca68cc99261bd6f16fe7543bbb607373b91c0f2d42f54646dbc144472', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 06:47:15', '2021-05-29 06:47:15', '2022-05-29 13:47:15'),
('a7362c076af28fb6b69245ded072cc89db3f94ab02ae6b7a43cb2628a4c2cb8f16001b23477c6630', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 07:10:11', '2021-05-29 07:10:11', '2022-05-29 14:10:11'),
('e2f2c31d360a07e951e35f32389e57a69d1b5922e81d7a6b966d2cdfdaf91be3245bfefd54968273', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 07:13:03', '2021-05-29 07:13:03', '2022-05-29 14:13:03'),
('a3cd8b83e390d345fdebf3fe1f582b392c6fde9e983ad8675d78a14d18c1e1936eb3e868d43efebb', 11, 1, 'DoAnCaNhanLaravel', '[]', 0, '2021-05-29 07:20:32', '2021-05-29 07:20:32', '2022-05-29 14:20:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'P8H7HYYyfnWo39vgPgSU86iivT3UryUaIDJAuez2', NULL, 'http://localhost', 1, 0, 0, '2021-03-18 19:07:52', '2021-03-18 19:07:52'),
(2, NULL, 'Laravel Password Grant Client', 'p0j0E2CyHgaLnWdqI5dkDijDb0YtNmLtbX38nOz8', 'users', 'http://localhost', 0, 1, 0, '2021-03-18 19:07:52', '2021-03-18 19:07:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-18 19:07:52', '2021-03-18 19:07:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenSP` text COLLATE utf8mb4_unicode_ci,
  `Gia` int(10) UNSIGNED NOT NULL,
  `GiaMoi` int(10) UNSIGNED NOT NULL,
  `Image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DanhMuc` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `MaLoai` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sanpham_maloai_foreign` (`MaLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `TenSP`, `Gia`, `GiaMoi`, `Image1`, `Image2`, `SoLuong`, `MoTa`, `DanhMuc`, `TrangThai`, `created_at`, `updated_at`, `MaLoai`) VALUES
(64, 'Đu Đủ', 33333, 2222, '1646058099.jpg', '1646058099.jpg', 2222, 'aaaa', 1, 1, '2022-02-28 07:21:39', '2022-02-28 07:21:39', 1),
(65, 'Nho Mỹ', 33333, 2222, '1648292438.jpg', '1648292438.jpg', 2, 'aaaa', 2, 1, '2022-03-26 04:00:38', '2022-03-26 04:00:38', 2),
(66, 'Sưa tươi', 20038, 0, '1648292773.jpg', '1648292773.jpg', 200, 'aaaa', 1, 1, '2022-03-26 04:06:13', '2022-03-26 04:06:13', 23),
(67, 'Cam Tươi', 25000, 0, '1648292968.jpg', '1648292968.jpg', 100, 'Lorem', 2, 1, '2022-03-26 04:09:28', '2022-03-26 04:09:28', 25),
(68, 'TÁO JULIET HỮU CƠ 500GR', 80000, 78500, '1672550100.jpg', '1672550100.jpg', 100, 'JULIET là loại táo duy nhất trên thế giới được sản xuất độc quyền trong canh tác hữu cơ.', 2, 1, '2022-12-31 22:15:00', '2022-12-31 22:15:00', 26),
(69, 'Product 10', 55000, 54000, '1672550206.jpg', '1672550206.jpg', 100, 'JULIET là loại táo duy nhất trên thế giới được sản xuất độc quyền trong canh tác hữu cơ.', 1, 1, '2022-12-31 22:16:46', '2022-12-31 22:16:46', 25),
(70, 'Product 11', 25000, 23000, '1672550240.jpg', '1672550240.jpg', 2, 'JULIET là loại táo duy nhất trên thế giới được sản xuất độc quyền trong canh tác hữu cơ.', 2, 1, '2022-12-31 22:17:20', '2022-12-31 22:17:20', 24),
(71, 'Product 12', 55000, 54000, '1672550337.jpg', '1672550337.jpg', 100, 'JULIET là loại táo duy nhất trên thế giới được sản xuất độc quyền trong canh tác hữu cơ.', 3, 1, '2022-12-31 22:18:57', '2022-12-31 22:18:57', 24),
(72, 'Product 15', 80000, 78500, '1672550364.jpg', '1672550364.jpg', 100, 'JULIET là loại táo duy nhất trên thế giới được sản xuất độc quyền trong canh tác hữu cơ.', 1, 1, '2022-12-31 22:19:24', '2022-12-31 22:19:24', 25),
(73, 'Product 16', 80000, 78500, '1672550417.jpg', '1672550417.jpg', 100, 'JULIET là loại táo duy nhất trên thế giới được sản xuất độc quyền trong canh tác hữu cơ.', 1, 1, '2022-12-31 22:20:17', '2022-12-31 22:20:17', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `Link`, `HinhAnh`, `TrangThai`) VALUES
(1, 'https://shop.samsung.com/vn/dien-thoai-samsung-uu-dai?cid=vn_pd_ppc_google-search-new_galaxy-s21_no-phase-assigned_im-d2c-salescampaign-06apr_text-ad_sem-s21_none&utm_source=google-search-new&utm_medium=social&utm_campaign=im-d2c-salescampaign-06apr&utm_term=h&utm_content=sem-s21&gclid=CjwKCAjw07qDBhBxEiwA6pPbHo8uwPmWr-C9_Kc0bv-0q3B7QdD94bw_J3GGMH9EBZUxH1GIgTC94RoCpbEQAvD_BwE', 'slide1.png', 1),
(2, 'https://www.oppo.com/vn/smartphones/series-reno/reno5-marvel-edition/', 'slide6.png', 1),
(3, 'https://cellphones.com.vn/iphone-11.html?itm_sourcew=hp&itm_mediumw=sliding&itm_campaignw=iphone_11&itm_contentw=banner_690x300&itm_termw=sale', 'slide4.png', 1),
(4, 'https://www.vivo.com/en/products/x60pro', 'slide5.png', 1),
(5, 'https://cellphones.com.vn/sforum/redmi-note-10-series-ra-mat-tai-vn-man-hinh-amoled-120hz-cuc-dinh-snapdragon-678-732g-gia-chi-tu-4-7-trieu-dong', 'slide3.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
CREATE TABLE IF NOT EXISTS `thongbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `tieude` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `iduser`, `tieude`, `noidung`, `ngaylap`, `trangthai`, `updated_at`, `created_at`) VALUES
(18, 14, 'Đã tiếp nhận đơn hàng #4', 'Chúng tôi sẽ gọi cho xuân lộc để xác nhận trong thời gian sớm nhất', '14-04-2021 11:44', 1, '2021-04-13 21:45:11', '2021-04-13 21:44:58'),
(24, 4, 'Đã tiếp nhận đơn hàng #22', 'Chúng tôi sẽ gọi cho Mai Hoàng Tiến Đạt để xác nhận trong thời gian sớm nhất', '16-04-2021 10:06', 1, '2021-04-17 22:48:21', '2021-04-15 20:06:26'),
(25, 17, 'Đã tiếp nhận đơn hàng #23', 'Chúng tôi sẽ gọi cho santi để xác nhận trong thời gian sớm nhất', '16-04-2021 14:55', 1, '2021-04-16 00:55:59', '2021-04-16 00:55:47'),
(26, 17, 'Đã tiếp nhận đơn hàng #24', 'Chúng tôi sẽ gọi cho santi để xác nhận trong thời gian sớm nhất', '16-04-2021 15:16', 1, '2021-04-16 01:21:01', '2021-04-16 01:16:25'),
(30, 18, 'Đã tiếp nhận đơn hàng #28', 'Chúng tôi sẽ gọi cho @*123 để xác nhận trong thời gian sớm nhất', '16-04-2021 15:41', 1, '2021-04-16 01:45:17', '2021-04-16 01:41:27'),
(33, 18, 'Đã tiếp nhận đơn hàng #31', 'Chúng tôi sẽ gọi cho @*123 để xác nhận trong thời gian sớm nhất', '16-04-2021 15:48', 1, '2021-04-16 01:48:21', '2021-04-16 01:48:00'),
(34, 4, 'Đã tiếp nhận đơn hàng #33', 'Chúng tôi sẽ gọi cho Mai Hoàng Tiến Đạt để xác nhận trong thời gian sớm nhất', '18-04-2021 13:46', 0, '2021-04-17 23:46:26', '2021-04-17 23:46:26'),
(35, 4, 'Đã tiếp nhận đơn hàng #34', 'Chúng tôi sẽ gọi cho Mai Hoàng Tiến Đạt để xác nhận trong thời gian sớm nhất', '04-05-2021 08:35', 0, '2021-05-03 18:35:02', '2021-05-03 18:35:02'),
(36, 11, 'Đã tiếp nhận đơn hàng #35', 'Chúng tôi sẽ gọi cho Tiến Đạt để xác nhận trong thời gian sớm nhất', '23-05-2021 11:36', 1, '2021-05-22 23:49:49', '2021-05-22 21:36:14'),
(37, 11, 'Đã tiếp nhận đơn hàng #36', 'Chúng tôi sẽ gọi cho Tiến Đạt để xác nhận trong thời gian sớm nhất', '23-05-2021 14:56', 1, '2021-05-23 02:56:03', '2021-05-23 00:56:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HinhThuc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trangthai` int(2) NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `SDT`, `DiaChi`, `HinhThuc`, `remember_token`, `created_at`, `updated_at`, `trangthai`, `level`) VALUES
(1, 'Admin', '', 'admin@gmail.com', NULL, '$2y$10$ZJAkoNsWwbrV.rjcR/6T4.p63iQTjJDPokn6374Ex8/wCL.mYCBMC', '', NULL, NULL, NULL, '2020-12-09 05:44:05', '2021-01-01 19:58:26', 1, 'admin'),
(24, 'Nguyễn Thành Trung', NULL, 'thanhtrung@gmail.com', NULL, '$2y$10$Sj0EU18aQmitPOELMoH4Mely4rn4tvLWGt8i5gWckqQeaSgzjhDoe', NULL, NULL, NULL, NULL, '2022-12-31 22:43:45', '2022-12-31 22:43:45', 1, 'user');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `binhluan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
