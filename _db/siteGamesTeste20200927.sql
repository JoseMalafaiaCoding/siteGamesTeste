CREATE DATABASE  IF NOT EXISTS `sitegamesteste` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sitegamesteste`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sitegamesteste
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `dlcjogos`
--

DROP TABLE IF EXISTS `dlcjogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlcjogos` (
  `idDlc` int(11) NOT NULL AUTO_INCREMENT,
  `nomeDlc` varchar(60) DEFAULT NULL,
  `lacamentoDlc` date DEFAULT NULL,
  `codigoJogo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDlc`),
  UNIQUE KEY `nomeDlc` (`nomeDlc`),
  KEY `codigoJogo` (`codigoJogo`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlcjogos`
--

LOCK TABLES `dlcjogos` WRITE;
/*!40000 ALTER TABLE `dlcjogos` DISABLE KEYS */;
INSERT INTO `dlcjogos` VALUES (1,'Royal','2019-10-31',1),(2,'The Old Hunters','2015-11-24',16),(3,'Stormy Ascent','2017-07-20',5),(4,'Future Tense','2018-06-29',5),(5,'Neon Circus','2018-11-08',6),(6,'Trials of Fear','2020-03-05',26),(7,'Artorias of the Abyss','2012-10-23',13),(8,'Crown of the Sunken King','2014-07-22',14),(9,'Crown of the Old Iron King','2014-08-26',14),(10,'Crown of the Ivory King','2014-10-01',14),(11,'The Ringed City','2017-03-28',15),(12,'Ashes of Ariandel','2016-10-24',15),(13,'The Dark Below','2014-12-09',24),(14,'House of Wolves','2015-05-19',24),(15,'The Taken King','2015-09-15',24),(16,'Rise of Iron','2016-09-20',24),(17,'Curse of Osiris','2017-12-05',25),(18,'Warmind','2018-05-08',25),(19,'Forsaken','2018-09-04',25),(20,'Hidden Dreams','2017-08-03',11),(21,'The Grimm Troupe','2017-10-26',11),(22,'Lifeblood','2018-04-20',11),(23,'Godmaster','2018-08-23',11),(24,'Ground Zeroes','2014-03-18',28),(25,'Iceborne','2019-09-06',4),(26,'Version 1.1.0','2019-10-01',3),(27,'Version 2.0.0','2019-12-05',3),(28,'Version 3.0.0','2020-04-22',3),(29,'Luigi\'s Ballon World','2018-02-01',9),(30,'Fighter Pass','2019-04-17',10),(31,'Afterbirth','2015-10-30',8),(32,'Afterbirth +','2017-01-03',8),(33,'The Master Trials','2017-06-30',17),(34,'The Champion\'s Ballad','2017-12-07',17),(35,'Bad Blood','2014-09-23',27);
/*!40000 ALTER TABLE `dlcjogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogos` (
  `idJogo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeJogo` varchar(60) DEFAULT NULL,
  `genero` varchar(60) DEFAULT NULL,
  `lancamento` date DEFAULT NULL,
  `publisher` varchar(60) DEFAULT NULL,
  `desenvolvedora` varchar(60) DEFAULT NULL,
  `descricao` text,
  `tipo` enum('Triple A','Indie') DEFAULT NULL,
  PRIMARY KEY (`idJogo`),
  UNIQUE KEY `nomeJogo` (`nomeJogo`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,'Persona 5','JRPG','2016-09-15','ATLUS, SEGA','ATLUS','Persona 5 é um JRPG baseado em turnos da aclamada série desenvolvida pela ATLUS, na aventura o jogador assume o papel de um jovem estudante que foi injustamente posto em uma probação por um crime que não cometeu e ao longo dessa jornada épica coisas, estranhas ocorrem em seus sonhos e na realidade e ele precisa se aliar a várias pessoas pessoas na cidade de Tokyo para enfrentar seus desafios.','Triple A'),(2,'Spelunky 2','Rogue-Like','2020-09-15','Mossmouth, LLC','BlitWorks','Spelunky 2 é um jogo Rogue-like de plataforma extremamente difícil e que requer muita precisão.','Indie'),(3,'Super Mario Maker 2','Plataforma','2019-06-28','Nintendo','Nintendo','Descricao do super mario maker 2','Triple A'),(4,'Monster Hunter World','Action RPG','2018-01-26','Capcom','Capcom','Descricao do Monster Hunter World','Triple A'),(5,'Crash Bandicoot: N\'Sane Trilogy','Plataforma','2017-06-30','Actvision','Vicariou Vision','Descricao do Crash Bandicoot Nsane Trilogy','Triple A'),(6,'Crash Team Racing: Nitro Fueled','Corrida/Arcade','2019-06-20','Activision','Beenox','Descricao do Crash Team Racing Nitro Fueled','Triple A'),(7,'Crash Bandicoot 4: It\'s About Time','Plataforma','2020-10-02','Activision','Toys For Bob','Descricao do Crash 4','Triple A'),(8,'The Binding of Isaac: Rebirth','Rogue-like','2014-11-04','Nicalis','Edmund McMillen','Descricao do Isaac Rebirth','Indie'),(9,'Super Mario Odyssey','Plataforma 3D','2017-10-27','Nintendo','Nintendo','Descricao do Mario Odyssey','Triple A'),(10,'Super Smash Bros Ultimate','Luta','2018-12-07','Nintendo','Nintendo/Hal Laboratory/Bandai Namco','Descricao do Smash Ultimate','Triple A'),(11,'Hollow Knight','MetroidVania','2017-02-24','Team Cherry','Team Cherry','Descricao do Hollow Knight','Indie'),(12,'God of War','Hack\'N Slash/Action RPG','2018-04-20','Sony','Santa Monica','Descricao do God of War','Triple A'),(13,'Dark Souls','Action RPG','2011-09-22','From Software/Bandai Namco','From Software','Descricao do Dark Souls','Triple A'),(14,'Dark Souls 2','Action RPG','2014-03-11','From Software/Bandai Namco','From Software','Descricao do Dark Souls 2','Triple A'),(15,'Dark Souls 3','Action RPG','2016-03-24','From Software/Bandai Namco','From Software','Descricao do Dark Souls 3','Triple A'),(16,'Bloodborne','Action RPG','2015-03-24','From Software','From Software','Descricao Bloodborne','Triple A'),(17,'The Legend of Zelda: Breath of the Wild','RPG de Mundo Aberto','2017-03-03','Nintendo','Nintendo','Descricao Breath of the Wild','Triple A'),(18,'Animal Crossing: New Horizons','Simulador de Vida','2020-03-20','Nintendo','Nintendo','Descricao do New Horizons','Triple A'),(19,'Ori and the Blind Forest','MetroidVania','2015-03-11','Xbox Game Studios','Moon Studios','Descricao do ori 1','Indie'),(20,'Ori and the Will of the Wisps','MetroidVania','2020-03-11','Xbox Game Studios','Moon Studios','Descricao do ori 2','Indie'),(21,'Tales of Vesperia: Definitive Edition','Action RPG','2019-11-01','Bandai Namco','Tales of Studios','Descricao Vesperia','Triple A'),(22,'Persona 4: Golden','JRPG','2020-06-13','ATLUS/SEGA','ATLUS','Descricao Persona 4','Triple A'),(23,'Persona 3: Portable','JRPG','2010-07-06','ATLUS/Ghostlight','ATLUS','Descricao Persona 3','Triple A'),(24,'Destiny','FPS/RPG','2014-09-09','Bungie','Bungie','Descricao Destiny','Triple A'),(25,'Destiny 2','FPS/RPG','2017-09-06','Bungie','Bungie','Descricao Destiny 2','Triple A'),(26,'Dandara','MetroidVania','2018-02-06','Raw Fury','Long Hat House','Descricao Dandara','Indie'),(27,'Watch Dogs','Stealth/Mundo Aberto','2014-05-27','Ubisoft','Ubisoft','Descricao Watch Dogs','Triple A'),(28,'Metal Gear V: The Phantom Pain','Stealth/Mundo Aberto','2015-09-01','Konami','Kojima Productions','Descricao metal gear 5','Triple A'),(29,'Super Mario Galaxy','Plataforma 3D','2007-11-01','Nintendo','Nintendo','Descricao Galaxy 1','Triple A'),(30,'Super Mario Galaxy 2','Plataforma 3D','2010-05-23','Nintendo','Nintendo','Descricao Galaxy 2','Triple A');
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-27 15:43:27
