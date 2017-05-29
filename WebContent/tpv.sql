-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2017 a las 13:37:20
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `imagen` varchar(50) DEFAULT './img/categorias/predeterminado.png',
  `color` varchar(6) DEFAULT 'FF6347'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `imagen`, `color`) VALUES
(1, 'Desayuno', './img/categorias/desayuno.png', 'FF8C00'),
(3, 'Pinchos', './img/categorias/pinchos.png', '57A639'),
(4, 'Bebidas', './img/categorias/bebidas.png', 'FF6347'),
(5, 'Menu', './img/categorias/menu.png', 'FF6347'),
(6, 'NUEVA CAT PRUEBA', './img/categorias/predeterminado.png', 'FF6347');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE `iva` (
  `id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `cantidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `iva`
--

INSERT INTO `iva` (`id`, `nombre`, `cantidad`) VALUES
(1, '10 %', 10),
(2, '21 %', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `categoria` int(3) NOT NULL,
  `proveedor` int(3) NOT NULL DEFAULT '1',
  `precio_compra` double NOT NULL,
  `precio_venta` double NOT NULL,
  `iva` int(3) NOT NULL,
  `imagen` varchar(50) DEFAULT './img/productos/predeterminado.png',
  `color` varchar(6) DEFAULT 'FFA500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `categoria`, `proveedor`, `precio_compra`, `precio_venta`, `iva`, `imagen`, `color`) VALUES
(7, 'BURGER', 5, 1, 1.1, 3, 1, './img/productos/hamburguesa.png', 'FFA500'),
(8, 'Cafe Leche', 1, 1, 0.7, 1.4, 1, './img/productos/cafeleche.png', 'FFA500'),
(9, 'Kalimotxo', 4, 2, 1.3, 2.5, 2, './img/productos/calimocho.png', 'FFA500'),
(11, 'Bocata Jamon Serrano', 5, 1, 2, 3.75, 1, './img/productos/bocatajamon.jpg', 'FFA500'),
(12, 'De tortilla', 3, 1, 0.8, 1.3, 1, './img/productos/pinchotortilla.jpg', 'FFA500'),
(13, 'Cafe solo', 1, 1, 0.7, 1.3, 1, './img/productos/cafesolo.png', 'FFA500'),
(14, 'Bollo mantequilla', 1, 1, 0.72, 1, 1, './img/productos/bollo.png', 'FFA500'),
(19, 'Vino Crianza', 4, 2, 0.8, 1.5, 2, './img/productos/predeterminado.png', 'FFA500'),
(20, 'Vino Cosechero', 4, 2, 0.4, 0.7, 2, './img/productos/predeterminado.png', 'FFA500'),
(24, 'Croissant', 1, 1, 0.9, 1, 1, './img/productos/predeterminado.png', 'FFA500'),
(30, 'Madlena', 1, 1, 0.78, 1, 1, './img/productos/predeterminado.png', 'FFA500'),
(33, 'Te rijo', 1, 2, 0.5, 1.3, 1, './img/productos/predeterminado.png', 'FFA500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `otros_datos` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `direccion`, `otros_datos`) VALUES
(1, 'No Asignado', NULL, NULL),
(2, 'Beer & Edariak', 'Pol. Ind. Mendieta, S/N. 48330. Lemoa, BIZKAIA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(3) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_venta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `id_producto`, `fecha_venta`) VALUES
(1, 8, '2017-05-29 10:42:28'),
(1, 9, '2017-05-29 10:42:28'),
(2, 8, '2017-05-29 12:30:19'),
(2, 9, '2017-05-29 12:30:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(3) NOT NULL,
  `contrasenia` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `administrador` tinyint(1) NOT NULL DEFAULT '0',
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `contrasenia`, `nombre`, `apellidos`, `administrador`, `ruta_imagen`) VALUES
(2, '1234', 'Valeriu Andrei', 'Sanautanu', 1, 'img/profile-pics/ander.jpg'),
(3, '1212', 'Maria', 'Angel', 0, 'img/profile-pics/maria.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor` (`proveedor`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `iva` (`iva`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`,`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`iva`) REFERENCES `iva` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
