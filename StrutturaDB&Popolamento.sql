CREATE DATABASE  IF NOT EXISTS `ol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ol`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ol
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `atleta`
--

DROP TABLE IF EXISTS `atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atleta` (
  `id_atleta` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `sesso` tinyint(1) DEFAULT NULL,
  `altezza` float DEFAULT NULL,
  `nazione` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_atleta`),
  KEY `nazione` (`nazione`),
  CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`nazione`) REFERENCES `nazioni` (`nazione`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atleta`
--

LOCK TABLES `atleta` WRITE;
/*!40000 ALTER TABLE `atleta` DISABLE KEYS */;
INSERT INTO `atleta` VALUES (1,'László','Cseh','1985-12-03',75,1,1.9,'Ungheria'),(2,'Richard','Thompson','1985-09-18',70,1,1.78,'Giamaica'),(3,'Walter','Dix','1986-11-17',68,1,1.75,'Stati Uniti'),(4,'Yui','Suzuki','1995-03-15',55.5,0,1.65,'Giappone'),(5,'Carlos','Silva','1990-07-22',70,1,1.8,'Brasile'),(6,'Emma','Watson','1992-04-15',60,0,1.68,'Regno Unito'),(7,'Li','Wei','1988-11-05',68,1,1.75,'Cina'),(8,'Dimitris','Papadopoulos','1993-09-10',75,1,1.82,'Grecia'),(9,'Mia','Johnson','1994-06-20',58,0,1.7,'Australia'),(10,'Michael','Smith','1989-12-01',80,1,1.85,'Stati Uniti'),(11,'Sofia','Garcia','1991-02-14',62,0,1.67,'Spagna'),(12,'Jin','Park','1996-08-30',65,1,1.78,'Corea del Sud'),(13,'Giulia','Rossi','1997-05-25',57,0,1.63,'Italia'),(14,'Pierre','Dubois','1990-09-12',72,1,1.81,'Francia'),(15,'Lukas','Müller','1987-03-08',78,1,1.88,'Germania'),(16,'Ivan','Ivanov','1992-11-18',76,1,1.84,'Russia'),(17,'Emily','Clark','1995-07-05',59,0,1.66,'Canada'),(18,'Raj','Patel','1993-04-22',68,1,1.75,'India'),(19,'Thabo','Mbeki','1991-10-10',70,1,1.8,'Sudafrica'),(20,'Carlos','Lopez','1994-01-15',74,1,1.83,'Messico'),(21,'Maria','Gonzalez','1996-12-20',61,0,1.69,'Argentina'),(23,'Sophie','Taylor','1998-02-28',56,0,1.64,'Nuova Zelanda'),(24,'Akira','Tanaka','1993-08-14',66,1,1.77,'Giappone'),(25,'Fernanda','Lima','1992-05-30',63,0,1.71,'Brasile'),(26,'Oliver','Brown','1991-09-09',79,1,1.86,'Regno Unito'),(27,'Zhang','Wei','1994-03-12',67,1,1.76,'Cina'),(28,'Anna','Papadopoulou','1995-06-18',60,0,1.68,'Grecia'),(29,'Liam','Wilson','1996-07-22',73,1,1.82,'Australia'),(30,'Jessica','Davis','1990-04-25',64,0,1.7,'Stati Uniti'),(31,'Diego','Fernandez','1993-10-10',71,1,1.8,'Spagna'),(32,'Min','Lee','1997-01-05',69,1,1.79,'Corea del Sud'),(33,'Francesca','Bianchi','1998-11-20',58,0,1.65,'Italia'),(34,'Hiroshi','Nakamura','1994-05-12',68,1,1.75,'Giappone'),(35,'Ana','Costa','1991-08-19',62,0,1.68,'Brasile'),(36,'James','Wilson','1989-11-23',77,1,1.84,'Regno Unito'),(37,'Xiao','Li','1993-02-14',70,1,1.78,'Cina'),(38,'Elena','Papadakis','1996-07-30',59,0,1.67,'Grecia'),(39,'Lucas','Brown','1995-09-10',72,1,1.8,'Australia'),(40,'Sarah','Johnson','1990-12-05',61,0,1.69,'Stati Uniti'),(41,'Juan','Martinez','1992-03-18',74,1,1.82,'Spagna'),(42,'Ji','Kim','1997-06-25',66,1,1.77,'Corea del Sud'),(43,'Giovanni','Ricci','1998-01-15',69,1,1.79,'Italia'),(44,'Aya','Tanaka','1993-04-20',57,0,1.66,'Giappone'),(45,'Pedro','Fernandes','1991-07-22',71,1,1.81,'Brasile'),(46,'Olivia','Taylor','1994-10-12',63,0,1.7,'Regno Unito'),(47,'Wei','Zhang','1995-03-08',67,1,1.76,'Cina'),(48,'Maria','Papadopoulou','1996-08-14',60,0,1.68,'Grecia'),(49,'Noah','Smith','1997-05-30',73,1,1.82,'Australia'),(50,'Emily','Brown','1992-09-25',64,0,1.7,'Stati Uniti'),(51,'Carlos','Gomez','1993-12-10',70,1,1.8,'Spagna'),(52,'Min','Park','1998-02-28',68,1,1.79,'Corea del Sud'),(53,'Sofia','Bianchi','1999-11-20',58,0,1.65,'Italia'),(54,'Daiki','Ito','1995-02-18',65,1,1.78,'Giappone'),(55,'Luiza','Santos','1992-09-03',58,0,1.72,'Brasile'),(56,'Thomas','Baker','1988-11-30',76,1,1.85,'Regno Unito'),(57,'Yan','Chen','1994-07-22',69,1,1.77,'Cina'),(58,'Nikolaos','Kostas','1991-04-10',74,1,1.83,'Grecia'),(59,'Ethan','Williams','1993-05-15',71,1,1.8,'Australia'),(60,'Ava','Miller','1996-08-25',59,0,1.67,'Stati Uniti'),(61,'Pablo','Ruiz','1990-12-12',73,1,1.81,'Spagna'),(62,'Seo-yeon','Lee','1997-01-05',57,0,1.64,'Corea del Sud'),(63,'Marco','Ferrari','1994-03-20',70,1,1.79,'Italia'),(64,'Sakura','Yamamoto','1998-06-14',56,0,1.63,'Giappone'),(65,'Rafael','Mendes','1991-10-08',72,1,1.82,'Brasile'),(66,'Charlotte','Evans','1995-07-19',61,0,1.69,'Regno Unito'),(67,'Jian','Wang','1992-11-27',68,1,1.76,'Cina'),(68,'Eleni','Georgiou','1996-09-02',60,0,1.68,'Grecia'),(69,'Liam','Taylor','1997-04-11',72,1,1.8,'Australia'),(70,'Grace','Davis','1993-12-24',62,0,1.7,'Stati Uniti'),(71,'Alejandro','Gonzalez','1994-05-30',71,1,1.8,'Spagna'),(72,'Hyeon','Choi','1998-02-15',67,1,1.77,'Corea del Sud'),(73,'Isabella','Romano','1999-08-10',58,0,1.65,'Italia'),(74,'Kenji','Takahashi','1996-01-22',66,1,1.77,'Giappone'),(75,'Beatriz','Oliveira','1993-03-17',59,0,1.66,'Brasile'),(76,'Daniel','Harris','1990-06-09',75,1,1.84,'Regno Unito'),(77,'Lei','Zhang','1995-08-28',70,1,1.78,'Cina'),(78,'Stavros','Papadakis','1992-12-05',73,1,1.81,'Grecia'),(79,'Jack','Wilson','1994-07-14',70,1,1.79,'Australia'),(80,'Lily','Johnson','1997-04-03',60,0,1.68,'Stati Uniti'),(81,'Sergio','Lopez','1991-09-21',72,1,1.8,'Spagna'),(82,'Ji-hoon','Kim','1998-05-12',68,1,1.78,'Corea del Sud'),(83,'Lucia','Conti','1999-10-19',57,0,1.64,'Italia'),(84,'Haruto','Sato','1995-11-23',67,1,1.77,'Giappone'),(85,'Camila','Ribeiro','1992-02-14',60,0,1.69,'Brasile'),(86,'Oliver','Green','1989-08-07',74,1,1.83,'Regno Unito'),(87,'Wei','Liu','1994-01-30',69,1,1.77,'Cina'),(88,'Dimitra','Antoniou','1996-06-18',61,0,1.7,'Grecia'),(89,'Noah','Brown','1997-03-25',71,1,1.8,'Australia'),(90,'Chloe','Wilson','1993-12-08',63,0,1.71,'Stati Uniti'),(91,'Javier','Martinez','1994-07-22',70,1,1.79,'Spagna'),(92,'Min-ji','Park','1998-04-05',58,0,1.65,'Corea del Sud'),(93,'Giovanna','Marino','1999-09-15',59,0,1.66,'Italia'),(94,'Kaito','Kobayashi','1996-02-28',68,1,1.78,'Giappone'),(95,'Ana','Ferreira','1993-05-19',61,0,1.7,'Brasile'),(96,'Harry','Taylor','1990-10-12',73,1,1.82,'Regno Unito'),(97,'Yong','Zhao','1995-07-24',70,1,1.78,'Cina'),(98,'Maria','Nikolaidou','1992-11-15',62,0,1.69,'Grecia'),(99,'William','Smith','1994-08-09',72,1,1.81,'Australia'),(100,'Sophia','Anderson','1997-01-22',64,0,1.72,'Stati Uniti'),(101,'David','Garcia','1991-06-27',71,1,1.8,'Spagna'),(102,'Yeon-joo','Lee','1998-03-10',59,0,1.66,'Corea del Sud'),(103,'Elena','Ricci','1999-12-05',60,0,1.67,'Italia'),(104,'Kazuki','Yamamoto','1994-08-17',67,1,1.79,'Giappone'),(105,'Gabriela','Ferreira','1993-05-22',59,0,1.71,'Brasile'),(106,'Benjamin','Harrison','1991-12-09',78,1,1.86,'Regno Unito'),(107,'Tao','Wu','1996-02-14',71,1,1.8,'Cina'),(108,'Andreas','Papandreou','1992-07-30',76,1,1.84,'Grecia'),(109,'Lachlan','McDonald','1995-09-18',73,1,1.82,'Australia'),(110,'Madison','Taylor','1997-04-25',60,0,1.69,'Stati Uniti'),(111,'Santiago','Jimenez','1990-11-12',75,1,1.83,'Spagna'),(112,'Ji-woo','Han','1998-03-05',58,0,1.65,'Corea del Sud'),(113,'Leonardo','Moretti','1994-06-20',72,1,1.81,'Italia'),(114,'Haruka','Sato','1999-01-15',57,0,1.64,'Giappone'),(115,'Rodrigo','Costa','1992-10-08',74,1,1.82,'Brasile'),(116,'Eleanor','Campbell','1996-07-19',62,0,1.7,'Regno Unito'),(117,'Hao','Zheng','1993-11-27',69,1,1.77,'Cina'),(118,'Sophia','Karagiannis','1997-09-02',61,0,1.69,'Grecia'),(119,'Oscar','Wilson','1998-04-11',74,1,1.83,'Australia'),(120,'Victoria','Adams','1994-12-24',63,0,1.71,'Stati Uniti'),(121,'Mateo','Hernandez','1995-05-30',72,1,1.8,'Spagna'),(122,'Seung','Bae','1999-02-15',68,1,1.78,'Corea del Sud'),(123,'Ginevra','De Luca','2000-08-10',59,0,1.66,'Italia'),(124,'Riku','Tanaka','1995-01-22',68,1,1.78,'Giappone'),(125,'Isabela','Silveira','1992-03-17',60,0,1.7,'Brasile'),(126,'Alexander','Murray','1989-06-09',77,1,1.85,'Regno Unito'),(127,'Yiming','Sun','1994-08-28',71,1,1.79,'Cina'),(128,'Christos','Theodorou','1991-12-05',75,1,1.83,'Grecia'),(129,'Hudson','Clark','1993-07-14',72,1,1.81,'Australia'),(130,'Scarlett','Mitchell','1996-04-03',61,0,1.7,'Stati Uniti'),(131,'Adrián','Gutierrez','1990-09-21',74,1,1.82,'Spagna'),(132,'Da-eun','Song','1997-05-12',59,0,1.66,'Corea del Sud'),(133,'Beatrice','Rinaldi','1998-10-19',58,0,1.65,'Italia'),(134,'Sota','Watanabe','1994-11-23',69,1,1.79,'Giappone'),(135,'Larissa','Machado','1991-02-14',61,0,1.71,'Brasile'),(136,'William','Douglas','1988-08-07',76,1,1.84,'Regno Unito'),(137,'Jie','Yang','1993-01-30',70,1,1.78,'Cina'),(138,'Eva','Petridou','1995-06-18',62,0,1.7,'Grecia'),(139,'Cooper','Anderson','1996-03-25',73,1,1.82,'Australia'),(140,'Zoe','Harrison','1992-12-08',64,0,1.72,'Stati Uniti'),(141,'Marcos','Diaz','1993-07-22',71,1,1.8,'Spagna'),(142,'Hana','Jung','1997-04-05',60,0,1.67,'Corea del Sud'),(143,'Federica','Galli','1998-09-15',60,0,1.68,'Italia'),(144,'Takeshi','Nakamura','1995-05-12',70,1,1.8,'Giappone'),(145,'Patricia','Oliveira','1992-08-19',63,0,1.72,'Brasile'),(146,'Jonathan','Wilson','1989-11-23',79,1,1.86,'Regno Unito'),(147,'Qiang','Li','1993-02-14',72,1,1.8,'Cina'),(148,'Georgios','Papadakis','1996-07-30',77,1,1.84,'Grecia'),(149,'Mason','Brown','1994-09-10',74,1,1.82,'Australia'),(150,'Hannah','Johnson','1990-12-05',62,0,1.71,'Stati Uniti'),(151,'Alberto','Martinez','1991-03-18',76,1,1.83,'Spagna'),(152,'Seung-ho','Kim','1996-06-25',68,1,1.79,'Corea del Sud'),(153,'Paolo','Ricci','1997-01-15',71,1,1.8,'Italia'),(154,'Mai','Tanaka','1993-04-20',58,0,1.67,'Giappone'),(155,'Fernando','Silva','1990-07-22',73,1,1.81,'Brasile'),(156,'Amelia','Taylor','1994-10-12',64,0,1.72,'Regno Unito'),(157,'Xin','Zhang','1995-03-08',69,1,1.78,'Cina'),(158,'Despina','Papadopoulou','1996-08-14',61,0,1.7,'Grecia'),(159,'Logan','Smith','1997-05-30',75,1,1.83,'Australia'),(160,'Evelyn','Brown','1992-09-25',65,0,1.73,'Stati Uniti'),(161,'Jorge','Gomez','1993-12-10',72,1,1.8,'Spagna'),(162,'Ji-min','Park','1997-02-28',70,1,1.79,'Corea del Sud'),(163,'Sara','Bianchi','1998-11-20',59,0,1.66,'Italia'),(164,'Ren','Kobayashi','1995-02-28',70,1,1.79,'Giappone'),(165,'Beatriz','Ferreira','1992-05-19',62,0,1.71,'Brasile'),(166,'Samuel','Taylor','1989-10-12',77,1,1.84,'Regno Unito'),(167,'Wei','Zhao','1994-07-24',72,1,1.8,'Cina'),(168,'Katerina','Nikolaidou','1991-11-15',63,0,1.72,'Grecia'),(169,'Ethan','Smith','1993-08-09',74,1,1.82,'Australia'),(170,'Avery','Anderson','1996-01-22',66,0,1.74,'Stati Uniti'),(171,'Raul','Garcia','1990-06-27',73,1,1.81,'Spagna'),(172,'Soo-jin','Lee','1997-03-10',60,0,1.68,'Corea del Sud'),(173,'Claudia','Ricci','1998-12-05',61,0,1.69,'Italia'),(174,'Kenta','Suzuki','1994-05-12',71,1,1.8,'Giappone'),(175,'Carolina','Costa','1991-08-19',63,0,1.72,'Brasile'),(176,'George','Wilson','1988-11-23',78,1,1.85,'Regno Unito'),(177,'Peng','Li','1993-02-14',73,1,1.81,'Cina'),(178,'Ioanna','Papadakis','1996-07-30',64,0,1.73,'Grecia'),(179,'Archer','Brown','1994-09-10',75,1,1.83,'Australia'),(180,'Audrey','Johnson','1990-12-05',63,0,1.72,'Stati Uniti'),(181,'Ricardo','Martinez','1991-03-18',77,1,1.84,'Spagna'),(182,'Ye-jun','Kim','1996-06-25',69,1,1.79,'Corea del Sud'),(183,'Dario','Ricci','1997-01-15',72,1,1.8,'Italia'),(184,'Nana','Tanaka','1993-04-20',59,0,1.68,'Giappone'),(185,'Eduardo','Silva','1990-07-22',74,1,1.81,'Brasile'),(186,'Isabelle','Taylor','1994-10-12',65,0,1.73,'Regno Unito'),(187,'Jian','Zhang','1995-03-08',70,1,1.79,'Cina'),(188,'Marina','Papadopoulou','1996-08-14',62,0,1.71,'Grecia'),(189,'Flynn','Smith','1997-05-30',76,1,1.84,'Australia'),(190,'Bella','Brown','1992-09-25',66,0,1.74,'Stati Uniti'),(191,'Hector','Gomez','1993-12-10',73,1,1.81,'Spagna'),(192,'Ha-eun','Park','1997-02-28',71,0,1.7,'Corea del Sud'),(193,'Elisa','Bianchi','1998-11-20',60,0,1.67,'Italia'),(194,'Usain','Bolt','1986-08-21',94,1,1.95,'Giamaica'),(195,'Michael','Phelps','1985-06-30',88,1,1.93,'Stati Uniti'),(196,'Simone','Biles','1997-03-14',47,0,1.42,'Stati Uniti'),(197,'Katie','Ledecky','1997-03-17',73,0,1.83,'Stati Uniti'),(198,'Novak','Djokovic','1987-05-22',77,1,1.88,'Serbia'),(199,'Elaine','Thompson-Herah','1992-06-28',57,0,1.67,'Giamaica'),(200,'Caeleb','Dressel','1996-08-16',86,1,1.91,'Stati Uniti'),(201,'Yuzuru','Hanyu','1994-12-07',57,1,1.72,'Giappone'),(202,'Laura','Muir','1993-05-09',54,0,1.63,'Regno Unito'),(203,'Eliud','Kipchoge','1984-11-05',56,1,1.67,'Kenya'),(204,'Shelly-Ann','Fraser-Pryce','1986-12-27',52,0,1.52,'Giamaica'),(205,'Adam','Peaty','1994-12-28',86,1,1.91,'Regno Unito'),(206,'Allyson','Felix','1985-11-18',55,0,1.68,'Stati Uniti'),(207,'Rafael','Nadal','1986-06-03',85,1,1.85,'Spagna'),(208,'Naomi','Osaka','1997-10-16',69,0,1.8,'Giappone'),(209,'Wayde','van Niekerk','1992-07-15',72,1,1.83,'Sudafrica'),(210,'Dafne','Schippers','1992-06-15',70,0,1.79,'Olanda'),(211,'Mutaz','Barshim','1991-06-24',65,1,1.89,'Qatar'),(212,'Karsten','Warholm','1996-02-28',80,1,1.87,'Norvegia'),(213,'Justin','Gatlin','1982-02-10',83,1,1.85,'Stati Uniti'),(214,'Yohan','Blake','1989-12-26',76,1,1.8,'Giamaica'),(215,'Ryan','Lochte','1984-08-03',88,1,1.88,'Stati Uniti'),(216,'Chad','le Clos','1992-04-12',80,1,1.86,'Sudafrica'),(217,'Ashton','Eaton','1988-01-21',82,1,1.85,'Stati Uniti'),(218,'Nia','Ali','1988-10-23',59,0,1.75,'Stati Uniti'),(219,'Dina','Asher-Smith','1995-12-04',55,0,1.64,'Regno Unito'),(220,'Andre','De Grasse','1994-11-10',70,1,1.76,'Canada'),(221,'Kendra','Harrison','1992-09-18',57,0,1.68,'Stati Uniti'),(222,'Piotr','Malachowski','1983-06-07',120,1,1.96,'Polonia'),(223,'Sandra','Perković','1990-06-21',85,0,1.86,'Croazia'),(224,'Thomas','Röhler','1991-09-30',90,1,1.91,'Germania'),(225,'Christophe','Lemaitre','1990-06-11',72,1,1.89,'Francia'),(226,'Greg','Rutherford','1986-11-17',85,1,1.88,'Regno Unito'),(227,'Tori','Bowie','1990-08-27',56,0,1.75,'Stati Uniti'),(228,'Aries','Merritt','1985-07-24',72,1,1.88,'Stati Uniti'),(229,'David','Rudisha','1988-12-17',72,1,1.88,'Kenya'),(230,'Renaud','Lavillenie','1986-09-18',69,1,1.77,'Francia'),(231,'Anita','Włodarczyk','1985-08-08',96,0,1.78,'Polonia'),(232,'Christian','Taylor','1990-06-18',79,1,1.88,'Stati Uniti'),(233,'Will','Claye','1991-06-13',68,1,1.8,'Stati Uniti'),(234,'Jeff','Henderson','1989-02-19',77,1,1.83,'Stati Uniti'),(235,'Tianna','Bartoletta','1985-08-30',61,0,1.78,'Stati Uniti'),(236,'Brittney','Reese','1986-09-09',59,0,1.73,'Stati Uniti'),(237,'Ryan','Crouser','1992-12-18',122,1,2.01,'Stati Uniti'),(238,'Joe','Kovacs','1989-06-28',136,1,1.83,'Stati Uniti'),(239,'Gong','Lijiao','1989-01-24',110,0,1.75,'Cina'),(240,'Valerie','Adams','1984-10-06',120,0,1.93,'Nuova Zelanda'),(241,'Sandra','Perković','1990-06-21',85,0,1.86,'Croazia');
/*!40000 ALTER TABLE `atleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `id_sport` int DEFAULT NULL,
  `nome_sottoclasse` int DEFAULT NULL,
  `codice` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `id_sport` (`id_sport`),
  KEY `nome_sottoclasse` (`nome_sottoclasse`),
  KEY `codice` (`codice`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id_sport`),
  CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`nome_sottoclasse`) REFERENCES `sottoclasse_sport` (`id_sottoclasse`),
  CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`codice`) REFERENCES `olimpiade` (`codice`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,1,1,'TOK2020'),(2,1,2,'RIO2016'),(3,2,3,'LON2012'),(4,2,4,'BEI2008'),(5,3,5,'ATH2004'),(6,3,6,'SYD2000'),(7,4,7,'ATL1996'),(8,4,8,'BAR1992'),(9,5,9,'SEO1988'),(10,5,10,'LA1984'),(11,6,11,'TOK2020'),(12,6,12,'RIO2016'),(13,7,13,'LON2012'),(14,7,14,'BEI2008'),(15,8,15,'ATH2004'),(16,8,16,'SYD2000'),(17,9,17,'ATL1996'),(18,9,18,'BAR1992'),(19,10,19,'SEO1988'),(20,10,20,'LA1984'),(21,1,1,'TOK2020'),(22,1,2,'RIO2016'),(23,2,3,'LON2012'),(24,2,4,'BEI2008'),(25,3,5,'ATH2004'),(26,3,6,'SYD2000'),(27,4,7,'ATL1996'),(28,4,8,'BAR1992'),(29,5,9,'SEO1988'),(30,5,10,'LA1984'),(31,6,11,'TOK2020'),(32,6,12,'RIO2016'),(33,7,13,'LON2012'),(34,7,14,'BEI2008'),(35,8,15,'ATH2004'),(36,8,16,'SYD2000'),(37,9,17,'ATL1996'),(38,9,18,'BAR1992'),(39,10,19,'SEO1988'),(40,10,20,'LA1984'),(41,6,11,'SYD2000'),(42,6,12,'ATL1996'),(43,7,13,'BAR1992'),(44,7,14,'SEO1988'),(45,8,15,'LA1984'),(46,8,16,'TOK2020'),(47,9,17,'RIO2016'),(48,9,18,'LON2012'),(49,10,19,'BEI2008'),(50,10,20,'ATH2004'),(51,1,1,'SYD2000'),(52,1,2,'ATL1996'),(53,2,3,'BAR1992'),(54,2,4,'SEO1988'),(55,3,5,'LA1984'),(56,3,6,'TOK2020'),(57,4,7,'RIO2016'),(58,4,8,'LON2012'),(59,5,9,'BEI2008'),(60,5,10,'ATH2004'),(61,1,1,'RIO2016'),(62,1,1,'LON2012'),(63,1,2,'RIO2016'),(64,2,3,'RIO2016'),(65,2,4,'LON2012'),(66,3,5,'RIO2016'),(67,3,6,'TOK2020'),(68,7,13,'RIO2016'),(69,7,14,'TOK2020'),(70,1,1,'BEI2008'),(71,1,1,'ATH2004'),(72,2,3,'BEI2008'),(73,2,3,'LON2012'),(74,4,7,'RIO2016'),(75,5,9,'LON2012'),(76,6,11,'TOK2020'),(77,8,15,'RIO2016'),(78,9,17,'LON2012'),(79,10,19,'TOK2020');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membri_squadra`
--

DROP TABLE IF EXISTS `membri_squadra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membri_squadra` (
  `id_squadra` int NOT NULL,
  `id_atleta` int NOT NULL,
  PRIMARY KEY (`id_squadra`,`id_atleta`),
  KEY `id_atleta` (`id_atleta`),
  CONSTRAINT `membri_squadra_ibfk_1` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`id_atleta`),
  CONSTRAINT `membri_squadra_ibfk_2` FOREIGN KEY (`id_squadra`) REFERENCES `squadra` (`id_squadra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membri_squadra`
--

LOCK TABLES `membri_squadra` WRITE;
/*!40000 ALTER TABLE `membri_squadra` DISABLE KEYS */;
INSERT INTO `membri_squadra` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(1,21),(3,23),(4,24),(5,25),(6,26),(7,27),(8,28),(9,29),(10,30),(11,31),(12,32),(13,33),(14,34),(15,35),(11,36),(12,37),(13,38),(14,39),(15,40),(11,41),(12,42),(13,43),(14,44),(15,45),(11,46),(12,47),(13,48),(14,49),(15,50),(16,51),(17,52),(18,53),(19,54),(20,55),(16,61),(17,62),(18,63),(19,64),(20,65),(16,71),(17,72),(18,73),(19,74),(20,75),(16,81),(17,82),(18,83),(19,84),(20,85),(16,91),(17,92),(18,93),(19,94),(20,95),(21,101),(22,102),(23,103),(24,104),(25,105),(26,106),(27,107),(28,108),(29,109),(30,110),(21,111),(22,112),(23,113),(24,114),(25,115),(26,116),(27,117),(28,118),(29,119),(30,120),(21,121),(22,122),(23,123),(24,124),(25,125),(26,126),(27,127),(28,128),(29,129),(30,130),(21,131),(22,132),(23,133),(24,134),(25,135),(26,136),(27,137),(28,138),(29,139),(30,140),(21,141),(22,142),(23,143),(24,144),(25,145),(26,146),(27,147),(28,148),(29,149),(30,150),(1,151),(2,152),(3,153),(4,154),(5,155),(6,156),(7,157),(8,158),(9,159),(10,160),(11,161),(12,162),(13,163),(14,164),(15,165),(16,166),(17,167),(18,168),(19,169),(20,170),(1,171),(2,172),(3,173),(4,174),(5,175),(6,176),(7,177),(8,178),(9,179),(10,180),(11,181),(12,182),(13,183),(14,184),(15,185),(16,186),(17,187),(18,188),(19,189),(20,190);
/*!40000 ALTER TABLE `membri_squadra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nazioni`
--

DROP TABLE IF EXISTS `nazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nazioni` (
  `nazione` varchar(55) NOT NULL,
  `continente` varchar(55) DEFAULT NULL,
  `popolazione` float DEFAULT NULL,
  `gdp` bigint DEFAULT NULL,
  `superficie_km2` float DEFAULT NULL,
  `prima_partecipazione` int DEFAULT NULL,
  PRIMARY KEY (`nazione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nazioni`
--

LOCK TABLES `nazioni` WRITE;
/*!40000 ALTER TABLE `nazioni` DISABLE KEYS */;
INSERT INTO `nazioni` VALUES ('Algeria','Africa',44000000,170000000000,2381740,1964),('Arabia Saudita','Asia',35000000,793000000000,2149690,1972),('Argentina','America',45100000,388000000000,2780400,1900),('Australia','Oceania',25690000,1393000000000,7692020,1896),('Austria','Europa',8900000,428000000000,83871,1896),('Bangladesh','Asia',165000000,350000000000,147570,1984),('Belgio','Europa',11500000,533000000000,30528,1900),('Bielorussia','Europa',9400000,59000000000,207600,1996),('Brasile','America',212600000,1445000000000,8515770,1920),('Bulgaria','Europa',7000000,76000000000,110994,1896),('Canada','America',38000000,1736000000000,9984670,1900),('Cile','America',19100000,317000000000,756102,1912),('Cina','Asia',1412000000,14300000000000,9596960,1952),('Colombia','America',50800000,314000000000,1141750,1932),('Corea del Sud','Asia',51700000,1656000000000,100210,1948),('Croazia','Europa',4100000,60000000000,56594,1992),('Cuba','America',11300000,100000000000,109884,1900),('Danimarca','Europa',5800000,398000000000,42916,1896),('Egitto','Africa',102300000,365000000000,1002450,1912),('Filippine','Asia',109000000,377000000000,300000,1924),('Finlandia','Europa',5500000,270000000000,338424,1908),('Francia','Europa',67400000,2715000000000,551695,1896),('Germania','Europa',83100000,3846000000000,357022,1896),('Giamaica','America',2900000,16000000000,10991,1948),('Giappone','Asia',125800000,5082000000000,377975,1912),('Grecia','Europa',10400000,216000000000,131957,1896),('India','Asia',1380000000,2875000000000,3287260,1900),('Indonesia','Asia',273000000,1119000000000,1904570,1952),('Iran','Asia',85000000,611000000000,1648200,1948),('Irlanda','Europa',5000000,476000000000,70273,1924),('Israele','Asia',9300000,395000000000,22072,1952),('Italia','Europa',60360000,2000000000000,301340,1900),('Kazakhstan','Asia',18700000,182000000000,2724900,1996),('Kenya','Africa',54,95000000000,580367,1956),('Malaysia','Asia',32000000,364000000000,330803,1956),('Marocco','Africa',37000000,124000000000,446550,1960),('Messico','America',128900000,1200000000000,1964380,1900),('Nigeria','Africa',206000000,432000000000,923768,1952),('Norvegia','Europa',5420000,445000000000,385207,1900),('Nuova Zelanda','Oceania',5000000,209000000000,268838,1908),('Olanda','Europa',17400000,912000000000,41850,1900),('Pakistan','Asia',225000000,278000000000,881913,1948),('Perù','America',33000000,200000000000,1285220,1900),('Polonia','Europa',38300000,623000000000,312696,1924),('Portogallo','Europa',10100000,237000000000,92212,1912),('Qatar','Asia',2800000,180000000000,11586,1984),('Regno Unito','Europa',67800000,2827000000000,243610,1896),('Repubblica Ceca','Europa',10700000,246000000000,78867,1900),('Romania','Europa',19200000,250000000000,238397,1900),('Russia','Europa',143900000,1578000000000,17098200,1900),('Serbia','Europa',6900000,53600000000,77474,1912),('Singapore','Asia',5700000,372000000000,728,1948),('Slovacchia','Europa',5400000,105000000000,49035,1996),('Slovenia','Europa',2100000,55000000000,20273,1992),('Spagna','Europa',47300000,1403000000000,505992,1900),('Stati Uniti','America',331000000,21400000000000,9833520,1896),('Sudafrica','Africa',59300000,350000000000,1219090,1904),('Svezia','Europa',10300000,528000000000,450295,1896),('Svizzera','Europa',8700000,824000000000,41285,1896),('Thailandia','Asia',70000000,502000000000,513120,1952),('Tunisia','Africa',12000000,39000000000,163610,1960),('Turchia','Asia',84000000,761000000000,783562,1908),('Ucraina','Europa',41000000,153000000000,603500,1996),('Ungheria','Europa',9700000,163000000000,93030,1896),('Venezuela','America',28400000,99900000000,916445,1948),('Vietnam','Asia',97000000,341000000000,331212,1952);
/*!40000 ALTER TABLE `nazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `olimpiade`
--

DROP TABLE IF EXISTS `olimpiade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olimpiade` (
  `codice` varchar(10) NOT NULL,
  `nazione` varchar(55) DEFAULT NULL,
  `città` varchar(100) DEFAULT NULL,
  `anno` int DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `mascotte` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olimpiade`
--

LOCK TABLES `olimpiade` WRITE;
/*!40000 ALTER TABLE `olimpiade` DISABLE KEYS */;
INSERT INTO `olimpiade` VALUES ('ATH2004','Grecia','Atene',2004,'2004-08-13','2004-08-29','Athena e Phevos'),('ATL1996','Stati Uniti','Atlanta',1996,'1996-07-19','1996-08-04','Izzy'),('BAR1992','Spagna','Barcellona',1992,'1992-07-25','1992-08-09','Cobi'),('BEI2008','Cina','Pechino',2008,'2008-08-08','2008-08-24','Beibei'),('LA1984','Stati Uniti','Los Angeles',1984,'1984-07-28','1984-08-12','Sam'),('LON2012','Regno Unito','Londra',2012,'2012-07-27','2012-08-12','Wenlock'),('RIO2016','Brasile','Rio de Janeiro',2016,'2016-08-05','2016-08-21','Vinicius'),('SEO1988','Corea del Sud','Seul',1988,'1988-09-17','1988-10-02','Hodori'),('SYD2000','Australia','Sydney',2000,'2000-09-15','2000-10-01','Olly, Syd e Millie'),('TOK2020','Giappone','Tokyo',2020,'2020-07-24','2020-08-09','Miraitowa');
/*!40000 ALTER TABLE `olimpiade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partecipa`
--

DROP TABLE IF EXISTS `partecipa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partecipa` (
  `id_evento` int DEFAULT NULL,
  `id_atleta` int DEFAULT NULL,
  `id_squadra` int DEFAULT NULL,
  `classifica` int DEFAULT NULL,
  `Medaglia` varchar(10) DEFAULT NULL,
  KEY `id_evento` (`id_evento`),
  KEY `id_atleta` (`id_atleta`),
  KEY `id_squadra` (`id_squadra`),
  CONSTRAINT `partecipa_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`),
  CONSTRAINT `partecipa_ibfk_2` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`id_atleta`),
  CONSTRAINT `partecipa_ibfk_3` FOREIGN KEY (`id_squadra`) REFERENCES `squadra` (`id_squadra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partecipa`
--

LOCK TABLES `partecipa` WRITE;
/*!40000 ALTER TABLE `partecipa` DISABLE KEYS */;
INSERT INTO `partecipa` VALUES (1,1,1,1,'Oro'),(2,2,2,2,'Argento'),(3,3,3,3,'Bronzo'),(4,4,4,1,'Oro'),(5,5,5,2,'Argento'),(6,6,6,1,'Oro'),(7,7,7,3,'Bronzo'),(8,8,8,2,'Argento'),(9,9,9,1,'Oro'),(10,10,10,3,'Bronzo'),(11,11,1,2,'Argento'),(12,12,2,1,'Oro'),(13,13,3,3,'Bronzo'),(14,14,4,2,'Argento'),(15,15,5,1,'Oro'),(16,16,6,3,'Bronzo'),(17,17,7,2,'Argento'),(18,18,8,1,'Oro'),(19,19,9,3,'Bronzo'),(20,20,10,2,'Argento'),(1,21,1,3,'Bronzo'),(3,23,3,2,'Argento'),(4,24,4,3,'Bronzo'),(5,25,5,1,'Oro'),(6,26,6,2,'Argento'),(7,27,7,1,'Oro'),(8,28,8,3,'Bronzo'),(9,29,9,2,'Argento'),(10,30,10,1,'Oro'),(1,31,11,4,NULL),(2,32,12,5,NULL),(3,33,13,6,NULL),(4,34,14,7,NULL),(5,35,15,8,NULL),(6,36,11,9,NULL),(7,37,12,10,NULL),(8,38,13,11,NULL),(9,39,14,12,NULL),(10,40,15,13,NULL),(11,41,11,14,NULL),(12,42,12,15,NULL),(13,43,13,16,NULL),(14,44,14,17,NULL),(15,45,15,18,NULL),(16,46,11,19,NULL),(17,47,12,20,NULL),(18,48,13,21,NULL),(19,49,14,22,NULL),(20,50,15,23,NULL),(1,36,11,24,NULL),(2,37,12,25,NULL),(3,38,13,26,NULL),(4,39,14,27,NULL),(5,40,15,28,NULL),(6,41,11,29,NULL),(7,42,12,30,NULL),(8,43,13,31,NULL),(9,44,14,32,NULL),(10,45,15,33,NULL),(1,51,16,1,'Oro'),(2,52,17,2,'Argento'),(3,53,18,3,'Bronzo'),(4,54,19,1,'Oro'),(5,55,20,2,'Argento'),(6,56,1,3,'Bronzo'),(7,57,2,1,'Oro'),(8,58,3,2,'Argento'),(9,59,4,3,'Bronzo'),(10,60,5,1,'Oro'),(11,61,16,2,'Argento'),(12,62,17,3,'Bronzo'),(13,63,18,1,'Oro'),(14,64,19,2,'Argento'),(15,65,20,3,'Bronzo'),(16,66,6,1,'Oro'),(17,67,7,2,'Argento'),(18,68,8,3,'Bronzo'),(19,69,9,1,'Oro'),(20,70,10,2,'Argento'),(1,71,16,4,NULL),(2,72,17,5,NULL),(3,73,18,6,NULL),(4,74,19,7,NULL),(5,75,20,8,NULL),(6,76,11,9,NULL),(7,77,12,10,NULL),(8,78,13,11,NULL),(9,79,14,12,NULL),(10,80,15,13,NULL),(11,81,16,14,NULL),(12,82,17,15,NULL),(13,83,18,16,NULL),(14,84,19,17,NULL),(15,85,20,18,NULL),(16,86,1,19,NULL),(17,87,2,20,NULL),(18,88,3,21,NULL),(19,89,4,22,NULL),(20,90,5,23,NULL),(1,91,16,24,NULL),(2,92,17,25,NULL),(3,93,18,26,NULL),(4,94,19,27,NULL),(5,95,20,28,NULL),(6,96,6,29,NULL),(7,97,7,30,NULL),(8,98,8,31,NULL),(9,99,9,32,NULL),(10,100,10,33,NULL),(1,56,1,2,'Argento'),(2,57,2,1,'Oro'),(3,58,3,4,NULL),(4,59,4,3,'Bronzo'),(5,60,5,5,NULL),(6,66,6,2,'Argento'),(7,67,7,4,NULL),(8,68,8,1,'Oro'),(9,69,9,6,NULL),(10,70,10,3,'Bronzo'),(11,61,16,5,NULL),(12,62,17,1,'Oro'),(13,63,18,7,NULL),(14,64,19,2,'Argento'),(15,65,20,8,NULL),(16,66,6,3,'Bronzo'),(17,67,7,9,NULL),(18,68,8,4,NULL),(19,69,9,1,'Oro'),(20,70,10,10,NULL),(21,101,21,1,'Oro'),(22,102,22,2,'Argento'),(23,103,23,3,'Bronzo'),(24,104,24,4,NULL),(25,105,25,5,NULL),(26,106,26,1,'Oro'),(27,107,27,2,'Argento'),(28,108,28,3,'Bronzo'),(29,109,29,4,NULL),(30,110,30,5,NULL),(31,111,21,1,'Oro'),(32,112,22,2,'Argento'),(33,113,23,3,'Bronzo'),(34,114,24,4,NULL),(35,115,25,5,NULL),(36,116,26,1,'Oro'),(37,117,27,2,'Argento'),(38,118,28,3,'Bronzo'),(39,119,29,4,NULL),(40,120,30,5,NULL),(21,121,21,6,NULL),(22,122,22,7,NULL),(23,123,23,8,NULL),(24,124,24,9,NULL),(25,125,25,10,NULL),(26,126,26,2,'Argento'),(27,127,27,3,'Bronzo'),(28,128,28,4,NULL),(29,129,29,5,NULL),(30,130,30,6,NULL),(31,131,21,2,'Argento'),(32,132,22,3,'Bronzo'),(33,133,23,4,NULL),(34,134,24,5,NULL),(35,135,25,6,NULL),(36,136,26,3,'Bronzo'),(37,137,27,4,NULL),(38,138,28,5,NULL),(39,139,29,6,NULL),(40,140,30,7,NULL),(21,141,21,7,NULL),(22,142,22,8,NULL),(23,143,23,9,NULL),(24,144,24,10,NULL),(25,145,25,11,NULL),(26,146,26,4,NULL),(27,147,27,5,NULL),(28,148,28,6,NULL),(29,149,29,7,NULL),(30,150,30,8,NULL),(31,151,1,1,'Oro'),(32,152,2,2,'Argento'),(33,153,3,3,'Bronzo'),(34,154,4,4,NULL),(35,155,5,5,NULL),(36,156,6,1,'Oro'),(37,157,7,2,'Argento'),(38,158,8,3,'Bronzo'),(39,159,9,4,NULL),(40,160,10,5,NULL),(21,161,11,1,'Oro'),(22,162,12,2,'Argento'),(23,163,13,3,'Bronzo'),(24,164,14,4,NULL),(25,165,15,5,NULL),(26,166,16,1,'Oro'),(27,167,17,2,'Argento'),(28,168,18,3,'Bronzo'),(29,169,19,4,NULL),(30,170,20,5,NULL),(31,171,1,2,'Argento'),(32,172,2,3,'Bronzo'),(33,173,3,4,NULL),(34,174,4,5,NULL),(35,175,5,6,NULL),(36,176,6,2,'Argento'),(37,177,7,3,'Bronzo'),(38,178,8,4,NULL),(39,179,9,5,NULL),(40,180,10,6,NULL),(21,181,11,2,'Argento'),(22,182,12,3,'Bronzo'),(23,183,13,4,NULL),(24,184,14,5,NULL),(25,185,15,6,NULL),(26,186,16,3,'Bronzo'),(27,187,17,4,NULL),(28,188,18,5,NULL),(29,189,19,6,NULL),(30,190,20,7,NULL),(21,101,21,8,NULL),(22,102,22,9,NULL),(23,103,23,10,NULL),(24,104,24,11,NULL),(25,105,25,12,NULL),(26,106,26,5,NULL),(27,107,27,6,NULL),(28,108,28,7,NULL),(29,109,29,8,NULL),(30,110,30,9,NULL),(31,111,21,4,NULL),(32,112,22,5,NULL),(33,113,23,6,NULL),(34,114,24,7,NULL),(35,115,25,8,NULL),(36,116,26,6,NULL),(37,117,27,7,NULL),(38,118,28,8,NULL),(39,119,29,9,NULL),(40,120,30,10,NULL),(21,121,21,9,NULL),(22,122,22,10,NULL),(23,123,23,11,NULL),(24,124,24,12,NULL),(25,125,25,13,NULL),(26,126,26,7,NULL),(27,127,27,8,NULL),(28,128,28,9,NULL),(29,129,29,10,NULL),(30,130,30,11,NULL),(31,131,21,5,NULL),(32,132,22,6,NULL),(33,133,23,7,NULL),(34,134,24,8,NULL),(35,135,25,9,NULL),(36,136,26,8,NULL),(37,137,27,9,NULL),(38,138,28,10,NULL),(39,139,29,11,NULL),(40,140,30,12,NULL),(21,141,21,10,NULL),(22,142,22,11,NULL),(23,143,23,12,NULL),(24,144,24,13,NULL),(25,145,25,14,NULL),(26,146,26,9,NULL),(27,147,27,10,NULL),(28,148,28,11,NULL),(29,149,29,12,NULL),(30,150,30,13,NULL),(41,194,NULL,1,'Oro'),(41,213,NULL,2,'Argento'),(41,220,NULL,3,'Bronzo'),(41,214,NULL,4,NULL),(41,214,NULL,5,NULL),(42,194,NULL,1,'Oro'),(42,214,NULL,2,'Argento'),(42,213,NULL,3,'Bronzo'),(44,195,NULL,1,'Oro'),(44,216,NULL,2,'Argento'),(44,1,NULL,3,'Bronzo'),(46,196,NULL,1,'Oro'),(48,198,NULL,1,'Oro'),(48,207,NULL,2,'Argento'),(50,194,NULL,1,'Oro'),(50,2,NULL,2,'Argento'),(50,3,NULL,3,'Bronzo'),(43,203,NULL,1,'Oro'),(45,197,NULL,1,'Oro'),(47,201,NULL,1,'Oro'),(49,208,NULL,1,'Oro'),(51,194,NULL,1,'Oro'),(52,195,NULL,1,'Oro'),(53,196,NULL,1,'Oro'),(54,197,NULL,1,'Oro'),(55,198,NULL,1,'Oro'),(56,199,NULL,1,'Oro');
/*!40000 ALTER TABLE `partecipa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sottoclasse_sport`
--

DROP TABLE IF EXISTS `sottoclasse_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sottoclasse_sport` (
  `id_sport` int DEFAULT NULL,
  `id_sottoclasse` int NOT NULL AUTO_INCREMENT,
  `nome_sottoclasse` varchar(100) DEFAULT NULL,
  `prima_apparizione` date DEFAULT NULL,
  `record` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id_sottoclasse`),
  KEY `id_sport` (`id_sport`),
  CONSTRAINT `sottoclasse_sport_ibfk_1` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id_sport`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sottoclasse_sport`
--

LOCK TABLES `sottoclasse_sport` WRITE;
/*!40000 ALTER TABLE `sottoclasse_sport` DISABLE KEYS */;
INSERT INTO `sottoclasse_sport` VALUES (1,1,'100 metri piani','1896-04-06','9.58'),(1,2,'Maratona','1896-04-06','2:01:39'),(2,3,'100 metri stile libero','1896-04-06','46.91'),(2,4,'200 metri rana','1908-07-14','2:06.12'),(3,5,'Parallele asimmetriche','1936-08-01','16.233'),(3,6,'Volteggio','1896-04-06','16.233'),(4,7,'Calcio a 11','1900-05-14',NULL),(4,8,'Calcio a 5','1936-08-01',NULL),(5,9,'Pallavolo indoor','1964-10-10',NULL),(5,10,'Beach volley','1996-07-20',NULL),(6,11,'Ciclismo su strada','1896-04-06',NULL),(6,12,'Ciclismo su pista','1896-04-06',NULL),(7,13,'Singolare maschile','1896-04-06',NULL),(7,14,'Singolare femminile','1900-05-14',NULL),(8,15,'Fioretto individuale','1896-04-06',NULL),(8,16,'Spada individuale','1900-05-14',NULL),(9,17,'Pesi massimi','1904-07-01',NULL),(9,18,'Pesi leggeri','1904-07-01',NULL),(10,19,'Judo -60 kg','1964-10-10',NULL),(10,20,'Judo +100 kg','1964-10-10',NULL);
/*!40000 ALTER TABLE `sottoclasse_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport` (
  `id_sport` int NOT NULL AUTO_INCREMENT,
  `nome_sport` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_sport`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (1,'Atletica Leggera'),(2,'Nuoto'),(3,'Ginnastica'),(4,'Calcio'),(5,'Pallavolo'),(6,'Ciclismo'),(7,'Tennis'),(8,'Scherma'),(9,'Boxe'),(10,'Judo');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `squadra`
--

DROP TABLE IF EXISTS `squadra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `squadra` (
  `id_squadra` int NOT NULL AUTO_INCREMENT,
  `nome_squadra` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_squadra`),
  UNIQUE KEY `nome_squadra` (`nome_squadra`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `squadra`
--

LOCK TABLES `squadra` WRITE;
/*!40000 ALTER TABLE `squadra` DISABLE KEYS */;
INSERT INTO `squadra` VALUES (6,'Team Australia'),(2,'Team Brazil'),(12,'Team Brazil 2'),(17,'Team Brazil 3'),(22,'Team Brazil 4'),(27,'Team Brazil 5'),(4,'Team China'),(14,'Team China 2'),(19,'Team China 3'),(24,'Team China 4'),(29,'Team China 5'),(5,'Team Greece'),(15,'Team Greece 2'),(20,'Team Greece 3'),(25,'Team Greece 4'),(30,'Team Greece 5'),(10,'Team Italy'),(1,'Team Japan'),(11,'Team Japan 2'),(16,'Team Japan 3'),(21,'Team Japan 4'),(26,'Team Japan 5'),(9,'Team Korea'),(8,'Team Spain'),(3,'Team UK'),(13,'Team UK 2'),(18,'Team UK 3'),(23,'Team UK 4'),(28,'Team UK 5'),(7,'Team USA');
/*!40000 ALTER TABLE `squadra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25 12:41:14
