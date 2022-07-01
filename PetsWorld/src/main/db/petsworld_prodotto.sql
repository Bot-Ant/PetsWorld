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
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `idprodotto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `foto` varchar(45) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `quantita` int NOT NULL,
  `descrizione` varchar(2000) NOT NULL,
  `iva` int NOT NULL,
  `animale` varchar(45) NOT NULL,
  `peso` varchar(25) DEFAULT NULL,
  `dataScadenza` varchar(25) DEFAULT NULL,
  `dimensione` varchar(25) DEFAULT NULL,
  `colore` varchar(25) DEFAULT NULL,
  `IdRecensione_fk2` int DEFAULT NULL,
  PRIMARY KEY (`idprodotto`),
  KEY `recensione2` (`IdRecensione_fk2`),
  CONSTRAINT `recensione2` FOREIGN KEY (`IdRecensione_fk2`) REFERENCES `recensione` (`idrecensione`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
INSERT INTO `prodotto` VALUES (7,'Monge All Breeds Adult Salmone e Riso','cibo alimenti crocchette monge','product-0-pic-0',45.90,100,'Le crocchette di Monge Salmone e Riso All Breeds Adult sono un alimento completo per cani adulti di tutte le taglie formulato con un\'unica fonte proteica: il salmone. Il cibo secco Monge Superpremium Salmone è stato sviluppato pensando al benessere del tuo amico a quattro zampe, grazie alla presenza di sostanze nutritive di qualità frutto della ricerca Made in Italy. Il tuo cane ha delle sensibilità alimentari e non sai quali crocchette scegliere per garantire il suo benessere? Il cibo secco Monge Adult Salmone non solo rinforza il sistema immunitario del tuo cane ma favorisce anche la salute gastrointestinale. Vivete una vita felice, insieme! Il prodotto è disponibile nel formato da 12 KG. Offri al tuo cane un’ottima salute, benessere nutrizionale e tanto gusto: scegli Monge Salmone e Riso All Breeds Adult!',10,'cane','12KG','2025/04/10',NULL,NULL,NULL),(8,'Acana Pacifica ','cibo alimenti acana','product-1-pic-0',27.50,75,'Il cibo secco per cani Acana Pacifica è formulato per valorizzare in maniera naturale tutto il gusto e la freschezza del pregiato pesce delle fredde acque del Pacifico canadese. Le crocchette Acana Pacifica Dog sono un alimento completo per cani adulti che si caratterizza per una ricetta ricca di aringa pescata in natura, sgombro, passera del Pacifico, nasello atlantico e scorfano. Acana si rinnova con un nuovo packaging. Potresti ricevere la nuova o la vecchia confezione a seconda della disponibilità a stock. Il prodotto disponibile nel formato da 2 KG, 6 KG, 11.4 KG.',10,'cane','2KG','2024/10/21',NULL,NULL,NULL),(9,'Acana Pacifica ','cibo alimenti acana','product-1-pic-0',59.90,75,'Il cibo secco per cani Acana Pacifica è formulato per valorizzare in maniera naturale tutto il gusto e la freschezza del pregiato pesce delle fredde acque del Pacifico canadese. Le crocchette Acana Pacifica Dog sono un alimento completo per cani adulti che si caratterizza per una ricetta ricca di aringa pescata in natura, sgombro, passera del Pacifico, nasello atlantico e scorfano. Acana si rinnova con un nuovo packaging. Potresti ricevere la nuova o la vecchia confezione a seconda della disponibilità a stock. Il prodotto disponibile nel formato da 2 KG, 6 KG, 11.4 KG.',10,'cane','6KG','2024/10/21',NULL,NULL,NULL),(10,'Acana Pacifica ','cibo alimenti acana','product-1-pic-0',97.90,75,'Il cibo secco per cani Acana Pacifica è formulato per valorizzare in maniera naturale tutto il gusto e la freschezza del pregiato pesce delle fredde acque del Pacifico canadese. Le crocchette Acana Pacifica Dog sono un alimento completo per cani adulti che si caratterizza per una ricetta ricca di aringa pescata in natura, sgombro, passera del Pacifico, nasello atlantico e scorfano. Acana si rinnova con un nuovo packaging. Potresti ricevere la nuova o la vecchia confezione a seconda della disponibilità a stock. Il prodotto disponibile nel formato da 2 KG, 6 KG, 11.4 KG.',10,'cane','11.4KG','2024/10/21',NULL,NULL,NULL),(11,'Acana Classic Red','cibo alimenti crocchette acana','product-2-pic-0',22.70,85,'Le crocchette per cani adulti di tutte le razze Acana Classic Red sono un cibo secco ricco di manzo, maiale e agnello, irresistibile anche per cani dai palati più esigenti. I croccantini contengono un’impareggiabile varietà di ingredienti provenienti dal Canada. La scelta di Acana di proporre il consumo di animali interi (preda intera) si inserisce nell’ottica di offrire una dieta ricca e simile a quella che il cane seguirebbe in natura. Acana Red Classic è disponibile nel formato da 2 KG, 11.4 KG.',10,'cane','2KG','2024/10/21',NULL,NULL,NULL),(12,'Acana Classic Red ','cibo alimenti crocchette acana','product-2-pic-0',72.50,85,'Le crocchette per cani adulti di tutte le razze Acana Classic Red sono un cibo secco ricco di manzo, maiale e agnello, irresistibile anche per cani dai palati più esigenti. I croccantini contengono un’impareggiabile varietà di ingredienti provenienti dal Canada. La scelta di Acana di proporre il consumo di animali interi (preda intera) si inserisce nell’ottica di offrire una dieta ricca e simile a quella che il cane seguirebbe in natura. Acana Red Classic è disponibile nel formato da 2 KG, 11.4 KG.',10,'cane','11.4KG','2024/10/21',NULL,NULL,NULL),(13,'Seresto Collare Antiparassitario Cani Grandi','salute antiparassitario collare seresto','product-3-pic-0',49.70,60,'Se ti stai chiedendo qual è il miglior collare antiparassitario per cani, Seresto è la soluzione che garantisce una protezione completa e duratura contro i parassiti quali pulci e zecche, prevenendo la contrazione di malattie ad essi associate. Questo collare innovativo offre una protezione completa contro pulci e zecche fino a 8 mesi con una sola applicazione. Questo collare antipulci ha una duplice azione per il trattamento e prevenzione delle infestazioni da pulci, cioè elimina le pulci prima che possano pungere, ed è attivo anche contro le larve di pulce, impedendone una ulteriore diffusione. Nel cane, Seresto protegge dal rischio di trasmissione della leishmaniosi, che avviene attraverso i flebotomi (o pappataci) e grazie all’effetto repellente (antifeeding) verso le zecche riduce indirettamente il rischio di trasmissione di Ehrlichiosi canina e Babesiosi canina fino a 7-8 mesi.',22,'cane',NULL,NULL,'70CM',NULL,NULL),(14,'Advantix Spot On Cane Fino a 4Kg','salute antiparassitario spot-on advantix','product-4-pic-0',35.80,50,'Advantix Spot-on è un trattamento antiparassitario per la prevenzione delle infestazioni da pulci, zecche, zanzare e pappataci nei cani. I parassiti possono portare problemi al tuo cane; infatti, causano reazioni allergiche e dermatiti con infezioni batteriche secondarie e possono persino trasmettere malattie o altri parassiti! L\'antiparassitario per cani Advantix è stato studiato appositamente per proteggerlo dai parassiti. Il prodotto è disponibile per cani con un peso fino a KG. Da Arcaplanet, lo trovi ad un prezzo scontatissimo! È molto importante che tu come pet parent responsabile, somministri al tuo cane un prodotto contro pulci e zecche nel corso dell’anno, con Advantix Spot-on non sbagli!',22,'cane','4KG',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `prodotto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-01 11:31:05
