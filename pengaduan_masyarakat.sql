-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 06:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertpeugas` (IN `id_ptgs` INT(11), IN `nama_ptgs` VARCHAR(35), IN `username_ptgs` VARCHAR(25), IN `password_ptgs` VARCHAR(32), IN `telp_ptgs` VARCHAR(13), IN `level_ptgs` ENUM('admin','petugas'))  INSERT INTO petugas (id_petugas, nama_petugas, username, password, telp, level) VALUES (id_ptgs, nama_ptgs, username_ptgs, password_ptgs, telp_ptgs, level_ptgs)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_pengaduan`
-- (See below for the actual view)
--
CREATE TABLE `data_pengaduan` (
`nik` char(11)
,`nama` varchar(35)
,`tgl_pengaduan` date
,`isi_laporan` text
);

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` char(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('32011989609', 'Mara Humaerotuz Zahra', 'mara', '202cb962ac59075b964b07152d234b70', '087635237441'),
('32012766450', 'Milda Maylani', 'milda', '202cb962ac59075b964b07152d234b70', '086435364219'),
('32013097756', 'Risma Tri Wahyuni', 'risma', '202cb962ac59075b964b07152d234b70', '088391464124'),
('32014084937', 'Lengkara', 'kara', '202cb962ac59075b964b07152d234b70', '083264264645'),
('32015784783', 'Masnaka', 'naka', '202cb962ac59075b964b07152d234b70', '089638253127'),
('32081662863', 'Ihsan', 'ihsan', '202cb962ac59075b964b07152d234b70', '086327215447');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(11) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2023-02-28', '32014084937', 'ini pengaduan', 'bg-sakura_3.jpg', 'selesai'),
(2, '2023-02-28', '32015784783', 'ini pengaduan', 'bg-biru.jpg', 'selesai'),
(3, '2023-02-28', '32011989609', 'banjir', 'download_1.jpeg', 'selesai'),
(4, '2023-03-01', '32012766450', 'Longsor', 'download (1)_1.jpeg', 'selesai'),
(5, '2023-03-01', '32013097756', 'Pohon tumbang', 'download (2)_1.jpeg', 'selesai'),
(6, '2023-03-01', '32014084937', 'Gunung meletus', 'download (3)_2.jpeg', 'selesai'),
(7, '2023-03-01', '32015784783', 'Gempa', 'images_1.jpeg', 'selesai'),
(9, '2023-03-16', '32011989609', 'jalan rusak', 'jalan rusak_1.jpeg', 'selesai'),
(10, '2023-03-16', '32012766450', 'jalan rusak', 'jalan rusak_2.jpeg', 'selesai'),
(11, '2023-03-16', '32013097756', 'jalan rusak', 'jalan rusak_3.jpeg', 'selesai'),
(12, '2023-03-16', '32081662863', 'Banyak sampah yang menumpuk di pinggir jalan dikarenakan masyarakat yang membuang sampah sembarangan, saya harap aparat desa bisa menangani masalah ini secepatnya.', 'sampah kotor.jpeg', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'Rahma Khaerunisa', 'rahma', '202cb962ac59075b964b07152d234b70', '085795628376', 'admin'),
(2, 'Mila Nurfala', 'mila', '202cb962ac59075b964b07152d234b70', '085375437476', 'petugas'),
(3, 'Adibya Lofarsa', 'adib', '202cb962ac59075b964b07152d234b70', '084364753583', 'admin'),
(4, 'Malioboro Hartigan', 'malio', '202cb962ac59075b964b07152d234b70', '087314636531', 'petugas'),
(5, 'Puspa Niskala', 'puspa', '202cb962ac59075b964b07152d234b70', '083612457541', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `isi_tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `isi_tanggapan`, `id_petugas`) VALUES
(1, 1, '2023-02-28', '', 1),
(2, 2, '2023-02-28', '', 4),
(3, 3, '2023-02-28', 'sudah diatasi', 2),
(4, 4, '2023-03-01', 'Sudah diatasi', 5),
(5, 5, '2023-03-01', 'Sudah diatasi', 5),
(6, 7, '2023-03-01', 'Sudah diatasi', 2),
(7, 6, '2023-03-01', 'Sudah diatasi', 4),
(8, 9, '2023-03-16', 'oke', 2),
(9, 10, '2023-03-16', 'oke', 4),
(10, 11, '2023-03-16', 'oke', 5),
(11, 12, '2023-03-16', 'Kami akan segera menyiapkan tempat sampah di tempat umum', 1);

-- --------------------------------------------------------

--
-- Structure for view `data_pengaduan`
--
DROP TABLE IF EXISTS `data_pengaduan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_pengaduan`  AS   (select `masyarakat`.`nik` AS `nik`,`masyarakat`.`nama` AS `nama`,`pengaduan`.`tgl_pengaduan` AS `tgl_pengaduan`,`pengaduan`.`isi_laporan` AS `isi_laporan` from (`masyarakat` join `pengaduan`) where `masyarakat`.`nik` = `pengaduan`.`nik`)  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
