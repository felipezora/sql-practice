-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 12:34 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `felipezora`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartelera`
--

CREATE TABLE `cartelera` (
  `id_pelicula` int(11) NOT NULL,
  `sala` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `genero` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `horario` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `cartelera`
--

INSERT INTO `cartelera` (`id_pelicula`, `sala`, `nombre`, `genero`, `horario`) VALUES
(17, '2', 'asaasas', 'asaaa', '4'),
(18, '5', 'asasasas', 'dasass', '21'),
(19, '1', 'juegos maliciosos', 'nopor', '23'),
(20, '3', 'confirmando', 'romantico', '15');

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(10) NOT NULL,
  `id_pelicula` int(10) NOT NULL,
  `encargado` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `silla` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_pelicula`, `encargado`, `silla`) VALUES
(1, 17, 'brandon', '2A'),
(2, 11, 'fasaass', '3b'),
(3, 17, 'Diana', '2B');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `pass`) VALUES
(35, 'dff', 'ffff', 'fff', 'fff'),
(37, 'asaahjjjj', 'asa', 'aaaaa', 'aaa'),
(39, 'Urrego', 'Urrego', 'borreguito123', '123'),
(40, 'confirmando', 'confirmando', 'confirmando', '123'),
(41, 'sasaa', 'asasasas', 'asasasas', '123'),
(47, 'plis', 'funciona', 'ayyyy', '123'),
(48, 'Diana', 'Ramirez Ochoa', 'dianita123', 'dianita123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartelera`
--
ALTER TABLE `cartelera`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartelera`
--
ALTER TABLE `cartelera`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
