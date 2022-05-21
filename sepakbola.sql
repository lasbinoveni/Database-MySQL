-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 09:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sepakbola`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_panitia`
--

CREATE TABLE `anggota_panitia` (
  `nopemain` int(11) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `posisi` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota_panitia`
--

INSERT INTO `anggota_panitia` (`nopemain`, `tanggal_awal`, `tanggal_akhir`, `posisi`) VALUES
(2, '2006-05-30', '2007-08-08', 'anggota'),
(2, '2007-08-09', '2008-05-30', 'ketua'),
(6, '2005-05-25', '2006-09-28', 'sekretaris'),
(6, '2006-09-29', '2007-10-11', 'bendahara'),
(6, '2007-10-12', '2009-11-17', 'anggota'),
(6, '2009-11-18', '2010-01-19', 'ketua'),
(29, '2014-03-02', '2014-09-28', 'sekretaris'),
(33, '2011-01-01', '2011-09-10', 'anggota'),
(33, '2011-09-11', '0000-00-00', 'bendahara');

-- --------------------------------------------------------

--
-- Table structure for table `hukuman`
--

CREATE TABLE `hukuman` (
  `nopembayaran` int(11) NOT NULL,
  `nopemain` int(11) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `jumlah` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hukuman`
--

INSERT INTO `hukuman` (`nopembayaran`, `nopemain`, `tanggal_pembayaran`, `jumlah`) VALUES
(1, 6, '2001-12-08', '100.00'),
(2, 31, '2000-09-10', '75.00'),
(3, 89, '1994-05-05', '25.00'),
(4, 71, '1995-12-30', '30.00'),
(5, 67, '2005-03-09', '70.00'),
(6, 47, '2002-10-05', '65.00'),
(7, 31, '2001-09-28', '78.00'),
(8, 31, '2003-10-21', '175.00');

-- --------------------------------------------------------

--
-- Table structure for table `pemain`
--

CREATE TABLE `pemain` (
  `nopemain` int(11) NOT NULL,
  `nama` char(25) NOT NULL,
  `inisial` char(5) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `bergabung` smallint(6) NOT NULL,
  `jalan` varchar(30) NOT NULL,
  `norumah` char(4) DEFAULT NULL,
  `kodepos` char(6) DEFAULT NULL,
  `kota` varchar(30) NOT NULL,
  `notelp` char(15) DEFAULT NULL,
  `noliga` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemain`
--

INSERT INTO `pemain` (`nopemain`, `nama`, `inisial`, `tanggal_lahir`, `jenis_kelamin`, `bergabung`, `jalan`, `norumah`, `kodepos`, `kota`, `notelp`, `noliga`) VALUES
(2, 'rico', 'ric', '1988-04-21', 'L', 2001, 'jln kenangga', '21', '673433', 'medan', '061-363729', NULL),
(6, 'robert', 'R', '1981-06-25', 'L', 2000, 'jln medan', '27', '342623', 'siantar', '0622-363723', '8467'),
(7, ',Rotua', 'Rot', '1975-08-30', 'P', 1996, 'jln kenari', '63', '123456', 'klaten', '0272-346343', '7463'),
(9, 'rini', 'rin', '1988-03-19', 'P', 2003, 'jln bangau', '37', '23456', 'bandung', '022-343211', '3321');

-- --------------------------------------------------------

--
-- Table structure for table `permainan`
--

CREATE TABLE `permainan` (
  `nopermainan` int(11) NOT NULL,
  `notim` int(11) NOT NULL,
  `nopemain` int(11) NOT NULL,
  `menang` int(11) NOT NULL,
  `kalah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permainan`
--

INSERT INTO `permainan` (`nopermainan`, `notim`, `nopemain`, `menang`, `kalah`) VALUES
(1, 1, 6, 3, 1),
(2, 1, 6, 2, 3),
(3, 1, 6, 3, 0),
(4, 1, 7, 3, 2),
(5, 1, 9, 0, 3),
(6, 1, 12, 1, 3),
(7, 1, 29, 3, 0),
(8, 1, 31, 0, 3),
(9, 2, 33, 3, 2),
(10, 2, 45, 3, 2),
(11, 2, 47, 2, 3),
(12, 2, 67, 1, 3),
(13, 2, 70, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `notim` int(11) NOT NULL,
  `nopemain` int(11) NOT NULL,
  `divisi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`notim`, `nopemain`, `divisi`) VALUES
(1, 9, 'pertama'),
(2, 71, 'kedua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_panitia`
--
ALTER TABLE `anggota_panitia`
  ADD PRIMARY KEY (`nopemain`,`tanggal_awal`);

--
-- Indexes for table `hukuman`
--
ALTER TABLE `hukuman`
  ADD PRIMARY KEY (`nopembayaran`);

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`nopemain`);

--
-- Indexes for table `permainan`
--
ALTER TABLE `permainan`
  ADD PRIMARY KEY (`nopermainan`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`notim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
