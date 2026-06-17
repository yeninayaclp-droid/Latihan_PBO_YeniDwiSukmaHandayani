-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2026 at 04:51 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_trpl1b_yenidwisukmahandayani`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` varchar(10) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` int NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(20) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` varchar(50) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
('T001', 'Avengers Endgame', '2026-06-20 13:00:00', 2, 50000, 'Regular', 'Dolby Atmos', 'A5', NULL, NULL, NULL, NULL),
('T002', 'Avatar 3', '2026-06-20 15:00:00', 3, 70000, 'IMAX', NULL, NULL, '3D001', 'Motion Seat', NULL, NULL),
('T003', 'Inside Out 3', '2026-06-20 19:00:00', 2, 80000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Aktif'),
('T004', 'Jurassic World', '2026-06-21 10:00:00', 2, 50000, 'Regular', 'Dolby Atmos', 'B2', NULL, NULL, NULL, NULL),
('T005', 'Spider-Man 4', '2026-06-21 13:00:00', 3, 50000, 'Regular', 'Dolby Digital', 'C1', NULL, NULL, NULL, NULL),
('T006', 'Frozen 3', '2026-06-21 15:00:00', 4, 45000, 'Regular', 'Dolby Atmos', 'D4', NULL, NULL, NULL, NULL),
('T007', 'Moana 2', '2026-06-22 11:00:00', 2, 45000, 'Regular', 'Dolby Digital', 'A3', NULL, NULL, NULL, NULL),
('T008', 'Minions 5', '2026-06-22 14:00:00', 5, 40000, 'Regular', 'Stereo', 'E2', NULL, NULL, NULL, NULL),
('T009', 'Kung Fu Panda 5', '2026-06-22 16:00:00', 2, 45000, 'Regular', 'Dolby Atmos', 'B5', NULL, NULL, NULL, NULL),
('T010', 'Avatar 3', '2026-06-23 10:00:00', 2, 70000, 'IMAX', NULL, NULL, '3D002', 'Motion Seat', NULL, NULL),
('T011', 'Transformers', '2026-06-23 13:00:00', 3, 75000, 'IMAX', NULL, NULL, '3D003', 'Motion Seat', NULL, NULL),
('T012', 'Godzilla x Kong', '2026-06-23 16:00:00', 2, 70000, 'IMAX', NULL, NULL, '3D004', 'Motion Seat', NULL, NULL),
('T013', 'Mission Impossible', '2026-06-24 11:00:00', 4, 80000, 'IMAX', NULL, NULL, '3D005', 'Motion Seat', NULL, NULL),
('T014', 'The Batman 2', '2026-06-24 14:00:00', 2, 75000, 'IMAX', NULL, NULL, '3D006', 'Motion Seat', NULL, NULL),
('T015', 'Fast X Part 2', '2026-06-24 19:00:00', 3, 70000, 'IMAX', NULL, NULL, '3D007', 'Motion Seat', NULL, NULL),
('T016', 'Inside Out 3', '2026-06-25 10:00:00', 2, 80000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Aktif'),
('T017', 'Coco 2', '2026-06-25 13:00:00', 2, 85000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Aktif'),
('T018', 'Elemental 2', '2026-06-25 16:00:00', 3, 85000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Pack', 'Aktif'),
('T019', 'Toy Story 5', '2026-06-26 11:00:00', 2, 90000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Pack', 'Aktif'),
('T020', 'Zootopia 2', '2026-06-26 19:00:00', 4, 85000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Pack', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
