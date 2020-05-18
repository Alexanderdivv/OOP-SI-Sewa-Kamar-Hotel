-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3307
-- Generation Time: 18 Mei 2020 pada 10.42
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sewakamarpbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ckin`
--

CREATE TABLE IF NOT EXISTS `ckin` (
  `idPenyewa` varchar(10) NOT NULL,
  `namaPenyewa` varchar(50) NOT NULL,
  `no_telp` int(20) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `idPegawai` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_ckin` varchar(20) NOT NULL,
  `tgl_ckout` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ckin`
--

INSERT INTO `ckin` (`idPenyewa`, `namaPenyewa`, `no_telp`, `pekerjaan`, `jenkel`, `idPegawai`, `alamat`, `tgl_ckin`, `tgl_ckout`) VALUES
('pel003', 'Andinia', 62346665, 'PNS', 'Perempuan', 'p001', 'Jl.Perjuangan Bandar Lampung', '12-12-2020', '21-12-2020'),
('pel004', 'Budi Kus', 62339845, 'Atlet', 'Laki Laki', 'p001', 'Jl.busan, Medan, Sumatera Utara', '09-12-2020', '13-12-2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE IF NOT EXISTS `sewa` (
  `noTransaksi` varchar(30) NOT NULL,
  `harga` int(30) NOT NULL,
  `totalbayar` int(30) NOT NULL,
  `lamanginap` int(3) NOT NULL,
  `idPenyewa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`noTransaksi`, `harga`, `totalbayar`, `lamanginap`, `idPenyewa`) VALUES
('0001', 200000, 600000, 3, 'pel003'),
('0003', 300000, 2700000, 9, 'pel003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idPegawai` varchar(10) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `usia` int(3) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idPegawai`, `nama_pegawai`, `pass`, `no_telp`, `usia`, `alamat`) VALUES
('p001', 'Ariana Grande', 'pegawai', '628203040', 20, 'Jl.Medan Perjuangan, spanyol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ckin`
--
ALTER TABLE `ckin`
 ADD PRIMARY KEY (`idPenyewa`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
 ADD PRIMARY KEY (`noTransaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`idPegawai`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
