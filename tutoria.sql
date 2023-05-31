-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2023 a las 10:05:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tutoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `cubiculo` varchar(30) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `cubiculo`, `correo`) VALUES
(1, 'Aguilar Rico Adolfo', 'CCO2-301', '	adolfo.aguilarr@correo.buap.mx'),
(2, 'Aguilar Rodríguez Manuel', 'CCO3-001', 'manuel.aguilarrod@correo.buap.mx'),
(3, 'Altamirano Robles Luis Carlos', 'CCO4-302', 'luis.altamirano@correo.buap.mx'),
(4, 'Ambrosio Vázquez Alma Delia', 'CCO1-122', 'almadelia.ambrosio@correo.buap.mx'),
(5, 'Anzures García Mario', 'CCO1-104', 'mario.anzures@correo.buap.mx'),
(6, 'Archundia Sierra Etelvina', 'CCO1-122', 'etelvina.archundia@correo.buap.mx'),
(7, 'Ariza Velázquez Eduardo', 'CCO1-119', 'eduardo.ariza@correo.buap.mx'),
(8, 'Ayaquica Martínez Irene Olaya', 'CCO3-305', 'irene.ayaquica@correo.buap.mx'),
(9, 'Bautista López Verónica Edith', 'CCO3-107', 'veronica.bautistalo@correo.buap.mx');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
