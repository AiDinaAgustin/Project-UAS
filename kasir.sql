-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2023 pada 16.22
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` text NOT NULL,
  `Stok` int(11) NOT NULL,
  `Satuan` text NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Stok`, `Satuan`, `Harga`) VALUES
('B001', 'Buku Sidu 48L', 7, 'Pack', 24000),
('B002', 'Pulpen Pilot ', 5, 'Buah', 2000),
('B012', 'Tango Cheese 600g', 3, 'Kaleng', 48000),
('B020', 'Nissin Wafers 600g', 16, 'Kaleng', 45000),
('CA001', 'Paseo 250 Sheets', 3, 'Buah', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_barang`
--

CREATE TABLE `detail_barang` (
  `Kode_Detail` varchar(10) NOT NULL,
  `Kode_Barang` varchar(10) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_barang`
--

INSERT INTO `detail_barang` (`Kode_Detail`, `Kode_Barang`, `Harga`, `Jumlah`, `Discount`, `Subtotal`) VALUES
('DTRX001', 'CA001', 20000, 1, 0, 20000),
('DTRX002', 'CA001', 20000, 2, 1000, 39000),
('DTRX003', 'B002', 2000, 2, 0, 4000),
('DTRX003', 'CA001', 20000, 1, 500, 19500),
('DTRX004', 'B012', 48000, 2, 2500, 93500),
('DTRX004', 'B001', 24000, 1, 0, 24000),
('DTRX004', 'B002', 2000, 1, 0, 2000),
('DTRX005', 'B001', 24000, 2, 0, 48000),
('DTRX005', 'B002', 2000, 2, 0, 4000),
('DTRX006', 'B002', 2000, 2, 0, 4000),
('DTRX007', 'B012', 48000, 2, 0, 96000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `Kode_Transaksi` varchar(10) NOT NULL,
  `Kode_Detail` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`Kode_Transaksi`, `Kode_Detail`, `Tanggal`, `Jam`, `Total`) VALUES
('TRX001', 'DTRX001', '2018-07-12', '05:04:00', 200000),
('TRX002', 'DTRX002', '2018-07-13', '09:33:19', 39000),
('TRX003', 'DTRX003', '2018-07-16', '09:20:30', 23500),
('TRX004', 'DTRX004', '2018-07-13', '09:21:37', 119500),
('TRX005', 'DTRX005', '2018-07-16', '09:22:09', 52000),
('TRX006', 'DTRX006', '2018-07-16', '09:22:32', 4000),
('TRX007', 'DTRX007', '2018-07-16', '09:22:56', 96000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
