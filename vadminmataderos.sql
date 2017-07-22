-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2017 a las 01:07:30
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vadminmataderos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--

CREATE TABLE `cheques` (
  `id` int(10) UNSIGNED NOT NULL,
  `cheque` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banco` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sucursal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importe` decimal(8,2) NOT NULL,
  `fechacobro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `razonsocial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dirfiscal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codpostal` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limitcred` int(11) DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descuento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_id` int(10) UNSIGNED DEFAULT NULL,
  `iva_id` int(10) UNSIGNED DEFAULT NULL,
  `provincia_id` int(10) UNSIGNED DEFAULT NULL,
  `localidad_id` int(10) UNSIGNED DEFAULT NULL,
  `condicventas_id` int(10) UNSIGNED DEFAULT NULL,
  `listas_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `zona_id` int(10) UNSIGNED DEFAULT NULL,
  `flete_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `razonsocial`, `cuit`, `dirfiscal`, `codpostal`, `limitcred`, `telefono`, `celular`, `email`, `descuento`, `tipo_id`, `iva_id`, `provincia_id`, `localidad_id`, `condicventas_id`, `listas_id`, `user_id`, `zona_id`, `flete_id`, `created_at`, `updated_at`) VALUES
(1, 'CONSUMIDOR FINAL', '9999999999', 'Av. No', '0', 0, NULL, NULL, NULL, '', 2, 1, NULL, NULL, NULL, 1, 3, 1, 1, NULL, NULL),
(2, 'CHALITA MARIA CAMILA', '15878756548', 'Dir 1234', '1212', 500000, '4545-4545', '15-1515-1515', 'chalita@hotmail.com', '3000', 1, 2, 1, 6, 1, 1, 3, 1, 2, '2017-06-07 03:00:00', '2017-06-19 03:00:00'),
(3, 'CEMICA SUDAMERICANA S.R.L.', '22222222222', '', '0', 0, NULL, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(4, 'ACEVEDO ABEL   (ARRECIFES)', '3333333333', '', '0', 0, NULL, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(5, 'BENITO', '4444444444', '', '0', 0, NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(7, 'AUTORADIO FG  "FABIAN"', '5555555555', '', '0', 0, NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(8, 'AITA ANGEL', '66666666666', '', '0', 0, NULL, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(9, 'ALBERTO', '77777777777', '', '0', 0, NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(10, 'ALONSO', '888888888888', '', '0', 0, NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(11, 'ATAURI LUIS', '99999999999', '', '0', 0, NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(12, 'AMANTEA OSCAR', '', '', '0', 0, NULL, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(13, 'ALBORNOZ', '', '', '0', 0, NULL, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(14, 'ARRARAS RODOLFO', '', '', '0', 0, NULL, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(15, 'ALBANI   DARIO', '', '', '0', 0, NULL, NULL, NULL, '', 2, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(16, 'ALANIS', '15151515151', 'Av. CalleFalsa 1234', '1545', 500, '4545-4545', '15-4545-4545', 'alanis@hotmail.com', '5000', 1, 1, 3, 1, 6, 5, 3, 3, 1, NULL, '2017-06-06 01:39:06'),
(17, 'LELFUN S.A.', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(18, 'AVONDET ORLANDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(19, 'BALBARANI  OSVALDO OSCAR', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(20, 'BELTRAN RAUL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(21, 'BASSINI JUAN MANUEL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(22, 'BAGNONI   JUAN', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(23, 'BIANCHI  CARLOS (CACHARI)', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(24, 'BORAGNO VICTOR', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(25, 'BAVA OSVALDO ALFREDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(26, 'BIANCHI  MARCELO ALEJANDRO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(27, 'BELUCCI  JUAN PEDRO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(28, 'BUTAFUOCO DANIEL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(29, 'MARIO BASUALDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(30, 'BOTTA CARLOS', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(31, 'BIANCHI CARLOS (ALBERTI)', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(32, 'BASILENCO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(33, 'BUSCALIA OSVALDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(34, 'BRENNA ROBERTO FABIAN', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(35, 'BONEFON', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(36, 'BECERRA ALBERTO ELADIO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(37, 'BRICIO JUAN MARTIN', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(38, 'BRAVO VICTOR HUGO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(39, 'BASUALDO, (CHACABUCO)', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(40, 'BASAN', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(41, 'BRAGHI', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(42, 'BORAGNO PABLO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(43, 'BANEGAS', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(44, 'PRIETO OSCAR OSVALDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(45, 'CARLOMAGNO CARLOS MARIA', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(46, 'CASA POLLETI (EDUARDO)', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(47, 'DEGLICE MATIAS', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(48, 'CESAR', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(49, 'CORNARO.', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(50, 'CASTRO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(51, 'CHILLIER JORGE', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(52, 'CACHO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(53, 'DAVID  "CASA MELA"', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(54, 'CARLOS UHALDEGARAY', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(55, 'IGLESIAS  CARLOS', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(56, 'CENTRO HOGAR  (BERSELLINI)', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(57, 'CRIVELLI', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(58, 'CLARAMUNT  RICARDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(59, 'CLAUDIO ENRIQUE VITOLA', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(60, 'COOPERATIVA  ELECTRICA CASTELLI  LTDA(', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(61, 'CARAM', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(62, 'CORREA DANIEL ALBERTO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(63, 'CANEPA NICOLAS', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(64, 'DIAZ ALFREDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(65, 'DEPICHI MARIO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(66, 'DIBELLO, FABIAN', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(67, 'DE CASTRO, DANIEL ADRIAN', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(68, 'DODDS  DANIEL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(69, 'DISTABILI', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(70, 'DE ANDRES', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(71, 'DIAB  GABRIEL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(72, 'DILEGO ANTONIO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(73, 'DIAZ', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(74, 'DIRISIO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(75, 'SIGILLITO MAURO ALEJANDRO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(76, 'DANIEL  TUNDIS', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(77, 'DELLOSO ROMULO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(78, 'ESLAVA FABIAN HUGO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(79, 'DIAZ ARMANDO "SERVIHOGAR"', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(80, 'D´IGARTUA MARCELO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(81, 'ROSSELLI DANIEL EDUARDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(82, 'D`AMICO ALDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(83, 'DUARTE PEPE', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(84, 'ENRIQUE HECTOR', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(85, 'ESTEBAN GONZALEZ', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(86, 'ECHEVARRIA LEONARDO', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(87, 'EL TORITO    " RAUL "', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(88, 'ELECTRICIDAD TTAL   S.A.', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(89, 'EDU-MAR   "EDUARDO"', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(90, 'ELECTRICIDAD CARLITOS  "CARLOS THEAUX"', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(91, 'EMANUELI   "DARIO O SERGIO "', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(93, 'COCO GONZALEZ', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(94, 'NORBERTO VOLKER', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(95, 'MAXI FRIO S.R.L.', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(96, 'RIOS RODOLFO OSCAR', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(97, 'FRECHERO ARTURO ISMAEL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(98, 'BONELLI MIGUEL', '', '', '0', 0, NULL, NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(99, 'EDUARDO ROSA', '', '', '0', 0, NULL, '15-4545-4545', NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2017-05-11 02:45:01'),
(103, 'Otro Cliente', '21-21212121-2', 'Av. Directorio 4705', '1545', 5000, '4545-4545', '(15)1515-1515', 'admstudiovimana@gmail.com', '2', NULL, 4, 1, 143, 5, 6, 3, 2, 1, '2017-04-12 12:25:22', '2017-04-12 12:25:22'),
(104, 'Chotorx', '45-45454554-5', 'dsadasdasdasdasdas', '1515', 5000, '4545-4545', '(15)1515-1515', '64654654654@sdsd.com', '350', 1, 1, 2, 968, 6, 5, 3, 2, 1, '2017-05-11 02:55:22', '2017-05-11 02:57:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_razonsocial`
--

CREATE TABLE `clientes_razonsocial` (
  `id` int(11) NOT NULL,
  `iva_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes_razonsocial`
--

INSERT INTO `clientes_razonsocial` (`id`, `iva_id`) VALUES
(2, 2),
(3, 2),
(4, 1),
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 4),
(16, 1),
(17, 2),
(18, 1),
(19, 2),
(20, 1),
(21, 4),
(22, 1),
(23, 4),
(24, 1),
(25, 4),
(26, 4),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 2),
(34, 4),
(35, 1),
(36, 4),
(37, 4),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 2),
(45, 2),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 4),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 2),
(60, 2),
(61, 1),
(62, 2),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 4),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 4),
(76, 1),
(77, 1),
(78, 2),
(79, 1),
(80, 1),
(81, 4),
(82, 1),
(83, 1),
(84, 4),
(85, 1),
(86, 1),
(87, 1),
(88, 2),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 4),
(95, 2),
(96, 2),
(97, 2),
(98, 4),
(99, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicventas`
--

CREATE TABLE `condicventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `condicventas`
--

INSERT INTO `condicventas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Contado', '2009-10-27 06:37:55', '2009-10-27 06:37:55'),
(2, '7 días factura', '2009-10-27 06:38:07', '2009-10-27 06:38:07'),
(3, '15 días factura', '2009-10-27 06:38:26', '2009-10-27 06:38:26'),
(4, '21 días factura', '2009-10-27 06:38:34', '2009-10-27 06:38:34'),
(5, '30 días factura', '2009-10-27 06:38:44', '2009-10-27 06:38:44'),
(6, '45 días factura', '2009-10-27 06:38:53', '2009-10-27 06:38:53'),
(7, '60 días factura', '2009-10-27 06:39:00', '2009-10-27 06:39:00'),
(8, 'Contra Reembolso', '2009-10-27 06:39:08', '2009-10-27 06:39:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direntregas`
--

CREATE TABLE `direntregas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad_id` int(10) UNSIGNED NOT NULL,
  `provincia_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `direntregas`
--

INSERT INTO `direntregas` (`id`, `name`, `telefono`, `localidad_id`, `provincia_id`, `cliente_id`, `created_at`, `updated_at`) VALUES
(1, 'Juan Leon Palliere 1212', '4545-4545', 2, 2, 103, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_fc_id` enum('20','40') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_fc` enum('A','B') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cae` int(11) NOT NULL,
  `estado` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `centroemisor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direntrega_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iva` decimal(50,0) NOT NULL,
  `subtotal` decimal(50,0) NOT NULL,
  `total` decimal(50,0) NOT NULL,
  `flete_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proveedor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `nombre`, `proveedor_id`, `created_at`, `updated_at`) VALUES
(2, 'Lavarropas', 1, '2017-04-04 02:20:23', '2017-04-04 02:20:23'),
(3, 'Aire Acondicionados', 1, '2017-04-04 02:20:32', '2017-04-06 10:02:52'),
(4, 'Motores', NULL, '2017-05-04 08:51:38', '2017-05-04 08:51:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fletes`
--

CREATE TABLE `fletes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fletes`
--

INSERT INTO `fletes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cruz del Sur', '2009-10-27 06:41:48', '2009-10-27 06:41:48'),
(2, 'Lento Pero Inseguro', '2009-10-27 06:42:09', '2009-10-27 06:42:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ivas`
--

CREATE TABLE `ivas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `afipcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipofc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ivas`
--

INSERT INTO `ivas` (`id`, `name`, `afipcode`, `tipofc`, `created_at`, `updated_at`) VALUES
(1, 'Consumidor Final', '5', 'B', '2009-10-27 06:39:26', '2009-10-27 06:39:26'),
(2, 'IVA Responsable Inscripto', '1', 'A', '2009-10-27 06:39:34', '2009-10-27 06:39:34'),
(4, 'Responsable Monotributo', '6', 'B', '2009-10-27 06:39:50', '2017-03-21 11:07:34'),
(5, 'IVA Sujeto Exento', '4', 'B', '2009-10-27 06:39:59', '2009-10-27 06:39:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lista Minorísta', '2017-03-26 06:38:20', '2017-03-26 06:38:20'),
(2, 'Lista Mayorísta', '2017-03-26 06:38:32', '2017-03-26 06:38:32'),
(3, 'Lista 1', '2017-04-06 20:00:00', '2017-04-06 20:00:00'),
(4, 'Lista 2', '2017-04-06 20:00:06', '2017-04-06 20:00:06'),
(5, 'Lista Especial', '2017-04-06 20:00:16', '2017-04-06 20:00:16'),
(6, 'Lista 10', '2017-04-06 20:00:24', '2017-04-06 20:00:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '25 de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2, 1, '3 de febrero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(3, 1, 'A. Alsina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(4, 1, 'A. Gonzáles Cháves', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(5, 1, 'Aguas Verdes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(6, 1, 'Alberti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(7, 1, 'Arrecifes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(8, 1, 'Ayacucho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(9, 1, 'Azul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(10, 1, 'Bahía Blanca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(11, 1, 'Balcarce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(12, 1, 'Baradero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(13, 1, 'Benito Juárez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(14, 1, 'Berisso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(15, 1, 'Bolívar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(16, 1, 'Bragado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(17, 1, 'Brandsen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(18, 1, 'Campana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(19, 1, 'Cañuelas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(20, 1, 'Capilla del Señor', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(21, 1, 'Capitán Sarmiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(22, 1, 'Carapachay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(23, 1, 'Carhue', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(24, 1, 'Cariló', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(25, 1, 'Carlos Casares', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(26, 1, 'Carlos Tejedor', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(27, 1, 'Carmen de Areco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(28, 1, 'Carmen de Patagones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(29, 1, 'Castelli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(30, 1, 'Chacabuco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(31, 1, 'Chascomús', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(32, 1, 'Chivilcoy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(33, 1, 'Colón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(34, 1, 'Coronel Dorrego', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(35, 1, 'Coronel Pringles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(36, 1, 'Coronel Rosales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(37, 1, 'Coronel Suarez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(38, 1, 'Costa Azul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(39, 1, 'Costa Chica', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(40, 1, 'Costa del Este', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(41, 1, 'Costa Esmeralda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(42, 1, 'Daireaux', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(43, 1, 'Darregueira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(44, 1, 'Del Viso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(45, 1, 'Dolores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(46, 1, 'Don Torcuato', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(47, 1, 'Ensenada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(48, 1, 'Escobar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(49, 1, 'Exaltación de la Cruz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(50, 1, 'Florentino Ameghino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(51, 1, 'Garín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(52, 1, 'Gral. Alvarado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(53, 1, 'Gral. Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(54, 1, 'Gral. Arenales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(55, 1, 'Gral. Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(56, 1, 'Gral. Guido', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(57, 1, 'Gral. Lamadrid', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(58, 1, 'Gral. Las Heras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(59, 1, 'Gral. Lavalle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(60, 1, 'Gral. Madariaga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(61, 1, 'Gral. Pacheco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(62, 1, 'Gral. Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(63, 1, 'Gral. Pinto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(64, 1, 'Gral. Pueyrredón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(65, 1, 'Gral. Rodríguez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(66, 1, 'Gral. Viamonte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(67, 1, 'Gral. Villegas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(68, 1, 'Guaminí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(69, 1, 'Guernica', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(70, 1, 'Hipólito Yrigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(71, 1, 'Ing. Maschwitz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(72, 1, 'Junín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(73, 1, 'La Plata', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(74, 1, 'Laprida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(75, 1, 'Las Flores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(76, 1, 'Las Toninas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(77, 1, 'Leandro N. Alem', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(78, 1, 'Lincoln', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(79, 1, 'Loberia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(80, 1, 'Lobos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(81, 1, 'Los Cardales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(82, 1, 'Los Toldos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(83, 1, 'Lucila del Mar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(84, 1, 'Luján', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(85, 1, 'Magdalena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(86, 1, 'Maipú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(87, 1, 'Mar Chiquita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(88, 1, 'Mar de Ajó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(89, 1, 'Mar de las Pampas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(90, 1, 'Mar del Plata', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(91, 1, 'Mar del Tuyú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(92, 1, 'Marcos Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(93, 1, 'Mercedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(94, 1, 'Miramar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(95, 1, 'Monte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(96, 1, 'Monte Hermoso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(97, 1, 'Munro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(98, 1, 'Navarro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(99, 1, 'Necochea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(100, 1, 'Olavarría', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(101, 1, 'Partido de la Costa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(102, 1, 'Pehuajó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(103, 1, 'Pellegrini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(104, 1, 'Pergamino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(105, 1, 'Pigüé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(106, 1, 'Pila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(107, 1, 'Pilar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(108, 1, 'Pinamar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(109, 1, 'Pinar del Sol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(110, 1, 'Polvorines', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(111, 1, 'Pte. Perón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(112, 1, 'Puán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(113, 1, 'Punta Indio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(114, 1, 'Ramallo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(115, 1, 'Rauch', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(116, 1, 'Rivadavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(117, 1, 'Rojas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(118, 1, 'Roque Pérez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(119, 1, 'Saavedra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(120, 1, 'Saladillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(121, 1, 'Salliqueló', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(122, 1, 'Salto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(123, 1, 'San Andrés de Giles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(124, 1, 'San Antonio de Areco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(125, 1, 'San Antonio de Padua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(126, 1, 'San Bernardo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(127, 1, 'San Cayetano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(128, 1, 'San Clemente del Tuyú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(129, 1, 'San Nicolás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(130, 1, 'San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(131, 1, 'San Vicente', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(132, 1, 'Santa Teresita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(133, 1, 'Suipacha', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(134, 1, 'Tandil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(135, 1, 'Tapalqué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(136, 1, 'Tordillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(137, 1, 'Tornquist', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(138, 1, 'Trenque Lauquen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(139, 1, 'Tres Lomas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(140, 1, 'Villa Gesell', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(141, 1, 'Villarino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(142, 1, 'Zárate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(143, 2, '11 de Septiembre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(144, 2, '20 de Junio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(145, 2, '25 de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(146, 2, 'Acassuso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(147, 2, 'Adrogué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(148, 2, 'Aldo Bonzi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(149, 2, 'Área Reserva Cinturón Ecológico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(150, 2, 'Avellaneda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(151, 2, 'Banfield', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(152, 2, 'Barrio Parque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(153, 2, 'Barrio Santa Teresita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(154, 2, 'Beccar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(155, 2, 'Bella Vista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(156, 2, 'Berazategui', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(157, 2, 'Bernal Este', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(158, 2, 'Bernal Oeste', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(159, 2, 'Billinghurst', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(160, 2, 'Boulogne', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(161, 2, 'Burzaco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(162, 2, 'Carapachay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(163, 2, 'Caseros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(164, 2, 'Castelar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(165, 2, 'Churruca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(166, 2, 'Ciudad Evita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(167, 2, 'Ciudad Madero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(168, 2, 'Ciudadela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(169, 2, 'Claypole', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(170, 2, 'Crucecita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(171, 2, 'Dock Sud', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(172, 2, 'Don Bosco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(173, 2, 'Don Orione', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(174, 2, 'El Jagüel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(175, 2, 'El Libertador', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(176, 2, 'El Palomar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(177, 2, 'El Tala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(178, 2, 'El Trébol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(179, 2, 'Ezeiza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(180, 2, 'Ezpeleta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(181, 2, 'Florencio Varela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(182, 2, 'Florida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(183, 2, 'Francisco Álvarez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(184, 2, 'Gerli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(185, 2, 'Glew', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(186, 2, 'González Catán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(187, 2, 'Gral. Lamadrid', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(188, 2, 'Grand Bourg', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(189, 2, 'Gregorio de Laferrere', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(190, 2, 'Guillermo Enrique Hudson', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(191, 2, 'Haedo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(192, 2, 'Hurlingham', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(193, 2, 'Ing. Sourdeaux', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(194, 2, 'Isidro Casanova', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(195, 2, 'Ituzaingó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(196, 2, 'José C. Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(197, 2, 'José Ingenieros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(198, 2, 'José Marmol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(199, 2, 'La Lucila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(200, 2, 'La Reja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(201, 2, 'La Tablada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(202, 2, 'Lanús', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(203, 2, 'Llavallol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(204, 2, 'Loma Hermosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(205, 2, 'Lomas de Zamora', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(206, 2, 'Lomas del Millón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(207, 2, 'Lomas del Mirador', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(208, 2, 'Longchamps', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(209, 2, 'Los Polvorines', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(210, 2, 'Luis Guillón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(211, 2, 'Malvinas Argentinas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(212, 2, 'Martín Coronado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(213, 2, 'Martínez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(214, 2, 'Merlo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(215, 2, 'Ministro Rivadavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(216, 2, 'Monte Chingolo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(217, 2, 'Monte Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(218, 2, 'Moreno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(219, 2, 'Morón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(220, 2, 'Muñiz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(221, 2, 'Olivos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(222, 2, 'Pablo Nogués', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(223, 2, 'Pablo Podestá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(224, 2, 'Paso del Rey', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(225, 2, 'Pereyra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(226, 2, 'Piñeiro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(227, 2, 'Plátanos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(228, 2, 'Pontevedra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(229, 2, 'Quilmes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(230, 2, 'Rafael Calzada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(231, 2, 'Rafael Castillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(232, 2, 'Ramos Mejía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(233, 2, 'Ranelagh', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(234, 2, 'Remedios de Escalada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(235, 2, 'Sáenz Peña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(236, 2, 'San Antonio de Padua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(237, 2, 'San Fernando', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(238, 2, 'San Francisco Solano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(239, 2, 'San Isidro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(240, 2, 'San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(241, 2, 'San Justo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(242, 2, 'San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(243, 2, 'San Miguel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(244, 2, 'Santos Lugares', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(245, 2, 'Sarandí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(246, 2, 'Sourigues', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(247, 2, 'Tapiales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(248, 2, 'Temperley', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(249, 2, 'Tigre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(250, 2, 'Tortuguitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(251, 2, 'Tristán Suárez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(252, 2, 'Trujui', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(253, 2, 'Turdera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(254, 2, 'Valentín Alsina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(255, 2, 'Vicente López', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(256, 2, 'Villa Adelina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(257, 2, 'Villa Ballester', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(258, 2, 'Villa Bosch', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(259, 2, 'Villa Caraza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(260, 2, 'Villa Celina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(261, 2, 'Villa Centenario', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(262, 2, 'Villa de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(263, 2, 'Villa Diamante', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(264, 2, 'Villa Domínico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(265, 2, 'Villa España', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(266, 2, 'Villa Fiorito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(267, 2, 'Villa Guillermina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(268, 2, 'Villa Insuperable', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(269, 2, 'Villa José León Suárez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(270, 2, 'Villa La Florida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(271, 2, 'Villa Luzuriaga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(272, 2, 'Villa Martelli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(273, 2, 'Villa Obrera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(274, 2, 'Villa Progreso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(275, 2, 'Villa Raffo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(276, 2, 'Villa Sarmiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(277, 2, 'Villa Tesei', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(278, 2, 'Villa Udaondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(279, 2, 'Virrey del Pino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(280, 2, 'Wilde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(281, 2, 'William Morris', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(282, 3, 'Agronomía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(283, 3, 'Almagro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(284, 3, 'Balvanera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(285, 3, 'Barracas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(286, 3, 'Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(287, 3, 'Boca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(288, 3, 'Boedo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(289, 3, 'Caballito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(290, 3, 'Chacarita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(291, 3, 'Coghlan', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(292, 3, 'Colegiales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(293, 3, 'Constitución', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(294, 3, 'Flores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(295, 3, 'Floresta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(296, 3, 'La Paternal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(297, 3, 'Liniers', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(298, 3, 'Mataderos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(299, 3, 'Monserrat', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(300, 3, 'Monte Castro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(301, 3, 'Nueva Pompeya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(302, 3, 'Núñez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(303, 3, 'Palermo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(304, 3, 'Parque Avellaneda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(305, 3, 'Parque Chacabuco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(306, 3, 'Parque Chas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(307, 3, 'Parque Patricios', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(308, 3, 'Puerto Madero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(309, 3, 'Recoleta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(310, 3, 'Retiro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(311, 3, 'Saavedra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(312, 3, 'San Cristóbal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(313, 3, 'San Nicolás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(314, 3, 'San Telmo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(315, 3, 'Vélez Sársfield', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(316, 3, 'Versalles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(317, 3, 'Villa Crespo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(318, 3, 'Villa del Parque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(319, 3, 'Villa Devoto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(320, 3, 'Villa Gral. Mitre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(321, 3, 'Villa Lugano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(322, 3, 'Villa Luro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(323, 3, 'Villa Ortúzar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(324, 3, 'Villa Pueyrredón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(325, 3, 'Villa Real', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(326, 3, 'Villa Riachuelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(327, 3, 'Villa Santa Rita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(328, 3, 'Villa Soldati', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(329, 3, 'Villa Urquiza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(330, 4, 'Aconquija', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(331, 4, 'Ancasti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(332, 4, 'Andalgalá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(333, 4, 'Antofagasta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(334, 4, 'Belén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(335, 4, 'Capayán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(336, 4, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(338, 4, 'Corral Quemado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(339, 4, 'El Alto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(340, 4, 'El Rodeo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(341, 4, 'F.Mamerto Esquiú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(342, 4, 'Fiambalá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(343, 4, 'Hualfín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(344, 4, 'Huillapima', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(345, 4, 'Icaño', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(346, 4, 'La Puerta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(347, 4, 'Las Juntas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(348, 4, 'Londres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(349, 4, 'Los Altos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(350, 4, 'Los Varela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(351, 4, 'Mutquín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(352, 4, 'Paclín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(353, 4, 'Poman', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(354, 4, 'Pozo de La Piedra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(355, 4, 'Puerta de Corral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(356, 4, 'Puerta San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(357, 4, 'Recreo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(358, 4, 'S.F.V de 4', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(359, 4, 'San Fernando', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(360, 4, 'San Fernando del Valle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(361, 4, 'San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(362, 4, 'Santa María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(363, 4, 'Santa Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(364, 4, 'Saujil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(365, 4, 'Tapso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(366, 4, 'Tinogasta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(367, 4, 'Valle Viejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(368, 4, 'Villa Vil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(369, 5, 'Aviá Teraí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(370, 5, 'Barranqueras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(371, 5, 'Basail', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(372, 5, 'Campo Largo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(373, 5, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(374, 5, 'Capitán Solari', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(375, 5, 'Charadai', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(376, 5, 'Charata', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(377, 5, 'Chorotis', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(378, 5, 'Ciervo Petiso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(379, 5, 'Cnel. Du Graty', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(380, 5, 'Col. Benítez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(381, 5, 'Col. Elisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(382, 5, 'Col. Popular', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(383, 5, 'Colonias Unidas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(384, 5, 'Concepción', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(385, 5, 'Corzuela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(386, 5, 'Cote Lai', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(387, 5, 'El Sauzalito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(388, 5, 'Enrique Urien', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(389, 5, 'Fontana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(390, 5, 'Fte. Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(391, 5, 'Gancedo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(392, 5, 'Gral. Capdevila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(393, 5, 'Gral. Pinero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(394, 5, 'Gral. San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(395, 5, 'Gral. Vedia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(396, 5, 'Hermoso Campo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(397, 5, 'I. del Cerrito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(398, 5, 'J.J. Castelli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(399, 5, 'La Clotilde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(400, 5, 'La Eduvigis', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(401, 5, 'La Escondida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(402, 5, 'La Leonesa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(403, 5, 'La Tigra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(404, 5, 'La Verde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(405, 5, 'Laguna Blanca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(406, 5, 'Laguna Limpia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(407, 5, 'Lapachito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(408, 5, 'Las Breñas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(409, 5, 'Las Garcitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(410, 5, 'Las Palmas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(411, 5, 'Los Frentones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(412, 5, 'Machagai', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(413, 5, 'Makallé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(414, 5, 'Margarita Belén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(415, 5, 'Miraflores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(416, 5, 'Misión N. Pompeya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(417, 5, 'Napenay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(418, 5, 'Pampa Almirón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(419, 5, 'Pampa del Indio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(420, 5, 'Pampa del Infierno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(421, 5, 'Pdcia. de La Plaza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(422, 5, 'Pdcia. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(423, 5, 'Pdcia. Roque Sáenz Peña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(424, 5, 'Pto. Bermejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(425, 5, 'Pto. Eva Perón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(426, 5, 'Puero Tirol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(427, 5, 'Puerto Vilelas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(428, 5, 'Quitilipi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(429, 5, 'Resistencia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(430, 5, 'Sáenz Peña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(431, 5, 'Samuhú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(432, 5, 'San Bernardo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(433, 5, 'Santa Sylvina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(434, 5, 'Taco Pozo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(435, 5, 'Tres Isletas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(436, 5, 'Villa Ángela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(437, 5, 'Villa Berthet', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(438, 5, 'Villa R. Bermejito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(439, 6, 'Aldea Apeleg', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(440, 6, 'Aldea Beleiro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(441, 6, 'Aldea Epulef', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(442, 6, 'Alto Río Sengerr', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(443, 6, 'Buen Pasto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(444, 6, 'Camarones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(445, 6, 'Carrenleufú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(446, 6, 'Cholila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(447, 6, 'Co. Centinela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(448, 6, 'Colan Conhué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(449, 6, 'Comodoro Rivadavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(450, 6, 'Corcovado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(451, 6, 'Cushamen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(452, 6, 'Dique F. Ameghino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(453, 6, 'Dolavón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(454, 6, 'Dr. R. Rojas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(455, 6, 'El Hoyo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(456, 6, 'El Maitén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(457, 6, 'Epuyén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(458, 6, 'Esquel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(459, 6, 'Facundo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(460, 6, 'Gaimán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(461, 6, 'Gan Gan', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(462, 6, 'Gastre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(463, 6, 'Gdor. Costa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(464, 6, 'Gualjaina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(465, 6, 'J. de San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(466, 6, 'Lago Blanco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(467, 6, 'Lago Puelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(468, 6, 'Lagunita Salada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(469, 6, 'Las Plumas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(470, 6, 'Los Altares', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(471, 6, 'Paso de los Indios', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(472, 6, 'Paso del Sapo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(473, 6, 'Pto. Madryn', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(474, 6, 'Pto. Pirámides', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(475, 6, 'Rada Tilly', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(476, 6, 'Rawson', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(477, 6, 'Río Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(478, 6, 'Río Pico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(479, 6, 'Sarmiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(480, 6, 'Tecka', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(481, 6, 'Telsen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(482, 6, 'Trelew', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(483, 6, 'Trevelin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(484, 6, 'Veintiocho de Julio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(485, 7, 'Achiras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(486, 7, 'Adelia Maria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(487, 7, 'Agua de Oro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(488, 7, 'Alcira Gigena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(489, 7, 'Aldea Santa Maria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(490, 7, 'Alejandro Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(491, 7, 'Alejo Ledesma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(492, 7, 'Alicia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(493, 7, 'Almafuerte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(494, 7, 'Alpa Corral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(495, 7, 'Alta Gracia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(496, 7, 'Alto Alegre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(497, 7, 'Alto de Los Quebrachos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(498, 7, 'Altos de Chipion', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(499, 7, 'Amboy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(500, 7, 'Ambul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(501, 7, 'Ana Zumaran', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(502, 7, 'Anisacate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(503, 7, 'Arguello', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(504, 7, 'Arias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(505, 7, 'Arroyito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(506, 7, 'Arroyo Algodon', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(507, 7, 'Arroyo Cabral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(508, 7, 'Arroyo Los Patos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(509, 7, 'Assunta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(510, 7, 'Atahona', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(511, 7, 'Ausonia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(512, 7, 'Avellaneda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(513, 7, 'Ballesteros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(514, 7, 'Ballesteros Sud', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(515, 7, 'Balnearia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(516, 7, 'Bañado de Soto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(517, 7, 'Bell Ville', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(518, 7, 'Bengolea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(519, 7, 'Benjamin Gould', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(520, 7, 'Berrotaran', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(521, 7, 'Bialet Masse', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(522, 7, 'Bouwer', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(523, 7, 'Brinkmann', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(524, 7, 'Buchardo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(525, 7, 'Bulnes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(526, 7, 'Cabalango', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(527, 7, 'Calamuchita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(528, 7, 'Calchin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(529, 7, 'Calchin Oeste', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(530, 7, 'Calmayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(531, 7, 'Camilo Aldao', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(532, 7, 'Caminiaga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(533, 7, 'Cañada de Luque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(534, 7, 'Cañada de Machado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(535, 7, 'Cañada de Rio Pinto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(536, 7, 'Cañada del Sauce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(537, 7, 'Canals', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(538, 7, 'Candelaria Sud', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(539, 7, 'Capilla de Remedios', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(540, 7, 'Capilla de Siton', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(541, 7, 'Capilla del Carmen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(542, 7, 'Capilla del Monte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(543, 7, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(544, 7, 'Capitan Gral B. O´Higgins', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(545, 7, 'Carnerillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(546, 7, 'Carrilobo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(547, 7, 'Casa Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(548, 7, 'Cavanagh', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(549, 7, 'Cerro Colorado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(550, 7, 'Chaján', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(551, 7, 'Chalacea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(552, 7, 'Chañar Viejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(553, 7, 'Chancaní', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(554, 7, 'Charbonier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(555, 7, 'Charras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(556, 7, 'Chazón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(557, 7, 'Chilibroste', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(558, 7, 'Chucul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(559, 7, 'Chuña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(560, 7, 'Chuña Huasi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(561, 7, 'Churqui Cañada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(562, 7, 'Cienaga Del Coro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(563, 7, 'Cintra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(564, 7, 'Col. Almada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(565, 7, 'Col. Anita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(566, 7, 'Col. Barge', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(567, 7, 'Col. Bismark', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(568, 7, 'Col. Bremen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(569, 7, 'Col. Caroya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(570, 7, 'Col. Italiana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(571, 7, 'Col. Iturraspe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(572, 7, 'Col. Las Cuatro Esquinas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(573, 7, 'Col. Las Pichanas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(574, 7, 'Col. Marina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(575, 7, 'Col. Prosperidad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(576, 7, 'Col. San Bartolome', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(577, 7, 'Col. San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(578, 7, 'Col. Tirolesa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(579, 7, 'Col. Vicente Aguero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(580, 7, 'Col. Videla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(581, 7, 'Col. Vignaud', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(582, 7, 'Col. Waltelina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(583, 7, 'Colazo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(584, 7, 'Comechingones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(585, 7, 'Conlara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(586, 7, 'Copacabana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(588, 7, 'Coronel Baigorria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(589, 7, 'Coronel Moldes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(590, 7, 'Corral de Bustos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(591, 7, 'Corralito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(592, 7, 'Cosquín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(593, 7, 'Costa Sacate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(594, 7, 'Cruz Alta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(595, 7, 'Cruz de Caña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(596, 7, 'Cruz del Eje', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(597, 7, 'Cuesta Blanca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(598, 7, 'Dean Funes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(599, 7, 'Del Campillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(600, 7, 'Despeñaderos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(601, 7, 'Devoto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(602, 7, 'Diego de Rojas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(603, 7, 'Dique Chico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(604, 7, 'El Arañado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(605, 7, 'El Brete', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(606, 7, 'El Chacho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(607, 7, 'El Crispín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(608, 7, 'El Fortín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(609, 7, 'El Manzano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(610, 7, 'El Rastreador', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(611, 7, 'El Rodeo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(612, 7, 'El Tío', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(613, 7, 'Elena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(614, 7, 'Embalse', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(615, 7, 'Esquina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(616, 7, 'Estación Gral. Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(617, 7, 'Estación Juárez Celman', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(618, 7, 'Estancia de Guadalupe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(619, 7, 'Estancia Vieja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(620, 7, 'Etruria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(621, 7, 'Eufrasio Loza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(622, 7, 'Falda del Carmen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(623, 7, 'Freyre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(624, 7, 'Gral. Baldissera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(625, 7, 'Gral. Cabrera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(626, 7, 'Gral. Deheza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(627, 7, 'Gral. Fotheringham', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(628, 7, 'Gral. Levalle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(629, 7, 'Gral. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(630, 7, 'Guanaco Muerto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(631, 7, 'Guasapampa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(632, 7, 'Guatimozin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(633, 7, 'Gutenberg', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(634, 7, 'Hernando', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(635, 7, 'Huanchillas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(636, 7, 'Huerta Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(637, 7, 'Huinca Renanco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(638, 7, 'Idiazabal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(639, 7, 'Impira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(640, 7, 'Inriville', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(641, 7, 'Isla Verde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(642, 7, 'Italó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(643, 7, 'James Craik', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(644, 7, 'Jesús María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(645, 7, 'Jovita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(646, 7, 'Justiniano Posse', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(647, 7, 'Km 658', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(648, 7, 'L. V. Mansilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(649, 7, 'La Batea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(650, 7, 'La Calera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(651, 7, 'La Carlota', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(652, 7, 'La Carolina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(653, 7, 'La Cautiva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(654, 7, 'La Cesira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(655, 7, 'La Cruz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(656, 7, 'La Cumbre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(657, 7, 'La Cumbrecita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(658, 7, 'La Falda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(659, 7, 'La Francia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(660, 7, 'La Granja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(661, 7, 'La Higuera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(662, 7, 'La Laguna', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(663, 7, 'La Paisanita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(664, 7, 'La Palestina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(666, 7, 'La Paquita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(667, 7, 'La Para', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(668, 7, 'La Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(669, 7, 'La Playa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(670, 7, 'La Playosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(671, 7, 'La Población', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(672, 7, 'La Posta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(673, 7, 'La Puerta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(674, 7, 'La Quinta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(675, 7, 'La Rancherita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(676, 7, 'La Rinconada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(677, 7, 'La Serranita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(678, 7, 'La Tordilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(679, 7, 'Laborde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(680, 7, 'Laboulaye', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(681, 7, 'Laguna Larga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(682, 7, 'Las Acequias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(683, 7, 'Las Albahacas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(684, 7, 'Las Arrias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(685, 7, 'Las Bajadas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(686, 7, 'Las Caleras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(687, 7, 'Las Calles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(688, 7, 'Las Cañadas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(689, 7, 'Las Gramillas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(690, 7, 'Las Higueras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(691, 7, 'Las Isletillas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(692, 7, 'Las Junturas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(693, 7, 'Las Palmas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(694, 7, 'Las Peñas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(695, 7, 'Las Peñas Sud', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(696, 7, 'Las Perdices', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(697, 7, 'Las Playas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(698, 7, 'Las Rabonas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(699, 7, 'Las Saladas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(700, 7, 'Las Tapias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(701, 7, 'Las Varas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(702, 7, 'Las Varillas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(703, 7, 'Las Vertientes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(704, 7, 'Leguizamón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(705, 7, 'Leones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(706, 7, 'Los Cedros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(707, 7, 'Los Cerrillos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(708, 7, 'Los Chañaritos (C.E)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(709, 7, 'Los Chanaritos (R.S)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(710, 7, 'Los Cisnes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(711, 7, 'Los Cocos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(712, 7, 'Los Cóndores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(713, 7, 'Los Hornillos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(714, 7, 'Los Hoyos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(715, 7, 'Los Mistoles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(716, 7, 'Los Molinos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(717, 7, 'Los Pozos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(718, 7, 'Los Reartes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(719, 7, 'Los Surgentes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(720, 7, 'Los Talares', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(721, 7, 'Los Zorros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(722, 7, 'Lozada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(723, 7, 'Luca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(724, 7, 'Luque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(725, 7, 'Luyaba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(726, 7, 'Malagueño', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(727, 7, 'Malena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(728, 7, 'Malvinas Argentinas', '2017-03-15 03:00:00', '2017-03-15 03:00:00');
INSERT INTO `localidades` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(729, 7, 'Manfredi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(730, 7, 'Maquinista Gallini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(731, 7, 'Marcos Juárez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(732, 7, 'Marull', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(733, 7, 'Matorrales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(734, 7, 'Mattaldi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(735, 7, 'Mayu Sumaj', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(736, 7, 'Media Naranja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(737, 7, 'Melo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(738, 7, 'Mendiolaza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(739, 7, 'Mi Granja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(740, 7, 'Mina Clavero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(741, 7, 'Miramar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(742, 7, 'Morrison', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(743, 7, 'Morteros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(744, 7, 'Mte. Buey', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(745, 7, 'Mte. Cristo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(746, 7, 'Mte. De Los Gauchos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(747, 7, 'Mte. Leña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(748, 7, 'Mte. Maíz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(749, 7, 'Mte. Ralo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(750, 7, 'Nicolás Bruzone', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(751, 7, 'Noetinger', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(752, 7, 'Nono', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(753, 7, 'Nueva 7', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(754, 7, 'Obispo Trejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(755, 7, 'Olaeta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(756, 7, 'Oliva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(757, 7, 'Olivares San Nicolás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(758, 7, 'Onagolty', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(759, 7, 'Oncativo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(760, 7, 'Ordoñez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(761, 7, 'Pacheco De Melo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(762, 7, 'Pampayasta N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(763, 7, 'Pampayasta S.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(764, 7, 'Panaholma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(765, 7, 'Pascanas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(766, 7, 'Pasco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(767, 7, 'Paso del Durazno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(768, 7, 'Paso Viejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(769, 7, 'Pilar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(770, 7, 'Pincén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(771, 7, 'Piquillín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(772, 7, 'Plaza de Mercedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(773, 7, 'Plaza Luxardo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(774, 7, 'Porteña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(775, 7, 'Potrero de Garay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(776, 7, 'Pozo del Molle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(777, 7, 'Pozo Nuevo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(778, 7, 'Pueblo Italiano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(779, 7, 'Puesto de Castro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(780, 7, 'Punta del Agua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(781, 7, 'Quebracho Herrado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(782, 7, 'Quilino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(783, 7, 'Rafael García', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(784, 7, 'Ranqueles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(785, 7, 'Rayo Cortado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(786, 7, 'Reducción', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(787, 7, 'Rincón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(788, 7, 'Río Bamba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(789, 7, 'Río Ceballos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(790, 7, 'Río Cuarto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(791, 7, 'Río de Los Sauces', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(792, 7, 'Río Primero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(793, 7, 'Río Segundo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(794, 7, 'Río Tercero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(795, 7, 'Rosales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(796, 7, 'Rosario del Saladillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(797, 7, 'Sacanta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(798, 7, 'Sagrada Familia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(799, 7, 'Saira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(800, 7, 'Saladillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(801, 7, 'Saldán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(802, 7, 'Salsacate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(803, 7, 'Salsipuedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(804, 7, 'Sampacho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(805, 7, 'San Agustín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(806, 7, 'San Antonio de Arredondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(807, 7, 'San Antonio de Litín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(808, 7, 'San Basilio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(809, 7, 'San Carlos Minas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(810, 7, 'San Clemente', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(811, 7, 'San Esteban', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(812, 7, 'San Francisco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(813, 7, 'San Ignacio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(814, 7, 'San Javier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(815, 7, 'San Jerónimo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(816, 7, 'San Joaquín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(817, 7, 'San José de La Dormida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(818, 7, 'San José de Las Salinas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(819, 7, 'San Lorenzo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(820, 7, 'San Marcos Sierras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(821, 7, 'San Marcos Sud', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(822, 7, 'San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(823, 7, 'San Pedro N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(824, 7, 'San Roque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(825, 7, 'San Vicente', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(826, 7, 'Santa Catalina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(827, 7, 'Santa Elena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(828, 7, 'Santa Eufemia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(829, 7, 'Santa Maria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(830, 7, 'Sarmiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(831, 7, 'Saturnino M.Laspiur', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(832, 7, 'Sauce Arriba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(833, 7, 'Sebastián Elcano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(834, 7, 'Seeber', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(835, 7, 'Segunda Usina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(836, 7, 'Serrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(837, 7, 'Serrezuela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(838, 7, 'Sgo. Temple', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(839, 7, 'Silvio Pellico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(840, 7, 'Simbolar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(841, 7, 'Sinsacate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(842, 7, 'Sta. Rosa de Calamuchita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(843, 7, 'Sta. Rosa de Río Primero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(844, 7, 'Suco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(845, 7, 'Tala Cañada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(846, 7, 'Tala Huasi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(847, 7, 'Talaini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(848, 7, 'Tancacha', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(849, 7, 'Tanti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(850, 7, 'Ticino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(851, 7, 'Tinoco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(852, 7, 'Tío Pujio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(853, 7, 'Toledo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(854, 7, 'Toro Pujio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(855, 7, 'Tosno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(856, 7, 'Tosquita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(857, 7, 'Tránsito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(858, 7, 'Tuclame', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(859, 7, 'Tutti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(860, 7, 'Ucacha', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(861, 7, 'Unquillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(862, 7, 'Valle de Anisacate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(863, 7, 'Valle Hermoso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(864, 7, 'Vélez Sarfield', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(865, 7, 'Viamonte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(866, 7, 'Vicuña Mackenna', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(867, 7, 'Villa Allende', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(868, 7, 'Villa Amancay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(869, 7, 'Villa Ascasubi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(870, 7, 'Villa Candelaria N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(871, 7, 'Villa Carlos Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(872, 7, 'Villa Cerro Azul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(873, 7, 'Villa Ciudad de América', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(874, 7, 'Villa Ciudad Pque Los Reartes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(875, 7, 'Villa Concepción del Tío', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(876, 7, 'Villa Cura Brochero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(877, 7, 'Villa de Las Rosas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(878, 7, 'Villa de María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(879, 7, 'Villa de Pocho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(880, 7, 'Villa de Soto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(881, 7, 'Villa del Dique', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(882, 7, 'Villa del Prado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(883, 7, 'Villa del Rosario', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(884, 7, 'Villa del Totoral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(885, 7, 'Villa Dolores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(886, 7, 'Villa El Chancay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(887, 7, 'Villa Elisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(888, 7, 'Villa Flor Serrana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(889, 7, 'Villa Fontana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(890, 7, 'Villa Giardino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(891, 7, 'Villa Gral. Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(892, 7, 'Villa Gutierrez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(893, 7, 'Villa Huidobro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(894, 7, 'Villa La Bolsa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(895, 7, 'Villa Los Aromos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(896, 7, 'Villa Los Patos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(897, 7, 'Villa María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(898, 7, 'Villa Nueva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(899, 7, 'Villa Pque. Santa Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(900, 7, 'Villa Pque. Siquiman', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(901, 7, 'Villa Quillinzo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(902, 7, 'Villa Rossi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(903, 7, 'Villa Rumipal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(904, 7, 'Villa San Esteban', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(905, 7, 'Villa San Isidro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(906, 7, 'Villa 21', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(907, 7, 'Villa Sarmiento (G.R)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(908, 7, 'Villa Sarmiento (S.A)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(909, 7, 'Villa Tulumba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(910, 7, 'Villa Valeria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(911, 7, 'Villa Yacanto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(912, 7, 'Washington', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(913, 7, 'Wenceslao Escalante', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(914, 7, 'Ycho Cruz Sierras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(915, 8, 'Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(916, 8, 'Bella Vista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(917, 8, 'Berón de Astrada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(918, 8, 'Bonpland', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(919, 8, 'Caá Cati', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(920, 8, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(921, 8, 'Chavarría', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(922, 8, 'Col. C. Pellegrini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(923, 8, 'Col. Libertad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(924, 8, 'Col. Liebig', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(925, 8, 'Col. Sta Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(926, 8, 'Concepción', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(927, 8, 'Cruz de Los Milagros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(928, 8, 'Curuzú-Cuatiá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(929, 8, 'Empedrado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(930, 8, 'Esquina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(931, 8, 'Estación Torrent', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(932, 8, 'Felipe Yofré', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(933, 8, 'Garruchos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(934, 8, 'Gdor. Agrónomo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(935, 8, 'Gdor. Martínez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(936, 8, 'Goya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(937, 8, 'Guaviravi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(938, 8, 'Herlitzka', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(939, 8, 'Ita-Ibate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(940, 8, 'Itatí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(941, 8, 'Ituzaingó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(942, 8, 'José Rafael Gómez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(943, 8, 'Juan Pujol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(944, 8, 'La Cruz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(945, 8, 'Lavalle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(946, 8, 'Lomas de Vallejos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(947, 8, 'Loreto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(948, 8, 'Mariano I. Loza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(949, 8, 'Mburucuyá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(950, 8, 'Mercedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(951, 8, 'Mocoretá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(952, 8, 'Mte. Caseros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(953, 8, 'Nueve de Julio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(954, 8, 'Palmar Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(955, 8, 'Parada Pucheta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(956, 8, 'Paso de La Patria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(957, 8, 'Paso de Los Libres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(958, 8, 'Pedro R. Fernandez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(959, 8, 'Perugorría', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(960, 8, 'Pueblo Libertador', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(961, 8, 'Ramada Paso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(962, 8, 'Riachuelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(963, 8, 'Saladas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(964, 8, 'San Antonio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(965, 8, 'San Carlos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(966, 8, 'San Cosme', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(967, 8, 'San Lorenzo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(968, 8, '20 del Palmar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(969, 8, 'San Miguel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(970, 8, 'San Roque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(971, 8, 'Santa Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(972, 8, 'Santa Lucía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(973, 8, 'Santo Tomé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(974, 8, 'Sauce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(975, 8, 'Tabay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(976, 8, 'Tapebicuá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(977, 8, 'Tatacua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(978, 8, 'Virasoro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(979, 8, 'Yapeyú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(980, 8, 'Yataití Calle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(981, 9, 'Alarcón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(982, 9, 'Alcaraz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(983, 9, 'Alcaraz N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(984, 9, 'Alcaraz S.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(985, 9, 'Aldea Asunción', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(986, 9, 'Aldea Brasilera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(987, 9, 'Aldea Elgenfeld', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(988, 9, 'Aldea Grapschental', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(989, 9, 'Aldea Ma. Luisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(990, 9, 'Aldea Protestante', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(991, 9, 'Aldea Salto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(992, 9, 'Aldea San Antonio (G)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(993, 9, 'Aldea San Antonio (P)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(994, 9, 'Aldea 19', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(995, 9, 'Aldea San Miguel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(996, 9, 'Aldea San Rafael', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(997, 9, 'Aldea Spatzenkutter', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(998, 9, 'Aldea Sta. María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(999, 9, 'Aldea Sta. Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1000, 9, 'Aldea Valle María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1001, 9, 'Altamirano Sur', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1002, 9, 'Antelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1003, 9, 'Antonio Tomás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1004, 9, 'Aranguren', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1005, 9, 'Arroyo Barú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1006, 9, 'Arroyo Burgos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1007, 9, 'Arroyo Clé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1008, 9, 'Arroyo Corralito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1009, 9, 'Arroyo del Medio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1010, 9, 'Arroyo Maturrango', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1011, 9, 'Arroyo Palo Seco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1012, 9, 'Banderas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1013, 9, 'Basavilbaso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1014, 9, 'Betbeder', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1015, 9, 'Bovril', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1016, 9, 'Caseros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1017, 9, 'Ceibas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1018, 9, 'Cerrito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1019, 9, 'Chajarí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1020, 9, 'Chilcas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1021, 9, 'Clodomiro Ledesma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1022, 9, 'Col. Alemana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1023, 9, 'Col. Avellaneda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1024, 9, 'Col. Avigdor', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1025, 9, 'Col. Ayuí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1026, 9, 'Col. Baylina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1027, 9, 'Col. Carrasco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1028, 9, 'Col. Celina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1029, 9, 'Col. Cerrito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1030, 9, 'Col. Crespo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1031, 9, 'Col. Elia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1032, 9, 'Col. Ensayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1033, 9, 'Col. Gral. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1034, 9, 'Col. La Argentina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1035, 9, 'Col. Merou', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1036, 9, 'Col. Oficial Nª3', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1037, 9, 'Col. Oficial Nº13', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1038, 9, 'Col. Oficial Nº14', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1039, 9, 'Col. Oficial Nº5', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1040, 9, 'Col. Reffino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1041, 9, 'Col. Tunas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1042, 9, 'Col. Viraró', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1043, 9, 'Colón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1044, 9, 'Concepción del Uruguay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1045, 9, 'Concordia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1046, 9, 'Conscripto Bernardi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1047, 9, 'Costa Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1048, 9, 'Costa San Antonio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1049, 9, 'Costa Uruguay N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1050, 9, 'Costa Uruguay S.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1051, 9, 'Crespo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1052, 9, 'Crucecitas 3ª', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1053, 9, 'Crucecitas 7ª', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1054, 9, 'Crucecitas 8ª', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1055, 9, 'Cuchilla Redonda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1056, 9, 'Curtiembre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1057, 9, 'Diamante', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1058, 9, 'Distrito 6º', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1059, 9, 'Distrito Chañar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1060, 9, 'Distrito Chiqueros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1061, 9, 'Distrito Cuarto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1062, 9, 'Distrito Diego López', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1063, 9, 'Distrito Pajonal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1064, 9, 'Distrito Sauce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1065, 9, 'Distrito Tala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1066, 9, 'Distrito Talitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1067, 9, 'Don Cristóbal 1ª Sección', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1068, 9, 'Don Cristóbal 2ª Sección', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1069, 9, 'Durazno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1070, 9, 'El Cimarrón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1071, 9, 'El Gramillal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1072, 9, 'El Palenque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1073, 9, 'El Pingo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1074, 9, 'El Quebracho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1075, 9, 'El Redomón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1076, 9, 'El Solar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1077, 9, 'Enrique Carbo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1079, 9, 'Espinillo N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1080, 9, 'Estación Campos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1081, 9, 'Estación Escriña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1082, 9, 'Estación Lazo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1083, 9, 'Estación Raíces', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1084, 9, 'Estación Yerúa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1085, 9, 'Estancia Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1086, 9, 'Estancia Líbaros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1087, 9, 'Estancia Racedo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1088, 9, 'Estancia Solá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1089, 9, 'Estancia Yuquerí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1090, 9, 'Estaquitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1091, 9, 'Faustino M. Parera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1092, 9, 'Febre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1093, 9, 'Federación', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1094, 9, 'Federal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1095, 9, 'Gdor. Echagüe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1096, 9, 'Gdor. Mansilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1097, 9, 'Gilbert', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1098, 9, 'González Calderón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1099, 9, 'Gral. Almada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1100, 9, 'Gral. Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1101, 9, 'Gral. Campos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1102, 9, 'Gral. Galarza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1103, 9, 'Gral. Ramírez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1104, 9, 'Gualeguay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1105, 9, 'Gualeguaychú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1106, 9, 'Gualeguaycito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1107, 9, 'Guardamonte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1108, 9, 'Hambis', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1109, 9, 'Hasenkamp', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1110, 9, 'Hernandarias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1111, 9, 'Hernández', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1112, 9, 'Herrera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1113, 9, 'Hinojal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1114, 9, 'Hocker', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1115, 9, 'Ing. Sajaroff', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1116, 9, 'Irazusta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1117, 9, 'Isletas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1118, 9, 'J.J De Urquiza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1119, 9, 'Jubileo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1120, 9, 'La Clarita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1121, 9, 'La Criolla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1122, 9, 'La Esmeralda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1123, 9, 'La Florida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1124, 9, 'La Fraternidad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1125, 9, 'La Hierra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1126, 9, 'La Ollita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1127, 9, 'La Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1128, 9, 'La Picada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1129, 9, 'La Providencia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1130, 9, 'La Verbena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1131, 9, 'Laguna Benítez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1132, 9, 'Larroque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1133, 9, 'Las Cuevas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1134, 9, 'Las Garzas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1135, 9, 'Las Guachas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1136, 9, 'Las Mercedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1137, 9, 'Las Moscas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1138, 9, 'Las Mulitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1139, 9, 'Las Toscas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1140, 9, 'Laurencena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1141, 9, 'Libertador San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1142, 9, 'Loma Limpia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1143, 9, 'Los Ceibos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1144, 9, 'Los Charruas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1145, 9, 'Los Conquistadores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1146, 9, 'Lucas González', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1147, 9, 'Lucas N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1148, 9, 'Lucas S. 1ª', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1149, 9, 'Lucas S. 2ª', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1150, 9, 'Maciá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1151, 9, 'María Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1152, 9, 'María Grande 2ª', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1153, 9, 'Médanos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1154, 9, 'Mojones N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1155, 9, 'Mojones S.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1156, 9, 'Molino Doll', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1157, 9, 'Monte Redondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1158, 9, 'Montoya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1159, 9, 'Mulas Grandes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1160, 9, 'Ñancay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1161, 9, 'Nogoyá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1162, 9, 'Nueva Escocia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1163, 9, 'Nueva Vizcaya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1164, 9, 'Ombú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1165, 9, 'Oro Verde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1166, 9, 'Paraná', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1167, 9, 'Pasaje Guayaquil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1168, 9, 'Pasaje Las Tunas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1169, 9, 'Paso de La Arena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1170, 9, 'Paso de La Laguna', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1171, 9, 'Paso de Las Piedras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1172, 9, 'Paso Duarte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1173, 9, 'Pastor Britos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1174, 9, 'Pedernal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1175, 9, 'Perdices', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1176, 9, 'Picada Berón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1177, 9, 'Piedras Blancas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1178, 9, 'Primer Distrito Cuchilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1179, 9, 'Primero de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1180, 9, 'Pronunciamiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1181, 9, 'Pto. Algarrobo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1182, 9, 'Pto. Ibicuy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1183, 9, 'Pueblo Brugo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1184, 9, 'Pueblo Cazes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1185, 9, 'Pueblo Gral. Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1186, 9, 'Pueblo Liebig', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1187, 9, 'Puerto Yeruá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1188, 9, 'Punta del Monte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1189, 9, 'Quebracho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1190, 9, 'Quinto Distrito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1191, 9, 'Raices Oeste', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1192, 9, 'Rincón de Nogoyá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1193, 9, 'Rincón del Cinto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1194, 9, 'Rincón del Doll', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1195, 9, 'Rincón del Gato', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1196, 9, 'Rocamora', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1197, 9, 'Rosario del Tala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1198, 9, 'San Benito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1199, 9, 'San Cipriano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1200, 9, 'San Ernesto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1201, 9, 'San Gustavo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1202, 9, 'San Jaime', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1203, 9, 'San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1204, 9, 'San José de Feliciano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1205, 9, 'San Justo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1206, 9, 'San Marcial', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1207, 9, 'San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1208, 9, 'San Ramírez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1209, 9, 'San Ramón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1210, 9, 'San Roque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1211, 9, 'San Salvador', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1212, 9, 'San Víctor', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1213, 9, 'Santa Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1214, 9, 'Santa Anita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1215, 9, 'Santa Elena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1216, 9, 'Santa Lucía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1217, 9, 'Santa Luisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1218, 9, 'Sauce de Luna', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1219, 9, 'Sauce Montrull', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1220, 9, 'Sauce Pinto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1221, 9, 'Sauce Sur', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1222, 9, 'Seguí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1223, 9, 'Sir Leonard', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1224, 9, 'Sosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1225, 9, 'Tabossi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1226, 9, 'Tezanos Pinto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1227, 9, 'Ubajay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1228, 9, 'Urdinarrain', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1229, 9, 'Veinte de Septiembre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1230, 9, 'Viale', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1231, 9, 'Victoria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1232, 9, 'Villa Clara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1233, 9, 'Villa del Rosario', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1234, 9, 'Villa Domínguez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1235, 9, 'Villa Elisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1236, 9, 'Villa Fontana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1237, 9, 'Villa Gdor. Etchevehere', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1238, 9, 'Villa Mantero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1239, 9, 'Villa Paranacito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1240, 9, 'Villa Urquiza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1241, 9, 'Villaguay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1242, 9, 'Walter Moss', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1243, 9, 'Yacaré', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1244, 9, 'Yeso Oeste', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1245, 10, 'Buena Vista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1246, 10, 'Clorinda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1247, 10, 'Col. Pastoril', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1248, 10, 'Cte. Fontana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1249, 10, 'El Colorado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1250, 10, 'El Espinillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1251, 10, 'Estanislao Del Campo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1253, 10, 'Fortín Lugones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1254, 10, 'Gral. Lucio V. Mansilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1255, 10, 'Gral. Manuel Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1256, 10, 'Gral. Mosconi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1257, 10, 'Gran Guardia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1258, 10, 'Herradura', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1259, 10, 'Ibarreta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1260, 10, 'Ing. Juárez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1261, 10, 'Laguna Blanca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1262, 10, 'Laguna Naick Neck', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1263, 10, 'Laguna Yema', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1264, 10, 'Las Lomitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1265, 10, 'Los Chiriguanos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1266, 10, 'Mayor V. Villafañe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1267, 10, 'Misión San Fco.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1268, 10, 'Palo Santo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1269, 10, 'Pirané', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1270, 10, 'Pozo del Maza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1271, 10, 'Riacho He-He', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1272, 10, 'San Hilario', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1273, 10, 'San Martín II', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1274, 10, 'Siete Palmas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1275, 10, 'Subteniente Perín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1276, 10, 'Tres Lagunas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1277, 10, 'Villa Dos Trece', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1278, 10, 'Villa Escolar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1279, 10, 'Villa Gral. Güemes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1280, 11, 'Abdon Castro Tolay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1281, 11, 'Abra Pampa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1282, 11, 'Abralaite', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1283, 11, 'Aguas Calientes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1284, 11, 'Arrayanal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1285, 11, 'Barrios', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1286, 11, 'Caimancito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1287, 11, 'Calilegua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1288, 11, 'Cangrejillos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1289, 11, 'Caspala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1290, 11, 'Catuá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1291, 11, 'Cieneguillas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1292, 11, 'Coranzulli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1293, 11, 'Cusi-Cusi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1294, 11, 'El Aguilar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1295, 11, 'El Carmen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1296, 11, 'El Cóndor', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1297, 11, 'El Fuerte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1298, 11, 'El Piquete', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1299, 11, 'El Talar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1300, 11, 'Fraile Pintado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1301, 11, 'Hipólito Yrigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1302, 11, 'Huacalera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1303, 11, 'Humahuaca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1304, 11, 'La Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1305, 11, 'La Mendieta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1306, 11, 'La Quiaca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1307, 11, 'Ledesma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1308, 11, 'Libertador Gral. San Martin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1309, 11, 'Maimara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1310, 11, 'Mina Pirquitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1311, 11, 'Monterrico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1312, 11, 'Palma Sola', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1313, 11, 'Palpalá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1314, 11, 'Pampa Blanca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1315, 11, 'Pampichuela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1316, 11, 'Perico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1317, 11, 'Puesto del Marqués', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1318, 11, 'Puesto Viejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1319, 11, 'Pumahuasi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1320, 11, 'Purmamarca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1321, 11, 'Rinconada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1322, 11, 'Rodeitos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1323, 11, 'Rosario de Río Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1324, 11, 'San Antonio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1325, 11, 'San Francisco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1326, 11, 'San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1327, 11, 'San Rafael', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1328, 11, 'San Salvador', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1329, 11, 'Santa Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1330, 11, 'Santa Catalina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1331, 11, 'Santa Clara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1332, 11, 'Susques', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1333, 11, 'Tilcara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1334, 11, 'Tres Cruces', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1335, 11, 'Tumbaya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1336, 11, 'Valle Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1337, 11, 'Vinalito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1338, 11, 'Volcán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1339, 11, 'Yala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1340, 11, 'Yaví', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1341, 11, 'Yuto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1342, 12, 'Abramo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1343, 12, 'Adolfo Van Praet', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1344, 12, 'Agustoni', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1345, 12, 'Algarrobo del Aguila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1346, 12, 'Alpachiri', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1347, 12, 'Alta Italia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1348, 12, 'Anguil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1349, 12, 'Arata', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1350, 12, 'Ataliva Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1351, 12, 'Bernardo Larroude', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1352, 12, 'Bernasconi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1353, 12, 'Caleufú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1354, 12, 'Carro Quemado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1355, 12, 'Catriló', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1356, 12, 'Ceballos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1357, 12, 'Chacharramendi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1358, 12, 'Col. Barón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1359, 12, 'Col. Santa María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1360, 12, 'Conhelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1361, 12, 'Coronel Hilario Lagos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1362, 12, 'Cuchillo-Có', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1363, 12, 'Doblas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1364, 12, 'Dorila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1365, 12, 'Eduardo Castex', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1366, 12, 'Embajador Martini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1367, 12, 'Falucho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1368, 12, 'Gral. Acha', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1369, 12, 'Gral. Manuel Campos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1370, 12, 'Gral. Pico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1371, 12, 'Guatraché', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1372, 12, 'Ing. Luiggi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1373, 12, 'Intendente Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1374, 12, 'Jacinto Arauz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1375, 12, 'La Adela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1376, 12, 'La Humada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1377, 12, 'La Maruja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1379, 12, 'La Reforma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1380, 12, 'Limay Mahuida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1381, 12, 'Lonquimay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1382, 12, 'Loventuel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1383, 12, 'Luan Toro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1384, 12, 'Macachín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1385, 12, 'Maisonnave', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1386, 12, 'Mauricio Mayer', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1387, 12, 'Metileo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1388, 12, 'Miguel Cané', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1389, 12, 'Miguel Riglos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1390, 12, 'Monte Nievas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1391, 12, 'Parera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1392, 12, 'Perú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1393, 12, 'Pichi-Huinca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1394, 12, 'Puelches', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1395, 12, 'Puelén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1396, 12, 'Quehue', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1397, 12, 'Quemú Quemú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1398, 12, 'Quetrequén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1399, 12, 'Rancul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1400, 12, 'Realicó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1401, 12, 'Relmo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1402, 12, 'Rolón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1403, 12, 'Rucanelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1404, 12, 'Sarah', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1405, 12, 'Speluzzi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1406, 12, 'Sta. Isabel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1407, 12, 'Sta. Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1408, 12, 'Sta. Teresa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1409, 12, 'Telén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1410, 12, 'Toay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1411, 12, 'Tomas M. de Anchorena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1412, 12, 'Trenel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1413, 12, 'Unanue', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1414, 12, 'Uriburu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1415, 12, 'Veinticinco de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1416, 12, 'Vertiz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1417, 12, 'Victorica', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1418, 12, 'Villa Mirasol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1419, 12, 'Winifreda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1420, 13, 'Arauco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1421, 13, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1422, 13, 'Castro Barros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1423, 13, 'Chamical', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1424, 13, 'Chilecito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1425, 13, 'Coronel F. Varela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1426, 13, 'Famatina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1427, 13, 'Gral. A.V.Peñaloza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1428, 13, 'Gral. Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1429, 13, 'Gral. J.F. Quiroga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1430, 13, 'Gral. Lamadrid', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1431, 13, 'Gral. Ocampo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1432, 13, 'Gral. San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1433, 13, 'Independencia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1434, 13, 'Rosario Penaloza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1435, 13, 'San Blas de Los Sauces', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1436, 13, 'Sanagasta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1437, 13, 'Vinchina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1438, 14, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00');
INSERT INTO `localidades` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(1439, 14, 'Chacras de Coria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1440, 14, 'Dorrego', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1441, 14, 'Gllen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1442, 14, 'Godoy Cruz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1443, 14, 'Gral. Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1444, 14, 'Guaymallén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1445, 14, 'Junín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1446, 14, 'La Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1447, 14, 'Las Heras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1448, 14, 'Lavalle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1449, 14, 'Luján', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1450, 14, 'Luján De Cuyo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1451, 14, 'Maipú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1452, 14, 'Malargüe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1453, 14, 'Rivadavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1454, 14, 'San Carlos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1455, 14, 'San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1456, 14, 'San Rafael', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1457, 14, 'Sta. Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1458, 14, 'Tunuyán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1459, 14, 'Tupungato', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1460, 14, 'Villa Nueva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1461, 15, 'Alba Posse', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1462, 15, 'Almafuerte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1463, 15, 'Apóstoles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1464, 15, 'Aristóbulo Del Valle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1465, 15, 'Arroyo Del Medio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1466, 15, 'Azara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1467, 15, 'Bdo. De Irigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1468, 15, 'Bonpland', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1469, 15, 'Caá Yari', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1470, 15, 'Campo Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1471, 15, 'Campo Ramón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1472, 15, 'Campo Viera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1473, 15, 'Candelaria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1474, 15, 'Capioví', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1475, 15, 'Caraguatay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1476, 15, 'Cdte. Guacurarí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1477, 15, 'Cerro Azul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1478, 15, 'Cerro Corá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1479, 15, 'Col. Alberdi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1480, 15, 'Col. Aurora', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1481, 15, 'Col. Delicia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1482, 15, 'Col. Polana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1483, 15, 'Col. Victoria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1484, 15, 'Col. Wanda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1485, 15, 'Concepción De La Sierra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1486, 15, 'Corpus', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1487, 15, 'Dos Arroyos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1488, 15, 'Dos de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1489, 15, 'El Alcázar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1490, 15, 'El Dorado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1491, 15, 'El Soberbio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1492, 15, 'Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1493, 15, 'F. Ameghino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1494, 15, 'Fachinal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1495, 15, 'Garuhapé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1496, 15, 'Garupá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1497, 15, 'Gdor. López', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1498, 15, 'Gdor. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1499, 15, 'Gral. Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1500, 15, 'Gral. Urquiza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1501, 15, 'Guaraní', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1502, 15, 'H. Yrigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1503, 15, 'Iguazú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1504, 15, 'Itacaruaré', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1505, 15, 'Jardín América', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1506, 15, 'Leandro N. Alem', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1507, 15, 'Libertad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1508, 15, 'Loreto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1509, 15, 'Los Helechos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1510, 15, 'Mártires', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1512, 15, 'Mojón Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1513, 15, 'Montecarlo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1514, 15, 'Nueve de Julio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1515, 15, 'Oberá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1516, 15, 'Olegario V. Andrade', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1517, 15, 'Panambí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1518, 15, 'Posadas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1519, 15, 'Profundidad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1520, 15, 'Pto. Iguazú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1521, 15, 'Pto. Leoni', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1522, 15, 'Pto. Piray', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1523, 15, 'Pto. Rico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1524, 15, 'Ruiz de Montoya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1525, 15, 'San Antonio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1526, 15, 'San Ignacio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1527, 15, 'San Javier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1528, 15, 'San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1529, 15, 'San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1530, 15, 'San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1531, 15, 'San Vicente', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1532, 15, 'Santiago De Liniers', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1533, 15, 'Santo Pipo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1534, 15, 'Sta. Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1535, 15, 'Sta. María', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1536, 15, 'Tres Capones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1537, 15, 'Veinticinco de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1538, 15, 'Wanda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1539, 16, 'Aguada San Roque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1540, 16, 'Aluminé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1541, 16, 'Andacollo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1542, 16, 'Añelo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1543, 16, 'Bajada del Agrio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1544, 16, 'Barrancas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1545, 16, 'Buta Ranquil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1546, 16, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1547, 16, 'Caviahué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1548, 16, 'Centenario', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1549, 16, 'Chorriaca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1550, 16, 'Chos Malal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1551, 16, 'Cipolletti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1552, 16, 'Covunco Abajo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1553, 16, 'Coyuco Cochico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1554, 16, 'Cutral Có', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1555, 16, 'El Cholar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1556, 16, 'El Huecú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1557, 16, 'El Sauce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1558, 16, 'Guañacos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1559, 16, 'Huinganco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1560, 16, 'Las Coloradas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1561, 16, 'Las Lajas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1562, 16, 'Las Ovejas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1563, 16, 'Loncopué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1564, 16, 'Los Catutos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1565, 16, 'Los Chihuidos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1566, 16, 'Los Miches', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1567, 16, 'Manzano Amargo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1569, 16, 'Octavio Pico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1570, 16, 'Paso Aguerre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1571, 16, 'Picún Leufú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1572, 16, 'Piedra del Aguila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1573, 16, 'Pilo Lil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1574, 16, 'Plaza Huincul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1575, 16, 'Plottier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1576, 16, 'Quili Malal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1577, 16, 'Ramón Castro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1578, 16, 'Rincón de Los Sauces', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1579, 16, 'San Martín de Los Andes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1580, 16, 'San Patricio del Chañar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1581, 16, 'Santo Tomás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1582, 16, 'Sauzal Bonito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1583, 16, 'Senillosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1584, 16, 'Taquimilán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1585, 16, 'Tricao Malal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1586, 16, 'Varvarco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1587, 16, 'Villa Curí Leuvu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1588, 16, 'Villa del Nahueve', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1589, 16, 'Villa del Puente Picún Leuvú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1590, 16, 'Villa El Chocón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1591, 16, 'Villa La Angostura', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1592, 16, 'Villa Pehuenia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1593, 16, 'Villa Traful', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1594, 16, 'Vista Alegre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1595, 16, 'Zapala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1596, 17, 'Aguada Cecilio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1597, 17, 'Aguada de Guerra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1598, 17, 'Allén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1599, 17, 'Arroyo de La Ventana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1600, 17, 'Arroyo Los Berros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1601, 17, 'Bariloche', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1602, 17, 'Calte. Cordero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1603, 17, 'Campo Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1604, 17, 'Catriel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1605, 17, 'Cerro Policía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1606, 17, 'Cervantes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1607, 17, 'Chelforo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1608, 17, 'Chimpay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1609, 17, 'Chinchinales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1610, 17, 'Chipauquil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1611, 17, 'Choele Choel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1612, 17, 'Cinco Saltos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1613, 17, 'Cipolletti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1614, 17, 'Clemente Onelli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1615, 17, 'Colán Conhue', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1616, 17, 'Comallo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1617, 17, 'Comicó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1618, 17, 'Cona Niyeu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1619, 17, 'Coronel Belisle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1620, 17, 'Cubanea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1621, 17, 'Darwin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1622, 17, 'Dina Huapi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1623, 17, 'El Bolsón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1624, 17, 'El Caín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1625, 17, 'El Manso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1626, 17, 'Gral. Conesa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1627, 17, 'Gral. Enrique Godoy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1628, 17, 'Gral. Fernandez Oro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1629, 17, 'Gral. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1630, 17, 'Guardia Mitre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1631, 17, 'Ing. Huergo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1632, 17, 'Ing. Jacobacci', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1633, 17, 'Laguna Blanca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1634, 17, 'Lamarque', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1635, 17, 'Las Grutas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1636, 17, 'Los Menucos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1637, 17, 'Luis Beltrán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1638, 17, 'Mainqué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1639, 17, 'Mamuel Choique', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1640, 17, 'Maquinchao', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1641, 17, 'Mencué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1642, 17, 'Mtro. Ramos Mexia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1643, 17, 'Nahuel Niyeu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1644, 17, 'Naupa Huen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1645, 17, 'Ñorquinco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1646, 17, 'Ojos de Agua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1647, 17, 'Paso de Agua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1648, 17, 'Paso Flores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1649, 17, 'Peñas Blancas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1650, 17, 'Pichi Mahuida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1651, 17, 'Pilcaniyeu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1652, 17, 'Pomona', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1653, 17, 'Prahuaniyeu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1654, 17, 'Rincón Treneta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1655, 17, 'Río Chico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1656, 17, 'Río Colorado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1657, 17, 'Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1658, 17, 'San Antonio Oeste', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1659, 17, 'San Javier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1660, 17, 'Sierra Colorada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1661, 17, 'Sierra Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1662, 17, 'Sierra Pailemán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1663, 17, 'Valcheta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1664, 17, 'Valle Azul', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1665, 17, 'Viedma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1666, 17, 'Villa Llanquín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1667, 17, 'Villa Mascardi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1668, 17, 'Villa Regina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1669, 17, 'Yaminué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1670, 18, 'A. Saravia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1671, 18, 'Aguaray', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1672, 18, 'Angastaco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1673, 18, 'Animaná', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1674, 18, 'Cachi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1675, 18, 'Cafayate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1676, 18, 'Campo Quijano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1677, 18, 'Campo Santo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1678, 18, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1679, 18, 'Cerrillos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1680, 18, 'Chicoana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1681, 18, 'Col. Sta. Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1682, 18, 'Coronel Moldes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1683, 18, 'El Bordo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1684, 18, 'El Carril', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1685, 18, 'El Galpón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1686, 18, 'El Jardín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1687, 18, 'El Potrero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1688, 18, 'El Quebrachal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1689, 18, 'El Tala', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1690, 18, 'Embarcación', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1691, 18, 'Gral. Ballivian', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1692, 18, 'Gral. Güemes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1693, 18, 'Gral. Mosconi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1694, 18, 'Gral. Pizarro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1695, 18, 'Guachipas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1696, 18, 'Hipólito Yrigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1697, 18, 'Iruyá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1698, 18, 'Isla De Cañas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1699, 18, 'J. V. Gonzalez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1700, 18, 'La Caldera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1701, 18, 'La Candelaria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1702, 18, 'La Merced', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1703, 18, 'La Poma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1704, 18, 'La Viña', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1705, 18, 'Las Lajitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1706, 18, 'Los Toldos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1707, 18, 'Metán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1708, 18, 'Molinos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1709, 18, 'Nazareno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1710, 18, 'Orán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1711, 18, 'Payogasta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1712, 18, 'Pichanal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1713, 18, 'Prof. S. Mazza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1714, 18, 'Río Piedras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1715, 18, 'Rivadavia Banda Norte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1716, 18, 'Rivadavia Banda Sur', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1717, 18, 'Rosario de La Frontera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1718, 18, 'Rosario de Lerma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1719, 18, 'Saclantás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1721, 18, 'San Antonio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1722, 18, 'San Carlos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1723, 18, 'San José De Metán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1724, 18, 'San Ramón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1725, 18, 'Santa Victoria E.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1726, 18, 'Santa Victoria O.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1727, 18, 'Tartagal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1728, 18, 'Tolar Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1729, 18, 'Urundel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1730, 18, 'Vaqueros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1731, 18, 'Villa San Lorenzo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1732, 19, 'Albardón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1733, 19, 'Angaco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1734, 19, 'Calingasta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1735, 19, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1736, 19, 'Caucete', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1737, 19, 'Chimbas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1738, 19, 'Iglesia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1739, 19, 'Jachal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1740, 19, 'Nueve de Julio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1741, 19, 'Pocito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1742, 19, 'Rawson', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1743, 19, 'Rivadavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1745, 19, 'San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1746, 19, 'Santa Lucía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1747, 19, 'Sarmiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1748, 19, 'Ullum', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1749, 19, 'Valle Fértil', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1750, 19, 'Veinticinco de Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1751, 19, 'Zonda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1752, 20, 'Alto Pelado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1753, 20, 'Alto Pencoso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1754, 20, 'Anchorena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1755, 20, 'Arizona', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1756, 20, 'Bagual', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1757, 20, 'Balde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1758, 20, 'Batavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1759, 20, 'Beazley', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1760, 20, 'Buena Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1761, 20, 'Candelaria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1762, 20, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1763, 20, 'Carolina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1764, 20, 'Carpintería', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1765, 20, 'Concarán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1766, 20, 'Cortaderas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1767, 20, 'El Morro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1768, 20, 'El Trapiche', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1769, 20, 'El Volcán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1770, 20, 'Fortín El Patria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1771, 20, 'Fortuna', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1772, 20, 'Fraga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1773, 20, 'Juan Jorba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1774, 20, 'Juan Llerena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1775, 20, 'Juana Koslay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1776, 20, 'Justo Daract', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1777, 20, 'La Calera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1778, 20, 'La Florida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1779, 20, 'La Punilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1780, 20, 'La Toma', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1781, 20, 'Lafinur', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1782, 20, 'Las Aguadas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1783, 20, 'Las Chacras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1784, 20, 'Las Lagunas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1785, 20, 'Las Vertientes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1786, 20, 'Lavaisse', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1787, 20, 'Leandro N. Alem', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1788, 20, 'Los Molles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1789, 20, 'Luján', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1790, 20, 'Mercedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1791, 20, 'Merlo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1792, 20, 'Naschel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1793, 20, 'Navia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1794, 20, 'Nogolí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1795, 20, 'Nueva Galia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1796, 20, 'Papagayos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1797, 20, 'Paso Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1798, 20, 'Potrero de Los Funes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1799, 20, 'Quines', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1800, 20, 'Renca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1801, 20, 'Saladillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1802, 20, 'San Francisco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1803, 20, 'San Gerónimo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1804, 20, 'San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1805, 20, 'San Pablo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1806, 20, 'Santa Rosa de Conlara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1807, 20, 'Talita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1808, 20, 'Tilisarao', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1809, 20, 'Unión', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1810, 20, 'Villa de La Quebrada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1811, 20, 'Villa de Praga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1812, 20, 'Villa del Carmen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1813, 20, 'Villa Gral. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1814, 20, 'Villa Larca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1815, 20, 'Villa Mercedes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1816, 20, 'Zanjitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1817, 21, 'Calafate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1818, 21, 'Caleta Olivia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1819, 21, 'Cañadón Seco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1820, 21, 'Comandante Piedrabuena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1821, 21, 'El Calafate', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1822, 21, 'El Chaltén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1823, 21, 'Gdor. Gregores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1824, 21, 'Hipólito Yrigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1825, 21, 'Jaramillo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1826, 21, 'Koluel Kaike', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1827, 21, 'Las Heras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1828, 21, 'Los Antiguos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1829, 21, 'Perito Moreno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1830, 21, 'Pico Truncado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1831, 21, 'Pto. Deseado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1832, 21, 'Pto. San Julián', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1833, 21, 'Pto. 21', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1834, 21, 'Río Cuarto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1835, 21, 'Río Gallegos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1836, 21, 'Río Turbio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1837, 21, 'Tres Lagos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1838, 21, 'Veintiocho De Noviembre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1839, 22, 'Aarón Castellanos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1840, 22, 'Acebal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1841, 22, 'Aguará Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1842, 22, 'Albarellos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1843, 22, 'Alcorta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1844, 22, 'Aldao', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1845, 22, 'Alejandra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1846, 22, 'Álvarez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1847, 22, 'Ambrosetti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1848, 22, 'Amenábar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1849, 22, 'Angélica', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1850, 22, 'Angeloni', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1851, 22, 'Arequito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1852, 22, 'Arminda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1853, 22, 'Armstrong', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1854, 22, 'Arocena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1855, 22, 'Arroyo Aguiar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1856, 22, 'Arroyo Ceibal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1857, 22, 'Arroyo Leyes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1858, 22, 'Arroyo Seco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1859, 22, 'Arrufó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1860, 22, 'Arteaga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1861, 22, 'Ataliva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1862, 22, 'Aurelia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1863, 22, 'Avellaneda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1864, 22, 'Barrancas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1865, 22, 'Bauer Y Sigel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1866, 22, 'Bella Italia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1867, 22, 'Berabevú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1868, 22, 'Berna', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1869, 22, 'Bernardo de Irigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1870, 22, 'Bigand', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1871, 22, 'Bombal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1872, 22, 'Bouquet', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1873, 22, 'Bustinza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1874, 22, 'Cabal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1875, 22, 'Cacique Ariacaiquin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1876, 22, 'Cafferata', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1877, 22, 'Calchaquí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1878, 22, 'Campo Andino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1879, 22, 'Campo Piaggio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1880, 22, 'Cañada de Gómez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1881, 22, 'Cañada del Ucle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1882, 22, 'Cañada Rica', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1883, 22, 'Cañada Rosquín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1884, 22, 'Candioti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1885, 22, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1886, 22, 'Capitán Bermúdez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1887, 22, 'Capivara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1888, 22, 'Carcarañá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1889, 22, 'Carlos Pellegrini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1890, 22, 'Carmen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1891, 22, 'Carmen Del Sauce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1892, 22, 'Carreras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1893, 22, 'Carrizales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1894, 22, 'Casalegno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1895, 22, 'Casas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1896, 22, 'Casilda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1897, 22, 'Castelar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1898, 22, 'Castellanos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1899, 22, 'Cayastá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1900, 22, 'Cayastacito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1901, 22, 'Centeno', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1902, 22, 'Cepeda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1903, 22, 'Ceres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1904, 22, 'Chabás', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1905, 22, 'Chañar Ladeado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1906, 22, 'Chapuy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1907, 22, 'Chovet', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1908, 22, 'Christophersen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1909, 22, 'Classon', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1910, 22, 'Cnel. Arnold', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1911, 22, 'Cnel. Bogado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1912, 22, 'Cnel. Dominguez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1913, 22, 'Cnel. Fraga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1914, 22, 'Col. Aldao', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1915, 22, 'Col. Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1916, 22, 'Col. Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1917, 22, 'Col. Bicha', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1918, 22, 'Col. Bigand', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1919, 22, 'Col. Bossi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1920, 22, 'Col. Cavour', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1921, 22, 'Col. Cello', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1922, 22, 'Col. Dolores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1923, 22, 'Col. Dos Rosas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1924, 22, 'Col. Durán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1925, 22, 'Col. Iturraspe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1926, 22, 'Col. Margarita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1927, 22, 'Col. Mascias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1928, 22, 'Col. Raquel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1929, 22, 'Col. Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1930, 22, 'Col. San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1931, 22, 'Constanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1932, 22, 'Coronda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1933, 22, 'Correa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1934, 22, 'Crispi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1935, 22, 'Cululú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1936, 22, 'Curupayti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1937, 22, 'Desvio Arijón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1938, 22, 'Diaz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1939, 22, 'Diego de Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1940, 22, 'Egusquiza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1941, 22, 'El Arazá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1942, 22, 'El Rabón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1943, 22, 'El Sombrerito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1944, 22, 'El Trébol', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1945, 22, 'Elisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1946, 22, 'Elortondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1947, 22, 'Emilia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1948, 22, 'Empalme San Carlos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1949, 22, 'Empalme Villa Constitucion', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1950, 22, 'Esmeralda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1951, 22, 'Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1952, 22, 'Estación Alvear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1953, 22, 'Estacion Clucellas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1954, 22, 'Esteban Rams', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1955, 22, 'Esther', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1956, 22, 'Esustolia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1957, 22, 'Eusebia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1958, 22, 'Felicia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1959, 22, 'Fidela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1960, 22, 'Fighiera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1961, 22, 'Firmat', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1962, 22, 'Florencia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1963, 22, 'Fortín Olmos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1964, 22, 'Franck', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1965, 22, 'Fray Luis Beltrán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1966, 22, 'Frontera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1967, 22, 'Fuentes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1968, 22, 'Funes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1969, 22, 'Gaboto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1970, 22, 'Galisteo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1971, 22, 'Gálvez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1972, 22, 'Garabalto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1973, 22, 'Garibaldi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1974, 22, 'Gato Colorado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1975, 22, 'Gdor. Crespo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1976, 22, 'Gessler', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1977, 22, 'Godoy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1978, 22, 'Golondrina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1979, 22, 'Gral. Gelly', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1980, 22, 'Gral. Lagos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1981, 22, 'Granadero Baigorria', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1982, 22, 'Gregoria Perez De Denis', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1983, 22, 'Grutly', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1984, 22, 'Guadalupe N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1985, 22, 'Gödeken', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1986, 22, 'Helvecia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1987, 22, 'Hersilia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1988, 22, 'Hipatía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1989, 22, 'Huanqueros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1990, 22, 'Hugentobler', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1991, 22, 'Hughes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1992, 22, 'Humberto 1º', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1993, 22, 'Humboldt', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1994, 22, 'Ibarlucea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1995, 22, 'Ing. Chanourdie', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1996, 22, 'Intiyaco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1997, 22, 'Ituzaingó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1998, 22, 'Jacinto L. Aráuz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(1999, 22, 'Josefina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2000, 22, 'Juan B. Molina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2001, 22, 'Juan de Garay', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2002, 22, 'Juncal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2003, 22, 'La Brava', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2004, 22, 'La Cabral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2005, 22, 'La Camila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2006, 22, 'La Chispa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2007, 22, 'La Clara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2008, 22, 'La Criolla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2009, 22, 'La Gallareta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2010, 22, 'La Lucila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2011, 22, 'La Pelada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2012, 22, 'La Penca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2013, 22, 'La Rubia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2014, 22, 'La Sarita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2015, 22, 'La Vanguardia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2016, 22, 'Labordeboy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2017, 22, 'Laguna Paiva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2018, 22, 'Landeta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2019, 22, 'Lanteri', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2020, 22, 'Larrechea', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2021, 22, 'Las Avispas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2022, 22, 'Las Bandurrias', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2023, 22, 'Las Garzas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2024, 22, 'Las Palmeras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2025, 22, 'Las Parejas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2026, 22, 'Las Petacas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2027, 22, 'Las Rosas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2028, 22, 'Las Toscas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2029, 22, 'Las Tunas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2030, 22, 'Lazzarino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2031, 22, 'Lehmann', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2032, 22, 'Llambi Campbell', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2033, 22, 'Logroño', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2034, 22, 'Loma Alta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2035, 22, 'López', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2036, 22, 'Los Amores', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2037, 22, 'Los Cardos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2038, 22, 'Los Laureles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2039, 22, 'Los Molinos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2040, 22, 'Los Quirquinchos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2041, 22, 'Lucio V. Lopez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2042, 22, 'Luis Palacios', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2043, 22, 'Ma. Juana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2044, 22, 'Ma. Luisa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2045, 22, 'Ma. Susana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2046, 22, 'Ma. Teresa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2047, 22, 'Maciel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2048, 22, 'Maggiolo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2049, 22, 'Malabrigo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2050, 22, 'Marcelino Escalada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2051, 22, 'Margarita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2052, 22, 'Matilde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2053, 22, 'Mauá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2054, 22, 'Máximo Paz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2055, 22, 'Melincué', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2056, 22, 'Miguel Torres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2057, 22, 'Moisés Ville', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2058, 22, 'Monigotes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2059, 22, 'Monje', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2060, 22, 'Monte Obscuridad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2061, 22, 'Monte Vera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2062, 22, 'Montefiore', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2063, 22, 'Montes de Oca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2064, 22, 'Murphy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2065, 22, 'Ñanducita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2066, 22, 'Naré', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2067, 22, 'Nelson', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2068, 22, 'Nicanor E. Molinas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2069, 22, 'Nuevo Torino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2070, 22, 'Oliveros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2071, 22, 'Palacios', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2072, 22, 'Pavón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2073, 22, 'Pavón Arriba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2074, 22, 'Pedro Gómez Cello', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2075, 22, 'Pérez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2076, 22, 'Peyrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2077, 22, 'Piamonte', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2078, 22, 'Pilar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2079, 22, 'Piñero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2080, 22, 'Plaza Clucellas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2081, 22, 'Portugalete', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2082, 22, 'Pozo Borrado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2083, 22, 'Progreso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2084, 22, 'Providencia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2085, 22, 'Pte. Roca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2086, 22, 'Pueblo Andino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2087, 22, 'Pueblo Esther', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2088, 22, 'Pueblo Gral. San Martín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2089, 22, 'Pueblo Irigoyen', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2090, 22, 'Pueblo Marini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2091, 22, 'Pueblo Muñoz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2092, 22, 'Pueblo Uranga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2093, 22, 'Pujato', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2094, 22, 'Pujato N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2095, 22, 'Rafaela', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2096, 22, 'Ramayón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2097, 22, 'Ramona', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2098, 22, 'Reconquista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2099, 22, 'Recreo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2100, 22, 'Ricardone', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2101, 22, 'Rivadavia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2102, 22, 'Roldán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2103, 22, 'Romang', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2104, 22, 'Rosario', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2105, 22, 'Rueda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2106, 22, 'Rufino', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2107, 22, 'Sa Pereira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2108, 22, 'Saguier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2109, 22, 'Saladero M. Cabal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2110, 22, 'Salto Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2111, 22, 'San Agustín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2112, 22, 'San Antonio de Obligado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2113, 22, 'San Bernardo (N.J.)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2114, 22, 'San Bernardo (S.J.)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2115, 22, 'San Carlos Centro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2116, 22, 'San Carlos N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2117, 22, 'San Carlos S.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2118, 22, 'San Cristóbal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2119, 22, 'San Eduardo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2120, 22, 'San Eugenio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2121, 22, 'San Fabián', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2122, 22, 'San Fco. de Santa Fé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2123, 22, 'San Genaro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2124, 22, 'San Genaro N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2125, 22, 'San Gregorio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2126, 22, 'San Guillermo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2127, 22, 'San Javier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2128, 22, 'San Jerónimo del Sauce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2129, 22, 'San Jerónimo N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2130, 22, 'San Jerónimo S.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2131, 22, 'San Jorge', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2132, 22, 'San José de La Esquina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2133, 22, 'San José del Rincón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2134, 22, 'San Justo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2135, 22, 'San Lorenzo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2136, 22, 'San Mariano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2137, 22, 'San Martín de Las Escobas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2138, 22, 'San Martín N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2139, 22, 'San Vicente', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2140, 22, 'Sancti Spititu', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2141, 22, 'Sanford', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2142, 22, 'Santo Domingo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2143, 22, 'Santo Tomé', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2144, 22, 'Santurce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2145, 22, 'Sargento Cabral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2146, 22, 'Sarmiento', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2147, 22, 'Sastre', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2148, 22, 'Sauce Viejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2149, 22, 'Serodino', '2017-03-15 03:00:00', '2017-03-15 03:00:00');
INSERT INTO `localidades` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(2150, 22, 'Silva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2151, 22, 'Soldini', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2152, 22, 'Soledad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2153, 22, 'Soutomayor', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2154, 22, 'Sta. Clara de Buena Vista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2155, 22, 'Sta. Clara de Saguier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2156, 22, 'Sta. Isabel', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2157, 22, 'Sta. Margarita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2158, 22, 'Sta. Maria Centro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2159, 22, 'Sta. María N.', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2160, 22, 'Sta. Rosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2161, 22, 'Sta. Teresa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2162, 22, 'Suardi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2163, 22, 'Sunchales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2164, 22, 'Susana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2165, 22, 'Tacuarendí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2166, 22, 'Tacural', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2167, 22, 'Tartagal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2168, 22, 'Teodelina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2169, 22, 'Theobald', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2170, 22, 'Timbúes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2171, 22, 'Toba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2172, 22, 'Tortugas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2173, 22, 'Tostado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2174, 22, 'Totoras', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2175, 22, 'Traill', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2176, 22, 'Venado Tuerto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2177, 22, 'Vera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2178, 22, 'Vera y Pintado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2179, 22, 'Videla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2180, 22, 'Vila', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2181, 22, 'Villa Amelia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2182, 22, 'Villa Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2183, 22, 'Villa Cañas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2184, 22, 'Villa Constitución', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2185, 22, 'Villa Eloísa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2186, 22, 'Villa Gdor. Gálvez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2187, 22, 'Villa Guillermina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2188, 22, 'Villa Minetti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2189, 22, 'Villa Mugueta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2190, 22, 'Villa Ocampo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2191, 22, 'Villa San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2192, 22, 'Villa Saralegui', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2193, 22, 'Villa Trinidad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2194, 22, 'Villada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2195, 22, 'Virginia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2196, 22, 'Wheelwright', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2197, 22, 'Zavalla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2198, 22, 'Zenón Pereira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2199, 23, 'Añatuya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2200, 23, 'Árraga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2201, 23, 'Bandera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2202, 23, 'Bandera Bajada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2203, 23, 'Beltrán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2204, 23, 'Brea Pozo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2205, 23, 'Campo Gallo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2206, 23, 'Capital', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2207, 23, 'Chilca Juliana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2208, 23, 'Choya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2209, 23, 'Clodomira', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2210, 23, 'Col. Alpina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2211, 23, 'Col. Dora', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2212, 23, 'Col. El Simbolar Robles', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2213, 23, 'El Bobadal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2214, 23, 'El Charco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2215, 23, 'El Mojón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2216, 23, 'Estación Atamisqui', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2217, 23, 'Estación Simbolar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2218, 23, 'Fernández', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2219, 23, 'Fortín Inca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2220, 23, 'Frías', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2221, 23, 'Garza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2222, 23, 'Gramilla', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2223, 23, 'Guardia Escolta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2224, 23, 'Herrera', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2225, 23, 'Icaño', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2226, 23, 'Ing. Forres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2227, 23, 'La Banda', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2228, 23, 'La Cañada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2229, 23, 'Laprida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2230, 23, 'Lavalle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2231, 23, 'Loreto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2232, 23, 'Los Juríes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2233, 23, 'Los Núñez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2234, 23, 'Los Pirpintos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2235, 23, 'Los Quiroga', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2236, 23, 'Los Telares', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2237, 23, 'Lugones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2238, 23, 'Malbrán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2239, 23, 'Matara', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2240, 23, 'Medellín', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2241, 23, 'Monte Quemado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2242, 23, 'Nueva Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2243, 23, 'Nueva Francia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2244, 23, 'Palo Negro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2245, 23, 'Pampa de Los Guanacos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2246, 23, 'Pinto', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2247, 23, 'Pozo Hondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2248, 23, 'Quimilí', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2249, 23, 'Real Sayana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2250, 23, 'Sachayoj', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2251, 23, 'San Pedro de Guasayán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2252, 23, 'Selva', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2253, 23, 'Sol de Julio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2254, 23, 'Sumampa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2255, 23, 'Suncho Corral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2256, 23, 'Taboada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2257, 23, 'Tapso', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2258, 23, 'Termas de Rio Hondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2259, 23, 'Tintina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2260, 23, 'Tomas Young', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2261, 23, 'Vilelas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2262, 23, 'Villa Atamisqui', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2263, 23, 'Villa La Punta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2264, 23, 'Villa Ojo de Agua', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2265, 23, 'Villa Río Hondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2266, 23, 'Villa Salavina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2267, 23, 'Villa Unión', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2268, 23, 'Vilmer', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2269, 23, 'Weisburd', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2270, 24, 'Río Grande', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2271, 24, 'Tolhuin', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2272, 24, 'Ushuaia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2273, 25, 'Acheral', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2274, 25, 'Agua Dulce', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2275, 25, 'Aguilares', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2276, 25, 'Alderetes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2277, 25, 'Alpachiri', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2278, 25, 'Alto Verde', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2279, 25, 'Amaicha del Valle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2280, 25, 'Amberes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2281, 25, 'Ancajuli', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2282, 25, 'Arcadia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2283, 25, 'Atahona', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2284, 25, 'Banda del Río Sali', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2285, 25, 'Bella Vista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2286, 25, 'Buena Vista', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2287, 25, 'Burruyacú', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2288, 25, 'Capitán Cáceres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2289, 25, 'Cevil Redondo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2290, 25, 'Choromoro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2291, 25, 'Ciudacita', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2292, 25, 'Colalao del Valle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2293, 25, 'Colombres', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2294, 25, 'Concepción', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2295, 25, 'Delfín Gallo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2296, 25, 'El Bracho', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2297, 25, 'El Cadillal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2298, 25, 'El Cercado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2299, 25, 'El Chañar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2300, 25, 'El Manantial', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2301, 25, 'El Mojón', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2302, 25, 'El Mollar', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2303, 25, 'El Naranjito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2304, 25, 'El Naranjo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2305, 25, 'El Polear', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2306, 25, 'El Puestito', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2307, 25, 'El Sacrificio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2308, 25, 'El Timbó', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2309, 25, 'Escaba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2310, 25, 'Esquina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2311, 25, 'Estación Aráoz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2312, 25, 'Famaillá', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2313, 25, 'Gastone', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2314, 25, 'Gdor. Garmendia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2315, 25, 'Gdor. Piedrabuena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2316, 25, 'Graneros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2317, 25, 'Huasa Pampa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2318, 25, 'J. B. Alberdi', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2319, 25, 'La Cocha', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2320, 25, 'La Esperanza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2321, 25, 'La Florida', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2322, 25, 'La Ramada', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2323, 25, 'La Trinidad', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2324, 25, 'Lamadrid', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2325, 25, 'Las Cejas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2326, 25, 'Las Talas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2327, 25, 'Las Talitas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2328, 25, 'Los Bulacio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2329, 25, 'Los Gómez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2330, 25, 'Los Nogales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2331, 25, 'Los Pereyra', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2332, 25, 'Los Pérez', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2333, 25, 'Los Puestos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2334, 25, 'Los Ralos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2335, 25, 'Los Sarmientos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2336, 25, 'Los Sosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2337, 25, 'Lules', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2338, 25, 'M. García Fernández', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2339, 25, 'Manuela Pedraza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2340, 25, 'Medinas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2341, 25, 'Monte Bello', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2342, 25, 'Monteagudo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2343, 25, 'Monteros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2344, 25, 'Padre Monti', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2345, 25, 'Pampa Mayo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2346, 25, 'Quilmes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2347, 25, 'Raco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2348, 25, 'Ranchillos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2349, 25, 'Río Chico', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2350, 25, 'Río Colorado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2351, 25, 'Río Seco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2352, 25, 'Rumi Punco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2353, 25, 'San Andrés', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2354, 25, 'San Felipe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2355, 25, 'San Ignacio', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2356, 25, 'San Javier', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2357, 25, 'San José', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2358, 25, 'San Miguel de 25', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2359, 25, 'San Pedro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2360, 25, 'San Pedro de Colalao', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2361, 25, 'Santa Rosa de Leales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2362, 25, 'Sgto. Moya', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2363, 25, 'Siete de Abril', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2364, 25, 'Simoca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2365, 25, 'Soldado Maldonado', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2366, 25, 'Sta. Ana', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2367, 25, 'Sta. Cruz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2368, 25, 'Sta. Lucía', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2369, 25, 'Taco Ralo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2370, 25, 'Tafí del Valle', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2371, 25, 'Tafí Viejo', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2372, 25, 'Tapia', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2373, 25, 'Teniente Berdina', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2374, 25, 'Trancas', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2375, 25, 'Villa Belgrano', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2376, 25, 'Villa Benjamín Araoz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2377, 25, 'Villa Chiligasta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2378, 25, 'Villa de Leales', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2379, 25, 'Villa Quinteros', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2380, 25, 'Yánima', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2381, 25, 'Yerba Buena', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2382, 25, 'Yerba Buena (S)', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(3000, 1, 'test', '2017-03-15 03:00:00', '2017-03-15 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_12_032623_create_provincias_table', 1),
(4, '2017_03_12_050132_create_localidades_table', 1),
(5, '2017_03_14_011515_create_zonas_table', 1),
(6, '2017_03_14_193419_create_fletes_table', 1),
(7, '2017_03_14_232711_create_ivas_table', 1),
(8, '2017_03_14_234000_create_condicventas_table', 1),
(9, '2017_03_15_042807_create_listas_table', 1),
(10, '2017_03_16_230638_create_tests_table', 1),
(11, '2017_03_14_212921_create_clientes_table', 2),
(13, '2017_03_17_212048_create_direntregas_table', 3),
(15, '2017_04_03_230420_create_familias_table', 5),
(16, '2017_04_04_004238_create_monedas_table', 6),
(17, '2017_04_04_072349_create_subfamilias_table', 7),
(19, '2017_04_03_230853_create_proveedores_table', 8),
(20, '2017_04_06_000532_create_tipocts_table', 9),
(23, '2017_04_06_023556_create_productos_table', 10),
(29, '2017_04_20_185003_create_pedidos_table', 11),
(30, '2017_04_20_205715_create_pedidositems_table', 11),
(34, '2017_05_24_224106_create_reparaciones_table', 13),
(35, '2017_05_24_231300_create_reparaciones_items_table', 13),
(37, '2017_05_08_231514_create_facturas_table', 14),
(38, '2017_06_30_201904_create_pagos_table', 15),
(39, '2017_06_30_211310_create_cheques_table', 15),
(40, '2017_06_30_211426_create_retenciones_table', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `nombre`, `valor`, `created_at`, `updated_at`) VALUES
(1, 'Pesos', 1, '2017-04-04 07:09:12', '2017-04-04 08:51:23'),
(2, 'Dolar', 10, '2017-04-04 07:18:29', '2017-05-04 23:12:41'),
(3, 'Euro', 17.5, '2017-04-04 07:18:37', '2017-04-17 14:35:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `importe` decimal(5,2) NOT NULL,
  `modo` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `factura` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `facturado` tinyint(1) NOT NULL,
  `user_id` int(10) NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `estado`, `facturado`, `user_id`, `cliente_id`, `created_at`, `updated_at`) VALUES
(57, '1', 0, 1, 8, '2017-05-29 02:45:22', '2017-05-29 02:45:22'),
(58, '2', 0, 1, 15, '2017-05-29 02:45:42', '2017-06-06 02:35:54'),
(59, '2', 0, 1, 2, '2017-05-29 07:06:14', '2017-06-06 02:43:26'),
(60, '2', 0, 1, 16, '2017-06-06 01:13:32', '2017-06-06 02:32:57'),
(61, '1', 0, 1, 16, '2017-06-06 02:38:37', '2017-06-06 02:38:37'),
(62, '1', 0, 1, 4, '2017-06-06 02:41:33', '2017-06-06 02:41:33'),
(63, '1', 0, 1, 8, '2017-06-06 21:16:49', '2017-06-06 21:16:49'),
(64, '1', 0, 1, 97, '2017-06-13 04:52:24', '2017-06-13 04:52:24'),
(65, '1', 0, 1, 9, '2017-06-13 07:28:45', '2017-06-13 07:28:45'),
(66, '2', 0, 1, 23, '2017-06-13 08:34:01', '2017-06-13 08:34:26'),
(67, '3', 0, 1, 2, '2017-06-14 05:44:31', '2017-06-23 01:40:46'),
(68, '2', 0, 1, 2, '2017-06-23 01:40:04', '2017-06-23 01:40:24'),
(69, '2', 0, 1, 2, '2017-06-27 03:08:15', '2017-06-27 03:08:23'),
(70, '1', 0, 1, 2, '2017-06-27 03:11:31', '2017-06-27 03:11:31'),
(71, '1', 0, 1, 2, '2017-06-27 03:47:47', '2017-06-27 03:47:47'),
(72, '1', 0, 1, 2, '2017-06-27 10:29:49', '2017-06-27 10:29:49'),
(73, '1', 0, 1, 2, '2017-07-05 03:03:23', '2017-07-05 03:03:23'),
(74, '2', 0, 1, 2, '2017-07-14 02:13:20', '2017-07-14 02:14:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidositems`
--

CREATE TABLE `pedidositems` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(10) UNSIGNED NOT NULL,
  `factura_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `facturado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidositems`
--

INSERT INTO `pedidositems` (`id`, `cliente_id`, `pedido_id`, `factura_id`, `producto_id`, `cantidad`, `valor`, `facturado`, `created_at`, `updated_at`) VALUES
(89, 8, 57, 0, 2, 12, 7500, 0, '2017-05-29 04:18:08', '2017-05-29 04:18:08'),
(91, 15, 58, 0, 4, 1, 114, 0, '2017-05-29 05:49:39', '2017-05-29 05:49:39'),
(92, 15, 58, 0, 2, 2, 7500, 0, '2017-05-29 05:49:55', '2017-05-29 05:49:55'),
(93, 2, 59, 0, 1, 1, 1250, 1, '2017-05-29 07:06:24', '2017-06-28 01:27:02'),
(94, 2, 59, 0, 2, 12, 6500, 1, '2017-05-29 07:10:18', '2017-06-28 01:27:02'),
(95, 16, 60, 0, 2, 12, 6500, 0, '2017-06-06 01:14:02', '2017-06-06 01:14:02'),
(96, 15, 58, 0, 4, 1, 114, 0, '2017-06-06 01:49:03', '2017-06-06 01:49:03'),
(97, 15, 58, 0, 1, 1, 1300, 0, '2017-06-06 01:50:46', '2017-06-06 01:50:46'),
(98, 15, 58, 0, 1, 2, 1300, 0, '2017-06-06 01:50:51', '2017-06-06 01:50:51'),
(99, 15, 58, 0, 2, 1, 7500, 0, '2017-06-06 01:50:55', '2017-06-06 01:50:55'),
(100, 15, 58, 0, 3, 1, 720, 0, '2017-06-06 01:51:00', '2017-06-06 01:51:00'),
(101, 15, 58, 0, 1, 2, 1300, 0, '2017-06-06 01:51:04', '2017-06-06 01:51:04'),
(102, 15, 58, 0, 3, 1, 720, 0, '2017-06-06 01:51:16', '2017-06-06 01:51:16'),
(103, 15, 58, 0, 1, 2, 1300, 0, '2017-06-06 01:51:20', '2017-06-06 01:51:20'),
(104, 15, 58, 0, 2, 1, 7500, 0, '2017-06-06 01:51:24', '2017-06-06 01:51:24'),
(105, 15, 58, 0, 3, 1, 720, 0, '2017-06-06 01:51:28', '2017-06-06 01:51:28'),
(106, 15, 58, 0, 2, 1, 7500, 0, '2017-06-06 01:51:32', '2017-06-06 01:51:32'),
(107, 15, 58, 0, 3, 1, 720, 0, '2017-06-06 01:51:37', '2017-06-06 01:51:37'),
(108, 15, 58, 0, 3, 2, 720, 0, '2017-06-06 01:51:42', '2017-06-06 01:51:42'),
(109, 15, 58, 0, 3, 1, 720, 0, '2017-06-06 01:51:46', '2017-06-06 01:51:46'),
(112, 15, 58, 0, 1, 1, 1300, 0, '2017-06-06 02:01:18', '2017-06-06 02:01:18'),
(113, 16, 60, 0, 2, 1, 6500, 0, '2017-06-06 02:30:15', '2017-06-06 02:30:15'),
(114, 16, 61, 0, 2, 5, 6500, 0, '2017-06-06 02:38:44', '2017-06-06 02:38:44'),
(115, 4, 62, 0, 3, 25, 580, 0, '2017-06-06 02:41:59', '2017-06-06 02:41:59'),
(116, 16, 60, 0, 4, 1, 105, 0, '2017-06-06 07:28:51', '2017-06-06 07:28:51'),
(117, 8, 63, 0, 1, 12, 1300, 0, '2017-06-07 01:43:19', '2017-06-07 01:43:19'),
(118, 23, 66, 0, 4, 12, 105, 0, '2017-06-13 08:34:17', '2017-06-13 08:34:17'),
(119, 2, 68, 0, 2, 2, 6500, 1, '2017-06-23 01:40:13', '2017-06-28 01:29:27'),
(120, 2, 69, 0, 2, 1, 6500, 1, '2017-06-27 03:08:20', '2017-06-28 01:29:27'),
(121, 2, 71, 0, 2, 1, 6500, 1, '2017-06-27 03:47:54', '2017-06-28 09:33:39'),
(122, 2, 72, 0, 2, 1, 6500, 1, '2017-06-27 10:29:54', '2017-06-28 09:33:39'),
(123, 2, 72, 0, 4, 1, 105, 0, '2017-06-27 23:36:39', '2017-06-27 23:36:39'),
(124, 2, 73, 0, 1, 2, 1250, 0, '2017-07-05 03:03:28', '2017-07-05 03:03:28'),
(125, 2, 73, 0, 3, 4, 690, 0, '2017-07-05 03:03:32', '2017-07-05 03:03:32'),
(126, 2, 74, 0, 3, 5, 580, 0, '2017-07-14 02:14:05', '2017-07-14 02:14:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_pedidositem`
--

CREATE TABLE `pedido_pedidositem` (
  `id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `pedidositem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('activo','pausado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activo',
  `codproveedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condiva` float NOT NULL,
  `stockactual` int(11) NOT NULL,
  `stockmin` int(11) NOT NULL,
  `stockmax` int(11) NOT NULL,
  `monedacompra` int(11) NOT NULL DEFAULT '0',
  `costopesos` int(11) NOT NULL,
  `costodolar` int(10) NOT NULL,
  `costoeuro` int(11) NOT NULL,
  `pjegremio` int(11) NOT NULL,
  `pjeparticular` int(11) NOT NULL,
  `pjeespecial` int(11) NOT NULL,
  `preciooferta` int(11) DEFAULT NULL,
  `cantoferta` int(10) DEFAULT NULL,
  `moneda_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `proveedor_id` int(10) UNSIGNED NOT NULL,
  `familia_id` int(10) UNSIGNED NOT NULL,
  `subfamilia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `estado`, `codproveedor`, `condiva`, `stockactual`, `stockmin`, `stockmax`, `monedacompra`, `costopesos`, `costodolar`, `costoeuro`, `pjegremio`, `pjeparticular`, `pjeespecial`, `preciooferta`, `cantoferta`, `moneda_id`, `proveedor_id`, `familia_id`, `subfamilia_id`, `created_at`, `updated_at`) VALUES
(1, 'Bocha', 'activo', '3232', 21, 60, 20, 100, 2, 0, 100, 0, 25, 30, 20, 1500, 20, 2, 12, 4, 12, '2017-05-04 08:52:52', '2017-07-09 07:32:31'),
(2, 'Aire3500', 'activo', 'AR3500', 21, 74, 20, 60, 2, 0, 500, 0, 30, 50, 25, 200, 20, 2, 12, 3, 9, '2017-04-27 01:31:47', '2017-07-20 21:32:04'),
(3, 'Equipo', 'activo', '156', 21, 36, 20, 60, 1, 600, 0, 0, 15, 20, 14, 580, 20, 2, 12, 2, 10, '2017-04-26 15:47:57', '2017-07-07 22:48:05'),
(4, 'Lavarropas', 'activo', 'WP3500', 21, 29, 20, 90, 3, 5, 0, 0, 20, 30, 18, 6500, 20, 2, 12, 3, 5, '2017-04-26 15:38:02', '2017-07-07 22:49:40'),
(5, 'Turbina', 'activo', '12121212', 10.5, 73, 20, 100, 2, 0, 100, 0, 25, 35, 20, 90, 15, 2, 12, 3, 5, '2017-06-19 21:21:55', '2017-07-07 02:27:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razonsocial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingbrutos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codpostal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notas` text COLLATE utf8mb4_unicode_ci,
  `iva_id` int(10) UNSIGNED DEFAULT NULL,
  `localidad_id` int(10) UNSIGNED DEFAULT NULL,
  `provincia_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `razonsocial`, `cuit`, `ingbrutos`, `telefonos`, `email`, `direccion`, `pais`, `codpostal`, `notas`, `iva_id`, `localidad_id`, `provincia_id`, `created_at`, `updated_at`) VALUES
(1, 'LOCIA Y COMPAÑIA S.A.', 'LOCIA Y COMPAÑIA S.A.', '33-60792934-9', '901-927635-5', '4671-6711/1892', 'locia@lociasa.com.ar', 'Laguna 1219', 'Argentina', '1417', NULL, 2, 336, 3, '2017-05-22 14:37:59', '2017-05-22 14:37:59'),
(2, 'AUTOSAL S.A.', 'AUTOSAL S.A.', '30-60655239-0', '919-700051-7', '4730-0011', 'repuestos@autosal.com.ar', 'Echeverría 930', 'Argentina', 'B1604ABB', '<p>Entrega de repuestos en SALCEDO 1142- Lomas del Mirador</p><p>Vendedor Adolfo Lopez</p>', 2, 207, 2, '2017-05-22 14:44:21', '2017-05-22 14:44:21'),
(3, 'ANTARCO S.R.L.', 'ANTARCO S.R.L.', '30-51748841-7', '902-865364-1', '4205-1568', 'antarco@antarco.com', 'Brandsen 1663', 'Argentina', 'B1873ARG', NULL, 2, 512, 2, '2017-05-22 14:49:25', '2017-05-22 14:49:25'),
(4, 'ANSAL REFRIGERACIÓN S.A.', 'ANSAL REFRIGERACIÓN S.A.', '30-51671259-3', '901-925853-2', '4958-2884/2866', 'ansal@ansal.com.ar', 'Otamendi 530/34', 'Argentina', 'C1405BRH', '<p>Alba Aparicio (venta repuestos) int. 31 alba.aparicio@ansal.com.ar</p><p>Martin Medina (cuentas corrientes) int. 41 martin.medina@ansal.com.ar</p>', 2, 1546, 3, '2017-05-22 14:57:15', '2017-05-22 14:57:15'),
(5, 'WHIRLPOOL', 'WHIRLPOOL ARGENTINA S.R.L.', '30-63634477-6', '902-947490-1', '4480-7132/7405', 'guillermo_russell@whirlpool.com', 'Av. Crovara 2550', 'Argentina', '1766', '<p>Vendedor Guillermo Russell cel. 15-3691-9415</p><p>N° cuenta 359666</p><p><br></p>', 2, 201, 2, '2017-05-22 17:15:49', '2017-05-22 17:15:49'),
(6, 'ZUL', 'VERZERO GONZALO', '23-26836796-9', '1509965-02', '4682-8856/0744', NULL, 'Av. Directorio 5446', 'Argentina', '1440', NULL, 2, 298, 3, '2017-05-22 17:19:45', '2017-05-22 17:19:45'),
(7, 'CIRCUITOS FRIOS S.A.', 'CIRCUITOS FRIOS S.A.', '30-71329070-6', '902-476656-0', '4669-6126', 'circuitosfriossa@yahoo.com.ar', 'Juan Sebastián Bach 3575', 'Argentina', '1765', NULL, 2, 194, 2, '2017-05-22 19:49:14', '2017-05-22 19:49:14'),
(8, 'DPMG', 'DPMG S.A.', '33-71126211-9', '901-33-71126211-9', '4139-6500/6501/4552/4551', 'ventas@dpmg.com.ar', 'Río Cuarto 2091', 'Argentina', 'C1292AAO', '<p>Vendedor Claudio Alvarez&nbsp;</p><p>Cuentas Corrientes Diego &nbsp;15-3644-2916&nbsp;<a href="mailto:diego.dellamonica@dpmg.com.ar" id="yui_3_16_0_ym19_1_1495465117863_31929" style="background: rgb(255, 255, 255); -webkit-padding-start: 0px; margin: 0px; padding: 0px; outline: none; font-family: &quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 13px; white-space: nowrap;">diego.dellamonica@dpmg.com.ar</a></p>', 2, 1546, 3, '2017-05-22 19:55:18', '2017-05-22 19:55:18'),
(9, 'REPUESTOS ROMA', 'FERNANDEZ ROBERTO MATÍAS', '23-34772686-9', '901-23-34772686-9', '5273-4354/55', 'robertofernandez@fyfcomex.com.ar', 'Perú 359 2° piso of. 203', 'Argentina', '1067', NULL, 2, 1546, 3, '2017-05-22 20:01:46', '2017-05-22 20:01:46'),
(10, 'GRACAR S.A.', 'GRACAR S.A.', '30-67763586-6', '912162-05', '4637-1854', 'gracar@speedy@.com.ar', 'Quirno 463/7', 'Argentina', '1406', NULL, 2, 294, 3, '2017-05-22 20:05:49', '2017-05-22 20:05:49'),
(11, 'GIACOMINO S.A.', 'GIACOMINO S.A.', '30-50287893-6', '901-30-50287893-6', '4911-2276/2828/1093', 'info@giacomino.com.ar', 'Pepirí 1072', 'Argentina', '1437', NULL, 2, 1546, 3, '2017-05-22 20:16:04', '2017-05-22 20:16:04'),
(12, 'REPUESTOS SALTA LAMBARE', 'SAMPIETRO JORGE LUIS', '20-13264499-4', '901-930933-6', '4305-7591', 'j_l_sampietro@speedy.com.ar', 'Salta 1773', 'Argentina', '1137', NULL, 2, 1546, 3, '2017-05-22 20:30:25', '2017-05-22 20:30:25'),
(13, 'MCT', 'INDUSTRIAS MCT S.R.L.', '30-70835483-6', '901-390304-3', '4687-9220', 'mctsrl@speedy.com.ar', 'José León Suarez 2785', 'Argentina', 'C1440EYY', NULL, 2, 1546, 3, '2017-05-22 20:32:51', '2017-05-22 20:32:51'),
(32, 'PANIZZA', 'DIEGO ADRIAN PANIZZA', '20-20255144-2', '901-20-20251442-2', '4139-6500', NULL, 'Rio Cuarto 2091', 'Argentina', 'C1292AAO', NULL, 2, 1546, 3, '2017-06-08 15:31:28', '2017-06-08 15:31:28'),
(33, 'FRÍO ÁRTICO', 'FRÍO ÁRTICO S.R.L.', '30-70974079-9', '901-222163-7', '4753-4373/4713-7802', 'administración@frioartico.com.ar', 'Honduras 3865 1°C', 'Argentina', '1180', 'Vendedor Santiago', 2, 1546, 3, '2017-06-08 15:50:03', '2017-06-08 15:50:03'),
(34, 'M M', 'M M REFRIGERACIÓN S.R.L.', '30-71070438-0', '30710704380', '4713-7802', 'ventas@mmrefrigeracion.com', 'Lincoln 1827', 'Argentina', '1650', 'Vendedor Santiago', 2, NULL, 2, '2017-06-08 16:03:29', '2017-06-08 16:03:29'),
(35, 'REFRIGERACIÓN OMAR S.R.L.', 'REFRIGERACIÓN OMAR S.R.L.', '30-53691426-5', '901-910493-8', '4641-1454/5321', 'refomar@refomar.com.ar', 'Av. Rivadavia 10501', 'Argentina', 'C1408AAF', '<p>4642-6359</p><p>4644-2140</p><p>4643-0615</p>', 2, 1546, 3, '2017-06-08 16:17:58', '2017-06-08 16:17:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Buenos Aires', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(2, 'Buenos Aires-GBA', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(3, 'Capital Federal', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(4, 'Catamarca', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(5, 'Chaco', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(6, 'Chubut', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(7, 'Córdoba', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(8, 'Corrientes', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(9, 'Entre Ríos', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(10, 'Formosa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(11, 'Jujuy', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(12, 'La Pampa', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(13, 'La Rioja', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(14, 'Mendoza', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(15, 'Misiones', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(16, 'Neuquén', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(17, 'Río Negro', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(18, 'Salta', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(19, 'San Juan', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(20, 'San Luis', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(21, 'Santa Cruz', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(22, 'Santa Fe', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(23, 'Santiago del Estero', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(24, 'Tierra del Fuego', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(25, 'Tucumán', '2017-03-15 03:00:00', '2017-03-15 03:00:00'),
(26, '', '2017-05-03 22:17:09', '2017-05-03 22:17:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones`
--

CREATE TABLE `reparaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `facturado` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reparaciones`
--

INSERT INTO `reparaciones` (`id`, `estado`, `facturado`, `user_id`, `cliente_id`, `created_at`, `updated_at`) VALUES
(2, '2', 0, 1, 16, '2017-06-06 02:48:30', '2017-06-06 05:07:05'),
(3, '1', 0, 1, 15, '2017-06-06 21:21:16', '2017-06-06 21:21:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones_items`
--

CREATE TABLE `reparaciones_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `reparacion_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reparaciones_items`
--

INSERT INTO `reparaciones_items` (`id`, `cliente_id`, `reparacion_id`, `producto_id`, `cantidad`, `valor`, `created_at`, `updated_at`) VALUES
(2, 16, 2, 2, 12, 12, '2017-06-06 02:50:27', '2017-06-06 02:50:27'),
(6, 16, 2, 2, 12, 1, '2017-06-06 04:26:11', '2017-06-06 04:26:11'),
(7, 16, 2, 2, 12, 12, '2017-06-06 04:26:19', '2017-06-06 04:26:19'),
(8, 15, 3, 1, 12, 12, '2017-06-06 21:22:33', '2017-06-06 21:22:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retenciones`
--

CREATE TABLE `retenciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurisdiccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nocomprobante` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importe` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilias`
--

CREATE TABLE `subfamilias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `familia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilias`
--

INSERT INTO `subfamilias` (`id`, `nombre`, `familia_id`, `created_at`, `updated_at`) VALUES
(5, 'Repuestos', 3, '2017-04-10 03:26:57', '2017-04-10 03:26:57'),
(6, 'Filtros', 3, '2017-04-10 03:28:54', '2017-04-10 03:35:56'),
(7, 'Motores', 2, '2017-04-10 03:29:44', '2017-04-10 03:29:44'),
(8, 'Repuestos', 2, '2017-04-10 03:30:13', '2017-04-18 02:13:08'),
(9, 'Equipo', 3, '2017-04-11 05:20:18', '2017-04-11 05:20:18'),
(10, 'Equipo', 2, '2017-04-11 05:21:10', '2017-04-11 05:21:10'),
(11, 'test', 3, '2017-05-03 22:15:30', '2017-05-03 22:15:30'),
(12, 'Repuestos', 4, '2017-05-04 08:52:04', '2017-05-04 08:52:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocts`
--

CREATE TABLE `tipocts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipocts`
--

INSERT INTO `tipocts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gremio', '2017-04-06 05:21:59', '2017-04-06 05:21:59'),
(2, 'Particular', '2017-04-06 05:22:08', '2017-04-06 05:22:08'),
(3, 'Especial', '2017-04-06 05:22:15', '2017-04-06 05:22:15'),
(4, 'Otro', '2017-04-06 05:23:09', '2017-04-06 05:23:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('user','admin','superadmin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `role` enum('seller','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'seller',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `type`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Leandro', 'javzero@hotmail.com', '1492529279.jpg', '$2y$10$cgDhH3RbTDKqRSm0ALRZteC2EVE2h58QVaXQO1GQ5trzVsrmIEqEm', 'superadmin', 'none', 'RrrMnDTHNJcTIIwaOWRl0WEPwxotIXy7zgTgFJyafe8roY2UMrGIGd3btLRO', '2009-10-27 06:37:05', '2017-04-18 18:28:00'),
(3, 'Julian', 'julian@hotmail.com', '', '$2y$10$Z3WB/YZH8vGmf93N3PTsw.H0AYCf9pMJtDtab/4nZbeDMYYValcKO', 'user', 'seller', NULL, '2017-03-26 07:20:28', '2017-03-28 03:13:12'),
(4, 'Pablo', 'pablo@hotmail.com', '', '$2y$10$JYcb1N2Sqs2FAtaWB0SekO/GKkJ16SUcdQ/PXH7u0bSdVl1MptFpG', 'admin', 'seller', NULL, '2017-03-20 07:58:24', '2017-03-28 03:46:32'),
(5, 'Juanjo', 'juanjo@hotmail.com', '', '$2y$10$s06ZXneElpIWSUFhz.h8xe/BzoZaOolL9s1CwWF/oNYPOt0mDSulK', 'admin', 'seller', NULL, '2017-03-20 07:58:35', '2017-03-28 03:52:24'),
(7, 'Viole', 'admstudiovimana@gmail.com', '', '$2y$10$huy014oOUy9t4KlyYi319.WY6cA7hu5tspKt2wq24sHSWGO.NqodG', 'admin', 'seller', 'h2Gk3YvTkO5WLbzO6CxjPT2SNXrEvYyQE1km48cKhPS03ULnzuHL6H9oc0to', '2017-05-20 20:57:42', '2017-05-20 20:57:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Partido de La Costa', '2009-10-27 06:40:21', '2009-10-27 06:40:21'),
(2, 'Avellaneda', '2009-10-27 06:40:58', '2009-10-27 06:40:58'),
(3, 'GranBA', '2009-10-27 06:41:35', '2009-10-27 06:41:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_iva_id_foreign` (`iva_id`),
  ADD KEY `clientes_provincia_id_foreign` (`provincia_id`),
  ADD KEY `clientes_localidad_id_foreign` (`localidad_id`),
  ADD KEY `clientes_condicventas_id_foreign` (`condicventas_id`),
  ADD KEY `clientes_listas_id_foreign` (`listas_id`),
  ADD KEY `clientes_user_id_foreign` (`user_id`),
  ADD KEY `clientes_zona_id_foreign` (`zona_id`),
  ADD KEY `clientes_flete_id_foreign` (`flete_id`),
  ADD KEY `tipo_id_2` (`tipo_id`);

--
-- Indices de la tabla `clientes_razonsocial`
--
ALTER TABLE `clientes_razonsocial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicventas`
--
ALTER TABLE `condicventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direntregas`
--
ALTER TABLE `direntregas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `direntregas_localidad_id_foreign` (`localidad_id`),
  ADD KEY `direntregas_provincia_id_foreign` (`provincia_id`),
  ADD KEY `direntregas_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `familias_proveedor_id_foreign` (`proveedor_id`);

--
-- Indices de la tabla `fletes`
--
ALTER TABLE `fletes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ivas`
--
ALTER TABLE `ivas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `pedidositems`
--
ALTER TABLE `pedidositems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidositems_cliente_id_foreign` (`cliente_id`),
  ADD KEY `pedidositems_pedido_id_foreign` (`pedido_id`),
  ADD KEY `pedidositems_producto_id_foreign` (`producto_id`),
  ADD KEY `factura_id` (`factura_id`);

--
-- Indices de la tabla `pedido_pedidositem`
--
ALTER TABLE `pedido_pedidositem`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_proveedor_id_foreign` (`proveedor_id`),
  ADD KEY `productos_familia_id_foreign` (`familia_id`),
  ADD KEY `productos_subfamilia_id_foreign` (`subfamilia_id`),
  ADD KEY `moneda_id` (`moneda_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedores_iva_id_foreign` (`iva_id`),
  ADD KEY `proveedores_localidad_id_foreign` (`localidad_id`),
  ADD KEY `proveedores_provincia_id_foreign` (`provincia_id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reparaciones_user_id_foreign` (`user_id`),
  ADD KEY `reparaciones_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `reparaciones_items`
--
ALTER TABLE `reparaciones_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reparaciones_items_cliente_id_foreign` (`cliente_id`),
  ADD KEY `reparaciones_items_producto_id_foreign` (`producto_id`),
  ADD KEY `reparaciones_items_reparacion_id_foreign` (`reparacion_id`);

--
-- Indices de la tabla `retenciones`
--
ALTER TABLE `retenciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subfamilias_proveedor_id_foreign` (`familia_id`);

--
-- Indices de la tabla `tipocts`
--
ALTER TABLE `tipocts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cheques`
--
ALTER TABLE `cheques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT de la tabla `clientes_razonsocial`
--
ALTER TABLE `clientes_razonsocial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `condicventas`
--
ALTER TABLE `condicventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `direntregas`
--
ALTER TABLE `direntregas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `fletes`
--
ALTER TABLE `fletes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ivas`
--
ALTER TABLE `ivas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3001;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT de la tabla `pedidositems`
--
ALTER TABLE `pedidositems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT de la tabla `pedido_pedidositem`
--
ALTER TABLE `pedido_pedidositem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `reparaciones_items`
--
ALTER TABLE `reparaciones_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `retenciones`
--
ALTER TABLE `retenciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tipocts`
--
ALTER TABLE `tipocts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_condicventas_id_foreign` FOREIGN KEY (`condicventas_id`) REFERENCES `condicventas` (`id`),
  ADD CONSTRAINT `clientes_flete_id_foreign` FOREIGN KEY (`flete_id`) REFERENCES `fletes` (`id`),
  ADD CONSTRAINT `clientes_iva_id_foreign` FOREIGN KEY (`iva_id`) REFERENCES `ivas` (`id`),
  ADD CONSTRAINT `clientes_listas_id_foreign` FOREIGN KEY (`listas_id`) REFERENCES `listas` (`id`),
  ADD CONSTRAINT `clientes_localidad_id_foreign` FOREIGN KEY (`localidad_id`) REFERENCES `localidades` (`id`),
  ADD CONSTRAINT `clientes_provincia_id_foreign` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`),
  ADD CONSTRAINT `clientes_tipoct_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipocts` (`id`),
  ADD CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clientes_zona_id_foreign` FOREIGN KEY (`zona_id`) REFERENCES `zonas` (`id`);

--
-- Filtros para la tabla `direntregas`
--
ALTER TABLE `direntregas`
  ADD CONSTRAINT `direntregas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `pedidositems`
--
ALTER TABLE `pedidositems`
  ADD CONSTRAINT `pedidositems_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `pedidositems_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidositems_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_familia_id_foreign` FOREIGN KEY (`familia_id`) REFERENCES `familias` (`id`),
  ADD CONSTRAINT `productos_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores1` (`id`),
  ADD CONSTRAINT `productos_subfamilia_id_foreign` FOREIGN KEY (`subfamilia_id`) REFERENCES `subfamilias` (`id`);

--
-- Filtros para la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD CONSTRAINT `reparaciones_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `reparaciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `reparaciones_items`
--
ALTER TABLE `reparaciones_items`
  ADD CONSTRAINT `reparaciones_items_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `reparaciones_items_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `reparaciones_items_reparacion_id_foreign` FOREIGN KEY (`reparacion_id`) REFERENCES `reparaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
