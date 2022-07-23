-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: petsworld
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `prodottoacquistato`
--

DROP TABLE IF EXISTS `prodottoacquistato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodottoacquistato` (
  `idProdottoAcquistato` int NOT NULL AUTO_INCREMENT,
  `quantita` int NOT NULL,
  `foto` varchar(45) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `iva` double NOT NULL,
  `IDordine_fk` int DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idProdottoAcquistato`),
  KEY `fassoli_idx` (`IDordine_fk`),
  CONSTRAINT `fassoli` FOREIGN KEY (`IDordine_fk`) REFERENCES `ordine` (`idordine`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodottoacquistato`
--

LOCK TABLES `prodottoacquistato` WRITE;
/*!40000 ALTER TABLE `prodottoacquistato` DISABLE KEYS */;
INSERT INTO `prodottoacquistato` VALUES (25,5,'product-2-pic-0',72.50,10,7,'Acana Classic Red 11.4KG'),(39,2,'product-2-pic-0',72.50,10,14,'Acana Classic Red 11.4KG');
/*!40000 ALTER TABLE `prodottoacquistato` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23 20:53:14
