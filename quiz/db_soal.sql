-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 05:00 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_soal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id_soal` int(5) NOT NULL,
  `tipe_soal` varchar(20) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(40) NOT NULL,
  `b` varchar(40) NOT NULL,
  `c` varchar(40) NOT NULL,
  `d` varchar(40) NOT NULL,
  `knc_jawaban` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `tipe_soal`, `soal`, `a`, `b`, `c`, `d`, `knc_jawaban`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'pg', 'Dibawah merupakan tipe data bilangan bulat adalah ...', 'char', 'double', 'float', 'int', 'd', '', '0000-00-00', 'Y'),
(2, 'pg', 'Tipe data bahasa C++ untuk true false adalah ...', 'string', 'char', 'boolean', 'float', 'c', '', '0000-00-00', 'Y'),
(3, 'pg', 'Tipe data yang cocok untuk menampung nama siswa adalah ...', 'string', 'int', 'boolean', 'char', 'a', '', '0000-00-00', 'Y'),
(4, 'pg', 'Tipe-tipe data berikut akan memberi nilai output, kecuali ...\r\n', 'int', 'float', 'void', 'char', 'c', '', '0000-00-00', 'Y'),
(5, 'pg', 'Berikut ini adalah tipe data dalam c++ ...', 'int, float, char, double, cons', 'int, float, char, double', 'float, double float, long int', 'void, main, char, double', 'b', '', '0000-00-00', 'Y'),
(6, 'pg', 'Suatu identifier yang nilainya tidak tetap atau nilainya merupakan hasil dari suatu proses, disebut ...', 'Variabel', 'Tipe data', 'Array', 'Function', 'a', '', '0000-00-00', 'Y'),
(7, 'pg', 'Operator logika yang menyatakan "atau" dalam lambang berikut ini adalah ...', '&&', '||', '!', '==', 'b', '', '0000-00-00', 'Y'),
(8, 'pg', 'Fungsi dari operator % sebagai ...', 'Pembagian 2 bilangan', 'Membagi perseratus persen', 'Presentase 2 bilangan', 'Mencari sisa pembagian 2 bilangan', 'd', '', '0000-00-00', 'Y'),
(9, 'pg', 'Yang termasuk operator logika ingkaran adalah ...', '!', '&&', '==', '||', 'a', '', '0000-00-00', 'Y'),
(10, 'pg', 'Operator untuk menyatakan tidak sama dengan dalam c++ adalah ...\r\n', '==', '=!', '>=', '!=', 'd', '', '0000-00-00', 'Y'),
(11, 'jawaban_singkat', 'Berikut cara pendeklarasian berikut inisialisasi untuk variabel bertipe integer .... angka=5', '', '', '', '', 'int', '', '0000-00-00', 'Y'),
(12, 'jawaban_singkat', 'Hasil dari int a=10*2+(3/1) adalah ...', '', '', '', '', '23', '', '0000-00-00', 'Y'),
(13, 'jawaban_singkat', 'Tipe data untuk bilangan desimal adalah ...', '', '', '', '', 'float', '', '0000-00-00', 'Y'),
(14, 'jawaban_singkat', 'Format Specifier "%c" merupakan Format Specifier untuk tipe data ...', '', '', '', '', 'character', '', '0000-00-00', 'Y'),
(15, 'jawaban_singkat', 'Jenis perulangan dimana batas awal dan batas akhirnya sudah ditentukan adalah ...', '', '', '', '', 'for', '', '0000-00-00', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id_soal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
