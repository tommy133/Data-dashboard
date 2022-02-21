-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-01-2022 a las 18:55:02
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trade_data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forex_pairs`
--

CREATE TABLE `forex_pairs` (
  `id_pair` int(11) NOT NULL,
  `pair` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `forex_pairs`
--

INSERT INTO `forex_pairs` (`id_pair`, `pair`) VALUES
(1, 'EURUSD'),
(2, 'USDJPY'),
(3, 'EURAUD'),
(4, 'AUDUSD'),
(5, 'NZDCAD'),
(6, 'XAUUSD'),
(7, 'AUDJPY'),
(8, 'USDCAD'),
(9, 'GBPUSD'),
(10, 'AUDCAD'),
(11, 'BTCUSD'),
(12, 'NZDJPY'),
(13, 'AUDCHF'),
(14, 'NZDCHF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `summer2019jordan`
--

CREATE TABLE `summer2019jordan` (
  `ID` int(11) NOT NULL,
  `CloseTime` date NOT NULL,
  `Profit` double NOT NULL,
  `id_pair` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `summer2019jordan`
--

INSERT INTO `summer2019jordan` (`ID`, `CloseTime`, `Profit`, `id_pair`) VALUES
(1, '2019-06-17', -4, 1),
(2, '2019-06-17', -6, 9),
(3, '2019-06-18', -9, 4),
(4, '2019-06-18', -3, 12),
(5, '2019-06-20', -7, 3),
(6, '2019-06-21', 0, 11),
(7, '2019-06-21', -2, 3),
(8, '2019-06-21', -1, 12),
(9, '2019-06-24', -5, 1),
(10, '2019-06-24', 3, 1),
(11, '2019-06-25', -6, 1),
(12, '2019-06-25', 0, 9),
(13, '2019-06-28', -1, 8),
(14, '2019-06-28', 5, 2),
(15, '2019-07-01', -6, 6),
(16, '2019-07-03', -9, 10),
(17, '2019-07-08', 0, 11),
(18, '2019-07-09', 4, 9),
(19, '2019-07-09', -1, 2),
(20, '2019-07-11', -7, 14),
(21, '2019-07-15', -6, 1),
(22, '2019-07-16', 1, 4),
(23, '2019-07-16', 1, 3),
(24, '2019-07-17', -5, 2),
(25, '2019-07-18', -2, 2),
(26, '2019-07-19', -1, 6),
(27, '2019-07-22', -4, 2),
(28, '2019-07-23', -9, 9),
(29, '2019-07-23', -6, 4),
(30, '2019-07-25', 4, 12),
(31, '2019-07-29', 3, 1),
(32, '2019-07-30', -3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `summer2019tom`
--

CREATE TABLE `summer2019tom` (
  `ID` int(11) NOT NULL,
  `CloseTime` date NOT NULL,
  `Profit` double NOT NULL,
  `id_pair` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `summer2019tom`
--

INSERT INTO `summer2019tom` (`ID`, `CloseTime`, `Profit`, `id_pair`) VALUES
(1, '2019-06-17', 8.5, 1),
(2, '2019-06-17', 8, 9),
(3, '2019-06-18', 24, 4),
(4, '2019-06-18', 12, 12),
(5, '2019-06-20', 15, 3),
(6, '2019-06-21', -6.5, 11),
(7, '2019-06-21', -6.5, 3),
(8, '2019-06-21', -2, 12),
(9, '2019-06-24', 11, 1),
(10, '2019-06-24', 34, 1),
(11, '2019-06-25', -7, 1),
(12, '2019-06-25', -16.5, 9),
(13, '2019-06-28', -14, 8),
(14, '2019-06-28', 8, 2),
(15, '2019-07-01', 7, 6),
(16, '2019-07-03', 14, 10),
(17, '2019-07-08', 11, 11),
(18, '2019-07-09', -15, 9),
(19, '2019-07-09', 11, 2),
(20, '2019-07-11', -15, 14),
(21, '2019-07-15', -15, 1),
(22, '2019-07-16', -15, 4),
(23, '2019-07-16', 17, 3),
(24, '2019-07-17', 5, 2),
(25, '2019-07-18', -14, 2),
(26, '2019-07-19', 15, 6),
(27, '2019-07-22', 11, 2),
(28, '2019-07-23', -3, 9),
(29, '2019-07-23', 11, 4),
(30, '2019-07-25', -6, 12),
(31, '2019-07-29', 4, 1),
(32, '2019-07-30', 6, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `forex_pairs`
--
ALTER TABLE `forex_pairs`
  ADD PRIMARY KEY (`id_pair`);

--
-- Indices de la tabla `summer2019jordan`
--
ALTER TABLE `summer2019jordan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pair` (`id_pair`);

--
-- Indices de la tabla `summer2019tom`
--
ALTER TABLE `summer2019tom`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pair` (`id_pair`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `forex_pairs`
--
ALTER TABLE `forex_pairs`
  MODIFY `id_pair` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `summer2019jordan`
--
ALTER TABLE `summer2019jordan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `summer2019tom`
--
ALTER TABLE `summer2019tom`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `summer2019jordan`
--
ALTER TABLE `summer2019jordan`
  ADD CONSTRAINT `fk_pair2` FOREIGN KEY (`id_pair`) REFERENCES `forex_pairs` (`id_pair`);

--
-- Filtros para la tabla `summer2019tom`
--
ALTER TABLE `summer2019tom`
  ADD CONSTRAINT `fk_pair` FOREIGN KEY (`id_pair`) REFERENCES `forex_pairs` (`id_pair`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
