-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 12, 2024 lúc 03:10 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_create_id` int(11) NOT NULL,
  `actived` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `name`, `username`, `password`, `password_text`, `address`, `phoneNumber`, `email`, `salt`, `user_create_id`, `actived`, `created_at`, `updated_at`) VALUES
(19, 'zxc', 'zxc', '$2y$10$NLCdzi3vsv1vxHB5ORZ7Ue8hX6gPvoAcSP9hEQXE/2TVQIop7uqdC', 'lkj', '{\"address1\":\"123\",\"address2\":\"123\"}', '123', 'lucvanlia2004@gmail.com', '', 0, 0, '2024-07-09 21:09:57', '2024-07-12 19:26:02'),
(20, 'phat123', 'cz', '$2y$10$VrDVy2.vMcGYyy.kMFtB.epY1KIsF1yKdFHandnicOzCFvjuDirXa', '123', '{\"address1\":\"Loa\",\"address2\":\"zc\"}', '0707002356', 'lucvanlia2004@gmail.com', '', 0, 0, '2024-07-09 23:38:54', '0000-00-00 00:00:00'),
(21, 'Thái Hoàng Minh Thông 88', 'thong', '$2y$10$TIpW376OIXQxzXfkfbIKeepdeKjb1UajGdjL/59Lcvit0EzXW2A8.', '123', '{\"address1\":\"4 l\\u00f4 19 ph\\u01b0\\u1eddng 10 qu\\u1eadn 8\",\"address2\":\"123\"}', '0707002356', 'lethanhphata6@gmail.com', '', 0, 0, '2024-07-10 12:44:38', '0000-00-00 00:00:00'),
(22, 'Lục Vân Lia', 'Helllo', '$2y$10$SzZayo40s0rxx36/XPPhi.NaFbUCBaPh5BCUkvxKjwzmi1oiK6lm6', '123', '', '', '', '', 0, 0, '2024-07-12 19:59:53', '0000-00-00 00:00:00'),
(23, '1414124', 'czxga', '$2y$10$N2m9hlOMu4Rc1sOO0.K7VeCOLLg4fRKENXRwn9IAHJ6AEodtiO06S', '12311z', '', '', '', '', 0, 0, '2024-07-12 20:01:38', '0000-00-00 00:00:00'),
(24, 'zxc', 'czx', '$2y$10$h2SL1TXNagQ5wuWz9J/bZum1GYmGcrhlvNI.ftlFmeG.3oSgxREL2', 'zxc', '', '', '', '', 0, 0, '2024-07-12 20:02:36', '0000-00-00 00:00:00'),
(25, 'bum', 'bum', '$2y$10$sOaAcf4xMdcZjhdr9M2XBO1hmtGklbeQL9JAFwAaSN/s7NDuZUAOm', '123bum', '{\"address1\":\"Bi\\u00ean H\\u00f2a\",\"address2\":\"Ph\\u00fa Y\\u00ean\"}', '0707002356', 'lucvanlia2004@gmail.com', '', 0, 0, '2024-07-12 20:04:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `fullname`, `publish`) VALUES
(1, 'admin', '$2y$10$TIUHEs/hMyapyI.rJJzL7u15Z5hvqqYWVF9FW8L0XPv7F1lGoeLFC', 'Lê Thanh Phát', 1),
(2, 'admin2', '$2y$10$kKBE7GPEAtYPSehWtPLjDO1qIRrxsUpRXzYc2/CWdlRl5vgRaY5mu', 'Thái Hoàng Minh Thông', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) NOT NULL,
  `publish` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `slug`, `type`, `name`, `parentID`, `publish`, `created_at`, `updated_at`) VALUES
(41, 'nike', 1, 'NIKE', 0, 1, '2024-07-12 10:57:56', '0000-00-00 00:00:00'),
(42, 'adidas', 1, 'ADIDAS', 0, 1, '2024-07-12 10:58:02', '0000-00-00 00:00:00'),
(43, 'puma', 1, 'PUMA', 0, 1, '2024-07-12 10:58:08', '0000-00-00 00:00:00'),
(44, 'thuong-dinh', 1, 'Thượng Đình', 0, 1, '2024-07-12 10:58:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `email`, `created_at`) VALUES
(1, 'vkduy240398@gmail.com', '2023-11-18 23:20:42'),
(2, 'vkduy240398@gmail.com', '2023-11-18 23:21:29'),
(3, 'vkduy240398@gmail.com', '2023-11-18 23:23:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cateID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `publish` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `url`, `cateID`, `parentID`, `publish`, `sort`, `type`) VALUES
(1, 'Sản phẩm', '', 0, 0, 1, 0, 0),
(7, 'NIKE', 'nike', 41, 1, 1, 0, 1),
(9, 'PUMA', 'puma', 43, 1, 1, 0, 1),
(11, 'ADIDAS', 'adidas', 42, 1, 1, 0, 1),
(12, 'Thượng Đình', 'thuong-dinh', 44, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_module`
--

