-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2023 a las 18:59:56
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consignacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignaciones`
--

CREATE TABLE `consignaciones` (
  `Valor` float NOT NULL,
  `codigo_cliente` int(50) NOT NULL,
  `Fecha_hora` datetime NOT NULL,
  `consignacion_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consignaciones`
--

INSERT INTO `consignaciones` (`Valor`, `codigo_cliente`, `Fecha_hora`, `consignacion_id`) VALUES
(3000000, 1, '2023-10-30 13:00:00', 14),
(1160000, 2, '2023-10-13 14:00:00', 2),
(2550000, 3, '2023-08-30 05:00:29', 3),
(4500000, 4, '2023-08-15 11:00:00', 4),
(1000000, 5, '2022-12-16 20:30:00', 12),
(9000000, 6, '2022-10-15 10:30:00', 0),
(10000000, 7, '2022-09-15 17:30:00', 7),
(12000000, 8, '2023-05-15 12:20:00', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
