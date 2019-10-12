-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: bd_tienda
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bd_carrito`
--

DROP TABLE IF EXISTS `bd_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_carrito` (
  `bd_idcarrito` char(20) NOT NULL COMMENT 'Identificación del carrito',
  `bd_totalcarrito` decimal(15,2) NOT NULL COMMENT 'Total compra',
  PRIMARY KEY (`bd_idcarrito`),
  UNIQUE KEY `bd_carrito__un` (`bd_idcarrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_carrito`
--

LOCK TABLES `bd_carrito` WRITE;
/*!40000 ALTER TABLE `bd_carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `bd_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_detalle_pedido`
--

DROP TABLE IF EXISTS `dp_detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_detalle_pedido` (
  `dp_id_pedido` char(50) NOT NULL COMMENT 'IdentificaciÃ³n del pedido',
  `dp_fecha` char(10) NOT NULL COMMENT 'Fecha de solicitud',
  `dp_estado` char(10) NOT NULL COMMENT 'Estado del pedido',
  `dp_valor_venta` decimal(15,2) NOT NULL COMMENT 'Valor del pedido',
  `dp_valor_compra` decimal(15,2) NOT NULL COMMENT 'Valor compra del pedido',
  PRIMARY KEY (`dp_id_pedido`),
  UNIQUE KEY `dp_detalle_pedido__un` (`dp_id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_detalle_pedido`
--

LOCK TABLES `dp_detalle_pedido` WRITE;
/*!40000 ALTER TABLE `dp_detalle_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro_clientes`
--

DROP TABLE IF EXISTS `maestro_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestro_clientes` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro_clientes`
--

LOCK TABLES `maestro_clientes` WRITE;
/*!40000 ALTER TABLE `maestro_clientes` DISABLE KEYS */;
INSERT INTO `maestro_clientes` VALUES (1,1214724777,'CC','Santiago','Molina','canopus44@gmail.com','3132625153','CL 82 # 43 -85','050001','MEDELLIN','ANTIOQUIA','COLOMBIA','123456',NULL,'admin',NULL),(3,1247812389,'CC','Alejandra','Marin','alejandra.marin@gmail.com','3139999999','CL 101 # 45 -99','0','Bogota','Antioquia','Colombia','123456','','user','0'),(7,12311231,'CC','Juan','Gonzalez','juan.gonzalez@gmail.com','3119999999','CL 101 # 45 -99','001001','Bogota','Cundinamarca','Colombia','123456','','user','0'),(8,1231676321,'CC','Jose','Luis','amaltea199@gmail.com','2631040','cl73#46-16','0','Medellin','','Colombia','1234','','user','0'),(9,112,'CC','sa','as','dsds','34','sd','0','ds','sd','sd','','','user','0'),(11,1214725522,'CC','Geraldine','Martinez','gigi.martinez@gmail.com','3113953017','CL 65 # 100','0','Medellin','Antioquia','Colombia','123456','','user','0');
/*!40000 ALTER TABLE `maestro_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro_inventario`
--

DROP TABLE IF EXISTS `maestro_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestro_inventario` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro_inventario`
--

LOCK TABLES `maestro_inventario` WRITE;
/*!40000 ALTER TABLE `maestro_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `maestro_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro_productos`
--

DROP TABLE IF EXISTS `maestro_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestro_productos` (
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
  PRIMARY KEY (`mp_idprod`),
  UNIQUE KEY `maestro_productos__un` (`mp_idprod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin5 COLLATE=latin5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro_productos`
--

LOCK TABLES `maestro_productos` WRITE;
/*!40000 ALTER TABLE `maestro_productos` DISABLE KEYS */;
INSERT INTO `maestro_productos` VALUES (1,'EjemploMarca','Producto1','Referencia1','2010','si','NotaSalida1','NotaCorazon1','NotaFondo1','Categoria1',1,20,'Masculino',30000.00,35000.00,10.00,30000.00,'No',10);
/*!40000 ALTER TABLE `maestro_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro_proveedores`
--

DROP TABLE IF EXISTS `maestro_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestro_proveedores` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro_proveedores`
--

LOCK TABLES `maestro_proveedores` WRITE;
/*!40000 ALTER TABLE `maestro_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `maestro_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_tienda'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-12 13:11:06
