-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 12:31 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `didongxanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `role_Id` int(11) NOT NULL,
  `menu_Id` int(11) NOT NULL,
  `Permission` int(1) NOT NULL DEFAULT 1,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `role_Id`, `menu_Id`, `Permission`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 1, 1, 1, '2020-07-20 22:37:49', '2020-07-20 22:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'Apple', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(2, 'Samsung', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(3, 'Xiaomi', 1, '2020-07-11 17:18:12', '2020-07-11 17:18:12'),
(4, 'Mophie', 1, '2020-07-11 17:22:04', '2020-07-11 17:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `code`, `description`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'Phone', 'PHONE', '', 1, '2020-06-08 12:00:00', '2020-06-08 12:00:00'),
(3, 'accessory', 'ACCESSORY', '', 1, '2020-07-11 12:00:00', '2020-07-11 17:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'Vàng', 1, '2020-06-30 12:00:00', '2020-06-30 12:00:00'),
(2, 'Đỏ', 1, '2020-06-30 12:00:00', '2020-06-30 12:00:00'),
(3, 'Đen', 1, '2020-06-30 12:00:00', '2020-06-30 12:00:00'),
(4, 'Bạc', 1, '2020-07-09 12:00:00', '2020-07-09 12:00:00'),
(5, 'Xanh lá', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(6, 'Xám', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(7, 'Gold', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(8, 'Hồng', 1, '2020-07-11 17:45:50', '2020-07-11 17:45:50'),
(9, 'Trắng', 1, '2020-07-11 17:46:00', '2020-07-11 17:46:00'),
(10, 'xanh', 1, '2020-07-18 18:13:45', '2020-07-18 18:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `startDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `endDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `import_pro`
--

CREATE TABLE `import_pro` (
  `id` int(11) NOT NULL,
  `idSupplier` int(11) NOT NULL,
  `idStore` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `import_product_detail`
--

CREATE TABLE `import_product_detail` (
  `id` int(11) NOT NULL,
  `id_Product` int(11) NOT NULL,
  `id_Import_Product` int(11) NOT NULL,
  `idColor` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `cate_id`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 'IPhone', 1, '2020-07-11 12:00:00', '2020-07-11 17:12:57'),
(2, 1, 'Samsung', 1, '2020-07-11 17:13:11', '2020-07-11 17:13:11'),
(3, 1, 'Xiaomi', 1, '2020-07-11 17:13:23', '2020-07-11 17:13:23'),
(4, 3, 'Cáp sạc', 1, '2020-07-11 12:00:00', '2020-07-11 12:00:00'),
(5, 3, 'Pin dự phòng', 1, '2020-07-11 17:15:08', '2020-07-11 17:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_Id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_Index` int(1) NOT NULL DEFAULT 0,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `parent_Id`, `url`, `name`, `order_Index`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 0, '/admin/dashboard', 'Admin dashboard', -1, 1, '2020-07-20 22:37:05', '2020-07-20 22:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `id_category`, `id_brand`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 1, 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `payment form` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quanlity` int(3) NOT NULL,
  `price` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `img_Main` varchar(200) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL,
  `img_3` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `item_id`, `brand_id`, `name`, `code`, `description`, `img_Main`, `img_1`, `img_2`, `img_3`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 5, 2, 'Pin dự phòng Samsung EB-P1100 10.000 Mah cổng USB-C', '', NULL, '', '', '', '', 1, '2020-07-11 17:17:33', '2020-07-11 17:17:33'),
