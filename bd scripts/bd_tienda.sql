-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2019 a las 22:03:22
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tienda`
--
CREATE DATABASE IF NOT EXISTS `bd_tienda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_carrito`
--
-- Creación: 14-10-2019 a las 23:10:53
--

DROP TABLE IF EXISTS `bd_carrito`;
CREATE TABLE IF NOT EXISTS `bd_carrito` (
  `bd_idcarrito` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificación del carrito',
  `bd_totalcarrito` decimal(15,2) NOT NULL COMMENT 'Total compra',
  `bd_nombreprod` varchar(100) NOT NULL,
  `bd_imgprod` varchar(200) DEFAULT NULL,
  `bd_precioprod` decimal(15,2) DEFAULT NULL,
  `bd_cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`bd_idcarrito`),
  UNIQUE KEY `bd_carrito__un` (`bd_idcarrito`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bd_carrito`
--

INSERT INTO `bd_carrito` (`bd_idcarrito`, `bd_totalcarrito`, `bd_nombreprod`, `bd_imgprod`, `bd_precioprod`, `bd_cantidad`) VALUES
(8, '1.10', ' Victoria\'s Secret Bomshell', 'images/shop/Victoria\'sSecretBombshell.jpg', '0.00', 0),
(9, '1.10', 'Paco Rabbane Olimpea', 'images/shop/PacoRabbaneOlimpea.jpg', '0.00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dp_detalle_pedido`
--
-- Creación: 01-10-2019 a las 20:59:40
--

DROP TABLE IF EXISTS `dp_detalle_pedido`;
CREATE TABLE IF NOT EXISTS `dp_detalle_pedido` (
  `dp_id_pedido` char(50) NOT NULL COMMENT 'IdentificaciÃ³n del pedido',
  `dp_fecha` char(10) NOT NULL COMMENT 'Fecha de solicitud',
  `dp_estado` char(10) NOT NULL COMMENT 'Estado del pedido',
  `dp_valor_venta` decimal(15,2) NOT NULL COMMENT 'Valor del pedido',
  `dp_valor_compra` decimal(15,2) NOT NULL COMMENT 'Valor compra del pedido',
  PRIMARY KEY (`dp_id_pedido`),
  UNIQUE KEY `dp_detalle_pedido__un` (`dp_id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_clientes`
--
-- Creación: 06-10-2019 a las 05:38:52
--

DROP TABLE IF EXISTS `maestro_clientes`;
CREATE TABLE IF NOT EXISTS `maestro_clientes` (
  `mc_idcl` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nro Interno de cliente',
  `mc_nrodoc` int(11) NOT NULL COMMENT 'Nro documento del cliente',
  `mc_tpoid` char(5) NOT NULL COMMENT 'Tipo de documento',
  `mc_nombre` char(60) DEFAULT NULL COMMENT 'Nombres',
  `mc_apellido` char(60) DEFAULT NULL COMMENT 'Apellidos',
  `mc_email` char(30) NOT NULL COMMENT 'Correo electrÃ³nico',
  `mc_telefono` char(20) NOT NULL COMMENT 'TelÃ©fono de contacto',
  `mc_direcc` char(50) NOT NULL COMMENT 'DirecciÃ³n de residencia',
  `mc_codpostal` char(50) DEFAULT NULL COMMENT 'CÃ³digo postal',
  `mc_ciudad` char(50) DEFAULT NULL COMMENT 'Ciudad de residencia',
  `mc_depto` char(50) DEFAULT NULL COMMENT 'Departamento de residencia',
  `mc_pais` char(50) DEFAULT NULL COMMENT 'PaÃ­s de redicencia',
  `mc_pswd` char(50) NOT NULL COMMENT 'ContraseÃ±a',
  `mc_foto` char(200) DEFAULT NULL COMMENT 'Foto',
  `mc_rol` char(200) DEFAULT NULL,
  `mc_descuento` char(20) DEFAULT NULL COMMENT 'Descuento',
  PRIMARY KEY (`mc_idcl`),
  UNIQUE KEY `maestro_clientes__un` (`mc_nrodoc`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maestro_clientes`
--

INSERT INTO `maestro_clientes` (`mc_idcl`, `mc_nrodoc`, `mc_tpoid`, `mc_nombre`, `mc_apellido`, `mc_email`, `mc_telefono`, `mc_direcc`, `mc_codpostal`, `mc_ciudad`, `mc_depto`, `mc_pais`, `mc_pswd`, `mc_foto`, `mc_rol`, `mc_descuento`) VALUES
(1, 1214724777, 'CC', 'Santiago', 'Molina', 'canopus44@gmail.com', '3132625153', 'CL 82 # 43 -85', '050001', 'MEDELLIN', 'ANTIOQUIA', 'COLOMBIA', '123456', NULL, 'admin', NULL),
(7, 12311231, 'CC', 'Juan', 'Gonzalez', 'juan.gonzalez@gmail.com', '3119999999', 'CL 101 # 45 -99', '001001', 'Bogota', 'Cundinamarca', 'Colombia', '123456', '', 'user', '0'),
(8, 1231676321, 'CC', 'Jose', 'Luis', 'amaltea199@gmail.com', '2631040', 'cl73#46-16', '0', 'Medellin', '', 'Colombia', '1234', '', 'user', '0'),
(11, 1214725522, 'CC', 'Geraldine', 'Martinez', 'gigi.martinez@gmail.com', '3113953017', 'CL 65 # 100', '0', 'Medellin', 'Antioquia', 'Colombia', '123456', '', 'user', '0'),
(13, 1323456765, 'CC', 'Lucas', 'Martine', 'Lucasslm@gmail.com', '5276062', 'cll 73 #50-90', '500928', 'Medellin', 'Campo Valez', 'Colombia', '1234', '', 'user', '0'),
(15, 22, 'CC', 's', 's', 'asa@gmail.com', '23', 'asa', '23', 'as', 'as', 'as', 'ss', '', 'user', '0'),
(16, 12, 'CC', 'sa', 'as', 'as', '12', 'sa', '23', 'as', 'as', 'canopus44@gmail.com', '123456', '', 'user', '0'),
(18, 98567270, 'CC', 'William', 'Tirado', 'cualquiercosa@gmail.com', '3999999', 'cl 8 nr 9', '0', 'Medellin', 'Antioquia', 'Colombia', '123456', '', 'user', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_inventario`
--
-- Creación: 01-10-2019 a las 20:59:40
--

DROP TABLE IF EXISTS `maestro_inventario`;
CREATE TABLE IF NOT EXISTS `maestro_inventario` (
  `ma_idproducto` char(50) NOT NULL COMMENT 'IdentificaciÃ³n del producto',
  `ma_nombreprd` char(50) NOT NULL COMMENT 'Nombre del producto',
  `ma_marca` char(50) DEFAULT NULL COMMENT 'Marca',
  `ma_referencia` char(50) DEFAULT NULL COMMENT 'Referencia',
  `ma_idproveedor` char(50) NOT NULL COMMENT 'Id del proveedor',
  `ma_unidadesexistencia` int(11) NOT NULL COMMENT 'Unidades en existencia del producto',
  `ma_preciocosto` double NOT NULL COMMENT 'Precio del costo',
  `ma_precioventa` double NOT NULL COMMENT 'Precio de venta',
  PRIMARY KEY (`ma_idproducto`),
  UNIQUE KEY `maestro_inventario__un` (`ma_idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_productos`
--
-- Creación: 14-10-2019 a las 20:10:24
--

DROP TABLE IF EXISTS `maestro_productos`;
CREATE TABLE IF NOT EXISTS `maestro_productos` (
  `mp_idprod` int(50) NOT NULL AUTO_INCREMENT COMMENT 'Id Producto',
  `mp_marca` char(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Id del producto',
  `mp_nombreprd` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `mp_referencia` char(50) CHARACTER SET latin1 NOT NULL COMMENT 'Referencia',
  `mp_anoinic` char(8) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Ano de lanzamiento',
  `mp_fmlaolfat` char(30) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Familia olfativa',
  `mp_nota_salida` char(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Nota de salida',
  `mp_nota_corazon` char(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Nota de corazon',
  `mp_nota_fondo` char(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Nota de fondo',
  `mp_categoria` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `mp_tipo` int(11) DEFAULT NULL COMMENT 'Peso en MililÃ­tros',
  `mp_onzas` int(11) DEFAULT NULL COMMENT 'Onzas',
  `mp_genero` char(10) CHARACTER SET latin1 DEFAULT NULL COMMENT 'GÃ©nero',
  `mp_precio_compra` decimal(15,2) NOT NULL COMMENT 'Precio de compra',
  `mp_precio_venta` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT 'Precio de venta',
  `mp_descuentro` decimal(15,2) DEFAULT NULL COMMENT 'Descuento',
  `mp_precio_descto` decimal(15,2) DEFAULT NULL COMMENT 'Precio de venta con descuento',
  `mp_oferta` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `mp_stock` int(11) NOT NULL DEFAULT 0 COMMENT 'Unidades en Stock',
  `mp_imagen` varchar(200) COLLATE latin5_bin DEFAULT NULL COMMENT 'Imagen del producto',
  PRIMARY KEY (`mp_idprod`),
  UNIQUE KEY `maestro_productos__un` (`mp_idprod`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin5 COLLATE=latin5_bin;

--
-- Volcado de datos para la tabla `maestro_productos`
--

INSERT INTO `maestro_productos` (`mp_idprod`, `mp_marca`, `mp_nombreprd`, `mp_referencia`, `mp_anoinic`, `mp_fmlaolfat`, `mp_nota_salida`, `mp_nota_corazon`, `mp_nota_fondo`, `mp_categoria`, `mp_tipo`, `mp_onzas`, `mp_genero`, `mp_precio_compra`, `mp_precio_venta`, `mp_descuentro`, `mp_precio_descto`, `mp_oferta`, `mp_stock`, `mp_imagen`) VALUES
(1, 'EjemploMarca', 'Rabbane Invictus INTENSE', 'Referencia1', '2010', 'si', 'NotaSalida1', 'NotaCorazon1', 'NotaFondo1', 'Categoria1', 1, 20, 'Masculino', '30000.00', '35000.00', '10.00', '30000.00', 'No', 10, 'images/shop/invictus.jpg\"'),
(2, 'Carolina Herrera', ' Victoria\'s Secret Bomshell', '1', '2012', 'Si', 'By CH', '0', 'Locion', 'Perfume', 1, 15, 'Femenino', '0.00', '70000.00', '20.00', '0.00', '10000', 19, 'images/shop/Victoria\'sSecretBombshell.jpg'),
(3, 'test', 'Paco Rabbane Olimpea', 'test', '2012', 'si', 's', '0', 's', 's', 1, 2, 's', '0.00', '1.00', '1.00', '0.00', 's', 3, 'images/shop/PacoRabbaneOlimpea.jpg'),
(4, 'carro', 'Paco Rabbane XS Women', 'ca', '2019', 'si', 's', '0', 's', 's', 0, 5, 's', '9.00', '9.00', '9.00', '9.00', '9', 9, 'images/shop/PacoRabbaneXSWomen.jpg'),
(5, 'carro', 'Paco Rabanne One Millio', 'ca', '2019', 'si', 's', '0', 's', 's', 0, 6, 's', '9.00', '9.00', '9.00', '9.00', '9', 9, 'images/shop/onemillion.jpg '),
(6, 'EjemploMarca', 'Paco Rabbane Black XS', 'Referencia1', '2010', 'si', 'NotaSalida1', 'NotaCorazon1', 'NotaFondo1', 'Categoria1', 1, 20, 'Masculino', '30000.00', '35000.00', '10.00', '30000.00', 'No', 10, 'images/shop/blackXS.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_proveedores`
--
-- Creación: 01-10-2019 a las 20:59:40
--

DROP TABLE IF EXISTS `maestro_proveedores`;
CREATE TABLE IF NOT EXISTS `maestro_proveedores` (
  `mp_idproveedor` char(50) NOT NULL COMMENT 'Identificación del proveedor',
  `mp_nombreproveedor` char(100) DEFAULT NULL COMMENT 'Nombre del proveedor',
  `mp_ciudad` char(50) DEFAULT NULL COMMENT 'Ciudad del proveedor',
  `mp_departamento` char(50) DEFAULT NULL COMMENT 'Departamento del proveedor',
  `mp_codpostal` char(30) DEFAULT NULL COMMENT 'Código postal',
  `mp_provincia` char(50) DEFAULT NULL COMMENT 'Provincia',
  `mp_pais` char(50) DEFAULT NULL COMMENT 'País',
  `mp_numtelefono` char(20) DEFAULT NULL COMMENT 'Número de teléfono',
  `mp_numfax` char(10) DEFAULT NULL COMMENT 'Número de Fax',
  `mp_email` char(30) DEFAULT NULL COMMENT 'Dirección de correo electrónico',
  PRIMARY KEY (`mp_idproveedor`),
  UNIQUE KEY `maestro_proveedores__un` (`mp_idproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
