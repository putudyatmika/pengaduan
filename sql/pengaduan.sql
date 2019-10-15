-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2019 at 02:03 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminleveruser`
--

CREATE TABLE `adminleveruser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_admin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_edited_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kodepengaduan`
--

CREATE TABLE `kodepengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjelasan_kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kodepengaduan`
--

INSERT INTO `kodepengaduan` (`id`, `kode_pengaduan`, `penjelasan_kode`) VALUES
(1, '001', 'Tindak Pidana Korupsi'),
(2, '002', 'Pelanggaran Kode Etik PNS'),
(3, '003', 'Pelayanan Publik'),
(4, '004', 'Saran dan Pertanyaan');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_04_020950_pengaduan', 1),
(5, '2019_10_04_054059_status_pengaduan', 1),
(6, '2019_10_05_064705_admin_level_user', 1),
(7, '2019_10_05_065431_pengaduan_webchat', 1),
(8, '2019_10_05_074409_kodepengaduan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pengaduan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_bukti_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_file_bukti_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_berita_acara_hasil_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_file_berita_acara_hasil_pengaduan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_edited_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `id_user`, `nama_user`, `kode_pengaduan`, `isi_pengaduan`, `link_bukti_pengaduan`, `nama_file_bukti_pengaduan`, `status_pengaduan`, `link_berita_acara_hasil_pengaduan`, `nama_file_berita_acara_hasil_pengaduan`, `last_edited_by`, `created_at`, `updated_at`) VALUES
(1, 5, 'pelapor', '002', 'testing', 'bukti_pengaduan/UiHHgKdVfpW3K7egm6FuT4g2KONxi10m0mzvjlup.pdf', '00-ID_LOKUS.pdf', '006', 'ba_tindaklanjut/06QbaDnzZOaNpgY1tAHUeWZvo7V9ofrjQdRefeYs.pdf', 'PN_01.pdf', 'I Putu Dyatmika', '2019-10-06 17:10:20', '2019-10-06 17:13:53'),
(2, 6, 'Testing', '002', 'test', 'bukti_pengaduan/tdOez6IhxrEGUJVgx1bokrrKvLHWSwZCOQ22rZr3.pdf', '00-ID_LOKUS.pdf', '001', NULL, NULL, 'Testing', '2019-10-06 18:15:10', NULL),
(5, 2, 'I Putu Dyatmika', '003', 'tesitng', 'bukti_pengaduan/SbVdKjHrIegaJVaiFPXc50sQYFFpQvWkBrW0rVd2.pdf', '[Untitled].pdf', '001', NULL, NULL, 'I Putu Dyatmika', '2019-10-06 20:21:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduanwebchat`
--

CREATE TABLE `pengaduanwebchat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_edited_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduanwebchat`
--

INSERT INTO `pengaduanwebchat` (`id`, `id_user`, `nama_user`, `isi_pesan`, `last_edited_by`, `created_at`, `updated_at`) VALUES
(1, '2', 'I Putu Dyatmika', 'fgd', 'I Putu Dyatmika', '2019-10-06 18:19:24', '2019-10-06 18:19:24'),
(2, '2', 'I Putu Dyatmika', 'asdfasfsa', 'I Putu Dyatmika', '2019-10-06 18:19:31', '2019-10-06 18:19:31'),
(3, '6', 'Testing', 'test', 'Testing', '2019-10-06 19:37:38', '2019-10-06 19:37:38'),
(4, '6', 'Testing', 'coba lagi', 'Testing', '2019-10-06 20:02:15', '2019-10-06 20:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `statuspengaduan`
--

CREATE TABLE `statuspengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjelasan_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuspengaduan`
--

INSERT INTO `statuspengaduan` (`id`, `kode_status`, `penjelasan_status`) VALUES
(1, '001', 'Laporan Pengaduan Tersimpan Dalam Database'),
(2, '002', 'Jenis Laporan Pengaduan Sesuai dan Dapat Ditlanjutkan Untuk Dibahas Dalam Rapat Pimpinan'),
(3, '003', 'Jenis Laporan Pengaduan Tidak Sesuai dan Tidak Dapat Dilanjutkan Untuk Dibahas Dalam Rapat Pimpinan'),
(4, '004', 'Laporan Pengaduan Sedang Dalam Proses Pembahasan Oleh Pimpinan'),
(5, '005', 'Laporan Pengaduan Diteruskan Ke Bidang/Unit Terkait Untuk Ditindaklanjuti Sesuai Hasil Rapat'),
(6, '006', 'Laporan Pengaduan Ditutup Dengan Disertai Penjelasan'),
(7, '007', 'Laporan Pengaduan Selesai Ditindaklanjuti');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wahyudi septiawan', 'wahyu.d.septiawan@gmail.com', '10', NULL, '$2y$10$XAZv3VQEPjOzW06/ZANug.6q3/dwL7dtuiCQPNVbeeT/4ETw7ivMy', NULL, NULL, NULL),
(2, 'I Putu Dyatmika', 'dyatmika@bps.go.id', '10', NULL, '$2y$10$nUBpimjCzg/QLbrw1m5FP.b3DtPRWX.fDuXuva6l98iuiqZgiGQDW', NULL, NULL, NULL),
(3, 'Anang Zakaria', 'anangz@bps.go.id', '10', NULL, '$2y$10$eoX7OE3I.C2UpssW4j0n1u8MwMbqF1tMoG9CipEbZf.L2ZcQtwEMK', NULL, NULL, NULL),
(4, 'Arrief Chandra Setiawan', 'arrief@bps.go.id', '10', NULL, '$2y$10$hbavzZMjtHDmqBlSKosGquUztoWIsLc/n83K5y3s8N497vDJre68m', NULL, NULL, NULL),
(5, 'pelapor', 'wahyudi.septiawan@bps.go.id', '1', NULL, '$2y$10$9QroqLL5zSy7fJtRPPNeqe.uidaGEdWaRyVKLwpw8swMvYT2o1jKO', NULL, NULL, NULL),
(6, 'Testing', 'test@testing.com', '1', NULL, '$2y$10$soMIScqA3ySabFjeJecUrOwVi6x1R5tu2aEuHnR3eHYFUGBmlFjXi', NULL, '2019-10-06 18:01:21', '2019-10-06 18:01:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminleveruser`
--
ALTER TABLE `adminleveruser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kodepengaduan`
--
ALTER TABLE `kodepengaduan`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduanwebchat`
--
ALTER TABLE `pengaduanwebchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuspengaduan`
--
ALTER TABLE `statuspengaduan`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `adminleveruser`
--
ALTER TABLE `adminleveruser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kodepengaduan`
--
ALTER TABLE `kodepengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengaduanwebchat`
--
ALTER TABLE `pengaduanwebchat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuspengaduan`
--
ALTER TABLE `statuspengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
