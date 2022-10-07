-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2022 a las 03:19:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_mouses`
--

CREATE TABLE `libreria_mouses` (
  `id` int(11) NOT NULL,
  `producto` longtext COLLATE latin1_spanish_ci DEFAULT NULL,
  `img` longtext COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `libreria_mouses`
--

INSERT INTO `libreria_mouses` (`id`, `producto`, `img`, `precio`) VALUES
(1, 'Redragon M601-RGB black', 'https://http2.mlstatic.com/D_NQ_NP_2X_920354-MLA45376043341_032021-F.webp', 200),
(2, 'Redragon Griffin M607 blanco', 'https://http2.mlstatic.com/D_NQ_NP_2X_713178-MLA45376051243_032021-F.webp', 400),
(3, 'adwkdawdjadjwkajd', 'https://www.mercadolibre.com.ar/mouse-inalambrico-logitech-m280-negro/p/MLA6072946?pdp_filters=category:MLA1714#searchVariation=MLA6072946&position=1&search_layout=stack&type=product&tracking_id=b60206e3-5b65-485a-8743-a3824c5b3d5c', 300),
(4, 'dkwakdakwdkawdk', 'https://http2.mlstatic.com/D_NQ_NP_2X_713178-MLA45376051243_032021-F.webp', 400);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libreria_mouses`
--
ALTER TABLE `libreria_mouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libreria_mouses`
--
ALTER TABLE `libreria_mouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
