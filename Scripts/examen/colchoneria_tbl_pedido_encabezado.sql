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
-- Table structure for table `tbl_pedido_encabezado`
--

DROP TABLE IF EXISTS `tbl_pedido_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pedido_encabezado` (
  `Pk_id_pedidoEnc` varchar(20) NOT NULL,
  `Fk_id_cliente` int NOT NULL,
  `Fk_id_vendedor` int NOT NULL,
  `PedidoEncfecha` date NOT NULL,
  `PedidoEnc_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_pedidoEnc`),
  UNIQUE KEY `Pk_id_pedidoEnc` (`Pk_id_pedidoEnc`),
  KEY `Fk_id_cliente` (`Fk_id_cliente`),
  KEY `Fk_id_vendedor` (`Fk_id_vendedor`),
  CONSTRAINT `tbl_pedido_encabezado_ibfk_1` FOREIGN KEY (`Fk_id_cliente`) REFERENCES `tbl_clientes` (`Pk_id_cliente`),
  CONSTRAINT `tbl_pedido_encabezado_ibfk_2` FOREIGN KEY (`Fk_id_vendedor`) REFERENCES `tbl_vendedores` (`Pk_id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pedido_encabezado`
--

LOCK TABLES `tbl_pedido_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_pedido_encabezado` DISABLE KEYS */;
INSERT INTO `tbl_pedido_encabezado` VALUES ('1',1,1,'2024-10-01',200.00),('10',10,5,'2024-10-10',190.00),('100',2,1,'2024-11-15',79.97),('2',2,1,'2024-10-02',150.00),('3',3,2,'2024-10-03',300.00),('4',4,3,'2024-10-04',175.00),('5',5,2,'2024-10-05',225.00),('6',6,4,'2024-10-06',90.00),('7',7,5,'2024-10-07',180.00),('8',8,3,'2024-10-08',250.00),('9',9,4,'2024-10-09',160.00),('PED001',1,1,'2024-10-10',1500.00),('PED002',2,2,'2024-10-15',2000.50),('PED003',3,3,'2024-10-20',1250.75);
/*!40000 ALTER TABLE `tbl_pedido_encabezado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:51
