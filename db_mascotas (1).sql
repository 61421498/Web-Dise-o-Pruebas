-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307:3307
-- Tiempo de generación: 15-12-2022 a las 17:17:08
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `producto_name` varchar(100) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `precio` float NOT NULL,
  `img` longblob NOT NULL,
  `tipo_imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_de_citas`
--

CREATE TABLE `reserva_de_citas` (
  `id_consulta` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `sede` varchar(40) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `descripcion` text NOT NULL,
  `dni` int(11) NOT NULL,
  `asunto` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva_de_citas`
--

INSERT INTO `reserva_de_citas` (`id_consulta`, `nombre`, `sede`, `fecha`, `hora`, `descripcion`, `dni`, `asunto`, `id`) VALUES
(140, 'asas', 'callao', '2022-12-24', '12:32:00', 'dassdasd', 232323, 'asas', 4),
(141, 'ssd', 'callao', '2022-12-29', '11:32:00', 'asdasdad', 0, 'dsd', 5),
(142, 'qsa', 'ventanilla', '2022-12-01', '13:31:00', 'sadasdasd', 1212121, '22', 5),
(143, 'Nick', 'ventanilla', '2022-12-01', '13:29:00', 'NO se mi perro esta mal', 1234567, 'Bañar a mi perro', 12),
(144, 'd', 'callao', '2022-11-29', '10:34:00', 'dasdasd', 0, 'asdas', 13),
(145, 'asdsadasd', 'ventanilla', '2022-11-30', '13:33:00', 'sdasdasdasd', 21121212, 'saasdasd', 13),
(146, 'ASD', 'callao', '2022-12-21', '14:38:00', 'sdaasdadasdsadasdasdsad', 121212, 'SSD', 13),
(147, 'sdasdsadasd', 'ventanilla', '2023-01-04', '13:07:00', 'asdasdasd', 2147483647, 'sasda', 12),
(148, 'dfbjsdfbsdfsdf', 'callao', '2022-11-28', '16:14:00', '121212121212', 0, 'Hola no se que poner', 12),
(149, 'dfsd', 'san juan de lurigancho', '2022-12-14', '13:16:00', 'asdasdasdasdasdasd', 0, 'sdfsdfs', 12),
(150, 'fsdfsdfsdf', 'callao', '2022-12-21', '14:19:00', 'sdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 232323, 'sdfsdfsd', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `contraseña`) VALUES
(3, 'aaa', '$2y$10$b8JyMf8BCr3BIS10Sh.PKeVlWH05qYRKQPBMgU5OUWCEsSogbz69q'),
(4, 'luis', '$2y$10$UaIM/dPgw3K0bDUXTTj9KOlOdncqEuHn1p.OuneWoyoJ0aHnzkxHq'),
(5, 'bienvenido', '$2y$10$CN6ME1zJHPlr/LSwGmtQjuuqJjgBVHqACwXjwrpXyTCvzNCx5uPlK'),
(6, 'aaas', '$2y$10$0yLMP4bqm/eRvhlwgBuEGOBWR2fTyORQlmUZTDy.R2m3zgHr61Ke2'),
(7, 'ssss', '$2y$10$FyugmLJvh9x5Cju42sryU.AQlbCapj7lreupChoCjhoueR8P3KjMa'),
(8, 'sergio', '$2y$10$I/zEKwMNEu3v1xAugwSdO.9NrFGgG/Rx0EHJxyYPkZ22JQRJ3G5ue'),
(9, 'ernesto', '$2y$10$p1hYL3uLr05ldDevq0r9h.uGA.GZzqrc5hVLAUFOMDSTCXOOjeKIu'),
(10, 'qqq', '$2y$10$VGMkhHlP4teSHj6qeieFkOgXkQlPX/genI///kTSBnQgWnve2KWia'),
(11, 'jorge', '$2y$10$nD3l715eYfz5NGiJ2zfygeTOfx2uEdGyBdF3PqvqVS7C61ZK/wLYS'),
(12, 'nick', '$2y$10$K1kdvoAopBOkFWL5SVRxFOTv5C47/6jbSTAmkCaJytWz1aFHuwMvq'),
(13, 'ooo', '$2y$10$XsI48u0wlqPDVjAI1IUAS.BDELVaWLuAArqJFYVEls1oztqCrnuJi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reserva_de_citas`
--
ALTER TABLE `reserva_de_citas`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `id_usuario` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `reserva_de_citas`
--
ALTER TABLE `reserva_de_citas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva_de_citas`
--
ALTER TABLE `reserva_de_citas`
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
