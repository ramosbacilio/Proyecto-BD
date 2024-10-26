-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2024 a las 01:18:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lic_fav`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `cod_cat` bigint(20) NOT NULL,
  `desc_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_categoria`
--

INSERT INTO `tb_categoria` (`cod_cat`, `desc_cat`) VALUES
(1, 'bebidas alcoholicas'),
(2, 'Embutidos'),
(3, 'abarrotes'),
(4, 'bebidas'),
(5, 'helados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_det_venta`
--

CREATE TABLE `tb_det_venta` (
  `cod_det_venta` bigint(20) NOT NULL,
  `cant_det_venta` int(11) DEFAULT NULL,
  `monto_det_venta` double DEFAULT NULL,
  `pre_det_venta` double DEFAULT NULL,
  `producto` bigint(20) DEFAULT NULL,
  `venta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_det_venta`
--

INSERT INTO `tb_det_venta` (`cod_det_venta`, `cant_det_venta`, `monto_det_venta`, `pre_det_venta`, `producto`, `venta`) VALUES
(1, 1, 5, 5, 1, 1),
(2, 2, 10, 5, 1, 2),
(3, 1, 6, 6, 2, 2),
(4, 1, 8, 8, 3, 2),
(5, 1, 4, 4, 4, 2),
(6, 1, 8, 8, 5, 2),
(7, 1, 7, 7, 6, 2),
(8, 1, 5, 5, 7, 2),
(9, 1, 8, 8, 3, 3),
(10, 1, 5, 5, 7, 3),
(11, 3, 21, 7, 6, 3),
(12, 1, 5, 5, 1, 4),
(13, 1, 4, 4, 4, 4),
(14, 3, 15, 5, 7, 4),
(15, 1, 5, 5, 1, 5),
(16, 1, 6, 6, 2, 5),
(17, 1, 8, 8, 3, 5),
(18, 1, 8, 8, 5, 5),
(19, 1, 5, 5, 1, 6),
(20, 1, 6, 6, 2, 6),
(21, 1, 8, 8, 3, 6),
(22, 1, 4, 4, 4, 6),
(23, 1, 7, 7, 6, 6),
(24, 1, 5, 5, 7, 6),
(25, 2, 10, 5, 7, 7),
(26, 2, 10, 5, 1, 8),
(27, 1, 6, 6, 2, 8),
(28, 3, 24, 8, 3, 8),
(29, 3, 15, 5, 1, 9),
(30, 1, 8, 8, 3, 9),
(31, 1, 8, 8, 5, 9),
(32, 12, 120, 10, 8, 10),
(33, 1, 5, 5, 1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE `tb_producto` (
  `cod_pro` bigint(20) NOT NULL,
  `desc_pro` varchar(255) DEFAULT NULL,
  `est_pro` bit(1) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `pre_pro` double DEFAULT NULL,
  `stck_pro` int(11) DEFAULT NULL,
  `categoria` bigint(20) DEFAULT NULL,
  `proveedor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_producto`
--

INSERT INTO `tb_producto` (`cod_pro`, `desc_pro`, `est_pro`, `foto`, `pre_pro`, `stck_pro`, `categoria`, `proveedor`) VALUES
(1, 'whisky', b'1', 'img1.jpeg', 5, 10, 1, 1),
(2, 'arroz', b'1', 'QNEPg4wJBTYojcFFD3rxYSMC89uIu3UO8FqORqP9_1.webp', 6, 20, 3, 1),
(3, 'pan integral', b'1', 'descarga.png', 8, 26, 3, 1),
(4, 'jamonada', b'1', 'descarga.jpeg', 4, 26, 2, 1),
(5, 'harina', b'1', 'tienda_010816_ba5428d8be271dc30f393b38bb1684509eab30b1_producto_large_90.png', 8, 60, 3, 5),
(6, 'atun', b'1', 'descarga (1).jpeg', 7, 15, 3, 8),
(7, 'friorico', b'1', 'donofrio-helados-frio-rico-x-120-ml-capuccino.jpg', 5, 18, 5, 7),
(8, 'leche', b'1', 'descarga (2).jpeg', 10, 12, 3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedor`
--

CREATE TABLE `tb_proveedor` (
  `cod_pro` bigint(20) NOT NULL,
  `email_prov` varchar(255) DEFAULT NULL,
  `nom_prov` varchar(255) DEFAULT NULL,
  `tel_prov` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_proveedor`
--

INSERT INTO `tb_proveedor` (`cod_pro`, `email_prov`, `nom_prov`, `tel_prov`) VALUES
(1, 'old121@gmail.com', 'oldtime', '990769176'),
(2, 'costeio-123@gmail.com', 'costeño', '456123'),
(3, 'bimbo15@gmail.com', 'bimbo', '940362454'),
(4, 'sanfernando@gmail.com', 'sanfernando', '9556546'),
(5, 'blancaflor@gmail.com', 'blancaflor', '55256694'),
(6, 'molitalia@gmail.com', 'molitalia', '464264'),
(7, 'donofrio@gmail.com', 'donofrio', '446565'),
(8, 'campomar@gmail.com', 'campomar', '8745489'),
(9, 'gloria@gmail.com', 'gloria', '4541235');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rol`
--

CREATE TABLE `tb_rol` (
  `cod_rol` bigint(20) NOT NULL,
  `desc_rol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rol`
--

INSERT INTO `tb_rol` (`cod_rol`, `desc_rol`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'ADMIN'),
(4, 'USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `cod_usua` bigint(20) NOT NULL,
  `ape_usua` varchar(255) DEFAULT NULL,
  `cla_usua` varchar(255) DEFAULT NULL,
  `est_usua` tinyint(1) DEFAULT 1,
  `fna_usua` datetime(6) DEFAULT NULL,
  `nom_usua` varchar(255) DEFAULT NULL,
  `user_usua` varchar(255) NOT NULL,
  `rol` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`cod_usua`, `ape_usua`, `cla_usua`, `est_usua`, `fna_usua`, `nom_usua`, `user_usua`, `rol`) VALUES
(1, 'ramos', '123456', NULL, '2003-10-31 19:00:00.000000', 'ROCIO', 'rocioadmin', 1),
(2, 'Salinas', '2003', NULL, '2024-10-05 19:00:00.000000', 'jorge', 'jorge', 1),
(3, 'flores', '123', NULL, '2024-10-02 19:00:00.000000', 'angel', 'angel', 1),
(4, 'panduro', '2003', NULL, '2024-10-09 19:00:00.000000', 'kervin', 'kervin', 2),
(5, 'pepinillo', '2003', NULL, '2024-10-23 19:00:00.000000', 'cristhian', 'cristhian', 2),
(6, 'Reyes', 'alfre', NULL, '2024-10-23 19:00:00.000000', 'Alfredo', 'alfre', 2),
(7, 'ramos', '123', NULL, '2024-10-03 19:00:00.000000', 'ROCIO', 'rosi', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_venta`
--

CREATE TABLE `tb_venta` (
  `cod_ven` bigint(20) NOT NULL,
  `fch_ven` datetime(6) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `cod_usua` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_venta`
--

INSERT INTO `tb_venta` (`cod_ven`, `fch_ven`, `monto`, `cod_usua`) VALUES
(1, '2024-10-24 23:29:15.000000', 5, 2),
(2, '2024-10-25 00:02:23.000000', 48, 2),
(3, '2024-10-25 00:03:41.000000', 34, 2),
(4, '2024-10-25 00:08:26.000000', 24, 4),
(5, '2024-10-25 00:13:56.000000', 27, 2),
(6, '2024-10-25 00:20:47.000000', 35, 2),
(7, '2024-10-25 00:23:43.000000', 10, 2),
(8, '2024-10-25 00:48:01.000000', 40, 2),
(9, '2024-10-25 01:11:56.000000', 31, 2),
(10, '2024-10-25 01:18:13.000000', 120, 5),
(11, '2024-10-26 17:03:01.000000', 5, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`cod_cat`);

--
-- Indices de la tabla `tb_det_venta`
--
ALTER TABLE `tb_det_venta`
  ADD PRIMARY KEY (`cod_det_venta`),
  ADD KEY `FKhunq88vig1iydatmdvdhx1r9b` (`producto`),
  ADD KEY `FK7k0ovgq2emo0jod1kp92y40qx` (`venta`);

--
-- Indices de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD PRIMARY KEY (`cod_pro`),
  ADD KEY `FK3uhyqnetpx59hk1c5ong43oef` (`categoria`),
  ADD KEY `FKhkx845uhbd811t8o1hxt2mbfs` (`proveedor`);

--
-- Indices de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  ADD PRIMARY KEY (`cod_pro`);

--
-- Indices de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  ADD PRIMARY KEY (`cod_rol`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`cod_usua`),
  ADD UNIQUE KEY `UK_pbpde2qiycd40sgn5y4btbdxd` (`user_usua`),
  ADD KEY `FKfl8lkrdix6xhhnx2pe17xq7da` (`rol`);

--
-- Indices de la tabla `tb_venta`
--
ALTER TABLE `tb_venta`
  ADD PRIMARY KEY (`cod_ven`),
  ADD KEY `FKd07b9upd4a1iolvbeg1atcl1q` (`cod_usua`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `cod_cat` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_det_venta`
--
ALTER TABLE `tb_det_venta`
  MODIFY `cod_det_venta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  MODIFY `cod_pro` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  MODIFY `cod_pro` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  MODIFY `cod_rol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `cod_usua` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_venta`
--
ALTER TABLE `tb_venta`
  MODIFY `cod_ven` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_det_venta`
--
ALTER TABLE `tb_det_venta`
  ADD CONSTRAINT `FK7k0ovgq2emo0jod1kp92y40qx` FOREIGN KEY (`venta`) REFERENCES `tb_venta` (`cod_ven`),
  ADD CONSTRAINT `FKhunq88vig1iydatmdvdhx1r9b` FOREIGN KEY (`producto`) REFERENCES `tb_producto` (`cod_pro`);

--
-- Filtros para la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD CONSTRAINT `FK3uhyqnetpx59hk1c5ong43oef` FOREIGN KEY (`categoria`) REFERENCES `tb_categoria` (`cod_cat`),
  ADD CONSTRAINT `FKhkx845uhbd811t8o1hxt2mbfs` FOREIGN KEY (`proveedor`) REFERENCES `tb_proveedor` (`cod_pro`);

--
-- Filtros para la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `FKfl8lkrdix6xhhnx2pe17xq7da` FOREIGN KEY (`rol`) REFERENCES `tb_rol` (`cod_rol`);

--
-- Filtros para la tabla `tb_venta`
--
ALTER TABLE `tb_venta`
  ADD CONSTRAINT `FKd07b9upd4a1iolvbeg1atcl1q` FOREIGN KEY (`cod_usua`) REFERENCES `tb_usuarios` (`cod_usua`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
