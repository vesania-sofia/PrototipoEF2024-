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
-- Table structure for table `tbl_factura_encabezado`
--

DROP TABLE IF EXISTS `tbl_factura_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_factura_encabezado` (
  `Pk_id_facturaEnc` varchar(20) NOT NULL,
  `Fk_id_vendedor` int DEFAULT NULL,
  `Fk_id_cliente` int DEFAULT NULL,
  `Fk_id_PeidoEnc` varchar(20) NOT NULL,
  `CotizacionEnc_fechaCrea` date DEFAULT NULL,
  `CotizacionEnc_fechaVenc` date DEFAULT NULL,
  `factura_formPago` varchar(20) NOT NULL,
  `factura_subtotal` decimal(10,2) NOT NULL,
  `factura_iva` decimal(4,2) NOT NULL DEFAULT '0.12',
  `facturaEnc_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_facturaEnc`),
  UNIQUE KEY `Pk_id_facturaEnc` (`Pk_id_facturaEnc`),
  KEY `Fk_id_vendedor` (`Fk_id_vendedor`),
  KEY `Fk_id_cliente` (`Fk_id_cliente`),
  KEY `fk_factura_pedido` (`Fk_id_PeidoEnc`),
  CONSTRAINT `fk_factura_pedido` FOREIGN KEY (`Fk_id_PeidoEnc`) REFERENCES `tbl_pedido_encabezado` (`Pk_id_pedidoEnc`),
  CONSTRAINT `tbl_factura_encabezado_ibfk_1` FOREIGN KEY (`Fk_id_vendedor`) REFERENCES `tbl_vendedores` (`Pk_id_vendedor`),
  CONSTRAINT `tbl_factura_encabezado_ibfk_2` FOREIGN KEY (`Fk_id_cliente`) REFERENCES `tbl_clientes` (`Pk_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura_encabezado`
--

LOCK TABLES `tbl_factura_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_factura_encabezado` DISABLE KEYS */;
INSERT INTO `tbl_factura_encabezado` VALUES ('FAC001',1,1,'1','2024-10-01','2024-10-15','al contado',1500.00,0.12,1680.00),('FAC002',2,2,'2','2024-10-05','2024-10-20','al crédito',2500.00,0.12,2800.00),('FAC003',3,3,'3','2024-10-10','2024-10-25','al contado',1200.00,0.12,1344.00),('FAC004',4,4,'4','2024-10-12','2024-10-30','al crédito',1800.00,0.12,2016.00),('FAC005',1,5,'5','2024-10-15','2024-10-30','al contado',1300.00,0.12,1456.00),('FAC006',2,6,'6','2024-10-20','2024-11-05','al crédito',2200.00,0.12,2464.00),('FAC007',3,7,'7','2024-10-22','2024-11-07','al contado',1600.00,0.12,1792.00),('FAC008',4,8,'8','2024-10-25','2024-11-10','al crédito',2000.00,0.12,2240.00),('FAC009',1,9,'9','2024-10-28','2024-11-15','al contado',1100.00,0.12,1232.00),('FAC010',2,10,'10','2024-10-30','2024-11-20','al crédito',2400.00,0.12,2688.00);
/*!40000 ALTER TABLE `tbl_factura_encabezado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:52
