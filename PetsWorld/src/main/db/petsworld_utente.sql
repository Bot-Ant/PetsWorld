-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petsworld
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `idUtente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  `cognome` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(25) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `codiceFiscale` varchar(16) NOT NULL,
  `ruolo` tinyint NOT NULL DEFAULT '0',
  `IdOrdine_fk` int DEFAULT NULL,
  `IdDonazione_fk` int DEFAULT NULL,
  `IdRecensione_fk` int DEFAULT NULL,
  `IdCucciolo_fk` int DEFAULT NULL,
  `IdBanner_fk` int DEFAULT NULL,
  PRIMARY KEY (`idUtente`),
  KEY `banner_idx` (`IdBanner_fk`),
  KEY `cucciolo_idx` (`IdCucciolo_fk`),
  KEY `donazione_idx` (`IdDonazione_fk`),
  KEY `recensione_idx` (`IdRecensione_fk`),
  KEY `ordine_idx` (`IdOrdine_fk`),
  CONSTRAINT `banner` FOREIGN KEY (`IdBanner_fk`) REFERENCES `banner` (`idBanner`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cucciolo` FOREIGN KEY (`IdCucciolo_fk`) REFERENCES `cucciolo` (`IdCucciolo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `donazione` FOREIGN KEY (`IdDonazione_fk`) REFERENCES `donazione` (`idDonazione`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ordine` FOREIGN KEY (`IdOrdine_fk`) REFERENCES `ordine` (`idordine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recensione` FOREIGN KEY (`IdRecensione_fk`) REFERENCES `recensione` (`idrecensione`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (10,'Mario','Rossi','mrossi@rossi.com','rossirossi','333-1231232','MRARSS12F431A',0,NULL,NULL,NULL,NULL,NULL),(11,'John','Doe','johndoe@test.com','johndoe0','333-0000000','JHNDOE00101F839A',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 12:48:42
