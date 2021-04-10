-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2021 a las 21:00:59
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
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_cat`, `nombre`) VALUES
(1, 'anillos'),
(2, 'aretes'),
(3, 'collares'),
(4, 'pulseras'),
(5, 'prueba'),
(6, 'prueba2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_pro` int(11) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `nombre_precio` varchar(100) NOT NULL,
  `alt` varchar(50) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_pro`, `foto`, `nombre_precio`, `alt`, `id_cat`) VALUES
(1, 'anillo1.png', 'Anillo dorado, $250', 'anillo1.png', 1),
(2, 'anillo2.png', 'Anillo azul, $150', 'anillo2.png', 1),
(3, 'anillo3.png', 'Anillo cruzado, $50', 'anillo3.png', 1),
(4, 'anillo4.png', 'Anillo doble, $250', 'anillo4.png', 1),
(5, 'anillo5.png', 'Anillo negro cuadrado, $170', 'anillo5.png', 1),
(6, 'anillo6.png', 'Anillo Negro Picos, $200', 'anillo6.png', 1),
(7, 'anillo7.png', 'Anillo Morado, $59', 'anillo7.png', 1),
(8, 'anillo8.png', 'Anillo cruz, $98', 'anillo8.png', 1),
(9, 'anillo9.png', 'Anillo simple, $200', 'anillo9.png', 1),
(10, 'aretes1.png', '', 'aretes1.png', 2),
(11, 'aretes2.png', '', 'aretes2.png', 2),
(12, 'aretes3.jpg', '', 'aretes3.jpg', 2),
(13, 'aretes4.png', '', 'aretes4.png', 2),
(14, 'aretes5.png', '', 'aretes5.png', 2),
(15, 'aretes6.png', '', 'aretes6.png', 2),
(16, 'aretes7.png', '', 'aretes7.png', 2),
(17, 'aretes8.png', '', 'aretes8.png', 2),
(18, 'aretes9.png', '', 'aretes9.png', 2),
(19, 'aretes10.png', '', 'aretes10.png', 2),
(20, 'aretes11.png', '', 'aretes11.png', 2),
(21, 'aretes12.png', '', 'aretes12.png', 2),
(22, 'aretes13.png', '', 'aretes13.png', 2),
(23, 'collar1.jpg', '', 'collar1.jpg', 3),
(24, 'collar2.png', '', 'collar2.png', 3),
(25, 'collar3.png', '', 'collar3.png', 3),
(26, 'collar4.png', '', 'collar4.png', 3),
(27, 'collar5.png', '', 'collar5.png', 3),
(28, 'collar6.jpg', '', 'collar6.jpg', 3),
(29, 'collar7.jpg', '', 'collar7.jpg', 3),
(30, 'collar8.png', '', 'collar8.png', 3),
(31, 'collar9.png', '', 'collar9.png', 3),
(32, 'collar10.png', '', 'collar10.png', 3),
(33, 'collar11.png', '', 'collar11.png', 3),
(34, 'collar12.png', '', 'collar12.png', 3),
(35, 'collar13.png', '', 'collar13.png', 3),
(36, 'collar14.png', '', 'collar14.png', 3),
(37, 'collar15.png', '', 'collar15.png', 3),
(38, 'collar16.png', '', 'collar16.png', 3),
(39, 'collar17.png', '', 'collar17.png', 3),
(40, 'collar18.png', '', 'collar18.png', 3),
(41, 'collar19.png', '', 'collar19.png', 3),
(42, 'collar20.png', '', 'collar20.png', 3),
(43, 'collar21.png', '', 'collar21.png', 3),
(44, 'collar22.png', '', 'collar22.png', 3),
(45, 'collar23.png', '', 'collar23.png', 3),
(46, 'collar24.png', '', 'collar24.png', 3),
(47, 'collar25.png', '', 'collar25.png', 3),
(48, 'collar26.png', '', 'collar26.png', 3),
(49, 'collar27.png', '', 'collar27.png', 3),
(50, 'pulseras1.png', '', 'pulseras1.png', 4),
(51, 'pulseras2.png', '', 'pulseras2.png', 4),
(52, 'pulseras3.png', '', 'pulseras3.png', 4),
(53, 'pulseras4.png', '', 'pulseras4.png', 4),
(54, 'pulseras5.png', '', 'pulseras5.png', 4),
(55, 'pulseras6.png', '', 'pulseras6.png', 4),
(56, 'pulseras7.png', '', 'pulseras7.png', 4),
(57, 'pulseras8.png', '', 'pulseras8.png', 4);

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
(1, 'cacosta@awsoftware.mx', 'Christian Acosta', '$2y$12$ZNP7OOuoZ0.YFZD2cJHNDObIOnJVUvsQrP01yrmyg3Q3kUC1JI1Pa', '2021-04-10 13:28:37'),
(2, 'prueba1@gmail.com', 'prueba1', '$2y$12$vsRxLJVCh5DaOBddLUWBi.JZiRTsxUmpP.H.S3m1.sTWfKg7RhhoW', '2021-04-10 13:28:37'),
(3, 'prueba3@gmail.com', 'prueba3', '$2y$12$U0c80NAZIrtQEK6KXcwVCu8Y7Sp3MgOFHAYDQQNG9JNxeEjWmOBN6', '2021-04-10 13:28:37'),
(4, 'prueba4@gmail.com', 'prueba4', '$2y$12$SzUC.bR/0hF8J/K/11.Vb.Borf0EzrkgKyuiL6.281L979GV1WOTC', '2021-04-10 13:28:37'),
(5, 'prueba5@gmail.com', 'prueba5', '$2y$12$bA8xvGx0rw/D.7zmIozX3OtXPnAMqwgjtQuh9KM.Q6Bpe2N.9ctRm', '2021-04-10 13:28:37'),
(6, 'prueba6@gmail.com', 'prueba6', '$2y$12$FmtPhGE1hia1Eaayj8Rs5eX3GZmfHTKfn0mN2OT3vDUpcp5ta8C6y', '2021-04-10 13:28:37'),
(7, 'prueba7@gmail.com', 'prueba7', '$2y$12$YMV6fCVFU0cewGJcwBRPoeGVBISMq0lq0NiHOoZVaDMPMB9uBnYvC', '2021-04-10 13:28:37'),
(8, 'prueba8@gmail.com', 'prueba8', '$2y$12$wmjRk0oOK/y19.W13sZwH.auVMhZ/Sq2qc6pBvrzYJEEAsq2cDelu', '2021-04-10 13:28:37'),
(16, 'prueba9@gmail.com', 'prueba8', '$2y$12$nnUYc8aSaKIu4/qOlKMJsO7zvgvnFnLYoLGzxQbBdNRX/1cPKydF6', '2021-04-10 13:28:37'),
(17, 'prueba17@gmail.com', 'p17', '$2y$12$PPWrOXw5mbPzGoOYPzbF4eCDNAWOLw/u5fFtiCGikyHltiOsiopzu', '2021-04-10 13:28:37'),
(19, 'admin@gmail.com', 'admin', '$2y$12$P7zcgelIlHp9ZAsm0CYKFO.RqmkUU0Wx.CawBuZ5.6FEb/FoNQlj.', '2021-04-10 13:28:37'),
(21, 'prueba20@gmail.com', 'prueba20', '$2y$12$Pt9VO33WwXoBUafjMyWJgu9Ssq9YIq27Sx4PJ5LsDXua/5ACs6T4u', '2021-04-10 13:28:37'),
(22, 'prueba21@gmail.com', 'prueba21', '$2y$12$wsFISu7EtFx587bhyq38RewVZVZDHTGRjh5tX/Pe/8STa7GJPH0VO', '2021-04-10 13:28:37'),
(23, 'goku@gmail.com', 'goku', '$2y$12$Ro5MT0iKpMfU1zDo71Mor.ubBu8sPMsqDIkMpilOQ5HYYXGEZ4tqq', '2021-04-10 13:28:37'),
(24, 'dell@gmail.com', 'dell', '$2y$12$em/i3O51eUPTUhQbiza0HOPtPEl7AMAj7/aRDLvmwYM9LsaxSzbJi', '2021-04-10 13:28:37'),
(25, 'asuss@gmail.com', 'asus', '$2y$12$aKHzp99Gq0cgbAPw6wDrFesTY/E1JHH4mkKQo.a1./pHwbUV6EZNO', '2021-04-10 13:28:37'),
(26, 'git@gmail.com', 'git', '$2y$12$18OUlrGxmHDGPVB7iyZ6U.6yfggKOhD9Qq3L9b8rcG9IFAsHnyAu6', '2021-04-10 13:28:37'),
(27, 'prueba27@gmail.com', 'o27', '$2y$12$AgO/iPB540Mu0vfFdC8v/uOmsYdVGxJBEwhCoKAn.28MQwYKo9172', '2021-04-10 13:28:37'),
(28, 'adn75555@gmail.com', 'editado', '$2y$12$Cz2FPAnWhSdBzJew9MHMquGPnLxzWBnXTRjvR1hAGdx0ceFgmSG3W', '2021-04-10 13:28:37'),
(29, 'sa@gmail.com', 'assdasa', '$2y$12$OHtUsCkmUoEdiubmFY/NJeXhyd0CJCzUQMtT547h3bEEP3N.gQfZW', '2021-04-10 13:28:37'),
(30, 'correo@gmail.com', 'correo', '$2y$12$fzrEbxjZjlnlN6w1Y06q3uVGD5B6ewsJ53NF.YDljGTKC1jAK.2qC', '2021-04-10 13:28:37'),
(31, 'php@gmail.com', 'php', '$2y$12$r2jCFUcPaXJg2vriRjSv5.wOP32qHconikfMRCQs4LjLed1kNt3UO', '2021-04-10 13:28:37'),
(33, 'prueba32@gmail.com', 'prueba 32', '$2y$12$erzqFUtyAK3tLN.OUGap0OUJHkXDX52n.dHKhqhIzTJ5n3C2sU4Du', '2021-04-10 13:28:37'),
(34, 'java@gmail.com', 'java', '$2y$12$jGIvbumY.XU126RZUgB.huGepjqUA1h5vdrWNOnwR5YV4OAO0s91q', '2021-04-10 13:28:37'),
(36, 'js@gmail.com', 'js', '$2y$12$Mtm3PD3j/U/5WtQ/KcP14OoaK77NXuemEH86DUR4NJGQlMR.IhoBW', '2021-04-10 13:28:37'),
(37, 'docs@gmail.com', 'docs', '$2y$12$0UiBv/INbTwJxJkKqy3rQOxhTgdw67c7qjDs59UIjcc8qju28wmwi', '2021-04-10 13:28:37'),
(38, 'prueba37@gmail.com', 'prueba37', '$2y$12$6PiRL9LK5VED6fkf7uDCnuxxPGlOBebX8ft6StwCPg8TgAgYq2Age', '2021-04-10 13:28:37'),
(39, 'amora@gmail.com', 'amora', '$2y$12$axsGPzCtvdhUNrYi1XXv6uXlArSKHHtodDhQ0UxA/.fM6iverO.N6', '2021-04-10 13:28:37'),
(42, 'sw@gmail.com', 'sw', '$2y$12$IfxPJsjUyCMgeW3gwxRdS.p6PV64cu4Qc7B1aeXGeanA7NXQbFAta', '2021-04-10 13:28:37'),
(84, 'hola@gmail.com', 'prueba', '$2y$12$SYX.TnOdgbCEV7YpN4LvaeBJklgLC9dQh0BUtSNnFTBQ6LL3.Fxnu', '2021-04-10 13:28:37'),
(88, 'admin54@gmail.com', 'admin', '$2y$12$VqG0bEH0J2LpL9TrkIO.H.1doZnJOOFXTIc4YHdISDWh7Xx2B.24m', '2021-04-10 13:28:37'),
(104, 'admin64@gmail.com', 'admin', '$2y$12$yF7ryr1QVf.I6EWoJIC7.uKfGKxYaQo0/0TRvNUmmlAdrytNd6Nxm', '2021-04-10 13:28:37'),
(105, 'carlos545456@gmail.com', 'carlos', '$2y$12$zNLgRet42vOVXUuiSYQ1UOSIBhS36neKzttdvhrucVr5jgnv2BoN.', '2021-04-10 13:28:37'),
(106, 'editado@gmail.com', 'admin', '$2y$12$AmK2ZwlUTi.Zkk9seUj6LOZZD8XVP97TMwlMsMMnjgunFKvCvFNd6', '2021-04-10 13:28:37'),
(107, 'a1_editado@gmail.com', 'a1', '$2y$12$C9Do/NPvX0y17zTk1AAiYO7EY4QM2HOki3Lv5J0RUnLxLG/CA5Z2y', '2021-04-10 13:28:37'),
(109, 'christian@gmail.com', 'christian ', '$2y$12$hgV16zqSwwwPlC8DkQfT4eF5SBsX2jZ8qS95rn6NPVzmwXHg4vYLa', '2021-04-10 13:28:37'),
(110, 'acosta075@gmail.com', 'acosta', '$2y$12$X/.V070tct8jTInAm6B1z.iYn9kg0kd1A6hjlydQphMjlyAbKdV7m', '2021-04-10 13:28:37'),
(111, 'sof@gmail.com', 'sof', '$2y$12$XJtlP6E8K4Th5FwLm6wrJeAFRu/zDns86OG50haiHLlvTOvSQV9y2', '2021-04-10 13:28:37'),
(112, 'a2@gmail.com', 'a2', '$2y$12$Ju19fgBs2GicPpGL9l8wy.mcYpnXy1/O8FJqRI0VC5PjOS2ijN5u6', '2021-04-10 13:28:37'),
(113, 'super@gmail.com', 'super', '$2y$12$DnC.R553aNnIHnj6JvXZ4OMER5xSvy/vjMl17mUaamp0JE2nofcDC', '2021-04-10 13:28:37'),
(114, 'otro@gmail.com', 'otro', '$2y$12$PtEmxsEJ3mugPYIDk3w5/u7Rxenp24y5xZHspbOfuO2JURDVjqPkW', '2021-04-10 13:28:37'),
(115, 'prueba100@gmail.com', 'prueba 400', '$2y$12$cX7zIth17gx1ZaBSb4L4e.yKPw/BlGpdOWoD1Ohg/CEDYTpkW3RFW', '2021-04-10 13:28:37'),
(116, 'core@gmail.com', 'admin', '$2y$12$u4fWBWrlybXDJFZozuyLlut2dZ9uP.IRg3B9H4w2q2KHTyt9eUU.m', '2021-04-10 13:28:37'),
(118, 'cell@gmail.com', 'cell', '$2y$12$jPitMnia7vxmuzy5d4WN2uKfok9dawbYqMRmsMZ7LtleeFJimZXx6', '2021-04-10 13:28:37'),
(119, 'daredevil@gmail.com', 'dared', '$2y$12$fAwgjpNbHW8I25ziAPBZYuCBssebbBLrGI0uJ3LNEPCbIu5sHQ9Le', '2021-04-10 13:28:37'),
(120, 'final2@gmail.com', 'final', '$2y$12$TYvKhV7kGY.B7XDE0YO4FeyxIMrdb6VKQDsgoVnH39PwO.0lFGP/G', '2021-04-10 13:28:37'),
(121, 'finalxd@gmail.com', 'final xd', '$2y$12$qJqw7U.5fTXIVe6qq8eQvOi3Ak/ljCRoVpNo3MVZttjciz7fYp04S', '2021-04-10 13:28:37'),
(122, 'aurelio@gmail.com', 'aurelio', '$2y$12$PEyBZbdZbM4kSKiBAezi9.DN..x4lIpe26.uCStsnt87MjEoohPG2', '2021-04-10 13:41:36');

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
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
