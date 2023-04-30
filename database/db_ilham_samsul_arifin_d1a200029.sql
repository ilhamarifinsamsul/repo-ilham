-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 07:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ilham_samsul_arifin_d1a200029`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jk` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id`, `nama`, `alamat`, `jk`, `agama`, `asal_sekolah`) VALUES
(3, 'Saeful Hidayat', 'Sinar Bakti, Cijambe, Subang', 'Laki-laki', 'Islam', 'SMK Bintek Subang'),
(9, 'Fajar Andika', 'Dangdeur. Subang', 'Laki-laki', 'Kristen', 'SMAN 3 Subang'),
(10, 'Dayat Sudayat', 'Subang', 'Laki-laki', 'Islam', 'SMAN 1 Subang'),
(11, 'Rispan Dani', 'Buana Subang Raya, Subang', 'Laki-laki', 'Budha', 'MAN 1 Subang'),
(12, 'Fiki Usman', 'Cigadung, Subang', 'Laki-laki', 'Islam', 'SMAN 2 Subang'),
(13, 'Paulina', 'Kebayoran, Jakarta Pusat', 'Perempuan', 'Kristen', 'SMAN 1 Jakarta'),
(14, 'Patricia Simorangkir', 'Medan, Sumatra Utara', 'Perempuan', 'Konghucu', 'SMAN 2 Medan'),
(15, 'Baihaki Simorangkir', 'Medan, Sumatra Utara', 'Laki-laki', 'Kristen', 'SMAN 1 Medan'),
(17, 'Dara Aisyah', 'Semarang, Jawa Tengah', 'Perempuan', 'Islam', 'SMAN 1 Semarang'),
(18, 'Gina Suci Hati', 'Subang, Jawa Barat', 'Perempuan', 'Islam', 'MAN 1 Subang'),
(19, 'Riska Nurhaliza', 'Pagagen, Subang', 'Perempuan', 'Islam', 'SMAN 3 Subang'),
(20, 'I Made Agung', 'Denpasar, Bali', 'Laki-laki', 'Hindu', 'SMAN 1 Denpasar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'ilham', '$2y$10$745OSGqFL24bcTb2aXONwekrKkcUaTumFFeNeVQsYm.jWxitSqosO'),
(2, 'admin', '$2y$10$VZB0GObjiqhI70RhQYxNl.kxEZBRZQVhXwQZnLBJRWmpkT968KflO'),
(6, 'samsul', '$2y$10$j3QJF4AfOBSAsRlCL.TysODznnf1tKI/EchZpmMiKuhzzzvRb8VJa'),
(7, '', '$2y$10$6Ao9EG8NdVl7TtO.X27Nn.yK4iTyEHHle0/weGsphqQXrNuI5Q2zK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
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
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
