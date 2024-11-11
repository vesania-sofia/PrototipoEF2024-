-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: colchoneria
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_bitacora`
--

DROP TABLE IF EXISTS `tbl_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bitacora` (
  `Pk_id_bitacora` int NOT NULL AUTO_INCREMENT,
  `Fk_id_usuario` int NOT NULL,
  `Fk_id_aplicacion` int NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time NOT NULL,
  `host_bitacora` varchar(45) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `accion_bitacora` varchar(200) NOT NULL,
  `tabla` varchar(50) NOT NULL,
  PRIMARY KEY (`Pk_id_bitacora`),
  KEY `Fk_id_usuario` (`Fk_id_usuario`),
  KEY `Fk_id_aplicacion` (`Fk_id_aplicacion`),
  CONSTRAINT `tbl_bitacora_ibfk_1` FOREIGN KEY (`Fk_id_usuario`) REFERENCES `tbl_usuarios` (`Pk_id_usuario`),
  CONSTRAINT `tbl_bitacora_ibfk_2` FOREIGN KEY (`Fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`Pk_id_aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora`
--

LOCK TABLES `tbl_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_bitacora` VALUES (200,1,1000,'2024-11-08','02:45:30','sofia','192.168.137.1','Se logeo al sistema','Login'),(201,1,1000,'2024-11-08','02:46:32','sofia','192.168.137.1','Consultó los encabezados de lista: ','Tbl_lista_encabezado'),(202,1,1000,'2024-11-08','02:46:34','sofia','192.168.137.1','Consultó tipos de lista: ','Tbl_clasificacionLista'),(203,1,3000,'2024-11-08','02:46:40','sofia','192.168.137.1','Realizo una consulta a clasificación Lista de Precios','Tbl_clasificacionLista'),(204,1,1000,'2024-11-08','02:46:40','sofia','192.168.137.1','Consultó los encabezados de lista: ','Tbl_lista_encabezado'),(205,1,1000,'2024-11-08','02:46:40','sofia','192.168.137.1','Consultó tipos de lista: ','Tbl_clasificacionLista'),(206,1,1000,'2024-11-08','02:49:20','sofia','192.168.137.1','Se logeo al sistema','Login'),(207,1,1000,'2024-11-08','02:50:17','sofia','192.168.137.1','Consultó los encabezados de lista: ','Tbl_lista_encabezado'),(208,1,1000,'2024-11-08','02:50:19','sofia','192.168.137.1','Consultó tipos de lista: ','Tbl_clasificacionLista'),(209,1,3000,'2024-11-08','02:51:49','sofia','192.168.137.1','Se insertó en Tbl_proveedores','Tbl_proveedores'),(210,1,3000,'2024-11-08','03:01:56','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(211,1,1000,'2024-11-08','03:07:41','sofia','192.168.137.1','Consultó los encabezados de lista: ','Tbl_lista_encabezado'),(212,1,1000,'2024-11-08','03:07:43','sofia','192.168.137.1','Consultó tipos de lista: ','Tbl_clasificacionLista'),(213,1,3000,'2024-11-08','03:08:05','sofia','192.168.137.1','Realizo una consulta a clasificación Lista de Precios','Tbl_clasificacionLista'),(214,1,1000,'2024-11-08','03:08:06','sofia','192.168.137.1','Consultó los encabezados de lista: ','Tbl_lista_encabezado'),(215,1,1000,'2024-11-08','03:08:06','sofia','192.168.137.1','Consultó tipos de lista: ','Tbl_clasificacionLista'),(216,1,1000,'2024-11-08','03:11:08','sofia','192.168.137.1','Inserto un nuevo encabezado de lista: 10','Tbl_lista_encabezado'),(217,1,1000,'2024-11-08','03:11:08','sofia','192.168.137.1','Inserto Detalle de lista: 10','Tbl_lista_detalle'),(218,1,1000,'2024-11-08','03:11:59','sofia','192.168.137.1','Consultó los encabezados de lista: ','Tbl_lista_encabezado'),(219,1,1000,'2024-11-08','03:12:00','sofia','192.168.137.1','Consultó tipos de lista: ','Tbl_clasificacionLista'),(220,1,1000,'2024-11-08','03:15:18','sofia','192.168.137.1','Se logeo al sistema','Login'),(221,1,3000,'2024-11-08','12:26:43','sofia','192.168.137.1','Realizó una insercion a la tabla de cotizacion encabezado','Tbl_cotizacion_encabezado'),(222,1,3000,'2024-11-08','15:07:37','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(223,1,3000,'2024-11-08','15:07:37','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(224,1,3000,'2024-11-08','15:07:38','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(225,1,3000,'2024-11-08','15:20:31','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(226,1,1000,'2024-11-08','15:35:02','sofia','192.168.137.1','Se logeo al sistema','Login'),(227,1,1000,'2024-11-08','15:48:40','sofia','192.168.137.1','Se logeo al sistema','Login'),(228,1,1000,'2024-11-08','16:00:45','sofia','192.168.137.1','Se logeo al sistema','Login'),(229,1,1000,'2024-11-08','16:04:18','sofia','192.168.137.1','Se logeo al sistema','Login'),(230,1,3000,'2024-11-08','16:06:30','sofia','192.168.137.1','Realizó una insercion a la tabla de cotizacion encabezado','Tbl_cotizacion_encabezado'),(231,1,3000,'2024-11-08','16:06:30','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(232,1,3000,'2024-11-08','16:06:31','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(233,1,3000,'2024-11-08','21:27:37','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(234,1,3000,'2024-11-08','21:27:38','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(235,1,1000,'2024-11-09','15:20:44','sofia','192.168.137.1','Se logeo al sistema','Login'),(236,1,1000,'2024-11-09','15:21:30','sofia','192.168.137.1','Se logeo al sistema','Login'),(237,1,1000,'2024-11-09','16:20:00','sofia','192.168.137.1','Se logeo al sistema','Login'),(238,1,1000,'2024-11-09','16:21:55','sofia','192.168.137.1','Se logeo al sistema','Login'),(239,1,1000,'2024-11-09','16:26:06','sofia','192.168.137.1','Se logeo al sistema','Login'),(240,1,1000,'2024-11-11','08:32:26','sofia','192.168.137.1','Se logeo al sistema','Login'),(241,1,1000,'2024-11-11','08:34:25','sofia','192.168.56.1','Se logeo al sistema','Login'),(242,1,1000,'2024-11-11','08:43:25','sofia','192.168.137.1','Se logeo al sistema','Login'),(243,1,1000,'2024-11-11','08:43:34','sofia','192.168.137.1','Se logeo al sistema','Login'),(244,1,1000,'2024-11-11','08:56:41','sofia','192.168.137.1','Se logeo al sistema','Login'),(245,1,1000,'2024-11-11','08:56:47','sofia','192.168.137.1','Se logeo al sistema','Login'),(246,3,1000,'2024-11-11','09:03:21','sofia','192.168.137.1','Se logeo al sistema','Login'),(247,3,1000,'2024-11-11','09:13:30','sofia','192.168.137.1','Se logeo al sistema','Login'),(248,3,1000,'2024-11-11','09:13:47','sofia','192.168.137.1','Se logeo al sistema','Login'),(249,3,1000,'2024-11-11','09:14:41','sofia','192.168.137.1','Se logeo al sistema','Login'),(250,3,1000,'2024-11-11','09:14:47','sofia','192.168.137.1','Se logeo al sistema','Login'),(251,3,3000,'2024-11-11','09:16:22','sofia','192.168.137.1','Se insertó en Tbl_proveedores','Tbl_proveedores'),(252,3,3000,'2024-11-11','09:20:55','sofia','192.168.137.1','Se insertó en Tbl_vendedores','Tbl_vendedores'),(253,3,3000,'2024-11-11','09:22:23','sofia','192.168.137.1','Se insertó en Tbl_clientes','Tbl_clientes'),(254,1,3000,'2024-11-11','09:27:01','sofia','192.168.137.1','Realizó una insercion a la tabla de cotizacion encabezado','Tbl_cotizacion_encabezado'),(255,1,3000,'2024-11-11','09:27:34','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle'),(256,1,3000,'2024-11-11','09:27:34','sofia','192.168.137.1','Realizó una insercion a la tabla de Detalle cotizacion','Tbl_cotizacion_detalle');
/*!40000 ALTER TABLE `tbl_bitacora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:59
