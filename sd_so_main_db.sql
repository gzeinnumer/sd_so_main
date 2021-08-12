-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Agu 2021 pada 15.38
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd_so_main_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sd_so_main_tb`
--

CREATE TABLE `sd_so_main_tb` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sd_so_main_tb`
--

INSERT INTO `sd_so_main_tb` (`id`, `parent_id`, `name`, `code`) VALUES
(1, NULL, 'Indonesia', 'ID'),
(2, 1, 'Sumatera', 'SUM'),
(3, 2, 'Sumatera Barat', 'SB'),
(4, 3, 'Padang', 'PDG'),
(5, 4, 'Balai Baru', 'BB'),
(6, 1, 'JAWA', 'JAVA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sd_so_main_tb`
--
ALTER TABLE `sd_so_main_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sd_so_main_tb`
--
ALTER TABLE `sd_so_main_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
