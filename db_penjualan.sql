-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 04:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Pensil', 'Fabel Castel', '1500', '3000', 'PCS', '101', '20 Maret 2023, 0:41', NULL),
(2, 'BR002', 5, 'Sabun', 'Lifeboy', '1800', '3000', 'PCS', '38', '20 Maret 2023, 0:41', '20 Maret 2023, 0:54'),
(3, 'BR003', 1, 'Pulpen', 'Standard', '1500', '2000', 'PCS', '68', '20 Maret 2023, 1:34', NULL),
(4, 'BR004', 7, 'Sprite', 'Sana', '10000', '12000', 'PCS', '9', '20 Maret 2023, 22:05', '20 Maret 2023, 22:06'),
(5, 'BR005', 8, 'ASUS A516JP I5', 'ASUS', '11000000', '11500000', 'PCS', '9', '20 Maret 2023, 17:43', NULL),
(6, 'BR006', 9, 'Mouse', 'Logitech', '50000', '100000', 'PCS', '100', '20 Maret 2023, 17:45', NULL),
(7, 'BR007', 8, 'ASUS ROG GX501VI-GZ001T - Black', 'ASUS', '50000000', '51000000', 'PCS', '5', '20 Maret 2023, 17:47', NULL),
(8, 'BR008', 10, 'HDD Acer 1000GB', 'ACER', '300000', '350000', 'PCS', '12', '20 Maret 2023, 17:48', NULL),
(9, 'BR009', 10, 'SSD VGEN 512GB', 'VGEN', '500000', '650000', 'PCS', '10', '20 Maret 2023, 17:49', NULL),
(10, 'BR010', 8, 'Acer Aspire 3 A314-32', 'ACER', '4600000', '5000000', 'PCS', '10', '20 Maret 2023, 17:50', NULL),
(11, 'BR011', 11, 'SSD VGEN 512GB', 'VGEN', '600000', '650001', 'PCS', '18', '20 Maret 2023, 17:52', NULL),
(12, 'BR012', 11, 'HDD Acer 1000GB', 'ACER', '300000', '400000', 'PCS', '18', '20 Maret 2023, 17:53', NULL),
(15, 'BR013', 12, 'FD', 'VGEN', '20000', '25000', 'PCS', '7', '20 Maret 2023, 6:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Laptop', '29 Maret 2023, 10:40'),
(11, 'Memori', '29 Maret 2023, 10:52');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '9aee052e0bf75073fdb55bfa82f074da', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Mohammad Ivan Awaludin', 'Cirebon', '08987368061', 'mhmmdivn@gmail.com', '202102084.jpg', '202102084');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 1, '4', '12000', '6 Januari 2023, 0:45', '10-2023'),
(2, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(3, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(4, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(5, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(6, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(7, 'BR001', 1, '2', '6000', '6 October 2020, 1:15', '10-2020'),
(8, 'BR002', 1, '2', '6000', '6 October 2020, 1:17', '10-2020'),
(9, 'BR001', 1, '2', '6000', '6 October 2020, 1:20', '10-2020'),
(10, 'BR001', 1, '2', '6000', '6 October 2020, 1:51', '07-2021'),
(11, 'BR003', 1, '1', '2000', '14 July 2021, 18:13', '07-2021'),
(12, 'BR003', 1, '1', '2000', '14 July 2021, 23:42', '07-2021'),
(13, 'BR004', 1, '1', '12000', '15 July 2021, 22:07', '07-2021'),
(14, 'BR004', 1, '2', '24000', '15 July 2021, 22:07', '07-2021'),
(15, 'BR012', 1, '1', '400000', '27 Maret 2023, 17:54', '03-2023'),
(16, 'BR011', 1, '1', '650001', '27 Maret 2023, 17:54', '03-2023'),
(17, 'BR011', 1, '1', '650001', '27 Maret 2023, 18:17', '03-2023'),
(18, 'BR010', 1, '1', '5000000', '28 Maret 2023, 18:17', '03-2023'),
(19, 'BR012', 1, '2', '800000', '28 Maret 2023, 6:46', '03-2023'),
(20, 'BR010', 1, '1', '5000000', '28 Maret 2023, 6:46', '03-2023'),
(21, 'BR012', 1, '1', '400000', '28 Maret 2023, 21:29', '03-2023'),
(22, 'BR012', 1, '1', '400000', '28 Maret 2023, 21:50', '03-2023'),
(23, 'BR012', 1, '1', '400000', '29 March 2023, 10:00', '03-2023'),
(24, 'BR005', 1, '1', '11500000', '29 March 2023, 10:01', '03-2023');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(40, 'BR012', 1, '1', '400000', '29 March 2023, 10:00'),
(41, 'BR005', 1, '1', '11500000', '29 March 2023, 10:01');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Laptop Store Bandung', ' Jl. Dipati Ukur No.100, RW.01, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132.', '+6281324046899', 'Mohammad Ivan Awaludin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
