-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 12:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `level` enum('administrator','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `password`, `id_kelas`, `level`) VALUES
(1, 'admin', '$2y$10$vXweJwTP9X6BrdQ/QHSiTOKLdrkzvNq09qJhxOOKNnbIXOE5XP6zq', 0, 'administrator'),
(8, 'Hilda Nathaniela', '$2y$10$HvY5DBc2lfG2KPjapL6GaefmEI3kBbwuTtcNFrclvtGRzQIMOMZye', 1, 'operator'),
(10, 'Peter Sulaeman ', '$2y$10$KpMHOsQ5lL8q.owBkMj29.a5dF1mYzWkXzTahNvYBXPKvD0SNZcty', 5, 'operator'),
(11, 'Mita Amelia ', '$2y$10$o2l9lqd.8miBmbbLKTB.W.BwBxjtOV9liAnrXAmRDhSHRUkbXkMMq', 4, 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_calon`
--

CREATE TABLE `tb_calon` (
  `id_calon` int(11) NOT NULL,
  `kelas_calon_ketua_osis` varchar(128) NOT NULL,
  `kelas_calon_wakil_osis` varchar(128) NOT NULL,
  `nis_calon_ketua_osis` varchar(10) NOT NULL,
  `nis_calon_wakil_osis` varchar(10) NOT NULL,
  `calon_ketua_osis` varchar(20) NOT NULL,
  `calon_wakil_osis` varchar(20) NOT NULL,
  `visi_misi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `video` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_calon`
--

INSERT INTO `tb_calon` (`id_calon`, `kelas_calon_ketua_osis`, `kelas_calon_wakil_osis`, `nis_calon_ketua_osis`, `nis_calon_wakil_osis`, `calon_ketua_osis`, `calon_wakil_osis`, `visi_misi`, `gambar`, `video`) VALUES
(1, 'VIII', 'VIII', '20141049', '20141006', 'Muhammad Neval Maldi', 'Dwi Putri Januari ', 'Visi : Menjadi pelajar yang peduli terhadap pengembangan kualitas sumber daya manusia di bidang kerohanian, pengabdian masyarakat, pelajaran, dan perkembangan teknologi terkini.\r\nMISI : \r\n1. Membentuk wadah belajar kelompok terpadu bagi siswa.\r\n2. menyelenggarakan perlombaan yang mendidik.\r\n3. menyelenggarakan kegiatan masa orientasi siswa yang jauh dari kesan pembodohan.\r\n4. Ikut membantu penyelenggaraan kegiatan hari besar keagamaan.', '396c80694abde34d53896b7591a30651.jpg', ''),
(2, 'IX', 'IX', '19131007', '19131009', 'Armelia nur asyiffa ', 'Ahmad Fauzan Naufal ', 'Meningkatkan kualitas SMP Pancakrida Kalirejo, membentuk kepribadian siswa-siswi SMP Pancakrida Kalirejo yang SMART (Sigap, Musyawarah, Adil, Religius, Teliti)\r\nMisi:\r\n\r\nMeningkatkan kualitas prestasi akademik maupun non akademik melalui organisasinya, memperkenalkan atau menyebarluaskan pada masyarakat luas agar SMP Pancakrida Kalirejo terkenal, menjadikan OSIS sebagai wadah aspirasi siswa, dan juga meningkatkan kedisiplinan dengan menaati peraturan yang ada.', '76112c562b6bd93eec90cc6251bc92a1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil_suara`
--

CREATE TABLE `tb_hasil_suara` (
  `id_hasil` int(11) NOT NULL,
  `id_pemilih` int(11) NOT NULL,
  `id_calon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil_suara`
--

INSERT INTO `tb_hasil_suara` (`id_hasil`, `id_pemilih`, `id_calon`) VALUES
(1, 176, 1),
(2, 313, 2),
(3, 290, 1),
(4, 291, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'vII'),
(4, 'VIII'),
(5, 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemilih`
--

CREATE TABLE `tb_pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nis` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemilih`
--

INSERT INTO `tb_pemilih` (`id_pemilih`, `id_kelas`, `nis`, `nama`, `email`, `password`) VALUES
(175, 1, '19131001', 'Hilda Nathaniela', 'hildaatobing@gmail.c', '$2y$10$FjbaWYcZ1nGq3F6bvv9/6OhM4VinkWx7n1Js44vEoRferQhMqADU.'),
(176, 1, '19131002', 'Maulana Alif Anugrah ', 'alifbolip@Gmail.com ', '$2y$10$EKNeUB/Lww2RUSNZVvG4MOpjlfpHAr/bIIt2cb46Dbij8W9KmwB/i'),
(177, 1, '19131003', 'Ckasinta Winda S ', 'ckasintawinda17@gmai', '$2y$10$WxKra.pVTzvUTuqbyWEyhOG5on/bcf10LLISjyW2hf2PyFM2ksDRO'),
(178, 1, '19131004', 'Nadya Saphira Esfandiari ', '18nadyasaphira@gmail', '$2y$10$2gm1.xgADzpElatpNgKgR.QvXsFMYBkD.qksa0/H8HqoYeY5aMkwa'),
(179, 1, '19131005', 'Feggy Rizkiana Herman ', 'Feggy12345@gmail.com', '$2y$10$MJVByP.ugln1n1UOT5meL.vDePBcenuixsQX.V/0gEhtzerf66Ws2'),
(180, 1, '19131006', 'Peter Sulaeman ', 'petermoncil@gmail.co', '$2y$10$KJmEQQKFOhcVhZG4P0IWqeFyRxoSM6Erp6BIZbTHCH38RBTEyZqkC'),
(181, 1, '19131007', 'Armelia nur asyiffa  ', 'syfaarmelia@gmail.co', '$2y$10$RR.fUQBfWJh0xo/yWcwhgepCvuFYz8zeOXObhFKo8UAqQj8NiIi3q'),
(182, 1, '19131008', 'Arya Mahardika ', 'deaarya15@gmail.com ', '$2y$10$K2BgMz5yg5/xBn3xT6thZ.QYaRApVagxMqrXchERR5I4Q59lQAc/2'),
(183, 1, '19131009', 'ahmad fauzan naufal  ', 'ahmadrow@gmail.com ', '$2y$10$K9ZjQYpWpv25xtDVbsiSN.SDUcirs1KVuoHWaTY6d.G7gp1vuJsIK'),
(184, 1, '19131010', 'Renaya Sarasti ', 'meeth.nayalucu@gmail', '$2y$10$kX14GdthUNMcv7GZWVss7OOx9ITQ1e4xfDp/r3GiqYjK/.ixUp0Ai'),
(185, 1, '19131015', 'Lucky Wiratama Suganda ', 'luckywiratamas@gmail', '$2y$10$Qi8qmRFG5lir0fmTcZgzT.efJcOYHGEA6QRPfME90NDL6ls6qS6pi'),
(186, 1, '19131017', 'Gracia vini ', 'aquariusgracia31@gma', '$2y$10$1hbJVl9.uGUkvSdUGLqqWOv/G.lAkRJS90A6qKG3wSUzsk0cY/l7.'),
(187, 1, '19131031', 'Yolanda Novitri Setiawan ', 'yolandanovitri@gmail', '$2y$10$M48JYmUyNor8TSGW//uxE..qPqGmsGJZYK1bHIR2rKk32B98C5WwO'),
(188, 1, '19131045', 'Hazana Delfani ', 'hazandelfani@yahoo.c', '$2y$10$UvTiwxuYxLjLGU97Bth.IuHOVfzqF1EcrXnQxvvlCC2vtAHqWyfKS'),
(189, 1, '19131059', 'Aulia Rahmawaty ', 'auliarahmawaty14@gma', '$2y$10$VQB0ZTXnYiCkibgoaZBZHeIRRrtRj4.nbJ22LbUsdLjmyBhOlyl3K'),
(190, 1, '12131011', 'Rida Himyati Hasna ', 'ridahimyati@gmail.co', '$2y$10$kGEJ.CjiknIoHgbhC6i9FeYLUwx6TzgXPTaKR80JGFGxcXiW9TES6'),
(191, 1, '12131012', 'Denis Muhammad Irfan ', 'muhammadirfandenis@g', '$2y$10$di2NiSFW77Q.PRglTuXa2eClC0xdpRV4X/aZ/iXT9Spqt13xDcJm6'),
(192, 1, '12131013', 'sinta komara  ', 'sintakomara@gmail.co', '$2y$10$Msq.ONkPcH7I5pvZeGTdJeAnitH2igeFakaub5mNsjKQen.VlNpEC'),
(193, 1, '12131014', 'Putri Medina Agrezta ', 'Putrimedinaagrezta@g', '$2y$10$HZrteqzMqdUFPVZSEzseXONrGyJI46D3Kvxv0xN4GgfnYttxN.Axi'),
(194, 1, '19131032', 'Widi Dwi Adhawati ', 'wididwiadhawati16@gm', '$2y$10$58FAIy/wB1XxshQAdlwtVuasm4SfFlYZ6RzITZrP1ImQGy/qzdUIy'),
(195, 1, '19131033', 'PujiRidwansyah ', 'pujiridwansyah@gmail', '$2y$10$SBt3hwIq6STRL60f5lwhg.5VapY6WucDtjp8tpFFe9dPTQDCqvCV6'),
(196, 1, '19131034', 'Ichsan nurmansyah ', 'ichsannurmansyah1@gm', '$2y$10$CWnyUESYJv0BLLu6cIYmEODysVfHs5B.9IF8MtiHxscaR56JGQHo2'),
(197, 1, '19131035', 'Meisa damayanti ', 'meisadmay@gmail.com ', '$2y$10$SS.46UwPPS9tPkk/PLItOOB6hQd1aTHz94u4m1amwApqDGSe4HhN.'),
(198, 1, '19131036', 'Dita Julianti ', 'juliantidita8@gmail.', '$2y$10$Aa5HWv/YNZhNS0vu1kKDEui9aCC4rBzlCxevvq4Y/t6u3Mfi.6m56'),
(199, 1, '19131037', 'Rosyanda Sastie Jagattri ', 'rosyandaj@gmail.com ', '$2y$10$kFaPhYuyWXxhb.QoX1yQj.Jot3U45sPoaukTfwVSgN8eYiJbcc6wS'),
(200, 1, '19131038', 'muhammad yusuf ', 'muhammadyusufnasutio', '$2y$10$.HP28kvDfUe5uVSMWp35S.Ox00MggXs8N9M7v5IidXlqhccV5ESg.'),
(201, 1, '19131039', 'Rizky syaeful anwar ', 'rizkysyaeful@gmail.c', '$2y$10$1yGuB8aTNWqwqsahb1KsPebqlBSOoFMPNZRmFNYgKQBR5THYVycna'),
(202, 1, '19131040', 'ita juwita ', 'itajuwita10@gmail.co', '$2y$10$A.7AGGOZ0l90cgBX6K15RuUu.yp3DDH8/1ftB8dKefJuR.IM9LRVC'),
(203, 1, '19131041', 'Rendi Agus Tirtana ', 'rendyagustirtana@yah', '$2y$10$P8DfnmaJZrgtI/3U1HufHuqUuQpOCaLGliqY0JUAoy47l3NF6vQGy'),
(204, 1, '19131042', 'Annisa Maretiamy ', 'icamaretiamy@gmail.c', '$2y$10$rhNJwLqcj3.aHEd.i0yDO.C5TSht8OKFmcD.RhThJwLH3TDs/Jw4K'),
(205, 1, '19131043', 'ristami annisa ', 'ristami354@gmail.com', '$2y$10$yxP/jxydyf/RRYd1fg.nouauG/Xi1NM4FeAWNXxhcFpUyOwApf./K'),
(206, 1, '19131044', 'Khansa R ', 'khanskhen14@gmail.co', '$2y$10$PSLP/wGP/b5mlUJkDh8tH.zP6Iw8bRW0IZypTJqY5stZUPPs9bSEa'),
(270, 5, '21151003', 'muhammad ferdi ', 'muhammadfedi05@gmail.com ', '$2y$10$UHOtXgkxyUmU6evFFaBdFudmlRP4y.fvtFaiLkydH01RmVvwqkTIa'),
(271, 5, '21151004', 'Dhea Novia Parhana ', 'dheaparhana@gmail.com ', '$2y$10$mGFXLPjv2Yg.ZjIahltJwexJonj.MxDxlBaXyo5Wsc2i9ev5MrSOi'),
(272, 5, '21151005', 'Evi Hafizah Rahma ', 'evihafizah@gmail.com ', '$2y$10$R.QiK0c7ZCe3WklrzaTp6OavD.85hT.2hGjzegO1BRwcoYggaEPN6'),
(273, 5, '21151006', 'afgani maulana a.s. ', 'afgani997maulana@gmail.com ', '$2y$10$6JHl/.CvpcR6vSQiZws8feBAHS8Z9rfaUYyOCsu/oCJApra5GxewO'),
(274, 5, '21151007', 'moch adnand heriansyah ', 'mochadnand05@gmail.com ', '$2y$10$wZDNGG.LbRTZPXJxDAdBMel0vmb8uXJvY5QzAvHyEmMQZGthFmvPO'),
(275, 5, '21151008', 'Kirana Citra Destiyanti ', 'kiranaacitraa@gmail.com ', '$2y$10$8hnn5HbEFQSx8qc.9trrZe/zva9aT4KIz2WpJX0eJHO.iMOCAOfU2'),
(276, 5, '21151009', 'Lassandra Kattyana Santos ', 'kattyanasantos@gmail.com ', '$2y$10$QE5lR4Z/oAKoV9wx83LF/.2ye0zjwEvTKwZoDhp6cyZuz9Uf2MWli'),
(277, 5, '21151010', 'arif.santoso ', 'santosoarif8@gmail.com ', '$2y$10$cX01gURTJFJIdd4k9OmfEuWd.TE7vprgiBu8e8H7VdQBGR3NB5ja2'),
(278, 5, '21151011', 'Saepuloh ', 'saepuloh1296@gmail.com ', '$2y$10$BC2pPbILdyqkGKgpnM3O6e20Yl9UwlszQk7UfYOXcyaFd9TRtOyCW'),
(279, 5, '21151012', 'Rizal Ermanto ', 'rizalermanto@gmail.com ', '$2y$10$3txSD6D/KP8jDDyWkAcw3uZLVp81r/gZa97xkGCsp2mzbCqWClJrm'),
(280, 5, '21151014', 'Nur Devi Yusiawati Gumelar ', 'nurdevi53@gmail.com ', '$2y$10$jWwIS2l4qMuwOEg8t1wgb.qkTL0Yof4OtSCjEpb8mP9WaSTx7vazG'),
(281, 5, '21151015', 'Selisa Fatimah ', 'selisafatimahpastwo@gmail.com ', '$2y$10$V.cSkJhY9DrP3DyX/tTYtu7SL7eLlcPKQM0rObHyn1SLehPOiqeqG'),
(282, 5, '21151018', 'Muhammad Rizki Alhafizh ', 'rizkialhafizh28@gmail.com ', '$2y$10$pDAfq10kYcOnNzr3ZIsEiO1bsJSS3fbQyj8goVCk2MpQ8dJfA5K2i'),
(283, 5, '21151021', 'raka nurmawan  ', 'raka nurmawan@gmail.com', '$2y$10$qEElji67C12ez2EZKXdHEurDtJ7yyVudv76n.hWdaijWFWU5rWofq'),
(284, 5, '21151024', 'Selisa Fatimah ', 'selisafatimahpastwo@gmail.com ', '$2y$10$FhRdOYB5pZhmRxO4hixfROzsk49o0nrlYuzs41pAzIjycKkikpggu'),
(285, 5, '21151027', 'hanna tasya ', 'hannaatasya@gmail.com ', '$2y$10$HDhssqtK5xg6q4W.Vb.KQuBvcggIlvtjnTsZnuUQHlxzlmkHolIJG'),
(286, 5, '21151030', 'suci wulan sari ', 'suciwulans@gmail.com ', '$2y$10$5456HHkOc/wnwsAO4Yts7e7y6Cweo5m0NalgRy6A9dHctv41FQHzK'),
(287, 5, '21151033', 'Nurfa Resti Aulia ', 'nurfaresti@gmail.com ', '$2y$10$uhmRr5uN4AIPbmIy0Qto6.zRdcDrRWwKyJpJrR3yFVsp3i0x3c2uC'),
(288, 5, '21151036', 'Israqi Atsiruddin Sidqi Ramdhani ', 'israqiramdhani@gmail.com ', '$2y$10$LpNekUCQIHfJz.Pa3Jw98.cVhRl2VBfhDvjB1sUEPYVshykUDpD.2'),
(289, 5, '21151039', 'Israqi Atsiruddin Sidqi Ramdhani ', 'israqiramdhani@gmail.com ', '$2y$10$mDEg5URavY.NdSs7fN.QJeJEV5W/Mov6O7ukKSNmP6hJZQrhgWJ5e'),
(290, 5, '21151042', 'zella zakiyah ', 'zellazakiyah@gmail.com ', '$2y$10$Er5AkWTKw56ViWI6X7dL3uDaNNClAwnHtbuz2MmQyfq56dYIspibq'),
(291, 5, '21151019', 'Brama lessandro santos ', 'Anjosantos99@Gmail.com ', '$2y$10$oclLtiSshfDoCFU.0O/UGu0TwGkKDJj9OmV4obKZJ8Xh22ifn/pVu'),
(292, 5, '21151022', 'Dani Irawan ', 'daniirawan04@gmail.com ', '$2y$10$X7r6Z64FyZpYT45OeOn7ue8kLNAoM5PE35F8KsQI0SUqiFCbhV0yu'),
(293, 5, '21151025', 'Annisa Ayu Siwi ', 'annisaayusiwi@gmail.com ', '$2y$10$nflRMeRQ3WkEODd7p15OjukeWFgkrrcv..wW3kCHXgQUP3DgvC5gm'),
(294, 5, '21151028', 'Citra Pradita Effendi ', 'citrapradita12@gmail.com ', '$2y$10$fcwxKIzECXPav/7m7FgLg.zKUHuHH8NxG81YtyFOcYoiFkxYBW4US'),
(295, 5, '21151031', 'Bayu Nugraha Libriansyah ', 'bayunugraha321@gmail.com ', '$2y$10$bP8rcVguWTve5cg6yR4BJeF6P6WkcCP9BYLAfZsJmqGmvH/fWcjPW'),
(296, 5, '21151034', 'windi ayu ', 'windiayu65@gmail.com ', '$2y$10$quLVUdA2nkevZ8M3AmcRIO.2GoDO4NAJQDVb.USN/XBhCXtw5L8bG'),
(297, 5, '21151037', 'Citra Mega Lestari ', 'citramegal@gmail.com ', '$2y$10$V3Z7E9Fk.CtUGSH5n4EhHeaKbSGsui945EIRoKqYYOBbui1gk5pPe'),
(298, 5, '21151040', 'Dinda Sapta Carolina ', 'dindasaptacaroline@gmail.com ', '$2y$10$9SgYSvM8g5dnOq.YZ8eO6OqyPjTIvJK1SS4WXEWt9vAGiQtD1aubO'),
(299, 5, '21151043', 'Yulia Nur Safitri ', 'yulianursafitri@gmail.com ', '$2y$10$PdnfoH4px3/Zod0N55ME7OOYTfhLmfBmOMGl9AJnp2rh8.iGM0l1a'),
(300, 5, '21151046', 'Riska Gita Suhana ', 'riskagita07@gmail.com ', '$2y$10$n0AVEkKHj/myX7HzQD/vu.1FQ3VkQ3eiG1CcG7OV.uQoHB1eNAJlu'),
(301, 5, '21151049', 'muhammad aldi ramdhani ', 'muhaldi22@gmail.com ', '$2y$10$2H2D84K2NNWaBcWJPBpCGObpVlSpLFPIOWvyQBco4X5z6HUtz2cSC'),
(302, 4, '20141001', 'Mita Amelia ', 'mitaamelia36@gmail.com ', '$2y$10$yJv1j0NUjD6.kp7pMyi.AOsBDl.vt75Wns2GUpFVo.XWjRxgBPdGm'),
(303, 4, '20141002', 'Suci Ananda ', 'suciananda058@gmail.com ', '$2y$10$DF9luI4DlKgRVy5dTkqU7eyD8G6gj7l3V9q0xxAHi7At3oYhX/8XO'),
(304, 4, '20141003', 'Mariam Marianti ', 'mariammarianti@gmail.com ', '$2y$10$jGqnTiwOeCDfNTc3ToxhOuthoACJidsQHfLs/hNxJ1yCRsoabWiAy'),
(305, 4, '20141004', 'risma nopianti ', 'rismapratama9@gmail.com ', '$2y$10$Gc5a9wvCsSSKSKHgsplYxOUYHyUw97pdGiQIPFNDpMOeIQhC11l66'),
(306, 4, '20141005', 'Kurnia Imbar Sandi .S ', 'kurnia.imbar@gmail.com ', '$2y$10$YEJDcOf3woBS964VtxOs3uzDeuCmv//ilnq8c9t/wQ1uQhE5lxbmO'),
(307, 4, '20141006', 'Dwi Putri Januari ', 'dwiputrijanuari@gmail.com ', '$2y$10$DzbE.K7DnDQAIs.QJ8hTKu1xCi7boLFEz0sB0Vz0Sy8PnZWTnRFWi'),
(308, 4, '20141007', 'Diny Maryani Hermawan ', 'dinymaryani47@gmail.com ', '$2y$10$imxTF3ybeR7v2yAxHSHuBuRmnlI8DXq3XlxQsgl5FO1NEi5T/PvE6'),
(309, 4, '20141008', 'ayudhia chandra pusparini  ', 'ayudhiachandra@gmail.com ', '$2y$10$.qIw4ot.hwPTuYxj70ZeA.xX0lVLdsNdv5EOZtLai6yCfN6u7Hp8S'),
(310, 4, '20141009', 'Jayanti Widiastuti ', 'jayamtiwidiastuti@gmail.com ', '$2y$10$.Lhsz7hfwpC.UlkkZGX60.kwuQVAdP2zvF0.qz7XEdmJaSrqJZQZa'),
(311, 4, '20141015', 'Ferdinand Is Suhendra ', 'ferdinandsuhe@gmail.com ', '$2y$10$MJ25YjhfKP.FbqJ1UPIMderjKGEv9OBNdnratV9ZTfNk5Na3zSlxK'),
(312, 4, '20141021', 'agungsaputra ', 'agungsaputra228@gmail.com ', '$2y$10$tNTdy2qneXw.RWRcYDQv/epfO7ZCVrYdvaXZtyNnhCg3rRSZFGoKi'),
(313, 4, '20141027', 'Anjani Meilawati Dewi ', 'anjanimeydewi@gmail.com ', '$2y$10$oTMVZTGQS0ty.0L0N9pdkuow2fqzXBXM44BEAil6edHedcyisWixq'),
(314, 4, '20141033', 'Gina Sonia ', 'Ginasoniarudegirl69@yahoo.com ', '$2y$10$VtkZEE9M5o0ia/BKVY6PdegkujEzbsqwgmdY52MNoMsj7WYSIU.Xu'),
(315, 4, '20141039', 'ayudhia chandra pusparini ', 'ayudhiachandra@gmail.com ', '$2y$10$QhazPaolhU2ESvTrWxKf3u4t3mjGtr0eB2xmBHr1URZt6yaNh7LBS'),
(316, 4, '20141040', 'wendyna oktaviani ', 'wendyna24@gmail.com ', '$2y$10$zg55mCShDrWbOWza.qHzuuhZAfFm64mHyqTfn4EHK980/C2kYKPbO'),
(317, 4, '20141041', 'Wahyu Aji Komara ', 'wahyuajikomara.x5@gmail.com ', '$2y$10$IjJ6V.UJpwypC91q3pKo4ezdpKaFPtFQEYHhNQpZB4KzQVdv3qaDq'),
(318, 4, '20141042', 'Salma Nur Aisy ', 'salmanrisy@gmail.com ', '$2y$10$GCoEsKKf0WN94oySE6JEj.rpAFBHBxK5vxVUxmpjKQOEKfhnMkVTq'),
(319, 4, '20141043', 'indah nur maulida ', 'indahmaulida7@gmail.com ', '$2y$10$90x8k7EiNh5ex.dJ2XQjcuTsP9WTTIPdIbpLFfPPrjsrnb7sTVEKK'),
(320, 4, '20141044', 'Dicky Sudrajat ', 'kiwnugraha182@gmail.com ', '$2y$10$JvB9pywkWAoB0KuLzEgB5uIodcd/mPIt4yLeYZdHENgl3wz.BynO6'),
(321, 4, '20141045', 'Deri Likandra Triputra ', 'dericau76@gmail.com ', '$2y$10$vz88u5uBNCHpegh7Q/fukuwXwx8o/2CQPwVleFXd1ZLVKN2KdtG4G'),
(322, 4, '20141046', 'arief sudianto ', 'sudianto.arief19@gmail.com ', '$2y$10$wqL4h6yArCeerSgRtYfs4e2aRYSHeYBX4qFcTwNGnzsO994035E4u'),
(323, 4, '20141047', 'ari ramdani ', 'aribewe@gmail.com ', '$2y$10$WRa0QkPB5CSWN/lAG4Jr2uiuKEjx5k68Ahyps6KiTL9clnCsUViue'),
(324, 4, '20141048', 'Indri Zaqiah ', 'indrizaqiah@gmail.com ', '$2y$10$ba9650miScvU/PDJiO5AduplsOGwgk0ENI8rsC0Lck1d5ihCFszXm'),
(325, 4, '20141049', 'Muhammad Neval Maldini ', 'muhammadnevalmaldini@gmail.com ', '$2y$10$VRABt.4nbK2iDlvxQHpSvODmHmdrDKMy/VFOwX1XRKLLaumx58IzC'),
(326, 4, '20141050', 'dinda agung apriyana ', 'synagung6v1@yahoo.com ', '$2y$10$z82k9kgmIm5Z2g.l39Pd3uBcyJXAPDVk1DTaUreaY4ANNPuH6ZKCq'),
(327, 4, '20141051', 'Syahdan Dwi Cahyo ', 'syahdanpure.999@gmail.com ', '$2y$10$NIUfSqwjkx/Hp7bX2iO7ZOI2jPGJOA3Q4JVYisTjdHX9nzPtegXOq'),
(328, 4, '20141052', 'Ana Muslimah ', 'anaanamuslimah@gmail.com ', '$2y$10$K46VoDozpAd6aMjMKsRCye19GOSMXBdnS12PZkfZQTQiQcNM3TeAq'),
(329, 4, '20141053', 'Ghita Listyawati Piayu ', 'listyawatighita@gmail.com ', '$2y$10$MnGRlrXAgEDK6QU9/5sJRO0IabjmBxIEb4pp3Ocx.UMQXgT9gwI96');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemilihan`
--

CREATE TABLE `tb_pemilihan` (
  `id_pemilihan` int(11) NOT NULL,
  `mulai_pemilihan` int(11) NOT NULL,
  `akhir_pemilihan` int(11) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_calon`
--
ALTER TABLE `tb_calon`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `tb_hasil_suara`
--
ALTER TABLE `tb_hasil_suara`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  ADD PRIMARY KEY (`id_pemilih`);

--
-- Indexes for table `tb_pemilihan`
--
ALTER TABLE `tb_pemilihan`
  ADD PRIMARY KEY (`id_pemilihan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_calon`
--
ALTER TABLE `tb_calon`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_hasil_suara`
--
ALTER TABLE `tb_hasil_suara`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `tb_pemilihan`
--
ALTER TABLE `tb_pemilihan`
  MODIFY `id_pemilihan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
