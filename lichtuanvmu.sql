-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 17 Mai 2016 à 02:17
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `lichtuanvmu`
--

-- --------------------------------------------------------

--
-- Structure de la table `countdown`
--

CREATE TABLE IF NOT EXISTS `countdown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigiandienra` datetime NOT NULL,
  `dadienra` tinyint(4) DEFAULT '0',
  `donvi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_countdown_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `countdown`
--

INSERT INTO `countdown` (`id`, `tieude`, `thoigiandienra`, `dadienra`, `donvi_id`) VALUES
(1, 'Kỷ niệm 130 năm ngày Quốc tế Lao động 1/5 và phát động tháng công nhân năm 2016 ', '2016-05-11 16:28:00', 1, 2149),
(2, 'Đăng ký học phần cho học kỳ I.A - Năm học 2016 - 2017', '2016-05-15 23:12:00', 1, 2143);

-- --------------------------------------------------------

--
-- Structure de la table `donvi`
--

CREATE TABLE IF NOT EXISTS `donvi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tendonvi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2191 ;

--
-- Contenu de la table `donvi`
--

INSERT INTO `donvi` (`id`, `tendonvi`) VALUES
(2138, 'Ban Giám hiệu'),
(2139, 'Công đoàn Trường'),
(2140, 'Văn phòng Đảng ủy'),
(2141, 'Đoàn TNCS Hồ Chí Minh'),
(2142, 'P. Tổ chức cán bộ'),
(2143, 'P. Đào tạo'),
(2144, 'P. Khảo thí và Đảm bảo chất lượng'),
(2145, 'P. Công tác sinh viên'),
(2146, 'P. Hành chính - Tổng hợp'),
(2147, 'P. Quản trị - Thiết bị'),
(2148, 'P. Kế hoạch - Tài chính'),
(2149, 'P. Khoa học - Công nghệ'),
(2150, 'P. Quan hệ quốc tế'),
(2151, 'P. Thanh tra'),
(2152, 'Ban Xây dựng và Quản lý dự án'),
(2153, 'B. QLKNT SV khu C'),
(2154, 'B. QLKNT SV HH Quán Nam'),
(2155, 'Ban Bảo vệ'),
(2156, 'K. Hàng hải'),
(2157, 'K. Máy tàu biển'),
(2158, 'K. Điện-Điện tử'),
(2159, 'K. Đóng tàu'),
(2160, 'K. Cơ khí '),
(2161, 'K. Kinh tế'),
(2162, 'TT. Đào tạo Logistics và NCKT'),
(2163, 'K. Công trình'),
(2164, 'K. Công nghệ thông tin'),
(2165, 'TT Quản trị mạng'),
(2166, 'Viện Đào tạo sau đại học'),
(2167, 'K. Lý luận chính trị'),
(2168, 'K. Giáo dục QP'),
(2169, 'Viện Khoa học cơ bản'),
(2170, 'Viện Khoa học cơ sở'),
(2171, 'K. Ngoại ngữ'),
(2172, 'TT Giáo dục thể chất Hàng hải'),
(2173, 'TT Giáo dục thường xuyên'),
(2174, 'TT Huấn luyện thuyền viên'),
(2175, 'TT Cơ khí thực hành'),
(2176, 'Trạm Y tế'),
(2177, 'Nhà xuất bản Hàng hải'),
(2178, 'Thư viện'),
(2179, 'Trường Cao đẳng nghề VMU'),
(2180, 'Viện Khoa học và Công nghệ HH'),
(2181, 'Viện Đào tạo quốc tế'),
(2182, 'TT. Ngoại ngữ'),
(2183, 'TT Ngoại ngữ'),
(2184, 'Trung tâm Ứng dụng và PT CNTT'),
(2185, 'TT Ứng dụng và Phát triển CNTT'),
(2186, 'CT Vận tải biển và Xuất khẩu LĐ'),
(2187, 'CT VTB Đông long'),
(2188, 'CT VINIC'),
(2189, 'Cty CP Giáo dục và Đào tạo QT HH'),
(2190, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `hinhanh`
--

CREATE TABLE IF NOT EXISTS `hinhanh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slide_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hinhanh_slide_idx` (`slide_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=375 ;

--
-- Contenu de la table `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `path`, `slide_id`) VALUES
(355, 'uploads/slide/1462689153-356a192b79.jpg', 27),
(356, 'uploads/slide/1462689153-da4b9237ba.jpg', 27),
(357, 'uploads/slide/1462689153-77de68daec.jpg', 27),
(358, 'uploads/slide/1462689272-356a192b79.jpg', 27),
(359, 'uploads/slide/1462691790-356a192b79.jpg', 28),
(360, 'uploads/slide/1462691790-da4b9237ba.jpg', 28),
(361, 'uploads/slide/1462691791-77de68daec.jpg', 28),
(362, 'uploads/slide/1462692369-356a192b79.jpg', 29),
(363, 'uploads/slide/1462692370-da4b9237ba.jpg', 29),
(364, 'uploads/slide/1462692856-356a192b79.jpg', 30),
(365, 'uploads/slide/1462692857-da4b9237ba.jpg', 30),
(366, 'uploads/slide/1462692857-77de68daec.jpg', 30),
(367, 'uploads/slide/1462692857-1b64538924.jpg', 30),
(368, 'uploads/slide/1462693076-356a192b79.jpg', 31),
(369, 'uploads/slide/1462693076-da4b9237ba.jpg', 31),
(373, 'uploads/slide/1463161141-356a192b79.jpg', 32),
(374, 'uploads/slide/1463161300-356a192b79.jpg', 31);

-- --------------------------------------------------------

--
-- Structure de la table `khauhieu`
--

CREATE TABLE IF NOT EXISTS `khauhieu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(200) NOT NULL,
  `donvi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_khauhieu_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `khauhieu`
--

INSERT INTO `khauhieu` (`id`, `banner`, `donvi_id`) VALUES
(3, 'uploads/slogan/1462526260.jpg', 2138),
(15, 'uploads/slogan/1462692296.jpg', 2143),
(18, 'uploads/slogan/1462693408.jpg', 2155),
(22, 'uploads/slogan/1462693648.jpg', 2143);

-- --------------------------------------------------------

--
-- Structure de la table `khoanh`
--

CREATE TABLE IF NOT EXISTS `khoanh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anh` varchar(100) NOT NULL,
  `donvi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_khoanh_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `khoanh`
--

INSERT INTO `khoanh` (`id`, `anh`, `donvi_id`) VALUES
(1, 'uploads/background/1462759555.jpg', 2143),
(2, 'uploads/background/1462759625.jpg', 2148);

-- --------------------------------------------------------

--
-- Structure de la table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` enum('nam','nu') COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngach` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hesoluong` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ghichu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donvi_id` int(11) NOT NULL,
  `trinhdo_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roles` enum('admin','manager','user') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nhanvien_donvi1_idx` (`donvi_id`),
  KEY `fk_nhanvien_chucdanh1_idx` (`trinhdo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24792 ;

--
-- Contenu de la table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ten`, `ngaysinh`, `gioitinh`, `ngach`, `hesoluong`, `ghichu`, `donvi_id`, `trinhdo_id`, `username`, `password_hash`, `password_reset_token`, `auth_key`, `status`, `created_at`, `updated_at`, `roles`) VALUES
(23903, 'Lương Công Nhớ', '1958-10-30', 'nam', '15.109', '6.92', NULL, 2138, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23904, 'Đinh Xuân Mạnh', '1957-01-07', 'nam', '15.109', '6.56', NULL, 2138, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23905, 'Nguyễn Cảnh Sơn', '1956-02-04', 'nam', '15.109', '6.92', NULL, 2138, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23906, 'Phạm Xuân Dương', '1969-10-17', 'nam', '15.110', '5.08', NULL, 2138, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23907, 'Lê Quốc Tiến', '1972-03-28', 'nam', '15.110', '5.08', NULL, 2138, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23908, 'Đặng Văn Uy', '1952-03-29', 'nam', '15.109', '6.56', NULL, 2138, 1871, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23909, 'Phạm Ngọc Tuyền', '1960-08-04', 'nam', '15.111', '4.98', NULL, 2139, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23910, 'Phạm Thu Thưởng', '1978-09-02', 'nu', '01.003', '3.66', NULL, 2139, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23911, 'Nguyễn Tuyết Minh', '1980-03-31', 'nu', '01.003', '3.66', NULL, 2140, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23912, 'Nguyễn Đức Hạnh', '1981-02-14', 'nam', '15.111', '3.33', NULL, 2141, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23913, 'Nguyễn Thị Thu Thủy', '1982-07-11', 'nu', '01.003', '2.67', NULL, 2141, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23914, 'Hoàng Văn Thủy', '1962-01-15', 'nam', '15.110', '5.76', NULL, 2142, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23915, 'Nguyễn Văn Đoàn', '1964-08-20', 'nam', '01.003', '4.65', NULL, 2142, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23916, 'Vũ Thị Oanh', '1974-07-02', 'nu', '01.003', '3.66', NULL, 2142, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23917, 'Phạm Huy Tùng', '1980-12-08', 'nam', '15.111', '3.33', NULL, 2142, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23918, 'Hoàng Thanh Thủy', '1985-02-18', 'nam', '01.003', '2.67', NULL, 2142, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23919, 'Trần Ngọc Dung', '1984-10-05', 'nu', '01.003', '2.67', NULL, 2142, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23920, 'Nguyễn Khắc Khiêm', '1970-07-09', 'nam', '15.110', '4.74', NULL, 2143, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23921, 'Phạm Văn Thuần', '1975-11-02', 'nam', '15.110', '4.74', NULL, 2143, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23922, 'Lê Xuân Kim', '1963-08-20', 'nam', '01.003', '4.32', NULL, 2143, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23923, 'Lê Quốc Tuấn', '1982-07-09', 'nam', '01.003', '3.00', NULL, 2143, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23924, 'Bùi Quốc Vũ', '1972-06-26', 'nam', '13.096-A0', '3.03', NULL, 2143, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23925, 'Phạm Đức Toàn', '1983-11-09', 'nam', '13.095', '2.34', NULL, 2143, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23926, 'Vũ Minh Ngọc', '1982-05-11', 'nam', '15.111', '3.00', NULL, 2143, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23927, 'Nguyễn Anh Xuân', '1979-10-10', 'nam', '15.111', '3.33', NULL, 2143, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23928, 'Trần Tuấn Lương', '1984-10-19', 'nam', '13.095', '2.34', NULL, 2143, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23929, 'Nguyễn Thanh Sơn', '1974-11-25', 'nam', '15.111', '3.33', NULL, 2144, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23930, 'Đỗ Thị Thúy', '1982-06-21', 'nu', '01.003', '2.67', NULL, 2144, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23931, 'Nguyễn Văn Thương', '1964-08-30', 'nam', '15.110', '5.08', NULL, 2144, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23932, 'Trương Thị Lệ Hoàn', '1977-04-05', 'nu', '01.003', '3.33', NULL, 2144, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23933, 'Mai Mạnh Lân', '1982-12-03', 'nam', '01.003', '3.00', NULL, 2144, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23934, 'Phạm Văn Thành', '1985-08-12', 'nam', '01.003', '2.67', NULL, 2144, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23935, 'Nguyễn Hồng Vân', '1971-07-13', 'nu', '15.110', '5.08', NULL, 2145, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23936, 'Nguyễn Văn Chuyên', '1954-09-17', 'nam', '01.003', '4.98', NULL, 2145, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23937, 'Trương Công Mỹ', '1978-10-16', 'nam', '15.111', '3.00', NULL, 2145, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23938, 'Nguyễn Thế Cường', '1980-04-14', 'nam', '15.111', '3.33', NULL, 2145, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23939, 'Phạm Thanh Sơn', '1980-12-08', 'nam', '01.003', '2.67', NULL, 2145, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23940, 'Vũ Thị Thanh', '1973-12-18', 'nu', '01.003', '3.99', NULL, 2145, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23941, 'Nguyễn Thụ Túy', '1977-12-11', 'nam', '13.095', '3.33', NULL, 2145, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23942, 'Đỗ Duy Cường', '1974-03-03', 'nam', '13.095', '3.00', NULL, 2145, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23943, 'Đàm Hà Hoàng', '1970-01-01', 'nu', '13.095', '1.99', NULL, 2145, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23944, 'Phạm Văn Bình', '1981-01-24', 'nam', '13.095', '2.34', NULL, 2145, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23945, 'Lại Huy Thiện', '1975-07-08', 'nam', '01.003', '3.99', NULL, 2146, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23946, 'Vũ Đức Minh', '1959-06-07', 'nam', '01.003', '4.98', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23947, 'Nguyễn Sơn Hà', '1957-09-11', 'nam', '01.010', '4.03', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23948, 'Nguyễn Thị Thủy', '1960-06-08', 'nu', '01.005', '4.03', NULL, 2146, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23949, 'Trần Văn Thiện', '1962-10-01', 'nam', '01.007', '3.63', NULL, 2146, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23950, 'Nguyễn Văn Hà', '1970-11-10', 'nam', '01.010', '3.31', NULL, 2146, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23951, 'Phạm Thị Tô', '1959-12-18', 'nu', '01.009', '2.98', NULL, 2146, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23952, 'Tiêu Thị Nam Hà', '1961-07-19', 'nu', '01.009', '2.98', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23953, 'Bùi Thị Kim Oanh', '1974-02-23', 'nu', '01.009', '2.98', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23954, 'Nguyễn Thị Thanh', '1967-06-15', 'nu', '01.009', '2.98', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23955, 'Lê Văn Quyết', '1979-01-16', 'nam', '13.096', '2.66', NULL, 2146, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23956, 'Ngô Duy Thinh', '1976-08-06', 'nam', '01.011', '2.59', NULL, 2146, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23957, 'Nguyễn Ngọc Cường', '1987-01-13', 'nam', '13.095', '2.67', NULL, 2146, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23958, 'Giang Anh Hoàng', '1969-11-24', 'nam', '01.010', '2.59', NULL, 2146, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23959, 'Nguyễn Văn Dậu', '1969-04-16', 'nam', '01.010', '2.41', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23960, 'Lê Hồng Liên', '1986-09-12', 'nu', '13.095', '2.34', NULL, 2146, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23961, 'Bùi Bá An', '1956-05-19', 'nam', '13.095', '4.98', NULL, 2147, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23962, 'Nguyễn Văn Hưng', '1973-09-05', 'nam', '01.003', '3.66', NULL, 2147, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23963, 'Ngô Quốc Hưng', '1957-10-24', 'nam', '01.007', '3.63', NULL, 2147, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23964, 'Lê Văn Bền', '1983-07-25', 'nam', '01.007', '2.19', NULL, 2147, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23965, 'Nguyễn Văn Vượng', '1983-09-09', 'nam', '01.003', '2.67', NULL, 2147, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23966, 'Phan Đình Toán', '1957-02-18', 'nam', '01.003', '4.32', NULL, 2147, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23967, 'Lê Hồng Chinh', '1984-12-02', 'nu', '13.095', '2.34', NULL, 2147, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23968, 'Phạm Trung Thảo', '1954-08-20', 'nam', '06.031', '4.98', NULL, 2148, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23969, 'Đinh Thị Hải Yến', '1978-02-16', 'nu', '01.003', '3.66', NULL, 2148, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23970, 'Phạm Thị Thúy Khánh', '1970-03-03', 'nu', '01.003', '3.99', NULL, 2148, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23971, 'Quản Thị Minh Hiền', '1984-07-04', 'nu', '01.003', '2.67', NULL, 2148, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23972, 'Chu Ánh Nguyệt', '1977-10-04', 'nu', '06.031', '2.67', NULL, 2148, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23973, 'Trương Thị Bích Ngọc', '1987-02-07', 'nu', '06.031', '2.67', NULL, 2148, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23974, 'Phạm Thị Chang', '1984-11-06', 'nu', '06.031', '2.67', NULL, 2148, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23975, 'Phạm Huyền Châm', '1973-10-28', 'nu', '01.003', '3.99', NULL, 2148, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23976, 'Từ Minh Hùng', '1984-02-07', 'nam', '06.031', '2.67', NULL, 2148, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23977, 'Nguyễn Hồng Phúc', '1955-09-18', 'nam', '15.110', '6.44', NULL, 2149, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23978, 'Đặng Công Xưởng', '1965-05-06', 'nam', '15.110', '5.76', NULL, 2149, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23979, 'Lê Thị Hiền', '1972-07-20', 'nu', '01.003', '3.66', NULL, 2149, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23980, 'Nguyễn Trung Kiên', '1985-10-01', 'nam', '13.095', '2.67', NULL, 2149, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23981, 'Nguyễn Thanh Sơn', '1976-03-08', 'nam', '15.111', '3.99', NULL, 2150, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23982, 'Trần Thế Nam', '1980-03-11', 'nam', '15.111', '3.33', NULL, 2150, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23983, 'Đỗ Trung Kiên', '1988-12-04', 'nam', '01.003', '2.34', NULL, 2150, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23984, 'Nguyễn Quốc Trung', '1985-10-24', 'nam', '13.095', '2.67', NULL, 2150, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23985, 'Dương Phan Anh', '1989-02-04', 'nam', '01.003', '2.34', NULL, 2150, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23986, 'Phạm Trọng Tài ', '1961-08-28', 'nam', '15.110', '5.08', NULL, 2151, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23987, 'Ngô Văn Anh', '1977-09-16', 'nam', '01.003', '3.33', NULL, 2151, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23988, 'Đào Quang Chí', '1964-05-06', 'nam', '01.003', '3.00', NULL, 2151, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23989, 'Thái Hoàng Yên', '1960-08-02', 'nam', '15.110', '5.42', NULL, 2152, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23990, 'Nguyễn Đại Việt', '1976-01-25', 'nam', '15.111', '3.66', NULL, 2152, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23991, 'Trần Vũ Hưng', '1959-12-11', 'nam', '13.095', '4.65', NULL, 2152, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23992, 'Mạc Văn Sang', '1985-08-22', 'nam', '13.095', '2.67', NULL, 2152, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23993, 'Trần Quốc Quân', '1984-11-30', 'nam', '13.095', '2.67', NULL, 2152, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23994, 'Nguyễn Đức Hanh', '1958-03-14', 'nam', '01.004', '4.06', NULL, 2153, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23995, 'Đinh Thị Thanh Hải', '1977-01-23', 'nu', '06.032', '2.26', NULL, 2153, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23996, 'Bùi Văn Trung', '1978-11-24', 'nam', '13.096-A0', '3.03', NULL, 2153, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23997, 'Nguyễn Hoài Bắc', '1971-06-26', 'nam', '13.095', '4.65', NULL, 2154, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23998, 'Trần Thị Huế', '1972-04-13', 'nu', '01.009', '2.98', NULL, 2154, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23999, 'Đỗ Thị Thư', '1962-09-01', 'nu', '01.009', '2.98', NULL, 2154, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24000, 'Tô Thanh Tùng', '1965-03-17', 'nam', '01.011', '3.48', NULL, 2155, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24001, 'Dương Văn Vịnh', '1963-03-18', 'nam', '01.011', '3.48', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24002, 'Hoàng Minh Phương', '1958-09-12', 'nam', '01.007', '3.63', NULL, 2155, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24003, 'Hoàng Văn Thụy', '1956-03-01', 'nam', '01.011', '3.48', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24004, 'Lê Thị Hiền', '1959-10-10', 'nu', '01.011', '3.48', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24005, 'Nguyễn Trung Thứ', '1954-12-16', 'nam', '01.011', '3.48', NULL, 2155, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24006, 'Nguyễn Thị Thu', '1959-06-25', 'nu', '01.011', '3.48', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24007, 'Nguyễn Mạnh Trường', '1964-10-16', 'nam', '01.011', '3.48', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24008, 'Vũ Thị Xuân Thái', '1960-11-19', 'nu', '01.009', '2.98', NULL, 2155, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24009, 'Lê Xuân Nguyên', '1962-11-26', 'nam', '01.011', '3.48', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24010, 'Vũ Mạnh Thắng', '1963-04-14', 'nam', '01.011', '3.12', NULL, 2155, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24011, 'Đỗ Hoàng Anh', '1976-05-29', 'nam', '01.011', '3.12', NULL, 2155, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24012, 'Nguyễn Văn Bảo', '1960-01-13', 'nam', '01.011', '2.76', NULL, 2155, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24013, 'Đặng Thị Hương', '1966-02-28', 'nu', '01.009', '2.98', NULL, 2155, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24014, 'Phạm Thị Thu Liễu', '1967-11-23', 'nu', '01.009', '2.98', NULL, 2155, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24015, 'Vũ Thị Hanh', '1968-01-31', 'nu', '01.009', '2.98', NULL, 2155, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24016, 'Nguyễn Văn Khánh', '1962-03-18', 'nam', '01.011', '2.94', NULL, 2155, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24017, 'Nguyễn Thái Dương', '1967-06-01', 'nam', '15.110', '5.08', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24018, 'Trần Đại Hải', '1956-04-16', 'nam', '15.110', '6.78', NULL, 2156, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24019, 'Nguyễn Văn Hòa', '1954-08-12', 'nam', '15.111', '4.98', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24020, 'Phạm Xuân Khải', '1956-05-05', 'nam', '15.111', '4.98', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24021, 'Trần Văn Truyền', '1958-04-04', 'nam', '15.111', '4.65', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24022, 'Trần Văn Ngọc', '1962-05-05', 'nam', '15.111', '4.32', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24023, 'Lê Quang Vinh', '1977-07-16', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24024, 'Nguyễn Minh Đức', '1981-02-09', 'nam', '15.111', '3.33', NULL, 2156, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24025, 'Lã Văn Hải', '1982-02-28', 'nam', '15.111', '3.00', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24026, 'Lại Thế Việt', '1984-11-24', 'nam', '15.111', '3.00', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24027, 'Hồ Sỹ Nam', '1986-08-17', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24028, 'Mai Văn Hoàng', '1985-02-23', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24029, 'Lưu Ngọc Long', '1985-08-10', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24030, 'Lương Tú Nam', '1988-11-09', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24031, 'Nguyễn Quang Duy', '1987-12-21', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24032, 'Nguyễn Văn Sướng', '1987-11-24', 'nam', '15.111', '2.34', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24033, 'Vũ Văn Linh', '1988-06-06', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24034, 'Lê Xuân Việt', '1988-05-11', 'nam', '13.095', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24035, 'Nguyễn Kim Phương', '1974-11-20', 'nam', '15.111', '3.99', NULL, 2156, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24036, 'Bùi Thanh Sơn', '1955-07-20', 'nam', '15.110', '6.10', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24037, 'Phạm Vũ Tuấn', '1965-08-03', 'nam', '15.110', '5.08', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24038, 'Phạm Thanh Tân', '1961-04-04', 'nam', '15.111', '4.65', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24039, 'Nguyễn Trí Luận', '1972-01-03', 'nam', '15.111', '3.99', NULL, 2156, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24040, 'Nguyễn Bá Thắng', '1978-02-24', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24041, 'Đỗ Công Hoan', '1977-05-17', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24042, 'Nguyễn Tuấn Anh', '1986-08-19', 'nu', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24043, 'Lê Văn Kiệt', '1984-02-21', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24044, 'Trần Văn Sáng', '1984-02-06', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24045, 'Lê Thanh Tùng', '1982-10-22', 'nam', '15.111', '3.00', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24046, 'Đỗ Văn Cường', '1988-08-28', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24047, 'Nguyễn Văn Trưởng', '1988-01-18', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24048, 'Vũ Đăng Thái', '1989-10-09', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24049, 'Nguyễn Cảnh Lam', '1987-02-02', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24050, 'Phan Văn Hưng', '1987-09-01', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24051, 'Trần Quốc Chuẩn', '1979-05-17', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24052, 'Phạm Trung Đức', '1971-04-25', 'nam', '15.111', '3.99', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24053, 'Đào Quang Dân', '1971-01-04', 'nam', '15.110', '4.74', NULL, 2156, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24054, 'Nguyễn Văn Thịnh', '1978-04-11', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24055, 'Nguyễn Mạnh Hải', '1983-06-01', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24056, 'Đinh Hoàng Việt', '1985-03-10', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24057, 'Đỗ Văn Long', '1985-06-25', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24058, 'Phạm Quang Thủy', '1985-08-15', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24059, 'Phạm Tất Tiệp', '1987-06-26', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24060, 'Nguyễn Thanh Tùng', '1988-04-19', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24061, 'Nguyễn Thái Quân', '1989-01-31', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24062, 'Hà Nam Ninh', '1974-01-01', 'nam', '15.111', '3.99', NULL, 2156, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24063, 'Bùi Văn Hưng', '1988-10-01', 'nam', '15.111', '2.34', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24064, 'Nguyễn Xuân Long', '1974-02-17', 'nam', '15.111', '3.99', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24065, 'Bùi Thanh Huân', '1965-04-16', 'nam', '15.110', '5.08', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24066, 'Trần Thanh Bình', '1962-05-26', 'nam', '15.111', '4.98', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24067, 'Lê Quốc An', '1971-12-28', 'nam', '15.111', '3.99', NULL, 2156, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24068, 'Hoàng Xuân Bằng', '1978-03-29', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24069, 'Trần Đức Lễ', '1979-05-10', 'nam', '15.111', '3.00', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24070, 'Nguyễn Mạnh Hà', '1973-08-10', 'nam', '13.095', '3.00', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24071, 'Nguyễn Hoàng Thái', '1983-06-03', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24072, 'Triệu Tuấn Hòa', '1983-09-27', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24073, 'Phạm Xuân Trường', '1983-09-10', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24074, 'Phạm Văn Luân', '1985-12-23', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24075, 'Nguyễn Đức Long', '1985-05-16', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24076, 'Đinh Gia Huy', '1987-01-16', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24077, 'Hoàng Duy Tùng', '1987-08-02', 'nam', '13.095', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24078, 'Ngô Như Tại', '1988-02-03', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24079, 'Nguyễn Văn Quảng', '1989-08-16', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24080, 'Vũ Sơn Tùng', '1988-07-17', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24081, 'Nguyễn Viết Thành', '1961-10-04', 'nam', '15.110', '5.76', NULL, 2156, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24082, 'Quách Thanh Chung', '1973-04-13', 'nam', '15.111', '3.99', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24083, 'Nguyễn Ngọc Hà', '1954-08-05', 'nam', '15.111', '4.98', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24084, 'Trần Đình Sơn', '1961-10-22', 'nam', '15.111', '4.32', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24085, 'Nguyễn Thành Trung', '1974-05-12', 'nam', '15.111', '3.99', NULL, 2156, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24086, 'Mai Xuân Hương', '1976-06-26', 'nam', '15.111', '3.66', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24087, 'Nguyễn Đình Hải', '1977-12-27', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24088, 'Nguyễn Thế Duân', '1984-10-02', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24089, 'Trịnh Xuân Tùng', '1984-09-29', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24090, 'Phạm Văn Tân', '1984-06-24', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24091, 'Nguyễn Thanh Diệu', '1984-09-01', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24092, 'Đặng Đình Chiến', '1986-07-09', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24093, 'Lê Thành Đạt', '1985-11-04', 'nam', '15.111', '2.67', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24094, 'Lê Quang Huy', '1986-01-23', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24095, 'Nguyễn Trung Chính', '1985-11-06', 'nam', '15.111', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24096, 'Bùi Đăng Khoa', '1989-11-14', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24097, 'Bùi Quang Khánh', '1991-05-02', 'nam', '15.111', '1.99', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24098, 'Đỗ Thành Long', '1985-07-17', 'nam', '15.111', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24099, 'Đặng Quang Việt', '1984-03-27', 'nam', '15.111', '3.00', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24100, 'Trần Văn Lượng', '1980-01-20', 'nam', '15.111', '3.33', NULL, 2156, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24101, 'Phạm Ngọc Tuấn', '1983-12-09', 'nam', '13.095', '2.67', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24102, 'Đỗ Thành Phố', '1989-11-14', 'nam', '13.095', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24103, 'Trịnh Hải Thanh', '1982-04-23', 'nu', '01.003', '3.00', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24104, 'Nguyễn Thành Lê', '1979-10-15', 'nam', '15.111', '3.33', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24105, 'Dương Thị Kim Oanh', '1961-01-02', 'nu', '01.003', '4.98', NULL, 2156, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24106, 'Ngô Ngọc Hà', '1986-12-07', 'nam', '13.095', '2.34', NULL, 2156, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24107, 'Phạm Hữu Tân', '1960-09-01', 'nam', '15.110', '5.76', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24108, 'Đỗ Ngọc Toàn', '1962-01-28', 'nam', '15.110', '5.42', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24109, 'Nguyễn Ngọc Hoàng', '1962-09-15', 'nam', '15.110', '5.42', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24110, 'Vũ Anh Dũng', '1958-03-29', 'nam', '15.111', '4.98', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24111, 'Hoàng Văn Mười', '1967-04-05', 'nam', '15.110', '4.74', NULL, 2157, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24112, 'Nguyễn Hữu Thủy', '1958-06-21', 'nam', '15.111', '4.65', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24113, 'Nguyễn Văn Tình', '1971-08-15', 'nam', '13.095', '3.66', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24114, 'Trần Văn Giang', '1975-04-30', 'nam', '15.111', '3.00', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24115, 'Nguyễn Minh Đức', '1983-11-02', 'nam', '15.111', '3.00', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24116, 'Vũ Anh Tuấn', '1983-11-26', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24117, 'Phạm Bá Công', '1985-12-23', 'nam', '15.111', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24118, 'Hoàng Anh Dũng', '1984-04-05', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24119, 'Vũ Văn Mừng', '1985-12-03', 'nam', '15.111', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24120, 'Lê Văn Tùng', '1988-05-13', 'nam', '15.111', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24121, 'Vũ Đức Anh', '1988-12-01', 'nam', '15.111', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24122, 'Kiều Hải Quang', '1986-05-20', 'nam', '13.095', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24123, 'Trần Hồng Hà', '1974-06-06', 'nam', '15.111', '3.66', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24124, 'Trần Bảo Ngọc', '1991-10-30', 'nam', '15.111', '1.99', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24125, 'Trần Đức Duy', '1985-09-03', 'nam', '13.095', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24126, 'Nguyễn Trí Minh', '1961-05-02', 'nam', '15.110', '5.42', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24127, 'Nguyễn Huy Hào', '1970-09-19', 'nam', '15.111', '4.32', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24128, 'Nguyễn Hùng Vượng', '1972-01-15', 'nam', '15.111', '3.99', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24129, 'Nguyễn Phúc Bình', '1963-10-06', 'nam', '15.110', '5.42', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24130, 'Đồng Văn Quang', '1973-10-02', 'nam', '13.095', '3.66', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24131, 'Nguyễn Văn Ba', '1977-01-20', 'nam', '15.111', '3.33', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24132, 'Mai Thế Trọng', '1981-09-04', 'nam', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24133, 'Lương Duy Đông', '1982-05-30', 'nam', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24134, 'Nguyễn Kim Bảo', '1983-10-30', 'nam', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24135, 'Vũ Đức Năng', '1984-08-24', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24136, 'Chu Văn Thùy', '1986-11-01', 'nam', '15.111', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24137, 'Nguyễn Danh Thọ', '1984-12-26', 'nam', '13.095', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24138, 'Đinh Vương Quý', '1986-08-19', 'nam', '13.095', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24139, 'Bùi Quốc Tú', '1963-10-05', 'nam', '15.110', '4.74', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24140, 'Ngô Ngọc Lân', '1968-05-07', 'nam', '15.110', '4.74', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24141, 'Lê Văn Điểm', '1969-01-12', 'nam', '15.110', '5.08', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24142, 'Hoàng Văn Thủy', '1963-07-01', 'nam', '15.110', '4.74', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24143, 'Bùi Huy Hưng', '1957-06-06', 'nam', '15.111', '4.98', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24144, 'Lương Nguyên Hoàng', '1968-09-10', 'nam', '13.095', '3.66', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24145, 'Hoàng Kim Cường', '1982-07-07', 'nam', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24146, 'Nguyễn Tuấn Anh', '1981-10-30', 'nam', '15.111', '3.00', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24147, 'Lê Đăng Khánh', '1983-03-10', 'nam', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24148, 'Nguyễn Sĩ Tài', '1983-01-24', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24149, 'Trần Văn Thắng', '1984-06-25', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24150, 'Cao Văn Bính', '1986-05-08', 'nam', '15.111', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24151, 'Phạm Minh Ngọc', '1990-10-20', 'nam', '15.111', '1.99', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24152, 'Đỗ Đức Lưu', '1962-04-13', 'nam', '15.110', '5.76', NULL, 2157, 1871, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24153, 'Võ Đình Anh', '1963-08-18', 'nam', '13.095', '4.65', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24154, 'Phạm Trường Chinh', '1986-01-01', 'nam', '13.095', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24155, 'Bùi Đình Hoàn', '1976-11-26', 'nam', '15.111', '3.66', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24156, 'Trần Hữu Long', '1980-07-13', 'nam', '15.111', '3.33', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24157, 'Trần Anh Tuấn', '1980-10-23', 'nam', '15.111', '3.33', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24158, 'Phạm Thị Dương', '1980-08-28', 'nu', '15.111', '3.33', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24159, 'Bùi Thị Thu Hà', '1982-04-14', 'nu', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24160, 'Đinh Thị Thúy Hằng', '1984-04-03', 'nu', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24161, 'Ngô Thị Vân Anh', '1985-08-28', 'nu', '13.095', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24162, 'Nguyễn Thị Như Ngọc', '1985-04-10', 'nu', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24163, 'Nguyễn Xuân Sang', '1983-09-24', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24164, 'Trương Văn Tuấn', '1983-01-22', 'nam', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24165, 'Nguyễn Hoàng Yến', '1984-09-04', 'nu', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24166, 'Bùi Thị Thanh Loan', '1985-07-18', 'nu', '15.111', '2.67', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24167, 'Nguyễn Thị Hà', '1987-06-19', 'nam', '13.095', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24168, 'Trịnh Thị Thu', '1985-08-15', 'nu', '13.095', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24169, 'Nguyễn Bá Mươi', '1956-12-24', 'nam', '15.110', '6.10', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24170, 'Trương Văn Đạo', '1965-10-13', 'nam', '15.110', '5.08', NULL, 2157, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24171, 'Võ Đình Phi', '1962-04-20', 'nam', '15.110', '5.08', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24172, 'Đinh Công Chẩn', '1955-05-19', 'nam', '15.111', '4.98', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24173, 'Nguyễn Xuân Hùng', '1957-07-13', 'nam', '15.111', '4.98', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24174, 'Đỗ Minh Phong', '1964-03-15', 'nam', '15.110', '4.74', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24175, 'Phạm Văn Dũng', '1967-04-26', 'nam', '15.110', '4.74', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24176, 'Nguyễn Minh Tuấn', '1970-12-16', 'nam', '01.003', '3.33', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24177, 'Nguyễn Thị Quyến', '1971-02-14', 'nu', '01.003', '3.33', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24178, 'Đặng Thanh Tùng', '1981-04-15', 'nam', '15.111', '3.00', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24179, 'Lê Hồng Hải', '1979-12-31', 'nam', '15.111', '3.33', NULL, 2157, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24180, 'Nguyễn Đức Thắng', '1977-01-16', 'nam', '13.095', '3.00', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24181, 'Nguyễn Văn Hoài', '1983-10-03', 'nam', '15.111', '3.00', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24182, 'Nguyễn Xuân Trường', '1981-08-03', 'nam', '13.095', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24183, 'Nguyễn Hữu Dũng', '1986-02-07', 'nam', '15.111', '2.67', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24184, 'Phạm Bá Trọng', '1988-09-02', 'nam', '13.095', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24185, 'Trần Tiến Anh', '1987-01-27', 'nam', '15.111', '2.34', NULL, 2157, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24186, 'Trần Xuân Việt', '1958-08-15', 'nam', '15.110', '6.10', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24187, 'Lê Quốc Vượng', '1957-04-09', 'nam', '15.110', '5.76', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24188, 'Nguyễn Đình Thạch', '1971-01-26', 'nam', '15.111', '3.33', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24189, 'Nguyễn Ngọc Sơn', '1962-06-23', 'nam', '15.110', '5.42', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24190, 'Ngô Xuân Hường', '1963-06-18', 'nam', '15.110', '5.08', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24191, 'Nguyễn Phương Lâm', '1971-03-08', 'nam', '15.110', '4.74', NULL, 2158, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24192, 'Trương Thanh Bình', '1962-01-21', 'nam', '15.111', '4.65', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24193, 'Vũ Văn Rực', '1975-07-20', 'nam', '15.111', '3.66', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24194, 'Bùi Đình Thịnh', '1974-04-09', 'nam', '15.111', '3.66', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24195, 'Phạm Việt Hưng', '1980-02-12', 'nam', '15.111', '3.33', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24196, 'Nguyễn Mạnh Cường', '1985-07-08', 'nam', '15.111', '2.67', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24197, 'Nguyễn Thanh Vân', '1982-11-30', 'nu', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24198, 'Vũ Xuân Hậu', '1985-01-10', 'nam', '13.095', '2.67', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24199, 'Vũ Đức Hoàn', '1984-11-18', 'nam', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24200, 'Nguyễn Thị Thu Phương', '1983-09-05', 'nu', '13.095', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24201, 'Lưu Quang Hưng', '1987-09-02', 'nam', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24202, 'Nguyễn Tiến Dũng', '1966-03-02', 'nam', '15.110', '4.74', NULL, 2158, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24203, 'Trần Anh Dũng', '1970-05-16', 'nam', '15.110', '4.74', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24204, 'Đinh Anh Tuấn', '1978-03-16', 'nam', '15.111', '3.33', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24205, 'Nguyễn Tất Dũng', '1961-01-24', 'nam', '15.110', '5.42', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24206, 'Phan Đăng Đào', '1965-02-28', 'nam', '15.110', '5.42', NULL, 2158, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24207, 'Trần Viết Tiến', '1955-05-10', 'nam', '15.111', '4.98', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24208, 'Hoàng Đức Tuấn', '1974-11-15', 'nam', '15.111', '3.99', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24209, 'Nguyễn Thanh Vân', '1981-05-03', 'nu', '15.111', '3.33', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24210, 'Nguyễn Hữu Quyền', '1982-11-05', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24211, 'Ngô Hoàng Thao', '1984-01-16', 'nam', '15.111', '2.67', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24212, 'Lê Thị Thanh Tâm', '1979-10-07', 'nu', '13.095', '3.33', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24213, 'Đoàn Hữu Khánh', '1990-08-01', 'nam', '15.111', '1.99', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24214, 'Tô Văn Hưng', '1987-10-04', 'nam', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24215, 'Hoàng Xuân Bình', '1957-02-18', 'nam', '15.110', '6.78', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24216, 'Đặng Hồng Hải', '1975-12-09', 'nam', '15.111', '3.66', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24217, 'Trần Sinh Biên', '1971-05-07', 'nam', '15.111', '3.66', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24218, 'Trần Thị Phương Thảo', '1976-11-18', 'nu', '15.111', '3.66', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24219, 'Vũ Ngọc Minh', '1979-04-23', 'nam', '15.111', '3.33', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24220, 'Phạm Tâm Thành', '1980-04-10', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24221, 'Nguyễn Đình Thật', '1980-08-14', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24222, 'Phạm Tuấn Anh', '1982-11-16', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24223, 'Lưu Hoàng Minh', '1981-02-08', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24224, 'Trần Tiến Lương', '1984-01-01', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24225, 'Phạm Thị Hồng Anh', '1984-01-02', 'nu', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24226, 'Đoàn Văn Tuân', '1985-08-11', 'nam', '15.111', '2.67', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24227, 'Nguyễn Văn Tiến', '1986-05-13', 'nam', '15.111', '2.67', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24228, 'Vũ Thị Thu', '1988-11-18', 'nu', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24229, 'Phạm Văn Toàn', '1988-12-01', 'nam', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24230, 'Phạm Đức Cường', '1985-09-25', 'nam', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24231, 'Lưu Kim Thành', '1954-12-13', 'nam', '15.110', '6.10', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24232, 'Hứa Xuân Long', '1971-10-04', 'nam', '15.110', '5.08', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24233, 'Vương Đức Phúc', '1981-09-08', 'nam', '15.111', '3.33', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24234, 'Đỗ Văn A', '1962-05-03', 'nam', '15.110', '5.42', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24235, 'Bùi Đức Sảnh', '1958-07-25', 'nam', '15.111', '4.98', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24236, 'Tống Lâm Tùng', '1966-01-10', 'nam', '15.110', '4.74', NULL, 2158, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24237, 'Đào Minh Quân', '1976-12-18', 'nam', '15.111', '3.33', NULL, 2158, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24238, 'Lê Văn Tâm', '1975-07-10', 'nam', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24239, 'Nguyễn Thị Bích Ngọc', '1984-11-20', 'nu', '15.111', '3.00', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24240, 'Đỗ Khắc Tiệp', '1984-10-16', 'nam', '15.111', '2.67', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24241, 'Đồng Xuân Thìn', '1988-09-22', 'nam', '15.111', '2.34', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24242, 'Bùi Văn Dũng', '1962-09-09', 'nam', '15.110', '5.76', NULL, 2158, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24243, 'Trần Thị Loan', '1959-09-07', 'nu', '01.004', '4.06', NULL, 2158, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24244, 'Lục Thị Thu Hương', '1980-09-16', 'nu', '01.003', '3.00', NULL, 2158, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24245, 'Nguyễn Thị Kim Oanh', '1981-06-20', 'nu', '13.096', '2.26', NULL, 2158, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24246, 'Lê Hồng Bang', '1954-10-03', 'nam', '15.110', '6.10', NULL, 2159, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24247, 'Nguyễn Văn Võ', '1971-08-14', 'nam', '15.110', '5.08', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24248, 'Trần Văn Duyên', '1960-12-10', 'nam', '15.110', '5.42', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24249, 'Đỗ Thị Hải Lâm', '1963-07-23', 'nu', '15.110', '5.42', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24250, 'Nguyễn Thị Thu Quỳnh', '1979-03-26', 'nu', '15.111', '3.33', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24251, 'Phạm Thị Thanh Hải', '1978-06-27', 'nu', '15.111', '3.00', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24252, 'Nguyễn Văn Dương', '1985-02-10', 'nam', '15.111', '2.67', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24253, 'Trần Đình Nghị', '1984-10-20', 'nam', '15.111', '2.67', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24254, 'Hoàng Trung Thực', '1984-11-06', 'nam', '15.111', '2.67', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24255, 'Trần Ngọc Tú', '1983-08-10', 'nam', '15.111', '3.00', NULL, 2159, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24256, 'Nguyễn Văn Hân', '1961-02-03', 'nam', '15.110', '5.42', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24257, 'Nguyễn Gia Thắng', '1975-12-11', 'nam', '15.111', '3.99', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24258, 'Đoàn Văn Tuyền', '1980-07-29', 'nam', '15.111', '3.33', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24259, 'Đỗ Quang Quận', '1979-10-04', 'nam', '15.111', '3.33', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24260, 'Phạm Thị Thúy', '1980-10-03', 'nu', '01.003', '3.00', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24261, 'Mai Anh Tuấn', '1983-07-06', 'nam', '15.111', '3.00', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24262, 'Nguyễn Văn Hiếu', '1985-08-14', 'nam', '13.095', '2.67', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24263, 'Hoàng Trung Sơn', '1986-03-25', 'nam', '15.111', '2.67', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24264, 'Vũ Văn Tuyển', '1984-05-07', 'nam', '15.111', '2.67', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24265, 'Đỗ Xuân Diệu', '1989-01-17', 'nam', '15.111', '2.34', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24266, 'Đỗ Quang Khải', '1972-10-07', 'nam', '15.111', '4.32', NULL, 2159, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24267, 'Nguyễn Thị Thanh Châm', '1981-07-08', 'nu', '01.003', '3.00', NULL, 2159, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24268, 'Lê Thanh Bình', '1981-03-02', 'nam', '15.111', '3.00', NULL, 2159, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24269, 'Nguyễn Thị Hải Hà', '1983-01-20', 'nu', '15.111', '3.00', NULL, 2159, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24270, 'Lê Viết Lượng', '1956-02-12', 'nam', '15.109', '6.92', NULL, 2160, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24271, 'Nguyễn Anh Việt', '1961-05-14', 'nam', '15.110', '5.76', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24272, 'Đặng Khánh Ngọc', '1962-05-11', 'nu', '15.110', '5.76', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `nhanvien` (`id`, `ten`, `ngaysinh`, `gioitinh`, `ngach`, `hesoluong`, `ghichu`, `donvi_id`, `trinhdo_id`, `username`, `password_hash`, `password_reset_token`, `auth_key`, `status`, `created_at`, `updated_at`, `roles`) VALUES
(24273, 'Thẩm Bội Châu', '1964-11-01', 'nam', '15.111', '3.99', NULL, 2160, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24274, 'Phạm Quốc Việt', '1962-07-18', 'nam', '15.110', '5.42', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24275, 'Bùi Thị Hằng', '1978-11-24', 'nu', '15.111', '3.33', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24276, 'Đỗ Thị Hiền', '1978-09-16', 'nu', '15.111', '3.33', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24277, 'Lê Đình Dũng', '1982-05-25', 'nam', '15.111', '3.00', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24278, 'Nguyễn Ngọc Thuân', '1983-12-02', 'nam', '15.111', '3.00', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24279, 'Nguyễn Văn Hoàn', '1980-11-09', 'nam', '15.111', '3.33', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24280, 'Nguyễn Tuấn Anh', '1984-07-11', 'nam', '15.111', '2.67', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24281, 'Trương Tiến Phát', '1984-02-02', 'nam', '15.111', '2.67', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24282, 'Đặng Hà Dương', '1984-07-07', 'nam', '15.111', '2.67', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24283, 'Phạm Văn Việt', '1985-02-08', 'nam', '15.111', '2.67', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24284, 'Lê Trí Hiếu', '1989-09-28', 'nam', '15.111', '2.34', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24285, 'Phan Trung Kiên', '1982-08-01', 'nam', '15.111', '3.00', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24286, 'Nguyễn Mạnh Thường', '1964-02-24', 'nam', '15.110', '4.40', NULL, 2160, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24287, 'Hoàng Đức Tuấn', '1965-03-06', 'nam', '15.110', '4.40', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24288, 'Đồng Thị Minh Hảo', '1978-03-22', 'nu', '15.111', '3.33', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24289, 'Đặng Văn Trường', '1980-07-05', 'nam', '15.111', '3.33', NULL, 2160, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24290, 'Hoàng Anh Tuấn', '1980-10-13', 'nam', '15.111', '3.00', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24291, 'Vũ Thị Thuý', '1980-08-18', 'nu', '01.003', '2.67', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24292, 'Phạm Đình Bá', '1984-04-27', 'nam', '15.111', '2.67', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24293, 'Nguyễn Văn Hải', '1981-03-19', 'nam', '15.111', '2.67', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24294, 'Lê Hải Bình', '1987-08-27', 'nam', '13.095', '2.34', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24295, 'Cao Đức Thiệp', '1972-06-01', 'nam', '15.111', '3.99', NULL, 2160, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24296, 'Bùi Thức Đức', '1957-01-28', 'nam', '15.110', '5.42', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24297, 'Phạm Đức', '1962-05-03', 'nam', '15.110', '5.76', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24298, 'Nguyễn Lan Hương', '1970-09-05', 'nu', '15.110', '4.74', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24299, 'Phạm Thị Yến', '1975-08-31', 'nu', '15.111', '3.66', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24300, 'Nguyễn Thị Xuân Hương', '1976-02-27', 'nu', '15.111', '3.66', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24301, 'Bùi Thị Diệu Thúy', '1976-10-18', 'nu', '15.111', '3.66', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24302, 'Lê Thị Minh Phương', '1977-07-23', 'nu', '15.111', '3.66', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24303, 'Nguyễn Thị Hà', '1984-10-16', 'nu', '13.095', '2.67', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24304, 'Lê Anh Tuấn', '1980-09-11', 'nam', '15.111', '3.33', NULL, 2160, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24305, 'Lưu Quang Khanh', '1980-09-19', 'nam', '15.111', '3.33', NULL, 2160, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24306, 'Phan Văn Dương', '1985-10-02', 'nam', '15.111', '2.67', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24307, 'Phạm Hoàng Anh', '1988-01-28', 'nam', '15.111', '2.34', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24308, 'Phạm Hoàng Nghĩa', '1988-06-01', 'nam', '15.111', '2.34', NULL, 2160, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24309, 'Nguyễn Văn Sơn', '1961-04-15', 'nam', '15.110', '6.10', NULL, 2161, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24310, 'Nguyễn Thị Lan Hương', '1963-01-14', 'nu', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24311, 'Phạm Thế Hưng', '1961-05-11', 'nam', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24312, 'Nguyễn Thị Kim Loan', '1964-04-15', 'nu', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24313, 'Nguyễn Thị Thúy Hồng', '1974-12-22', 'nu', '15.111', '3.99', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24314, 'Trương Thị Như Hà', '1976-09-17', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24315, 'Nguyễn Bích Ngọc', '1980-09-27', 'nam', '15.111', '3.33', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24316, 'Nguyễn Phong Nhã', '1986-06-18', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24317, 'Lê Sơn Tùng', '1985-08-22', 'nam', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24318, 'Trần Ngọc Hưng', '1990-09-22', 'nam', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24319, 'Hoàng Bảo Trung', '1989-03-06', 'nam', '15.111', '2.27', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24320, 'Vũ Thanh Trung', '1987-03-23', 'nam', '15.111', '2.27', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24321, 'Vương Thu Giang', '1989-12-11', 'nu', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24322, 'Vũ Trụ Phi', '1961-08-10', 'nam', '15.110', '5.76', NULL, 2161, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24323, 'Vũ Lê Ninh', '1961-10-10', 'nam', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24324, 'Đỗ Thị Mai Thơm', '1970-09-02', 'nu', '15.110', '4.74', NULL, 2161, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24325, 'Nguyễn Thị Liên', '1966-12-21', 'nu', '15.111', '3.99', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24326, 'Lê Trang Nhung', '1975-12-24', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24327, 'Hoàng Thị Phương Lan', '1977-09-13', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24328, 'Nguyễn Thị Thu Hà', '1971-08-09', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24329, 'Phạm Thị Lân', '1963-06-01', 'nu', '13.095', '4.32', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24330, 'Lê Thanh Phương', '1981-01-31', 'nam', '15.111', '3.00', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24331, 'Tô Văn Tuấn', '1984-08-20', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24332, 'Phùng Mạnh Trung', '1986-01-20', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24333, 'Đào Văn Thi', '1986-11-09', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24334, 'Đoàn Thị Thu Hà', '1987-11-23', 'nu', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24335, 'Đinh Thị Thu Ngân', '1990-12-22', 'nu', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24336, 'Vũ Thị Như Quỳnh', '1990-08-17', 'nu', '15.111', '2.27', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24337, 'Nguyễn Viết Hoàng Sơn', '1990-08-02', 'nam', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24338, 'Đặng Thị Thùy Dương', '1992-01-11', 'nu', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24339, 'Trần Thanh Thủy', '1968-07-22', 'nu', '13.095', '3.00', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24340, 'Nguyễn Hữu Hùng', '1961-10-17', 'nam', '15.110', '5.76', NULL, 2161, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24341, 'Bùi Xuân Trường', '1974-07-29', 'nam', '15.111', '3.99', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24342, 'Hồ Thị Thu Lan', '1976-07-18', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24343, 'Bùi Thanh Hải', '1980-08-13', 'nam', '15.111', '3.33', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24344, 'Phạm Việt Hùng', '1981-03-02', 'nam', '15.111', '3.00', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24345, 'Dương Anh Minh', '1991-04-09', 'nam', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24346, 'Nguyễn Sơn', '1991-10-03', 'nam', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24347, 'Trần Quang Đức', '1988-10-13', 'nam', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24348, 'Bùi Thanh Tùng', '1963-09-08', 'nam', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24349, 'Lê Thị Nguyên', '1962-08-20', 'nu', '15.110', '5.76', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24350, 'Trần Văn Lâm', '1959-08-26', 'nam', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24351, 'Phạm Thị Bạch Hường', '1961-07-03', 'nu', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24352, 'Hoàng Thị Lịch', '1976-04-10', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24353, 'Nguyễn Thị Thanh Bình', '1980-03-25', 'nu', '15.111', '3.33', NULL, 2161, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24354, 'Phạm Thị Thu Hằng', '1983-10-14', 'nu', '15.111', '3.00', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24355, 'Nguyễn Hiển Đạt', '1984-07-16', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24356, 'Phạm Thị Quỳnh Mai', '1991-06-09', 'nu', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24357, 'Lê Văn Thanh', '1985-09-25', 'nam', '15.111', '2.67', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24358, 'Lương Nhật Hải', '1962-02-02', 'nam', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24359, 'Mai Khắc Thành', '1977-04-05', 'nam', '15.111', '3.66', NULL, 2161, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24360, 'Đỗ Thanh Tùng', '1975-11-25', 'nam', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24361, 'Phạm Ngọc Thanh', '1975-05-22', 'nam', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24362, 'Hồ Mạnh Tuyến', '1976-04-12', 'nam', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24363, 'Nguyễn Thị Quỳnh Nga', '1977-05-01', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24364, 'Hoàng Thị Thúy Phương', '1981-11-13', 'nu', '15.111', '3.33', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24365, 'Nguyễn Thị Phương Mai', '1986-06-01', 'nu', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24366, 'Nguyễn Ngọc Quang', '1986-09-21', 'nam', '15.111', '2.67', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24367, 'Dương Văn Bạo', '1961-12-30', 'nam', '15.110', '5.42', NULL, 2161, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24368, 'Đỗ Đức Phú', '1956-09-22', 'nam', '15.111', '4.65', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24369, 'Phan Thị Bích Ngọc', '1972-02-25', 'nu', '15.110', '4.74', NULL, 2161, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24370, 'Phạm Thị Phương Mai', '1976-01-23', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24371, 'Bùi Thị Thanh Nga', '1981-03-06', 'nu', '15.111', '3.00', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24372, 'Đỗ Việt Thanh', '1982-06-26', 'nam', '15.111', '3.00', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24373, 'Nguyễn Ngọc Hà', '1983-03-03', 'nam', '13.095', '3.00', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24374, 'Đoàn Trọng Hiếu', '1986-11-13', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24375, 'Lê Thành Luân', '1986-10-15', 'nam', '15.111', '2.67', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24376, 'Trần Hải Việt', '1986-02-25', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24377, 'Trương Thế Hinh', '1963-02-19', 'nam', '15.110', '5.76', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24378, 'Huỳnh Ngọc Oánh', '1962-04-28', 'nam', '15.110', '5.42', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24379, 'Trần Gia Ninh', '1976-11-30', 'nam', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24380, 'Trương Thị Minh Hằng', '1976-05-01', 'nu', '15.111', '3.66', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24381, 'Lương Thị Kim Dung', '1978-11-03', 'nu', '15.111', '3.33', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24382, 'Bùi Hưng Nguyên', '1978-03-21', 'nam', '15.111', '3.33', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24383, 'Nguyễn Ngọc Sơn', '1986-08-01', 'nam', '15.111', '2.67', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24384, 'Nguyễn Lê Mạnh Cường', '1986-05-31', 'nam', '15.111', '2.67', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24385, 'Vũ Lê Huy', '1986-04-21', 'nam', '15.111', '2.67', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24386, 'Nguyễn Minh Đức', '1985-09-24', 'nam', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24387, 'Lê Thanh Vân', '1990-04-02', 'nu', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24388, 'Bùi Thị Thùy Linh', '1990-03-21', 'nu', '15.111', '2.34', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24389, 'Nguyễn Thị Nha Trang', '1989-09-09', 'nu', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24390, 'Đỗ Như Quỳnh', '1991-02-21', 'nu', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24391, 'Phạm Thị Yến', '1987-10-13', 'nu', '15.111', '2.67', NULL, 2161, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24392, 'Vũ Thị Thu Hằng', '1991-03-29', 'nu', '15.111', '1.99', NULL, 2161, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24393, 'Nguyễn Thanh Thủy', '1974-03-24', 'nu', '15.110', '4.74', NULL, 2162, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24394, 'Bùi Thái Duy', '1987-11-09', 'nam', '13.095', '2.67', NULL, 2162, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24395, 'Lương Thị Kim Oanh', '1986-10-13', 'nu', '13.095', '2.34', NULL, 2162, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24396, 'Lê Văn Minh', '1988-06-28', 'nam', '13.095', '2.34', NULL, 2162, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24397, 'Đào Văn Tuấn', '1963-05-26', 'nam', '15.110', '5.76', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24398, 'Nguyễn Thị Bích Thảo', '1960-07-22', 'nu', '15.110', '5.42', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24399, 'Trần Huy Thanh', '1982-08-03', 'nam', '15.111', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24400, 'Lê Tùng Anh', '1981-12-04', 'nam', '15.111', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24401, 'Nguyễn Thị Hồng Hạnh', '1983-11-01', 'nu', '15.111', '2.67', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24402, 'Nguyễn Sĩ Nguyên', '1980-09-11', 'nam', '15.111', '3.33', NULL, 2163, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24403, 'Nguyễn Hoàng', '1984-09-28', 'nam', '15.111', '2.67', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24404, 'Phạm Thị Ngà', '1981-05-05', 'nu', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24405, 'Nguyễn Thị Diễm Chi', '1980-08-28', 'nu', '15.111', '2.55', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24406, 'Phạm Văn Khôi', '1986-07-07', 'nam', '15.111', '2.67', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24407, 'Vũ Thế Hùng', '1957-12-07', 'nam', '15.111', '4.98', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24408, 'Nguyễn Trọng Khuê', '1976-11-06', 'nam', '15.111', '3.66', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24409, 'Đỗ Hồng Quân', '1977-07-08', 'nam', '15.111', '3.66', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24410, 'Lê Sỹ Xinh', '1981-09-10', 'nam', '15.111', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24411, 'Trần Khánh Toàn', '1979-11-24', 'nam', '15.111', '3.33', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24412, 'Nguyễn Xuân Thịnh', '1981-12-07', 'nam', '15.111', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24413, 'Nguyễn Thị Hồng', '1979-06-05', 'nu', '15.111', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24414, 'Phạm Minh Châu', '1986-08-06', 'nam', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24415, 'Nguyễn Văn Ngọc', '1955-01-19', 'nam', '15.110', '6.44', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24416, 'Đoàn Thế Mạnh', '1961-12-12', 'nam', '15.110', '5.42', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24417, 'Lê Thị Lệ', '1975-05-03', 'nu', '15.111', '3.66', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24418, 'Bùi Quốc Bình', '1973-01-15', 'nam', '15.111', '3.99', NULL, 2163, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24419, 'Trần Long Giang', '1975-09-03', 'nam', '15.111', '3.66', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24420, 'Vũ Hải Ninh', '1981-12-01', 'nam', '15.111', '3.00', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24421, 'Nguyễn Trọng Khôi', '1982-10-09', 'nam', '15.111', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24422, 'Phạm Quốc Hoàn', '1986-09-28', 'nam', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24423, 'Vũ Thị Chi', '1984-11-26', 'nu', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24424, 'Vũ Hữu Trường', '1985-06-03', 'nam', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24425, 'Đỗ Thị Minh Trang', '1988-08-12', 'nu', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24426, 'Hà Xuân Chuẩn', '1961-10-22', 'nam', '15.110', '6.10', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24427, 'Nguyễn Tiến Thành', '1976-06-16', 'nam', '15.111', '3.66', NULL, 2163, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24428, 'Hoàng Giang', '1968-11-29', 'nam', '15.110', '4.74', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24429, 'Nguyễn Xuân Lộc', '1975-06-07', 'nam', '15.111', '3.66', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24430, 'Phạm Thị Hải Yến', '1979-01-18', 'nu', '15.111', '3.33', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24431, 'Lê Văn Cường', '1979-08-24', 'nam', '15.111', '3.33', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24432, 'Tô Ngọc Minh Phương', '1980-08-14', 'nu', '15.111', '3.33', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24433, 'Thái Hoàng Phương', '1986-05-02', 'nam', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24434, 'Vũ Văn Huyền', '1984-06-24', 'nam', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24435, 'Vũ Thị Khánh Chi', '1981-11-08', 'nu', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24436, 'Đỗ Quang Thành', '1986-10-15', 'nam', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24437, 'Nguyễn Thanh Tùng', '1988-11-01', 'nam', '15.111', '2.34', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24438, 'Đỗ Mạnh Cường', '1985-07-16', 'nam', '15.111', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24439, 'Nguyễn Văn Ninh', '1986-11-27', 'nam', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24440, 'Nguyễn Thiện Thành', '1986-08-14', 'nam', '15.111', '2.27', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24441, 'Nguyễn Xuân Hòa', '1988-01-22', 'nam', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24442, 'Lê Thị Hương Giang', '1976-05-21', 'nu', '15.111', '3.66', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24443, 'Vũ Tiến Công', '1976-02-11', 'nam', '01.003', '3.66', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24444, 'Nguyễn Thị Hòa', '1978-10-06', 'nu', '01.003', '3.33', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24445, 'Trần Ngọc Thu', '1986-01-31', 'nu', '13.095', '2.67', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24446, 'Phạm Văn Trung', '1979-11-21', 'nam', '15.111', '3.33', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24447, 'Nguyễn Phan Anh', '1980-10-24', 'nam', '15.111', '3.00', NULL, 2163, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24448, 'Đoàn Phạm Tuyển', '1987-02-11', 'nam', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24449, 'Phạm Thị Ly', '1986-12-02', 'nu', '15.111', '2.34', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24450, 'Đoàn Như Sơn', '1984-10-30', 'nam', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24451, 'Vũ Quang Việt', '1986-05-28', 'nam', '15.111', '2.27', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24452, 'Vũ Quốc Hoàng', '1988-09-13', 'nam', '13.095', '1.99', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24453, 'Nguyễn Hoàng Lâm', '1986-10-05', 'nam', '15.111', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24454, 'Hoàng Hồng Giang', '1974-06-14', 'nam', '15.111', '3.66', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24455, 'Phạm Văn Sỹ', '1982-05-24', 'nam', '13.095', '3.00', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24456, 'Phạm Tiến Thành', '1984-04-04', 'nam', '13.095', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24457, 'Trần Đức Phú', '1984-03-10', 'nam', '13.095', '2.67', NULL, 2163, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24458, 'Vũ Thế Lượng', '1980-12-05', 'nam', '13.095', '3.00', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24459, 'Nguyễn Hải Hòa', '1984-11-19', 'nam', '13.095', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24460, 'Đoàn Thị Hồng Ngọc', '1987-11-07', 'nu', '13.095', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24461, 'Bùi Thị Minh Thu', '1989-01-11', 'nu', '13.095', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24462, 'Nguyễn Huy Hoàng', '1984-03-08', 'nam', '13.095', '2.34', NULL, 2163, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24463, 'Lê Quốc Định', '1956-11-01', 'nam', '15.110', '6.78', NULL, 2164, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24464, 'Ngô Quốc Vinh', '1970-08-23', 'nam', '15.111', '3.99', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24465, 'Lê Thị Xuân Hường', '1969-11-30', 'nu', '13.095', '3.99', NULL, 2164, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24466, 'Nguyễn Quốc Hưng', '1977-11-22', 'nam', '01.003', '3.33', NULL, 2164, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24467, 'Phạm Trung Minh', '1980-05-07', 'nam', '15.111', '3.33', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24468, 'Trần Đăng Hoan', '1977-01-25', 'nam', '15.111', '3.66', NULL, 2164, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24469, 'Nguyễn Trọng Đức', '1975-04-19', 'nam', '15.111', '3.66', NULL, 2164, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24470, 'Cao Đức Hạnh', '1982-05-08', 'nam', '15.111', '3.00', NULL, 2164, 1872, 'hanhcd', '$2y$13$fz/RhpRZqHij6YFkEJmVmO6CUqMb4DS.yCu4g4/zAFlMp4z4ARZBa', NULL, 'qjdIgi3ehqlZoy03i7xNIZDCGbx5pJ0g', '10', '1463167332', '1463167332', 'user'),
(24471, 'Nguyễn Hữu Tuân', '1980-03-28', 'nam', '15.111', '3.33', NULL, 2164, 1872, 'tuannh', '$2y$13$S7Wd03xMNfaoXfobfQS9kOs6Z0h/ERi6ZOgIByelrbLLFzS8csGyq', NULL, 'TDTgSDHYe6j-G1UolwMk9t-JCt_UUIxK', '10', '1463420389', '1463420389', 'user'),
(24472, 'Nguyễn Văn Thủy', '1960-07-14', 'nam', '15.110', '5.42', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24473, 'Nguyễn Hạnh Phúc', '1978-05-24', 'nam', '15.111', '3.66', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24474, 'Ng. Duy Trường Giang', '1981-04-23', 'nam', '15.111', '3.33', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24475, 'Phạm Tuấn Đạt', '1976-12-13', 'nam', '15.111', '3.66', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24476, 'Đặng Hoàng Anh', '1984-01-31', 'nam', '15.111', '2.67', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24477, 'Nguyễn Thị Hồng Hiệp', '1983-09-28', 'nu', '15.111', '2.67', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24478, 'Lê Bá Dũng', '1981-12-10', 'nam', '15.111', '3.00', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24479, 'Nguyễn Trung Đức', '1980-09-21', 'nam', '15.111', '3.00', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24480, 'Nguyễn Thị Thu Hương', '1971-10-12', 'nu', '13.095', '3.99', NULL, 2164, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24481, 'Lê Trí Thành', '1982-10-19', 'nam', '15.111', '3.00', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24482, 'Trần Đình Vương', '1982-01-11', 'nam', '15.111', '3.00', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24483, 'Lê Thế Anh', '1987-05-06', 'nam', '15.111', '2.67', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24484, 'Nguyễn Vương Thịnh', '1983-10-27', 'nam', '15.111', '2.67', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24485, 'Trần Thị Hương', '1983-09-27', 'nu', '15.111', '3.00', NULL, 2164, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24486, 'Bùi Đình Vũ', '1976-04-23', 'nam', '15.111', '3.99', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24487, 'Lê Quyết Tiến', '1988-03-10', 'nam', '15.111', '2.34', NULL, 2164, 1873, 'tienlq', '$2y$13$g5mLo3YbGWSmgOIPoOBKcuuwlWcdvPdpxpx83IzhlYmePhQ1W0Tz.', NULL, 'CfjsjsCVhIoKVA_nVbq-x0vsrJty1zc-', '10', '1463167298', '1463167298', 'manager'),
(24488, 'Trịnh Thị Ngọc Hương', '1976-06-21', 'nu', '15.111', '3.66', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24489, 'Nguyễn Đồng Sỹ', '1976-07-25', 'nam', '13.095', '3.33', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24490, 'Võ Văn Thưởng', '1980-05-20', 'nam', '13.095', '3.00', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24491, 'Nguyễn Kim Anh', '1982-10-24', 'nu', '15.111', '3.00', NULL, 2164, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24492, 'Nguyễn Thị Thu Hà', '1987-08-11', 'nu', '15.111', '2.34', NULL, 2164, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24493, 'Nguyễn Cảnh Toàn', '1976-03-02', 'nam', '15.111', '3.66', NULL, 2164, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24494, 'Phạm Việt Dũng', '1977-05-03', 'nam', '15.111', '3.66', NULL, 2165, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24495, 'Trần Thị Khánh Du', '1985-05-27', 'nu', '13.095', '2.67', NULL, 2165, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24496, 'Đinh Đức Thiện', '1986-12-08', 'nam', '13.095', '2.67', NULL, 2165, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24497, 'Bùi Xuân Thọ', '1987-11-13', 'nam', '13.095', '2.34', NULL, 2165, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24498, 'Nguyễn Cao Văn', '1987-09-19', 'nam', '13.095', '2.34', NULL, 2165, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24499, 'Phạm Văn Thứ', '1954-11-15', 'nam', '15.110', '6.78', NULL, 2166, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24500, 'Lê Văn Học', '1960-01-18', 'nam', '15.110', '6.10', NULL, 2166, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24501, 'Nguyễn Xuân Sơn', '1981-10-03', 'nam', '13.095', '2.67', NULL, 2166, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24502, 'Trần Minh Tuấn', '1970-06-22', 'nam', '13.095', '3.66', NULL, 2166, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24503, 'Phạm Kỳ Quang', '1974-11-30', 'nam', '15.110', '4.74', NULL, 2166, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24504, 'Lê Thành Lự', '1982-12-08', 'nu', '01.003', '3.00', NULL, 2166, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24505, 'Đặng Thị Nga', '1988-06-14', 'nu', '13.095', '2.34', NULL, 2166, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24506, 'Phan Văn Chiêm', '1965-05-01', 'nam', '15.110', '5.08', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24507, 'Bùi Quốc Hưng', '1972-01-27', 'nam', '15.111', '3.66', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24508, 'Quách Thị Hà', '1980-10-24', 'nu', '15.111', '3.33', NULL, 2167, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24509, 'Nguyễn Thị Thanh', '1987-11-27', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24510, 'Chu Thị Bích Thọ', '1959-10-23', 'nu', '15.111', '4.98', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24511, 'Trần Việt Dũng', '1978-11-03', 'nam', '15.111', '3.33', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24512, 'Ngô Văn Thảo', '1964-01-20', 'nam', '15.111', '4.98', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24513, 'Mai Thị Mến', '1980-09-06', 'nu', '15.111', '3.00', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24514, 'Vũ Thị Thu Hiền', '1984-10-30', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24515, 'Nguyễn Thị Kim Hồng', '1984-12-14', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24516, 'Bùi Thúy Tuyết Anh', '1984-01-21', 'nu', '15.111', '2.67', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24517, 'Nguyễn Thị Thu Lan', '1984-09-01', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24518, 'Đặng Ngọc Lựu', '1968-08-12', 'nam', '15.110', '5.42', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24519, 'Trương Thị Anh Đào', '1979-10-20', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24520, 'Nguyễn Đình Quỳnh', '1982-08-19', 'nam', '15.111', '3.33', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24521, 'Phạm Thị Xuân', '1974-01-27', 'nu', '15.111', '3.99', NULL, 2167, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24522, 'Trần Hoàng Hải', '1983-01-15', 'nam', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24523, 'Phạm Thị Thu', '1978-05-17', 'nu', '15.111', '3.33', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24524, 'Phạm Thị Thu Trang', '1988-12-16', 'nu', '15.111', '2.34', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24525, 'Vũ Thị Duyên', '1987-02-09', 'nu', '15.111', '2.34', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24526, 'Nguyễn Thúy Dương', '1989-11-15', 'nu', '15.111', '2.34', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24527, 'Vũ Thị Thu Hiền', '1979-09-22', 'nu', '01.003', '3.00', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24528, 'Mạc Văn Nam', '1966-04-09', 'nam', '15.110', '5.08', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24529, 'Phan Duy Hòa', '1978-06-15', 'nam', '15.111', '3.66', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24530, 'Nguyễn Thị Thanh Sâm', '1984-03-25', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24531, 'Trương Thị Như', '1985-11-21', 'nu', '15.111', '2.34', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24532, 'Vũ Thị Liên', '1987-12-12', 'nu', '15.111', '2.67', NULL, 2167, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24533, 'Hoàng Thị Bích Phương', '1986-04-28', 'nu', '15.111', '2.34', NULL, 2167, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24534, 'Phạm Minh Hải', '1966-07-25', 'nam', '01.011', '3.48', NULL, 2168, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24535, 'Hoàng Bích Thủy', '1962-09-26', 'nu', '01.004', '4.06', NULL, 2168, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24536, 'Nguyễn Đăng Hà', '1956-01-08', 'nam', '15.111', '4.98', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24537, 'Nguyễn Ngọc Khải', '1979-09-10', 'nam', '15.111', '3.66', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24538, 'Nguyễn Thị Minh Ngọc', '1978-07-05', 'nu', '15.111', '3.66', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24539, 'Lê Mỹ Phượng', '1978-04-25', 'nu', '15.111', '3.33', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24540, 'Vũ Thị Trà', '1980-03-20', 'nu', '15.111', '3.33', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24541, 'Phạm Đồng Bằng', '1980-10-12', 'nam', '15.111', '3.33', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24542, 'Nguyễn Thị Xuân', '1982-11-01', 'nu', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24543, 'Nguyễn Tất Thắng', '1983-09-25', 'nam', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24544, 'Nguyễn Thế Hưng', '1982-09-28', 'nam', '15.111', '3.33', NULL, 2169, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24545, 'Nguyễn Văn Minh', '1979-07-31', 'nam', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24546, 'Đỗ Lệ Quyên', '1988-02-25', 'nu', '15.111', '2.67', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24547, 'Nguyễn Thị Nhàn', '1989-12-13', 'nu', '15.111', '2.34', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24548, 'Nguyễn Anh Đức', '1989-09-05', 'nam', '15.111', '2.34', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24549, 'Nguyễn Ngọc Khang', '1954-10-28', 'nam', '15.110', '6.10', NULL, 2169, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24550, 'Phạm Tiến Dũng', '1975-06-27', 'nam', '15.111', '3.66', NULL, 2169, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24551, 'Nguyễn Thị Minh Nguyệt', '1980-10-24', 'nu', '15.111', '3.66', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24552, 'Phạm Thị Hoa', '1979-06-11', 'nu', '15.111', '3.33', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24553, 'Vũ Minh Trọng', '1973-02-12', 'nam', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24554, 'Nguyễn Thị Hồng Vân', '1983-01-05', 'nu', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24555, 'Nguyễn Thị Như', '1986-05-04', 'nu', '15.111', '2.67', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24556, 'Ngô Thị Hồng Nga', '1988-11-12', 'nu', '15.111', '2.67', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24557, 'Nguyễn Thị Đào', '1989-03-01', 'nu', '13.095', '2.34', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24558, 'Hoàng Văn Hùng', '1956-06-02', 'nam', '15.110', '6.44', NULL, 2169, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24559, 'Phạm Văn Minh', '1963-09-15', 'nam', '15.110', '5.08', NULL, 2169, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24560, 'Nguyễn Đình Dương', '1980-10-22', 'nam', '15.111', '3.33', NULL, 2169, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24561, 'Vũ Trọng Tuyển', '1955-01-01', 'nam', '15.110', '5.42', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24562, 'Nguyễn Thị Đỗ Hạnh', '1978-10-14', 'nu', '15.111', '3.66', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24563, 'Nguyễn Thị Hằng', '1978-03-19', 'nu', '15.111', '3.66', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24564, 'Phạm Thị Thu Hoài', '1978-07-28', 'nu', '15.111', '3.33', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24565, 'Nguyễn Lê Hương', '1984-05-05', 'nu', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24566, 'Lê Đào Hải An', '1979-04-04', 'nu', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24567, 'Lê Thanh Hoa', '1983-12-18', 'nu', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24568, 'Nguyễn Văn Trịnh', '1980-09-05', 'nam', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24569, 'Phạm Thị Ngọc Hà', '1980-07-04', 'nu', '15.111', '3.00', NULL, 2169, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24570, 'Bùi Thị Minh Hằng', '1985-08-09', 'nu', '15.111', '3.00', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24571, 'Tạ Quang Đông', '1984-06-07', 'nam', '15.111', '3.00', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24572, 'Phạm Quang Khải', '1986-01-01', 'nam', '15.111', '2.67', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24573, 'Đồng Xuân Cường', '1986-03-06', 'nam', '15.111', '2.67', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24574, 'Nguyễn Thị Thu Hằng', '1978-11-04', 'nu', '13.095', '2.67', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24575, 'Vũ Thị Vân', '1985-05-31', 'nu', '15.111', '2.67', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24576, 'Nguyễn Văn', '1981-06-24', 'nam', '15.111', '2.67', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24577, 'Vũ Tuấn Anh', '1988-06-24', 'nam', '15.111', '2.34', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24578, 'Hoàng Kim Chi', '1987-05-02', 'nu', '15.111', '2.67', NULL, 2169, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24579, 'Đỗ Thị Hạnh', '1989-07-24', 'nu', '15.111', '2.34', NULL, 2169, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24580, 'Nguyễn Thị Mai Hạnh', '1970-07-19', 'nu', '15.110', '4.74', NULL, 2170, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24581, 'Vũ Văn Duy', '1979-08-19', 'nam', '15.111', '3.33', NULL, 2170, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24582, 'Phạm Thị Thúy', '1979-02-19', 'nu', '15.111', '3.33', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24583, 'Trần Ngọc An', '1982-03-18', 'nam', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24584, 'Vũ Thị Phương Thảo', '1980-09-30', 'nu', '15.111', '3.33', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24585, 'Nguyễn Hữu Dĩnh', '1980-08-06', 'nam', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24586, 'Bùi Thị Ngọc Mai', '1988-05-07', 'nu', '15.111', '1.99', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24587, 'Lê Thị Thùy Dương', '1981-07-14', 'nu', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24588, 'Hoàng Mạnh Cường', '1978-08-27', 'nam', '15.111', '3.33', NULL, 2170, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24589, 'Nguyễn Hoàng Hải', '1970-01-01', 'nu', '15.111', '2.27', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24590, 'Nguyễn Hồng Mai', '1964-07-26', 'nu', '15.110', '5.42', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24591, 'Nguyễn Văn Thừa', '1960-07-30', 'nam', '15.111', '4.98', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24592, 'Phạm Thị Thanh', '1977-02-11', 'nu', '15.111', '3.33', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24593, 'Nguyễn Hải Yến', '1980-08-05', 'nu', '15.111', '3.33', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24594, 'Vũ Anh Tuấn', '1981-09-16', 'nam', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24595, 'Trần Bảo Ngọc Hà', '1991-01-11', 'nu', '15.111', '1.99', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24596, 'Đào Văn Lập', '1987-05-07', 'nam', '15.111', '2.67', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24597, 'Vũ Quyết Thắng', '1966-05-04', 'nam', '15.110', '5.08', NULL, 2170, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24598, 'Vũ Thị Tiết Hạnh', '1971-04-28', 'nu', '15.110', '4.74', NULL, 2170, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24599, 'Hoàng Thị Sim', '1959-09-02', 'nu', '01.004', '4.06', NULL, 2170, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24600, 'Đỗ Thị Lam', '1978-11-24', 'nu', '15.111', '3.33', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24601, 'Hoàng Văn Thành', '1978-07-17', 'nam', '15.111', '3.33', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24602, 'Trịnh Thị Phương Lan', '1984-09-03', 'nu', '13.095', '2.34', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24603, 'Lê Thị Mai', '1984-10-01', 'nu', '15.111', '2.67', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24604, 'Phạm Tiến Huy', '1987-11-13', 'nam', '15.111', '2.67', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24605, 'Nguyễn Thị Hằng', '1961-09-08', 'nu', '15.110', '5.76', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24606, 'Đào Ngọc Biên', '1965-09-15', 'nam', '15.110', '5.42', NULL, 2170, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24607, 'Mai Thị Tuyết Lê', '1964-10-06', 'nu', '15.110', '5.42', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24608, 'Cao Ngọc Vi', '1982-04-11', 'nam', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24609, 'Nguyễn Tùng Lân', '1984-01-05', 'nam', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24610, 'Nguyễn Mạnh Nên', '1985-09-04', 'nam', '15.111', '2.67', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24611, 'Quản Trọng Hùng', '1955-10-08', 'nam', '15.110', '6.10', NULL, 2170, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24612, 'Nguyễn Thị Thu Lê', '1971-01-25', 'nu', '15.110', '5.08', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24613, 'Lê Văn Cương', '1961-08-12', 'nam', '15.110', '4.74', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24614, 'Trần Thị Thanh Vân', '1979-06-03', 'nu', '15.111', '3.33', NULL, 2170, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24615, 'Nguyễn Tiến Dũng', '1980-03-28', 'nam', '15.111', '3.00', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24616, 'Nguyễn Dương Nam', '1985-10-26', 'nam', '15.111', '2.67', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24617, 'Lê Thị Nhung', '1987-12-01', 'nu', '15.111', '2.67', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24618, 'Đỗ Tất Mạnh', '1988-07-03', 'nam', '15.111', '2.27', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24619, 'Nguyễn Văn Bách', '1988-07-11', 'nam', '13.095', '2.67', NULL, 2170, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24620, 'Lê Đức Kế', '1955-04-23', 'nam', '15.110', '6.44', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24621, 'Nguyễn Vĩnh Hải', '1984-02-26', 'nam', '15.111', '2.67', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24622, 'Hoàng Văn Nam', '1984-04-15', 'nam', '15.111', '2.67', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24623, 'Nguyễn Chí Công', '1986-12-15', 'nam', '15.111', '2.27', NULL, 2170, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24624, 'Phạm Văn Đôn', '1968-08-09', 'nam', '15.110', '5.08', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24625, 'Nguyễn Hoài Đức', '1972-01-11', 'nu', '15.111', '3.99', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24626, 'Nguyễn Thị Ngọc Lan', '1959-08-07', 'nu', '15.111', '4.98', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24627, 'Nguyễn Tất Thành', '1958-01-05', 'nam', '15.111', '4.98', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24628, 'Bùi Thị Hồng Hà', '1959-06-09', 'nu', '15.111', '4.98', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24629, 'Phan Thị Minh Hiền', '1965-04-25', 'nu', '15.111', '4.98', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24630, 'Đoàn Thị Thanh Thủy', '1963-10-27', 'nu', '15.111', '4.65', NULL, 2171, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24631, 'Hoàng Thị Thu Hà', '1972-10-03', 'nu', '15.111', '3.99', NULL, 2171, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24632, 'Hoàng Thị Ngọc Diệp', '1976-10-01', 'nu', '15.111', '3.66', NULL, 2171, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24633, 'Đỗ Thị Phương Lan', '1978-06-24', 'nu', '15.111', '3.66', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24634, 'Lê Thuỳ Tâm', '1974-01-29', 'nu', '15.111', '3.66', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24635, 'Nguyễn Thị Ngọc Tú', '1981-03-22', 'nu', '15.111', '3.33', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24636, 'Ngô Thị Nhàn', '1981-09-15', 'nu', '15.111', '3.33', NULL, 2171, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24637, 'Lê Thị Hiền Thảo', '1981-11-22', 'nu', '15.111', '3.00', NULL, 2171, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24638, 'Nguyễn Hồng Ánh', '1980-09-01', 'nu', '15.111', '3.33', NULL, 2171, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `nhanvien` (`id`, `ten`, `ngaysinh`, `gioitinh`, `ngach`, `hesoluong`, `ghichu`, `donvi_id`, `trinhdo_id`, `username`, `password_hash`, `password_reset_token`, `auth_key`, `status`, `created_at`, `updated_at`, `roles`) VALUES
(24639, 'Đào Thanh Hương', '1983-06-11', 'nu', '15.111', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24640, 'Nguyễn Thị Phượng', '1983-06-25', 'nu', '15.111', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24641, 'Vũ Thị Thúy', '1982-08-26', 'nu', '15.111', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24642, 'Nguyễn Thị Quỳnh Giang', '1981-09-04', 'nu', '15.111', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24643, 'Nguyễn Đình Quý', '1967-01-30', 'nam', '15.111', '3.00', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24644, 'Phạm Đăng Bình', '1956-10-22', 'nam', '15.110', '6.10', NULL, 2171, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24645, 'Lê Thị Hồng Loan', '1987-01-26', 'nu', '15.111', '2.67', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24646, 'Lương Thị Minh Thu', '1986-11-02', 'nu', '15.111', '2.67', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24647, 'Nguyễn Thị Huệ Linh', '1982-05-13', 'nu', '15.111', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24648, 'Trần Thị Kim Liên', '1969-06-08', 'nu', '13.095', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24649, 'Nguyễn Thị Xuân Hương', '1970-02-20', 'nu', '15.111', '2.67', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24650, 'Nguyễn Phương Hạnh', '1987-09-13', 'nu', '15.111', '2.67', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24651, 'Phùng Thị Mai Trang', '1984-07-20', 'nu', '15.111', '2.34', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24652, 'Lê Thị Minh Phương', '1986-05-17', 'nu', '15.111', '2.34', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24653, 'Lưu Thị Quỳnh Hương', '1985-05-03', 'nu', '15.111', '2.67', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24654, 'Đoàn Văn Huân', '1979-11-15', 'nam', '15.111', '3.33', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24655, 'Nguyễn Thị Hoài Phương', '1989-11-22', 'nu', '15.111', '1.99', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24656, 'Nguyễn Thị Thảo', '1991-06-06', 'nu', '13.095', '1.99', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24657, 'Trần Ngọc Diệp', '1977-12-26', 'nu', '13.095', '3.00', NULL, 2171, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24658, 'Vũ Minh Hoa', '1989-01-11', 'nu', '15.111', '2.34', NULL, 2171, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24659, 'Phạm Văn Tuất', '1973-03-28', 'nam', '15.111', '3.99', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24660, 'Trần Văn Nhật', '1975-12-28', 'nam', '15.111', '3.66', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24661, 'Phạm Thanh Tùng', '1977-07-17', 'nam', '15.111', '3.66', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24662, 'Nguyễn Thị Hồng Thắm', '1975-04-06', 'nu', '15.111', '3.66', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24663, 'Nguyễn Thị Xuân Huyền', '1980-05-05', 'nu', '15.111', '3.33', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24664, 'Đỗ Văn Nam', '1980-12-09', 'nam', '15.111', '3.33', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24665, 'Phạm Văn Xưởng', '1978-09-14', 'nam', '15.111', '3.33', NULL, 2172, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24666, 'Nguyễn Thái Bình', '1978-09-06', 'nam', '15.111', '3.33', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24667, 'Phạm Thị Oanh', '1977-12-02', 'nu', '15.111', '3.33', NULL, 2172, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24668, 'Vũ Đức Vinh', '1980-05-27', 'nam', '15.111', '2.67', NULL, 2172, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24669, 'Nguyễn Đức Chỉnh', '1981-08-09', 'nam', '15.111', '2.67', NULL, 2172, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24670, 'Trần Văn Nguyên', '1962-10-12', 'nam', '01.003', '4.32', NULL, 2173, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24671, 'Nguyễn Văn Duy', '1969-10-25', 'nam', '15.110', '5.08', NULL, 2173, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24672, 'Nguyễn Huy Dư', '1957-09-24', 'nam', '15.111', '4.98', NULL, 2173, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24673, 'Nguyễn Thị Quyên', '1966-09-06', 'nu', '01.003', '3.00', NULL, 2173, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24674, 'Đỗ Như Hoa', '1979-11-11', 'nu', '01.003', '3.00', NULL, 2173, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24675, 'Đặng Đình Tuấn', '1976-08-12', 'nam', '15.111', '3.66', NULL, 2173, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24676, 'Nguyễn Cảnh Hải', '1984-12-21', 'nam', '13.095', '2.67', NULL, 2173, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24677, 'Ng. Thị Phương Quỳnh', '1985-04-24', 'nu', '13.095', '2.67', NULL, 2173, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24678, 'Trịnh Bá Trung', '1955-07-18', 'nam', '15.110', '6.10', NULL, 2174, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24679, 'Bùi Văn Vinh', '1957-07-16', 'nam', '15.111', '4.98', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24680, 'Phạm Văn Phước', '1961-02-05', 'nam', '15.110', '5.08', NULL, 2174, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24681, 'Nhữ Anh Dũng', '1962-09-30', 'nam', '15.110', '5.42', NULL, 2174, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24682, 'Đỗ Văn Thế', '1957-06-01', 'nam', '15.111', '4.98', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24683, 'Đỗ Thị Vân Túy', '1967-03-03', 'nu', '01.003', '4.32', NULL, 2174, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24684, 'Phạm Gia Tuyết', '1965-09-12', 'nam', '15.110', '4.74', NULL, 2174, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24685, 'Trần Trọng Minh', '1962-01-09', 'nam', '15.111', '3.98', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24686, 'Đỗ Đình Định', '1958-10-04', 'nam', '13.095', '3.99', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24687, 'Lưu Thành Công', '1975-12-08', 'nam', '15.111', '3.66', NULL, 2174, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24688, 'Đoàn Văn Thành', '1973-01-08', 'nam', '13.095', '3.66', NULL, 2174, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24689, 'Nguyễn Minh Chí', '1958-12-08', 'nam', '13.095', '3.66', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24690, 'Trần Xuân Hải', '1964-08-05', 'nam', '13.095', '4.65', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24691, 'Đồng Thị Ngọc Hân', '1981-12-25', 'nu', '13.095', '2.67', NULL, 2174, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24692, 'Nguyễn Đức Hậu', '1960-06-20', 'nam', '15.111', '4.98', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24693, 'Nguyễn Tất Vinh', '1960-10-03', 'nam', '15.111', '4.98', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24694, 'Hứa Duy Sơn', '1958-09-09', 'nam', '15.111', '4.32', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24695, 'Nguyễn Văn Hành', '1969-11-01', 'nam', '15.111', '4.32', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24696, 'Dương Mạnh Cường', '1959-05-08', 'nam', '15.111', '4.98', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24697, 'Hoàng Đình Sang', '1962-05-18', 'nam', '15.111', '4.32', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24698, 'Nguyễn Duy Hùng', '1979-12-05', 'nam', '15.111', '3.33', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24699, 'Nguyễn Tuấn Anh', '1974-10-22', 'nam', '15.111', '3.33', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24700, 'Nguyễn Văn Toán', '1961-03-08', 'nam', '01.007', '3.63', NULL, 2175, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24701, 'Lê Quốc Nhân', '1960-05-07', 'nam', '01.007', '3.63', NULL, 2175, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24702, 'Lê Thị Hoa', '1960-10-01', 'nu', '01.007', '3.63', NULL, 2175, 1876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24703, 'Nguyễn Văn Bẩy', '1954-07-20', 'nam', '01.007', '3.63', NULL, 2175, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24704, 'Đào Văn Toàn', '1962-11-02', 'nam', '01.009', '2.98', NULL, 2175, 1875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24705, 'Phạm Văn Thịnh', '1961-03-03', 'nam', '01.007', '3.63', NULL, 2175, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24706, 'Bùi Thị Niên', '1976-03-18', 'nu', '13.095', '2.67', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24707, 'Bùi Duy Nghị', '1983-02-05', 'nam', '13.095', '2.67', NULL, 2175, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24708, 'Phan Viết Đức', '1976-10-14', 'nam', '16.118', '3.66', NULL, 2176, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24709, 'Nguyễn Viết Bình', '1958-12-16', 'nam', '16.117', '5.42', NULL, 2176, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24710, 'Thái Thạch Huyền', '1962-06-26', 'nam', '16-119', '4.06', NULL, 2176, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24711, 'Trịnh Thị Hạnh', '1979-08-16', 'nu', '16b.121', '2.86', NULL, 2176, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24712, 'Lê Kim Hoàn', '1963-09-02', 'nam', '01.003', '4.65', NULL, 2177, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24713, 'Nguyễn Văn Hà', '1981-07-21', 'nam', '01.003', '3.00', NULL, 2177, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24714, 'Nguyễn Văn Phong', '1963-01-01', 'nam', '13.095', '4.98', NULL, 2177, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24715, 'Nguyễn Trung Kiên', '1985-11-25', 'nam', '13.095', '2.67', NULL, 2177, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24716, 'Nguyễn Thị Thu Hà', '1983-07-25', 'nu', '17.170', '2.34', NULL, 2177, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24717, 'Lê Thị Huyến', '1983-05-02', 'nu', '13.095', '2.34', NULL, 2177, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24718, 'Vũ Huy Thắng', '1981-08-19', 'nam', '17.170', '3.00', NULL, 2178, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24719, 'Vũ Thị Hà', '1964-03-04', 'nu', '17.170', '4.32', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24720, 'Nguyễn Thị Hằng', '1962-11-11', 'nu', '17.170', '4.32', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24721, 'Nguyễn Thị Hồng Oanh', '1972-11-09', 'nu', '01.003', '3.99', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24722, 'Nguyễn Thị Ngân', '1959-08-11', 'nu', '17.170', '4.32', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24723, 'Phạm Thị Hường', '1977-07-04', 'nu', '01.003', '3.66', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24724, 'Vũ Văn Hiệu', '1980-05-31', 'nam', '01.003', '3.00', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24725, 'Đặng Công Tiến', '1979-10-20', 'nam', '01.003', '3.00', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24726, 'Nguyễn Hồng Hạnh', '1978-03-01', 'nu', '17.170', '3.33', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24727, 'Nguyễn Văn Đức', '1981-05-29', 'nam', '01.003', '3.00', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24728, 'Lê Thị Huyền', '1971-04-27', 'nu', '13.096-Ao', '3.34', NULL, 2178, 1878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24729, 'Bùi Lê Hồng Hạnh', '1984-05-04', 'nu', '13.096-Ao', '2.41', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24730, 'Mai Hồng Nhung', '1987-02-17', 'nu', '13.095', '2.34', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24731, 'Trần Thị Giáng Hương', '1979-10-12', 'nu', '13.095', '2.67', NULL, 2178, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24732, 'Khiếu Hữu Triển', '1960-12-25', 'nam', '15.110', '5.42', NULL, 2179, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24733, 'Nguyễn Công Vịnh', '1972-10-09', 'nam', '15.110', '4.40', NULL, 2179, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24734, 'Trương Minh Hải', '1972-11-28', 'nam', '15.111', '4.32', NULL, 2179, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24735, 'Từ Mạnh Chiến', '1982-03-25', 'nam', '15.111', '3.00', NULL, 2179, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24736, 'Đậu Văn Sơn', '1976-04-27', 'nam', '15.111', '3.33', NULL, 2179, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24737, 'Nguyễn Doãn Hoài', '1968-04-01', 'nam', '15.110', '4.74', NULL, 2179, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24738, 'Hoàng Trung Huấn', '1988-12-03', 'nam', '13.095', '2.34', NULL, 2179, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24739, 'Phạm Việt Dũng', '1987-05-16', 'nam', '13.095', '2.34', NULL, 2179, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24740, 'Nguyễn Đại An', '1958-02-14', 'nam', '15.110', '6.10', 'Khoán lương', 2180, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24741, 'Lê Văn Hạnh', '1960-10-15', 'nam', '15.110', '5.42', 'Khoán lương', 2180, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24742, 'Nguyễn Văn Tuấn', '1963-05-13', 'nam', '15.110', '5.42', 'Khoán lương', 2180, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24743, 'Kiều Đình Bình', '1956-05-18', 'nam', '15.110', '6.10', 'Khoán lương', 2180, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24744, 'Hoàng Ngọc Duy', '1982-05-26', 'nam', '01.003', '3.00', 'Khoán lương', 2180, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24745, 'Tăng Văn Nhất', '1983-04-05', 'nam', '13.095', '3.00', 'Khoán lương', 2180, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24746, 'Phạm Văn Ngọc', '1981-08-12', 'nam', '01.003', '3.00', 'Khoán lương', 2180, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24747, 'Trần Văn Địch', '1962-08-01', 'nam', '15.111', '4.98', 'Khoán lương', 2180, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24748, 'Đoàn Thị Thu Huyền', '1984-12-20', 'nu', '06.031', '2.34', 'Khoán lương', 2180, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24749, 'Vũ Đình Thành', '1983-06-11', 'nam', '13.095', '2.67', 'Khoán lương', 2180, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24750, 'Trần Tiến Thông', '1978-08-10', 'nam', '13.095', '2.67', 'Khoán lương', 2180, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24751, 'Trần Văn Mạnh', '1989-06-23', 'nam', '13.095', '2.34', 'Khoán lương', 2180, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24752, 'Lê Văn Thức', '1988-12-07', 'nam', '13.095', '2.34', 'Khoán lương', 2180, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24753, 'Phạm Thị Vang', '1979-10-19', 'nu', '13.095', '3.33', 'Khoán lương', 2181, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24754, 'Phạm Thị Hiền Trang', '1988-03-17', 'nu', '13.095', '2.27', 'Khoán lương', 2181, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24755, 'Đỗ Thị Thương', '1987-03-15', 'nu', '13.095', '2.27', 'Khoán lương', 2181, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24756, 'Nguyễn Thị Mai Anh', '1991-07-31', 'nu', '13.095', '1.99', 'Khoán lương', 2181, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24757, 'Hoàng Ngọc Mỹ', '1984-07-15', 'nu', '13.095', '2.67', 'Khoán lương', 2181, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24758, 'Phạm Thế Tự', '1960-07-21', 'nam', '15.111', '4.98', 'Khoán lương', 2182, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24759, 'Nguyễn Thị Huyền Thương', '1988-03-12', 'nu', '13.095', '2.34', 'Khoán lương', 2183, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24760, 'Đinh Thị Hà Phương', '1988-09-02', 'nu', '13.095', '1.99', 'Khoán lương', 2183, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24761, 'Nguyễn Thị Thanh Mai', '1977-07-07', 'nu', '01.003', '3.33', 'Khoán lương', 2184, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24762, 'Nguyễn Bình Minh', '1979-12-18', 'nam', '13.095', '3.00', 'Khoán lương', 2184, 1878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24763, 'Phùng Quang Tiến', '1979-06-25', 'nam', '13.095', '3.33', 'Khoán lương', 2184, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24764, 'Vũ Đức Tạ', '1980-03-29', 'nam', '13.095', '3.33', 'Khoán lương', 2184, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24765, 'Phạm Thị Thùy Ni', '1980-08-02', 'nu', '01.003', '3.33', 'Khoán lương', 2184, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24766, 'Dương Văn Toàn', '1984-04-10', 'nam', '13.095', '2.34', 'Khoán lương', 2185, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24767, 'Nguyễn Mạnh Cường', '1963-12-23', 'nam', '15.110', '5.08', 'Khoán lương', 2186, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24768, 'Phạm Viết Cường', '1970-02-07', 'nam', '01.002', '5.08', 'Khoán lương', 2186, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24769, 'Nguyễn Tiến Dũng', '1974-12-09', 'nam', '01.003', '3.66', 'Khoán lương', 2186, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24770, 'Trịnh Đình Bích', '1954-08-27', 'nam', '15.110', '6.44', 'Khoán lương', 2186, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24771, 'Nguyễn Thị Thanh Hường', '1965-12-28', 'nu', '06.032', '3.66', 'Khoán lương', 2186, 1877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24772, 'Trần Thanh Mai', '1966-05-17', 'nu', '13.095', '4.32', 'Khoán lương', 2186, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24773, 'Hà Minh Toàn', '1978-10-25', 'nam', '01.003', '3.33', 'Khoán lương', 2186, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24774, 'Mai Minh Mạnh', '1962-10-27', 'nam', '15.110', '4.74', 'Khoán lương', 2186, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24775, 'Phạm Thị Thu Hằng', '1975-09-09', 'nu', '01.003', '3.66', 'Khoán lương', 2186, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24776, 'Nguyễn Thị Việt Lan', '1980-03-01', 'nu', '01.003', '3.33', 'Khoán lương', 2186, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24777, 'Lương Thị Tiến', '1976-09-20', 'nu', '01.003', '3.33', 'Khoán lương', 2186, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24778, 'Bùi Thị Thùy Dương', '1983-10-04', 'nu', '06.031', '3.00', 'Khoán lương', 2186, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24779, 'Đinh Việt Hà', '1990-11-18', 'nu', '06.031-Ao', '2.10', 'Khoán lương', 2186, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24780, 'Hoàng Đức Nhuận', '1959-05-08', 'nam', '13.095', '4.98', 'Khoán lương', 2187, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24781, 'Đặng Văn Tuấn', '1956-01-06', 'nam', '15.110', '6.10', 'Khoán lương', 2187, 1870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24782, 'Mạc Thị Thu Hằng', '1974-10-21', 'nu', '06.031', '3.99', 'Khoán lương', 2187, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24783, 'Nguyễn Thanh Phong', '1961-01-15', 'nam', '15.110', '5.42', 'Khoán lương', 2187, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24784, 'Trần Đỗ Mát', '1964-01-31', 'nam', '15.110', '4.74', 'Khoán lương', 2187, 1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24785, 'Phạm Trung Kiên', '1971-10-21', 'nam', '06.031', '3.33', 'Khoán lương', 2188, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24786, 'Nguyễn Thị Hương', '1979-12-17', 'nu', '01.003', '3.33', 'Khoán lương', 2188, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24787, 'Trần An Dương', '1975-11-08', 'nam', '15.111', '3.99', 'Khoán lương', 2188, 1872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24788, 'Trần Thị Xuân', '1980-02-03', 'nu', '01.003', '3.00', 'Khoán lương', 2189, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24789, 'Phạm Thị Bảo Nhung', '1985-07-16', 'nu', '06.031', '2.34', 'Khoán lương', 2189, 1873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24791, 'Administrator', '1970-01-01', NULL, NULL, '0', NULL, 2190, 1870, 'admin', '$2y$13$uIHQyP/z8sI0kRZFsWi2sOujXsgx9Yh4Wmqy8a.VC2n.OpgyskqjC', NULL, 'sWqX3KpBTcIJLWlAZ1GAr8HNVqAeuvEz', '10', '1462432986', '1462432986', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donvi_id` int(11) NOT NULL,
  `thoigianhienthi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_slide_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Contenu de la table `slide`
--

INSERT INTO `slide` (`id`, `tieude`, `donvi_id`, `thoigianhienthi`) VALUES
(27, 'Slide B', 2138, '20000'),
(28, 'Slide C', 2143, '15000'),
(29, 'Slide CD', 2156, '10000'),
(30, 'dd', 2138, '20000'),
(31, 'abcd', 2138, '50000'),
(32, 'Kỷ niệm 130 năm ngày Quốc tế Lao động 1/5 và phát động tháng công nhân năm 2016', 2143, '5000');

-- --------------------------------------------------------

--
-- Structure de la table `sukien`
--

CREATE TABLE IF NOT EXISTS `sukien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thoigian` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diadiem_congviec` text CHARACTER SET utf8,
  `thoidiem` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ghichu` text COLLATE utf8_unicode_ci,
  `tuan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sukien_tuan1_idx` (`tuan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=124 ;

--
-- Contenu de la table `sukien`
--

INSERT INTO `sukien` (`id`, `thoigian`, `diadiem_congviec`, `thoidiem`, `ghichu`, `tuan_id`) VALUES
(61, '\r\nThứ Hai\r\n\r\n09\r\n/\r\n5\r\n\r\n', '<p>&nbsp;</p>\r\n\r\n<p><strong>Tại ph&ograve;ng họp Hội đồng: </strong></p>\r\n\r\n<p><span style="font-size:10pt">Tiếp Đo&agrave;n kiểm tra li&ecirc;n ng&agrave;nh v/v thực hiện QĐ số</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:10pt">157/2007/QĐ &ndash;TTg ng&agrave;y 27/9/2007.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong></p>\r\n\r\n<p><span style="font-size:10pt">Ph&ograve;ng CTSV, KH-TC. </span></p>\r\n', '08h00', '', 8),
(62, '\r\n\r\nThứ\r\n Ba\r\n\r\n10\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '', '', 8),
(63, '\r\nThứ Tư\r\n\r\n11\r\n/5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại Hội trường lớn A8:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;"> Hội thảo “Chia sẻ kinh nghiệm phỏng vấn tuyển dụng với các doanh</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">nghiệp Nhật Bản”</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Thành phần:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;"> ĐTN, CTSV; </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">đại diện Lãnh đạo các khoa/viện: khoa Kinh tế, khoa Quản trị - Tài chính, viện Đào tạo Quốc tế, khoa Điện – Điện tử, khoa Công nghệ thông tin, viện Môi trường; sinh viên K53 các đơn vị theo phân công trong kế hoạch số 414 /KH-ĐHHHVN-ĐTN</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">.</span></p>\r\n</td>\r\n</tr>\r\n', '18h00', '', 8),
(64, '\r\nThứ Năm\r\n\r\n12\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại Hội trường lớn A8:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">Hội thảo “Chia sẻ kinh nghiệm phỏng vấn tuyển dụng với các doanh</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> n</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">ghiệp Nhật Bản”</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Thành phần:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> ĐTN, CTSV; đại diện Lãnh đạo các khoa/viện: khoa Hàng hải, khoa Máy tàu biển, khoa Đóng tàu, viện Cơ khí, khoa Công trình, trường</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> CĐ Nghề VMU; sinh viên K53 các </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">đơn vị theo phân công trong kế hoạch số 414 /KH-ĐHHHVN-ĐTN</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">.</span></p>\r\n</td>\r\n</tr>\r\n', '18h00', '', 8),
(65, '\r\n\r\nTh\r\nứ\r\n \r\nSáu\r\n\r\n13\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '', '', 8),
(66, '\r\nThứ Bảy\r\n\r\n14\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">THI TUYỂN SINH</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;"> HỆ VLVH, LIÊN THÔNG CHÍNH QUY ĐỢT 1 NĂM 2016</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">phòng 303 – B4 Giảng đường B</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">: Các cán bộ coi thi có mặt nhận nhiệm vụ</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">phòng 303 – B4 Giảng đường B</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">: Các cán bộ coi thi có mặt nhận nhiệm vụ</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '0\r\n8\r\nh\r\n0\r\n0\r\n\r\n13h\r\n3\r\n0', '', 8),
(67, '\r\nThứ Bảy\r\n\r\n14\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p></p>\r\n<p><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại Bể bơi Nhà trường:</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;"> Khai mạc giải Bơi lội khối CB, GV, NLĐ trong toàn Trường.</span></p>\r\n<p></p>\r\n<p><span style="font-size: 10pt; color: #222222; font-weight: bold;">Kính mời:</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;"> ĐU, BGH, CĐ, ĐTN, VĐV tham gia thi đấu và các CB, GV, NLĐ quan tâm.</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '07h30', '', 8),
(68, '\r\nThứ Bảy\r\n\r\n14\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p></p>\r\n<p><span style="font-size: 10pt; color: #222222; font-weight: bold;">T</span></p>\r\n<p><span style="font-size: 10pt; color: #222222; font-weight: bold;">ại SVĐ:</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;"> Khai mạc giải Bóng đá Khối thi đua Công đoàn cơ sở tr</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;">ực thuộc Liên đoàn Lao động TP H</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;">ải Phòng năm 2016.</span></p>\r\n<p></p>\r\n<p><span style="font-size: 10pt; color: #222222; font-weight: bold;">Kính mời:</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;"> Các Đại biểu có Giấy mời riêng, CB, GV, NLĐ và SV quan tâm</span></p>\r\n<p><span style="font-size: 10pt; color: #222222;">.</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '07h30', '', 8),
(69, '\r\n\r\nChủ\r\n \r\nnhật\r\n\r\n15\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">THI TUYỂN SINH HỆ VLVH, LIÊN THÔNG CHÍNH QUY ĐỢT 1 NĂM 2016</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại phòng 303 – B4 Giảng đường B</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">: Các cán bộ coi thi có mặt nhận nhiệm vụ</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại phòng 303 – B4 Giảng đường B</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">: Các cán bộ coi thi có mặt nhận nhiệm vụ</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '07h00\r\n13h30', '', 8),
(70, '\r\n\r\nChủ\r\n \r\nnhật\r\n\r\n15\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại phòng họp số 3: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Khai giảng lớp Bồi dưỡng C</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">án bộ quản lý nâng cao.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Kính mời: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Các cán bộ có tên trong </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">DS</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;"> theo QĐ số 855/QĐ-ĐHHHVN-TCCB ngày 06/5/2016.</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '07h30', '', 8),
(71, '\r\n\r\nChủ\r\n \r\nnhật\r\n\r\n15\r\n/\r\n5\r\n\r\n', '', '16h00', '', 8),
(111, '\r\nThứ Hai\r\n\r\n16\r\n/\r\n5\r\n\r\n', '\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">Tại phòng khách BGH: </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Họp giao ban Ban Giám hiệu.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">Chủ trì: </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Hiệu trưởng.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">Kính mời: </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các đồng chí Phó Hiệu trưởng.</span></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '08h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(112, '\r\nThứ Hai\r\n\r\n16\r\n/\r\n5\r\n\r\n', '\r\n<p></p>\r\n<p><span style="font-size: 10pt; font-weight: bold;">Tại phòng Hiệu trưởng: </span></p>\r\n<p><span style="font-size: 10pt;">Hiệu trưởng tiếp dân</span></p>\r\n<p><span style="font-size: 10pt;">.</span></p>\r\n</td>\r\n</tr>\r\n', '14h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(113, '\r\n\r\nThứ\r\n Ba\r\n\r\n17\r\n/\r\n5\r\n\r\n', '\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại phòng họp GB:</span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> Rà soát việc mua sắm cơ sở vật chất cho các đơn vị năm 2016.</span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Chủ trì:</span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> PHT. Lê Quốc Tiến.</span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Thành phần:</span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> Đại diện các phòng: QT-TB, KH-TC, HCTH. </span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-style: italic;">(Phòng QT-TB chuẩn bị b/c).</span></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n</td>\r\n</tr>\r\n', '08h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(114, '\r\nThứ Tư\r\n18/5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại Khoa Hàng hải: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Hội đồng nhà trường nghiệm thu báo cáo tự đánh giá lần 4 và tất cả các hồ sơ minh chứng.</span></p>\r\n</td>\r\n</tr>\r\n', '08h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(115, '\r\nThứ Tư\r\n18/5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại Khoa Máy tàu biển: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Hội đồng nhà trường nghiệm thu báo cáo tự đánh giá lần 4 và tất cả các hồ sơ minh chứng.</span></p>\r\n</td>\r\n</tr>\r\n', '10h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(116, '\r\nThứ Tư\r\n18/5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại Viện Đào tạo quốc tế: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Hội đồng nhà trường nghiệm thu báo cáo tự đánh giá lần 4 và tất cả các hồ sơ minh chứng.</span></p>\r\n</td>\r\n</tr>\r\n', '14h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(117, '\r\nThứ Tư\r\n18/5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại phòng đọc điện tử 207 – Thư viện: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Giới thiệu Cơ sở dữ liệu sách điện tử Ebrary academic.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Kính mời: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">Viện NCPT, thầy cô và các em sinh viên quan tâm.</span></p>\r\n</td>\r\n</tr>\r\n', '15h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(118, '\r\nThứ Năm\r\n\r\n19\r\n/\r\n5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại p</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">hòng HT số 1:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> Hội thảo mở ngành Tài chính – Ngân hàng</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Chủ trì: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">PHT</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> Phạm Xuân Dương</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Kính mời:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> ĐU, BGH, </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">Chủ tịch Trường</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">;</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">đại diện các phòng: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">ĐT, TCCB, KH-TC, HCTH, CTSV; </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">lãnh đạo, </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">CBGV</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">khoa QT-</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">T</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">C</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">;</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> các GV bộ môn TC-KT và các CB, GV quan tâm</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-style: italic;">(Khoa QT-TC chuẩn bị báo cáo).</span></p>\r\n</td>\r\n</tr>\r\n', '08h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14);
INSERT INTO `sukien` (`id`, `thoigian`, `diadiem_congviec`, `thoidiem`, `ghichu`, `tuan_id`) VALUES
(119, '\r\nThứ Năm\r\n\r\n19\r\n/\r\n5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Tại p</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">hòng HT số 1:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> Sơ kết chương trình  “Kết n</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">ối doanh nghiệp - Nhà quản lý - </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">Đơn vị đào tạo”</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Chủ trì:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;">Hiệu trưởng.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Kính mời:</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> ĐU,</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> BGH, Chủ tịch Trường, CĐ, ĐTN;</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt;"> lãnh đạo các tiểu ban, các phòng: Đào tạo, TCCB, KH-TC, CTSV, HCTH, KT&ĐBCL, KHCN. </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-style: italic;">(</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-style: italic;">Phòng Đào tạo, các Tiểu ban 1, 3, 4, 5 chuẩn bị báo cáo</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-style: italic;">)</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-style: italic;">.</span></p>\r\n</td>\r\n</tr>\r\n', '14h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(120, '\r\n\r\nTh\r\nứ\r\n \r\nSáu\r\n20/5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại phòng họp giao ban: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Kiểm tra Chi bộ </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Đào tạo quốc tế</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;"> về việc thực hiện Chương trình hành động thực hiện Nghị quyết 29-NQ/TW và Nghị quyết 34-NQ/BCSĐ</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">, Chỉ thị 03/CT-TW của Bộ chính trị.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">Chủ trì:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">  Bí thư Đảng ủy.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Thành phần: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Thường trực Đảng ủy, VPĐU; UBKT Đảng ủy; Trưởng các phòng: Thanh tra, KT&ĐBCL; toàn bộ Đảng viên </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Chi bộ Đào tạo quốc tế</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">. </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">(</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">Chi bộ </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">Đào tạo quốc tế</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">chuẩn bị b/c).</span></p>\r\n</td>\r\n</tr>\r\n', '08h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(121, '\r\n\r\nTh\r\nứ\r\n \r\nSáu\r\n20/5\r\n\r\n', '\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222; font-weight: bold;">Tại phòng họp giao ban: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;"> </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Kiểm tra Chi bộ </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Khoa Lý luận chính trị</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;"> về việc thực hiện Chương trình hành động thực hiện Nghị quyết 29-NQ/TW và Nghị quyết 34-NQ/BCSĐ</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #222222;">, Chỉ thị 03/CT-TW của Bộ chính trị.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">Chủ trì:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">  Bí thư Đảng ủy.</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; font-weight: bold;">Thành phần: </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Thường trực Đảng ủy, VPĐU; UBKT Đảng ủy; Trưởng các phòng: Thanh tra, KT&ĐBCL; toàn bộ Đảng viên </span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">Chi bộ Khoa Lý luận chính trị</span></p>\r\n<p style="text-align: both; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 10pt; color: #000000;">. </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">(</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">Chi bộ </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">Khoa Lý luận chính t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">rị </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #000000; font-style: italic;">chuẩn bị b/c).</span></p>\r\n</td>\r\n</tr>\r\n', '14h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(122, '\r\nThứ Bảy\r\n\r\n21\r\n/\r\n5\r\n\r\n', '\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n', '', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14),
(123, '\r\n\r\nChủ\r\n \r\nnhật\r\n\r\n22\r\n/\r\n5\r\n\r\n', '', '07h00 – 19h00', 'Ghi chú:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">Các đơn vị lập danh sách các cháu </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">đạt</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> danh hiệu: Học sinh giỏi, xuất sắc và đạt</span></p>\r\n<p style="text-align: both;"><span style="font-family: ''Arial''; font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">các giải cao trong kỳ thi học sinh giỏi Quận, Thành phố, Quốc gia và Quốc tế cấp 1, 2, 3 năm học 2015 – 2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">gửi về </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Văn phòng Đoàn trường</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (P.</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">202 A9</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">)</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">t</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">ừ 1</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">6</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">/5/2016 đến hết 17h00 ngày 20/5/2016</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;"> (</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-style: italic;">gửi kèm 01 bản photo Giấy khen</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">);</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">- </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Gửi trước </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">bản mềm </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">danh sách đăng ký đến địa chỉ</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt;">Email:</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold; font-style: italic;"> </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; font-weight: bold;">tramytn@vimaru.edu.vn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> để </span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;">VP Đoàn</span></p>\r\n<p style="text-align: both;"><span style="font-size: 10pt; color: #222222;"> lập danh sách chuẩn bị quà Tết 1/6.</span></p>\r\n<p style="text-align: both;"></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">         </span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">HI</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">ỆU TRƯỞNG</span></p>\r\n<p style="text-align: both;"><span style="font-weight: bold;">                 (đã ký)</span></p>\r\n</body>\r\n</html>\r\n', 14);

-- --------------------------------------------------------

--
-- Structure de la table `thongbao`
--

CREATE TABLE IF NOT EXISTS `thongbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `donvi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_thongbao_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `thongbao`
--

INSERT INTO `thongbao` (`id`, `noidung`, `donvi_id`) VALUES
(4, 'Danh sách chính thức cảnh báo học tập kì I năm học 2015 - 2016', 2138),
(5, 'Quy định danh mục chứng chỉ tiếng Anh quốc tế công nhận chuẩn đầu ra', 2138),
(6, 'Danh sách sinh viên đăng ký vi phạm điều kiện tiên quyết', 2143),
(7, 'THÔNG BÁO V/v đăng ký học phần cho học kỳ I.A - Năm học 2015 - 2016', 2143),
(8, 'Lịch thi học kỳ 2 năm học 2015-2016', 2143),
(9, 'Thông báo về việc lập danh sách cán bộ coi thi kỳ thi THPT QG năm 2016 ', 2190),
(10, 'Kết quả xét cảnh báo học tập học kỳ I - Năm học 2015-2016 ', 2143),
(11, 'Danh sách sinh viên xin rút học phần (Học kỳ II - Năm học 2013 - 2014)', 2143),
(12, 'KẾT QUẢ THI OLYMPIC CẤP TRƯỜNG VÀ THÀNH LẬP ĐỘI TUYỂN CẤP QUỐC GIA NĂM 2014', 2190);

-- --------------------------------------------------------

--
-- Structure de la table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` text COLLATE utf8_unicode_ci,
  `thoigian` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tieude` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donvi_id` int(11) NOT NULL,
  `thoigianhienthi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tintuc_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `tintuc`
--

INSERT INTO `tintuc` (`id`, `noidung`, `thoigian`, `tieude`, `donvi_id`, `thoigianhienthi`) VALUES
(6, '<p>Tin tức A</p>\r\n', '1462633456', 'Tin tức A', 2138, '8000'),
(7, '<p><span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">K&iacute;nh gửi:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- C&aacute;c Khoa/Viện.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Sinh vi&ecirc;n hệ ĐH v&agrave; CĐ ch&iacute;nh quy to&agrave;n Trường.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">Nh&agrave; trường th&ocirc;ng b&aacute;o kế hoạch đăng k&yacute; học phần cho học kỳ I.A - Năm học 2016 - 2017 như sau:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">1. Đối tượng đăng k&yacute;:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Sinh vi&ecirc;n đăng k&yacute; đi thực tập theo tiến độ, đăng k&yacute; học lại, học cải thiện điểm, học vượt.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Sinh vi&ecirc;n đăng k&yacute; học c&aacute;c học phần: GDQP - AN v&agrave; c&aacute;c trường hợp đặc biệt kh&aacute;c theo kế hoạch của Ph&ograve;ng Đ&agrave;o tạo (sinh vi&ecirc;n cuối kh&oacute;a, học hai chương tr&igrave;nh...).</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">2. Quy tr&igrave;nh đăng k&yacute;:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Đăng k&yacute; học phần: SV đăng k&yacute; học phần tr&ecirc;n website đăng k&yacute; trực tuyến&nbsp;</span><a href="http://dktt.vimaru.edu.vn/" style="color: rgb(68, 68, 68); text-decoration: none; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: small; line-height: 20px;">http://dktt.vimaru.edu.vn</a><span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">&nbsp;(Nh&agrave; trường kh&ocirc;ng nhận đơn xin đăng k&yacute; học phần bổ sung trong học kỳ phụ). Cụ thể như sau:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Sinh vi&ecirc;n kh&oacute;a 53 trở về trước: từ 18h00 ng&agrave;y 15/05/2016 đến hết ng&agrave;y 30/05/2016.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Sinh vi&ecirc;n kh&oacute;a 54-56: từ 18h00 ng&agrave;y 16/05/2016 đến hết ng&agrave;y 30/05/2016.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- R&uacute;t học phần: Từ 01/08/2016 đến 12/08/2016, SV nộp Đơn xin r&uacute;t học phần về Ph&ograve;ng Đ&agrave;o tạo (Ph&ograve;ng 114B - Nh&agrave; A1) để xin r&uacute;t học phần nhưng kh&ocirc;ng được r&uacute;t học ph&iacute;.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">3. Nộp học ph&iacute;:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Thời gian đ&oacute;ng học ph&iacute;: từ 01/06/2016 đến 17/06/2016.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- SV nộp to&agrave;n bộ học ph&iacute; tại Ph&ograve;ng Kế hoạch - T&agrave;i ch&iacute;nh (Ph&ograve;ng 109 &ndash; Nh&agrave; A1) theo lịch cụ thể của c&aacute;c Khoa/Viện như sau:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Kinh tế + Quản trị t&agrave;i ch&iacute;nh: 01/06/2016-03/06/2016</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ H&agrave;ng hải + M&aacute;y t&agrave;u biển: 06/06/2016-08/06/2016</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ C&ocirc;ng tr&igrave;nh: 09/06/2016-10/06/2016</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Điện ĐT + CNTT: 13/06/2016-14/06/2016</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Cơ kh&iacute; + Đ&oacute;ng t&agrave;u: 15/06/2016-16/06/2016</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ M&ocirc;i trường + Ngoại ngữ: 17/06/2016</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Chuyển khoản qua ng&acirc;n h&agrave;ng HD Bank hoặc nộp v&agrave;o t&agrave;i khoản của Trường (Số TK: 3712 cấp I tại Kho bạc nh&agrave; nước TP Hải Ph&ograve;ng).</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- C&aacute;c Khoa/Viện đ&ocirc;n đốc nhắc nhở SV đ&oacute;ng học ph&iacute; đ&uacute;ng theo lịch của từng khoa tr&aacute;nh việc &ugrave;n tắc v&agrave;o c&aacute;c ng&agrave;y cuối c&ugrave;ng của đợt thu học ph&iacute;.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Sau ng&agrave;y 17/06/2016, những SV kh&ocirc;ng nộp học ph&iacute; sẽ bị nhận điểm F tất cả c&aacute;c học phần đ&atilde; đăng k&yacute; v&agrave; học ph&iacute; nợ được chuyển sang kỳ kế tiếp.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">4. Ghi ch&uacute;:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Ph&acirc;n bố thời gian của học kỳ I.A:</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Thời gian học: 06 tuần, từ 01/08/2016 đến 11/09/2016.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">+ Thi học kỳ: 01 tuần, từ 12/09/2016 đến 18/09/2016.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">(C&aacute;c học phần thực tập học v&agrave; thi đ&uacute;ng theo thời gian trong quyết định thực tập).</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Sinh vi&ecirc;n đăng k&yacute; đi thực tập chỉ n&ecirc;n đăng k&yacute; học một số &iacute;t học phần để c&acirc;n đối giữa thời gian thực tập v&agrave; thời gian học tr&ecirc;n lớp (SV tham khảo &yacute; kiến của cố vấn học tập khi đăng k&yacute;).</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Nh&agrave; trường mở tất cả c&aacute;c học phần để SV đăng k&yacute; nhưng chỉ tổ chức giảng dạy cho c&aacute;c lớp học phần c&oacute; 10 sinh vi&ecirc;n đăng k&yacute; trở l&ecirc;n (ngoại trừ c&aacute;c học phần gi&aacute;o dục quốc ph&ograve;ng v&agrave; c&aacute;c học phần của kh&oacute;a 53 trở về trước kh&ocirc;ng c&oacute; học phần thay thế, Nh&agrave; trường sẽ xem x&eacute;t từng trường hợp cụ thể).</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Đầu học kỳ, Gi&aacute;o vụ in Bảng theo d&otilde;i kết quả học tập ch&iacute;nh thức (kh&ocirc;ng c&oacute; t&ecirc;n SV c&ograve;n nợ học ph&iacute;) gửi c&aacute;c Giảng vi&ecirc;n tham gia giảng dạy.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">- Điểm thi của học kỳ I.A v&agrave; I.B được gộp v&agrave;o để x&eacute;t học tiếp, buộc th&ocirc;i học, x&eacute;t học bổng khuyến kh&iacute;ch học tập của HK I - Năm học 2016-2017.</span><br />\r\n<span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:small">Đề nghị c&aacute;c đơn vị v&agrave; c&aacute; nh&acirc;n c&oacute; li&ecirc;n quan nghi&ecirc;m t&uacute;c thực hiện.</span></p>\r\n', '1463391886', 'THÔNG BÁO Về việc đăng ký học phần cho học kỳ I.A - Năm học 2016 - 2017', 2143, '10000');

-- --------------------------------------------------------

--
-- Structure de la table `trinhdo`
--

CREATE TABLE IF NOT EXISTS `trinhdo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tentrinhdo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1879 ;

--
-- Contenu de la table `trinhdo`
--

INSERT INTO `trinhdo` (`id`, `tentrinhdo`) VALUES
(1870, 'TS'),
(1871, 'TSKH'),
(1872, 'Th.S'),
(1873, 'ĐH'),
(1874, 'ThS'),
(1875, 'SC'),
(1876, 'Khác'),
(1877, 'TC'),
(1878, 'CĐ');

-- --------------------------------------------------------

--
-- Structure de la table `tuan`
--

CREATE TABLE IF NOT EXISTS `tuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tuannam` varchar(45) DEFAULT NULL,
  `tuannamhoc` varchar(45) DEFAULT NULL,
  `tungay` varchar(45) DEFAULT NULL,
  `denngay` varchar(45) DEFAULT NULL,
  `thoigianhienthi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `tuan`
--

INSERT INTO `tuan` (`id`, `tuannam`, `tuannamhoc`, `tungay`, `denngay`, `thoigianhienthi`) VALUES
(8, 'TUẦN  19 THEO NĂM 2016\r\n', 'TUẦN 41 THEO NĂM HỌC 2015-2016\r\n', '09/5/2016', '15/5/2016', NULL),
(14, 'TUẦN  20 THEO NĂM 2016\r\n', 'TUẦN 42 THEO NĂM HỌC 2015-2016\r\n', '16/5/2016', '22/5/2016', '55000');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duongdan` varchar(200) DEFAULT NULL,
  `donvi_id` int(11) NOT NULL,
  `thoigianhienthi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_video_donvi1_idx` (`donvi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `video`
--

INSERT INTO `video` (`id`, `duongdan`, `donvi_id`, `thoigianhienthi`) VALUES
(9, 'http://www.youtube.com/embed/23Ws1w8in-0', 2138, '682000'),
(11, 'http://www.youtube.com/embed/6WbNa5T6Q2Q', 2143, '606000'),
(17, 'http://www.youtube.com/embed/E6XIt0h0aLM', 2138, '243000'),
(18, 'http://www.youtube.com/embed/FgGbyZJd5-w', 2138, '10000');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `countdown`
--
ALTER TABLE `countdown`
  ADD CONSTRAINT `fk_countdown_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `fk_hinhanh_slide` FOREIGN KEY (`slide_id`) REFERENCES `slide` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `khauhieu`
--
ALTER TABLE `khauhieu`
  ADD CONSTRAINT `fk_khauhieu_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `khoanh`
--
ALTER TABLE `khoanh`
  ADD CONSTRAINT `fk_khoanh_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_chucdanh1` FOREIGN KEY (`trinhdo_id`) REFERENCES `trinhdo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nhanvien_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `slide`
--
ALTER TABLE `slide`
  ADD CONSTRAINT `fk_slide_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `sukien`
--
ALTER TABLE `sukien`
  ADD CONSTRAINT `fk_sukien_tuan1` FOREIGN KEY (`tuan_id`) REFERENCES `tuan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `fk_thongbao_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `fk_tintuc_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk_video_donvi1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
