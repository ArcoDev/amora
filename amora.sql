-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2021 a las 23:53:19
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
  `nombre` varchar(100) NOT NULL,
  `precio` varchar(60) NOT NULL,
  `url_foto` varchar(50) NOT NULL,
  `nombre_cat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_pro`, `nombre`, `precio`, `url_foto`, `nombre_cat`) VALUES
(1, 'Juego de collar de plata y dijes', '$260', 'FOTO2.jpg', 'collares'),
(2, 'Juego de collar de plata', '$740', 'juego8.png', 'collares'),
(3, 'Collar de plata floreal', '$690', 'juego7.png', 'collares'),
(4, 'Collar de plata', '$690', 'juego18.png', 'collares'),
(5, 'Juego collar de plata', '$1200', 'juego10.png', 'collares'),
(6, 'Collar de plata', '$870', 'juego1.png', 'collares'),
(7, 'Aretes de plata', '$300', 'aretes1.png', 'aretes'),
(8, 'Collar de plata', '$500', 'FOTO2.png', 'collares'),
(9, 'Collar corazÃ³n de plata', '$300', 'FOTO16_1.png', 'collares'),
(10, 'Collar corazÃ³n de plata', '$300', 'FOTO6_3.png', 'collares'),
(11, 'Collar de plata', '$280', 'FOTO9.png', 'collares'),
(12, 'Collar de plata', '$270', 'FOTO2S.png', 'collares'),
(13, 'Collar de plata', '$500', 'FOTO20.png', 'collares'),
(14, 'Collar de plata', '$500', 'collar24.png', 'collares'),
(15, 'Collar de plata', '$280', 'FOTO5_2.png', 'collares'),
(16, 'Collar de plata', '$300', 'collar17.png', 'collares'),
(17, 'Pulsera de plata', '$320', 'FOTO14.png', 'pulseras'),
(18, 'Pulsera de plata', '$340', 'FOTO34.png', 'pulseras'),
(19, 'Pulsera de plata', '$380', 'pulseras3.png', 'pulseras'),
(20, 'Pulsera de plata', '$850', 'FOTO37.png', 'pulseras'),
(21, 'Pulsera de plata', '$260', 'juego4.png', 'pulseras'),
(22, 'Pulsera de plata', '$300', 'FOTO12.png', 'pulseras'),
(23, 'Anillo de plata', '$220', 'FOTO3_1.png', 'anillos'),
(24, 'Anillo de plata', '$220', 'FOTO2_4.png', 'anillos'),
(25, 'Anillo de plata triple', '$450', 'juego3.png', 'anillos'),
(26, 'Anillo de plata, baÃ±o de oro', '$540', 'FOTO19..png', 'anillos'),
(27, 'Anillo de plata', '$480', 'FOTO3_5.png', 'anillos'),
(28, 'Anillo de plata', '$450', 'FOTO7_1.png', 'anillos'),
(29, 'Anillo de plata', '$295', 'anillo9.png', 'anillos'),
(30, 'Anillo de plata triple, baÃ±o de oro', '$450', 'FOTO32.png', 'anillos'),
(31, 'Anillo de plata', '$340', 'FOTO40.png', 'anillos'),
(32, 'Aretes de plata', '$295', 'aretes8.png', 'aretes'),
(33, 'Aretes de plata', '$270', 'FOTO12_2.png', 'aretes'),
(34, 'Aretes de plata', '$295', 'FOTO4_4.png', 'aretes'),
(35, 'Aretes de plata', '$135', 'FOTO15_2.png', 'aretes'),
(36, 'Aretes de plata', '$390', 'aretes12.png', 'aretes'),
(37, 'Aretes de plata', '$290', 'aretes13.png', 'aretes'),
(38, 'Aretes de plata', '$295', 'aretes9.png', 'aretes'),
(39, 'Aretes de plata', '$320', 'arete-1.png', 'aretes'),
(40, 'Aretes de plata', '$200', 'juego13.png', 'aretes'),
(41, 'Aretes de plata', '$140', 'juego14.png', 'aretes'),
(42, 'Aretes de plata', '$265', 'juego12.png', 'aretes'),
(43, 'Pulsera de plata', '$240', 'FOTO6_1.png', 'pulseras'),
(44, 'Pulsera de plata', '$240', 'FOTO3_3.png', 'pulseras'),
(45, 'Pulsera de plata', '$240', 'FOTO4_2.png', 'pulseras'),
(46, 'Pulsera de plata', '$240', 'FOTO1_4.png', 'pulseras'),
(47, 'Pulsera de plata', '$280', 'FOTO5.png', 'pulseras'),
(48, 'Pulsera de plata', '$220', 'FOTO3_4.png', 'pulseras'),
(49, 'Pulsera de plata', '$160', 'pulseras7.png', 'pulseras'),
(50, 'Pulsera de plata', '$290', 'FOTO18.png', 'pulseras'),
(51, 'Pulsera de plata', '$300', 'FOTO27.png', 'pulseras'),
(52, 'Anillo pico, de plata', '$300', 'FOTO24.png', 'anillos'),
(53, 'Collar chapa de oro', '$550', 'collar25.png', 'collares');

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
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
