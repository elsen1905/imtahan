-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Eki 2016, 12:06:29
-- Sunucu sürümü: 10.1.13-MariaDB
-- PHP Sürümü: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `imtahan`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `form`
--

CREATE TABLE `form` (
  `ad` varchar(200) NOT NULL,
  `soyad` varchar(200) NOT NULL,
  `education` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `form`
--

INSERT INTO `form` (`ad`, `soyad`, `education`) VALUES
('elsen', 'zairovv', 'suall'),
('elsen', 'zairoovov', 'aztuuuuu, yerazzzzz');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
