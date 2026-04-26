-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-04-2026 a las 06:06:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cibercafe_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `cedula`, `correo`, `telefono`, `fecha_registro`, `estado`) VALUES
(1, 'Carlos', 'Ramírez', '1001234567', 'carlos@email.com', '3001234567', '2026-03-28 19:09:40', NULL),
(2, 'Ana felicia', 'López', '1009876543', 'ana@email.com', '3109876543', '2026-03-28 19:09:40', NULL),
(3, 'Pedro', 'Martínez', '1005551234', 'pedro@email.com', '3205551234', '2026-03-28 19:09:40', NULL),
(5, 'jesus', 'morales', '1109876543', 'jesu@email.com', '3009876543', '2026-04-19 19:51:03', NULL),
(6, 'Prueba', 'Bot', '99999999', 'prueba@bot.com', '00000000', '2026-04-25 23:55:37', NULL),
(7, 'prueba web', '', '1234567891', 'prueba@gmail.com', '', '2026-04-26 00:07:53', 'moroso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `clave` varchar(255) NOT NULL,
  `valor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`clave`, `valor`) VALUES
('autoLogout', '30'),
('businessName', 'CyberManager'),
('costPerHour', '2000'),
('currencySymbol', '$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `numero_equipo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `precio_hora` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `numero_equipo`, `descripcion`, `estado`, `precio_hora`) VALUES
(6, 'PC-GAMER-01', 'Gamer - Ryzen 7, RTX 3060, 32GB RAM', 'DISPONIBLE', 5000),
(7, 'PC-GAMER-02', 'Gamer - Ryzen 7, RTX 3060, 32GB RAM', 'DISPONIBLE', 5000),
(8, 'PC-GAMER-03', 'Gamer - Ryzen 7, RTX 3060, 32GB RAM', 'DISPONIBLE', 5000),
(9, 'PC-GAMER-04', 'Gamer - Ryzen 7, RTX 3060, 32GB RAM', 'DISPONIBLE', 5000),
(10, 'PC-GAMER-05', 'Gamer - Ryzen 7, RTX 3060, 32GB RAM', 'DISPONIBLE', 5000),
(11, 'PC-OFFICE-06', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(12, 'PC-OFFICE-07', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(13, 'PC-OFFICE-08', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(14, 'PC-OFFICE-09', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(15, 'PC-OFFICE-10', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(16, 'PC-OFFICE-11', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(17, 'PC-OFFICE-12', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(18, 'PC-OFFICE-13', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(19, 'PC-OFFICE-14', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(20, 'PC-OFFICE-15', 'Internet y Office - Core i5, 16GB RAM, SSD', 'DISPONIBLE', 3000),
(21, 'PC-BASICO-16', 'Internet Básico - Core i3, 8GB RAM', 'DISPONIBLE', 2000),
(22, 'PC-BASICO-17', 'Internet Básico - Core i3, 8GB RAM', 'DISPONIBLE', 2000),
(23, 'PC-BASICO-18', 'Internet Básico - Core i3, 8GB RAM', 'DISPONIBLE', 2000),
(24, 'PC-BASICO-19', 'Internet Básico - Core i3, 8GB RAM', 'DISPONIBLE', 2000),
(25, 'PC-BASICO-20', 'Internet Básico - Core i3, 8GB RAM', 'DISPONIBLE', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria`, `icono`, `nombre`, `precio`, `stock`) VALUES
(1, 'bebidas', 'fa-wine-bottle', 'Coca Cola 600ml', 18, 44),
(2, 'snacks', 'fa-cookie', 'Papas Originales', 15, 10),
(3, 'bebidas', 'fa-tint', 'Agua Natural', 12, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_sesiones`
--

CREATE TABLE `registro_sesiones` (
  `id_sesion` bigint(20) NOT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `equipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_sesiones`
--

INSERT INTO `registro_sesiones` (`id_sesion`, `cliente`, `equipo`, `estado`, `fecha_fin`, `fecha_inicio`, `total`) VALUES
(1, 'Carlos Ramírez', 'PC-GAMER-01', 'finalizada', '2026-04-26 02:19:43.000000', '2026-04-26 02:19:25.000000', 23.661111111111108),
(2, 'Cliente General', 'PC-GAMER-02', 'finalizada', '2026-04-26 02:19:44.000000', '2026-04-26 02:19:36.000000', 11.075),
(3, 'Cliente General', 'PC-GAMER-01', 'finalizada', '2026-04-26 03:25:00.000000', '2026-04-26 03:04:04.000000', 1743.8541666666665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `precio_hora` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre`, `descripcion`, `precio_hora`) VALUES
(1, 'Internet Básico', 'Navegación web y correo', 2500.00),
(2, 'Internet + Office', 'Internet con suite Office', 3500.00),
(3, 'Gaming', 'Internet con juegos instalados', 5000.00),
(4, 'Impresión', 'Servicio de impresión por hoja', 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id_sesion` bigint(20) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `hora_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `hora_fin` datetime DEFAULT NULL,
  `total_pagar` decimal(10,2) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `equipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) NOT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`),
  ADD UNIQUE KEY `numero_equipo` (`numero_equipo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro_sesiones`
--
ALTER TABLE `registro_sesiones`
  ADD PRIMARY KEY (`id_sesion`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id_sesion`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_equipo` (`id_equipo`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registro_sesiones`
--
ALTER TABLE `registro_sesiones`
  MODIFY `id_sesion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id_sesion` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD CONSTRAINT `sesiones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `sesiones_ibfk_2` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`),
  ADD CONSTRAINT `sesiones_ibfk_3` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