(11, 5, 3, 'Pin sạc dự phòng Xiaomi Redmi 20000mah sạc nhanh 18W', '', 'Pin dự phòng Xiaomi Redmi 20000mAh – Phụ kiện pin sạc an toàn, hiệu suất cao Xiaomi là thương hiệu vốn nổi tiếng với nhiều người tiêu dùng không chỉ bởi những chiếc điện thoại chất lượng, cấu hình cao giá rẻ mà còn những phụ kiện pin dự phòng cũng được nhiều người tin dùng. Dung lượng 20000mAh, cùng với khả năng sạc nhanh 18W thì pin sạc dự phòng Xiaomi Redmi 20000mAh sạc nhanh 18W là một lựa chọn hợp lý và hấp dẫn.', '', '', '', '', 1, '2020-07-11 17:18:51', '2020-07-11 17:18:51'),
(12, 4, 4, 'Sạc Mophie Power Delivery 18W 1USB-C', '', NULL, '', '', '', '', 1, '2020-07-11 17:22:41', '2020-07-11 17:22:41'),
(13, 1, 2, 'Iphone 11 Pro Max', 'IP11PROMAX', 'iPhone 11 Pro Max – Bộ ba camera sau chụp ảnh đỉnh cao.Ra mắt cùng với iPhone 11 và 11 Pro là iPhone 11 Pro Max, đây mẫu smartphone cao cấp nhất của iPhone 11 Series được ra mắt năm 2019. Với thiết kế cao cấp, hệ thống camera 3 camera cùng cấu hình siêu mạnh mẽ thì đây chính là một chiếc smartphone đáp ứng mọi trải nghiệm của người dùng.', '/upload_cdweb/ip11Pro-xam.jpg', '', '', '', 1, '2020-07-11 18:03:38', '2020-07-11 18:03:38'),
(14, 3, 3, 'Xiaomi Redmi Note 9 Pro', '', 'Điện thoại Xiaomi Redmi Note 9 Pro – Smartphone màn hình rộng, viên pin lớn\r\nCùng với Xiaomi Redmi Note 9s, Xiaomi Redmi Note 9 Pro sẽ là sự lựa chọn hoàn hảo dành cho những ai đang mong muốn sở hữu một chiếc điện thoại tầm trung có dung lượng pin cao cùng thiết kế sang trọng và khả năng chụp ảnh tốt. Ngày nay, việc sở hữu một chiếc smartphone là điều thiết yếu với mỗi người, giúp người dùng có thể giải quyết cả những công việc mà trước đây chỉ có thể thực hiện trên laptop, mở ra một trai nghiệm thú vị, hiện đại và tiện lợi hơn rất nhiều. \r\n\r\nRedmi Note 9 Pro có thiết kế mặt lưng kính cong 3D và màn hình Full HD+ lên đến 16 triệu điểm ảnh\r\nĐiện thoại Xiaomi này sở hữu thiết kế nguyên khối với mặt lưng kính cong 3D mang đến cho Redmi Note 9 Pro một ngoại hình sang trọng và bắt mắt với các đường nét mềm mại và tinh tế chứ không mang đến cảm giác thô cứng khi cầm nắm.', '/upload_cdweb/xiaomi_note9Pro_trang.jpg', '', '', '', 1, '2020-07-18 17:52:29', '2020-07-18 17:52:29'),
(15, 2, 2, 'Samsung Galaxy A51', '', 'Samsung A51 – Chụp ảnh đỉnh cao, trải nghiệm tuyệt vời\r\nSamsung A51 là một chiếc smartphone tầm trung nhưng lại sở hữu nhiều tính năng hấp dẫn, đặc biệt là hệ thống camera đỉnh cao chụp ảnh chuyên nghiệp và hiệu năng ấn tượng cùng với màn hình Super AMOLED. Thành viên mới này của gia đình Samsung Galaxy A hứa hẹn sẽ mang đến những trải nghiệm tuyệt vời cho người dùng với mức giá hấp dẫn. Bên cạnh đó, bạn cũng có thể tham khảo Samsung A71 với hệ thống camera chất lượng hơn và cấu hình mạnh mẽ hơn.\r\n\r\nSau Galaxy A51 và A71, nhiều khả năng Samsung Galaxy A01 sẽ là sản phẩm tiếp theo thuộc dòng Galaxy A 2020 được Samsung trình làng trong thời gian sắp tới.\r\n\r\nSamsung A51 sử dụng chất liệu nhựa cứng cáp và màu sắc thời thượng\r\nKhác với những smartphone sử dụng chất liệu kim loại thì Galaxy A51 lại có chất liệu là nhựa. Với chất liệu này A51 sẽ có mức giá rẻ hơn nhưng vẫn vô cùng cứng cáp, bền bỉ. Thiết kế nguyên khối với bốn góc được bo tròn và mặt lưng hơi vát cong hai cạnh bên tạo cảm giác cầm nắm chắc chắn, thoải mái.', '/upload_cdweb/galaxy-a51-trang.jpg', '', '', '', 1, '2020-07-18 18:13:19', '2020-07-18 18:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`id`, `product_id`, `spec_id`, `color_id`, `price`, `img_url`, `activeFlag`, `createDate`, `updateDate`) VALUES
(27, 12, 7, 3, '590000', '/upload_cdweb/cusac_mophie_black.png', 1, '2020-07-11 17:29:12', '2020-07-11 17:29:12'),
(28, 12, 7, 4, '600000', '/upload_cdweb/cusac_mophie_bac.jpg', 1, '2020-07-11 17:33:22', '2020-07-11 17:33:22'),
(29, 1, 8, 4, '320000', '/upload_cdweb/pinduphong_samsung_eb1100.jpg', 1, '2020-07-11 17:43:28', '2020-07-11 17:43:28'),
(30, 1, 8, 8, '320000', '/upload_cdweb/pinduphong_samsung_eb1100_hong.jpg', 1, '2020-07-11 17:47:48', '2020-07-11 17:47:48'),
(31, 11, 9, 9, '430000', '/upload_cdweb/pinduphong_xiaomi_trang.PNG', 1, '2020-07-11 17:55:30', '2020-07-11 17:55:30'),
(32, 13, 10, 4, '27300000', '/upload_cdweb/ip11Pro-bac.png', 1, '2020-07-11 18:19:09', '2020-07-11 18:19:09'),
(33, 13, 10, 6, '27300000', '/upload_cdweb/ip11Pro-xam.jpg', 1, '2020-07-11 18:21:36', '2020-07-11 18:21:36'),
(34, 13, 11, 7, '32390000', '/upload_cdweb/ip11Pro-gold.png', 1, '2020-07-11 18:22:46', '2020-07-11 18:22:46'),
(35, 14, 12, 9, '5900000', '/upload_cdweb/xiaomi_note9Pro_trang.jpg', 1, '2020-07-18 17:55:09', '2020-07-18 17:55:09'),
(36, 14, 12, 5, '5900000', '/upload_cdweb/xiaomi_note9Pro_xanhla.jpg', 1, '2020-07-18 18:00:04', '2020-07-18 18:00:04'),
(37, 14, 12, 6, '5900000', '/upload_cdweb/xiaomi_note9Pro_xam.jpg', 1, '2020-07-18 18:00:04', '2020-07-18 18:00:04'),
(38, 14, 15, 5, '6350000', '/upload_cdweb/xiaomi_note9Pro_xanhla.jpg', 1, '2020-07-18 18:03:27', '2020-07-18 18:03:27'),
(39, 14, 15, 9, '6350000', '/upload_cdweb/xiaomi_note9Pro_trang.jpg', 1, '2020-07-18 18:03:27', '2020-07-18 18:03:27'),
(40, 14, 15, 6, '6350000', '/upload_cdweb/xiaomi_note9Pro_xam.jpg', 1, '2020-07-18 18:04:01', '2020-07-18 18:04:01'),
(41, 15, 14, 10, '6650000', '/upload_cdweb/galaxy-a51-xanh.jpg', 1, '2020-07-18 18:16:09', '2020-07-18 18:16:09'),
(42, 15, 14, 9, '6600000', '/upload_cdweb/galaxy-a51-trang.jpg', 1, '2020-07-18 18:16:09', '2020-07-18 18:16:09'),
(43, 15, 14, 8, '6600000', '/upload_cdweb/galaxy-a51-hong.jpg', 1, '2020-07-18 18:17:07', '2020-07-18 18:17:07'),
(44, 15, 14, 3, '6600000', '/upload_cdweb/galaxy-a51-den.jpg', 1, '2020-07-18 18:17:07', '2020-07-18 18:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `roleName`, `description`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'ROLE_ADMIN', 'Admin', 1, '2020-07-20 22:06:30', '2020-07-20 22:06:30'),
(2, 'ROLE_CLIENT', 'Client', 1, '2020-07-20 22:06:45', '2020-07-20 22:06:45'),
(3, 'ROLE_MANAGERSTORAGE', 'Manager storage', 1, '2020-07-20 22:07:28', '2020-07-20 22:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `roleuser`
--

CREATE TABLE `roleuser` (
  `id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `role_Id` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roleuser`
--

INSERT INTO `roleuser` (`id`, `user_Id`, `role_Id`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 1, 1, '2020-07-20 22:07:52', '2020-07-20 22:07:52'),
(2, 2, 2, 1, '2020-07-20 22:07:59', '2020-07-20 22:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specs`
--

INSERT INTO `specs` (`id`, `activeFlag`, `createDate`, `updateDate`) VALUES
(5, 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(6, 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(7, 1, '2020-07-11 17:23:23', '2020-07-11 17:23:23'),
(8, 1, '2020-07-11 17:38:50', '2020-07-11 17:38:50'),
(9, 1, '2020-07-11 17:50:37', '2020-07-11 17:50:37'),
(10, 1, '2020-07-11 18:03:50', '2020-07-11 18:03:50'),
(11, 1, '2020-07-11 23:58:40', '2020-07-11 23:58:40'),
(12, 1, '2020-07-18 17:53:09', '2020-07-18 17:53:09'),
(13, 1, '2020-07-18 17:53:19', '2020-07-18 17:53:19'),
(14, 1, '2020-07-18 18:14:04', '2020-07-18 18:14:04'),
(15, 1, '2020-07-18 19:30:10', '2020-07-18 19:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `specs_detail`
--

CREATE TABLE `specs_detail` (
  `id` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specs_detail`
--

INSERT INTO `specs_detail` (`id`, `spec_id`, `name`, `value`, `activeFlag`, `createDate`, `updateDate`) VALUES
(16, 5, '\r\nHãng sản xuất', 'Apple', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(17, 5, 'Kích thước', '144.0mm - 71.4mm - 8.1mmv', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(18, 5, 'Trọng lượng', '188 g', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(19, 5, 'Bộ nhớ đệm/Ram', '4 GB', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(20, 5, 'Bộ nhớ trong', '64', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(21, 6, 'Hãng sản xuất', 'Apple', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(22, 6, 'Kích thước', '144.0mm - 71.4mm - 8.1mm', 1, '2020-07-09 12:00:00', '2020-07-09 12:00:00'),
(23, 6, 'Trọng lượng', '188 g', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(24, 6, 'Bộ nhớ đệm/Ram', '4 GB', 1, '2020-07-10 12:00:00', '2020-07-10 12:00:00'),
(25, 6, 'Bộ nhớ trong', '128', 1, '2020-07-09 12:00:00', '2020-07-09 12:00:00'),
(26, 7, 'Hãng sản xuất', 'Mophie', 1, '2020-07-11 17:24:34', '2020-07-11 17:24:34'),
(27, 7, 'Dòng điện vào', '100-240V/ (50-60Hz)', 1, '2020-07-11 17:24:34', '2020-07-11 17:24:34'),
(28, 7, 'Dòng điện ra', '5V-3A, 9V-2A, 12V-1.5A (Max)v', 1, '2020-07-11 17:25:26', '2020-07-11 17:25:26'),
(29, 7, 'Cổng sạc ra', 'USB-C', 1, '2020-07-11 17:25:26', '2020-07-11 17:25:26'),
(30, 8, 'Hãng sản xuất', 'Samsung', 1, '2020-07-11 17:39:58', '2020-07-11 17:39:58'),
(31, 8, 'Cổng sạc ra	', '5V-2A (sạc thường)- 9V-1.67A (sạc nhanh)', 1, '2020-07-11 17:39:58', '2020-07-11 17:39:58'),
(32, 8, 'Kích thước', '5V-2A (sạc thường) - 9V-1.67A (sạc nhanh)', 1, '2020-07-11 17:41:10', '2020-07-11 17:41:10'),
(33, 8, 'Sạc nhanh', 'Yes', 1, '2020-07-11 12:00:00', '2020-07-11 17:41:10'),
(34, 8, 'Pin\r\n', '10000 mAh', 1, '2020-07-11 17:41:34', '2020-07-11 17:41:34'),
(35, 9, 'Hãng sản xuất', 'Xiaomi', 1, '2020-07-11 12:00:00', '2020-07-11 12:00:00'),
(36, 9, 'Dòng điện vào', '(Micro-USB & Type-C): 5V/2.1A, 9V/2.1A, 12V/1.5A', 1, '2020-07-11 17:52:05', '2020-07-11 17:52:05'),
(37, 9, 'Dòng điện ra', 'Khi sạc 1 cổng:5.1V/2.4A, 9V/2A, 12V/1.5A Max', 1, '2020-07-11 17:52:05', '2020-07-11 17:52:05'),
(38, 9, 'Pin', '20000Mah', 1, '2020-07-11 17:52:29', '2020-07-11 17:52:29'),
(39, 9, 'Tính năng khác', 'Tích hợp bảo vệ mạch thông minh Chế độ sạc nhỏ giọt\r\n', 1, '2020-07-11 17:53:01', '2020-07-11 17:53:01'),
(40, 10, 'Hãng sản xuất', 'Apple', 1, '2020-07-11 18:04:53', '2020-07-11 18:04:53'),
(41, 10, 'Kích thước', '158.0mm - 77.8mm - 8.1mm', 1, '2020-07-11 18:04:53', '2020-07-11 18:04:53'),
(44, 10, 'Trọng lượng', '226g', 1, '2020-07-11 18:05:55', '2020-07-11 18:05:55'),
(45, 10, 'Bộ nhớ đệm / Ram', '4 GB', 1, '2020-07-11 18:05:55', '2020-07-11 18:05:55'),
(46, 10, 'Bộ nhớ trong', '64', 1, '2020-07-11 18:06:41', '2020-07-11 18:06:41'),
(47, 10, 'Loại SIM', 'Nano-SIM + eSIM', 1, '2020-07-11 18:06:41', '2020-07-11 18:06:41'),
(48, 10, 'Loại màn hình', 'Super Retina XDR', 1, '2020-07-11 18:07:24', '2020-07-11 18:07:24'),
(49, 10, 'Kích thước màn hình', '6.5 inches', 1, '2020-07-11 18:07:24', '2020-07-11 18:07:24'),
(50, 11, 'Bộ nhớ trong', '256', 1, '2020-07-14 04:20:40', '2020-07-14 04:20:40'),
(51, 12, 'Hãng sản xuất', 'Xiaomi', 1, '2020-07-18 18:05:00', '2020-07-18 18:05:00'),
(52, 12, 'Kích thước', '165.8 x 76.7 x 8.8 mm', 1, '2020-07-18 18:05:00', '2020-07-18 18:05:00'),
(53, 12, 'Bộ nhớ đệm / Ram', '6 GB', 1, '2020-07-18 18:05:40', '2020-07-18 18:05:40'),
(54, 12, 'Bộ nhớ trong', '64', 1, '2020-07-18 18:05:40', '2020-07-18 18:05:40'),
(55, 12, 'Loại SIM', '2 SIM (Nano-SIM)', 1, '2020-07-18 18:06:29', '2020-07-18 18:06:29'),
(56, 12, 'Loại màn hình', 'IPS LCD, 16 triệu màu, Corning Gorilla Glass 5, 450 nits', 1, '2020-07-18 18:06:29', '2020-07-18 18:06:29'),
(57, 13, 'Hãng sản xuất', 'Xiaomi', 1, '2020-07-18 18:07:21', '2020-07-18 18:07:21'),
(58, 13, 'Kích thước', '165.8 x 76.7 x 8.8 mm', 1, '2020-07-18 18:07:21', '2020-07-18 18:07:21'),
(59, 13, 'Trọng lượng\r\n', '209 g', 1, '2020-07-18 18:08:00', '2020-07-18 18:08:00'),
(60, 13, 'Bộ nhớ đệm / Ram', '6 GB', 1, '2020-07-18 18:08:00', '2020-07-18 18:08:00'),
(61, 13, 'Bộ nhớ trong\r\n', '128', 1, '2020-07-18 18:08:41', '2020-07-18 18:08:41'),
(62, 13, 'Loại SIM', '2 SIM (Nano-SIM)', 1, '2020-07-18 18:08:41', '2020-07-18 18:08:41'),
(63, 14, 'Hãng sản xuất', 'Samsung', 1, '2020-07-18 18:18:28', '2020-07-18 18:18:28'),
(64, 14, 'Bộ nhớ đệm / Ram', '128 GB, 6 GB RAM', 1, '2020-07-18 18:18:28', '2020-07-18 18:18:28'),
(65, 14, 'Bộ nhớ trong', '128', 1, '2020-07-18 18:18:55', '2020-07-18 18:18:55'),
(66, 15, 'Bộ nhớ trong', '128', 1, '2020-07-18 19:31:11', '2020-07-18 19:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `store_id`, `quantity`, `activeFlag`, `createDate`, `updateDate`) VALUES
(2, 2, 300, 1, '2020-07-05 12:00:00', '2020-07-05 12:00:00'),
(3, 3, 300, 1, '2020-07-11 12:00:00', '2020-07-11 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `address`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(2, '49 Âu Cơ, Tân Bình', 'Chi nhánh Âu Cơ', 1, '2020-06-30 12:00:00', '2020-06-30 12:00:00'),
(3, '122 Quang Trung,Gò Vấp', 'Di Dong Xanh chi nhánh Quang Trung', 1, '2020-07-15 12:00:00', '2020-07-14 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `store_list_items`
--

CREATE TABLE `store_list_items` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_detail_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_list_items`
--

INSERT INTO `store_list_items` (`id`, `store_id`, `product_detail_id`, `quantity`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 3, 32, 0, 1, '2020-07-11 18:52:47', '2020-07-11 18:52:47'),
(2, 2, 32, 0, 1, '2020-07-11 18:54:38', '2020-07-11 18:54:38'),
(3, 3, 34, 20, 1, '2020-07-11 18:55:02', '2020-07-11 18:55:02'),
(4, 3, 33, 10, 1, '2020-07-11 18:55:16', '2020-07-11 18:55:16'),
(5, 2, 33, 10, 1, '2020-07-11 21:10:28', '2020-07-11 21:10:28'),
(6, 2, 35, 30, 1, '2020-07-18 19:09:22', '2020-07-18 19:09:22'),
(7, 2, 36, 1, 1, '2020-07-18 19:09:22', '2020-07-18 19:09:22'),
(8, 2, 37, 0, 1, '2020-07-18 19:13:49', '2020-07-18 19:13:49'),
(9, 2, 38, 50, 1, '2020-07-18 19:13:49', '2020-07-18 19:13:49'),
(10, 2, 39, 5, 1, '2020-07-18 19:15:02', '2020-07-18 19:15:02'),
(11, 2, 40, 10, 1, '2020-07-18 19:15:02', '2020-07-18 19:15:02'),
(12, 2, 44, 4, 1, '2020-07-18 19:15:44', '2020-07-18 19:15:44'),
(13, 3, 44, 10, 1, '2020-07-18 19:15:44', '2020-07-18 19:15:44'),
(14, 2, 43, 0, 1, '2020-07-18 19:16:03', '2020-07-18 19:16:03'),
(15, 3, 43, 20, 1, '2020-07-18 19:16:03', '2020-07-18 19:16:03'),
(16, 2, 42, 30, 1, '2020-07-18 19:16:42', '2020-07-18 19:16:42'),
(17, 3, 42, 3, 1, '2020-07-18 19:16:42', '2020-07-18 19:16:42'),
(18, 2, 41, 0, 1, '2020-07-18 19:17:31', '2020-07-18 19:17:31'),
(19, 3, 38, 0, 1, '2020-07-18 19:17:31', '2020-07-18 19:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_product`
--

CREATE TABLE `transfer_product` (
  `id` int(11) NOT NULL,
  `srs_store` int(11) NOT NULL,
  `des_store` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_product_detail`
--

CREATE TABLE `transfer_product_detail` (
  `id` int(11) NOT NULL,
  `id_Transfer_Product` int(11) NOT NULL,
  `id_Product` int(11) NOT NULL,
  `idColor` int(11) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'admin', '11111111', 'admin@gmail.com', 'Admin', 1, '2020-07-20 22:05:25', '2020-07-20 22:05:25'),
(2, 'man1', '11111111', 'man1@gmail.com', 'Truong Cong Man', 1, '2020-07-20 22:06:00', '2020-07-20 22:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `startDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `endDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `activeFlag` int(11) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `productId` int(11) NOT NULL,
  `productVoucherId` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId_menuId_foreign_key` (`role_Id`),
  ADD KEY `menuId_foreignKey` (`menu_Id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_pro`
--
ALTER TABLE `import_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId_importPro_fk` (`idStore`),
  ADD KEY `supplierId_importPro_fk` (`idSupplier`);

--
-- Indexes for table `import_product_detail`
--
ALTER TABLE `import_product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colorId_imp_pro_detail_fk` (`idColor`),
  ADD KEY `import_product_detail_importPro_fk` (`id_Import_Product`),
  ADD KEY `importProDetailId_proId_fk` (`id_Product`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_cate_fk` (`cate_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_cate_fk` (`id_category`),
  ADD KEY `model_brand_fk` (`id_brand`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOder_idUser_f_k` (`id_user`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`,`idOrder`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_product_fk` (`brand_id`),
  ADD KEY `item_product_fk` (`item_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proDetailId_proId_fk` (`product_id`),
  ADD KEY `proDetailId_colorId_fk` (`color_id`),
  ADD KEY `proDetail_spec_fk` (`spec_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleuser`
--
ALTER TABLE `roleuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId_foreign_key` (`user_Id`),
  ADD KEY `roleId_foreign_key` (`role_Id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specs_detail`
--
ALTER TABLE `specs_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specId_specDetailId_f_k` (`spec_id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId_storageId_fk` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_list_items`
--
ALTER TABLE `store_list_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_listItem_fk` (`store_id`),
  ADD KEY `productDetail_listItem_fk` (`product_detail_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_product`
--
ALTER TABLE `transfer_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `srsStore_f_k` (`srs_store`),
  ADD KEY `desStore_f_k` (`des_store`);

--
-- Indexes for table `transfer_product_detail`
--
ALTER TABLE `transfer_product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transferId_transfer_pro_detail_f_k` (`id_Transfer_Product`),
  ADD KEY `transferProDetail_Product_f_k` (`id_Product`),
  ADD KEY `colorId_trans_pro_detail_fk` (`idColor`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proId_voucherId_fk` (`productId`),
  ADD KEY `proVoucherid_voucherId_fk` (`productVoucherId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_pro`
--
ALTER TABLE `import_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_product_detail`
--
ALTER TABLE `import_product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roleuser`
--
ALTER TABLE `roleuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `specs_detail`
--
ALTER TABLE `specs_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_list_items`
--
ALTER TABLE `store_list_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_product`
--
ALTER TABLE `transfer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_product_detail`
--
ALTER TABLE `transfer_product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `menuId_foreignKey` FOREIGN KEY (`menu_Id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roleId_menuId_foreign_key` FOREIGN KEY (`role_Id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `import_pro`
--
ALTER TABLE `import_pro`
  ADD CONSTRAINT `storeId_importPro_fk` FOREIGN KEY (`idStore`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplierId_importPro_fk` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `import_product_detail`
--
ALTER TABLE `import_product_detail`
  ADD CONSTRAINT `colorId_imp_pro_detail_fk` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `importProDetailId_proId_fk` FOREIGN KEY (`id_Product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `import_product_detail_importPro_fk` FOREIGN KEY (`id_Import_Product`) REFERENCES `import_pro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_cate_fk` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_brand_fk` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_cate_fk` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `idOder_idUser_f_k` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `brand_product_fk` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_product_fk` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `proDetailId_colorId_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proDetailId_proId_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proDetail_spec_fk` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `roleuser`
--
ALTER TABLE `roleuser`
  ADD CONSTRAINT `roleId_foreign_key` FOREIGN KEY (`role_Id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userId_foreign_key` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specs_detail`
--
ALTER TABLE `specs_detail`
  ADD CONSTRAINT `specId_specDetailId_f_k` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `storage`
--
ALTER TABLE `storage`
  ADD CONSTRAINT `storeId_storageId_fk` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store_list_items`
--
ALTER TABLE `store_list_items`
  ADD CONSTRAINT `productDetail_listItem_fk` FOREIGN KEY (`product_detail_id`) REFERENCES `product_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_listItem_fk` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfer_product`
--
ALTER TABLE `transfer_product`
  ADD CONSTRAINT `desStore_f_k` FOREIGN KEY (`des_store`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `srsStore_f_k` FOREIGN KEY (`srs_store`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfer_product_detail`
--
ALTER TABLE `transfer_product_detail`
  ADD CONSTRAINT `colorId_trans_pro_detail_fk` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transferId_transfer_pro_detail_f_k` FOREIGN KEY (`id_Transfer_Product`) REFERENCES `transfer_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transferProDetail_Product_f_k` FOREIGN KEY (`id_Product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `proId_voucherId_fk` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proVoucherid_voucherId_fk` FOREIGN KEY (`productVoucherId`) REFERENCES `product` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
