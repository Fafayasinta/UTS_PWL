-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2024 at 06:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_11_073539_create_m_level_table', 1),
(6, '2024_09_11_074644_create_m_kategori_table', 2),
(7, '2024_09_11_074702_create_m_supplier_table', 2),
(8, '2024_09_11_075103_create_m_user_table', 3),
(10, '2024_09_12_175756_create_t_penjualan_table', 4),
(11, '2024_09_13_153539_create_m_kategori_table', 5),
(12, '2024_09_13_153649_create_m_supplier_table', 5),
(13, '2024_09_13_155215_create_m_barang_table', 6),
(14, '2024_09_13_155310_create_t_penjualan_table', 7),
(15, '2024_09_13_155700_create_t_stok_table', 8),
(16, '2024_09_13_155753_create_t_penjualan_detail_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'E01', 'Lampu LED Philips 9W', 20000, 25000, NULL, NULL),
(2, 1, 'E02', 'Kabel HDMI 1.5 Meter', 20000, 35000, NULL, NULL),
(3, 1, 'E03', 'Charger USB Anker 18W', 30000, 40000, NULL, NULL),
(4, 4, 'M01', 'Mie Instan Indomie Goreng', 2500, 3000, NULL, NULL),
(5, 4, 'M02', 'Susu UHT Frisian Flag 1L', 12000, 15000, NULL, NULL),
(6, 4, 'M03', 'Keripik Singkong Balado', 7000, 10000, NULL, NULL),
(7, 5, 'P01', 'Kaos Polos Hitam', 25000, 50000, NULL, NULL),
(8, 5, 'P02', 'Blouse Wanita Batik', 50000, 70000, NULL, NULL),
(9, 5, 'P03', 'Sneakers Converse', 250000, 350000, NULL, NULL),
(10, 2, 'K01', 'Lipstik Wardah Matte', 25000, 35000, NULL, NULL),
(11, 2, 'K02', 'Facial Wash Garnier', 15000, 25000, NULL, NULL),
(12, 2, 'K03', 'Body Lotion Vaseline', 250000, 350000, NULL, NULL),
(13, 3, 'O01', 'Paracetamol 500mg', 500, 1000, NULL, NULL),
(14, 3, 'O02', 'Vitamin C 500mg', 2000, 3000, NULL, NULL),
(15, 3, 'O03', 'Amoxicillin 500mg', 1000, 2000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'EK', 'Elektronik', NULL, NULL),
(2, 'KC', 'Kecantikan', NULL, NULL),
(3, 'OB', 'Obat-obatan', NULL, NULL),
(4, 'MM', 'Makanan dan Minuman', NULL, NULL),
(5, 'PK', 'Pakaian', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/kasir', NULL, NULL),
(4, 'PLG', 'Pelanggan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, '1', 'Sumber Healthy dan Beauty', 'Jakarta', NULL, NULL),
(2, '2', 'Serba Ada Shop', 'Malang', NULL, NULL),
(3, '3', 'Chin Elektronik', 'Surabaya', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Administrator', '$2y$12$2W0JrC0ymRtwLCzHxePbFeGu1FIE9iUrTJkGMl.8FgJpVC2E0qGLa', NULL, NULL),
(2, 2, 'manager', 'Manager', '$2y$12$viwkf3t5GraM02HJQgHE/upoJHGMlXEW2M5H3RzS0oKPkoqegKwl.', NULL, NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$zKNZKxqG77wJR86mBwlLNeOLpVL3aOWH/0qJvHKAgKNd1J7gmne36', NULL, NULL),
(13, 4, 'customer 1', 'Pelanggan pertama', '$2y$12$AglJ8mj8t8L4Ah9e7wboVu4RM7GsGP/LhMic342vn.OOYuFfH2inC', NULL, '2024-09-14 01:24:23'),
(14, 2, 'manager_dua', 'Manager2', '$2y$12$8C3a5A1ZXrkEr1gJCqEAl.m3NFYBCFnyoJCQ06PW4OonK01Bivpby', NULL, NULL),
(17, 2, 'manager_tiga', 'Manager 3', '$2y$12$eWMwMGtmMCSDID.oIak7g.51bzpEV2LEmTAcU.s2rxVDC7eDsehTa', NULL, NULL),
(18, 2, 'manager22', 'Manager Dua Dua', '$2y$12$t26K6c83lpFZelLUQ/ys9eJScfDHM6bsSY4l1ulzevUkQF7L.x4U2', '2024-09-19 05:27:46', '2024-09-19 05:27:46'),
(19, 2, 'manager33', 'Manager Tiga Tiga', '$2y$12$S.9JjW/28JKzLDThFURFJ.St8WEtCMpJZvSDKSvvBO9ooOad.3/cC', '2024-09-19 06:05:06', '2024-09-19 06:05:06'),
(23, 2, 'manager56', 'Manager55', '$2y$12$K4p9/WW3329i7cuE88hB5.voQyp0ByZ5H66GTz3QROpduu0eELHF.', '2024-09-19 06:31:44', '2024-09-19 06:31:44'),
(24, 2, 'manager12', 'Manager11', '$2y$12$A6y8Ze0KbJuGjLI4m8zxqeiA6dDgEGI0DFsO07EM.Iqs0P1yEruVG', '2024-09-19 06:57:59', '2024-09-19 06:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `penjualan_kode`, `pembeli`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, 'PJ001', 'Agus Setiawan', '2024-09-01 10:30:00', NULL, NULL),
(2, 2, 'PJ002', 'Lestari Wulandari', '2024-09-01 11:00:00', NULL, NULL),
(3, 3, 'PJ003', 'Siti Nurhaliza', '2024-09-01 11:30:00', NULL, NULL),
(4, 1, 'PJ004', 'Rahmat Hidayat', '2024-09-02 09:15:00', NULL, NULL),
(5, 2, 'PJ005', 'Andi Susanto', '2024-09-02 10:00:00', NULL, NULL),
(6, 3, 'PJ006', 'Nurul Fadilah', '2024-09-02 11:45:00', NULL, NULL),
(7, 1, 'PJ007', 'Ahmad Fauzi', '2024-09-03 12:15:00', NULL, NULL),
(8, 2, 'PJ008', 'Dewi Sartika', '2024-09-03 13:00:00', NULL, NULL),
(9, 3, 'PJ009', 'Indra Lesmana', '2024-09-03 14:30:00', NULL, NULL),
(10, 1, 'PJ010', 'Fathir Hamdani', '2024-09-04 09:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 25000, 2, NULL, NULL),
(2, 1, 2, 35000, 5, NULL, NULL),
(3, 1, 3, 30000, 1, NULL, NULL),
(4, 2, 4, 3000, 1, NULL, NULL),
(5, 2, 5, 15000, 3, NULL, NULL),
(6, 2, 6, 10000, 1, NULL, NULL),
(7, 3, 7, 50000, 2, NULL, NULL),
(8, 3, 8, 70000, 4, NULL, NULL),
(9, 3, 9, 350000, 1, NULL, NULL),
(10, 4, 10, 35000, 3, NULL, NULL),
(11, 4, 11, 25000, 5, NULL, NULL),
(12, 4, 12, 350000, 1, NULL, NULL),
(13, 5, 13, 1000, 3, NULL, NULL),
(14, 5, 14, 3000, 6, NULL, NULL),
(15, 5, 15, 2000, 2, NULL, NULL),
(16, 6, 1, 25000, 3, NULL, NULL),
(17, 6, 2, 35000, 1, NULL, NULL),
(18, 6, 3, 40000, 2, NULL, NULL),
(19, 7, 4, 3000, 10, NULL, NULL),
(20, 7, 5, 15000, 6, NULL, NULL),
(21, 7, 6, 10000, 9, NULL, NULL),
(22, 8, 7, 50000, 1, NULL, NULL),
(23, 8, 8, 70000, 4, NULL, NULL),
(24, 8, 9, 350000, 2, NULL, NULL),
(25, 9, 10, 35000, 4, NULL, NULL),
(26, 9, 11, 25000, 2, NULL, NULL),
(27, 9, 12, 350000, 2, NULL, NULL),
(28, 10, 13, 1000, 1, NULL, NULL),
(29, 10, 14, 3000, 7, NULL, NULL),
(30, 10, 15, 2000, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `supplier_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2024-09-10 00:00:00', 100, NULL, NULL),
(2, 3, 2, 1, '2024-09-10 00:00:00', 200, NULL, NULL),
(3, 3, 3, 1, '2024-09-08 00:00:00', 50, NULL, NULL),
(4, 2, 4, 1, '2024-09-09 00:00:00', 150, NULL, NULL),
(5, 2, 5, 1, '2024-09-07 00:00:00', 80, NULL, NULL),
(6, 2, 6, 2, '2024-09-09 00:00:00', 100, NULL, NULL),
(7, 2, 7, 2, '2024-09-05 00:00:00', 75, NULL, NULL),
(8, 2, 7, 2, '2024-09-05 00:00:00', 75, NULL, NULL),
(9, 2, 9, 2, '2024-09-03 00:00:00', 125, NULL, NULL),
(10, 1, 10, 2, '2024-09-02 00:00:00', 135, NULL, NULL),
(11, 1, 11, 3, '2024-09-01 00:00:00', 300, NULL, NULL),
(12, 1, 12, 3, '2024-09-01 00:00:00', 250, NULL, NULL),
(13, 1, 15, 3, '2024-08-30 00:00:00', 90, NULL, NULL),
(14, 1, 14, 3, '2024-08-29 00:00:00', 200, NULL, NULL),
(15, 1, 15, 3, '2024-08-29 00:00:00', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD UNIQUE KEY `m_barang_barang_kode_unique` (`barang_kode`),
  ADD KEY `m_barang_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `m_kategori_kategori_kode_unique` (`kategori_kode`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `m_supplier_supplier_kode_unique` (`supplier_kode`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD UNIQUE KEY `t_penjualan_penjualan_kode_unique` (`penjualan_kode`),
  ADD KEY `t_penjualan_user_id_index` (`user_id`);

--
-- Indexes for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_detail_penjualan_id_index` (`penjualan_id`),
  ADD KEY `t_penjualan_detail_barang_id_index` (`barang_id`);

--
-- Indexes for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_supplier_id_index` (`supplier_id`),
  ADD KEY `t_stok_barang_id_index` (`barang_id`),
  ADD KEY `t_stok_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjualan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Constraints for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
