CREATE DATABASE  IF NOT EXISTS `estacionamento` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `estacionamento`;
-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: estacionamento
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estacionamento`
--

DROP TABLE IF EXISTS `estacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estacionamento` (
  `placa` varchar(50) NOT NULL,
  `entrada` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `qt_uso` varchar(50) DEFAULT NULL,
  `qt_livre` varchar(50) DEFAULT NULL,
  `qt_total` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacionamento`
--

LOCK TABLES `estacionamento` WRITE;
/*!40000 ALTER TABLE `estacionamento` DISABLE KEYS */;
INSERT INTO `estacionamento` VALUES ('7','2020-05-12T20:26:53.543','7',NULL,NULL,'1',NULL,NULL,'SETOR_B'),('cpf','2020-05-12T20:24:47.693','3',NULL,NULL,'1',NULL,NULL,'SETOR_A'),('ra7','2020-05-13T17:32:26.327','7qwr',NULL,NULL,'1',NULL,NULL,NULL),('wqe7','2020-05-13T17:31:43.923','7rwq',NULL,NULL,'1',NULL,NULL,'SETOR_A'),('wqeqw7','2020-05-13T17:30:35.966','3qww',NULL,NULL,'1',NULL,NULL,'SETOR_A');
/*!40000 ALTER TABLE `estacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `cpf` varchar(15) NOT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `data_hora_inicio` varchar(30) DEFAULT NULL,
  `data_hora_fim` varchar(30) DEFAULT NULL,
  `nome_evento` varchar(50) DEFAULT NULL,
  `qt_vagas` varchar(10) DEFAULT NULL,
  `setor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES ('','','','','','',''),('uui','jpj','rdrt','tfuqqhf','dr','dch','dytfgv');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocorrencia` (
  `placa` varchar(10) NOT NULL,
  `data_hora` varchar(30) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocorrencia`
--

LOCK TABLES `ocorrencia` WRITE;
/*!40000 ALTER TABLE `ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `nome` varchar(30) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `senha` varchar(64) DEFAULT NULL,
  `cpf` varchar(15) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('NOME','ADMIN','SENHA','1'),('NOME','ALUNO','SENHA','2'),('NOME','AUX','SENHA','3'),('NOME','RH','SENHA','5'),('pedro','AUX','7','7'),('pedro','ADMIN','senha','cpf');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `nome` varchar(64) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `cpf_dono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES ('carai','logo','porra','vai'),('llll','hondaadas','asdasfgd','00000212'),('mnp','ho','leta','1'),('mnp-2222','HONDA','MOTO','03915909106'),('mw2','nwjq','otocicleta','00001'),('xxhasd','bicicleta','bike','3'),('xxx-xxx','suzuk','ninja2.0','3'),('xxxkkk','yamagga','broz','3213');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 16:00:29
