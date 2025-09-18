-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2024 pada 12.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-siakad-kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id_dosen` int(11) NOT NULL,
  `kode_dosen` varchar(10) DEFAULT NULL,
  `nidn` varchar(10) DEFAULT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `foto_dosen` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id_dosen`, `kode_dosen`, `nidn`, `nama_dosen`, `foto_dosen`, `password`) VALUES
(1, 'DSN00001', '1111111111', 'Mardalius, M.Kom', 'dosen.jpg', '1234'),
(2, 'DSN00002', '1111111112', 'Lius, M.Kom', 'dosen.jpg', '1234'),
(3, 'DSN00003', '1111111113', 'Marwan, M.Kom', 'dosen.jpg', '1234'),
(4, 'DSN00004', '1111111114', 'Badu, M.Kom', 'dosen.jpg', '1234'),
(5, 'DSN00005', '1111111115', 'ADA UDI FIRMANSYAH, M.Kom', 'dosen.jpg', '1234'),
(6, 'DSN00006', '1111111116', 'AFDHAL SYAFNUR, M.Kom', 'dosen.jpg', '1234'),
(7, 'DSN00007', '1111111117', 'AFRISAWATI, M.Kom', 'dosen.jpg', '1234'),
(8, 'DSN00008', '1111111118', 'AHMAD MUHAZIR, M.Kom', 'dosen.jpg', '1234'),
(9, 'DSN00009', '1111111119', 'AKMAL, M.Hum', 'dosen.jpg', '1234'),
(10, 'DSN00010', '1111111120', 'AKMAL NASUTION, M.Kom', 'dosen.jpg', '1234'),
(11, 'DSN00011', '1111111121', 'ANDY SAPTA, M.Pd., Si', 'dosen.jpg', '1234'),
(12, 'DSN00012', '1111111122', 'ARRIDHA ZIKRA SYAH, M.Kom', 'dosen.jpg', '1234'),
(13, 'DSN00013', '1111111123', 'CECEP MAULANA, M.S.', 'dosen.jpg', '1234'),
(14, 'DSN00014', '1111111124', 'CHITRA LATIFFANI, M.Hum', 'dosen.jpg', '1234'),
(15, 'DSN00015', '1111111125', 'DEWI ANGGRAENI, M.Kom', 'dosen.jpg', '1234'),
(16, 'DSN00016', '1111111126', 'EDI KURNIAWAN, M.Kom', 'dosen.jpg', '1234'),
(17, 'DSN00017', '1111111127', 'ELLY RAHAYU, M.M.', 'dosen.jpg', '1234'),
(18, 'DSN00018', '1111111128', 'FEBBY MADONNA YUMA, M.Kom', 'dosen.jpg', '1234'),
(19, 'DSN00019', '1111111129', 'FEBRI DRISTYAN, M.Kom', 'dosen.jpg', '1234'),
(20, 'DSN00020', '1111111130', 'GUNTUR MAHAPUTRA, M.Kom', 'dosen.jpg', '1234'),
(21, 'DSN00021', '1111111131', 'HAMBALI, M.Kom', 'dosen.jpg', '1234'),
(22, 'DSN00022', '1111111132', 'HOMMY DORTHY ELLYANI SINAGA, S.T., M.M.', 'dosen.jpg', '1234'),
(23, 'DSN00023', '1111111133', 'IRIANTO, M.Kom', 'dosen.jpg', '1234'),
(24, 'DSN00024', '1111111134', 'JEPERSON HUTAHAHEAN, M.Kom', 'dosen.jpg', '1234'),
(25, 'DSN00025', '1111111135', 'MAHARDIKA ARDI PRAWIRA TANJUNG, M.Kom', 'dosen.jpg', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fakultas`
--

CREATE TABLE `tbl_fakultas` (
  `id_fakultas` int(2) NOT NULL,
  `fakultas` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`id_fakultas`, `fakultas`) VALUES
(1, 'Ilmu Komputer'),
(2, 'Ilmu Ekonomi'),
(3, 'Ilmu Pendidikan'),
(4, 'Ilmu Kesehatan'),
(5, 'Desain Komunikasi Visual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gedung`
--

CREATE TABLE `tbl_gedung` (
  `id_gedung` int(2) NOT NULL,
  `gedung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_gedung`
--

INSERT INTO `tbl_gedung` (`id_gedung`, `gedung`) VALUES
(1, 'Gedung A'),
(2, 'Gedung B'),
(3, 'Gedung C'),
(4, 'Gedung D'),
(8, 'Gedung E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_prodi` int(2) DEFAULT NULL,
  `id_ta` int(4) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_matkul` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `hari` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `id_ruangan` int(2) DEFAULT NULL,
  `quota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_prodi`, `id_ta`, `id_kelas`, `id_matkul`, `id_dosen`, `hari`, `waktu`, `id_ruangan`, `quota`) VALUES
(3, 2, 1, 2, 2, 2, 'Selasa', '08:00-10:30', 4, 32),
(5, 2, 1, 6, 24, 11, 'Sabtu', '08:00-09:30', 7, 32),
(8, 1, 1, 1, 27, 23, 'Selasa', '08:00-09:30', 8, 32),
(9, 1, 1, 1, 28, 21, 'Kamis', '08:00-09:30', 1, 32),
(10, 1, 1, 1, 29, 19, 'Selasa', '09:00-10:30', 2, 32),
(11, 1, 1, 1, 30, 11, 'Sabtu', '10:00-11:30', 3, 32),
(12, 1, 1, 1, 31, 7, 'Selasa', '08:00-09:30', 5, 32),
(13, 1, 1, 1, 32, 6, 'Rabu', '13:00-14:30', 2, 32),
(14, 1, 1, 1, 33, 13, 'Jumat', '08:00-09:30', 9, 32),
(15, 1, 1, 1, 34, 14, 'Sabtu', '10:00-11:30', 1, 32),
(16, 1, 1, 3, 44, 15, 'Senin', '07:00-08:30', 3, 32),
(17, 1, 1, 2, 49, 23, 'Kamis', '09:00-10:30', 6, 32),
(18, 1, 1, 3, 27, 25, 'Jumat', '08:30-10:00', 9, 32),
(19, 1, 1, 1, 46, 25, 'Selasa', '07:00-08:30', 7, 32),
(20, 2, 1, 6, 10, 25, 'Rabu', '08:00-09:30', 1, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `id_prodi` int(2) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `tahun_angkatan` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`, `id_prodi`, `id_dosen`, `tahun_angkatan`) VALUES
(1, 'SI-A', 1, 1, '2020'),
(2, 'SI-B', 1, 2, '2020'),
(3, 'SI-C', 1, 15, '2020'),
(6, 'SK-A', 2, 24, '2024'),
(7, 'SK-B', 2, 16, '2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_krs`
--

CREATE TABLE `tbl_krs` (
  `id_krs` int(11) NOT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `id_ta` int(11) DEFAULT NULL,
  `p1` int(1) DEFAULT 0,
  `p2` int(1) DEFAULT 0,
  `p3` int(1) DEFAULT 0,
  `p4` int(1) DEFAULT 0,
  `p5` int(1) DEFAULT 0,
  `p6` int(1) DEFAULT 0,
  `p7` int(1) DEFAULT 0,
  `p8` int(1) DEFAULT 0,
  `p9` int(1) DEFAULT 0,
  `p10` int(1) DEFAULT 0,
  `p11` int(1) DEFAULT 0,
  `p12` int(1) DEFAULT 0,
  `p13` int(1) DEFAULT 0,
  `p14` int(1) DEFAULT 0,
  `p15` int(1) DEFAULT 0,
  `p16` int(1) DEFAULT 0,
  `p17` int(1) DEFAULT 0,
  `p18` int(1) DEFAULT 0,
  `nilai_tugas` int(3) DEFAULT 0,
  `nilai_uts` int(3) DEFAULT 0,
  `nilai_uas` int(3) DEFAULT 0,
  `nilai_akhir` int(3) DEFAULT 0,
  `nilai_huruf` varchar(1) DEFAULT '-',
  `bobot` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_krs`
--

INSERT INTO `tbl_krs` (`id_krs`, `id_mhs`, `id_jadwal`, `id_ta`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `bobot`) VALUES
(13, 6, 19, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 90, 90, 90, 92, 'A', 4),
(14, 7, 19, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 80, 80, 80, 82, 'B', 3),
(15, 8, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'E', 0),
(16, 60, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(17, 60, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(18, 60, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(19, 60, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(20, 60, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(21, 60, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(22, 60, 14, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(23, 60, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(25, 60, 18, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(10) DEFAULT NULL,
  `matkul` varchar(255) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `kategori` varchar(10) DEFAULT NULL,
  `smt` int(1) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`id_matkul`, `kode_matkul`, `matkul`, `sks`, `kategori`, `smt`, `semester`, `id_prodi`) VALUES
(1, 'SKPK101', 'Pendidikan Agama', 2, 'Wajib', 1, 'Ganjil', 2),
(2, 'SKKB102', 'Pengantar Teknologi Informasi', 2, 'Wajib', 1, 'Ganjil', 2),
(3, 'SKPK103', 'Pendidikan Kewarganegaraan', 2, 'Wajib', 1, 'Ganjil', 2),
(5, 'SKPK104', 'Bahasa Inggris 1', 2, 'Wajib', 1, 'Ganjil', 2),
(9, 'SKKK105', 'Fisika Dasar', 2, 'Wajib', 1, 'Ganjil', 2),
(10, 'SKKK106', 'Kalkulus', 2, 'Wajib', 1, 'Ganjil', 2),
(11, 'SKKB107', 'Algoritma dan Pemrograman', 2, 'Wajib', 1, 'Ganjil', 2),
(12, 'SKPB108', 'Prak. Algoritma dan Pemrograman', 2, 'Wajib', 1, 'Ganjil', 2),
(13, 'SKKB109', 'Program Aplikasi', 3, 'Wajib', 1, 'Ganjil', 2),
(14, 'SKPB110', 'Statistik', 2, 'Wajib', 1, 'Ganjil', 2),
(15, 'SKPK211', 'Bahasa Inggris 2', 2, 'Wajib', 2, 'Genap', 2),
(16, 'SKKB212', 'PBO', 3, 'Wajib', 2, 'Genap', 2),
(17, 'SKPK213', 'Bahasa Indonesia', 2, 'Wajib', 2, 'Genap', 2),
(18, 'SKKK214', 'Matematika Terapan', 2, 'Wajib', 2, 'Genap', 2),
(19, 'SKKK215', 'Elektronika Dasar', 3, 'Wajib', 2, 'Genap', 2),
(20, 'SKPB216', 'Internet dan Website', 3, 'Wajib', 2, 'Genap', 2),
(21, 'SKKB217', 'Data Base', 3, 'Wajib', 2, 'Genap', 2),
(22, 'SKKB218', 'Aplikasi Terapan', 2, 'Wajib', 2, 'Genap', 2),
(23, 'SKKB319', 'Instalasi Komputer', 3, 'Wajib', 3, 'Ganjil', 2),
(24, 'SKKB320', 'Komunikasi Data', 2, 'Wajib', 3, 'Ganjil', 2),
(25, 'SKKB321', 'Sistem Operasi', 2, 'Wajib', 3, 'Ganjil', 2),
(26, 'SKKB322', 'Organisasi Komputer', 2, 'Wajib', 3, 'Ganjil', 2),
(27, 'SIKK103', 'Program Aplikasi', 2, 'Wajib', 1, 'Ganjil', 1),
(28, 'SIPB203', 'Bahasa Indonesia', 2, 'Wajib', 1, 'Ganjil', 1),
(29, 'SIKK106', 'Kalkulus', 2, 'Wajib', 1, 'Ganjil', 1),
(30, 'SIPB101', 'Bahasa Inggris 1', 2, 'Wajib', 1, 'Ganjil', 1),
(31, 'SIKK102', 'Pengantar Teknologi Informasi', 2, 'Wajib', 1, 'Ganjil', 1),
(32, 'SIKK101', 'Dasar Akuntansi', 2, 'Wajib', 1, 'Ganjil', 1),
(33, 'SIKK105', 'Pr. Algoritma dan Pemrograman', 2, 'Wajib', 1, 'Ganjil', 1),
(34, 'SIKK104', ' Algoritma dan Pemrograman', 2, 'Wajib', 1, 'Ganjil', 1),
(35, 'SIKK208', 'Konsep Ilmu Komunikasi', 3, 'Wajib', 2, 'Genap', 1),
(36, 'SIKK209', 'Design Grafis', 2, 'Wajib', 2, 'Genap', 1),
(37, 'SIKK211', 'Program Aplikasi Akuntansi', 2, 'Wajib', 2, 'Genap', 1),
(38, 'SIKK212', 'Manajemen Umum', 2, 'Wajib', 2, 'Genap', 1),
(39, 'SIKK213', 'Struktur Data', 2, 'Wajib', 2, 'Genap', 1),
(40, 'SIKK214', 'Bahasa Inggris 2', 2, 'Wajib', 2, 'Genap', 1),
(41, 'SIKK207', 'Matematika Diskrit', 2, 'Wajib', 2, 'Genap', 1),
(42, 'SIKK206', 'Pemrograman Visual', 2, 'Wajib', 2, 'Genap', 1),
(43, 'SIKK313', 'Sistem Berkas Arsip dan Akses', 3, 'Wajib', 3, 'Ganjil', 1),
(44, 'SIKK314', 'Komunikasi Data', 2, 'Wajib', 3, 'Ganjil', 1),
(45, 'SIKK316', 'Interaksi Manusia dan Komputer', 2, 'Wajib', 3, 'Ganjil', 1),
(46, 'SIKK317', 'Desain Web', 2, 'Wajib', 3, 'Ganjil', 1),
(47, 'SIKK318', 'Pemrograman Berbasis Objek', 3, 'Wajib', 3, 'Ganjil', 1),
(48, 'SIKK319', 'Statistik', 2, 'Wajib', 3, 'Ganjil', 1),
(49, 'SIKK320', 'Pengetahuan Bisnis', 2, 'Wajib', 3, 'Ganjil', 1),
(50, 'SIKK321', 'Sistem Operasi', 3, 'Wajib', 3, 'Ganjil', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `id_mhs` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nama_mhs` varchar(50) DEFAULT NULL,
  `id_prodi` int(2) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto_mhs` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`id_mhs`, `nim`, `nama_mhs`, `id_prodi`, `password`, `foto_mhs`, `id_kelas`) VALUES
(6, '18220463', 'ALDY SUHENDRANA', 2, '1234', 'fotomhs.jpg', 6),
(7, '18220363', 'ANDIKA RAMADANI', 2, '1234', 'fotomhs.jpg', 1),
(8, '18220435', 'ANDINI UTAMI', 2, '1234', 'fotomhs.jpg', 1),
(9, '18220436', 'ANDRE RAMADHANA MANURUNG', 2, '1234', 'fotomhs.jpg', 1),
(10, '18220437', 'ANGGRAINI UTARI', 2, '1234', 'fotomhs.jpg', 1),
(11, '18220519', 'AZRI SILMI', 2, '1234', 'fotomhs.jpg', 2),
(12, '18220464', 'AZURAH WIDYA', 2, '1234', 'fotomhs.jpg', 2),
(13, '18220451', 'BAGUS ANDIKA', 2, '1234', 'fotomhs.jpg', 2),
(14, '18220452', 'BAMBANG PRAYOGI', 2, '1234', 'fotomhs.jpg', 3),
(15, '18220453', 'CHRISTIAN SARAGIH', 2, '1234', 'fotomhs.jpg', NULL),
(16, '18220438', 'CICI ZULIANINGSIH', 2, '1234', 'fotomhs.jpg', NULL),
(17, '18220454', 'DINDA ARYANTI', 2, '1234', 'fotomhs.jpg', NULL),
(18, '18220439', 'EVA WAHYUNI', 2, '1234', 'fotomhs.jpg', NULL),
(19, '18220697', 'IHZA MARGOLANG', 2, '1234', 'fotomhs.jpg', NULL),
(20, '18220591', 'FIKRI ZAILMI', 2, '1234', 'fotomhs.jpg', NULL),
(21, '18220455', 'FITRI RAHAYU', 2, '1234', 'fotomhs.jpg', NULL),
(22, '18220440', 'GILANG NUGROHO', 2, '1234', 'fotomhs.jpg', NULL),
(23, '18220442', 'JUAN VEARON', 2, '1234', 'fotomhs.jpg', NULL),
(24, '18220617', 'KHAIRANI PUTRI MIRDA', 2, '1234', 'fotomhs.jpg', NULL),
(25, '18220480', 'LIZA NATTASYA', 2, '1234', 'fotomhs.jpg', NULL),
(26, '18220445', 'MANJA RENA AYU ANJANI', 2, '1234', 'fotomhs.jpg', 6),
(27, '18220446', 'MAYRANI AZWANDA', 2, '1234', 'fotomhs.jpg', 6),
(28, '18220034', 'NURSUCIKA HASANAH', 2, '1234', 'fotomhs.jpg', 6),
(29, '15220010', 'SITI INDAYANI', 3, '1234', 'fotomhs.jpg', NULL),
(30, '15220023', 'SUNDARI', 3, '1234', 'fotomhs.jpg', NULL),
(31, '15220008', 'SYAFRIDA', 3, '1234', NULL, NULL),
(32, '15220026', 'SYAFWAN AMRI', 3, '1234', NULL, NULL),
(33, '15220566', 'TIKA SARTIKA', 3, '1234', NULL, NULL),
(34, '15220021', 'TRIA WIRANTI', 3, '1234', NULL, NULL),
(35, '15220561', 'WAHYU KURNIA SANDI', 3, '1234', NULL, NULL),
(36, '15220004', 'WIRA ARIESTY WARA SITORUS', 3, '1234', NULL, NULL),
(37, '15220011', 'YULI ASTIKA SARI', 3, '1234', NULL, NULL),
(39, '15220014', 'SITI FATIMAH HASIBUAN', 3, '1234', NULL, NULL),
(40, '15220012', 'SISKA PUTRI UTAMI', 3, '1234', NULL, NULL),
(41, '15220017', 'SHAFITY YUNUS ', 3, '1234', NULL, NULL),
(42, '15220019', 'SARTIKA LESTARI', 3, '1234', NULL, NULL),
(43, '15220022', 'RINAYANTI', 3, '1234', NULL, NULL),
(44, '14221478', 'RAHMAT SENTOSA', 3, '1234', NULL, NULL),
(45, '15220005', 'PUTRI DEWI RAMADHANTI', 3, '1234', NULL, NULL),
(46, '14221555', 'MUHAMMAD RISKI', 3, '1234', NULL, NULL),
(47, '15220016', 'MEISSY HANDAYANI', 3, '1234', NULL, NULL),
(48, '15220003', 'HUSNI TAMRIN LUBIS', 3, '1234', NULL, NULL),
(49, '18220649', 'TRIKA AYU INTAN SARI', 3, '1234', NULL, NULL),
(50, '18220660', 'TRI ANANDA', 3, '1234', NULL, NULL),
(51, '18220272', 'REZA AJIARDHANA MANURUNG', 3, '1234', NULL, NULL),
(52, '18220652', 'NURUL IKA PUSPITA SARI', 3, '1234', NULL, NULL),
(53, '18220620', 'NURIZZA SARAGIH', 3, '1234', NULL, NULL),
(54, '18220662', 'MUHAMMAD RISKI PUTRA', 1, '1234', NULL, NULL),
(55, '18220663', 'MUHAMMAD RAHMADI LAKSONO', 1, '1234', NULL, NULL),
(56, '18220622', 'MORA ABDUPUTRA', 1, '1234', NULL, NULL),
(57, '18220619', 'MIFTAH KURNIAWAN ', 1, '1234', NULL, NULL),
(58, '18220623', 'HASANAH SAMOSIR', 1, '1234', NULL, NULL),
(59, '18220651', 'AFRIZAL SIXNU', 1, '1234', NULL, NULL),
(60, '18220183', 'INDAH AYU ANGGRAENI PUTRI', 1, '1234', 'fotomhs2.jpg', 2),
(61, '18220608', 'FIKRI IHSANUL', 1, '1234', NULL, NULL),
(62, '18220681', 'FRANS ANDREAN HASIBUAN', 1, '1234', NULL, NULL),
(63, '18220658', 'NUR MADANI PUTRI SIREGAR', 1, '1234', NULL, NULL),
(64, '18220648', 'ARIZA NUR', 1, '1234', NULL, NULL),
(65, '18220643', 'MUHAMMAD MUKLIS', 1, '1234', NULL, NULL),
(66, '18220682', 'MUHAMMAD SURYA BASKARA POHAN', 1, '1234', NULL, NULL),
(67, '18220679', 'MUHAMMAD ROZI HERMAWAN', 1, '1234', NULL, NULL),
(68, '18220661', 'FATRIA ANDIKA', 1, '1234', NULL, NULL),
(69, '18220656', 'DYNA MONICA', 1, '1234', NULL, NULL),
(70, '18220645', 'DWIKI RAMADHAN', 1, '1234', NULL, NULL),
(71, '18220647', 'DINDA MAI SYARO', 1, '1234', NULL, NULL),
(72, '18220650', 'DEDEK PUTRA HASIBUAN', 1, '1234', NULL, NULL),
(73, '18220677', 'CHIKA NADIA', 1, '1234', NULL, NULL),
(74, '18220655', 'CHIKA APRILIA', 1, '1234', NULL, NULL),
(75, '18220516', 'ANJAS YUDISTIRA', 1, '1234', NULL, NULL),
(76, '18220516', 'AMILIAWATI SITORUS', 1, '1234', NULL, NULL),
(77, '18220680', 'AHMAD SOFYAN', 1, '1234', NULL, NULL),
(78, '18220191', 'ABDI REZA SUSANTI', 1, '1234', NULL, NULL),
(79, '18220495', 'ZULFIKAR ABDI', 1, '1234', NULL, NULL),
(80, '18220459', 'ZUBAI ABDILLAH HASIBUAN', 1, '1234', NULL, 3),
(81, '18220458', 'YUNI KARTIKA PANJAITAN', 1, '1234', NULL, 3),
(82, '18220457', 'SITI SARAH', 1, '1234', NULL, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_prodi`
--

CREATE TABLE `tbl_prodi` (
  `id_prodi` int(2) NOT NULL,
  `id_fakultas` int(2) DEFAULT NULL,
  `kode_prodi` varchar(10) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `jenjang` varchar(10) NOT NULL,
  `ka_prodi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id_prodi`, `id_fakultas`, `kode_prodi`, `prodi`, `jenjang`, `ka_prodi`) VALUES
(1, 1, 'SI', 'Sistem Informasi', 'S1', 'MAHARDIKA ARDI PRAWIRA TANJUNG, M.Kom'),
(2, 1, 'SK', 'Sistem Komputer', 'S1', 'AHMAD MUHAZIR, M.Kom'),
(3, 1, 'TI', 'Teknik Informatika', 'S1', 'Marwan, M.Kom'),
(4, 1, 'MI', 'Manajemen Informatika', 'D3', 'ADA UDI FIRMANSYAH, M.Kom'),
(6, 2, 'AK', 'Akuntansi', 'S1', 'CHITRA LATIFFANI, M.Hum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(2) NOT NULL,
  `id_gedung` int(2) DEFAULT NULL,
  `ruangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`id_ruangan`, `id_gedung`, `ruangan`) VALUES
(1, 1, 'A1'),
(2, 1, 'A2'),
(3, 1, 'A3'),
(4, 1, 'A4'),
(5, 1, 'A5'),
(6, 1, 'A6'),
(7, 1, 'Lab A1'),
(8, 1, 'Lab A2'),
(9, 1, 'Lab A3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ta`
--

CREATE TABLE `tbl_ta` (
  `id_ta` int(4) NOT NULL,
  `ta` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_ta`
--

INSERT INTO `tbl_ta` (`id_ta`, `ta`, `semester`, `status`) VALUES
(1, '2020/2021', 'Ganjil', 1),
(2, '2020/2021', 'Genap', 0),
(3, '2021/2022', 'Ganjil', 0),
(4, '2021/2022', 'Genap', 0),
(6, '2023/2024', 'Ganjil', 0),
(7, '2023/2024', 'Genap', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `foto`) VALUES
(1, 'Aditya Bangun Senjaya', 'admin', 'admin', '1704523523_7d04f86e3c98b055dced.jpg'),
(2, 'Alexander Pierce', 'alexander', '1234', 'user2.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `tbl_gedung`
--
ALTER TABLE `tbl_gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tbl_krs`
--
ALTER TABLE `tbl_krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indeks untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indeks untuk tabel `tbl_ta`
--
ALTER TABLE `tbl_ta`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  MODIFY `id_fakultas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_gedung`
--
ALTER TABLE `tbl_gedung`
  MODIFY `id_gedung` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_krs`
--
ALTER TABLE `tbl_krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  MODIFY `id_prodi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  MODIFY `id_ruangan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_ta`
--
ALTER TABLE `tbl_ta`
  MODIFY `id_ta` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
