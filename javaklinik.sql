-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 09:15 AM
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
-- Database: `java_klinik`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `inputDataPe` (IN `name` VARCHAR(50), IN `user_name` VARCHAR(50), IN `branch` VARCHAR(50))   BEGIN
    insert into student (name,user_name,branch) values (name ,user_name,branch);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inputDataPembayaran` (IN `name` VARCHAR(100), IN `tindakan` VARCHAR(100), IN `cost` VARCHAR(100))   BEGIN
INSERT INTO pembayaran (nama,jenis_tindakan,biaya) VALUES (name,tindakan,cost);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inputDataPendaftaran` (IN `nik_in` VARCHAR(18), IN `nama_in` VARCHAR(100), IN `jenkel_in` ENUM('Laki-laki','Perempuan','',''), IN `alamat_in` TEXT, IN `telp_in` VARCHAR(14), IN `poli_in` VARCHAR(50), IN `ruang_in` VARCHAR(50), IN `tgl_in` DATE)   BEGIN
    insert INTO pendaftaran (nik,nama,jenis_kelamin,alamat,telp,poli,ruang,tanggal) VALUES (nik_in,nama_in,jenkel_in,alamat_in,telp_in,poli_in,ruang_in,tgl_in);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_tindakan` varchar(50) NOT NULL,
  `biaya` varchar(122) NOT NULL,
  `obat` varchar(255) NOT NULL,
  `biaya_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nama`, `jenis_tindakan`, `biaya`, `obat`, `biaya_obat`) VALUES
(12, 'rafli dias ', 'Pemeriksaan Umum', '100000', 'Obat Mata 2', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `nik` varchar(18) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(14) NOT NULL,
  `poli` varchar(50) NOT NULL,
  `ruang` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`nik`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `poli`, `ruang`, `tanggal`) VALUES
('22050974106', 'rafli dias ', 'Laki-laki', 'jojoran 1', '089506006594', 'Poli Umum', 'Ruang 01.11 – dr. Irawati', '2023-06-02'),
('2232313', 'tretre', 'Laki-laki', 'gjyugg', '098978789', 'Poli Umum', 'Ruang 01.11 – dr. Irawati', '2023-06-08'),
('asdas', 'asdasd', 'Laki-laki', 'asdad', 'asasd', 'Poli Mata', 'Ruang 01.21 – dr. Gunawan Sp.M', '2023-06-04'),
('sd', 'sd', 'Laki-laki', 'asdas', '10293', 'Poli Mata', 'Ruang 01.21 – dr. Gunawan Sp.M', '2023-06-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
