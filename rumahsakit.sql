-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 05:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `spesialis` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('14144702-eefe-4c75-85e8-67f714c98474', 'Dr. Lestari Wulandari', 'Gigi', 'Jl. Pemuda No. 12, Tegal', '081367890123'),
('30cbcdee-c797-4866-8c8e-776c18082f63', 'Dr. Ahmad Prasetyo', 'Bedah Umum', 'Jl. Diponegoro No. 10, Semarang', '081234567890'),
('3c61fcd7-e00a-49a6-87ba-65047dace11e', 'Dr. Dewi Aryani', 'Mata', 'Jl. Sultan Agung No. 17, Kudus', '081389012345'),
('4871de60-c666-4e03-a437-afb5c92ba5b1', 'Dr. Bambang Susilo', 'Paru', 'Jl. Soedirman No. 5, Salatiga', '081278901234'),
('5cc905d3-ae5a-4558-b754-15301e855f76', 'Dr. Agus Haryanto', 'Penyakit Dalam', 'Jl. Pahlawan No. 22, Kebumen', '081290123456'),
('7d31e7e0-847d-46af-a52c-cd0485dbdd8b', 'Dr. Heru Wibowo', 'Bedah Tulang', 'Jl. Diponegoro No. 7, Magelang', '081212345678'),
('8c777639-5f7d-4f5d-b7fb-3988d5d05a09', 'Dr. Siti Rahmah', 'Kulit & Kelamin', 'Jl. Raden Patah No. 14, Demak', '081301234567'),
('8d6f0f26-028d-4a7c-a167-dc6877ada2f7', 'Dr. Ratna Kusumawati', 'Anak', 'Jl. Kartini No. 15, Solo', '081345678901'),
('8de1a500-3663-457b-9a27-1644e0c17fa2', 'Dr. Erna Puspita', 'Kandungan', 'Jl. RA Kartini No. 2, Grobogan', '088200110016'),
('cf79ec33-89e6-4655-93b6-dc7b54224acb', 'Dr. Dedi Santoso', 'Jantung', 'Jl. Ahmad Yani No. 8, Pekalongan', '081256789012'),
('e6bfe5eb-02b5-4ec1-b7f7-ce2e41547700', 'Dr. Yudi saputra', 'Penyakit Kulit', 'Kudus', '081275121552');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('220dada7-5aca-4c5f-8b81-5b67231bebc7', 'Alprazolam', 'Mengatasi kecemasan'),
('284add6c-d1f5-47da-a664-e761b334e43f', 'Insulin', 'Pengobatan diabetes'),
('303ab573-5ce6-474c-bcc9-4acda466e1fe', 'Furosemide', 'Diuretik untuk mengurangi cairan'),
('403abc2b-2ef9-4a4e-96d2-b4d83a6a4d2b', 'Paracetamol', 'Pereda nyeri dan penurun demam'),
('43288b0b-661f-44ab-a86d-e149a1c529a9', 'Amoksisilin', 'Antibiotik untuk infeksi bakteri'),
('4d328bb7-8e21-4812-9686-cbfee056f0f3', 'Ibuprofen', 'Anti-inflamasi dan pereda nyeri'),
('81ccadcd-25cc-4a4f-9cff-597019edceb8', 'Acetaminophen', 'Penghilang nyeri dan demam'),
('a7524247-277a-4463-babb-a4b96ab7460d', 'Metformin', 'Obat untuk diabetes'),
('bdba4c10-4993-4d4a-b76a-d8cad34326e9', 'Cetirizine', 'Antihistamin untuk alergi'),
('befad8ed-9511-4ebf-b156-3912d1d9715d', 'Diazepam', 'Mengatasi kecemasan dan insomnia'),
('cca868c3-66ce-4861-a5f1-fa0d613041c2', 'Salbutamol', 'Obat untuk asma'),
('db52d3f4-49a1-4476-8232-691aac084c65', 'Vitamin C', 'Suplemen untuk daya tahan tubuh'),
('dc11e202-174e-4050-8f64-6b73de1c71ec', 'Antasida', 'Menetralisir asam lambung'),
('e2a864b7-ed82-4d9c-985a-5f28e5bc6536', 'Omeprazole', 'Menurunkan asam lambung'),
('e2ea0e7e-04cf-4b41-8a87-04add912f993', 'Ranitidin', 'Obat untuk asam lambung'),
('f247e7dc-5ad1-47da-a297-736de5005d57', 'Simvastatin', 'Menurunkan kolesterol'),
('f378965a-42a6-41b6-bf93-e2cb00f32290', 'Ciprofloxacin', 'Antibiotik spektrum luas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(100) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('118725fd-44e9-493a-bade-8d0d80040d86', '202012345', 'M. Nur', 'L', 'Pati', '0888123123'),
('31fc8a27-c69a-460b-8bd7-2e4221a3293f', '202012348', 'Tuyem', 'P', 'Kediri', '0888123126'),
('8aa4bdb9-5d2d-46cb-b641-1d367bbf6f1d', '202012347', 'Angga', 'L', 'Kudus', '0888123125'),
('92e51db1-6229-4945-bf12-0eba6677a5f8', '202012349', 'Siti Aisyah', 'P', 'Semarang', '081234567890'),
('c78a88d6-1483-467a-b692-aaa2955645e5', '202012346', 'Andhan', 'L', 'Kudus', '0888123124');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `lokasi`) VALUES
('0e4998e7-4876-4d01-8cfd-839fe838b5f4', 'Poli Umum', 'Ruang 101'),
('1632b926-4fb4-4d91-b449-f3c648b1f688', 'Poli Gigi', 'Ruang 102'),
('21019878-5704-4e3e-87ad-32e44763faa9', 'Poli Anak', 'Ruang 103'),
('9b5ce7e9-a400-40e4-90cd-8134dc8009ca', 'Poli Kandungan', 'Ruang 104');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`id_rm`, `tgl_periksa`, `id_poli`, `id_pasien`, `keluhan`, `id_dokter`, `diagnosa`) VALUES
('4217a6bf-4875-426e-84a2-5afd4b965705', '2020-06-03', '9b5ce7e9-a400-40e4-90cd-8134dc8009ca', '118725fd-44e9-493a-bade-8d0d80040d86', '<p>pusing</p>\r\n', '30cbcdee-c797-4866-8c8e-776c18082f63', 'migrain'),
('60a8da1c-e31c-4dd1-9d5c-6bc2bb685543', '2020-06-03', '0e4998e7-4876-4d01-8cfd-839fe838b5f4', '31fc8a27-c69a-460b-8bd7-2e4221a3293f', '<p>sakit perut</p>\r\n', '8d6f0f26-028d-4a7c-a167-dc6877ada2f7', 'diare'),
('64224cd1-3d5e-45cd-a0af-05ef466a2cde', '2024-10-04', '9b5ce7e9-a400-40e4-90cd-8134dc8009ca', '31fc8a27-c69a-460b-8bd7-2e4221a3293f', '<p>lemas, letih, lesu, letoy</p>\r\n', 'e6bfe5eb-02b5-4ec1-b7f7-ce2e41547700', 'animea');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id` int(10) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rm_obat`
--