CREATE TABLE `tbl_module` (
  `id` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` tinyint(4) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_module`
--

INSERT INTO `tbl_module` (`id`, `parentID`, `name`, `link`, `controller`, `icon`, `publish`, `sort`, `created_at`, `updated_at`) VALUES
(1, 0, 'Quản lý sản phẩm', '', '', '<i class=\"fas fa-user-shield\"></i>', 1, 1, '2023-11-11 00:23:55', '0000-00-00 00:00:00'),
(2, 1, 'Danh mục', 'cpanel/category/index', 'category', '<i class=\"fas fa-user-shield\"></i>', 1, 2, '2023-11-11 00:24:27', '0000-00-00 00:00:00'),
(3, 0, 'Quản lý module', 'cpanel/module/index', 'module', '<i class=\"fas fa-user-shield\"></i>', 1, 3, '2023-11-11 00:28:14', '0000-00-00 00:00:00'),
(4, 1, 'Sản phẩm', 'cpanel/product/index', 'product', '<i class=\"fas fa-user-shield\"></i>', 1, 4, '2023-11-11 00:29:23', '0000-00-00 00:00:00'),
(5, 0, 'Quản lý admin', 'cpanel/admin/index', 'admin', '<i class=\"fas fa-user-shield\"></i>', 1, 5, '2023-11-11 00:31:14', '0000-00-00 00:00:00'),
(6, 0, 'Quản lý menu', 'cpanel/menu/index', 'menu', '<i class=\"fas fa-user-shield\"></i>', 1, 6, '2023-11-11 00:31:38', '0000-00-00 00:00:00'),
(7, 0, 'Quản lý đơn hàng', 'cpanel/order/index', 'order', '<i class=\"fas fa-user-shield\"></i>', 1, 7, '2023-11-13 21:49:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `accountId`, `address`, `phone`, `email`, `note`, `total`, `created_at`) VALUES
(67, 21, 'Loa', '0707002356', 'lethanhphata6@gmail.com', '123', 8000000, '2024-07-12 11:30:17'),
(68, 21, 'Loa', '0707002356', 'lethanhphata6@gmail.com', 'a Thông lo đx ', 11645000, '2024-07-12 13:31:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `orderId`, `productId`, `price`, `qty`) VALUES
(83, 67, 21, 6000000, 1),
(84, 67, 22, 2000000, 1),
(85, 68, 32, 2890000, 4),
(86, 68, 36, 85000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productID` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `uuid`, `image`, `thumb`, `productID`, `created_at`) VALUES
(1, '5963fd94-7ed0-482a-baef-84dd2c209b86', 'public/uploads/images/product/detail/5963fd94-7ed0-482a-baef-84dd2c209b86-XS4VMrtmBJTFZiDsjf2HRzhQPy0du5aDNE8L1Ogwoklc6eq9nAU7CY3bKxGvW.jpg', 'public/uploads/images/product/detail/thumb/5963fd94-7ed0-482a-baef-84dd2c209b86-i5wHWClSUzFRYXg4NuBGesEmxVyQ6JfLcP2vkr81ZajqDn9A3TMo0DdhbKOt7.jpg', 1, '2023-11-11 00:44:08'),
(2, '03d077c6-36f1-429a-b162-42ec29593a25', 'public/uploads/images/product/detail/03d077c6-36f1-429a-b162-42ec29593a25-mDdKysq51nX6ae0SJrN8FLfvtkcO9gWPEDGbVuhR7CZ3AzwBoTMl4jUQ2YxHi.jpg', 'public/uploads/images/product/detail/thumb/03d077c6-36f1-429a-b162-42ec29593a25-fPgik9A4KE21Ld0VOhmDRByQUYXsquSrnWc3GaN6TDxewM8jHlZzt7FvoJC5b.jpg', 2, '2023-11-11 00:51:04'),
(3, '1a9f77f6-027d-4f98-b62f-22190ac318e6', 'public/uploads/images/product/detail/1a9f77f6-027d-4f98-b62f-22190ac318e6-Mng7oz24TmDerHxyaASiVuQ6EDK9swb1cCkXULB5OJ8N3vqZFt0WfldhGRjYP.jpg', 'public/uploads/images/product/detail/thumb/1a9f77f6-027d-4f98-b62f-22190ac318e6-sMZDPVdlX18bq3EQBungSi9aYFfGxHJUmLNezoCRjt5wAD24ky6hvOWr0K7cT.jpg', 2, '2023-11-11 00:51:05'),
(4, 'bc910c6d-cae5-44a9-982f-59306ada3294', 'public/uploads/images/product/detail/bc910c6d-cae5-44a9-982f-59306ada3294-AfMVrdmhQGz3WvE9gPiZ5KxDuCe16lb8qSoNHUaYj7RDOT04tJc2wByLXnkFs.jpg', 'public/uploads/images/product/detail/thumb/bc910c6d-cae5-44a9-982f-59306ada3294-x3UQoEkeaCv9Pm8r1TYz6Wl7nDMuSdtj5G4s2Bw0KcAVhZNHFRgiOqLJbyXfD.jpg', 3, '2023-11-11 00:57:06'),
(5, '82318cfe-2428-4d74-9c47-487ae2095e4a', 'public/uploads/images/product/detail/82318cfe-2428-4d74-9c47-487ae2095e4a-5zR1uKd4leH0qEY9rC2fLA7kn3gQJv6hZoxV8jFwUcbBytPSmNiOsGTDWaDMX.jpg', 'public/uploads/images/product/detail/thumb/82318cfe-2428-4d74-9c47-487ae2095e4a-DqwDPmsykVaOUu2fojZt4gS7HWCB9QMYlhdi0XNGTKbJ8Ae5LRznF3vrExc16.jpg', 3, '2023-11-11 00:57:11'),
(6, 'c071398e-4214-4a42-9dee-38707ae57290', 'public/uploads/images/product/detail/c071398e-4214-4a42-9dee-38707ae57290-DNe6vZWoHf3CgT9t4lqm0b8PjsLrnhGY5zUSMAkuaRJEXyi7QcKxOB2dDwF1V.png', 'public/uploads/images/product/detail/thumb/c071398e-4214-4a42-9dee-38707ae57290-BbYPox8UsOj7e4Z6DGucwSNg0mahTfk1KdE92JRAVLFWl5HqzQM3nivryXtDC.png', 4, '2023-11-11 00:57:51'),
(7, 'c999b47c-63f0-48e0-b2e4-b4a3da636005', 'public/uploads/images/product/detail/c999b47c-63f0-48e0-b2e4-b4a3da636005-2Oa7stT8RN5Zqhl3y6wzGrEnJoAmHeKixDWBvCDugYQ9M04UjF1cSPVXdbfLk.jpg', 'public/uploads/images/product/detail/thumb/c999b47c-63f0-48e0-b2e4-b4a3da636005-9deBlVMrYT0zEN1gGiJ2FUQxL57AC6tmoDPfbyhSXW4HDkv8RZjsuwOncKqa3.jpg', 4, '2023-11-11 00:58:02'),
(8, '2a8e11d5-c803-4d67-9c53-98b76fbb4a23', 'public/uploads/images/product/detail/2a8e11d5-c803-4d67-9c53-98b76fbb4a23-PyDL90Mco3zHGJ6kuU4VmYvb5FOr8Aj2SwNnXlKxhtdBfqEiD7QW1aTZsgeRC.png', 'public/uploads/images/product/detail/thumb/2a8e11d5-c803-4d67-9c53-98b76fbb4a23-3BSjiY1Eu9NaHULKqXotD0xJWcR5OMzwTr7ynCAs6bGmPvfQgl4eFkD82dhVZ.png', 4, '2023-11-11 00:58:02'),
(9, '52ece38c-76a6-410f-9e7b-cbd324038ab1', 'public/uploads/images/product/detail/52ece38c-76a6-410f-9e7b-cbd324038ab1-z8OtJA7wr9ciLaqKHMFSDek6ZBRWn4x1lV0fdouTXENhGQsU5vDjbPm3y2CYg.jpg', 'public/uploads/images/product/detail/thumb/52ece38c-76a6-410f-9e7b-cbd324038ab1-B58MukCalSAreUQYtoJ6Z4dvyPWDXcqmHV1nh0iDz37bK2LsxwRjgOfTFG9NE.jpg', 5, '2023-11-11 00:58:48'),
(10, '50c1e64a-1ffd-47a6-ac84-d3c9813ad2b7', 'public/uploads/images/product/detail/50c1e64a-1ffd-47a6-ac84-d3c9813ad2b7-Kk9z5CZbYU71NtceBwnG8yMuaL3VhFQijJPrOoAW0qED6vgd2THXR4mlsSfDx.jpg', 'public/uploads/images/product/detail/thumb/50c1e64a-1ffd-47a6-ac84-d3c9813ad2b7-YNS4zEkqDHTFQ2Zx9Wrg7GjPoaheCmisDOyvR1VlXBfdUuLMJw53bnAtKc806.jpg', 6, '2023-11-11 01:00:35'),
(13, '6095c361-1456-429e-af0d-84fecac50fa8', 'public/uploads/images/product/detail/6095c361-1456-429e-af0d-84fecac50fa8-UGFj5u79TblJQofAzD1iZ2ncCsDw0BM6VRmarqdvtK43WhSgPeNkLyYHXxO8E.jpg', 'public/uploads/images/product/detail/thumb/6095c361-1456-429e-af0d-84fecac50fa8-MFTBt3yZUgHwVdvjGQ64YSEr7L9sOKuNkblfqAn5DP2z1DCmo0Ji8ecRhxWXa.jpg', 7, '2023-11-11 01:05:04'),
(14, '108649dc-381e-4e2a-af9d-b2bad267e1f0', 'public/uploads/images/product/detail/108649dc-381e-4e2a-af9d-b2bad267e1f0-ngX14EWMjDO5NrPDyZGzbC6QAaFV8tdviw03kB9RcxmKsuHohql7SeULYT2Jf.jpg', 'public/uploads/images/product/detail/thumb/108649dc-381e-4e2a-af9d-b2bad267e1f0-Dr5zTdLOWQmH3VgnGba4fJtMAqsUl7YxBNPv0FC16yRXuS2EDw8choZeKji9k.jpg', 8, '2023-11-12 22:12:42'),
(15, '7ad8736c-4b36-4b27-93a1-b217361da768', 'public/uploads/images/product/detail/7ad8736c-4b36-4b27-93a1-b217361da768-DgJLrGjWsRia3Qz9XTUvAK8lymYFqkZ7Hoe2uwtOP1Nh40BSVbD6MfxnCdE5c.jpg', 'public/uploads/images/product/detail/thumb/7ad8736c-4b36-4b27-93a1-b217361da768-ag8E5JTCQBiz3Zlh7VPqSU9XjsM0tRDdwAHNybmLvoKOukDnFYcW61fe24Grx.jpg', 8, '2023-11-12 22:12:42'),
(16, 'b4c7ebae-b5f6-493a-b436-c8b2c91d2a24', 'public/uploads/images/product/detail/b4c7ebae-b5f6-493a-b436-c8b2c91d2a24-CJXlh3qFTy0dgmsHb6OUvfYA8SxWwQEr1NkDKjPDaMnGZ2R4VioB9L7ztc5eu.jpg', 'public/uploads/images/product/detail/thumb/b4c7ebae-b5f6-493a-b436-c8b2c91d2a24-41yE2zBeHDXdCV9WUDRZkurlvm3PwQcfoJnai7AS0jtLbYq8KgO56MNsGxFhT.jpg', 8, '2023-11-12 22:12:42'),
(17, '4e31f2ea-4abe-4ce6-adb4-c92ad63fe430', 'public/uploads/images/product/detail/4e31f2ea-4abe-4ce6-adb4-c92ad63fe430-eOWxhP1tygJBXLbCZ0NrmASDUERzHDiQGqlwd9oMKkafs82cTVjFu7n3Y6v54.jpg', 'public/uploads/images/product/detail/thumb/4e31f2ea-4abe-4ce6-adb4-c92ad63fe430-1Q8LAabOUFN9MmyDJZwSPrvdslGuh4zXWqV2E5txCRnHekgBc3KioY76T0jfD.jpg', 8, '2023-11-12 22:12:42'),
(18, 'c495e7f8-736e-4dd8-bd5a-52d8b109307f', 'public/uploads/images/product/detail/c495e7f8-736e-4dd8-bd5a-52d8b109307f-m12Eg6YcySbDACnJoW3hZQfRxFG50derUPqNvTzXwHKiau8DVBMltOs4k7L9j.jpg', 'public/uploads/images/product/detail/thumb/c495e7f8-736e-4dd8-bd5a-52d8b109307f-DYg5vPDkiULC6WQfAN3Em19Zdyr08bOsBntoSH2McluxwRKXhaGF7eJzjV4qT.jpg', 9, '2023-11-12 22:27:08'),
(19, '3a54473a-d446-4541-aa88-9a5303d60600', 'public/uploads/images/product/detail/3a54473a-d446-4541-aa88-9a5303d60600-fwsdLQ7zaXg0lqDDPvEeoNSuiAcWFCh1Rnt34B9m5YGMbZrT2jyJ8KUxVOHk6.jpg', 'public/uploads/images/product/detail/thumb/3a54473a-d446-4541-aa88-9a5303d60600-vzFWgAUyR63jV72XwbEPMum41eQBOTdfDohaZNrJ0K589lxDYiqknHCsSGctL.jpg', 9, '2023-11-12 22:27:08'),
(20, '9994457e-2f6f-4b27-a1a0-a9e68b329ddc', 'public/uploads/images/product/detail/9994457e-2f6f-4b27-a1a0-a9e68b329ddc-CXPg2Ue6bwJltFHMq4EVjdD8ZSnsv3Qa5zNWoLurAycRBGOTiD1h9mY7fx0kK.jpg', 'public/uploads/images/product/detail/thumb/9994457e-2f6f-4b27-a1a0-a9e68b329ddc-n7GbM0eRuxUtEF2AX6C3OTV4vrLKgykBwijsSHDcoqJl95hPNzfZYaW18QdmD.jpg', 9, '2023-11-12 22:27:08'),
(21, '56520d6a-9325-4ed4-83e8-596a3abb89a5', 'public/uploads/images/product/detail/56520d6a-9325-4ed4-83e8-596a3abb89a5-Lg8jY1M5zRiG0WJb6ckFXtNDSseQqOlK7PrA9hUCnuawEH4T2yBVfvDo3dxZm.jpg', 'public/uploads/images/product/detail/thumb/56520d6a-9325-4ed4-83e8-596a3abb89a5-qJAWPHkyK8sgUECB034ubeT16VvcOFazxjo2G57mD9dMLnSrXRQNYwlfZDith.jpg', 9, '2023-11-12 22:27:08'),
(22, '8df20220-374d-494c-80cd-b829f1abe6f4', 'public/uploads/images/product/detail/8df20220-374d-494c-80cd-b829f1abe6f4-0D8MjALY1QmngXDHEcZaBuf2Sd37NvUwC5Vzr9bGlhtKs6x4PFROoyekWqJiT.jpg', 'public/uploads/images/product/detail/thumb/8df20220-374d-494c-80cd-b829f1abe6f4-67Db4hRdXyzZ8L2EkHa0CMBqD5rWtUsFQloVASf3PxOjeGiTuJvmwKY9cnN1g.jpg', 10, '2023-11-12 22:31:32'),
(23, '993cfa09-86fd-47b8-96c8-31c3eae494c2', 'public/uploads/images/product/detail/993cfa09-86fd-47b8-96c8-31c3eae494c2-2fadomUiw3l5cGYSChAJ6EXV8POWK4TvbZnzkgBq9LDuts7Qyjr1HxRDMF0eN.jpg', 'public/uploads/images/product/detail/thumb/993cfa09-86fd-47b8-96c8-31c3eae494c2-Oo3MhurkgbvcDdZFwjfY6yJXiC7K5sPU42VSQGl9W1qnxTeNDAHatBLzE08mR.jpg', 10, '2023-11-12 22:31:32'),
(24, 'c57c5411-8cf6-406d-8d7e-4228440b16fa', 'public/uploads/images/product/detail/c57c5411-8cf6-406d-8d7e-4228440b16fa-SKVbBrQuDFkJmhROEgC596l7PdLiyjYv23ocwHNz8XDTxUZqAtGsaWn01eM4f.jpg', 'public/uploads/images/product/detail/thumb/c57c5411-8cf6-406d-8d7e-4228440b16fa-GYqjWiUrHzDNVtsu7nvcOEXxk43eDb0RSoF62dP5TK8CyMQhglZwaL9BJfmA1.jpg', 10, '2023-11-12 22:31:33'),
(25, '2622c9ce-0106-408a-aaf9-456727cf5be4', 'public/uploads/images/product/detail/2622c9ce-0106-408a-aaf9-456727cf5be4-sVNxOmJ7KFCT5cSEw803huR6DHLlyjMY9d1ofDWnBqtiGAzvrkZg2ebUXQP4a.jpg', 'public/uploads/images/product/detail/thumb/2622c9ce-0106-408a-aaf9-456727cf5be4-3qlLU4TzrCO8P7DkeF0B6RnEu2cXh9KNW1moVgdwSAyjDiQM5HxtfZavGJYbs.jpg', 10, '2023-11-12 22:31:33'),
(26, '3ffccede-437e-470f-9800-6832bb5f0ea2', 'public/uploads/images/product/detail/3ffccede-437e-470f-9800-6832bb5f0ea2-D0w9x1sNRqB2UTCudD4flyHG7ajKZXVre6hSnPgY5it8MkWmLcJFbO3ozvEQA.jpg', 'public/uploads/images/product/detail/thumb/3ffccede-437e-470f-9800-6832bb5f0ea2-UiuD6hsEkCrOM0d7gFKmAcGL1l2ZyRwPzQX38BnJbxfSVHtov4jDaYeWN5q9T.jpg', 11, '2023-11-12 22:34:56'),
(27, '8bb7e7b2-be8d-4706-9004-2d8fd8eb2205', 'public/uploads/images/product/detail/8bb7e7b2-be8d-4706-9004-2d8fd8eb2205-4iWAyxqanCwKjJBoDbsktOHSZGFQ982EufzlNMevdrVYP6L0371XDhmUcR5Tg.jpg', 'public/uploads/images/product/detail/thumb/8bb7e7b2-be8d-4706-9004-2d8fd8eb2205-iV0AHbXSz7r12UMwNK93dZf4uyEODmksvYlCLnaPGthj8QTBDWgRF5eqoc6Jx.jpg', 11, '2023-11-12 22:34:56'),
(28, '579e8d55-1e2a-494c-bda1-a9cb6faa32ac', 'public/uploads/images/product/detail/579e8d55-1e2a-494c-bda1-a9cb6faa32ac-DVMWjtEsTQbwhLX3RlraGze4YydPcqDBn69gmA0k1vf25Juo7OZ8SHKiUCNxF.jpg', 'public/uploads/images/product/detail/thumb/579e8d55-1e2a-494c-bda1-a9cb6faa32ac-n6hF2lWKEoX1k4dsce3i5Gga9NquSBxzDbLQDtvTMr0HfYARJUPVwCm8yOjZ7.jpg', 11, '2023-11-12 22:34:56'),
(29, 'ae1d5207-e750-4bc2-8d39-886278cd493a', 'public/uploads/images/product/detail/ae1d5207-e750-4bc2-8d39-886278cd493a-vLRdU0AHwkCKl8hz6FZfsQEueXPDmNg5D2yWi4qBTr3bxGMO7jn9tYcoaSJ1V.jpg', 'public/uploads/images/product/detail/thumb/ae1d5207-e750-4bc2-8d39-886278cd493a-1zwsjGA8uqZ6OcKeU50FVlYtdDMgHDJxL9Qv2iWoXay3r4EfRCPkb7NSTmhBn.jpg', 12, '2023-11-12 22:37:09'),
(30, '6f7f74de-7d22-4ad2-90b5-7e8694b280d7', 'public/uploads/images/product/detail/6f7f74de-7d22-4ad2-90b5-7e8694b280d7-O28sbRENWFzVlerutd0oUMS51c9X6JxyGmLDZjYwvfkP4K7QgiTBqn3AahHCD.jpg', 'public/uploads/images/product/detail/thumb/6f7f74de-7d22-4ad2-90b5-7e8694b280d7-id5DsAkBjfrl7GgactM02NY96LhFqSRKWwzumJ8ynVoZeQ3Xv1OHPDET4xUCb.jpg', 12, '2023-11-12 22:37:09'),
(31, '461af873-866c-49ea-910d-5d9efc9133b0', 'public/uploads/images/product/detail/461af873-866c-49ea-910d-5d9efc9133b0-bQJg8Ykfx2NSMiC1sTUdqVmt6XDhuLB3G59rlOPwRj7EHce0WD4aFoyAnKZvz.jpg', 'public/uploads/images/product/detail/thumb/461af873-866c-49ea-910d-5d9efc9133b0-ThgCE1OurcMoRlvGLZAWFUH3PV45DjqD96xSns2eYim078KNbzkyaBtwQXdJf.jpg', 12, '2023-11-12 22:37:10'),
(32, 'fc755205-556f-4944-9d06-6b4bf7b0bc83', 'public/uploads/images/product/detail/fc755205-556f-4944-9d06-6b4bf7b0bc83-LnGrClzyFDvDJ04BwAdhKQcbEmZXutMokYSx6sj8OeHUg2V3q5NfaTRP9W1i7.jpg', 'public/uploads/images/product/detail/thumb/fc755205-556f-4944-9d06-6b4bf7b0bc83-SVLR4fo03cTPEK62GuDbXsYh7te1lOvUkndQJHxrZWMw9aDAiB5Ng8qjmzCFy.jpg', 12, '2023-11-12 22:37:10'),
(33, '5339a381-41a4-4c4a-b952-2385c6c940ff', 'public/uploads/images/product/detail/5339a381-41a4-4c4a-b952-2385c6c940ff-fqK9kVOCuLWHD4nr6NP8tcAvRJiD1SjlXobx7dUmYZwQzT5haE2seBGy30gMF.jpg', 'public/uploads/images/product/detail/thumb/5339a381-41a4-4c4a-b952-2385c6c940ff-zr1an9dCtwVUxvMWJQEXl45FDfZiLSAY6gD3K8eBTOkbRcPGjo0H2hyNsmuq7.jpg', 12, '2023-11-12 22:37:10'),
(34, 'b98585fa-340b-47e9-ae6d-93592f7203a3', 'public/uploads/images/product/detail/b98585fa-340b-47e9-ae6d-93592f7203a3-RZbMJq04cTjPGS3EilkuKNyYmUVWrHwaL9Cv7Q6OF1DgodfDztneX5As28xBh.jpg', 'public/uploads/images/product/detail/thumb/b98585fa-340b-47e9-ae6d-93592f7203a3-PjMXYGo1HJzdv3lQ4fUagEx9DqFsRryKT0Z2mDOcti5N8B6WuhLVbekn7CAwS.jpg', 13, '2023-11-12 22:40:24'),
(35, '4a2b7d2a-b4c6-4539-9063-e303a46b8271', 'public/uploads/images/product/detail/4a2b7d2a-b4c6-4539-9063-e303a46b8271-HNbUzyQFJ4D2VMxsWXtlwTOei6nhdqGo95Rj170BSPEf8A3ucLgvZKDYCrkma.jpg', 'public/uploads/images/product/detail/thumb/4a2b7d2a-b4c6-4539-9063-e303a46b8271-TMjqaVmxLz71YgAy5trEBbSPRKd049DOskcvQilwGCenNhu62UFZW8DJ3fXoH.jpg', 13, '2023-11-12 22:40:24'),
(36, 'ae7f6be1-1417-410a-926b-7bf61e026e71', 'public/uploads/images/product/detail/ae7f6be1-1417-410a-926b-7bf61e026e71-jDusKTgERty734aHYGCbiPO9xJnvUQ5f1e6czrdoXwVkDZWLqSBFlN8MhAm20.jpg', 'public/uploads/images/product/detail/thumb/ae7f6be1-1417-410a-926b-7bf61e026e71-3L650GuXwEevcgz2ojsyRHrVW4xKmdh1nBZ87JbPMYDkClq9OfStFaQNUTDAi.jpg', 14, '2023-11-12 22:43:30'),
(37, '7e6c5a5f-baaa-45ba-a112-090b8d831c61', 'public/uploads/images/product/detail/7e6c5a5f-baaa-45ba-a112-090b8d831c61-igePDjnvyuH9b0aV7FYGsDMRoB5x812c3UKhzXSEANCwkt4WZqdLOlrQTfmJ6.jpg', 'public/uploads/images/product/detail/thumb/7e6c5a5f-baaa-45ba-a112-090b8d831c61-9Na4m7RbM1HL683ovxQVXGgdhkY2EKjJi0ulqDswzCteZfPcUFrOS5ADTyWBn.jpg', 14, '2023-11-12 22:43:30'),
(38, 'd3f09257-678a-424d-9a77-972575e50aeb', 'public/uploads/images/product/detail/d3f09257-678a-424d-9a77-972575e50aeb-qBdvCbtamXYfQ41DgFKZP90DoH5Az6eVniMNjlWw7OsTxhuEcrR3yLUS2kGJ8.jpg', 'public/uploads/images/product/detail/thumb/d3f09257-678a-424d-9a77-972575e50aeb-aBgeslkFyxmNX2iDjJ1WRhoTPvr0ZAbVcKfUznOHdCY475D8QG63EtSuwMq9L.jpg', 14, '2023-11-12 22:43:30'),
(39, '3014c300-3dc6-4dea-bd49-e73087fc35a7', 'public/uploads/images/product/detail/3014c300-3dc6-4dea-bd49-e73087fc35a7-Em36D8iXqtMsjA7rVYl1NbkvRJZ4uDnz0TC52eKyd9GBWUPQhaxOFcLfwHgSo.jpg', 'public/uploads/images/product/detail/thumb/3014c300-3dc6-4dea-bd49-e73087fc35a7-PDLQE0Uxiuh5ycl8vrZSsKj9TYOGBwDatCAV1N64Mz2dfkHR3Fnb7mJWeXoqg.jpg', 15, '2023-11-12 22:50:49'),
(40, 'dfd0bd14-9672-423e-b806-2445df9c8801', 'public/uploads/images/product/detail/dfd0bd14-9672-423e-b806-2445df9c8801-Jfa6zNjhvCM7wDyK3sd92SePOViUF0lxBHYEZqGR5mTrc4o8WQX1bDkALntug.jpg', 'public/uploads/images/product/detail/thumb/dfd0bd14-9672-423e-b806-2445df9c8801-fXqaO7ljQmWTAyJEYcw0uNknixKVHv45g8PZhCGFUdbBo36ReMS12tsDr9zDL.jpg', 15, '2023-11-12 22:50:49'),
(41, '3468d588-d683-4997-9404-55f0a1d39433', 'public/uploads/images/product/detail/3468d588-d683-4997-9404-55f0a1d39433-56UtelymzZwjH9R8G0XW4FB2JPinfuVdDqrTbSY7Kc1xgQAECN3aMOLDshokv.jpg', 'public/uploads/images/product/detail/thumb/3468d588-d683-4997-9404-55f0a1d39433-boW1eydDKNBfSV2aYrlxFnT04A6ztq9QkwgRZXsLmjG7MEDJ8H5UOchivP3uC.jpg', 15, '2023-11-12 22:50:49'),
(42, '6267a678-0903-42ab-85d2-e3577c1359ad', 'public/uploads/images/product/detail/6267a678-0903-42ab-85d2-e3577c1359ad-8Li7SzglouWjDmnd16KEMUchxfXakqbQtCeROZGNvHwB0sT2FDJV4A59rYyP3.jpg', 'public/uploads/images/product/detail/thumb/6267a678-0903-42ab-85d2-e3577c1359ad-iWXg4rqlsQODmHVTUhaL5C2t09jKbP6SMuZox1yndvecwGkF8YBN3zJADEfR7.jpg', 15, '2023-11-12 22:50:49'),
(43, 'eff9659e-4522-4938-91d8-4747a2a2bd47', 'public/uploads/images/product/detail/eff9659e-4522-4938-91d8-4747a2a2bd47-BKaxXyTu0iHvdDoznf1ZbV2gA8FYr7lU5qhE4Ce3kP9jSLOMDcsNwm6WJGQtR.jpg', 'public/uploads/images/product/detail/thumb/eff9659e-4522-4938-91d8-4747a2a2bd47-2G7sendhkF8WTOj9US3yrQZPJDwm4ifB1uqVg0DvYCHbKLxcNla5RAM6XzEot.jpg', 16, '2023-11-12 22:52:58'),
(44, 'aa2f2ef0-2e35-478b-bbcb-a76ed8fbf0cb', 'public/uploads/images/product/detail/aa2f2ef0-2e35-478b-bbcb-a76ed8fbf0cb-DEjXitclYhw7UQHdWe15GnP6DBSx2C4oJazusM0gFOLRk8K9fZmbrv3AyqVTN.jpg', 'public/uploads/images/product/detail/thumb/aa2f2ef0-2e35-478b-bbcb-a76ed8fbf0cb-ORFYAD6VeJcyntPHwfvl17EKXB4TWMsS2m8q53C9aDijguGdbxkzoQLU0NZrh.jpg', 16, '2023-11-12 22:52:58'),
(45, 'df7e3a44-6628-4f72-8689-93a4f16dce51', 'public/uploads/images/product/detail/df7e3a44-6628-4f72-8689-93a4f16dce51-o6zFEC3c01DsnXU9e2mORi7WAK4vthYbH8xdBDNGPZTuj5qyLrSMQgJakVlwf.jpg', 'public/uploads/images/product/detail/thumb/df7e3a44-6628-4f72-8689-93a4f16dce51-QrGwf3juB17kcYhN4DHCnXF98qsg5SmEVJM0zZO6tlLxaURyPeAvoDTWi2Kdb.jpg', 16, '2023-11-12 22:52:58'),
(46, 'c3b7f9aa-f44c-41e8-8965-4e4c8f0f44d8', 'public/uploads/images/product/detail/c3b7f9aa-f44c-41e8-8965-4e4c8f0f44d8-EDcSTbtCxV45yWoDjeGRfF1w3BdYhQJPXlrk0OZ6igq92s8uzmAvaKHLn7NMU.jpg', 'public/uploads/images/product/detail/thumb/c3b7f9aa-f44c-41e8-8965-4e4c8f0f44d8-TklMRKtYDVWj2iObhx03sHJzwFcNGZ6BroU45gEQAunmLvqyeaXSdfD91PC87.jpg', 16, '2023-11-12 22:52:59'),
(47, 'cf89e051-6a36-43f0-8b34-c2eeca60dd39', 'public/uploads/images/product/detail/cf89e051-6a36-43f0-8b34-c2eeca60dd39-vXHbK10Nr8QycTS6DOJAVtGxdiRh9Zla7j4UfqsgBCwY2LnkMP3zoeDEmuWF5.jpg', 'public/uploads/images/product/detail/thumb/cf89e051-6a36-43f0-8b34-c2eeca60dd39-0F1M3WetaVufqBGoS9LXRE2PJsN4ndrwCKhHD7QZAmi6YDc8kylOxU5bgvjzT.jpg', 17, '2023-11-12 22:54:42'),
(48, 'ea1264a4-cacd-4a90-bebb-5ded350e2e4e', 'public/uploads/images/product/detail/ea1264a4-cacd-4a90-bebb-5ded350e2e4e-4Sx61GFlTebUot0hjWgCPKs9c2VrH3uJBydkQXAaiNmD758zOMqEwYLfZDvRn.jpg', 'public/uploads/images/product/detail/thumb/ea1264a4-cacd-4a90-bebb-5ded350e2e4e-qCDy82A7FUZVHsYJzNOm4EjQK0xl9egRG31okw6hvDMtX5LucnirbPWSdBfTa.jpg', 17, '2023-11-12 22:54:42'),
(49, '13a10a23-c2d1-437a-95f7-88d766020ee5', 'public/uploads/images/product/detail/13a10a23-c2d1-437a-95f7-88d766020ee5-blivDO2Unhf4cH3BW81T6CtKLVMoAXqwPRQ07EzjyYJZsaDxd9mg5eGNukFSr.jpg', 'public/uploads/images/product/detail/thumb/13a10a23-c2d1-437a-95f7-88d766020ee5-VA9yw6aKet7uhiHk0D1OS4Jsl5dCmLvUEWZGYoxbz382rXMfDRTNPFBcnqgQj.jpg', 17, '2023-11-12 22:54:42'),
(50, '164908d1-b9cc-46ba-b29f-d5e77b8e7bdc', 'public/uploads/images/product/detail/164908d1-b9cc-46ba-b29f-d5e77b8e7bdc-CLHWbjamd7reAOnsQqYwZS3kV14DRlJu0cMxP29TgzGtF6y5hNKvoXB8UEiDf.jpg', 'public/uploads/images/product/detail/thumb/164908d1-b9cc-46ba-b29f-d5e77b8e7bdc-bgwzLjPfnTX6OxeGMDB254C9o7ildkvZRWmrQtchDyUHEFaNqKAJuY0sS81V3.jpg', 18, '2023-11-12 22:57:10'),
(51, '501980fe-afb3-460a-9d07-e68311f5e911', 'public/uploads/images/product/detail/501980fe-afb3-460a-9d07-e68311f5e911-7qE2RdBgSkKMxCnvwfZAzlOoebXjVLshDuJ0GPQU51W38Y9cDH6mrTNti4aFy.jpg', 'public/uploads/images/product/detail/thumb/501980fe-afb3-460a-9d07-e68311f5e911-BY9QbcaseP8HXC4qJ6iuxwZydDTGOFzLo3NKgDWj17Emh2tAl5SRvMrfUV0nk.jpg', 18, '2023-11-12 22:57:10'),
(52, 'a51fa512-648d-4631-b3f2-bc828aab3094', 'public/uploads/images/product/detail/a51fa512-648d-4631-b3f2-bc828aab3094-Ta3LKcuq6JUQ8ng2RkD4dG0HOblfDVEhzXN5sBrYAmw1MeSxjtFvP7CW9oyZi.jpg', 'public/uploads/images/product/detail/thumb/a51fa512-648d-4631-b3f2-bc828aab3094-3of5teQgrsiyJPGu2WECL6mZ9d7TYjnvcVqDHxk8NlFRU0OAhMa1SbDXwz4KB.jpg', 18, '2023-11-12 22:57:10'),
(53, 'cdac40d2-8b76-46ff-b708-70524362d907', 'public/uploads/images/product/detail/cdac40d2-8b76-46ff-b708-70524362d907-LP6zqThD8y3Vvk4FHScfrDBsjgNaZxl2eumEiJQ5wORM1GW7Knd90bCUYoXtA.png', 'public/uploads/images/product/detail/thumb/cdac40d2-8b76-46ff-b708-70524362d907-1NtmPrwcMSF5Oi49DRBdD7TW3jx0qkChsanKoXZQv8lyzguLJ2efbYEH6VAGU.png', 19, '2024-07-10 09:26:53'),
(54, '8812751a-e275-4403-8c67-86250d45642a', 'public/uploads/images/product/detail/8812751a-e275-4403-8c67-86250d45642a-BJDnQ4fqj7xy3v6TwYA1cWPhg98USaV0oubNHLFtMrkmEKDs2dlR5OZeCXziG.png', 'public/uploads/images/product/detail/thumb/8812751a-e275-4403-8c67-86250d45642a-ZC97AxzPvJUWN80HjEne1kYXqBasRVMST6fr2lOFyL5Dt3cGQwgoD4buKmhdi.png', 19, '2024-07-10 09:26:56'),
(55, '86678296-0b85-4b75-abcd-356fc9a42d7a', 'public/uploads/images/product/detail/86678296-0b85-4b75-abcd-356fc9a42d7a-FLD0lXwMP7f83AQYGBTO6oc4bxv2isWVHRCSnjzhqr5kgtDaKNyJEUmue1dZ9.png', 'public/uploads/images/product/detail/thumb/86678296-0b85-4b75-abcd-356fc9a42d7a-ektwBOUfGJAXL6nK1quErcHR9gvsWZzSydxoD3Pjm4hil2FaQ7Y8VCT0ND5bM.png', 20, '2024-07-10 16:37:06'),
(56, '423a02de-59b4-4449-a591-3acd5f271c12', 'public/uploads/images/product/detail/423a02de-59b4-4449-a591-3acd5f271c12-cKwfJ4k1TuHCgtAY7WZ6dF0lEb25LXQiVGvoP8Or3hyMsemDRnazxjqDS9UBN.png', 'public/uploads/images/product/detail/thumb/423a02de-59b4-4449-a591-3acd5f271c12-xsMdRGNwlo6iyP4V8bz5TLnXrW70ucBYDtqveKfmUHEZDJ1jQh39gaFOSCA2k.png', 20, '2024-07-10 16:37:08'),
(57, 'e14eb0b5-9edd-43de-89dd-06e7d87b4e08', 'public/uploads/images/product/detail/e14eb0b5-9edd-43de-89dd-06e7d87b4e08-rVLxKtoS0zmfbwcegDD6uEndTNaZM1vYyRBGlX2jh9QPOHsFJ3kqUAW5i7C48.png', 'public/uploads/images/product/detail/thumb/e14eb0b5-9edd-43de-89dd-06e7d87b4e08-E9VZmUA0aLJSqhRHCjvY5Tzk6seb2D1uloBF3gW7PwOtMfiGx8cyKQNrdD4nX.png', 20, '2024-07-10 16:37:11'),
(58, 'afa2d19c-d422-46cd-9473-c9f81546161f', 'public/uploads/images/product/detail/afa2d19c-d422-46cd-9473-c9f81546161f-VPBZq4yrS8DohtGz2QgARTakHMfWvNenuJ5xUEms6Od1jY7LbK3iFDlwX9c0C.jpg', 'public/uploads/images/product/detail/thumb/afa2d19c-d422-46cd-9473-c9f81546161f-VGEruYNcXsOdLPZ4QwD2W8g0hx9zBFejfv65RibJHqmCTDAky3Satn7oKlUM1.jpg', 21, '2024-07-12 10:59:50'),
(59, 'e834a72b-e23b-4275-ace2-5e37841c0113', 'public/uploads/images/product/detail/e834a72b-e23b-4275-ace2-5e37841c0113-87HDZPknfMxuXwetGohqzymr6K0FJ1gibcl2D3d59EWBAjVYsRTCSOaUvLN4Q.jpg', 'public/uploads/images/product/detail/thumb/e834a72b-e23b-4275-ace2-5e37841c0113-tcn3uoMHUdC4RqJOLx5bwQe1TyFvkEPAXgWjmDNhGzl6D7fViZY8aBsr9S0K2.jpg', 21, '2024-07-12 10:59:50'),
(60, 'fe48f431-94d8-442e-abec-0d08057fef67', 'public/uploads/images/product/detail/fe48f431-94d8-442e-abec-0d08057fef67-6R2bKAec8kyQaCVZ7GnTh4DoWBLJgvSt9OrswdXi5Ux1ljHDFqNYP0EfmMz3u.jpg', 'public/uploads/images/product/detail/thumb/fe48f431-94d8-442e-abec-0d08057fef67-1StQaem2ZnMwuGKiXg9vF6kjdDOyBz38WlbCRcTELUDoHhxJ7sfr0Y5P4NAqV.jpg', 21, '2024-07-12 10:59:50'),
(61, '2b960f6c-89e6-48f4-9cea-c214b257b2fd', 'public/uploads/images/product/detail/2b960f6c-89e6-48f4-9cea-c214b257b2fd-JABKCiwrhxyS06zTkvtm9bFQONHGDVMUfeq7gDZ52Eosd18nuPLY3j4cRalWX.png', 'public/uploads/images/product/detail/thumb/2b960f6c-89e6-48f4-9cea-c214b257b2fd-l8GZFYKzLdwbcE2sJeD51OnmgRBXNTiCqrWv6kUHy9uVx4P7D3o0fatjMASQh.png', 21, '2024-07-12 10:59:51'),
(62, '048c6595-11fb-40e6-b40f-9b2e420e7cc4', 'public/uploads/images/product/detail/048c6595-11fb-40e6-b40f-9b2e420e7cc4-m8UN7DzVCjTnSltW0YXBhLAqDGkwx9r1Od4yecJi3b5H6RgsoKQZEuPFv2fMa.jpg', 'public/uploads/images/product/detail/thumb/048c6595-11fb-40e6-b40f-9b2e420e7cc4-D1OgQDA8sVZPTiFMBWthLX5vu0k7o2z6cmY3lHdRw9UEGNSKJyxra4nebCqfj.jpg', 22, '2024-07-12 11:15:11'),
(63, 'b2e9a527-e5b0-4c92-bbfa-0d040c1420c6', 'public/uploads/images/product/detail/b2e9a527-e5b0-4c92-bbfa-0d040c1420c6-Tvrm3Ke6O5Rxl7bg9ykoSVDsjENCQzHnWFJ2iP0dXcAUZDMth8wBuG4faY1qL.jpg', 'public/uploads/images/product/detail/thumb/b2e9a527-e5b0-4c92-bbfa-0d040c1420c6-nDWTgto49w5Rr2XmSiuVMzsPk1eyxJBbQEfOCK7Nha3Gv8DjqZFcH0dYL6lAU.jpg', 22, '2024-07-12 11:15:11'),
(64, 'ca461245-5283-4fc2-81da-aec57a4e99ca', 'public/uploads/images/product/detail/ca461245-5283-4fc2-81da-aec57a4e99ca-AlYhnSkbMQP9NvK7CqZRGJ60g1o3cdz8WiDumEeDxsOtXVw54HBfyLUrajTF2.jpg', 'public/uploads/images/product/detail/thumb/ca461245-5283-4fc2-81da-aec57a4e99ca-OivPtAfSMRYHQusF592qJ4oExzcLbgky0Kr1j6DZ7VwUW3XCdn8hBNmaTeGDl.jpg', 22, '2024-07-12 11:15:11'),
(65, 'edaf2ac5-e83a-4de4-97e0-e7bd03d061a5', 'public/uploads/images/product/detail/edaf2ac5-e83a-4de4-97e0-e7bd03d061a5-OSizbkwZQjoEdxy8TXPsUru2J9KGARamnBtYFWf0lN537h1Cc64HeqVMDgLvD.jpg', 'public/uploads/images/product/detail/thumb/edaf2ac5-e83a-4de4-97e0-e7bd03d061a5-hWXDw12oGxZFEjedlA45NTD6PYkanLztJvmUsOHC703BbV9yfgq8MSriuKRcQ.jpg', 22, '2024-07-12 11:15:11'),
(66, 'dacf3c8f-454c-401e-9890-4f84ec8b33bc', 'public/uploads/images/product/detail/dacf3c8f-454c-401e-9890-4f84ec8b33bc-M1eyOnLbQaBvJNq2ADdRCmloxu589gTED7rjF0kYXUGcZt4s3VHzihKwW6fPS.jpg', 'public/uploads/images/product/detail/thumb/dacf3c8f-454c-401e-9890-4f84ec8b33bc-hv9yO7YrBD42uC6Dz5Sl8PqEjaT0eHbAVnKJGoLtR3xWwUNcd1miFfZQgMkXs.jpg', 23, '2024-07-12 11:22:16'),
(67, '805bd0a0-68bf-4d06-8d14-43cb3f98632e', 'public/uploads/images/product/detail/805bd0a0-68bf-4d06-8d14-43cb3f98632e-u6b9svwGrQfzYT530BtNhZj2dLHgOxoV8Jic4RyUDX1ACEFmkeWPa7DlnKSMq.jpg', 'public/uploads/images/product/detail/thumb/805bd0a0-68bf-4d06-8d14-43cb3f98632e-VgDh0c1Fakj3tXzqfsBu5DKmGAUHRP7W6wdS2JNxMryETQCl8Yvio49nObeLZ.jpg', 23, '2024-07-12 11:22:16'),
(68, 'b7d18b1a-845d-40cc-a783-b3b756bf1598', 'public/uploads/images/product/detail/b7d18b1a-845d-40cc-a783-b3b756bf1598-x3j0FfzOb8hUP1Glo2qQM7mduSNygkKWHE6ZVcXC4TYDsDJARBw9ranLievt5.jpg', 'public/uploads/images/product/detail/thumb/b7d18b1a-845d-40cc-a783-b3b756bf1598-HsVdwjFMAeNC8hZnro69kRQ3DgaqxclLt7zUPvbO0uS5BTXGfJmW1Ei2YD4yK.jpg', 23, '2024-07-12 11:22:16'),
(69, '87b49635-2376-4854-9d3e-660fd0ad0a6f', 'public/uploads/images/product/detail/87b49635-2376-4854-9d3e-660fd0ad0a6f-nioOsRMD9qtVPYevXlKxkdaH7yABh54bZ1w8TJDuL26QUEWjCfFcGNzmrS3g0.jpg', 'public/uploads/images/product/detail/thumb/87b49635-2376-4854-9d3e-660fd0ad0a6f-kwoNOiQWPFLC5XsREnM4TB1KlADmyx7dar9ZHefVzvu6UD0bJS3Y8qtjGgh2c.jpg', 23, '2024-07-12 11:22:16'),
(70, '13740bdd-f6d8-47b3-a960-e8478a59720d', 'public/uploads/images/product/detail/13740bdd-f6d8-47b3-a960-e8478a59720d-LGeS7kuivUOMCcdmF2yZsYaA4tKnTgfNbJB5r8z9R16oDlw0qhQxHjEDPVXW3.jpg', 'public/uploads/images/product/detail/thumb/13740bdd-f6d8-47b3-a960-e8478a59720d-vNxeSlj7mF0O6kgiLcr2aDBw4YWX5odsVZQqfnHMJPty1G3DAET8uK9RbCUhz.jpg', 24, '2024-07-12 11:33:06'),
(71, 'da088c2a-a519-4264-b2b9-b7111c08057c', 'public/uploads/images/product/detail/da088c2a-a519-4264-b2b9-b7111c08057c-DLvgNAkxuMXSJFcRGTrZqoB07QlWVDEKf8623Hmthe1C5w9nY4sdiUzjOybaP.jpg', 'public/uploads/images/product/detail/thumb/da088c2a-a519-4264-b2b9-b7111c08057c-fLkvqUiEPoMhSYD27KOmd1nlz48FXR0j3abWT6NuDZgJHt9xyerBGVwA5sQCc.jpg', 24, '2024-07-12 11:33:06'),
(72, '0ae839aa-8f62-44e7-8a50-4b9528bcef76', 'public/uploads/images/product/detail/0ae839aa-8f62-44e7-8a50-4b9528bcef76-QDCioNPktxT4zl9VgDBbJZsL52Kj0Uwqy3rfYhXecR6OA1aG8SnmvF7udEMWH.jpg', 'public/uploads/images/product/detail/thumb/0ae839aa-8f62-44e7-8a50-4b9528bcef76-fGCFMDlXZWY7P0EhbJvTtgwmOuDsRqSr65zNcna3ejKHQAx8L9Bo4y2dik1UV.jpg', 24, '2024-07-12 11:33:06'),
(73, '05c90c74-8735-491e-b50f-71539477b707', 'public/uploads/images/product/detail/05c90c74-8735-491e-b50f-71539477b707-rTbAN0lvPDxC7kK6tQmUEHgao3wun2hSVd8f4MYFXBjWJLszqDiZO1Gcey59R.jpg', 'public/uploads/images/product/detail/thumb/05c90c74-8735-491e-b50f-71539477b707-SAt7evBKMZTHglDsbO1EJXi0NUkFzw289P3nd4yLCq5cVWjrRaYuhQfmGox6D.jpg', 24, '2024-07-12 11:33:06'),
(74, '870fd663-a98c-4ac5-9d32-aeac1886e6a0', 'public/uploads/images/product/detail/870fd663-a98c-4ac5-9d32-aeac1886e6a0-lRqMyNonGVt3m9XDOhxcvH5rUbjdSegKAJ8aBYTLuP60kiECF2Q7swZDWz1f4.jpg', 'public/uploads/images/product/detail/thumb/870fd663-a98c-4ac5-9d32-aeac1886e6a0-mwNEdF43OPs8b6cixjCVyYSA1hLD9nKfvXMTBtH5ukzD0orGeqUJWg7Ql2RZa.jpg', 25, '2024-07-12 12:30:09'),
(75, '41d08a12-8cb5-48f5-9fff-faa1bfcd82b6', 'public/uploads/images/product/detail/41d08a12-8cb5-48f5-9fff-faa1bfcd82b6-aRVxj9gGfEn18y5wK6rZXtDvFS2Mz0DOHiUYbleCW3dcBTqhmLouJkAsPQ4N7.jpg', 'public/uploads/images/product/detail/thumb/41d08a12-8cb5-48f5-9fff-faa1bfcd82b6-6UuZrlLv1NaPkFR80bqhyKA3zs9wgOEDGC5VBMxiW4Xj7ncHQtSfd2JmDYeoT.jpg', 25, '2024-07-12 12:30:10'),
(76, 'a35b0ee4-10f3-4ce7-af31-cc88d86528dd', 'public/uploads/images/product/detail/a35b0ee4-10f3-4ce7-af31-cc88d86528dd-TohDVeGif7bYnNKCjO9umz4R3ldcWt2Lk5EUAPars0FyHQ1wxBvDqX8Z6MSgJ.jpg', 'public/uploads/images/product/detail/thumb/a35b0ee4-10f3-4ce7-af31-cc88d86528dd-9jHkYDuPEgtGwQvZbsO21TiSyLfXVMCJl5qD0marh4zxKnAe7F8o3B6WNcURd.jpg', 25, '2024-07-12 12:30:10'),
(77, '3c59b986-074a-48e9-a0dd-0fcce519d48d', 'public/uploads/images/product/detail/3c59b986-074a-48e9-a0dd-0fcce519d48d-smUY7ECkugMeoP1N3TKVhn2RHdai9bBOSw0GXZ5yv6jcLDAzx4qQl8rFWDtJf.jpg', 'public/uploads/images/product/detail/thumb/3c59b986-074a-48e9-a0dd-0fcce519d48d-aVB28CqGE1fFnw9XOocHNz0P3T4sbjZLWuKgQr6lDAmR7UdtyhMJ5iYDSvxke.jpg', 25, '2024-07-12 12:30:10'),
(78, '71453f03-8ac6-4e58-923e-ca0096e515f3', 'public/uploads/images/product/detail/71453f03-8ac6-4e58-923e-ca0096e515f3-Da6Lqv03tyFQkdNiJhBsmU2CWXeMGRr4AYTflxVz89PgDcw5OjS1o7ZEnHKbu.jpg', 'public/uploads/images/product/detail/thumb/71453f03-8ac6-4e58-923e-ca0096e515f3-LGD54gXmrT1wtKVcAfNWCPS2bxynEMle3q7O8aUhskDzo9JFQiRHY6jvdBZ0u.jpg', 26, '2024-07-12 12:36:09'),
(79, 'b49fffd6-5468-4ba4-90c1-b726d48549bc', 'public/uploads/images/product/detail/b49fffd6-5468-4ba4-90c1-b726d48549bc-hNYWJ3kAaB4jT261cUSeCyLFzXd0uRvoQ7KDwx98Mni5fgqOEsmrtGbZDHlVP.jpg', 'public/uploads/images/product/detail/thumb/b49fffd6-5468-4ba4-90c1-b726d48549bc-kFmyij7tTsqEuGHCRc103QPv5oJg8SBbAWzNwdr9l6M4LZ2UDVDXYOhxneafK.jpg', 26, '2024-07-12 12:36:10'),
(80, '74d7694c-634b-4a42-9780-556285b72793', 'public/uploads/images/product/detail/74d7694c-634b-4a42-9780-556285b72793-cOYDAzKlEm3fR9t7HCQ8wTdbXPMLshZ14NuxijFy6rUgq2a05VGDvBoWkJneS.jpg', 'public/uploads/images/product/detail/thumb/74d7694c-634b-4a42-9780-556285b72793-3zCOHtLhe8Klk5XGo2iwDS0j1agTWAcuNbf7nZVqyvJRFMmEY4BPdDQsxrU69.jpg', 26, '2024-07-12 12:36:10'),
(81, 'de0fbea9-4aa6-4f69-9b1f-2c7d1b17ff37', 'public/uploads/images/product/detail/de0fbea9-4aa6-4f69-9b1f-2c7d1b17ff37-HJtvXMzux5yQbw3GLoTYOfrg9FdjDnEAC0aWm46hsVl2BN8SeUKkc1qDRZi7P.jpg', 'public/uploads/images/product/detail/thumb/de0fbea9-4aa6-4f69-9b1f-2c7d1b17ff37-b82ErYdfx16ZtSzGHCDyiDRc7O5XkmloVFQnheAP3BUs9vKNgjWM4Tu0LaqJw.jpg', 26, '2024-07-12 12:36:10'),
(82, 'ccb8a294-8830-47cc-9b57-9d51acf33b26', 'public/uploads/images/product/detail/ccb8a294-8830-47cc-9b57-9d51acf33b26-18VQZDNG5xtA2anog7kP9qs3lWeufS6iBDCwdcXTFMHmYrE4LjybOK0UJzvhR.jpg', 'public/uploads/images/product/detail/thumb/ccb8a294-8830-47cc-9b57-9d51acf33b26-ZKxML0P94dXsTvgDQm3bO1DoRn8jGVa6fizeBE7cAuJq2YytWFlrU5khHNwSC.jpg', 27, '2024-07-12 12:41:39'),
(83, '5fe175e0-8c20-4c7f-8eb0-498853245051', 'public/uploads/images/product/detail/5fe175e0-8c20-4c7f-8eb0-498853245051-erZsBG6TvUa7D3jQcKi1fDCboh9g8RW5ywXkPFlqtVJ4MAudLmESHONYnx2z0.jpg', 'public/uploads/images/product/detail/thumb/5fe175e0-8c20-4c7f-8eb0-498853245051-uDMjkX3JUx2ZCfsieVwLTGK7mg8lvqhdO6EHaWctnNS5B0r1DPbF4RQyYA9oz.jpg', 27, '2024-07-12 12:41:39'),
(84, '6fd2aee0-7973-4c31-a278-519852675115', 'public/uploads/images/product/detail/6fd2aee0-7973-4c31-a278-519852675115-6YDyDwif5EgFVd7xPLo89lNRrz3WaeXK4ZbvM1mtBjnschJUCuOQqA2GSTH0k.jpg', 'public/uploads/images/product/detail/thumb/6fd2aee0-7973-4c31-a278-519852675115-PZ1tl5hoyO4FVHkESALj7mrd62fgvTDCGxbquz0RMnJsXi3ec8wYNDUQKBWa9.jpg', 27, '2024-07-12 12:41:39'),
(85, 'd1fbf6fc-5886-43ea-999d-5a5aeb20f18d', 'public/uploads/images/product/detail/d1fbf6fc-5886-43ea-999d-5a5aeb20f18d-EGSF0js2ucQnYkomZMAyP5xdhOCl7RfewWHJTN6vLqXiDbK9a1z4U8DgBVrt3.jpg', 'public/uploads/images/product/detail/thumb/d1fbf6fc-5886-43ea-999d-5a5aeb20f18d-lxdhPB96S8vyDqVmwYD4QnGTtkaU01fZLK3r5R7HAceWMiCo2bXEOFguJjNsz.jpg', 27, '2024-07-12 12:41:39'),
(86, 'd15ba5b7-4889-485d-986f-87d434c8ff29', 'public/uploads/images/product/detail/d15ba5b7-4889-485d-986f-87d434c8ff29-zBCc0fO4Q698MxZRuJa5wHsinFqkh2yN3m7KUblATjXD1eDStovgrLVYWPdEG.jpg', 'public/uploads/images/product/detail/thumb/d15ba5b7-4889-485d-986f-87d434c8ff29-ZLWoSV0XmcueDTqxAz2FdvtHCfUJ68h3KMnN1Y5yg7Bab4sPjkwGERiQO9lDr.jpg', 28, '2024-07-12 12:44:26'),
(87, 'b5fd196e-0e77-4bf7-af10-981b0331c2ee', 'public/uploads/images/product/detail/b5fd196e-0e77-4bf7-af10-981b0331c2ee-3TEDwB4YUNeGlSshaWZdDb6vCKnrMk0t5VH98mcXu1xJy7FgjiLPRq2QAOofz.jpg', 'public/uploads/images/product/detail/thumb/b5fd196e-0e77-4bf7-af10-981b0331c2ee-zLt8NdQTR3hCU9sDc4VgxfqmlabAriWSEDZwOMkXuF1P5oBG02yHvK6nJj7Ye.jpg', 28, '2024-07-12 12:44:26'),
(88, 'b6203522-6092-43e8-a868-11d5edc60297', 'public/uploads/images/product/detail/b6203522-6092-43e8-a868-11d5edc60297-uv8hXzYUrKE6nMFQolSywHfsV1xD7mCcqZ50PWd32GTgaROAiDNe49jBLktJb.jpg', 'public/uploads/images/product/detail/thumb/b6203522-6092-43e8-a868-11d5edc60297-eYMaQ56cKijhEtFrCkZx37OwGyb8loDT1P42HJBvmgSVDWd0fuqns9AzUNXLR.jpg', 28, '2024-07-12 12:44:26'),
(89, '26f40f13-8272-4650-a19a-d4be175e3054', 'public/uploads/images/product/detail/26f40f13-8272-4650-a19a-d4be175e3054-gVsCBM1JfH2bFNrWi03oZe9EK6avkxn5PmQUt4DDOuGYcSwlhTd8j7XyzALRq.jpg', 'public/uploads/images/product/detail/thumb/26f40f13-8272-4650-a19a-d4be175e3054-mi6DtxDVs9JUelnG0gahTX2HAuRb7cyQYfzkdjBME54SoLKrF83CvNwWqP1ZO.jpg', 28, '2024-07-12 12:44:27'),
(94, '13000823-2d6f-4dc2-b9dd-80e8c439f4f4', 'public/uploads/images/product/detail/13000823-2d6f-4dc2-b9dd-80e8c439f4f4-2bdgVjFzGwLy8hie7la5fsDnmk9BSWqMJNKo4X0H6TZrPu1A3xcYvORCtQDUE.jpg', 'public/uploads/images/product/detail/thumb/13000823-2d6f-4dc2-b9dd-80e8c439f4f4-vDxKf0uO7XYjghHmSBz8tGyVEcqieaRoJM4ANCw69Lkd5W1n2sTrUQlPD3bFZ.jpg', 30, '2024-07-12 12:52:15'),
(95, 'c0683576-db5f-4439-8036-727851aaef77', 'public/uploads/images/product/detail/c0683576-db5f-4439-8036-727851aaef77-gkRlvcDeECoqQf98xbwrNW3UaTA7Sm4106HLF2juBX5VDKGtJYdhnMPZyOszi.jpg', 'public/uploads/images/product/detail/thumb/c0683576-db5f-4439-8036-727851aaef77-U9gJEuN2QDGH4zmjtXD7lBxPy8AR3qasSL6iwbYFdMWKTVvOkc0rCfone1h5Z.jpg', 30, '2024-07-12 12:52:15'),
(96, '532877e6-5a7d-40d8-ad84-8e56cb56a972', 'public/uploads/images/product/detail/532877e6-5a7d-40d8-ad84-8e56cb56a972-zb5jWLx6Srf9ahV0kCHeNunDvY8J2iUA1TwtFdPKgoEsBZyQ4mcqXDMO3Rl7G.jpg', 'public/uploads/images/product/detail/thumb/532877e6-5a7d-40d8-ad84-8e56cb56a972-yHNiCPrEl69Gd5T0bvSLMn7gDOFfeYtZABuozDmcK814jQ2qVkxsW3ahXJwRU.jpg', 30, '2024-07-12 12:52:16'),
(97, '47e453ab-6e96-4e65-b817-b5d7e54cafc4', 'public/uploads/images/product/detail/47e453ab-6e96-4e65-b817-b5d7e54cafc4-2nhbVKeG9mSDwfEZilY4gvu5d7CNMzyRj1BAsDkq8J3Ur0aLxcOTHWX6PtQoF.jpg', 'public/uploads/images/product/detail/thumb/47e453ab-6e96-4e65-b817-b5d7e54cafc4-bNKsmxQ06lFHDLtV5rUzXqj4iMdP9BuWn8hDfS12AgJkcayZ3RvoTOwYCGe7E.jpg', 30, '2024-07-12 12:52:16'),
(98, '4689152d-cd04-4cfd-b161-3c0b3fe18e54', 'public/uploads/images/product/detail/4689152d-cd04-4cfd-b161-3c0b3fe18e54-iKd15nmLjUN0VsDzGoy6lfwPxeWZEubYDtJ4vChBSFcOrkgTQAMRXa89237Hq.jpg', 'public/uploads/images/product/detail/thumb/4689152d-cd04-4cfd-b161-3c0b3fe18e54-W0yNXdaFC351gDnwm7ih89E2ZVfHObAq4oUlScsQzeJvTukMKBrLPYR6xDtjG.jpg', 29, '2024-07-12 12:54:03'),
(99, '7bd6055f-d2be-420c-919a-2310f478831d', 'public/uploads/images/product/detail/7bd6055f-d2be-420c-919a-2310f478831d-MkdDUQRPunGexKr89Bm5COWv7tTSwfaY3iEDJVocbZsHA6lX0NghqzLFj214y.jpg', 'public/uploads/images/product/detail/thumb/7bd6055f-d2be-420c-919a-2310f478831d-qjbQH59fW2RhCr6MGtxcn4L3YF7gBDSos1zEiy8vmOTDauNePkAXdwZl0VKJU.jpg', 29, '2024-07-12 12:54:03'),
(100, '69c78158-7988-4fb4-84d2-b2bf16116623', 'public/uploads/images/product/detail/69c78158-7988-4fb4-84d2-b2bf16116623-5zLtYHqwh7WyBal3OZvdRm1fVuMgXerjEGoN4csn6xJD2Q9DC08UibPSKFTkA.jpg', 'public/uploads/images/product/detail/thumb/69c78158-7988-4fb4-84d2-b2bf16116623-tmuZXNHf6oW4rQhb1iBwv0UPSD7YxM9gL3yTcjA2kzGDsnRVeKEOdJlFC8a5q.jpg', 29, '2024-07-12 12:54:04'),
(101, '3aedc5d0-8b43-42c7-8c86-18d698657167', 'public/uploads/images/product/detail/3aedc5d0-8b43-42c7-8c86-18d698657167-vPJeYDM8Fta4Ldym93TbGKucSi0nQ7Wkf56wXBgCjzrUH2ZlVoADOqEsR1hNx.jpg', 'public/uploads/images/product/detail/thumb/3aedc5d0-8b43-42c7-8c86-18d698657167-vY7bVsge0KGyAqtCUzONW1mjoxFDMSXlTLJHEn934dZrD2c685aBuRwkiPhQf.jpg', 29, '2024-07-12 12:54:04'),
(102, '2acfd334-d721-45c2-94b9-15968babb31e', 'public/uploads/images/product/detail/2acfd334-d721-45c2-94b9-15968babb31e-SqTNeJW8dMnLHRF2KyrzBt0XVovjcEQuis1PbfCw67Zx5m3YOUGgDa9l4AhkD.jpg', 'public/uploads/images/product/detail/thumb/2acfd334-d721-45c2-94b9-15968babb31e-Jn74DLaVheRGDsNPCBygAbdqS2wTr5HW9XYkMEm0zuFU13OiK6cZf8toxQjvl.jpg', 31, '2024-07-12 12:56:55'),
(103, 'd2f45fbf-80d4-4323-a83b-095feae74eec', 'public/uploads/images/product/detail/d2f45fbf-80d4-4323-a83b-095feae74eec-rVqX3T2kjYZ1JeLiwWKztQMG4DOnc8yHFSCdAbm6xB7RfgU0hNP9Ev5Dlasuo.jpg', 'public/uploads/images/product/detail/thumb/d2f45fbf-80d4-4323-a83b-095feae74eec-v2QLsxGgTeC4kqMUWftmz8yBDJ5DPKwaRV3HjNb7XcuiSY6r9AOonE1hFdlZ0.jpg', 31, '2024-07-12 12:56:56'),
(104, 'a5f7f81d-2a99-4e52-a0d2-58fa5072ac1a', 'public/uploads/images/product/detail/a5f7f81d-2a99-4e52-a0d2-58fa5072ac1a-g5BDCeXiVqHYkG3uxm2WRracwU09tMKSj41vs8NP7EJzolLfOn6ZdTbAyQFhD.jpg', 'public/uploads/images/product/detail/thumb/a5f7f81d-2a99-4e52-a0d2-58fa5072ac1a-Ldz5ukB7KQZPOoHt1qCvhmRgW4iDSyMalD8sUFfrENeVGjw09J6xb32ATcYnX.jpg', 31, '2024-07-12 12:56:56'),
(105, 'cc4dce2a-0c7c-4402-bda1-015172947cdd', 'public/uploads/images/product/detail/cc4dce2a-0c7c-4402-bda1-015172947cdd-ogDOZM1FXVKmPBHl7fsYqE6GxrdJkvbNuDi5jhzW8L9y2wc4eRUtAC3QTS0na.jpg', 'public/uploads/images/product/detail/thumb/cc4dce2a-0c7c-4402-bda1-015172947cdd-8eE5tBKfhgTm0SJx29NQkFWrulw1VPGdb6XU7YvDzsL4qOHocZDCRMnyji3aA.jpg', 31, '2024-07-12 12:56:56'),
(106, '3f3cf3a5-3ae3-4619-8ef7-48d9e5b07ad2', 'public/uploads/images/product/detail/3f3cf3a5-3ae3-4619-8ef7-48d9e5b07ad2-2v1gRVF3DlLdAZWxuEKoyeaGUz5BOXCJMj904T8DSYniH7fhwbPsQctN6rqmk.jpg', 'public/uploads/images/product/detail/thumb/3f3cf3a5-3ae3-4619-8ef7-48d9e5b07ad2-FkuxDoz1A2Z7f60qdtDheXY5GCPcOSVWbN4MvBs3wmL9RKJryjg8HQTnilEUa.jpg', 32, '2024-07-12 13:00:24'),
(107, 'ce53cf97-440b-4b95-b7ab-2f212979be75', 'public/uploads/images/product/detail/ce53cf97-440b-4b95-b7ab-2f212979be75-Ev9kBjzHaRdNUiDbqtTPr5g3S6m1ZAewF4fM0uOW2JcQVK87hCnLsxoXyGDYl.jpg', 'public/uploads/images/product/detail/thumb/ce53cf97-440b-4b95-b7ab-2f212979be75-fcUA54XzBWDnZiSmHM3gjLqe7RFhsVC9K6P2xJYTvaDydErGoN01Okblu8wtQ.jpg', 32, '2024-07-12 13:00:24'),
(108, 'e6aed5ae-ac4c-4d74-96cf-73dd9b5d6ba8', 'public/uploads/images/product/detail/e6aed5ae-ac4c-4d74-96cf-73dd9b5d6ba8-fOCrcWy9bGSvadDU0LTMH3wBsYi2QDmoEtu4h61RXNkZejAgxJKl75P8qnFzV.jpg', 'public/uploads/images/product/detail/thumb/e6aed5ae-ac4c-4d74-96cf-73dd9b5d6ba8-5WjDwMZFA0stygETm7floG9iU1vQhRNaBuCPDXHKqkc3d26rbSOz8YxnV4eJL.jpg', 32, '2024-07-12 13:00:24'),
(109, '59c15c22-ddb6-4c34-8691-10926ace2786', 'public/uploads/images/product/detail/59c15c22-ddb6-4c34-8691-10926ace2786-bSKZ9JeN7H1DCsy3YmlkDu2fFVz0oQ48njcEtLhWgi5rAUXOGxqTMRwBPad6v.jpg', 'public/uploads/images/product/detail/thumb/59c15c22-ddb6-4c34-8691-10926ace2786-W0outqeTL1hdC9EwsNOl5HFYSBJQMn6DRfXG7bZajU8x3VmAgczDryK2Pi4vk.jpg', 32, '2024-07-12 13:00:24'),
(110, '113bb944-388d-4ce1-9b19-6e011910a5bd', 'public/uploads/images/product/detail/113bb944-388d-4ce1-9b19-6e011910a5bd-PLRlbm5zHDF2u8XTnc3BV1gA0ZDtaJk6h9UwsqyCMSvOeiYxQfrE4d7GjoNWK.jpg', 'public/uploads/images/product/detail/thumb/113bb944-388d-4ce1-9b19-6e011910a5bd-o6y4k2LXcnaODW08K9xFBhm1DYvsTHjE3JfQiSZA5PldRuCUVNt7GewqgbMzr.jpg', 33, '2024-07-12 13:03:40'),
(111, '761a709a-320d-4f96-a428-b47664bd320c', 'public/uploads/images/product/detail/761a709a-320d-4f96-a428-b47664bd320c-btx7vdKLfFzeR9rHNuAo1ijJV82sDMU3DSyQ4mqGwZYgPckE5naTXOBW60Chl.jpg', 'public/uploads/images/product/detail/thumb/761a709a-320d-4f96-a428-b47664bd320c-CFN8GoJ01f5u9dB7KDqSWcsyR3OmkYDwXaVTnMjLb2eZgQ4PElAtxHhi6rvUz.jpg', 33, '2024-07-12 13:03:40'),
(112, '187687ee-51bf-4ce4-b82a-65be941d09f1', 'public/uploads/images/product/detail/187687ee-51bf-4ce4-b82a-65be941d09f1-MgQKU5n7Xv69elbYNOtD0dcAfWoJCDTajVxPsrqSZ4h13k2GFBEw8uyRmiHLz.jpg', 'public/uploads/images/product/detail/thumb/187687ee-51bf-4ce4-b82a-65be941d09f1-U3vKG8lqf2FDwMYTBiQs1nAytRZcOrudeJg6jWmkCoEDLXSN9xV70hz4PbH5a.jpg', 33, '2024-07-12 13:03:40'),
(113, '4cff8eed-3997-4531-9354-d20c845d48aa', 'public/uploads/images/product/detail/4cff8eed-3997-4531-9354-d20c845d48aa-4CJE1WYNrA6Sso2KDzbuTHOfQG9deV3kBqUv78wxMZnh0RcFytXj5migLlPDa.jpg', 'public/uploads/images/product/detail/thumb/4cff8eed-3997-4531-9354-d20c845d48aa-1XoyitWOjq7DUgFZlkuB4bDRxJQc0SCweH6Pvs2Amz3arGnMf8hVETYN9dL5K.jpg', 33, '2024-07-12 13:03:40'),
(114, '42bc5296-2faf-46bc-899f-92a38e0ee81b', 'public/uploads/images/product/detail/42bc5296-2faf-46bc-899f-92a38e0ee81b-rxCHYofD7z2Rj4viSub6XNnA0qQgMFsaG8l3tE5OW1Zdm9DTULycehkPwBVKJ.jpg', 'public/uploads/images/product/detail/thumb/42bc5296-2faf-46bc-899f-92a38e0ee81b-3oTYtm5sLg1zOS4kBF8uewQvPMWZUJfRxqiKNGC9yD2raHA7EnlXVDbc6j0dh.jpg', 34, '2024-07-12 13:05:55'),
(115, '09443cc2-847a-481f-bf45-60be2942d441', 'public/uploads/images/product/detail/09443cc2-847a-481f-bf45-60be2942d441-5umhAgxQiZNsbL3aYnj7tf6RGWTkyKFw2V0S4BerEqcHl1vdUMCDXo98OzPJD.jpg', 'public/uploads/images/product/detail/thumb/09443cc2-847a-481f-bf45-60be2942d441-aOovfn3q29lFTxGKLWd5BQAC8mewEsUR7i0z1S4cJNb6yjrDVuZgHYPtMkXhD.jpg', 34, '2024-07-12 13:05:56'),
(116, '7a29c56b-35ac-490d-b901-fb3e8d9e60b6', 'public/uploads/images/product/detail/7a29c56b-35ac-490d-b901-fb3e8d9e60b6-3NuDBOe62HKqSrh7E81R4fxDjvQiYMWotwA5LcX0UJylCGP9sbmzgnVTkZaFd.jpg', 'public/uploads/images/product/detail/thumb/7a29c56b-35ac-490d-b901-fb3e8d9e60b6-jo2LuZXTvHmDfn0eztYwy3CixSc7RadDFWbK6BMhlVNAPr5UsE9qOkQJ48G1g.jpg', 34, '2024-07-12 13:05:57'),
(117, '5cb523f8-6a81-446f-b9fc-e0a1b0b8296b', 'public/uploads/images/product/detail/5cb523f8-6a81-446f-b9fc-e0a1b0b8296b-jDYOglJWfPiT2M56mEGRehU7u9FCa8cL1oSXsAZwxkQr0NtHDqBV3y4dnvKbz.jpg', 'public/uploads/images/product/detail/thumb/5cb523f8-6a81-446f-b9fc-e0a1b0b8296b-VaGvmqDseZYhL6DiMcbnSB4X1rWEoly9FKATgt8uUfPHdxO35C7JRzQkj2w0N.jpg', 34, '2024-07-12 13:06:08'),
(118, 'cf8d9387-ed64-4e15-a912-2f58a603a365', 'public/uploads/images/product/detail/cf8d9387-ed64-4e15-a912-2f58a603a365-QP8K0zt6c57JD9a2RiLlTDnWHj4kBYbqAZreMuv3OhUdxySFEmCfsogXwGN1V.jpg', 'public/uploads/images/product/detail/thumb/cf8d9387-ed64-4e15-a912-2f58a603a365-8FrPBOKMmNDciLW5duZRVoCXvT6xSzGjHUbJ23YyhAn07QtwkDqeE1fgl9s4a.jpg', 35, '2024-07-12 13:08:43'),
(119, '7bd70c2a-0259-4fee-bf74-45e2d9d73d59', 'public/uploads/images/product/detail/7bd70c2a-0259-4fee-bf74-45e2d9d73d59-Tlzm6O1vnaG4oQU0d2fhyZbu5qt3WDkr9js8EDRiBNwAPHFLCxce7XgJVMKYS.jpg', 'public/uploads/images/product/detail/thumb/7bd70c2a-0259-4fee-bf74-45e2d9d73d59-hOEjTCrsxzgo8eaDS5VQG1lALtPvZniKMf7NXdBm96wHy34YRUcuqbJDWF20k.jpg', 35, '2024-07-12 13:08:43'),
(120, 'e5a434fe-602f-427f-b6d1-21684c81a601', 'public/uploads/images/product/detail/e5a434fe-602f-427f-b6d1-21684c81a601-e4BFd9gTvNQwmXifKZPtYcEDOjLyARk7oV0qS25D1us8zlbaJWx63HnCrGhMU.jpg', 'public/uploads/images/product/detail/thumb/e5a434fe-602f-427f-b6d1-21684c81a601-8dXNHuFeo2v6CYBy3KDDhjVrO5MZTatPGf91EnAlgJUxm4Qi0cwbkq7RzWLSs.jpg', 35, '2024-07-12 13:08:43'),
(121, 'd42be9e4-53d7-4495-b616-9a64bace7908', 'public/uploads/images/product/detail/d42be9e4-53d7-4495-b616-9a64bace7908-zyARgV6T0qcP7Y5mnb8U3LWDiaDeQtxHjd1BNv2hwSJXMKksfGEZ9oC4FOulr.jpg', 'public/uploads/images/product/detail/thumb/d42be9e4-53d7-4495-b616-9a64bace7908-KD8vaTdA9EXVeNL2gWfnFGzOUx3Pi1rlHCSkjcsQwJ40umbZR5MD7yhB6Ytqo.jpg', 35, '2024-07-12 13:08:43'),
(122, 'e8703389-0e60-4b81-9a50-d2ca0ef8d719', 'public/uploads/images/product/detail/e8703389-0e60-4b81-9a50-d2ca0ef8d719-qrbxBDTYeN9HMa2JKPWtEi8FsoR5Xc4A01dSzUkgl3LGCnQwOmZjfhyvV76uD.jpg', 'public/uploads/images/product/detail/thumb/e8703389-0e60-4b81-9a50-d2ca0ef8d719-29TvBgo6DGtUcWSJFqPwyn1MD3a4jbhEriZ7LmVKlACYHQOkusfNzeRdx5X08.jpg', 36, '2024-07-12 13:18:20'),
(123, 'b31c820c-b760-4a85-b03d-070e9180a0a6', 'public/uploads/images/product/detail/b31c820c-b760-4a85-b03d-070e9180a0a6-0y2YrOtKzluAW8XdqV1scHijECme7Q5gRPMvUfTNJLbk3nShD6GFoBx9Z4Dwa.jpg', 'public/uploads/images/product/detail/thumb/b31c820c-b760-4a85-b03d-070e9180a0a6-k8SAgvbDx4D9tsi31eunc0UozLNQEGaPRhqFY7M2ymXZrOBfdl6wWTKjJ5VCH.jpg', 36, '2024-07-12 13:18:20'),
(124, 'ae7b27fb-1eb2-4e02-96da-f62101f467a1', 'public/uploads/images/product/detail/ae7b27fb-1eb2-4e02-96da-f62101f467a1-XjkycZD5h0DVr7iRNGUs9E1Qe2m8TbvgWoMCzFxnKHP6qAlOta4fLwYSB3udJ.jpg', 'public/uploads/images/product/detail/thumb/ae7b27fb-1eb2-4e02-96da-f62101f467a1-xESNDk7BW9Vb35Loci0CndhvmRUeOfyHlqYFsT8zg1jtAXu26aD4GPZKrQJMw.jpg', 36, '2024-07-12 13:18:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cateID` int(11) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL,
  `contents` longtext COLLATE utf8_unicode_ci NOT NULL,
  `properties` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `slug`, `cateID`, `price`, `image`, `thumb`, `publish`, `contents`, `properties`, `created_at`, `updated_at`) VALUES
(21, 'Nike Vaporfly 3', 'nike-vaporfly-3', 41, 6000000, 'public/uploads/images/product/6690ab8e6cef7-Mk6QVK2SUfxsRP7aWrBE9ozLNOFhwgv5nmCbDXYZlcyqj80uATtiHJe1G4Dd3.png', 'public/uploads/images/product/thumb/6690ab8e6cef7-3klUnGE5mrczCNRf4tQaTJwObv72MBWXjHeyDSqouA81YZx9iDh0gFLd6KVsP.png', 1, '<h2><strong><span style=\"font-size:14px\">Mang đến cho bạn tốc độ trong ng&agrave;y đua để chinh phục mọi khoảng c&aacute;ch, Nike Vaporfly 3 được tạo ra d&agrave;nh cho những người theo đuổi, những tay đua v&agrave; những người c&oacute; tốc độ cao, những người kh&ocirc;ng thể từ chối cảm gi&aacute;c hồi hộp khi theo đuổi. Ch&uacute;ng t&ocirc;i đ&atilde; l&agrave;m lại phần dẫn đầu của g&oacute;i gi&agrave;y si&ecirc;u hạng v&agrave; điều chỉnh động cơ b&ecirc;n dưới để gi&uacute;p bạn theo đuổi th&agrave;nh t&iacute;ch c&aacute; nh&acirc;n từ cự ly 10 km đến chạy marathon. Từ những vận động vi&ecirc;n chạy ưu t&uacute; cho đến những người mới tham gia đua xe, chiếc xe ngựa đua đường trường linh hoạt n&agrave;y d&agrave;nh cho những người coi tốc độ l&agrave; cửa ng&otilde; để đi được nhiều dặm hơn v&agrave; những đỉnh cao dường như kh&ocirc;ng thể vượt qua.</span></strong></h2>\r\n\r\n<p><span style=\"font-size:14px\"><strong><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/pdp.png\" style=\"height:963px; width:1600px\" /></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Propelling You Forwards</strong></h3>\r\n\r\n<p style=\"text-align:center\">A full-length carbon fibre flyplate provides a stiff and propulsive feel.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/pdp%20(1).png\" style=\"height:963px; width:1600px\" /></p>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t Li\\u1ec7u\",\"value\":\"Cao Su\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an Nano\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"V\\u1eadt li\\u1ec7u t\\u00e1i ch\\u1ebf\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ef1 nhi\\u00ean\"}]', '2024-07-12 11:05:34', '2024-07-12'),
(22, 'Nike Cortez SP', 'nike-cortez-sp', 41, 2000000, 'public/uploads/images/product/6690ae6730c04-wNG14MJWCF0kZeUjLhuTqavo2EH5Rz7iXynSs8mDtbfDOcYxrPAKV6lQdgB39.jpg', 'public/uploads/images/product/thumb/6690ae6730c04-fWcaM8l9O4DVLsq5E6ZoBNJYd2jRFHXtbveig7mrG3x1AunTywzPkDhUQ0KSC.jpg', 1, '<pre>\r\n\r\n&nbsp;</pre>\r\n\r\n<p><span style=\"font-size:16px\"><strong><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/ce513797b4de28530c24.jpg\" style=\"height:1200px; width:960px\" /></strong></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Từ di sản chạy bộ đến hiện tượng thời trang, sức hấp dẫn cổ điển của Nike Cortez, đế giữa mềm xốp v&agrave; chi tiết răng cưa mang đến sự thoải m&aacute;i cổ điển từ thập kỷ n&agrave;y sang thập kỷ kh&aacute;c. Th&ecirc;m v&agrave;o đ&oacute;, thương hiệu Union được thể hiện xuy&ecirc;n suốt trong suốt qu&aacute; tr&igrave;nh k&yacute; kết thỏa thuận.</strong></span></h2>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9 \",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i \"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an \"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"V\\u1ea3i\"},{\"name\":\"\\u0110\\u1ebf gi\\u1ea7y\",\"value\":\"V\\u1ea3i t\\u00e1i ch\\u1ebf\"}]', '2024-07-12 11:17:43', '2024-07-12'),
(23, 'Air Jordan 1 Low SE', 'air-jordan-1-low-se', 41, 2000000, 'public/uploads/images/product/6690b04cc5bd4-MAj1edECtwN8hBKc4O7S0mqaHQrlfg2ZRGu3vozYXU9i5kDx6JWTysDLbnFVP.jpg', 'public/uploads/images/product/thumb/6690b04cc5bd4-sRAx0fyHcadYzZJWFCjoTBnNhD6t1VQP74Lu2wirUbEXvSmqg8DkM3G5e9lKO.jpg', 1, '<h2><strong>Lu&ocirc;n mới mẻ v&agrave; kh&ocirc;ng bao giờ lỗi mốt, Air Jordan 1 Low l&agrave; một trong những đ&ocirc;i gi&agrave;y thể thao mang t&iacute;nh biểu tượng nhất mọi thời đại. Phi&ecirc;n bản SE n&agrave;y c&oacute; tất cả c&aacute;c chi tiết được y&ecirc;u th&iacute;ch, từ lớp phủ được kh&acirc;u d&agrave;y cho đến logo Wings ở g&oacute;t ch&acirc;n, được t&ocirc; điểm bằng c&aacute;ch phối m&agrave;u mới đầy hương vị.</strong></h2>\r\n\r\n<p><strong><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/air-jordan-1-retro-low-metallic.jpg\" style=\"height:1200px; width:1600px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7\",\"value\":\"Tho\\u00e1t kh\\u00ed ch\\u1ee7 \"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 11:25:48', '0000-00-00'),
(24, 'Jordan Stadium 90', 'jordan-stadium-90', 41, 2000000, 'public/uploads/images/product/6690bd5d47a10-ZqACOhdrgDBGlfn0L6mvc29zJYK8XwHoSsEbaP1VyNueTkiWtMFQxRU3754Dj.jpg', 'public/uploads/images/product/thumb/6690bd5d47a10-lvAq6r7WRZ3mwGkSbdugHLPJVUOYa4Nh5inzQMEjDF0o1X8efxBDyKtCc29sT.jpg', 1, '<p><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/Jordan%20Stadium%2090%20Women\'s%20Shoes_%20Nike_com(1).mp4\" /><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/jordan-stadium-90-red-stardust-f.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<h1>Ph&aacute;t triển tr&ograve; chơi của bạn. Stadium 90 lấy c&aacute;c yếu tố từ những người vĩ đại v&agrave; biến ch&uacute;ng th&agrave;nh thứ g&igrave; đ&oacute; ho&agrave;n to&agrave;n độc đ&aacute;o. Kết hợp c&aacute;c yếu tố thiết kế mang t&iacute;nh biểu tượng từ AJ1 v&agrave; AJ5, đ&acirc;y l&agrave; mẫu gi&agrave;y cổ điển mới tập trung v&agrave;o sự thoải m&aacute;i, độ bền v&agrave; độ ổn định.</h1>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i \"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"Tho\\u00e1t kh\\u00ed ch\\u1ee7 \"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"V\\u1eadt li\\u1ec7u t\\u00e1i ch\\u1ebf\"},{\"name\":\"\\u0110\\u1ebf gi\\u1ea7y\",\"value\":\"V\\u1ea3i t\\u00e1i ch\\u1ebf\"}]', '2024-07-12 12:21:33', '0000-00-00'),
(25, 'Air Jordan 1 Mid', 'air-jordan-1-mid', 41, 4000000, 'public/uploads/images/product/6690bff94713b-bPWus9zYkDEDRT7mN4hXejoO8CtgqfJca2V6AniwvQGMrH0U51xS3LyKBFdlZ.jpg', 'public/uploads/images/product/thumb/6690bff94713b-2j9qW8kyONzwYlBUGveQa3LoJfsFhMCnXbrxtTVD4dP1ZgHc6mR7AD5S0iuEK.jpg', 1, '<h1>Lấy cảm hứng từ chiếc AJ1 nguy&ecirc;n bản, phi&ecirc;n bản tầm trung n&agrave;y duy tr&igrave; vẻ ngo&agrave;i mang t&iacute;nh biểu tượng m&agrave; bạn y&ecirc;u th&iacute;ch trong khi c&aacute;c m&agrave;u sắc lựa chọn v&agrave; chất liệu da sắc n&eacute;t mang lại bản sắc ri&ecirc;ng biệt.</h1>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/fposter%2Csmall%2Cwall_texture%2Cprodu.jpg\" style=\"height:1000px; width:750px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i \"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an Nano\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 12:32:41', '0000-00-00'),
(26, 'PUMA Velocity NITRO™ 3', 'puma-velocity-nitro™-3', 43, 3999999, 'public/uploads/images/product/6690c14f388af-7ZYQaUdmsv2eRkAq3xfX4LogDJGiOClhnMWTrBSH1byFzKV0N9ujwDt56E8Pc.jpg', 'public/uploads/images/product/thumb/6690c14f388af-Fi0gtovnC2MPcYJZVjkWN4bsTDm3QLz8l7rDhUG65EBxaf9eKXdSHuOw1AqyR.jpg', 1, '<h1><strong>Đ&ocirc;i gi&agrave;y chạy bộ Velocity NITRO&trade; 3 của Puma sẽ l&agrave; trợ thủ đắc lực trong c&aacute;c buổi luyện tập ho&agrave;n hảo của bạn. Kh&ocirc;ng chỉ mang thiết kế linh hoạt v&agrave; thoải m&aacute;i, item n&agrave;y c&ograve;n sở hữu c&ocirc;ng nghệ NITRO&trade; ti&ecirc;n tiến, đem lại khả năng giảm chấn v&agrave; phản hồi tốt hơn bao giờ hết. Ngo&agrave;i ra, với sự kết hợp của đế ngo&agrave;i PUMAGRIP bằng cao su nhẹ cung cấp độ b&aacute;m tốt, Velocity NITRO&trade; 3 sẽ gi&uacute;p bạn c&oacute; những c&uacute; bật ch&acirc;n đầy mạnh mẽ.</strong></h1>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>Thương hiệu: Puma</strong></h2>\r\n\r\n<h2><strong>Xuất xứ: Đức<br />\r\nGiới t&iacute;nh: Nam<br />\r\nKiểu d&aacute;ng: Gi&agrave;y chạy bộ&nbsp;<br />\r\nM&agrave;u sắc: Black</strong></h2>\r\n\r\n<h2><strong>Chất liệu: 80% Textile, 20% Synthetic</strong></h2>\r\n\r\n<h2><strong>Đế giữa:&nbsp;100% Synthetic</strong></h2>\r\n\r\n<h2><strong>Đế ngo&agrave;i:&nbsp;85% Rubber, 15% Textile</strong></h2>\r\n\r\n<h2><strong>L&oacute;t gi&agrave;y:&nbsp;100% TextileThiết kế:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Phom &ocirc;m ch&acirc;n, dễ d&agrave;ng di chuyển</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>NITRO&trade;: C&ocirc;ng nghệ ti&ecirc;n tiến của PUMA mang lại sự &ecirc;m &aacute;i khi hoạt động</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>PUMAGRIP: Hợp chất cao su bền bỉ, độ&nbsp;đ&agrave;n hồi tốt</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế ngo&agrave;i bằng cao su chống trơn trượt, m&agrave;i m&ograve;n cao</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Trang tr&iacute; m&agrave;u nổi bật ở đế đầy trẻ trung kết hợp mảng m&agrave;u ở th&acirc;n gi&agrave;y độc đ&aacute;o&nbsp;</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&agrave;u sắc hiện đại, dễ phối với nhiều trang phục v&agrave; phụ kiện kh&aacute;c</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Logo: Chi tiết logo được in ở lưỡi gi&agrave;y v&agrave; lớp l&oacute;t trong&nbsp;<br />\r\nMũi gi&agrave;y tr&ograve;n, đế vừa&nbsp;<br />\r\nD&acirc;y quai: D&acirc;y thắt mảnh, c&oacute; thể điều chỉnh dễ d&agrave;ng &nbsp;&nbsp;<br />\r\nTho&aacute;ng kh&iacute;: C&oacute; lớp l&oacute;t tho&aacute;ng kh&iacute; &nbsp;<br />\r\nTh&iacute;ch hợp d&ugrave;ng trong c&aacute;c dịp: Tập luyện thể thao, hoạt động ngo&agrave;i trời,...<br />\r\nXu hướng theo m&ugrave;a: Sử dụng được tất cả c&aacute;c m&ugrave;a trong năm</strong></h2>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/shopping/public/cpanel/ckfinder/userfiles/files/puma/01_309701_9_11d922ee9685417285ad.jpg\" style=\"height:1200px; width:971px\" /></p>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"\\u0110\\u1ee9c\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"PUMAGRIP:\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"C\\u00f3 l\\u1edbp l\\u00f3t tho\\u00e1ng kh\\u00ed \\u00a0\"}]', '2024-07-12 12:38:23', '2024-07-12'),
(27, 'Deviate NITRO Elite 2 Running', 'deviate-nitro-elite-2-running', 43, 2799000, 'public/uploads/images/product/6690c2467dcb3-5tATBKZsnLmjzw1qduGvFroECgkMUOiD8HXY9WbDVNS3hl24e0y7QPRac6Jfx.jpg', 'public/uploads/images/product/thumb/6690c2467dcb3-CAnKqFcdBaLDWV8QNO5yjlmDbS4JXEMtfY2oHGex0w6hs7u3irTZURk1Pz9vg.jpg', 1, '<h2><strong>Khởi động tuần mới với những bước chạy bền bỉ trong đ&ocirc;i gi&agrave;y Deviate NITRO Elite 2 Running. Nhờ sở hữu c&ocirc;ng nghệ NITRO&nbsp;Elite độc quyền, đ&ocirc;i gi&agrave;y mang đến sự linh hoạt hơn, &ecirc;m &aacute;i hơn, vững v&agrave;ng hơn.&nbsp;Đặc biệt, với vẻ ngo&agrave;i được ho&agrave;n thiện bằng những gam m&agrave;u tương phản nổi bật, Deviate NITRO Elite 2 Running sẽ sẵn s&agrave;ng c&ugrave;ng bạn bức ph&aacute; mọi cung đường.</strong></h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>Thương hiệu: Puma<br />\r\nXuất xứ: Đức<br />\r\nGiới t&iacute;nh: Nam<br />\r\nKiểu d&aacute;ng: Gi&agrave;y chạy bộ<br />\r\nM&agrave;u sắc:&nbsp;Blue, Green, White/Blue<br />\r\nChất liệu: Momo mesh<br />\r\nThiết kế:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Phom &ocirc;m ch&acirc;n, dễ d&agrave;ng di chuyển</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>C&ocirc;ng nghệ NITRO Elite nhẹ nh&agrave;ng v&agrave; &ecirc;m &aacute;i</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế cao su gi&uacute;p cung cấp lực k&eacute;o tr&ecirc;n mọi bề mặt</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Gam m&agrave;u hiện đại dễ d&agrave;ng phối với nhiều trang phục v&agrave; phụ kiện</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Logo: Được in tr&ecirc;n l&oacute;t trong &nbsp;<br />\r\nMũi gi&agrave;y tr&ograve;n, đế thấp<br />\r\nD&acirc;y quai: D&acirc;y thắt mảnh, c&oacute; thể điều chỉnh dễ d&agrave;ng &nbsp;&nbsp;<br />\r\nTho&aacute;ng kh&iacute;: C&oacute; lớp l&oacute;t tho&aacute;ng kh&iacute; &nbsp;<br />\r\nTh&iacute;ch hợp d&ugrave;ng trong c&aacute;c dịp: Tập luyện thể thao, hoạt động ngo&agrave;i trời,...<br />\r\nXu hướng theo m&ugrave;a: Sử dụng được tất cả c&aacute;c m&ugrave;a trong năm</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"\\u0110\\u1ee9c\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an \"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"V\\u1ea3i t\\u00e1i ch\\u1ebf\"}]', '2024-07-12 12:42:30', '2024-07-12'),
(28, 'Velocity NITRO 2 Fade Running', 'velocity-nitro-2-fade-running', 43, 1499000, 'public/uploads/images/product/6690c2deaff8f-COxDlqDfuAZ3KiH79adGQFR6S5XoPcU2rnMBYVt8hwTvkN0WELbm4gJy1sejz.jpg', 'public/uploads/images/product/thumb/6690c2deaff8f-K15zjrSDAe782BwLVxysTbWPn4hZf9glqGYa3FRXtmvMcCoduEikDHQ0N6OUJ.jpg', 1, '<ul>\r\n	<li>\r\n	<h2><strong>Chất liệu: Vải dệt</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Kiểu d&aacute;ng gi&agrave;y thể thao nam cổ thấp thời trang</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Phom &ocirc;m ch&acirc;n,&nbsp;dễ d&agrave;ng di chuyển</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>D&acirc;y buộc ch&eacute;o c&ugrave;ng tone m&agrave;u</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Phối logo Puma Cat nổi bật ở mũi gi&agrave;y</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>NITRO&trade;: C&ocirc;ng nghệ ti&ecirc;n tiến của PUMA mang lại sự &ecirc;m &aacute;i khi hoạt động</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>PUMAGRIP: Hợp chất cao su bền bỉ, độ&nbsp;đ&agrave;n hồi tốt</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế cao su gi&uacute;p&nbsp;cung cấp lực k&eacute;o tr&ecirc;n mọi bề mặt</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Gam m&agrave;u hiện đại dễ d&agrave;ng phối với nhiều trang phục v&agrave; phụ kiện</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Xuất xứ thương hiệu: Đức</strong></h2>\r\n	</li>\r\n</ul>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"\\u0110\\u1ee9c\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"Ch\\u1ed1ng s\\u1ed1c\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ef1 nhi\\u00ean\"}]', '2024-07-12 12:45:02', '2024-07-12'),
(29, 'PUMA sneakers unisex cổ thấp Caven 2.0 Lux', 'puma-sneakers-unisex-co-thap-caven-2-0-lux', 43, 1999000, 'public/uploads/images/product/6690c4fe07ec5-utTKY5cNU1LPfyvSV0QdObxAEGoZDMBjzXFkClWsH3wD8hJina6qrR97mge42.jpg', 'public/uploads/images/product/thumb/6690c4fe07ec5-kl7mCDnJPa4Ebgj3iuHeqtUoARx85B92ONrvXWKVFMS1LdGyZzswQhY0f6cDT.jpg', 1, '<h2><strong>L&agrave;m chủ s&acirc;n đấu với phong c&aacute;ch retro c&ugrave;ng đ&ocirc;i gi&agrave;y sneakers Caven 2.0 Lux. Được thiết kế từ sự kết hợp h&agrave;i h&ograve;a giữa chất liệu da cao cấp c&ugrave;ng phần đế giữa xếp lớp mang đến sự thoải m&aacute;i tuyệt đối, ch&iacute;nh v&igrave; thế, d&ugrave; l&agrave; vượt qua hậu vệ hay &uacute;p rổ, những chi tiết tinh tế tr&ecirc;n kiểu d&aacute;ng cổ điển của Caven 2.0 Lux&nbsp;đều sẽ gi&uacute;p bạn n&acirc;ng tầm mọi phong c&aacute;ch chơi.</strong><br />\r\n&nbsp;</h2>\r\n\r\n<h2><strong>Thương hiệu: Puma</strong></h2>\r\n\r\n<h2><strong>Xuất xứ: Đức<br />\r\nGiới t&iacute;nh: Unisex<br />\r\nKiểu d&aacute;ng: Gi&agrave;y sneakers cổ thấp&nbsp;<br />\r\nM&agrave;u sắc: White/Black, White/Green&nbsp;</strong></h2>\r\n\r\n<h2><strong>Chất liệu: 52.32% Synthetic, 45.16% Cow leather, 2.52% Textile</strong></h2>\r\n\r\n<h2><strong>Lớp l&oacute;t:&nbsp;100% Textile</strong></h2>\r\n\r\n<h2><strong>Thiết kế:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Phom gi&agrave;y cổ thấp &ocirc;m ch&acirc;n thời thượng&nbsp;</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đệm&nbsp;SOFTFOAM+&nbsp;mang lại khả năng đ&agrave;n hồi vượt trội&nbsp;&nbsp;</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế ngo&agrave;i&nbsp;bằng cao su chống trơn trượt, m&agrave;i m&ograve;n cao</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Phối m&agrave;u hiện đại, dễ phối với nhiều trang phục v&agrave; phụ kiện kh&aacute;c</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Logo: Chi tiết logo được in ở lưỡi gi&agrave;y, th&acirc;n gi&agrave;y v&agrave; lớp l&oacute;t trong&nbsp;<br />\r\nMũi gi&agrave;y tr&ograve;n, đế vừa&nbsp;<br />\r\nD&acirc;y quai: D&acirc;y gi&agrave;y c&oacute; thể điều chỉnh dễ d&agrave;ng<br />\r\nTho&aacute;ng kh&iacute;: C&oacute; lớp l&oacute;t tho&aacute;ng kh&iacute; &nbsp;<br />\r\nTh&iacute;ch hợp d&ugrave;ng trong c&aacute;c dịp: Đi chơi, đi l&agrave;m, đi ăn,...<br />\r\nXu hướng theo m&ugrave;a: Sử dụng được tất cả c&aacute;c m&ugrave;a trong năm</strong></h2>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"\\u0110\\u1ee9c\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"PUMAGRIP\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 12:47:30', '2024-07-12'),
(30, 'PUMA sneakers unisex cổ thấp Palermo LTH', 'puma-sneakers-unisex-co-thap-palermo-lth', 43, 2499900, 'public/uploads/images/product/6690c4a939497-NXDSgiLfBVH3rFt8K2Jl40vYMDZGEnCmu6j7QhTWebU1ksoqdc5xOwyR9azPA.jpg', 'public/uploads/images/product/thumb/6690c4a939497-OCkBReK2MnhEAbyUg0N6vqDPzZmSctruld3DX9s4jLiHw51fT87JxVaQYWoGF.jpg', 1, '<h2><strong>Lần đầu ti&ecirc;n xuất hiện v&agrave;o những năm 80, đ&ocirc;i gi&agrave;y sneakers&nbsp;Palermo đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh item kh&ocirc;ng thể thiếu của c&aacute;c cổ động vi&ecirc;n tr&ecirc;n kh&aacute;n đ&agrave;i b&oacute;ng đ&aacute; Anh. Giờ đ&acirc;y, với sự t&aacute;i hiện gần như nguy&ecirc;n bản, Palermo hứa hẹn sẽ kh&ocirc;ng chỉ mang lại những cảm x&uacute;c ho&agrave;i niệm m&agrave; c&ograve;n hứa hẹn sẽ c&ugrave;ng bạn chinh phục đam m&ecirc;.</strong></h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>Thương hiệu: Puma</strong></h2>\r\n\r\n<h2><strong>Xuất xứ: Đức<br />\r\nGiới t&iacute;nh: Unisex<br />\r\nKiểu d&aacute;ng: Gi&agrave;y sneakers cổ thấp&nbsp;<br />\r\nM&agrave;u sắc: Green, Blue, Black, Beige</strong></h2>\r\n\r\n<h2><strong>Chất liệu: Leather, Suede &nbsp;Thiết kế:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Phom gi&agrave;y cổ thấp&nbsp;&ocirc;m ch&acirc;n thời thượng&nbsp;</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế&nbsp;cao su phẳng&nbsp;chống trơn trượt, m&agrave;i m&ograve;n cao&nbsp;</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Phối&nbsp;m&agrave;u hiện đại, dễ phối với nhiều trang phục v&agrave; phụ kiện kh&aacute;c</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Logo: Chi tiết logo được trang tr&iacute; ở th&acirc;n gi&agrave;y v&agrave; lớp l&oacute;t trong&nbsp;<br />\r\nMũi gi&agrave;y tr&ograve;n, đế vừa&nbsp;<br />\r\nD&acirc;y quai: D&acirc;y gi&agrave;y c&oacute; thể điều chỉnh dễ d&agrave;ng<br />\r\nTho&aacute;ng kh&iacute;: C&oacute; lớp l&oacute;t tho&aacute;ng kh&iacute; &nbsp;<br />\r\nTh&iacute;ch hợp d&ugrave;ng trong c&aacute;c dịp: Đi chơi, đi l&agrave;m, đi ăn,...<br />\r\nXu hướng theo m&ugrave;a: Sử dụng được tất cả c&aacute;c m&ugrave;a trong năm</strong></h2>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"\\u0110\\u1ee9c\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"PUMAGRIP\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"V\\u1eadt li\\u1ec7u t\\u00e1i ch\\u1ebf\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 12:52:41', '2024-07-12'),
(31, 'Adidas Samba Messi', 'adidas-samba-messi', 42, 10000000, 'public/uploads/images/product/6690c5d768e40-3R48J7GsyBWMlU09ZXSzmHtTO1PFxrYgkn6uCfchDDvoQ5bNAEdwjaKe2iqVL.jpg', 'public/uploads/images/product/thumb/6690c5d768e40-eqiaFAtQlBVx0ZOn65vjh2CGDXd4SDg3owNmUfWRPJbHrYzy7sk1LTcK9u8EM.jpg', 1, '<h2><strong>Thể hiện chất Messi. Đ&ocirc;i gi&agrave;y đ&aacute; b&oacute;ng adidas Samba phi&ecirc;n bản giới hạn n&agrave;y khoe trọn logo iconic của GOAT tr&ecirc;n lưỡi g&agrave;. Th&acirc;n gi&agrave;y bằng da mềm mại gi&uacute;p đ&ocirc;i ch&acirc;n bạn lu&ocirc;n thoải m&aacute;i suốt những pha b&oacute;ng gay cấn, c&ugrave;ng mũi gi&agrave;y bằng da lộn chống chịu ch&agrave; x&aacute;t v&agrave; m&ograve;n r&aacute;ch. B&ecirc;n dưới l&agrave; đế ngo&agrave;i bằng cao su tạo độ ổn định ở cả trong v&agrave; ngo&agrave;i s&acirc;n futsal.</strong></h2>\r\n\r\n<h2><strong>TH&Ocirc;NG SỐ</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>D&aacute;ng regular fit</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>C&oacute; d&acirc;y gi&agrave;y</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Th&acirc;n gi&agrave;y bằng da v&agrave; mũi gi&agrave;y chữ T bằng da lộn</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Lớp l&oacute;t bằng vải dệt</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế ngo&agrave;i bằng cao su</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&atilde; sản phẩm: IH8159</strong></h2>\r\n	</li>\r\n</ul>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"Cao Su\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an Nano\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"C\\u00f3 l\\u1edbp l\\u00f3t tho\\u00e1ng kh\\u00ed \\u00a0\"}]', '2024-07-12 12:57:43', '0000-00-00'),
(32, 'SAMBA INTER MIAMI CF', 'samba-inter-miami-cf', 42, 2890000, 'public/uploads/images/product/6690c67ba0e42-WoAvOjJqUVsdEuxDFieMfRgnZrQk72XmbYTNyHlG36hP9CcwBa8D0t15LKS4z.jpg', 'public/uploads/images/product/thumb/6690c67ba0e42-Fs4n9MKzmBV37tEqwO0hXHuYoUWjLN2aZTPfJRebr8CdcxgvAQ1DD5GiSl6yk.jpg', 1, '<h2><strong>Lan tỏa niềm tự h&agrave;o Inter Miami CF ở cả trong v&agrave; ngo&agrave;i s&acirc;n futsal. Đ&ocirc;i gi&agrave;y đ&aacute; b&oacute;ng adidas Samba n&agrave;y mang sắc m&agrave;u rực rỡ của bộ trang phục thi đấu thứ ba v&agrave; huy hiệu CLB. Bất kể nơi đ&acirc;u, đ&ocirc;i gi&agrave;y phi&ecirc;n bản giới hạn n&agrave;y sẽ gi&uacute;p bạn lu&ocirc;n thoải m&aacute;i nhờ th&acirc;n gi&agrave;y bằng da, mũi gi&agrave;y bằng da lộn classic v&agrave; đế ngo&agrave;i bằng cao su si&ecirc;u b&aacute;m.</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>D&aacute;ng regular fit</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>C&oacute; d&acirc;y gi&agrave;y</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Th&acirc;n gi&agrave;y bằng da v&agrave; mũi gi&agrave;y chữ T bằng da lộn</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Lớp l&oacute;t bằng vải dệt</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Đế ngo&agrave;i bằng cao su</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&agrave;u sản phẩm: Cloud White / Easy Mint / Gum</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&atilde; sản phẩm: IH8160</strong></h2>\r\n	</li>\r\n</ul>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an Nano\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ef1 nhi\\u00ean\"}]', '2024-07-12 13:00:27', '2024-07-12'),
(33, 'FIRM GROUND PREDATOR LEAGUE', 'firm-ground-predator-league', 42, 3999000, 'public/uploads/images/product/6690c73ee2dc8-tekwa8MhjYZdrRPfqGEAOT9xJlD0CWBoV75Hs1S6Q2NiDFbzn4UuLgvcyK3mX.jpg', 'public/uploads/images/product/thumb/6690c73ee2dc8-8QCBGDS4DWnOlgAzx2mHXYUdKJoyqTuP9FwcELV3b7rv5j0M6eRZsfh1Naitk.jpg', 1, '<h2><strong>B&oacute;ng đ&aacute; l&agrave; phải ghi b&agrave;n, vậy n&ecirc;n đ&ocirc;i gi&agrave;y đ&aacute; b&oacute;ng n&agrave;y được thiết kế để ph&aacute; lưới khung th&agrave;nh. Trong từng c&uacute; s&uacute;t. Mọi khoảnh khắc. Nhắm mục ti&ecirc;u ho&agrave;n hảo với đ&ocirc;i gi&agrave;y adidas Predator ho&agrave;n to&agrave;n mới. Với kết cấu phủ v&acirc;n sần 3D v&agrave; c&aacute;c v&acirc;y Strikescale tạo độ b&aacute;m ở phần m&aacute; trong b&agrave;n ch&acirc;n, th&acirc;n gi&agrave;y Hybridfeel c&oacute; thiết kế tối ưu cho khả năng ghi b&agrave;n chuẩn x&aacute;c. B&ecirc;n dưới l&agrave; mặt đế Controlplate 2.0 to&agrave;n phần tạo độ ổn định khi cắt b&oacute;ng, s&uacute;t b&oacute;ng xo&aacute;y v&agrave; ghi b&agrave;n tr&ecirc;n s&acirc;n cỏ tự nhi&ecirc;n. Sản phẩm n&agrave;y c&oacute; chứa tối thiểu 20% chất liệu t&aacute;i chế. Bằng c&aacute;ch t&aacute;i sử dụng c&aacute;c chất liệu đ&atilde; được tạo ra, ch&uacute;ng t&ocirc;i g&oacute;p phần giảm l&atilde;ng ph&iacute; v&agrave; giảm phụ thuộc v&agrave;o c&aacute;c nguồn t&agrave;i nguy&ecirc;n hữu hạn, cũng như giảm ph&aacute;t thải từ c&aacute;c sản phẩm m&agrave; ch&uacute;ng t&ocirc;i sản xuất.</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>D&aacute;ng regular fit</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&oacute; d&acirc;y gi&agrave;y</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&acirc;n gi&agrave;y bằng chất liệu tổng hợp với v&acirc;n sần 3D Hybridfeel</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>V&acirc;n b&aacute;m Strikescale tr&ecirc;n v&ugrave;ng chạm b&oacute;ng ở phần m&aacute; trong b&agrave;n ch&acirc;n</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Đế ngo&agrave;i Controlplate 2.0 ph&ugrave; hợp với s&acirc;n cỏ tự nhi&ecirc;n</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&oacute; chứa tối thiểu 20% th&agrave;nh phần t&aacute;i chế</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>M&agrave;u sản phẩm: Core Black / Carbon / Core Black</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>M&atilde; sản phẩm: IG7763</strong></p>\r\n	</li>\r\n</ul>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an Nano\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 13:03:42', '2024-07-12'),
(34, 'FIRM GROUND LOW PREDATOR ACCURACY.1', 'firm-ground-low-predator-accuracy-1', 42, 5800000, 'public/uploads/images/product/6690c80d6c542-n8ALvDJR4hxHTisbSYe92EGkfaXFrcVyudCM13z0OtwgQUWqZNP6jo7KBm5Dl.jpg', 'public/uploads/images/product/thumb/6690c80d6c542-WAMrBqhGeO750ETvN2ZL3ndyDCJwk9tfaD4zl81buiXSjc6QVYHKmPRUFxsgo.jpg', 1, '<h2><strong>Đ&Ocirc;I GI&Agrave;Y Đ&Aacute; B&Oacute;NG CỔ THẤP C&Oacute; D&Acirc;Y C&Ugrave;NG C&Aacute;C CHI TIẾT CAO SU IN 3D V&Agrave; ĐẾ NGO&Agrave;I CHẮC CHẮN.</strong></h2>\r\n\r\n<h2><strong>Sẵn s&agrave;ng ra s&acirc;n với Gi&agrave;y Đ&aacute; B&oacute;ng Firm Ground Low Predator Accuracy.1 Với bề d&agrave;y lịch sử lu&ocirc;n hỗ trợ c&aacute;c cầu thủ v&agrave;o những ph&uacute;t gi&acirc;y then chốt, mẫu gi&agrave;y đ&aacute; b&oacute;ng n&agrave;y mang đến cho bạn sự tự tin để tạo n&ecirc;n những khoảnh khắc quyết định trận đấu. C&ocirc;ng nghệ v&acirc;n b&aacute;m high definition được bố tr&iacute; hợp l&yacute; tr&ecirc;n khắp c&aacute;c v&ugrave;ng tiếp x&uacute;c b&oacute;ng gi&uacute;p hỗ trợ độ xo&aacute;y v&agrave; chạm b&oacute;ng ch&iacute;nh x&aacute;c. Th&acirc;n gi&agrave;y HYBRIDTOUCH &ocirc;m vừa kh&iacute;t v&agrave; &ecirc;m &aacute;i ở những v&ugrave;ng tiếp x&uacute;c b&oacute;ng chủ chốt cho cảm gi&aacute;c thoải m&aacute;i v&agrave; mềm mại khi chạm b&oacute;ng, đồng thời mặt đế ph&acirc;n t&aacute;ch FACETFRAME tăng cường truyền lực tối đa cho c&uacute; s&uacute;t ho&agrave;n hảo. L&agrave;m từ một nh&oacute;m chất liệu t&aacute;i chế, th&acirc;n gi&agrave;y c&oacute; chứa tối thiểu 50% th&agrave;nh phần t&aacute;i chế. Sản phẩm n&agrave;y đại diện cho một trong số rất nhiều c&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa.</strong></h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>D&aacute;ng regular fit</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>C&oacute; d&acirc;y gi&agrave;y</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Th&acirc;n gi&agrave;y HybridTouch</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Cổ gi&agrave;y adidas PRIMEKNIT hai phần</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Đế ngo&agrave;i ph&acirc;n t&aacute;ch ph&ugrave; hợp cho s&acirc;n cỏ tự nhi&ecirc;n</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Th&acirc;n gi&agrave;y c&oacute; chứa tối thiểu 50% th&agrave;nh phần t&aacute;i chế</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&agrave;u sản phẩm: Core Black / Core Black / Cloud White</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&atilde; sản phẩm: GW4575</strong></h2>\r\n	</li>\r\n</ul>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\" FACETFRAME \"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 13:07:09', '0000-00-00'),
(35, 'PREDATOR FREESTYLE', 'predator-freestyle', 42, 2400000, 'public/uploads/images/product/6690c89bd1988-7HoJ9y4ER6tCuDMkciVrQlgP8aDN3mT2GweSAjvsOW1F5zYUhdKLnBqXb0Zfx.jpg', 'public/uploads/images/product/thumb/6690c89bd1988-3T7KW1rH9RvNcOaZsA0wiD24MPSmto6FdeQg8uLlEVDUCYhynqGfkxJ5BXbjz.jpg', 1, '<h2><strong>Đ&Ocirc;I GI&Agrave;Y Đ&Aacute; B&Oacute;NG PREDATOR PH&Ugrave; HỢP ĐỂ CHƠI GIAO HỮU V&Agrave; SỬ DỤNG B&Ecirc;N NGO&Agrave;I S&Acirc;N CỎ.</strong></h2>\r\n\r\n<h2><strong>B&oacute;ng đ&aacute; l&agrave; phải ghi b&agrave;n, vậy n&ecirc;n đ&ocirc;i gi&agrave;y đ&aacute; b&oacute;ng n&agrave;y được thiết kế để ph&aacute; lưới khung th&agrave;nh. Trong từng c&uacute; s&uacute;t. Mọi khoảnh khắc. Nhắm mục ti&ecirc;u ho&agrave;n hảo với đ&ocirc;i gi&agrave;y adidas Predator ho&agrave;n to&agrave;n mới. L&agrave; lựa chọn l&yacute; tưởng để thi đấu giao lưu cũng như sử dụng b&ecirc;n ngo&agrave;i s&acirc;n cỏ, đ&ocirc;i gi&agrave;y n&agrave;y c&oacute; th&acirc;n gi&agrave;y bằng vải lưới v&agrave; da lộn cho cảm gi&aacute;c thoải m&aacute;i hệt như đ&ocirc;i gi&agrave;y Predator chuy&ecirc;n dụng trong nh&agrave;. Tuy nhi&ecirc;n, b&ecirc;n dưới đế giữa Lightstrike si&ecirc;u nhẹ l&agrave; đế ngo&agrave;i Samba si&ecirc;u b&aacute;m.</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>D&aacute;ng regular fit</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>C&oacute; d&acirc;y gi&agrave;y</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Th&acirc;n gi&agrave;y bằng vải lưới v&agrave; da lộn</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Lớp đệm Lightstrike</strong></h2>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<h2><strong>Mũi gi&agrave;y chống m&agrave;i m&ograve;n</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>Đế ngo&agrave;i Samba bằng cao su</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&agrave;u sản phẩm: Core Black / Cloud White / Solar Red</strong></h2>\r\n	</li>\r\n	<li>\r\n	<h2><strong>M&atilde; sản phẩm: IF1025</strong></h2>\r\n	</li>\r\n</ul>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"M\\u1ef9\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an Nano\"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 13:09:31', '0000-00-00'),
(36, 'Lăng ba vi bộ', 'lang-ba-vi-bo', 44, 85000, 'public/uploads/images/product/6690cb0799a19-kREd8A9CYB0Lrl41vn2GjqDJKXoVibxDZOMP37tsHmhyWc6fSQTagze5UFwNu.jpg', 'public/uploads/images/product/thumb/6690cb0799a19-cFn5TqCz2HQ7r31Z0dEoGVhBuNWXgLfwasxUk4StvybmYRDJi8AejKM9D6OPl.jpg', 1, '<h2><strong>Phần đế gi&agrave;y Asia l&agrave; cao su chất lượng cao , lớp đế cao vừa phải gi&uacute;p người d&ugrave;ng di chuyển &ecirc;m &aacute;i nhanh nhẹn, c&oacute; độ ma s&aacute;t cao, chống trơn trượt tốt, an to&agrave;n v&agrave; ổn định.</strong></h2>\r\n\r\n<h2><strong>Gi&agrave;y kh&aacute; nhẹ v&agrave; cổ gi&agrave;y &ocirc;m kh&iacute;t tạo cảm gi&aacute;c an to&agrave;n khi di chuyển.</strong></h2>\r\n\r\n<h2><strong>L&yacute; do mọi người ưa th&iacute;ch đ&ocirc;i gi&agrave;y n&agrave;y l&agrave; lớp lưới tho&aacute;ng kh&iacute; ở mũi v&agrave; th&acirc;n gi&agrave;y cho bạn cảm gi&aacute;c kh&ocirc;ng bị hầm b&iacute; khi mang thời gian l&acirc;u trong ng&agrave;y, gi&uacute;p khử m&ugrave;i, nhanh kh&ocirc;.&nbsp;</strong></h2>\r\n\r\n<h2><strong>Nước sản xuất: Việt Nam</strong></h2>\r\n\r\n<h2><strong>- Ti&ecirc;u chuẩn chất lượng: Ti&ecirc;u chuẩn Việt Nam</strong></h2>\r\n\r\n<h2><strong>- Chất liệu: Chất liệu vải da tổng hợp mềm mại&nbsp;</strong></h2>\r\n\r\n<h2><strong>- Đế kếp cao su chất lượng &ecirc;m ch&acirc;n, chống trơn trượt</strong></h2>\r\n\r\n<h2><strong>- L&oacute;t giầy vải b&ocirc;ng, đi &ecirc;m ch&acirc;n, thấm h&uacute;t mồ h&ocirc;i tốt. L&oacute;t c&oacute; thể th&aacute;o ra để giặt sạch.&nbsp;Lớp vải c&oacute; lỗ th&ocirc;ng hơi được ph&acirc;n bổ hợp l&iacute; tr&ecirc;n th&acirc;n gi&agrave;y gi&uacute;p ch&acirc;n kh&ocirc; tho&aacute;ng v&agrave; sạch sẽ. Miếng l&oacute;t đế gi&agrave;y d&agrave;y v&agrave; &ecirc;m &aacute;i, tạo độ đ&agrave;n hồi tốt cho d&agrave;i, thuận lợi cho bạn di chuyển, vận động.</strong></h2>\r\n', '[{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"Vi\\u1ec7t Nam\"},{\"name\":\"Ch\\u1ea5t li\\u1ec7u \",\"value\":\"V\\u1ea3i t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"C\\u00f4ng ngh\\u1ec7 \",\"value\":\"\\u0110an \"},{\"name\":\"Mi\\u1ebfng l\\u00f3t\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"},{\"name\":\"\\u0110\\u1ebf gi\\u00e0y\",\"value\":\"Cao su t\\u1ed5ng h\\u1ee3p\"}]', '2024-07-12 13:19:51', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slug`
--

CREATE TABLE `tbl_slug` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slug`
--

INSERT INTO `tbl_slug` (`id`, `name`, `type`) VALUES
(25, 'nike', 1),
(26, 'adidas', 1),
(27, 'puma', 1),
(28, 'thuong-dinh', 1),
(29, 'nike-vaporfly-3', 2),
(30, 'nike-cortez-sp', 2),
(31, 'air-jordan-1-low-se', 2),
(32, 'jordan-stadium-90', 2),
(33, 'air-jordan-1-mid', 2),
(34, 'puma-velocity-nitro™-3', 2),
(35, 'deviate-nitro-elite-2-running', 2),
(36, 'velocity-nitro-2-fade-running', 2),
(37, 'puma-sneakers-unisex-co-thap-caven-2-0-lux', 2),
(38, 'puma-sneakers-unisex-co-thap-palermo-lth', 2),
(39, 'adidas-samba-messi', 2),
(40, '', 2),
(41, 'samba-inter-miami-cf', 2),
(42, 'firm-ground-predator-league', 2),
(43, 'firm-ground-low-predator-accuracy-1', 2),
(44, 'predator-freestyle', 2),
(45, 'lang-ba-vi-bo', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slug`
--
ALTER TABLE `tbl_slug`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_slug`
--
ALTER TABLE `tbl_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
