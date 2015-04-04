-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2015 a las 21:49:26
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `web_dev_test`
--
CREATE DATABASE IF NOT EXISTS `web_dev_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `web_dev_test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fullsubscription`
--

CREATE TABLE IF NOT EXISTS `fullsubscription` (
  `id_fullsubscription` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_fullsubscription`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `fullsubscription`
--

INSERT INTO `fullsubscription` (`id_fullsubscription`, `name`, `email`, `user`, `password`) VALUES
(1, 'Laura Santana', 'laly@mail.com', 'laly', '0c7b7d57a4abd0df083a52f5e4f4b117');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `id_subscription` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_subscription`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `subscription`
--

INSERT INTO `subscription` (`id_subscription`, `email`) VALUES
(1, 'ko@mail.co'),
(4, 'laly@momo.no'),
(5, 'laly@mail.es'),
(6, 'laly@mail.mo'),
(7, 'fgg@hi.vi'),
(8, 'werth@.fghjk.k');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