INSERT INTO `tb_rm_obat` (`id`, `id_rm`, `id_obat`) VALUES
(20, '64224cd1-3d5e-45cd-a0af-05ef466a2cde', '403abc2b-2ef9-4a4e-96d2-b4d83a6a4d2b'),
(21, '64224cd1-3d5e-45cd-a0af-05ef466a2cde', '4d328bb7-8e21-4812-9686-cbfee056f0f3'),
(22, '60a8da1c-e31c-4dd1-9d5c-6bc2bb685543', '403abc2b-2ef9-4a4e-96d2-b4d83a6a4d2b'),
(23, '60a8da1c-e31c-4dd1-9d5c-6bc2bb685543', '4d328bb7-8e21-4812-9686-cbfee056f0f3'),
(24, '60a8da1c-e31c-4dd1-9d5c-6bc2bb685543', 'e2ea0e7e-04cf-4b41-8a87-04add912f993'),
(25, '4217a6bf-4875-426e-84a2-5afd4b965705', '403abc2b-2ef9-4a4e-96d2-b4d83a6a4d2b'),
(26, '4217a6bf-4875-426e-84a2-5afd4b965705', '43288b0b-661f-44ab-a86d-e149a1c529a9');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('', 'Yola', 'yola1996', 'a9573217994b9a6b35bce220e5a670a86a2b8b4f', '1'),
('98731216336846848', 'Arif Rusman', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `tb_rekammedis_ibfk_1` (`id_pasien`),
  ADD KEY `tb_rekammedis_ibfk_2` (`id_dokter`),
  ADD KEY `tb_rekammedis_ibfk_3` (`id_poli`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rm` (`id_rm`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD CONSTRAINT `tb_rm_obat_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `tb_rekammedis` (`id_rm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rm_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
