-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petsworld
-- ------------------------------------------------------
-- Server version	8.0.24

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
INSERT INTO `prodotto` VALUES (7,'Monge All Breeds Adult Salmone e Riso','cibo alimenti crocchette monge','product-0-pic-0',45.90,100,'Le crocchette di Monge Salmone e Riso All Breeds Adult sono un alimento completo per cani adulti di tutte le taglie formulato con un\'unica fonte proteica: il salmone. Il cibo secco Monge Superpremium Salmone è stato sviluppato pensando al benessere del tuo amico a quattro zampe, grazie alla presenza di sostanze nutritive di qualità frutto della ricerca Made in Italy. Il tuo cane ha delle sensibilità alimentari e non sai quali crocchette scegliere per garantire il suo benessere? Il cibo secco Monge Adult Salmone non solo rinforza il sistema immunitario del tuo cane ma favorisce anche la salute gastrointestinale. Vivete una vita felice, insieme! Il prodotto è disponibile nel formato da 12 KG. Offri al tuo cane un’ottima salute, benessere nutrizionale e tanto gusto: scegli Monge Salmone e Riso All Breeds Adult!',10,'cane','12KG','2025/04/10',NULL,NULL,NULL),(8,'Acana Pacifica 2KG','cibo alimenti acana','product-1-pic-0',27.50,75,'Il cibo secco per cani Acana Pacifica è formulato per valorizzare in maniera naturale tutto il gusto e la freschezza del pregiato pesce delle fredde acque del Pacifico canadese. Le crocchette Acana Pacifica Dog sono un alimento completo per cani adulti che si caratterizza per una ricetta ricca di aringa pescata in natura, sgombro, passera del Pacifico, nasello atlantico e scorfano. Acana si rinnova con un nuovo packaging. Potresti ricevere la nuova o la vecchia confezione a seconda della disponibilità a stock. Il prodotto disponibile nel formato da 2 KG, 6 KG, 11.4 KG.',10,'cane','2KG','2024/10/21',NULL,NULL,NULL),(9,'Acana Pacifica 6KG','cibo alimenti acana','product-1-pic-0',59.90,75,'Il cibo secco per cani Acana Pacifica è formulato per valorizzare in maniera naturale tutto il gusto e la freschezza del pregiato pesce delle fredde acque del Pacifico canadese. Le crocchette Acana Pacifica Dog sono un alimento completo per cani adulti che si caratterizza per una ricetta ricca di aringa pescata in natura, sgombro, passera del Pacifico, nasello atlantico e scorfano. Acana si rinnova con un nuovo packaging. Potresti ricevere la nuova o la vecchia confezione a seconda della disponibilità a stock. Il prodotto disponibile nel formato da 2 KG, 6 KG, 11.4 KG.',10,'cane','6KG','2024/10/21',NULL,NULL,NULL),(10,'Acana Pacifica 11.4KG','cibo alimenti acana','product-1-pic-0',97.90,75,'Il cibo secco per cani Acana Pacifica è formulato per valorizzare in maniera naturale tutto il gusto e la freschezza del pregiato pesce delle fredde acque del Pacifico canadese. Le crocchette Acana Pacifica Dog sono un alimento completo per cani adulti che si caratterizza per una ricetta ricca di aringa pescata in natura, sgombro, passera del Pacifico, nasello atlantico e scorfano. Acana si rinnova con un nuovo packaging. Potresti ricevere la nuova o la vecchia confezione a seconda della disponibilità a stock. Il prodotto disponibile nel formato da 2 KG, 6 KG, 11.4 KG.',10,'cane','11.4KG','2024/10/21',NULL,NULL,NULL),(11,'Acana Classic Red 2KG','cibo alimenti crocchette acana','product-2-pic-0',22.70,85,'Le crocchette per cani adulti di tutte le razze Acana Classic Red sono un cibo secco ricco di manzo, maiale e agnello, irresistibile anche per cani dai palati più esigenti. I croccantini contengono un’impareggiabile varietà di ingredienti provenienti dal Canada. La scelta di Acana di proporre il consumo di animali interi (preda intera) si inserisce nell’ottica di offrire una dieta ricca e simile a quella che il cane seguirebbe in natura. Acana Red Classic è disponibile nel formato da 2 KG, 11.4 KG.',10,'cane','2KG','2024/10/21',NULL,NULL,NULL),(12,'Acana Classic Red 11.4KG','cibo alimenti crocchette acana','product-2-pic-0',72.50,85,'Le crocchette per cani adulti di tutte le razze Acana Classic Red sono un cibo secco ricco di manzo, maiale e agnello, irresistibile anche per cani dai palati più esigenti. I croccantini contengono un’impareggiabile varietà di ingredienti provenienti dal Canada. La scelta di Acana di proporre il consumo di animali interi (preda intera) si inserisce nell’ottica di offrire una dieta ricca e simile a quella che il cane seguirebbe in natura. Acana Red Classic è disponibile nel formato da 2 KG, 11.4 KG.',10,'cane','11.4KG','2024/10/21',NULL,NULL,NULL),(13,'Seresto Collare Antiparassitario Cani Grandi','salute antiparassitario collare seresto','product-3-pic-0',49.70,60,'Se ti stai chiedendo qual è il miglior collare antiparassitario per cani, Seresto è la soluzione che garantisce una protezione completa e duratura contro i parassiti quali pulci e zecche, prevenendo la contrazione di malattie ad essi associate. Questo collare innovativo offre una protezione completa contro pulci e zecche fino a 8 mesi con una sola applicazione. Questo collare antipulci ha una duplice azione per il trattamento e prevenzione delle infestazioni da pulci, cioè elimina le pulci prima che possano pungere, ed è attivo anche contro le larve di pulce, impedendone una ulteriore diffusione. Nel cane, Seresto protegge dal rischio di trasmissione della leishmaniosi, che avviene attraverso i flebotomi (o pappataci) e grazie all’effetto repellente (antifeeding) verso le zecche riduce indirettamente il rischio di trasmissione di Ehrlichiosi canina e Babesiosi canina fino a 7-8 mesi.',22,'cane',NULL,NULL,'70CM',NULL,NULL),(14,'Advantix Spot On Cane Fino a 4KG','salute antiparassitario spot-on advantix','product-4-pic-0',35.80,50,'Advantix Spot-on è un trattamento antiparassitario per la prevenzione delle infestazioni da pulci, zecche, zanzare e pappataci nei cani. I parassiti possono portare problemi al tuo cane; infatti, causano reazioni allergiche e dermatiti con infezioni batteriche secondarie e possono persino trasmettere malattie o altri parassiti! L\'antiparassitario per cani Advantix è stato studiato appositamente per proteggerlo dai parassiti. Il prodotto è disponibile per cani con un peso fino a KG. Da Arcaplanet, lo trovi ad un prezzo scontatissimo! È molto importante che tu come pet parent responsabile, somministri al tuo cane un prodotto contro pulci e zecche nel corso dell’anno, con Advantix Spot-on non sbagli!',22,'cane','4KG',NULL,NULL,NULL,NULL),(15,'Cuccia Alcazar','cucce accessori','product-5-pic-0',60.99,30,'Alcazar di Pet Around You è una cuccia da esterno per cani realizzata in robusta resina termoplastica e con un materiale resistente agli urti e ai raggi UV. Vuoi scegliere la casa ideale per il tuo cane e non riesci a deciderti? Pet Around You, marchio esclusivo PetsWorld ti propone la cuccia Alcazar ideale per qualsiasi stagione dell\'anno, chiusa in inverno o aperta in estate. La cuccia da esterno Alcazar è disponibile nella TG. 50. Scegli il posto ideale per la casa del tuo pet, lo renderai felice e gli garantirai il massimo comfort: scegli la cuccia Alcazar!',22,'cane',NULL,NULL,'TG. 50',NULL,NULL),(16,'Cuccia per cani Marvel ','cucce accessori','product-6-pic-0',44.99,40,'Cuccia Igloo per animali MARVEL. Le cuccie FORFANPETS sono perfette per far riposare molto comodamente i tuoi amici animali. È ideale per gli animali domestici più FAN che amano essere coccolati al momento della nanna. Il suo tessuto accogliente lo rende utilizzabile tutto l\'anno. L\'ingresso dalla parte anteriore garantisce un facile accesso, inoltre grazie ai suoi bordi rialzati il tuo animale domestico si sentirà molto sicuro. La sua base è antiscivolo e molto resistente in modo da evitare che si sposti, isola totalmente dall\'umidità, dal freddo o dal calore del terreno. Il cuscinetto è estraibile.',22,'cane',NULL,NULL,'1 PZ',NULL,NULL),(17,'Cuccia per Cani Star Wars ','cucce accessori','product-7-pic-0',44.99,40,'Cuccia Igloo per animali STAR WARS . Le cuccie FORFANPETS sono perfette per far riposare molto comodamente i tuoi amici animali. È ideale per gli animali domestici più FAN che amano essere coccolati al momento della nanna. Il suo tessuto accogliente lo rende utilizzabile tutto l\'anno. L\'ingresso dalla parte anteriore garantisce un facile accesso, inoltre grazie ai suoi bordi rialzati il tuo animale domestico si sentirà molto sicuro. La sua base è antiscivolo e molto resistente in modo da evitare che si sposti, isola totalmente dall\'umidità, dal freddo o dal calore del terreno. Il cuscinetto è estraibile.',22,'cane',NULL,NULL,'1 PZ',NULL,NULL),(18,'Ciotola Pintura Nera 225 ML','ciotole accessori','product-8-pic-0',4.99,50,'La Ciotola nera per cani Pintura Lovedì è realizzata in acciaio inox antiscivolo con design originale, interno colorato con pittura matt (Pittura satinata) e esterno in inox a strisce lucide e opache per donargli un aspetto brillante. Le ciotole per cani merenda hanno il fondo antiscivolo che assicura la massima stabilità sul pavimento, ottimale per il pranzo del vostro amico a quattro zampe. La ciotola per cani antiscivolo e particolarmente pratica ed igienica proprio perché è lavabile in lavastoviglie.',22,'cane',NULL,NULL,'225 ML',NULL,NULL),(19,'Ciotola Pintura Nera 500 ML','ciotole accessori','product-8-pic-0',6.99,30,'La Ciotola nera per cani Pintura Lovedì è realizzata in acciaio inox antiscivolo con design originale, interno colorato con pittura matt (Pittura satinata) e esterno in inox a strisce lucide e opache per donargli un aspetto brillante. Le ciotole per cani merenda hanno il fondo antiscivolo che assicura la massima stabilità sul pavimento, ottimale per il pranzo del vostro amico a quattro zampe. La ciotola per cani antiscivolo e particolarmente pratica ed igienica proprio perché è lavabile in lavastoviglie.',22,'cane',NULL,NULL,'500 ML',NULL,NULL),(20,'Ciotola Pintura Nera 1 LT','ciotole accessori','product-8-pic-0',9.99,30,'La Ciotola nera per cani Pintura Lovedì è realizzata in acciaio inox antiscivolo con design originale, interno colorato con pittura matt (Pittura satinata) e esterno in inox a strisce lucide e opache per donargli un aspetto brillante. Le ciotole per cani merenda hanno il fondo antiscivolo che assicura la massima stabilità sul pavimento, ottimale per il pranzo del vostro amico a quattro zampe. La ciotola per cani antiscivolo e particolarmente pratica ed igienica proprio perché è lavabile in lavastoviglie.',22,'cane',NULL,NULL,'1 LT',NULL,NULL),(21,'Ciotola per Cani Star Wars ','ciotole accessori','product-9-pic-0',11.90,40,'Ciotola in melamina e piatto in acciaio inox STAR WARS. Diametro 17,5 cm. Capacità 410ml. Design esclusivo e resistente. La sua base è antiscivolo, ideale per l\'animale per non rovesciare il suo contenuto. Il suo piatto metallico è estraibile, in modo tale da avere 2 ciotole in 1. Questo prodotto è adatto per la lavastoviglie. Prodotto ufficiale DISNEY.',22,'cane',NULL,NULL,'M',NULL,NULL),(22,'Aromastories Guscetto Peluche per Cane ','giochi intrattenimento ','product-10-pic-0',8.90,60,'Il guscetto di United Pets è un morbido peluche per cani completo di uno squeaker che rilascia l\'essenza calmante Undergrowth, rendendolo un gioco irresistibile per il tuo peloso. Il peluche è appositamente pensato e creato per aiutare il tuo amico a quattro zampe nei momenti di stress. Il simpatico gioco con squeaker lo calma e lo diverte facendo ciò che più gli piace al mondo: giocare con il suo pet parent! Grazie alla tecnologia brevettata, lo squeaker interno al peluche rilascia degli aromi agli oli essenziali ideali per il rilassamento del tuo cane poiché sono 100% terapeutici. La linea Aroma-Stories, grazie alla diversa gamma di peluche, permette a Fido di scegliere il gioco che più gli piace. Il prodotto è disponibile nella dimensione: 8 x 11 cm.',22,'cane',NULL,NULL,'1 PZ',NULL,NULL),(23,'Aromastories Pansy Peluche per Cane ','giochi intrattenimento ','product-11-pic-0',9.90,40,'Pansy di United Pets è un morbido peluche per cani completo di uno squeaker che rilascia l\'essenza calmante Undergrowth, rendendolo un gioco irresistibile per il tuo peloso. Il peluche color lilla con dettagli verde è appositamente pensato e creato per aiutare il tuo amico a quattro zampe nei momenti di stress. Il simpatico gioco con squeaker lo calma e lo diverte facendo ciò che più gli piace al mondo: giocare con il suo pet parent! Grazie alla tecnologia brevettata, lo squeaker interno al peluche rilascia degli aromi agli oli essenziali ideali per il rilassamento del tuo cane poiché sono 100% terapeutici. La linea Aroma-Stories, grazie alla diversa gamma di peluche, permette a Fido di scegliere il gioco che più gli piace. Il prodotto è disponibile nella dimensione: 14 x 13 cm.',22,'cane',NULL,NULL,'1 PZ',NULL,NULL),(24,'Frisbee in Gomma Naturale per Cane Viola','giochi intrattenimento ','product-12-pic-0',6.90,20,'Il gioco frisbee di Trixie realizzato in gomma naturale ha tutte le caratteristiche per diventare il gioco preferito del tuo cane: velocità, riflessi e resistenza. Il passatempo preferito del tuo cane è il gioco di lancio e riporto? Il frisbee di Trixie è stato studiato appositamente per garantire il massimo divertimento al tuo amico a quattro zampe, anche ai cani più giovani e sensibili. Infatti, si tratta di un gioco molto sicuro e a basso di rischio di lesioni. Rafforza il legame col tuo cane: grazie al nuovo gioco frisbee vi divertirete insieme e Fido impazzerà dalla gioia. Scegli il frisbee in gomma naturale di Trixie!',22,'cane',NULL,NULL,'18 CM','Viola',NULL),(25,'Frisbee in Gomma Naturale per Cane Giallo','giochi intrattenimento ','product-12-pic-1',6.90,20,'Il gioco frisbee di Trixie realizzato in gomma naturale ha tutte le caratteristiche per diventare il gioco preferito del tuo cane: velocità, riflessi e resistenza. Il passatempo preferito del tuo cane è il gioco di lancio e riporto? Il frisbee di Trixie è stato studiato appositamente per garantire il massimo divertimento al tuo amico a quattro zampe, anche ai cani più giovani e sensibili. Infatti, si tratta di un gioco molto sicuro e a basso di rischio di lesioni. Rafforza il legame col tuo cane: grazie al nuovo gioco frisbee vi divertirete insieme e Fido impazzerà dalla gioia. Scegli il frisbee in gomma naturale di Trixie!',22,'cane',NULL,NULL,'18 CM','Giallo',NULL),(26,'Frisbee in Gomma Naturale per Cane Arancione','giochi intrattenimento ','product-12-pic-2',6.90,20,'Il gioco frisbee di Trixie realizzato in gomma naturale ha tutte le caratteristiche per diventare il gioco preferito del tuo cane: velocità, riflessi e resistenza. Il passatempo preferito del tuo cane è il gioco di lancio e riporto? Il frisbee di Trixie è stato studiato appositamente per garantire il massimo divertimento al tuo amico a quattro zampe, anche ai cani più giovani e sensibili. Infatti, si tratta di un gioco molto sicuro e a basso di rischio di lesioni. Rafforza il legame col tuo cane: grazie al nuovo gioco frisbee vi divertirete insieme e Fido impazzerà dalla gioia. Scegli il frisbee in gomma naturale di Trixie!',22,'cane',NULL,NULL,'18 CM','Arancione',NULL),(27,'Frisbee in Gomma Naturale per Cane Rosso','giochi intrattenimento ','product-12-pic-3',6.90,20,'Il gioco frisbee di Trixie realizzato in gomma naturale ha tutte le caratteristiche per diventare il gioco preferito del tuo cane: velocità, riflessi e resistenza. Il passatempo preferito del tuo cane è il gioco di lancio e riporto? Il frisbee di Trixie è stato studiato appositamente per garantire il massimo divertimento al tuo amico a quattro zampe, anche ai cani più giovani e sensibili. Infatti, si tratta di un gioco molto sicuro e a basso di rischio di lesioni. Rafforza il legame col tuo cane: grazie al nuovo gioco frisbee vi divertirete insieme e Fido impazzerà dalla gioia. Scegli il frisbee in gomma naturale di Trixie!',22,'cane',NULL,NULL,'18 CM','Rosso',NULL),(28,'Gioco per Cane Corda Osso ','giochi intrattenimento ','product-13-pic-0',4.49,30,'Trixie ha studiato una linea di giochi ideali non solo a far divertire il tuo cane, ma anche utilissimi per aiutare il tuo pet a mantenere la sua igiene orale. Con la coloratissima corda per cani di Trixie in misto cotone, la cura dell’igiene orale del tuo cane sarà molto più divertente del previsto! I colori sono assortiti, quindi non selezionabili. DIMENSIONE: 40 cm.',22,'cane',NULL,NULL,'40 CM',NULL,NULL),(29,'Guinzaglio Outdoor Rosso S','guinzagli accessori','product-14-pic-0',11.90,25,'Outdoor è un guinzaglio per cani di Pet Around You con impugnatura imbottita di colore rosso. Grazie a questa caratteristica la presa risulta particolarmente confortevole. Il guinzaglio Outdoor, dispone inoltre di un moschettone con blocco di sicurezza per garantire tranquillità a te e al tuo cane durante le vostre passeggiate, inoltre la superficie riflettente permette una sicurezza aggiuntiva per te e il tuo cane permettendo di essere visti in uscite notturne. Prodotto disponibile di colore rosso e blu. La misura S ha spessore 15 mm e lunghezza 120 cm. Un guinzaglio robusto e resistente, ma allo stesso tempo morbido e delicato sulle tue mani.',22,'cane',NULL,NULL,'S','Rosso',NULL),(30,'Guinzaglio Outdoor Rosso M','guinzagli accessori','product-14-pic-0',15.90,25,'Outdoor è un guinzaglio per cani di Pet Around You con impugnatura imbottita di colore rosso. Grazie a questa caratteristica la presa risulta particolarmente confortevole. Il guinzaglio Outdoor, dispone inoltre di un moschettone con blocco di sicurezza per garantire tranquillità a te e al tuo cane durante le vostre passeggiate, inoltre la superficie riflettente permette una sicurezza aggiuntiva per te e il tuo cane permettendo di essere visti in uscite notturne. Prodotto disponibile di colore rosso e blu. La misura S ha spessore 25 mm e lunghezza 120 cm. Un guinzaglio robusto e resistente, ma allo stesso tempo morbido e delicato sulle tue mani.',22,'cane',NULL,NULL,'M','Rosso',NULL),(31,'Tappetini Super Assorbenti 30Pz','salute tappetini assorbenti','product-15-pic-0',8.99,30,'I tappetini igienici Next Dog Super Assorbenti sono specialmente indicati per educare il tuo cucciolo a fare i suoi bisogni fuori casa, rimanendo asciutto e pulito e senza sporcare i pavimenti o i tappeti di casa. Questi tappetini super assorbenti sono anche adatti per le necessità notturne del tuo amico a quattro zampe. I tappetini Next Dog sono stati realizzati con Polimeri super assorbenti (Odor Control) che sono in grado di assorbire da 34 a 44 volte il volume dei liquidi.',22,'cane',NULL,NULL,'60x60 CM',NULL,NULL);
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

-- Dump completed on 2022-07-21 16:41:34
