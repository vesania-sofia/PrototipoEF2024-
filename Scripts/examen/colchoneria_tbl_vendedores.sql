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
-- Table structure for table `tbl_vendedores`
--

DROP TABLE IF EXISTS `tbl_vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vendedores` (
  `Pk_id_vendedor` int NOT NULL,
  `vendedores_nombre` varchar(100) NOT NULL,
  `vendedores_apellido` varchar(100) NOT NULL,
  `vendedores_sueldo` decimal(10,2) NOT NULL,
  `vendedores_direccion` varchar(255) NOT NULL,
  `vendedores_telefono` varchar(20) NOT NULL,
  `Fk_id_empleado` int NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Pk_id_vendedor`),
  KEY `Fk_id_empleado` (`Fk_id_empleado`),
  CONSTRAINT `tbl_vendedores_ibfk_1` FOREIGN KEY (`Fk_id_empleado`) REFERENCES `tbl_empleados` (`pk_clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vendedores`
--

LOCK TABLES `tbl_vendedores` WRITE;
/*!40000 ALTER TABLE `tbl_vendedores` DISABLE KEYS */;
INSERT INTO `tbl_vendedores` VALUES (1,'Carlos','López',1500.00,'Av. Siempre Viva 123','555-1234',1,1),(2,'Andrea','Torres',1800.50,'Calle Falsa 456','555-5678',2,1),(3,'Roberto','Ramírez',2000.75,'Boulevard Principal 789','555-9012',3,1),(4,'Elena','Hernández',2200.00,'Camino Real 321','555-3456',4,1),(5,'prubaexamen','examen',2500.00,'1av 6-98 zona 20','55698745',1,1);
/*!40000 ALTER TABLE `tbl_vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:42:00
