-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 18:20:40
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibasericardo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `ci_estudiante` int(11) NOT NULL,
  `sigla` varchar(15) DEFAULT NULL,
  `nota1` int(11) DEFAULT NULL,
  `nota2` int(11) DEFAULT NULL,
  `nota3` int(11) DEFAULT NULL,
  `nota_final` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`ci_estudiante`, `sigla`, `nota1`, `nota2`, `nota3`, `nota_final`) VALUES
(123, 'Inf-324', 30, 30, 30, 30),
(124, 'Inf-111', 40, 50, 45, 45),
(125, 'Inf-113', 60, 70, 70, 65),
(126, 'Inf-324', 80, 20, 80, 60),
(127, 'Inf-113', 30, 50, 50, 43),
(128, 'Inf-113', 55, 65, 75, 65),
(129, 'Inf-111', 20, 20, 25, 22),
(130, 'Inf-111', 30, 60, 90, 60),
(131, 'Inf-324', 30, 30, 30, 30),
(8346117, 'Inf-324', 30, 30, 30, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombre`, `fecha_nacimiento`, `telefono`, `departamento`) VALUES
(123, 'Pepito Limachi', '1996-03-19', 75489623, 2),
(124, 'Rabito Rojo', '1988-03-12', 75489623, 3),
(125, 'Sonia Snzhez', '2001-05-05', 75489623, 4),
(126, 'Tu la traes', '2002-08-09', 75489623, 5),
(127, 'Giovana Peredo', '2006-04-12', 75489623, 6),
(128, 'Juan Ticona', '2000-12-12', 75489623, 7),
(129, 'Maria Quispe', '1991-12-25', 75489623, 8),
(131, 'Raul Quispe', '2005-06-12', 72591359, 1),
(132, 'Juanita La Huerfanita', '1996-07-07', 653289, 9),
(8346117, 'Ricardo Jauregui Lima', '1991-08-10', 75284356, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `usuario`, `password`) VALUES
(123, 'Pepito Limachi', '12345'),
(124, 'Rabito Rojo', '12345'),
(125, 'Sonia Snzhez', '12345'),
(126, 'Tu la traes', '12345'),
(127, 'Giovana Peredo', '12345'),
(128, 'Juan Ticona', '12345'),
(129, 'Maria Quispe', '12345'),
(130, 'Pedro pascal', '12345'),
(131, 'ricardo Jauregui', '12345'),
(156, 'director', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`ci_estudiante`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
