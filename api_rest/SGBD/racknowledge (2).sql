-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2023 a las 17:42:16
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `racknowledge`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `temas` varchar(20) NOT NULL,
  `foto` blob NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `metodo_pago` varchar(25) NOT NULL,
  `id_configuracion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `nombre` varchar(30) NOT NULL,
  `nota` decimal(5,0) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `id_evaluacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minijuegos`
--

CREATE TABLE `minijuegos` (
  `nombre` varchar(30) NOT NULL,
  `puntaje` decimal(5,0) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_minijuego` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `servicio` varchar(20) NOT NULL,
  `id_servicio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte_tecnico`
--

CREATE TABLE `soporte_tecnico` (
  `solicitud` varchar(50) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_soporte` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `favoritos` varchar(20) NOT NULL,
  `id_temas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `tipo_documento` varchar(10) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol` varchar(20) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `tipo_documento`, `numero_documento`, `correo`, `telefono`, `fecha_nacimiento`, `rol`, `contrasena`) VALUES
(1, 'Juan Pablo', 'Perez Perdomo', 'CC', '10256978', 'juanpa15@gmail.com', '3102278578', '2000-11-30', 'Estudiante', 'juanpablo1234'),
(2, 'Angel David', 'Contreras Martinez', 'TI', '10256459', 'angelcontreras@gmail.com', '310227426', '2006-03-14', 'Estudiante', 'angelishooo'),
(3, 'Karen Valentina', 'Correa Perez', 'CC', '10125468', 'kaperez@gmail.com', '32245789', '2004-04-21', 'Administrador', 'karen123456'),
(4, 'Juan David', 'Miranda Moreno', 'TI', '103364979', 'juandavid25@gmail.com', '321565465', '2006-04-25', 'Estudiante', 'juanda12345'),
(5, 'Mario Alberto', 'Yepes Mendoza', 'CC', '5264894', 'eragoldeyepes@gmail.com', '31457824', '1984-11-01', 'Profesor', 'yepesgol');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
