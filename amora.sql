-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2021 a las 20:23:56
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `editado` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_cat`, `nombre`, `editado`) VALUES
(1, 'anillos', '2021-04-13 13:02:47'),
(2, 'Aretes', '2021-04-13 12:33:16'),
(3, 'Collares', '2021-04-13 12:33:34'),
(4, 'Pulseras', '2021-04-13 12:33:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_pro` int(11) NOT NULL,
  `nombre_precio` varchar(100) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `url_foto` varchar(50) NOT NULL,
  `nombre_cat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_pro`, `nombre_precio`, `id_cat`, `url_foto`, `nombre_cat`) VALUES
(5, 'Anillo 1, $150', 1, 'anillo1.png', 'anillos'),
(6, 'Anillo 2, $250', 1, 'anillo2.png', 'anillos'),
(7, 'Anillo 2, $350', 1, 'anillo3.png', 'anillos'),
(8, 'Aretes 1, $150', 2, 'aretes1.png', 'aretes'),
(9, 'Aretes 2, $350', 2, 'aretes2.png', 'aretes'),
(10, 'Aretes 3, $350', 2, 'aretes3.jpg', 'aretes'),
(11, 'Collar 1, $150', 3, 'collar1.jpg', 'collares'),
(12, 'Collar 2, $250', 3, 'collar2.png', 'collares'),
(13, 'Collar 2, $350', 3, 'collar3.png', 'collares'),
(14, 'Pulsera 1, $150', 4, 'pulseras1.png', 'collares'),
(15, 'Pulsera 2, $350', 4, 'pulseras2.png', 'pulseras'),
(16, 'Prueba, $122', 4, 'pulseras8.png', 'pulseras'),
(18, 'Pulsera 4, $450', 0, 'pulseras4.png', 'pulseras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usr` int(11) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `contrasena` varchar(60) NOT NULL,
  `editado` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usr`, `correo`, `nombre`, `contrasena`, `editado`) VALUES
(129, 'adminAW@gmail.com', 'Super Admin', '$2y$12$wp/mCUBgYti9RubVae3oCufr7bWSQks3gNYJ3AzAcM87eRjUa75je', '2021-04-12 17:11:20'),
(130, 'cacosta@awsoftware.mx', 'Christian Acosta ', '$2y$12$sk6B6k87JOFVVDuQ9vZWceV.sreEOhTDsNBN1F8X8z4M3XseX.Xo.', '2021-04-12 17:13:00'),
(131, 'admin@gmail.com', 'admin', '$2y$12$MALrMIhpvGsUZisSvy8FGu76WGGVSehrtM9NL24e3CxkUCl/W.JFy', '2021-04-13 13:09:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_pro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usr`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
