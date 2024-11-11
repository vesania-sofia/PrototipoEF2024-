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
-- Table structure for table `tbl_cuentas`
--

DROP TABLE IF EXISTS `tbl_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cuentas` (
  `Pk_id_cuenta` int NOT NULL,
  `Pk_id_tipocuenta` int NOT NULL,
  `Pk_id_encabezadocuenta` int NOT NULL,
  `nombre_cuenta` varchar(50) NOT NULL,
  `cargo_mes` float DEFAULT '0',
  `abono_mes` float DEFAULT '0',
  `saldo_ant` float DEFAULT '0',
  `saldo_act` float DEFAULT '0',
  `cargo_acumulado` float DEFAULT '0',
  `abono_acumulado` float DEFAULT '0',
  `Pk_id_cuenta_enlace` int DEFAULT NULL,
  `es_efectivo` tinyint DEFAULT '0',
  `estado` tinyint NOT NULL,
  PRIMARY KEY (`Pk_id_cuenta`,`Pk_id_tipocuenta`,`Pk_id_encabezadocuenta`),
  UNIQUE KEY `Pk_id_cuenta` (`Pk_id_cuenta`),
  KEY `Pk_id_tipocuenta` (`Pk_id_tipocuenta`),
  KEY `Pk_id_encabezadocuenta` (`Pk_id_encabezadocuenta`),
  KEY `Pk_id_cuenta_enlace` (`Pk_id_cuenta_enlace`),
  CONSTRAINT `tbl_cuentas_ibfk_1` FOREIGN KEY (`Pk_id_tipocuenta`) REFERENCES `tbl_tipocuenta` (`PK_id_tipocuenta`),
  CONSTRAINT `tbl_cuentas_ibfk_2` FOREIGN KEY (`Pk_id_encabezadocuenta`) REFERENCES `tbl_encabezadoclasecuenta` (`Pk_id_encabezadocuenta`),
  CONSTRAINT `tbl_cuentas_ibfk_3` FOREIGN KEY (`Pk_id_cuenta_enlace`) REFERENCES `tbl_cuentas` (`Pk_id_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cuentas`
--

LOCK TABLES `tbl_cuentas` WRITE;
/*!40000 ALTER TABLE `tbl_cuentas` DISABLE KEYS */;
INSERT INTO `tbl_cuentas` VALUES (1,1,1,'Activo',0,0,0,0,0,0,NULL,1,1),(2,1,1,'Activo Corriente',0,0,0,0,0,0,1,1,1),(3,2,1,'Caja',0,0,0,0,0,0,2,1,1),(4,1,1,'Bancos',0,0,0,0,0,0,2,1,1),(5,2,1,'Banco Industrial',0,0,0,0,0,0,4,1,1),(6,2,1,'Banco G&T Continental',0,0,0,0,0,0,4,1,1),(7,2,1,'Banco Agromercantil',0,0,0,0,0,0,4,1,1),(8,2,1,'Cuentas por Cobrar',0,0,0,0,0,0,2,0,1),(9,2,1,'Clientes',0,0,0,0,0,0,8,0,1),(10,2,1,'Deudores Diversos',0,0,0,0,0,0,8,0,1),(11,2,1,'Documentos por Cobrar',0,0,0,0,0,0,8,0,1),(12,2,1,'Activos Fijos',0,0,0,0,0,0,1,0,1),(13,2,1,'Propiedades',0,0,0,0,0,0,12,0,1),(14,2,1,'Maquinaria',0,0,0,0,0,0,12,0,1),(15,2,1,'Equipo de Oficina',0,0,0,0,0,0,12,0,1),(16,2,1,'Vehículos',0,0,0,0,0,0,12,0,1),(17,2,1,'Terrenos',0,0,0,0,0,0,12,0,1),(18,2,1,'Construcciones en Proceso',0,0,0,0,0,0,12,0,1),(19,2,1,'Inversiones a Largo Plazo',0,0,0,0,0,0,2,0,1),(20,2,1,'Instrumentos Financieros a Largo Plazo',0,0,0,0,0,0,19,0,1),(21,1,1,'Inventarios',0,0,0,0,0,0,2,0,1),(22,2,1,'Inventario de Productos Terminados',0,0,0,0,0,0,21,0,1),(23,2,1,'Inventario de Materia Prima',0,0,0,0,0,0,21,0,1),(24,1,1,'Inversiones a Corto Plazo',0,0,0,0,0,0,2,0,1),(25,2,1,'Instrumentos Financieros',0,0,0,0,0,0,24,0,1),(26,2,1,'Fondos Mutuos',0,0,0,0,0,0,24,0,1),(27,2,1,'Acciones y Participaciones',0,0,0,0,0,0,19,0,1),(28,1,1,'Intangibles',0,0,0,0,0,0,2,0,1),(29,2,1,'Patentes',0,0,0,0,0,0,28,0,1),(30,2,1,'Marcas Registradas',0,0,0,0,0,0,28,0,1),(31,2,1,'Créditos Comerciales',0,0,0,0,0,0,8,0,1),(32,2,1,'Anticipos a Proveedores',0,0,0,0,0,0,8,0,1),(33,2,1,'Propiedades en Leasing',0,0,0,0,0,0,12,0,1),(34,2,1,'Inversiones Financieras',0,0,0,0,0,0,19,0,1),(35,2,1,'Depósitos a Plazo Fijo',0,0,0,0,0,0,19,0,1),(36,2,1,'Cuentas por Cobrar a Largo Plazo',0,0,0,0,0,0,19,0,1),(37,2,1,'Préstamos a Empleados',0,0,0,0,0,0,19,0,1),(38,1,1,'Valores y Bonos',0,0,0,0,0,0,24,0,1),(39,2,1,'Acciones en Subsidiarias',0,0,0,0,0,0,24,0,1),(40,2,1,'Fideicomisos',0,0,0,0,0,0,24,0,1),(41,1,1,'Activos No Corrientes',0,0,0,0,0,0,1,0,1),(42,2,1,'Terrenos',0,0,0,0,0,0,41,0,1),(43,2,1,'Edificios',0,0,0,0,0,0,41,0,1),(44,2,1,'Maquinaria',0,0,0,0,0,0,41,0,1),(45,2,1,'Equipo de Transporte',0,0,0,0,0,0,41,0,1),(46,2,1,'Mobiliario y Equipo',0,0,0,0,0,0,41,0,1),(47,2,1,'Equipos de Cómputo',0,0,0,0,0,0,41,0,1),(48,1,1,'Intangibles',0,0,0,0,0,0,41,0,1),(49,2,1,'Patentes y Marcas',0,0,0,0,0,0,48,0,1),(50,2,1,'Depreciación Acumulada',0,0,0,0,0,0,41,0,1),(51,1,2,'Pasivo',0,0,0,0,0,0,NULL,1,1),(52,1,2,'Pasivo Corriente',0,0,0,0,0,0,51,1,1),(53,1,2,'Cuentas por Pagar',0,0,0,0,0,0,52,1,1),(54,2,2,'Proveedores',0,0,0,0,0,0,53,1,1),(55,2,2,'Acreedores Diversos',0,0,0,0,0,0,53,0,1),(56,2,2,'Documentos por Pagar',0,0,0,0,0,0,53,0,1),(57,2,2,'Préstamos Bancarios a Corto Plazo',0,0,0,0,0,0,52,1,1),(58,2,2,'Obligaciones por Pagar',0,0,0,0,0,0,52,0,1),(59,2,2,'Anticipos de Clientes',0,0,0,0,0,0,52,0,1),(60,1,2,'Impuestos por Pagar',0,0,0,0,0,0,52,1,1),(61,2,2,'IVA por Pagar',0,0,0,0,0,0,60,0,1),(62,2,2,'ISR por Pagar',0,0,0,0,0,0,60,0,1),(63,2,2,'Sueldos por Pagar',0,0,0,0,0,0,52,0,1),(64,2,2,'Retenciones por Pagar',0,0,0,0,0,0,52,0,1),(65,2,2,'Provisiones de Bonos',0,0,0,0,0,0,52,0,1),(66,1,2,'Pasivo No Corriente',0,0,0,0,0,0,51,0,1),(67,2,2,'Préstamos Bancarios a Largo Plazo',0,0,0,0,0,0,66,1,1),(68,2,2,'Obligaciones Financieras',0,0,0,0,0,0,66,0,1),(69,2,2,'Cuentas por Pagar a Largo Plazo',0,0,0,0,0,0,66,0,1),(70,2,2,'Bonos por Pagar',0,0,0,0,0,0,66,1,1),(71,2,2,'Obligaciones Laborales',0,0,0,0,0,0,66,0,1),(72,2,2,'Pasivos Diferidos',0,0,0,0,0,0,66,0,1),(73,2,2,'Provisiones para Contingencias',0,0,0,0,0,0,66,0,1),(74,2,2,'Arrendamientos por Pagar',0,0,0,0,0,0,66,0,1),(75,2,2,'Créditos Hipotecarios',0,0,0,0,0,0,66,1,1),(78,1,3,'Capital',0,0,0,0,0,0,NULL,0,1),(79,2,3,'Capital Social',0,0,0,0,0,0,78,0,1),(80,2,3,'Reservas',0,0,0,0,0,0,78,0,1),(81,2,3,'Ganancias Retenidas',0,0,0,0,0,0,78,0,1),(82,2,3,'Resultados del Ejercicio',0,0,0,0,0,0,78,0,1),(83,2,3,'Capital Adicional',0,0,0,0,0,0,78,0,1),(84,2,3,'Ajustes de Capital',0,0,0,0,0,0,78,0,1),(85,1,4,'Ingresos',0,0,0,0,0,0,NULL,0,1),(86,2,4,'Ventas de Productos',0,0,0,0,0,0,85,1,1),(87,2,4,'Servicios de Consultoría',0,0,0,0,0,0,85,1,1),(88,2,4,'Comisiones de Venta',0,0,0,0,0,0,85,1,1),(89,2,4,'Renta de Equipos',0,0,0,0,0,0,85,1,1),(90,2,4,'Honorarios Profesionales',0,0,0,0,0,0,85,1,1),(91,2,4,'Ingresos por Licencias y Regalías',0,0,0,0,0,0,85,1,1),(92,2,4,'Intereses Ganados',0,0,0,0,0,0,85,1,1),(93,2,4,'Ventas de Mercadería',0,0,0,0,0,0,85,1,1),(94,2,4,'Ventas Internacionales',0,0,0,0,0,0,85,1,1),(95,2,4,'Ingresos por Publicidad',0,0,0,0,0,0,85,1,1),(96,2,4,'Servicios de Capacitación',0,0,0,0,0,0,85,1,1),(97,2,4,'Consultoría de TI',0,0,0,0,0,0,85,1,1),(98,2,4,'Suscripciones',0,0,0,0,0,0,85,1,1),(99,2,4,'Renta de Propiedades',0,0,0,0,0,0,85,1,1),(100,2,4,'Donaciones',0,0,0,0,0,0,85,1,1),(101,1,5,'Egresos',0,0,0,0,0,0,NULL,1,1),(102,2,5,'Sueldos y Salarios',0,0,0,0,0,0,101,1,1),(103,2,5,'IGSS',0,0,0,0,0,0,101,1,1),(104,2,5,'Horas Extras',0,0,0,0,0,0,101,1,1),(105,2,5,'Anticipos',0,0,0,0,0,0,101,1,1),(106,2,5,'Faltas',0,0,0,0,0,0,101,1,1),(107,2,5,'Bono 14',0,0,0,0,0,0,101,1,1),(108,2,5,'Aguinaldo',0,0,0,0,0,0,101,1,1),(109,2,5,'Vacaciones',0,0,0,0,0,0,101,1,1),(110,2,5,'Alquileres',0,0,0,0,0,0,101,1,1),(111,2,5,'Servicios Públicos',0,0,0,0,0,0,101,1,1),(112,2,5,'Mantenimiento y Reparaciones',0,0,0,0,0,0,101,1,1),(113,2,5,'Gastos de Viaje',0,0,0,0,0,0,101,1,1),(114,2,5,'Seguros',0,0,0,0,0,0,101,1,1),(115,2,5,'Depreciación de Activos',0,0,0,0,0,0,101,1,1),(116,2,5,'Otros Gastos',0,0,0,0,0,0,101,1,1);
/*!40000 ALTER TABLE `tbl_cuentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:49
