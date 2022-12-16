-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307:3307
-- Tiempo de generación: 04-12-2022 a las 05:00:43
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
-- Base de datos: `usuarios-registrados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_de_citas`
--

CREATE TABLE `reserva_de_citas` (
  `id_consulta` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `sede` varchar(40) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `descripcion` text NOT NULL,
  `dni` int(11) NOT NULL,
  `asunto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva_de_citas`
--

INSERT INTO `reserva_de_citas` (`id_consulta`, `id`, `nombre`, `sede`, `fecha`, `hora`, `descripcion`, `dni`, `asunto`) VALUES
(134, 172, 'aaa', 'san_juan_de_lurigancho', '2022-12-12', '14:10:00', 'asdsadad', 1233, 'aaa'),
(135, 172, 'AAASS', 'callao', '2022-12-21', '12:08:00', 'ASDASDSAD', 1212121, 'BBBBBB'),
(136, 175, 'Jorge Espinoza', 'san_juan_de_lurigancho', '2022-12-04', '15:14:00', 'Necesito una cita en la veterinaria para bañar a mi perrito ', 76565654, 'Lavado a mi perrito'),
(137, 172, 'sergio', 'ventanilla', '2022-12-01', '02:12:00', 'Hola nick', 74929911, 'Problemas con mi perrito'),
(138, 172, 'XDDD', 'callao', '2022-12-15', '22:38:00', '1212121212', 12121, 'XDDD'),
(139, 174, 'dasd', 'surco', '2022-12-01', '22:40:00', 'asdasdad', 0, 'asdas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reserva_de_citas`
--
ALTER TABLE `reserva_de_citas`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `id_cliente_consulta` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reserva_de_citas`
--
ALTER TABLE `reserva_de_citas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva_de_citas`
--
ALTER TABLE `reserva_de_citas`
  ADD CONSTRAINT `id_cliente_consulta` FOREIGN KEY (`id`) REFERENCES `login-registro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
