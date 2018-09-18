-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2018 a las 03:35:13
-- Versión del servidor: 5.7.17
-- Versión de PHP: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cultivos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultivo`
--

CREATE TABLE `cultivo` (
  `ID` int(11) NOT NULL,
  `NOMBRE_PACIENTE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ID_ESTADO` int(11) NOT NULL,
  `ID_MUESTRA` int(11) NOT NULL,
  `GERMEN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SENSIBILIDAD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RESISTENCIA` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cultivo`
--

INSERT INTO `cultivo` (`ID`, `NOMBRE_PACIENTE`, `ID_ESTADO`, `ID_MUESTRA`, `GERMEN`, `SENSIBILIDAD`, `RESISTENCIA`) VALUES
(1, 'Patricio Fagalde', 1, 10, 'PEPITO', 'PENICILINA', 'FLUCONAZOLETO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID`, `NOMBRE`) VALUES
(1, 'Abierto'),
(2, 'Cerrado'),
(3, 'Archivado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muestra`
--

CREATE TABLE `muestra` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `muestra`
--

INSERT INTO `muestra` (`ID`, `NOMBRE`) VALUES
(1, 'Sangre'),
(2, 'Orina'),
(3, 'Piel y partes blandas'),
(4, 'Material quirurgico'),
(5, 'Liquido pleural'),
(6, 'Liquido ascitico'),
(7, 'Liquido cefalorraquideo'),
(8, 'Fauces'),
(9, 'Aspirado traqueal'),
(10, 'Lavado bronqueolo alveolar'),
(11, 'Mini lavado bronqueolo alveolar'),
(12, 'Esputo'),
(13, 'Hisopado de vigilancia'),
(14, 'Otro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `muestra`
--
ALTER TABLE `muestra`
  ADD UNIQUE KEY `ID_MUESTRA` (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `muestra`
--
ALTER TABLE `muestra`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
