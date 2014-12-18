-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2014 at 04:44 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `sinopsis` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_film`),
  UNIQUE KEY `judul` (`judul`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `judul`, `sinopsis`, `status`) VALUES
(1, 'interstelar', 'Aliquam erat volutpat. Nunc et nunc vel quam tincidunt mollis. Integer dignissim ullamcorper nunc, a fermentum ligula egestas a. Integer congue tellus sed nisi tincidunt cursus. Etiam adipiscing consequat nisi. Vestibulum sed neque ipsum, a consequat nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros odio, rutrum quis volutpat nec, venenatis congue nulla. Praesent quis mauris purus, at pellentesque ante. Donec convallis tortor eu nunc viverra nec euismod nunc consequat. Nunc in faucibus nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dignissim turpis nec diam varius ac aliquet justo ultrices. Praesent eros arcu, molestie at dignissim.', 1),
(2, 'The Hunger Game : Mocking Jay', 'Aliquam erat volutpat. Nunc et nunc vel quam tincidunt mollis. Integer dignissim ullamcorper nunc, a fermentum ligula egestas a. Integer congue tellus sed nisi tincidunt cursus. Etiam adipiscing consequat nisi. Vestibulum sed neque ipsum, a consequat nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros odio, rutrum quis volutpat nec, venenatis congue nulla. Praesent quis mauris purus, at pellentesque ante. Donec convallis tortor eu nunc viverra nec euismod nunc consequat. Nunc in faucibus nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dignissim turpis nec diam varius ac aliquet justo ultrices. Praesent eros arcu, molestie at dignissim.', 1),
(3, 'Penguin of Madagascar', 'Aliquam erat volutpat. Nunc et nunc vel quam tincidunt mollis. Integer dignissim ullamcorper nunc, a fermentum ligula egestas a. Integer congue tellus sed nisi tincidunt cursus. Etiam adipiscing consequat nisi. Vestibulum sed neque ipsum, a consequat nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros odio, rutrum quis volutpat nec, venenatis congue nulla. Praesent quis mauris purus, at pellentesque ante. Donec convallis tortor eu nunc viverra nec euismod nunc consequat. Nunc in faucibus nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dignissim turpis nec diam varius ac aliquet justo ultrices. Praesent eros arcu, molestie at dignissim.', 0),
(4, 'The Last Naruto the Movie', 'Aliquam erat volutpat. Nunc et nunc vel quam tincidunt mollis. Integer dignissim ullamcorper nunc, a fermentum ligula egestas a. Integer congue tellus sed nisi tincidunt cursus. Etiam adipiscing consequat nisi. Vestibulum sed neque ipsum, a consequat nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros odio, rutrum quis volutpat nec, venenatis congue nulla. Praesent quis mauris purus, at pellentesque ante. Donec convallis tortor eu nunc viverra nec euismod nunc consequat. Nunc in faucibus nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dignissim turpis nec diam varius ac aliquet justo ultrices. Praesent eros arcu, molestie at dignissim.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE IF NOT EXISTS `kursi` (
  `no_kursi` varchar(10) NOT NULL,
  `nama_studio` varchar(200) NOT NULL,
  PRIMARY KEY (`no_kursi`,`nama_studio`),
  KEY `nama_studio` (`nama_studio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`no_kursi`, `nama_studio`) VALUES
('a1', 'studio 1'),
('a10', 'studio 1'),
('a2', 'studio 1'),
('a3', 'studio 1'),
('a4', 'studio 1'),
('a5', 'studio 1'),
('a6', 'studio 1'),
('a7', 'studio 1'),
('a8', 'studio 1'),
('a9', 'studio 1'),
('a1', 'studio 2'),
('a2', 'studio 2'),
('a3', 'studio 2'),
('a4', 'studio 2'),
('a5', 'studio 2'),
('a6', 'studio 2');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_tayang` int(11) NOT NULL,
  `no_kursi` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pemesanan`),
  KEY `fk_id_tayang` (`id_tayang`),
  KEY `fk_no_kursi` (`no_kursi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_tayang`, `no_kursi`, `status`) VALUES
(1, 1, 'a1', 1),
(2, 1, 'a2', 1),
(3, 1, 'a3', 1),
(4, 1, 'a4', 1),
(5, 1, 'a5', 0),
(6, 1, 'a6', 0),
(7, 1, 'a7', 0),
(8, 1, 'a8', 0),
(9, 1, 'a9', 1),
(10, 1, 'a10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE IF NOT EXISTS `studio` (
  `nama_studio` varchar(200) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL,
  PRIMARY KEY (`nama_studio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`nama_studio`, `jenis`, `deskripsi`) VALUES
('studio 1', '3d', 'Aliquam erat volutpat. Nunc et nunc vel quam tincidunt mollis. Integer dignissim ullamcorper nunc, a fermentum ligula egestas a. Integer congue tellus sed nisi tincidunt cursus. Etiam adipiscing consequat nisi. Vestibulum sed neque ipsum, a consequat nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros odio, rutrum quis volutpat nec, venenatis congue nulla. Praesent quis mauris purus, at pellentesque ante. Donec convallis tortor eu nunc viverra nec euismod nunc consequat. Nunc in faucibus nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dignissim turpis nec diam varius ac aliquet justo ultrices. Praesent eros arcu, molestie at dignissim.'),
('studio 2', '2d', 'Aliquam erat volutpat. Nunc et nunc vel quam tincidunt mollis. Integer dignissim ullamcorper nunc, a fermentum ligula egestas a. Integer congue tellus sed nisi tincidunt cursus. Etiam adipiscing consequat nisi. Vestibulum sed neque ipsum, a consequat nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros odio, rutrum quis volutpat nec, venenatis congue nulla. Praesent quis mauris purus, at pellentesque ante. Donec convallis tortor eu nunc viverra nec euismod nunc consequat. Nunc in faucibus nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin dignissim turpis nec diam varius ac aliquet justo ultrices. Praesent eros arcu, molestie at dignissim.');

-- --------------------------------------------------------

--
-- Table structure for table `tayang`
--

CREATE TABLE IF NOT EXISTS `tayang` (
  `id_tayang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_studio` varchar(200) NOT NULL,
  `id_film` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  PRIMARY KEY (`id_tayang`),
  KEY `fk_nama_studio` (`nama_studio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tayang`
--

INSERT INTO `tayang` (`id_tayang`, `nama_studio`, `id_film`, `waktu`) VALUES
(1, 'studio 1', 1, '2014-12-18 12:00:00'),
(2, 'studio 1', 2, '2014-12-18 15:00:00'),
(3, 'studio 2', 2, '2014-12-18 12:00:00'),
(4, 'studio 2', 1, '2014-12-18 15:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kursi`
--
ALTER TABLE `kursi`
  ADD CONSTRAINT `kursi_ibfk_1` FOREIGN KEY (`nama_studio`) REFERENCES `studio` (`nama_studio`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fk_id_tayang` FOREIGN KEY (`id_tayang`) REFERENCES `tayang` (`id_tayang`),
  ADD CONSTRAINT `fk_no_kursi` FOREIGN KEY (`no_kursi`) REFERENCES `kursi` (`no_kursi`);

--
-- Constraints for table `tayang`
--
ALTER TABLE `tayang`
  ADD CONSTRAINT `tayang_ibfk_1` FOREIGN KEY (`nama_studio`) REFERENCES `studio` (`nama_studio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
