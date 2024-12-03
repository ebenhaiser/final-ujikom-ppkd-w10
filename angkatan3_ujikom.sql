-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 07:56 AM
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
-- Database: `angkatan3_ujikom`
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
(6, 43, 16, '2024-12-07', NULL, '2024-12-02 04:56:02', '2024-12-02 04:56:02', 0),
(7, 44, 9, '2024-12-11', NULL, '2024-12-02 05:06:50', '2024-12-02 05:06:50', 0);

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
(43, 16, 'LNDRY-2024120205550144', '2024-12-06', '2024-12-07', 1, 40600, 50000, 9400, '2024-12-02 04:55:45', '2024-12-02 04:56:02', 0),
(44, 9, 'LNDRY-2024120206053045', '2024-12-10', '2024-12-11', 1, 30000, 40000, 10000, '2024-12-02 05:06:00', '2024-12-02 05:06:50', 0),
(48, 8, 'LNDRY-2024120307451846', '2024-12-03', '2024-12-04', 0, 35300, NULL, NULL, '2024-12-03 06:45:44', '2024-12-03 06:45:44', 0);

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
(49, 43, 1, 3500, 21000, NULL, '2024-12-02 04:55:45', '2024-12-02 04:55:45', 0),
(50, 43, 4, 2800, 19600, NULL, '2024-12-02 04:55:45', '2024-12-02 04:55:45', 0),
(51, 44, 2, 3400, 15300, NULL, '2024-12-02 05:06:00', '2024-12-02 05:06:00', 0),
(52, 44, 4, 2100, 14700, NULL, '2024-12-02 05:06:00', '2024-12-02 05:06:00', 0),
(58, 48, 1, 3200, 19200, NULL, '2024-12-03 06:45:45', '2024-12-03 06:45:45', 0),
(59, 48, 4, 2300, 16100, NULL, '2024-12-03 06:45:45', '2024-12-03 06:45:45', 0);

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
(1, 'Cuci dan Setrika', 6000, '(Wash and Iron) Comprehensive laundry service that includes washing, drying, and ironing to ensure your clothes are ready to wear.	', '2024-11-15 02:58:44', '2024-12-03 02:53:47', 0),
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
(1, 1, 'Admin', 'admin@gmail.com', '12345678', 'profile_picture1.jpg', '2024-11-11 02:30:45', '2024-12-03 06:36:35', 0),
(2, 2, 'Operator', 'operator@gmail.com', '12345678', 'profile_picture2.jpg', '2024-12-03 02:00:13', '2024-12-03 06:49:03', 0),
(3, 3, 'Pimpinan', 'pimpinan@gmail.com', '12345678', 'profile_picture3.jpg', '2024-12-03 02:00:54', '2024-12-03 06:48:46', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trans_laundry_pickup`
--
ALTER TABLE `trans_laundry_pickup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trans_order`
--
ALTER TABLE `trans_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `trans_order_detail`
--
ALTER TABLE `trans_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `type_of_service`
--
ALTER TABLE `type_of_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
