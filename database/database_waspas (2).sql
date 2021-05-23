-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2021 pada 11.38
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_waspas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `nama_lengkap`, `password`) VALUES
(1, 'Fadil', 'Fadil Fahrizal', 'Fadil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_pelatih`
--

CREATE TABLE `calon_pelatih` (
  `id_calon_pelatih` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `lisensi` text NOT NULL,
  `pengalaman_melatih` varchar(35) NOT NULL,
  `visi_misi` text NOT NULL,
  `pengalaman_bermain` varchar(35) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `sertifikat_lisensi` varchar(255) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `calon_pelatih`
--

INSERT INTO `calon_pelatih` (`id_calon_pelatih`, `nama`, `email`, `password`, `lisensi`, `pengalaman_melatih`, `visi_misi`, `pengalaman_bermain`, `no_hp`, `alamat`, `sertifikat_lisensi`, `keterangan`) VALUES
(1, 'Abdullah rahman', 'abdullahrahman@gmail.com', '1234567', 'A', '14', ' Saya Akan Memajukan Persepak bolaan medan terutama psms, dengan skil dan pengalaman yang saya miliki ', '11', '085893999333', ' Jl. Gatot subroto', '20210420054513laporan_hasil.pdf', 'Sesuai'),
(2, 'Edy Syahputra', 'edysyahputra@gmail.com', '1234567', 'A', '9', ' Saya Akan Memajukan Persepak bolaan medan terutama psms, dengan skil dan pengalaman yang saya miliki ', '10', '085893999333', '', '', 'Sesuai'),
(3, 'Suharto', 'suharto@gmail.com', '1234567', 'A', '8', ' Saya Akan Memajukan Persepak bolaan medan terutama psms, dengan skil dan pengalaman yang saya miliki ', '12', '085893999333', '', '', ''),
(4, 'Ansyari Lubis', 'ansyarilubis@gmail.com', '1234567', 'A', '17', ' Saya Akan Memajukan Persepak bolaan medan terutama psms, dengan skil dan pengalaman yang saya miliki ', '13', '085893999333', '', '', ''),
(5, 'Suimin Diharjo', 'suimindiharjo@gmail.com', '1234567', 'A', '12', ' Saya Akan Memajukan Persepak bolaan medan terutama psms, dengan skil dan pengalaman yang saya miliki ', '8', '085893999333', '', '', ''),
(6, 'Liestiadi', 'lestiadi@gmail.com', '1234567', 'A', '20', '  Saya Akan Memajukan Persepak bolaan medan terutama psms, dengan skil dan pengalaman yang saya miliki ', '8', '085893999333', ' Jl. Jalan', '2021042105212120210420054513laporan_hasil.pdf', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(12) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `bobot`) VALUES
(2, 'C1', 'Lisensi', 0.7),
(3, 'C2', 'Pengalaman Melatih', 0.1),
(4, 'C3', 'Pengalaman Bermain', 0.05),
(5, 'C4', 'Visi dan Misi', 0.05),
(6, 'C5', 'Pemahaman Taktik', 0.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_calon_komandan` int(11) NOT NULL,
  `nama_calon_komandan` int(11) NOT NULL,
  `pesan_peng` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_calon_pelatih` int(11) NOT NULL,
  `C1` int(11) NOT NULL,
  `C2` int(11) NOT NULL,
  `C3` int(11) NOT NULL,
  `C4` int(11) NOT NULL,
  `C5` int(11) NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_calon_pelatih`, `C1`, `C2`, `C3`, `C4`, `C5`, `hasil`) VALUES
(2, 2, 4, 1, 2, 1, 1, 0.7096),
(5, 5, 4, 2, 1, 1, 1, 0.7096),
(6, 6, 5, 3, 1, 3, 2, 0.9705);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_sub` varchar(255) NOT NULL,
  `bobot_sub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama_sub`, `bobot_sub`) VALUES
(1, 2, 'A Pro', 5),
(2, 2, 'A', 4),
(4, 2, 'B', 3),
(5, 2, 'C', 2),
(6, 2, 'D', 1),
(7, 3, '16-20 Tahun', 3),
(8, 3, '10-15 Tahun', 2),
(9, 3, '5-9 Tahun', 1),
(10, 5, 'Sangat Baik', 3),
(11, 5, 'Baik', 2),
(12, 5, 'Cukup', 1),
(13, 6, 'Sangat Baik', 2),
(14, 6, 'Baik', 1),
(15, 4, '16-20 Tahun', 3),
(16, 4, '10-15 Tahun', 2),
(17, 4, '5-9 Tahun', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `calon_pelatih`
--
ALTER TABLE `calon_pelatih`
  ADD PRIMARY KEY (`id_calon_pelatih`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_calon_komandan` (`id_calon_pelatih`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `calon_pelatih`
--
ALTER TABLE `calon_pelatih`
  MODIFY `id_calon_pelatih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
