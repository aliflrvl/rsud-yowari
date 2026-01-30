-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2026 at 12:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `isi_agenda` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `isi_agenda`, `tempat`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `id_user`) VALUES
(27, '<b>Rapat Tahunan Pegawai RSUD YOWARI SENTANI</b>', 'Rapat Bersama Dalam Meningkatkan Mutu dan Kinerja Staff dan Pegawai RSUD YOWARI SENTANI.', 'Aula RSUD YOWARI', '2020-06-19', '2020-06-19', '2020-06-18', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `counter` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `id_user`, `judul`, `isi_berita`, `gambar`, `hari`, `tanggal`, `jam`, `counter`) VALUES
(34, 6, 'admin', '<b>Ketua TP PKK Kabupaten Jayapura Divaksin, Anggota Diimbau Mengikuti</b> ', '\r\n\r\n<b><i>SENTANI, semuwaberita.com</i></b> â€“ Guna menjaga kesehatan diri dan mendukung pemerintah sukseskan program vaksinasi, Ketua TP PKK Kabupaten Jayapura, Ny. Magdalena Luturmas Awoitauw bersama Sekretaris, Bendara dan beberapa anggota PKK di vaksinasi.\r\n\r\nâ€œSebagai pemimpin, kami patut memberikan teladan bagi anggota. Dengan demikian,  anggota kami dapat mengikuti untuk di vaksin,â€ ujar Ketua TP PKK Kabupaten Jayapura di ruang istirahat RSUD Yowari usai mendapat vaksin, Selasa (23/03/2021) siang.\r\n\r\nDikatakan, pihaknya sangat mendukung upaya vaknsinasi yang sedang di programkan. Dukungan pihaknya bukan berdasarkan pada sebuah paksaan tetapi lebih kepada kesadaran diri tentang pentingnya menjaga kesehatan diri sendiri dan orang lain.\r\n\r\nMenurut ia, vaksin bagi PKK Kabupaten Jayapura tidak berhenti disaat dirinya telah di vaksin, namun pengurus dan anggota lainnya juga akan di vaksin sesuai dengan kesediaan masing-masing.\r\n\r\n\"Vaksin jangan dilihat hanya sebatas program pemerintah, tetapi anggaplah bahwa vaksinasi merupakan langkah atau pilihan tetap demi menjaga kesehatan dan meningkatkan imun tubuh terhadap serangan virus covid-19,\" tukasnya.\r\n\r\nSelaku ketua TP PKK Kabupaten Jayapura, Magdalena mengimbau kepada semua pengurus PKK, baik PKK tingkat kabupaten tetapi juga PKK di tingkat distrik, kampung dan kelurahan bersama seluruh anggota agar segera divaksin\r\n\r\nIa meminta, walau telah menerima vaksin namun harus tetap mematuhi protokol kesehatan yakni, mencuci tangan, menjaga jarak, memakai masker, hindari kerumunan wajib diikuti.\r\n\r\nâ€œHari ini kami divaksin pertama, setelah beristirahat hampir dua minggu maka selanjutnya kami akan kembali untuk di suntik vaksin yang kedua,â€ tukas Ketua TP PKK Kabupaten Jayapura dua periode ini. (yan)\r\n', 'IMG-20210324-WA0012_4.jpg', 'Senin', '2021-04-12', '02:27:00', 54),
(33, 6, 'admin', '<b>Bupati Jayapura terima vaksin ke-2 di RSUD Yowari, Direktur : 689 dosis vaksin telah disuntikkan', 'Kilaspapua, Sentani- Bupati Jayapura, Mathius Awoitauw, SE, M.Si telah menerima vaksin ke-2 kategori lansia atau usia diatas 60 tahun.\r\n\r\nâ€œ Pengalaman pada waktu vaksin ke-1 saya langsung bekerja. Saya coba perkembangan dari vaksin itu tetapi tidak ada keluhan sedikitpun biasa saja,â€ katanya usai vaksin ke-2 di RSUD Yowari, Kamis (18/3/2021).\r\n\r\nBupati mengungkapkan, vaksin ke-2 ini diikutinya, sesuai dengan jadwal sehingga saya mengajak seluruh masyarakat di Kabupaten Jayapura baik usia 18-59 tahun maupun diatas usia 60 tahun bahwa vaksin tak membawa pengaruh apa-apa apalagi bisa meningkatkan imuns atau ketahanan tubuh kita.\r\n\r\nâ€œ Jadi, jangan mendengar berita-berita yang tidak benar diberbagai media sosial bahwa, vaksin ada pengaruhnya. Hingga saat ini belum ada diterima laporan keluhan dari vaksin yang dilaksanakan, padahal yang divaksin telah mencapai ribuan orang,â€ ungkapnya.\r\n\r\nSementara itu, Direktur RSUD Yowari, Dr. Petronella Marcia Risamasu mengatakan, untuk tenaga kesehatan di RSUD Yowari sekitar 70 % telah menjalani vaksinasi walaupun masih ada beberapa yang ditunda tetapi akan mengikuti vaksinasi ditahap ke-2.\r\n\r\nâ€œ Tahap ke-2 kita mulai dari hari Sabtu sampai hari ini dan jumlahnya cukup banyak. Kemarin hari selasa berjumlah 119 orang dan hari ini terlihat cukup banyak. Diharapkan pelaksanaan vaksinasi bisa jalan,â€ katanya.\r\n\r\nIa menjelaskan, khusus di RSUD Yowari dosis vaksin Covid-19 yang telah diberikan pertanggal 16 Maret 2021 berjumlah 689 dosis.\r\n\r\nâ€œ Keluhan vaksin sebatas masih taraf ringan seperti, sakit sedikit ditangannya ditempat suntikan tetapi ada yang merasa lapar abis divaksin, ada yang ngantuk bahkan ada yang mual. Intinya tidaknya efek samping yang berat sehingga masyarakat tak perlu takut sebab melalui vaksin kita terlindung dari Covid-19 ,â€ jelasnya.(Redaksi)\r\n', 'vaksin-jayapura.jpg', 'Senin', '2021-04-12', '01:59:54', 76),
(32, 6, 'admin', '<b>Bupati Jayapura Disuntik Vaksin Covid-19 Tahap Pertama</b>', 'SENTANI, jayapurakab.go.id â€“ Bupati Jayapura Mathius Awoitauw menerima vaksin Covid-19 untuk pertama kalinya dengan usia di atas 60 tahun.\r\n\r\nMathius menerima vaksin Covid-19 dari Sinovac BioTech di RSUD Youwari, Kamis (18/2/2021) pagi sekitar pukul 09.00 WIT.\r\n\r\nSebelum disuntik, Mathius melewati pemeriksaan kesehatan terlebih dahulu.\r\n\r\nâ€œSebagai pemimpin harus tampil di depan, memberikan teladan dan menunjukkan jalan yang benar dari satu langkah kehidupan kepada rakyatnya,â€ ujar Mathius Awoitauw usai disuntik vaksin Covid-19, Kamis (18/2/2021).\r\n\r\nSesuai ketentuan, pelaksanaan vaksinasi Covid-19 bagi kelompok usia di atas 60 tahun dilakukan untuk menekan angka kematian dan juga meningkatkan sistem kekebalan tubuh bagi lansia.\r\n\r\nHal itu dilakukan setelah Badan Pengawas Obat dan Makanan (BPOM) secara resmi telah mengeluarkan izin penggunaan vaksin Covid-19 dari Sinovac bagi kelompok usia lanjut di atas 60 tahun.\r\n\r\nWalaupun usia Bupati Mathius sudah 61 Tahun, tapi ia berdiri di depan menjadi contoh. Karena ia adalah sosok yang peduli akan keselamatan banyak orang. Karena sehari â€“ harinya, selalu ada bersama dengan rakyatnya, baik dalam agenda pemerintahan maupun agenda pribadi. Dengan usia di atas 60 tahun, Bupati Mathius adalah orang pertama di Bumi Kenambay Umbay yang menerima disuntik vaksin Covid-19 dari Sinovac BioTech.\r\n\r\nPemerintah memprioritaskan pemberian vaksin Covid-19 kepada tenaga medis dan lansia pada tahap pertama, lalu pelayan publik dan masyarakat.\r\n\r\nUntuk diketahui, Kepala Daerah yang telah mendapatkan vaksin Covid-19 dengan usia di atas 60 tahun adalah Bupati Jayapura Mathius Awoitauw dan Bupati Sarmi Eduard Fonataba berdasarkan data dari Dinas Kesehatan Provinsi Papua.\r\n\r\nâ€œSaya harap pelaksanaan vaksinasi Covid-19 di daerah ini berjalan lancar,â€ tukasnya.\r\n', 'bupati kabupaten jayapura.jpg', 'Selasa', '2021-02-23', '01:47:31', 52),
(28, 6, 'admin', '<b>Direktur RSUD Yowari : Pasien Covid-19 sembuh jalani perawatan sesuai prosedur</b>', ' Sentani, Jayapura (ANTARA) - Direktur  rumah sakit umum daerah Yowari, Petronela Risamasu mengatakan, sampai saat ini belum ada obat khusus digunakan dalam menangani pasien COVID-19 yang dirawat di rumah sakit umum daerah Yowari. \r\n\"Kenapa pasien positif COVID-19  bisa sembuh,  pertama dari kondisi badan dan harus tetap semangat serta harus menjalani perawatan  sesuai prosedur yang sudah dianjurkan. Pasien juga jangan stres,\" kata Petronella Risamasu kepada wartawan di Sentani, Rabu.\r\nPetronela menyebu, hingga saat ini  ada 38 pasien covid-19 yang pernah dirawat di rumah sakit itu dan   sudah dinyatakan sembuh total.\r\nSehubungan dengan itu, agar bisa cepat sehat,   para pasien ini juga tetap diberikan motivasi dan mereka juga harus optimis dalam melawan virus COVID-19 ini.\r\nPihaknya juga terus memperhatikan kondisi pasien dengan menganjurkan untuk memakan makanan bergizi  guna menambah daya tahan tubuh. \r\nSelain itu pasien mengkonsumsi vitamin dan obat obat yang diberikan  yang sudah direkomendasikan dalam penanganan pasien COVID-19.\r\n\"Kemudian jangan lupa berdoa, olahraga, berolahraga ini bagi mereka yang menjalankan isolasi di ruangan tetap diberikan kesempatan untuk berolahraga di dalam ruangan tersebut. Jadi semua hal bisa dilakukan di dalam ruangan sebenarnya,\"paparnya.\r\nDia mengakui, sejauh ini belum ada obat khusus yang diberikan oleh tim medis dalam penanganan pasien COVID-19.  Tetapi yang paling penting kepada setiap pasien ini harus  mempunyai motivasi untuk sembuh.\r\n\"Hanya motivasi untuk sembuh yang kita berikan kepada mereka dan itu yang selalu kami sampaikan,\"tandasnya.\r\nUntuk itu pihaknya berharap kepada masyarakat di Kabupaten Jayapura agar tidak boleh mengabaikan protokol kesehatan yang sudah ditetapkan oleh pemerintah dalam penanganan dan pencegahan penyebaran COVID-19 ini.\r\nKarena pada prinsipnya,lanjutnya, apabila setiap masyarakat mempunyai kesadaran untuk menerapkan protokol kesehatan itu berarti secara tidak langsung yang bersangkutan sedang melindungi keluarga dan orang lain dari ancaman pandemi COVID-19 ini.\r\n\"Sampai saat ini untuk penanganan pasien positif COVID-19 itu disesuaikan dengan obat-obatan yang sudah ditetapkan dalam protokol kesehatan penanganan virus corona, seperti pemberian vitamin C vitamin E kemudian ada Zinc juga itu yang kita pakai,\" tambahnya. \r\nPewarta : Muhsidin\r\nEditor: Editor Papua\r\nCOPYRIGHT Â© ANTARA 2020', 'captureberita.JPG', 'Kamis', '2020-06-25', '02:55:28', 53),
(25, 6, 'admin', '<b>Pasien positif covid-19 bertambah jadi 5 di RSUD Yowari</b>', '<b>Sentani, Jubi</b> â€“ Jumlah pasien positif covid-19 bertambah menjadi lima orang di Rumah Sakit Umum Daerah Yowari, Kabupaten Jayapura. Penambahan terjadi setelah hasil uji laboratorium menyatakan tiga orang pasien dalam pengawasan atau PDP, positif tertular covid-19.\r\nâ€œMereka terinfeksi melalui kontak dengan pasien (berkode) Y-9. Y-9 sendiri terinfeksi melalui Y-22, yang menginap di rumahnya setelah pulang dari Makassar (mengikuti kegiatan keagamaan di Gowa, Sulawesi Selatan),â€ kata Juru Bicara Gugus Tugas Percepatan Penanganan Covid-19 Kabupaten Jayapura Khairul Lie, Selasa (7/4/2020).\r\nSebanyak dua dari tiga pasien terbaru tersebut ialah warga Kabupaten Jayapura dan merupakan anak kandung dari Y-9. Adapun seorangnya lagi ialah warga Sarmi.\r\nKedua anak kandung Y-9 tersebut kemudian dikodei dengan Y-20, dan Y-21 oleh tim medis Rumah Sakit Umum Daerah (RSUD) Yowari. Adapun pasien asal Sarmi berkodekan Y-22.\r\nâ€œPasien Y-22 berkontak dengan Y-9, yang telah lebih dahulu diisolasi (di RSUD Yowari). Adapun Y-20 dan Y-21 berkontak dengan Y-9,â€ jelas Lie, yang juga Kepala Dinas Kesehatan Kabupaten Jayapura.\r\nDirektur RSUD Yowari Petronela Risamasu menambahkan mereka tetap berupaya melakukan penanganan terbaik terhadap seluruh pasien positif maupun PDP covid-19. â€œTim dokter beserta perawat telah kami kerahkan untuk menangani lima pasien (positif covid-19) tersebut.â€\r\n\r\n<i>Editor: Aries Munandar</i>', 'Update-Covid-7-April.jpg', 'Kamis', '2020-06-18', '07:57:25', 62),
(30, 6, 'admin', '<b>RSUD Yowari miliki Laboratorium RT-PCR Covid-19', 'Kilaspapua, Sentani- Keberadaan Laboratorium RT-PCR, PCR,(Polymerase Chain Reaction) Covid-19 di Rumah Sakit Umum Daerah,(RSUD) Yowari saat ini terwujud atas kerjasama dengan Siloam Hospitals Group. Hal itu diketahui dari peresmian yang dilakukan langsung oleh, Bupati Jayapura, Mathius Awoitauw, SE, M.Si di Halaman RSUD Yowari, Kamis (28/1/2021).\r\n\r\nMenurut, Kepala Laboratorium Siloam Ambon, Dr. Steven Tiro kepada wartawan bahwa, RT-PCR ini merupakan alat berukuran kecil dengan pengerjaan sampel 9 termasuk didalamnya control.\r\n\r\nâ€œ Jadi, alat ini dirancang untuk bisa dapat bekerja dengan cepat dengan waktu kurang lebih 1 jam dari mulai masuk alat sampai keluar,â€ katanya.\r\n\r\nUntuk hasil, Ia menegaskan, cukup akurat bahkan alat ini cukup banyak atau sebagian besar PCR ini digunakan di Siloam Group,â€ tegasnya.\r\n\r\nSementara itu, Direktur RSUD Yowari, Dr. Petronella Marcia Risamasu mengatakan, keberadaan alat RT-PCR sangat membantu kami dalam hal pemeriksaan Covid-19.\r\n\r\nâ€œ Pasien yang dirawat, dan memerlukan tindakan cepat itu yang kita lakukan disini. Sedangkan, tracsing atau penelusuran di Masyarakat berstatus kontak erat namun tanpa gejala sampelnya akan tetap dikirim ke Balitbangkes Dok II Jayapura,â€ katanya.\r\n\r\nMasih katanya, untuk kapasitas pemeriksan sampel bisa dilakukan sebanyak 25 sampel perharinya. Itu terbilang mencukupi bagi pasien-pasien yang memerlukan dan ingin mengetahui hasil cepat. Paling lama kurang dari 1 jam hasil sudah bisa diketahui,â€ katanya.\r\n\r\nDitempat sama dikatakan, Bupati Jayapura, Mathius Awoitauw, SE, M.Si mengapresiasi keberadaan RT-PCR di RSUD Yowari sebab dengan alat itu penanganan kesehatan bagi masyarakat di Kabupaten Jayapura sudah bisa lebih cepat terlebih Covid-19.\r\n\r\nâ€œ Ini pertama sekali. Diharapkan, dengan alat ini penanganan Covid bisa lebih komprensif mengingat dengan alat itu akan membantu petugas medis untuk melihat dan mendiskusi sekaligus menangani pasien Covid-19 ,â€ tutupnya.(Redaksi)', 'peresmian pcr.JPG', 'Selasa', '2021-02-02', '07:56:01', 45),
(29, 6, 'admin', '<b>Launching Vaksinasi Covid-19 Di Kabupaten Jayapura</b>', 'Sentani-Bupati Kabupaten Jayapura bersama forkopimda, TNI dan Polri melaunching program vaksinasi Covid-19 di Rumah Sakit Yowari, Distrik Sentani Kabupaten Jayapura, Kamis (21/01).\r\n\r\nHadir Dalam kegiatan Bupati Jayapura Mathius Awoitauw, SE., M.Si, Wakapolres Jayapura Kompol Zet Saalino SH., MH, Danrindam XVII/Cendrawasih Kolonel Inf. I Gusti Agung A Winata, Kadislog Lanud Silas Papare, Kepala Direktur RS. Yowari Petronella M Risamasu, M.Ked. Trop, Stakeholder Kabupaten Jayapura serta para awak media.\r\n\r\nKabupaten Jayapura direncanakan menerima 2.730 dosis dari total 14.680 dosis yang telah terkirim ke provinsi Papua dengan target pelaksanaan vaksin dilakukan secara bertahap yang dimulai dari tahap pertama diprioritaskan untuk tenaga medis dan tenaga kesehatan lainnya di Kabupaten Jayapura serta pelayanan publik termasuk TNI dan Polri sebanyak 1.343 orang.\r\n\r\nPada kesempatan itu, Bupati Kabupaten Jayapura mengajak seluruh masyarakat Kabupaten Jayapura untuk bersyukur karena vaksinasi Covid-19 dapat dilaksanakan di RS. Yowari. â€œKarena pada hari ini pencanangan pemutusan Covid-19 di Kabupaten Jayapura dengan kita memulai melaksanakan penyuntikan vaksin Covid-19,â€ kata Bupati Jayapura.\r\n\r\nLanjut Bupati Jayapura, program vaksinasi dari pemerintah pusat merupakan sarana untuk membantu masyarakat Kabupaten Jayapura agar terhindar dari penyebaran Covid-19.â€œDiharapkan seluruh masyarakat Kabupaten Jayapura mari sama-sama kita sukseskan ini, mari kita sama-sama melakukan apa yang menjadi tugas kita,â€ ujarnya.\r\n\r\nWakapolres Jayapura menambahkan, perlunya dilaksanakan sosialisasi terhadap Masyarakat khususnya di wilayah kabupaten Jayapura tentang manfaat dan kandungan yang ada di dalam vaksin tersebut agar masyarakat lebih paham sehingga dengan sukarela dan sadar diri bersedia untuk divaksin dan membantu pemerintah untuk mensosialisasikan tentang pentingnya vaksin tersebut.â€Apa yang kita lakukan hari ini akan menepis semua keraguan kepada masyarakat dan kami berharap kepada tim media yang hadir untuk publikasikan informasi yang baik untuk bisa memperlancar proses proses dalam upaya vaksinasi ini,â€ pungkas Wakapolres.\r\n\r\nsumber : humas.polri.go.id', 'vaksinasi.jpg', 'Senin', '2021-01-25', '01:14:27', 45),
(23, 6, 'adminyowari', '<b>RSUD YOWARI SENTANI Dapat Bantuan Tenaga Kesehatan Tangani Pasien Covid-19</b>', ' Sentani, Jayapura (ANTARA) - Manajemen Rumah Sakit Umum Daerah (RSUD) Yowari, Kabupaten Jayapura, Papua, mendapat bantuan tenaga kesehatan dari Lanud Silas Papare Jayapura untuk menangani pasien terpapar COVID-19 yang dirawat di rumah sakit tersebut.\r\n\r\nDirektur RSUD Yowari, Petronlea Risamasu di Sentani, Jumat, mengatakan tiga tenaga kesehatan yang diperbantukan dari Lanud Jayapura itu yakni satu orang tenaga dokter dan dua perawat.\r\n\r\nPetronela menjelaskan, menghadapi lonjakan pasien COVID-19 yang dirawat di rumah sakit yang dipimpinya, pihaknya mengalami keterbatasan tenaga baik dokter maupun perawat.\r\n\r\nMenyikapi persoalan ini, kata dia, manajemen RSUD Yowari sudah melakukan upaya komunikasi dengan sejumlah pihak untuk mendapatkan suport tenaga medis.\r\n\r\n\"Kami sudah lakukan komunikasi, dengan sejumlah pihak dan kita sudah mendapat bantuan tenaga dokter dan perawat dari TNI,\" katanya.\r\n\r\n\"Untuk dokter ada satu orang yang diperbantukan dari Lanud Jayapura, dan dua orang tenaga perawat,\" ujarnya.\r\n\r\nDia mengatakan, sejak pandemi COVID-19, pihaknya banyak mengalami kendala dalam hal melakukan pelayanan perawatan terhadap pasien terpapar corona, khususnya kesiapan SDM dan sarana dan prasarana.\r\n\r\nMeski demikian, kata dia, keterbatasan itu bukan berarti menjadi penghalang bagi tim medis untuk tetap berupaya melakukan pelayanan terbaik kepada para pasien terpapar COVID-19.\r\n\r\n\"Memang dalam menghadapi pandemi COVID-19 ini, kita secara sarana dan prasarana, SDM terpaksa harus kita siapkan,\" katanya.\r\n\r\nPihaknya terus melakukan pemeriksaan PCR atau swab tenggorokan terhadap warga yang dinyatakan reaktif dari hasil pemeriksaan menggunakan alat rapid test.\r\n\r\n\"Hingga kini 10 pasien yang sudah dinyatakan sembuh setelah pemeriksaan swab tenggorokan. Kami akan terus melakukan pemeriksaan lanjutan menggunakan PCR bagi warga yang dinyatakan reaktif,\" tambah dia.\r\nPewarta : Musa Abubar\r\nEditor: Muhsidin\r\nCOPYRIGHT Â© ANTARA 2020\r\n', 'Dokter.jpg', 'Kamis', '2020-06-18', '02:59:32', 66),
(24, 6, 'admin', '<b>RSUD Yowari bangun ruang isolasi untuk pasien covid-19</b>', 'Sentani, Jubi â€“ Pemerintah menganggarkan sekitar Rp8 miliar untuk pembangunan jalan di Rumah Sakit Umum Daerah Yowari, Kabupaten Jayapura. Pembangunan tersebut meliputi pengaspalan sepanjang 2 kilometer, perbaikan talut, drainase, hingga sarana sanitasi.\r\nâ€œSaat ini (proyeknya) sedang dikerjakan. Target pekerjaannya, (rampung) dalam dua pekan,â€ kata Kepala Dinas Pekerjaan Umum dan Perumahan Rakyat (PUPR) Kabupaten Jayapura Alpius Toam, Selasa (31/3/2020).\r\nDia mengatakan penyiapan infrastruktur tersebut menjadi bagian dari upaya meningkatkan pelayanan  di Rumah Sakit Umum Daerah (RSUD) Yowari. Proyek tersebut juga mengerjakan bangunan baru untuk ruang isolasi guna menangani pasien covid-19.\r\nâ€œAda ruang isolasi yang dibangun di belakang ruang Unit Gawat Darurat (UGD). Fungsinya masih bersifat sementara, dan jalan masuknya sedang dikerjakan,â€ jelas Toam.\r\n\r\nDia berharap semua pekerjaan tersebut selesai tepat waktu sehingga tidak menghambat mobilisasi penanganan pasien. â€œJalan masuk terdiri atas dua jalur, yang masing-masing sepanjang 200 meter dari jalan utama. Kondisi jalan masuk saat ini perlu diperbaiki.â€\r\n\r\nDirektur RSUD Yowari Petronela Risamasu mengapresiasi tindakan cepat pemerintah dalam menyiapkan infrastruktur dan fasilitas pendukung lain. â€œBangunan di bagian belakang (gedung utama) sudah siap digunakan, hanya jalannya perlu diperbaiki untuk memudahkan mobilisasi petugas (paramedis).â€', 'Jayapura-Membangun_Pengerjaan-Jalan-Masuk-RSUD-Yowari-Engel-1024x768.jpg', 'Kamis', '2020-06-18', '07:52:57', 73),
(35, 6, 'admin', '<b>Petronela: Layanan Terbaik Butuh Kerjasama</b>', '\r\n\r\n<b><i>SENTANI, jayapurakab.go.id</i></b> â€“ Baru-baru ini anggota DPRD kabupaten Jayapura menyoroti pelayanan tenaga medis di Rumah Sakit Umum Daerah Yowari.\r\nSorotan itu terkait dengan respon petugas medis saat menangani pasien yang datang berobat di pelayanan IGD yang dinilai sangat buruk. Termasuk fasilitas lainnya di ruang nifas RSUD Yowari juga disoroti.\r\n\r\nDirektur Umum RSUD Yowari, dr. Petronela Risamasu mengatakan, untuk mendapatkan pelayanan yang baik tentu harus ada kerjasama antara petugas medis dan juga masyarakat yang datang berobat di Fasilitas Kesehatan tersebut.\r\n\r\nDikatakan, mengenai standar operasional pelayanan di ruang unit gawat darurat RSUD Yowari itu, sebenarnya sudah jelas. Namun pada suatu kondisi tertentu, misalnya saat ramai ada 1 atau 2 pasien yang tidak sempat dilayani secara penuh, tentu perlu adanya keterlibatan keluarga juga keterlibatan masyarakat dan itu sangat diharapkan. Dalam rangka mendukung pelayanan di Rumah Sakit tersebut. Jadi tidak semuanya harus dikerjakan oleh tenaga kesehatan.\r\n\r\nâ€œMemang Itu sudah menjadi tugas kami tetapi pada saat-saat tertentu, Di mana ada pasien banyak tentu perlu ada bantuan juga dari keluarga dan sebagainya. Jadi saya pikir kita tidak bisa menyamaratakan satu kasus. Jadi semuanya begitu. Kalau SOP di rumah sakit menurutnya sudah jelas sesuai dengan kasusnya. Kalau kasusnya apa tentu sudah ada SOP-nya bagaimana,â€ jelas Petronela Risamasu saat dihubungi wartawan belum lama ini.\r\n\r\nLanjut dia, Untuk fasilitas penunjang, baik fasilitas medis maupun fasilitas non medis, sesungguhnya khusus untuk Rumah Sakit Yowari sudah sesuai dengan standar rumah sakit itu yang masih tipe C.\r\n\r\nâ€œBahkan kami dalam pembelanjaan terakhir melalui pengadaan berusaha untuk melengkapi yang terbaik yang bisa kita adakan di rumah sakit,â€ ujarnya.\r\n\r\nTerkait itu khusus untuk informasi tentang penanganan klinis maka itu kewenangan dari dokter spesialis sebagai penanggung jawab pasien untuk menentukan Pasien itu harus melakukan pemeriksaan tertentu dan sebagainya. Sedangkan fasilitas penunjang yang lainnya seperti sempat ada informasi dari masyarakat tentang perlu adanya gorden dan sebagainya.\r\n\r\nâ€œItu perlu saya tegaskan bahwa, rumah sakit ini kami perlu memikirkan dari segala aspek. Sehingga pengadaan sarana dan prasarana perlu menyesuaikan dengan standarnya. Apakah ini tidak menjadi sarana penularan kuman dan sebagainya. Sehingga hal itu perlu kami atur dengan baik. Karena kita tahu rumah sakit ini melayani di saat pandemi Covid ini bukan hanya pasien Covid-19 tetapi pasien non-Covid-19 juga tetap dilayani,â€ tambahnya.\r\n', 'cb391132-f88a-4637-886a-f007d2cb20c8-1024x576.jpg', 'Senin', '2021-04-12', '02:38:28', 50),
(38, 6, 'admin', '<b> Medis Poli THT RSUD YOWARI', 'Poliklinik Telinga Hidung Tenggorokan(THT) kami berfokus pada penanganan permasalahan atau penyakit yang berhubungan dengan Telinga,Hidung Tengggorokan.dibantu oleh dokter spesialis THT yang ahli di bidangnya, serta ditunjang peralatan medis yang modern, lengkap dan memadai.\r\n\r\nDokter spesialis THT adalah dokter yang memiliki keahlian spesifik dalam mengobati penyakit yang berkaitan dengan telinga, hidung, dan tenggorokan. Selain itu, dokter spesialis THT juga bertugas mengatasi sejumlah penyakit yang terjadi di kepala dan leher.\r\n\r\nDokter spesialis THT memiliki pengetahuan mendalam tentang pencegahan, diagnosis, dan pengobatan berbagai penyakit yang berhubungan dengan telinga, hidung, dan tenggorokan. Dokter THT dapat menangani pasien dari berbagai usia, mulai dari bayi sampai lanjut usia.\r\n\r\nAda beberapa jenis penyakit yang dapat ditangani oleh dokter spesialis THT, antara lain:\r\n\r\nGangguan telinga\r\nKondisi ini meliputi kehilangan pendengaran, gangguan keseimbangan, telinga berdengung, infeksi, dan tumor atau kanker di telinga.\r\n\r\nGangguan hidung\r\nKondisi ini dapat berupa alergi, sinusitis, sulit mencium suatu aroma, cedera hidung, hidung tersumbat, serta tumor atau kanker di hidung.\r\n\r\nGangguan tenggorokan\r\nKondisi ini meliputi sulit menelan, suara terganggu, gangguan pada kelenjar adenoid, laringitis, atau tonsillitis.\r\n\r\nGangguan tidur\r\nKondisi ini meliputi apnea tidur obstruktif, kebiasaan mendengkur, dan gangguan tidur lain yang disebabkan oleh penyempitan saluran pernapasan.\r\n\r\nGangguan di leher dan kepala\r\nKondisi ini dapat berupa masalah di tulang tengkorak, rongga mulut, kelenjar ludah, kelenjar tiroid dan paratiroid, atau beberapa gangguan di kulit wajah.\r\n\r\n<img src=\"THT2.jpg\" width=\"550\" height=\"220\" >\r\n\r\nFasilitas Pelayanan di RSUD Yowari\r\nPemeriksaan telinga hidung dan tenggorok dengan menggunakan endoskopi\r\n\r\n<img src=\"THT1.jpg\" width=\"550\" height=\"180\" >\r\n\r\nFasilitas Operasi di RSUD Yowari\r\nOperasi Tonsilektomi (Pengangkatan Amandel)\r\nOperasi Polip Ekstraksi dengan tuntunan endoskopi (pengangkatan Polip di hidung)\r\nOperasi Kecil di Telinga dengan tuntunan endoskopi\r\n\r\n', 'tht3.JPG', 'Jumat', '2022-07-29', '08:58:43', 21),
(39, 6, 'admin', '<b> Pemenang Lomba', 'Dalam Rangka Menyambut HUT RI ke 77 RSUD Yowari mengadakan lomba - lomba untuk memeriahkan perayaan HUT RI. Lomba -Lomba yang dilaksanakan berupa Lomba Foto utnuk masing Ruangan / Unit / Poli, Lomba Menghias Ruangan / Unit / Poli, dan  Lomba Untuk Kategori Ruangan Terbersih.\r\n\r\nUntuk Pemenang Lomba FOTO :\r\nJuara 1 : Ruang NIFAS\r\nJuara 2 : Ruang BEDAH\r\nJuara 3 : Ruang BERSALIN (VK)\r\n\r\nUntuk Pemenang Lomba Menghias Ruangan :\r\nJuara 1 : KAMAR OPERASI (OK)\r\nJuara 2 : POLI SARAF (NEURO)\r\nJuara 3 : RUANG BERSALIN (VK)\r\n\r\nUntuk Pemenang Kategori Ruangan Terbersih ( 3 Ruangan ) :\r\n- RUANG NIFAS, POLI GIGI DAN RUANG LAUNDRY -\r\n\r\nPenyerahan Hadiah ke Masing - Masing Pemenang akan dilaksanakan pada Hari Jumat Tanggal 19 Agustus 2022 setelah Kegiatan Senam Bersama.', 'hasil lomba.jpg', 'Kamis', '2022-08-18', '06:37:07', 22),
(40, 6, 'admin', '<b>RSUD Yowari Kini Berstatus Akreditasi Paripurna', 'Kilaspapua, Sentani-  Rumah Sakit Kebanggan Kabupaten Jayapura RSUD Yowari akhirnya mendapat penilaian Akreditasi Paripurna (Bintang 5) setelah melalui rangkaian penilaian yang dilakukan oleh Komisi Akreditasi Rumah Sakit (KARS) Indonesia.\r\n\r\nHal ini disampaikan oleh Direktur RSUD Yowari Sentani dr. Petronela Risamasu, Senin (20/3/2023)\r\n\r\nMenurutnya, setelah melalui rangkaian Survei Akreditasi Tahun 2023, RSUD Yowari berhasil mendapatkan hasil penilaian Paripurna.\r\n\r\nâ€œJadi tahun 2018 kita lulus Akreditasi dengan Madya sekarang kami ada peningkatan menjadi Paripurna, tentunya ini berkat doa semua pihak dan upaya terus menerus yang dilakukan oleh Rumah Sakit dan Pemerintah Daerah Kabupaten Jayapura, â€ ujarnya.\r\n\r\n<img src=\"dr_tumpal1.jpg\" width=\"550\" height=\"450\" >\r\n\r\nDikatakan, penilaian Akreditasi mencakup mutu dan keselamatan pasien, dimana ada 16 Pokja yang mengkoordinir pelaksnaaan peningkatan standar tersebut.\r\n\r\nâ€œJadi beberapa hal selain pelayanan, sarana prasarna, sistem dan alur pelayanan, itu juga beberapa yang menjadi penilaian. Meskipun kami sadar sepenuhnya ini tidak membuat kami menjadi berbangga hati karena proses untuk meningkatkan pelayanan itu tidak pernah berhenti,â€ ungkapnya.\r\n\r\nDirektur RSUD Yowari yang akrab disapa dr. Mala ini, menjelaskan jika support dari Pemerintah Kabupaten Jayapura selama ini ini cukup mendapat apresiasi dari lembaga yang melakukan survei tersebut.\r\n\r\nDi sisi lain, Pihaknya terus berupaya untuk mempertahankan dan meningkatkan pelayanan kepada masyarakat.\r\n\r\nâ€œRumah Sakit sebagai pelayanan publik harus terus mempertahanankan pelayanan mutu dan selalu meningkatkatkan hal-hal yang perlu dilakukan terkait standar pelayanan kepada masyarakat,â€ pungkasnya.\r\n\r\n<img src=\"dr_surjani1.jpg\" width=\"550\" height=\"450\" >\r\n\r\nSebelumnya, saat menghadiri survei tersebut Penjabat Bupati Jayapura Triwarno Purnomo berharap dengan adanya proses Akreditasi Rumah Sakit ini dapat meningkatkan pelayanan RS Yowari agar dapat menyelenggarakan pelayanan kesehatan yang aman, berkualitas dan terjangkau.\r\n\r\n<img src=\"pj_bupati.jpg\" width=\"550\" height=\"250\" >\r\n\r\nPerlu diketahui, RSUD Yowari kini mendapat penilaian Akreditasi Paripurna setelah sebelumnya menjalani Survei Akreditasi Starkes (Standar Akreditasi Kemenkes) oleh dr. Tumpal Simatupang, Sp. OG (K)., MH., MARS., FIDQua dan drg. Surjani Amarwati, MM., dari Komisi Akreditasi Rumah Sakit (KARS) Indonesia, pada tanggal 6 Maret â€“ 8 Maret 2023 lalu. \r\n\r\n<center><a href=\"https://www.youtube.com/watch?v=bnG_2Zm3IB8\" target=\"_BLANK\"><img src=\"images/code_blue.jpg\" width=\"220\" height=\"150\" ></a>Â Â Â Â Â <a href=\"https://www.youtube.com/watch?v=cp00zvWP2tA\" target=\"_BLANK\"><img src=\"images/code_red.jpg\" width=\"220\" height=\"150\" ></center>\r\n\r\n\r\n<img src=\"selamat_paripurna.jpg\" width=\"550\" height=\"550\" >', 'direktur.JPG', 'Jumat', '2023-03-24', '01:53:09', 36),
(41, 6, 'admin', '<b>Selama Ramadhan, RSUD Yowari Tetap Beri Pelayanan Maksimal', 'SENTANI, jayapurakab.go.id â€“ Rumah Sakit Umum Daerah (RSUD) Yowari bertekad memberikan pelayanan terbaik dan maksimal kepada masyarakat selama bulan suci Ramadhan.\r\n\r\nDirektur RSUD Yowari Dr. Petronella Marcia Risamasu menuturkan pelayanan yang akan diberikan tetap sama dan tidak ada perbedaan selama bulan Ramadhan.\r\n\r\nâ€œPelayanan selama bulan Ramadhan tetap sama halnya dengan bulan biasa. Cuma kemarin itu pas libur cuti bersama saat hari Raya Nyepi dan di awal-awal hari (puasa) itu kita juga menyesuaikan dengan edaran libur cuti bersama tersebut,â€ ucapnya saat ditemui usai pembukaan Rakerda Kabupaten Jayapura Tahun 2023 di Kantor Bupati Jayapura, Gunung Merah, Sentani, Kabupaten Jayapura, kemarin.\r\n\r\nPerempuan yang akrab disapa dokter Malla ini kembali menuturkan, biasanya di bulan Ramadhan jumlah kunjungan ke rumah sakit milik Pemda Kabupaten Jayapura itu sedikit menurun.\r\n\r\nâ€œJadi, IGD (Instalasi Gawat Darurat) tetap buka seperti biasa. Nah, memang biasanya kalau dalam bulan Ramadhan jumlah kunjungan menjadi berkurang. Tapi, kalau kami di rumah sakit kan tetap berikan pelayanan. Ya, di IGD itu tetap beri pelayanan 1Ã—24 jam,â€ tuturnya.\r\n\r\nUntuk pelayanan, selama bulan suci Ramadhan pihaknya juga memberlakukan sistem piket sesuai dengan jadwal yang telah ditetapkan, sehingga semua pelayanan berjalan maksimal.\r\n\r\nâ€œKami telah mempersiapkan semua personil dalam mengoptimalkan pelayanan kepada masyarakat selama bulan puasa ini. Karena melayani pasien juga bagian dari ibadah,â€ ucapnya.\r\n\r\nDokter Malla kemudian merinci, pelayanan untuk bidang emergency, poliklinik dan berbagai bagian lainnya di rumah sakit plat merah itu tetap berjalan normal seperti hari biasanya.\r\n\r\nGuna memberikan pelayanan secara prima kepada masyarakat di daerah yang dikenal dengan sebutan Bumi Kenambai Umbai itu.\r\n\r\nâ€œYa, kalau poliklinik itu sesuai dengan hari pelayanannya. Jika ada hari libur seperti nanti menjelang Lebaran itu, selain ada edaran dari provinsi maupun kabupaten, juga kami keluarkan edaran di internal kami sendiri. Jadi, hari pelayanan di poliklinik itu mulai Senin hingga Sabtu sesuai dengan alur jadwal pelayanan. Masyarakat bisa mengakses lewat pendaftaran di rekam medik, baik yang melalui rujukan dari Puskesmas (bagi yang menggunakan BPJS) itu sesuai mekanisme yang ada rujukan ke poliklinik,â€ ujarnya.\r\n\r\nâ€œKemudian, dari ruang pendaftaran di arahkan ke ruang polik mana yang akan dituju. Dari situ dilakukan pelayanan seperti biasa dan juga pemeriksaan penunjang tergantung apa yang dibutuhkan oleh dokter pemeriksa di poliklinik. Intinya, kami akan bekerja maksimal guna memberikan pelayanan prima kepada seluruh masyarakat yang menggunakan fasilitas kesehatan di RSUD Yowari selama bulan suci Ramadhan,â€ tukas dokter Malla.', 'capture310323001.JPG', 'Jumat', '2023-03-31', '07:40:47', 3),
(42, 0, 'admin', '<b>Bank Papua Serahkan 1 Unit Ambulans Kepada RSUD Yowari', 'SENTANI, jayapurakab.go.id â€“ PT Bank Pembangunan Daerah (BPD) atau Bank Papua memberikan bantuan kepada Pemerintah Kabupaten (Pemkab) Jayapura dalam hal ini RSUD Yowari berupa satu unit mobil ambulans untuk memperluas pelayanan kesehatan bagi masyarakat di daerah itu.\r\n\r\nâ€œKami dari pihak Bank Papua pada hari ini ikut berbahagia dengan pemerintah Kabupaten Jayapura yang bisa memberikan kami kesempatan untuk sama-sama dengan pemerintah daerah, yang mana kami bisa berdampak bagi masyarakat di Kabupaten Jayapura,â€ kata Direktur Operasional Bank Papua Isak Samuel Wopari, di Kota Sentani, Distrik Sentani, Kabupaten Jayapura, Rabu, 29 Maret 2023.\r\n\r\nIa mengatakan, Bank Papua memberikan satu unit mobil ambulans itu merupakan CSR di bidang kesehatan dan untuk harga mobil ambulans yang diberikan itu berkisar 651 juta rupiah.\r\n\r\nâ€œKami lihat kondisi saat inikan ada batas distrik yang perbatasannya sampai di wilayah Kabupaten Yalimo yaitu di Distrik Airu dan juga ada beberapa distrik yang agak susah di jangkau oleh kendaraan-kendaraan standar. Dengan adanya penyerahan satu unit mobil ambulans yang menurut kami sudah memenuhi standar untuk dioperasionalkan kepada seluruh masyarakat yang ada di daerah ini,â€ katanya.\r\n\r\nâ€œUntuk harga mobil itu tidak terlalu signifikan yaitu sekitar 651 juta rupiah, tapi bagaimana kami Bank Papua ikut mengambil andil di dalam program pemerintah Kabupaten Jayapura. Karena untuk pemegang saham Bank Papua di kabupaten adalah pak Bupati, begitu juga di kotamadya adalah pak Walikota dan pak gubernur di provinsi,â€ sambung Isak Wopari.\r\n\r\nUntuk itu, ia berharap dengan adanya mobil ambulans tersebut dapat memberikan dampak terhadap pelayanan kesehatan masyarakat Kabupaten Jayapura.\r\n\r\nâ€œSetelah diserahkannya mobil ambulans ini, kami harapkan agar mobil ini bisa bermanfaat bagi kelangsungan kesehatan masyarakat yang ada di daerah ini. Kami dari Bank Papua berkomitmen untuk tetap mendukung program pemerintah Kabupaten Jayapura. Biarlah lewat kerjasama ini ada kolaborasi antara pihak Pemda dan Bank Papua, untuk menciptakan kesejahteraan bagi masyarakat di Kabupaten Jayapura dan sekitarnya,â€ papar Isak Wopari.\r\n\r\nSelain memberikan satu unit mobil ambulans, kata Isak Wopari, Bank Papua pada 2021 lalu juga telah menyerahkan satu unit mobil truk sampah untuk mengatasi permasalahan sampah di dalam wilayah Kota Sentani.\r\n\r\nâ€œKemudian, saat bencana alam banjir bandang dan tanah longsor itu seluruh pegawai Bank Papua mengumpulkan bantuan donasi untuk membuat sebuah intake besar guna pelayanan air bersih bagi masyarakat saat terjadinya banjir bandang di tahun 2019 lalu,â€ tukasnya.\r\n\r\nSementara itu, Direktur RSUD Yowari Dr Petronella Marcia Risamasu menjelaskan, pemberian CRS ini sudah dikomunikasikan sejak satu tahun lalu untuk bisa mensupport pelayanan kesehatan bagi masyarakat di rumah sakit Yowari melalui Bank Papua.\r\n\r\nâ€œJadi, ini merupakan bentuk perhatian yang sangat besar dari Bank Papua terhadap kami di RSUD Yowari. Sehingga kami bisa mendapatkan satu unit mobil ambulans yang sangat bagus dari Bank Papua. Pelayanan kesehatan bisa semakin baik, jika ada support dari semua pihak termasuk dari pihak perbankan,â€ terangnya.\r\n\r\nPerempuan yang akrab disapa Malla ini juga tidak lupa mengucapkan terima kasih atas diberikannya bantuan CSR ini yang sangat bermanfaat untuk masyarakat di daerah ini.\r\n\r\nPenjabat (Pj) Bupati Jayapura Triwarno Purnomo, S.STP., M.Si., mengucapkan terima kasih yang sebesar-besarnya kepada Bank Papua atas diberikannya bantuan CSR berupa satu unit mobil ambulans transport kepada RSUD Yowari.\r\n\r\nâ€œDisela-sela kegiatan Musrenbang, kami pemerintah Kabupaten Jayapura merasa bersyukur dan menyampaikan terima kasih dan penghargaan yang sebesar-besarnya kepada pihak Bank Papua. Yang mana, di dalam kegiatan Musrenbang hari ini kita mendapat satu unit mobil ambulans yang lengkap dengan semua peralatan pelayanan kesehatan yang lengkap di dalamnya,â€ tandas Pj Bupati Jayapura.\r\n\r\nUntuk diketahui, pemberian satu unit mobil ambulans ini diserahkan langsung oleh Direktur Operasional Bank Papua Isak Samuel Wopari kepada Pj Bupati Jayapura Triwarno Purnomo. Kemudian, selanjutnya diserahkan kepada Direktur RSUD Yowari Dr Petronella Marcia Risamasu, yang disaksikan Sekda Kabupaten Jayapura Dr. Hana S. Hikoyabi, M.KP., sejumlah pejabat dan unsur Forkompinda Kabupaten Jayapura, yang berlangsung di Lobby Hotel Suni Garden Lake Sentani, Kota Sentani, Kabupaten Jayapura, Papua.', 'capture310323002.JPG', 'Jumat', '2023-03-31', '07:43:56', 4),
(43, 6, 'admin', '<b>Kunjungan Direktur dan Tim RSUD Dekai terkait Akreditasi</b>', 'Kunjungan dari RSUD Dekai untuk kaji banding proses Akreditasi', 'WhatsApp Image 2023-06-20 at 15.17.45.jpeg', 'Kamis', '2023-06-22', '04:17:55', 5),
(44, 6, 'admin', '<b>VISITASI TIM SIO KE RSUD YOWARI<b/>', 'Sentani (04 juli 2023), Tim Visitasi yang terdiri dari perwakilan Dinas Kesehatan Provinsi Papua, Perwakilan PERSI Papua, Perwakilan Dinas Kesehatan Kabupaten Jayapura, Pwerwakilan DPM-PTSP melaksanakan Visitasi Perizinan RSUD Yowari.<br>\r\nSesuai amanah Permenkes Nomor 3 Tahun 2023 tentang Izin Operasional Rumah Sakit, maka RSUD Yowari dalam waktu dekat akan memperpanjang Izin Operasional sebagai Rumah Sakit Tipe C.<br>\r\nOleh karena itu tim visitasi yang terdiri dari Perwakilan Dinas Kesehatan Provinsi Papua, Perwakilan PERSI Papua, Perwakilan Dinas Kesehatan Kabupaten Jayapura, Perwakilan DPM-PTSP Kabupaten jayapurayang diketahui Kabid Pelayanan Kesehatan Dinas Kesehatan Kabupaten Jayapura melakukan kunjungan pemeriksaan Fasilitas Kesehatan RSUD Yowari.<br>\r\nTim melakukan pemeriksaan terhadap dokumen, sarana prasarana, SDM, sarana pendukung dan semua pelayanan kesehatan yang diberikan oleh RSUD yowari.<br>\r\nPemeriksaandijadwalkan 2 hari dan tim visitasi melaporkan hasil temuan kepada RSUD Yowari, kemudian tim visitasi dalam waktu 10 hari akan mengeluarkan rekomendasi terkait permohonan izin operasional RS.<br>\r\nSistem ini sangat baik karena sebagai RSUD milik pemerintah daerah Kabupaten Jayapura menjadi tanggung jawab bersama, menjadikan RSUD kebanggaan kita semua menjadi lebih baik terutama dalam kualitas layanan kepada masyarakat.\r\n\r\nsource : dinkes.jayapura.go.id', 'WhatsApp Image 2023-07-24 at 10.34.00.jpeg', 'Rabu', '2023-07-05', '02:09:05', 19),
(45, 6, 'admin', 'RSUD Yowari Kini Dilengkapi CT Scan', 'Kilaspapua, Sentani- Rumah Sakit Umum Daerah,(RSUD) Yowari kini telah dilengkapi dengan Computed Tomography Scan atau lebih dikenal CT Scan. Alat itu baru tiba dan saat ini sedang dipasang oleh teknisi diruangan yang telah disediakan.\r\n\r\nDirektur RSUD Yowari, Dr. Petronela Risamasu saat dikonfirmasi media ini mengatakan, setelah alat CT Scan dipasang ditempatnya kemudian dilakukan uji fungsi.\r\n\r\nâ€œ Jadi, untuk kapan digunakan alat itu, setelah semuanya siap artinya, alatnya sudah uji fungsi dan petugasnya sudah selesai ikut pelatihan kemudian alatnya sudah bisa digunakan. Harapannya tahun depan awal alat sudah bisa dipakai ,â€ ucapnya, Rabu (22/11/2023).\r\n\r\nPetronela mengaku CT Stan ini termasuk alat canggih dan kita belum pernah memilikinya. Untuk jenisnya, MSCT Scan 64 slices yang sumber anggarannya dari dana alokasi khusus,(DAK),â€ ujarnya.\r\n\r\nAdapun keunggulannya, Petronela menjelaskan, mampu memperlihatkan semua organ tubuh (whole body) dengan baik dalam tiga dimensi 3D dengan resolusi tinggi termasuk organ bergerak seperti, jantung dan pembuluh darah, waktu pemeriksaan cepat, resolusi gambar sangat tinggi, pemeriksaan tidak menimbulkan rasa sakit dan ketelitian dan akurasi diagnostic lebih baik.\r\n\r\nâ€œ Tim dari Jakarta sudah mulai melakukan sosialisasi tentang penggunaan alat itu kepada petugas Yowari yang diikuti oleh sejumlah tenaga kesehatan seperti, dokter saraf, dokter umum IGD, perawat IGD ,â€ jelasnya.(Redaksi)', 'ctscan.JPG', 'Kamis', '2023-11-23', '08:12:41', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'Ariawan', 'ariawan@gmail.com', 'Mohon Informasi', 'Mohon informasi mengenai buku yang diterbitkan oleh Lokomedia.', '2008-02-10'),
(3, 'hgjghj', 'ghjghjghj', '', 'ghjghjghjghyj', '2020-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `keterangan`) VALUES
(1, 'Politik', 'Berita-berita Mengenai Politik'),
(2, 'Ekonomi', 'Berita-berita Mengenai Ekonomi'),
(3, 'Teknologi', 'Berita-berita Mengenai Teknologi'),
(4, 'Olahraga', 'Berita-berita Mengenai Olahraga'),
(5, 'Kriminal', 'Berita-berita Mengenai Kriminal'),
(6, 'Kesehatan', 'Berita-berita Mengenai Kesehatan'),
(7, 'Hiburan', 'Berita-berita Mengenai Hiburan');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `static_content` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `publish` enum('Y','N') NOT NULL,
  `status` enum('user','admin') NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`) VALUES
(2, 'Manajemen User', '?module=user', '', '', 'Y', 'admin', 'Y', 1),
(18, 'Berita', '?module=berita', '', '', 'Y', 'admin', 'Y', 26),
(19, 'Banner', '?module=banner', '', '', 'N', 'admin', 'N', 29),
(12, 'Agenda', '?module=agenda', '', '', 'Y', 'admin', 'Y', 27),
(10, 'Manajemen Modul', '?module=modul', '', '', 'N', 'admin', 'Y', 2),
(11, 'Profil RSUD Yowari', '?module=profil', ' \r\n</n><i><b>RSUD Yowari</b> adalah rumah sakit milik Pemerintah Kabupaten Jayapura. Pembangunan fisik RSUD Yowari dilakukan secara bertahap sejak tahun 2003 oleh Pemerintah Kabupaten Jayapura. Soft Opening operational RSUD Yowari tanggal 27 Januari 2007 oleh Bupati Jayapura <b>Habel M.Suwae, S.Sos MM</b>. Grand Opening RSUD Yowari oleh Pejabat Palaksana Tugas Bupati <b>Drs. Nikolaus Wenda, M.Si</b> sepuluh tahun kemudian pada tanggal 30 Januari 2017.\r\n\r\nRSUD Yowari merupakan satu-satunya rumah sakit yang ada di wilayah Kabupaten Jayapura. Nama RSUD Yowari berasal dari bahasa asli suku di Kabupaten Jayapura yang secara harafiah dapat diterjemahkan sebagai <b>â€œRumah Kehidupanâ€</b>. Lokasi RSUD berada di Kampung Doyo, Distrik Waibu, Kabupaten Jayapura, Â± 40 km dari pusat kota Jayapura. Lokasi tersebut Â± 5 km dari bandara Sentani yang merupakan bandara utama yang berada di Provinsi Papua.\r\n\r\nRSUD Yowari merupakan rumah sakit umum <b>Kelas C</b> sesuai Keputusan Menteri Kesehatan Nomor <b>345/MENKES/SK/V/2009 tanggal 7 Mei 2009</b> dan <b>Ijin Operasional Kepala Dinas PM-PTSP No. 503/01/IORS/DPM-PTSP/2018 Tanggal 20 Februari 2018 </b> merupakan rumah sakit rujukan dari puskesmas dan puskesmas pembantu di Kabupaten Jayapura dan dari kabupaten sekitar, diantaranya Kabupaten Sarmi, Kabupaten Mamberamo Raya, dan Kabupaten Pegunungan Bintang</i>.\r\n\r\n<img src=\"yowari2.jpg\" width=\"550\" height=\"270\" >\r\n\r\n<b><i><u>Moto :</u></i></b>\r\n<i>-â€œKESEMBUHAN PASIEN KEBAHAGIAN KAMIâ€ </i>\r\n\r\n<b><i><u>Visi :</u></i></b>\r\n <i>-â€œMenjadi Rumah Sakit Berkualitas Pilihan Masyarakat Papuaâ€ </i>\r\n\r\n<b><i><u>Misi :</u></i></b>\r\n <i>-\"Menjalankan pelayanan kesehatan rujukan berkualitas dan mengutamakan keselamatan pasien\".\r\n <i>-\"Mewujudkan Sistem Informasi Rumah Sakit berbasis teknologi\".\r\n <i>-\"Membangun Sumber Daya Manusia yang professional dan berintegritas serta berdaya saing\".\r\n <i>-\"Menngoptimalkan Rumah Sakit sebagai tempat pendidikan, penelitian dan pengembangan pelayanan kesehatan\".\r\n <i>-\"Mewujudkan system pengelolaan manajemen yang jujur, bersih dan akuntabel\".\r\n <i>-\"Menciptakan peluang usaha untuk kemandirian rumah sakit\".\r\n <i>-\"Melayani dengan kasih dan memperhatikan kearifan lokal Papua\".\r\n\r\n<img src=\"yowari1.jpg\" width=\"550\" height=\"150\" >\r\n\r\nBertolak dari Visi & Misi di atas maka RSUD Yowari mengembangkan beberapa nilai-nilai dasar dalam pelayanan kepada masyarakat sebagaimana tersirat di bawah ini:\r\n\r\n<b><i><u>Tujuan Kinerja RSUD Yowari :</u><i/></b>\r\n <i>a).	Memberikan pelayanan prima dan professional berdasarkan standar yang ditetapkan.\r\n <i>b).	Menyelenggarakan pelayanan yang bermutu memuaskan dan professional berdasarkan yang ditetapkan.\r\n <i>c).	Senantiasa mengikuti perkembangan IPTEK yang mutahir. \r\n <i>d).	Mengembangkan penelitian dasar dan terapan untuk meningkatkan mutu pelayanan. \r\n <i>e).	Menggalang dan mengembangkan kemitraan dengan berbagai pihak untuk menjalin jalinan kerjasama yang          Â Â Â              saling menguntungkan. \r\n <i>f).	Mewujudkan tingkat kepuasan consumer baik internal maupun eksternal secara optimal. \r\n <i>g).	Memberdayakan seluruh potensi sumber daya yang ada di rumah sakit.\r\n\r\nSehingga beranjak dari tujuan tersebut di atas kami memiliki motto <b>\"KOTEKA\"</b>, dengan penjabaran sbb :\r\n<b><i><u>K O T E K A :</u></i></b>\r\n<b>K</b>  :Komitmen dalam bekerja.\r\n<b>O</b>  :Orientasi pada pasien.\r\n<b>T</b>  :Tanamkan rasa kejujuran dalam bekerja.\r\n<b>E</b>  :Empati terhadap pasien.\r\n<b>K</b>  :Kasih di atas segalanya.\r\n<b>A</b>  :Ada tanggung jawab penuh.\r\n\r\nBerdasarkan hal-hal tersebut di atas, bagi kami RSUD Yowari <b>â€Nilai Pasienâ€</b> adalah :\r\n<b><i>PA</i></b> : Pasien adalah orang yang paling penting dalam pekerjaan kita.\r\n<b><i>PE</i></b>: Pendapat dan keluhan pasien harus didengar karena merekalah tujuan dari pekerjaan kita.\r\n<b><i>DA</i></b>: Dalam merawat pasien kita menangani keluhan mereka dengan cara yang menyenangkan dan penuh kesediaan untuk membantu.\r\nYang kami singkat dengan istilah <b><i>P A P E D A</i></b>.\r\n\r\nRSUD Yowari meraih <b>Akreditasi PARIPURNA</b> atau <b>Bintang LIMA</b> setelah sebelumnya berhasil melalui tahapan penilaian dari Komite Akreditasi Rumah Sakit (KARS) Indonesia pada tanggal 6-8 Maret 2023. Dan hasilnya keluar pada tanggal 20 Maret 2023\r\n\r\n<center><img src=\"akreditasi.JPG\"  width=\"400\" height=\"400\" >\r\n\r\n<img src=\"dir_yowari.jpg\"  width=\"550\" height=\"500\" >\r\n\r\n<center><a href=\"struktur.jpg\" target=\"_BLANK\"> <img src=\"struktur_.jpg\"  width=\"260\" height=\"200\" ></a>   <a href=\"site_plan.jpg\" target=\"_BLANK\"><img src=\"site_plan_.jpg\" width=\"260\" height=\"200\" ></a> \r\n\r\n\r\n', 'profil yowari1.jpg', 'Y', 'admin', 'Y', 3),
(25, 'Hubungi Kami', '?module=hubungi', '', '', 'N', 'admin', 'N', 30),
(26, 'Pengumuman', '?module=pengumuman', '', '', 'Y', 'admin', 'Y', 28),
(27, 'Fasilitas Pelayanan', '?module=fasilitas', '<b><u>Fasilitas Pelayanan</u></b> :\r\n1.	<b>Pelayanan Emergency</b>\r\nâ€¢	Instalasi Gawat Darurat 24 Jam\r\nâ€¢	Kebidanan\r\nâ€¢	Perinatal dan neonatal\r\nâ€¢	Radiomedik\r\n2.	<b>Pelayanan Rawat Jalan</b>\r\nâ€¢	Poliklinik Bedah\r\nâ€¢	Poliklinik Penyakit Dalam\r\nâ€¢	Poliklinik Kebidanan dan Kandungan\r\nâ€¢	Poliklinik Ilmu Kesehatan Anak\r\nâ€¢	Poliklinik Gigi dan Mulut\r\nâ€¢	Polikklinik THT\r\nâ€¢	Polikklinik Saraf\r\nâ€¢	Polikklinik \r\nâ€¢	Polikklinik Endescopy\r\nâ€¢	Poliklinik Orthopedi\r\nâ€¢	Poliklinik Rehabilitasi Medik\r\nâ€¢	Klinik Dots TB\r\nâ€¢	Klinik Hanna \r\n3.	<b>Pelayanan Rawat Inap</b>\r\n4.	<b>Pelayanan Operasi</b>\r\n5.	<b>Pelayanan Intensif</b>\r\n6.	<b>Pelayanan Khusus</b>\r\n7.	<b>Pelayanan Unggulan</b>\r\nâ€¢	Pelayanan radiologi termasuk USG 4 dimensi\r\nâ€¢	Pelayanan X â€“ Foto Panoramic\r\nâ€¢	Pelayanan Endeskopi\r\nâ€¢	Pelayanan Operasi dengan Laparaskopy\r\nâ€¢	Pelayanan pemeriksaan\r\nâ€¢	Pelayanan Resusitasi dengan Capap\r\nâ€¢	Pelayanan Rehabilitasi Medik dengan memakai alat laser Ultraso.\r\n8.	<b>Pelayanan Laboratorium patologi klinik</b>\r\n9.	<b>Pelayanan Farmasi</b>\r\n10.	<b>Pelayanan konsultasi gizi</b>\r\n11.	<b>Pelayanan ambulans / mobil jenazah</b>\r\n12.	<b>Pelayanan laundry dan sterilisasi (CSSD)</b>\r\n13.	<b>Pelayanan rekam medis</b>\r\n14.	<b>Pengelolaan limbah bakar medis</b>\r\n15.	<b>Pelayanan pemeliharaan sarana rumah sakit</b>\r\n16.	<b>Pelayanan administrasi manajemen termasuk surat kesehatan, visum, dll.</b>\r\n\r\n\r\n', 'fasilitas pelayanan.JPG', 'Y', 'admin', 'Y', 4),
(28, 'Standar Pelayanan', '?module=standar', '<b>STANDAR PELAYANAN RSUD YOWARI SENTANI KABUPATEN JAYAPURA</b>\n<b><i>(  Klik Untuk Melihat Detail Standar Pelayanan )</i></b>\n\nâ€¢	<a href=\"./admin/standar/Standar Pelayanan Rawat Inap.pdf\" target=_BLANK>Rawat Inap</a>\nâ€¢	<a href=\"./admin/standar/Standar Rawat Jalan.pdf\">Instalasi Rawat Jalan</a>\nâ€¢	<a href=\"./admin/standar/Standar Radiologi.pdf\" target=_BLANK>Instalasi Radiologi</a>\nâ€¢	<a href=\"./admin/standar/Standar Laboratorium.pdf\" target=_BLANK>Instalasi Laboratorium</a>\nâ€¢	<a href=\"./admin/standar/Standar Gizi.pdf\" target=_BLANK>Instalasi Gizi</a>\nâ€¢	<a href=\"./admin/standar/Standar Farmasi.pdf\" target=_BLANK>Instalasi Farmasi</a>\nâ€¢	<a href=\"./admin/standar/Standar Bedah.pdf\" target=_BLANK>Instalasi Bedah</a>\nâ€¢	<a href=\"./admin/standar/Standar IGD.pdf\" target=_BLANK>IGD</a>\nâ€¢ 	<a href=\"./admin/standar/Standar ICU.pdf\" target=_BLANK>ICU</a>\nâ€¢       <a href=\"./admin/standar/Standar NICU_PICU.pdf\" target=_BLANK>NICU PICU</a>\nâ€¢      <a href=\"./admin/standar/Standar Standar Bersalin.pdf\" target=_BLANK>Kamar Bersalin</a>\nâ€¢      <a href=\"./admin/standar/Standar Rekam Medis.pdf\" target=_BLANK>Rekam Medis</a>\n\n\n\n', 'fasilitas pelayanan.JPG', 'Y', 'admin', 'Y', 5),
(29, 'Kapasitas Tempat Tidur', '?module=tempattidur', '', '', 'Y', 'admin', 'Y', 6),
(30, 'Video Yowari', '?module=video', '', '', 'Y', 'admin', 'Y', 32);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul`, `isi`, `tanggal`, `tgl_posting`, `id_user`, `gambar`) VALUES
(6, '<b>Edaran Gubernur Tentang Libur Natal dan Cuti Bersama Tahun 2018</b>', 'Sentani, Jpr â€“ Menindaklanjuti Surat Edaran Gubernur Provinsi Papua, Lukas Enembe, S.IP, MH, Tentang Penetapan Hari Libur dan Cuti Bersama  Dalam Rangka Hari Raya Natal Tahun 2018 dan Tahun Baru 2019, Nomor:188.4/47/Tahun 2017 Tanggal 27 Februari 2017 Tentang Hari â€“ Hari Libur Bersama di Wilayah Provinsi Papua dan Cuti Bersama di Wilayah Provinsi Papua, maka diberitahukan  bahwa libur resmi  dan cuti bersama dalam rangka menyongsong Natal Tahun 2018 dan Tahun Baru 2019 ditetapkan sebagai Berikut:\r\nâ€œSelasa, 18 s/d Senin 24 Desember 2018 Cuti Bersama Sebelum Natal; Selasa, 25 dan Rabu 26 Desember 2018, Natal Hari Pertama dan Kedua; Kamis, 27 Desember 2018, Cuti Bersama Hari Jadi Provinsi Papua; Selasa, 01 Januari 2019, Tahun Baru 2019 Masehi; Rabu, 2 s/d 4 Januari 2019, Cuti Bersama Tahun 2019 Masehi, dan; Senin, 07 Januari 2019, Masuk Kantor Seperti Biasa.\r\n', '2020-06-18', '2020-06-18', 'admin', ''),
(12, '<b> Jadwal Pelaksanaan Vaksin RSUD YOWARI </b>', '<b> Jumat 08 : 00 s/d Selesai </b>', '2022-07-05', '2022-07-05', 'admin', 'WhatsApp Image 2022-07-05 at 12.29.53.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `password`, `nama_lengkap`, `email`, `level`) VALUES
('admin', '0192023a7bbd73250516f069df18b500', 'Administrator', '', 'admin'),
('nur', 'b55178b011bfb206965f2638d0f87047', '', '', 'user'),
('surkes', '0680af0efa638c42387bb1443e3844c3', 'Admin Surkes', '', 'admin'),
('adminyowari', 'fc663ef3d1c6c7ee43f565dc213c9714', 'Alif Yudhia Pratama', 'alifprtm27041991@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
