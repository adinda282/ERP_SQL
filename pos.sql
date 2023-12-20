-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 11:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Sofa', NULL, NULL),
(2, 'Meja Makan', NULL, NULL),
(3, 'Kursi', NULL, NULL),
(4, 'Lemari', NULL, NULL),
(5, 'Tempat Tidur', NULL, NULL),
(6, 'Rak Buku', NULL, NULL),
(7, 'Lampu', NULL, NULL),
(8, 'Karpet', NULL, NULL),
(9, 'Meja Kerja', NULL, NULL),
(10, 'Meja TV', NULL, NULL),
(11, 'Kursi Santai', NULL, NULL),
(12, 'Lemari Pakaian', NULL, NULL),
(13, 'Bufet', NULL, NULL),
(14, 'Rak Sepatu', NULL, NULL),
(15, 'Kursi Tamu', NULL, NULL),
(16, 'Meja Konsol', NULL, NULL),
(17, 'Lampu Gantung', NULL, NULL),
(18, 'Lampu Meja', NULL, NULL),
(19, 'Kasur', NULL, NULL),
(20, 'Kasur Lipat', NULL, NULL),
(21, 'Kasur Busa', NULL, NULL),
(22, 'Meja Belajar', NULL, NULL),
(23, 'Lemari TV', NULL, NULL),
(24, 'Lemari Hias', NULL, NULL),
(25, 'Kursi Kantor', NULL, NULL),
(26, 'Meja Lipat', NULL, NULL),
(27, 'Lemari Buku', NULL, NULL),
(28, 'Lampu Dinding', NULL, NULL),
(29, 'Rak Dinding', NULL, NULL),
(30, 'Meja Ruang Tamu', NULL, NULL),
(31, 'Meja Rias', NULL, NULL),
(32, 'Meja Konsol Putih', NULL, NULL),
(33, 'Kursi Makan', NULL, NULL),
(34, 'Lemari Dapur', NULL, NULL),
(35, 'Kursi Bar', NULL, NULL),
(36, 'Lemari Display', NULL, NULL),
(37, 'Meja Kopi', NULL, NULL),
(38, 'Kasur Anak', NULL, NULL),
(39, 'Meja Serbaguna', NULL, NULL),
(40, 'Kursi Lipat', NULL, NULL),
(41, 'Lemari Sepatu', NULL, NULL),
(42, 'Meja Partisi', NULL, NULL),
(43, 'Kursi Goyang', NULL, NULL),
(44, 'Lemari Piring', NULL, NULL),
(45, 'Bufet TV', NULL, NULL),
(46, 'Meja Outdoor', NULL, NULL),
(47, 'Lemari Es', NULL, NULL),
(48, 'Meja Bulat', NULL, NULL),
(49, 'Kursi Plastik', NULL, NULL),
(50, 'Lemari Arsip', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'M000001', 'James Clear', 'Jl. Pangeran No. 123', '08123456789', NULL, NULL),
(2, 'M000002', 'Jane Doe', 'Jl. Maju Mundur No. 456', '08234567890', NULL, NULL),
(3, 'M000003', 'Bob Smith', 'Jl. Melati No. 789', '08345678901', NULL, NULL),
(4, 'M000004', 'Alice Johnson', 'Jl. Anggrek No. 234', '08456789012', NULL, NULL),
(5, 'M000005', 'David Lee', NULL, '08567890123', NULL, NULL),
(6, 'M000006', 'Emily Wang', 'Jl. Sakura No. 567', '08678901234', NULL, NULL),
(7, 'M000007', 'Michael Brown', 'Jl. Dahlia No. 890', '08789012345', NULL, NULL),
(8, 'M000008', 'Sophia Kim', 'Jl. Tulip No. 123', '08890123456', NULL, NULL),
(9, 'M000009', 'Daniel White', 'Jl. Mawar No. 456', '08901234567', NULL, NULL),
(10, 'M000010', 'Olivia Miller', 'Jl. Kamboja No. 789', '09012345678', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200706_buat_supplier_table', 1),
(11, '2021_03_05_200841_buat_pembelian_table', 1),
(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(13, '2021_03_05_200853_buat_penjualan_table', 1),
(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(15, '2021_03_05_200904_buat_setting_table', 1),
(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
(17, '2021_03_11_225128_create_sessions_table', 1),
(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 1, '2023-12-05 00:33:32', '2023-12-05 00:33:32'),
(2, NULL, 0, 0, 0, 0, 0, 1, '2023-12-05 01:06:59', '2023-12-05 01:06:59'),
(3, NULL, 1, 3500000, 0, 3500000, 3500000, 1, '2023-12-05 03:06:44', '2023-12-05 03:07:05'),
(4, NULL, 0, 0, 0, 0, 0, 1, '2023-12-05 03:07:22', '2023-12-05 03:07:22'),
(5, 4, 5, 9500000, 5, 9025000, 9050000, 1, '2023-12-05 03:10:03', '2023-12-05 03:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 13, 3500000, 1, 0, 3500000, '2023-12-05 03:04:29', '2023-12-05 03:04:29'),
(2, 3, 13, 3500000, 1, 0, 3500000, '2023-12-05 03:06:56', '2023-12-05 03:06:56'),
(3, 4, 13, 3500000, 1, 0, 3500000, '2023-12-05 03:07:38', '2023-12-05 03:07:38'),
(4, 4, 18, 4000000, 1, 0, 4000000, '2023-12-05 03:07:42', '2023-12-05 03:07:42'),
(5, 4, 11, 1500000, 1, 0, 1500000, '2023-12-05 03:07:47', '2023-12-05 03:07:47'),
(6, 5, 13, 3500000, 1, 5, 3500000, '2023-12-05 03:33:28', '2023-12-05 03:34:34'),
(7, 5, 24, 1500000, 2, 5, 3000000, '2023-12-05 03:33:32', '2023-12-05 03:34:34'),
(8, 5, 11, 1500000, 2, 5, 3000000, '2023-12-05 03:33:35', '2023-12-05 03:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 'P000001', 'Sofa Merah', 'MerkA', 5000000, 0, 7000000, 10, NULL, NULL),
(2, 2, 'P000002', 'Meja Makan Kayu', 'MerkB', 3000000, 0, 4000000, 15, NULL, NULL),
(3, 3, 'P000003', 'Kursi Lipat Hijau', 'MerkC', 1500000, 5, 2000000, 20, NULL, NULL),
(4, 4, 'P000004', 'Lemari Putih', 'MerkD', 4500000, 0, 6000000, 8, NULL, NULL),
(5, 5, 'P000005', 'Tempat Tidur King Size', 'MerkE', 7000000, 10, 9000000, 12, NULL, NULL),
(6, 6, 'P000006', 'Rak Buku Minimalis', 'MerkF', 2000000, 0, 2500000, 25, NULL, NULL),
(7, 7, 'P000007', 'Lampu Gantung Klasik', 'MerkG', 1000000, 0, 1200000, 30, NULL, NULL),
(8, 8, 'P000008', 'Karpet Bulu Tebal', 'MerkH', 800000, 0, 1000000, 40, NULL, NULL),
(9, 9, 'P000009', 'Meja Kerja Kayu', 'MerkI', 2500000, 0, 3000000, 18, NULL, NULL),
(10, 10, 'P000010', 'Meja TV Modern', 'MerkJ', 1800000, 0, 2200000, 22, NULL, NULL),
(11, 11, 'P000011', 'Kursi Santai Bambu', 'MerkK', 1200000, 0, 1500000, 26, NULL, '2023-12-05 03:34:34'),
(12, 12, 'P000012', 'Lemari Pakaian Pintu Geser', 'MerkL', 3500000, 8, 4500000, 15, NULL, NULL),
(13, 13, 'P000013', 'Bufet Kayu Jati', 'MerkM', 2800000, 0, 3500000, 18, NULL, '2023-12-05 03:34:34'),
(14, 14, 'P000014', 'Rak Sepatu Minimalis', 'MerkN', 900000, 0, 1200000, 25, NULL, NULL),
(15, 15, 'P000015', 'Kursi Tamu Elegan', 'MerkO', 2000000, 0, 2500000, 18, NULL, NULL),
(16, 16, 'P000016', 'Meja Konsol Putih', 'MerkP', 1500000, 0, 1800000, 30, NULL, NULL),
(17, 17, 'P000017', 'Lampu Meja Modern', 'MerkQ', 500000, 0, 700000, 35, NULL, NULL),
(18, 18, 'P000018', 'Kasur Orthopedic', 'MerkR', 3000000, 0, 4000000, 12, NULL, NULL),
(19, 19, 'P000019', 'Kasur Lipat Portabel', 'MerkS', 1200000, 0, 1500000, 25, NULL, NULL),
(20, 20, 'P000020', 'Kasur Busa Anak', 'MerkT', 800000, 0, 1000000, 40, NULL, NULL),
(21, 21, 'P000021', 'Meja Belajar Anak', 'MerkU', 1000000, 0, 1200000, 30, NULL, NULL),
(22, 22, 'P000022', 'Lemari TV Kayu', 'MerkV', 2500000, 0, 3000000, 18, NULL, NULL),
(23, 23, 'P000023', 'Lemari Hias Klasik', 'MerkW', 1800000, 0, 2200000, 22, NULL, NULL),
(24, 24, 'P000024', 'Kursi Kantor Ergonomis', 'MerkX', 1200000, 0, 1500000, 26, NULL, '2023-12-05 03:34:34'),
(25, 25, 'P000025', 'Meja Lipat Aluminium', 'MerkY', 700000, 0, 900000, 35, NULL, NULL),
(26, 26, 'P000026', 'Lemari Buku Minimalis', 'MerkZ', 1500000, 0, 1800000, 20, NULL, NULL),
(27, 27, 'P000027', 'Lampu Dinding Vintage', 'MerkAA', 400000, 0, 500000, 25, NULL, NULL),
(28, 28, 'P000028', 'Rak Dinding Kayu', 'MerkBB', 600000, 0, 800000, 18, NULL, NULL),
(29, 29, 'P000029', 'Meja Ruang Tamu Kaca', 'MerkCC', 1200000, 0, 1500000, 15, NULL, NULL),
(30, 30, 'P000030', 'Meja Rias Modern', 'MerkDD', 1800000, 0, 2200000, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6UqKSz5AzDOKUck9W1ZM3rF5GwOVXZ1eXppQ1kjk', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiZkdHdjJGQnhoOWc3clM5ek42aUl5Q2FONHJoRTBHQXd1REVjZExleCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sYXBvcmFuP3RhbmdnYWxfYWtoaXI9MjAyMy0xMi0wNSZ0YW5nZ2FsX2F3YWw9MjAyMy0xMi0wNSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRaUUouY01GRlg3UmtMZUpFQzExeDNPWko4cWoxSVFUVkJEaHUycEhjSzNlS0pSOVptbGViSyI7czoxMjoiaWRfcGVtYmVsaWFuIjtpOjE7czoxMToiaWRfc3VwcGxpZXIiO3M6MToiMSI7czoxMjoiaWRfcGVuanVhbGFuIjtpOjU7fQ==', 1701776552);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) NOT NULL,
  `path_kartu_member` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Toko Ku', 'Jl. Kibandang Samaran Ds. Slangit', '081234779987', 1, 5, '/img/logo.png', '/img/member.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'Supplier A', 'Jl. Raya No. 123', '08123456789', NULL, NULL),
(2, 'Supplier B', 'Jl. Maju Mundur No. 456', '08234567890', NULL, NULL),
(3, 'Supplier C', 'Jl. Melati No. 789', '08345678901', NULL, NULL),
(4, 'Supplier D', 'Jl. Anggrek No. 234', '08456789012', NULL, NULL),
(5, 'Supplier E', NULL, '08567890123', NULL, NULL),
(6, 'Supplier F', 'Jl. Sakura No. 567', '08678901234', NULL, NULL),
(7, 'Supplier G', 'Jl. Dahlia No. 890', '08789012345', NULL, NULL),
(8, 'Supplier H', 'Jl. Tulip No. 123', '08890123456', NULL, NULL),
(9, 'Supplier I', 'Jl. Mawar No. 456', '08901234567', NULL, NULL),
(10, 'Supplier J', 'Jl. Kamboja No. 789', '09012345678', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$ZQJ.cMFFX7RkLeJEC11x3OZJ8qj1IQTVBDhu2pHcK3eKJR9ZmlebK', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2023-12-05 00:29:13', '2023-12-05 00:29:13'),
(2, 'Kasir 1', 'kasir1@gmail.com', NULL, '$2y$10$PmFNoXV9uARqbVkfnek4fOVf4DgWccdolmCoiuNCbvpfuM19.8Kqm', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2023-12-05 00:29:13', '2023-12-05 00:29:13');

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
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
