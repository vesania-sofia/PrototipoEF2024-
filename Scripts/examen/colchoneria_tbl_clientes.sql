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
-- Table structure for table `tbl_clientes`
--

DROP TABLE IF EXISTS `tbl_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_clientes` (
  `Pk_id_cliente` int NOT NULL,
  `Clientes_nombre` varchar(100) NOT NULL,
  `Clientes_apellido` varchar(100) NOT NULL,
  `Clientes_nit` varchar(20) NOT NULL,
  `Clientes_telefon` varchar(20) NOT NULL,
  `Clientes_direccion` varchar(255) NOT NULL,
  `Clientes_No_Cuenta` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `Cliente_Tipo` varchar(20) NOT NULL,
  `Clientes_deuda` decimal(10,2) DEFAULT '0.00',
  `Fk_id_vendedor` int NOT NULL,
  `Fk_id_lista_Encabezado` int NOT NULL,
  PRIMARY KEY (`Pk_id_cliente`),
  KEY `FK_vendedor_cliente` (`Fk_id_vendedor`),
  KEY `FK_id_lista_Encabezado` (`Fk_id_lista_Encabezado`),
  CONSTRAINT `FK_id_lista_Encabezado` FOREIGN KEY (`Fk_id_lista_Encabezado`) REFERENCES `tbl_lista_encabezado` (`Pk_id_lista_Encabezado`),
  CONSTRAINT `FK_vendedor_cliente` FOREIGN KEY (`Fk_id_vendedor`) REFERENCES `tbl_vendedores` (`Pk_id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clientes`
--

LOCK TABLES `tbl_clientes` WRITE;
/*!40000 ALTER TABLE `tbl_clientes` DISABLE KEYS */;
INSERT INTO `tbl_clientes` VALUES (1,'Mario','García','123456789','555-1111','Colonia Centro 123','1001-001',1,'mayorista',500.00,1,1),(2,'Luisa','Jiménez','987654321','555-2222','Colonia Norte 456','1002-002',1,'minorista',150.75,2,2),(3,'Ricardo','Morales','112233445','555-3333','Colonia Sur 789','1003-003',1,'especial',250.50,3,3),(4,'Patricia','Pérez','556677889','555-4444','Colonia Oeste 321','1004-004',1,'mayorista',1000.00,4,4),(5,'clienteexamn','examn','564856-8','45632156','1av 9-87 zona 6','45698712365',1,'mayorista',0.00,5,10);
/*!40000 ALTER TABLE `tbl_clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:58
