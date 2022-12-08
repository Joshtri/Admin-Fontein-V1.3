-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2022 at 02:34 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kel_fontein`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `nama_lengkap` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_session_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`nama_lengkap`, `user_id`, `user_name`, `user_password`, `user_session_id`) VALUES
('admin123', 17, 'admin123', 'admin123', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran`
--

CREATE TABLE `kelahiran` (
  `id_lahir` int NOT NULL,
  `kel_nomor_kk` bigint NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelahiran`
--

INSERT INTO `kelahiran` (`id_lahir`, `kel_nomor_kk`, `nama`, `jenis_kelamin`, `tgl_lahir`) VALUES
(8, 5371012345678900, 'Cepak Mekar', 'Laki-Laki', '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `id_pindah` int NOT NULL,
  `kel_nomor_kk` bigint NOT NULL,
  `tgl_pindah` varchar(15) NOT NULL,
  `penduduk_nik` bigint NOT NULL,
  `alasan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `no_kk` bigint NOT NULL,
  `kepala_kel` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `rt` int NOT NULL,
  `rw` int NOT NULL,
  `kel_n_desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota_n_kab` varchar(50) NOT NULL,
  `provinsi` enum('Nanggroe Aceh Darussalam (NAD)','Sumatera Utara','Sumatera Selatan','Sumatera Barat','Bengkulu','Riau','Kepulauan Riau','Jambi','Lampung','Bangka Belitung','Kalimantan Barat','Kalimantan Timur','Kalimantan Selatan','Kalimantan Tengah','Kalimantan Utara','Banten','Daerah Khusus Ibu Kota Jakarta (DKI Jakarta)','Jawa Barat','Jawa Tengah','Daerah Istimewa Yogyakarta (DIY)','Jawa Timur','Bali','Nusa Tenggara Timur','Nusa Tenggara Barat','Gorontalo','Sulawesi Barat','Sulawesi Tengah','Sulawesi Utara','Sulawesi Tenggara','Sulawesi Selatan','Maluku Utara','Maluku','Papua Barat','Papua','Papua Selatan','Papua Tengah','Papua Pegunungan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `keluarga`
--

INSERT INTO `keluarga` (`no_kk`, `kepala_kel`, `alamat`, `rt`, `rw`, `kel_n_desa`, `kecamatan`, `kota_n_kab`, `provinsi`) VALUES
(5371012345678900, 'Sulthan', 'Jl. Kenangan', 15, 5, 'Sikumana', 'Maulafa', 'Kupang', 'Nusa Tenggara Timur');

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int NOT NULL,
  `nik` bigint NOT NULL,
  `tgl_kematian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `nik` bigint NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `hubungan_keluarga` enum('Kepala Keluarga','Istri','Anak','Menantu','Orang Tua','Mertua','Famili Lain','Pembantu') NOT NULL,
  `lahir` varchar(50) NOT NULL,
  `status_perkawinan` enum('Belum Menikah','Sudah Menikah','Cerai Hidup','Cerai Mati') NOT NULL,
  `pekerjaan` enum('Belum Bekerja','Mengurus Rumah Tangga','Pelajar/Mahasiswa','Pensiunan','PNS','POLRI','TNI','WIRASWASTA','SWASTA','Pegawai BUMN','Pekerja Lepas','Petani/peternak/pekebun','Nelayan','Industri') NOT NULL,
  `pendidikan` enum('Belum/Tidak Pernah Sekolah','Belum/Tidak Tamat SD/SDLB/MI/Paket A','SD/SDLB/MI/Paket A','SMP/SMPLB/MTs/Paket B','SMA/SMLB/MA/SMK/MAK/paket C','DI/DII/DIII','DIV/S1','S2','S3') NOT NULL,
  `kel_no_kk` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`nik`, `nama`, `jenis_kelamin`, `hubungan_keluarga`, `lahir`, `status_perkawinan`, `pekerjaan`, `pendidikan`, `kel_no_kk`) VALUES
(5371098765432310, 'Cepmek', 'Laki-Laki', 'Anak', '2022-12-01', 'Belum Menikah', 'Belum Bekerja', 'Belum/Tidak Pernah Sekolah', 5371012345678900);

-- --------------------------------------------------------

--
-- Table structure for table `publikasi`
--

CREATE TABLE `publikasi` (
  `file_article` varchar(255) NOT NULL,
  `judul_publish` varchar(100) NOT NULL,
  `tanggal_terbit` varchar(10) NOT NULL,
  `id_publish` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `publikasi`
--

INSERT INTO `publikasi` (`file_article`, `judul_publish`, `tanggal_terbit`, `id_publish`) VALUES
('Template Booklet Data Potensi Kelurahan Fontein (1).pdf', 'Potensi Kelurahan Fontein	', '2022-12-01', 27);

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `id_Usaha` int NOT NULL,
  `nama_usaha` varchar(130) NOT NULL,
  `alamat_tempat_usaha` varchar(255) NOT NULL,
  `nama_kk` varchar(100) NOT NULL,
  `umur` int NOT NULL,
  `nama_pemilik` varchar(135) NOT NULL,
  `alamat_tempat_tinggal` varchar(135) NOT NULL,
  `pendidikan_pemilik` enum('Belum/Tidak Pernah Sekolah','Belum/Tidak Pernah Tamat SD/SDLB/MI/Paket A','SD/SDLB/MI/Paket A','SMP/SMPLB/MTs/Paket B','SMA/SMLB/MTA/SMK/MAK/paket C','DI/DII/DII','DIV/S1','S2','S3') NOT NULL,
  `jenis_lokasi_usaha` enum('Tetap','Keliling') NOT NULL,
  `jenis_pengelolaan_usaha` enum('Perorangan','Badan Usaha') NOT NULL,
  `kbli` enum('-','Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI','Pengelolaan Kehutanan dan Penebangan','Perikanan','Pertambangan Batu Bara dan Lignit','Pertambangan Minyak Bumi dan Gas Alam dan Panas Bumi','Pertambangan Bijih Logam','Pertambangan dan Penggalian Lainnya','Aktivitas Jasa Penunjang Pertambangan','Industri Makanan','Industri Minuman','Industri Pengolahan Tembakau','Industri Tekstil','Industri Pakaian Jadi','Industri Kulit, Barang dari Kulit dan Alas Kaki','Industri Kayu, Barang dari Kayu dan Gabus (Tidak Termasuk Furnitur) dan Barang Anyaman dari Bambu, Rotan dan Sejenisnya','Industri Kertas dan Barang dari Kertas','Industri Pencetakan dan Reproduksi Media Rekaman','Industri Produk Dari Batu Bara dan Pengilangan Minyak Bumi','Industri Bahan Kimia dan Barang dari Bahan Kimia','Industri Farmasi, Produk Obat Kimia dan Obat Tradisional','Industri Karet, Barang dari Karet dan Plastik','Industri Barang Galian Bukan Logam','Industri Logam Dasar','Industri Barang Logam, Bukan Mesin dan Peralatannya','Industri Komputer, Barang Elektronik dan Optik','Industri Peralatan Listrik','Industri Mesin dan Perlengkapan ytdl','Industri Kendaraan Bermotor, Trailer dan Semi Trailer','Industri Alat Angkutan Lainnya','Industri Furnitur','Industri Pengolahan Lainnya','Reparasi dan Pemasangan Mesin dan Peralatan','Pengadaan Listrik, Gas, Uap/Air Panas dan Udara Dingin','Treatment Air','Treatment Air Limbah','Pengumpulan, Treatment dan Pembuangan Limbah dan Sampah Serta Aktivitas Pemulihan Material','Aktivitas Remediasi dan Pengelolaan Limbah dan Sampah Lainnya','Konstruksi Gedung','Konstruksi Bangunan Sipil','Konstruksi Khusus','Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor','Perdagangan Besar, Bukan Mobil dan Sepeda Motor','Perdagangan Eceran, Bukan Mobil dan Motor','Angkutan Darat dan Angkutan Melalui Saluran Pipa','Angkutan Perairan','Angkutan Udara','Pergudangan dan Aktivitas Penunjang Angkutan','Aktivitas Pos dan Kurir','Penyediaan Akomodasi','Penyediaan Makanan dan Minuman','Aktivitas Penerbitan','Aktivitas Produksi Gambar Bergerak, Video dan Program Televisi, Perekaman Suara dan Penerbitan Musik','Aktivitas Penyiaran dan Pemrograman','Telekomunikasi','Aktivitas Pemrograman, Konsultasi Komputer dan Kegiatan Ybdi','Aktivitas Jasa Informasi','Aktivitas Jasa Keuangan, Bukan Asuransi dan Dana Pensiun','Aktivitas Penunjang Jasa Keuangan, Asuransi, Penjaminan dan Dana Pensiun','Real Estat','Aktivitas Hukum dan Akuntansi','Aktivitas Kantor Pusat dan Konsultasi Manajemen','Aktivitas Arsitektur dan Keinsinyuran; Analisis dan Uji Teknis','Penelitian dan Pengembangan Ilmu Pengetahuan','Periklanan dan Penelitian Pasar','Aktivitas Profesional, Ilmiah dan Teknis Lainnya','Aktivitas Kesehatan Hewan','Aktivitas Penyewaan dan Sewa Guna Usaha Tanpa Hak Opsi','Aktivitas Ketenagakerjaan','Aktivitas Agen Perjalanan, Penyelenggara Tur dan Jasa Reservasi Lainnya','Aktivitas Keamanan dan Penyelidikan','Aktivitas Penyedia Jasa untuk Gedung dan Pertamanan','Aktivitas Administrasi Kantor, Aktivitas Penunjang Kantor dan Aktivitas Penunjang Usaha Lainnya','Administrasi Pemerintahan, Pertahanan dan Jaminan Sosial Wajib','Pendidikan','Aktivitas Kesehatan Manusia','Aktivitas Sosial di Dalam Panti','Aktivitas Sosial Tanpa Akomodasi','Aktivitas Hiburan, Kesenian dan Kreativitas','Perpustakaan, Arsip, Museum dan Kegiatan Kebudayaan Lainnya','Aktivitas Perjudian dan Pertaruhan','Aktivitas Olahraga dan Rekreasi Lainnya','Aktivitas Keanggotaan Organisasi','Reparasi Komputer dan Barang Keperluan Pribadi dan Perlengkapan Rumah Tangga','Aktivitas Jasa Perorangan Lainnya','Aktivitas Rumah Tangga Sebagai Pemberi Kerja Dari Personil Domestik','Aktivitas Yang Menghasilkan Barang dan Jasa oleh Rumah Tangga Yang Digunakan untuk Memenuhi Kebutuhan Sendiri','Aktivitas Badan Internasional dan Badan Ekstra Internasional Lainnya') NOT NULL DEFAULT '-',
  `rincian_kgiatan_usaha` text NOT NULL,
  `omset` enum('Omset <= Rp.300 Juta','Rp.300 Juta < Omset <= Rp.2,5 Milliar','Rp.2,5 Milliar < Omset <= Rp.50 Milliar') NOT NULL,
  `kekayaan_bersih_usaha` enum('KBU <= Rp.50 Juta','Rp.50 Juta < KBU <= Rp.500 Juta','Rp.500 Juta < KBU <= Rp.10 Milliar') NOT NULL,
  `jumlah_tenaga_kerja` enum('1-5 Tenaga Kerja','6-19 Tenaga Kerja','≥ 20 Tenaga Kerja') NOT NULL,
  `modal_usaha` enum('Modal Sendiri','Bantuan Pemerintah','Modal Sendiri & Bantuan Pemerintah') NOT NULL,
  `bina_usaha` enum('Ya','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`id_Usaha`, `nama_usaha`, `alamat_tempat_usaha`, `nama_kk`, `umur`, `nama_pemilik`, `alamat_tempat_tinggal`, `pendidikan_pemilik`, `jenis_lokasi_usaha`, `jenis_pengelolaan_usaha`, `kbli`, `rincian_kgiatan_usaha`, `omset`, `kekayaan_bersih_usaha`, `jumlah_tenaga_kerja`, `modal_usaha`, `bina_usaha`) VALUES
(1, 'Kios jevelord ', '  Jln. Moh. Hatta RT 001/RW 001', 'Radja Cornelis ', 57, 'Radja Cornelis ', 'Jln. Moh. Hatta RT 001/RW 001', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual sembako dan pulsa ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(2, 'Soto Lamongan', '  Jln. Moh. Hatta RT 001/RW 001', 'Hillal ', 36, 'Hillal', 'Jln. Moh. Hatta RT:01', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual soto. Buka dari jam 08.00 -22.00', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(3, 'Penjual nasi dan kue', '  Jln. Cendana RT 001/RW 001', 'Saferiana Halek', 48, 'Saferiana Halek', 'Jln. Cendana, RT:01', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual di rumah dan juga secara online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(4, 'Wangi Cendana ', '  Belakang Universitas Nusa Cendana', 'Yohanes Seran', 34, 'Franky Antonius Seran', 'Jln. Cendana, RT:01', 'DIV/S1', 'Tetap', 'Perorangan', '', 'Melayani jilid, print, fotocopy, cetak', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(5, 'Kios Lyla', '  Jln. Cendana RT 001/RW 001', 'Markus Dadi', 43, 'Agustina Kale', 'Jln. Cendana, RT:01', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'kios kecil menjual sembako dalam jumlah sedikit ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(6, 'Penjual sayuran', '  Pasar-pasar di kupang ', 'Robert .M. Moningkey', 54, 'Robert .M. Moningkey', 'Jln. Cendana RT:01', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual sayuran dan berkeliling tiap pasar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(7, 'Kios Leon', '  Jln.cendana RT 001/RW 001', 'Riski Manoka', 28, 'Imelda Taribila', 'Jln. Cendana, RT:01', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual sembako dan pulsa ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(8, 'Ayam bakar sari laut', '  Jln. Moh. Hatta RT 001/RW 001', 'Sundoyo', 45, 'Sundoyo', 'Jln. Moh. Hatta RT:01', '', 'Tetap', 'Perorangan', 'Industri Makanan', 'Menjual ayam dan ikan bakar, ayam dan ikan goreng', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(9, 'Penjual jajanan sekolah', '  Jln. Cendana, didepan SDN Oetete', 'Daniel Bria', 42, 'Mariam Toky', 'Jln. Cendana, RT:01', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'jual nasi bungkus, kue, dan salome goreng', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(10, 'Isi ulang air galon ', '  Asrama tentara Densiban RT 002/RW 001', 'Wahyu.D.K', 55, 'Sih Purnami', 'Jln. Cendana Asrama tentara RT 002', '', 'Tetap', 'Perorangan', 'Industri Minuman', 'isi ulang air galon dari jam 07.00-21.00', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(11, 'Kios Margaretha', '  Jln. Cendana, RT:02', 'Antonius Kami', 38, 'Margaretha Layang', 'Jln. Cendana asrama tentaraRT 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual sembako  ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(12, 'Penjual nasi ', '  Jln. Cendana, RT:02', 'Iswadi', 40, 'Iswadi', 'asrama tentara Jln. Cendana RT 002', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'jual nasi untuk anak yang tes tentara', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(13, 'Kios Maimunah', '  Asrama tentara Densiban, RT:02', 'Dedi Hendrawan', 33, 'Maimunah', 'Jln. Cendana Asrama tentara RT 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(14, 'Ayu shop', '  Jln. Cendana, RT:03', 'I komang Dwiyana', 44, 'Ni Komang Armuni', 'Jln. Cendana, RT:03', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'jual pakaian, alat rumah tangga, dijual dirumah dan online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(15, 'Penjual buah rumahan', '  Jln. Cendana, RT:03', 'Kadek', 34, 'Made', 'Jln. Cendana, RT:03', 'DIV/S1', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'jual buah di rumah dan online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(16, 'Grab mobil dan menjual produk kesehatan nutrisi', '  Jln. Cendana, RT:03', 'Ferry Abraham', 61, 'Ferry Abraham', 'Jln. Cendana, RT:03', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'grab mobil dan menjual produk kesehatan paket dan eceran', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(17, 'Kos-kosan', '  RT 004/RW 002', 'Oris Nenobais', 67, 'Femi Nenobais', 'RT 004/ RW 002', '', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan 4 kamar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(18, 'Kios Taderuba', '  RT 004/RW 002', 'Rahel Haba', 85, 'Rahel Haba', 'RT 004/ RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(19, 'Penjahit Jitron', '  RT 004/RW 002', 'Jitron Faot', 49, 'Jitron Faot', 'RT 004/ RW 002', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menerima jahitan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Ya'),
(20, 'Penjual Ternak', '  Fontein dan Naimata', 'Frans Bengu', 60, 'Yosepina Benggu-Leo', 'RT 004/ RW 002', '', 'Tetap', 'Perorangan', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Jual ternak ayam, babi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(21, 'Kios Sister', '  RT 004/RW 002', 'Jimmy Gaelomi', 28, 'Vera Gaelomi', 'RT 004/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(22, 'Dapur MM', '  RT 004/RW 002', 'Muhammad T. Asnawi', 46, 'Adel Leka', 'RT 004/RW 002', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual kuliner', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(23, 'Toko Buah Jefry', '  Jl. Tamrin', 'Jefry Sucipto', 42, 'Jefry Sucipto', 'RT 004/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual buah-buahan import', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Bantuan Pemerintah', 'Ya'),
(24, 'Laundry Jefry', '  Fontein', 'Jefry Sucipto', 42, 'Jefry Sucipto', 'RT 004/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Aktivitas Penyedia Jasa untuk Gedung dan Pertamanan', 'Menerima jasa laundry', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Bantuan Pemerintah', 'Ya'),
(25, 'Rachel Kitchen', '  RT 004/RW 002', 'Rudy Daly', 37, 'Rani Daly', 'RT 004/RW 002', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Terima catering makanan berat, dan jual kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(26, 'Kios Drastia', '  RT 004/RW 002', 'Ety Sutedjo-Bessie', 68, 'Ety Sutedjo-Bessie', 'RT 004/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(27, 'Kuliner Welmince', '  RT 004/RW 002', 'Jeremias Pauriwu', 64, 'Welmince Pah', 'RT 004/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual gorengan, kue, dan minuman/es', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(28, 'Kuliner Yakob', '  Jl. Moh. Hatta (Depan RS Umum)', 'Yakob Lomi', 52, 'Yakob Lomi', 'RT 005/RW 002', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual nasi ikan, nasi ayam, dan nasi telur', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(29, 'Kios Lodia', '  Jl. Moh. Hatta (Depan RS Umum)', 'Antonius Kanawadu', 50, 'Lodia Kanawadu', 'RT 005/RW002', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual minuman kemasan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(30, 'Kios  Yuliana', '  SDN Fontein 2', 'Johanis', 50, 'Yuliana Lomi', 'RT 005/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual jajanan SD, makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(31, 'Toko Magnalia Motor', '  RT 005/RW 002', 'Johan', 60, 'Johan', 'RT 005/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Jual perlengkapan motor/mobil', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(32, 'Toko Station Aki', '  RT 005/RW 002', 'Johan', 60, 'Johan', 'RT 005/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Jual aki', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(33, 'Hotel Belavita', '  RT 005/RW 002', 'Johan', 60, 'Johan', 'RT 005/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Penginapan', 'Rp.2,5 Milliar < Omset <= Rp.50 Milliar', 'Rp.500 Juta < KBU <= Rp.10 Milliar', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(34, 'Kios Tereanus', '  Jl. Moh. Hatta (Depan RS Umum)', 'Tereanus Uli Hede', 58, 'Tereanus Uli Hede', 'RT 005/RW 002', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual jajanan, makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(35, 'Ojek Tereanus', '  Jl. Moh. Hatta (Depan RS Umum)', 'Tereanus Uli Hede', 58, 'Tereanus Uli Hede', 'RT 005/RW 002', 'SMP/SMPLB/MTs/Paket B', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek pengkolan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(36, 'Jual Sayur Keliling', '  RT 005/RW 002', 'Esthonius Naradila', 41, 'Yulita Djami', 'RT 005/RW 002', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sayur keliling', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(37, 'Kos Cornelis', '  RT 005/RW 002', 'Cornelis Bengu', 50, 'Cornelis Bengu', 'RT 005/RW 002', '', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan 8 kamar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(38, 'Toko Surya Mas Motor', '  RT 005/RW 002', 'Antoni Yap', 60, 'Antoni Yap', 'RT 005/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Jual alat atau mesin motor/mobil', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(39, 'Kos Yoke', '  RT 005/RW 002', 'Stefanus Lado', 48, 'Yoke Lado', 'RT 005/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan 5 kamar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(40, 'Kios Dwiati', '  RT 006/RW 002', 'Dwiati Gewe', 38, 'Dwiati Gewe', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual makanan dan minuman ringan atau kemasan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(41, 'Kue Marlina', '  RT 006/RW 002', 'Marlina Tupa', 59, 'Marlina Tupa', 'RT 006/RW 002', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual kue keliling', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(42, 'Kios Welhelmince', '  RT 006/RW 002', 'Welhelmince Rihalay', 67, 'Welhemince Rihalay', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(43, 'Kios Pulsa Listrik', '  RT 006/RW 002', 'Windra Setiadi', 37, 'Windra Setiadi', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Pengadaan Listrik, Gas, Uap/Air Panas dan Udara Dingin', 'Jual pulsa listrik', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(44, 'Jual Baju', '  RT 006/RW 002', 'Fransiska Radja', 40, 'Fransiska Radja', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual baju wanita', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(45, 'Kios Radja Cell', '  RT 006/RW 002', 'Othniel Radja', 57, 'Othniel Radja', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako, makanan ringan, dan pulsa', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(47, 'AAA Garage', '  RT 006/RW 002', 'Bage Rihi Biha Radja', 29, 'Ary Radja', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Bengkel mobil', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Ya'),
(48, 'Kios Paulina', '  RT 006/RW 002', 'Paulina Omewele', 73, 'Paulina Omewele', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(49, 'Kos Semietra', '  Fontein dan Lasiana', 'Martinus Djami', 60, 'Martinus Djami', 'RT 006/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(50, 'Jual Es Batu', '  RT 006/RW 002', 'Yuliana Djami Radja', 59, 'Yuliana Djami Radja', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Pengadaan Listrik, Gas, Uap/Air Panas dan Udara Dingin', 'Jual es batu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(51, 'Kios Nelci', '  RT 006/RW 002', 'Nelci Radja Kalle', 48, 'Nelci Radja Kalle', 'RW 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual makanan ringan, salome dan minuman dingin', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(52, 'Penjahit Yuanita', '  RT 006/RW 002', 'Orpa O. Ratu Lado', 62, 'Orpa O. Ratu Lado', 'RT 006/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menerima jahitan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(53, 'Toko LMJ', '  RT 006/RW 002', 'Edward Sudjatno', 45, 'Edward Sudjatno', 'RT 006/RW 002', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Jual alat atau mesin motor/mobil', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(54, 'Abadi Jaya Kios', '  RT 006/RW 002', 'Mariance Riberu Lay', 72, 'Mariance Riberu Lay', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual jajanan, makanan ringan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(55, 'Kuliner Elisabeth', '  Jl. Moh. Hatta (Depan Dealer Suzuki)', 'Elisabeth Dira', 54, 'Elisabeth Dira', 'RT 006/RW 002', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual nasi kuning', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(56, 'Kios Vioni', '  Jl. Gajah Mada', 'Alex Kota Dia', 46, 'Yohana Leki', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(57, 'Kios Nur', '  Jl. Gajah Mada', 'Muhamad Arfa', 74, 'Muhamad Arfa', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(58, 'Kios Chrycelmno', '  Jl. Gajah Mada', 'Dance Lay', 42, 'Desion Lay', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(59, ' Jual Nasi Babi Pak Martin', '  Jl. Moch Hatta', 'Martin Edji', 63, 'Martin Edji', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual Nasi Babi dan RW', 'Rp.2,5 Milliar < Omset <= Rp.50 Milliar', 'Rp.500 Juta < KBU <= Rp.10 Milliar', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(60, 'Bengkel motor', '  Jl. Gajah Mada', 'Robert R. Rohi Mone', 56, 'Robert R. Rohi Mone', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Bengkel untuk Perbaiki motor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(61, 'Kerajinan ukir', '  Jl. Gajah Mada', 'Robert R. Rohi Mone', 56, 'Robert R. Rohi Mone', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Industri Kayu, Barang dari Kayu dan Gabus (Tidak Termasuk Furnitur) dan Barang Anyaman dari Bambu, Rotan dan Sejenisnya', 'Kerajinan ukir kayu dan besi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(63, 'Balavia Fashion', '  Jl. Moch Hatta', 'Agustina Pattipeilohi', 62, 'Agustina Pattipeilohi', 'Jl. Gajah Mada RT 07/RW03', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual Pakaian', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(64, 'Jual nasi dan kuliner', '  Depan Barata, Himalaya', 'Bildat Laikopan', 42, 'Sandi Laikopan ', 'Jl. Gajah Mada RT 07/RW03', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual nasi dan lauk makanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(65, 'Jual nasi babi Jesika', '   Kuanino, Himalaya', 'Riki Longo', 23, 'Jesika Dira', 'Jl. Gajah Mada RT 07/RW03', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual nasi dan babi bakar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(66, 'Jual air panas dan aksesoris', '  Depan Rumah Sakit Umum Yohanes, Jl. Moch Hatta', 'Yulius Kono', 54, 'Marta Talo', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Pengadaan Listrik, Gas, Uap/Air Panas dan Udara Dingin', 'Jual air panas dan aksesoris seperti jepit rambut,konde dll', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(67, 'Nasi Anugrah ', '  Jl. Moch Hatta', 'Joni Tode Solo', 37, 'Mediani Tuka', 'Jl. Gajah Mada RT 07/RW03', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual nasi ayam,ikan, telur', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(68, 'Trif by Tini', '  Jl. Gajah Mada', 'Sarlin Radja Tukan', 28, 'Martini Radja', 'Jl. Gajah Mada RT 07/RW03', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual online rombengan seperti baju, celana dan jaket', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(69, ' Penjahit Alex', '  Jl. C. Kotadia', 'Alexander Ratu Uly', 67, 'Alexander Ratu Uly', 'Jl. C. Kotadia RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit semua jenis pakaian ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(70, 'Kios Putri', '  Jl. C. Kotadia', 'Alexander Ratu Uly', 47, 'Mariana Zusi Manukoa', 'Jl. C. Kotadia RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios menjual kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(71, 'Jual hasil bumi(rempah-rempah)', '  Pasar Oebobo', 'Fredik Ga', 62, 'Fredik Ga', 'Jl. C. Kotadia RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Jual hasil bumi/komoditi/rempah-rempah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(72, 'Penjahit Tini', '  Jl. Moch Hatta', 'Obet Kota', 45, 'Omy Hartini', 'Jl. Moch Hatta RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit Pakaian wanita', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(73, 'Jepsel CafÃ© Net', '  Jl. C. Kotadia', 'Jery Doko', 53, 'Jery Doko', 'Jl. C. Kotadia RT 08/RW 03', 'DIV/S1', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Bisnis online makanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(74, 'Teras Mama Prili', '  Jl. Gajah Mada', 'Jery Doko', 50, 'Selvi Jami', 'Jl. Gajah Mada RT 08/RW03', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual kue dan frozen', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(75, 'Kios Deni', '  Jl. C. Kotadia', 'Deni J. Harode ', 41, 'Deni J. Harode ', 'Jl. C. Kotadia RT 08/RW 03', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(76, 'Ojek Online Grab', '  Jl. C. Kotadia', 'Domingus Rame', 38, 'Domingus Rame', 'Jl. C. Kotadia RT 08/RW 03', '', 'Keliling', 'Badan Usaha', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek Online Grab', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(77, 'Penjahit Febriana', '  Jl. Gajah Mada', 'Budiono', 51, 'Febriana Nai Lius', 'Jl. Gajah Mada RT 08/RW03', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit semua jenis pakaian ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(78, 'Kios Febriana', '  Jl. Gajah Mada', 'Budiono', 51, 'Febriana Nai Lius', 'Jl. Gajah Mada RT 08/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(79, 'Kuliner Febriana', '  Jl. Gajah Mada', 'Budiono', 51, 'Febriana Nai Lius', 'Jl. Gajah Mada RT 08/RW03', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual lauk makanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(80, 'Ekpedisi Sabu-Kupang pak wilem', '  Jl. C. Kotadia', 'Wilem Demange', 48, 'Wilem Demange', 'Jl. C. Kotadia RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Pergudangan dan Aktivitas Penunjang Angkutan', ' Mengantar kebutuhan pokok seperti beras dan lainnya ke sabu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(81, 'Rumah makan nasi babi ibu wayon', '  Jl. Moch Hatta', 'Veri Ratu Here', 52, 'Veri Ratu Here', 'Jl. C. Kotadia RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual Nasi Babi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(82, 'Toko Rukun Jaya', '  Jl. Moch Hatta', 'Imelda Fulbertus', 58, 'Imelda Fulbertus', 'Jl. Moch Hatta RT 08/RW 03', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Toko swalayan', 'Rp.2,5 Milliar < Omset <= Rp.50 Milliar', 'Rp.500 Juta < KBU <= Rp.10 Milliar', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(83, 'Duta Jam ', '  Jl. Moch Hatta', 'Stefanus Suwongso', 45, 'Stefanus Suwongso', 'Jl. Moch Hatta RT 08/RW 03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual jam dinding dan jam tangan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(84, 'Minyak tanah pak Marten', '  Jl. C. Kotadia', 'Marten Bire', 87, 'Marten Bire', 'Jl. C. Kotadia RT 08/RW 03', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual minyak tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(85, 'Kos-kosan Pak Marten', '  Jl. C. Kotadia', 'Marten Bire', 87, 'Marten Bire', 'Jl. C. Kotadia RT 08/RW 03', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan 4 kamar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(86, 'Kos-kosan Pak Daniel', '  Jl. C. Kotadia,kelurahan nunleu dan oetete', 'Daniel Nathan', 71, 'Daniel Nathan', 'Jl. C. Kotadia RT 08/RW 03', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Punya kos-kosan 3 lokasi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(87, 'Penjahit Martje', '  Jl. Gajah Mada', 'Hendrik Radja Kale', 38, 'Martje Thalo', 'Jl. Gajah Mada RT 09/RW03', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit Pakaian wanita', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(88, 'Bengkel Las', '  Jl. Gajah Mada', 'Hendrik Radja Kale', 50, 'Hendrik Radja Kale', 'Jl. Gajah Mada RT 09/RW03', '', 'Tetap', 'Perorangan', '', ' Bengkel Las', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(89, 'Kios Keisha', '  Jl. Gajah Mada', 'Haryanto Ludji Pao', 31, 'Haryanto Ludji Pao', 'Jl. Gajah Mada RT 09/RW03', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(91, 'Kios dan air galon', '  Jl. C. Kotadia', 'Mangngi Kota', 42, 'Mangngi Kota', 'Jl. C. Kotadia RT 09/RW 03', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari dan air galon', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(92, 'Ekpedisi Sabu-Kupang pak Mangngi', '  Jl. C. Kotadia', 'Mangngi Kota', 42, 'Mangngi Kota', 'Jl. C. Kotadia RT 09/RW 03', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Pergudangan dan Aktivitas Penunjang Angkutan', 'Ekpedisi barang bahan bangunan dan kelontong ke Sabu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(93, 'Jual Sofa,kebaya dan selimut', '  Jl. Gajah Mada', 'Haji Abdul Kadir Makatin', 70, 'Nur Hayati', 'Jl. Gajah Mada RT 09/RW03', '', 'Tetap', 'Perorangan', 'Industri Furnitur', 'Jual sofa,kebaya dan selimut', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(94, 'Hotel Gajah Mada', '  Jl. Gajah Mada', 'Naimnuke Liyadi', 47, 'Naimnuke Liyadi', 'Jl. Gajah Mada RT 09/RW03', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Hotel penginapan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(95, 'Jual Minyak Tanah Tini', '  Jl. Gajah Mada', 'Daud Lodo', 47, 'Ni Made Yuniartini', 'Jl. Gajah Mada RT 09/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual minyak tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(96, 'Ojek Online Grab', '  Jl. Moch Hatta', 'Alex Doko', 35, 'Alex Doko', 'Jl. Gajah Mada RT 09/RW03', '', 'Keliling', 'Badan Usaha', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek Online Grab', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(97, 'Bengkel Yohanis', '  Jl. C. Kotadia', 'Yohanis Nabu', 65, 'Yohanis Nabu', 'Jl. C. Kotadia RT 09/RW 03', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Bengkel motor dan mobil', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(99, 'Pengrajin kalung dan gelang', '  Jl. C. Kotadia', 'Yunus Ratu', 55, 'Yunus Ratu', 'Jl. C. Kotadia RT 09/RW 03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual kalung dan gelang', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(100, 'Kios Rosalin', '  Jl. Gajah Mada', 'Lesli Frans Bale', 72, 'Rosalin Bale Lobo', 'Jl. Gajah Mada RT 09/RW03', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(101, 'Kios Maria', '  Jl. Gajah Mada', 'Salmon Lado', 58, 'Maria Lado', 'Jl. Gajah Mada RT 09/RW03', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios jual barang  kebutuhan sehari-hari', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(102, 'Ojek pangkalan', '  Jl. Gajah Mada', 'Timi Miramangi', 39, 'Timi Miramangi', 'Jl. Gajah Mada RT 09/RW03', '', 'Tetap', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek pangkalan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(103, 'Jual sayur', '  Jl. Gajah Mada', 'Timi Miramangi', 39, 'Timi Miramangi', 'Jl. Gajah Mada RT 09/RW03', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', ' Jual sayur putih, kangkung, cabe dan lainnya', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(104, 'Nasi Kuning', '  Jln. Gajah Mada RT 010 RW 004', 'Adriana A. Nuban', 48, 'Adriana A. Nuban', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Nasi Kuning', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(105, 'Penjahit Sonya', '  Jln. Gajah Mada RT 010 RW 004', 'Habel Kale', 28, 'Sonya Kale', 'Jln. Gajah Mada', 'DIV/S1', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit Pakaian', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(106, 'Es Ananci', '  Jln. Gajah Mada RT 010 RW 004', 'Habel Kale', 59, 'Ananci Kale', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Es', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(107, 'Kursi dan Tenda', '  Jln. Gajah Mada RT 010 RW 004', 'Gil Edon', 31, 'Gil Edon', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Aktivitas Penyewaan dan Sewa Guna Usaha Tanpa Hak Opsi', 'Sewa Tenda dan Kursi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(108, 'Kios Sembako', '  Jln. Gajah Mada RT 010 RW 004', 'Salmun H. Lando', 69, 'Salmun H. Lando', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(109, 'Tenun Ikat', '  Jln. Gajah Mada RT 010 RW 004', 'Daniel Nino', 49, 'Matrona Toni', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Tenun Kain Timor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(110, 'Tenun Ikat', '  Jln. Gajah Mada RT 010 RW 004', 'Petrus Kefi', 49, 'Imelda Toni', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Tenun Kain Timor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(111, 'Bakso ', '  Jln. Gajah Mada RT 010 RW 004', 'Eginius S. Toni', 42, 'Eginius S. Toni', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Industri Makanan', 'Bakso Kelling', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(112, 'Tenun Ikat', '  Jln. Gajah Mada RT 010 RW 004', 'Orista L. Tahun', 29, 'Florida Sefi', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Tenun Kain Timor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(113, 'Ojol Maxim', '  Jln. Gajah Mada RT 010 RW 004', 'Orista L. Tahun', 30, 'Orista L. Tahun', 'Jln. Gajah Mada', 'SMP/SMPLB/MTs/Paket B', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek Online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(114, 'Kios Sembako', '  Jln. Gajah Mada RT 010 RW 004', 'Ria Ratu Uly', 56, 'Ria Ratu Uly', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(115, 'Tenun Ikat', '  Jln. Gajah Mada RT 010 RW 004', 'Eginius S. Toni', 43, 'Yohana Kase', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Tenun Kain Timor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(116, 'Cathering', '  DukCaPil Kupang', 'Rahel Behi', 32, 'Yuri Behi', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Makanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(117, 'Kos-kosan', '  Jln. Gajah Mada RT 010 RW 004', 'Agustin S. Wadu', 37, 'Agustin S. Wadu', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(118, 'Kios Sembako', '  Jln. Gajah Mada RT 010 RW 004', 'Arifin Noer', 65, 'Arifin Noer', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(119, 'Penjahit Engerid', '  Jln. Gajah Mada RT 010 RW 004', 'Jakobus Messakh', 47, 'Engerid Doko', 'Jln. Gajah Mada', 'DIV/S1', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit Pakaian', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(120, 'Service Elektronik', '  Jln. Gajah Mada RT 010 RW 004', 'Jakobus Messakh', 54, 'Jakobus Messakh', 'Jln. Gajah Mada', 'DIV/S1', 'Keliling', 'Perorangan', 'Industri Komputer, Barang Elektronik dan Optik', 'Service Elektronik', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(121, 'Nelayan', '  Lalendo Bolok', 'Jantje Haba Medo', 55, 'Jantje Haba Medo', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Industri Makanan', 'Menjual Ikan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(122, 'Kios Sembako', '  Jln. Gajah Mada RT 010 RW 004', 'Yuli Bale', 55, 'Yuli Bale', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(124, 'Kios Sembako', '  Jln. Gajah Mada RT 010 RW 004', 'Melkias N. Neno', 50, 'Amelince Neno', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(125, 'Es Kelapa', '  Jln. Gajah Mada RT 010 RW 004', 'Veda Wadu', 44, 'Veda Wadu', 'Jln. Gajah Mada', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual Es Kelapa', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(126, 'Kios Sembako', '  Jln. Gajah Mada RT 011 RW 004', 'Elisabet V.D. Wenyi', 48, 'Elisabet V.D Wenyi', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(127, 'Penjahit Son', '  Jln. Gajah Mada RT 011 RW 004', 'Simson Ch. Ludji', 59, 'Simson Ch.Ludji', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Spesialis Pakaian Laki-laki', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(128, 'Sopi Jola', '  Jln. Gajah Mada RT 011 RW 004', 'Markus Wila', 55, 'Markus Wila', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Gerobak', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(129, 'Kue Theresia', '  Jln. Gajah Mada RT 011 RW 004', 'Theresia Udju', 65, 'Theresia Udju', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Kue-kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(130, 'Salon', '  Jln. Gajah Mada RT 011 RW 004', 'Derbin D. Rohi', 45, 'Desi M. Pelo', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Aktivitas Jasa Perorangan Lainnya', 'Salon', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(131, 'Lauk-Pauk', '  Jln. Gajah Mada RT 011 RW 004', 'Derbin D. Rohi', 45, 'Desi M. Pelo', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Lauk-Pauk', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(132, 'Kios Sembako', '  Jln. Gajah Mada RT 011 RW 004', 'Meldiana Uli', 26, 'Meldiana Uli', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Kios Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(133, 'Grab', '  Jln. Gajah Mada RT 011 RW 004', 'Dominggus Rame', 39, 'Dominggus Rame', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek Online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(134, 'Snak', '  Jln. Gajah Mada RT 011 RW 004', 'Ari Radja Leba', 34, 'Serli Hadi Kore', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Snack-snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(135, 'Minyak Tanah', '  Jln. Gajah Mada RT 011 RW 004', 'Ari Radja Leba', 34, 'Serli Hadi Kore', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Minyak Tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(136, 'Snack', '  Jln. Gajah Mada RT 011 RW 004', 'Jon J.M. Wadu', 26, 'Fridolin Eki', 'Jln. Gajah Mada', 'DIV/S1', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Juala Snack-snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(137, 'Maxim', '  Jln. Gajah Mada RT 011 RW 004', 'Frengki Uli', 34, 'Frengki Uli', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Ojek Online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(138, 'Jualan Online', '  Jln. Gajah Mada RT 011 RW 004', 'Serli Agus', 40, 'Serli Agus', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Pakaian Online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(139, 'Jual buah dan Sayur', '  Jln. Gajah Mada RT 011 RW 004', 'Eben H. Wara', 32, 'Serli D. Lawu', 'Jln. Gajah Mada', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual Buah dan Sayur', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(140, 'Minyak Tanah', '  Jln. Gajah Mada RT 011 RW 004', 'Ari O. Tayeb', 61, 'Ari O. Tayeb', 'Jln. Gajah Mada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Minyak Tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(141, 'Penjahit Ani', '  Jln. Cakmalada RT 012  RW 004', 'Kaleb Ragalawa', 65, 'Antonia N. Riwu', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit Pakaian', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(142, 'Kios Sembako', '  Jln. Cakmalada RT 012  RW 004', 'Adriana Jo', 69, 'Adriana Jo', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(143, 'Rombengan', '  Perumnas Kupang', 'Linda Manno', 35, 'Linda Manno', 'Jln. Cakmalada', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Rombengan ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(144, 'Gula Sabu', '  Jln. Cakmalada RT 012  RW 004', 'Linda Manno', 35, 'Linda Manno', 'Jln. Cakmalada', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Gula Sabu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(145, 'Kios Sembako', '  Jln. Cakmalada RT 012  RW 004', 'Kornelius K. Gewa', 29, 'Agustina U. Rebo', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(146, 'Meubel', '  Jln. Cakmalada RT 012  RW 004', 'Kornelius K. Gewa', 33, 'Kornelius K. Gewa', 'Jln. Cakmalada', 'SMP/SMPLB/MTs/Paket B', 'Keliling', 'Perorangan', 'Industri Kayu, Barang dari Kayu dan Gabus (Tidak Termasuk Furnitur) dan Barang Anyaman dari Bambu, Rotan dan Sejenisnya', 'Menjual Kayu Bangunan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(147, 'Penjahit Modi', '  Jln. Cakmalada RT 012  RW 004', 'Modiana Mondolang', 69, 'Modiana Mondolang', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit Pakaian', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(148, 'Kios Sembako', '  Jln. Cakmalada RT 012  RW 004', 'Yafet Mondolang', 0, 'Yafet Mondolang', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(150, 'Bengkel', '  Jln. Cakmalada RT 012  RW 004', 'En R. Mondolang', 66, 'En. R. Mondolang', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Memperbaiki Kendaraan Rusak', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(151, 'Pakaian dan Tas Thrift', '  Jln. Cakmalada RT 012  RW 004', 'John Mondolang', 31, 'Mitha Mondolang', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Pakaian dan Tas', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(152, 'Kios Sembako', '  Jln. Cakmalada RT 012  RW 004', 'Dini Lai', 46, 'Nansi Mondolang', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Menjual Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(153, 'Minyak Tanah', '  Jln. Cakmalada RT 012  RW 004', 'Alm. Osias H. Pau', 51, 'Flora Heda', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Minyak Tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(154, 'Gym', '  Jln. Cakmalada RT 012  RW 004', 'Hari Mondolang', 51, 'Hari Mondolang', 'Jln. Cakmalada', '', 'Tetap', 'Perorangan', 'Aktivitas Kesehatan Manusia', 'Gym', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(155, 'Nasi Kuning', '  Jln. Cakmalada RT 012  RW 004', 'Eli Melek Tefa', 48, 'Agustina Kalelai', 'Jln. Cakmalada', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Nasi Kuning', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(156, 'Kios Karlos', '  Jln. Cakmalada RT 013 RW 005', 'Irine Ludji', 49, 'Marta Ludji', 'Jln. Cakmalada RT 013 RW 005', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(157, 'CV Citra Busana', '  Jln. Gajah Mada No. 22 RT 013 RW 005', 'Maria Agustina Tjung', 54, 'Maria Agustina Tjung', 'Jln. Gajah Mada No. 22 RT 013 RW 005', '', 'Tetap', 'Badan Usaha', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual dan sewa pakaian serta aksesoris', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(158, 'Minyak Tanah Stef', '  Jln. Gajah Mada No. 24 RT 013 RW 005', 'Stefanus Uru Hue', 48, 'Stefanus Uru Hue', 'Jln. Gajah Mada No. 24 RT 013 RW 005', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual minyak tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(159, 'Salon Bunga', '  Jln. Gajah Mada No. 30 RT 013 RW 005', 'Agustina Bunganawa', 67, 'Agustina Bunganawa', 'Jln. Gajah Mada No. 30 RT 013 RW 005', '', 'Tetap', 'Perorangan', 'Aktivitas Jasa Perorangan Lainnya', 'Pelayanan kecantikan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(160, 'Kos-kosan Bunga', '  Jln. Gajah Mada No. 30 RT 013 RW 005', 'Agustina Bunganawa', 67, 'Agustina Bunganawa', 'Jln. Gajah Mada No. 30 RT 013 RW 005', '', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(161, 'Ojek Mateos', '  Jln. Cakmalada RT 013 RW 005', 'Mateos Manno', 64, 'Mateos Manno', 'Jln. Cakmalada RT 013 RW 005', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Antar jemput penumpang', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(162, 'Nasi Kuning Kanor', '  Jln. Gajah Mada No. 14 RT 014 RW 005', 'Antonius Rohi Mone', 50, 'Nora Nawa Hoke', 'Jln. Gajah Mada No. 14 RT 014 RW 005', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual nasi kuning dan catering', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(163, 'Salome Setia', '  Jln. Gajah Mada No. 29 RT 014 RW 005', 'Yan Markus Uru Hue', 35, 'Herlino Bora', 'Jln. Gajah Mada No. 29 RT 014 RW 005', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual salome', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(164, 'Es Aska', '  Jln. Gajah Mada No. 29 RT 014 RW 005', 'Djamaludin Abdul Jamin', 22, 'Gita Handayani', 'Jln. Gajah Mada No. 29 RT 014 RW 005', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Menjual es', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(165, 'Kos-kosan Murniati', '  Jln. Cakmalada RT 014 RW 005', 'Doni Hermawan Bora', 32, 'Doni Hermawan Bora', 'Jln. Cakmalada RT 014 RW 005', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(166, 'Kios Yohana', '   Jln. Gajah Mada No.22 RT 014 RW 005', 'Yohana Selvina Hangge', 58, 'Yohana Selvina Hangge', ' Jln. Gajah Mada No.22 RT 014 RW 005', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(167, 'Novi Laundry', '   Jln. Gajah Mada No.22 RT 014 RW 005', 'Jefri Amalo', 42, 'Novi Lobo', ' Jln. Gajah Mada No.22 RT 014 RW 005', '', 'Tetap', 'Perorangan', 'Aktivitas Jasa Perorangan Lainnya', 'Laundry pakaian ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(168, 'Kios Risty', '  Jln. Gajah Mada No.16 RT 014 RW 005', 'Yulius G. Lomi', 48, 'Katarina Maya G. Lomi', 'Jln. Gajah Mada No.16 RT 014 RW 005', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako dan oriflame', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(169, 'Kios Diah', '  Jln. Gajah Mada No.10 RT 014 RW 005', 'Emanas ', 56, 'Emanas ', 'Jln. Gajah Mada No.10 RT 014 RW 005', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako, rokok, dan snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak');
INSERT INTO `umkm` (`id_Usaha`, `nama_usaha`, `alamat_tempat_usaha`, `nama_kk`, `umur`, `nama_pemilik`, `alamat_tempat_tinggal`, `pendidikan_pemilik`, `jenis_lokasi_usaha`, `jenis_pengelolaan_usaha`, `kbli`, `rincian_kgiatan_usaha`, `omset`, `kekayaan_bersih_usaha`, `jumlah_tenaga_kerja`, `modal_usaha`, `bina_usaha`) VALUES
(170, 'Kios Wahyu', '  Jln. Gajah Mada No.10 RT 014 RW 005', 'Sumardi ', 45, 'Sumardi ', 'Jln. Gajah Mada No.10 RT 014 RW 005', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako, rokok, dan snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(172, 'Kios Rasuse', '  Jln.Cempaka Lama RT 014 RW 005', 'Rihi Ferdinan', 43, 'Erni Mbatu', 'Jln.Cempaka Lama RT 014 RW 005', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako, pulsa,es batu, dan rokok', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(173, 'Salon Rasuse', '  Jln.Cempaka Lama RT 014 RW 005', 'Rihi Ferdinan', 43, 'Erni Mbatu', 'Jln.Cempaka Lama RT 014 RW 005', 'DIV/S1', 'Tetap', 'Perorangan', 'Aktivitas Jasa Perorangan Lainnya', 'Jasa make up', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(174, 'RB Rasuse', '  Jln.Cempaka Lama RT 014 RW 005', 'Rihi Ferdinan', 43, 'Erni Mbatu', 'Jln.Cempaka Lama RT 014 RW 005', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual RB offline dan Online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(175, 'Garden Buah', '  Jln. Moh. Hatta RT 015 RW 006', 'Saifudin Juzri', 53, 'Saifudin Juzri', 'Jln. Cakmalada No. 21 RT 014 RW 005', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual buah-buahan', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(176, 'Kios Three F', '  Jln. Moh. Hatta RT 015 RW 006', 'Deni Daniel Foeh', 38, 'Novita Foeh', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako, snack dan sandal', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(177, 'Bengkel Three F', '  Jln. Moh. Hatta RT 015 RW 006', 'Deni Daniel Foeh', 44, 'Deni Daniel Foeh', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Service motor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(178, 'Online Shop Elis', '  Jln. Moh. Hatta RT 015 RW 006', 'Viktor Elim', 42, 'Elis Elim', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual pakaian online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(179, 'Kios Nene Wele', '  Jln. Moh. Hatta RT 015 RW 006', 'Welmince Mira Tade', 65, 'Welmince Mira Tade', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(180, 'Kios Ma Made', '  Jln. Moh. Hatta RT 015 RW 006', 'Daniel Mira Tade', 43, 'Ni Made Sri Whayuni', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual snack', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(181, 'Kios Yemi', '  Jln. Moh. Hatta RT 015 RW 006', 'Yemi Asri Limakto Menno', 49, 'Yemi Asri Limakto Menno', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual mainan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(182, 'Kios Kontainer Kuning', '  Jln. Moh. Hatta RT 015 RW 006', 'Julian Alexander Rihi Leo', 29, 'Tirsa Ludji Haba', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jual sembako, snack, dan air galon ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(183, 'Jimi Telo Jahit', '  Jln. Mekar Harum No. 12 RT 15 RW 005', 'Jimi Soewongsono', 70, 'Jimi Soewongsono', 'Jln. Mekar Harum No. 12 RT 15 RW 005', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Jahit pakaian keluarga dan terima pesanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(184, 'Ojek Online Julian (Maxim)', '  Jln. Moh. Hatta RT 015 RW 006', 'Julian Alexander Rihi Leo', 31, 'Julian Alexander Rihi Leo', 'Jln. Moh. Hatta RT 015 RW 006', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Antar jemput penumpang', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(185, 'Dapur Ken', '  Jl. Cempaka Lama RT 016/RW 006', 'Robinson Rotu Ludji', 44, 'Wehelmintje', 'Jl. Cempaka, RT 016/RW 006 ', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Cathering makanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(186, 'Rumah Ikan Bref', '  Jl. Cempaka Lama RT 016/RW 006', 'Robinson Rotu Ludji', 21, 'Bref Soleman', 'Jl. Cempaka, RT 016/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Ikan beku dan segar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(187, 'Es Manis Ervida', '  Jl. Cempaka,RT 016/RW 006', 'Mohammad Y. Zakaria', 47, 'Ervida', 'Jl. Cempaka, RT 016/RW 006', '', 'Keliling', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Es berbagai rasa', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(188, 'Kios Viktori', '  Jl. Moh. Hatta RT 016/RW 006', 'Fredrik Dju', 47, 'Fredrik Dju', 'Jl. Cempaka, RT 016/RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(189, 'Keripik Naomi', '  Jl. Cempaka Lama RT 016/RW 006', 'Naomi Dju Ratu', 72, 'Naomi Dju Ratu', 'Jl. Cempaka, RT 016/RW 006', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Cemilan Keripik,dll.', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(190, 'Jual-Beli Emas', '  Jl. Muh. Hatta RT 016/RW 006', 'Naomi Dju Ratu', 72, 'Naomi Dju Ratu', 'Jl. Cempaka, RT 016/RW 006', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Perhiasan emas', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(191, 'RM Cempaka', '  Jl. Muh. Hatta RT 016/RW 006', 'Ariyanto', 53, 'Ariyanto', 'Jl. Cempaka, RT 016/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Makanan siap saji', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(192, 'Kios Evi', '  Jl. Cempaka,RT 016/RW 006', 'Paul Kouttjie', 58, 'Solvina Kouttjie', 'Jl. Cempaka, RT 016/RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(193, 'Usaha Buah Jamaludin', '  Jl.Muh. Hatta', 'Jamaludin', 54, 'Jamaludin', 'Alak', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Buah-buahan segar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(194, 'Usaha Buah Siti', '  Jl. Muh. Hatta RT 016/RW 006', 'Siti Sabrina', 35, 'Siti Sabrina', 'Jl. Muh. Hatta, RT 016/RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Buah-buahan segar', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(195, 'Kios Joanna', '  Jl. Cempaka,RT 016/RW 006', 'Antonius Robert G.', 44, 'Joanna Rosalin Lada', 'Jl. Cempaka Lama, RT 016/RW 006', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(196, 'Jamu Juli', '  Alak', 'Yuswantoro', 35, 'Juli Lestari', 'Jl. Ahmad Yani, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual Jamu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(197, 'Kedai Singkong', '  Jl. Muh. Hatta, RT 017/RW 006', 'Edi Benu', 47, 'Edi Benu', 'Jl. Muh. Hatta, RT 017/RW 006', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Cemilan dari singkong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(198, 'Meubel Lucas', '  Jl. Tangga 40, RT 017/RW 006', 'Lucas Nalley', 67, 'Lucas Nalley', 'Jl. Tangga 40, RT 017/RW 006', 'DIV/S1', 'Tetap', 'Perorangan', 'Industri Furnitur', 'Furniture', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(199, 'Penjual Kue Germana', '  Jl. Tangga 40, RT 017/RW 006', 'Siprianus Dino', 54, 'Germana Sodi', 'Jl. Tangga 40, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Pesanan roti dan kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(201, 'Budidaya Ikan Lele', '  Jl. Cak Malada, RT 017/RW 006', 'Hengky Laybahas', 33, 'Hengky Laybahas', 'Jl. Cak Malada, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Perikanan', 'Budidaya ikan lele', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(202, 'Kos Hengky', '  Jl. Cak Malada, RT 017/RW 006', 'Hengky Laybahas', 33, 'Hengky Laybahas', 'Jl. Cak Malada, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos-kosan', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(203, 'Bengkel Junaryo', '  Jl. Bajawa', 'Junaryo', 44, 'Junaryo', 'Jl. Soekarno', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Bengkel', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(204, 'Warung Makan Payman', '  Jl. Muh. Hatta, RT 017/RW 006', 'Payman Budi Santoso', 58, 'Payman Budi Santoso', 'Jl. Muh. Hatta, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Makanan siap saji', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(205, 'Nasi Kuning Payman', '  Jl. Muh. Hatta, RT 017/RW 006', 'Payman Budi Santoso', 58, 'Payman Budi Santoso', 'Jl. Muh. Hatta, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Nasi kuning', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(206, 'Gorengan Payman', '  Jl. Muh. Hatta, RT 017/RW 006', 'Payman Budi Santoso', 58, 'Payman Budi Santoso', 'Jl. Muh. Hatta, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Gorengan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(207, 'Kios Hadijah', '  Jl. Muh. Hatta, RT 017/RW 006', 'Herman', 32, 'Herman', 'Jl. Muh. Hatta, RT 017/RW 006', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', ''),
(208, 'Kios Grace', '  Jl. Cempaka Lama, RT 018/RW 007', 'Damaris Lay', 22, 'Grace Uli Reke', 'Jl. Cempaka Lama, RT 016/RW 007', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(209, 'Tauge Damaris', '  Pasar Inpres', 'Damaris Lay', 61, 'Damaris Lay', 'Jl. Cempaka Lama, RT 016/RW 007', '', 'Tetap', 'Perorangan', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Jual tauge', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(210, 'Kios Martha', '  Jl. Cempaka Lama,RT 018/RW 007', 'Martha Wakelulu', 90, 'Martha Wakelulu', 'Jl. Cempaka Lama, RT 016/RW 007', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(211, 'Penjual Kue Marvince', '  Jl. Cempaka Lama, RT 018/RW 007', 'Simson Lay', 50, 'Marvince Lay', 'Jl. Cempaka Lama, RT 016/RW 007', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Pesanan kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(212, 'Penjahit Marvince', '  Jl. Cempaka Lama, RT 018/RW 007', 'Simson Lay', 50, 'Marvince Lay', 'Jl. Cempaka Lama, RT 016/RW 007', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Pesanan pakaian dan obras', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(214, 'Kios Simon', '  Jl. Cempaka Lama, RT 018/RW 007', 'Simon Frans', 71, 'Simon Frans', 'Jl. Cempaka Lama, RT 018/RW 007', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(215, 'Kios Julius', '  Jl. Cempaka Lama, RT 018/RW 007', 'Julius A. Lay', 61, 'Julius A. Lay', 'Jl. Cempaka Lama, RT 018/RW 007', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios Kelontong', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(216, 'Bensin Lazarus', '  Jl. Cempaka Lama, RT 018/RW 007', 'Lazarus Lay', 85, 'Lazarus Lay', 'Jl. Cempaka Lama, RT 018/RW 007', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Bensin', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(217, 'Kios Kolaraga', '  RT 19/ RW 07', 'Mus Kolaraga', 48, 'Mus Kolaraga', 'Jl.Cakmalada RT 19/RW 07', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(218, 'Kue,Kios Bendeline', '  RT 19/ RW 07', 'Dominggus Rohi', 66, 'Bendeline Ie', 'Jl.Cakmalada RT 19/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako dan kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(219, 'Bengkel Cakmalada', '  RT 19/ RW 07', 'Yeheskhiel Panyola', 44, 'Yeheskhiel Panyola', 'Jl.Cakmalada RT 19/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Bengkel motor', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(220, 'Kios Margareta', '  RT 19/ RW 07', 'Margareta Manu', 48, 'Margareta Manu', 'Jl.Cakmalada RT 19/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(221, 'Gorengan,Nasi Kuning Betseba', '  RT 19/ RW 07', 'Betseba Ie', 54, 'Merpati C.Leba', 'Jl.Cakmalada RT 19/RW 07', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jualan gorengan dan nasi kuning', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(222, 'Kios, Gorengan Karim', '  RT 19/ RW 07', 'Nasir Karim', 49, 'Rahma Karim', 'Jl.Cakmalada RT 19/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako dan Gorengan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(223, 'Taksi Online', '  RT 19/ RW 07', 'Nasir Karim', 51, 'Nasir Karim', 'Jl.Cakmalada RT 19/RW 07', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'Taksi Online', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(224, 'Kue syane', '  RT 19/ RW 07', 'Syane Kadja', 55, 'Syane Kadja', 'Jl.Cakmalada RT 19/RW 07', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jualan Kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(227, 'Meja Jagung', '  Pasar Inpres', 'Junius Dida', 57, 'Junius Dida', 'Jl.Cempaka Lama RT 20/RW 07', '', 'Tetap', 'Perorangan', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Jualan Bahan Lokal', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(228, 'Meja Jagung', '  Pasar Kasih', 'Junius Dida', 44, 'Novi Sorfin Manu', 'Jl.Cempaka Lama RT 20/RW 07', '', 'Tetap', 'Perorangan', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Jualan Bahan Lokal', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(229, 'Kios Kornelia', '  RT 20/RW 07 ', 'Kornelia', 40, 'Kornelia', 'Jl.Cempaka Lama RT 20/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(230, 'Kios Linda', '  RT 20/RW 07 ', 'Linda Mariati', 52, 'Linda Mariati', 'Jl.Cempaka Lama RT 20/RW 07', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(231, 'Kue Sarce', '  RT 20/RW 07 ', 'Sarce Masae', 59, 'Sarce Masae', 'Jl.Cempaka Lama RT 20/RW 07', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jualan Kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(233, 'Kios,Minyak Tanah,Jasa Tenda,Air Galon Ludji', '  RT 20/RW 07 ', 'Jonatan Ludji', 57, 'Jonatan Ludji', 'Jl.Cempaka Lama RT 20/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako,Minyak Tanah dan Jasa Tenda', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Ya'),
(234, 'Kios Adel Oja', '  RT 20/RW 07 ', 'Dominggus Oja', 62, 'Adel Oja', 'Jl.Cempaka Lama RT 20/RW 07', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(235, 'JM Ervan Organaiser', '  RT 20/RW 07 ', 'Teofilus Kajakoro', 45, 'Teofilus Kajakoro', 'Jl.Cempaka Lama RT 20/RW 07', 'DIV/S1', 'Tetap', 'Perorangan', 'Aktivitas Penyewaan dan Sewa Guna Usaha Tanpa Hak Opsi', 'Sewa Panggung Konser', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(236, 'Kios Florentina', '  RT 21/RW 09', 'Florentina Amaro Sutarno', 54, 'Florentina Amaro Sutarno', 'Jl.Soekarno RT 21/RW 08', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sembako', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(237, 'Warung Nasi Padang', '  RT 21/RW 09', 'Joni Beines', 39, 'Joni Beines', 'Jl.Gajahmada RT 21/RW 08', 'DIV/S1', 'Tetap', 'Perorangan', 'Industri Makanan', 'Jualan Nasi Padang', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Bantuan Pemerintah', 'Tidak'),
(238, 'Fotocopy,Property,Sorum Mobil Bekas', '  RT 21/RW 09', 'Godfridus Klau', 57, 'Godfridus Klau', 'Jl.Gajahmada RT 21/RW 08', 'DIV/S1', 'Tetap', 'Badan Usaha', '', 'Fotocopy,Jual Mobil Bekas,Property', 'Rp.300 Juta < Omset <= Rp.2,5 Milliar', 'Rp.50 Juta < KBU <= Rp.500 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(243, 'KIOS ADARA', '  JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'MARICE BAE', 62, 'MARICE BAE', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN MINYAK TANAH, SEMBAKO (MIE, SABUN MANDI, SABUN CUCI, GULA PASIR, KOPI, DLL)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(244, 'KIOS ANUGRAH', '  JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'YOSEP ELIM', 70, 'YOSEP ELIM', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN PULSA, BERBAGAI JENIS SEMBAKO (MIE, GULA, KOPI, TELUR, MASAKO, MINUMAN,DLL', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Bantuan Pemerintah', 'Tidak'),
(245, 'LAUNDRY KANSA', '  JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'AHMAD BAKAR', 43, 'MUKLISHA JHAFAR', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'CUCI, JEMUR, JEMUR PAKAIAN (KAOS, KAMEJA, SPREI, BEDCOVER)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(246, 'KIOS SINAR', '  JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'SHARUDIN MADE AMIR', 40, 'SHARUDIN MADE AMIR', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN BERBAGAI JENIS SEMBAKO, JUALAN PULSA HANDPHONE, PULSA LISTRIK', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(247, 'KIOS PUTRI BUNGSU', '  JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'SALAMA AMIR', 42, 'SALAMA AMIR', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, MIE, TELUR, KOPI, GULA, MASAKO, GARAM, DAN SEBAGAINYA', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(248, 'RIDHO TAYLOR', '  JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'ARIFIN BHAKTIAR', 39, 'RISDAWATI', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'DIV/S1', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'MANJAHIT PAKAIAN KANTORAN, PAKAIAN DINAS, DRESS ANAK DAN DEWASA, SERAGAM PERNIKAHAN', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(249, 'WARUNG MUKI BERKAH', '  STADION MERDEKA', 'RUDIYANTO', 52, 'DANANG ', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Keliling', 'Perorangan', 'Industri Makanan', 'JUALAN NASI GORENG, SOTO AYAM', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(250, 'WARUNG RAYA', '  JLN. SOEKARNO SAMPING MASJID RAYA', 'RUDIYANTO', 40, 'RUDIYANTO', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Industri Makanan', 'JUALANN NASI GORENG, SOTO BABAT, AYAM LALAPAN, GADO-GADO', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(251, 'WARUNG BERKAH', '  JLN. SOEKARNOSAMPING BANK BRI', 'SUNARTI', 60, 'SUNARTI', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Keliling', 'Perorangan', 'Industri Makanan', 'JUALAN NASI GORENG, SOTO AYAM', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(252, 'OJEK PENGKOLAN', '  PANGKALAN DEPAN BANK BRI', 'ZAINAL BHAKTIAR', 46, 'ZAINAL BHAKTIAR', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', 'SMP/SMPLB/MTs/Paket B', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'OJEK PENGKOLAN', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(253, 'OJEK PENGKOLAN', '  PANGKALAN DEPAN BANK BRI', 'SURATMIN SIDIN', 50, 'SURATMIN SIDIN', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'OJEK PENGKOLAN', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(254, 'OJEK ONLINE MAXIM', '  OJEK ONLINE', 'RONAL A. MAKATU', 42, 'RONAL A. MAKATU', 'JLN. PERCETAKAN CENDANA RT.22/RW.08 KELURAHAN FONTEIN', '', 'Keliling', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'OJEK ONLINE MAXIM', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(255, 'PENJAHIT ELIS', '  JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', 'FERDY MARAMIS', 53, 'ELISABETH LUDJI', 'JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'MENJAHIT BAJU, ROK, KEBAYA, PAKAIAN KANTOR (WANITA)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(256, 'SAYUR EMILIA', '  JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', 'MATHEUS DA SILVA', 48, 'EMILIA RIWU', 'JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'SAYUR DI BELI LALU DIJUAL KEMBALI (KANKUNG, SAYUR MANIS, SAYUR PUTIH, TOMAT, LOMBOK, BAWANG, BUMBU KERING)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(257, 'KIOS SALMA', '  JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', 'DJARABE TERE', 67, 'DJARABE TERE', 'JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, MIE, TELUR, KOPI, GULA, MASAKO, GARAM, DAN SEBAGAINYA, USAHA PARUT KELAPA', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(259, 'SATE SUDARSONO', '  SAMPING KANTOR BUPATI LAMA', 'SUDARSONO', 42, 'SUDARSONO', 'JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SATE, GULAI, BAKSO', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(260, 'KIOS INANG', '  JLN. CAKMALADA FONTEIN', 'RIANY ABDULLAH', 50, 'RIANY ABDULLAH', 'JLN. PERCETAKAN CENDANA RT.23/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, JUALAN PULSA, MINUMAN DINGIN, PENYEDAP RASA, DLL', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Ya'),
(261, 'ADHE SHOP', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'MUHAMMAD NURDIN', 21, 'ADHE IRMA', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN PAKAIAN, SKINCARE, KREDIT HP', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(262, 'ARKY SHOP', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'MUHAMMAD HATTA', 24, 'MINARTI AMBUWARU', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN PAKAIAN, SKINCARE, JILBAB', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(263, 'KIOS FADILAH', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'BAMBANG', 43, 'BAMBANG', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, JUALAN PULSA, MINUMAN DINGIN, PENYEDAP RASA, DLL', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(264, 'KIOS SEDERHANA', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'MAWAR', 60, 'MAWAR', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, JUALAN PULSA, MINUMAN DINGIN, PENYEDAP RASA, DLL', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(265, 'WARUNG GERBANG BRI', '  JLN. SOEKARNO DEPAN BRI', 'SOEDARSONO', 43, 'SOEDARSONO', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'JUALAN GADO-GADO, NASI KUNING, SOTO AYAM', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(267, 'PANGKALAN BERKAT NATALIA', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'YOHANES TUKA', 55, 'RAHEL TUKA KALE', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN MINYAK TANAH, CEMILAN PEYEK', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(268, 'UD WIRAJAYA', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'SETIA BUDI YUSUF', 61, 'SETIA BUDI YUSUF', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Besar, Bukan Mobil dan Sepeda Motor', 'JUALAN BUAH-BUAHAN', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(269, 'GORENGAN DWI', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'RAHMA MURDA', 27, 'DWI NIRMALASARI', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'GORENGAN TAHU, TEMPE, dsb', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(270, 'NAYA OLSHOP', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'ABDUL HARIS', 44, 'ASMA HARIS', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN PAKAIAN, JILBAB, MINYAK TANAH', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(271, 'OJEK PENGKOLAN', '  MANGKAL DI DEPAN BANK BRI', 'SALEH HUSEIN', 22, 'AUDY ALFIAN', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'OJEK PENGKOLAN', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(272, 'PENJUAL IKAN', '  PASAR IKAN', 'SALEH HUSEIN', 44, 'SALEH HUSEIN', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Keliling', 'Perorangan', 'Perikanan', 'NELAYAN, MENJUAL IKAN DI PASAR', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(273, 'OJEK PENGKOLAN', '  JLN. SOEKARNO DEPAN BANK BRI', 'ABDUL HARIS', 45, 'ABDUL HARIS', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Angkutan Darat dan Angkutan Melalui Saluran Pipa', 'OJEK PENGKOLAN', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(274, 'KIOS MAYA', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'HABSA', 57, 'HABSA', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, BUMBU DAPUR', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(275, 'KIOS HAJA', '  PASAR LILI', 'HAJI DJAFAR', 78, 'HAJA SITI AMINAH', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO DI PASAR LILI', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', '', 'Tidak'),
(276, 'KIOS RAHMA', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'ABDURR RAHIM', 56, 'ALWIAH BAPA', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, JUALAN KARPET, SPREI', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(277, 'KUE IBU SITI KADARIAH', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'ANZAR ABUBAKAR', 40, 'SITI KADARIAH', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN KUE, DONAT, TART, ROTI BAKAR', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(278, 'KIOS HIDAYAH', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'BAHRUN SINAGULA', 23, 'ISLAMIYATI PINKY', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN PAKAIAN MUSLIMAH', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(279, 'KIOS MAWAR', '  JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', 'RASYID KAWALI', 53, 'RASYID KAWALI', 'JLN. PERCETAKAN CENDANA RT.24/RW.08 KELURAHAN FONTEIN', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'JUALAN SEMBAKO, MIE, MINYAK GORENG, MINUMAN DINGIN, KOPI GULA, PENYEDAP RASA, dll', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(282, 'Kos Alberto', '  Nunbaun Delha', 'Gregorius A. Bereloy', 49, 'Gregorius A. Bereloy', 'RT 25 RW 009', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Akomodasi', 'Kos - Kosan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(283, 'Kios Elias ', '  RT 25 RW 009', 'Elias Y. D. Muloko', 52, 'Elias Y. D. Muloko', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako) dan depot air galon', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(284, 'Jual sepatu', '  Pasar Senggol', 'Gabriel Djo', 53, 'Gabriel Djo', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan Sepatu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(285, 'Ternak Yunus', '  RT 25 RW 009', 'Yunus Bessie', 67, 'Yunus Bessie', 'RT 25 RW 009', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Ternak Babi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(286, 'Kios Elias ', '  RT 25 RW 009', 'Valerie Leonard', 27, 'Yuli Udju', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan snack) dan salome', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(287, 'Penjahit Harini', '  RT 25 RW 009', 'Harini Ludji', 60, 'Harini Ludji', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit pakaian sesuai pesanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(288, 'Glenn Senge', '  RT 25 RW 009', 'Richard Senge', 57, 'Richard Senge', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Gorengan dan minuman dingin', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(289, 'Sayur Ana', '  Pasar Inpres', 'Darian Djawa', 66, 'Darian Djawa', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Sayur-mayur', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(290, 'Kios Daniel', '  Fontein', 'Daniel Bara', 55, 'Daniel Bara', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako dan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(291, 'Bubur Ayam ii', '  Bonipoi ( samping Gereja Advent)', 'II Masrani', 69, 'II Masrani', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Bubur ayam', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(292, 'Kos Yanto', '  RT 25 RW 009', 'Douglas H. Ito', 30, 'Douglas H. Ito', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako dan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(293, 'Serba - serbi', '  Pasar Senggol', 'Oktavianus Suna', 43, 'Oktavianus Suna', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan tas dan topi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(294, 'Ikan Om Rame', '  Pasar Oeba', 'Amnon A. Kore', 50, 'Amnon A. Kore', 'RT 25 RW 009', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan ikan ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(295, 'All Cemilan', '  RT 26 RW 09', 'Adi L. Herewila', 39, 'Rade O. Rohi', 'RT 26 RW 09', '', 'Tetap', 'Perorangan', 'Industri Makanan', 'Cemilan dari kelor,ubi,dan labu', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(296, 'Lady Krans', '  Jalan Percetakan ', 'Yus Foeh', 45, 'Semarina Nyola', 'RT 26 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Krans bunga kering dan buket bunga', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(297, 'Se\'I Babi Rumah Tua', '  Jalan Percetakan ', 'Yus Foeh', 45, 'Semarina Nyola', 'RT 26 RW 09', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Rumah makan se\'I babi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(298, 'Peternak Muda', '  RT 26 RW 09', 'Yan Kanahebi ', 39, 'Yan Kanahebi ', 'RT 26 RW 09', 'DIV/S1', 'Tetap', 'Badan Usaha', 'Pertanian Tanaman, Peternakan, Perburuan dan Kegiatan YBDI', 'Ternak ayam kampung', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(299, 'Firani Kios', '  RT 26 RW 09', 'Marselina Baubani', 59, 'Marselina Baubani', 'RT 26 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (sembako dan snack) dan minyak tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(300, 'Es Cendol Novia', '  RT 26 RW 09', 'Frengky Meros', 34, 'Novia N. D. Kalekudji', 'RT 26 RW 09', '', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Es cendol', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(301, 'Nasi Kuning Ida', '  RT 26 RW 09', 'Yalfarisa Da Dima', 58, 'Yalfarisa Da Dima', 'RT 26 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Nasi kunig dan nasi babi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(302, 'Penjahit Ida', '  RT 26 RW 09', 'Yalfarisa Da Dima', 58, 'Yalfarisa Da Dima', 'RT 26 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit pakaian sesuai pesanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya'),
(303, 'Sapu Lidi Yulius', '  RT 26 RW 09', 'Yulius K. Baku', 42, 'Yulius K. Baku', 'RT 26 RW 09', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan sapu lidi', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(304, 'Catering 3D', '  RT 26 RW 09', 'Yan Kanahebi ', 38, 'Mathilda S. Oematan', 'RT 26 RW 09', 'DIV/S1', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Catering makanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(305, 'Serba Serbi', '  RT 26 RW 09', 'Budi R. Hiku', 41, 'Suslena Klati', 'RT 26 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Jual gorengan, nasi kuning dan minuman dingin', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(306, 'Kios Fontein', '  RT 26 RW 09', 'Patrcik Hiku', 30, 'Patrcik Hiku', 'RT 26 RW 09', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'kios (jualan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(307, 'Jualan Ikan', '  RT 27 RW 09', 'Jefta A. Laytaru', 51, 'Jefta A. Laytaru', 'RT 27 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan ikan ', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(308, 'Kios Selfina', '  RT 27 RW 09', 'Junipher Mirakaho', 38, 'Selfina Kanni', 'RT 27 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako dan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(309, 'Kios Andiana', '  RT 27 RW 09', 'Andiana Sia', 50, 'Andiana Sia', 'RT 27 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako dan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(310, 'Kios Hendri', '  RT 27 RW 09', 'Hendrik G. Hede', 54, 'Hendrik G. Hede', 'RT 27 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako dan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(311, 'Bengkel Jesica', '  RT 27 RW 09', 'Hendrik G. Hede', 25, 'Jesica A. Hede', 'RT 27 RW 09', 'DIV/S1', 'Tetap', 'Perorangan', 'Perdagangan, Reparasi dan Perawatan Mobil dan Sepeda Motor', 'Bengkel motor (tambal ban)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(312, 'Jualan Sayur', '  Sekitaran Oeba', 'Marthen Kaho', 53, 'Marthen Kaho', 'RT 27 RW 09', '', 'Keliling', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan sayur keliling', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(314, 'Penjahit Yuli', '  RT 27 RW 09', 'Yuliana Buy', 46, 'Yuliana Buy', 'RT 27 RW 09', '', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit pakaian sesuai pesanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(315, 'Mebel Dominggus', '  Tidak menetap', 'Dominggus M. Rihi', 44, 'Dominggus M. Rihi', 'RT 27 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Keliling', 'Perorangan', 'Industri Kayu, Barang dari Kayu dan Gabus (Tidak Termasuk Furnitur) dan Barang Anyaman dari Bambu, Rotan dan Sejenisnya', 'Mebel (tukang bangunan)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(316, 'Kios Jacob', '  Aernona', 'Jacob Wakelulu', 53, 'Jacob Wakelulu', 'RT 27 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Kios (jualan sembako dan snack)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(317, 'Bumbu Kering Alex', '  Pasar Inpers', 'Alexander Li Ratu', 54, 'Alexander Li Ratu', 'RT 27 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', ' bumbu kering(bawang merah,putih dan bumbu lainnya', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(318, 'Penjahir Nurlina', '  RT 27 RW 09', 'Daniel W. Rihi', 36, 'Naomi N. E. Pita', 'RT 27 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Industri Pakaian Jadi', 'Menjahit pakaian sesuai pesanan', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(319, 'Nasi Kuning Gianti', '  RT 27 RW 09', 'Viktor Nggebu', 35, 'Gianti Nggebu', 'RT 27 RW 09', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Penyediaan Makanan dan Minuman', 'Nasi kuning', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(320, 'Kios Kristina', '  RT 27 RW 09', 'Kristina H. Lae', 35, 'Kristina H. Lae', 'RT 27 RW 09', '', 'Tetap', 'Perorangan', 'Perdagangan Eceran, Bukan Mobil dan Motor', 'Jualan pesanan gorengan dan pangkalan minyak tanah', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(321, 'UD. Tituruba Meubel', '  RT 25 RW 09', 'Jibrael A. Riwu', 63, 'Jibrael A. Riwu', 'RT 27 RW 09', '', 'Tetap', 'Badan Usaha', 'Industri Furnitur', 'Mebel (buat pesanan lemari,tempat tidur,meja kursi,dll)', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '6-19 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(305427, 'PT Kue', 'Jl.Kenangan', 'Pak Arif', 13, 'Pak Arif', 'Jl. Jalur 40', 'SMP/SMPLB/MTs/Paket B', 'Tetap', 'Perorangan', 'Industri Makanan', 'Industri pembuatan kue', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Tidak'),
(305429, 'PT Cepak Mekar', 'Jl. Jalan-Jalan', 'Pak Cepmek', 76, 'Cepmek', 'Jl. Jalur 69', '', 'Tetap', 'Badan Usaha', 'Industri Pengolahan Lainnya', 'Cukur Rambut Cepmek', 'Omset <= Rp.300 Juta', 'KBU <= Rp.50 Juta', '6-19 Tenaga Kerja', 'Bantuan Pemerintah', 'Tidak'),
(305430, 'Kios jevelord', 'Jl. A', 'Radja Cornelis', 50, 'Radja Cornelis', 'Jl. Merdeka', '', 'Keliling', 'Perorangan', 'Industri Makanan', 'Kios', 'Omset <= Rp.300 Juta', 'Rp.50 Juta < KBU <= Rp.500 Juta', '1-5 Tenaga Kerja', 'Modal Sendiri', 'Ya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`id_lahir`),
  ADD KEY `kelahiran` (`kel_nomor_kk`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_pindah`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`no_kk`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD KEY `kematian` (`nik`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `penduduk` (`kel_no_kk`);

--
-- Indexes for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id_publish`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_Usaha`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kelahiran`
--
ALTER TABLE `kelahiran`
  MODIFY `id_lahir` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_pindah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kematian`
--
ALTER TABLE `kematian`
  MODIFY `id_kematian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id_publish` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_Usaha` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305431;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD CONSTRAINT `kelahiran` FOREIGN KEY (`kel_nomor_kk`) REFERENCES `keluarga` (`no_kk`);

--
-- Constraints for table `kematian`
--
ALTER TABLE `kematian`
  ADD CONSTRAINT `kematian` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`);

--
-- Constraints for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk` FOREIGN KEY (`kel_no_kk`) REFERENCES `keluarga` (`no_kk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
