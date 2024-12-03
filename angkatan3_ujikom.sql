-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 03:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angkatan3_praujikom2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tomo', '0890823434564', 'Bekasi', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(2, 'Eben', '0876734546787', 'Jakarta', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(3, 'Wahyu', '0568524786157', 'Solo', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(4, 'Edwar', '0845212649567', 'Malang', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(5, 'Ozi', '0865915473695', 'Karawang', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(6, 'Gilang', '0835815648527', 'Surabaya', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(7, 'Atio', '0845681742694', 'Kuningan', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(8, 'Rizky', '0814714689532', 'Medan', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(9, 'Thariq', '0814536251984', 'Makassar', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(10, 'Qaulan', '0814526591874', 'Lembang', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(11, 'Dhanti', '0842601593654', 'Tegal', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(12, 'Nanas', '0826482514135', 'Yogyakarta', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(13, 'Rangga', '0836516724573', 'Denpasar', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(14, 'Hana', '0562012642568', 'Subang', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(15, 'Finka', '0815641259472', 'Jayapura', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(16, 'Ajeng', '0812602540259', 'Blitar', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(17, 'Fifi', '0826014035970', 'Gondangdia', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(18, 'Andri', '086809542657', 'Pontianak', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(19, 'Yusuf', '0868103591420', 'Ternate', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(20, 'Pak Reza', '0810526410359', 'Cakung', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(21, 'Bu Ria', '0832102149520', 'Lampung', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0),
(22, 'Pak Tri', '0814032681054', 'Manado', '2024-11-29 17:37:19', '2024-11-29 17:37:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', '2024-11-11 02:11:05', '2024-12-02 04:54:31', 0),
(2, 'Operator', '2024-11-11 02:11:05', '2024-11-15 01:36:53', 0),
(3, 'Pimpinan', '2024-11-11 02:11:24', '2024-12-02 02:08:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans_laundry_pickup`
--

CREATE TABLE `trans_laundry_pickup` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_laundry_pickup`
--

INSERT INTO `trans_laundry_pickup` (`id`, `id_order`, `id_customer`, `pickup_date`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 40, 6, '2024-12-03', NULL, '2024-12-02 01:56:48', '2024-12-02 01:56:48', 0),
(6, 43, 16, '2024-12-07', NULL, '2024-12-02 04:56:02', '2024-12-02 04:56:02', 0),
(7, 44, 9, '2024-12-11', NULL, '2024-12-02 05:06:50', '2024-12-02 05:06:50', 0),
(8, 45, 21, '2024-12-03', NULL, '2024-12-02 07:27:30', '2024-12-02 07:27:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans_order`
--

CREATE TABLE `trans_order` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `order_end_date` date DEFAULT NULL,
  `order_status` tinyint(11) NOT NULL DEFAULT 0,
  `total_price` int(11) NOT NULL,
  `order_pay` int(11) DEFAULT NULL,
  `order_change` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_order`
--

INSERT INTO `trans_order` (`id`, `id_customer`, `order_code`, `order_date`, `order_end_date`, `order_status`, `total_price`, `order_pay`, `order_change`, `created_at`, `updated_at`, `deleted_at`) VALUES
(40, 6, 'LNDRY-202412020249131', '2024-12-02', '2024-12-03', 1, 12600, 20000, 7400, '2024-12-02 01:49:41', '2024-12-02 01:56:48', 0),
(41, 7, 'LNDRY-2024120203171942', '2024-12-04', '2024-12-05', 0, 46800, NULL, NULL, '2024-12-02 02:17:47', '2024-12-02 02:17:47', 0),
(42, 13, 'LNDRY-2024120205080243', '2024-12-05', '2024-12-06', 0, 33000, NULL, NULL, '2024-12-02 04:08:37', '2024-12-02 04:08:37', 0),
(43, 16, 'LNDRY-2024120205550144', '2024-12-06', '2024-12-07', 1, 40600, 50000, 9400, '2024-12-02 04:55:45', '2024-12-02 04:56:02', 0),
(44, 9, 'LNDRY-2024120206053045', '2024-12-10', '2024-12-11', 1, 30000, 40000, 10000, '2024-12-02 05:06:00', '2024-12-02 05:06:50', 0),
(45, 21, 'LNDRY-2024120208265846', '2024-12-02', '2024-12-03', 1, 21000, 50000, 29000, '2024-12-02 07:27:14', '2024-12-02 07:27:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans_order_detail`
--

CREATE TABLE `trans_order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_order_detail`
--

INSERT INTO `trans_order_detail` (`id`, `id_order`, `id_service`, `qty`, `subtotal`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(43, 40, 1, 700, 4200, NULL, '2024-12-02 01:49:41', '2024-12-02 01:49:41', 0),
(44, 40, 4, 1200, 8400, NULL, '2024-12-02 01:49:41', '2024-12-02 01:49:41', 0),
(45, 41, 1, 5000, 30000, NULL, '2024-12-02 02:17:47', '2024-12-02 02:17:47', 0),
(46, 41, 4, 2400, 16800, NULL, '2024-12-02 02:17:47', '2024-12-02 02:17:47', 0),
(47, 42, 2, 3600, 16200, NULL, '2024-12-02 04:08:37', '2024-12-02 04:08:37', 0),
(48, 42, 4, 2400, 16800, NULL, '2024-12-02 04:08:37', '2024-12-02 04:08:37', 0),
(49, 43, 1, 3500, 21000, NULL, '2024-12-02 04:55:45', '2024-12-02 04:55:45', 0),
(50, 43, 4, 2800, 19600, NULL, '2024-12-02 04:55:45', '2024-12-02 04:55:45', 0),
(51, 44, 2, 3400, 15300, NULL, '2024-12-02 05:06:00', '2024-12-02 05:06:00', 0),
(52, 44, 4, 2100, 14700, NULL, '2024-12-02 05:06:00', '2024-12-02 05:06:00', 0),
(53, 45, 1, 3500, 21000, NULL, '2024-12-02 07:27:14', '2024-12-02 07:27:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_service`
--

CREATE TABLE `type_of_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_of_service`
--

INSERT INTO `type_of_service` (`id`, `service_name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cuci dan Setrika', 6000, '(Wash and Iron) Comprehensive laundry service that includes washing, drying, and ironing to ensure your clothes are ready to wear.	', '2024-11-15 02:58:44', '2024-12-02 04:18:33', 0),
(2, 'Hanya Cuci', 4500, '(Only Wash) Basic washing service for your laundry without ironing, perfect for those who prefer to manage drying and ironing themselves.	', '2024-11-15 03:09:17', '2024-12-02 04:18:51', 0),
(3, 'Hanya Setrika', 5000, '(Only Iron) Professional ironing service for pre-washed clothes, providing a crisp and neat finish.	', '2024-11-15 03:10:15', '2024-12-02 04:19:08', 0),
(4, 'Laundry Besar', 7000, '(Heavy Laundry) Specialized service for larger items such as bed linens, blankets, and curtains, ensuring thorough cleaning and care.	', '2024-11-15 03:10:35', '2024-12-02 04:19:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile_picture` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_level`, `username`, `email`, `password`, `profile_picture`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', '12345678', 'profile_picture1.jpg', '2024-11-11 02:30:45', '2024-12-02 04:25:26', 0),
(18, 2, 'Operator', 'operator@gmail.com', '12345678', '', '2024-12-03 02:00:13', '2024-12-03 02:00:13', 0),
(19, 3, 'Pimpinan', 'pimpinan@gmail.com', '12345678', '', '2024-12-03 02:00:54', '2024-12-03 02:00:54', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_laundry_pickup`
--
ALTER TABLE `trans_laundry_pickup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_order`
--
ALTER TABLE `trans_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_order_detail`
--
ALTER TABLE `trans_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_service`
--
ALTER TABLE `type_of_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trans_laundry_pickup`
--
ALTER TABLE `trans_laundry_pickup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trans_order`
--
ALTER TABLE `trans_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `trans_order_detail`
--
ALTER TABLE `trans_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `type_of_service`
--
ALTER TABLE `type_of_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
