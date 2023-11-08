-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2023 a las 20:58:47
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
  `Fecha y hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consignaciones`
--

INSERT INTO `consignaciones` (`Valor`, `codigo_cliente`, `Fecha y hora`) VALUES
(3000000, 1, '2023-10-30 13:00:00'),
(1160000, 2, '2023-10-13 14:00:00'),
(2550000, 3, '2023-08-30 05:00:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `identidad` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Apellido`, `Correo`, `Telefono`, `identidad`) VALUES
('Angel David', 'Martinez Chaparro', 'angelisho@gmail.com', '3124285963', 1),
('Maria Alejandra', 'Rodriguez Rodriguez', 'mrodriguez@gmail.com', '3124589135', 2),
('Pablo Emilio', 'Escobar Gaviria', 'elpatrondelmal@gmail.com', '3204521987', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consignaciones`
--
ALTER TABLE `consignaciones`
  ADD UNIQUE KEY `Codigo de cliente` (`codigo_cliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`identidad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consignaciones`
--
ALTER TABLE `consignaciones`
  ADD CONSTRAINT `consignaciones_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `usuarios` (`identidad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
