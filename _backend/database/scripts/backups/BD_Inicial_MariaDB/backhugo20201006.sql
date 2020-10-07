-- MySQL dump 10.16  Distrib 10.1.46-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: assetv2
-- ------------------------------------------------------
-- Server version	10.1.46-MariaDB

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
-- Temporary table structure for view `abmdeposito`
--

DROP TABLE IF EXISTS `abmdeposito`;
/*!50001 DROP VIEW IF EXISTS `abmdeposito`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `abmdeposito` (
  `depositoId` tinyint NOT NULL,
  `depositodescrip` tinyint NOT NULL,
  `direccion` tinyint NOT NULL,
  `GPS` tinyint NOT NULL,
  `id_localidad` tinyint NOT NULL,
  `id_provincial` tinyint NOT NULL,
  `id_pais` tinyint NOT NULL,
  `id_empresa` tinyint NOT NULL,
  `estado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `abmproveedores`
--

DROP TABLE IF EXISTS `abmproveedores`;
/*!50001 DROP VIEW IF EXISTS `abmproveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `abmproveedores` (
  `provid` tinyint NOT NULL,
  `provnombre` tinyint NOT NULL,
  `provcuit` tinyint NOT NULL,
  `provdomicilio` tinyint NOT NULL,
  `provtelefono` tinyint NOT NULL,
  `provmail` tinyint NOT NULL,
  `id_empresa` tinyint NOT NULL,
  `fec_alta` tinyint NOT NULL,
  `estado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `admcustomers`
--

DROP TABLE IF EXISTS `admcustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admcustomers` (
  `cliId` int(11) NOT NULL AUTO_INCREMENT,
  `cliName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliLastName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliDni` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliDateOfBirth` date DEFAULT NULL,
  `cliNroCustomer` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliAddress` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliPhone` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliMovil` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliEmail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliImagePath` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zonaId` int(11) DEFAULT NULL,
  `cliDay` int(11) DEFAULT '30',
  `cliColor` varchar(7) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `cliRazonSocial` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `plant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cliId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admcustomers`
--

LOCK TABLES `admcustomers` WRITE;
/*!40000 ALTER TABLE `admcustomers` DISABLE KEYS */;
INSERT INTO `admcustomers` VALUES (1,'Cliente 1','aaa','1111',NULL,NULL,'aaaaa','222222',NULL,'qqqqq',NULL,NULL,30,NULL,'AC',6,'Cliente 1',NULL),(2,'aaa',NULL,'1111',NULL,NULL,'aaaa','1111',NULL,'sssss',NULL,NULL,30,NULL,'AN',6,'aaaaa',NULL),(3,'Eliana ',NULL,'21111233',NULL,NULL,'san lorenzo','12345',NULL,'elianabernaldez@gmail.com',NULL,NULL,30,NULL,'AN',6,'eliber',NULL),(4,'Cliente 3',NULL,'33333333',NULL,NULL,'Av Siempre Viva 555 ','22222222',NULL,'xxxxx@yyy.com',NULL,NULL,30,NULL,'AC',6,'Cliente 3 SA',NULL),(5,'Enrique','Urriche','xxxxx',NULL,NULL,'xxxx','xxxx',NULL,'xxxx',NULL,NULL,30,NULL,'AC',6,'xxxx',NULL),(6,'aaaaaa',NULL,'11111',NULL,NULL,'aaaaa','111111',NULL,'aaaaa',NULL,NULL,30,NULL,'AN',6,'111111',NULL),(7,'Ministerio de Produccion ',NULL,'n/a',NULL,NULL,'n/a','n/a',NULL,'n/a',NULL,NULL,30,NULL,'AC',6,'Ministerio de Produccion ',NULL),(8,'Cliente 2',NULL,'n/a',NULL,NULL,'n/a','n/a',NULL,'n/a',NULL,NULL,30,NULL,'AC',6,'n/a',NULL),(9,'Cliente 2',NULL,'n/a',NULL,NULL,'n/a','n/a',NULL,'n/a',NULL,NULL,30,NULL,'AC',6,'n/a',NULL),(10,'Eliana Bernaldez',NULL,'n/a',NULL,NULL,'San Lorenzo Este 1450','n/a',NULL,'elianabernaldez@gmail.com',NULL,NULL,30,NULL,'AC',6,'eliana bernaldez',NULL);
/*!40000 ALTER TABLE `admcustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admstock`
--

DROP TABLE IF EXISTS `admstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admstock` (
  `stkId` int(11) NOT NULL AUTO_INCREMENT,
  `prodId` int(11) NOT NULL,
  `stkCant` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `stkDate` datetime NOT NULL,
  `stkMotive` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`stkId`),
  KEY `prodId` (`prodId`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admstock`
--

LOCK TABLES `admstock` WRITE;
/*!40000 ALTER TABLE `admstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `admstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admvisits`
--

DROP TABLE IF EXISTS `admvisits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admvisits` (
  `vstId` int(11) NOT NULL AUTO_INCREMENT,
  `vstDate` datetime NOT NULL,
  `cliId` int(11) NOT NULL,
  `vstNote` text COLLATE utf8_spanish_ci NOT NULL,
  `vstStatus` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`vstId`),
  KEY `cliId` (`cliId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admvisits`
--

LOCK TABLES `admvisits` WRITE;
/*!40000 ALTER TABLE `admvisits` DISABLE KEYS */;
/*!40000 ALTER TABLE `admvisits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ajustes`
--

DROP TABLE IF EXISTS `ajustes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajustes` (
  `ajus_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_ajuste` varchar(30) DEFAULT NULL,
  `justificacion` varchar(30) DEFAULT NULL,
  `usuario_app` varchar(30) DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL DEFAULT 'current_user()',
  `fec_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ajus_id`),
  UNIQUE KEY `ajus_id` (`ajus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajustes`
--

LOCK TABLES `ajustes` WRITE;
/*!40000 ALTER TABLE `ajustes` DISABLE KEYS */;
INSERT INTO `ajustes` VALUES (18,'Robo','Faltan 115 articulos','suptest1',6,'current_user()','2020-01-21 13:58:34'),(19,'Robo','','suptest1',6,'current_user()','2020-01-21 14:04:14');
/*!40000 ALTER TABLE `ajustes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_articulos`
--

DROP TABLE IF EXISTS `alm_articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_articulos` (
  `arti_id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `costo` decimal(14,2) NOT NULL,
  `es_caja` tinyint(4) NOT NULL,
  `cantidad_caja` int(11) DEFAULT NULL,
  `punto_pedido` int(11) DEFAULT NULL,
  `estado_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT '1',
  `unidad_id` int(11) NOT NULL,
  `empr_id` int(11) NOT NULL,
  `es_loteado` tinyint(4) NOT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `unidad_medida` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`arti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_articulos`
--

LOCK TABLES `alm_articulos` WRITE;
/*!40000 ALTER TABLE `alm_articulos` DISABLE KEYS */;
INSERT INTO `alm_articulos` VALUES (2,'51574','FILTRO DE COMBUSTIBLE P/TAMROCK N¬∞88',0.00,0,0,2,'1',1,6,0,'2019-06-18 14:35:37',0,'UN'),(10,'123456','BUJE DE ROTACION P/TAMROCK 680',0.00,0,0,5,'1',1,6,0,'2019-06-18 14:35:37',0,'UN'),(11,'50686','BULON NRO. 86321729 P/TAMROCK HL 500',0.00,0,0,0,'1',1,6,0,'2019-06-18 14:35:37',0,'UN'),(12,'51258','DIAFRAGMA N:04114808 P/TAMROCK',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(13,'51265','DIAFRAGMA P/COMP. TAMROCK HL 680-2 A',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(14,'51315','EJE P/ TAMROCK N‚Ä† 15178158',0.00,0,0,2,'1',0,6,0,'2019-06-18 14:35:37',0,'UN'),(15,'51317','EJE P/TAMROCK 500 ART. 23313378',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(16,'51471','FILTRO  COMBUSTIBLE P 557440 TAMROCK',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(17,'51571','FILTRO TAMROCK ACEITE CAT 1R-0739',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(18,'51545','FILTRO TAMROCK AIRE ‚Ä†88546679',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(19,'51546','FILTRO TAMROCK AIRE/CABINA PRIMARIO',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(20,'51548','FILTRO TAMROCK AIRE/COMPRESOR 885467',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(21,'51550','FILTRO TAMROCK CIRC/HID.RETORNO 8672',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(22,'51551','FILTRO TAMROCK CIRC/HID.SANDVICK 815',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(23,'51552','FILTRO TAMROCK COMB,N‚Ä† 1R-0751',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(24,'51553','FILTRO TAMROCK COMB,TRAMPA/AGUA 1466',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(25,'53605','TRAMPA DE AGUA PARA TAMROCK',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(26,'53701','TUERCA NRO.81125969 P/TAMROCK',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(27,'53947','KIT DE SELLOS NRO.879484449 TAMROCK',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(28,'53966','RETEN NRO 15074808 TAMROCK R -500',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(29,'53969','SELLOS NRO 81820039 TAMROCK R-500',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(30,'54022','BUJE P/TAMROCK N 15021838',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(31,'54469','VALVULA  ART 807 590 69 P/TAMROCK HL',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(32,'58076','FILTRO TAMROCK 500 AIRE COMPRESOR PR',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(33,'58077','FILTRO TAMROCK 500 AIRE SECUNDARIO M',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(34,'58078','FILTRO TAMROCK 500 AIRE  PRIMARIO MO',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(35,'58079','FILTRO TAMROCK 500 AIRE COMPRESOR SE',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(36,'58080','FILTRO TAMROCK 500 GASOIL ART8823923',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(37,'58081','FILTRO TAMROCK 500 GASOIL SEPARADOR',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(38,'58082','FILTRO TAMROCK 500 ACEITE MOTOR ART',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(39,'50190','ARANDELA DE BRONCE 7K-1840 P/CAT 966',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(40,'50236','ARANDELAS N  7K-1839 P/CATERPILLAR 9',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(41,'50465','BULON ART. NRO. 6729510 P/ BOB CATERPILLAR',0.00,0,0,5,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(42,'50712','BULON   P/ CAT- 966 DIENTE DE CARGAD',0.00,1,22,5,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(43,'50714','BULON  8T -6466 P/AIRE ACONDI CAT -',0.00,0,0,5,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(44,'50966','COMPRESOR DE AIRE N‚Ä† 8N 6105 P / CAT',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(45,'51084','CORREA DE ALTERNAD. P/BOBCAT ART.710',0.00,1,5,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(46,'51188','CORTA CORRIENTE DE 24 VOLT. P/CAT 98',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(47,'51208','CUBIERTA 10 X 16.5 SOLIDEAL P/BOBCAT',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(48,'51259','DIAFRAGMA N‚Ä† 5V 6125 P/ CAT 980',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(49,'51455','FILTRO BOBCAT ACEIT,HID.N‚Ä†6661248',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(50,'51456','FILTRO BOBCAT ACEIT,MOTOR N‚Ä†03974896',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(51,'51457','FILTRO BOBCAT AIRE PRIM.N‚Ä†06598492',0.00,1,8,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(52,'51458','FILTRO BOBCAT AIRE SEC.N‚Ä†06598362',0.00,1,9,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(53,'51459','FILTRO BOBCAT COMB.N‚Ä†06667352',0.00,1,7,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(54,'51460','FILTRO CAT-966 ACEIT/CONV N‚Ä†9740',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(55,'51461','FILTRO CAT-966 ACEIT/HID,N‚Ä†156-0741-',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(56,'51462','FILTRO CAT-966 ACEITE N‚Ä†1R-0739',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(57,'51463','FILTRO CAT-966 AIRE PRIMARIO 2453818',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(58,'51464','FILTRO CAT-966 AIRE SECUNDARIO 24538',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(59,'51465','FILTRO CAT-966 COMB,N‚Ä†1P-2299-BOSCH',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(60,'51466','FILTRO CAT-980 ACEITE MOTOR',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(61,'51467','FILTRO CAT-980 ACEIT/HIDRAULICO',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(62,'51468','FILTRO CAT-980 TRASMISION',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(63,'51469','FILTRO CAT-980 FILTRO SEPARADOR DE A',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(64,'51470','FILTRO CAT-980 CABINA',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(66,'51685','GUIA N‚Ä† 2 L-3650 P/CAT 966',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(67,'51825','JUNTA N‚Ä† 8S-1605 P/CAT.966',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(68,'51826','JUNTA N‚Ä† 9Y-1979 P/CAT.966',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(69,'51829','JUNTA NRO. 6684788 P/BOB CAT',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(70,'52317','PERNO DE BALDE  NRO. 8K- 5334 P/CAT.',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(71,'53371','SELLO  N: 2H-6368 P/CAT. 966',0.00,1,6,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(72,'53394','SELLO N‚Ä† 6D 692 P/ CAT -980',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(73,'53703','TUERCA P/BOBCAT S150 N‚Ç¨ 6674202',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(74,'53706','TUERCA PARA BULON DE RUEDA, P/ CAT.',0.00,1,20,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(75,'53918','COJINETE  5M 578 CAT-966',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(76,'54023','BULON 1604 P/CAT 980',0.00,1,8,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(77,'54042','CABLE DE ACELERADOR P/CAT 980 ART 3V',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(78,'54210','JUNTA 5S-4629 P/CAT-966',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(79,'57873','FILTRO DE COMBUSTIBLE CAT 966H 1R-07',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(80,'57874','FILTRO  DE  ACEITE MOTOR CAT 966H 1R',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(81,'57876','FILTRO  DE  ACEITE  HIDRAULICO  CAT',0.00,1,7,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(82,'54012','BASE  PORTA FILTRO  ART 6N 1044 CAT',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(83,'54833','CAMISA CILINDRO DE MOTOR CAT-3306',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(84,'54834','JUEGO DE AROS DE MOTOR CAT-3306',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(85,'57913','RADIADOR AGUA P/CAT 966H',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(86,'58036','TERMOSTATO  NRO 281- 8744 P/CAT 924',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(87,'58038','TERMOSTATO  NRO 248 -5513 P/CAT 966',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(88,'58275','FILTRO CAT-980 MOTOR 1R-1808',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(89,'58276','FILTRO CAT-980 GASOIL 1R0749',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(90,'58277','FILTRO CAT-980 GASOIL SEP 326-1644',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(91,'58278','FILTRO CAT-980 AIRE PRIMARIO 151-773',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(92,'58279','FILTRO CAT-980 AIRE SECUNDARIO 18902',0.00,1,7,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(93,'50182','ARANDELA ART, 01643-32260 P/ KOMATSU',0.00,0,0,88,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(94,'50400','BRACKET P/KOMATSU P/KOMATSU 470',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(95,'50436','BUJE N‚Ä† 17177-04530 P/KOMATSU WA 420',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(96,'50461','BUJIA NRO. 600-815-2770 P/KOMATSU 42',0.00,0,0,4,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(97,'50684','BULON NRO. 16202091-12050 P/ KOMATSU',0.00,1,22,5,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(98,'50685','BULON NRO. 419-70-13150 P/KOMATSU 25',0.00,1,12,5,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(99,'50689','BULON P/KOMATSU 470 N 2 ART. 09208-1',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(100,'50715','BULON  DE CARDAN P/ KOMATSU 420-3 N‚Ä†',0.00,1,9,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(101,'50716','BULON  P/ KOMATSU N‚Ä† 02090-11490',0.00,1,41,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(102,'50717','BULON   DE CARDAN P/ KOMATSU 420-3 N',0.00,1,23,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(103,'51179','CORREA NRO. 6732-81-6170 , P/KOMATSU',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(104,'51196','CRUCETA NRO. 418-20-34620 P/KOMATSU',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(105,'51197','CRUCETA NRO. 421-20-12620 P/KOMATSU',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(121,'51198','ESPEJO NRO. 421-54-25620 P/KOMATSU 4',0.00,0,NULL,NULL,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(130,'51195','CRUCETA NRO 418-20-32620 , P/KOMATSU',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(133,'51808','JUNTA ANULAR P/KOMATSU 470  ART.600-',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(134,'52304','PASADOR P/KOMATSU 470 ART, 092440251',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(135,'52408','PLATOS NRO. 421-70-22140  P/ KOMATSU',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',1,'UN'),(136,'53377','SELLO 421- 33 - 11480 P/ KOMATSU 420',0.00,1,23,0,'1',21,6,0,'2019-06-18 14:35:37',0,'UN'),(137,'53637','TUERCA 09218 - 12219 P/ KOMATSU WA 4',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(138,'53693','TUERCA N‚Ä† 02290 - 11422 P/KOMATSU WA',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(139,'53695','TUERCA NRO. 02290-11625, P/KOMATSU 4',0.00,1,9,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(140,'53696','TUERCA NRO. 091218-12523 P/KOMATSU 2',0.00,1,16,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(141,'53698','TUERCA NRO. 16202290-12031 P/KOMATSU',0.00,1,21,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(142,'53700','TUERCA NRO.02290-11422 P/KOMATSU',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(143,'53721','TUERCAS N ¬∫ 09218-12219 P/ KOMATSU',0.00,1,6,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(144,'53820','VALVULA P/ FILTRO DE AIRE P/KOMATSU',0.00,1,2,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(145,'53991','ACOPLE NRO  09281-00041 P/KOMATSU 25',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(146,'54019','BUJE 421-70-11272 P/KOMATSU 470',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(147,'54045','CABLE  NRO 424-9916110  P/KOMATSU',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(148,'54150','FILT.KOMATSU 470 /2 COMBUSTIBLE 600-',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(149,'54411','SEGURO NRO. 09283-00000 P/KOMATSU 25',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(150,'54432','TAPA  NRO 09282-00017 P/KOMATSU 250',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(151,'54504','TUERCA DE ACERO / KOMATSU 420',0.00,1,8,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(152,'54505','BULON NRO 16201010-62075 P/KOMATSU',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(153,'54929','JUNTA ANULAR PARA KOMATSU 470 ART: 1',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(154,'55204','TUERCA P/ EJE DELANTERO P/ KOMATSU 4',0.00,1,9,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(155,'55242','ALTERNADOR DE 24V. P/KOMATSU',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(156,'51439','FAROS  TOYOTA 3.0',0.00,1,8,0,'1',21,6,0,'2019-06-18 14:35:37',0,'UN'),(157,'51486','FILTRO COMBUSTIBLE  CLARK TOYOTA 233',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(158,'51488','FILTRO CLARK TOYOTA MOTOR 90915-2000',0.00,1,3,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(159,'51490','FILTRO CLARK TOYOTA CONVERTIDOR 3267',0.00,1,1,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(160,'51516','FILTRO CLARK TOYOTA HIDRAULICO 67502',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(161,'51517','FILTRO CLARK TOYOTA AIRE SECUNDARIO',0.00,1,4,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(162,'51518','FILTRO CLARK TOYOTA AIRE PRIMARIO P8',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(163,'50386','BOMBIN DE GASOIL P/BOBCAT ART.665773',0.00,1,100,6,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(165,'56174','LLANTA NRO. NRPB03535239 P/ BOBCAT S',0.00,0,0,0,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(249,'57653456','bulon de escalera ',0.00,0,0,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(250,'1R-1825 ','filtro ',0.00,1,2,4,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(251,'sdsad','sdsd',0.00,0,0,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(252,'07','Mamelucos descartables ',0.00,1,23,10,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(254,'TVK ','Guantes ',0.00,1,22,12,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(256,'TVK 01','Mameluco Descartable Nobus ',0.00,1,25,10,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(257,'TVK 02 ','3M',0.00,1,3,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(258,'TVK 03','Dupont ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(265,'1626105281// 1604707982','Valvulas',0.00,1,2,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(266,'3128082907','Mordazas',0.00,1,2,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(267,'3222327788','Sensor de Nivel',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(271,'265326447','Sensor de proximidad ',0.00,1,1,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(272,'165788','Sensor IFM ',0.00,1,2,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(273,'333','dsdasdad',0.00,0,0,4,'0',1,6,0,'2019-06-18 14:35:37',0,'UN'),(274,'P164699','Filtro Hidraulico 52263183',0.00,1,3,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(275,'57516098','filtro cabina SC90271',0.00,1,6,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(276,'P182042','Filtro aire Motor 52252061',0.00,1,8,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(280,'P128408','filtro aire motor 52146966',0.00,1,8,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(282,'P551808','Filtro aceite motor  1R1808',0.00,1,8,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(285,'222','Filtro aire',0.00,0,0,0,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(286,'P551311','Filtro combustible 1R0749',0.00,1,8,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(287,'P564425','Filtro respiradero 50903236',0.00,1,6,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(288,'P165672','Filtro Hidr√°ulico 36860336',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(289,'P181054','Filtro aire cabina superior 59860841',0.00,1,6,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(290,'P520620','Filtro aire 56958945',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(291,'P552055','Filtro Refrigerante  56985971',0.00,1,6,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(292,'SC 90270','Filtro cabina 57516106',0.00,1,6,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(293,'P550900','Filtro trampa 3261643',0.00,1,6,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(294,'57569758','Filtro separador',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(295,'P566278','Filtro hidraulico 57336406',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(296,'57451890','Compresor Aire Acondicionado',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(297,'88257429','Compresor Aire Acondicionado. DP 1500',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(298,'57364366','Filtro secador A/A',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(299,'3128 0829 07','Mordazas mesa de quiebre ',0.00,1,4,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(300,'3222 3113 62','Espaciador ',0.00,1,2,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(301,' 0211 1963 16','Bulon  M12 ',0.00,1,8,4,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(302,'0211 1960 85','Bulon M12 ',0.00,1,4,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(303,'1626 1052 81','Valvulas ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(304,'3222 3277 88','Sensor de nivel ',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(305,'3222 3208 86 ','Sensor de proximidad ',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(306,'2653 1264 47','Sensor de proximidad ',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(307,'3222 1488 00','Sensor de proximidad ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(309,'Tyvek ','Mameluco descartables ',0.00,1,21,15,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(310,'Tyvek ll ','Mameluco para lluvia ',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(311,'Gafas ','Gafas oscuras ',0.00,1,6,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(312,'Gafas Claras ','Gafas claras ',0.00,1,23,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(313,'Gafas Amarillas','Gafas amarillas',0.00,1,1,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(314,'Protector auditivo ','Endeurales ',0.00,1,10,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(315,'Tijera','Tijera de bloqueo ',0.00,1,5,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(316,'Filtros P100','Filtro para semimascara ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(317,'Semi-mascara ','Semi mascara ',0.00,1,5,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(321,'Protector auditivo C','Tipo copa ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(322,'Arn√©s C ','Arn√©s para casco ',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(323,'Antiparras','para viento ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(324,'Guantes ','Guantes multiflex ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(326,'Guantes 1 ','Nitrillo ',0.00,1,10,8,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(327,'Guantes de Goma ','Goma ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(328,'Guantes C. abrigo ','Guantes de cuero con abrigo ',0.00,1,21,10,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(329,'Guantes  S. Abrigo ','Guantes cuero sin abrigo ',0.00,1,6,10,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(330,'Casco ','de seguridad ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(332,'Casco de seguridad ','casco completo ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(333,'13AV1280','Correa 64 ',0.00,1,3,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(334,'13AV1290','Correa 64',0.00,1,3,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(335,'13AV1305','Correa 64',0.00,1,3,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(336,'C13AV1325 ','Correa TC',0.00,1,3,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(337,'C13AC1450','Correa TC ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(338,'13AV1445','Correa 64 ',0.00,1,1,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(339,'Multis EP2','Grasa ',0.00,1,4,2,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(340,'Lampara 24V','A-2008 24V/5w',0.00,1,10,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(341,'T-1055','Terminal para bater√≠a ',0.00,1,20,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(342,'23-35R','Abrazadera ',0.00,1,10,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(343,'30-45R','Abrazadera ',0.00,1,10,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(344,'50-70R','Abrazadera ',0.00,1,10,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(345,'70-90R','Abrazadera ',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(346,'90-110R','Abrazadera ',0.00,1,6,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(347,'AEA-24','Escobilla',0.00,1,10,4,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(348,'AEA-22','Escobilla',0.00,1,10,5,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(349,'LM-3500','Crema limpiadora de manos ',0.00,1,2,1,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(350,'CRF 3','Fusible 3A ',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(351,'GRF 5 ','Fusible 5A',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(352,'GRF3 ','Fusible 3A',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(353,'GRF15','Fusible 15A',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(354,'GRF10 ','Fusible 10A',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(355,'GRF25','Fusible 25A',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(356,'GRF20','Fusible 20A',0.00,0,0,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(357,'GRF30','Fusible 30A',0.00,1,10,3,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(358,'Tira LED','24V Blanco ',0.00,1,300,20,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(359,'Ficha para LED','Ficha para conexi√≥n de tira LED ',0.00,1,15,4,'0',1,7,0,'2019-06-18 14:35:37',0,'UN'),(360,'000001','aceite motor ',0.00,1,50,10,'0',1,8,0,'2019-06-18 14:35:37',0,'UN'),(361,'EB-GZ','Articulo de Prueba',0.00,1,5,5,'1',0,1,1,'2019-06-20 14:54:54',0,'UN'),(362,'FER-18','PERFECTO',0.00,1,3,6,'1',0,6,1,'2019-06-21 12:26:46',0,'UN'),(363,'FDF100-0001','Rueda trasera',0.00,0,0,4,'1',0,6,0,'2019-06-21 20:12:21',0,'UN'),(364,'Eli-Ber','articulo nuevo',0.00,1,6,12,'1',0,6,1,'2019-06-23 16:22:59',0,'UN'),(365,'BER-090','ARTICULO-002',0.00,0,0,20,'1',0,6,0,'2019-06-26 14:31:50',1,'UN'),(366,'00001','filtro x caja de 2un',0.00,1,2,4,'1',0,6,0,'2019-07-18 15:53:53',0,'UN'),(367,'0003-RF','Articulo 003',0.00,0,0,0,'1',22,6,0,'2019-11-20 15:57:28',0,'UN'),(368,'0003-4','articulo de prueba',0.00,1,6,0,'1',22,6,0,'2019-11-20 15:58:15',0,'UN'),(369,'0212','Ajo pelado',0.00,1,6,12,'1',22,6,1,'2019-11-20 15:59:21',0,'UN'),(370,'fer-art','Articulo fer',0.00,0,0,0,'1',22,6,0,'2019-11-20 16:01:43',0,'UN'),(371,'aaaa-232','Articulo 2 prueba',0.00,0,0,0,'1',22,6,0,'2019-11-20 16:59:14',0,'UN'),(372,'Fernando','Articulo Fernando',0.00,0,0,100,'1',21,6,1,'2019-11-20 17:01:27',0,'UN'),(373,'001','Articulo 1 por caja 6 unidades',0.00,0,0,0,'1',-1,6,0,'2020-04-09 02:02:39',0,''),(374,'asd','asd',0.00,1,1,0,'1',22,6,0,'2020-04-13 17:42:49',1,''),(375,'asdasd','asdasd',0.00,0,0,0,'1',21,6,0,'2020-04-13 17:43:31',1,''),(376,'1213141','Barbijo 3n',0.00,1,30,0,'1',22,6,0,'2020-04-13 23:08:45',0,''),(377,'SE0004','Semillas de Zanahorias / VARIEDAD: Esperanza / ORI',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:08:44',0,''),(378,'SE0003','Semillas de Tomate / VARIEDAD: HM 7883 HM Clause /',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:07:15',0,''),(379,'SE0001','Dientes de Ajo (semillas) / VARIEDAD: Blanco Valen',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:02:33',0,''),(380,'SE0005','Semillas de Zanahorias / VARIEDAD: Match / ORIGEN:',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:12:05',0,''),(381,'SE0006','Semillas de Zanahoria / VARIEDAD: 5300 / ORIGEN: S',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:16:06',0,''),(382,'SE0008','Semilla de Zapallo / VARIEDAD: Sintetica 14 / ORIG',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:18:08',0,''),(383,'SE0009','Semillas de Cebolla / VARIEDAD: Cebolla morada. / ',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:20:52',0,''),(384,'SE0007','Semilla de Zapallo. / VARIEDAD: Uchiki Kuri, Pluto',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:23:00',0,''),(385,'SE0010','Semillas de Cebolla. / VARIEDAD: Valencianita R.C.',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:25:46',0,''),(386,'HF0001','Carbendaglex - Tratamiento de semillas para enferm',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:28:10',0,''),(387,'HF0002','Herbadox H20 - Herbicida para : serraja, yuyo blan',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:29:55',0,''),(388,'HF0003','Koltar - Herbicida para : serraja, yuyo blanco, ce',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:30:43',0,''),(389,'HF0004','Lorsban Plus / Dithane -  Insecticida y fungcida. ',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 16:05:35',0,''),(390,'FE0001','CAURIFIX S - Fungicida. Prevencion de roya y peron',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:34:34',0,''),(391,'FE0002','SolMix - Fertilizante de Nitrogeno',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:35:20',0,''),(392,'FE0003','Sol NPK - Fertilizante Nitrogeno, Fosforo, Potasio',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:36:38',0,''),(393,'HF0005','Bromadiolone - Control de Roedores.',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:49:50',0,''),(394,'PR0001','Ajo Cosechado. / VARIEDAD: Chino convencional',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:51:32',0,''),(395,'PR0003','Ajo Cosechado - VARIEDAD: Blanco organico',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:56:49',0,''),(396,'PR0002','Ajo cosechado - VARIEDAD: Blanco convencional ',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:52:24',0,''),(397,'PR0004 ','Ajo cosechado - VARIEDAD: Chino organico',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:58:49',0,''),(398,'PR0005','Ajo embalado - VARIEDAD: Chino convencional',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 19:59:50',0,''),(399,'PR0006','Ajo embalado - VARIEDAD: Blanco convencional.',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:02:14',0,''),(400,'PR0007','Ajo Embalado - VARIEDAD: Blanco organico.',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:04:43',0,''),(401,'PR0008','Ajo Embalado -  VARIEDAD: Chino organico',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:06:42',0,''),(402,'PR0009','Ajo Clasificado. / VARIEDAD: Chino convencional. /',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:13:08',0,''),(403,'PR0010','Ajo Clasificado. / VARIEDAD: Chino convencional. /',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:13:31',0,''),(404,'PR0011','Ajo Clasificado. / VARIEDAD: Chino convencional. /',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:13:46',0,''),(405,'PR0012','Ajo Clasificado. / VARIEDAD: Chino convencional. /',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:14:13',0,''),(406,'PR0013','Ajo Clasificado. / VARIEDAD: Chino convencional. /',0.00,0,NULL,0,'AC',0,1,0,'2019-10-31 20:14:45',0,''),(407,'01230-M','Guantes M',0.00,1,6,12,'1',22,6,1,'2020-04-29 15:36:57',0,''),(408,'0005','Descripcion 5',0.00,0,0,0,'1',37,6,0,'2020-05-04 14:08:22',0,''),(409,'588023','prueba',0.00,0,0,0,'1',22,6,0,'2020-05-11 17:15:31',0,'');
/*!40000 ALTER TABLE `alm_articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_depositos`
--

DROP TABLE IF EXISTS `alm_depositos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_depositos` (
  `depo_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `GPS` varchar(255) DEFAULT NULL,
  `estado` varchar(4) DEFAULT NULL,
  `loca_id` varchar(255) DEFAULT NULL,
  `esta_id` varchar(255) DEFAULT NULL,
  `pais_id` varchar(255) DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`depo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_depositos`
--

LOCK TABLES `alm_depositos` WRITE;
/*!40000 ALTER TABLE `alm_depositos` DISABLE KEYS */;
INSERT INTO `alm_depositos` VALUES (1,'Deposito A','Direccion A','AAA','1','1','1','1',1,'2019-06-03 14:10:31',0),(2,'Deposito B','Direccion B','BBB','1','1','1','1',1,'2019-06-03 14:10:31',0),(3,'Deposito C','Direccion C','CCC','1','1','1','1',1,'2019-06-03 14:10:31',0),(4,'Deposito 1','direccion 1','','AC','','4',NULL,1,'2019-06-23 13:28:22',0),(5,'Deposito 2','direccion 2','','AC','','6',NULL,1,'2019-06-23 13:28:02',0),(6,'Deposito 3','direccion 3','+34 -44','AC','','',NULL,6,'2019-06-23 12:33:07',0),(7,'Deposito 4','direccion 4','','AC','','',NULL,6,'2019-06-23 13:27:46',0),(8,'Deposito 1','sin direccion','',NULL,'','',NULL,6,'2020-04-30 11:03:53',0);
/*!40000 ALTER TABLE `alm_depositos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_deta_entrega_materiales`
--

DROP TABLE IF EXISTS `alm_deta_entrega_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_deta_entrega_materiales` (
  `deen_id` int(11) NOT NULL AUTO_INCREMENT,
  `enma_id` int(11) NOT NULL,
  `cantidad` float NOT NULL,
  `arti_id` int(11) NOT NULL,
  `prov_id` int(10) DEFAULT NULL,
  `lote_id` int(11) NOT NULL,
  `depo_id` int(11) DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `precio` double DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`deen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_deta_entrega_materiales`
--

LOCK TABLES `alm_deta_entrega_materiales` WRITE;
/*!40000 ALTER TABLE `alm_deta_entrega_materiales` DISABLE KEYS */;
INSERT INTO `alm_deta_entrega_materiales` VALUES (1,1,1,2,5,1,6,6,NULL,'2020-04-29 15:11:34',0),(2,2,50,376,5,6,6,6,NULL,'2020-04-29 15:36:08',0),(3,3,3,407,4,7,6,6,NULL,'2020-04-29 15:43:12',0),(4,4,12,407,4,8,6,6,NULL,'2020-04-29 15:52:04',0),(5,5,1,2,5,1,6,6,NULL,'2020-04-30 01:48:56',0),(6,5,0.5,11,5,3,6,6,NULL,'2020-04-30 01:48:56',0),(7,5,1,13,5,4,7,6,NULL,'2020-04-30 01:48:56',0),(8,6,2,2,5,1,6,6,NULL,'2020-04-30 01:54:34',0),(9,7,3,407,5,9,8,6,NULL,'2020-05-08 00:49:34',0),(10,8,0.5,10,5,2,7,6,NULL,'2020-05-08 00:51:26',0),(11,9,1,70,3,10,8,6,NULL,'2020-08-10 13:53:21',0),(12,10,2,2,5,1,6,6,NULL,'2020-08-10 17:19:35',0),(13,11,1,2,5,1,6,6,NULL,'2020-08-10 17:25:12',0),(14,11,1,11,5,3,6,6,NULL,'2020-08-10 17:25:12',0),(15,12,1,10,5,2,7,6,NULL,'2020-08-10 17:27:31',0),(16,13,1,10,5,2,7,6,NULL,'2020-08-10 17:29:55',0),(17,14,2,407,4,7,6,6,NULL,'2020-09-24 20:59:05',0),(18,15,2,10,5,2,7,6,NULL,'2020-09-25 17:08:34',0),(19,16,2,2,5,1,6,6,NULL,'2020-09-28 18:45:42',0),(20,17,2,13,5,4,7,6,NULL,'2020-10-05 02:48:03',0),(21,18,2,10,5,2,7,6,NULL,'2020-10-05 02:48:49',0),(22,19,2,13,5,4,7,6,NULL,'2020-10-05 03:00:19',0),(23,20,1,10,5,2,7,6,NULL,'2020-10-05 03:16:28',0),(24,21,1,10,5,2,7,6,NULL,'2020-10-05 03:17:04',0);
/*!40000 ALTER TABLE `alm_deta_entrega_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_deta_pedidos_materiales`
--

DROP TABLE IF EXISTS `alm_deta_pedidos_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_deta_pedidos_materiales` (
  `depe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` float DEFAULT NULL,
  `resto` float DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `fecha_entregado` date DEFAULT NULL,
  `pema_id` int(11) NOT NULL,
  `arti_id` int(11) NOT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`depe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_deta_pedidos_materiales`
--

LOCK TABLES `alm_deta_pedidos_materiales` WRITE;
/*!40000 ALTER TABLE `alm_deta_pedidos_materiales` DISABLE KEYS */;
INSERT INTO `alm_deta_pedidos_materiales` VALUES (1,1,0,'2020-04-29',NULL,1,2,'2020-04-29 15:03:24',0),(3,0.5,0,'2020-04-29',NULL,2,11,'2020-04-29 15:06:40',0),(4,1,0,'2020-04-29',NULL,2,2,'2020-04-29 15:06:44',0),(5,1,0,'2020-04-29',NULL,2,13,'2020-04-29 15:07:02',0),(6,55,5,NULL,NULL,3,376,'2020-04-29 15:34:06',0),(7,3,0,'2020-04-29',NULL,4,407,'2020-04-29 15:42:27',0),(8,12,0,'2020-04-29',NULL,5,407,'2020-04-29 15:50:56',0),(9,4,4,NULL,NULL,6,93,'2020-04-30 01:38:49',0),(10,2,0,'2020-04-29',NULL,7,2,'2020-04-30 01:40:34',0),(11,2,2,NULL,NULL,8,141,'2020-05-06 18:23:55',0),(12,1,1,NULL,NULL,9,40,'2020-05-06 20:11:53',0),(13,2,2,NULL,NULL,10,40,'2020-05-06 21:49:57',0),(14,2,2,NULL,NULL,11,145,'2020-05-06 22:04:17',0),(15,1,1,'2020-05-06',NULL,12,18,'2020-05-06 22:35:15',0),(16,1,1,NULL,NULL,13,368,'2020-05-06 22:44:27',0),(17,1,1,NULL,NULL,14,93,'2020-05-06 22:56:40',0),(18,1,1,'2020-05-07',NULL,15,12,'2020-05-07 13:41:35',0),(19,2,2,'2020-05-07',NULL,15,13,'2020-05-07 13:42:00',0),(20,2,2,NULL,NULL,16,145,'2020-05-07 13:44:17',0),(21,1,1,NULL,NULL,17,376,'2020-05-07 15:42:48',0),(22,2,2,'2020-05-07',NULL,18,10,'2020-05-07 15:46:11',0),(26,1,1,'2020-05-07',NULL,19,13,'2020-05-07 17:13:00',0),(27,3,0,'2020-05-07',NULL,20,407,'2020-05-08 00:42:56',0),(28,8,8,'2020-05-07',NULL,21,2,'2020-05-08 00:45:54',0),(29,0.5,0,'2020-05-07',NULL,21,10,'2020-05-08 00:46:03',0),(30,5,5,'2020-05-22',NULL,22,2,'2020-05-22 12:57:52',0),(31,1,1,'2020-06-29',NULL,23,2,'2020-06-29 14:30:36',0),(32,2,2,'2020-08-07',NULL,24,70,'2020-08-07 20:02:03',0),(33,2,1,'2020-08-07',NULL,25,70,'2020-08-07 20:08:08',0),(34,2,2,NULL,NULL,26,93,'2020-08-10 16:59:26',0),(35,2,2,'2020-08-10',NULL,27,156,'2020-08-10 17:00:58',0),(36,1,1,'2020-08-10',NULL,28,2,'2020-08-10 17:08:04',0),(37,2,0,'2020-08-10',NULL,29,2,'2020-08-10 17:17:33',0),(38,1,0,'2020-08-10',NULL,30,2,'2020-08-10 17:22:51',0),(39,2,0,'2020-08-10',NULL,30,10,'2020-08-10 17:22:59',0),(40,1,0,'2020-08-10',NULL,30,11,'2020-08-10 17:23:43',0),(41,2,2,'2020-08-11',NULL,31,2,'2020-08-11 16:15:09',0),(42,2,2,'2020-08-11',NULL,31,10,'2020-08-11 16:15:17',0),(43,1,1,'2020-08-31',NULL,32,2,'2020-08-31 18:25:32',0),(44,1,1,'2020-08-31',NULL,33,2,'2020-08-31 21:52:40',0),(45,4,4,'2020-09-01',NULL,34,2,'2020-09-01 15:46:39',0),(46,2,2,NULL,NULL,35,93,'2020-09-01 16:08:15',0),(47,2,2,NULL,NULL,36,93,'2020-09-02 20:35:53',0),(48,10,10,'2020-09-02',NULL,36,2,'2020-09-02 20:36:04',0),(49,10,10,'2020-09-02',NULL,36,10,'2020-09-02 20:36:20',0),(50,85,85,'2020-09-02',NULL,36,14,'2020-09-02 20:36:38',0),(51,1,1,'2020-09-24',NULL,37,136,'2020-09-24 20:16:34',0),(52,2,2,NULL,NULL,38,93,'2020-09-24 20:18:56',0),(53,2,0,'2020-09-24',NULL,39,407,'2020-09-24 20:54:59',0),(54,2,0,'2020-09-25',NULL,40,10,'2020-09-25 17:01:15',0),(55,1,1,'2020-09-28',NULL,41,2,'2020-09-28 14:32:47',0),(56,2,0,'2020-09-28',NULL,42,2,'2020-09-28 15:56:39',0),(57,2,2,'2020-10-03',NULL,43,10,'2020-10-03 06:27:19',0),(58,2,2,'2020-10-03',NULL,44,2,'2020-10-03 06:45:32',0),(59,2,2,NULL,NULL,45,93,'2020-10-03 06:49:42',0),(60,1,1,'2020-10-03',NULL,46,13,'2020-10-03 06:50:59',0),(61,2,0,'2020-10-03',NULL,47,13,'2020-10-03 07:34:20',0),(62,2,0,'2020-10-03',NULL,48,10,'2020-10-03 07:34:54',0),(63,2,0,'2020-10-04',NULL,49,13,'2020-10-05 02:53:49',0),(64,1,0,'2020-10-05',NULL,50,10,'2020-10-05 03:13:21',0),(65,1,0,'2020-10-05',NULL,51,10,'2020-10-05 03:14:32',0);
/*!40000 ALTER TABLE `alm_deta_pedidos_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_deta_recepcion_materiales`
--

DROP TABLE IF EXISTS `alm_deta_recepcion_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_deta_recepcion_materiales` (
  `dere_id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `empr_id` int(11) NOT NULL,
  `rema_id` int(11) NOT NULL,
  `lote_id` int(11) NOT NULL,
  `prov_id` int(10) NOT NULL,
  `arti_id` int(11) NOT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`dere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_deta_recepcion_materiales`
--

LOCK TABLES `alm_deta_recepcion_materiales` WRITE;
/*!40000 ALTER TABLE `alm_deta_recepcion_materiales` DISABLE KEYS */;
INSERT INTO `alm_deta_recepcion_materiales` VALUES (1,3000,0,6,1,6,5,376,'2020-04-29 15:30:08',0),(2,6,0,6,2,7,4,407,'2020-04-29 15:40:24',0),(3,12,0,6,3,8,4,407,'2020-04-29 15:49:58',0),(4,3,0,6,4,1,5,2,'2020-04-30 01:52:32',0),(5,600,0,6,5,9,5,407,'2020-05-03 16:29:43',0),(6,1800,0,6,6,9,5,407,'2020-05-03 16:38:25',0),(7,6000,0,6,7,9,3,407,'2020-05-03 16:43:34',0),(8,20000,0,6,8,10,3,70,'2020-08-07 20:18:23',0);
/*!40000 ALTER TABLE `alm_deta_recepcion_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_entrega_materiales`
--

DROP TABLE IF EXISTS `alm_entrega_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_entrega_materiales` (
  `enma_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `solicitante` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `destino` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comprobante` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `pema_id` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`enma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_entrega_materiales`
--

LOCK TABLES `alm_entrega_materiales` WRITE;
/*!40000 ALTER TABLE `alm_entrega_materiales` DISABLE KEYS */;
INSERT INTO `alm_entrega_materiales` VALUES (1,'2020-04-29','Eliana Bernaldez','123456',NULL,'E-0001',6,1,'2020-04-29 15:11:34',0),(2,'2020-04-29','Eliana Bernaldez','123456',NULL,'E-0001',6,3,'2020-04-29 15:36:08',0),(3,'2020-04-29','Eliana Bernaldez','7946177',NULL,'E-0003',6,4,'2020-04-29 15:43:12',0),(4,'2020-05-02','Eliana Bernaldez','123456',NULL,'E-0004',6,5,'2020-04-29 15:52:04',0),(5,'2020-04-29','Eliana Bernaldez','123456',NULL,'E-0005',6,2,'2020-04-30 01:48:56',0),(6,'2020-04-29','Eliana Bernaldez','123456',NULL,'E-0006',6,7,'2020-04-30 01:54:34',0),(7,'2020-05-08','Eliana Bernaldez','12345678',NULL,'EB-0001',6,20,'2020-05-08 00:49:34',0),(8,'2020-05-08','Eliana Bernaldez','123456',NULL,'1111',6,21,'2020-05-08 00:51:26',0),(9,'2020-08-10','pepe honguito','1234567',NULL,'12345',6,25,'2020-08-10 13:53:21',0),(10,'2020-08-10','sergio','12455',NULL,'1234',6,29,'2020-08-10 17:19:35',0),(11,'2020-08-10','alo','12345',NULL,'1111',6,30,'2020-08-10 17:25:12',0),(12,'2020-08-10','se','123123',NULL,'333',6,30,'2020-08-10 17:27:31',0),(13,'2020-08-10','ad','1245',NULL,'444',6,30,'2020-08-10 17:29:55',0),(14,'2020-09-24','sergio ledesma','38888888',NULL,'1234',6,39,'2020-09-24 20:59:05',0),(15,'2020-09-25','sergio ledesmaaa','388888888',NULL,'1233',6,40,'2020-09-25 17:08:34',0),(16,'2020-09-28','sergio ledesma','38888888',NULL,'222',6,42,'2020-09-28 18:45:42',0),(17,'2020-10-04','pepe','2222',NULL,'1234',6,47,'2020-10-05 02:48:03',0),(18,'2020-10-04','pepo','334',NULL,'1234',6,48,'2020-10-05 02:48:49',0),(19,'2020-10-05','pepe','38888888',NULL,'222',6,49,'2020-10-05 03:00:19',0),(20,'2020-10-05','el','38888888',NULL,'222',6,51,'2020-10-05 03:16:28',0),(21,'2020-10-05','peperi','388888883',NULL,'221',6,50,'2020-10-05 03:17:04',0);
/*!40000 ALTER TABLE `alm_entrega_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_lotes`
--

DROP TABLE IF EXISTS `alm_lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_lotes` (
  `lote_id` int(11) NOT NULL AUTO_INCREMENT,
  `prov_id` int(10) NOT NULL,
  `arti_id` int(11) NOT NULL,
  `depo_id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `fec_vencimiento` date DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`lote_id`,`prov_id`,`arti_id`,`depo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_lotes`
--

LOCK TABLES `alm_lotes` WRITE;
/*!40000 ALTER TABLE `alm_lotes` DISABLE KEYS */;
INSERT INTO `alm_lotes` VALUES (1,5,2,6,'1','2020-04-16',93,6,NULL,1,'2020-04-16 15:42:11',0),(2,5,10,7,'1','2020-04-16',40,6,NULL,1,'2020-04-16 15:42:11',0),(3,5,11,6,'1','2020-04-23',22.5,6,NULL,1,'2020-04-16 15:42:11',0),(4,5,13,7,'1','2020-04-23',10,6,NULL,1,'2020-04-16 15:42:11',0),(5,5,377,6,'1','2020-04-20',73.5,6,NULL,1,'2020-04-20 21:17:23',0),(6,5,376,6,'1','2020-04-29',2950,6,NULL,1,'2020-04-29 15:30:08',0),(7,4,407,6,'011','2021-02-27',1,6,NULL,1,'2020-04-29 15:40:24',0),(8,4,407,6,'111','2020-04-29',0,6,NULL,1,'2020-04-29 15:49:58',0),(9,5,407,8,'na','2020-05-03',8397,6,NULL,1,'2020-05-03 16:29:43',0),(10,3,70,8,'1','2020-08-07',19999,6,NULL,1,'2020-08-07 20:18:23',0);
/*!40000 ALTER TABLE `alm_lotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_pedidos_extraordinario`
--

DROP TABLE IF EXISTS `alm_pedidos_extraordinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_pedidos_extraordinario` (
  `peex_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `detalle` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `motivo_rechazo` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `pema_id` int(11) DEFAULT NULL,
  `ortr_id` int(11) DEFAULT NULL,
  `empr_id` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`peex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_pedidos_extraordinario`
--

LOCK TABLES `alm_pedidos_extraordinario` WRITE;
/*!40000 ALTER TABLE `alm_pedidos_extraordinario` DISABLE KEYS */;
/*!40000 ALTER TABLE `alm_pedidos_extraordinario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_pedidos_materiales`
--

DROP TABLE IF EXISTS `alm_pedidos_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_pedidos_materiales` (
  `pema_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `motivo_rechazo` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `justificacion` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ortr_id` int(11) NOT NULL,
  `empr_id` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_pedidos_materiales`
--

LOCK TABLES `alm_pedidos_materiales` WRITE;
/*!40000 ALTER TABLE `alm_pedidos_materiales` DISABLE KEYS */;
INSERT INTO `alm_pedidos_materiales` VALUES (1,'2020-04-29','','',8102,'Entregado',1,6,'2020-04-29 15:03:24',0),(2,'2020-04-29','','',8103,'Entregado',1,6,'2020-04-29 15:06:26',0),(3,'2020-04-29','',NULL,8105,'Ent. Parcial',2,6,'2020-04-29 15:34:06',0),(4,'2020-04-29','','',8106,'Entregado',2,6,'2020-04-29 15:42:27',0),(5,'2020-04-29','','',8107,'Entregado',2,6,'2020-04-29 15:50:56',0),(6,'2020-04-29','',NULL,8109,'Aprobado',3,6,'2020-04-30 01:38:49',0),(7,'2020-04-29','','',8110,'Entregado',3,6,'2020-04-30 01:40:34',0),(8,'2020-05-06',NULL,NULL,8133,'Solicitado',10,6,'2020-05-06 18:23:55',0),(9,'2020-05-06',NULL,NULL,8135,'Solicitado',11,6,'2020-05-06 20:11:53',0),(10,'2020-05-06',NULL,NULL,8137,'Solicitado',12,6,'2020-05-06 21:49:57',0),(11,'2020-05-06',NULL,NULL,8139,'Solicitado',13,6,'2020-05-06 22:04:17',0),(12,'2020-05-06',NULL,'',8141,'Solicitado',14,6,'2020-05-06 22:35:15',0),(13,'2020-05-06',NULL,NULL,8143,'Solicitado',15,6,'2020-05-06 22:44:27',0),(14,'2020-05-06',NULL,NULL,8145,'Solicitado',16,6,'2020-05-06 22:56:40',0),(15,'2020-05-07',NULL,'',NULL,'Creada',17,6,'2020-05-07 13:41:35',0),(16,'2020-05-07',NULL,NULL,8148,'Solicitado',18,6,'2020-05-07 13:44:17',0),(17,'2020-05-07',NULL,NULL,8150,'Solicitado',19,6,'2020-05-07 15:42:48',0),(18,'2020-05-07',NULL,'',8152,'Solicitado',20,6,'2020-05-07 15:46:11',0),(19,'2020-05-07',NULL,'',8155,'Solicitado',21,6,'2020-05-07 17:09:22',0),(20,'2020-05-07','','',8157,'Entregado',22,6,'2020-05-08 00:42:56',0),(21,'2020-05-07','','',8158,'Ent. Parcial',22,6,'2020-05-08 00:45:54',0),(22,'2020-05-22',NULL,'',NULL,'Creada',7,6,'2020-05-22 12:57:52',0),(23,'2020-06-29',NULL,'',10086,'Solicitado',32,6,'2020-06-29 14:30:36',0),(24,'2020-08-07','','',10138,'Aprobado',0,6,'2020-08-07 20:02:02',0),(25,'2020-08-07','','',10141,'Ent. Parcial',36,6,'2020-08-07 20:08:08',0),(26,'2020-08-10',NULL,NULL,NULL,'Creada',35,6,'2020-08-10 16:59:26',0),(27,'2020-08-10','','',10147,'Aprobado',37,6,'2020-08-10 17:00:58',0),(28,'2020-08-10',NULL,'',NULL,'Creada',38,6,'2020-08-10 17:08:04',0),(29,'2020-08-10','','',10150,'Entregado',39,6,'2020-08-10 17:17:33',0),(30,'2020-08-10','','',10152,'Entregado',40,6,'2020-08-10 17:22:51',0),(31,'2020-08-11','','',10164,'Aprobado',41,6,'2020-08-11 16:15:09',0),(32,'2020-08-31',NULL,'',10171,'Solicitado',42,6,'2020-08-31 18:25:32',0),(33,'2020-08-31',NULL,'',10173,'Solicitado',43,6,'2020-08-31 21:52:40',0),(34,'2020-09-01','','',10177,'Aprobado',44,6,'2020-09-01 15:46:39',0),(35,'2020-09-01',NULL,NULL,10301,'Solicitado',45,6,'2020-09-01 16:08:15',0),(36,'2020-09-02',NULL,NULL,NULL,'Creada',49,6,'2020-09-02 20:35:53',0),(37,'2020-09-24','','',11067,'Aprobado',199,6,'2020-09-24 20:16:34',0),(38,'2020-09-24',NULL,NULL,NULL,'Creada',68,6,'2020-09-24 20:18:56',0),(39,'2020-09-24','','',11069,'Entregado',200,6,'2020-09-24 20:54:59',0),(40,'2020-09-25','','',11071,'Entregado',201,6,'2020-09-25 17:01:15',0),(41,'2020-09-28','','',11076,'Aprobado',204,6,'2020-09-28 14:32:47',0),(42,'2020-09-28','','',11080,'Entregado',207,6,'2020-09-28 15:56:39',0),(43,'2020-10-03','','',11087,'Aprobado',208,6,'2020-10-03 06:27:19',0),(44,'2020-10-03',NULL,'',NULL,'Creada',209,6,'2020-10-03 06:45:32',0),(45,'2020-10-03',NULL,NULL,NULL,'Creada',77,6,'2020-10-03 06:49:42',0),(46,'2020-10-03','','',11090,'Aprobado',210,6,'2020-10-03 06:50:59',0),(47,'2020-10-03','','',11092,'Entregado',211,6,'2020-10-03 07:34:20',0),(48,'2020-10-03','','',11093,'Entregado',211,6,'2020-10-03 07:34:54',0),(49,'2020-10-04','','',11096,'Entregado',212,6,'2020-10-05 02:53:49',0),(50,'2020-10-05','','',11098,'Entregado',213,6,'2020-10-05 03:13:21',0),(51,'2020-10-05','','',11099,'Entregado',213,6,'2020-10-05 03:14:32',0);
/*!40000 ALTER TABLE `alm_pedidos_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_proveedores`
--

DROP TABLE IF EXISTS `alm_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_proveedores` (
  `prov_id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cuit` varchar(50) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`prov_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_proveedores`
--

LOCK TABLES `alm_proveedores` WRITE;
/*!40000 ALTER TABLE `alm_proveedores` DISABLE KEYS */;
INSERT INTO `alm_proveedores` VALUES (3,'Benito camelass','24324','asfas 23432','234234','r@gmail.com',6,'2019-06-24 20:11:18',0),(4,'Alberto Carlos Bustos','2423423432','sfssfa 234234','23423432','r@t.com',6,'2019-06-24 20:18:33',0),(5,'Proveedor 1','11111','aaaaa','2222','eeeeeee',6,'2019-06-24 20:26:44',0),(6,'Gomer√≠a Carlito','30706206226','XXXXXXX','2644444444','TALLER@carlito.COM',6,'2019-06-25 11:49:21',0);
/*!40000 ALTER TABLE `alm_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_proveedores_articulos`
--

DROP TABLE IF EXISTS `alm_proveedores_articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_proveedores_articulos` (
  `prov_id` int(10) NOT NULL,
  `arti_id` int(11) NOT NULL,
  PRIMARY KEY (`prov_id`,`arti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_proveedores_articulos`
--

LOCK TABLES `alm_proveedores_articulos` WRITE;
/*!40000 ALTER TABLE `alm_proveedores_articulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alm_proveedores_articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alm_recepcion_materiales`
--

DROP TABLE IF EXISTS `alm_recepcion_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alm_recepcion_materiales` (
  `rema_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `empr_id` int(11) NOT NULL,
  `prov_id` int(10) NOT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`rema_id`),
  UNIQUE KEY `comprobante_UNIQUE` (`comprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alm_recepcion_materiales`
--

LOCK TABLES `alm_recepcion_materiales` WRITE;
/*!40000 ALTER TABLE `alm_recepcion_materiales` DISABLE KEYS */;
INSERT INTO `alm_recepcion_materiales` VALUES (1,'2022-02-26 12:29:00','0000011',6,5,'2020-04-29 15:30:08',0),(2,'2020-04-29 12:39:00','E-0002',6,4,'2020-04-29 15:40:24',0),(3,'2020-04-29 12:49:00','E-0004',6,4,'2020-04-29 15:49:58',0),(4,'2020-04-29 22:51:00','E-0005',6,5,'2020-04-30 01:52:32',0),(5,'2020-05-03 13:27:00','0001',6,5,'2020-05-03 16:29:43',0),(6,'2020-05-03 13:37:00','00002',6,5,'2020-05-03 16:38:25',0),(7,'2020-05-03 13:42:00','00003',6,3,'2020-05-03 16:43:34',0),(8,'2020-08-07 17:17:00','sarasa',6,3,'2020-08-07 20:18:22',0);
/*!40000 ALTER TABLE `alm_recepcion_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Area 1',6,'AC'),(2,'Area 2',6,'AN'),(3,'Producci√≥n',6,'AC'),(4,'√Årea Faena',6,'AC'),(5,'Sala de Maquinas',6,'AC'),(6,'Area',6,'AN'),(7,'Area 2',6,'AC');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!50001 DROP VIEW IF EXISTS `articles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `articles` (
  `artId` tinyint NOT NULL,
  `artBarCode` tinyint NOT NULL,
  `artDescription` tinyint NOT NULL,
  `artCoste` tinyint NOT NULL,
  `artIsByBox` tinyint NOT NULL,
  `artCantbox` tinyint NOT NULL,
  `punto_pedido` tinyint NOT NULL,
  `artEstado` tinyint NOT NULL,
  `unidadmedida` tinyint NOT NULL,
  `id_empresa` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `asignaherramientas`
--

DROP TABLE IF EXISTS `asignaherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `herrId` int(11) DEFAULT NULL,
  `id_orden` int(11) DEFAULT NULL,
  `fechahora` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `herrId` (`herrId`),
  KEY `id_orden` (`id_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaherramientas`
--

LOCK TABLES `asignaherramientas` WRITE;
/*!40000 ALTER TABLE `asignaherramientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignaherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignausuario`
--

DROP TABLE IF EXISTS `asignausuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignausuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrId` int(11) DEFAULT NULL,
  `id_orden` int(11) DEFAULT NULL,
  `fechahora` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usrId` (`usrId`),
  KEY `id_orden` (`id_orden`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignausuario`
--

LOCK TABLES `asignausuario` WRITE;
/*!40000 ALTER TABLE `asignausuario` DISABLE KEYS */;
INSERT INTO `asignausuario` VALUES (1,17,4,'2020-07-01 19:39:42'),(2,17,5,'2020-07-01 19:41:13'),(3,17,9,'2020-09-01 12:55:04'),(4,49,9,'2020-09-01 12:55:04'),(5,1,10,'2020-09-25 14:13:33'),(7,NULL,13,'2020-09-25 16:11:41'),(8,49,16,'2020-10-03 03:48:31'),(9,49,17,'2020-10-03 04:32:59'),(10,4,18,'2020-10-04 23:52:24'),(11,17,19,'2020-10-05 00:03:34'),(13,26,21,'2020-10-05 00:22:14'),(14,NULL,21,'2020-10-05 00:22:14');
/*!40000 ALTER TABLE `asignausuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asp_detaplantillainsumos`
--

DROP TABLE IF EXISTS `asp_detaplantillainsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asp_detaplantillainsumos` (
  `deta_id` int(11) NOT NULL AUTO_INCREMENT,
  `artId` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  PRIMARY KEY (`deta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asp_detaplantillainsumos`
--

LOCK TABLES `asp_detaplantillainsumos` WRITE;
/*!40000 ALTER TABLE `asp_detaplantillainsumos` DISABLE KEYS */;
INSERT INTO `asp_detaplantillainsumos` VALUES (1,0,1),(2,0,1),(3,0,1),(4,0,1),(5,0,2),(6,2,3),(7,233,3),(8,844,3),(9,2,4),(10,233,4),(11,844,4),(12,2,5),(13,233,5),(14,844,5),(15,2,6),(16,233,6),(17,844,6),(18,123,7),(24,2,8),(25,10,8),(26,11,8),(27,365,9),(28,145,9),(29,10,10);
/*!40000 ALTER TABLE `asp_detaplantillainsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asp_plantillainsumos`
--

DROP TABLE IF EXISTS `asp_plantillainsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asp_plantillainsumos` (
  `plant_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `plant_nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`plant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asp_plantillainsumos`
--

LOCK TABLES `asp_plantillainsumos` WRITE;
/*!40000 ALTER TABLE `asp_plantillainsumos` DISABLE KEYS */;
INSERT INTO `asp_plantillainsumos` VALUES (1,'',6,'','AC'),(2,'Descripcion 1',6,'Plantilla 1','AC'),(3,'plantilla de articulos',6,'Plantilla 5','AC'),(4,'plantilla de articulos',6,'Plantilla 5','AC'),(5,'plantilla de articulos',6,'Plantilla 5','AC'),(6,'plantilla de articulos',6,'Plantilla 5','AC'),(7,'wwww',6,'aaaa','AC'),(8,'plantilla de prueba',6,'eli','AN'),(9,'B√°sica de Trabajo',6,'Plantilla 001','AC'),(10,'planilla de prueba nueva',6,'Planilla de Prueba','AC');
/*!40000 ALTER TABLE `asp_plantillainsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asp_subtareas`
--

DROP TABLE IF EXISTS `asp_subtareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asp_subtareas` (
  `id_subtarea` int(11) NOT NULL AUTO_INCREMENT,
  `tareadescrip` varchar(5000) COLLATE utf8_spanish_ci NOT NULL,
  `id_tarea` int(11) NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `duracion_prog` int(11) DEFAULT NULL,
  `form_asoc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_subtarea`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asp_subtareas`
--

LOCK TABLES `asp_subtareas` WRITE;
/*!40000 ALTER TABLE `asp_subtareas` DISABLE KEYS */;
INSERT INTO `asp_subtareas` VALUES (1,'SubTarea 1',228,'',20,1),(2,'Sub Tarea 2',228,'',50,1),(3,'Sub Tarea 3',228,'',20,1),(4,'Inspecci√≥n de Personal',244,'AC',50,3),(5,'Informe de Calidad del Sector',244,'AC',50,2);
/*!40000 ALTER TABLE `asp_subtareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `idCiudades` int(11) NOT NULL AUTO_INCREMENT,
  `Paises_Codigo` varchar(2) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  PRIMARY KEY (`idCiudades`),
  KEY `Paises_Codigo` (`Paises_Codigo`),
  KEY `Ciudad` (`Ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'AR','Buenos Aires'),(2,'AR','Santa Fe'),(3,'AR','C√≥rdoba'),(4,'AR','Misiones'),(5,'AR','Entre Rios'),(6,'AR','Mendoza'),(7,'AR','San Juan'),(8,'AR','Tucum√°n'),(9,'AR','Tierra del Fuego'),(10,'AR','Chaco'),(11,'AR','La Pampa'),(12,'AR','Jujuy'),(13,'AR','Rio Negro'),(14,'AR','Chubut'),(15,'AR','Corrientes'),(16,'AR','Santa Cruz'),(17,'AR','Salta'),(18,'AR','San Luis'),(19,'AR','Neuquen'),(20,'AR','Catamarca'),(21,'AR','Santiago del Estero'),(22,'AR','La Rioja'),(23,'AR','Formosa');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `clinteid` int(11) NOT NULL AUTO_INCREMENT,
  `clientrazonsocial` varchar(255) DEFAULT NULL,
  `clientdireccion` varchar(255) DEFAULT NULL,
  `clientmail` varchar(255) DEFAULT NULL,
  `clienttelefono` int(11) DEFAULT NULL,
  `clientetelefono1` varchar(255) DEFAULT NULL,
  `localidadid` varchar(50) DEFAULT NULL,
  `paisid` varchar(2) DEFAULT NULL,
  `provinciaid` int(11) DEFAULT NULL,
  `cuenta_cuentaid` int(11) NOT NULL,
  `plant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`clinteid`),
  KEY `fk_clientes_cuenta1_idx` (`cuenta_cuentaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componenteequipo`
--

DROP TABLE IF EXISTS `componenteequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componenteequipo` (
  `idcomponenteequipo` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `id_componente` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `codigo` varchar(40) DEFAULT NULL,
  `estado` varchar(4) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `sistemaid` int(11) NOT NULL,
  PRIMARY KEY (`idcomponenteequipo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componenteequipo`
--

LOCK TABLES `componenteequipo` WRITE;
/*!40000 ALTER TABLE `componenteequipo` DISABLE KEYS */;
INSERT INTO `componenteequipo` VALUES (1,2,1,NULL,'001','AC',6,1),(2,1,1,NULL,'002','AC',6,2),(3,2,2,NULL,'','AC',6,11),(4,1,3,NULL,'00000111','AC',6,1),(5,16,3,NULL,'000000111111','AC',6,1),(6,17,3,NULL,'777','AC',6,11),(7,14,1,NULL,'','AC',6,11),(8,5,1,NULL,'','AC',6,11),(9,8,2,NULL,'','AC',6,11),(10,1,1,NULL,'12233','AC',6,1),(11,11,1,NULL,'','AC',6,11),(12,19,3,NULL,'000-01','AC',6,1);
/*!40000 ALTER TABLE `componenteequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componentes`
--

DROP TABLE IF EXISTS `componentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componentes` (
  `id_componente` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `fechahora` datetime DEFAULT NULL,
  `informacion` text COLLATE utf8_spanish_ci,
  `marcaid` int(11) DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_componente`),
  KEY `id_equipo` (`id_equipo`),
  KEY `marcaid` (`marcaid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componentes`
--

LOCK TABLES `componentes` WRITE;
/*!40000 ALTER TABLE `componentes` DISABLE KEYS */;
INSERT INTO `componentes` VALUES (1,'Componente 1',-1,'2019-06-24 20:03:22','componente de prueba equipo 01',1,'1__2019-06-24-20-03-22.pdf','AC',6),(2,'Motor Diesel CAT C10',-1,'2019-07-25 16:23:50','CATERPILLARENGINE SPECIFICATIONS\r\nBore‚Äîin (mm) 4.9 (125)\r\nStroke‚Äîin (mm) 5.5 (140)\r\nDisplacement‚Äîcu in (L) 629 (10.3)\r\nAspiration Turbocharged for ATAAC\r\nRotation (from flywheel end) Counterclockwise\r\nCooling System‚Äîgal (L) 2.7 (10.2)\r\nLube Oil System (refill)‚Äîgal (L) 9.4 (36)\r\nWeight, Net Dry (approx)‚Äîlb (kg) with standard equipment 2050 (932)\r\nPERFORMANCE DATA\r\nOperating Range (rpm) 1200-1800\r\nMaximum Engine rpm 1800\r\nAdvertised hp (kW) 335 (250)\r\nGoverned Speed‚Äî rpm 1800\r\nMax hp @ 1600 rpm (kW) 350 (261)\r\nPeak Torque ‚Äî lb-ft (N‚Ä¢m) 1350 (1830)\r\nPeak Torque ‚Äî rpm 1200\r\n Torque rise (%) 38\r\nAltitude Capability‚Äî ft (m) 7500 (2288)',3,'comp2.pdf','AC',6),(3,'Motor Arranque CAT 1673 3406 3408 24v',-1,'2019-07-26 14:00:55','Marca DELCO REMY\r\nDientes de bendix 11\r\nSentido de rotaci√≥n Horario\r\nVoltaje 24 V\r\nOEM DR10478998\r\nModelo DR10478998',3,'3__2019-07-26-14-00-55.pdf','AC',6),(4,'descripcion',-1,'2019-10-21 12:07:33','info',1,'4__2019-10-21-12-07-34.pdf','AN',6),(5,'Descripcion 1',-1,'2020-04-30 10:33:37','',1,'','AC',6),(6,'descripcion 1111',-1,'2020-04-30 10:38:27','',1,'','AC',6);
/*!40000 ALTER TABLE `componentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conffamily`
--

DROP TABLE IF EXISTS `conffamily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conffamily` (
  `famId` int(11) NOT NULL AUTO_INCREMENT,
  `famName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`famId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conffamily`
--

LOCK TABLES `conffamily` WRITE;
/*!40000 ALTER TABLE `conffamily` DISABLE KEYS */;
INSERT INTO `conffamily` VALUES (1,'Bulones','AC',6),(2,'Bujes','AC',6),(3,'Filtros','AC',6),(4,'Diafragmas','AC',6),(5,'Ejes','AC',6),(6,'Valvulas','AC',6),(7,'Sellos','AC',6),(8,'Retenes','AC',6),(9,'Tuercas','AC',6),(10,'Trampas de Agua','AC',6),(11,'Arandelas','AC',6),(12,'Guias','AC',6),(13,'Pernos','AC',6),(14,'Cojinetes','AC',6),(15,'Juntas','AC',6),(16,'Cables','AC',6),(17,'Termostatos','AC',6),(19,'Compresores','AC',6),(20,'Corta Corriente','AC',6),(21,'Correas','AC',6),(22,'Cubiertas','AC',6),(23,'Radiadores','AC',6),(24,'Motor','AC',6),(25,'Crucetas','AC',6),(26,'Espejos','AC',6),(28,'Pasador','AC',0),(29,'Platos','AC',0),(30,'Seguros','AC',0),(31,'Tapas','AC',0),(32,'Alternadores','AC',0),(33,'Faros','AC',0),(34,'Bombines','AC',0),(35,'Llantas','AC',0),(37,'Mamelucos Descartables ','AC',7),(38,'Guantes de vaqueta ','AC',7),(39,'Guantes de nitrillo descartables ','AC',7),(40,'Guantes de Nitrillo ','AC',7),(41,'Gafas Transparentes','AC',7),(42,'Gafas oscuras','AC',7),(43,'Gafas amarilla ','AC',7),(44,'Guantes multiflex ','AC',7),(45,'Barbijos ','AC',7),(46,'Semi-mascara ','AC',7),(47,'Protectores auditivos endoaurales ','AC',7),(48,'Protecci√≥n auditiva tipo copa ','AC',7),(49,'Casco ','AC',7),(50,'Antiparras para viento ','AC',7),(51,'Arnes de casco ','AC',7),(52,'Filtros para semi-mascara ','AC',7),(53,'Tijera de bloqueo ','AC',7),(54,'Mordazas ','AC',7),(55,'Sensor de nivel','AC',7),(56,'Sensor de proximidad','AC',7),(57,'Sensores IFM ','AC',7),(58,'Filtros','AC',7),(59,'Sistema Aire Acondicionado.','AC',7),(60,'Grasa de Litio ','AC',7),(61,'Lamparas ','AC',7),(62,'Terminal para bater√≠a ','AC',7),(63,'Abrazadera ','AC',7),(64,'Crema desengrazante ','AC',7),(65,'Escobillas 22\" ','AC',7),(66,'Escobillas 24\"','AC',7),(67,'Fusible Ron-Bay','AC',7),(68,'Proveedor 1','AC',8);
/*!40000 ALTER TABLE `conffamily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confsubfamily`
--

DROP TABLE IF EXISTS `confsubfamily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confsubfamily` (
  `sfamId` int(11) NOT NULL AUTO_INCREMENT,
  `sfamName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `famId` int(11) DEFAULT NULL,
  PRIMARY KEY (`sfamId`),
  KEY `famId` (`famId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confsubfamily`
--

LOCK TABLES `confsubfamily` WRITE;
/*!40000 ALTER TABLE `confsubfamily` DISABLE KEYS */;
INSERT INTO `confsubfamily` VALUES (8,'Cocina',5),(9,'Heladera',5),(10,'Microondas',5),(11,'Fut√≥n',6),(12,'Alacena',6),(13,'Sillas',6),(14,'Taladro',7),(15,'Amoladora',7),(16,'LLaves',7),(17,'Afeitadora',8),(18,'Secador de Cabello',8),(19,'Masajeador',8);
/*!40000 ALTER TABLE `confsubfamily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confzone`
--

DROP TABLE IF EXISTS `confzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confzone` (
  `zonaId` int(11) NOT NULL AUTO_INCREMENT,
  `zonaName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`zonaId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confzone`
--

LOCK TABLES `confzone` WRITE;
/*!40000 ALTER TABLE `confzone` DISABLE KEYS */;
INSERT INTO `confzone` VALUES (10,'Caucete'),(11,'Zonda'),(12,'Rivadavia'),(13,'Sarmiento'),(14,'Los Berros'),(15,'El Enc√≥n');
/*!40000 ALTER TABLE `confzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratistaquipo`
--

DROP TABLE IF EXISTS `contratistaquipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contratistaquipo` (
  `id_equipo` int(1) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  PRIMARY KEY (`id_contratista`,`id_equipo`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratistaquipo`
--

LOCK TABLES `contratistaquipo` WRITE;
/*!40000 ALTER TABLE `contratistaquipo` DISABLE KEYS */;
INSERT INTO `contratistaquipo` VALUES (5,1),(5,2),(5,3),(16,17),(9,19),(12,19),(13,19),(16,19),(16,24);
/*!40000 ALTER TABLE `contratistaquipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratistas`
--

DROP TABLE IF EXISTS `contratistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contratistas` (
  `id_contratista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `contradireccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contramail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contramail1` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contracelular1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contracelular2` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contratelefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contracontacto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` char(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_contratista`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratistas`
--

LOCK TABLES `contratistas` WRITE;
/*!40000 ALTER TABLE `contratistas` DISABLE KEYS */;
INSERT INTO `contratistas` VALUES (1,'Tito cotoda','asfas 2432','a@b.com','','2343242','','','','AN',6),(2,'Finning','Av. Siempre viva 555','xxxxx@zzzz.com','','264444444','','42333333','Juan Perez','AC',6),(3,'xxxxx','xxxxxx','xxxxxxx','xxxxxxxxxx','xxxxxxxxxxxx','','','','AN',6),(4,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','AN',6);
/*!40000 ALTER TABLE `contratistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criticidad`
--

DROP TABLE IF EXISTS `criticidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criticidad` (
  `id_criti` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_criti`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criticidad`
--

LOCK TABLES `criticidad` WRITE;
/*!40000 ALTER TABLE `criticidad` DISABLE KEYS */;
INSERT INTO `criticidad` VALUES (1,'Baja',6,'AC'),(2,'Media',6,'AC'),(3,'Alta',6,'AC'),(4,'Muy Alta',6,'AC'),(5,'Muy bajo',6,'AC');
/*!40000 ALTER TABLE `criticidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_ajustes`
--

DROP TABLE IF EXISTS `deta_ajustes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_ajustes` (
  `deaj_id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` float DEFAULT NULL,
  `empr_id` int(11) NOT NULL,
  `fec_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(30) DEFAULT 'current_user()',
  `lote_id` int(11) DEFAULT NULL,
  `ajus_id` int(11) NOT NULL,
  PRIMARY KEY (`deaj_id`),
  UNIQUE KEY `deaj_id` (`deaj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ajustes`
--

LOCK TABLES `deta_ajustes` WRITE;
/*!40000 ALTER TABLE `deta_ajustes` DISABLE KEYS */;
INSERT INTO `deta_ajustes` VALUES (13,-115,6,'2020-01-21 13:58:35','current_user()',NULL,18),(14,-121,6,'2020-01-21 14:04:14','current_user()',NULL,19);
/*!40000 ALTER TABLE `deta_ajustes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_ordeninsumos`
--

DROP TABLE IF EXISTS `deta_ordeninsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_ordeninsumos` (
  `id_detaordeninsumo` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordeninsumo` int(11) DEFAULT NULL,
  `loteid` int(10) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_detaordeninsumo`),
  KEY `loteid` (`loteid`),
  KEY `id_ordeninsumo` (`id_ordeninsumo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ordeninsumos`
--

LOCK TABLES `deta_ordeninsumos` WRITE;
/*!40000 ALTER TABLE `deta_ordeninsumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `deta_ordeninsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_ordenservicio`
--

DROP TABLE IF EXISTS `deta_ordenservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_ordenservicio` (
  `id_detasercicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordenservicio` int(11) NOT NULL,
  `id_tarea` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `observacion` text CHARACTER SET latin1,
  `monto` double NOT NULL,
  `id_componente` int(11) NOT NULL,
  `rh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detasercicio`),
  KEY `id_ordenservicio` (`id_ordenservicio`),
  KEY `id_componente` (`id_componente`),
  KEY `deta_ordenservicio_ibfk_2` (`id_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ordenservicio`
--

LOCK TABLES `deta_ordenservicio` WRITE;
/*!40000 ALTER TABLE `deta_ordenservicio` DISABLE KEYS */;
INSERT INTO `deta_ordenservicio` VALUES (1,1,'probando s.s','',NULL,0,0,NULL),(2,2,'prueba 1','',NULL,0,0,NULL),(3,2,'prueba 2','',NULL,0,0,NULL),(4,2,'prueba 3','',NULL,0,0,NULL),(5,3,'tarea 1','',NULL,0,0,NULL),(6,4,'T01','',NULL,0,0,NULL),(7,4,'T02','',NULL,0,0,NULL),(8,4,'T03','',NULL,0,0,NULL),(9,5,'T01','',NULL,0,0,NULL),(10,5,'T02','',NULL,0,0,NULL),(11,5,'T03','',NULL,0,0,NULL),(12,6,'T01','',NULL,0,0,NULL),(13,7,'hola mundo','',NULL,0,0,NULL),(14,8,'werwrwer','',NULL,0,0,NULL),(15,8,'ewrwrwe','',NULL,0,0,NULL),(16,8,'rwerwe','',NULL,0,0,NULL),(17,9,'tarea 1','',NULL,0,0,NULL),(18,9,'tarea 2','',NULL,0,0,NULL),(19,10,'cambio de filtro','',NULL,0,0,NULL),(20,11,'arreglar el coso','',NULL,0,0,NULL),(22,13,'wqewqe','',NULL,0,0,NULL),(24,15,'se verifico el sallado','',NULL,0,0,NULL),(25,15,'filtro de aire revisar','',NULL,0,0,NULL),(26,16,'fffff','',NULL,0,0,NULL),(27,17,'asfdsf','',NULL,0,0,NULL),(28,18,'prueba','',NULL,0,0,NULL),(29,19,'probando gps','',NULL,0,0,NULL),(31,21,'revisado','',NULL,0,0,NULL);
/*!40000 ALTER TABLE `deta_ordenservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_remito`
--

DROP TABLE IF EXISTS `deta_remito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_remito` (
  `detaremitoid` int(11) NOT NULL AUTO_INCREMENT,
  `id_remito` int(11) NOT NULL,
  `loteid` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`detaremitoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_remito`
--

LOCK TABLES `deta_remito` WRITE;
/*!40000 ALTER TABLE `deta_remito` DISABLE KEYS */;
/*!40000 ALTER TABLE `deta_remito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id_empresa` int(50) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `empcuit` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empdir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `emptelefono` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliImagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `localidadid` int(11) DEFAULT NULL,
  `provinciaid` int(11) DEFAULT NULL,
  `paisid` int(11) DEFAULT NULL,
  `gps` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empcelular` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `zonaId` int(11) DEFAULT NULL,
  `emlogo` blob,
  `clienteid` int(11) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (6,'Caleras San Juan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(7,'MINA CHINCHILLAS','20000000','2000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ˇÿˇ‡\0JFIF\0\0`\0`\0\0ˇ€\0C\0		\n\n\r\n\n	\rˇ€\0Cˇ¿\0\0éF\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R—$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫¬√ƒ≈∆«»… “”‘’÷◊ÿŸ⁄·‚„‰ÂÊÁËÈÍÒÚÛÙıˆ˜¯˘˙ˇƒ\0\0\0\0\0\0\0\0	\nˇƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3Rbr—\n$4·%Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫¬√ƒ≈∆«»… “”‘’÷◊ÿŸ⁄‚„‰ÂÊÁËÈÍÚÛÙıˆ˜¯˘˙ˇ⁄\0\0\0?\0˝¸Ø5◊lœÉ˛÷Ô4ÕO‚∑√m;R”ß{[ªKØYC=¨®≈^7Fê2∫∞ ©\0Ç5ÈU¸€~›Ú{_øÏx÷øÙæz˜x{%ÜcRpúúyUÙ<˜7ûúgßwmOﬂo¯nèÇ_ÙXæˇ\0·Yaˇ\0«hˇ\0ÜË¯%ˇ\0Eã·_˛ñ¸vøõj+Î?‘JÛı˝»˘üı“ø¸˚_{?§ü¯nèÇ_ÙXæˇ\0·Yaˇ\0«imˇ\0nÇ◊S§Q|_¯]$≤0DDÒUÉ31‡\0<ﬁI5¸⁄“bó˙âC˛~øπ˝u≠ˇ\0>óﬁœÍtQ^ˇ\0«˝§·©?bﬂ¯Ü‚„Ì\ZÕç∑ˆ>ÆKnµ€b6vˇ\0jDÀˇ\0mE{ı~sâ°*eF{≈µ˜}F¥j”çXm$ö˘ÖQXöåñeÜ6weD@K3\0rkÀˇ\0·∫>	—b¯Wˇ\0Öeáˇ\0Ø5ˇ\0Çº˛“cˆk˝á¸Sskq‰k~*_¯GtÕß·XJ„∏)Ã¿ˆ`Ω2+æªá¯efe^¨úUÏ≠◊πÚ˘Ôº\rX—ß&’›ˇ\0˙Iˇ\0ÜË¯%ˇ\0Eã·_˛ñ¸vè¯nèÇ_ÙXæˇ\0·Yaˇ\0«k˘∂¢Ωˇ\0ıá¸˝r<?ı“ø¸˚_{?§ü¯nèÇ_ÙXæˇ\0·Yaˇ\0«j˜Ü?kÔÑæ7Ò¶ì¢¸Q¯u´Í∑Úml¨ºIgqqrÁ¢§i!fcËk˘®Øwˇ\0Çb¯ÿ¬˚ ˛µÜ\'ÇhR£:™´˜S{.àË¬Ò}jµ°I”Kô•ªÍÏDµ ¸L¯È‡üÇﬂbˇ\0ÑÀ∆>üˆóôˆ?ÌùZﬁ√Ì^^›˛_öÎønÙŒ3çÎû¢∫™¸±ˇ\0ÉóÜ·Jˇ\0‹sˇ\0q’Òô68‹d0“vRææâø–˙º€,&xà´µm=Z_©˜ﬂ¸7G¡/˙,_\nˇ\0¨∞ˇ\0„¥√t|ˇ\0¢≈Øˇ\0\nÀ˛;_Õµ˜_Í%˘˙˛‰|g˙È_˛}ØΩü“O¸7G¡/˙,_\nˇ\0¨∞ˇ\0„¥√t|ˇ\0¢≈Øˇ\0\nÀ˛;_Õµ®î?ÁÎ˚êÆïˇ\0Á⁄˚Ÿ˝$ˇ\0√t|ˇ\0¢≈Øˇ\0\nÀ˛;G¸7G¡/˙,_\nˇ\0¨∞ˇ\0„µ¸€QG˙âC˛~øπ˙È_˛}ØΩü“O¸7G¡/˙,_\nˇ\0¨∞ˇ\0„µn√ˆ«¯E™D$∂¯ß‚Ê6;CE‚[\'˙dI_Õ]&)>°“´˚ëQ„Z∑÷í˚Ÿ˝E¯k∆\ZOåÏ~’£Íöv≠lﬂ:ŒÂ\'è<ånBGP*—Õ.~Ò^©‡Ω^-CF‘µ\r&˛òÓlÆ	£>°–Ç?:˚èˆ!ˇ\0ÇÍ|@¯-ÆXËﬂnnº{·uäKπ∞⁄ΩÇgóYxÛÒúïîñ=út>^;Ç1‚ÁÜöù∫ZœÂ´O=<aÍ…Bº\\/÷˜_=¨~’QX_\r~%h<§¯ü√Zå\Z∂á≠€≠’ù‘$Ìï±‰AHH ÄAª_(∏∑+4}ri´†™öÊΩe·ù&‚ˇ\0Rºµ”ÏmSÃöÊÊUä(W˚ÃÃ@‹◊á˛ﬂø∑ˇ\0Öø`ØÖÒÍ∫≤j¯ãVﬂã¢«&…/ùqπŸ∞vDôõ®\0kÎˆÆ˝π>$~Ÿ~*{ˇ\0\Zk”Õbí¥—ÌY°”la9∆q¸mπœv<W—‰º5à«Øjﬂ,;˜Ù_Æ«ÖõÒ‰¯ßŸtı}?3ˆ?„G¸ªˆ}¯;q-¥~*πÒ}Ï$áÉ√∂mxøQ;ÅÅˇ\0fC¸´Áﬂˇ\0¡…˛\Z≤πq†|+◊5(A˘P÷b±fu	¿wÓzW‰∂(Øπ√n]M{ÈÀ’€Ú±Òµ¯ª7ÓZ>äˇ\0ùœ”iˇ\0‡Â}¶s¬}#,v+k≤3ÿ‰åü|•Iß¡ öÃWà◊	4…Ì∆w§> í\'<qÜ00„¯OıØÃLRÅäÏˇ\0U≤ø˘ı¯À¸ŒOıõ2ˇ\0üøÑ»˝jœ¸ü·´ß_ÌØÖzÌÇ„Ê6ZÃWÑpzä.¯¸œß>”√˛ª˚>¸D∫Xoµ¯BG·∂¥¶\nO°kvôWÍƒ:◊·X•≈rV‡‹∂k›N>è¸ÓuQ‚‹|º‘ΩW˘X˛ü~|Uœ≈ˇ\0.≠·Ohæ$”Ì˚Vôy‘A±ù•êêpyΩûk˘ì¯%Ò˜∆_≥óçaÒÇ|E©xwUÑå…k.u;%åÂ$Oˆ\\Ì_µüKÔ¯*ñì˚rho·ﬂEi†¸H”!Ûg¥àëm´D1ôÌ˜A¸—íJ‰HŒﬂåŒ¯V∂\n.µ\'œøuÎÂÊ}nQƒîqíˆS\\≥Ì—˙?”Û>¡¢ä+Â§\n˛mønè˘=Øå_ˆ<k_˙_=I5¸€~›Ú{_øÏx÷øÙæz˚Œ˛=_E˘ü∆ü¿ßÍˇ\0#À(¢ä˝0¸(¢ä\0˝ˇ\0Éw?i?¯D˛3xõ·ÖÙ‡Y¯∂◊˚WMV?vÚ›Oòä=^Xˇ\0◊∏Øÿ\n˛d~\0¸`‘?gÔçûÒÆôÛ^¯gRÜ˝S8*0/ˇ\0e”rf5˝,¯∆öwƒoÈ “\'ZVπg\r˝ú¿`K®ÒV˘_`=ñ*8ò≠&µı_-¯ü¶pé7⁄·]	o¯?¯7¸\rZ(Æs‚˜ƒ˝7‡∑¬øxªXpögÜ¥Èıèò)uâÏ\\Y±¥‰Åﬁæ6ríåwg’…§Æˆ? ø‡‡Ø⁄K˛OÌ;•|?≤ü~õ˛Àu ´≠}r©#ÙÎ∂!Á°2so|U¯è©|`¯ôØ¯ØXìÕ’<G®O©]0\'dÆ\\ÅË£8∞\0V\r~Òñ`ñ:˚+_^øâ¯∂eåx¨TÎæØONüÄQE‹pÖ{ø¸˛Rü˛∆?≠xE{ø¸˛Rü˛∆?≠qÊ?Óµ√/…ùπo˚›/ÒGÛGÙK_ñ?rÔ¸—_˚éÓ:øS´Ú«˛]ˇ\0ö+ˇ\0qœ˝«W‰º\'ˇ\0#Z_ˆ˜˛íœ”xü˛EïÌﬂ˝)ñ4QE~Ã~Jô•Ø⁄¯\'ü¸#‡_∆Oÿª·Ôâ¸K˛«U◊µù3œºª{Î¥iﬂÕqí©(Q¿\0È^Vmõ“ÀÈ™µìiªio^≠¶Uî‘«ŒTÈ¥¨Ø©¯øE@ˇ\0ÁœŸª˛â~õˇ\0ÉÔ˛=G¸9Ûˆnˇ\0¢_¶ˇ\0‡∆˚ˇ\0èWœˇ\0Ø8/‰ü‹øÃ˜‘ÃWÛ«Òˇ\0#˘¯ä˝È¯áˇ\0J˝ùºq·π¨¨¸q·´∑E¶jó\"x®Y]„o£!¸+Òèˆƒ˝ô5Oÿ˚ˆàÒÄuKÑæ}\"Uk[ƒMã{m\"áä]π;IFó\'k8Õ{O·s	8Q∫í÷œ∑ïõ<ú”!ƒ‡b™Ti≈Èu˙ûeIéihØtÒ—ø¯7Ûˆ…ªg≈ªœÉ⁄Ω—}≈I-˛å$b~…}\Zoí5ÏXëâﬁâqÀú˛ºÍz•æã¶‹^]ÕΩ≠§M4“»pë\"ÇYâÙ\0¯WÛ?˚6|@∏¯Q˚B¯ƒ∂ÆcõC◊lØA˘ÇNÖî„±\0Ç=	ØË˛\n≠\\xˆ¯µuj˛\\Î·[¯√˜P2=«±ØÃ8ª-äÃ) \Z{]≠“ø‚è“∏[)`gÎÏˆÙµÌ˘üÑ∑ÌU™˛ÿˇ\0¥óà|i®I(±ûcm§Z≥∂(HÜ ;|Õåe›Œq^Gä1Õ˙]\Z0•MR¶¨í≤?:ØZuj:µ€waZ˛¯}Ø|RÒEæâ·≠T◊ıã≤D6Z}´‹œ&9$\"p$ÙìY˙·ˇ\0‚ü¬¶ÒÿÉÏ_∞™øl∑Ì?ŸæT^NŒ˛_ùÁn«Òmœ◊üúf/Öñ!Gô´iÎﬂ»Ó 2ıçƒ™ó*ßc„ˇ\0¡ˇ\0hﬂÿGrﬁ\nµ“\"ïw ‘u{X§«∫	‘˚0è¶j¯˜˛¡˚FxNöÌºu{xyc•ÍV◊Ré—	<∆ˇ\0Ä©<WÔ©<—∂ø>\\qéÊø,m⁄œ¸œª|ÅÂµÂÎu˛GÚ„‚?\rÍ^◊nÙΩ_OΩ“µ;W6wê<€∏ÍÆå+{ö•_ªUœ¯&,ü∑oÜÙ=K¬M·›«ö=»Öı\rI§Ü+À≠∫x£v%_k&TÅónØå¥ü¯7#‚º¬?∑x€·Ì∂sÊyﬁM∑”†LˆÙØØ¿Ò^µR¥‘%’+å·åe:ŒùÛ«£—~ªüûï“|¯≥≠|	¯ß†¯√√∑-i¨¯vÚ;ÀY;ßîa›r¨:bZ˝—ˇ\0‡€?Œ´˝°ÒK@µ%¬ﬂHö|\'ç“&O^8˙◊Qaˇ\0”ŸFçˆØåWS6~SÖ÷ ænõ?•iWä2ñú\'RÈ˘I˛ÑR·º—IJ4Ï÷∑ºÃ˝¯)ÒZ√„è¬¯«K∞Ò6ôo©Dõ√Ñ±á1í?âI*}‘—X≤WÏÒÏß˚=¯{·˝æØuØ[xqfé+€àÑR ≤O$†Å∑Ã⁄1ŸE¯˛!SUd©;∆Óﬁó–˝RãìÑ]EiY_◊©È¸€~›Ú{_øÏx÷øÙæz˛ík˘∂˝∫?‰ˆæ1ÿÒ≠È|ıˆ‹	¸zæãÛ>7ç?ÅO’˛GñQE˙a˘·wGÌÊø¸ñê¥À¶€ÀÄΩR ÍÖ±ﬂ◊>É\'†5Jæ´ˇ\0Ç6¸;”æ/~ÿìxWVC&ô‚?Í˙m–ÊÚÊµdb3‹»=àÛó≈oá:è¡Ôâæ ¶Øó©¯sQüMπ \"ê°#ÿ„ ˜\Z‰Ü*2ƒK’$˛NÎÙ¸N òG41+i6æk¸ˇ\0C˚iˇ\0\r˝§ø·n˛»ì¯:ˆ3W¯q{ˆ0ﬁk˜KnƒÁú0ù,K_âuıü¸oˆíˇ\0Ü{˝∏ÙK©¸≠«kˇ\0Â‡\'ÂY%e6œéô¨kì—dzÚ¯õı¨‚óΩy|ø‡\\Ù∏sıltnÙó∫˛{~6?zkÛ„˛˝§ˇ\0·^~Œ\Z/√ªÄöèè/<˚≈W˘ñ∆’ï»#®ﬂ1á∏ç«<„Ù<◊ÛÌˇ\0g˝§«Ì5˚px≥P∂π\Z\'á\\xJ(€ê¡nÃ‘é™Û4Œ£ä¸˚ÑpX«™í^Ï=ÔüO«_ë˜<Oç˙æ\nQ[œOÛ¸?3ÊÃQöZÙ?Ÿ/‡E◊Ì7˚Ix7¿ñ¢@<C©GÀ∆2–[/œq(ÏB≤7¸ø]´R4‡ÍOdÆ˝˘e*r©5N∑eÛ8ç√◊æ‘÷˛∂∏h!π„Àö$ö6ˇ\0Å#©¸jù}	ˇ\0V—≠|=ˇ\0¯èßÿ¡≠ïÖ›ΩΩº1å$1•ú\n™†\0_=÷xZﬁ⁄Ñ*⁄‹…?Ω\\”EQØ:KÏ∂æÁ`Øwˇ\0Çb @~ˇ\0ÿ¡ıØØwˇ\0Çb @~ˇ\0ÿ¡ı¨≥˜Zø·ó‰Õrﬂ˜∫_‚èÊèËñø,‡Âﬂ˘¢ø˜ˇ\0‹u~ßWÂè¸ªˇ\04W˛„ü˚éØ…xO˛F¥øÌÔ˝%ü¶Ò?¸ã*ˇ\0€ø˙R?,h¢ä˝ò¸î+˙ˇ\0ÇS¯◊è¬Ø˚ˇ\0Ìi+˘Á´÷ﬁ&‘¨†X°‘o¢çwU_†º<˚&yç“SÂ≥æ◊Ë◊t{yn∞%Q«öÍ€ÿ˛£®ØÂ”˛_˛Ç∫ó˛ø¯—ˇ\0	éØˇ\0A]Kˇ\0_¸kÂ‘)œˇ\0¸óˇ\0∂>ó˝uá¸˙¸˙n¯ÅÒ3√ø\n<;6Ø‚msJ–4ªufíÍ˛È-‚\0ûXåúv◊‡¸ˆ¶“økﬂ€ƒ>*–?ám¢áK“ÊxÃos+è8Ç‹ª(`VP@#¿ØıçRa%’ƒ˜2¥4≤`=2{r:Énkﬂ»∏fû]Q÷sÊìV⁄…~,Ò3û#û:ö£r∆˜ﬁÌ˛Z(¢æú˘££¯7·{ü|^¶âdç%Ê±¨ZY@®ªôûY—‹Âá˝%|~¯dü\Z~x«¬bìË∑öZºÉ+M∆ØﬂÓ≥û†ÄkÒœ˛Q˚#]¸o˝©·ÒÂ˝´ˇ\0¬/‰ãø5ó‰π‘H∑àÂ2f8Œ<¥Ôä˝∫≈~c∆∏‰ÒtÈSz”WÙnœÙ_y˙G‡‹pì©5§ﬂ‡¥ˇ\03˘pÒáÔ|%‚˝\'R∂ñœQ”.d¥∫∑ïvº∆≈v!Å{U:˝kˇ\0Ç≈ˇ\0¡%u_ä˛$º¯ØªMk˝nÂCk˙∫˛˙˘îcÌP/ÒIÄ∆9|nb¿˛L^ZMß^Koq∞Oò‰äE*Ò∞8*¿Ú Ç\r}ﬁSöQ«–UiΩzÆ©ˇ\0[w>+4À*‡´:sZt}◊˘˜#≠?¯◊Y¯w‚;]c@’µ-V≤mˆ˜∂/o<\'’]a¯\ZÃ¢Ω&ìVgõ8ªßf}ôS˛πÒ„·E¥∫≠˛á„ã(@@5´,\\ˇ\0Æ–òŸõ˝©7ûyÕ}?≥˛FÕˇ\0ïç~ÎzY\\h∑Ò_>¢9D%G∂ˆ˙ö¸î£·‚xk-Ø¨©$¸¥¸¥=¨?ftU.ºı¸^øâ˚Á√˛?˚<|Mé5>7>∫rŸı´≠J˝d⁄—„ıÙGÄ~,¯W‚≠ì\\¯_ƒæÒ%≤ÄL∫V£\r‚\0ze£f¸¬b¨iZΩﬁÖ®Ewcuqeu	›–Hcí3ÍExXé√ÀZ}lˇ\0»ˆ®q•e¸ji˙6øÃ˛§˙ö\\W‡/Ï˘ˇ\0ã¯ÒÊˇ\0·.õ∆\ZLLÿxê„¿úë:Ò–	08‡ÙØ’?¯\'ﬂ¸k¿ˇ\0∑LcE7Öºyo	ñmÊPÈt™>w∂óÃQ‘©¿…¡\0µ|¶i√Ã]Fî†∫Æû´–˙lªàpò…*q|≤Ïˇ\0Nü©ı8¢ì>ú—_8{¬◊Ûm˚t…Ì|bˇ\0±„Zˇ\0“˘Î˙IØÊ€ˆËˇ\0ì⁄¯≈ˇ\0c∆µˇ\0•Û◊ﬁp\'ÒÍ˙/Ã¯û4˛?W˘YEWÈáÁáŸ_A±ˇ\0—Ï®ËöÎ?‡‡oŸƒ¸2˝™4ﬂY[àÙœàV!¶ePo≠ÇG/Nõ¢06O,Kûpkîˇ\0Ç\rˇ\0 C¥_˚Í˙&øHø‡≥≥à˝°?aèMkn&÷º√ƒv%T+\n∞∏L„804ß´\"zW¬Ê8Ô™Ò9=•Ûoı±˜÷r)¡-SmzØÛWG‡ïIgw.üyƒ<3¿‚H‰F⁄—∞9–ÉŒj,ÛK_t|:gÓœèˇ\0‡£6Òˇ\0¡%ˇ\0·r[]Gàµçi∂Îhµó&ŸˆÅ”ÀîI.8 Gë‘W·;±ëÀ1,ÃrI9$◊]wÒœƒWm>=ÎYkrÎÈm…Õ”¬êÁËN\0Ô#ûı»Wãìd¿*ä?jM¸∫/ëÌg9¥±Œõf*˛ΩXWÈá¸°˚9\rk«æ1¯•}m∫\r°iNÀëˆâq%√©Ï…ç~ó\r_ô˘ØËü˛	µ˚8Ÿgˆ4_ÖÓ-˛œ¨Kh5=\\√˝≤„˜≤#s÷0V/§Bºﬁ1«{≤ã÷£∑Àw˛_3ªÑ^€Ì^–W˘ΩÍ˛G„/¸ø˛R3ÒK˛¬0ˇ\0È,5Ûï}ˇ\0oˇ\0îå¸Rˇ\0∞å?˙K\r|Â^ˆW˛ÂG¸1¸ë‚ÊüÔµø≈/ÕÖ{ø¸˛Rü˛∆?≠xE{ø¸˛Rü˛∆?≠Vc˛ÎW¸2¸ò≤ﬂ˜∫_‚èÊèËñø,‡Âﬂ˘¢ø˜ˇ\0‹u~ßWÂè¸ªˇ\04W˛„ü˚éØ…xO˛F¥øÌÔ˝%ü¶Ò?¸ã*ˇ\0€ø˙R?,h¢ä˝ò¸î(Õ˙ª˚ˇ\0¡˛~—?≤Ç<mØ^¯÷-cƒZ⁄nñ”QÜ8˘éø*¥,@¬é§◊õôÊ¥0’J˜≥v—\\Ùr‹Æ∂:nmtØ©˘EIûkˆ”˛!Î¯ˇ\0Aà_¯5Éˇ\0ëÎÚœˆ¸˝êÔˇ\0bü⁄_Zl∆‚} ü∂Ëóì∫ˆ∆B|∂$\0©\r‡æ6¿¡ÕñÒQ“†ﬂ2W’XÈÃrV\nö´VÕ^⁄?ÃÒä(¢Ω≥≈-ËZˇ\0ä5H¨tÀ+ΩFˆsàÌÌai•ê˙*®$˛ˆGÏwˇ\0B¯´˚Akv◊æ3∞ª¯o·E`”À©√≥S∏^È´a’ø⁄î(»\rçµÚ˜ÏÛÒ◊]˝ö>3h7‹˛N´†],Ë¨ƒGrù$ÜLJHÖëá£ı˝\Z~Œﬂ¥⁄o‡∆Å„è\rœÊÈzı∞ôP∞2[H>Y!|ttp }◊é1_%≈9æ3˝^+ñZsogÈ∑¶˝O™·¨´	åîùf‹£ˆz5˘˙¸Ö˝ügﬂ\n˛Ã?\n¥œ¯;MM;F”åù”\\»~¸“ø‰s…cÏ\0\0\0;Z+;TÒÜì°‹à/uM:Œb°ºπÓR6 ˜¡9≈~Q9N§‹§ÓﬁÁÈêåc´$h‚ºCˆúˇ\0Çt¸ ˝Æ\Z[üxF—µ©X∞cg®pHòÛ08P‡vË~–>∑ï„xE2UïµãpTé†ç¸\Z•˚R¸2“¶›|E%¥å7ó_¥F#◊Nú\Zﬂı™3S£Õ›]Vç\Zë‰™ì]ùèŒøåˇ\0mŸÛ¶ü·Áƒuí|´YÚ£∂Îà:˛èÈ_2¸Nˇ\0Ç%˛—\r⁄gá¬6~&µÑú‹h∫î3á˜X‹§«˛˝◊Ì1˝Æ˛â\"CÒ?·Ê˘§X£_¯HÏÛ#±¬®g$û\0Ík–Ú+ËËÒniá≤´iâ[Ú±‡÷·å∫≥nó¸/¸Ó2ﬂˇ\0g_à§eÒWÇ|W·–†∂ÌGJûŸ·ô@#‹W∫ø©‹\nÚÔâ±7¬å0Hû#¯m‡›I‰97Kä+ëû∏ô»3Ï‹◊±á„≈µz?s˝˘ûE~\nÎFØﬁøU˛GÛgöZ˝Nˇ\0Çóˇ\0¡º#Ô‡ÊøÒ·CÍ\ZKxj⁄MGQ–n.\ZÊ⁄KX∆È^	ôë9Œ)∆“,kÏrÃ”è•Ìh?&ûË˘<«,≠Ç©ÏÎuŸ≠òõkO¡ﬁ0’>xØO◊4K˚ù/W“nÍŒÓ› Ko*´)ı≥hØA§’ô¿§”∫‹˛çø`?⁄ö€ˆX«çä≈´q	¥’·åaaΩàÏó≤±E·dQúÊä˘˛\røÒ%Õ◊Ïˇ\0ÒJv&“«ƒ]D§˝◊ñ›Uˇ\0HRä¸3:¬G\ré´F\'ß£◊ı?h ±ƒa)÷ûÌkÍ~èWÛm˚t…Ì|bˇ\0±„Zˇ\0“˘Î˙IØÊ€ˆËˇ\0ì⁄¯≈ˇ\0c∆µˇ\0•Û◊‘p\'ÒÍ˙/Ã˘û4˛?W˘YEWÈáÁáŸAø˘Hvãˇ\0`}Cˇ\0D◊Ó]˝Ñ\Z•åˆ◊1G=ΩÃm±»°ñDaÇ§wbø\r?‡ÉÚêÌ˛¿˙á˛âØ›\Z¸üçø‰`ø¬ø6~°¬?ÓˆÛ˝ÊøˆÃ¯?ÏΩ˚Px”¿“´àt=I÷Õü¨∂íb[wÍy0∫œ#µyù~ûˇ\0¡∆ü≥ê±ÒÇ~*ÿ€‚;ÙoÍŒ™\0¶È≠ò˙≥!ùIÏ\"Aûï˘Ö_¢d∏Ô≠‡©◊{µØ™—üú‡æ´åù%µÓΩ´¸ÉQEzáò}ˇ\0π˝ú«Ì9˚m¯3Bπ∑˚Fè¶‹ˇ\0mj FSÏ∂ƒHQøŸíO.#ˇ\0]k˙\Z⁄+Ûw˛\r÷˝úœÜ>x≥‚uıæ€Ø›\r\'Lvins+/bØ3m>ˆﬂüÈ~E∆ˇ\0¨c›8Ìoü_Ú˘™∂ÿ`îﬁÛ◊Â”◊Ê>Vˇ\0˘Hœ≈/˚√ˇ\0§∞◊ŒUÙo¸ø˛R3ÒK˛¬0ˇ\0È,5Ûï~üïˇ\0πQˇ\0$~qöæ÷ˇ\0ø6Óˇ\0LO˘H¬˚ ˛µ·Óˇ\0LO˘H¬˚ ˛µYè˚≠_ÀÚbÀﬁÈä?ö?¢Z¸±ˇ\0ÉóÊäˇ\0‹sˇ\0q’˙ù_ñ?rÔ¸—_˚éÓ:ø%·?˘\Z“ˇ\0∑øÙñ~õƒˇ\0Ú,´ˇ\0nˇ\0ÈH¸±¢ä+ˆcÚPØËg˛	Mˇ\0(Ò¯Uˇ\0`˝≠%<’˝ˇ\0¡)øÂ?\nøÏˇ\0µ§Øâ„Ø˜:‚˝ˆ\\˛ÒS¸?©Ù|{ˇ\0ô˝âø·´øf9ı≠\ZœŒÒßÄVMKOÆdΩ∂¿7√íUC®‰óçTcyØ∞©1_õ‡±u0µ„^ûÒ“˘ü}ä√CFTjm%c˘cœµıœ¸Gˆ&ˇ\0ÜJ˝ßÓ5M—`Wé⁄MOKÆ#≥ü ‹ZÄ8É(%@3¥„‰j˝◊ãßâ°\ZÙ∂íø¸ñ«„Ã,’•B¶Ò”˘â∂æ˚ˇ\0Ç~›ø£>2?√ﬁØéÓi“JÁfù©ëµ1ÿ,‡,g˝µã†‹k‡Zt2Ω¥…$n—…¨ßH‰{\Zå√Oáñ¶œ}»ºø<%x◊ß”Ò]Q˝Mö¸}ˇ\0Éé~œ£|~7ç∂:ˆà˙S»9{YôŒ{ÇRÂ\0ıq–◊€?IO€°?mŸ∫’ÆñO¯<GßÎä«Á∫syˇ\0mU[w˝4I8muøRÿﬁ€kˆ`’º-ëà¨XjZ\rƒ∏+∏¡¬1Ïí)h…Ë7Ü¡⁄~MïUñUö®‚4≥Â~èØ¶œ–˝C2•À.nÜº Î’t˝Á{∏≠xKTä/ÙMj¬ÎK’¥πﬁ⁄Ó“Ê3÷Ú)√#)‰k>ødM5t~I(¥Ï˜\'h$WFdt;ïî‡ÉÍ+ˆk˛	˜ˇ\0¡G≈_i~¯Ø©¡·YBñÔ™›ùön∞T\0%2˝ÿ$8%ÉÌLÚ≠Œ≈¸d£ÂÊŸ=¬öÖm÷ÕnèO+Õ´‡fÁKT˜OfQÒ∂ç„Ω-o¥=[L÷lúen,ní‚&˙2*÷Ø¨⁄h\Zl◊ó˜V÷Vñ„t≥œ\"«c8…f8Î_Àç•‹÷4À©ùØe»«{\ZìP’Óımüj∫ππÚÛ∑Õêæ‹ı∆ztï|ã‡%Õ•}?√ˇ\0€R∏Ÿ[Z:ˇ\0ã˛˚ˇ\0lˇ\0Ç∞x√øºI€¿\Z÷ü‚œxÆ“]*˙ÎOïn,tªYWd˘ïríJ»Y°;Kƒ\nﬂéTò•ØØ rö9}eK[Í€ÍœïÕsZ∏Íæ÷¢µ¥It\n(Øf˝Öc˛‹¨|+§$ñ⁄TnuΩOnSL¥?<ïE˛&=î1ıÎ¬ç7V£¥V≠ú4(NµEJöª{™@?Ñ3¸<˝à%◊n‡1O„]n„QÑ∑≠£T∑N=7≈)°álQ_gx¡:g√_È>—mR«H–Ï‚∞≤∑Oª1†D_¡@Êä¸\'1≈ºV&xáˆù˛]?ˆúa†æ H’ØÊ€ˆË?ÒõøÏx÷øÙæz˛ík\\üÜ,†∫‘u-3AÜ$›5≈ÕÕºJ´›ù›á§ì^üÁK.©9∏ss+oo—û~uìˇ\0hB0ÁÂÂw⁄ˇ\0™?ò*+˙ÒÌì˚4¯fèQÒœ¬±\"}‰∂∏µªuÁ+b∑QY⁄\'ÌÈ˚.¯Ç„ É«_\r#lÅõïéŸy8˚“\"èØ<w≈}í‚‹C\\À	+|ˇ\0˘Â\nPNœæÂˇ\0…óﬂA≥è¯(vãˇ\0`}Cˇ\0D◊Óïq<gÁ«≥5◊Çu_ÎRDõömÊ÷Âë-	8äÌ≥_üÊoâˆŒñIY¸¸ósÏ2lΩ`˛≈KõVÔkoÛgãˇ\0¡Bˇ\0ga˚R~«ﬁ6å0y⁄úˆ&˜K\nªõÌê6_BÏõ≥ö˛sLnUÅVSÇP}+˙õŒkæxyÿì†ËƒìíMîG?¯Ìwd<JÚÍr•(s&ÓµµªÙ~Gw√Ò«Œ5˘ZV⁄˜Ì’m©¸æUœ\rËû.Ò\rÜïß@˜7˙ùÃvñ–†ÀK,å{ñ WÙÌˇ\0\nﬂ√øÙ\0—/˛&ümˇ\0A≤πéhtM&)¢`ËÈg\Z≤092=Î›|{iGˇ\0&ˇ\0Äx´Çu÷∑˛Kˇ\0€ÁÏ—NÀˆq¯·X⁄\riëYºà0.&3K€óîªû:ΩwTbêö¸Ú•INnswoV}‘ £ÏèÁ√˛\nﬁ„cˇ\0Ï#˛í√_9◊ı‡}Tª{ã≠Kπû^^Im#wsÓH…ˇ\0ÎT_≠¸;ˇ\0@\rˇ\0\0bˇ\0‚kÔ0ºm\Z4!Gÿﬂï%ÒvVÏ|f+É˝µi÷ˆ÷Êm¸=›˚üÀÌ{∑¸ˇ\0∆¿~ˇ\0ÿ¡ıØË3˛øáË¢ˇ\0‡_¸MKg‡MN∫é{}J∑û#π$é“4t>†ÅëUâ„à’•*^∆‹…Øã∫ÙÉ˝ïhUˆ◊Âi¸=ùˇ\0ò’ØÀ¯9tÛW˛„ü˚éØ‘‚pjñØ·Õ;ƒ&/∑ÿY_y9Ú˛—À≥8Œ7å‡~UÚF=`±pƒ∏ÛrﬂM∑M~ß”ÊxÆa•áΩπ≠≠Ø≥OÀ±¸∏—_‘¸+èˇ\0–Eˇ\0¿ø¯ö_¯V˛ˇ\0†ãˇ\0Ä1Ò5ˆøÎÏÁ«˛Mˇ\0\0˘/ı%ˇ\0œÔ¸óˇ\0∂?ó⁄˛Ü?‡î«˛5„´˛¿ˇ\0˚ZJˆü¯Wœ¸Ä4_¸ãˇ\0â≠k+4€TÇﬁ≠‡àmH„PàÉ–¿Ø>‚Uò—ç%OñŒ˚ﬂ£]ëÏ‰º?˝üRUNk´mo’í—HN)kÂO£<7˛\n˚ Ÿ˛⁄ﬂ≥∑·\"∞¶ªnø⁄\Z\r‘ÉfæåÄûÀ -p≤Ç@ØÁ{\\—o<5≠ﬁi∫Ö¥÷w˙|Ômso*ïí	Qä∫0ÏCı˝Iu¨´øhW˜RO>ã§Õ4¨Y‰í“6g\'©$åì_SêÒ4ÚÍr£(ÛEÍµµü^èsÁsÆÜ>q®•À%£“˜_z?óö+˙Çˇ\0Öq·”ˇ\00\rˇ\0\0bˇ\0‚hˇ\0Öo·ﬂ˙\0hø¯ˇ\0^˜˙˚˘Òˇ\0ì¿<_ı%ˇ\0œÔ¸óˇ\0∂?û/ÿ+ˆæ‘ˇ\0b⁄?FÒçòö„K\'Ïz›ä7¸Xπb„¶ı¿tœ—s¡ ˇ\0Dû\rÒ~ôÒ¬ZfΩ¢ﬁ√®È\ZÕ¨w∂WQc∏ÜEé=äêyÊ´ˇ\0¬∑È9˛¡—\n/˛&πœ~—ﬂæFl¸C„x[Ï√“ÛU∂µëxŒ’à∞b}ÄÕ|ﬁwöC4©“§„5£≥Ω◊›–˙£-ñ]NPù^hÓÆ≠o≈Óx_¸O˛	?·€ñÿÎñSE·OàÒlèVä\0–Í*;§/Å¿êÍ1˜îØ»/⁄c˛	›Ò{ˆNº∏>+Ö˚i01¨È»o4Ÿ8o5…ú	7+ˆæÔ˛\nü˚=X‹<OÒ[¬Â£8&7íE?FT ˛∫Ô˛€ü~#Œ∞Ëü<pÌ±-”[∑YÿÒ“6`‰r9»Æ‹≥:Õ2¯(NõîFö∑£∑˘úôéOó„ßœ®ÕıMkÍ∫˛˛msIö˛ê~\'˛¬>5K%«àæ\Zx?Pπ∏ÀIyûñ˜2Áπö ≤˚ÍºÉƒˇ\0C_Ÿ«ƒ.Ìo·SG.1˛ÖÆ]êI‹≤8∂:`p}9¡µ˚»I?ì˝W‰|ı^ƒß˚π≈Ø;Ø—üÉ‘ôØ‹_¯pOÏˇ\0ˇ\0>ﬁ0ˇ\0¡œˇ\0aVtﬂ¯ ßÏıc34∫WâÔTåõZê˜üÃ◊G˙Îóvó‹øÃ«˝N«4~˜˛G·éqZû´„}j7E”5\rcQ∏8ä÷ ›Ó\'î˙* ,_øﬁˇ\0ÇF~Œ~ô$¥¯]£‹2ˇ\0ß›]_©>Î<ÆÂ^„‡/Ö~¯Wß5üÖ¸9†¯n—±ò4Ω>+8Œ:|±™é+Üø–K˜4õ~m/ Á]™ﬂÔ™%Ëõ¸Ï~3~»øB_ä?Ø≠5!¯s·¶!›nîI™‹\'uH3˚¢yî©^ª•~ª~Õ?≤ÔÇˇ\0düÜñ˛FíönüO+ù˜7Ú‡4“uw8ˆ\0p°@\0z)7W∆Êπˆ/ÌU⁄=ñﬂ~g÷Âπ6ørΩÓÔ¯!h¢äÒOTÛ/⁄ˇ\0ˆ¢—?cøÄ\ZÔéı≈7Èà#≥≥W	&£tˇ\0,P)Áõíÿ;UY∞v‚ø?jü€k‚/Ìâ„çO∆~ ªπ≥iK⁄ÈH—i⁄z‰ÌX·n@„{e€±Ø”ﬂ¯8 «P∏˝íº4	3ixÆ3u∞¸à∆“‰FXﬂ`Äúw¸i≈~£¡y}Ö˙€Wõm_≤]˘◊cÎ}aaS¥RO÷˝…l¨f‘Æíxd∏öCÖé4.ÕﬂÄ95g]æß·y÷-ONø”•~U.†xYá∞`3‘~u˜7¸£˛\n´ˆ5≥Ò&ï„Õ.ÎN‘u€ƒö[Yõ£˝ûE\\»®∑9˚´_§˙èÌ\'˚:˛€øo|-s„è¯ìL÷‚hZ¬Úˆ(.îï*$éˆ»í.rÆ*yﬂôq#	àpxy8/µ˝+|Ø˜ôvACAN5“õ˚=ºû∑˘€Ô?üxãPéµm©iW˜∫f£f‚[{´I⁄‡q—ë‘ÜR=AØ◊ˇ\0¯#¸Z˝§5	~¸Dª˚ä¨m\ZÎH’ﬂ]VÒæøΩ2/Ã´®bﬂ2íˆ4?¯7?·í^Û∆üØ@\Z&∂π≤ÖqÎÕªÁ<t«„^≠˚8¡\Z~~Àüto¯n˜∆íÎ∫H÷¶ÛSç¢„xõr§HH(ÏŒ9È^.yûÂ8‹<©ªπ[›vŸˇ\0ós÷…rlœàS∫QÍØ∫ˇ\05–˘O˛@÷Ø4üà_\n÷÷ÓÍÿ>ù®J…ª˜∞u¡ØÕ?¯Lu˙\nÍ_¯ˇ\0„_§r¸îOÖ?ˆ‘?Ùl˘ó_E¬Ò_Ÿt¥Ôˇ\0•3¡‚ZíYïDüo˝%\Z?òÍˇ\0Ù‘%ˇ\0∆è¯Lu˙\nÍ_¯ˇ\0„_©?Gˇ\0Ÿ‡g∆oÿÓ\rk‚Ü|+™xÅµã∏˜˜&9åJS`∆Ò¿…«ı/¸;øˆVˇ\0°\'¿?¯¯Ìqb¯Ø\rá≠*•&‚Ì¢_Êw·xc^åkF™JI>ΩO¡¯Lu˙\nÍ_¯ˇ\0„^Èˇ\0ÃÒFßw˚}|)ä]F˙Xü_Ñ2Ω√≤∞Á®&ø^ø·›ˇ\0≤∑˝	>ˇ\0¿„ˇ\0«k¢¯U˚˛œæ\rÒ≈Üø·xN\rwDî\\⁄‹Ÿ\\4≤⁄∏Ë‡yÑƒWüã„-J¶©I]5≤ÍΩNÏ/b©VÖIUMEß◊£?=?‡‚≠r˜J˝™|ñ∑óV»ﬁBV)Y?lπÁÉ_ü_òÍˇ\0Ù‘ø%ˇ\0∆æ˚ˇ\0Éé‰Î|ˇ\0böÈeÕ~y◊–‰Wˆm:~¨˘˛!©5ò’Iı_í4·2’ˇ\0Ë+®ˇ\0‡Kˇ\0ç∆Z∏ˇ\0ò¶£ˇ\0Å/˛5˚ˇ\0¶ˇ\0Ç~¸\Z¯›˚¯≈+¯¢kz˛ß˝°ˆ´€É\'ô?ó®›Dô√¬\"ØNã_A]ˇ\0¡\'?g[€vâ˛Ë\n≠‘«-ƒm◊≥,ÄèŒº¨O`ËVùSï‚⁄{tvÓzx~≈÷£\Z—™Ω‰ü^™Á‡6ìÒ/ƒ~æ[õkvW	ç≤€ﬂKÆ#X†¿W‹?MÔ¯-ç>|G“º-ÒS_∫ÒGÅıIí’µ-EÃ◊⁄#1\0Lf9yb¸ÍÂà©*ﬂ9¡G~¯Oˆs˝≥|k‡Ô‹<ﬁ“\'ÑAŒgk7x#íKs!Âº∑f^I \0ñ◊àWΩ[	ÖÃ0…‘ÜíWZjÆøxtÒò¨%®œXª=tvë˜è¸gˆ’~˛’I„\r*ÁP∑ÁƒhM‡LÎΩ¸aVÊ1É¸YI{d ‡pº|Aˇ\0	éØˇ\0A]Kˇ\0_¸kˆ”ˆÉ˝ö.?m¯#◊É-åM{„\r?¡zGàÙ∑⁄ZiØ#∞çﬁ!‹ôë§å˝ÁRzW·»9Ø;ÜqäæÿœYS|ØÂ≥˚ø#–‚<<®‚}¥Q®πóØU˙¸œﬂ¯#_Ì<ﬂ¥üÏM°G}p\'ÒÇõ˛˝@≥e›bPmÂ9‰ÓÄ∆ºË˛¯˙≥5¯ãˇ\0˝¶?·M~◊Ø·È¸≠‚EØÿ0[ó—níŸè‘bπô}+ı≥ˆ ˝°Ìe_Ÿó∆:ù°3Ë∂lbóÓ‹^?ÓÌ„#©VL„¯w’˘ˇ\0eR£ô:4ñìi«Á”Ôπ˜c\ZÿZ£÷*“˘u˚µ?\"?‡∑üµ≠Á∆/€6˚√∫FßsáÓ#£F∞L»í]Áu€úº$ƒG˛∏\n¯Î˛_˛Ç∫è˛ø¯’m_Uπ◊µ[õÎ…§πªΩïÁûg9idbYòüRI?ç}ˇ\0ú˝îGÌe˚d¯Oæ∂3¯o√G˚wY ÂYJBﬁ¢ILhG]¨‰tØ‘i”°ó`Ró√N:˘€ıoÛ?8ùj¯¸o∫›ÊÙÚ_ˆèƒ/Ÿ€P˝ñ‡Å^(èPöÚ?xêiöÓ©#Ã∆X$üR±Ú·›’vB#Rπ¿0éµ˘Uˇ\0	éØˇ\0A]Kˇ\0_¸k˜ì˛X?„Y_ˇ\0Óˇ\0ß[:¸\nØÑkÀÜ´^¶Ú®ﬂ·’‚®{E:T€IA/≈ü¢ﬂnÆπ{™˛’>5K´À´î_\n9,¨‡∂[s…Ø’Øéº5˚:¸0’|a‚ÌJ-/B—‚Û&ïπg$·cEÍŒÃB™éI5˘7ˇ\0„…÷¯€˛≈7ˇ\0“Àjü˛˝ßØ|_ÒﬂG¯Ygq\"hæµèQ‘!V¿û˙u‹Öáq6˙ü‘WÖöÂ^œ~Ø≤≤o—/Èﬁ[ô}O%UﬁÆÌ/[ûQ˚mˇ\0¡d>\'˛’\ZÕÓù†j7æArêi⁄lÊ+ª®Û√\\Œ∏v$uE\">ÿln?!…+O#;≥;π‹Ã«$ì‹öLWÈw¸õ˛	O·ØçﬁOäø4„´È7WÅ£ ≈mÓñ&(˜3ÀØò¨™Ñ‡Ïb¡ÅZ˚\ZıpYFùGñ+K-€˝_©ÚT)„3lO+ïﬁ˜{%˙|èÕÒGz˛¢<7‡]¡∫“¥çJ“¥∞ªùù§p@∆≈qé1ä˘˛\nEˇ\0êwÌ=ﬂQ÷<\r·Ì#√ül£Û¨Ê±ç,‡’»90\\(0»Y[n[nE|˛é(T™©÷¶‡ü[ﬂÔ—i˜ûﬁ\'Éj¬ìù*úÕtµæÌY˘E˚\'¡D~*~«Z’≥x[ƒwW\ZR6É®;\\i∑úïì˚¢øV˜«˚ù˚˛ÿﬁ˝∑æŸ¯«√Í÷s˚.©¶ ·Ê”.î—í>ÚêC+`nV\0ÂGÂè√ø¯7£„Wä%◊5o¯b3˜¢ö˙[´Öˇ\0Ä≈Cˇ\0+Ô_¯&á¸˚˛	Ò™xÜÓOà3x¢/€E∆üóˆ;h•çâIA2πfùsÖ»~úW÷ qùJ3^’v[˜ªJﬂ3–·∫Y•	ÚWãˆoªZz+ﬂ‰~2~”û,’a˝§˛!\"jzÇ¢¯óQE√Ä⁄§„≠p«∆:∏ˇ\0òÆ£ˇ\0Å/˛5‘˛‘?Úrˇ\0?Ïf‘øÙ™J¿¯eam™|H˝µ‰i-•∆•mËˇ\0uë•P¿˚M}ıF-ÆãÚ>&¥Á,D¢§ıì¸ øòÍˇ\0Ù‘ø%ˇ\0∆è¯Lu˙\nÍ_¯ˇ\0„_Ω£˛	ﬂ˚+c˛Dü‡qˇ\0„¥øÓˇ\0Ÿ[˛Ñü\0ˇ\0‡qˇ\0„µÚÎ¶˛}KÓ_Ê}O˙£ãˇ\0üÀÒ?·1’ˇ\0Ë+©‡Kˇ\0ç~≥ˇ\0¡∏öΩ÷≠ü‚c]]\\\\î’Ìôd.W˜/”&æáˇ\0áw˛ ﬂÙ$¯ˇ\0èˇ\0Ø]˝üøg?áü≥÷Öy√øÈZü¨H∑`vxÓYAUlñ9¿$q^>yƒÿ|fXzt‰õ∂≠.é˝œO\'·ÏF´T®öIÈ©ËQE|!ıÁ˚B¸ÔÌ7ZOä≠ZÁF◊!Ú‰(@ñ›¡‹ìFƒ≤#\0¿‡åéAÒãˆüˇ\0Ç|g¯¨ﬁO·ù,|D⁄1h.Ùí>⁄\'hí‘ü3~:àº≈˜Ì_°ˇ\0∑Á¸ÀL˝Ç˛.Z¯GQ&≠Øœ•E™€]C®Go®ÚKﬁUà!¢lÒ‹qÇ\rx!ˇ\0ÉîÙÉˇ\04èRˇ\0¬â?˘æ”!ÜuÜßÌ0î˘©À[6≠Î∫k˙πÚô‘≤úD˝û*|≥éóW∫ÚŸ£ÚÁ∆ˇ\0\r¸C”U{Ë\Z◊áÔ£mço©XÀi*ëÿ¨ä?ÖbÊø£/Ÿˆπ7ÌıF€Y”◊Kñy„€´¯zÊhÓß”$‹AIPÅπN2ÆTc∏_¥¸ìˆy¯Ö·MNˇ\0≈>óá≠‡∑y.5{MÌLÕ$[ïÎôAWπ4TÍ:8∫2NŒŒˇ\0Üüô„œÉ˘‡™·´&û™Íﬂäø‰~|\'˝•æ!|\nΩY¸„OxpÆ3é°,P»Œ\Z0v8œfWÍw¸{˛´~“^:∂¯kÒ<Xü^∆Ì§kpF∂Î©∫)vÇXîYvÜ*…µ[vÜ∆Ô»øYi˙gãuKm\"ÓMCJ∑ºö++ßMçsπ»W±e\0„∂k”‡üñ◊ó_∑G¬∞¥„∆\Zc∞èØî∑Q¥øáñ>ŸØs9 ∞∏¨4ÂR+ô&”µö“ˇ\0ËÒ≤åœÜƒ¬ìqm&Øtı∂ü£G⁄ﬂr¸îOÖ?ˆ‘?Ùl˘ó_¶ür¸îOÖ?ˆ‘?Ùl˘óQ¬ˇ\0Ú+•Ëˇ\0Ù¶>&ˇ\0ëï_ó˛íÑÓ)kı7˛	€ˆqÒOÏÉ◊ƒ˚oÖr¯†ÎhÕØ›ZGy‰çõ8ëÉmÎé’ı¸)ÿª˛|æˇ\0‡~üˇ\0≈◊&/äaB¥®∫3|Æ◊KC≥\r¬Û≠F5UXÆdüﬁ~	WËÔ¸yˇ\0%˚‚/˝ãˇ\0ÈJ◊⁄§bÔ˘Ú¯ˇ\0Å˙ˇ\0]∑¿òfﬂÉ˛*aÔP¯I¢ÎZÔóc≥G‘Ïñ‚¯≥çëG‹‰πQ…$bºl€âcä¡œ\Z3NKv¥›3ÿ ∏rX\\T+ ¨ZW”’4~t¡«?Úuæ	ˇ\0±M?Ù≤Êø<ÎÙ3˛9ˇ\0ì≠O˝äiˇ\0•ó5˘Á_Q√üÚ-£È˙≥Ê8ã˛F5}W‰é´√<s‡Ω\r3GÒüäÙù:€wïkg´‹A[ò≥mDp£,I8íOzπ?Ì3ÒÓä_à6ñ)££Î∑L¨ßÇ/ÇÌ_®?KÔ¯%Ô¿ø⁄+ˆ?åºe‡Ìèko˚eÁˆŒ°oÁyZÖÃ)ÚE:†ƒq¢£8……$◊»X¯\'˝üÏQÒ¬ ˜¬∂3Z¸>Òd>fòç4ì˝Ç‚0÷∆G%èPÍXíCëì¥÷8\\Îà∆À£i¶÷©Y¥ı∂≠˘õW q‘0q≈Ûﬁ\r\'d›“{_Ky#M+‹L“HÔ$éK31…by$ûÊΩÀˆ˝Ç<e˚p¸Q≥”tãª_€Nø€Z„∆V⁄¬Ç ¨xyà·c$úú(f_ªˇ\0Fø€Nœˆ®˝ò-4K√ko‚ˇ\0Gõ©[∆¢?¥√Ç ∫U\0\0++¸h«ÄÀWƒYé#ÑupÒøKˇ\0-˙€Ø¸1?Ä°ãƒ˚:Úµµ∑ÛwW˛¥πıÜ<7e‡Ô\rÈ˙Fù∂”ÙªhÏÌaëQ®DQûxP~	¡^øe/¯eè€/\\é∆◊Ï˛\ZÒy:Óë±≈\Z «ŒÖq¿ÀºÏÖ8¡˚˜_\Z¡oøe¯hèÿ˛Îƒ\ZuØù‚Oá.⁄≈±D›$∂Ñwˆÿ_\\€Å‹◊Á\\/ôº.9søvz?W≥˚ˇ\0œΩ‚,øÎ8)rØz:ØñÎÓ˝√œ¯é˜¡û&”µç6·Ìu*Í+ÀY–·°ñ7é=√\0\n˚Á˛ˇ\0±˝®~¸$˜áÁE∂÷¥ÿ¸UÆ¡e`∫!†éÿüX‹\\‰Á1üJ¸¯4òØ’q}*’È‚\'ÒSΩæk˙h¸œòU£B¶;N◊˘û¡ö˝«ˇ\0Ç˛ ‡Ïëäu+Sàæ$Hö§õ”lëX®\"—>å¨”i«•~L˛¡?≥ˇ\0µÁÌU·OÏ€´üµÍ“Æscœ1»˚•îlS˝˘ø£]3L∑—tÎ{;H\"∂¥¥âaÜî\"Dä\0UP8\0\0\0“æCé3.Jq¡AÎ-_¢€Ò◊‰}We˜î±ì[hΩz˛\Z|ŸÚˇ\0¸≥˛QïÒ/˛·˙u≥Ø¿™˝ıˇ\0Ç÷ 2æ%ˇ\0‹/ˇ\0N∂u¯]\\\r˛·?Òø˝&\'\'æ√¸+Ûë˙ˇ\0„…÷¯€˛≈7ˇ\0“Àj˘Á˛\n≈wy}ˇ\0¯®˜√.™±®›ª˜KKsˇ\0,¬}:`tØ°ø‡‹o˘:ﬂÿ¶ˇ\0˙YmXüpÏÔyÁˆπ∑Ò‹VÓtoà1úï/-£Xdå˙f%Å¡=K7˜MkF¥aƒ3Ñ∑î^∫?…Z2ûA	GÏ ÔÔkı>ØËÁ˛	Ìacß~¬ﬂ#”ƒKnﬁ”ea„Õ{dy1ü>˘ØÁ\ZøYø‡á_R/E¬œ‡◊çuK=U—Âq·€ÀπDPÍHÂÕ±v‡JéÕ¥7´*ÅïÂqû\n≠|gI_ë›Ø+oÚ‚È“≈Jπïó≠ˆ˘ü¶‘Ñ“ÊæYˇ\0Çë¡K<\'˚¸.÷,4˝b ˇ\0‚Uı≥¡§ÈVÓìKc+.Ê·y	\Zd0WêÄ†`±_À∞òJ∏ö™çvˇ\0Ø∏˝àßBõ´UŸ#ÍS÷åfø\n¸5ˇ\0ﬁ˝¢t øj◊º?¨Ì&ÛCÅ7qåü$Gı„ø∑ˆ◊¸õ˛\nuÒ_ˆÒ¯ª´i!∑ÉÏ¸9†È∆Í˚R” πÖ„ôÿ,2i/â8‚6<c›«pÆ7JU™8Ú«{?ÛHÒ\\IÉƒ‘Tiﬂô˜_ÂsÚcˆ°ˇ\0ìó¯âˇ\0c6•ˇ\0•RW	]ﬂÌCˇ\0\'/Ò˛∆mKˇ\0J§Æ{·¥6ótø5+uπ`Fc2ÆÌŸ„n3úˆØ◊(;QãÚ_ë˘uxÛb%ÚôçE~ˆÇ?±v?„À‡\'˛Èˇ\0¸]/¸)ÿª˛|æˇ\0‡~üˇ\0≈◊ Æ4ˇ\0Áƒ˛„Èˇ\0’\nüÛ˙\'‡ïBˇ\0J^‡û?\nˇ\0Ïˇ\0µ§ÆW˛èÏ]ˇ\0>_\0ˇ\0?Oˇ\0‚Îﬁ>¯ã·‹˛M·∆´·+Ω√—§BœAΩÇ‚=±E+Åäæ3å·Ω\r|˜gãáç8“îlÔv¥⁄ﬂ©Ôd,∞5•9TR∫∂üy€—EÒG’!ˇ\0¡\\?‡ùS~‹ü	Ï5\r¥x˜¬Y4‰îÑèTÖ¿2Z3ü∫ƒ™≤1;CnÀ/·«ƒá ¯M‚ªùƒ˙.•†kgl÷wˆÔ…Ëv∞±»$WıäÂ˛&¸w∆ù0Yxø¬æÒ=™Ç=SOäÏGûÎΩISÓ∏\"æ≥#‚™ò\Z~¬¨y°”∫ˇ\03Ê≥ûßçü∂Ñπg◊™~øÊ2zN≥w†ﬂ%’ç’ÕïÃrh%h‰_£≠|YÒWèmñ\rwƒæ ÷°è#ø‘fπE∆qÄÏ@∆OÁ_º⁄Á¸„ˆmÒ¨˜Ù¯À0b-µ;ÎQê1¿äu\0{t¶Ëˇ\0GOŸ≥C √¬≈€ˇ\0“5K˚éÌ§Ì«∑J˙g∆¯Ô:rø§˘#Á◊cW∫™Gó’˛V?t]˜ƒöµΩÜùgu}t‚8-≠¢ieôèEUPI\'–\n˝oˇ\0Ç4¡)µØÅ^$OäﬂÙÛßxâ`hÙ\r\ZR⁄pëJΩÃ‡}ŸJEN™ã\0ÿ˜¬ØŸ√¿c€‡Ô¯c√,T´Ißi±[À =w:®f¸IÆ÷ºÁãÍb©:#ÀªÍ◊o/=œk)·jxZäΩisIm—/Û?%ø‡‰Ûˇ\0·O˝Éµ˝~fWÙÒ„øÉ~¯£=¥æ&∑á<E%ö≤€∂ß¶√v–¡`¶E;A¿Œ:‡V¸2G¬ü˙&?ú≥ˇ\0„uæS≈‘∞xHa•M∑Î6Ã≥Nñ/,B©nkin….˛GÛKä+˙Zˇ\0ÜH¯Sˇ\0D«·Ô˛ñ¸nè¯dèÖ?ÙL~ˇ\0·9gˇ\0∆Î—ˇ\0_(ˇ\0œß˜£œˇ\0Rßˇ\0?W›ˇ\0˛ik‘øa˘=øÉß˛ßçˇ\0K‡ØË#˛#·O˝áø¯NYˇ\0Ò∫±§~Àﬂ¸?´Zﬂÿ|;-çıå©qoqo†⁄≈-ºà¡ï—ñ0UîÄA é+*‹qFtÂdıMnç(l·8œ⁄≠\Z{¡?*?‡„ìˇ\0[‡ü˚”ˇ\0K.kÛ“øßO|_ƒÌJ+œ¯C¬˛!ªÇ?&)ı=*π#Lì±ZE$.I8dö≈ˇ\0ÜH¯Sˇ\0D«·Ô˛ñ¸nπræ0•Ö¬√*m∏´^ËÍÃ∏Vx¨LÒ\n¢\\›-ÂnÁåˇ\0¡…ˇ\0áe¸4ˇ\0∏ß˛ùo+–ˇ\0o?Ÿ7O˝¥?fç{¡wBµ9Ìö5‹É˛<Ø£ƒ˘Ï≠ñçøÿëÒŒ+’<+·\'¿∫\ZVá•È⁄6ókª…≥±∂K{xw1f⁄àå≥18íOz—Øë≠éì∆KKF‰‰ºÆÓ}5$cÖé¶©EE˘ŸX˛\\|S·≠C¡^&‘4mZ“k\rSIπíŒÚ⁄Qâ-Êçä:0ı?JÙÔÿsˆ≥’øbﬂ⁄3DÒ∂ú%∏≥ÖæÀ´Y#m˛–≤r<ÿΩ7pIËËß¶EA^!˝öæ¯ªZπ‘µo\0x\'S‘o|˜Wz¨ÛŒ›73≤cÓMS≤?¬Åˇ\04«·Ô˛ñ¸næﬁßaÍ“t´Qm5g©Ú4∏B≠*™≠*÷i›iˇ\0Í¸„≠+‚oÇ¥ühW±j:6∑iÌïÃy€4R(elG°‰\ri^ÿ√©YÕosW˜cñ)2H§`´¡pAÎU</·=/¡\Zæó¢È∂\ZFôhÇŒ ›-‡Ñ,v¢\0£,I‡u$÷Ö~y&πü&›πçÌÔn9_POŸvŸˆØÒWÉÑR¶íón—d˘mc1-	¯äÛ?ﬁâ´∆+˙tÒ«¿ˇ\0|N‘‚ΩÒ/Ñ</‚»\"G>ß•Aw,qÇX iêπbp8…>µãˇ\0ëß˛âè√ﬂ¸\',ˇ\0¯›~ÖÜ„ò∆îcVõrKWuØôÿé\rÁ´)”©dﬁä€yn|_ˇ\0¯~ c·˜¡c‚ñßm∑TÒºÜÀLgR\Z->!ò◊YîÁ⁄»Î_¢UWD–¨º5§[i˙uùÆüae\Z√omm≈£\nàä\0UÄ\0¿´UÒYû:XÃLÒÍ˛Â—}«◊‡0q¬··Bﬁ˙øõ>Wˇ\0Ç÷ˇ\0À¯óˇ\0pø˝:Ÿ◊‡]Q~*éì„≠}+\\“ÙÌgK∫€ÁYﬂ[%≈º€X2ÓGNTåéµqﬂ…\nËò¸=ˇ\0¬rœˇ\0ç◊–dKO.√ Ñ‡Ây7øí_°·g|=,}uYOñ €_´}¸œÀ¯7ˇ\0∆V¯€˛≈7ˇ\0“Àj˝F˝¨ˇ\0eè~ÿﬂ5/x¶˚-ﬁ&µªà¥i∑+ü.xâË√$—ïôO◊G‡Ç¯c©Ky·Øx_√◊s«‰À>ô•Ai$âêv3F†ï»åÅ]>+ Õ≥wä∆˝räqj÷Óö=<≥,Xl\'’*>e≠ÙﬁÁÛ…˚g¡6>&˛≈:˝…◊4âµ	1k‚-:í∆e?wÃÍ`ì±I1»;KÅ∏¸˝_‘‘ˆÈu«\",ë»•]eX ı·ﬂ‡ôø~,ﬁIs¨¸.∑⁄%˚ÚÿB⁄sπı&›£$˚ûkÍ∞<uh®‚È›˜è_ìˇ\03Ê±úúú∞≥≤Ïˇ\0œ˛¸ˇ\0Èﬂ<k§hgL¥Òáämt“ª~…´:AèMÅ∂„Æ^I\Zi›ô›ŒYâ…b{ö˝ıˇ\0á)˛ÃøÙM?Ú·’˘&∫è\0ˇ\0¡,?gøÜ◊ë‹iø\n¸5,±}”©	u0=ÒrÚ˚ıÆ◊∆¯¶È”ï˝\"øSëpÜ6m*µ#oVˇ\0D~~ ﬂ±ƒè€≈Qi˛˝Õ≈êî%ﬁØpçõ`;ô&#\'bÓsÉÖ5˚≥˚	˛≈^˝Ü>Z¯WGeæ‘ÆÌZŒ™ÒÏóSπ#±Œÿ‘|®ô˘@…À31ˆ-7K∂—t¯m,Ì‡¥µ∑PëCb8‚Q–*é\0ˆ>+‰sæ$Øò/gnXvÔÍœ® 2\n}>iæø‰∫ÃÁÌB„%˛\"ÿÕ©ÈTï¬‚ø¶\rCˆW¯a´_œuu„¿wWWR4≥M/áÌI]éYôåy$íI\'íj/¯dèÖ?ÙL~ˇ\0·9gˇ\0∆ÎÈiÒÕ¡GŸ=txx6sõüµZªÌˇ\0˛ihØÈk˛#·O˝áø¯NYˇ\0Ò∫?·í>ˇ\0—1¯{ˇ\0ÑÂüˇ\0´ˇ\0_(ˇ\0œß˜£?ı*Ûı}ﬂOÊñøS‡⁄/ΩÒ´˛‡˚ëØ–ﬂ¯dèÖ?ÙL~ˇ\0·9gˇ\0∆Î°¬?\n|,˚W¸#˜á>›≥Ì?Ÿzt6hŸªfˇ\0-Wv›ÕåÙ‹q‘◊ôúqm<nxh”i ⁄ﬂ≥OÙ=ØÖÁÑ≈GÍ_ñ˙[∫køô–—EÁÿˇŸ',2),(8,'CSJ-CIENAGUITA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios`
--

DROP TABLE IF EXISTS `envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envios` (
  `id_envio` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `ultimo_envio` varchar(10) NOT NULL,
  PRIMARY KEY (`id_envio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_baja` date NOT NULL,
  `fecha_garantia` date NOT NULL,
  `marca` varchar(255) CHARACTER SET latin1 NOT NULL,
  `codigo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET latin1 NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sector` int(11) NOT NULL,
  `id_hubicacion` double NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_criticidad` int(11) NOT NULL,
  `estado` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fecha_ultimalectura` datetime NOT NULL,
  `ultima_lectura` double NOT NULL,
  `tipo_horas` varchar(10) CHARACTER SET latin1 NOT NULL,
  `id-centrodecosto` double NOT NULL,
  `valor_reposicion` double NOT NULL,
  `fecha_reposicion` date NOT NULL,
  `id_proveedor` double NOT NULL,
  `valor` double NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `descrip_tecnica` text COLLATE utf8_spanish_ci NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `numero_serie` double DEFAULT NULL,
  `adjunto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_disponibilidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_sector` (`id_sector`),
  KEY `id_criticidad` (`id_criticidad`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Equipo de trabajo 01','0000-00-00','0000-00-00','0000-00-00','1','Equipo-00','',6,1,0,1,1,1,'AC','0000-00-00 00:00:00',7010,'',0,0,'0000-00-00',0,0,'','',6,1,23,1,'equipo1_6_2019-06-24-19-13-49.pdf',NULL),(2,'equipo de prueba marca 1','0000-00-00','0000-00-00','0000-00-00','1','Equipo-01','',6,2,0,1,1,1,'IN','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,2,22,2,'equipo2_6_2019-06-24-19-15-29.pdf',80),(3,'Autoelevador Toyota FDZN 25','2019-06-25','0000-00-00','2020-08-19','2','Tr-Au-001','',6,3,0,2,1,2,'AC','2019-06-25 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,3,24,111111,NULL,70),(4,'maquina 00','0000-00-00','0000-00-00','0000-00-00','2','egb-00','',6,1,0,1,-1,1,'AN','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,3,8,1,'equipo4_6_2019-08-14-21-16-10.pdf',NULL),(5,'Equipo de Corte','2019-08-14','0000-00-00','2021-08-31','1','Ar1-Ct-001','',6,1,0,1,1,3,'AC','2019-08-14 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,1,23,123456,'equipo5_6_2019-08-14-23-42-35.pdf',NULL),(6,'Autoelevador XT25','2019-08-15','0000-00-00','2021-02-01','2','Pr-Au-004','',6,3,0,2,4,1,'AN','2019-08-15 00:00:00',200,'',0,0,'0000-00-00',0,0,'','',6,3,8,222222288,'equipo6_6_2019-08-15-00-04-53.pdf',NULL),(7,'Noqueador Neum√°tico STUN-BP1','2019-08-15','0000-00-00','2022-01-01','4','FA-NO-001','',6,5,0,3,1,4,'IN','2019-08-15 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,4,25,124609,'equipo7_6_2019-08-15-11-07-09.pdf',NULL),(8,'SIERRA CIRCULAR','0000-00-00','0000-00-00','0000-00-00','4','FA-LI-004','',6,6,0,3,1,3,'AC','2019-08-15 00:00:00',999,'',0,0,'0000-00-00',0,0,'','SIERRA PARA DIVIDIR 1/2 RES (EL√âCTRICA)',6,4,26,121221,NULL,NULL),(9,'Generador El√©ctrico C330D5 PC 1.1','2019-08-21','0000-00-00','2021-01-01','5','MA-GE-001','na',6,7,0,3,5,2,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','Generador El√©ctrico C330D5\nPlaca de Control 1.1\n',6,5,27,8528412,NULL,50),(10,'nuevo equipo de prueba','0000-00-00','0000-00-00','0000-00-00','1','ELI-BERT','',6,10,0,3,1,4,'AC','2019-08-30 00:00:00',114,'',0,0,'0000-00-00',0,0,'','',6,5,27,132667,NULL,15),(11,'Autoelevador Toyota 2.5TN','0000-00-00','0000-00-00','0000-00-00','2','Pr-Au-005','',6,3,0,2,1,1,'AC','0000-00-00 00:00:00',553,'',0,0,'0000-00-00',0,0,'','',6,3,7,0,NULL,85),(12,'holis','0000-00-00','0000-00-00','0000-00-00','1','fer-test','',6,1,0,1,1,2,'AC','0000-00-00 00:00:00',33,'',0,0,'0000-00-00',0,0,'','',6,1,7,303456,NULL,80),(13,'EQUIPO DE PRUEBA','0000-00-00','0000-00-00','0000-00-00','3','XXX-ZZZ','',6,2,0,2,1,2,'AC','0000-00-00 00:00:00',3445,'',0,0,'0000-00-00',0,0,'','',6,2,24,21244222,NULL,50),(14,'primero de septiembre','0000-00-00','0000-00-00','0000-00-00','1','EEE-GGG','',6,1,0,1,1,1,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,2,8,1234,NULL,60),(15,'aaaa','0000-00-00','0000-00-00','0000-00-00','1','eq-fer','',6,1,0,1,1,3,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,1,7,123,NULL,NULL),(16,'sin descripcion','0000-00-00','0000-00-00','0000-00-00','1','0000000','',6,1,0,1,1,1,'AC','2019-03-05 00:00:00',11000,'',0,0,'0000-00-00',0,0,'','',6,1,23,1111,NULL,80),(17,'Sin descripcion','0000-00-00','0000-00-00','0000-00-00','2','EQUI_FER','',6,3,0,1,1,3,'AC','0000-00-00 00:00:00',1820,'',0,0,'0000-00-00',0,0,'','sin descripcion tecnica',6,5,7,123,NULL,NULL),(18,'tercer pizo centro c√≠vico','0000-00-00','0000-00-00','0000-00-00','1','P3CC','',6,2,0,1,7,3,'AC','2020-04-02 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,1,23,0,NULL,NULL),(19,'Equipo de prueba para pasaje a sim','0000-00-00','0000-00-00','0000-00-00','1','ELI-03','',6,1,23,1,5,4,'AC','0000-00-00 00:00:00',200,'',0,0,'0000-00-00',0,0,'','',6,1,23,12345678,NULL,NULL),(20,'Equipo 01','0000-00-00','0000-00-00','0000-00-00','1','EQ-01-2020','sin ubicacion',6,1,0,1,1,4,'AC','0000-00-00 00:00:00',2,'',0,0,'0000-00-00',0,0,'','',6,1,23,12233,NULL,NULL),(21,'Nuevo equipo de prueba ','2020-04-28','0000-00-00','2021-12-02','2','EQ-04-2020','',6,1,0,1,1,4,'RE','2020-04-30 00:00:00',125,'',0,0,'0000-00-00',0,0,'','sin descripcion tecnica',6,1,23,123,NULL,NULL),(22,'equipo de prueba eli','0000-00-00','0000-00-00','0000-00-00','1','e-l-i','',6,10,0,1,10,4,'AC','0000-00-00 00:00:00',1010,'',0,0,'0000-00-00',0,0,'','',6,3,9,123456789,'equipo22_6_2020-05-07-21-37-57.pdf',NULL);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `establecimientos`
--

DROP TABLE IF EXISTS `establecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `establecimientos` (
  `esta_id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `lng` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `calle` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `altura` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `localidad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fec_alta` date DEFAULT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`esta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `establecimientos`
--

LOCK TABLES `establecimientos` WRITE;
/*!40000 ALTER TABLE `establecimientos` DISABLE KEYS */;
INSERT INTO `establecimientos` VALUES (4,'Caleras San Juan',NULL,NULL,NULL,NULL,'2','1','9','2019-11-02',NULL,6);
/*!40000 ALTER TABLE `establecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fallas`
--

DROP TABLE IF EXISTS `fallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fallas` (
  `id_reparacion` int(100) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reparacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallas`
--

LOCK TABLES `fallas` WRITE;
/*!40000 ALTER TABLE `fallas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_equipo`
--

DROP TABLE IF EXISTS `ficha_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_equipo` (
  `id_fichaequip` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `marca` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `numero_motor` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `numero_serie` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `dominio` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `fabricacion` int(11) NOT NULL,
  `peso` float NOT NULL,
  `bateria` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `hora_lectura` float NOT NULL,
  PRIMARY KEY (`id_fichaequip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_equipo`
--

LOCK TABLES `ficha_equipo` WRITE;
/*!40000 ALTER TABLE `ficha_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_formularios`
--

DROP TABLE IF EXISTS `frm_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_formularios` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `empr_id` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_formularios`
--

LOCK TABLES `frm_formularios` WRITE;
/*!40000 ALTER TABLE `frm_formularios` DISABLE KEYS */;
INSERT INTO `frm_formularios` VALUES (1,'Formulario Usuario','-',1,'2019-08-17 14:24:38',0),(2,'Evaluacion Sector por Operario','-',NULL,'2019-09-16 12:52:58',0),(3,'Evaluacion de Desempe√±o Colaborador','-',NULL,'2019-09-16 12:53:49',0);
/*!40000 ALTER TABLE `frm_formularios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_instancias_formularios`
--

DROP TABLE IF EXISTS `frm_instancias_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_instancias_formularios` (
  `id` int(11) NOT NULL,
  `label` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requerido` tinyint(4) DEFAULT NULL,
  `tida_id` int(11) DEFAULT NULL,
  `valo_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `aux` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_instancias_formularios`
--

LOCK TABLES `frm_instancias_formularios` WRITE;
/*!40000 ALTER TABLE `frm_instancias_formularios` DISABLE KEYS */;
INSERT INTO `frm_instancias_formularios` VALUES (164,'Nombre','nombre','Fernando Emmanuel',1,3,NULL,1,1,2,NULL,'2019-08-21 11:37:35',0),(165,'Apellido','apellido','Leiva Silva',1,3,NULL,1,1,3,NULL,'2019-08-21 11:37:35',0),(166,'Fecha Nacimiento','fecha_nacimiento','23/11/1994',1,5,NULL,1,1,4,NULL,'2019-08-21 11:37:35',0),(167,'Email','email','fer17916@gmail.com',1,3,NULL,1,1,5,NULL,'2019-08-21 11:37:35',0),(168,'Seleccionar Provincia','provincia','San Juan',1,4,'provincias',1,1,6,NULL,'2019-08-21 11:37:35',0),(169,'Seleccionar Sexo','sexo','Mujer',1,7,'sexos',1,1,7,NULL,'2019-08-21 11:37:35',0),(170,'Seleccionar Opcion','contrato','Acepto los Terminos y Condiciones del Servicio-Enviar Emails',1,6,'contratos',1,1,8,NULL,'2019-08-21 11:37:35',0),(171,'Adjuntar Archivo','pdf','-_(1)_(1)_(1)4.txt',1,8,NULL,1,1,9,NULL,'2019-08-21 11:37:35',0),(172,'Observaciones','observaciones','iiiiiiii',1,9,NULL,1,1,10,NULL,'2019-08-21 11:37:35',0),(173,'Complete todos los campos del formulario *',NULL,NULL,NULL,2,NULL,1,1,1,NULL,'2019-08-21 11:37:35',0),(174,'Complete todos los campos del formulario *',NULL,NULL,NULL,2,NULL,2,1,1,NULL,'2019-08-22 19:02:57',0),(175,'Nombre','nombre','Eliana ',1,3,NULL,2,1,2,NULL,'2019-08-22 19:02:57',0),(176,'Apellido','apellido','Bernaldez',1,3,NULL,2,1,3,NULL,'2019-08-22 19:02:57',0),(177,'Fecha Nacimiento','fecha_nacimiento','01/01/1994',1,5,NULL,2,1,4,NULL,'2019-08-22 19:02:57',0),(178,'Email','email','elianabernaldez03@gmail.com',1,3,NULL,2,1,5,NULL,'2019-08-22 19:02:57',0),(179,'Seleccionar Provincia','provincia','Mendoza',1,4,'provincias',2,1,6,NULL,'2019-08-22 19:02:57',0),(180,'Seleccionar Sexo','sexo','Mujer',1,7,'sexos',2,1,7,NULL,'2019-08-22 19:02:57',0),(181,'Seleccionar Opcion','contrato','Acepto los Terminos y Condiciones del Servicio-Enviar Emails',1,6,'contratos',2,1,8,NULL,'2019-08-22 19:02:57',0),(182,'Adjuntar Archivo','pdf','-_(1)_(1)_(3).txt',1,8,NULL,2,1,9,NULL,'2019-08-22 19:02:57',0),(183,'Observaciones','observaciones','Berta',1,9,NULL,2,1,10,NULL,'2019-08-22 19:02:57',0),(184,'Complete todos los campos del formulario *',NULL,NULL,NULL,2,NULL,3,1,1,NULL,'2019-08-22 19:03:09',0),(185,'Nombre','nombre','Eliana',1,3,NULL,3,1,2,NULL,'2019-08-22 19:03:09',0),(186,'Apellido','apellido','Bernaldez',1,3,NULL,3,1,3,NULL,'2019-08-22 19:03:09',0),(187,'Fecha Nacimiento','fecha_nacimiento','22/09/2019',1,5,NULL,3,1,4,NULL,'2019-08-22 19:03:09',0),(188,'Email','email','elianabernaldez@gmail.com',1,3,NULL,3,1,5,NULL,'2019-08-22 19:03:09',0),(189,'Seleccionar Provincia','provincia','San Juan',1,4,'provincias',3,1,6,NULL,'2019-08-22 19:03:09',0),(190,'Seleccionar Sexo','sexo','Mujer',1,7,'sexos',3,1,7,NULL,'2019-08-22 19:03:09',0),(191,'Seleccionar Opcion','contrato','Acepto los Terminos y Condiciones del Servicio-Enviar Emails',1,6,'contratos',3,1,8,NULL,'2019-08-22 19:03:09',0),(192,'Adjuntar Archivo','pdf','Arbolado.bmpr',1,8,NULL,3,1,9,NULL,'2019-08-22 19:03:09',0),(193,'Observaciones','observaciones','sin observaciones  dijo el chino',1,9,NULL,3,1,10,NULL,'2019-08-22 19:03:09',0);
/*!40000 ALTER TABLE `frm_instancias_formularios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_items`
--

DROP TABLE IF EXISTS `frm_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_items` (
  `item_id` int(11) NOT NULL,
  `label` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requerido` tinyint(4) DEFAULT NULL,
  `tida_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valo_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  `aux` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_items`
--

LOCK TABLES `frm_items` WRITE;
/*!40000 ALTER TABLE `frm_items` DISABLE KEYS */;
INSERT INTO `frm_items` VALUES (11,'Zona: Exterior',NULL,NULL,'25',NULL,2,1,'2019-09-16 12:54:31',0,NULL),(12,'Tareas',NULL,NULL,'26',NULL,2,2,'2019-09-16 12:54:31',0,NULL),(13,'Rejas y portones','ext_rej_por',NULL,'4','calificacion_sim',2,3,'2019-09-16 12:54:31',0,NULL),(14,'Espacios verdes','ext_esp_ver',NULL,'4','calificacion_sim',2,3,'2019-09-16 12:54:31',0,NULL),(15,'Veredas','ext_veredas',NULL,'4','calificacion_sim',2,4,'2019-09-16 12:54:31',0,NULL),(16,'Carteler√≠a, luminarias, paredes y cornisas','ext_clpc',NULL,'4','calificacion_sim',2,5,'2019-09-16 12:54:31',0,NULL),(17,'Zona: Interior','',NULL,'25',NULL,2,6,'2019-09-16 12:54:31',0,NULL),(18,'Tareas','',NULL,'26',NULL,2,7,'2019-09-16 12:54:31',0,NULL),(19,'Telas de ara√±a','int_tel',NULL,'4','calificacion_sim',2,8,'2019-09-16 13:20:57',0,NULL),(20,'Cerramientos, herrajes, paredes, vidrios y es','int_chpve',NULL,'4','calificacion_sim',2,9,'2019-09-16 13:20:57',0,NULL),(21,'Cestos de basura','int_cb',NULL,'4','calificacion_sim',2,10,'2019-09-16 13:20:57',0,NULL),(22,'Pisos','int_pisos',NULL,'4','calificacion_sim',2,11,'2019-09-16 13:20:57',0,NULL),(23,'Odorizaci√≥n','int_od',NULL,'4','calificacion_sim',2,12,'2019-09-16 13:20:57',0,NULL),(24,'Zona: Transito',NULL,NULL,'25',NULL,2,13,'2019-09-16 13:29:30',0,NULL),(25,'Tareas',NULL,NULL,'26',NULL,2,14,'2019-09-16 13:29:30',0,NULL),(26,'Telas de ara√±a','tra_tel',NULL,'4','calificacion_sim',2,15,'2019-09-16 13:29:30',0,NULL),(27,'Cerramientos, herrajes, paredes, vidrios y es','tra_chpve',NULL,'4','calificacion_sim',2,16,'2019-09-16 13:29:30',0,NULL),(28,'Mobiliario y adornos','tra_ma',NULL,'4','calificacion_sim',2,17,'2019-09-16 13:29:30',0,NULL),(29,'Cestos de basura','tra_cb',NULL,'4','calificacion_sim',2,18,'2019-09-16 13:29:30',0,NULL),(30,'Pisos','tra_pisos',NULL,'4','calificacion_sim',2,19,'2019-09-16 13:29:30',0,NULL),(31,'Odorizaci√≥n','tra_od',NULL,'4','calificacion_sim',2,20,'2019-09-16 13:29:30',0,NULL),(32,'Zona: Humeda',NULL,NULL,'25','',2,21,'2019-09-16 14:29:34',0,NULL),(33,'Tareas',NULL,NULL,'26',NULL,2,22,'2019-09-16 14:29:34',0,NULL),(34,'Telas de ara√±a','hum_tel',NULL,'4','calificacion_sim',2,23,'2019-09-16 14:29:34',0,NULL),(35,'Cerramientos, herrajes, paredes, vidrios y es','hum_chpve',NULL,'4','calificacion_sim',2,24,'2019-09-16 14:29:34',0,NULL),(36,'Azulejos','hum_azu',NULL,'4','calificacion_sim',2,25,'2019-09-16 14:29:34',0,NULL),(37,'Sanitarios, lavamanos y mesadas','hum_slm',NULL,'4','calificacion_sim',2,26,'2019-09-16 14:29:34',0,NULL),(38,'Mobiliario y adornos','hum_ma',NULL,'4','calificacion_sim',2,27,'2019-09-16 14:29:34',0,NULL),(39,'Cestos de basura','hum_cv',NULL,'4','calificacion_sim',2,28,'2019-09-16 14:29:34',0,NULL),(40,'Pisos','hum_pisos',NULL,'4','calificacion_sim',2,29,'2019-09-16 14:33:02',0,NULL),(41,'Reposici√≥n de descartables','hum_rep',NULL,'4','calificacion_sim',2,30,'2019-09-16 14:33:02',0,NULL),(42,'Odorizaci√≥n','hum_od',NULL,'4','calificacion_sim',2,31,'2019-09-16 14:33:02',0,NULL),(43,'Observaciones','ext_obs',NULL,'9',NULL,2,32,'2019-09-16 14:33:02',0,NULL),(44,'Observaciones','int_obs',NULL,'9',NULL,2,20,'2019-09-16 14:37:48',0,NULL),(45,'Observaciones','tra_obs',NULL,'9',NULL,2,12,'2019-09-16 14:37:48',0,NULL),(46,'Observaciones','hum_obs',NULL,'9',NULL,2,6,'2019-09-16 14:37:48',0,NULL),(47,'Informacion del Empleado',NULL,NULL,'25',NULL,3,1,'2019-09-16 15:19:04',0,NULL),(48,'Nombre y Apellido','nom_ape',NULL,'3',NULL,3,2,'2019-09-16 15:19:04',0,NULL),(49,'Puesto','puesto',NULL,'3',NULL,3,3,'2019-09-16 15:19:04',0,NULL),(50,'Establecimiento donde desarrolla sus tareas','est',NULL,'3',NULL,3,4,'2019-09-16 15:19:04',0,NULL),(51,'Supervisor','supervisor',NULL,'3',NULL,3,5,'2019-09-16 15:19:04',0,NULL),(52,'Fecha de Evaluaci√≥n','fecha_eval',NULL,'5',NULL,3,6,'2019-09-16 15:19:04',0,NULL),(53,'Cuestionario',NULL,NULL,'26',NULL,3,7,'2019-09-16 15:19:04',0,NULL),(54,'1 -  Presencia Fisica',NULL,NULL,'26',NULL,3,8,'2019-09-16 15:19:04',0,NULL),(55,'a. Aseo Personal ','aseo_personal',NULL,'4','calificacion_sim',3,9,'2019-09-16 15:19:04',0,NULL),(56,'b. Cuidado y Mantenimiento de Ambo.','cui_man_ambo',NULL,'4','calificacion_sim',3,10,'2019-09-16 15:19:04',0,NULL),(57,'c. Cuidado y mantenimiento de EPP ','cui_man_epp',NULL,'4','calificacion_sim',3,11,'2019-09-16 15:19:04',0,NULL),(58,'Promedio',NULL,NULL,'3',NULL,3,12,'2019-09-16 15:19:04',0,NULL),(59,'2 - Calidad y productividad',NULL,NULL,'26',NULL,3,13,'2019-09-16 15:19:04',0,NULL),(60,'a. Precisi√≥n y calidad del trabajo realizado.','pres_cali',NULL,'4','calificacion_sim',3,14,'2019-09-16 15:19:04',0,NULL),(61,'b. Organizaci√≥n del trabajo en tiempo y forma','org_tra',NULL,'4','calificacion_sim',3,15,'2019-09-16 15:33:11',0,NULL),(62,'c. Cuidado de herramientas y equipo.','cui_herr_equ',NULL,'4','calificacion_sim',3,16,'2019-09-16 15:33:11',0,NULL),(63,'Promedio','cal_pro_pro',NULL,'3',NULL,3,17,'2019-09-16 15:33:11',0,NULL),(64,'3 - Conocimiento',NULL,NULL,'26',NULL,3,18,'2019-09-16 15:39:16',0,NULL),(65,'a. Nivel de experiencia y conocimiento t√©cnic','nivel_exp',NULL,'4','calificacion_sim',3,19,'2019-09-16 15:39:16',0,NULL),(66,'b. Uso y conocimiento de m√©todos y procedimie','conmepro',NULL,'4','calificacion_sim',3,20,'2019-09-16 15:39:16',0,NULL),(67,'c. Uso y conocimiento de herramientas.','con_herr',NULL,'4','calificacion_sim',3,21,'2019-09-16 15:39:16',0,NULL),(68,'d. Puede desempe√±arse con poca o ninguna ayud','desempeno',NULL,'4','calificacion_sim',3,22,'2019-09-16 15:39:16',0,NULL),(69,'e. Capacidad de ense√±ar/entrenar a otros.','cap_ense√±ar',NULL,'4','calificacion_sim',3,23,'2019-09-16 15:39:16',0,NULL),(70,'Promedio','con_pro',NULL,'3',NULL,3,24,'2019-09-16 15:39:16',0,NULL),(72,'4 - Compromiso y presentismo',NULL,NULL,'26',NULL,3,25,'2019-09-16 15:43:40',0,NULL),(73,'a. Trabaja sin necesidad de supervisi√≥n.','tranesu',NULL,'4',NULL,3,26,'2019-09-16 15:43:40',0,NULL),(74,'b. Se esfuerza m√°s si la situaci√≥n lo requier','esfuerzo',NULL,'4',NULL,3,27,'2019-09-16 15:43:40',0,NULL),(75,'c. Puntualidad.','puntualidad',NULL,'4',NULL,3,28,'2019-09-16 15:43:40',0,NULL),(76,'d. Presentismo.','presentismo',NULL,'4',NULL,3,29,'2019-09-16 15:43:40',0,NULL),(77,'Promedio','com_pre_pro',NULL,'3',NULL,3,30,'2019-09-16 15:43:40',0,NULL),(78,'5 - Iniciativa / Liderazgo',NULL,NULL,'26',NULL,3,31,'2019-09-16 15:43:40',0,NULL),(79,'a. Cuando completa sus tareas, busca nuevas a','predisposicion',NULL,'4',NULL,3,32,'2019-09-16 15:43:40',0,NULL),(80,'b. Elige prioridades de forma eficiente. ','priodidades',NULL,'4',NULL,3,33,'2019-09-16 15:43:40',0,NULL),(81,'c. Sugiere mejoras. ','sug_mejoras',NULL,'4',NULL,3,34,'2019-09-16 15:43:40',0,NULL),(82,'d. Identifica errores y trabaja para arreglar','reconoce_error',NULL,'4',NULL,3,35,'2019-09-16 15:43:40',0,NULL),(83,'e. Motiva y ayuda a los dem√°s.','motiva_ayuda',NULL,'4',NULL,3,36,'2019-09-16 15:43:40',0,NULL),(84,'Promedio','ini_lid_pro',NULL,'3',NULL,3,37,'2019-09-16 15:43:40',0,NULL),(85,'6 - Trabajo en equipo',NULL,NULL,'26',NULL,3,38,'2019-09-16 15:43:40',0,NULL),(86,'a. Trabaja fluidamente con supervisores, pare','trabajo_fluido',NULL,'4',NULL,3,39,'2019-09-16 15:43:40',0,NULL),(87,'b. Tiene una actitud positiva y proactiva. ','actitud',NULL,'4',NULL,3,40,'2019-09-16 15:44:29',0,NULL),(88,'c. Promueve el trabajo en equipo.','trab_equipo',NULL,'4',NULL,3,41,'2019-09-16 15:44:29',0,NULL),(89,'Promedio','trab_equipo_prom',NULL,'3',NULL,3,42,'2019-09-16 15:44:29',0,NULL),(90,'Comentarios',NULL,NULL,'26',NULL,3,43,'2019-09-16 15:44:29',0,NULL),(91,'Comentarios del empleado','com_emp',NULL,'9',NULL,3,44,'2019-09-16 15:44:29',0,NULL),(92,'Comentarios y recomendaciones del supervisor','com_sup',NULL,'9',NULL,3,45,'2019-09-16 15:44:29',0,NULL),(93,'Metas y objetivos del empleado para la pr√≥xim','com_metas_obj',NULL,'9',NULL,3,46,'2019-09-16 15:44:29',0,NULL),(94,'Puntuaci√≥n general de desempe√±o','',NULL,'26',NULL,3,47,'2019-09-16 16:16:44',0,NULL),(95,'(Dividir la cantidad total de puntos por 5)',NULL,NULL,'2',NULL,3,48,'2019-09-16 16:16:44',0,NULL),(96,'Tener en cuenta que inferior a 3:',NULL,NULL,'2',NULL,3,49,'2019-09-16 16:16:44',0,NULL),(97,'-No podr√°n solicitar adelantos de sueldos',NULL,NULL,'2',NULL,3,50,'2019-09-16 16:16:44',0,NULL),(98,'-No podr√°n postularse a b√∫squedas internas',NULL,NULL,'2',NULL,3,51,'2019-09-16 16:16:44',0,NULL),(100,'Promedio Total','promedio_total',NULL,'3',NULL,3,52,'2019-09-16 16:53:30',0,NULL);
/*!40000 ALTER TABLE `frm_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'Grupo 1','AC',6),(2,'Autoelevadores','AC',6),(3,'No aplica','AC',6),(4,'Grupo 2','AC',6);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herramientas`
--

DROP TABLE IF EXISTS `herramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `herramientas` (
  `herrId` int(11) NOT NULL AUTO_INCREMENT,
  `herrcodigo` varchar(255) NOT NULL DEFAULT '',
  `herrmarca` varchar(255) DEFAULT NULL,
  `modid` int(10) DEFAULT NULL,
  `tipoid` int(10) DEFAULT NULL,
  `equip_estad` varchar(4) DEFAULT NULL,
  `herrdescrip` varchar(255) DEFAULT NULL,
  `depositoId` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`herrId`),
  UNIQUE KEY `1` (`herrcodigo`) USING BTREE,
  KEY `depositoId` (`depositoId`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herramientas`
--

LOCK TABLES `herramientas` WRITE;
/*!40000 ALTER TABLE `herramientas` DISABLE KEYS */;
INSERT INTO `herramientas` VALUES (1,'herramienta 1','modelo 1',1,NULL,'AN','descripcion 1',4,6),(4,'HR-TT-Organizador Tornillos','Organizador tornillos - Stanley',1,NULL,'AC','HR-TT-Organizador Tornillos',1,6),(5,'HR-TT-Escalera 7 pelda√±os','Escalera 7 pelda√±o - Ayinco',1,NULL,'TR','HR-TT-Escalera 7 pelda√±os',1,6),(6,'HR-TT-Mascara facial','Mascara facial',2,NULL,'AC','HR-TT-Mascara facial',1,6),(7,'HR-TT-Prot Audit-Vincha','Protector auditivo copa tipo vincha',1,NULL,'AC','HR-TT-Prot Audit-Vincha',1,6),(8,'HR-TT-Llave combinada 10mm','Llave combinada 10mm',3,NULL,'AC','HR-TT-Llave combinada 10mm',1,6),(9,'HR-TT-Llave combinada 13mm','Llave combinada 13mm',1,NULL,'TR','HR-TT-Llave combinada 13mm',1,6),(10,'HR-TT-Llave combinada 15mm','Llave combinada 13mm',1,NULL,'AC','HR-TT-Llave combinada 15mm',1,6),(11,'HR-TT-Llave combinada 17mm','Llave combinada 17mm',1,NULL,'TR','HR-TT-Llave combinada 17mm',1,6),(12,'HR-TT-Llave combinada 7/16\"','Llave combinada 7/16\"',1,NULL,'AC','HR-TT-Llave combinada 7/16\"',1,6),(13,'HR-TT-Llave combinada 9/16\"','Llave combinada 9/16\"',1,NULL,'AC','HR-TT-Llave combinada 9/16\"',1,6),(14,'HR-TT-Destornillador de pu√±o philips','Destornillador de pu√±o philips - Bulit',1,NULL,'AC','HR-TT-Destornillador de pu√±o philips',1,6),(15,'HR-TT-Llave Francesa 30mm','Llave Francesa 30mm',1,NULL,'TR','HR-TT-Llave Francesa 30mm',1,6),(16,'HR-TT-Cinta m√©trica de 5 m ','Cinta m√©trica de 5 m ',1,NULL,'AC','HR-TT-Cinta m√©trica de 5 m ',1,6),(17,'HR-OFA-Linterna','Linterna',1,NULL,'TR','HR-OFA-Linterna',1,6),(18,'HR-OFA-Arco de sierra','Arco de sierra',1,NULL,'AC','HR-OFA-Arco de sierra',1,6),(19,'HR-OFA-Extractor de poleas 150 mm','Extractor de poleas 150 mm',1,NULL,'AC','HR-OFA-Extractor de poleas 150 mm',1,6),(20,'HR-OFA-Alargues','Alargues',1,NULL,'AC','HR-OFA-Alargues',1,6),(21,'HR-OFE-Espatula chica','Espatula chica',1,NULL,'AC','HR-OFE-Espatula chica',1,6),(22,'HR-OFE-Espatulas medianas','Espatulas medianas',1,NULL,'AC','HR-OFE-Espatulas medianas',1,6),(23,'HR-OFE-Barretines de 0,80 y 0,90 negro, naranja','barretines de 0,80 y 0,90 negro, naranja',1,NULL,'AC','HR-OFE-Barretines de 0,80 y 0,90 negro, naranja',1,6),(24,'HR-OFE-Arn√©s','Arn√©s',1,NULL,'TR','HR-OFE-Arn√©s',1,6),(25,'HR-OFE-Llanas','Llanas',1,NULL,'AC','HR-OFE-Llanas',1,6),(26,'HR-OFE-Llana dentada','Llana dentada',1,NULL,'AC','HR-OFE-Llana dentada',1,6),(27,'HR-OFE-Balde de Alba√±il','Balde de Alba√±il',1,NULL,'AC','HR-OFE-Balde de Alba√±il',1,6),(28,'HR-OFE-Anchada','Anchada',1,NULL,'AC','HR-OFE-Anchada',1,6),(29,'HR-OFE-Bota de goma','Bota de goma',1,NULL,'AC','HR-OFE-Bota de goma',1,6),(31,'HR-ODE-Boquilla para termofusi√≥n 4\"','Boquilla para termofusi√≥n 4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 4\"',1,6),(32,'HR-ODE-Boquilla para termofusi√≥n 2,5\"','Boquilla para termofusi√≥n 2,5\"',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 2,5\"',1,6),(33,'HR-ODE-Boquilla para termofusi√≥n 80mm','Boquilla para termofusi√≥n 80mm',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 80mm',1,6),(34,'HR-ODE-Boquilla para termofusi√≥n 2\"','Boquilla para termofusi√≥n 2\"',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 2\"',1,6),(37,'HR-ODE-Boquilla para termofusi√≥n 3/4\"','Boquilla para termofusi√≥n 3/4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 3/4\"',1,6),(39,'HR-ODE-Termofusora 1','Termofusora 1',1,NULL,'AC','HR-ODE-Termofusora 1',1,6),(40,'HR-ODE-Termofusora 1600w','Termofusora 1600w',1,NULL,'AC','HR-ODE-Termofusora 1600w',1,6),(41,'HR-ODE-Boquilla para termofusi√≥n 75mm','Boquilla para termofusi√≥n 75mm',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 75mm',1,6),(42,'HR-ODE-Boquilla para termofusi√≥n 90mm','Boquilla para termofusi√≥n 90mm',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 90mm',1,6),(43,'HR-ODE-Boquilla para termofusi√≥n 110mm','Boquilla para termofusi√≥n 110mm',1,NULL,'AC','HR-ODE-Boquilla para termofusi√≥n 110mm',1,6),(44,'HR-OVI-TermoAnem√≥metro ','TermoAnem√≥metro ',1,NULL,'AC','HR-OVI-TermoAnem√≥metro ',1,6),(45,'HR-OVI-Termometro infrarojo','Termometro infrarojo',1,NULL,'AC','HR-OVI-Termometro infrarojo',1,6),(46,'HR-OVI-Pinza extractora de fusible NH','Pinza extractora de fusible NH',1,NULL,'AC','HR-OVI-Pinza extractora de fusible NH',1,6),(47,'HR-OVI-Pinza amperometrica con puntas','Pinza amperometrica con puntas',1,NULL,'AC','HR-OVI-Pinza amperometrica con puntas',1,6),(48,'HR-OVI- Soldador Caut√≠n 30w','Soldador Caut√≠n 30w',1,NULL,'AC','HR-OVI- Soldador Caut√≠n 30w',1,6),(49,'HR-OFE-Multimetro con puntas','Multimetro con puntas',1,NULL,'AC','HR-OFE-Multimetro con puntas',1,6),(50,'HR-TTA-P√©rtiga DPA 3 KV','P√©rtiga DPA 3 KV',1,NULL,'AC','HR-TTA-P√©rtiga DPA 3 KV',1,6),(51,'HR-OVI-Detector de met√°l ','Detector de met√°l ',1,NULL,'AC','HR-OVI-Detector de met√°l ',1,6),(52,'HR-OVI-Programador de variador vel.','Programador de variador vel.',1,NULL,'AC','HR-OVI-Programador de variador vel.',1,6),(53,'HR-OVI-Pinza amp con puntas','Pinza amp con puntas',1,NULL,'AC','HR-OVI-Pinza amp con puntas',1,6),(54,'HR-OFA-Caja de llaves tubos medidas chicas(completa)','Caja de llaves tubos medidas chicas(completa)',1,NULL,'AC','HR-OFA-Caja de llaves tubos medidas chicas(completa)',1,6),(55,'HR-OFA-Caja de llaves tubos medidas grandes(completa)','Caja de llaves tubos medidas grandes(completa)',1,NULL,'AC','HR-OFA-Caja de llaves tubos medidas grandes(completa)',1,6),(56,'HR-OFA-Caja de mechas(12,16,20mm y 1/2\")','Caja de mechas(12,16,20mm y 1/2\")',1,NULL,'AC','HR-OFA-Caja de mechas(12,16,20mm y 1/2\")',1,6),(57,'HR-OFA-Amoladora 4,5\" 840w 9557 HP','Amoladora 4,5\" 840w 9557 HP',1,NULL,'AC','HR-OFA-Amoladora 4,5\" 840w 9557 HP',1,6),(58,'HR-OFA-Llave Stillson 36\"','Llave Stillson 36\"',1,NULL,'AC','HR-OFA-Llave Stillson 36\"',1,6),(59,'HR-OFA-Pistola de calor','Pistola de calor',1,NULL,'AC','HR-OFA-Pistola de calor',1,6),(60,'HR-OFA-Serrucho 24\"','Serrucho 24\"',1,NULL,'AC','HR-OFA-Serrucho 24\"',1,6),(61,'HR-OFA-Atornillador ? 13 con bateria ','Atornillador ? 13 con bateria ',1,NULL,'AC','HR-OFA-Atornillador ? 13 con bateria ',1,6),(63,'HR-OFA-Atornillador  13 con bateria ','Atornillador  13 con bateria ',1,NULL,'AC','HR-OFA-Atornillador  13 con bateria ',1,6),(64,'HR-OFA-Llave Inglesa 22\"','Llave Inglesa 22\"',1,NULL,'AC','HR-OFA-Llave Inglesa 22\"',1,6),(65,'HR-OFA-Rotomartillo con mandril y llave','Rotomartillo con mandril y llave',1,NULL,'AC','HR-OFA-Rotomartillo con mandril y llave',1,6),(66,'HR-ODE-Extractor de poleas 400 mm','Extractor de poleas 400 mm',1,NULL,'AC','HR-ODE-Extractor de poleas 400 mm',1,6),(67,'HR-OFE-Espatulas grandes','Espatulas grandes',1,NULL,'AC','HR-OFE-Espatulas grandes',1,6),(68,'HR-OFE-Soplete para colocar membrana','Soplete para colocar membrana',1,NULL,'AC','HR-OFE-Soplete para colocar membrana',1,6),(69,'HR-OFE-Cola de vida ','Cola de vida ',1,NULL,'AC','HR-OFE-Cola de vida ',1,6),(73,'HR-OFE-Serrucho para corte en durlock','Serrucho para corte en durlock',1,NULL,'AC','HR-OFE-Serrucho para corte en durlock',1,6),(74,'HR-OFE-Llana de durlock','Llana de durlock',1,NULL,'AC','HR-OFE-Llana de durlock',1,6),(75,'HR-OFE-Fratacho','Fratacho',1,NULL,'TR','HR-OFE-Fratacho',1,6),(76,'HR-OFE-Cortafierro','Cortafierro',1,NULL,'AC','HR-OFE-Cortafierro',1,6),(77,'HR-OFE-Mazo mediano','Mazo mediano',1,NULL,'AC','HR-OFE-Mazo mediano',1,6),(78,'HR-OFE-Cuchara mediana de alba√±il','Cuchara mediana de alba√±il',1,NULL,'AC','HR-OFE-Cuchara mediana de alba√±il',1,6),(79,'HR-OFE-Cuchara grande de alba√±il','Cuchara grande de alba√±il',1,NULL,'AC','HR-OFE-Cuchara grande de alba√±il',1,6),(80,'HR-OFE-Chocla','Chocla',1,NULL,'AC','HR-OFE-Chocla',1,6),(81,'HR-OFE-Martelina','Martelina',1,NULL,'AC','HR-OFE-Martelina',1,6),(82,'HR-OFE-Bomba de combustible','Bomba de combustible',1,NULL,'AC','HR-OFE-Bomba de combustible',1,6),(83,'HR-OFE-Grasera','Grasera',1,NULL,'AC','HR-OFE-Grasera',1,6),(86,'A-Hormigonera','azul',1,NULL,'AC','A-Hormigonera',NULL,6),(87,'w80','989',1,NULL,'AC','w80',NULL,6),(89,'HVLL-TT-MANIFOLD','',1,NULL,'AC','MANOMETRO DE GASES REFRIGERANTE',2,6),(90,'HVLL-TT','SSP',1,NULL,'TR','Agujereadora de mano el√©ctrica 13 mm con percutor',3,6),(91,'2334343242','ssss',0,NULL,'AC','Taladro',1,6),(93,'1001','IRIMO',-1,NULL,'AC','Caja de tubos 3/4¬¥',0,7),(95,'CJ 01 ','METALICA ',19,NULL,'AC','CAJA DE HERRAMIENTAS ',4,7),(96,'CJ 02 ','COMPLETA ',23,NULL,'AC','CAJA DE HERRAMIENTAS ',4,7),(97,'CJ 03','ENCASTRE 3/4 ',24,NULL,'AC','CAJA DE TUBOS ',4,7),(98,'CJ O4 ','PLASTICA CHICA ',33,NULL,'AC','CAJA DE HERRAMIENTAS ',4,7),(99,'CJ 05 ','ALTA Y BAJA ',32,NULL,'AC','CAJA CON MANOMETROS DE CARGA DE A/C',4,7),(100,'LLVF 01','450MM',35,NULL,'AC','LLAVE FRANCESA',4,7),(101,'LLST 01','PINZA ',35,NULL,'AC',' STILSON ',4,7),(103,'LLIN 01','REGULABLE',20,NULL,'AC','LLAVE INGLESA',4,7),(105,'LLCO 01','COMBINADA 36MM',20,NULL,'AC','LLAVE ',4,7),(115,'110','modelo 2',25,NULL,'AC','descrip 2',5,7),(126,'MR01','Encastre 1/2',3,NULL,'AC','Mango de fuerza',2,6),(137,'','',-1,NULL,'AC','',-1,7),(139,'MF 01','Encastre 1/2',35,NULL,'AC','Mango de fuerza ',4,7),(140,'LLBO 01 ','DE BOCA',35,NULL,'AC','LLAVE 60MM',4,7),(141,'PNZ 01','PICO DE LORO ',30,NULL,'AC','PINZA ',4,7),(142,'PNZ 02','DE FUERZA ',29,NULL,'AC','PINZA ',4,7),(143,'LLCO 02','CONVINADA',35,NULL,'AC','LLAVE 3/4 ',4,7),(144,'LLCO 03 ','COMBINADA ',27,NULL,'AC','LLAVE 14MM',4,7),(145,'LLCO  04','COMBINADA ',24,NULL,'AC','LLAVE 10MM',4,7),(146,'LLBO 02 ','DE BOCA ',26,NULL,'AC','LLAVE',4,7),(147,'LLCO 05','COMBINADA ',21,NULL,'AC','LLAVE  18MM',4,7),(148,'LLCO06','COMBINADA',35,NULL,'AC','LLAVE 11/16',4,7),(149,'LLCU 01','TIPO C',21,NULL,'AC','LLAVE 17MM-13MM',4,7),(150,'DS P 01','Plano ',27,NULL,'AC','Destornillador ',4,7),(151,'DS PH 01','Philips ',35,NULL,'AC','Destornillador ',4,7),(152,'LLALM 01 ','ALEM',35,NULL,'AC','JUEGO DE LLAVES',4,7),(153,'LLCO 08 ','Combinada',28,NULL,'AC','Llave 8MM',4,7),(154,'PNZS 01','Zeguer recta ',32,NULL,'AC','Pinza',4,7),(155,'PNZS 02','Zeguers curva ',32,NULL,'AC','Pinza',4,7),(156,'PNZ 03','De  punta ',32,NULL,'AC','Pinza',4,7),(157,'PLC 01 ','Encastre 1/2 ',27,NULL,'AC','Palanca ',4,7),(158,'LLCO 09','Combinada',21,NULL,'AC','Llave 3/4 ',4,7),(159,'TST 01','Pinza',25,NULL,'AC','Tester ',4,7),(160,'HD 01 ','EP 450 S ',22,NULL,'TR','Handye ',4,7),(161,'HD 2 ','EP450 S ',22,NULL,'AC','Handye ',4,7),(162,'TB 01 ','Encastre 1/2 ',21,NULL,'AC','TUBO 32 MM',4,7),(163,'TBAL 01 ','ALEM ',32,NULL,'AC','TUBO 14MM',4,7),(164,'MT 01','De mano ',32,NULL,'AC','Masa de 10 kg ',4,7),(165,'MT 02 ','De mano',32,NULL,'AC','Martillo ',4,7),(166,'PNZ 04 ','Amarilla con negro ',36,NULL,'AC','Pinza',4,7),(167,'LIM 01 ','Plana ',35,NULL,'AC','Lima ',4,7),(168,'TR 01','Cuter ',27,NULL,'AC','Trincheta ',4,7),(169,'LLVF 02','Francesa 30mm',21,NULL,'AC','Llave',4,7),(170,'LLCO 10 ','Combinada ',20,NULL,'AC','LLAVE 15/16 ',4,7),(171,'LLCO 11','Combinada',35,NULL,'AC','Llave 24mm',4,7),(172,'LLCO 12','Combinada ',27,NULL,'AC','Llave 17mm ',4,7),(173,'LLALM 02 ','Alem',32,NULL,'AC','Llave 4mm',4,7),(175,'0002019','2019',1,NULL,'AN','nueva herramienta ',2,6),(176,'01','modelo test',29,NULL,'AN','descr test',9,7),(177,'030303030','modelo 1',11,NULL,'AN','nueva herramienta',1,6),(178,'0012','sas',1,NULL,'AN','herra-22',4,6),(179,'0000111','Modelo 01',3,NULL,'TR','prueba 01',4,6),(180,'11111','1111',4,NULL,'AN','11111',5,6),(181,'000002222223','02',1,NULL,'AC','nueva herramienta 02',8,6);
/*!40000 ALTER TABLE `herramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_lecturas`
--

DROP TABLE IF EXISTS `historial_lecturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_lecturas` (
  `id_lectura` int(10) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(10) NOT NULL,
  `lectura` int(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `usrId` int(11) NOT NULL,
  `observacion` text,
  `operario_nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `turno` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(4) NOT NULL,
  `obs` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_lectura`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_lecturas`
--

LOCK TABLES `historial_lecturas` WRITE;
/*!40000 ALTER TABLE `historial_lecturas` DISABLE KEYS */;
INSERT INTO `historial_lecturas` VALUES (128,2,240,'2020-04-01 13:33:22',54,'prueba 01','rs','m','AC',NULL),(127,2,200,'2020-04-01 13:32:49',54,'prueba 00','rs','m','AC',NULL),(126,2,0,'2020-04-01 13:30:23',54,'Lectura alta de equipo','-','Alta','AC',NULL),(125,11,520,'2020-04-01 13:11:54',2,'prueba 04','rs','m','AC',NULL),(124,11,500,'2020-04-01 13:07:25',2,'prueba 03','rs','m','AC',NULL),(123,11,440,'2020-04-01 13:05:31',2,'prueba 03','rs','m','AC',NULL),(122,11,400,'2020-04-01 13:04:32',2,'prueba 02','rs','m','AC',NULL),(121,11,250,'2020-04-01 12:45:11',2,'PRUEBA 02','rs','m','AC',NULL),(120,11,240,'2020-04-01 12:42:37',2,'prueba 01','rs','m','AC',NULL),(119,1,5000,'2020-03-11 16:48:04',2,'zxcxz','weqe','d','AC',NULL),(118,16,3000,'2020-03-11 10:39:28',2,'asdasd','Fernando','4','AC',NULL),(117,1,2950,'2020-03-11 10:34:54',2,'dsadsa','dsadas','dd','AC',NULL),(115,1,1900,'2020-03-11 10:18:21',2,'dsadasd','sdad','34','AC',NULL),(116,1,2800,'2020-03-11 10:26:40',2,'sdadasd','3','3','AC',NULL),(114,17,1800,'2020-03-11 10:15:23',2,'sad','Fernando','34','AC',NULL),(113,16,2800,'2020-03-11 10:14:05',2,'sdssdasd','Fernando','444','AC',NULL),(112,1,1500,'2020-03-06 15:47:47',2,'asdasd','Fernando','Tarde','AC',NULL),(111,1,999,'2020-03-04 15:33:20',1,'test-fer','Fernando','ma√±ana','AC',NULL),(110,8,999,'2020-03-04 15:30:53',1,'lec-fer','Fernando','ma√±ana','AC',NULL),(109,1,270,'2020-03-03 11:50:36',1,'probando preven por horas','Eliana','m√±n','AC',NULL),(108,8,840,'2020-03-03 11:48:38',54,'prueba05','rs','m','AC',NULL),(107,8,770,'2020-03-03 11:47:03',54,'prueba03','rs','m','AC',NULL),(106,8,512,'2020-03-03 11:36:44',54,'prueba03','rs','m','AC',NULL),(105,8,445,'2020-03-03 11:34:48',54,'prueba02','rs','m','AC',NULL),(104,8,255,'2020-03-03 11:33:59',54,'prueba01','rs','m','AC',NULL),(103,16,255,'2020-03-03 11:33:17',54,'prueba01','rs','m','AC',NULL),(102,8,215,'2020-03-03 11:31:48',54,'prueba 0\r\n','rs','m','AC',NULL),(101,8,0,'2020-03-03 11:30:36',54,'Lectura alta de equipo','-','Alta','AC',NULL),(100,1,170,'2020-02-27 10:04:47',1,'Descripcion: Nueva falla encontrada | OT: 1','mantest1, mantest1','-','AC',NULL),(99,1,156,'2020-02-19 11:25:10',1,'Descripcion: Regular Luz de V√°lvula de Motor (cada 2000hs segun horometro). | OT: 22','mantest1, mantest1','-','AC',NULL),(98,14,300,'2020-02-19 10:37:02',1,'Descripcion: Limpie el Cuerpo del Radiador. | OT: 18','mantest1, mantest1','-','AC',NULL),(97,14,276,'2020-02-19 10:35:48',55,'Descripcion: Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros. | OT: 17','mantest2, mantest2','-','AC',NULL),(96,14,266,'2020-02-19 10:20:21',1,'Descripcion: tarea de prueba 13/02 | OT: 12','mantest1, mantest1','-','AC',NULL),(95,17,1730,'2020-02-19 10:23:46',1,'Descripcion: Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros. | OT: 16','mantest1, mantest1','-','AC',NULL),(94,14,220,'2020-02-19 10:11:25',1,'Descripcion: Prueba maury | OT: 15','mantest1, mantest1','-','AC',NULL),(91,14,205,'2020-02-19 10:27:53',1,'Descripcion: Probando bugs | OT: 20','mantest1, mantest1','-','AC',NULL),(92,11,210,'2020-02-19 10:24:56',1,'Descripcion: Falla nueva | OT: 21','mantest1, mantest1','-','AC',NULL),(93,1,130,'2020-02-19 10:09:38',2,'Descripcion: Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros. | OT: 19','suptest1, suptest1','-','AC',NULL),(90,17,1750,'2020-02-19 10:08:32',1,'Descripcion: Augusto buenas tardes!! Feliz 2020!!Respecto a la fecha de entrega del preventivo por hor√≥metro la respuesta te la pasara Carlos Bra√±a (en copia), quien se ha integrado al equipo de Trazalog como Project Manager y es quien maneja la bolsa de trabajo del √Årea de Servicios.Por la visita de ma√±ana confirmame el horario para esperarte.Respecto a los puntos de mejora propuestos, lo revisare y te dar√© una respuesta.Abrazo!!! | OT: 13','mantest1, mantest1','-','AC',NULL),(88,16,0,'2020-02-09 01:24:40',2,'Lectura alta de equipo','-','Alta','AC',NULL),(89,14,200,'2020-02-10 13:10:05',1,'Descripcion: Falla de prueba eli | OT: 10','mantest1, mantest1','-','AC',NULL),(86,17,1710,'2020-02-05 12:26:09',54,'fafa','dutis','tarde','AC',NULL),(87,14,150,'2020-02-05 15:32:19',1,'Descripcion: probando la s.s | OT: 9','mantest1, mantest1','-','AC',NULL),(85,17,125,'2020-02-04 11:57:56',1,'Descripcion: probando adjunto | OT: 3','mantest1, mantest1','-','AC',NULL),(129,2,250,'2020-04-01 13:34:50',54,'prueba 02','rs','m','AC',NULL),(130,11,550,'2020-04-06 13:23:05',1,'Descripcion: Cambiar Aceite de Motor (utilizar aceite 15W40). | OT: 6','mantest1, mantest1','-','AC',NULL),(131,2,500,'2020-04-01 13:57:41',2,'prueba 04','rs','m','AC',NULL),(132,2,530,'2020-04-01 14:02:30',2,'prueba 05 ','rs','m','AC',NULL),(133,2,550,'2020-04-01 14:03:21',2,'prueba 06','rs','m','AC',NULL),(134,18,0,'2020-04-02 14:40:15',1,'Lectura alta de equipo','-','Alta','AC',NULL),(135,19,0,'2020-04-22 21:16:17',1,'Lectura alta de equipo','-','Alta','AC',NULL),(136,19,100,'2020-04-23 11:25:40',1,'sin observaciones','Eliana','m√±n','AC',NULL),(137,5,0,'2020-04-28 16:54:39',1,'Lectura alta de equipo','-','Alta','AC',NULL),(138,5,0,'2020-04-28 16:54:43',1,NULL,'','','IN',NULL),(139,7,0,'2020-04-28 17:07:39',1,'Lectura alta de equipo','-','Alta','AC',NULL),(140,9,0,'2020-04-28 17:09:25',1,'Lectura alta de equipo','-','Alta','AC',NULL),(141,2,0,'2020-04-28 17:10:33',1,NULL,'','','IN',NULL),(142,7,0,'2020-04-28 17:10:52',1,NULL,'','','IN',NULL),(143,5,0,'2020-04-28 17:15:35',1,'Lectura alta de equipo','-','Alta','AC',NULL),(144,19,115,'2020-04-28 19:02:26',1,'Descripcion: probando grafica | OT: 8','mantest1, mantest1','-','AC',NULL),(145,19,120,'2020-04-29 12:18:21',1,'Descripcion: Solicitud urgente | OT: 1','mantest1, mantest1','-','AC',NULL),(146,20,0,'2020-04-29 13:12:52',53,'Lectura alta de equipo','-','Alta','AC',NULL),(147,3,0,'2020-04-29 19:47:24',1,'Lectura alta de equipo','-','Alta','AC',NULL),(148,13,0,'2020-04-29 19:47:32',1,'Lectura alta de equipo','-','Alta','AC',NULL),(149,10,0,'2020-04-29 22:21:38',53,'Lectura alta de equipo','-','Alta','AC',NULL),(150,15,0,'2020-04-29 22:21:42',53,'Lectura alta de equipo','-','Alta','AC',NULL),(151,12,0,'2020-04-29 22:22:19',2,'Lectura alta de equipo','-','Alta','AC',NULL),(152,14,0,'2020-04-29 22:23:05',54,NULL,'','','IN',NULL),(153,14,0,'2020-04-29 22:23:07',54,'Lectura alta de equipo','-','Alta','AC',NULL),(154,14,100,'2020-04-29 22:23:49',54,'probando boton ','Eliana','tarde','RE',NULL),(155,14,0,'2020-04-29 22:23:56',54,NULL,'','','IN',NULL),(156,14,0,'2020-04-29 22:23:59',54,'Lectura alta de equipo','-','Alta','AC',NULL),(157,21,100,'2020-04-29 22:28:46',54,'Lectura alta de equipo','-','Alta','AC',NULL),(158,21,120,'2020-04-29 22:33:30',54,'probando lectura','Eliana','tarde','AC',NULL),(159,21,125,'2020-04-29 22:35:42',54,'equipo en reparacion ','Eliana','noche','RE',NULL),(160,22,0,'2020-05-07 21:39:26',4,'Lectura alta de equipo','-','Alta','AC',NULL),(161,22,1000,'2020-05-07 22:47:05',2,'s/obs','Eliana','noche','AC',NULL),(162,1,9000,'2020-06-26 18:49:20',2,'p0','rs','m','AC',NULL),(163,1,9211,'2020-06-26 18:53:55',2,'p1','rs','m','AC',NULL),(164,1,9249,'2020-06-26 18:55:10',2,'p2','rs','m','AC',NULL),(165,1,9250,'2020-06-26 18:56:17',2,'p2','rs','m','AC',NULL),(166,1,9260,'2020-06-26 18:58:15',2,'p3','rs','m','AC',NULL),(167,16,9950,'2020-06-26 19:15:31',1,'p4','rs','m','AC',NULL),(168,1,9950,'2020-06-26 19:17:08',1,'p4','rs','m','AC',NULL),(169,16,11000,'2020-06-26 19:29:01',2,'p5','rs','m','AC',NULL),(170,1,12000,'2020-06-26 19:29:39',2,'p6','rs','m','AC',NULL),(171,1,13000,'2020-06-26 19:40:48',2,'p6','rs','m','AC',NULL),(172,19,200,'2020-06-29 11:59:15',1,'Descripcion: probando bug | OT: 33','mantest1, mantest1','-','AC',NULL),(173,1,13500,'2020-07-01 19:51:37',1,'p07','rs','m','AC',NULL),(174,1,13900,'2020-07-01 19:59:55',1,'P08','rs','m','AC',NULL),(175,13,3444,'2020-08-31 15:27:54',1,'Descripcion: Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.) | OT: 42','mantest1, mantest1','-','AC',NULL),(176,1,6666,'2020-08-31 18:54:39',1,'Descripcion: Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.) | OT: 43','mantest1, mantest1','-','AC',NULL),(177,1,7010,'2020-09-01 12:54:11',1,'Descripcion: prueba1 | OT: 44','mantest1, mantest1','-','AC',NULL),(178,5,0,'2020-09-14 15:05:15',2,NULL,'','','IN',NULL),(179,5,0,'2020-09-14 15:05:18',2,'Lectura alta de equipo','-','Alta','AC',NULL),(180,13,3445,'2020-09-25 14:12:00',1,'Descripcion: Cambiar Aceite de Motor (utilizar aceite 15W40). | OT: 201','mantest1, mantest1','-','AC',NULL),(181,22,1003,'2020-09-25 15:55:12',1,'Descripcion: Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros. | OT: 200','mantest1, mantest1','-','IN',NULL),(182,10,111,'2020-09-25 16:09:53',1,'Descripcion: Cambiar Cartucho Filtro de Aire. | OT: 199','mantest1, mantest1','-','AC',NULL),(183,10,114,'2020-09-28 15:49:32',1,'Descripcion: Limpie las Mangueras y las Conexiones del Radiador. | OT: 207','mantest1, mantest1','-','AC',NULL),(184,17,1820,'2020-10-03 03:48:01',1,'Descripcion: Cambiar Aceite de Motor (cada 250 hs seg√∫n horometro, utilizar aceite 15W40). | OT: 208','mantest1, mantest1','-','AC',NULL),(185,20,2,'2020-10-03 04:32:40',1,'Descripcion: Limpiar Tanque de Combustible. | OT: 210','mantest1, mantest1','-','IN',NULL),(186,12,33,'2020-10-04 23:52:04',1,'Descripcion: Revise la Bomba de Agua | OT: 211','mantest1, mantest1','-','AC',NULL),(187,11,553,'2020-10-05 00:03:03',1,'Descripcion: Compruebe el Intercooler y las Mangueras de Conexion. | OT: 212','mantest1, mantest1','-','AC',NULL),(188,22,1010,'2020-10-05 00:20:06',1,'Descripcion: Revise el Sensor de Temperatura. | OT: 213','mantest1, mantest1','-','IN',NULL);
/*!40000 ALTER TABLE `historial_lecturas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizaLectura AFTER INSERT ON historial_lecturas FOR EACH ROW
UPDATE equipos SET equipos.ultima_lectura = new.lectura WHERE new.id_equipo = equipos.id_equipo */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizaLectura7 AFTER UPDATE ON historial_lecturas
     FOR EACH ROW BEGIN
       if((SELECT MAX(fecha) FROM historial_lecturas where historial_lecturas.id_equipo = NEW.id_equipo) = old.fecha) then
         update equipos set ultima_lectura = new.lectura where equipos.id_equipo =  new.id_equipo;
       END IF;
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `infocomponentes`
--

DROP TABLE IF EXISTS `infocomponentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infocomponentes` (
  `infocompid` int(11) NOT NULL AUTO_INCREMENT,
  `infocompdescrip` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`infocompid`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infocomponentes`
--

LOCK TABLES `infocomponentes` WRITE;
/*!40000 ALTER TABLE `infocomponentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `infocomponentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoequipos`
--

DROP TABLE IF EXISTS `infoequipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoequipos` (
  `infoid` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`infoid`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoequipos`
--

LOCK TABLES `infoequipos` WRITE;
/*!40000 ALTER TABLE `infoequipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoequipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacionequipo`
--

DROP TABLE IF EXISTS `informacionequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacionequipo` (
  `id_informacion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_informacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacionequipo`
--

LOCK TABLES `informacionequipo` WRITE;
/*!40000 ALTER TABLE `informacionequipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacionequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcasequipos`
--

DROP TABLE IF EXISTS `marcasequipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcasequipos` (
  `marcaid` int(11) NOT NULL AUTO_INCREMENT,
  `marcadescrip` varchar(255) DEFAULT NULL,
  `estado` varchar(3) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`marcaid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcasequipos`
--

LOCK TABLES `marcasequipos` WRITE;
/*!40000 ALTER TABLE `marcasequipos` DISABLE KEYS */;
INSERT INTO `marcasequipos` VALUES (1,'Marca 1','AC',6),(2,'Toyota','AC',6),(3,'Caterpillar','AC',6),(4,'Freund','AC',6),(5,'Sullair','AC',6);
/*!40000 ALTER TABLE `marcasequipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_a√±o`
--

DROP TABLE IF EXISTS `modelo_a√±o`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_a√±o` (
  `id_a√±o` int(100) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`id_a√±o`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_a√±o`
--

LOCK TABLES `modelo_a√±o` WRITE;
/*!40000 ALTER TABLE `modelo_a√±o` DISABLE KEYS */;
INSERT INTO `modelo_a√±o` VALUES (1,'wqeqewqeqw');
/*!40000 ALTER TABLE `modelo_a√±o` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_insumos`
--

DROP TABLE IF EXISTS `orden_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_insumos` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `solicitante` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `destino` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comprobante` int(255) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_ot` int(11) NOT NULL,
  PRIMARY KEY (`id_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_insumos`
--

LOCK TABLES `orden_insumos` WRITE;
/*!40000 ALTER TABLE `orden_insumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_pedido`
--

DROP TABLE IF EXISTS `orden_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_pedido` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(11) NOT NULL,
  `nro_trabajo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_entregada` datetime NOT NULL,
  `estado` varchar(2) NOT NULL,
  `id_trabajo` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `numero_remito` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_trabajo` (`id_trabajo`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_pedido`
--

LOCK TABLES `orden_pedido` WRITE;
/*!40000 ALTER TABLE `orden_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_servicio`
--

DROP TABLE IF EXISTS `orden_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_servicio` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `lectura` double DEFAULT NULL,
  `fecha` date NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  `id_solicitudreparacion` int(11) NOT NULL,
  `valesid` int(11) DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_ordenherraminetas` int(11) DEFAULT NULL,
  `id_orden_insumo` int(11) DEFAULT NULL,
  `id_ot` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `fechahorainicio` datetime NOT NULL,
  `fechahorafin` datetime NOT NULL,
  `horometroinicio` double NOT NULL,
  `horometrofin` double NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_equipo` (`id_equipo`) USING BTREE,
  KEY `id_empresaservicio` (`id_contratista`) USING BTREE,
  KEY `id_solicitudreparacion` (`id_solicitudreparacion`) USING BTREE,
  KEY `id_orden_insumo` (`id_orden_insumo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_servicio`
--

LOCK TABLES `orden_servicio` WRITE;
/*!40000 ALTER TABLE `orden_servicio` DISABLE KEYS */;
INSERT INTO `orden_servicio` VALUES (1,NULL,'2020-04-29','',19,0,1,0,'CE',NULL,NULL,1,6,'2020-04-21 12:18:17','2020-04-29 12:18:21',118,120),(2,NULL,'2020-05-07','',1,0,0,0,'C',NULL,NULL,3,6,'2020-04-30 22:17:18','2020-05-07 22:17:21',4000,5000),(3,NULL,'2020-06-29','',19,0,0,0,'CE',NULL,NULL,33,6,'2020-06-10 11:59:13','2020-06-29 11:59:15',120,200),(4,NULL,'2020-07-01','',19,0,0,0,'C',NULL,NULL,31,6,'2020-07-01 19:38:29','2020-07-01 19:38:33',300,300),(5,NULL,'2020-07-01','',1,0,0,0,'C',NULL,NULL,30,6,'2020-07-01 19:40:30','2020-07-01 19:40:38',13001,13001),(6,NULL,'2020-07-01','',1,0,0,0,'C',NULL,NULL,34,6,'2020-07-01 19:58:25','2020-07-01 19:58:34',14000,14000),(7,NULL,'2020-08-31','',13,0,12,0,'CE',NULL,NULL,42,6,'2020-08-31 15:27:52','2020-08-31 15:27:54',3344,3444),(8,NULL,'2020-08-31','',1,0,13,0,'CE',NULL,NULL,43,6,'2020-09-01 18:54:37','2020-08-31 18:54:39',4566,6666),(9,NULL,'2020-09-01','',1,0,21,0,'CE',NULL,NULL,44,6,'2020-09-01 12:54:03','2020-09-01 12:54:11',7000,7010),(10,NULL,'2020-09-25','',13,0,0,1,'CE',NULL,NULL,201,6,'2020-09-25 14:11:59','2020-09-25 14:12:00',3443,3445),(11,NULL,'2020-09-25','',22,0,0,2,'CE',NULL,NULL,200,6,'2020-09-25 15:55:08','2020-09-25 15:55:12',1001,1003),(13,NULL,'2020-09-25','',10,0,0,4,'CE',NULL,NULL,199,6,'2020-09-25 16:09:52','2020-09-25 16:09:53',111,111),(15,NULL,'2020-09-28','',10,0,0,0,'CE',NULL,NULL,207,6,'2020-09-28 15:49:30','2020-09-28 15:49:32',112,114),(16,NULL,'2020-10-03','',17,0,0,5,'CE',NULL,NULL,208,6,'2020-10-03 03:47:58','2020-10-03 03:48:01',1810,1820),(17,NULL,'2020-10-03','',20,0,0,6,'CE',NULL,NULL,210,6,'2020-11-05 04:32:38','2020-10-03 04:32:40',1,2),(18,NULL,'2020-10-04','',12,0,0,7,'CE',NULL,NULL,211,6,'2020-10-04 23:52:02','2020-10-04 23:52:04',22,33),(19,NULL,'2020-10-05','',11,0,0,8,'CE',NULL,NULL,212,6,'2020-10-05 00:03:02','2020-10-05 00:03:03',551,553),(21,NULL,'2020-10-05','',22,0,0,10,'CE',NULL,NULL,213,6,'2020-10-05 00:20:06','2020-10-05 00:20:06',1004,1010);
/*!40000 ALTER TABLE `orden_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_trabajo`
--

DROP TABLE IF EXISTS `orden_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_trabajo` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_tarea` int(11) DEFAULT NULL,
  `nro` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_program` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_terminada` datetime NOT NULL,
  `fecha_aviso` datetime NOT NULL,
  `fecha_entregada` datetime NOT NULL,
  `descripcion` text NOT NULL,
  `cliId` int(11) NOT NULL DEFAULT '1',
  `estado` varchar(2) NOT NULL,
  `id_usuario` int(11) NOT NULL DEFAULT '1',
  `id_usuario_a` int(11) DEFAULT NULL,
  `id_usuario_e` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL DEFAULT '1',
  `id_proveedor` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `tipo` varchar(2) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `duracion` double DEFAULT NULL,
  `id_tareapadre` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `lectura_programada` double DEFAULT NULL,
  `lectura_ejecutada` double DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `latitud` varchar(45) DEFAULT NULL,
  `longitud` varchar(45) DEFAULT NULL,
  `justificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `orden_trabajo_ibfk_1` (`cliId`) USING BTREE,
  KEY `id_usuario` (`id_usuario`) USING BTREE,
  KEY `id_usuariosolicitante` (`id_usuario_a`) USING BTREE,
  KEY `usuario_entrega` (`id_usuario_e`) USING BTREE,
  KEY `id_sucursal` (`id_sucursal`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_trabajo`
--

LOCK TABLES `orden_trabajo` WRITE;
/*!40000 ALTER TABLE `orden_trabajo` DISABLE KEYS */;
INSERT INTO `orden_trabajo` VALUES (1,0,'1','2020-04-29','2020-04-29 00:00:00','2020-04-29 12:08:41','0000-00-00 00:00:00','2020-04-29 12:12:31','0000-00-00 00:00:00','0000-00-00 00:00:00','Solicitud urgente',1,'CE',2,1,1,1,0,1,'2',19,60,1,6,0,0,8101,'','',NULL),(2,-1,NULL,'0000-00-00','2020-04-29 00:00:00','2020-04-29 12:34:54','0000-00-00 00:00:00','2020-04-29 22:50:38','0000-00-00 00:00:00','0000-00-00 00:00:00','Ot cliente 1',1,'T',2,55,0,1,1,0,'1',1,NULL,NULL,6,NULL,NULL,8104,'','',NULL),(3,0,'1','2020-04-29','2020-04-30 00:00:00','2020-04-29 22:40:27','0000-00-00 00:00:00','2020-04-29 23:29:39','0000-00-00 00:00:00','0000-00-00 00:00:00','probando preventivo',1,'T',54,1,1,1,0,1,'3',1,30,1,6,0,0,8108,'','',NULL),(4,-1,NULL,'0000-00-00','2020-04-29 00:00:00','2020-04-29 23:02:59','0000-00-00 00:00:00','2020-04-29 23:03:01','0000-00-00 00:00:00','0000-00-00 00:00:00','OT',1,'T',1,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,8111,'','',NULL),(5,0,'1','2020-04-29','2020-05-01 00:00:00','2020-04-29 23:09:48','0000-00-00 00:00:00','2020-04-29 23:09:52','0000-00-00 00:00:00','0000-00-00 00:00:00','s.s',1,'T',2,1,1,1,0,2,'2',3,60,2,6,0,0,8112,'','',NULL),(6,-1,NULL,'0000-00-00','2020-04-30 00:00:00','2020-04-30 15:50:30','0000-00-00 00:00:00','2020-04-30 15:50:38','0000-00-00 00:00:00','0000-00-00 00:00:00','tincho',1,'T',1,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,8113,'','',NULL),(7,0,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Prueba sergio',1,'AS',55,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,8128,'','',NULL),(8,0,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Ot bugs',1,'AS',2,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,8129,'','',NULL),(9,0,'1','2020-05-06','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Probando s.s 06/05',1,'AS',2,1,1,1,0,3,'2',19,60,3,6,0,0,8130,'','',NULL),(10,12,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Compruebe el Estado de las Mordazas del Centralizador del Retenedor.',1,'AS',2,55,0,1,1,0,'1',14,NULL,NULL,6,NULL,NULL,8132,'','',NULL),(11,73,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Mandos Finales (cada 1000 hs seg√∫n horometro utilizar aceite SAE 50).',1,'AS',2,1,0,1,1,0,'1',14,NULL,NULL,6,NULL,NULL,8134,'','',NULL),(12,19,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'AS',2,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,8136,'','',NULL),(13,99,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie el Filtro de Admisi√≥n de Aire (ITEM. 51549).',1,'AS',2,1,0,1,1,0,'1',12,NULL,NULL,6,NULL,NULL,8138,'','',NULL),(14,15,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie los Filtros del Motor',1,'AS',2,1,0,1,1,0,'1',14,NULL,NULL,6,NULL,NULL,8140,'','',NULL),(15,15,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie los Filtros del Motor',1,'AS',2,55,0,1,1,0,'1',12,NULL,NULL,6,NULL,NULL,8142,'','',NULL),(16,95,NULL,'0000-00-00','2020-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Lubricar Movimiento (utilizar grasa EP 62).',1,'AS',2,55,0,1,1,0,'1',14,NULL,NULL,6,NULL,NULL,8144,'','',NULL),(17,19,NULL,'0000-00-00','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',2,NULL,0,1,1,0,'1',1,NULL,NULL,6,NULL,NULL,8146,'','',NULL),(18,46,NULL,'0000-00-00','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Motor (cada 250 hs seg√∫n horometro, utilizar aceite 15W40).',1,'AS',2,1,0,1,1,0,'1',11,NULL,NULL,6,NULL,NULL,8147,'','',NULL),(19,100,NULL,'0000-00-00','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie el Cartucho de Filtro de Aire.',1,'AS',2,55,0,1,1,0,'1',14,NULL,NULL,6,NULL,NULL,8149,'','',NULL),(20,88,NULL,'0000-00-00','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Filtro Separador de Agua del Sistema de Combustible.',1,'AS',2,1,0,1,1,0,'1',1,NULL,NULL,6,NULL,NULL,8151,'','',NULL),(21,0,NULL,'0000-00-00','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','eli-001',1,'AS',54,55,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,8153,'','',NULL),(22,0,'1','2020-05-07','2020-05-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','sin fallas',1,'AS',2,1,1,1,0,4,'2',22,60,4,6,0,0,8156,'','',NULL),(23,4,NULL,'0000-00-00','2020-05-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise la Bomba de Agua',1,'AS',1,55,0,1,1,0,'1',22,NULL,NULL,6,NULL,NULL,8159,'','',NULL),(26,0,NULL,'0000-00-00','2020-05-22 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Nueva ot cliente 1',1,'PL',1,NULL,0,1,1,0,'1',10,NULL,NULL,6,NULL,NULL,10001,NULL,NULL,NULL),(27,0,'1','2020-05-26','2020-05-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','prueba con mati',1,'AS',2,2,1,1,0,5,'2',10,60,5,6,0,0,10006,'','',NULL),(28,46,'1','2020-06-26','2020-06-26 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Motor (cada 250 hs seg√∫n horometro, utilizar aceite 15W40).',1,'AS',2,53,1,1,0,2,'3',1,120,2,6,0,9260,10081,'','',NULL),(29,73,'1','2020-06-26','2020-06-27 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Mandos Finales (cada 1000 hs seg√∫n horometro utilizar aceite SAE 50).',1,'AS',3,53,1,1,0,3,'3',1,120,3,6,0,9950,10082,'','',NULL),(30,38,'1','2020-06-26','2020-06-28 10:00:00','2020-06-26 19:45:12','0000-00-00 00:00:00','2020-07-01 19:37:17','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 500hs segun horometro, utilizar aceite hidr√°ulico 68).. ',1,'T',2,1,1,1,0,4,'3',1,120,4,6,0,13000,10083,'','',NULL),(31,0,NULL,'0000-00-00','2020-06-29 00:00:00','2020-06-29 11:10:16','0000-00-00 00:00:00','2020-06-29 11:53:38','0000-00-00 00:00:00','0000-00-00 00:00:00','probando cierre',1,'T',2,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,10084,'','',NULL),(32,0,NULL,'0000-00-00','2020-06-29 00:00:00','2020-06-29 11:30:40','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','sin tarea estandar',1,'C',2,55,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,10085,'','',NULL),(33,0,NULL,'0000-00-00','2020-06-29 00:00:00','2020-06-29 11:58:02','0000-00-00 00:00:00','2020-06-29 11:58:04','0000-00-00 00:00:00','0000-00-00 00:00:00','probando bug',1,'CN',2,1,0,1,1,0,'1',19,NULL,NULL,6,NULL,NULL,10087,'','',NULL),(34,38,'1','2020-07-01','2020-07-01 12:00:00','2020-07-01 19:57:59','0000-00-00 00:00:00','2020-07-01 19:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 500hs segun horometro, utilizar aceite hidr√°ulico 68).. ',1,'T',1,1,1,1,0,4,'3',1,120,4,6,0,13500,10088,'','',NULL),(35,19,NULL,'0000-00-00','2020-08-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',2,NULL,0,1,1,0,'1',1,NULL,NULL,6,NULL,NULL,10139,NULL,NULL,NULL),(36,2,'1','2020-08-07','2020-08-07 18:20:00','2020-09-24 16:49:39','0000-00-00 00:00:00','2020-09-24 16:49:45','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie las Mangueras y las Conexiones del Radiador.',1,'T',2,1,1,1,0,6,'2',1,60,6,6,0,0,10140,'','',NULL),(37,243,'1','2020-08-10','2020-08-10 15:59:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Tarea eli',1,'AS',2,53,1,1,0,7,'2',15,60,7,6,0,0,10142,'','',NULL),(38,4,'1','2020-08-10','2020-08-10 19:06:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise la Bomba de Agua',1,'PL',2,55,1,1,0,8,'2',16,60,8,6,0,0,10148,'','',NULL),(39,3,'1','2020-08-10','2020-08-10 16:18:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie Liquido de Refrigerante de Motor (Revise la Mezcla Anticongelante antes de la Epoca Invernal).',1,'AS',2,53,1,1,0,9,'2',1,60,9,6,0,0,10149,'','',NULL),(40,1,'1','2020-08-10','2020-08-10 16:24:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'AS',2,53,1,1,0,10,'2',1,60,10,6,0,0,10151,'','',NULL),(41,2,'1','2020-08-11','2020-08-11 14:15:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie las Mangueras y las Conexiones del Radiador.',1,'AS',2,53,1,1,0,11,'2',1,60,11,6,0,0,10163,'','',NULL),(42,1,'1','2020-08-31','2020-08-31 15:24:00','2020-08-31 15:27:01','0000-00-00 00:00:00','2020-08-31 15:27:03','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'CN',2,1,1,1,0,12,'2',13,60,12,6,0,0,10170,'','',NULL),(43,1,'1','2020-08-31','2020-09-01 07:52:00','2020-08-31 18:53:50','0000-00-00 00:00:00','2020-08-31 18:54:03','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'CN',2,1,1,1,0,13,'2',1,60,13,6,0,0,10172,'','',NULL),(44,0,'1','2020-09-01','2020-09-02 10:00:00','2020-09-01 12:46:26','0000-00-00 00:00:00','2020-09-01 12:46:53','0000-00-00 00:00:00','0000-00-00 00:00:00','prueba1',1,'CN',2,1,1,1,0,21,'2',1,60,21,6,0,0,10175,'','',NULL),(45,19,'1','2020-09-01','2020-09-01 10:00:00','2020-09-01 13:09:32','0000-00-00 00:00:00','2020-09-01 13:09:50','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'T',3,1,1,1,0,5,'3',1,5,5,6,0,0,10178,'','',NULL),(46,19,'1','2020-09-01','2020-09-02 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10179,NULL,NULL,NULL),(47,19,'1','2020-09-01','2020-09-03 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10180,NULL,NULL,NULL),(48,19,'1','2020-09-01','2020-09-04 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10181,NULL,NULL,NULL),(49,19,'1','2020-09-01','2020-09-05 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10182,NULL,NULL,NULL),(50,19,'1','2020-09-01','2020-09-06 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10183,NULL,NULL,NULL),(51,19,'1','2020-09-01','2020-09-07 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10184,NULL,NULL,NULL),(52,19,'1','2020-09-01','2020-09-08 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10185,NULL,NULL,NULL),(53,19,'1','2020-09-01','2020-09-09 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10186,NULL,NULL,NULL),(54,19,'1','2020-09-01','2020-09-10 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10187,NULL,NULL,NULL),(55,19,'1','2020-09-01','2020-09-11 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10188,NULL,NULL,NULL),(56,19,'1','2020-09-01','2020-09-12 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10189,NULL,NULL,NULL),(57,19,'1','2020-09-01','2020-09-13 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10190,NULL,NULL,NULL),(58,19,'1','2020-09-01','2020-09-14 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10191,NULL,NULL,NULL),(59,19,'1','2020-09-01','2020-09-15 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10192,NULL,NULL,NULL),(60,19,'1','2020-09-01','2020-09-16 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10193,NULL,NULL,NULL),(61,19,'1','2020-09-01','2020-09-17 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10194,NULL,NULL,NULL),(62,19,'1','2020-09-01','2020-09-18 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10195,NULL,NULL,NULL),(63,19,'1','2020-09-01','2020-09-19 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10196,NULL,NULL,NULL),(64,19,'1','2020-09-01','2020-09-20 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10197,NULL,NULL,NULL),(65,19,'1','2020-09-01','2020-09-21 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10198,NULL,NULL,NULL),(66,19,'1','2020-09-01','2020-09-22 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10199,NULL,NULL,NULL),(67,19,'1','2020-09-01','2020-09-23 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10200,NULL,NULL,NULL),(68,19,'1','2020-09-01','2020-09-24 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10201,NULL,NULL,NULL),(69,19,'1','2020-09-01','2020-09-25 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10202,NULL,NULL,NULL),(70,19,'1','2020-09-01','2020-09-26 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10203,NULL,NULL,NULL),(71,19,'1','2020-09-01','2020-09-27 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10204,NULL,NULL,NULL),(72,19,'1','2020-09-01','2020-09-28 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10205,NULL,NULL,NULL),(73,19,'1','2020-09-01','2020-09-29 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10206,NULL,NULL,NULL),(74,19,'1','2020-09-01','2020-09-30 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10207,NULL,NULL,NULL),(75,19,'1','2020-09-01','2020-10-01 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10208,NULL,NULL,NULL),(76,19,'1','2020-09-01','2020-10-02 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10209,NULL,NULL,NULL),(77,19,'1','2020-09-01','2020-10-03 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10210,NULL,NULL,NULL),(78,19,'1','2020-09-01','2020-10-04 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10211,NULL,NULL,NULL),(79,19,'1','2020-09-01','2020-10-05 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10212,NULL,NULL,NULL),(80,19,'1','2020-09-01','2020-10-06 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10213,NULL,NULL,NULL),(81,19,'1','2020-09-01','2020-10-07 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10214,NULL,NULL,NULL),(82,19,'1','2020-09-01','2020-10-08 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10215,NULL,NULL,NULL),(83,19,'1','2020-09-01','2020-10-09 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10216,NULL,NULL,NULL),(84,19,'1','2020-09-01','2020-10-10 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10217,NULL,NULL,NULL),(85,19,'1','2020-09-01','2020-10-11 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10218,NULL,NULL,NULL),(86,19,'1','2020-09-01','2020-10-12 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10219,NULL,NULL,NULL),(87,19,'1','2020-09-01','2020-10-13 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10220,NULL,NULL,NULL),(88,19,'1','2020-09-01','2020-10-14 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10221,NULL,NULL,NULL),(89,19,'1','2020-09-01','2020-10-15 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10222,NULL,NULL,NULL),(90,19,'1','2020-09-01','2020-10-16 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10223,NULL,NULL,NULL),(91,19,'1','2020-09-01','2020-10-17 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10224,NULL,NULL,NULL),(92,19,'1','2020-09-01','2020-10-18 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10225,NULL,NULL,NULL),(93,19,'1','2020-09-01','2020-10-19 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10226,NULL,NULL,NULL),(94,19,'1','2020-09-01','2020-10-20 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10227,NULL,NULL,NULL),(95,19,'1','2020-09-01','2020-10-21 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10228,NULL,NULL,NULL),(96,19,'1','2020-09-01','2020-10-22 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10229,NULL,NULL,NULL),(97,19,'1','2020-09-01','2020-10-23 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10230,NULL,NULL,NULL),(98,19,'1','2020-09-01','2020-10-24 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10231,NULL,NULL,NULL),(99,19,'1','2020-09-01','2020-10-25 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10232,NULL,NULL,NULL),(100,19,'1','2020-09-01','2020-10-26 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10233,NULL,NULL,NULL),(101,19,'1','2020-09-01','2020-10-27 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10234,NULL,NULL,NULL),(102,19,'1','2020-09-01','2020-10-28 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10235,NULL,NULL,NULL),(103,19,'1','2020-09-01','2020-10-29 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10236,NULL,NULL,NULL),(104,19,'1','2020-09-01','2020-10-30 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10237,NULL,NULL,NULL),(105,19,'1','2020-09-01','2020-10-31 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10238,NULL,NULL,NULL),(106,19,'1','2020-09-01','2020-11-01 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10239,NULL,NULL,NULL),(107,19,'1','2020-09-01','2020-11-02 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10240,NULL,NULL,NULL),(108,19,'1','2020-09-01','2020-11-03 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10241,NULL,NULL,NULL),(109,19,'1','2020-09-01','2020-11-04 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10242,NULL,NULL,NULL),(110,19,'1','2020-09-01','2020-11-05 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10243,NULL,NULL,NULL),(111,19,'1','2020-09-01','2020-11-06 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10244,NULL,NULL,NULL),(112,19,'1','2020-09-01','2020-11-07 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10245,NULL,NULL,NULL),(113,19,'1','2020-09-01','2020-11-08 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10246,NULL,NULL,NULL),(114,19,'1','2020-09-01','2020-11-09 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10247,NULL,NULL,NULL),(115,19,'1','2020-09-01','2020-11-10 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10248,NULL,NULL,NULL),(116,19,'1','2020-09-01','2020-11-11 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10249,NULL,NULL,NULL),(117,19,'1','2020-09-01','2020-11-12 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10250,NULL,NULL,NULL),(118,19,'1','2020-09-01','2020-11-13 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10251,NULL,NULL,NULL),(119,19,'1','2020-09-01','2020-11-14 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10252,NULL,NULL,NULL),(120,19,'1','2020-09-01','2020-11-15 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10253,NULL,NULL,NULL),(121,19,'1','2020-09-01','2020-11-16 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10254,NULL,NULL,NULL),(122,19,'1','2020-09-01','2020-11-17 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10255,NULL,NULL,NULL),(123,19,'1','2020-09-01','2020-11-18 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10256,NULL,NULL,NULL),(124,19,'1','2020-09-01','2020-11-19 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10257,NULL,NULL,NULL),(125,19,'1','2020-09-01','2020-11-20 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10258,NULL,NULL,NULL),(126,19,'1','2020-09-01','2020-11-21 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10259,NULL,NULL,NULL),(127,19,'1','2020-09-01','2020-11-22 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10260,NULL,NULL,NULL),(128,19,'1','2020-09-01','2020-11-23 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10261,NULL,NULL,NULL),(129,19,'1','2020-09-01','2020-11-24 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10262,NULL,NULL,NULL),(130,19,'1','2020-09-01','2020-11-25 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10263,NULL,NULL,NULL),(131,19,'1','2020-09-01','2020-11-26 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10264,NULL,NULL,NULL),(132,19,'1','2020-09-01','2020-11-27 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10265,NULL,NULL,NULL),(133,19,'1','2020-09-01','2020-11-28 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10266,NULL,NULL,NULL),(134,19,'1','2020-09-01','2020-11-29 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10267,NULL,NULL,NULL),(135,19,'1','2020-09-01','2020-11-30 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10268,NULL,NULL,NULL),(136,19,'1','2020-09-01','2020-12-01 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10269,NULL,NULL,NULL),(137,19,'1','2020-09-01','2020-12-02 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10270,NULL,NULL,NULL),(138,19,'1','2020-09-01','2020-12-03 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10271,NULL,NULL,NULL),(139,19,'1','2020-09-01','2020-12-04 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10272,NULL,NULL,NULL),(140,19,'1','2020-09-01','2020-12-05 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10273,NULL,NULL,NULL),(141,19,'1','2020-09-01','2020-12-06 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10274,NULL,NULL,NULL),(142,19,'1','2020-09-01','2020-12-07 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10275,NULL,NULL,NULL),(143,19,'1','2020-09-01','2020-12-08 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10276,NULL,NULL,NULL),(144,19,'1','2020-09-01','2020-12-09 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10277,NULL,NULL,NULL),(145,19,'1','2020-09-01','2020-12-10 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10278,NULL,NULL,NULL),(146,19,'1','2020-09-01','2020-12-11 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10279,NULL,NULL,NULL),(147,19,'1','2020-09-01','2020-12-12 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10280,NULL,NULL,NULL),(148,19,'1','2020-09-01','2020-12-13 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10281,NULL,NULL,NULL),(149,19,'1','2020-09-01','2020-12-14 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10282,NULL,NULL,NULL),(150,19,'1','2020-09-01','2020-12-15 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10283,NULL,NULL,NULL),(151,19,'1','2020-09-01','2020-12-16 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10284,NULL,NULL,NULL),(152,19,'1','2020-09-01','2020-12-17 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10285,NULL,NULL,NULL),(153,19,'1','2020-09-01','2020-12-18 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10286,NULL,NULL,NULL),(154,19,'1','2020-09-01','2020-12-19 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10287,NULL,NULL,NULL),(155,19,'1','2020-09-01','2020-12-20 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10288,NULL,NULL,NULL),(156,19,'1','2020-09-01','2020-12-21 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10289,NULL,NULL,NULL),(157,19,'1','2020-09-01','2020-12-22 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10290,NULL,NULL,NULL),(158,19,'1','2020-09-01','2020-12-23 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10291,NULL,NULL,NULL),(159,19,'1','2020-09-01','2020-12-24 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10292,NULL,NULL,NULL),(160,19,'1','2020-09-01','2020-12-25 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10293,NULL,NULL,NULL),(161,19,'1','2020-09-01','2020-12-26 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10294,NULL,NULL,NULL),(162,19,'1','2020-09-01','2020-12-27 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10295,NULL,NULL,NULL),(163,19,'1','2020-09-01','2020-12-28 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10296,NULL,NULL,NULL),(164,19,'1','2020-09-01','2020-12-29 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10297,NULL,NULL,NULL),(165,19,'1','2020-09-01','2020-12-30 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10298,NULL,NULL,NULL),(166,19,'1','2020-09-01','2020-12-31 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10299,NULL,NULL,NULL),(167,19,'1','2020-09-01','2021-01-01 10:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',3,NULL,1,1,0,5,'3',1,5,5,6,0,0,10300,NULL,NULL,NULL),(168,69,'1','2020-09-01','2020-09-01 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10302,NULL,NULL,NULL),(169,69,'1','2020-09-01','2020-09-02 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10303,NULL,NULL,NULL),(170,69,'1','2020-09-01','2020-09-03 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10304,NULL,NULL,NULL),(171,69,'1','2020-09-01','2020-09-04 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10305,NULL,NULL,NULL),(172,69,'1','2020-09-01','2020-09-05 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10306,NULL,NULL,NULL),(173,69,'1','2020-09-01','2020-09-06 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10307,NULL,NULL,NULL),(174,69,'1','2020-09-01','2020-09-07 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10308,NULL,NULL,NULL),(175,69,'1','2020-09-01','2020-09-08 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10309,NULL,NULL,NULL),(176,69,'1','2020-09-01','2020-09-09 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10310,NULL,NULL,NULL),(177,69,'1','2020-09-01','2020-09-10 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10311,NULL,NULL,NULL),(178,69,'1','2020-09-01','2020-09-11 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10312,NULL,NULL,NULL),(179,69,'1','2020-09-01','2020-09-12 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10313,NULL,NULL,NULL),(180,69,'1','2020-09-01','2020-09-13 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10314,NULL,NULL,NULL),(181,69,'1','2020-09-01','2020-09-14 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10315,NULL,NULL,NULL),(182,69,'1','2020-09-01','2020-09-15 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10316,NULL,NULL,NULL),(183,69,'1','2020-09-01','2020-09-16 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10317,NULL,NULL,NULL),(184,69,'1','2020-09-01','2020-09-17 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10318,NULL,NULL,NULL),(185,69,'1','2020-09-01','2020-09-18 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10319,NULL,NULL,NULL),(186,69,'1','2020-09-01','2020-09-19 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10320,NULL,NULL,NULL),(187,69,'1','2020-09-01','2020-09-20 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10321,NULL,NULL,NULL),(188,69,'1','2020-09-01','2020-09-21 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10322,NULL,NULL,NULL),(189,69,'1','2020-09-01','2020-09-22 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10323,NULL,NULL,NULL),(190,69,'1','2020-09-01','2020-09-23 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10324,NULL,NULL,NULL),(191,69,'1','2020-09-01','2020-09-24 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10325,NULL,NULL,NULL),(192,69,'1','2020-09-01','2020-09-25 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10326,NULL,NULL,NULL),(193,69,'1','2020-09-01','2020-09-26 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10327,NULL,NULL,NULL),(194,69,'1','2020-09-01','2020-09-27 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10328,NULL,NULL,NULL),(195,69,'1','2020-09-01','2020-09-28 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10329,NULL,NULL,NULL),(196,69,'1','2020-09-01','2020-09-29 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10330,NULL,NULL,NULL),(197,69,'1','2020-09-01','2020-09-30 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10331,NULL,NULL,NULL),(198,69,'1','2020-09-01','2020-10-01 15:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).',1,'PL',3,NULL,1,1,0,6,'3',1,30,6,6,0,0,10332,NULL,NULL,NULL),(199,92,NULL,'0000-00-00','2020-09-24 00:00:00','2020-09-24 17:26:31','0000-00-00 00:00:00','2020-09-25 16:05:53','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Cartucho Filtro de Aire.',1,'CE',2,1,0,1,1,0,'1',10,NULL,NULL,6,NULL,NULL,11066,'','',''),(200,19,NULL,'0000-00-00','2020-09-24 00:00:00','2020-09-24 17:55:41','0000-00-00 00:00:00','2020-09-25 15:54:34','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'CE',2,1,0,1,1,0,'1',22,NULL,NULL,6,NULL,NULL,11068,'','',NULL),(201,78,NULL,'0000-00-00','2020-09-25 00:00:00','2020-09-25 14:04:49','0000-00-00 00:00:00','2020-09-25 14:11:03','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Motor (utilizar aceite 15W40).',1,'CE',2,1,0,1,1,0,'1',13,NULL,NULL,6,NULL,NULL,11070,'','',NULL),(202,19,NULL,'0000-00-00','2020-09-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',2,NULL,0,1,1,0,'1',8,NULL,NULL,6,NULL,NULL,11072,NULL,NULL,NULL),(203,19,NULL,'0000-00-00','2020-09-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'PL',2,NULL,0,1,1,0,'1',16,NULL,NULL,6,NULL,NULL,11073,NULL,NULL,NULL),(204,19,NULL,'0000-00-00','2020-09-28 00:00:00','2020-09-28 11:33:04','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.',1,'C',2,1,0,1,1,0,'1',1,NULL,NULL,6,NULL,NULL,11075,'','',NULL),(205,0,NULL,'0000-00-00','2020-09-28 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','tarea 1',1,'PL',53,NULL,0,1,1,0,'1',5,NULL,NULL,6,NULL,NULL,11077,NULL,NULL,NULL),(206,0,NULL,'0000-00-00','2020-09-28 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','aaaaa',1,'PL',53,NULL,0,1,1,0,'1',3,NULL,NULL,6,NULL,NULL,11078,NULL,NULL,NULL),(207,2,NULL,'0000-00-00','2020-09-28 00:00:00','2020-09-28 15:47:22','0000-00-00 00:00:00','2020-09-28 15:48:40','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie las Mangueras y las Conexiones del Radiador.',1,'CE',2,1,0,1,1,0,'1',10,NULL,NULL,6,NULL,NULL,11079,'','','falto revisar si la tapa del filtro estaba sellada '),(208,46,NULL,'0000-00-00','2020-10-03 00:00:00','2020-10-03 03:28:35','0000-00-00 00:00:00','2020-10-03 03:43:44','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Motor (cada 250 hs seg√∫n horometro, utilizar aceite 15W40).',1,'CE',2,1,0,1,1,0,'1',17,NULL,NULL,6,NULL,NULL,11086,NULL,NULL,NULL),(209,91,NULL,'0000-00-00','2020-10-03 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Inspecci√≥n Visual: Controlar P√©rdida y Nivel de Agua del Radiador.',1,'PL',2,NULL,0,1,1,0,'1',16,NULL,NULL,6,NULL,NULL,11088,'','',NULL),(210,47,NULL,'0000-00-00','2020-10-03 00:00:00','2020-10-03 04:28:02','0000-00-00 00:00:00','2020-10-03 04:31:46','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpiar Tanque de Combustible.',1,'CE',2,1,0,1,1,0,'1',20,NULL,NULL,6,NULL,NULL,11089,NULL,NULL,NULL),(211,4,NULL,'0000-00-00','2020-10-03 00:00:00','2020-10-03 04:35:34','0000-00-00 00:00:00','2020-10-04 23:49:10','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise la Bomba de Agua',1,'CE',2,1,0,1,1,0,'1',12,NULL,NULL,6,NULL,NULL,11091,NULL,NULL,NULL),(212,5,NULL,'0000-00-00','2020-10-04 00:00:00','2020-10-04 23:58:23','0000-00-00 00:00:00','2020-10-05 00:02:41','0000-00-00 00:00:00','0000-00-00 00:00:00','Compruebe el Intercooler y las Mangueras de Conexion.',1,'CE',2,1,0,1,1,0,'1',11,NULL,NULL,6,NULL,NULL,11095,'-00000','-00000',NULL),(213,108,NULL,'0000-00-00','2020-10-05 00:00:00','2020-10-05 00:19:16','0000-00-00 00:00:00','2020-10-05 00:19:45','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'CE',2,1,0,1,1,0,'1',22,NULL,NULL,6,NULL,NULL,11097,'-00000','-00000','revisar');
/*!40000 ALTER TABLE `orden_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `Codigo` varchar(2) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES ('AR','Argentina');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametroequipo`
--

DROP TABLE IF EXISTS `parametroequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametroequipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paramId` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fechahora` datetime NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_equipo` (`id_equipo`),
  KEY `paramId` (`paramId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametroequipo`
--

LOCK TABLES `parametroequipo` WRITE;
/*!40000 ALTER TABLE `parametroequipo` DISABLE KEYS */;
INSERT INTO `parametroequipo` VALUES (1,1,1,'230','2019-06-27 12:00:00',6);
/*!40000 ALTER TABLE `parametroequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametros` (
  `paramId` int(11) NOT NULL AUTO_INCREMENT,
  `paramdescrip` varchar(255) DEFAULT NULL,
  `min` varchar(255) DEFAULT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`paramId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES (1,'Par√°metro 1',NULL,'AC',6),(2,'Par√°metro 2',NULL,'AC',6);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `idperiodo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(4) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idperiodo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'Diario','AC',6),(2,'Mensual','AC',6),(3,'Semestral','AC',6),(4,'Anual','AC',6),(5,'Horas','AC',6),(6,'Ciclos','AC',6),(7,'Kil√≥metros','AC',6),(8,'Diario','AC',8),(9,'Mensual','AC',8),(10,'Semanal','AC',6),(11,'Anual','AC',8),(12,'Horas','AC',8),(13,'Ciclos','AC',8);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predictivo`
--

DROP TABLE IF EXISTS `predictivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predictivo` (
  `predId` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `tarea_descrip` varchar(2000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `periodo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `horash` float DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `pred_duracion` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `pred_canth` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `pred_adjunto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`predId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predictivo`
--

LOCK TABLES `predictivo` WRITE;
/*!40000 ALTER TABLE `predictivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `predictivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preventivo`
--

DROP TABLE IF EXISTS `preventivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preventivo` (
  `prevId` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `id_tarea` int(11) NOT NULL,
  `perido` varchar(50) NOT NULL,
  `cantidad` double NOT NULL,
  `ultimo` date NOT NULL,
  `id_componente` int(11) NOT NULL,
  `critico1` double DEFAULT NULL,
  `fechaprobable` date DEFAULT NULL,
  `horash` int(11) NOT NULL,
  `estadoprev` char(255) DEFAULT NULL,
  `prev_duracion` double NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `prev_canth` double NOT NULL,
  `prev_adjunto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `lectura_base` double DEFAULT NULL,
  PRIMARY KEY (`prevId`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_tarea` (`id_tarea`),
  KEY `id_componente` (`id_componente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preventivo`
--

LOCK TABLES `preventivo` WRITE;
/*!40000 ALTER TABLE `preventivo` DISABLE KEYS */;
INSERT INTO `preventivo` VALUES (1,1,92,'4',1,'2020-04-29',1,NULL,NULL,1,'C',30,1,2,NULL,6,NULL),(2,1,46,'5',250,'2020-06-26',1,210,NULL,4,'AS',120,1,2,NULL,6,9000),(3,1,73,'5',1000,'2020-06-26',1,950,NULL,4,'AS',120,1,2,NULL,6,9000),(4,1,38,'5',500,'2020-06-26',1,450,NULL,4,'C',120,1,2,NULL,6,12000),(5,1,19,'10',1,'2021-01-01',1,NULL,NULL,0,'C',5,1,1,NULL,6,NULL),(6,1,69,'2',1,'2020-10-01',3,NULL,NULL,1,'PL',30,1,2,NULL,6,NULL);
/*!40000 ALTER TABLE `preventivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso`
--

DROP TABLE IF EXISTS `proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso` (
  `id_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,'un proceso nuevo 1',0,'AN'),(2,'nuevo proceso 001',0,'AN'),(3,'Extracci√≥n y Transporte',0,'AC'),(4,'proceso nuevo',6,'AN'),(5,'proceso emp 6',6,'AN'),(6,'proceso testing',6,'AN'),(7,'EXTRACCI√ìN Y TRANSPORTE DE MINERAL',6,'AC'),(8,'Extracci√≥n y Transporte De Mineral',6,'AC'),(9,'Proceso de prueba',6,'AC'),(11,'Perforaci√≥n',7,'AC'),(12,'Perforaci√≥n y Voladura',6,'AC'),(13,'Operaciones',7,'AC'),(14,'Mantenimiento',7,'AC'),(15,'Capacitacion',7,'AC'),(16,'PROCESO NUEVO',6,'AN'),(17,'Minado',8,'AC'),(18,'proceso prueba hugo',6,'AC'),(19,'Cales Vivas Molidas',6,'AC'),(20,'PERFORACI√ìN Y DESARROLLO',6,'AC'),(21,'CARGA DE PIEDRA',6,'AC'),(22,'M√≥dulos habitacionales',6,'AC'),(23,'Proceso 1',6,'AC'),(24,'Siembra',6,'AC'),(25,'Proceso de noqueo',6,'AC'),(26,'Sierra de Dividir',6,'AC'),(27,'Generaci√≥n de Corriente',6,'AC');
/*!40000 ALTER TABLE `proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remitos`
--

DROP TABLE IF EXISTS `remitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remitos` (
  `remitoId` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `provid` int(11) NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`remitoId`),
  KEY `provid` (`provid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitos`
--

LOCK TABLES `remitos` WRITE;
/*!40000 ALTER TABLE `remitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `remitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubro` (
  `id_rubro` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rubro`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id_sector` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Sector 1','AC',6),(2,'Etapa 2','AC',6),(3,'Transporte','AC',6),(4,'Sector 1','AN',6),(5,'Sector Zona Sucia','AC',6),(6,'Zona LImpia','AC',6),(7,'Grupo Electr√≥geno','AC',6),(8,'Grupo Electr√≥geno','AN',6),(9,'Sector 3','AC',6),(10,'Sector E','AC',6);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguro`
--

DROP TABLE IF EXISTS `seguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguro` (
  `id_seguro` int(11) NOT NULL AUTO_INCREMENT,
  `asegurado` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `ref` int(11) NOT NULL,
  `numero_pliza` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_vigencia` datetime NOT NULL,
  `cobertura` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `id_equipo` int(11) NOT NULL,
  PRIMARY KEY (`id_seguro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setupparam`
--

DROP TABLE IF EXISTS `setupparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setupparam` (
  `id_equipo` int(11) NOT NULL,
  `id_parametro` int(11) NOT NULL,
  `maximo` double NOT NULL,
  `minimo` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_parametro`,`id_equipo`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setupparam`
--

LOCK TABLES `setupparam` WRITE;
/*!40000 ALTER TABLE `setupparam` DISABLE KEYS */;
INSERT INTO `setupparam` VALUES (1,1,200,80,6),(14,1,50,80,6);
/*!40000 ALTER TABLE `setupparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisactions`
--

DROP TABLE IF EXISTS `sisactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisactions` (
  `actId` int(11) NOT NULL AUTO_INCREMENT,
  `actDescription` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `actDescriptionSpanish` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`actId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisactions`
--

LOCK TABLES `sisactions` WRITE;
/*!40000 ALTER TABLE `sisactions` DISABLE KEYS */;
INSERT INTO `sisactions` VALUES (1,'Add','Agregar'),(2,'Edit','Editar'),(3,'Del','Eliminar'),(4,'View','Consultar'),(5,'Imprimir','Imprimir'),(6,'Saldo','Consultar Saldo'),(7,'Asignar','Asignar'),(8,'Finalizar','Finalizar'),(9,'OP','OP'),(10,'Pedidos','Pedidos'),(11,'Supervisor','Supervisor'),(12,'Entregar','Entrega de Ordenes'),(13,'Lectura','Lect horas equipos '),(14,'Correctivo','Ver Correctivos'),(15,'Preventivos','Ver Preventivos'),(16,'Backlog','Ver Backlog'),(17,'Predictivo','Ver Predictivos');
/*!40000 ALTER TABLE `sisactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisgroups`
--

DROP TABLE IF EXISTS `sisgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisgroups` (
  `grpId` int(11) NOT NULL AUTO_INCREMENT,
  `grpName` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grpDash` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`grpId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisgroups`
--

LOCK TABLES `sisgroups` WRITE;
/*!40000 ALTER TABLE `sisgroups` DISABLE KEYS */;
INSERT INTO `sisgroups` VALUES (1,'Administrador','Otrabajo',6),(2,'Vendedor','Sservicio',6),(3,'Dep√≥sito','Sservicio',6),(4,'Mantenedor','Tarea',6),(5,'Supervisor de Taller','Sservicio',6),(7,'Planificador','Tarea',6),(10,'Administrador','Otrabajo',8),(11,'Recepcion','Otrabajo',8),(12,'R.R.H.H.','Otrabajo',8),(13,'Administracion','Otrabajo',8),(14,'Cobranzas','Otrabajo',8),(15,'Operaciones','Otrabajo',8),(16,'Ceo','Otrabajo',8),(17,'Compras','Otrabajo',8),(18,'Dep√≥sito','Otrabajo',8),(19,'Supervisi√≥n','Otrabajo',8),(20,'Solicitante','Sservicio',6),(21,'consultor','Sservicio',6);
/*!40000 ALTER TABLE `sisgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisgroupsactions`
--

DROP TABLE IF EXISTS `sisgroupsactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisgroupsactions` (
  `grpactId` int(11) NOT NULL AUTO_INCREMENT,
  `grpId` int(11) NOT NULL,
  `menuAccId` int(11) NOT NULL,
  PRIMARY KEY (`grpactId`),
  KEY `grpId` (`grpId`) USING BTREE,
  KEY `menuAccId` (`menuAccId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3313 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisgroupsactions`
--

LOCK TABLES `sisgroupsactions` WRITE;
/*!40000 ALTER TABLE `sisgroupsactions` DISABLE KEYS */;
INSERT INTO `sisgroupsactions` VALUES (154,151,1),(158,158,1),(159,159,1),(160,160,1),(1171,10,2),(1190,10,6),(1191,10,7),(1192,10,8),(1193,10,9),(1194,10,10),(1195,10,11),(1196,10,12),(1197,10,13),(1200,22,9),(1201,23,9),(1202,24,9),(1203,25,6),(1204,25,7),(1205,25,8),(1206,25,9),(1207,25,10),(1208,25,11),(1209,25,12),(1210,25,13),(1211,25,14),(1212,25,15),(1213,25,16),(1214,25,17),(1215,25,18),(1216,25,19),(1217,25,20),(1218,25,21),(1219,25,23),(1220,25,24),(1221,25,25),(1222,25,151),(1223,25,26),(1224,25,27),(1225,25,28),(1226,25,29),(1227,25,30),(1228,25,31),(1229,25,32),(1230,25,33),(1231,25,34),(1232,25,35),(1233,25,36),(1234,25,37),(1235,25,38),(1236,25,39),(1237,25,40),(1238,25,41),(1239,25,42),(1240,25,43),(1241,25,115),(1242,25,116),(1243,25,117),(1244,25,155),(1245,25,156),(1246,25,157),(1247,25,118),(1248,25,119),(1249,25,120),(1250,25,152),(1251,25,153),(1252,25,154),(1253,25,176),(1254,25,177),(1255,25,178),(1256,25,179),(1257,25,180),(1258,25,158),(1259,25,159),(1260,25,160),(1261,25,209),(1262,25,210),(1263,25,211),(1264,25,212),(1265,25,64),(1266,25,65),(1267,25,66),(1268,25,67),(1269,25,68),(1270,25,69),(1271,25,70),(1272,25,71),(1273,25,72),(1274,25,73),(1275,25,74),(1276,25,75),(1277,25,85),(1278,25,86),(1279,25,87),(1280,25,88),(1281,25,89),(1282,25,90),(1283,25,91),(1284,25,92),(1285,25,93),(1286,25,94),(1287,25,95),(1288,25,96),(1289,25,97),(1290,25,98),(1291,25,99),(1292,25,100),(1293,25,101),(1294,25,102),(1295,25,103),(1296,25,104),(1297,25,105),(1298,25,106),(1299,25,107),(1300,25,108),(1301,25,109),(1302,25,110),(1303,25,111),(1304,25,170),(1305,25,171),(1306,25,172),(1307,25,181),(1308,25,182),(1309,25,183),(1310,25,184),(1311,25,185),(1312,25,186),(1313,25,187),(1314,25,188),(1315,25,189),(1316,25,190),(1317,25,191),(1318,25,192),(1319,25,193),(1320,25,194),(1321,25,195),(1322,25,196),(1323,25,197),(1324,25,198),(1325,25,199),(1326,25,200),(1327,25,201),(1328,25,202),(1329,25,203),(1330,25,204),(1331,25,205),(1332,25,206),(1333,25,207),(1334,25,208),(1335,25,127),(1336,25,128),(1337,25,129),(1338,25,130),(1339,25,132),(1340,25,139),(1341,25,140),(1342,25,141),(1343,25,142),(1344,25,143),(1345,25,144),(1346,25,145),(1347,25,146),(1348,25,147),(1349,25,148),(1350,25,149),(1351,25,150),(1352,25,45),(1353,25,46),(1354,25,47),(1355,25,48),(1356,25,49),(1357,25,50),(1358,25,54),(1359,25,55),(1360,25,56),(1361,25,57),(1362,25,58),(1363,25,59),(1364,25,60),(1365,25,79),(1366,25,80),(1367,25,81),(1368,25,121),(1369,25,122),(1370,25,123),(1371,26,9),(1372,27,9),(1373,28,9),(1595,11,151),(1596,11,226),(1597,11,227),(1598,11,228),(1599,11,230),(1600,11,231),(1601,11,232),(1602,11,233),(1603,11,177),(1604,11,178),(1605,11,179),(1606,11,180),(1607,11,212),(1608,11,220),(1609,11,221),(1610,11,222),(1611,11,223),(1612,11,184),(1613,11,188),(1614,11,192),(1615,11,196),(1616,11,200),(1617,11,204),(1618,11,208),(1619,11,214),(1620,11,215),(1621,11,217),(1622,11,60),(1623,11,225),(1624,11,218),(1656,13,226),(1657,13,227),(1658,13,228),(1659,13,230),(1660,13,231),(1661,13,232),(1662,13,233),(1663,13,177),(1664,13,178),(1665,13,179),(1666,13,180),(1667,13,212),(1668,13,220),(1669,13,221),(1670,13,222),(1671,13,223),(1672,13,184),(1673,13,188),(1674,13,192),(1675,13,196),(1676,13,200),(1677,13,204),(1678,13,208),(1679,13,236),(1680,13,237),(1681,13,214),(1682,13,215),(1683,13,217),(1684,13,60),(1685,13,225),(1686,13,218),(1687,12,226),(1688,12,227),(1689,12,228),(1690,12,230),(1691,12,231),(1692,12,232),(1693,12,233),(1694,12,177),(1695,12,178),(1696,12,179),(1697,12,180),(1698,12,212),(1699,12,220),(1700,12,221),(1701,12,222),(1702,12,223),(1703,12,184),(1704,12,188),(1705,12,192),(1706,12,196),(1707,12,200),(1708,12,204),(1709,12,208),(1710,12,236),(1711,12,237),(1712,12,214),(1713,12,215),(1714,12,217),(1715,12,60),(1716,12,225),(1717,12,218),(1799,18,220),(1800,18,221),(1801,18,222),(1802,18,223),(1803,18,236),(1804,18,237),(1805,18,214),(1806,18,215),(1807,18,217),(1808,18,60),(1809,18,225),(1810,18,218),(1811,19,23),(1812,19,24),(1813,19,25),(1814,19,151),(1815,19,226),(1816,19,26),(1817,19,27),(1818,19,28),(1819,19,227),(1820,19,29),(1821,19,30),(1822,19,31),(1823,19,228),(1824,19,32),(1825,19,33),(1826,19,34),(1827,19,35),(1828,19,36),(1829,19,37),(1830,19,231),(1831,19,38),(1832,19,39),(1833,19,40),(1834,19,232),(1835,19,41),(1836,19,42),(1837,19,43),(1838,19,233),(1839,19,115),(1840,19,116),(1841,19,117),(1842,19,155),(1843,19,156),(1844,19,157),(1845,19,118),(1846,19,119),(1847,19,120),(1848,19,152),(1849,19,153),(1850,19,154),(1851,19,176),(1852,19,177),(1853,19,178),(1854,19,179),(1855,19,180),(1856,19,158),(1857,19,159),(1858,19,160),(1859,19,209),(1860,19,210),(1861,19,211),(1862,19,212),(1863,19,220),(1864,19,221),(1865,19,222),(1866,19,223),(1867,19,214),(1868,19,215),(1869,19,217),(1870,19,60),(1871,19,225),(1872,19,218),(1873,14,226),(1874,14,227),(1875,14,228),(1876,14,230),(1877,14,231),(1878,14,232),(1879,14,233),(1880,14,177),(1881,14,178),(1882,14,179),(1883,14,180),(1884,14,212),(1885,14,220),(1886,14,221),(1887,14,222),(1888,14,223),(1889,14,184),(1890,14,188),(1891,14,192),(1892,14,196),(1893,14,200),(1894,14,204),(1895,14,208),(1896,14,236),(1897,14,237),(1898,14,214),(1899,14,215),(1900,14,217),(1901,14,60),(1902,14,225),(1903,14,218),(2651,20,41),(2652,20,42),(2653,20,43),(2654,20,233),(2655,20,242),(2656,20,243),(2657,20,244),(2658,20,245),(2659,4,116),(2660,4,155),(2661,4,156),(2662,4,152),(2663,4,153),(2664,4,154),(2665,4,176),(2666,4,177),(2667,4,178),(2668,4,179),(2669,4,180),(2670,4,242),(2671,4,243),(2672,4,244),(2673,4,245),(2674,7,29),(2675,7,30),(2676,7,31),(2677,7,228),(2678,7,32),(2679,7,33),(2680,7,34),(2681,7,230),(2682,7,38),(2683,7,39),(2684,7,40),(2685,7,232),(2686,7,41),(2687,7,42),(2688,7,43),(2689,7,233),(2690,7,115),(2691,7,116),(2692,7,117),(2693,7,155),(2694,7,156),(2695,7,157),(2696,7,152),(2697,7,153),(2698,7,154),(2699,7,176),(2700,7,177),(2701,7,178),(2702,7,179),(2703,7,180),(2704,7,242),(2705,7,243),(2706,7,244),(2707,7,245),(3094,1,6),(3095,1,7),(3096,1,8),(3097,1,9),(3098,1,10),(3099,1,11),(3100,1,12),(3101,1,13),(3102,1,14),(3103,1,15),(3104,1,16),(3105,1,17),(3106,1,18),(3107,1,19),(3108,1,20),(3109,1,21),(3110,1,23),(3111,1,24),(3112,1,25),(3113,1,151),(3114,1,26),(3115,1,27),(3116,1,28),(3117,1,29),(3118,1,30),(3119,1,31),(3120,1,228),(3121,1,32),(3122,1,33),(3123,1,34),(3124,1,35),(3125,1,36),(3126,1,37),(3127,1,38),(3128,1,39),(3129,1,40),(3130,1,41),(3131,1,42),(3132,1,43),(3133,1,94),(3134,1,95),(3135,1,96),(3136,1,115),(3137,1,116),(3138,1,117),(3139,1,155),(3140,1,156),(3141,1,157),(3142,1,118),(3143,1,119),(3144,1,120),(3145,1,152),(3146,1,153),(3147,1,154),(3148,1,177),(3149,1,178),(3150,1,179),(3151,1,180),(3152,1,209),(3153,1,210),(3154,1,211),(3155,1,212),(3156,1,64),(3157,1,65),(3158,1,66),(3159,1,67),(3160,1,68),(3161,1,69),(3162,1,70),(3163,1,71),(3164,1,72),(3165,1,73),(3166,1,74),(3167,1,75),(3168,1,85),(3169,1,86),(3170,1,87),(3171,1,88),(3172,1,89),(3173,1,90),(3174,1,91),(3175,1,92),(3176,1,93),(3177,1,97),(3178,1,98),(3179,1,99),(3180,1,100),(3181,1,101),(3182,1,102),(3183,1,103),(3184,1,104),(3185,1,105),(3186,1,106),(3187,1,107),(3188,1,108),(3189,1,109),(3190,1,110),(3191,1,111),(3192,1,170),(3193,1,171),(3194,1,172),(3195,1,181),(3196,1,182),(3197,1,183),(3198,1,184),(3199,1,185),(3200,1,186),(3201,1,187),(3202,1,188),(3203,1,189),(3204,1,190),(3205,1,191),(3206,1,192),(3207,1,193),(3208,1,194),(3209,1,195),(3210,1,196),(3211,1,197),(3212,1,198),(3213,1,199),(3214,1,200),(3215,1,201),(3216,1,202),(3217,1,203),(3218,1,204),(3219,1,205),(3220,1,206),(3221,1,207),(3222,1,208),(3223,1,238),(3224,1,239),(3225,1,240),(3226,1,241),(3227,1,241),(3228,1,246),(3229,1,247),(3230,1,248),(3231,1,249),(3232,1,130),(3233,1,132),(3234,1,139),(3235,1,140),(3236,1,141),(3237,1,142),(3238,1,143),(3239,1,144),(3240,1,254),(3241,1,254),(3242,1,255),(3243,1,255),(3244,1,256),(3245,1,256),(3246,1,257),(3247,1,257),(3248,1,258),(3249,1,259),(3250,1,260),(3251,1,261),(3252,1,45),(3253,1,46),(3254,1,47),(3255,1,214),(3256,1,48),(3257,1,49),(3258,1,50),(3259,1,215),(3260,1,54),(3261,1,55),(3262,1,56),(3263,1,217),(3264,1,57),(3265,1,58),(3266,1,59),(3267,1,60),(3268,1,79),(3269,1,80),(3270,1,81),(3271,1,225),(3272,1,121),(3273,1,122),(3274,1,123),(3275,1,218),(3276,1,250),(3277,1,251),(3278,1,252),(3279,1,253),(3280,1,242),(3281,1,243),(3282,1,244),(3283,1,245),(3284,21,9),(3285,21,226),(3286,21,227),(3287,21,228),(3288,21,230),(3289,21,231),(3290,21,232),(3291,21,233),(3292,21,155),(3293,21,177),(3294,21,178),(3295,21,179),(3296,21,180),(3297,21,212),(3298,21,220),(3299,21,221),(3300,21,222),(3301,21,223),(3302,21,237),(3303,21,257),(3304,21,261),(3305,21,214),(3306,21,215),(3307,21,217),(3308,21,60),(3309,21,225),(3310,21,218),(3311,21,253),(3312,21,245);
/*!40000 ALTER TABLE `sisgroupsactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sismenu`
--

DROP TABLE IF EXISTS `sismenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sismenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sismenu`
--

LOCK TABLES `sismenu` WRITE;
/*!40000 ALTER TABLE `sismenu` DISABLE KEYS */;
INSERT INTO `sismenu` VALUES (2,NULL,'Seguridad','fa fa-lock','',2,'AC'),(3,2,'Usuarios','fa fa-fw fa-user','user',2,'AC'),(4,2,'Grupos','fa fa-fw fa-users','group',1,'AC'),(5,2,'Menu','fa fa-fw fa-bars','menu',3,'AC'),(6,2,'Database','fa fa-fw fa-database','backup',4,'AC'),(7,NULL,'Mantenimiento','fa fa-wrench ','',3,'AC'),(8,7,'Equipos','fa fa-fw fa-cogs','Equipo',1,'AC'),(9,7,'Componentes','fa fa-fw fa-cogs','Componente/asigna',2,'AC'),(10,7,'Preventivo','fa fa-fw fa-tasks','Preventivo',5,'AC'),(12,7,'Backlog','fa fa-fw fa-tasks','Backlog',6,'AC'),(13,7,'Registro de Parametros','fa fa-fw fa-tasks','Lectura',10,'AC'),(14,7,'Predictivo','fa fa-fw fa-tasks','Predictivo',7,'AC'),(15,7,'Solicitud de Servicio','fa fa-fw fa-sitemap','Sservicio',3,'AC'),(16,NULL,'Pa√±ol','fa fa-briefcase','',4,'AC'),(17,59,'Articulos','fa fa-fw fa-barcode ','almacen/Articulo/index',1,'AC'),(18,59,'Stock','fa fa-fw fa-cubes','almacen/Lote/index',2,'AC'),(20,59,'Entrega Materiales','fa fa-fw fa-check','almacen/new/Entrega_Material/index',3,'AC'),(21,59,'Recepcion de Materiales','fa fa-fw fa-paperclip ','almacen/Remito/index',4,'AC'),(23,16,'Herramientas','fa fa-fw fa-sign-out ','Herramienta',5,'AC'),(24,16,'Salida Herramientas','fa fa-fw fa-paper-plane','Order',6,'AC'),(25,16,'Entrada Herramientas','fa fa-fw fa-paper-plane','Unload',7,'AC'),(26,16,'Trazabilidad Componentes','fa fa-fw fa-exchange','Trazacomp',8,'AC'),(28,59,'Punto Pedido','fa fa-fw fa-bookmark','almacen/Lote/puntoPedList',10,'AC'),(29,NULL,'ABM','fa fa-book','',6,'AC'),(30,29,'ABM Grupo','fa fa-fw fa-server ','Grupo',2,'AC'),(31,29,'ABM Sector','fa fa-fw fa-sitemap ','Sector',3,'AC'),(32,29,'ABM Contratista','fa fa-fw fa-life-ring','Contratista',4,'AC'),(33,7,'Parametrizar Predictivo','fa fa-fw fa-bullhorn','Parametro',5,'AC'),(34,29,'ABM Deposito','fa fa-fw fa-qrcode','Deposito',5,'AC'),(35,29,'ABM Tareas','fa fa-fw fa-street-view','Tarea/index2',6,'AC'),(36,29,'ABM Parametros','fa fa-fw fa-adjust','Altparametro',6,'AC'),(37,29,'ABM Proveedor','fa fa-fw fa-truck','Proveedor',7,'AC'),(38,29,'ABM Familia','fa fa-fw fa-check-square','Family',8,'AC'),(40,7,'Ordenes de trabajo','fa fa-fw fa-tasks','Otrabajo/listOrden',8,'AC'),(41,7,'Administrar Ordenes','fa fa-fw fa-thumbs-up','Envio',10,'AC'),(43,59,'Pedidos Materiales','fa fa-fw fa-cart-plus','almacen/Notapedido/index',11,'AC'),(44,NULL,'Compras','fa fa-shopping-cart ','',5,'AC'),(46,44,'Recepci√≥n pedidos','fa fa-fw fa-check','Administracion',2,'AC'),(47,NULL,'Reportes','fa fa-line-chart ','',8,'AC'),(49,47,'Rep Informe de Servicios','fa fa-fw fa-file-text-o ','Reporte',3,'AC'),(50,47,'Rep Ordenes de trabajo','fa fa-fw fa-file-text-o ','Reporteorden',2,'AC'),(53,29,'ABM modelos','','',0,'AC'),(54,7,'Plan de Mantenimiento','fa fa-fw fa-calendar','calendario/indexot',9,'AC'),(55,7,'trazabilidad Activos','fa fa-fw fa-exchange','fa fa-calendar',11,'AC'),(58,NULL,'Equipos','fa fa-exchange','',0,'AC'),(59,NULL,'Almacenes','fa fa-check','',4,'AC'),(60,29,'ABM Marca','fa fa-fw fa-copyright','Marca',9,'AC'),(61,47,'Rep articulos pedidos','fa fa-fw fa-file-text-o ','Reportepedido',6,'AC'),(62,29,'ABM Area','fa fa-fw fa-asterisk','Area',1,'AC'),(63,29,'ABM Clientes','fa fa-fw fa-user','Cliente',2,'AC'),(64,29,'ABM Criticidad','fa fa-fw fa-line-chart','Criticidad',3,'AC'),(65,29,'ABM Procesos','fa fa-fw fa-sitemap','Proceso',5,'AC'),(66,29,'ABM Componentes','fa fa-fw fa-cogs','Componente',2,'AC'),(67,29,'ABM Unidad de medida','fa fa-fw fa-thermometer','UnidadMedida',11,'AC'),(68,29,'ABM Sucursales','fa fa-fw fa-building','Sucursal',10,'AC'),(69,7,'Informe de Servicios','fa fa-fw fa-file-text-o','Ordenservicio',4,'AC'),(70,29,'ABM Sistemas','fa fa-fw fa fa-cogs','SistemaABM',12,'AC'),(71,NULL,'Mis Tareas','glyphicon glyphicon-list-alt','Tarea',1,'AC'),(72,29,'ABM Plantilla Insumos','fa fa-fw fa-server','Plantillainsumo',3,'AC'),(73,59,'Ajuste Stock','fa fa-wrench','almacen/Ajustestock/index',15,'AC'),(74,47,'Rep Equipo','fa fa-fw fa-file-text-o ','Kpi/index',4,'AC'),(75,47,'Reporte de Consumo','fa fa-fw fa-file-text-o','Reporte/ejemplo',5,'AC');
/*!40000 ALTER TABLE `sismenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sismenuactions`
--

DROP TABLE IF EXISTS `sismenuactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sismenuactions` (
  `menuAccId` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `actId` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuAccId`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sismenuactions`
--

LOCK TABLES `sismenuactions` WRITE;
/*!40000 ALTER TABLE `sismenuactions` DISABLE KEYS */;
INSERT INTO `sismenuactions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,1),(7,3,2),(8,3,3),(9,3,4),(10,4,1),(11,4,2),(12,4,3),(13,4,4),(14,5,1),(15,5,2),(16,5,3),(17,5,4),(18,6,1),(19,6,2),(20,6,3),(21,6,4),(22,7,1),(23,8,1),(24,8,2),(25,8,3),(26,9,1),(27,9,2),(28,9,3),(29,10,1),(30,10,2),(31,10,3),(32,12,1),(33,12,2),(34,12,3),(35,13,1),(36,13,2),(37,13,3),(38,14,1),(39,14,2),(40,14,3),(41,15,1),(42,15,2),(43,15,3),(44,16,1),(45,17,1),(46,17,2),(47,17,3),(48,18,1),(49,18,2),(50,18,3),(51,19,1),(52,19,2),(53,19,3),(54,20,1),(55,20,2),(56,20,3),(57,21,1),(58,21,2),(59,21,3),(60,21,4),(61,22,1),(62,22,2),(63,22,3),(64,23,1),(65,23,2),(66,23,3),(67,24,1),(68,24,2),(69,24,3),(70,25,1),(71,25,2),(72,25,3),(73,26,1),(74,26,2),(75,26,3),(76,27,1),(77,27,2),(78,27,3),(79,28,1),(80,28,2),(81,28,3),(82,29,1),(83,29,2),(84,29,3),(85,30,1),(86,30,2),(87,30,3),(88,31,1),(89,31,2),(90,31,3),(91,32,1),(92,32,2),(93,32,3),(94,33,1),(95,33,2),(96,33,3),(97,34,1),(98,34,2),(99,34,3),(100,35,1),(101,35,2),(102,35,3),(103,36,1),(104,36,2),(105,36,3),(106,37,1),(107,37,2),(108,37,3),(109,38,1),(110,38,2),(111,38,3),(112,39,1),(113,39,2),(114,39,3),(115,40,1),(116,40,2),(117,40,3),(118,41,1),(119,41,2),(120,41,3),(121,43,1),(122,43,2),(123,43,3),(124,44,1),(125,44,2),(126,44,3),(127,45,1),(128,45,2),(129,45,3),(130,46,1),(131,46,52),(132,46,3),(133,47,1),(134,47,2),(135,47,3),(136,48,1),(137,48,2),(138,48,3),(139,49,1),(140,49,2),(141,49,3),(142,50,1),(143,50,2),(144,50,3),(145,51,1),(146,51,2),(147,51,3),(148,52,1),(149,52,2),(150,52,3),(151,8,13),(152,54,1),(153,54,2),(154,54,3),(155,40,9),(156,40,7),(157,40,10),(158,55,1),(159,55,2),(160,55,3),(161,56,1),(162,56,2),(163,56,3),(164,58,1),(165,58,2),(166,58,3),(167,58,4),(168,59,1),(170,60,1),(171,60,2),(172,60,3),(173,47,1),(174,47,2),(175,47,3),(176,54,13),(177,54,14),(178,54,15),(179,54,16),(180,54,17),(181,62,1),(182,62,2),(183,62,3),(184,62,4),(185,63,1),(186,63,2),(187,63,3),(188,63,4),(189,64,1),(190,64,2),(191,64,3),(192,64,4),(193,65,1),(194,65,2),(195,65,3),(196,65,4),(197,66,1),(198,66,2),(199,66,3),(200,66,4),(201,67,1),(202,67,2),(203,67,3),(204,67,4),(205,68,1),(206,68,2),(207,68,3),(208,68,4),(209,69,1),(210,69,2),(211,69,3),(212,69,4),(213,16,4),(214,17,4),(215,18,4),(216,19,4),(217,20,4),(218,43,4),(219,22,4),(220,23,4),(221,24,4),(222,25,4),(223,26,4),(224,27,4),(225,28,4),(226,8,4),(227,9,4),(228,10,4),(229,11,4),(230,12,4),(231,13,4),(232,14,4),(233,15,4),(236,45,4),(237,46,4),(238,70,1),(239,70,2),(240,70,3),(241,70,4),(242,71,1),(243,71,2),(244,71,3),(245,71,4),(246,72,1),(247,72,2),(248,72,3),(249,72,4),(250,73,1),(251,73,2),(252,73,3),(253,73,4),(254,74,1),(255,74,2),(256,74,3),(257,74,4),(258,75,1),(259,75,2),(260,75,3),(261,75,4);
/*!40000 ALTER TABLE `sismenuactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema`
--

DROP TABLE IF EXISTS `sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema` (
  `sistemaid` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`sistemaid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema`
--

LOCK TABLES `sistema` WRITE;
/*!40000 ALTER TABLE `sistema` DISABLE KEYS */;
INSERT INTO `sistema` VALUES (1,'Electrico','AC',6),(2,'Hidraulico','AC',6),(3,'El√©ctrico','AC',7),(4,'Mec√°nico','AC',7),(5,'Hidr√°ulico','AC',7),(6,'Gas','AN',7),(7,'Motriz','AC',8),(8,'Hidraulico','AC',8),(9,'Carga','AC',8),(10,'Tren de Fuerza','AC',8),(11,'Motriz','AC',6);
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisusers`
--

DROP TABLE IF EXISTS `sisusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisusers` (
  `usrId` int(11) NOT NULL AUTO_INCREMENT,
  `usrNick` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrName` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrLastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrPassword` varchar(5000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrimag` blob NOT NULL,
  PRIMARY KEY (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisusers`
--

LOCK TABLES `sisusers` WRITE;
/*!40000 ALTER TABLE `sisusers` DISABLE KEYS */;
INSERT INTO `sisusers` VALUES (1,'mantest1','mantest1','mantest1','202cb962ac59075b964b07152d234b70',''),(2,'suptest1','suptest1','suptest1','202cb962ac59075b964b07152d234b70',''),(3,'plantest1','plantest1','plantest1','202cb962ac59075b964b07152d234b70',''),(4,'solitest1','solitest1','solitest1','202cb962ac59075b964b07152d234b70',''),(16,'m.rodriguez@mrsservice.com.ar','Mariano','Rodriguez','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ‡\0JFIF\0,,\0\0ˇ€\0C\0	\Z!\Z\"$\"$ˇ¿\0÷¬\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ˇƒ\0R\0\n\0\0!1AQa\"BqÅ	2Tëíì°±—#3RVbr≤¡“·$SÇCUc¢%DsÑî4Fd≥¬√ˇ⁄\0\0\0?\0ò¿ñ◊Zy8˝Ör¢\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"•Ó›¿.<Ç£´ó˝SÚπr åÇ∏¡,√\\r”»ûœπQR˜n‡óA›‹ír„Ã™ë| AP	i\rwûGª¿ÆDDDDDDDDDDDDDDDDDDDDDDDDDTΩ€∏\0e«êF7w$ú∏Û*§D_FATZC]≈ßëÓ+ë/vÓ\0q‰ç›…\'.< ©¬êU\0ñ˘Æ9i‰OgÅ\\ààààààààº}Y®l˙[O’ﬂØ’—P€©ø,≤¿“y\09®aµô:é≤·-6œÌî÷ íWYñy?[t˘≠+\Zª§˛⁄úÚÔÒh9¿£Ñ›_?	˝µ~óü˛? üÑ˛⁄øKœˇ\0Â^æûÈi∂eS$≠π[Ó–ÁCSF∆áπÅÆ˙‘∑Ë˘∑Ω7µòB#˜ßP@ÕÈh$ê8H;_Ω!·Ã}k2\"\"\"\"\"\"\"\"\"\"\"*^Ï`óA›‹ír„Ã™ë| Ç2\n†”∫„ñûGª¿ÆDDDDDDDEΩ—zZ…vUe´ÇyÖ47P⁄à⁄‚‡Ë›∫\\;pGZÅàã$th§¨≠€∆èß°®ñûcqcÀ„qi›h.pœqkH>µµDDDDDDDDDDTΩÿ¿.<Ç1ªπ$Â«ôU\"\"\"\"\"¯@#d@%ßu«-<èwÅ\\àààààã©t∏P⁄ÌÛW‹j‡£§Å•ÚÕ3√∆édì¿(ã∑Nó—”æ{À·dŒcÔÛsˇ\0IáüÌ;‰ÌY„£´Ø÷õ”˜€≠[ÍÓ/éH™¶¬{Ÿ#õìé“\0>’‰Ù ≥{ı—ÁR44Q≤:¿{∫∑Ç~¨≠e\"\")–ÕÔñ›[^ÊoGm∑Õ6{úÏ5øi[Pìh=\'5~áÈ©Ëi›\rﬂM”Väo õáW’¥1˝[«í‡„«#*LÏwkö7j6Ø)”µ˚ïë¥\Zõ|¯lüÈ÷!\"\"\"\"\"\"\"\"\"•Ó«\02„»#ªíN\\yïR\"\"\"\"\"/Ñ0FATZw\\r”»˜x»àààà≠≠¢Î]=†4≈F°‘µÕ•£Ña£õÂcﬂI≈k´§›5>’ÆnÜI$∂È¯üöklo‡{ù!Ù›ı≈àT¯˜:o\"ØeWõ+ùº˚}–»y6Vïé˘TÇ⁄©óΩ}¥=õ‚Æﬂ4AΩ‰∞„Î¬‘TÒ>	‰ÜAá∆‚«‚\n‚DE3ΩÕã0‹’⁄Äå¡F”·≈Á¯)âW<t¥ìTLwcâé{œp%jX‹ÂºÍÀΩﬁwoIY[4Ó=Âœ\'¯™t›ˆÌ¶Ô4˜ã¬z\nÍg≈4/›p?ƒx>∫/tå∑m¥ﬁ™í~®ç†1Ÿ\räª¨Ó{~E\"QR˜c\0∏Ú∆Ó‰ìóeTààààààã·\0åêU\0ñù◊¥Ú=ﬁr\"\"\"/ZÍ[>ê”⁄é˚V⁄[}fIyûÊ¥v∏û\0wï¨ÕæÌf˘µ}_% πÔß∂@KmÙ!ﬁlÔ=Ô=ßÿ±™)cÓo^L\Z„Rÿú¸2ÆÅï\rÊ¯ﬂè±ÂNs«ÅZñ€-òÈÌ´jã60)ns±æ≠ÚG‘U†àãbΩ¨æˆÏ*Á≥π◊Õ8w{>∂πd≠ΩﬁEÉc:∂Îù”Æf4¯ºn≠ÀT\'èÒs“TOKUM4ØÜxúåv◊êAÏ+aù6Ô—≠Lj9ô©°àÓB∂!Èè◊êˆ˜‚B¢\"\"\"\"\"\"•Ó∆\0q‰ç›…\'.< ©¬#!P	i¡9oaÓ+ë|$\0I8ôZÚÈß∂5÷∞~ì≤Ußl“ñ«yµUÉû{√xÅÌ=™:¢,”–ÆÚ,˝!Ù˛Ò√kÑ¥g=•Ï8˙¿[/ZﬁÈ—f˜ß§Œ°¨‹ä„M[<IfÎèŒiX!◊:>ŸÖÉböB÷[∫ÊZ‚ë„√§cá ‚±ﬂOK◊Ωõ©£dªí‹´aßÛö	sá˝´\\Ëã◊“óÎ¶ò‘47Î-SÈkË¶l∞»”åÿ{¡‰Gh[Eÿ^—mªNŸÂ•£‹é†é™∫úò\'hÛõÍÌ+Ò/v8óA‹q\'.< ©¬#!P	i¡9oaÓ+ëÈç¥ßlˇ\0e€ßÍÔW¢hËÀOùH¸dÉ‘”Å‚‡µ™I$írO5Ò\\õ1∫∫≈¥M=wc˜<ñÂévqÜÔå˝Y[qäFÀ%aÀ^–ÊûT$˜IÌqG©¥Ö‰÷‘—œL·€àﬁ◊ˇ\0iQzZjãﬂ=Gm∂ÔÜyU\\PÔCy‡gÎ[~¢Ç:jH)¢hlqF÷5£ê\0`=“{÷)tñûkæÁ¨p\00gÁëgŒÖ;L~Ü⁄åVZ˘ãl◊˜6ñ`OõŸ¸\\ûNÈ>càààààäóª\0Àè ån2IÀè2™DDDDDDDDDEÄF»TZpN[ÿ{º\n‰DZ◊Èß≠ﬂ¨6◊p•Üm˚}êy8-.o=n\'‰X=K]ñtƒ≠∞È*{6Æ”≥]Í®‚CYO0c•hoXn1ƒsÓXCo;VΩmgW6Ûtâîî¥Òu4Tq∏π∞≥99=Æ\'ôıw,ràπ#ëÒΩ≤F‚◊¥á4é`é’/4\'M	Ì⁄^\ZS•Âπ])‚ä∫zÜ±≥ê0ˆëÊû¸eGç¥Ì&ıµ-k6§Ω·ÛT¥±YO‰—ûgâ$ˆïc\"\"‰äW≈+eç≈ØcÉö·Ã»≠®tt÷ø„Ìèÿu≤o’ò<û∞ˇ\0÷èÕq>ºÌYRÁcÄq‰ç«rO2™DDDDDDDDDDD É≈qÇXpx∑∞˜x.EoÌ˝ñ–óÕE)√mÙ2‘{Z“G◊Ö©\n˙©Î´™+™ûdû¢WK+è§ÁI˘JÎ\"\"\"\"\"\"\"\"\"ô˛Ê˛®s°‘⁄>i80«_N“Óˇ\01‡cOµLîDDDTΩÿ‡\\ycwxìíyïR\"\"\"\"\"\"\"\"\"\"\"!\0å+å√É≈Ωáª¡`˛ú∑áZ∫=›°çÂí\\* §i≈·Œ÷¥Ö≠¥DDDDDDDDEù∫^kÈjßŒr¶®§w‘ﬂ\\alâR˜cÄq‰ç›‚NIÊUHààààààààààààæ¡‚a˜CúÈv_c∂≤P-€≠cßπ∆3ﬂÁ(‡Z‚◊8 ˆ*Qdnç52RÌÎFK¬7XôÏq›?Q[RDDEKùéâ<Ç5∏„ÃûeTààààààààààààã´sÆ§∂€Í.”≤ûñö7K4Ø8k—íO±Am≤Ùπ’WkÕEœﬁÀ5û72©Ò‘N¯|x0¿8˜ïÇu∆“u÷∂ßÇüUjZÎ¨4ÚadŒçƒc#\0v/Õπ≥é\\—ÍÊ˚Wú‡Z‚◊8 ˆ*QzÀsØ≥]©n∂∫ô)k©%l∞O√£x9x¨Ø¶∫KÌäÀ\\ â5\\∑Fe–◊DŸ\Z·⁄9=ÖMæé[f¥msNK4p6ÜÛEÅ]Eøê‹Ú{kW%ñ.v8$Ú÷„â‚O2™DDDDDDDDDDDDDX7ß“≤Ÿ—Ê(ﬁc5s¡M+á˙nxﬁ‹ake@êAÇ9Ωªrf\\—¿ÚÊ˚Wú‡Z‚◊8 ˆ*QgnÉ7JÀH]=6˚¢Æßö\nÜÉ√wwxÍ-dH©s±¿∏Ú÷„üyïR\"\"\"\"\"\"\"\"\"\"\"\"\"+?lZ*õh[7ºi:áàÕl?âêåır¥Ô1ﬁ«\0µmÆ4ù˜Fj*õ£∑KC]N‚^‹é«4ÚsOa¿EP$A éD/Dn‹ŸÉÜ◊4p<Ñ√˘æ’Á8∏µ¿Ç=äîDDDDDDD_@$‡q*jÙÿ˝÷”Y.“uË˙⁄s™	ZZ˜5ﬂ\nR”»0=•L%Kùé\0e«êF∑π\'ôU\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"5nè“⁄∫ë¥∫ö¡oªD‹ÓyLÂôÁ∫Ómˆf˛{˝∂|È?ô?Ωå˛Ä€>tüÃüÉﬁ∆@mü:OÊA—Ûc@Ç4¥»áI¸…>¿∂=$ªÛhKc…Ùã§œ∑Œ˙”{ÿœË\r≥ÁI¸…¯=ÏgÙŸÛ§˛d¸ˆ3˙l˘“2~{˝∂|È?ô?Ωå˛Ä€>tüÃüÉﬁ∆@mü:OÊO¡Ôc?†6œù\'Û\'‡˜±ü–gŒì˘ì{ÿœË\r≥ÁI¸…¯=ÏgÙŸÛ§˛d¸ˆ3˙l˘“2~{˝∂|È?ô?Ωå˛Ä€>tüÃüÉﬁ∆@mü:OÊO¡Ôc?†6œù\'Û\'‡˜±ü–gŒì˘ó°ßˆ1≤À\rs+≠z\ZœCX˜√÷ñûÒæNàY\0\0\0\0`ÒŒ«\02„»#[é‹ìÃ™ëZ[R◊˙{f˙m∫áS>©î&v¡ΩOï¡ŒåÅ»p<V6≥Ù´Ÿ÷ÎKl•≠ªyE\\ÃÜ-˙Ô8Ä2s¿d¨ÏàFF\n†yú¡Ï= ¥DDDDDEèˆªµÕ≤∆[ü´**„ ÄS”ôOôªú‡¯A[z§ÜÕ5∂≠†“ˆ\nã¨∑*Á9∞∂J\"∆˘≠.9$‡“≥\"•Œ«≈«êF∑π\'ôU\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\",\'”jÿn]oÂåﬁ}#‡©oÄl≠ﬁ?4ï≠˚=K®ÓÙulvÎ°ùí›á∑h¨e¬◊G_‰Í`dÕı9†èµv—»¡Tgp‡¸√‹´DDDDDE=“©ó\\iõ;^i≠Ôù√<ú˘˚\Zó–2ÿ. ®ÍKr((**s‹pˇ\0ˆ∂2ÁcÄq‰≠«â< ©£∂/¯ãeöû»]Wlû6‰Ì√ÉÎ ‘±»‡F\n⁄óFÀÔ¯ãa∫N‰\\ ∑≤	8Út~f>FÖëQåå@Û¡Ï= ¥DDDDE≠>õ7±zÈ	{dnÃvˆEFqc˜÷J ~Ê˝âÊı™5ë÷S≈Ièi..≥ÉT◊kq‚O2™DDDDDDDDDDDDDDDDDTH∆…£xÀ\\#º©ç±ÿ•∂ß©l/nË§∏ ÷\08n7Í!Lüs∑RãÜÃn∫jGÉ-™∏»∆ÁèW(Œ}[¡ P¢\"ëÇ®g{r≠u.ïê€≠µW\ná5∞”BÈ^I¿†ìˆ-LjªÅ‘Z™Ô™.W][,ÌÉüº‚CGÄS«†ÖïÙy¢Í•ª÷…;Z\0çûc1·¿©ààààààààààààààààààµ˝ÓÉÈWZ6≥I®‚åä{’Kàl~káØß⁄º~Çö¿i≠∂¡j®órí˚®›ìÅ÷è:2}†∑˝Àc(ààx*ñçﬁ»ÏU\"\"\"\"√1ıÑZKa◊QüÛ7w6›∑K∑Ûø«≥„ÍZ›h©ª‹‡¶âôíi10p8\0∂}õÈË¥ûÇ±i∏ö÷ã}Pªã√FÒˆª%\\Hàààààààààààààààààã\0ÙË—Æ‘˚ûÈMYY`òV∑\'™¯2èVq˝ÖØ;%Œ™œy¢ªP ËÍ®Ádºsk⁄‡‡~P∂œ≥MQG≠t%õTPπ¶+Ö+%sAŒ„Òá∑ÿ‡G±\\hàààààà†∫Æõ⁄Më¢õ~í¡Î∞x\Zâ0]Ú44zÚ≠Ü:0ÍÌ∫ZÂö-˙07\ZÇG≥Úc⁄Ú”é‡VÀu.¥T◊;mM∫≤&ÀMS°ïékÜ˘\n’◊4}VÉ⁄-ÁKUí©pÖ‰|8è;«-#€ï\'=œ-£ÜõÜÕÆ3ÅΩΩ[lﬁ=øÒ>ß|™g\"\"\"\"\"\"+KköŒãg˚=ªÍ™Á7p	¸§ßÉ=n!jéˇ\0t≠æ^´o7åµï≥æyû{\\„ìˆ©ı–+A3≤…55l;ï˙ÜA+wÜßfDc⁄wùÌR=q…,Q„¨ë≠œ,ú*¡A‰æ¢‚|Fp˘£iÓ.r¢\"\"\"\"\"\"\"\"\"\"\"\"¢R[ú9ÄHP◊¶6ñõRiπu‘t—>¶€a´sÁÀº◊ì‡N=°DÕπimQm‘VôåU÷˙Üœª»<A# ¯µ=ìkã^–Ù-ªUZûﬁÆ™1◊Eúò%3‚’É⁄Æ‘EnWﬂ‰èQ¡jä0ï≠{èn{ï∆≠™KÙ’z£ﬁÊ±¨ÅÖÌwiq\0´ïÈŸµQ™ıtz\ZÀQøi≤HMSÿrŸ™πX`·Î%a›ÜË\Z›£Ì2’¶)⁄Ê¡,ùmd∏·\r‚˜|úâhu˝Vû“ÏÜ›#ÜéC}çh†{ßFU‘WZ_=K˜‰38g√{ààôEfm%Œk®ã\\FwπRπ≠“≤;=4≤=¨`ßcúÁ\07GV€Jç-§‰öŸ§®ﬂ©ÓåÛL±í⁄H›˚|ﬂ˛ﬁ**m§V◊u<œeF°ûÕL¸‚ö‹ﬁ†˚CŒˆÂb˙˚ÌÍ·8û∫Òp´óx;~jóΩŸéIÊ¶ßD^ëåø≤óBk∫÷∂Ï–#∑‹%vP£y¸˛„€ÎR≈yóªÕ%©ç3ÈX9ï‡åﬂΩü\";ùÍ‡≥\\„ªPæxòÊ\0KH=¯X⁄ê–Õmπ€.TB∂í·JÍia<ú◊p ˚⁄æìnÖ÷µñÖ≤F”áo“OƒuëÊü_aÒ\"ÙK⁄tª5÷—€*Íù6ïæŸsˇ\0óîcÍ>•:Ùé§È	ç±òåBV=é»p8¡ªäˆÓU•∑‘T¥:(‹nWëaæÕq∑÷T:&µ–¥ﬁˇ\0e‘\\Áñ˙€ëáµ¡òÌ^Ÿ’∑S Ñ|¬ºJ+ïU=Ì’ÒBÓséÊÈ<Ûû\nı“◊jÎìßî‚!æi˘Wùy’UXÍ;TGªø∫\\Iu©o¥25◊\ZL∆„ÈƒXO®´¬Ÿ]¬âïP1√à<⁄{AVµ„UUæµ‘vàC∑]ªøªºÁ\0±~ﬂ6πs—:6∂‘ÈÃW˙Ëø‚Õ◊SBAó˝çÒı(\Z⁄˙ Ÿ‰˜ÆÅ∏ﬁ%œs:«∏û◊8ˆï6∫$hçA¢l]Æˆ¶GuΩÓo¡∫Ë†Ê÷‰rœ¬>ŒÂõµ¸µ·Ç(öM!`2ﬁ\0ÁΩxV:ãÏtEñ÷9–Ôú·πÛ∞3¸€YvöŸß!™´njû7wO;ä∂€u‘ïmD∏Ó[¨‡Ø->˙ó⁄)ﬂYûºÉøë«·}I~∏6€mí©√$y≠‰ÚV}3ıÎz¢ÿÛÅÉÄπËn∑õM≈î◊ﬂ+yc\'·|⁄≈U55u\\ÃÇûH˘$y¿k@í°ÔHM∫]u|ÿÏ’S[¥Ö=4a˝Y-ñ‚Ì—¡«ògÍ¸´QTŒÚ˚•dÜ*V≈ƒﬁÁ±£¡x◊*…k™ﬂQ1‚„¿@w.™ó›z:>∫j-†k∫72ëÖ≥ZÌ“H‚Ÿdõ⁄o>JlÅÅÅ¿/®àààààààààà±˛∞¸^¨éZ¶π‘˘å„Ω£jπÈ´,5µå4¯p¿\0Ω*()È·‹¶c[;ÿo.*∆Ÿ‰q…wúH∆ª29‡≠Óîõ+°⁄.Œk]<B˜mÇIË%∆à1ì‹qÚ≠}i*zäy•£¨âÒMIZ–Ëﬁ0XÌ◊á=ã;t0€lZr‰Ì+´Í˜mF  JŸˇ\0LK⁄3\'ÅÏı)øxëìi˙Ÿ#{^«R»Êπß Ç”Ç\n∑ˆi∆\Zˆû#,ˇ\0˙]€\ZÕ}C@o_pÙU˘‘≈˛õ~Eb[\Z¥\'¥Åª◊À√˝ÆWƒ‡6ûR—∫w/R«∫6æä›pöjÁnÊ=÷ù‹úÁäˆı˛À]h®¶lÆ|éoôòœ¬Ï_4›Ô%kwèöÚGáö±>π⁄Ωüe∂Kï∆v«Yy4ﬂ‰®∑ºÁ8∏\rÁw0g∑êPnÁ©n˙œT›Æ˙Ü‡Íõï“7#›ÅΩêZ—ÿ\Z\0¿ã,ÙMŸˇ\0øÔ}ı=≤gXm’Mï¨>oîŒﬁL¡¯L	˘ÙµÍK]dçÅØ0ºk^1ÏÓ\\⁄ƒgMV~Àx/?fÁˇ\0ò˘.˝÷™vâ‰∂”n0∏âªÅ^¶îinû£kÅi‚¨ÆK’⁄û’o®\"B@¿^∂™evó•™ã!íT4å˛Àó≠£1˛\Z£¿ÏwÔÍ>(ﬁˆΩÃkúﬁDéJÙ˛⁄Y≠´•–ñZÇ)È$æoa¯ra§EÍœè©E7÷ö˘Ëa¨qe,Md\\;\0\0´‘ŒòWuhe<c5øw∞˚Wê•ÁD>én∏öM}Ø®OëKm∂ÃﬂÀvâd—Óoo3¡M¶µ≠hk@\r\0¿R\"\"\"\"\"\"\"\"\"\"\"È‹≠Ùw˙∫®⁄Ú9–≠Îûí£e<≥SÃ¯‹∆óû<≠û_)•ï≈Ïå“{9]ûy∑ Åˇ\0Dè˚ÇºÔC6z—ﬂO\'ÓïˆØ±∑Í8kunñ•Î£í∂ôÉR¿7ö;^>∞°≈¶	˜\Z\'4≤wBÊ8`ÔGØÇœ]z@jA>ì’l©πi÷“»!ë¿ô®¯ri?	ü´ŸŸ‹•Ê√µõR⁄™Æ6;å¥Ø‹;—ª%ßè`¯Ÿ’ŒÚm_\rK¡‹ç˛∞1˜+Êö¶\nà⁄¯ec√ÜF\n∞Êô¥\ZÌ”œÊ∞N‚OÉÅ˙’˜÷≈Sƒ2≤L¥¸gòX˜K”–Kxñö‰÷`Ç\ZqÁe]7^ö∑¿f¨ßÇ&Œq„ı¨/∂\røÈ-¨∫&(.˜Z∞Êô°vı59\r?	ŸÛù˙£⁄†≠∆ıt‘◊´µ‚ÆJ …Ÿº˘$?Æ8‡;\0‰Øé˚!∫ÌKSyŒíãO–∏>Âp∆=∆û◊ü´öŸú≥i´^ü£≥Z°•4q6([ê‚\Z;œ2OiVÓ¥Ç€OW∑Ó∂^=cXrwµ]W(f©“íFLÆßèÉ¸Ω°nÙ¥1OIU ãy˚ÌqÂ»}Jˆc¢û&»›◊±√-<◊uu%Ωå526&∏·™–◊Z*˙jxÈf9Ø$„±s‹ËÊvÅ•n·ﬁà∂B<8˝ÎüGﬁ®b¥«KQ3bí\"Gù⁄2OÒ^>‘6óC§t≈∆Ô<†R”π√ì˘0¸ú-lÎ…•™i¨®®}EEEd”M#éI{Á}euÂéíz:Kkòÿ§}3$äN˜ëƒZÎSÅW≠5æeLDàÓˇ\0Õ*EÙ\'ÿùßWWTk]R#©§µ’u4ˆ˜7Õí`ﬁìΩ£#¥ÛSπ≠\rhk@k@¿\0pTàààààààààààä‘æ€Øœπ…WG7òq∫–Ï`/=‘:¢±¶dxaÁìÖqÈõ3-Œ€ÛI≈Ó˛Õ“ˆ:Àu⁄ZâÀ:∑0ÅÉ‚\n∏Î‚t‘3¬ﬂÖ$nhıëÖ‚h˚5M•’PÊ≥wæQ˜§œFfjöÍùc†˙∫;€âñ¶è‡«R{\\ﬂÕ‘T5ª⁄ØVÍ⁄ã]‚´»™!qéhfØiÌ‹—˙“Ò†\'u^ëø÷RW=Ìsü√‡ÊûH#“÷≠$4[C∞‚¶1Ü‹mú7øj\'∞˙ÇÃ€9€V…¶™5^P”á3tEX«@‡Iù¡^◊mK≥ù@¡UO≠,mêpÎ[X%yT;JŸéêmCÓ;D±?|1ìá;Üy\0NV(⁄?I=ñ6¶GÈ….\n≥úª®1@]˚GŒˆÄTy⁄◊ıØlîıöç¥√Œä€⁄dŒ{∞OŸ‡±‹hEŒõò(`ﬁ\r`ÛèFÒÔ%f^è;πÌ\"in/ûÆãM»Ce¨}7Ve¿ñ≈íwèé0>•<4Êâ”˙kG√•lM∑[an\Zÿæèkú}\"OJËÀ¢8Ê*–GÎ3øh“tts6zâ\rC⁄rh?≈\\ò∆8w+~·§≠’S∫V9óêﬁK⁄¢Å¥‘ëS¥ó66ÜÇ{p∫óÀDh£éwπ¢2H›Ò]\n=%mßòH‚˘psár^Ûò«Fc-Ñc·Öo÷È|Ú∆]O!…GÓú≥SiìP“Q˘ıW;ã#%˝åc\\ÚG¥5BÆTÔ°ı∞æR$s˜Å«∏.ï¨™ñB√bç¨o<`›)ÁæÆó¨ùÄ∞;„íû]\0Î[_≤À¨Ìã´>˘ñü1ºTèDD^&°’:{N’€ÈoóäK|˜˙ä6M iô¯‰?æÂÌ¢\"\"\"\"\"\"\"\"/\'Qj+ù¢um˙ÒClßh…}LÌåc⁄x¨/¨∫YÏö¬Á√AWpøN“F(i¸Ã˛€ÀA¨¨Q®zn\\^Á7OhzXG£%u[üÚµÄcÂW/Fë∫ªi{X:sQ”⁄)(Â°ñXKöL≠- eŒ$˘ªﬂ\"ñãÌßbö/jt\'ﬂö3Iucq òÃŒ‡Ó«∑¿˝Jmw£V—¥≤’S–:ˇ\0gfKkh\\Ê∑ı„¯M˙«ä¬≤∆¯§tr1Õ{N◊UàÆ≠≥˝aÆn-¢“÷\n€ã…√§dxâû.yÛ@ıï/ˆ—\n—fñŒ—™bª÷7e∂|ôáı›ŒOWÎRûéöûéñ:ZH#ÇöQ¥5¨ê\0r∞ãÙÜ÷µõ>ŸÎT€ùÆ•lm¶Î[º“˜Ω≠\0éﬁj(Y:kköw¥]Ù≈ä∫1œ©2BÛÌﬁp˙ñI“Ω4Ù]kŸ¢”wkKúx…õQ}ﬂ Y´Cmèf∫Ã1∂]nñwÚßöN¶_ò¸~ÇA‰B˙à°ˇ\0∫V„Ô6ånN\rEQ#˝±®Nàßøπ’QˆWy¶l—∫hÓÖœå8o4;é\nî(à¨-µm?Ol∑I…zΩ $®x-¢£cøS&8\0;yÏZ’⁄û–µ—u|˙íˇ\0VÁL„äxX‚#¶fx1É≥¸…‚•øB˝Ω’jw”ÏÁWL˘Ó—ƒ}Ï¨9.®c\ZIçÁÛö–Hwh„å∞DDDDDDDEèˆ´µÌ	≥J#&£ºƒ*˜s9TIÍ`‰<NàõSÈÅ¨ÔŒöãE“≈ß(ZŸ‹µN˚«Õo∞dwïµ˙ı®+ü[{∫÷\\j^Kù%LŒy…ÁœíÚ—\\€/’uz_Ÿµ].í›RŸ\\Ã„¨g\'≥⁄“GµmkHﬂÌz´M–j+=Kj(+°l–º√ÿ{à<ÔÿDEaÎ≠ëlÁ[;PÈ;|Û∏c #è™îΩ∏+ÍÜ=¨ïÔ¥_/v≤x∂=ˆL¡ÛÜ˜÷≠áÙ§ﬂ;õ@ú7<∑qÛ◊~—–èN∆n∫⁄ÈPﬁ—OL»≥Û∑ñJ—Ω∂CßddÔ∞…wùûù∆c+IÔ‹‡ﬂ©fU∂Ç’F ;m=;4{Ó\"\"Ö>Ë&“a∏U–Ï“œ7\\i%W3œ„1à‚·⁄.#ƒw(Äˆπé,{K\\#B©Æs“Z‡r<B [3€Ó”t#„é›®&Æ†a„E^L—‹3≈æ¬≥ŸK]™üøUƒt≈Õ¯híGo“»|ÕûßpÒR.ñx*©ŸQM4sC ﬁdë∏9Æ‡ékôEØtj“˙≠ôXØ∞ª»nù[»≤Fx¸≠hˆ®àØîk˝C≥m[O®¥ÌWW#l8û™¢<Òc«hÒÊ9Ö≤≠ãm;NÌKIE{± ;0⁄⁄\'∏u¥“cãOxÓwh˘˙ä¬€V‘4ˆÀtúó´‘¢JáÇ⁄:6;Òï2v\0;yÏZ”⁄Æø‘[G’ìÍCRdï‰∂ZOx1É∞}™–Y˚†e°˜.ê4Uçm≤Ü¢•«ª-Í«ˇ\0±liJÔr†¥[gπ]+ ¢£ßa|”Ã∆1£¥í°ûﬂ˙\\UUæ¢¡≥ÍjañIxëøåìˇ\0Iß‡è÷<|âw:Í€ùt’◊\ZπÍÍ¶qt≥LÚ˜º˜íxï‘DDYÛ¢∂ﬂ*ˆ]p˜é˜÷÷ijπC§cxæçÁúå£ΩΩΩúV¬4’Ú—©,‘˜õ∆û·AP–¯¶Å¡Õ#¯ƒ/QRÁcÄ‚‚çn<IÊUHààä;t†ÈjŸıæ£NiZòkı\\Épñ˘—–ÉÈ<Ú/Óo¥¯ÎÓ„]Yp∏OpÆ©ñ¢Æ¢C,”HÏπÔ\'$ìﬂïÿm¡Åè!µçcœ(Ó>=«˚{⁄Ê<±Ì-sN#B\" ˚€ÆπŸÖ\\p[´\r∆Ã\\:ÀmSã£#ı6W»∂C≥Î¸∫ßG[5∂ö€K´°˘%XXÛûxÏ<«Å≈}5Ô⁄VÉb7k6¢¨\r≠π4e;8…$Ãps]é∆ÇOﬂÖ≠¥DW^Ãµﬁ¢ŸÊ®áPi∫◊S‘Fq$n„ÏÌc€⁄‘≥ü·•¥o˘ü˙9?ô?\r-¢ˇ\0»¥˜—…¸ÀÌC_Í=£jôµ§¨ÎßwõM·Ïcÿ>ﬁ’h¢ú~ÁNå}óΩÎz®∞Îî¢íêëˇ\0<óÎq«˚TµDDDDDDV÷—uÆû–\Zb£PÍZÊ“—¬0—ÕÚø±åo§‚µ—“nZõj˜WE,í[¥¸/Õ-∂7˘æê˙N˙ábƒhàààØÌëÌcZl¬ÈÂZj‰·M#ÅûÜo>	ΩmÏ>#L˝íÙ≤–Z©ê—já/sv3ªzïÁ¬OG˝ÿı©nÆ¢∏“GWAY]<Éyí√ {\\;¡;ùÉ∫8∏Ø≠nËÔ\'ôÔU\"\"\"«€G€œ6NÛ®µ3jö2(©‹%®wÜ„yzŒäà;mÈg™uTsZ4T2iÀ[Ú◊Tof™V˛–‡¿|8¯®◊,≤M+•ïÓ|è%ŒséKâÊI\\KË$ézMsnêÜ’¥aè<£∏¯˜ÏyÔkòÚ«¥µÕ8 åUËúíTÃËá—ÀI¥\r†—q·-≤Ÿ3yvâeÂ\r>≤§6‹∂≠ßvS§üu∫<M[(,††c∞˙áÅı4vûœZ÷¶”5∆†⁄™®‘Zé¨ÕS)ƒqé¬Œ∆0v4+]]2—óm≠≠⁄^œtıíÄ˜„ÕÜ1≈Ú;∏í∂´°ÙÂªHÈ+fõµGπGoßl1˜ªãèâ9>’Ì¢\"\"\"\"\"∑∂Å´¨zJVÍ]CT⁄j\ZVdüJGz,hÌq<\0Z–€æ÷o˚W’Nπ‹ﬁiÌ–e¥\rvY;œ{œi˛¢\"\"\"\"+«BÎ\rU£d+£∏⁄£ÀbÇr3á{>	$Lø§˙aÌ2’Ü]È-7∏ál±§>∑4ˇ\0ìÏ=6Ï2≤˜¢ÎÈ›È>ö•Øo»@*Ò†ÈÖ≤Iÿ:Ò~•v9:àÚá/Tt≠ÿ…\0˚˘Z?ˆO]jŒñ€ße¬ÎQ√8äÑ¸úHVÂÁ¶éœ©Å˜Æ¡~Ø=ÅÌd9˙ «öü¶∆°ú>=;§mÙ`è6Zπù+ö}CaÕm“k\Z¥I√VURS?ù=˘v€Á}kK#Âë“J˜=Ó9súrIÒ+ç–H9\nÙöÊ\\#êµïmcœ(Ó>=«˚{ÿˆ»cs\\H‚rô]˙9c…6Å¥\n.<%∂[&o.—,†¸°ß÷Tá€û’¥˛ tõÆ∑G∂jÈAe\rá‘?¯4vû≈≠]¶kçA¥-YS®µYû™cà„Òp3±åç’Z®àààã◊“∂æßæ”XÏ43W\\*üπ17$¯û‡9ìÿ∂9—ìbñÌìi√5K£´‘ïÏ]T«>©ü™3⁄}ã2¢\"\"\"\"\"Î÷US—QÕWW3 ßÅÜId{∞÷4íO`kc•NŸjˆß¨ùOA+„”6◊πîÁi‰fpÔ=ù¡adDDDDEËR¿∆«Âu`ı^É9O›ﬁ±◊´®í¶^±¯çh‡\Z;\0Æààààààä°úåg=òSK¢wG√3h5˛–≠√Æn$∑P ﬁ$z2Ã”€‹>^ÃH\rπÌ[OÏ£J:Ît{f≠î––±ÿ}Cˇ\0ÉGiZ’⁄f∏‘B’ï:ãQUô™f8é1˘8#ÏccGıV™\"\"Ô‹-WKsau¬›WF⁄Ü	!3¿Ê	y9πGà]\\Ù¥Û’N zh$ûWú1ë∞πŒ=¿k7Ïõ£—µ¨ëU\\®ù¶ÌN¡5Ï\"W7ıb¯Yı·MÕåÏ{GlÆ‘`∞—ı◊	ZM∆pÛxg—oÍè≠ddDDDDDEz{ÌmˆÎ{vcb©›©¨`ñÔ#≈ë-á˝‹œÜiPÖz∞1±˘]X\"/AúåßÓÔ?ÿÎ’‘IS&˚Ò‹÷é£∞\0∫ËààààààæÄI¿*ftDËÂè$⁄–h∏ñŸlôºªD≤ÉÚÜüYRn{V”€(“o∫›\\\'≠òP–±ÿ}CÒı4vïÆ\r°Î[÷”5$˜ΩEWΩqy\"Éàôr\"hÙ@Ï=ΩΩÍÕ{\\«ñ=•Æi¡`Ç®DE,z\"tr}˝Ù∫Ô^Qπ∂ñë%æ›+pjàÂ$É˝>·ÈzπÕk•ñœu¢Úù™ä∂ò\rﬁ¶x\ZˆcªaX}ÄÏvÊ˜>´AZöÁsÚp¯∞FFVã£Ü≈i$Î\"–înw˝Zâ§#ûBæt÷ä“:dßÙÕ¢ÿH¡u5#„Î d´Ö∑¥ùYo—\ZÌ™nO};§\r\'·øìX<Kà’™=a∏jùOp‘Wiåµ∑\náO+èy<áÄ‘ºtDDDD^Ö,l~WVUË3ëî˝›Á˚z∫â*eﬂyÕh‡\Z;\0ÆààààààãËúíTÃËá—ÀI¥\r†—q·-≤Ÿ3yvâeÂ\r>≤§>‹∂≠ß∂S§›t∫=≥WJhhÏ>°ˇ\0¡£¥ˆ-jÌ/\\j¢j∫ùG®Îı3G·ÏccGı*÷!zMs.1à‰ U¥aè<ÉÛOèq˛«ûˆπè,{K\\”Ç¡PäXÙDËÊ˚¸î∫Ô^Qπññë%∫›+pjàÂ$É˝>·ÈzπÕ”=%<ÙÙFh!|ç\"wÉKÉG÷ˆÄ1ÀíÌ\"\"\"\"\"\"\"\"\"ÜﬁËÆªpéÕ≥ )»ˇ\0ƒ.ßü1˝Œ«Ï®`ààààãøK™´iÍΩr2üªºˇ\0cØUQ%LΩdÑw5£ÄhÓÅ–	8$©ô—£ñ<ì_Ìãè	mñ…õÀ¥K(?(o¥©\r∑=´i›îÈ7›.í	Î•¥ˆ8‘?¯4vª≥÷µ©¥Õs®6á™Í5£´3T qcÉ!gc;\ZÆãË89“kôp`éBT—Ü<Õ>=«˚{ÿËﬁÊ=•Æi¡qJÓà}ü~íó]Î 72““$∑[•n\rYÏíA˛üpÙΩ\\ÂÜ÷ˆâ¶ˆ]£§æ_&k∆ıtîë‡IP¸pc⁄y\0µ˚W∑}Yu€ïØiJÉ˛B®u4Qºà°¶\'âæ∂ìì⁄x≠óZ´ÈÆñ [ïÇZj∏Y</ú«\0A˘\nÌ¢\"\"\"\"\"\"\"¢G∂8›#»k\Z	q=Ä-RÌÁVI≠v∑®µûÁE5c„ßÁv&÷V±~ñ6!WVUË3ëî˝›Á˚uT d~;ö—¿4v\0]–	8$©ô—£ñ<ì_Ìãè	mñ…õÌ  Ì*Cmœj⁄we:I˜K§ÇzÈr \n;®hÌwg≠kWizÁPmU‘j-EVf©î‚8«BŒ∆0v4+Y—¿‰)q—?£Îµ#huÊ–h-—˙\n9\r`IGÊŒ˛ﬁ\nTÌkhöoe⁄>KÌÚf±å]%$xT?¡¸y\0µ´∂§Í-ßÍÈØ◊˘Œ2[KH¬z™hÛ¡çiÊJ±÷«˙\rÍ˜jmá“P‘M÷UŸ\'uÚrzøÖ}á≈ûQX] ı“€’7¶I’ÕæFBÍ<n7Îr’\"\"\"\"\"Ô“¡cU`ı^Ñ|åßÓÔ?ÿ‡´®í¶S#Ò‹÷é£∞\0∫ËààààààæÄI¿%LŒà}q‰öˇ\0h\\xKl∂Lﬁ]¢YA˘C}•HmπÌ[NÏßI>ÈuêM[(,††c±%Cˇ\0ÉGkª=kZªL◊:ÉhZÆ£Qj*≥=L«∆‚·gc;\0V≤\"\"ñ]˙9æˇ\0%6º◊îeññë%æﬂ+pjàÂ#«˙}√“ısñZ⁄&õŸ~èí˘}ï¨c[’“Q«Å%CÒ¬6„»≠˝´Ì˜µ}M%ﬁ˚8äví⁄\Zf8ı0≈úà¿<èÎvû~ÿËﬁÊ=•Æi¡qP•oπÀ®ùIØ/⁄bIW_B*cgf¸N¡?#æ•:—G/tm˚\rä‹◊`‹Óê¬@<⁄–È>L∞-z\"\"\"\"Ô“”∆»EUX=_†ŒFC˜xˇ\0cØUQ%L¶IÓ\0p\r¡p\"\"\"\"\"\"\"˙$\02Jôù˙9c…6Å¥\Z.<%∂[&o.—,†¸°ß÷TÜ€û’tÓ tìÆóGâ´•îvPÒˆ4vª≥÷µ´¥Õq®6Ö™Í5¢´3T q`˛.v1É±°Z»àäXÙCËÊ˚Ùî⁄Û^Qπññë%æﬂ+pjœdèÈ˜K’ŒXÌkhöoe⁄>KÂˆf±ånÂ%$xT?¡ˆû@-jÌái:ãj\Z∂kı˛s∫2⁄JF’SGû\rh˚O2Uê8q^ìÀÑb9T—Ü<Õ>=«˚{ÿËﬁÊ=•Æi¡qeûàwZ:Cii7Àc©ôÙ≤xá±¿ù∫∂xàààààààä ˚•5ÆeãF€˜∏KSS1o~„X3ˇ\0zÑ®ààãøKOpä™∞zØAúåáÓÒ˛«^™¢JôLí‹\0‡\Z;Ç‡DDDDDDDS\'°«GàßÜãhö‚ê=éƒ÷´t≠‡G£4Ä¸≠’\"∂Âµm=≤ù$˚≠—‚jŸAeá‘<©£¥ˆz÷µvôÆ5–µ]F¢‘ufjôN#å2v1É±°Z»àäXÙCËÊÎÛÈµÊº£s--\"KuæV‡’…?”Óó´ú±⁄ﬁ—4ﬁÀ¥t∑À‰Õc› JH$®~81ÉÌ<ÄZ’€“u‘5l◊Î¸Áteîîå\'™¶è<\Z—ˆûd´—√äÙòÊ\\#»‡⁄¶å1ÁÄê~iÒÓ?ÿˆˆGQ%∑k:V•¿±–^©KÅ·åJ‹èì+mCà \"\"\"\"\"\"\"(gÓòˆ/˛˚ˇ\0PÕ~ñû8‚U`ı„‰d?wäÎ’‘IS1íB;ÄGp\\ààààààã-tRŸÏ[E⁄˝∫›]í’B\rmp«1ÑaáˆùÅÍ ÿÜ‘µïßg;>∏jkà\nÉaÖº:ŸFﬂY¿ı-_Ì/\\Í\r°j ≠G®™Ãı3G>dÁÉ;\0˛©•6y≠ı]+™¥Óïª\\†ns4Œ1˙Éπ‡ºkÂûÌc∏>ﬂz∂V[™Ÿ°™Ö—º{2º‰E,z!Ùsu˝Ù⁄Û^Q9∂ñë%∫ﬂ+pjè1#«˙}√“ısñ[⁄&õŸvéñ˚|ô¨cÂ%$xTIé`˚O µ∂√¥çCµ\r]5˛ˇ\09ãi)OUMx5£Ì<…V:\"\"∫¥;„Æ’÷6Ã ¶W¡π!Â 7Õ>=«˚lèÚmıR\"\"\"\"\"\"\"á~Èe+›n—UÉ;ëÀWÓÀÑD~ÈP≠w©i„éUVWˇ\0>FC˜xÆ\n™â*e2HGpÄhÓÅ”˜5ÌQyØΩπüéÎ)ÈZÔ’√úG Ê˜HÔïŸt¶ùcúÿj¶öÆ@98∆\Z–œ çùtM.–v√c”7|äW∫j¶ÉÇ¯£i{öf@¬⁄=™ﬂEj∑An∂“CIGN¡0ƒ¿÷1†`\0≈}+6sg◊õ*ªM=$bÔl¶}]Pg„\ZÊ\r‚ÃÛ›pÌÏZ∆E,z!Ùru˘Ù∫Ô^Qñ⁄ZDñÎt≠¡´=íH?”Óó´ú±⁄ﬁ—4ﬁÀ¥ÑóÀÏÕc\Z:∫JH$®~81ÉÌ<ÄZ’€“u‘5l◊Î¸‰7%¥îå\'™¶è<\Z—ˆûd´À≤⁄S]¥Õ/FΩ◊›Èc∆yÊVÖ∂Êé®Ë~ÔÙ\\®ààààààä6{°vgWÏVíÈrmóH§{±…èkôˆπ´_Hàª‘¥Ò«™´ãÙ#‰d?wä‡™®í¶S$á¿¿4w¿àààààààà¶_π≥yÖÆ’∫}Ó¸k˙ä∆{Û>p^«∫=¶Á´“zsTCüæ¶Jià≤ÄA?Ó`’6Æ≥≠®Yµaç“¡K)mLm¯NÖ‡µ‡x‡ï¥=™Ù˛∞≤√y”∑ZkÖÕâ‡ñÁ±√õOÅX•Œÿl\Z;g∑M7Eqß™‘wHM4R:ùÆtè«¡¿Œ‚Nπ±Ëâ—…˜˜“ÎΩyFÊ⁄ZDñ˚t≠¡™#îíÙ˚á•ÍÁ,v∑¥M7≤Ì%Ú˚3X∆ç JH$®~81ÉÌ<ÄZ’€“u‘5l◊Î¸Áte¥îå\'™¶è<\Z—ˆûd´enâñW_:@ÈZp¬ËÈÍç\\áÛDm.Á¸´hKèÚ±˚ø—r\"\"\"\"\"\"\"≥6◊•Ü¥Ÿ^¢”a†ÀWDÒFq+FÛŒjÇ¢)Êí	òcñ7=ßõ\\+Özñû8·UcÒ„‰d?wä‡™®í¶S$áè \0—‹\"\"\"\"\"\"\"\",ë—œhf€Wµj	ãΩÔ.4’Ì∞øÉé;«Ï[,’V;–¥5Uûª´≠¥]ÈFÏëêr◊µÌ=„ÅkOm€!’[-‘—›©$û⁄˜ü#∏∆“bôπ·ìËªºaQ‹+Ë≥‰Uµ4€‹U+ôüêÆ:Zâr‚˘dq∆I.säñ]˙5‘]*©ıÆ–ÌØÇ›P⁄ÁnPÓaÚ¥Ú`ÏiÁ€√ú´⁄÷—4ﬁÀ¥|óÀÏÕc› JH$®~81ÉÌ<ÄZ’€“u”ıt◊Î¸Á[IH¬z™hÛ¡çiÊJ±—KüsìHæ£Q_µ¨Ò™íCLÛ⁄˜ùÁ„‘~U7—q˛Oˆ?w˙.DDDDDDDZÊÈ±≥)tF”¶øP”ñŸ/ÔuD.k|ÿ¶ˇ\0âá8xÄzöû8·UcÒ„Ìê˝ﬁ+Ç™¢JôLí<ÄGp\\ààààààààà§«E^íË(·“\ZƒÕU¶À±MRﬂ:JûXÙ£Ê;;î‚°¨“˙ÁMı‘≥€o÷ä¶q∆Ï—<¬?ÅX‚˘—ìb˜jßTøH∂íGëIU,,ıµ€£ÿø°ˆ%≤ÌT⁄ªè°é©á,®üzy\Z|!${d€&ãŸÖ™IØ7Í.[øà∂”º:yfG¢<N∫6√¥ùE¥˝]5˙ˇ\09«“R0û™ö<cG⁄yí¨tDDD]ÀMe÷ÁKl∑¿˙ä∫©[0eœ{é\0“∂ù∞]Õ∂ck”,›uK◊V»ﬂNwÒyı\0x\".?…˛«Óˇ\0E»àààààà≠¨h;&—Ù]vóæCòßnÙ34yÙÚèÉ#|G÷2¥∂ü≥{ÊÃµ=E£T”ÿ‹|íF|\n∆v9ßªø¥rVMUDï$<y\08é·‡∏\\\Z?XÍù!WÂzj˝_jîÛ4Ûáz«\"≤≠J›¥R”à]~£©›‰È®\".˘@^F®È!∂CNÍzç[5.-°âî˘ŸhÎX¶∂™¶∂•ıUï‘O!À‰ïÂŒqÒ%u—rD«À#cçé{‹p÷¥dì‹ÁËg∞t»áh\Z ò6Ò+3m£ëºi\Z·˘Gw<éC∞z‘≠DD\\_ì˝è›˛ãïqŒÎx∏˝^*ÿ⁄.Å“˚@”≤Xı=∫:∏ÁG\')aÁ±‹⁄T€OE]k£Âö„•ô&•≤å∏u-ˇ\05{ù•Îo»|™ßûñw”‘√$2∞·Ãë•ÆiÒp\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"æ6k≤Ωu¥:÷”Èã\rMD%¿>ÆFıtÒ¯πÁá∞d©Ω—ˇ\0£.ôŸ‹ê_/Ôä˝®⁄õ#ô˛^ôﬂÙ⁄yü÷<{ÄR	q~Kˇ\0O˜¢ÂDDDDEC‹s∫ﬁ.?Wä˙∆ÜéÚyì⁄™EeÎÕñË-p«â¥ÕlŒˇ\0Ã˜&;Ì¡XXt,“5Æ|∫cR‹≠.\'Õä°Ç¢6˝é˙÷+‘=\r6ïBÁ:”s±›£áZËd>«‹¨KøFÌ≥€w∫ÕU;G•M<RÁÿ◊≠ö›íÌ:àü)–\Zí1úd€§#Â≈©—˙≤õQ¶ØgñıÉ?RÈMfª√!é[Uto⁄Íwˆ.?zÓÚÍœ°w‹®Ú*ﬂâ‘}˚ì»´~\'QÙGÓO\"≠¯ùG—π<ä∑‚uD~‰Ú*ﬂâ‘}˚ì»´~\'QÙGÓO\"≠¯ùG—π<ä∑‚uD~‰Ú*ﬂâ‘}˚ì»´~\'QÙGÓO\"≠¯ùG—π<ä∑‚uD~‰Ú*ﬂâ‘}˚ì»´~\'QÙGÓO\"≠¯ùG—π<ä∑‚uD~‰Ú*ﬂâ‘}˚ïM∑\\(*ùÍÖ«¯/æı‹ˇ\0Â’üBÔπv·”ZäbŒ™≈s~˛7wi^sûX‡ΩJ=úÎ˙√ä]®&9›Û-Úû=‹óølÿF◊Æv{fyuu?øÖyX˙%mä‡·ÂV€e®fÆπßGº≤FïËIZ˜G&®÷êƒœN}1sΩèy«˝´4hNå{&“ÆéwŸz™f[rì¨°ú\Z>Eô(©i®iKGM\r4å2(ò∆é‡\0ªàààããÚ_±˚ø—r¢\"\"\"°Ó Ó∑ãè’‚W÷44wìÃû’R\"\"\"&r˘Å‹µ§`ÅÚ.∑ΩÙ?¶˙&˝…Ô}ƒ©æâør{ﬂCÒ*o¢o‹û˜–¸JõËõ˜\'ΩÙ?¶˙&˝…Ô}ƒ©æâør{ﬂCÒ*o¢o‹û˜–¸JõËõ˜\'ΩÙ?¶˙&˝…Ô}ƒ©æâør{ﬂCÒ*o¢o‹û˜–¸JõËõ˜\'ΩÙ?¶˙&˝…Ô}ƒ©æâør{ﬂCÒ*o¢o‹û˜–¸JõËõ˜\'ΩÙ?¶˙&˝Àñ Ñ1∆0÷Åï…Å‹‹‡àààààààà∏%˚ª˝>≈Ãààäá∏É∫ﬁ.?Wâ_X–—ﬁO2{UHàààààààààààààààààààààààãáÚ_±˚ø”Ï\\»à®{à;≠‚„ıxïıç\r‰Û\'µTààààààààààààààààààààààààà∏%˚ª˝>≈ÃãçÓ Ó≥ãè»<J©ç\r‰Ò\'ΩTàààààààààààààààààààààààààà∏\'ˇ\0ß˚ø”Ï˚9ï-hnp9úïR\"\"\"\"\"\"\"\".µ}T4TS÷T<«∫Y_ÇwZ—íp8û±|∂÷”‹-Ù’Ùíu¥ı16h_∫FÛi¡‚2Êæ’U““63US8ñV≈ï·ªÔq√Z3Õƒô_!´¶û¢¢jaíjgO^¢%°¿8-%§=Ñ⁄]z⁄öj*YjÎ\'äöX_$“º1åh.q<\0Âs4á49§FAä©t,WjÂ¶öÎk®ÎË™ôøõénÛ{‡ˆÖﬂDE«$åé7I#É–Kú„Ä\0Ì*€¥k›#umcËØê9îtÊ™wH«ƒ#ú†º\0Ê~≥r<U\Zˇ\0I◊–÷V“]$TLcÁoíÃ$k^p«À7‹“y8[G—Ú“…W\rŒy\"é\'ê∂Ç†ñIªΩ∫[πë¿ÉÀµ&⁄>ãÜ◊Es}ÒûK[ÂÅÕßïƒ∆«nπÂ°ªÕ`#Œ\0xÆ≈Á]È;=T4˜›<Oö&N“÷πÏlo8kﬁÊÇ÷4ˆ9ƒó=s•ÌóÜ⁄+ÆCX˘£Åç4ì∫G„q°·õß9™™m•ÎØ˛ÒRﬁ\"íø¨|Må1·Ø{>\ZÚ7Ê‡Â†í0{ïVùk•Ó∑∑Yh.—O\\Å¨xlÖáyØ-Ì›\'\n„DDDDDDD\\]K?4¸ßÔ\\®ààààààä¿€4WËÌù5OWUq°ûF)⁄Á∂h_KG0◊∫7Á∞4ïc€¨ö∫Ç√[pöûÔUY•´)©mÒÓ…ø_2:Gµºﬂ÷A+[ëúñc±uÏ˙o\\À`ºP‹s5ñ;y©∑J‡*ÍÊtUD0˙[Øâ—„é7»Ì^ûàèVC™%∏^≠◊≥mh™‘¢>°Â¬IY’≤ç≠Ì{[æzæ`„ÜJj*Kú∫ˆÒ=-™˜[ÂÙµ\0ı‘ïöf\Z\"\Z#\\añ\"‡’$q88 Û´¥›Ó’`Í¨÷€€zÌ)G-S◊=œ™é¢\"Ê‡ü Üoç¡«\0Ï]çUCY©n´ƒñMD˚dWÀML,4’0 ˙v46wG√Œ8xs¿+ìQXÓtµ;Duä€|é≤Â‰u4r5ïl‘ÿÄT5ß8Î8H72é\r¿K&ú∏Wœe•|wìdöˇ\03‰ÖîïTQ√ê∏è2∂\'H=-–\\Á\00FzwΩ=s≠ü[⁄©≠W™·[o∏9ìMM;Ÿ ëÆÜÌ„\rC?Yƒ4∏q!rÍ &ÇCüU…	”,ãO6:zΩ˙kÄ|ª≈˛îoœTw§¿›ΩÎC5ÙÚjK~£ñıÂ∫ÜÆôíöVS\nfH?÷uªÕ>q$ÂljA•®·ìSZ/59¥≈Ôxß¢î˘+•≤S∫?FB\\…éÜ{Ö‹¢°Ø˜ÔPìo‘Õ’o™πö:∆∂V“˘;òˇ\0&ë«™,«V\Z÷Â¡„$≠”k∫K`≠ãOZµE,n≤Q≈pd—T«$ï‚™\"˜0?Œs√:ÕÁ≥#q^Ÿ“ı∂ÌKQSn†º±î∫∫àQ≤w±îèä.ΩÕêc.s˜ùÀ#â‡≤ı÷*ŸÌÚ≈o´e%S±’Ã¯∫¿Œ#>nFxds\\ï≈Õ£ùÏßuKõãa!«¡„√è.<‘∂Î∆™óS‘ZmWÈS¶%¶dW:LhÂÎ·Kö–CNN≈≠Û¯·]TóJ ›ay÷V›=ym5öÍ\rUæX%û°≤>Q‡Ú\0-eÿr‘Z/6ùí“ŸÌÌ´}ÓÛ4Q‹*„åô#ñ™AÂ3ª-›~	¯;≠ÓMß6+~ô:^◊mø—DÎaÇé™—AÂ!ÿih•~\ZÁ0∫rwsÿ‡AVÜØ∂_ËlıÙÀm¬í≤˝ß)hÍ®°≥>≤Lÿ]ä)€&!›ﬁ›qîú	*˛ßµ◊÷Îª5%¬öo{t˝≠ì∆Ú”’M[&c»\'ÉålkºAîÂeZ≠7¡™4ˆú£éÈÔUüPO]’’YüQ\';Œ™ﬂ1 	ì\r!ﬁw%Îl˙™mA©Ìó[˝≤˝o´¶ÎÕ∂⁄lS“—–µ¡≈Úπò|Öú2Hn\\@9YqˇŸ'),(17,'rosanchez@trazalog.com','Roberto ','Sanchez','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0Ñ\0	\r\r4,$\Z*!=-15,.11 3D5,C49:-\n\n\n\r\Z- %777-/+7-7+,1/-3357-+/.-1+---/+-/7-+-777+-7---+++--ˇ¿\0\0d\0d\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0=\0\0\0\0\0\0\0\0!1AQaqë\"23BRSbrÅ°—#%Cíì¢±¬‚ˇƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0(\0\0\0\0\0\0\0\0\0!1\"AQa#RÅë°ˇ⁄\0\0\0?\0ºQ\0DD/jºK√ËËKçECt0”YŸG∏Ë<∏ˆU˝wé5Dù≈,∑ñ˘ÚJÔÌ≤∆Q≤ãeËãœ≠Ò´ΩÃtÑt…0ˇ\0u2Ÿ?ij\\ÿkÓ9	∞ì6zw‘Òo.:wL†‡—h\"˘cÅ\0çA\ZÕ},öÑD@\0DD\n¶ÒónﬂO˚ÆïÂì9†‘ Õ¬6ûN#RyuV≠L¬6:Gh÷4π«†hπ^D≈Ò’O5[ı|“ΩÁ∂bl<Ä∞˚≠õ¬9f\Z\"-	¬\" -_vÌ Ã*•Ÿ©‰9iûÛ‹¸GpbØe„P‚5ƒÇ9®>|§6_ƒ¸:•ë«$‚\nÇ∆∂§öd∞≥éúoÕnô„Íâ⁄/àﬁÅhEà!}≠à¬\" àÄ—Ìº•òusáG=øë¡y</ZÌm>ˆÜ≤!©}$‡Âé≤†¸3Ÿ—;Ω›(ºQõD”¡Úho‰›>ﬂ%_Qj™l±ßÉõ¬8¡|:öhw“…Ów∏eπçè7ÙÂßÅ]∞Ñ^ˆ6Œﬁ∞π§˙:≈\\´≈#•åœ.}ÿ \\˚^¸mÀ∫·«®‹Á«9Ù:oMπ( ¨\"¶/ÑÇh˛≥o[,x |é»∆πÓ˘,isΩ∑ü‚f6®«ÚƒNı&À{G\\◊¿*€⁄xak[3ÄΩÖá3ÀÕ[ñ∫ÿ,Œº™!\'ÂëQQl>#-≠eŒõÁ2>‹Õ÷Ûı?ã⁄˘i¸∑ﬂÚ•t;qF˜ƒ®èy#\Z√$/\rsú‡\0∏—\\[“Ymôˇ\0HÌ+j6√J√vì!—¡$‘˜ˆÈÿÊ‘B·Œ¡¶Ì=¿ıW>Œc\r≠ßé®G$9Ôö)⁄X¯ﬁ“Cöoƒ\\V“»Æ§To\'(à≤`\"\"S¥3π±Y∫f6\'µääƒ∆∂¿\0\Z>+l—˜)Ωtms◊ÿ4çI∂ù‘-¬ƒã‹ƒs^´FJ≈,ut\r8µéNÌÏ_6®€Las⁄”\0∏Ìí>∞—s£sM</—rU&±ó˝&˚Üd›ÂnÓ÷…añ›-¬ /Q0d•å∞çØ\0∂¿Ç4ΩÔˆ˙.->\\ô¥∑{^´_’Î„jäÇ∆\nö},†ﬁ‚n¯Xö◊4@p8ªÇÉR„U.©äõ8›Ám√@-ˆ%NWkO|néËúÎ©ïOÂÇ àà.∫k\'›±“Z˘EÏ9ÆÂ◊Q{\\√¡¿Ö§Ûµ„πïå¨ë\nÍ˜Ã}£fÚh‡?Ö+ÚÇ„¿\rWl—8±‹A◊Û—b◊¸˛Ø‡ºÖíúßÁÓz\Z„∑±êã_Ö’Ê≥Ôá§ÿ(⁄√$OàoX‚Cüêù,MÖ˘h∑ëxªej»oÆÆ:˝W+9D∂}ø∑o`ÔÒe.^è•º‘ﬂ…«◊ø©¯à∫eàà\" 5∏ûŸµ˜ØGuÏ{(Œ)É‘9°Ö˜\Zd±æ™nñTo–Ul∑>¡f≠TÎX\\¢™%X‘C(=@[*x*∆èßî˝&∑UaŸ,°}*∑Í…ºB~»Ñ≤äc¸)õH__£Ê˘∑˙)•íÀOØÓcƒ\'Ïç6Ü:2d~é\"¡ΩÊÀrà∫T”\Z†°≈;,sñÊràäS@àà\" àÄ\"\"\0àà\" àÄ\"\"ˇŸ'),(18,'m.muriel@mrsservice.com.ar','Marcelo','Muriel','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0Ñ\0	\r\r4,$\Z*!=-15,.11 3D5,C49:-\n\n\n\r\Z- %777-/+7-7+,1/-3357-+/.-1+---/+-/7-+-777+-7---+++--ˇ¿\0\0d\0d\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0=\0\0\0\0\0\0\0\0!1AQaqë\"23BRSbrÅ°—#%Cíì¢±¬‚ˇƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0(\0\0\0\0\0\0\0\0\0!1\"AQa#RÅë°ˇ⁄\0\0\0?\0ºQ\0DD/jºK√ËËKçECt0”YŸG∏Ë<∏ˆU˝wé5Dù≈,∑ñ˘ÚJÔÌ≤∆Q≤ãeËãœ≠Ò´ΩÃtÑt…0ˇ\0u2Ÿ?ij\\ÿkÓ9	∞ì6zw‘Òo.:wL†‡—h\"˘cÅ\0çA\ZÕ},öÑD@\0DD\n¶ÒónﬂO˚ÆïÂì9†‘ Õ¬6ûN#RyuV≠L¬6:Gh÷4π«†hπ^D≈Ò’O5[ı|“ΩÁ∂bl<Ä∞˚≠õ¬9f\Z\"-	¬\" -_vÌ Ã*•Ÿ©‰9iûÛ‹¸GpbØe„P‚5ƒÇ9®>|§6_ƒ¸:•ë«$‚\nÇ∆∂§öd∞≥éúoÕnô„Íâ⁄/àﬁÅhEà!}≠à¬\" àÄ—Ìº•òusáG=øë¡y</ZÌm>ˆÜ≤!©}$‡Âé≤†¸3Ÿ—;Ω›(ºQõD”¡Úho‰›>ﬂ%_Qj™l±ßÉõ¬8¡|:öhw“…Ów∏eπçè7ÙÂßÅ]∞Ñ^ˆ6Œﬁ∞π§˙:≈\\´≈#•åœ.}ÿ \\˚^¸mÀ∫·«®‹Á«9Ù:oMπ( ¨\"¶/ÑÇh˛≥o[,x |é»∆πÓ˘,isΩ∑ü‚f6®«ÚƒNı&À{G\\◊¿*€⁄xak[3ÄΩÖá3ÀÕ[ñ∫ÿ,Œº™!\'ÂëQQl>#-≠eŒõÁ2>‹Õ÷Ûı?ã⁄˘i¸∑ﬂÚ•t;qF˜ƒ®èy#\Z√$/\rsú‡\0∏—\\[“Ymôˇ\0HÌ+j6√J√vì!—¡$‘˜ˆÈÿÊ‘B·Œ¡¶Ì=¿ıW>Œc\r≠ßé®G$9Ôö)⁄X¯ﬁ“Cöoƒ\\V“»Æ§To\'(à≤`\"\"S¥3π±Y∫f6\'µääƒ∆∂¿\0\Z>+l—˜)Ωtms◊ÿ4çI∂ù‘-¬ƒã‹ƒs^´FJ≈,ut\r8µéNÌÏ_6®€Las⁄”\0∏Ìí>∞—s£sM</—rU&±ó˝&˚Üd›ÂnÓ÷…añ›-¬ /Q0d•å∞çØ\0∂¿Ç4ΩÔˆ˙.->\\ô¥∑{^´_’Î„jäÇ∆\nö},†ﬁ‚n¯Xö◊4@p8ªÇÉR„U.©äõ8›Ám√@-ˆ%NWkO|néËúÎ©ïOÂÇ àà.∫k\'›±“Z˘EÏ9ÆÂ◊Q{\\√¡¿Ö§Ûµ„πïå¨ë\nÍ˜Ã}£fÚh‡?Ö+ÚÇ„¿\rWl—8±‹A◊Û—b◊¸˛Ø‡ºÖíúßÁÓz\Z„∑±êã_Ö’Ê≥Ôá§ÿ(⁄√$OàoX‚Cüêù,MÖ˘h∑ëxªej»oÆÆ:˝W+9D∂}ø∑o`ÔÒe.^è•º‘ﬂ…«◊ø©¯à∫eàà\" 5∏ûŸµ˜ØGuÏ{(Œ)É‘9°Ö˜\Zd±æ™nñTo–Ul∑>¡f≠TÎX\\¢™%X‘C(=@[*x*∆èßî˝&∑UaŸ,°}*∑Í…ºB~»Ñ≤äc¸)õH__£Ê˘∑˙)•íÀOØÓcƒ\'Ïç6Ü:2d~é\"¡ΩÊÀrà∫T”\Z†°≈;,sñÊràäS@àà\" àÄ\"\"\0àà\" àÄ\"\"ˇŸ'),(20,'a.lazarini@mrsservice.com.ar','Lazzarini ','Alejandro','21232f297a57a5a743894a0e4a801fc3',''),(21,'pauspont@trazalog.com','Paula','Auspont','21232f297a57a5a743894a0e4a801fc3',''),(22,'f.molina@mrsservice.com.ar','Federico','Molina','21232f297a57a5a743894a0e4a801fc3',''),(23,'c.llampa@mrsservice.com.ar','Cesar ','Llampa','21232f297a57a5a743894a0e4a801fc3',''),(24,'g.rodriguez@mrsservicve.com.ar','Guillermo','Rodriguez','21232f297a57a5a743894a0e4a801fc3',''),(25,'user test1','nombre test1','apellido test1','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇÌ\0úPhotoshop 3.0\08BIM\0\0\0\0\0Äg\0hm7aN0DVWSPv_aetDtmO(\0bFBMD01000abc0300009e110000ce25000005260000752600002e3800004f540000bd57000098590000ae5c0000eb9e0000ˇ‚ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ ‹\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ÷\0\0\0\0\0”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0¸\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0ê\0\0\0gXYZ\0\0§\0\0\0bXYZ\0\0∏\0\0\0rTRC\0\0Ã\0\0\0@gTRC\0\0Ã\0\0\0@bTRC\0\0Ã\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ˆ÷\0\0\0\0\0”-XYZ \0\0\0\0\0\0\0\03\0\0§XYZ \0\0\0\0\0\0o¢\0\08ı\0\0êXYZ \0\0\0\0\0\0bô\0\0∑Ö\0\0⁄XYZ \0\0\0\0\0\0$†\0\0Ñ\0\0∂œcurv\0\0\0\0\0\0\0\Z\0\0\0À…cíkˆ?Q4!Ò)ê2;íFQw]Ìkpzâ±ö|¨iø}”√È0ˇˇˇ€\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ˇ€\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ˇ¬\0X¬\0\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ⁄\0\0\0\0\0…≥ıûÜƒöﬁ&Êä\0ÌπKíãï´¢Ó°uPªZœ41\ZGI›i-ÉöÕX∑Û•uÅud’üßf;^bKπe¬5s˙\\⁄≤Ö$≥’¢«0D›ìZ‡ï$œbïÔhJ¨\0±ñ?3iW$A!.T\n.T$™\n†Õ◊åﬂ°.Üïk”9¢•‘mÊÙπ¥wVYèCR/®…`r›’ñTFÆ~¸vGµ#π∞•£ª&¨˙lÁ…3q9=Í<LIU,~7¨πPï$J∫$®∑UÍ°k$Æk2Gh4Yc´ÄPU\"ÏÁt9ˆí+íﬁî>ÃF≥îÏnòA¶√3Êp≥h•íÓÍ¥Á“úËRVÎôhFTMÿfeBÂHï(ï)n™ÍTïQYõÜÎ;Ë°…j≈êT2”u“\'rÈ´àBEÈœ£NyQEïÏ‘•(!ÍrÖ\ZŒS!*≤£∞t+i…ùk2‚5f›T4„◊åmI-H%‘Í®πRÆâÈî˜ÇoÇà‰.ôØEºNwDVWÊ£$Æ%\Z3FmZsÙ[Qº˙)lƒ¬´∫»¿83‘+6XÀÁÍóüJ ™ ÿΩ5öî“Uå≤•0IQ÷ó@¢ÜH—YË”ym5^R4Z	[Ce’¿‘ôΩkåçc{|◊k(JöÀ£ :\"Yëãqz¶Fqd••≥õ$î•L≠‡∫[*Kƒï(É5†æ j÷µh$épç5îS\\«\r•ÑçÁÄ◊{04ÿyYOµupZﬁ&M@)â™!∆¢¶öYF‰ı5úô9∂Tr€¨\'Á—ß6I5.¶&ûCüOí•™ÇX∆X«ä†óKP\\ åZXP⁄∆≤‹~Ç≈Ü≈Ì˙-UF÷ÛZΩ&`y¥≤¥l°Qü>Âô«Qé0÷uØ¨‹ÜÜJ“[)Ñd—üNß:ÕM”qEBe‘ïT≈ƒ•ƒ©§RXrà¬ÿçÉâz´f}Òµ«ËV/Kƒ¬√5∑Û_·y™(Íƒ‡à’ôË¬√z]g=©d≠jù®lYj•ÈrÎ5ZrÎ≈ÊhÀ†±±Ya•ªZÇmP5zl…êd@¢ùMx¨”á°Œk1ö3Ì9{À%â -ß8N ”íGIÿ4.≤KKîîÍX¶•∫œ=â–4◊≥¶CJsføN]œÉ1°’ë˘`—ùÎZ–‘öeZ…áWëÿmx¯c.Bv[x©∆¶õ9Ω>`eOZÍceúÛK†äâi rs‰†OZÃöVπz¡†ÿHm3£bl¡©ï®¸˘ \r pnŒÓìù$ÁkFWÊ„jçeHöË‘´Ã‹–d-–Áïvº˜G†û&w¯ßGÃ&áetu9]TU\0[≤j^CÄë§π+_ã}s∑éTíÓP[VSYéŒãÈóU©µ—2Êﬂöƒêù0¿ıõnwÈœícCß.ú2Ã¶+@Ùµ\nÑ5p«´A(®©]\ZÓé=GÃ˝:x6ÔŒtÚ.®t¨b»Rµ‰≤¿∑*ˆa$ `Rùçî¶®’ãvVic—nà$R4\ròi˘ÈÑªﬁoN=5äUJ:3iÂq\Zå≠∏zg~yrçËH–ÊØZc—MÎ/∑0ˆ Èÿ—„˙,∑IÊ—Ì9«ó’ò•ÿI#F~é[4)jâA+VJ;\nÜ\0k|‰v7‘Væ~´v∑3∆U N]Ÿ””u⁄¡öñ<…óSFm9ºˆ%ã}.gM&}Â…◊‰té6{à›ôı]ùv≠ˆL≈Ø7…Ò˛Ö ≥fºΩûçûSæª˘∫DÛÃı\rO?œˆŒ<=˚>z˘ƒÓ√\ZqÈÀT≥ËBò+¶!˘ëêd°qf˝t÷≤S*‘—Lô7sÄ»#%‘‘ÇQtπù2!Ëó.¸;ìœ∏lP]ŒøÔ]Ê∑/K√˙æôÛûÆÌf®z\nË-ê *ãKyU´á€#¡OY‰+be≈,÷;.ºïpF,D\rZ∞k6ª+ÏuE’sw Û˙h¢I#Jz<·π¥\"èß Í)) 2tπ›4Úˆ7\rEoÁk≠yıe”Êo^∑W√˙3∞º…éÅ™R&ŒLz^œŒ˝ ÙÃç<Iî˘Êçú÷`;.¨ïA´\\3X—•™}Ö:…üJN:7‡äíœ»˝≈ÀÀ±ª’‰uG©Å.nó3™ûNJU	Ø.∫Ÿãv∫qÙ#V&ÂÆø•˛¶]\" ”?çÙûZ4j≈Ÿå†ìÏ¸FÛ◊?&≥ü‚ΩÆZÚUY#´å˜YèZîZ‡J44l”èI•ŸücVcXπ}~Xπ&^ÉôXÈQP”≥≥}\\\\}é?bO -Yr∆±U—ÁÙDºÎp¸ªyÊéØR˚øÕ£ºÔ©ÛÏµ¥¿‘ö6Ü◊€Î‡y ˙ùÙKá™jÙﬁf∂] ™F›8µ\Z_ï’¶ÜÏG7•œ2…2zX©b:Jªƒ∑.Né\'\'gè`u—FÂöyÃÇ⁄óÀ´ù’‰ÿt\ZœfÃ[(|è≠ÁÀ¿∫Ë ÖÍ}WïÙé6‹zú˛GŒìFyﬂ=Ì(Òï£≠15lCMŒ≈‘Ie∏Ï«*F¿P√UT\nüU”—áx•ËÃ¨‡zø-$’èMn»‘\rrevbó≠Å˚¨Ã•íÙ}Wá˙rNg9¸è[Ü^.és&˝ùK6ê⁄ÃŒÀex_°xËËÙy4tŸƒÓÖ¬Ë≤º§ˆ|h„k¡æk5i§¬…£5cï¬C%@(wSç’∑F]+ç÷k8. „~vÁ4lÁtév‚Œj<∫ÃCew—ºO∫¨‹æÚ8æ¿ëﬁ∏f- ≤cº∂≥¬öΩ«Öˆ<é±Äx]0∂Ú/7≥∆%ÿ¬î…D\ZÉ,	©¶¨r°±.™âøú˙Ïﬁg*4(œ6æ∑*4ÜmˆKõ†Œi8—ß•∆≈k=áx§Ú<§˙B‘ºtw–r7!;ﬁïú$Ù\0˜71›f⁄Èm¡g\'©Û–ÅπUTÀñÏaj5b™Œå:Ä¢jƒ©@v6Ò˙t`Ï“ËÚæ∑Ür…ÀB~6Vö$√˜rÙ-zﬁ?º≠p˘j˝7Ù›Ï˙Ñ¯~øé@î»Nùî?1„≠\05-(‘u∫æ{=û∑ÇÏ‡I\"™Añ0í©m&Ñ¡iÿÑmd[@kuÇŒù-Íí^»Û´ﬂœE©†)√ˆ‚b˙ÔYÉ}cÚù}Ggëı»¥i˘Ÿ ”õ°vG[\0Çãn*ª°Ç§4[+9°ò5ó*¬´•™ÇVwe2…+∞≤!⁄ †rÃ˙≥tÎ\"ò®Ÿ≥õÆ›–°‹>°\'tÑc6ôü—q>ãod…ß¢Úåı∆]µùx˛àß6∏ Ï≠Rµ¶%î[ﬁf—ç’œ∫(ç^í0∫∞Z≤iƒÉ.[Íì±Iúò∞ÔN¢Ì®¸´Æ„1kU2Ö¡Ùò„ñVƒÏt∞\ræ◊∆óu<”“ÂØﬁHá!≤πä¥Ç¸°“†›¡∫≥ñr\"…rÉÚDpÜ\ZK¢Äñ¢\0dhYp‚˜¡£\"¡´‘t®R’™÷å∏˙(M\Z≥Q“=rnRNö(uQH◊ü°ÚHÆ5b4∂UCœ=õrÙƒVú“à“B\re-e—R@ıBç`®ñRÌ\"åß±*†[é2opYñiQwëF¶r˙B≤hA6rÙÀ“∏M5e–w—Â˝wã°¢à	6;ûgG!(”y \Z¸èuîA¢µ6Í•âAíQYÕvõ¡≤\\ë} d´4!ZáÂj≈—äÇòâ¶’B≥œünq˙¯ªéîŒı\npŸòkOúÙºy1\n®zZ±W◊øêÀ9FÜd#nmtfbúV◊,í¬¢‡E&‘RÌ0Z¨∫∏PÌ)äPÎc}Ä âä©\Zù#2ÌUπX‹¿Ã£F}π–5r€o]º˝0Â∂ÏVºÀœ‹√Åó’ÅÂG∏à„◊K=π≠¶›–ì{£XÙ™\"À\n\\Z¢à®¢™ôm≤™HÙÔX•u≥ÈZˆ¨»Èêÿ¿‘\\ﬁ©ïm]\0¶9udråŸˆ≠3m öÏ∑û”}‰j∞a\"©‘Pè§—§sAâ∫$° ïK	b†ñ+©Pñ‹ÖBÛBZäd	ç‹ûï!l(ÜFìKZö†!î@¿N¸=;3/bÂ :Ö¸∫©∫Ä—à#®Œ[´†X€2CUfÉ¶x<R*–PH’©cT∞±ïR‚À®ê˜rX¿†√æ“UA±äZŸ•ú€Y`Æm õﬂé	[Ç,].g^≤©ÀçKå5¶ÈpÍ.\0çôÄŸy÷iP·\\-v›ÖáR í≠‚vVh:∞Ën=J,*Xd∑¬ÙÚ˜ÉëÄ.å`k:!ß5\0KKhYü±áYùzÑ…5(≠<ÕÇ2ÎŒcÖQäπ,©tKñ*ÈÄ\\ª™—J4©VIRKï±ªJ=pcà‘›E\r¨Ÿf∫†!Å	Z—˘ÌuCnnc†öñó(XÆó7§%PÖ5bEÜ.ö\"≈Ä\\(.-	QFΩ[5’ÿŸr°v6\\®\\®zA∫í™ƒ;Á±™1Æ0Ù’™íÑµòÇ≥ÍÁ—öÖlZ⁄:‹Æ•fK\nQ<\n`Ä\r\"L\0\Z\"·@DËSñt\"’¬ËÍ⁄±†•Y\n‹êÓÀ äËs˜ä™›Jìø5“^¸Æ$1@`*¨´ßìf hÇ(LDt∞n¨ôˆjéI»Jê±bﬁß\0,\0(ƒ1àM9ﬁê≈Fä®e—$0ËÄˇƒ\0-\0\0\0\0 !\"1023#4AB$DCˇ⁄\0\0\0ª‚ØÖ\\ƒˆœ1€ìl™X⁄C7›∞‡W¸uàüñß∆ßjjÍÀ- ◊éàÓ’ö*Í3›ÖÏ“˛˛’®ÙÌª MN8K],˘ñÿ«•X˚§ÕCx\\ò\"˛Zå}DÆ¢“ÎG‚;≠D≈÷õOnîfÌ’Ke(ˆ3Ìâ™∆#yÆÉBB.ıByø›&7∫’Ÿ?-Oˆ)Ø&À3æü8É$Ä¥\rSr⁄\\uˇ\0—*¨ÿ∆’¢|ˆj±¬äé&ú,nGoôs\0\0¿˚Ü9ÒOò ï˛o_-EñÏ”|Ó†¥b∫rI\'Qì_võ≈ÁÚZ±.øëÌ‘ë¬,“‘l≤∆wØ(´Óo∫eôiX¿i”ú’YŒÓÕ/ñ⁄™ÕÆ÷Ù◊k≥Ù›⁄|ıÓ“l±≠nÌQ\" P%n‹é¿:Ü∫∆iÚucj´/:ÅÆ∞ˇ\07fõI]9K≠ÁŸn~îv“Ü√E°^”õ{ıDöj•ÃqΩ^’Á˚¶9ö<VWYsc,´ˆ]˚˚4á˘ñµ†ªó=è˝>≈´à∫”a£≈∫èﬂﬂ®?≈+UDf$ÌÚu\r≈@¿˚§À[∆à™µ,]ÇÅ+˝ó˛˝≥.⁄`*±ú≥ˆêêl™I˛:´{\Z∆ï˛ÕWˆ;±Mït¥ÚÁ8ﬁëÓ\'ùüwÉ–Ã˙TäÅ@úD„8¬ô<!C36Vëßœ‘∑á‹m„È≠≥8”ù◊Ú’ˇ\0c∑‚pΩUô¶9ÀnÁßJ~?h)0UÅ˜18ƒ{?fŸ›1Ùı“],∏qÌ÷jGeh÷¢VÑñ7ü¸›à9>†Ú≥ÏåòµÔôôôôôôü±àD+\"ffrî\'Jª-/ﬂ≠‘6J¸Ω–mq?KŸWµñ˚\nôÉffffffrôôú¶ff{ÒÖb÷Ã„ßRVÓÍ~¥®ÉÂ∏i⁄«kXon~ì≤‚îΩÈ\\ÃÃÃÃÃÃÃÃÃÂ9NSîÂ3333›âåB&ú Ó÷c≠UE√‹}∂Oz¡g’7;{—1\'Œffg) rúß) rúß) rÅ†iôôû‚ %f1∞Ï˘ó\nÎ±Ìf÷gÈ<ÔNlÓ≠faç‰fLÃÃÊpi”’\"÷\0âG*⁄πÜÚY Å†hg¥¬!^≈V`Œ¥ùkÚ~˚3Ùõ±+ß´„µ0ôôòLhL&\"ôZ‚ÿ]Ü÷~äÎ;r;j3ƒåÃL‚Å†0qÆ’V∏kâ¨Mi…◊œ“o´ *¯Äd¸∂a0ô˘óAS1ÃyX∆ŸÄgLÔÕ∂ƒ¥éıQ yX\ZÄ¿f{Hà›7v.–MY&∏ ÿnTù/“>’/+5-Œﬁ‘√	Ñ¬euõ∏¶ì>_˛•5ró?=8Ï∑M≤“™ñÿl2ƒú¿–œiçÑ’g£A≤\'%gGµ‰|€ÿ£$ÏaÜ\"Ú6Ÿ„c4¿∂£˛™ØôwÂ˙É±≤tÄfZÉ1vòèü•òƒ\r@`=§C∂Ø= Ÿv^±fhﬂ”⁄Ø¡gbx¬a1T±∏ä◊s4@u*Cc;Cü£âR5¥Â)ô…›á˛=àÄ≈0aÜ|MH?N Ÿj2Àºà#è¸õ—_Œ„…ÜgÃ”‘øM≠œ-⁄zx<€ÆÿŒêoZ5Ñ2-C∑⁄t£zÍk 8ä`0√ñr*\"#<=:“À\Z÷Ç·~ìc˝zæ7¨C;c≠G\Z.”%Ù∫5l6ˇ\0≠(‡Ç∏Ë\r´®ŸƒßÒX;Ùl)\nÀ¬3>\"ò∞¬%júöÛ√aÕ«ËˆÎW¯ÓøâÜ1ã…S)∞§≤¥‘+z}˘pT“πjO\'A)œ+´ê∂ŒdM>z¢7ßó\0.òí[r3pu0;ÑC„qæWËˆ∑˙ı˛&aü‡ÿD|3Ω6iızÿañi≥Œ“y±*\n∂⁄÷ë∂ü˚1`€3î—){MºSs∂≥›®)Ä¿{å7X}÷ˇ\0Y?´¸°ç?’ÚTv /b±Ie4jh\Zó>iã]a{`ŸNP\0øl≈†ÆŒ≠†ˆô´Â÷1LÏ\"70ü¸[Y˝d¸v™cAaw3D°Í©∞≈∞¨ªMF¶jt–kP°,nÆ§‘à7’ˇ\0b\0]ÄZc∆¢Ê˝ÜjÅÍ+r™bòëoùÜ~è;7ıìÒ⁄øƒ∆ÜÄˆ\",ıZœ“§Ù€\Z⁄Ò≤ÿDªGF¶_•≥N⁄ø⁄¶\rı\\à™£ksT]Å‚˙ÄF£∞ÀQö\nëVÀ\Z“√L¬#	ôò2ƒ/”È€VÂßˇ\0öø«e¸Lh”N™”X Æ-1mÃÂ4ª“Út:o•Mf¥£Æµñ+Sﬂn£”ÎºYMîiô -keY…wi¨Í6ÃÃDk%å¥¶«Ã\"ò ‹∆œh&∂ª\nﬂ‘∆ÀÊä˛64iJÖMCó∑eπxiuU<¯Äàª_ß„}Ÿ3“â5ù≥:°Öæù]í⁄/¢R¢=°¥†ˆ<’\0bbQàœÌsù8›¢ò¶ÿfxIåg0Sjèµ~`˘Ÿ°ÑûõDlaö={,SÉG¨0≥”jy]ißØU´seZãD¶—bò£ ⁄”¥TX#—ßygß)óSm1å∏É∞Ï(Ññ&1\'Iÿ\"ò ‹∆ñxñ4QΩ-≈ÿq∫/ŒÕ?ÍÊtne?*ÃööoK¢Ÿ2\Zp…÷–’[YöS¸ÿÅbWò®oˆ2f6@’zz∏º∞J™/9·63›Ùù™bò ›•„⁄=ƒlv‘|≈¸∂iÚ⁄øÎ¡πî)f÷øÚÉF≥îlâ[Ycj4‚‡˛êsß“\nQâeâ\\G6ˇ\05Z’“ä5	}sW§MJ≥:æÊ/ù/fbò¶Õbày4+Å«âÿÌ˘VøÁfò‰⁄œÍ¡øÃ¸QéPM-å\rL∂D‘≤«dû  ¿ƒOP´´G§rËY}u∆ı:öıtŸ=GFuKÈ⁄V”TÑe∆\'©iı÷€ôWñ∆(”µ≈¬(YÃ\0åLUipÛ∂™æùëã0„`˘Ÿ¶2˙ﬂÎ¡ø˙≥Q¯A(˝πj≠”j∫äjÃ‚räÿö›oJ6\\Ím&¢˙ñùJÍGM„{‘Ù›\'Së”ëò`ä’]BÀ\Z∆0qä@Ä¡Õ.6◊S…H⁄œrÉƒh,◊qzª À1Ù€Vÿ7TÇ€,/4öíÑ\0—∂±˙U‰≥fcñõ§î«bÌ[ö€Oj›Z,FFÆ¢¶“€ù¥ÑçAâC<ÊµÏLÃ`Ç\rå≤é&æµÆÿ¶|¸aô‚˙ÑÂGbA<ù. Çë´$ÿ6Ù€9V~g©SôRΩÆá•¶ﬂGwJﬂÇ&•q&©5:{4Õ‘öV=rï“ÃÏ”;`1`Ç\råhˇ\0îmAóY»lﬁVìîÜ ·¸;\r∏p\"WÊê304Û‰Í?P€”õé†¸Á‘øUÛΩï¸Õ%ù]?Vº⁄3[¯=Ud‘˙v≥¢/`/\r333∏Ç61•ü1åhfb¥ßƒ«ïÚ1ø(!ó<“{õ\"çÑ≥ŒêmCqπæ}MmW‘Ç˙zÚv†ˇ\07¡ﬂ“éRÍ.”ﬂQ&õ÷y∆ûˆF∫öıK≠•í¿g)ôôùì‡AÌ-ÿ√ÑL [0lÛM˙µ<zª\'Q˚µ,µ;xq:q∑)[u)œåsVN/ëe´∆›≥=Ûô-˘# {[√çWß¬\núÃÃÌQ∆Y⁄a£á]öP¯Ø‘Sµ6V]Ÿ¿˛ZèÏ%wÆåçÅÎ33_Vw‘c´∂g§V^f<¥ïJı.,‡ev7iÎ’ËzN»≠aAZ¡leü¶gLŒõBÜòÚáƒi[qm}yQ^f°˘&≥˜”ë’(yZ1c°≥ß}ÉãƒMVò°3Sì∂\"iÄ*Æœ\r}Jˇ\0–∂kˇ\0 º“·´ÙÚêR=ÑÆòë`ﬂ;˝π3®”ú§‰g√Ò>	3ô2‹‚	™∆ŸöuvmMÅ,ÿLu*9]ÉÄ∑ËπÀ´±∫Õë (Ëçåy¶iÍu‘zh ÎrÕ¢º±«Òƒ≤¿Jã5t°G¶ÿ;[ÏPpWfïåÕWG«J	~Nû%AA~sW˘à Û+Kk‰15∫cu:.®´®LˆÃœQ[ÉÈl6Uh?+¯^-s_G∑KÀ≠û5ãí∆∏ÒaÍ/‘V±é[µæ¬¯+≥	ß,≠©AePú”àΩZ=î¬Köü÷ ö\Z∫∫ç¨¨4√!Ïœç≠æ™Á^ß€1¢∞∂ë•u∫ À”*Ô±˘¨Ãœ{}öèÅˇ\0´l∫‘(‚VvÆ≤—tÛ∞ñy”A=&Æ4ÓFcSXv™◊KÄÍ oµ\n>TœÉå\r;OU´.T€¸Óiü±Q¡^SÑqˇ\0±l38â¬=Ö¶õÛÇ<”4ıõmE\n≥‘ΩAïË÷ﬁçßπoÆ»≤˝nû≥g©mˆ[µ‡ò∫w#í◊K ≈e≤|πÕGÌ˚&Êbc∑‡÷–Fä¸%√íò£&fTÿ{0,ÄÕ?óûçF˙Ø‹¶z?ÈôÛÍ~†n}≥*•Ï’W[1s±üùGÒ◊b8ñ˛›åÕ3ˆi8ävqçáXæ‰R6Zymô[{∫≠Mb™∂ı?Ovzt\Zó:zFûë=gU¡-_tÆ∑µí∫™éÂßñ”3πïd“)ßWìnEª˜¯ÓÃA“ÿàÜD¨™≥◊ö˘úhX√≤≤∫Ÿ‚≤◊=>Æ¶¢jo]=˝kyÈµ®Æ|ÕMÀß™À\r÷ÒÊ´R©6∞ ±«∑O«îTŸ©k‚ùè}ß€ÿL‚L\n1G\'¥Âîƒ;0î˚Ê°@≤ë\rÑƒÚtUttÛ÷Û”ûÖùæ\'´j˙˜%G¯È«fü=nÃÕ3bˆF-“Jã9h =Ê[Ò±3…Å1±ÜR8©ôà`0¡ÌwL≠ ™€1∑§Q÷‘Fó“∑’ˇ\0∆≥ñóNöjß™ÍMu,…%pjS33µgZ1d31Ï)XÆ_g>wH;å≥Êy1kò‹âåõ=∞Ï°¢òJà\rm\\êæ!∞Œd∑#ìK££•û©Æz¨ÙÔRv¥úm}´MZãö˚DåóôöíM¶\"5å)≠⁄aöØ»oßP÷¸„‰∆+ÿ+4È>\r J´ß\'•\râ:ÌÿƒhßfYzzöFe{h+®Uß‘µFùB[=jñ[˝6¶ªW∑¨j∫Ø»pˆé6Ìùù9÷(Æ≤\\ïÜ®…Øu¸ªò¯Ÿ∫|˘‘\'_¡æ“I0ô«ÇÃV¡FÄ√Ab4‘“«™∂µõÃV*i’£ä’œV÷t*>Í†ﬂQí˚(ge°PYaË3±1åˇ\07U«a›ÃÜi◊ïåyªFÄp\n”0à¬V›@⁄zïã=ö}KR[UZÈµ7µˆ”ÓÿLÌf:x…M8ü?¸‚fffª†…‹Ïaá‰vòbˆ+NV±ÃNƒL`≥3\0s€H-o™9\r∏µüúÃÃûèSåŒv11√l¬{G∆«cc¶VúÏ∞Úx3£dÈ†\'¢≥HÜÃ-ñ;ïhßb6#0ˆSÏK¨6>ŸÉ1jú¬ …h\Zfgj2N∆≈N√∆ ÌÈ;\Z®‡ÑT£≠Zì®≥ÃaÜ0‚¶?çÏD¯ÑfŸWëıÈQ∏˘D\r3*l;xpw†Åo¡ÌJ˙}¶c∞ﬂâ’¨+j√eñ5á«aöu\rc7\"aå\'‚Q‚∂¯ûÚ≥KÓª^¨√áú$<\"Ò$„l¿e«-ôôòÑáø≈πÉußß⁄aÿÏ €ŒÊiƒ=¶T8Pw1ÑN\\’†hÿÿx{∏≥€¶6ÆÃÂfffcVl™Ω´G¥†J;IÑ¬v0A∑…Œ«g∞¿2÷˛Ge≠⁄tOµPúl∆U‡hÿÑEwIîf∂±-—Nãﬁ/Mcπzíª,+•K¯Ï0òv0A∫\'#ÀO±öeÕáÁ≥ÊQKu:>Ô·\0Í1\Z€fÅqCF\n<VÄ¿vƒ\"-éì´Œr≠îÈUß—´F—4:Krh∑´\Z-6ò4wAÈ‡@∫j–‹«∞ù≥	Ñ¬a;\r≥\'¶ê∆à\rtO&t_ÅJîı*V:ó\né∆£ÿf2÷¯cå±[ZÅ¶wƒƒ\0àn¥¡dÍáùEùT…¥)ÍŸÉìŸòL30òLÃ\'aŸO∂g\'e≠ùÌ¨ÛÕ5∑‘0Ñì±ü&œoiöP\r¨rvƒeãê|©\rNS=ÿ€˛∑ÃÃ&ff3	ôÔ≠yµØ»Ì◊	)∂√YÛ⁄fîßkM?∂ìæ3:lVù)Í∏¨BﬁU‡h\Zrú¶fffff}”33330òL&fgº	‚™˚⁄ù¶V\niªLom}Œ*Ÿ^°Ú]¶óÚ\"2¬≥$Ad\r9NSîÂ9LÃ˘ÃÂ9NS30ôôü≤ü¬;4…Œ÷bÕÿ`kxÚ;Òc:5KG+Ó1≤{”¯†√å!ºó\'\rŒrúß) rúß) rôôúæ»*’{+hÌ3J≠‘\'\'°d„RøQ5÷2ô§ÿaÌ«1‹∆Å¸¶\nôèO¯¡,&g¸gÔ%l”êØæ÷,{\0,Fô˘ ¶∫çÔ¿ñn√*\0Qÿ`Ún∆N‡:-ä+≠,g¬ªªœˇ\0ñ„Ï≠LfkHÃX˝É∑≤\nóâ5≥PÔYÆ>Ó√µôZ˚”©{≠nV-N¢ÍV¨oxIö¡Ñ\"Ÿün„ºN´Lìˆçk[ıï≠v‹Õ*ÜrI=ÜV2˜c©ÿµXÚäU#^ùŸŒÊQ„Laác\0˚b8Û˜Ã1xç?iöO≤”c)Jíu’≠vî~£ÿaãè¶ác\0Ã«g˚ﬂÚáÔòä]Æl∑iöt~á≠˙¸!vn≈t∞Óv|äL0¿9v®˚	ˆÄ&tﬂ¥Õ*ì	…›Ï\"è¿Qg$#∫ÃqÏ;[åL˘ cµ†Ô1~X`ˆÁ`ÿô|xÌ1T.ö`òi‡‹ÍFkù∂AÕÓnVv£\'QûßaòÛ®?»~]\\EÓ[º¡ÒoÂˆ·?ˇƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0@Pp`êˇ⁄\0?Üqc|Ó2Ê¨¯eˇƒ\0\0\0\0\0\0\0\0\0\0\0\0@\00 P!`êˇ⁄\0?`tΩ√√\ZiAõÌ†Äñ–≈¥4∆¶ÑÂ@ÀÇÉ4›ÀúÙ◊–¬ı‚G‡Øˇƒ\05\0\0\0\0\0! 1AQ\"a02q@BRÅë#r°±3bÇíPCˇ⁄\0\0\0?mÂchßKˇ\0µÖîoûi÷ÔÍ·ÓüÔyÆ5(Y≤ç ∂ùc;#È\n¥h‘£geFŒºÂã…¬‘g“¡¸›c˚rÈ-\Z™kÛd£ΩB´øü&·Óü\ZMÿæA©P¡Öü›÷Ω€û —˙G•p›Üa:dÅ™ó’˚5T–i}î}7®•Æ”˘9<H£Jùºˇ\0k«∫∫ƒ˙YÚ∞6ñcA}¨}`\'xÄÏ’e˚s∂Q∫sl∫è’ñ«ˆ‰≈I…D\Z≈y7∑›ZõC\rT£FÉ%§}%z≠7‡)5*ƒˆŒ‘S]i““°ù,”5èÌø≤“	˛≤x¢8Xø~Írb&\Z\r2ªˆõ£eg¶ÓÊ˚+ùêæßÃ˚)qœc˚oç•IæJ\r`çîyÏç´y?(’3z—?ﬂ)≈ÙõºG- ¬¡ÖÉ%üsp•Yâók wøëc˚n◊›AZ‰6ìQ¢.¯∏Ï)u4\Z¨,£?¥ÿÂ?ﬂ/2\nµØ\rU¸qî˜ ◊⁄—ü ßKxL˜O˜Ú,}Æ¬ÍJì|QG¿Z˘T·Ÿûù˚‹›™≠=Úan•a#¥˛\'sòˆuï’’hv·KçÕ˜Oû|ã›ò ”Æß!8£ï\'o;ER´T@–Í©Lì|\0ááÎäπ2µî·ﬂ3˘≈ph›Ÿôtz∏»=”Áú¯ﬁcÅ ≥ÅÑ\\rAl_6æ{I“Sé”öÿ{\"˘Üç–≥≥—ø9Bur√BÜıZO\nI%X”ú†h¢gÀØƒ<⁄éí&\r„;≤MßCBs,˙XMˆ~˘\\¸24Dˇ\0CZ$ïıZˇ\0[∏ôñ˘/n.∑}+éFRìï†:w>M~.÷>è\"õÑNÄnPeó›Ÿõ˚≤\0*¥ﬂ»ìÒá‚3¬≈h>Q\rXtoŸ¡vG:HÅD{gìÂ˙ê8â%VQyt\rª™™¯)h”Tﬂ\nÒ´ìN¯k‰3åY6áSŒiÀ\"˛%W©@;_gM ∆Ì”ï:_bgÂ¯ÎcÖ£m €FwYò˘<Å∆,Ä<ÿä™Îò9Êçu*rYsY»\\ÛÅ±˘Û1@1 .qì}åèó»ı/[?7\0w>gnV2	˙Çìp—ã±>çAñŒïﬁ]k3≥U~√ã¨‹\Z◊ü:√à¶r˘Üç◊E*˜æHêõÑPqë± >ÍO§jPhÙ\rö;\\±\Z?UDÔÚœßÑ\\Íì{x«ÁX{e¬⁄îÏ}o\Z\rïM8S˛◊⁄ä#ÂÄ8◊,ï`gß˚π‹bÀj∆ˆ(xu¥›‹)9	üüO:∆¥ÆF∫–‡a›~èKb;õÁ˝÷∑:õÍùÔÂb\"k lÈÀA4Xπæ“∫í≤µf°ïw9≠>†·êëFçOî–iwHò’û”^¡KŒIﬂ˙Ô¶YÕ·ñ…@∂ÖapåÖ”-¶Kaä^Nç\ZïÇ å˛’®\"eô≠Ñq{mÈ?.ÂPao“<ø‘0—¸¨Èfoˆ«x¶˛T‹pÓáHqéj¬%CÑ\'@úKgßÒí’†jÀã…¬—¸®h¬¡†∫döŸ£vU@)¬è¥è∞RL‰√ÁôıcΩ∫Íáë\n/îb,ﬂ˝°i≠\"P‰ââ¨Å∞ÂVÉa}ùb©√æS∞¬dØœO´sòòè>∏ÔmwÚg(o*ã©∏\\±j≈[ÿ˚OI–rù\'|çù%>4úÖ÷ƒ∑ÜÓSZzZ\03ıP¿Û‚>{€¶æqµwŸC^&ˇ\0°ÀIoe‚?ÏﬁPwuh\r+îòâvâ%slÿ,N2S	&©√æaàÉ“.≈9ÁÕp€˙oÊÜÚõÉA≠≈¶•∑¡®RﬁóÆ°NP32—ñ…∆*’\Z\r›¬√eÆÔ‹ﬁ◊pS‰EtÕeá®π™møfÖ.˚<»Jq¥áW”¬&üãé∫‰*àÿ/Ò·<d/Pj”™≈f·…íV©xÈ€ïâµËSV+·C∆F9ŒÜ4ôAç£É+§…Á)¬(5<+?“`ÇÔ7ƒy¬›π(2Ã`h¸ßú_6óΩÌ;o‹ß|9ï˙ñ\n5ﬂ¡æQy:˚¶∏ÓÜ√&Váã˛;„±]L0Ö•ß£ç p√]NŸõzFFæﬁå5ç ¿ﬁõ?§+:TÊb™n\"≥7Ω≥®G>&òhmùÚ‡¥ÍoÙ•¶ná	“ıB¬ÕkL\0ΩR©Ø∆£∫≠ã?\nñ-_‡o·uYÄøIÎ≠ø{¨»”väî‡b—¸Ï∏ÕÕ@˝~å’N›ëLÓs:[ºÆö;ÖUB∞ù‘ës|òpƒ‘_c¯VA‚ BMü‘º;:6~Á\'˙„ÛJú≠9Ñ¢N≥L¿Ä\Zjã\rØ˛îè»]/Øu.áBó;Æ(™§d %«`±5bb∆÷6X->]2⁄WB)ÂÛÏ∏FR8Ã*~—ñ˝ lÈø®p±Yï¢ú°õ®®ºHòé.h∫ﬁÇı”h\n≥ı|C‘§Qb≈≥ıQí⁄Mbôjp0T∏†=œ7–.ßJ†æo\"¯ &)û…›¢ˆ÷¬j\n˝Aáæ≈KT(ø=“óJ≥tÃ∂ÏNw@Ÿ€™*ÈtÏWåœI◊#¡-1|4S\\˛∑Îá`•◊nUìäwAÓù\'M3≤ï÷ú˚J	£w(\r\Z4oΩ*os∏E«SpÜô_©~√Öâ∆Jƒ’?ïÜ„bˇ\0≤¬};^ LÇ.=6d˙ä{ldoøùU-Ùõ£b°¡·¥\r3öËÌ/≈h%˚54ì2—~´oÏ,S≈õ´LG\'˙ùoƒORÂ∑3≤û-:›∞\Z!\'M>\r¯≤ùLâÀZàö**¡¥„`§´#Øéo˚,OÈ≥Â``¬ﬂÌZcß+æã M¯mÑéV6É¬⁄\"µ;î¯2\'·=—$D\0˜»)∏≤}At÷”û/◊“Îÿ{‹-[=ì]Íª\\)3L∂åZùy]‚‚4;.ûóïN\Z|Oi]\"…¨—@A¨Í\'‘QÌ)]r1¸Ö	Ã‰#sHÂ8prZ(¢åìπXmÑè´p±Ÿƒ\n¡åñç:Bk∆Ñi∆Iå-ä¨toˆá∫}f∫ﬂhŸ’¶¸VáNù—`la–_‚∑}}Ô8t9˛NJjé*µL›M7Æä;Ö]/ÜÑÊÉâ‹˘\'Jw[~n”1GQ9Ì3/ƒÍ54L_1‚D¨0eK·÷Émîîﬁ\r/,uZuT®€Ω÷n#V°Eß˘\'–\0Ììt‡yDp´q+\r®ˇ\0≤ƒÕˇ\0k Ï–ÉthŸ@‹y∫™ÅêﬂHy7‘´3⁄˚2Ùﬂ\"ÄW	¬œÊı;úçˆQv˙J≈be08B˙Z5\'eÉ˛;æ≥™ìWÂ,;Ëã∆é◊›…O5È^è≤uÿ’ãeâ¿Z;~\ZÉ¨ÁÌD¡i¯;\Z–Jƒ—≠Ì1}ô‚óbµß\r›p8	átåçï5∫Z};.πZ˚ØÒ∑Òs“pÌ8Îó≠≤ö\Z!°<∑›5¿hjãéäØB◊D£q∆õ#—3±Ÿß¡:>íÜÅÕoÊ¯ùÔ!†ó©;\'[¨åÕ?¥l+|—B)t9‡*<d√=m˛P⁄ÃÖNjù±0Ú>§’<8F¢ÉqI£yVå≥†√˜94u˛!’Ÿh¥…%a≤ˇ\0“$L∞∑™v@ª§ùç‡Ã ,˙ñ0:∑	ÄÒΩFU¶-tïäföﬂâﬂã¢&FKA=≈Õ`›ç∆ »ƒjT„.˜A‚˙®Ï∫Î≠∆Î7´Q/Ëù◊Ë7	àƒu∫µ§¶ÇnÍÉ›áp>ójû∆‘aú†ßFó·˙Ñ\\ÎcÏ/wΩœ˜ºŸYò≥ŒLZ2c—f}Ge.2y…E/ìXT7;ﬂ‚	◊W∫√!ëÆ‰^bh›”Xóõ[äu\n<2ﬁÓBÕ∑x,=N’\ZâªîøQ¸l´¯N5”ö‘R5R”5‚©¿Û]NnUÍ»qhD&„ƒR6Q∆L7vÂ~ûøRÒM@Õÿ —±¬∆€Õ£ë{µ*œóhÅµ3˛£T\Z:Z6⁄Ç~ZfpvÌ∏8j\'05pﬂ‡¿Õg“âÇ\r{Âíªqs[æ˜3ã≠xøOCV\'-˛WÈ“Æ˘`	êFf@öß¥ò@€;˙4®—≥8G¡ó◊∂`x*◊ƒ»ï”°Ê˙YSucó˘>ÊÔ\rá©⁄û*yRJ¥äei“©—ŒHcI)è¥~˛ñß±ÜL”Œ¢Æ`œ¶˘ÉtÄF…òÙ–8(¬(∂æ˙ùSwÖfb5(Y[ù\rÓ¥vÅ∏Î~ÛÕààƒ&Ï-JÎ8ü:\r¬04Ï€ßHúÅßÊQ‰ÜΩÙi*aVåø·Ïá®ÚåY∫8\nÆ9pôhS∑tH\"‚nuµ†ì£BÌ¬¶º/Ârd\n&¸\rÙÁ =”Ä“rŸñKàm{/’8©Èj\r†hÿ_™≤ÍûúÄè*]j]ÏË.˜(a≥h^•Spo‹˘L≈!√ÊÂ;ì˘PuX[˘AçÙã§,¿.Ä–;]Åß≠ﬂ¬ô®9CèÃ/¬–I+ıI«>Ä∫Åò∂¯ô4Œ`2∏9òùƒst˚ ¬∆·n^G«:\'=€ß3ëïé±P*Pu©ÅÙçV1ÑOﬁ„’£¥¯ù}Zå√Ö9Ä≈¶ôö\"yXh(¿©\Z2hpÄt›Eò√ﬂ|ñÉ”Ò‰ÅÁÜØ‚Í) Íµo⁄´Wú‡«p$¨!çR„9§jª‰uÆ˙&¯∫^Ï?⁄ÜO\ZóØ\0ƒ∑»ÔÁ¿iOs‡lÎ$ÔtY˚(<*õ⁄…–y<∏∫s\0Ìó[¬# ë=îfxôi≈hOÌ\ne\'íÜÇ8RIAÉl’0$˘U\\ÑÕÍú4äÍ™‡•n®ãLÅ‹åÄéSΩÚáZjto¿óì¶yü^h√ìNøT_fLÉÈã›Ìñ2á¥@ç—ˇ\0Ù1¯∫ŸTáøùá¡6ŒîÆ`§EÙiR\\—˜U¥$v	Œ\r+•±ü•≈c•éﬁPk⁄_g≥Ä_ß5–Bxp#»©Ö¶#›	:Qt¥ï˙œˇ\0®Xl∆<ÿQ∂˝ï,ﬂ˜‚\"Z⁄îs+ı÷ˇ\0(˙úP¿∆∂;*∏ﬁ⁄z´t˘.*-±4Ç∞	ìıhQ%¨±].wz#m?*\Zˇ\0jú‚®¬¥]v±ˆBàÔ›!†Ò\ZÍª◊êW¸ö›A+@ÓÜ+L\\·]6s˚ë\rÜé…Œ.÷ëöD@åïÚΩeVÕ§Ú∫¡≤ã”ˇ\0m’Cè˚nøL<’F**ô¯jﬂHÂM‡ ƒaç:Jﬁ”¯G0MÉ>ÅöNÉU9aA¯¡∫ê⁄º‡≥oﬁ©Œ«tÒ?“5ŒÁMM#%*ß	M«\0k™w©«e§|otX ózè≤Bmû-◊<˝g=õ0◊UÜ{£âƒÒŸ◊í§C}Çâ)Œ3AÒ¯ÃáüNZòä¨N‘ÊÖ†%QhÊ±ubuh∞¥å#ÖZÂyùiòß√QK™˛8RrôN”€>1ÚU Ü˙óU¶!˛°6`˜r\r≈Aµÿá \';z´9∏∫Jí‡µ%P]=¸˘–rT3_´8Èñ\0$®~~‚åÀ‹M6X\rÇíg)?14Œ\0ÿd†î	Ä…OÍ«\rŸak@Ó§∏Â˚˘µÜÎ§b<ï$˘]-%KÌC{j®“]…+àÿ(‹†»å3Ÿ∞Ò9ö)∆\"J0\"9Rm:∏À=>§k¨]hH€<yz(=ï|°‚ºw√U6v˙™´éBIà§Îò`»€)¬”Eâ÷Ä:( lôáπ©R‚NWûM¯öuì?lÂ¯d4V¸Xzy(M¶.CTŸ07ﬁ™Æ*——;gm+9gÕˆ¯—∫\rà¿0Á8>sÖ~´Áˆ#·∞6w‘™ìêW‘j3Ÿ§O¡œïA+“s:–@ï\'|ê∆íâ{⁄»Z9œÔ¢≥î®œf\"msŸ¡ûõ„œ\"Ä*∫´3]=N5∫Å‡s*XÃ_Ω\ZƒÒKÉFÎHägÉÚàœ§QBÙüãıˇƒ\0(\0\0\0\0\0!1AQa qÅë°±¡—0·Òˇ⁄\0\0\0?!‰{ä,Jõq-˘Eû	d\ntF2Ä\nßâYa∆è¸o,µeDÔ›¯É<∫ÉFÔÀ.ïi‘1gjj<ì˜≈∫¿’ÖÍZxÄyMü?•˛ßoﬂ√∏Å›\nr√6˛“ÚÀ@*„,õá√.ÒÙπ¸ß[KåÿÍ¬Öºøπy\n\0Ìây+k©ò˙Y}?Ÿ¬£E∑©ß¿ï‘fëÏœ\r¥>>Eß—˛ßzÅ]@AçØ∂Söä0xMÔ¶~¶Ép79\"P[mÓ-∆.–Ò„:‡ˇ\09Óqõ≈¸§ë‘KkçÔ+¬S{)´JÃåPΩÆ[7\r\"÷uÕ	πÅè@‹MGú<7ÂËóí›z˝M´nÂ@ï8~L)s…-T§‘Ù˜–£Ä√7†∂YŒœ€ˇ\0X°ñõ∑7ïZCÿ0˘}A<O‡ßÂñΩK6S¥Q%ú±¶<oÛ|*+5{î@5pÆ|®å:¥;%@ïñFŒ\n2£N`¥„èP‰°,4¨|qˇ\0íÂÀã‚†#êıÖÀT∂%ñ˙…¿Â”™ÜªW¢[O∂*TÁ+¢!	ÍÈ‹iÙùzM”xı*T¨ºFQwÉ∫!Ê˜û¢øt\\	%!zGÌ\0á_˚îJ›£ua:je ÅWú%WÉ/:Œ5,ÀZÅ†Ì˚¯◊©U`BuäÕÚõ®º˘Oë‚\\j∂Ñ>)(C¬~†rÇãSÄI∑◊QÕ√\"‘l\r˘^/ï)&ÏÌ∑π¬6ßbDkC˘yó;‘©}∫oKÉ(%h *±ˇ\02¡°–„ ¡±:µêŒ†7[Æ—]|&%A∫Õ5÷¡‘∞ÅÂπØ0X YÁƒDõcÄ@-zÖN;{e^VÂ˘ﬁ* nﬁ†\0∏Ç«gñŒ¯7\r€x8`/@C\r‘\"˚¯Ôs†+G9†·«vœı-~í`Ñ®cÂ≤xO-ù JK/gÑ}ƒ}úø?;¯2Êÿp`P[ﬁ	∫–<¡˜9¨Tön.^„ ñÑ±0Ô˛≤q4\\ß◊\'¡ΩïP‡ÓÛQˇ\0Ákµ>`•À`Ñ?∏C˜,ç⁄ø›w[‘ørÌ’Î·SﬁPV‹ª¯\\∏¸xíyìÑ1r˛u2¿(A≤N2‘©Û\\ a\ZaΩâTù‘cÆgeíwÂr¢€çŒP9ø¸;!Ø§∂≥‹d>Ü~èÄ¶—v≈‚ó_Éˇ\0\\	A*‹h5/ˇ\0◊.\\º‘bŸ·÷@H\'/ÕÃBªÏ<2N…Nµ„ú&ÚRµyH¥\ró∂ñöΩ3Û¸|,≈ÇØπı›;√ÓÒ\0—É,ø.œÉ\\øô9’êN|õ€äﬁ≈‡eˇ\0r¿tPÖ@∫ SGûÑsa`ÅËvwÒ`*¡AÁ.∏Ï?àså≤„e¯Ç$ì¸≈ïä3≤∫ŸO0}≈.Ñ~†6≠Ù=¶†ƒù˜,ÁlC\r¶¥πYlºM ·ó,ÊUÏäPœ;å2ÀÅ¿‰3I ~Å4™≈ı˚ÉÓ)p|¡ûaKüë}ÕÅ∂√∆Bïl2≤Ÿ—¿Û6ÿ9ºS&ËrG4}„\"t\n∆˙J¸À—Â‚ßå„ÒŸ54;Ö;˛Ò47óóE\"ÛP`¢xå,û R˙˝Nb∞Åóœe…+ ÑÄ;Æ◊∏≤Â∏¿√Õøî¬±ÓIÆèØåxXGƒk˘\'ôpÍJ˝áÄu0⁄ˇ\0]¿Ÿ7.pÀÚŒTrƒ¡‹@`ñhyUˇ\0/\r¥,ECqŸÍW÷mT¸¡IÒ’TEé|MòŸ‚W“é5∑‘ZîÎ∏8òDÅn—‡:≈KK∏Øëƒ0¿Eá¸cf˛8§^*&\nõﬁ	e\'∏`áGóù¬,	§%Mí•Ÿ<ÅÈ·ÑHÓ0<¢as∞y¿æ—Õvû¡é»®ä±gUw\Z(jı: ]<Ô>à*4”·*)Œ]VîµUœÓÅ˝æ•üàPq, XÜ|-\"Úô3Xj´ó˘C‚\nåÔ;|F\rı=íœ8V©Q”ËúF8˙à¢≈∏‚SS»M¯KóTˆùå/¯©Q)√ïQŒﬂ◊å<‘à®mÍ6,t˚GÇ\r1ÉøUUÊQ‹∂«∆∞ròBß,ïz˝¡»Aƒ¨J!4_ imt!·}…f.“µÊlˇ\0å1ãﬂ1bÃË\\vºÈ∑áGÍ8π∆T€S∞<!œ¥ ◊≠xbõ©›e^\'ÍÙ\"ô-y∏@¬∂:ØÈ+…Ò‹ÄNRÎÀ°„yI†∑˙Ç ªá˚\'Ú¿´mÚö¡ÉÛA¶L:#¢¢®¸E*—_ì(ˆ~®*´<G‘·e~c±.üıJl≠Å.&Eæ’ΩBÒ[≤¨Ù¡ıì4¯6ºDT¸åJxPn<öKäeöWÙ˚õdaÒfÒ¢~¯Á}Àãél\n9w\07˝NçÊõ„∏ÂHÚ`±ÿõ∏Á„Å`€-Jø9i…etˇ\0?y^r*é\"¿√µºáƒ\"∆I7ÉÇ0Åmúµ”h≈AäÌp]˙K±∫Ì˚Ñ>¨,≈À¿/sé^.\Z¿yO@8à7H{Pä\rH˜∞:`7æ˜;–ÄáÉç⁄ÆºXÎó¿î›¡Ñ”©£Ò\ZˆzS\\J	jpÉ€ﬂÊ!i{ïd›e‹âB.4Ü.SÃ∂C4	‘q«∏ËX*áP¿Æ©®3P›e@G∫]RO4p[”¯è`≠ÜÅ†‡Ç∫,iqÈ`3Lm›™\'+p&%&–”ı*~ﬂ2R§¥U?^N⁄ú8∏n∆„g°;€	|®p-xï\0ÚB•\n†F£eÃ5]T=CÇ‡+æa⁄¢I¨ï8÷qI£˝ß·Aá≠‡Kä[µÆ_âx˙KN9∆/¡h,®ÚÛ·–ô≈•∆˛ÿ“›èP˛,≥[Õ\Z≤ó¨Ï”¡ëmØq‡OÒ7·u?1qhÇÏ¸Ô˚b¥/+4ötïÅAÀ8¬‹QFM€_á¡ÒRXı\\Ò/ˇ\0:=9Œ<\\˛lésÃê˚AË§-‹˜≤=Gkâ¸?P“àèH÷ﬁÚ‹¬u\rÜ˙îCÊ8ä-Bˇ\0‡„.\'\"ìpã˝!.\\ºπ.ø‘O∞˙_sQ5†‡zñl„,°á4˚bä§ËÖ¿zóóπÿÉqqßE•B„Pú2<Ø$÷t8q;ò\0Ø<Ï¯\"m]MÂEÊ_lCë®NÑ∏ŸL˜Më\'∏päÇı˙ä	ˇ\0˜è√Ñ–$\r;‘%Â≥\'‡ äÛ∫~2Ose`q|F€îQ‘Üêèg ∆‘‰n>¯–[§g√éÁ·ò•zÒÖåsE¬\Zî† ·BÿfÊÖ¨ñTÒWH≠ö—Wf•BiÁâzæ>…ÆÂÕÑ≠5ë‚y‘öA\'‹πÔ\"UEˇ\0å8Ò-¸t6Y@◊ÃY=¸ôjDúYqãG≠ KîÀ˙ïŒ≥˘#◊éº<g\08\"Ø2πœ/(◊÷Ω¿•a=,À”Ã0:øSÔ±^ÁØ∂à›áÜ1·⁄6îm¸!qÂ%\'íß	¸Hï¥Wmx@´!¸B:å0«ÇT.9ˇ\0;ó¿Ω„À(®qcΩM(`A6Œ≤W*1çÎxÅú0ŒÑ.Z·©ÙÎŒ≥‹i+ŸúøŸåk¨·¬“—WP\"w¶}%è®®≤Ü£~pú•_08iıD—\nF/ÇoÁ,E¸˘˝J÷s˛IYÏù-‘8ó,r(F	∞90Ze{õhyV80·@ï´TÒê∆=NÙ\"h\r˘D\"w\0˝	¢ˇ\0IÃ¸–ˇ\0Ühæ∑6f>ÁÜLJYº@R·|fƒoá0fr‘Æˇ\0≤Qgî∞ÕÈ·Pp‡l˜nW?\0J–õGh∏¸¬¢7Lò ·ªE˙N8Gã⁄¶∂!xyaà™rÀ.∂ˇ\0˘Kï!Üü¥fã{˘\'!!eVe˘q7<%Äπöw‡-j“–{É¢ÁÍrU‚„\0qRÚJ–SztDT≥„∏´øørÜW4g£ê√Ö¡UÌ:åX C2«,)≤YG«ÂàÓÙáPN-ÕA´å‹KÆèiÑ⁄Õäo¢ˇ\0ºr√:SàT&¯ΩA«ÛZπu° s).ŸQÁ%7iq˚Í\'–òÂÊhˇ\0‚Sçƒû%…Ùõ´ÏõŒNN£ÃM\ZÚR\rûcáçˆó®ßß¥ë∑Wør·_£Ço*ÚN#\"<≈êñ}s£≠∆…©èLò.xD\r?X!æ\"êv0TÙÕÎvÉ°:◊9Ì∞∞:ÑèME≥i)p<∞Ê·±†„ÔX!ıß∏/ıxóùzóD◊Z{EW]€¸B‰Y∂m‚{áÎ*ÄC¶_2.9eQÊ4Õ*lD√./d´‘w\"j7kçe™˝wí0nÒEÎD¡äÓzˆ√ÁÕ[@@è‰aB\n¸√â¬‘ˇ\0‚Éy©¶≠Û•¬\Z4t|ƒb>_skm*«¿}ŒuÇáAX¢õ0qE‚ñÂ˚è2…p‘99î∆Ä_0≠.C_-cöπŒSln>\"*√k¡Úˇ\0Î∞µÓQtßÃpîù\rAJ6UÕá⁄R3¬˘˙&¶£„ü¥∞Ê82„	çç°™êg@!ô∆w!ñ›∑b8$Ó§ÅÓ,,XYt‹q≈2ûY\\±	©Ø§˙åÇ\0∑ (a©!XKÈñürµ?˙Ímm∆‰“∏~æj£æ/`+H§ÿ·˜∑•A—çC§”ÏúÑxΩÓ]¥¥…lcÙJV‹ \r/ÒÎ®5‘¶XÏb¢É¨<ÑÑﬁßò„ƒ˙ª±˝e®\rxé5g\r˜(›≥p¬ºæà˘£(»†¯ä\\”r¶ÈñÚ˙Ö<^ÿ«FöFoï≈œ¥ﬂËî’¨{èÄ∫˚¬*µƒyGD˙—¯bõS·9©XQ:~Ê—yÖ,óèqcM‚^F{®sáD~åVziI<èr©Ó´îÆöˆˆãêkº,†q∏Û%p˛Ü\Zn	_´oï–òn*\'¨£%Ï‰∆O&âh7p«P∞ÕJùòπxãË˜˘¸Dø*ó.±Ì–~c˙€è¬/rÒ‰√ﬁìÑΩ£E◊-svµÈöZ\\aƒ†X@)QGçc®\"ˇ\0ÛÀ¿È£;!lZã4áU∆≈Tﬁ—ÿ˚ñ%Yn|©zÂ°pÉ§µlrÇA@ü–‘Iek¡6ât?»√á%·G\nJÏB\"˘DN…[ú[gyEˇ\07Êm∏Aπ‡r?0˙c*/8‚jãäpõüúoÃ|“áîÎbΩeSò8n\\FıPXxpiå‘iï‘®8hb€\\@ÁJb?/˙¡#‚]•ñr¥èSøU‹∏§~	`Ú\"ZRÂG¸!£]À‚\r„Ñp˝oÌ+¬\'·\r”Q:M†MÎ=†(o‘H»z5èî´≥≈˝ƒN4V®Û≤wpÁÂ®ë&Ç(√\Z¬€A‘a–l{óqK/.—`«,∞§Èãféé_¸èBÉ„ä{ßÛEÄ∞{ûè0ÓãFí\nuÆéî\r¯îËá“ÂﬂÖã∫öπ¸ùÕle∆M„B›T–≠ßsb¬\nÂ^øPYHVÒ†éc ﬁb2+#°ÿWÙ`\n>}È4!fËÉÉo≈äñ8`ÁDsª}E‡˙´#ú\r◊âÂƒ}À¬´∑\rªpÖÖ¡‰J›„kƒ?‘≈æ`qÊ·\r»GL@‡.m‚›é·IIxÄ(æû\"ı~·ÑÕÇ@o>Áx}∞cıã¡wÚqiƒj^ß\"0◊A(us.4ÏÔ⁄æ\\Û*[¢˝∑˜Â∞x~æiù™+º+HÁ¸ˇ\0Èﬁ‚TgyG∫)πh/,Ÿ,Ç∂„á‹]0.S˜«y∏‡ÏÓ8Ys~&„~c—Ã∑Ä>ÊÊÿ†“°⁄m\0ûiR◊ñ‡‘ÓÔ÷#Ω¡∑æ*p‘QF+∂ÇΩ≠@bÇåtB£Ø\'bπﬁO\'âp2äÄ&ØâO¥rÒ÷.ñü¢ùZˇ\0‘A≈Åg#˝NVÛ4Wë\Zo√Ä;‹±PßÑnS^zÉ?ŸÙûÃ°÷ç∞ä‡π®¨(EØV€ëÜ¶ñp¬6rS‘ vj‡‡V\nŸ¥\njq/≈ÿ\\™û6E;Ë9âYt§ö\"∆(Éê‡@:¸	aÔŸ√Ö™“1J¥\\ŒÑ˙óéã_3nÇ&én»ƒê 1Ê{WF\rò_m∏AÒq]¨”π¨@Õ[è$/M‡†õ§Æ_,:‹¸=“Ω0j¡8nmÎˇ\0sõPp8\'(~ŸW6\rYz\nrÏï6ìáƒf‚≈N^X∆xaX¯‹Mﬁ£∫◊‰ÒÖ\\∏ÜÎ:ä;t.q™@˙Fw¸D˜r«ÛóR≈49|Õºﬂ‚)k7;|ev[’˛S∆\r£òkèlYÌ.*ëWIN√Àˇ\0(ú,ãoGù ó.,fÍ´Ó,Vi,c5á¸•¶4¡õã60∆8TùQ…ÓWâSX:û®J5¢_S\\k”B10:úF˝JéÇX[}oÌÅdÏ‹]∆ªp¿‘ı…=≤í‘÷ˇ\0¬lÏ?}∏c\0U‘Ÿ©qe∆÷¥©ÿ\0◊R∫[˙¡⁄\ZŒ2ñeb≈^\0·5nXÎ/m,to\r–\\RŒN‹ú¡cw&/âH∞®Ùˇ\0W_~òKwi ·ï@˙%ù∑rrI˜.%%æÿK\rÂ\0¥Ç£L(«wÀQÀ≈∑u}«’;GjÜƒ€~aÜ1bé÷voÇD¿° —*î˝„K¡*á-aÊhãçb“Ô~Üy÷SJ€‘+¨ﬂ®Úö®Y∏·∂≈˚§\r}∏á∏Ëh˝ÕÚ˝dπ£f”MAó.h›F\0©CÎjF£À¬û7‹BƒTøÅ¸KU÷`®rxsRæ¶≤≈√Æ9V‰◊r∞Â1Ëõ⁄CÀ>©c\"8ÌVˇ\0¬¥‚◊Q=(r„Û5a¨[ÕÎ>∆µºÔÒ±5ˆfùπµy¢:{e±6üq}¸˘Cú	uq ¢º,g˘1\n0ﬂ‡ù˚aﬂ•\nï]aÙ√„>∑«¡ß 7[y√≈î&âz¥r√ÜWPj}’∆MÀÒ»À∏ç:§Hò˝<ˆK†÷\r@ΩSßàU∂ÊÏKURv0_‰\\uÎ€Êi%≠Ω•ìvŒı‘∏s˝#¸ É∆Ê•X∫ã\n‡0˝IW¡Ìõ[∫#ÁYKÄ%µ:>\rÀú¨QbŒ¨åTLÜ«ìqïÁñ	7Sp^∑à¥ª	ı˝≠-K\"\nÈi\'¶æÎÃº\\¢>Xdúx˜‚;[_©pU!är«)DßA7∞Í–ÏW˘EúøCˇ\0∏∞|\"º@_ß¿6J≈‡±E¡ï«-yM‡·\"c\0<6À\nÓ7!?FrY«ä˜„·pçÈÍ6Å<„‘†Ç∂@‡+‘%ﬂ∫iœ˜ÀlÀä5ºl1r„µ3æ r˘¯¢î¯≈G;∂Z4”‘g ?Sπ_It\Z•¸fÒ	¶\'êöÑΩ›n\\ Ãõ¡ƒò=]v>◊É‡<∆\\a!r–&ÅXUHxÊª~›≥[ºÀ5C Ñ≥~·)Á®ó^2±E(ÌÇÜﬁ!øßŒ£Æwëè\\ÉjèµÀA\"–‘⁄≥Ü˙îãLõW-¬7ÉpüdŸU2¢r•PFä+]g·ëÄã:°›O•8.\\∞`Íëÿ∫e«òG\Zà¨Ò˚a®·ã¿C_“xÏç0Ú0‡S√D8:·πRçèòë%F(-Êï.K%æ®	wÄn%∆ë¶£™(•8t°I≈››mG¨µ˝Ü˙Ü…∑t ¿™Rrñ∂ﬂîGú˘—≥Eˇ\0≥+(¢≈∞‡µ**1T2Ò~ˆ%UÊ1åcö µIÎ_ëY*„<DpÔ‹jû⁄„~%Ñv’8i÷4ï.U∏9I≤ÕU ÷€Ùyè∫Ím,N_√6∂±ã‡≈paƒ?ÿ€∞6=«a‘_:ÕEC´ïΩ˙ÁQ1{È⁄W†•†¶Æ‚´˜rÓÛf„ÉOBû\'®[∞ •-”kÓPÏ’øë˜/Ñ·÷\\q.‚3¿} \"j˝cé◊C¡Jı5–Ol¶Ü∫Ú˝˘ïÖã.†Çﬁë™›6ÎÑE¶%é™%ã^£ñWAñç˛ÛFœ1g;zx\'–ï6óãØù≈|·ÁÂ∂©-”œ¿ŒcÇ]\0Ò5ùà°!‡kˆCå⁄ÆO©h-D;´pÈB‹{\\◊rÕCX\"ûºÙ‹È}nkªêPz+èƒ\0A*1ÂÀ(Ï\rˇ\0¶^Hı=FR}\';Ï™öqx%”NµkãíÇ0–ºaQ2ÿJjï3;HÆ£€ò¶2 64íπl8ÅCsø8´˜»5öSÀp_π{BÖŒl-µ‹KlΩ≤±q¿Q»Å	u\r∑4µ\r^DUé\\5·Bò≥ÉÍ=+ÔKöÛ–O>97SÃ-∞4j1åpo=\"\"V˚åH«™RâiÊ2Ñf*T¨(ü–âÚÖºπÀ¿y=J@ßô∆;·‹Mb8=¨NÀ*V‚Í<Ù#µn1åp{øã2⁄zãÇÉ∫îßJ›ßò]∏ãJ ñ·ˆB>«/‘ºaá‡á‰X‹Æ*ÊåÜ‘k˛I±«jR}a√w•o74ÈÌ√~„√Pi ]∆æ∏•;U|\\Ÿ\n.Œæ1RÔ	\'¿8Œ(‚Daóˇ\0¬∏@ç~ßô~~U`˛ëí_&« Z≈@4î˘¡prW‚u@Ω∑ƒ≠)®’„Åƒ∂’ÊV:Y•<‰≥,\0^ﬁ•Â ÒÅÔèﬂ6˝œ∂2ÀÛÊXÄµàÈ>:˝£-ã/.0¬´%¯n◊úÚ¬âÒ=’Ms Â√≠ââÓ-ßÕä’ÛìÛ»€åNäÈªõ;ñD’«D˜U{èI˙‘qT◊rﬁ›È-¡Ãcü\nÚ¿8~V}%r˝G7ï :>∞≤ÒnC@M£Ilu\Z$}år“˜ïä?¨˝\'qé+¢PªB\'á&r∑“z—! \"x≠ŸÌ¶ÿ©F#*V1òÂ¶/Ã⁄?&˛≈~¶¸øbñ⁄Œ`´„¥\ZwÕ‘¢ÿx\rT†Å¨Ö≈Ó$có,5∂©~„ùAl#6pEï\róZõ≤ˇ\0ö„}Øw≠>§Sk(∞M√, $HŒ\Z}¸nYP.Xÿ~Âfó“(µrˇ\0∏qK¶Ë,#T;…mÃ õY1∏©Ìmc«\0kã‹K\\ÎÈ‰‘£ìƒÓ(\'î$@hì‹©Q¬¬&Ä` âác*T®¿‘OÉ?§ÈqÃ‚_˛7ÒX\nJÌå·∆¸ ∞YC”»¢Y}Q˛g@Jµiir˝«N©?¥H«% —ı˚üMÖD≈]0 ïÜ °˙0Jˇ\0…¯)»J©pÄ| –Ω‚i(oÓ{Q¢Nﬁ‹DX81√πßñC&ªâË¬•Dåÿ∏~g/Qåg…O_\r:`X¢ï\rXç…≥,cÑ\'597*ñ÷X√∞U	g4—(0T®∆w)2‰épyî~ò±7SÛ\0U|·)V*T¨\'ò#ØjT∫∏·«Áâq˝È‘L¨Æbâ∑QaÆèP ;¡—+◊C∑¯å-çQ^n?\"tK®∆1¬ÑèDXkÄù>·Øv?-¨\"Í.∂J˛Ò˘√IQ\"JïÅªwt∆$eJï8Öê+Qbú>Áˇ⁄\0\0\0\0\0\Z∞\nKîà©ä·@ç;Õıá§ﬂnD\rß’%m4U‚1\"›,	œè*){\0L\"§†K{œ•ÀX=¬},•KdR?îwÁC^#∏ã£˙,R.∏¢}Õ\0ªï⁄öb†6W{}¯C¥¿Ùˆ“Êû)µ∆˘uY„πFπ0$ÿ“◊]oá®îrnè\0:“ä	≤‰{RIÖ%-úãy6íã0™\nÇ2\0ñ¿`º}¨Ω¨ùD\rl≥FF\"_b(åb!wÉí^1Ùnäâ‰–À9R¡\"µc€/\n}îróÿ≥¸™‰√t8=F\nŸL!à %Ø–À[–¸À~ﬂÉîÑ`ë…ÖÖC3§ùƒZ•Ü∏¯Gõ™H•,ÆƒxdL$Sêu\nw∞>N·Îj3ÄÛ¿”@ê‘l¥d≥œÇ≤M≠é‘8NbIE	â,ß_óπ8ﬂX.ˆ˜˛\"*Ä¢DÉÕsoó\0t∑€Áäy∞y`mıí!L¢–õæ5eqhªˇ\0G„Ä\"\Z! `R(&ÍÄ,ΩT√_ôÒ<L‚Yv7∞	à∆èáMV√J“a ¸?u#ŸßOπ´]˜Y√®(ƒÌ¿˝µŒ™C»â1Ì‘˝€ßYUXi⁄NŸ$ñ±a!´‹\r â˚íªóßπd3Û‘π,];j∞´œÓ˘iŸÆÂ8„é\Z”E·ŒÈD±->ÆÒª„@\0<˜ù\"˙∞”Bp<Ùt\\1 \0}±_Ë˘êü»YW0°P»ó!p#Ç∏SaîìÀ°¬+ê;M—<4¢m–=Ω”6\\·˙†°|µ∞r‡√ÖrJà¶ŒA4„‡y\r58Á0ıOúµÆ\0µ√±óÎNÁÅm)ˆ%ˆÉWÄ¯	™ÿz‚d¸8Ãï0¸ñ<}\r=K,pä÷‘HÙµœ¡w{L1d˛—)…Uc%txà”E‘}ÛtÚ˛Œ;r¬é-›tËƒfr8˜ùK°àô|<a•SnëÖ≤[tFgè;∂a?~ÉöÙõX≤Q\rP{˘2ıH≤v9©<Úä<z:—]7≈’±ãÓîÇY U‡∂k‡ã<rr«ÊÄFº<yû1[¸‰¢ãçg_oÔ_ˇƒ\0\"\0\0\0\0\0\0\0\0\0 !01AQ@PaqÅˇ⁄\0?Br≥Hkct%ªﬁæó/£æÑ®tÿE◊{˚≈ﬂCURÀŸ∂UBèJÖ¿õ±Ë]Õlw‡ï!˘\rç±x\'\n„⁄lQÏY[ó‘;nêï-è∏≤—™—Øí∏h§T˚/¢˛	QpﬁÜÈXïÏ≠j_¡aqX,›–°óΩå$ﬂb– p˚·j’CE˙%ÎÜy++/\n:‡z6Ù5P∆≈´.>∏‘>\'\r–ÿûç\rÇƒÖjmC±}ö]\Z±ÏUˆ(|\r[°$ÜÀ—Lyº=+Ë≈◊°˝;E2äèeuƒ∆á≥Ãéj–ìoÖ∆∆$Î\'≤ùö\Z˜YLˇ\0qYj.VKE—i©I.π\\W\nt∆öÓg˙!Ò(j<Ì’M ~NπT{ÖÔB–û+ÖÀt\\\'ÜÜSÛÚ≠‡êã;Ü,7Æsbq\\6(p÷VÚ´\ZÑ˜X≤∏ñ)ù˛%eV!ïÊoÇ≤®E¯1;Ö˜ïM∆Ò{Í)>Õ¶vvÒ|tP÷u-?\n•Qr˙/üy‹—Ô. „º+æ¢csqX≤À~r—∏ÆD.¬˘LEó˙Î=ö•eeõ(ùÁÔ/üˇƒ\0 \0\0\0\0\0\0\0\01 !AQ0aqÅˇ⁄\0?;j%ëf‚◊\\ÔÏY‰bïDN≤wÃ∫¿†Ó-√Ó‚”ÇÉÒ`≤/ÜCp\0∂\n‡≈u:∑	Ï¢W±ﬂ;û@∏Ωu/@‚´ﬁAp=bù÷T©±pt_7œ\'ô\Z\"ﬂx⁄Ë∂6Å”Äæ‡Oˆ_‘aŒUˆQ.\\πx∫Ü´;Bà™¿Å‘;`u7.ŸF±‡Kó˘¬Æà∂‡ tœhìQVdß\Z*9>≈˝Fõû¬tt«…7∏lñ¬-º/5ã©‹πø¬å∞ ®∞Å‰	]ì˛M∏.≥∂.81©æ#Sm∏\\!È*S±Õ„Y©≠GÍk7w¿„“àôlÒÀ¨TeB\\c®ﬁM‚∏ä@ãX §ïG•$qVK˘\r«x%÷^Ç°≤TÛ[ÂG]`éÂE∏‚£¿ä{%ÁëﬁLﬂqhquÑ¨\'±oı/Ä˜\0=À}ûEÕıöXÑí±I◊ò`E˘<ãÚW‡n/ŸCûu‹UÔ\0¡˚(‹ª«ú;¸F£´}ï ÄC≠Dä%8Û˜ﬁû‡ΩC>p`Kîª˜2ë,º\Zö÷Ha,ó,Û+´b∆«≥ÿ‚ÑÉdHù`….:ù‰¡Û˛≈º0¬{8Ó{ä{äπY%‚∏˚*°áQ˘ªãq1UÉW\Zán;‰ÛÛàMuÑÍoü_µc‘π˛≈≠NÂ§πwπ¨ä·¡÷ƒóD‹£ÿππÁ|¸u‰a‹ª{ó‰Ø¿‹æqq…ˆ±)õähÜ|¿AÆF*u(çp\Zö¿‘°‘_ Qƒ%Ü∞~FLú\0ªe€‹s≠Cã;ÕJùNπ∫Œ¶Úøïíÿ´¯ëﬂ=‚æÒxU7*uÉ=J<îõ≈À≈>Õs7R»nS(ˆ)‰ﬂ#çŒ•À¸t`bæÚ1L?≥πrn;î 	‘∑Ó\\Ôç}ÖWë‘T¢\\ø∆¯T≤[ƒåïˆ(j*Ô„Ô‚G!D≥»´º1¡ö˝/&y&N/3ˇƒ\0\'\0\0\0\0\0!1AQaqÅë°±¡—·Ò ˇ⁄\0\0\0?yKä]À»Á±≈K¢^xó÷≠ç´æTÍP<X{äÓPà]∞6«®∆Å†¨µ€\Z\0P=Ú~ˇ\0G®=¿+3EÓ|à-¡ÔÓ-¿[¶\ZkzÚ±ÄÈet@V°KN3∏È7{[pf<k‘±¶æk˘É™“8>efﬁG¥æ<F±@⁄!!´Íx«¡L˘Ü†Nãj ÄgbŒm÷b–t\\∂/\n,≈¡‡Ä÷ÏÅu“¿ˇ\0…-\\◊(ïÕó›¿S‹ÆÎ˝ïÒù¬÷k5}¡LlÃj†ÎÃ»‘˙°≥˙î5	¬ƒ €nK=Ül3R§ÿÇÇ¢®h§ç)–v« ÖPc7ÇºEÆf\r∆∆L¬¢_q{_Õﬁ¶‹Gè_É®Ô0o™‚4ﬂ“ÂÜ`ƒ?ﬁ¶Ãƒ º™’Ø0∆∞\nVÀâÈX†—D+5®\0X’öÌÒR(k±és˜*eñ§G>\"v*ºA≥ˇ\0T5åıEü3˛Dtj¸@P#\rwì∆•Ùh@hklÆ‡@Ê†eÊ.*-æÌRÅî°AÙ¿ÁúÀú˜ÉÃQÿÅ.ÿ#≠r%pˇ\0D»–ãÄ˜ÖiñS¬±∫√Rﬁ} ;Ö·Å’√*ˆJBÄÃ∞‰ÿÜTx5Ó:‰UØlKëV·	º<ßA*:‚ÜëmV2¯AtÍ;Ã3®·à5∏Æ1bØ˝ó≠≈£r°Ã28≠ïCÇ1º“éÛÀkr¥¡Ë\n±Üç∞/≈U ˆˆˇ\0ÊÒ]‚	—L]QåÕ˝”œ7Ã⁄f¨‚ùBUñ¯ÆÂDÎae´¡≈ŸF≥ƒ—¯2Î7Üö.Íˇ\0ë∆TÎQuÇ∑J;ÄgKÚ\\1¨íÖóí4´‘IZvÜ5ê{º≈J$⁄≠¨Ùò\r˙fèåÛ\Z*Y\Z4^?π~¢JJB%+√U\0î¥UæDf0ˇ\0b’Ó,Jaä–≥]¿mN’8®f∂ˆ˜ˇ\0Q™ô\\À‚K’K¶„¯ZÓYpq*#ªhÓ\r©ƒΩC_Ú(.ê∞=7íÇ)\\ñ\Z40>_,(!u*‚ f¡6VâJ2Øs¡æJ√º%∫~#‘ÿ¥GoÇ2nƒLWi\ZU[µÛ) €aKè√.∑Ã!üÅæû=L\ZªÍàJ∂ë1\nIº§/Œ´rÜh<˜0]‰ÈÚÌæ°85®iÜ°…»q.∑Æ!zÜãX°«˜2ÀÏÏÓVE™ñä7lI}J†„ªb\\≈∏AI\"’Læ*2≈g=±oqj,≤çKÃø®€L˛Rå¢ÍoÁB„CñT‡ûyòúw\nT($2´£ÃÆ[‰jé|¨)ØPoƒ¶/ô≠~‚”d»rµ®yª{&wß«˜+Ü‚ΩµaÎ\\¢É££œ0…Œ|¿÷1{;óii\\Ï√¢?y®_/1ıò:ÿ‹ﬂP∞3â·\nß‚Z%˜ÿ´kÃAq†ÉÇa§˛¿Õ∂ø˚P3 i.Øƒíu_‰\'\0Qjär¸?pÄZüQÔ®ß4€¿x\Zu÷Âfƒ,%∂rÛX`Q7ºF.Â˙e≈Û.Ò˜‚+ß˜¸ö—<Mn7‚u˚â@6B∆Ö®Åj„À0;Ò¥ µz;|B†(F@Ì\r¨U@JB˘8ù“ùÀ\Z*)«©f ’5ãódÛÓ*’PπU‰:¬lµsu©WÉP+&·Y6‘Jîn¡√óÃŸÕEÒ·è!úêjÙ„…‘J„ ˛‚™≈üÌÍ7„G,‡u€)$•¥Ã…*ÜRøâ]^‡>˘Ä‡Âˇ\0ﬂˇ\0öò2cáƒSAíÑ\Z+˜3ˇ\0ƒµîL.ÉÄé$∫nÙ¿Î‘_J¶¢˚ÄT¬´U√ÙGplªÀÀ¯{éul˚è¿≈¢yKŸ„1_eÁ’Ãè:eéΩÀîÁ‘4h)T∆HhØ;ö`.¥r1KD(∫1heX:[îSl‘LVs2.«πnü∏—B‰bî-å›„¿è–q,‡8ò˛òT°îÓ•®PCX˚å£]f1æ|@¡Üµ‹;)xø[—CöK(ÈÓSbÅÇ!´≠≤˚ÉY∫ÖÀpÓÎ:ã_¢Û√ƒT„{/Pﬁo‘{˛e[˘ÁÃMZa÷sÓ\r˙40óä˝ ïáç\\·ÅÌŸ¢÷¨Wà«ê†’Ñ·Õ6Æ[7Pé»˘c€.µ˚åÃÒƒNs=ﬂ¶x3Z˙ã‡<≈„>•ÌÛ‹h)ŒÂCÕB–%Õê∏Ë(]ØÇ#≈E¯:ÒpQÁä‚U$uoq*6‰*€‹\0·ñŒ≥âÜÃΩõå)‘vΩC‘Ä8aj¶÷0Öä≠ª‘?P^ΩÀÃ]bÇ¸KÖb·à‚\rŒ®ªÎ‘]ÿ µ|DH>ÄÌÛ‚\"‚!TÉÇcº◊µ](MïpV\Zq*ÔÃ¨yÒ6ŒôõfÓΩ√ï¸º@˙Õ7Ã¢7≠∑Ü$\nX‚˙0 ±[¿*˛£\rÆ√hÎ’O,À˝óqrp\Z3Í%/+ôÍ|ìGl∂/òßöè§ø|é.Y√˛≤ü>&D\Z\n∑ƒÿ€â¢EÕ—õ\"—)·\0ÈóºJXY‘£ÉÍ=≠±6K≈Z‘⁄Ω≥z4À™/\ZyÖûEßY[è/éÕzw\ZT<rﬁ˚∏U6g≠≥f·9˝¡Òô€ıÛ0∏⁄\"TE\Z8≤0Ö®ß\ZÓó#‰ÔÓ\"î*⁄ÆY›´Ω≤„PÄ:ÕôîÈj⁄´(¨Kï—ü$<_òmÒÀƒÕ”‰?í=4ˆ≠ƒñÍˆr‹HºJ)+ ú-ÑÍ[h=˜/“	ˆ‡≥h\Z/‘ıı€8ôW`≠(<zåNÕΩ≤ÒQb«É\"¡<Ÿ/¨∫óãõ!;Ñ”wÇáÍî9¸,‘ø2»Ón$yT\'\'¶Í;\09O0∂äd.ﬂ3&·zÎ«0∏Õyös∆„bún™∫•7Û*CrÙ/A √$√ET ª1˘Ê5÷ı/∏Å\nŒõå∞Ïm2àAOËX\\_ÑzÃi¨·‚\ZaÕéüÚTRrµÌ‡Ä∞=U∞Ør»àÆÄ——.P»≥aX¸\nÊ-œØP—ä\',6P–º‚#F\rF.?sqk®¥Á=EñÛƒ•÷4 ı¡Ä‘©8˙‘iÜ1ˆÖ†{ƒ3˛\'¨-0òïqπ‘»aÂ…;a\nÂ≥ª„˛Jı∆ŒøŸàÊ∑àñÂ@ÊY¿¨}P=◊uÃ3®Æ¸À∆wxÉz√ΩVd¨¬¢ÈE[TVfX¨ÓòwUü‹≈„¶f∏&“ú ‘ßk†Îƒ\rπD\n”\\˜Ñ˛+ÊY⁄«‚Ó¢¢ö¬ÁÍfŸ+Òn}œ¸≈¨Á9ı…{ã^‘vÃ ˚50^¸≤íÄ~„WrßsÀ,‘|„Ê˚¸)ÀΩCª,Ê`+,<·Ω∞><Kπw!òáâ`‚9S\rV\"(]´Ør†ºEÕ®Î ◊©sÕçUd\nı‘k´~Â˙qtA∆€∫Ö±‹∫+\\Nè˝‹°V°A|\\)¿∏-ÿä˘Öß\Z .ΩEﬁ–*Ò+\0jIz`^ki∑“\0ÍdŒñjãO∏™Õ4Áäˇ\0⁄ñ¯ó*ˇ\0ˆß]g\ZO‘uõr|ﬁgπ~[ä›EıÃ¡å3+F[≈BßV˛ak°¢l‘Ø8Æ•Ó‚ØÉÀ˜òHÙByÁñkÃ◊ô~/\\MP X7æ•		u‚864ëFﬂp>’ëuPáıƒ’|Á‹3‚π≠‘U§∆ñ*Ω’Ê∏äÎuÕFÒë≤∑ìo`Sı/Õ`≈ÖÚ±ê60£t)E\\™›≥ä\Zß®\0∫óE—Í¢D.FÚQˇ\0æ•∫%¡Ò+*ÅjLDÑ÷(–|ÀÊ.móyb‘]≈µ∫®@ËÍ	à◊ÿ†®πîªïsò˘Ã{èvPn=_√Œ√Î<Ú≠O/ÔR˛a<øã5>˛†∏∏#0ƒèx\r«“—¢í\'Üû\0ã[∫·@ÊÔì˛Cõ\rÕ öœ∏*,R\0mózÄFHß¿*U¿4˝¸¿/PÃ¸‘®ıœƒ≠zÕJ_R®l‰™?ŸÏür˛‚∞^º-‡?qÂuØñ^?»±‘mÊ4ã™Â∑L4oJ‰‰Ñóxe\\˛I_0ÉE¬’ ºà’\n∂|À$Etß6DÖÜl\Z_Se)ÀO] EhS|∆„CY√r…P™%éìƒ©Û<ìFI}eÅÀÁÚ}K˘∏_S~b\\m-π~Œ#5,:#éKL•Ïâ√û¯ƒ[¯˚/Ã\\¿\\\nÍÆ!nÀE`„¡∑M§L‘æó]¬ñOí?∫Ñ´o‘\n∑£\r\\P1‚ç∂;\Z+?sÂ˜€˛ Y‹Ã†Â≥‚‚9%-q{ãGò”K,(˛f!≈˚e&këeo—Ë{#f®}_˙(Î∂ê€üW-∞:Ë∏Ôk∞òN2ÅaZs‚b9{C£ÃSC†\Z\0ùsµ9éÂÖcÇ«öà,VT≈≥bœQ?ân⁄Ô0‘¶ºw)nwK%˛†ƒ®.„Õ°3pä#ef»Ä	T∞ì\\Bû’Aµ^◊<b∫ºôÒÕ∫jÀ>¢a¨ÓÆ#6EoºÓ?˚ùMÒ,\Zuå~¶OÁÑ\nÃ“Î?r›}„PW\0´¡0:Æñ¿ur®©q~‚©úT[˛Í dºæ& ô{ù≥é[yœ]™ı(µ‹D¶ä1õ=¡j‘^î™€ﬂ+R0ƒ(Ü¢-H5ÎâÖ@4Wâmb)8\"∆u	V 6(‚é\nñı?û•9œQØΩV’†Áp‘≤vKÎ0¨o\\œÆk ˘}s\0úƒÎò¡N…AíPXxSö‹{âmB„?ˆ\nÕ’mcà –T¯é´<ÔRÃÎÁX«yÒ≠∂ô◊=(B¸Ò\r¨_2˘*Ñ∫h‹),y»gŸ`ät#ê(T÷1è®±‘]£ƒX∞˘Ê¸FYø9˚çhæ•[îûÕÄskâàÅ≤duoÚF¿V´j˜:±≤  Zóí\0(Z\n™.4!wYæ¸C_=„k„Å{ò‹Â¿xQ˝Ã;Éb∫Ã‹5UÛh‰∞A3;É™ú;1àXmüÚÅE†8çåÉÄ‰8Uùöé”gòMfºπó’?,Ûªˇ\0lÖπ‹å˘%úLñClÍ3÷bkD9•aéáéqˇ\0µ(ËJøôwêª˘`¨Èm;Sà´UA`˛Ê’f«≤1DÒ¿YÄ–\ZÊãU„<xã+l¯ó±¿ÿ÷G>)⁄›,∏]≈zƒqπVlejQÆ°g5.3∏‹ØsmJz·ïZ+‹1¬.	É‹mÊ8faXO\",?1¢´Bπc¬\\<#˝xö5ﬂ∑Àâ®E|zãUQ›L“Ce⁄∂≈∫\'ƒ2≈ÄWà‹AÄÎÀ‚?UZø◊àPb†∫„ı/…õ]|0BÖåvÑ˛\'j¸√C2  z‚ØÓ~*Â”v#´à© US\"ßH2eãó{ıiÿ]sÒ0)LΩ`∏®Õdlº?ˆk6≤˘æé·`¡wjŸ‰WâZÅH5cjÂ˜Töcœ$\Z‘YˆZ(ÍdY@\rÀM≈ﬂ¢Yô“æ#JÔR«&ù∆Õøs^!y^!û$)Vnù˘âºÀH⁄:\\:¡J±∞kRΩãUVÄÂXb’⁄W ø‘?#Ãßüÿ”ØmÃzö†ΩJa´ïuc¿öêMôGiN„iR•jÔ}¿Ÿ≈∞+ÊV>9ƒ†k\Z-”¸√€ØPæffÙ«\ZpÀk!,ÁÈó’™˙ò∑pbA¯—V¨“wÜ\r\\ÌÃª[ﬂÃ!õZ~s›’=9‹5Ç®y@Õmo6†Mµ±oâ∫∂Ìkpîµˇ\0fGŸ\0hJ∆<K8ø‘æ•é§∏“{¸TR9AŸÃ†\r&GR—€ƒÒ2¯1ÒäÈK:ÏÿÒ)¥ÖÅ|ÂﬂrÆ\'-ÀJsâá(®´Á‹º@ﬁ⁄Ùz9Óc™Ü›>Ó∞‹%•◊e≈GR∆MÀ1h:–´à=DlUÖÅ–5ÊZ<,®˘Å\\Aá‘,\nulDØgﬁ#ËÍ?∏kŸ+C£ P%°õÇÍ˛gƒÀÂ‹Kògä4†*∏/uÓ=\rÛãäi≠Z\0µ]zå≤ H…‰y‚.f∞\n\0–\Z~\n¨qˇ\0e[›ƒwpê°‚ﬂä>?Åù§ß∆óy1§ÚfY,RÒÇ*πﬂ®&®ıhw/ª:;a±YceûµZT∑NBüƒk4îÖùû%/‚}”	≈€.ÜùÄeˆÍ\\g-€;µ8Óò‘®uBÛ≈‹7©®Tt[@tv¯ñfÄæ√üÒ2¬çX±bd3ô›«wËØ3L‰èuAK∞’/sÂ)Ñ˜‡®‚5¿∏∂9ÅÆ0P˘kñ	N¯y!Ù#‹æÖYfîæzñWU≤2øô∏€2€ƒ≥dEêÅ∂‡u} .ué¸ö8‘;ÍÛÛÿAVÒ7)äáØ‹π/•⁄VΩbx?QŒòœJ∂ä®jÍ⁄ŸÃG9ãñ>Ó>‚‹…w6S®Àlc∏éÆ Ω -Ê@Rê|„òêÓ•ÊØ5\0ÕÿCi¿Áqñ=#H∆8⁄Ëyä%“∞ó‘®ÏåΩá˜	ÎÃ3ùjÅ?»?⁄éÏÀÏûV!ÉAÆ^◊πAò0—÷°ƒ∆£∆1A&†	cHŒ‚0&Uq_0∞xP∑y\ZΩF® Z¥\ràd¬·\0ZÃ∞AÄ“YWß‹æ©´ûIiRÈ∏ó<4n=:p_øÍ5∏Á!˚Ü´7¸TÛkÜ/#X§ W	ûô¬d@WZ‚\Z¡XÓ9ã¶Í\n⁄\Z)¡\0π∫]KÅ⁄: å\0WÃ√q–ÀçtÈ¯Ü‡´jØéÆ*õ≈`æröÑ®)^¸¿≤∫U7˜(∞√¸˛€≤Îë„6±û„@\n@Àæ/åeÄH\Z:A˛Õ8∆·ÊÆ˜*Ë≈´≥˛Cs$x“«èıÉIt∫œ1¡√§fm>a¡±±¡ìÃlBıïKèA—€ﬂk¯7Xî]Fç‚ƒKåj¥©\Z‹B)‹$-˜	¨ˇ\0RÕ¸KÁ!2»]òÛD«è?3K‡2ˇ\0pqG™ÅÛ¢·¶ƒ/?Rﬁ“Ímû∞gÊ=+Uãã®“g:.;æ#‹T9‘?p+U4gòÅ`+Ê7\0Àâ°u¿ec·IV»û£e-ﬂâüu∂∑5íƒ∂\"3.Â∫Ø0∑öÚ^Î[Ø<∆@X“Ä4«®Óä¡®µ0›Wq¶,•/>•%v±ªü¶U7˙ã~Õqë…h£?P– Ü‘±ßErƒhVl5Uº´µ‹±M“ôä»Ø3Ü°ÁΩÀéMw\0 ™\ré9ø$¥)¶0â§áe&f´gÛEsp›ÀØ—¿b™º∑ˆFÔó‘t1+∆:‚Q[Q+ÇÙ˝Oo‘X‘p—ó∆7ı∏πuÊ/àâˇ\0Ïtb-Ã\Z¨#èñ˛PÄ+S»ëP÷Â\"∞¶4rÃ‘ ¨.WQ#À,OQç≤``_|FŒÍ¬ºC j ä;Ë?qC$≈\0‡#17ä¬ÉáùÃ{ô„ƒ\\_˜«,√ôã>*«\\;Ç&.„⁄\0Uf>l∞3ÉÑ˝Ω-™’˜\n¿eıÃeä≈µ>ØPMAæÔ®x‹-´u2\\K4%kÁÖî‡Cò∏™ –%∂ÁDq/R˛ZºT‘_˚0B$∞aıÅΩ‹1x*42ÊØ‹ÆÑæ`ÌV•Ã©ºF◊≠j]ZX7Àf¢∑¯ãD|°¢ˆXT√‘XÛ7{ñ–rÑ∆%∆Ó\r«S`‡/G/‘Fâ0QÅ˜\02ıR›)É€¬‡ñôFcp	ŸT´	ØÅùYê≈yéú∑±wTè™©Ø1ÿ-≈çFï™Á:åı;RB¸—òE\rï^ÎàÖ≠Q*ÃQ…N7)iØ®îk’BVÃµhï˚Ñ(Ã¶€7WŒ„JÄı6´œQS1∑∏/!õßÇç¬mpVÂg\r íÄÅ—4É≥˙f©pZc˜/àjqí·àd2\\¶Ë&ÀçBﬁ,é˚¿U‡;ó<∂åAÈÚ£Œã™5ñX„QÂ`-‡+˘ñW)1KÇÉ®ò™9ÃhÊ\ZÄ\nÂoà9$)Å©∂=h˝¬aÛ*‰˙á]´∏◊lªÅS›pûM√l•[‰yı3lEÜ\0–F6-¶èÚR≥)¬‹ä—ë…H–ROL[NXËNkÃjj£_Ú 3xÑ’SKè:)nà!›s±(9UŸÀ≠:∏w™˝G≠GI\Z§§·Ó∆(±¶¢0`zfÔ˙à5Ó∏c]Æp§ïØÄZµ˛∑\0¿ŒVŸ£°∫‘Ú¸øÏ¨Î\\EVåmÆ1Ã‘VªósèòÊ‡≤UrÂd/Í[kO=Õz;q\ZZî;≈ Á¡ÄÜC™◊\r?w.ÁîR;5°´bÆ√0§côÄtÄÅ\\¿Æ>¢\'mÉˆ4#Ä¡Ü·zÇ”‹4+†·öπI˚òä·ËÈÖ5\ZÍP^ÍP¡nGÇ\\ÛR¯È√!¢\r\0’K^∂Ö2@Öä)pi¨üÏ¥ã1H·ñx ±@˜*áj‘¸…|fÃÂp¶Â€•™Œ¬∞úë*˘oñg¡rwcÆ!ÁÍÈ∂úF%n-∑KœÜ]r∏éúÒª^±jÊŸ\n‡ºΩF÷sª]©€0‹q™4çÛN%∆K„™ñ|j8s√≥’yâåÛ√≤øPüπw\\7Pdî¡e]8∏mXQWG—\r”^H9êût™Óˇ\00U*Ï6á˜d[Ê;7§\ZQeqXÓ”∆‚TïV˚\\_Q>ªáµö!Æˇ\0ò(ô™ÜÆ4˝‹íúKM7OIƒ8<u{åÓ%áì≥≤™\0¨Ô\Z˙èÕC}ó‹nh´Ÿ˘á◊=îc‡O-£…‚„o∏Àd¨àÃË0ç |≈DQ≥¸BØ©—kJ;ÄA≥˛(†‚ÃQÊ˚«≈ ¬Å≤ªäk·ƒ◊â∂-≥ªÏãYzÛ◊\0-ÛxÅ3aöÏ8Dl¶Wn8ıj‚RÉﬁf¡O·å÷|ÊaÖ<bS◊ybrSä´ƒwèxö.^<¯ûm≈zı*…â¢cfM›1™Ã≠u*.YH¶sö,¶f+¿◊1DW‰ö™Ä^ÀÅ≠’Ê£ä–»J√å∑ÒsSD£è(\n¢ƒ)Ÿr´\\≈ÖS∑©qa6≠)ÿ«kx+Ñ˜‹BÅN$ÿRØ‹1cXIÃbw(5\ZQ\Z£Ò3Ù≥)â/—ÄÚE¨¶Â;÷bÏã^Sá\näâ“Q.™KœìüÊTË§n√∂n8¬Q:l∫:∂6f”V¸X–‹(y‚,8Ú¿D≤(º-∑“r∏“µû*aŒ|ıÒ´ºGë>•U85˝Àzˇ\0\"TBAr√‘≥07Al≤≠\rSRà™5\r]7[` PVv]Ó/¥áÛƒHΩòa(	™‡~≥Û¯yîEôBïÍ*’hjÒ¸`Zº«äˆëó\'≥üq©®ópAÇÚç\nKﬂî\Z¥U	…œd%ÈtÑ=]1QihÂ€Âç¿ïòn\nj;Æ®(_´ÉS\ZK∫óâöå*\r02Ì¢“4][‚z•ºÒ≥‹C∆?ÛP’[\\á?Ãà\n®\rQ¡	,¸+#ªªØBaHX›É|W˜1JÏ¨EpÊ5›≥}1{©u=À3˝é”\nÆ√ﬂ8\'ÑﬂP8ÜR≤\"ëjî´ó‹´ä|ÜV%?¯ï(ÿÍ£¶Ù8JÀÿKHÔT$»=Oª11˚Ü÷D+F^¯ã Ph\Z)Ô~\n†b∏(-($ä‹>b±Âm_ô¥6îƒ%.le≤ı®I!ÿ¥æŸRı¿K˛\"®inû#j’‹»\Zæ·T‰cÿR€&äœà√úVÙ¯∏ŒÖú≤Ìk\ZVí«‰¶t®˛ÂN2ËŸOc,Lo0UWó∏ö–UXˆ;ò¡¬&!Ïò^·®™Dÿòn]ä‹V5}˙ó≠¯ﬁHWÌ’÷esÜ\0Ÿ¡ˇ\0cØÆ≥(≤¶çB8£j“I[<ú!¿J˜˚ÉÄ√TfdEﬂ@zÓ\'§tJ+˚îÙªpÙ€ï¥√á˙ÅR˚ŒC±pÁ= å)√eî ©∂µ[ï7í;™o‚ÂıS™[æ£F(§\nyn?1Tr“‡od3Ó$®ÇîÇ¿˘ÃÛSßÛ\ZUbUt8w.Dõ•˝JH)5VÛ‚hSê◊ƒ-…l*Ò˙é\\Ìî3-[e¡mhv˘Ò2geWˇ\0»¬Ö|–\"ë1’u(öFí2¢¢≈ÕQÕ∆mƒEÖJ|$,é±l= V*ùV•€E5´áŸ¶\rÇÒÃ˘|@≤X’–,[Äß^Ò+3¨(ƒ(Â†µ£¢©åhp3*¬Ü\r1˘“\0Ä–/ûHPl∂ÑıK∂ﬁs+[ó5gÓ+c´Äè2’‰J≈ Û/÷äP∑\ZÜ[)\ZGàn;«äÉ\0j`πr¯ Ÿˇ\0\"z∏NŸ\ZÕ˜E@∂y ≈ã1«7BËî«Pû:DéWÃ§D%Í»Ö–óä¿grÄ	l4?ÀÂÃD.°[ÊU\0Ÿùı(ÖCi‘p Œ#f ËäqÖ\\¬äó™· Ü:ßñ¬¡lÊŸ¥+3ò∏ïJ‡\0–˛Ö·:aŸ)9DJ”î∑^=Bw\"TJ\n—\ndÙ¡52˛<ºˇ\02πmÎÊ^\nAEﬁ\\k3ËÂ£œà8-£n:≈‚3í∞W¿πC‘ÙyñC‰‘›«çë“˜ƒwZÙ%UÁÓfœÃÚN.0Ry4@°”?ˆ°P√l∞0RπrD≤‚»,‰Õó,>*Y%DJ\Z%çp ‹7∂bNq¢≠ƒ^aÒ8ƒkïD±û9Üh/.(ÖKÖ0«ËãºPjºN/◊Ó[e¡ù£®X/D`%ïµΩÀS6∑@U¿≤¯/≈≠QË\Z^ne7y›‹gsÊ¯à¥(N≥Åò(ª–∏j î\\©Ÿ\ZçZ|E·ÈÑÆ43=˝7(ûbÃBñÜ˛· ⁄;vÆS£∞qJ\0`ó	À¥2F7MrDoôeˇ\0∞ä©ü	e_Û\ZÕ◊âŸå63ÊñY‹Ã™mUÊZÅ\rcS…ôc\'‹®@‡ñ’·óöôê„W\0&\0ßÃ6p‹ÆÄ\Z‡/+˘âî¡ååG•CRYéëK≈>°+@¨0uó@€˝8ãÿÎSj¿Óe6Ñ7wÀL∞#Ûâí©Kﬁ»c9n›·’i•ÚSz4P]<ø¢5¬Úﬁ_>¥DhCÍ)4uÃ~#CLï√™9v& ûß≤_Põà‰≤õÆ	=úêNTGÅ›>`√cRgÄ81qB+∏G7Ô3îæ≥ƒ´í˛Ò\Zìü¥ıÀ◊s]úÃVy%ı˝D˚eu˝À∑èÊ=\"≥ƒîÑøºMDo1%Ï‰îêQPYt<À“T6/$–Éu(_q°ÏBÇÆF˘√pò™≠≠oàâ2fmC´ßn7Û\'çWÆÛ»•\'“;|ÀMä™Æ÷Wò5\"π)ñ˙≤:£˘áÛ\Z€≈ƒi…¸;pöOwƒ°–\n\Z¶üôí™¥rÊçh£©S—G-Tıw∞˘u_Ûd8‚-úkÍ:‡\0/oÔ3˜¬π6#ÕÀêëB…~Î0«mm.œYçü2µèÑ‘=ïà9œÔM≤¢UÄ8‘müπ›ø9ü¯*Ê4∆Z˙ñi∫ó˛L1t} 5û ö∂ûÂıΩKáüSIÄ˘óÓ^Ú¡c	CdºJêp¡¥Z–Æ+®Oò{2€kÊ\"¡©ÄFØ∂·Òç,ô´‚†◊àå;\r∆‡Uh÷å|AóÎw@WäÉ•h\0:ßûaÆàC≈1\nÒ1à0‰Ëç7·π°πé5À8»‹óa|Ö1∞©[§~a)Ã<&OŸ…îßNìÓ-g‚ìatdﬂâS‘\n`sπxó9¶mÛf©Ô2Ã›ãØP`l-9!)‰µ=∆E8πYçíûÆ2∂FTx˝@∂S@˚:{Ñ∑en^ºº1>#!Iˇ\0%æ=Àº•J9∑‚7ﬂQö9¢rRìU¸~>·≠∆—ÿÓw√¯f∏„O¥Ãÿˆ¶b‚UùÀÓÊ3]ﬂ‹QÓ0ÄÂèíbe‹€xÕG v®\0ª^£T%_∞ÂËLÒ®”fw(dFTAπe?âÏÃá.è8‹\Z?∏5Áà\n‘P8Gñ\"%\0WM´µwÓﬂÃmHŸ:vc\\ó’ƒE»¡YºX˚Ñº2ï\\Ö›˘∏∏â5ÓRæÿ˛÷j$h+\rﬂªò—{+]∞Ãàgcªá^Q)¬V–:çîaÜÀ§˛„¬âwaÔœ¶8)òØ	√ˇ\0QŒﬂ®ı¨“›¨¨X◊BFÅ…ÂÄØ˚>áQ÷xÒπW¯‚Zñ+≈ÓòÍ±R÷ôı‹Ω±Eòk˙äRÖÿŸÌ(∫òƒπ§eÄÑ◊hA˘âP‚}®ñîû`»å≈r˘∏(«πk¿⁄•>!ﬂô]ac°÷{|¡ƒEç^n0b§V8´îVal≤˜¨ñ™!Gyàh^;lkRˆêTc]æS£Ê?Hph<É¡E%w√Ø‹e¶¡≠›: ∆]Æì…59ÿËßQCn4ÜÂ4$)ª-gß\Zãzñ4˙’‡HÆ%mKXjåú¡J`*â§∫î€Ê»\"0œªB†åRÉ§Re\"∞xí≤ÄΩµqÆC9TmlœfA<∏Á!1∞¯`ú\"ÜOk@}≥RÎ4\re{^ÿ¥-≠%Û≠L˙.£6æc5eøL≈≈iÛ9÷.\\\'1⁄∆…ˇ\0ô\"j‘G9bÑD@ç\'9ŒÂ≥cUnq*§N\r/⁄Aº†\Z°¡*ôÃΩÒ,$BGt‹´5Îo*S˚ñyJ	’2É‚#  âà⁄π<Œ»Ãf†Ka.∫E¡„ ’‘-√+¶2[ﬁ0îÇ. :x3‹ªÁÃf⁄Pâ≤ò¿“`¿πH ‘q;]«®ÍV©ÏxeÿQUú˚!òÄ£6\0‰wsDÄbÅw[_0â\nï\rS°v„9áœBlı&s\Z.Í•A‡®≈F‡ı◊‹[}¡<IÛ∏ÇÉ≠ˇ\01V¬h•äTEªj\"FΩä4:Ãb∆ÏúÀØ4‡N‚kC” ÒyÊB°5ñ(ª3∫Ñg84<˙©ã1\\cqcË2DÜˇ\0[Ûmûxóä_ﬁ%ô∏∞Ê!n∑Í?®úF”—RÌKñ·»KzÜÕ¬2ë©avˆ1´\Z≤m<3!}ŒHG	b·‰¬®*∆Ó›Ê\Z∆aıOV(ÎÀq˙~£\\◊/lb\0ÔU,ª©h\\VÖ ÄúZíΩ+Pûc*Ñr<Frï®òOLa±éä4¿µÂƒG\r7‹z£†£Í´•†ƒÌ√\rƒVÚ≠1p∏ÖΩ\Zcp~`9Yb5LQ™ºYÀÊQ	M≥–ŒK¥[P(»≥Ó„PW8—\Zàd§æ¶”,\Zj≥w+ßí p¡§W≤Û‹;JÃ,^\räù´|@\0å\nÇ›D*7\\Sº_MEMïoMﬂí	FµÑj?Ÿ‹|s.	^7í/\Zâ∏*•9√òhD$∫„®âL„Ã´ZíP≥ÿC2ÏHXÅUêé92À¶WYÑ}â†äoÉ‹“…8éı•-KXπÕÀ5z”\Z8=gôÊé!Kk¸Ø∫îß Ø¿m\n7ﬂπ»Ñÿcµ6ªj∆∫Û\Z±‹W+^bòóﬂø3ºQA\Z√ä‹bô‰⁄{	ê£¢È~·RåqNe¿özÜêAtwû˜P\r∞MxòŸÊ\ràÂ=5˚ÜıµFì‚Ù`é?ƒ∑®263LmâmÊ˝Ó&ºsˇ\0`∫…„dÕÇˇ\0Œ„Ù\r≈s#ﬂ_ácñYïq*úL—…Ü1Êï*d`«ñ≥‚\\,·ÅBÖ<∆àå≠ëZ	’õùæë‡ôƒ[Ç°’8ÙæGMr	y„\Z	egÓ\"Ô˚ïjâe „m5ÎÍ•iôÜ∆§ô˙ˇ\0˛(®ÃÕÆiÄ.+$p“$rÆ£ñU†óhj™ˆ©LÍ\nÎH9ººÕÉ~% åRº‹3Ü Ç≠µ∞˜Q%‡‘\0î]À7e†#\0Õp}≈i)ÊZ“wàú√»*ÉÊ}œoπó&Î¢zﬂpX5ÚëC8…∑xIêg◊àüUÊRûÁÕ¢¬‚&±s§{ä˙ ¶Hß;hòa}ØÍÕ]—Ç\r\0|∞ÌÑÀPΩ<T&Ç≥Ê(©√0ä^\r\"⁄zTÌ‡Åña\nÉ¡˝ “ã¬≈0¸AQlSÚK<£OÈãU‹äz9~+á#Ä+ÑBAµ‰»nòü:¯Ç“\"Ø ‰Äu†\'ôNì*‡>cıa ≤˝ÍÇvZ|\rã°L%WäÓ≥·ëü4@j@J),66fıP9grßÇ∏Ê¥º€nxä‰ÙÀ8Ω$≠bàãRÈ®ñá\'$*†Uê=ƒèBè¢\\ZÔÃVÙß>¶*˝ÓTÛ‹2QÊ//Ã\ZsŒB.<≥∏ªπe\'8πzK<‡/∏–j¢≤1wá#s∏Ö [î•w1ˆÔ§ÚC≤ø2‘TâYî\\æà™¶óp”(™©jXŒUÑi…<“ßq+ãPYxàà§i\'ã3\'€¸ãX7Xïˆ≠≠{º¬MÒ\n⁄UÔ®„∞àÑö”Ä\r∑.Æ•oÆ•pbs‹CòP •sΩ¥u.UTN◊õƒXÌ∂“≈)Õw≈‘Œ%êi\Za¶,æ‹B($∆‘˘ä\Z«ƒvºÿò—XÃTÈl3à5‹¶0/Í^≥Èã‰˘ó€:µ2}\\rb≈≤3H¢„E[„à‰lÒ/ñú	©¡AÑÎ∏óZ(F‘∞£˚%ÉÖÊ‡SôòŸ‘Bê*ìı≤™ä¡APró¢¢[ÄrØ_9Ü\n±.ÚÂœ9¸,U‰P‰`ñürg/¡ï}æ◊ˇ\0j¶K≥≤W–K=?0∞åÑ™øxäáƒr∂6–U\\Àº‰mu¥9k•8\nQ’Ì¥†,ÎyüXàVkÊg…Î¸â=sÊ©Í5ºÎâ_É∑wcVòj¡·˛e–ÿÆ¨Å\0‚≠óí\Z«u¡9ºc«\"£QvΩUÀú˜Zñ‡ıôVúKM‚ôn„qÊa1#´çúä‚\n‡VÓ=ì#V\0HSŸJÉπ™ôP˛%ƒ©∂üπd«Â®ÿ¿œ\"oqˆŒw@˛°IJp‡Ã]ñ˛*ZAñ™È?ÿ?	PMÎ^Áø\0)Òñ5öh<Ó9ÂéQAfq3ö—π}C?Ø!è{ó$füoØ√À∞ÊÄPØ†é5¥ØpŒÊIjçÄzYJî∏Ç`ã˚®t1C{Wjˆ≈ÂªÓ13ö˝DL6ÉÑøE‘±Ê‹ÀõÒ‘jÊ†S4∏öthi`¯ƒ# æ∏àDÄRâ®D¨â¡÷˝@∏maN∑‘¡ºﬁ°ò´®π˛\"«“˘Û,‹¢ûq.e1èîb0≠˘7≈ûWlÆÍ^∆E—trÃ®@°M¬•¥,K∑ÎL%‹$Íã»ûodµ–=¨-=	ñLR«™Õ∆\"ë°Å˜¬x¡é}∞Ñ*†,§\0æKèç~3Z£Ìä˛„Ì\0‡û∑ü›D±;%¿Àn£≠∆kqÃˇ\0í¢≠NHÂ6ŸCå4Äô\rq\n≈±ÀpJÚs[#WYÕL0(w©íÿF•9ﬂôñ±ÈcÔ	⁄.»]ﬁ9«1	H∫\r[—∏´Ö8A„<Üa©t-3¸˚a∂ÏÜ˝≈£≠˚Ç_˝®ΩÃü‹\nÛ0Y1˘/·¨#l0πfiÏ`ßòôUÓ0uÙ<˛¶∆àπØ2©òaæ°æ([´„Ã±’fwëŸúë}»AÏ{¶ ¥Îl≈Ç„UÉkåL0\n∆`*p5÷¢„¡˜¸~VÛR†DŸi#ê√FΩwÛ-3/êK˛ql+¨°Ò~ﬁ∫ãƒTkz?ÿ ámU¨—4Ñºzø∆Ñ’ƒÎ≠Ec≤ü‘Oã,Ú^©xs«∫‹lU±†‡™Ë= ¯K#K†ﬂ©säÇãÇ[¥µvæ††T≠®Í—,†ı?¯ƒ∆◊Ó/¸G7}OÜRá≥2Æ\0\ZZ¡Û: BÄè√∏ Ñµ@!ñ(ÄÿÚHÿ¢ë\\P[\râA(´öo0Adπw¡1HΩóƒb&\Z\náYOÕ©[™rﬂÒ`¥O¸AäÅNtA(0D¢†¥¬u∞ŒÙ|œ·8 d•—–\\Ω≈∞Rp∆=\0µ‘(ek∏≤ÇÈ\\ïài}/ÄÙA{å!´\Z“?ºKß,c…e¶„^cÃ»—BÿJG^¢\Z∞˜+‹ä`ÛnÄ€1)≤`Ø+—P=aÖÉC ˘w	/‰R\\tÀ°T}A/mxï‘üQò6J\n)Üÿµ[n^\ZÉπ˘ã√ÌÅ˜˚ã≥Dfr>eàÛRôk¶“â¿øQœÔπJ\0¥EÆ‡œ/•!æ©eL¡TbØ!Ã5·@†µœƒøÃl®+êã∫¢≠{=¿œ%\0ﬂk‹∂®[GÛ∏HòÀ\Zö¢/$\\»πØ$å-≥ªç1§ﬂâU›v≈é·H$ÊÜô_RÑÆrú|uáE©üéÂä†!0 Ω‚Vqä`çÂÌ‘´‚8ãÖÚ\Zä√ò¸figÓ\Zƒ!CM^s,¶©æ\Zr~•ÎÃIâ^\\ı?Ï7+z@Ö‡Ç˙)7¬ªÉUºJÖ*Æ[µvØ+#ıX‡ÜÙNn\\bÍÇ±Yv‘◊û†f2Ôÿöa[™m\\€ﬂƒk¨ƒÍÀèüÊU‘ıF&M˘û&m˙4jÒW]t∞ñDÊ/j≈ç:„¨q,C-∆µ¿Æ`¡ëM0f=zó≠…¶09AWr´¢V	Y´¶«˜X—\n1≤Õ)±~J@‘\"Ç≈E	ïXÉ\0+_ï¸N÷#I\rëq]=èÛ,:\"{«2ëêØ9Â}∫!äMp&˛Â“à_qvÚ5çX∫¨˘ƒ\0€cä\nyWƒ`~\0ÿ¢•hQ≈@(o+ º¿LVeÜWç¸¡,}owE¨¯≤è,®ƒ.™Û\0kHøDyägÇ˙ïxüÇw2Ô∂ÿ3\r}¬çYE‘JéÆ†ñÀ,»>ŸL7-\n.ª¸NLL∏Åµïïı|âár•‹»k2∂Õﬂ‘? ÚE\rts∏.≥/12… 6[S ˇ\0_ÅU3ÌÇ¨\\£cÎ¶Rd§[x{\\∑5‡¡R\"+§…_Rß…ôÊÄÁ0<\"⁄—F }1ËàUt∫ëKAª4ã`ÿmÀåÓ—âΩ[^V€äù…SÑJ?®á0√1ıóÕŒm/πrp	Uå«ôY\0ºxò-‚„Ncó?˜Pu‹gx—K‹˘¡Ûà<n\Z÷\"∂ »≥E†iø3Xó-13‰ÑãVqî[Ë9ñ0Uv˙çAh∏n/0Ñ\'D |5 ]V¬ˆWò»0ZW[Gc,áÔÃ®(óÜ◊¡e\0™ú◊y‹§Ó¢Ñ•’úêÿáWCƒ«\ns\0™–¨πóË—∆+py÷p*ÒüN	aEV’me8‹Sà T¬^	k‚\ZwÍ`qÛ0‰™©¿÷!ÉÎÊAŒ5ÒU£)€˝±\Z/Û\rﬁ¢≈?3ŸÔ\\V›A{ôÀŒ%ÉÍ= ò*–s\"Ä\ZVÒﬁ¢´F[E®5Ì`†gúÒ)6!≥◊eÆµ@„yò\re˘»hà∂ıùÎ¡o©¶–K˘œ3IqÉÜlG2\\æ{¬PØgÚLõó3W\n=PKD&÷¥k∏ëX∞öïgôF¢\Z*d^\'Z†Ç\r7G%p>a≥ÌgÍÈ˘-7o©‹ü»ª©è˘à0<ËÛâÅl≥Z˜P<˝¡v≤Î2Œ\"≈Õ›Tøb‡ÛÊ%1qÃÛ1Ú˚ûyõq;âç¡ÉÒ’Rü¬ïpÇ´@Q CmµàN\nÌn⁄´∏Æ\n4ÅúñÛ+l,ª⁄j‚i\0\0_âBú(UhâÕ¨mU¨Ä´w.∏h‚*-^H F\Zî8ÑúDK%kS°∏I Ëxc_Pñ≤ñ*¥w.›ΩΩ}ƒJ≠KıbÛí‚ËCÜöà∂´{Û-Õ√µ\r%M;.ë2~¢$\'/ôòœ;U˜ñ\Z‚(\"dHÑ™>\"≤øπÄEÓ\ZOâlN˝Ñ9}Œ‹EÍ=ÁƒÊtKbq\n≤úπÉƒø\nP.KuÓ,DZzáG6¢ÖJ”¨±KÖ\nUxÑ)¨Œ{fx1óÒ9ßÖÏ+_m∏ÀUpYò!≤g˘nÓYYá#dAO≤™·é’k∞àFî¿“=¸nÂóWÖy[πä\0ZçÁ¨sÓN\ZOÓºŒ…Éœòj’$∞Ê≤ ™õCvÌÓ \0ßyﬂ·•d∆@\Z‚ì	˙%òW,-ÔP‰òâ¡ù \0fPaº›F]˜¢ÌÇKP\n≠\0ezå∂Ì†ÈÆª≠ U\\˚b‘›Oπã?π∫◊‘¶ÊÏ∞A‚&˜R⁄¢\ruÆlóÁ9Û0n\nöP \nÿzk‘fU*Ø+1Ã3‘mïñ<»2>-à\r‹WL¿˝C‹äà©‡.^Ã’l∏àÊ%ª«¯¶Å†Fbÿ[GJQ†—£¢n7\\ƒh»öåôÑwﬂ‡i®!€.GoâO0√sŸ⁄√ê\"‘#\r.’ÍTÔ@*∏e\rµ«\nÑ‘∫0{]π[ç©dËÚ˘~%©JÂ∂‚8ajÂ{}Lƒ›k<Ñ>„§¢‚\ZH ø«ëpÁπO¸ ë¿òmä®”ÎÒLœ(1©ïàŸΩ±‹8-¢ú¸ƒG-z%vëv†n·QszZ5\n¥€¿_fFd°h(ÁyÇVtR”ÌÅNF¸K˘ÇÑD±ì«Q⁄Ö≈¨hpD˜g	∫Msâv^b‚Ç¸1ñ)òu.YM¿G\"ËçÛôƒY∆`ñ˚ñ4%qÇ‚„dEV„¡òÚ«\n±^@Ò‹/∂FQE„çÀÒ4!Vˆ‚0\nE[æ¿˜‘-ÜŸ›ΩØs\r≈´‹ÆÙŒÈOıü¡áÃ€¬r3ÀÍ\n5Q®F·PU4πZäöT‹ìé%OSgÍ*∞(É«∫Üç$éã¡«ôB,6+t,iÚX•Y¡WÊa‡∂oTsÖ öé\Z ±íRà\rªWq€ãvYï≠WÓ*\ZjÂÒB)v§˜\r%—¶téC\r¨ÀÎ0âﬂ‡J◊≤ÿ˚5*≠≈≈\'à2ë‡^Å»r¬r4∫Ÿ^‡<sFHpÅñî\0t◊Æ8\n±2ct⁄®¿√jñ–v•¿iRÅ∫€Ê6^JÒ˝ƒ¨Ç¡¢¯ﬁqãáÒBôQ´\\Äàbï)W¿À; ˜(F@‘Ûøãπœ‚†€F˘Ö\\ *\Zw*ÒE4BïE\Zl\'1D(≤˚@Ÿ‹Ø‘ƒ[ÉW∂ïè&eC˘ñ•U–∑ı}‘Êá3#ªc(x\\xâ\Z¥\rG∫(¯àHeﬂ¢…∞Âﬂ4ıç@¶ˇ\0q´¯R≤U≈Cˇ\0Æ∂Ä*ÃÍ€§3ˆ¡pùƒΩ	§ö„Ê\ZÚösp\'‡SPÒÓæ *ƒ¬GI\r\"Ñ˘2&‘¢nÛMGÓ#\0æJçΩªÑÁ∆8Ò(HÍSJ–+{∫Ñ∫©:;¢®øQà¥¢•ªksÉ	v0¿\rb4ïLòf˚Å´ûyõ)ôT≥˜(ú‚6qùAÜÛÆﬂªÓ¢UUv´k˜/…-@‘óX€tA)‡–å‘ÆïƒØ@ïîàñqJøng¥l∑∂ ›jP‰P˜‡o5 æs3ó®qÁÃpáD∞¥›F8•SkÂÜÂ„ßr¬ÈÓ+•ç›ëÓÅ‹&≥ÉJ!ï€9îâfÆ¢]uìÓd«·h’±ò÷…oxÄúœ˝\\†õj[}B-ºE”P0Ü‡¬öƒ\\ßòÊUK–y_—Ç®AﬂjÓﬁ‡Ò/‘\0o6\n∫°q˙Ñm¯\0e%rW‘j¬ˆ∑Â9ïMÕ¬ÈÇ÷S≈¸∆®ïV‹øéY5S®≠Jhê*Úøƒ|Ekƒ®_ÕAÄØ‘}∑§:ü1™Ç  0s‚][ÿWn’ÒÇUBÁµæaÚØ3R◊¬yΩÊz Ó˘î∆e;àò•Ïªé3IáÉÒ˘ß}ún\rU˚ÃK4ÕŸÛ.é\\¿ØPÛ∏>aégFXÑShØAÃXILnè’¶ı-©lJ}B0™–wpÁNÆ∆Õ?¢m˝\\O®Û¯=‹j‘\nî≠å«àÆ„ÇaüÏ∏ΩFSM•Ÿ®Ü•ÜPx›¯ñ*8)>U—‚\'Ö+ièXƒf—UÖE4ö[*˘k∏ëöôï8/≈∞û3Ph\"çõ91f–îS»‚_0Û&kÃΩÓ7á4pàå•Œ¢{ù»˝O<Ú˘ûh˚ÀW,·Õ√R‡”7≠º@j1¡à\n{»Ù|≈™´V◊∂-∑‹ø3eà6,ÛR˝’U±‘_Ç›≈å1÷.Ä-YL aXk‹^ˇ\0„0—1@Dó™∏\0UI6[l,TÂv¸∫™$’Æq˝E≠.Skú®\nèÓX\"ÎE’mØ8öAnßPñ^,ïÏ…‚Z¶Å6|E5⁄7ï=¡uî`a∏ﬂúöÒ)Ÿ˘G2Œb”ôáòœŒŸwÈór´˙äL¨j\"¢®’Í DÚ£˜|ZUj¬/üLÍz˛¢x;`ç£∆eı|ƒägFbÁ√öà•„∏Gë›lk˚çIlPŒV„Ã›Ç–›¶√‚>ñ—oBÒÊ¢¨ENÉÃvAV |J•`Yt†±Æ#:ïØ-¡âYN¯Ñ&3:nU0ßê®js®-˛`§\Zj»-&D0˝¬=ïU∑ò•Mµ†m‚£∂÷°¢:5f¿˘®$)+u_Ú5Æ∏É§≠¿yj•‹∆ﬁXÌù	aÉPj)Âƒq2∏î4w)0e≠T∫kïM√b6Å¡˚âV€n’Ê?R¯ƒ∂ À|√D/IÖ¸Ó(BÕGïÀ¨˝¬.jWÇr (Íãoƒc2¬ßﬂí·¿*j9-[_∏≈WjW˜+=Û*Ωû!ôf3‘©˚êNóı4éU¯çå√BE*†p∫Mõ™ÚSÊ,Á∏Ω‡ﬂ®hzØ¨∆)c(VéÒƒT‘AëéÎaÊ*8LπÀö≠Q^(,◊ã^∫#be*ÏÍ∫ås˚çÊ˚ïı2(#K‰kRπw-ƒøâö~ ŒbD≤Q\r‘-2Ó†\nË.\08 Ω9.√lTi5ÿ1Z‹|Öx8/thó/ôsRÂ„üRûﬂ∏≠µµÀÊSŒà≈#`P{\\∆™wXò&uAæÂ\n4+Ê–yZ‹-™ÿÜÔ˜1A„Ã\ZÓ8ãıâ¸ê‘≠`•Ω”Í°éÔ‘Æfåuâb|√<ëXn≈Êõ™Ä¿¬ı∑øà^ƒ°p)°W~%ê¢’[MW!8›Z—é!$®Qj‘††ÂØƒ+QΩ√‘•qÓVı2˛Âôê—J´⁄ΩC@‹L\\4/lW∏ÊV ›|¶a§Ï≥ﬂPè∆å@™6îÁzéPûVŸñ‚ﬂ9ó~._.•˝¬>ˇ\0™®–∫˜R≈≈ÄEÏá‚?t;A°}‘´]«q¸@0∞HÜX*Ãd\r±µÌâôá˛‹Qz‘±õíÜãœÍ≤Ìµ\0`<Dj*©xcÈΩWl6\rò°’≠gƒDpWD9F£‘∞%Vrˆ´ãÙb\'ÂKÏP˛Ê\nÛ,.U¶ÒÕå8ûÀn∑Êc…(|≈pcã¸4’«±,\r â\\Od™îƒ”läë“Ñ`Zç¿)±à≠bÉÓÂ÷%ÚÀπuıs.Sπ\\ÓWq(Ã∫÷9î}D-·≤\Z0(G•ún;≈{ãÁ1÷x\'\'‰ò_‘6ÚaVP˝±wnwR¨˘\nóÃv$dÿ.ﬂQî⁄ç`ÇÁ»EÇ+wúêçÅ’¢©{≠D0+J\\\'‘Â[ÊeÏÅ=ÃíÍHßî4=‹8‡áº˚ï-ÄÃek¶éÂ$˝eQ(∂4¥\"V ‚8w\Zj%A~!™wàm™ÓΩ†øQCà7ºK©s˝ú‹R¥KúÒ+ƒ‘ºÕQÒãy#Pﬁ¡k·¶≈M§Z)ÃQ˛X∏ß‘≤ÎƒZµŒn^+ÄU2Ì‘]+\n¬Ë+≤‡πî°†t∫æhÑ¿â∞º¥{ânX<«;b0r–&@)Ok∫É-Ô©Æ•≠®|ÒF0[0…m\"¸G¥∫äØ˘Í3&•∫Ôœâ@\0™≈>#¥cYÜÜ…u\\\"RÛD]D≤%Á∏1¸CHò¶„∫*c¶IX;7vyÇo\r¡ì¸ƒE)>#öóZ®‡â¡E‹(?Ç+cÅäá>#3ˆJùÊ„â’m–F:ŸN’∂tWs©Ã_YÇ«,£µ‡˜‰»2xÛ\rõ[‡6{ú∫€9xCúsÌ˚è_∏“èìÒÿ¢Û\0Zî5v®˝Mq+Õ˝DÉá∏jˇ\0˚í™⁄ÖŒ#v]û=J0ÎPƒcœ€¢	ªçu›¿7Ê:<ö˜*yVbV±Ãmπ@àu*QTﬁ`<J˘™Íç0D∫ ]•‚åâ˜2∞¡˜~„2n∫ôíW¥.,2ï›–q?Òæ._Òﬁ„6|f?ê@®ê°=º √8‘h≥ A ‡#¢å9kê≈¸ ^ÿÿ+¶ò«S hBàÖJ˜A%é-Ó+ +0´˝Cıƒû:É~!ÛßÓ= æÌ@Æ/Uóki£qû7∏ÛáXÃ[Û˝Dπ`ﬂ®™“‘‹\'±≤Æ¿. 43\0Z¯≠m÷)›f\rk+€xÓQ€Í\'éaoâAÈÊlK2ñG¬#î@\'0wéxò6≠%Ó\"8¥,á]W‚å0ˆƒ,!§¶%S8¨¡CkDﬂ‘ëˇŸ'),(26,'permaurcio@gmail.com','Mauricio','Perez','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0Ñ\0	\r\r4,$\Z*!=-15,.11 3D5,C49:-\n\n\n\r\Z- %777-/+7-7+,1/-3357-+/.-1+---/+-/7-+-777+-7---+++--ˇ¿\0\0d\0d\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0=\0\0\0\0\0\0\0\0!1AQaqë\"23BRSbrÅ°—#%Cíì¢±¬‚ˇƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0(\0\0\0\0\0\0\0\0\0!1\"AQa#RÅë°ˇ⁄\0\0\0?\0ºQ\0DD/jºK√ËËKçECt0”YŸG∏Ë<∏ˆU˝wé5Dù≈,∑ñ˘ÚJÔÌ≤∆Q≤ãeËãœ≠Ò´ΩÃtÑt…0ˇ\0u2Ÿ?ij\\ÿkÓ9	∞ì6zw‘Òo.:wL†‡—h\"˘cÅ\0çA\ZÕ},öÑD@\0DD\n¶ÒónﬂO˚ÆïÂì9†‘ Õ¬6ûN#RyuV≠L¬6:Gh÷4π«†hπ^D≈Ò’O5[ı|“ΩÁ∂bl<Ä∞˚≠õ¬9f\Z\"-	¬\" -_vÌ Ã*•Ÿ©‰9iûÛ‹¸GpbØe„P‚5ƒÇ9®>|§6_ƒ¸:•ë«$‚\nÇ∆∂§öd∞≥éúoÕnô„Íâ⁄/àﬁÅhEà!}≠à¬\" àÄ—Ìº•òusáG=øë¡y</ZÌm>ˆÜ≤!©}$‡Âé≤†¸3Ÿ—;Ω›(ºQõD”¡Úho‰›>ﬂ%_Qj™l±ßÉõ¬8¡|:öhw“…Ów∏eπçè7ÙÂßÅ]∞Ñ^ˆ6Œﬁ∞π§˙:≈\\´≈#•åœ.}ÿ \\˚^¸mÀ∫·«®‹Á«9Ù:oMπ( ¨\"¶/ÑÇh˛≥o[,x |é»∆πÓ˘,isΩ∑ü‚f6®«ÚƒNı&À{G\\◊¿*€⁄xak[3ÄΩÖá3ÀÕ[ñ∫ÿ,Œº™!\'ÂëQQl>#-≠eŒõÁ2>‹Õ÷Ûı?ã⁄˘i¸∑ﬂÚ•t;qF˜ƒ®èy#\Z√$/\rsú‡\0∏—\\[“Ymôˇ\0HÌ+j6√J√vì!—¡$‘˜ˆÈÿÊ‘B·Œ¡¶Ì=¿ıW>Œc\r≠ßé®G$9Ôö)⁄X¯ﬁ“Cöoƒ\\V“»Æ§To\'(à≤`\"\"S¥3π±Y∫f6\'µääƒ∆∂¿\0\Z>+l—˜)Ωtms◊ÿ4çI∂ù‘-¬ƒã‹ƒs^´FJ≈,ut\r8µéNÌÏ_6®€Las⁄”\0∏Ìí>∞—s£sM</—rU&±ó˝&˚Üd›ÂnÓ÷…añ›-¬ /Q0d•å∞çØ\0∂¿Ç4ΩÔˆ˙.->\\ô¥∑{^´_’Î„jäÇ∆\nö},†ﬁ‚n¯Xö◊4@p8ªÇÉR„U.©äõ8›Ám√@-ˆ%NWkO|néËúÎ©ïOÂÇ àà.∫k\'›±“Z˘EÏ9ÆÂ◊Q{\\√¡¿Ö§Ûµ„πïå¨ë\nÍ˜Ã}£fÚh‡?Ö+ÚÇ„¿\rWl—8±‹A◊Û—b◊¸˛Ø‡ºÖíúßÁÓz\Z„∑±êã_Ö’Ê≥Ôá§ÿ(⁄√$OàoX‚Cüêù,MÖ˘h∑ëxªej»oÆÆ:˝W+9D∂}ø∑o`ÔÒe.^è•º‘ﬂ…«◊ø©¯à∫eàà\" 5∏ûŸµ˜ØGuÏ{(Œ)É‘9°Ö˜\Zd±æ™nñTo–Ul∑>¡f≠TÎX\\¢™%X‘C(=@[*x*∆èßî˝&∑UaŸ,°}*∑Í…ºB~»Ñ≤äc¸)õH__£Ê˘∑˙)•íÀOØÓcƒ\'Ïç6Ü:2d~é\"¡ΩÊÀrà∫T”\Z†°≈;,sñÊràäS@àà\" àÄ\"\"\0àà\" àÄ\"\"ˇŸ'),(27,'ebernaldez@trazalog.com','r.sanchez@mrsservice.com.ar','Bernaldez11','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ‡\0JFIF\0\0v\0v\0\0ˇ€\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ˇ€\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ˇ¿\0  \"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0`\0	\r	\0!1AQRqë\"#234SarÅBbt°±$\'7C≤¡(8UVsuvÇìî—“c¢·%&6Wí≥¬√Ò5TDe”EdÑˇƒ\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0\'\0\0\0\0\0\0\0!1A2Q\"qaë±RbÅˇ⁄\0\0\0?\0¸»àãÈº¢\" ,£yç¡Õ;V(Ç‘ålÃÂ\"Œj™≥äGFÌf≠“∆%g+ˇ\0ú‘_UëDDD@DDD@DDD@DDD@DDD@DDD@DDD@DDD@DDRñA\nTŸMêcd≤ …d4∆»≤≤Y≤≤ã ÑD@DDD@DD(|ÒÏ+AﬁV˙<{\n–wî>!∑ \n∑ 7÷˘ˇ\0ÄU’äﬂ?\n∫B˙\"\"\" \"\"\" ,‚ë—?Yø“∞Dfç≤7ïãw–´-ê bu∆Ó#•n|[>XÔæ™¢±Õ%ˆwß4óŸﬁõM+¢±Õ%ˆwß4óŸﬁõ4Æä«4óŸﬁú“_gzl“∫+“_gzsI}ùÈ≥JË¨sI}ùÈÕ%ˆw¶Õ+¢±Õ%ˆwß4óŸﬁõ4Æä«4óŸﬁú“_gzl“∫+“_gzsI}ùÈ≥JË¨sI}ùÎ\\±:\"5ÜÙ4÷àààÄàààÄàààÄàà\n@Rê\0Rê∆±Ma´ ’π¨Yà”k•p≈:ä»çO&¶Õ*(-VÃk\Zl“©\nV≈¨µSM6PBÿBƒÑgLI\nX°Û«∞≠y[Ë|˜¿≠8Ç,P¯ÑD@DDD@DDD@DDD@DDD@DDD@DDD@DDD@Rﬂ((Rﬂ( ﬂ[Á˛WV+|ˇ\0¿*ÈËàààÄàààÄàà\nA#qPà&Á§•œIPà&Á§•œIPà&Á§•œIPà&Á§•œIPà&Á§•œIPà&Á§•œIPà&Á§•œIPà&Á§•œIPà&Á§≠ ﬁJ]≠;èBÆàm≤håN±›¿Ù≠jÃ2	…KªÅËZeç—øUﬂ“ÉD@DDD@DDD@Rê\0,⁄‘h∫‹∆£CZ∂±ã8ÿ¨G\ZÕ´#Sc[õ±Xé%aê˚€ZR©‰ó—l>nz⁄ÈÚå+[¢_Y–{ó√ÏM¶ü%Ò≠Ob˙rD´I\Z‘©ßœsVßrF-j¨´ê±!lpXïQÇ)*DA ñêA±\n–-©mçõ(„“™)ÉqΩπ•Æ!¬ƒ,U¶πµ-’~…„“´ΩÖé-p±Aä\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"ñ˘ABñ˘A˙ﬂ?\n∫±[Á˛WH_DD@DDD@DDD@DDD@DDD@DDD@DDD@DDD@V¢xôúîª˛kïTAúå1∏µ€÷\n‘n≥ììc«íÂ]Ï,qkÖàAä\" \"\"\"îäl§\0≥hP∆XÕçV#b¬0≠D’-j6E\ZπKæÑ¨Z‹àä“rñä1\\ZÄbòƒÙ¯\n±™Æ:•ÕÈk	‰ã∫Ù9?.ay.”fÃ·L*±\nü\n¬üÛéÒ#¡¯ªÖ∑í\0†[öÙ©èùmzí”pÀÍS“¥˝ÉÌqˆÆW-¯‘ã|◊EXÄ[åÊJÜÔ{O%>Õ≠Ÿﬁü∫=⁄=xgXVoøˆØØ˚ë»˘rÒÊ,nßØn«”·¬ÃaË.ˇ\02;sΩ\Zë®rﬁ*÷nÂI÷Ì∑(≥ˇ\0ï|èíÙYò<]5V-ñ™ù‰öè>“Kæºﬁu—~3ñ®Œ!á¡‹5õ]Duÿ“·Ω£€¥{Wª)Ê_(„≤“◊≠¢ƒõmo`uØ›¨æ\r+ô¥aé∫íHû»Ÿhg†®f‚[√˚C„–¨∑‡„Ú√ÏTÊãÿª^ê≤ñåeÛúÚLzòy6ƒ0<*7Ò pn›£p∏#fÓA<{◊Lr€6>4¨Udb˙ì±Qï´r±bã⁄µ¨»á\r´lµ±[ıä2≈•êB)≤Ñ¨±Ìù∫íõ8nr™à,Ûoˆ¨ÔNm˛’ùÍ≤\"Ù≥Õø⁄≥Ω9∑˚Vw™»áKï÷:Ækà‡Ç,lw©kãMä≥vTç∂løz™\"…Ïsgä àààÄàààÄàààÄàààÄàààÄ•æPP•æPAæ∑œ¸Æ¨V˘ˇ\0ÄU“—Y¸[Èß‚ﬂMJ»¨˛-Ù”Òo¶ÜïëY¸[Èß‚ﬂM\r+\"≥¯∑”O≈æö\ZVEgÒo¶üã}44¨äœ‚ﬂM?˙hiYü≈æö~-Ù–“≤+?ã}4¸[È°•dV˙i¯∑”CJ»¨˛-Ù”Òo¶ÜïëY¸[Èß‚ﬂM\r+\"≥¯∑”O≈æö\ZVEd\nbmwãÒ+T—:\'XÓ‡Q4÷àààÇUñ∏T≥U˚$èJ™≥áŒ≥¥!π•Æ-p±\nÍ°¯√÷§≤îA\nQ\"êÉ&≠¨SV¯¬5‚\nÏ-Ub\nÙbµi⁄∫^Ü2ÃÉ65¯êo…Xtf∂¨ª…-nÊüa;˝ÄÆsL7.—ìˇ\0Ë}f\\B?|R±î√~†„∏ΩsŒÙ‹W≠öøJ\Z@∂wÚtÏwìOx€≥iÈ%{˙æ^¶¶<çê⁄iË ∏¨¨∆gn{ú·∂◊ÿmºÏù—X˘&fú∆¡j¶1¥TŒÍπ÷π7πz\\!«-Ë‚ïÒﬂü„o%“_¬l#Ö˚?XÆWÙ€åØîœ6√0ËÒºJ=íUT€ík∏Üç£ªΩm˝‹bácÃ%–z£µª’\\+	Ü§7ë:ÆÍïˆÜ[ìY≠tvJù}Fó3\\aç§è\0∆•Ÿ£Û2ªÄ∂¡~„⁄™S	1Œ[\"Á°lF;¸ù^ÌØcÌ∞k|‡F„ƒl;l´f*a êÕçf∆€fÓ*∆o|òÊE√Û\0qæ8ßñaÂ8\\∏¸uOƒ†π+®»yÊl?`3<–‚0;kN¿ˇ\0hΩ¯¥ûï‰4£ïˇ\0rô¬øéÊî-3èùµΩ€[]M–Gà1D–ﬂï®Añﬁ±†_ÏuæÁit¸Øê≤&?\'ÖQ%3Ë¶wYk_‚◊w≠À‹¨◊®nıÛÊj˙µ|È¬ÌØü UûπB¨∑hrƒ¨‹±*≤ÑDD%î¢Qd¢»!ŸBïÇÀ%l≠‘ü‡Â™hù∂ÌqZ’ô˝\Z_UëDDD@DDD@DDD@DDD@DD-ÚÇÖ-ÚÇ\rıæ‡ub∑œ¸ÆêæààÄàààÄàààÄàààÄàààÄàààÄàààÄ¨C(-‰Ê⁄Œ°WDgàƒÓñù≈j[[3ÑF2u¯-H¶ PEñp˘÷vÖäŒ:Œ–É*ØHz‘∂’zC÷§Ö,•%î¢\"\"≥j›\Z–’æ4Xµ~\nÑJÙbµRõÇÏÙ˛7váSo#çùe¡ˇ\0P\\VòÓ]ßD_ıÉ#ÊÏ®5RD⁄˙Fû/eÆ≈¨Ô\\≥˝∫G◊À>;B8À#⁄Ë1(‰ì›<öÙyàâ≤éM©èÃäS∑\0€˝«πy\r‚Û’bykw\'Mç@bi?6`Ø∆ƒ¸@^≥(éqCàdlu‚õÇc%è‹$uG∞Ô!≈sΩVñ≤¸¨köJ˜“b0EÜ∂‡F¿xÆS*ºE‘xÑNÇxœÑ◊q Ò’n≥Â	ﬁÿ≥bˆ;ÕjKåN‰ﬂ’vÂL∆Í=f\'O±≥’F»˝§^ﬂÛ¡|Í\Zj‹¡à6èåæB|\'¸ÿ«Y«Ä˚◊‘Ãe∏∂\'Ñd|º˛Zûô◊´üx/˘Ó>Ë\'‚@‡üÙ<æí¸NçÚ-<ût≈,∂;√M≠˜ÖÚ≥∑ä–VLç˚%dÚ7›ºüÊç/bqcô∫,3·†cp˙f∑h{ÔcoÌXeT”Ã—aœÀπZù·Ã¡®\ZŸH› º˝ç˚KS‚W©‚ælÎËT9|ÈäÔ™R™ØVeUû∑≠.X¨ú±Uë,¢ Q\"î≤\",à\n¢≤ÖíÑ¨œË–™ˆV\'ÙhQb≤\"\"àÄàààÄàààÄàààÄàààÄ•æPP•æPAæ∑œ¸Æ¨V˘ˇ\0ÄU“—Ÿ»•gùghXŸgùghA5^}ÎZµ4Ú9¡Ï±ˆ¨y´∫ÏÔMµ•tV9´∫ÏÔZ•ç—∫ŒÔÈD”D@@à7†Ì∏NO»YC%`8Œë›ãWbÏf¢öèv®Çñs∂ãõ«çÄÿJÛZ^…4Y?√\'¿´d≠¿1äQ[C,æXaµ⁄ÌÇˆªMÏ7Ì⁄€¿4ëîÒLùÑ‡\ZJÀïxô¡Åe\r]∫è‰ˆx∑¯MŸ`Ú`\"Î◊ÊVa:uÀPœìÿÏ71Â¯]X$≤7Vj[ãrvŸ}Äl‹|¿Æ≤Ó∫ugOœ—ïr*oäZy‰Üxﬂ—∏±Ï{K\\◊b;àË[¢rÎR>¨^Ø$f:ú±òËqj?\nJw›ÃΩÑå;”⁄/ˆ/’¯$‹±f⁄ï€4ëÇE‘˘À+Ωœ¿±\'	√„ÿig&‰y>sÆ:§√±\\/It–◊’GÖÊ˙vÜER|Í¿‹\r∑;Ÿº¢„bÊ\Z8œ”ÂgœGWq≥¡´°ìhp;õ}Å÷¯<ˆuŸã¶v/£z¯Ò\n3·IáJ˝Zäs’€ø∞€ÿJ„fΩmÏÍÛ7ÇR∂á=`*@œµ6€në ?aÈ_+˜MêÅ◊n	àπ˛®œ‡˛∫ÚTπ˚:e\'Û:…jbc<oà¬\\\0Ë÷6Ï*Ò”>*≥pÃ	≤˙—No˙ q¶ﬁ¬S2Êj_ì≤é\n‹	~«Œe«…a˛Ë\'⁄æ;ò0¨âÉ‘‡Ÿ^•µ∏ÂKu+q6Óàu#ˆˆnﬁI;ºÕflŒŸÂÊéùıµqøaÇÜ-HÌÙãx{∆ÀÍ“‰Ã&”«äi\"≤#(\Z–`¥ŒíS√^‹;<ì¡5ØF\Z9√)Úˆ6}Ãå-£•a∞;c™f7¬¸7ÿˆûëÊ^ß≈k1\ZÁÎ‘’JÈd<.x`‹=Å}˝\"Áö¸„à≤ZÜ∂öÜújRQF|[˚]k\\¸ÇÛ»∫c>‘µ¶w›PôÀ|œTÂrÎ≠]Âmê≠Zå0+≤+PDDD@DDDAE(àÑK\"ﬂ?£B¥+˙4)H¨°d¢»!∑ \n∑ 7÷˘ˇ\0ÄU’äﬂ?\n∫B˙\"\"\" \"\"\" \"\"\" \"\"\" \"\"\" \"\"\" )K)@DDE(\" QDD@≤YYâ¬frRy%VA~%Ì,qkÖàP≠XT«˛’øj≠k&ƒYMëH_G≈Î,Zó¬*d•Æ¶~ºR∆v¥˛–wværêÑ~Éƒhp≠8‡í‚¯Pa˙B£à:ªUòÉFÕv_èA·‰ªeú∏tëÀMQ$æ)¢qdë»“◊1¿ÿÇ‚éãW`ò≠6%Ñ‘…K]L˝x¶åÌi˝†Ó Ï#bÓï‘XfúI1\\:|?HtQ[B´1mv_è\0xy.Ÿg._á¯ÈÎâ∆ın)=´ÁÕ‘µ”‘ƒ¯gâ≈íG#K\\«b;à[ı´oØÀÈaò≠VT ö\nô©jY‰ÀÀ>!yÊH∑2_jŒö€∞aöjÕ1Pb–\röµ¥‡ì⁄[k¸WªÊúh≥˜X‹´ó≈w <ÀìÊ√R÷ÚØkﬂ‚ø4∂e◊`ªˇ\0≠ü«ˇ\0±sÀ	4‘≠8∆ôset\nJöl.úÏ‘°Ä0é«ë≤Á5µ”’TI=T“M<ÜÔíGó9«⁄N“¨ED˜∑`*µ]+£·jI<eö¸UI$JÇZJ®˜≠»¡#’gπK‹¥º≠HÀï©À\'ÅZDàÇY\"îA¶ ÅrÄ;ñ—è§Â\\óI ˙/ÃÜÄ’·x\\≥SãéPñ±Æ#xƒ_‡≥ñr51€í∫\'7xZ◊∑Ãyrß	™ñö∂ûH*\":ØéFŸÕ>’„Í¢‰ﬁUôl∏È^ ƒ˛ç\n–∑œË–* ∫\"\"!¢QMî \"\"\" \"\"\" \"\"\" \"\"ñ˘ABñ˘A˙ﬂ?\n∫±[Á˛WH_DD@DDD@DDD@DDD@DDD@DDE(!J)@DD≤›Oë‰:˚Ø±jE–àààÄàà	e(Äàà2cã”báò%≥‹‚«‡*™lÉ\'OÎOrrt˛¥˜-\nT]∑Út˛¥˜\'\'OÎèr–à,ÜS˙”‹Ø‡∏åÿ.)Mà·UÚ“÷”<>)£ÿZh‡AÿF¬æ:»&óo–’‘xFúy1, AA§*(Å´§i’f\"¿-Æ€ÒË<<ì≤≈pÍ Y®ßí)„í9#qdåë•ÆcÅ±iqZ0lR∑≈)±*¶JZ⁄gâ\"ö3b”˚G¬6ﬁ§è”û	%v>§:(ØUH¨xå`[Y∑„Ìﬁ7ñ#ü·˛5ÎÑ5ÎcdXW“ÕAW-=LRE,o,|r4µÃp6- Ó!h[EÊIµw°ˇ\0ÉÉ„è˛≈¿€%äÓ]G\'¯36KÓÃ6˚<Áçc]W ‰Ïã+·Uu∏d8û!âFfwYë∞p/b=´√Èª*a∏9√Ò\"#%|nw M˘76◊∑∞‹/A°,‚˙‹µå·¯å’“`Ùn¨ÖØ,øFœµr˝$Èß6’≤zÜ«13R\"ÚcoÌ>’Ày6Ê∏ê\ry_%ŒVÒ	ıﬁWŒsó¶G*ó9k%	XïQ®Bä¢ QP≤D¢õ%êB\" YK<•\nA∂‘õsC≈»’˚w†´õ-e√AÒQ≤Ç1Õ⁄Û£óTYŒ›˘È_ù≤X√4wó`Œ˙EáZ™_¡≤IüºHw∞Ìÿ—¥Ì∞^k“v;é‚ı8ç]|—I7Ç#ÇW1ë≥É\Z‹=ªNÚºŸŒwßlnùì´°ü1S«ëKYOJÿ™ûÀm}…±ˆÄ~_úq;rÜÀÏ‚XªßπsÆOµy⁄âu‹W_„«åg*–¨MË–-,cûl–I[™F¨Q0ë¨7Ö—Õ]Eî¢E*Rà1E*∑ \n∑ 7÷˘ˇ\0ÄU’äﬂ?\n∫B˙\"\"\" \"\"ÿ!êÄC\rä÷∂	d\0\0˜X{PO!/Pß!/P®Â§ÎªΩ9i:ÓÔEÈ<ÑΩBúÑΩB£ñìÆÓÙÂ§ÎªΩì»K‘)»K‘*9i:ÓÔNZNªª–È<ÑΩBúÑΩB£ñìÆÓÙÂ§ÎªΩì»K‘)»K‘*9i:ÓÔNZNªª–È<ÑΩBúÑΩB£ñìÆÓÙÂ§ÎªΩòπéi≥Å¶ëS´ºÎwïTÇ	aÇ\"YJ\"*≈úw∫UqµX£Ûé˜J∆ùöœ≠êR∫N\nﬂ…Æ’æ™ı˘.Iò1∫6úµ≤’J#vÊﬂy=ÇÂ~á:!…ÚµÿU=F(‹E∑çµØ∑\"È@⁄€Z›;>’À/‰’n`¸}=3£ﬁb6Øwú0I0úJÆé°†MO+¢xÆ”cnÂ‚gn´ ﬁ7lÂ4’dDZdE)d≤î@DK \"õ\"*,¶»¶»!ŸMê@Wp|N∑ƒÈ±.¶JZ⁄gâ\"ö3g1ﬂÛ∞çƒl*ùî©GËYc¬tÌÅ…UB |;H¥pﬁ¢òHÒ4[Y∑„Ìﬁ7ã¡kÈ*0˙…©k\"í\Zà^Y$r7UÕp6 éFà÷aï6!ÜT…K[NÒ$SFlÊ8qÂ∏çã∏cÚaZa—Ó+ô˘aŸÀ/”â1Mñä∂ \rú:\römƒZ∆‚ƒs¸?∆˝põÆ…ÖøÇ©p˛Qˇ\0È\\bÎ±É˚‘Oıìˇ\0Jπ¸ˇ\0R/~u.~§Kì‡‡±Îç>±œcnx÷øcˇ\0Fi\'˙Ω/‹ı≈⁄|ˆ∆j[”cﬂ¨vïÅD[e\n•ï¢ …d®≤  ,Ç,äQ\"Y∞¨:≥ƒiË0 ijÎj©17Yœ>¿ΩÜm—&u xG ò÷ËË[nRXfd¬+ııI’›ﬁ’Ìˇ\0º:¶lÛäWGLÒl±Û‚–YK#ãuI\'e»Ÿ—~ÿÂlªò¥mÑglWI8ÃS`ıî2”≤’ôÕ|ÓÚ^÷ùƒãão∂Ïé_…fZçÃz~[Ì]œ$e#G~ü<ÈR∂O¿ùa$œﬁ$ê÷ÿvÏnÛ∂¡NH XVç2ı6x“=?+àº`ÿ≠Ø,Ä\\I ;≠∞ÌÚwüÄπ^wÕx∂tÃ„ÂG+S&∆1ª81ÉÉG€ºÌZ∑üSƒ¸{©œªŒôÜ|cüî®ì¡dmÿ»Y¡å\0Ô\'i⁄æï√ä÷ã§öÒù≥ª‰6%m61≠;≠ÙBQ˘R¢¥\\nMœJä⁄˙ÉmXÜ£}õ÷ÑEPDDDA•B °J ≈®@DDD@DDD@DD-ÚÇÖ-ÚÇ\rıæ‡ub∑œ¸ÆêæààÄàà•B\" \"\"\" \"\"\" \"\"	R°J	i-p ÿÖbFâ„Â<1ÂYgÃo“Ñ`≠Û∆«‰˛≈°DD(º„Ω“±¶v´¬ ãŒ;›+CMä+£d,¡&å—b4≈ºµ4ÇFán6‡}Ñ\\|WÈ*=0Â&∫*πhÒß|ÅÚƒ,Ë„qÿÁçª{ØÏ_çijÃ|UÔï´mb∏Â¸|´§Õ÷ÙÌñÍp⁄ﬂ›,„¿1gô†Øèh÷y\'Q÷‹w€¶› Ö√™wï”Ùc§ÊeÒQÄÊzîÚ~#vU“<ko˙H«O˚\\Xç¥Ù∑£weGS„8\rO ôC≥Ë´ÿuµ/∫9„–x€Å+áıºjeﬂqÕîŸÆÆb\"Y,•DSe6AK)RÇ,§Ó@.W–¢•2ë`•´•è§/Y˜≤·™ï~ËovŸgíÒyÙ[fèQÀ]ñë±hGÛu•èËv˝“Æ?eÿ¥$?\'zX˛áo›*«Úx∏˙„k±è‡¢¨ü˙W≤ÏC¯)Î\'˛îœÁ˙bÀvˇ\0ÌöI˛ØK˜=qÜy\rÏ¥~ˇ\0˝≥I?’È~ÁÆ2¡‡7∞&?ï/ëEïíÀl±EïîY\"õ(≤Ö(Ç,¢À$TaeÌt]£ÏG?c.Çù¬ì¶•v! ÒtÏﬁvùÖƒ^√‚lœE∫=ƒ3Ó0¯°x£¬iG)_àH-;7ùßaq\0ÿ|N¿Ω.îtÖáåπ#Gå4yJõ¡öv˘ÃE¸\\„º¥ü¸]ñem„è≠Iˆ£J:A√£¡[ëÙv”IîÈé¨ı\r>38Ô-$kÿ\0Ìe∑áË„/Rg}$≤JúM¬¯+…yvÒ#¡æ≠∂ÜÏ&Ó rvW¬t_ÄSÁm!S	Òâº,}ÉÀ∑âdu∂æOµƒ 3¶j≈sñ`®∆1⁄É5Tª\Z—±ë3É84}ªŒ“≥&˙û-∫Ó£:Êº[9„Û‚¯ÌAö¶Mçhÿ»Y¡å\Z>›ÊÂ|%*Mk∆/bã)EQæèÙæÍ¨¨“nó›Uê»à!®@DDDA•B °J ≈ïàÄàààÄàà\n[Â\n[ÂÎ|ˇ\0¿*Í≈oü¯]!}Y´Úa˜UefØ…á›UíDDD@DDD@DD(†\" @\nQ[`óPêÌ¨vì≈…ªf÷≈j[£îrNé@Kx[Ç\r(àX¢Ûé˜J–¨Qy«{•WQ~\nnT)U“ÙK§Åï€QÄÊJï2n#vVQ<krWﬂ$cßâ}Æ,@+ö¢Õú¶™ÀßH“÷çùî˘æ5ÄT|©ìÒ>ä∫3≠©}—»zzp ÖÕ◊J—.íVÁaß˘S\'b7ee∆∑\'}ÚF:xë∆◊ “÷çˇ\0rºﬂÀ’*dÏFœ£Æa÷‰Ô∫9OA„kBò€/ö≥}«6E6R€(≤õ\"îD≤ÄñSe6A1/SÄ1•‡∫€6Ø.”bæ∆W…8mY…¨_≤∞<-eú\ZÜñ´¢©ûj6‘ÕQR¿ÓPüö€Éoá±q˝<e∫00aÃ‰È™‡mCb?£$ê[Ÿ±2∂ö´∞¨ñÇø°≈#§∞ß}E√„pæ€€Åﬂ⁄æéïh¿ﬂû≤åÚ÷«aòé„≠5!hﬁ\0˘†m#˚B˚mÁí„ónª~yƒ\0*\nÕLú£Ø{›h≤ıG\Z≈v-	~nÙØ˝ﬂ∫U«ÏªÑˇ\07zW˛áo›*«Ú~+èÆ:ª˛\nG˙…ˇ\0•r.¬?Çô˛≤ÈL˛§m¸\Z‚}`œÿ}0Â+*#Ç@téÖá≈√Ωqâ\"í∫„|r∆K«ã9Æ Ó _C≈Îbó¬*_K]L˝x•gƒƒ∞É∞Ö⁄≥ái£.Õö2≠<tπ÷âÄ‚ÿS•\0- «“vlÈÚN–	[«-ﬂ)Ïp4[“◊∏∏Eà=,l∂ÀYY,ÉSdAQe(É/o¢ÕWÁÃ^F2AEÉ“Røìc `⁄@\'aq∞·ºÏYË∑Gï˘Ûë¨êQ`‘É^øóc fÚ;≠√pNÕ˛ÉJZA†ó	è$Ë˛3Gîi¨í6¸¶\"˚Ì{ŒÚ“vÌ⁄„¥Ï∞XÀ+oZìÌ4£§,=ÿ;2Nè#4yJò⁄Y[~S}ˆπ«yi;vÌvŒÌeØÑË∑ßŒöAÄOéL5|	÷◊÷·$ÉÅﬂ\'⁄Î9K,·z)¿©Ûûß„Û\rlyÉ∏K ‡F√∑…ˆ∏Ä9&pÃ∏¶n«™1|r†œW1·±±∑É84t|N“≥&˙û-˝”9f|S8cı∆9Pf´òÿ±ë3É84ƒÌ+‚YJ.≥¶+(Y(!QP•o•Úf˜UefóÕÕÓ™Í\nJ,™!B)PÄàààÇJÑAARà1E%B\" \"\"\" )oî)oîo≠Ûˇ\0\0´´æ‡tÖÙDDDAfØ…á›UïàÊkõ…Ã.ﬁ°c4&=£¬a‹B-iDDAÑRÄàà\nQDD@DD\0•ä/:Ôt™Í≈ùw∫VÑ_Çî@.l\0.l∏·dma¨ÛÛGk[L›gmîÓ:Fôeªç…Rµ\"’=,RnÖ›Î¶h√;˛Â#©¡±™\'bYKªk(d\Z·óﬂ#„“8€Å\0©—VL˝’„‘¯xêCÅ|≤Z˙¨nÚ=ªá≈v,cDπbæÜzL	ıbåâ“@ÍìxÍ5w„“-ÿWÛûWI;K\Z8É+6üÀÔ8ûQƒ,ÍJ»›≠…_trû\0ùˆ±±ök¡ÍèzÏ<~‰\'™¡Ò oî≤û!vV–<kj_a{OH„næñtp‹µ>?ñ™>T…ÿçùKX√¨a\'trû\0ùˆ±±wé_+6~úÔ^ü’;ΩNΩ=Ì…üj–Ëz\"ÃYo®ƒplÎÖ¡UÅ„\rlR÷j^j7ÍΩÆﬁssm¢¿Ì±w©∂gn!awãn®∂ÂÏÙIí[û≥C®jjÕIN˙ ⁄ê,â∂ΩØ≤‰ùÁv”∑rœJz<Æ»ò§wêW`ïû#ã&a\0ë∞:‹7¥l›£Ey⁄\\âö>RÊ≠≠¢ûR÷R∏€ïâ÷∏Ï∏ ª7é*[ºwäÎæﬁÚ\\è£ÏÂÄcíË⁄ªè¡ÈÕS†ƒv≤Æ&ÔsxèaŸ¥ãç´âp‹vØ”⁄=´»x∂öpmE>\röqZG ƒêÊõÎG÷uÄˆÓ;CWÊÏW¨¡±*å;¶íñ≤ô‹ú∞»,Ê˚:‚6Öú/vS/⁄ùñlqjÑ]XmKÄﬁΩDŒ¯æJÃb∏<æfÅ‰ÚuÒcá‹wÉ¥/,¶ Y/´∫Ï˙@…òVqÀÚÁÕDyΩÀ±l£∆Q…ΩŒkGÕ‚@Ÿol∏]z\\Åú±lçò\"≈pYlÒ‡Õ…‰Ág<}«x;BËŸ˚&·Y◊/Õü4o\r£/É4x I7πÏh·ºê6· b^=_◊]áBõÕ+D7Óïr¥\\Ÿˇ\0∫oï∞-!`í¬1\\S“C#√9W%¿\'£Xw´¸üâèÆ/e÷¥Oô∞C-Uh˜;OÑW‘säLEé’4µ&¿pµ¿±‹.Aÿn9u}N[=|S’¿Û∞ ›W1√x!W∞W) $∫zm!‰úW\"Ê	0º^0AªÈÍX<]D}f˛—ºÅ?3,c¯ñX«)ql•‘ı¥Óª\\6á-p‚”∏Ö‘t{ù¨…ÄGêÙíÚ¸1÷nä∏¯ 	74õ¿∏l>Ô	§Lëä‰L}¯n,¿Ê:Ô¶™`ÒuıõÌÈ¡¯%ﬂı…oÓ:fg¿0Õ/‡3Ê‹ï)≥];uÒ|ál«÷«“OOŒ‹|!∑ÑπÆkã\\p6 ãz\n˙πgƒ≤Œ5Mä‡ïO•≠Ä›Øn–·≈Æ9ßà+◊iK6eÃÁ\r-CÇÕÖÊâ\\~S‰àÊ”lÚ€∂˙ƒÒ∞ŸæÊ≈$∏›|:Ævã+%ñ—ä)≤Y6^ﬂE∫<Æœx¨ñêP‡îcîØƒd∞d,‰v[Ü‡6ùõÚ—fèks÷\')t¢á¢•~#%É!` ∞∫ﬂ\06üo‹“ñêËÍ∏ÚnDà–dÍ?ñ‹>Ω¿Ì{ŒÚ“vÿÌq⁄xå≤∂Ò≈d˚M)iäßã&dçO§:Æsnà>˚^Ûº¥ù∂;\\vû\0}Ïßó0Ω‡4˘À>S∂£1N5lÁ¬c∏K(‡F√∑…ˆ∏Ä9T∆ÊÀyè∆i©È™g¢óïdU,÷ç∆ƒèeÓSõs)õ1⁄ú_©5ìù˚ö∆cGéˆíSá…·ÀÍ3ne≈3n;Qã„ï&¢≤cÿÿ€¡å\Z8âπ⁄æ5îŸB‹öD°dñDbäHPäã(≤…B®›MÊß˜Uk+Pyô˚däT\"\" J\nDDäT \"\"\" ÑRT\"\n®AàÄàààÄ•æPP•æPAæ∑œ¸Æ¨V˘ˇ\0ÄU“—mÜgG≥{NV§Ag^ü’ªΩ5È˝[ª’dCk:Ù˛≠›ÈØOÍ›ﬁ´\"Y◊ßınÔMzVÓıY⁄ŒΩ?´wzk”˙∑w™ BXßınÔSØOÍ›ﬁ´¢h⁄∆Ω?´wzk”˙∑w™·JiV©…±cá∂Î\\—›“”∏≠k|ﬁN]¨;èB+B,Êåƒ˚‹J¡RàÄ•\0$Ä…Vö÷”7YˆtßpËA14S∞æC·`’UKﬁÁ∏π∆ÂBä\0I∞V⁄L›gmîÓU\'§1D◊2ºùªUV.q{ãúnJπB◊Ç©ÖìZT®Î⁄/Œ/ ∏Ì6!(eŸ$d€]áxø¯/–{H9_ƒEÑœQá‚ıp:\ZY+E‚éB65∂v˚Ÿ{[ÿø”÷πõä≤ÏI‰lq∏„u«/‚€§…Ë¥ÉÖ‚©√1äwAW⁄–w=ßãOOÌW¥W§gÂ)™p¨jüÂ<•à›ïÿ{∆∞\0Ï20ù“8€Å\0Øgñ3>•úùû™Mòa\Z∏>6·µÓ·áâ;“ˆ8x˛mÀx¶S«™pårò¡Y	Ìk€¡Ï<Zx⁄Z«π«$∑Ï{-+Ë·πn3X®˘S&‚}-[±Ü˚£ìÓˆ¸’t-i\Z\\°5Fã”¸ßîÒ≤ªêkÖÏf∑H˘›∂*Œï¥s^Üü1ejèîÚf!g”U0Î	˝á∑`\'¢«n˚-óéIgÿµ¢Õ!—“ardÏ˘Ø…’û.π}âÿˆ·†Ì∞⁄”¥q‚iKGïôà∂Q_ÅVéRÉé≈ì0ãÄHÿoÅG≥√Æß¢›!——aí‰¸ı	ƒ2ua∑Ör˙Â≥àmˆÿmh‚\nÀç‹=Íπç-D‘ï1TRÀ$5ºI±∏µÃp7∏Ö›Ëk0›:`ë·∏¥î¯~ëh¢\"í∞çHÒ\r∫é∑ë√ .=“ûè+2>%ë +\n— Pb1ÿ≤Vp◊∞:ﬂ6é x∫iÊ•®ä¢öW√<NéH‹ZÊ8Ç‹BY2õáùV¸c≠¡±:ú;¶íñ∂ôÊ9aêX¥˛—ƒ∞ç°S≤Ôò}nß,,/í?Hîqj“Vë´\"∆Ì‘u∏ÙéSv]´âc8]väT·∏≠4îµ‘œ‘ñ÷ü⁄F¬6´é[Í˙X£dSe6ZD/Gê≥Ü-í3X∂.¨É¡öì…œˆ±„£†Ôh^z…e/}Q⁄3ﬁN¬sæ6z—º%°æ-Ç¥x WÔsÿ—√y l#kxÖ…pz⁄ú:v÷·ıS’@·$3DÎ9éà+È‰L›ä‰ú¡-ÇM´+|bu˘9„æ÷<t{wÉ¥.ùù2éùÚÌVx—Ã%¶≈ÿ∂\n—„)§µ‹ˆ4oi∞ÿF—ƒ.{„’ÒØ{[-√tÔÇ\\sl;I4Ì˘ëbq¥}ÑªÌiŸ√1\n\Zú6∫¢äæûJj∫wòÂÜFŸÃpﬁSAYSá÷¡YAQ%=TE4N’s7Ws\r”Æ\ZÛMái\"Çác\"ƒ„h˚Í˚Zv?ı¿ÌÏ]ãGô€\nÃ9}ôI//¬ùaÜ‚é>2ÇMÕ«ÊÓ‹|‹ü°™√kß¢ØÇJj∏cñ[™Ê8o*ˆ[≤e]=>ër>)ë1Áaÿ£C‚}ﬂKV¡‚Í#Î7†Ó∏·Ÿb|≠óc—÷w¬Ò‹πHÓ2`Ô!∏~$„„0˘74kõ¿èÉªƒÈ#bπ8~(¡$2]ÙµqèPŒ≥zÎ∑áeâòÂÚ˙Yˆ<ïíÀ$≤“1^ÁEö;¨œå≤I(†¿hºe~#%É\"h-i;≠i‡ÕËˆß<bs∫IŸCÇPÅ%}tÑ7ÿ_f±\0Ôÿ”–}û~ÕT¯¶S…P\Z°G‡Ä€áV∏-¸Hæ€§Ì<\0∆Y|çL~æî≥ı%fO»∞öùG∞⁄·ıœkﬁwñﬂmé“vû\0r¢:W∂ƒ2Õ]$\rí¢ñxòˇ\0%“FÊáv6Ø3[Jb\'b∏Íu+ÊŸd(≤€,T≤≤ÑŸBÕAåT≤PÉ\" ÀoÉÃOÿ´ê¨CË”-µÇ,àX™àE*AP≤PQàà!ïàÄ†©Dààà*JB\" \"\"ñ˘ABñ˘A˙ﬂ?\n∫±[Á˛WH_DD@DDD@DDD@DDíÄ•	DDQXÖÌëúîøŸ=[°{Ai>–∞∑\nâ@∂∑ÿ¢∞‰ﬂ’wrë…\01€}ã>s/_ÏSŒ%Î˝äù6]¥Õ∞≥•<zg‚I7%@Rà©<˚TKÁ_⁄VTû}ã|„˚JüUä\"ê\0≤Pà$çÎ∫e,ÀÑÈ[¶…Ÿ˛†SÊ¶é; s∏E)‚N¡∑ ˆ8x`\nTÀ¨∫}ú›ñqL£èTaÂ9ÇÆ}õ[#x=áãOO¿Ì‘hßH”dÈ™0ÏRúbyWª+∞˘∞±ÿ^¿vk[x‹Ó€ÏrÜe¬ÙßÄ”‰Ã˝P «!\Z∏66˝Æ÷·áçˆ\ræW±¿ sÜW≈rÜ=QÑcîÊ\Z∏∂Ç6≤Fp{ü¯≥æ_◊/WŒ„ÿiWGP‡4Ù˘ì*T|•ì1:û•áX”ì˙98Ôÿ	€}án˛jË\Z)“$π:¢£ƒÈ˛R ÿÖŸ_á»5Åa{Ÿ≠m„sªlE›*hÍñÀîj\'ìkÏË*\ZKùLIÛrqﬂ∞∂˚›Èl∫»Ω˜tY§*:6\\°û\"5˘6¥ÍêÎó–∏ü8Œ!∑⁄@⁄—ƒë•=’‰ä¯fÜaàe˙—ØAà«b…ZE√\\F¿Î|⁄8Å·Ä]CEöB•√0˘≤ûuÑ‚6ª¡{rÍ\'Á#‚ˆê6É¥m∏2À.·ÔUÃÈÊñöxÁßëÒMÉ„ëé-s\r¡n Ò]€\r≠√4·ÇEÖcR¡áÈä-Z:Á\rVbun=#áî›ó¿ÈKGïy&∫ÈÊÜ^≠Ë1ÏÊ»“.\Z‚6[‡F—ƒ≤Sœ–H¯¶ç¡Ïëé-s\\\r¡n#•[&SpÒg\Z¬k∞<Vß\r≈i§•Æ¶~§±<mi˝†Ôl!R≤Ô8]~¶Ï,ñ\nˇ\0Em ·™ ˆ\r∫è∑ë√ o∏Æ7Ñ◊`x≠NãSIK]NÌI\"êmˆÉº∞Ñ«-ı},P≤ï6Se§ceÈÚk≈2f41lmIò\0í\'_ìôúXÒƒ}†ÌÕYXß&n≈,‹XÎ˘„(·YÛ\0õ<ËÍ…[·b¯+E‰ßì{û∆ç‡Ì6⁄6‹/ï°‹ëÀùst∏>X¬^\'mqdï4ÏdDmµˆ7˘#mÌ„r>l≈r^?-ÇM©3<#vÿÊg<qh;B˚ZO“F\'üj†l∞«á·4ﬁèá¿Î±áãâ∞÷v˝∂∏ìçe¯¸^Ωt‹j|πßÆz0®[ÉgJ=cF…ﬁ-àSçÕq8“ﬂkooœ¯çV_QEàS…MWNÛ∞»,Ê8o%UE\rdtSIOUƒëKµ\\«\rƒw8§√4ÁÇ∂\ZÉOáiäG%µ\"ƒ£h‹}økwã∂‡?ı¿Ïª~C≈*3VÑsæò5+†¿)YSÜ…(ºîÓ≥Ï∑ÿjÏˆ7l\\s√ÍºB¢áßíö≤ùÊ9aêYÃp‡WV–ÁÊ√Jˇ\0—ë˝“´üõ\'Æ:F‘Yµ,∂À≥Ë∏˛Öi$t…M˜µz¡˛ÇÇØ7B+Yéé\'…6:AkwüÇÛö3vÆÅÙñz$¶˚⁄ºvèMáTG=4œäh‹«±÷-#à+çõ€§ØÿXìd≈iÒjuÇl$“=Û:hu/F©„mª}ó_ä±∆4=÷]ﬂLπª9&5ı≤Íbò/T\0L‡#>∑Ô;7/œXçW*‚nßÒM.UÚ§¡fÌ•Eów&*Y°QÇ,¨¢»1!A$D`äHDbÙYïur” ÷Ìq‡™9§o®PBîD`ã\"*àE%B\"\nÖíÑÖ\"\"\" \nTAARà1E%B\" )oî,‚i{¿hπA∂∑œ¸Æ∑÷êg6<ÑÖLcûl¡rÉ[πºΩCﬁúﬁ^°ÔCM(∑syzáΩ9ºΩCﬁÜöQnÊÚız\nizáΩ\r5¢€ÕÂÍÙÊÚızl”Rï∞SÀ‘=ÍyºΩBã¶§Y=éa≥Öä≈H@DD•Bî!@Rä,ÇÄH6“˙C˘◊ˆïù\'§1}å£ÅIôÛÜÇE(Ö’ıMÉî\"˙Äõó[çÄ;m“æ\nWË®∞MVgi4yäC^ŸDÃoú8∏‘4›∑µÆÚm~\0m\\1aR‡yÉ¬j◊ÕCS%3ﬁ›Œ,q∂∫òÂ»≥Oú≤d»ÀñÒL‚7-lWEµπª¬¬»wüôΩ\'`4˘+H^/«µ·˚Ñræ˚ﬂ+ÿ‡	‚\n@Y lóOµú2æ)î1Íå#ß0’E¥µí≥Éÿx¥ˇ\0¿Ì“Ë´Hs‰⁄©Ë±%ñ1øê5¿ã∞Å÷·π√a‡G±…Ÿß“VOí¥É8ãàj‡¯„∂Ωè‹#êù˜ÿ6˘[çùb~\\øÉÓdœk((ec\\@{k\ZÖ˜Ävã˚V.SÃ⁄◊ÿﬂ-6É§ïÔevnâÆq!åècG@ª	∞ˆí±Êz˛2Œ?›èÙ*ˇ\0˛üÙÉ¸[E˛5ä÷¯=Áâ±\ZX´Èi)i#[4‚©è1≤˛ÉFÚ7èˇ\0#ø”ŸÂºÌ¢å++UÂâkÛ!ÅUõ\Z|FòΩ∞vπÖ≠ªvÏ‹E≈çÔ 4•£ åó]\rM√Àïﬁ#k⁄E√\\FÕk|6é t∆a:+©ŒÔ—Ïywä±≤∫â∏◊8&CP–IŸ}◊^÷ø\06Ø/î3ly/∆rwàbŸKú…K3$”88éV> |‚–vç∑º«Æ‚ﬂ˚rH%íûhÊÇG≈4ncÿ‚◊5¿‹F‚›0¨K\r”fòeÇá>Q∆E\"F´+ö6Úo∑ë˝¶Ò¬ÈKGì‰⁄∏*ËgéZØË1»s\\“.‚6k[éÁ\r£à¨ñæ9cp{«Ê∏Ç‹GJ›÷Sq<Z«0ä¸©√1ji)k©ù©$OﬁHÈx#a\nïósüß“¶âÒÃK¶’ÕZπ∏å@UΩöÒ˝ìn—kê∏u∂´é[Ù±çïäq‚fÏZl∑”è7b¢∫)R‘FQ∆^W◊¬‡©¶™Ü™éI ©Ö‚HÂåÍπéà<\nØáDÒu›Ù7íºZíø∆ÿ˘hËµZ a’ÂÌ◊#m∑w˚2ÀMH¬Zj3‡≠Ü∑ê√ÙÅE£òçHÒ€¿˚Wxnƒ—∂WÑd-.–‚4ÚS’¡á±íE ≥ö@ó˛o≈tç!dú*ó/œéeÍip|Cëèí6JH±\"Œiπ±gµT¶Õ—Ê˝Áôki#è•¬˘\Z∫®⁄\0©f´˘7q«Ïÿl9rÎØ\Z”Ú±J∆Àc≈úWº—nèeÕı◊‚s¸õï˚æªy’\0\r•å\'fµ∑üõ€`}-M÷ãGë»ﬂ¡˜Iíñ8F˘)√^F«[p\\wÆDŸ\\”Ωtm)irñ∑îÈ˛L…ÙÏ\Z¶§ÉÁ$„øhmˆùª™h∑GíÊ˘Í1N£‰‹ØAw◊b–\0⁄X¬vk[y‹ﬁ€âu-´ˇ\0QËÙŸ!E§¯9?Óƒ∏€â;◊B”s†ÕXéCÄRs\\øÇ¿i(ØØ#6\rc}√¡m∂ù¶√üYk	®ïÖíÀ+q‹Ñ-#±≤Ã®≤#(YŸEÆÉ+ÖŒ‡•‘Œrl“∏W)iÑX-1∆CˆØqêcçcò~¬\Z˙©ôq‹€õ]LÆñMæxTÄµ§´◊a˙Ì.km ﬁ:WÏzM‰∑6\\%∏téíZÈàê»zÌˆ[ÿø8i˘Ø†◊u4Æè\\k∏¸Eó,ìuªãñH¬◊wÖÇ˙ï±∂r\\Õí\r„•|¬-øzÔ.‹¸BƒÖíÖQäÇ≤*BÖ(à≈ïBï\"DBÖíÇÇ»btÆ≥wq=\"(›#µZ?‡∑…#aié-Æ‚Â ÿ€…√ÒwJ¨ã‡ààÇ\" \",‚ç“;UΩ˝FÈ™’æIy8éﬂúÂ»ÿõ…≈øÁ9VEÒü+\']›È …◊wz¡Ú≤u›ﬁú¨ùww¨|¨ùww¨πY:ÓÔZ¬îÚ≤u›ﬁú¨ùww¨ Ÿ ?ÆÓÙÂ◊wz¡Vc{fo\')ækñâË›™Ìˇ\0z≈YçÌôºúª˛kë}VR≤í7FÌWÚ±DÖ$-i\'bÅΩ}\n\n~Q√bû,äÕÅƒnR`sx.•ë¥måÊ¡!¬i„ãŒK#É”—sº˚Øù≤+ïj/Ha{∆≥“«ècÜ˛ÕÎÚMÈæ.bE∑†⁄v+µîÂè \r´µ¥Õ÷~ŸN·–∑∂t1¢ù∫œ€)‹:‹´¡ÒzLOóí≠§ô≥ƒ˚^œi∏Ÿƒ{7Á8‹ï!§ÓM—ô7Lô&Ø:RcˆPÉ\n«j<]F3√ŸãuyMR./∏ù§\r‰ãÆ_•¨ìåe,”4ò§‹˛óëı4ÿõÅTuâŸ∞;n—ÒÜ;}óZ—v†˘Ÿ\'HQöÃ´PmÓ€&˛iﬁ\Z	æœ\'⁄.><;≈≠Ô™Á¯],‡,∫÷°åœ]Ñ2∫<=çcŸÆ»‰ï¨ë√ßTÓ¯ŸQ∆≤eFè≥M=’Æ¡‰ïìR÷FeL@á[f¿Îo€çÖ~ü£åcXì1å:™\Z™)õ†ô≤õ¬î5GN›áßjÂûcr?„ÿ,îÀÒ∫9cqkò·b“7Çóû=W.’¶ÏBíø:‚”R7Uúß&n›R\\–\Z„c“A\\r¥ÇÚ∫·w )Ä•Jï∂güV˘u_ﬂ;¸’p†±œ´?¸∫ØÔü˛j÷ébxf#K]E]R öi[4N2π¿9¶‚‡õÏ_8ê\n+∂6am¨~=Oëpÿ≥ã„‘8ó+vb˝K^ˆˆﬁ€5ó≠™û∫∂¢ÆÆGKS<éñYΩœqπ=Â`O&2f2x∂Ì—Ù[§0zIÚ∆nÉÂù_‡ÕÅs©\\OúèçØ¥Å∂˚F›ˇ\0/Jπ˜åS\nJÿÒãú·ıMp%ÒlÿÎqF¬= x´.ø¶·ˇ\0R¥]˝\rˇ\0¶%/Yuı}å4K˘®“ß‘!ˇ\0‹\\êç•uÕè…Nï>£˛‚‰§m)è¥¨l¨Sè7b”ebúxôª—Z»≤≤Y⁄	5`—>{~^¨u$ê2™ÇπÃähm¥õ“/Ò\\UßTØ≠Ä’9∏∆/ˇ\0Ób˝v¨eé÷WËm9Áìg™ x};)È€©,ÚkÈâ¿m‹7tÓ^7F≥r∫9“ôˇ\0¯÷}“Øó¯G‘ik`;Tˇ\0˘M_wv•°ƒÚŒêiqö£IÜÀKjg÷\r‰„¥∫∆ÁvÀÆz÷k}º.å4y&o®®ƒqJèì2Ωﬂ[àHuEÜ“∆≥[§¸ﬁ€cJZAãßÉ.eX>M…Ùm=3©®#Ùíqﬂ¥⁄vÓù)iôÇ2˛Xß˘7(PY¥‘¨\Z¶r?I\'«h¥Ì›_E∫=~lñ£≈Í>M ÿ}ﬂ[^Û™KOŒÈ</”`∑ˇ\0€&Í0—vè%Õ”Oâbì¸õï®.˙ÏBC™,6ñ0üùmÁs{l\rù)È,z\n|ªï†˘7\'·ˆm=3©®#Ùíqﬂ¥⁄vÓù)i	ôÇ(2˛YÉ‰‹üAfSR0jôÌ∫In–i€ªú¨ñ›‘ˇ\0%Æv,Ä$ÿì–ª~UÀxfãp83~zßl¯Ù√[¡\\|&ªÑíl;|ükàW-m´,ÂlFπz,Ÿ§*VUc\r\'\n¿§\0ímÂ ”ªçˆ∏Ä8Ωl‹Ê≤y˘(°ÂdtúúM’c.I’h‡ÏB˙Ÿ∑1‚y´®≈±™É=\\«±±∑É84t|N“æ)	å◊t¨,±≤ÃÖH¡n¶è]¡k≤π@F∏∫R=ÅK_4P”ƒÈ%ë¡¨cÀâ‹\0^˚–Œg√â+Â√ÿË„fªŸ≠|å%£¬ÍÊÅÍ°É<aZÒ:RÁ9Ä5∫ƒ“≠–7ûÖ˙πç¡1Y1¨JÆ\ZL>ﬁfêÃIúù√TÒ›aÏŸΩyÛŒÀßYÜ+©y≈“Ù\'ïÍ±J„èUU|óóóâÍ1ùQ¨¬£	ﬁw\\ˆí≥ñr4Yøƒq¨RaÑÂ\n9-U[éØÉry6õ	·Ì$Á¥ß§qòE>ñ©˛M }ôKH¡™f#Ùí¥∫˜;NÕÓÂ‘g«dƒÙﬂÄ∂æ™≥¿ïÅƒCS4ö°€,ÊÅ{€Ü˚qÇf‹zl^∫¶Æ™NRyﬁÈÓíM Ú‚™Ko*¥”π˚’«¯‰Kì	Â<¶≥Mä:Hd§a÷„e•€‘◊L7^ú¸«¨É ?1Îe?(·±{Ãô£¸_5T:\ZåÃÊ\riÁ±ÉÜ≥è›ΩfÂ\"…∑>s 1ÎY4„{∫.z—Œ7î∆hƒqÕ~NhﬁÌ¬„è∞Ÿs ∏y7«)K4√Zõ®ı\Z‘›G˜≠\n\nﬁôo÷¶Í?Ω5©∫èÔZ\r∑ÎSuﬁö‘˝G˜™ËÆç∑ÎSuﬁö‘›G˜≠Bo÷ßÍ?Ω5©˙èÔZ4õo÷ßÍ=5©∫èÔZ–±≠M‘zÇÍn£˚÷ÑM&€ı©∫èÔQ$√SR™ﬁ=%hPÜƒD@E≤á ÷ªqX»dpÅ≤QZ{π*fl◊%UVj<ƒàEdD@D[‡Ñ8k…≤1ˆ†à†tç÷∏hÈ+>jÓª;÷πÂ2\råÇ÷ã”d±≠w~ÖÇ\" •@RÄàà¢\"êÇ√%kŸ©5ˆnrj”˙«˜*Ëö]¨ÜS˙«˜)ß\'Œ?πWV)#◊xPãR¬Ú,˜˜/AÑ“B◊¥ó;πzM\Z‰*¸·à\Z\\9±±±≥îöyMôzOÏ›fçVe‹\'Â(+)1\ZùWÀLOÄwm€ÆYg7ßIã§hzZW!EÉRÕ™ß©tµÂ˙éùÑ‹o¸;U}?GJ¬(Íö˜?ú=Ò…bÊ∆›S‡k[⁄?˚ÁÈk§°q’qiA≤ıYI‘î–MñÛ´\rvV≠_≠r˙Gûﬁ6æ“—ºqóΩ∆∂Â∏£‡çÓtws∏_Ç¯/%œ.qπ+†Èo!÷dÃF¢òW‡√î†ƒc±d≠\"·Æ#`uæm@Á´—é¨‹sÀ÷q∑YÀÏaÿyòãÛ)EﬁR—=#õpäLCWöÕP∆H¿·—Ò6 Èqõyﬂ‹Ï¸‹K»øì;ıN≠˚w/â]B`qŸk/ﬁ,ô”◊…ÑÕI2.0s3O‚ƒ yW›m€7/»zG¢§°ÃXù5É©°®ëëﬁÌ m\\pœuª_E∫B¢ãvNœ`‘ÂzÉhfqË¡Õ;√A€≥…Ï∏[≥ûéËœ•öñ±Ô¢êÚÿ~%&nÒ{l÷∂Ò∏ç¢‡Æ;Q±ÊÀ®ËøHT1·/…ô˘Ü≥)UXÂ;_áøÉ⁄wÜÉ∑gìºl∏[Àwó„⁄W∑”V	-^!°œ¥QkTR_UïÏ5õ~>ﬁéÀ˘˙∫)©ÍÊß™äHgâÂíG#K\\«b;à^Á=e,wEŸ¢é∂Ü±Ô§sÑ¯f-NF¨¢◊FÕk≠‹FÎÇΩÕ]&ß<ı¯k)Ì\"QEzökÍGà±¢⁄Õˆ˚xn;,Dóè€É)n™¶öé™jj∏dÇ¢ò‰äFÍπéƒ¿Ö≠ua (¢≥MªñÜÔ__\n`/m÷j≈Í,%Û™“oÏ[+I©∂KÿÌˆsH?j˝¯?·‘fRºE∏Ö3 n±`7ªÄÈÿ?‰ØM§ò#∆r9>,»§}k®Í˘-G9◊\0¥{Ôè±qø…´¶Ù¸yS&JÍönı/Eˇ\0–ﬂ≤%œqf4HÎ.â¶·ˇ\0S4a˝~ËñÌÓ2√D√ÚU•?®≈ˇ\0∏π1ﬁWZ—8¸ïiOÍ1Ó.NF“Æ>“±≤ﬂ\0Ò3v-VV *^≈°V l≤≤õ\"0≤˙˘G´≈3>GáS…QS%Le±∆.Hü`\0Oß¡ÎÒ‹Zõ\r¬iüS[PÌX„gíO\07ív\0ª+àa∫¡¶¡rÙ–◊gö∏ıkÒã∂âßo&ÀÒË⁄w\0≥ï◊S’ëÂø˜≤]/„&7µ·¨ÅßTﬁƒD€é’Ù4@?&ZT˛çèÓïrô§íi_,œtíΩ≈œ{….q&‰íwí∫∆àG‰œJ—±˝“¨Â5éâÎü‰äÕtŸõ˘3%Œû¢∆ˆ˙†.›~”iGHMÃQAÄÂ ì2çÉMH¡´À∫I⁄Èππ›œà⁄±≤ﬁªÿ¿Ö\Z§ê“v-Å§ê\0$ùÄ¥ÆŸñp3E8%>kŒ¥Ì©Ãµ\r÷¬pg±[\'AÓ˚\\v.ZM0 Ÿ{—^Oõ≥Ω;j3„[¡úv∞ñA¿è˜}Æ;9VjÃ8ûi∆™1\\n•’s˚ö∆cGéˆ¨≥F?âfån£∆™ısßsXﬁh‡—¿~’Û±ÿ§üo™ÆAXñïˆ)˜I∏-ìaocnZV∂iT≠T@XN≈\\4π⁄†\\ïQÄiq\0íæ∆Ö‘‚xµ.Ü”KYàT?R8¢ﬁOÏy\'p⁄£¬´qLNü¡ÈüWâTªR8ÿ6ﬂˆºì∞\r•vS√t\'ÇÀÑ`í√_§\nÿÄÆØYî;u~=èîÓg,æBG”≠≈pù·O¬∞…bØŒıQÅWTﬂ	î-;u~=yﬁvX/ãêp	≥ê™∆±˙πh≤Õtµ∏ÑÚÆF◊5ÑÔwI·~$Äº∂årπæjÃ¡ô´_Cï®úÈ´ÒûC¶uÓÊ5«{âﬁÌ∂ø@ZÙ´§cö9\0ß˘3(·ˆeØ)m“H:xÅ¬˜7$ïé=Í5…wJöGá36ßuU°≥ii5yKnë„ßàuÓvï‡iiaîãFÂÛ‡üµt·0bŸã°®~§U5âÓ‚66[‘∆tì∑¿˘&=_6ÎÙ]|⁄⁄8b&Òπ~ﬂè\r¡€PÏ∏&0ÊºSrã∆∫‚˙˜Ë„}¸nø,i?ß¡≥6)ALÌhiÁtl$‹€Ä>—ª‡±èÚnµqs\nÄÕa…¥éõ≠-Úïä°gï]wéOΩÇÜÚç∫˝e†¸9µ˙=Ø•-ñû9ÍEÁoÉ ∂¿jÉ∆÷#„⁄∏.àr#q™zå«ôÍ>M…¯}›QTÛ™g#Ùq¸v;›ﬂ_;iVLz¢:<\"/ì≤ıôGFœ`ÿ˚qˆpÌπ\\3úÆ£¶=GP” •¡4p¸\nÆ©ì÷ÕX\'ßÉ_X”∆>·ºhŸ~T≈@Â\róﬁ≈±∑‘‹Ω‰ìºíæ˛Q—^\'ö∞#èWbÿ^É>C8åö¢w\\èlŸpE…€c`U¬pù¶]¯ÂNﬁ°z≠!‰å_\"cM√±ñ¬˛V>Vû¶kE;:Õ?x;GƒÂWyw7–àQBí°Bî(!¢ ÑDDAP≤X†\"\"\r‘æê≈Ñﬁu˝•gKÈXMÁ_⁄P¯¡öè1b¨¨‘yà;VDDÈ‚Ú1ª˝´Ê2\råÇÿœBº´\"äBÖ(âDDDD(HP•´¥·R[\"yi∫ã¢tô0™*\\k∆*ÖX¨Lk*ŒÊ9∑q‡∑fœjÏôñX¢—é2Ã*ZlYÕåG1°-påo/ MÜﬂ˛‚öE—Z∆À◊dÕ!‚yCã√$ﬁ–<¯πŸ≈Æ˝áx+œóÒ›Ó:Ãü+0U5Ú∏∞Ï+ÀM!sé’⁄ÙâîÃ„ó%œZ8åöf‹‚∏CGå£~˜9≠7âeº!≤‡pÌ˚zW\\.„9:ûäÙçKÜa”e,Ì 92∏ÍΩéœ¢q>r>6æ“–vç∑ÂiWGuY\"æ\ZäiÜ#ók«)á‚1ŸÕë§\\5ƒl∑¡√h‚Ç]GEZD•¬Ë& y÷à‰ ÔÒ∏:çƒ˘»¯Å}§\r†Ìn\nÀç‹IwÎô¬ÌW]z#u;⁄Ê∏¥ÉpAµó⁄“¶éÍrMlTsåG-◊çzF2◊¥ãÜ∏çÅ÷¯8m@Ãê∑rΩe7„Ù^”¶?áÕJ‹Jfb41¯2≈#\Z${7y}>”Ò_3J˘FöLπ«$»k≤ΩOÖ+µÙ/‚◊ç·∑Ÿ∑…„≤≈qaPÎo^«FZCƒr6.˘ah¨¬™|\nÏ>CvT3qﬂ∞8\r«‡v.|5ﬁ-r€∆Huú±´È; aˇ\0#≥;h˝ÊØ)’i†hÁÒcÜ–vmÚ{,W)]%ñtÕé©£\r —CÖ?&ÁÿÕnP´X˜m~˚Ï{–vÏÚwçó’L™»:s Tm¨mUMlUq;œ@Á€m∑\\∞ÆBÔ!›áÓ_£≥óÁGCQ°˝p±óWØ´;rç3˛v3_◊ﬂ˜5x–¥”?Á_5}}ˇ\0p^1k!}¢»P_¢õQ¡RÎ6õnR´£‰Ã€[Å‚0OáTæ	uÉ	AãÇ¬A¸#35ss[gTøòCR∂±∫ŒiÈ=ªó°ô¬™\rø§gÎ”ˇ\0	y“µ[o≥öS˛©\\Ó?⁄5æúŒ∂nQ≈u-4F_ìtcaª˝ë.OK›µw]%P\Zº©£v}\\\"ﬂÓƒÆ]XNﬂEpË∑J\0è*Ü/˝≈…_i7_®t}êqHtö)ﬂqIçS1î≠ë˙•÷⁄z∏≤‡Yì©¬1\nä:ËL.-|nAˇ\0û*cî∂ñ<≈ñ¯äó±`ˆÿ≠∞/bËäˆW,ø≈©‹&ôı5µ’é6}§û\0o$Ï,Ø«±jl3	¶}MmCµcçøi\'Ä…;ó_∆qL;Cÿ4ÿYö*ÃÈT¿‹Gh∏§o\'¯˚>\'mÄÕÀ]OM#ƒ∞Ì`≥`Yrh´sΩ\\a∏Ü$—v—¥Ì‰„øÅ˝£¿.%+ﬂ,èíWπÚ=≈Œ{çÀâ⁄I\'yY ˜À#‰ïÓ|èqsú„r‚víIﬁVI41]gD?õM)F«˜JπS#tèk#cû˜÷µ¢‰ì∏ƒÆ‘‹6-ËØ•Ã3ˇ\0÷,—N\"ã\ré≈‘ÒÄ‡Û√ 7ˆÿÌ*gz—@ç®\Z\\@h$ì`\0π%f\Z\\‡\ZúMÄ‰ûÄjÀ∏¢l—ú`eNi®ivÉ∏˘ìÎdË#˝›√¬›nZÂÃ—FOösú\r©ÃÛ∑_\n¡úvƒxI\'AÓÓvÓWòqúO5cU8∂3Rf™ò¯O;\Z—¡≠\Z8⁄ß∆1—çT‚ÿ’Kß™ò›Ô;G¥ph‡œë˙√UÇÃjIˆ˙1ÊÌı≠VË©öÁã»≈AÀu$öØ\né—¢üGò1ÿ·≠}È£aöF∞ÿºlø\r§.©édå∑çR’·îÿ<8mci›=5LæÌ¡˝;∆˚ˆ›xM—ª+a?ªL…P˙5≠-§Üﬁ2∞∏l≥OÕ<:m}Ä\\≥6ò˘ŒYÖS·”’¥≤jê˝wñû`±ˆÌ\\.ÌÈ∑∆(ò«õH¿æÖêC§<z”≈*é+‚øi]„‘ˇ\0/œ}¸⁄£ıœ—ﬁIã8„òﬁ-ò±Góp©_>%U$ûÓÁPw‹ÿ››◊$/£¯0˛wˇ\0´T~¢πë?3z\\˛r◊rŒWVÎ˛àÛöU“!Õ\\ﬂ¿©˛L X}ôGB¡´Øm“H:zÒ$ïŒàY∏m+ªjÈ$ìQöò›™ÎÓ≤Ôz9À¥97/¡ù≥‡tq∏áaxaŸ-K˜µ‰√àÜ”¿ëêÚ~ísﬁë°%á¬¬pgW&ˆΩÌ<7¿<#¿üÛé-ú3Ò\\bmg∏ZY~Nùú¡˜ù‰Ì+˚ı\Zù;%Vû1π†õíß√†ï˜ô±í¯⁄xMç∫H¯.3è‚œ≠öIfëœë‰πŒqπ$Ì$ØÅŒ›mÍº≥9Áz∏·\'Ö…ÑÓ÷q]EZ:á•®ÃŸ∫†·π3ªß®q-uI£èé˝Ñç∑ÿ6Ó€¢≠S„t5ü8Np‹ü@u¶®q-5$~é>$_a#mˆ\rª©ÈOH£9TS–P@Ï;,·˛’k@x5≠∏nhÿ6‹ï∂ˇ\0XŒæ÷≠+i\Zl·QOáaTˇ\0&e\\:Ã†√„\Z†∞=‡l÷∂·Û{nOÇlŒV√Õ˙°¢ùŒ\rkd.&¿rOB‘íMC÷≥+ﬁ‡…&¿\r§ï˙W1dàqÕd,5cÿvS∆®!ëÃ•ƒ$n¨±≥õ¨uµO∞í≥‡ÂÃøÇËÉ•Õô“úTÊöÜÎ·8+ÕÃ\'Ñ≤t¸›¬Ó›«Û^a™ÕXÂN/éTKS[9úv5£ÉZ84p∂Î˚ﬁæ/ûΩ∆úÛ	WIïr∆\\Ø8≠&]£4ÔƒxNÚ\Zi‚–√f€Ÿrr¨ìM—\"m–ı”∆iõ⁄™ÖgÒná°Ê›Z⁄iYAVoM–ıõt=CJ»≠5¥ÚVÎ5«q*ºåtn-p⁄à¡DA®D*\nDD©}!ã	ºÎ˚JŒó“∞õŒø¥°ÒÇ\" +5b≈YY®Ûv ¨àà,≥–üÔ* À=	˛Ú¨ãR•@Rà E!DDA(àÇBïJïJ+&íZÁ•b†Ù⁄?Œò∂FÃ1b∏4∂pgÅ‰Úuﬂk>„º°t|˝í∞úÁóÊœö5àÚ#¬≈pVèG&˜9≠7y l∂÷Ï∏L/Kêsñ-ë≥8∂	.´«É4/\'ìû;Ìc«GAﬁ–±ñ?g≠KÚº⁄».’ürfù∞	sÊç°!ÄÎbÿ+å§ì{û∆é…aG8∞›±\\r‰ñi”¥U§Jl\"ä|´ú†8éLØeâ¿π‘é\'ŒG∆◊⁄@⁄—∂‡–“¶é™rU\\tsG-WŸÙåd9Øiy≠«sÜ—ƒ\0O—^ë!¡i\'Àæâd ˇ\0hùJIÛëÒ˚Ho¥mﬂõ5w~´ô©vLw@YéLA”‰◊Rc8ÌRUÛ¶1Œç€@u˜ë“6f·DhH≈4ø„¢ˇ\04ˇ\0ìŸ∆ºˆå3ˆ!êÒwÕ^T5+∞˘ã®fÓ;ÄΩè¿‹/[•m\Z”¡ÉSÁ|ìÔ ’Òäá”>2Ÿ(µΩáo\'~<=¢≈}π¢ò2DsÊ],à √hàÊ¯tR∂W÷Àº7f¬>è6h7˘ëi”1~ÓåT1í`“3õøøàÊ˝Q√^ﬂ:€w[Wb∆˜wÇ¸Ì»ﬂÊﬂÿ~Â˙79˛t43ı\Z◊ùÈ√+`¯%Ö‚Yoîè	«hπ¸4“6∆úx#Ÿ·∑YtLÂ˘––œ‘h\\&WzøÍ…ß)”?Á_5}yˇ\0p^5{=3~uÛW◊ü˜„Ä[«»ó–ê\n\0YÖ@)\0YÄ†ŸH?É˘∆~∞]Gòïäœ™S˛©\\¬å~7Ûå˝`∫è·1˘ÿ´˙•?Íïõ˘E¯ÊT∂ÙFoû8rÓé‹˚ÚP;{#_ú„:•v≠+’2éçà6æ≤%úÁqc∏‚è¢ÕXu\r^àQ”ƒ¿◊I#Â’}=∂Ó‡G¡~”ñ7CégZ∫ú5Ìíùë≤(›!h⁄·Ï€k˚å~.Á2ƒ›|™∫£)7*cÜ™⁄£7îØÂ¸.´ƒ!√pËπZ ßà¢e¿ªèI;áµ|Û¥Øs°A˘NÀﬂ[™ÂªuÏ±¨W—\r>ñ&é≥9T∞7≈\Z.)A€…«–G√y€`8§é|í9Ú9œ{âsú„r‚víOΩ&íÂ3IT~π^r c5ÿ¬À(„|≤28òÁ»Ú\Z÷¥\\∏ùÄƒ≠ëD˘•dq1“H˜µå.\'`\0\rÂv¨#√¥=É√éf(¢≠ŒµQÎa¯i7m?§}∏ÙüÉxïnZ4√¬Õ‡–cπñ´s•S∞¸1∆‚êz«Ùìn€ï»±Ã[Ã8ƒ¯é)<ïUı/ªûF“w¥\r¿n\0,Ò¨OÃƒ¯Ü\'<ïuı/ªûEÀé‡–·¿\0∫÷Éa∫$¡`ÃyÆÍÛmKu∞Ã%«—ˇ\0⁄I–GO\r√m»œ„›ÙaóL;D∏,õ6¿ ¨◊P“Ï/	qÛÌ$Ë#ßÜ··nÂ8ˆ/àÊlf£∆™]=T∆Ô{∂\085£ÉG\0£1„XÜb∆*1Lb°’ìõπ«`ÉZ84p\n•E∆´∆⁄ˆ\n…ÆÔ£\\è÷X,¿∞\"¡f\Z±z“4Ωum‰¨7	¡w“1`ëêhh<e|õ€‡Òo@„º¯#ny%·ò>3∂ê⁄c¡ôcCá∏x ˜ÔoÇw∑†qﬁ|˛7Hy◊Œ¯·ÆƒHäû;≤ñëá≈”≥†tù◊<{,mÂ‘<nœπ˜Œò—≠Øpäû;≤ñí3‚ÈŸ–:NÎû>¡`ºƒïn#z¨Bƒ≠I!≤Gó≠%l!bB®ÍÉÁ{˙µGÍ+ôÛ7•øÁ!˝w*üÉÁ{˙µGÍ+ôÛ9•ø~◊rÁóø¯ˇ\0⁄«wÓ]∑ d:,üï›§- —M-4:Ø√±&Wì‡>Qk4kl‚xÚ¥7Ç‡t∏.?û≥$W”``ÇÅ†jÀ3≠™Á_eÅ-ŸªâΩÄY`∫m∆ŒmÆ≠ÃÃn\'ÅbCë´¬àºLãpƒ« „∂ƒ\\≠ΩBty˜7‚π€õ∆•÷ê¯1B“y8#æ∆0ttù‰Ì+·’˛è›]ó1hJ∑û,[Fr”‚Ÿnπº¨\Zı\rçt∆u∑€wHµé—sÛj4§Íj·4ªΩ6?ÛZô‚öÆH∫^ã4w3I>hŒú;&–xSL‚ZÍ¢õèçØ∞ë∂˚›ﬁÉ/hJØû\\cIÚS·YnÖº¨¬:Ü»˙É}ëç]◊Ô7∞⁄n<Üï4âSùj‡•§ÄaŸnÉ¿†√£≠c@∞{Äÿ]oÉF¡ƒó.]bk^±“ÆêÍ3•\\t07,–xt`5¨hx5≠√sF¡ƒü\0VE\Z“˜5¨Œq\0\0.I;ÄrI:glZ◊=¡¨isú@\0íN‡Óπo\0√4;Å¡öÛ≠;*≥mCK∞å«Ã[/AÓÓÈÀò°º\nü4Á*xÍÛÖSK∞úÁ—ˇ\0⁄À–GO\r√¬›∆Û>?âf|jß∆ÍùS[9ªûÌÅ£ÉZ>kG\0?>ßã¯ô£0bY£©≈±∫óT÷‘π«`h‡÷é\r˘J”ƒ¨Q\nÑD\"±TB!DF*Ão4G)ækïr°R±—ªU√j¡ZçÌôúúª˛kïyË›™·µ ≈)PQDAä)PÉu/§1a7ùiY“˙Cy◊ˆî>0DDf£ÃAÿ´+5bƒëñz˝ÂYYg°?ﬁUëjBï\nQ*†\"\"(§(R†îDA*BÖ!í\"Ö(Ÿ£»9«…Ç,[õVA‡À¸‹Òﬂk::vÖ“≥ÊO¬≥Œ_õ>h‚›_¡Z<e,õ‹ˆ4o…aG8†^ã!Ê¸[$fqlmY[‡ÀØ…œˆ±„£€º°g,~œZóÂy·¥qY.’ûrÜûÚ¸˘ÎG=û/Ç4Rù˚Àÿ—º¶√aF€Ö≈F›£rcñ“≈∏+Î`åGeTQ∑s#ùÌhÏ\0ŸlÆ#¸c]˛%ˇ\0Ê©\0≤Qæz∫öêﬁsS<˙æO++ünÀùãWÿÄ)∂√ÿäÎ⁄{ˇ\0≥ö7˛Ø∑ÓbıŸ»~SÙ5ı\Z/◊»ÈÔ˛Œhﬂ˙æﬂπã◊Á/Œ~Üæ£E˙·p˘?˝m ¥Ã?*Ÿ´Îœ˚ÇÒ†/i¶A˘UÕ_^‹èt«»Õb»:™@T\0Y\0Ä,Ç\r¥ûóÛå˝`∫á·-˘◊´˙•?ÍïÃi=.Á˙¡tˇ\0¬T~UÍ˛©O˙•b˛Q~9`Æiúëìtgo‚Ÿ‰†.µ¶qˇ\0Stg˝˚\"KÏXÂ!≈7† Ü6^ÁBÉÚõóæ∂?UÀƒÄΩŒÖø9ô{Îcı\\≥óîèë§q˘AÃø“3˛π^~döVE$Øpk¡w8ùÄ\07íΩëÖÙÉô§g˝r∫Uã\n—ÆH√Ûçd,ƒs,«|ïöy*`7Ω«¶ƒ_é€%7®7a8n°Ï\Z,kä*ÃÌWu„v—¥ÏÂn=\'˚#â\\ãƒkÒ¸^z¸FyjÎÍüw<ãπƒÏ\0√p\0v≥ƒqöªöZÃB©‡πƒ]œqÿ\0‡\0Åu¨	√¥IÉ√ò341’Ê˙ña∏cç≈0ıí[qˆ‹6‹â¯˜}`x>¢L√öaéØ7T0ª\r¬ún)ø⁄I–GO\r√m»‰πÉƒ3/Qâ‚ı®¨ù◊{Œ‡84\rÄ‡≥«±z¸®ƒÒjá‘÷NÌgΩﬂ`ÄÄóŒ≤≤k∫5ŸX®oåãX\nÕK|1Ó≠\nƒX.•êÚ^Ç‡åŒ∫A<%ñu·„+üΩ∑i˘ΩéÛfÔ›ërvÅ`≠Œö@af¬Aá8x ◊Ôi-?7à~Û≥Üœ˘«Œ∏„±M¡ë¥S”0¯∫vu[ÌÈ<{,7À®1“sƒÛ∂8Í¸I¬8YvSR∞¯∫vuGI›s«≤¡yb¬$-…Ø≠A2*£%l!`B•¯2~wpˇ\0´T~¢πë3öZ˛r◊r©¯2˛wpˇ\0´T~¢πë3∫Z˛r◊rÁóø¯ˇ\0€Q[$Ω\"˝jõı£\\ÄÔ]$Ω\"˝jõı£\\Ñ≠cÌf∂√[WL¬ j™òXMıcôÃÈ∞*’^)àxªbæOˇ\0íˇ\0Û_<Ó[j˜«Ó≠£\Zä⁄∫ÜTU‘Ã¿n,ŒxøMâUñE«Hˆ≤6πÔq\rkZ.\\N¿\0‚UD¿„¨»πG∏Ä–…\'`\0q+∫‡xV°Ãü2ÊÍHj≥ïS5∞º ë¯∞ı≤t”√p€r1¿pl+C8$ó6¡nu™a~Ñ8‹RÂdË#â·∏mπc2còéd∆™±\\j•ı5’÷|éÿ\0‡÷é\rÄó?œ¸k∆ÏÀôq…å‘‚∏‘úÊ∂†›Ôv‡85£ÉF‡ÀÂ«™b“T.íFv‹j©bép=Kí±WF€Õ@ı,XÛÅÍXµäh€y®©ãP=K•âMoÁ‘±D—5ÕÂaÚxéÖ°eéâ◊oƒt¶ë¨®V¶âØo+Ó-ËUUà+Ω≥7ìîÌ˘ÆU–†ô#tn’wˇ\0+f9+y9w¸◊-2∆Ë›™Ô˛P`Ö\"\"\"\nÖ%B\r‘æê≈Ñﬁu˝•gKÈXMÁ_⁄P¯¡öè1b¨¨‘yà;VDDYËO˜ïeeûÑˇ\0yWµ(àà*îQ®RÄ§(RJ@ÇVAb¯\"2ùå U à»z\Z7ïπ’\Zæ jû+\\“Ç98ˆF>’®(´<ÍNÜ˜ ™ì°Ω ∫êö6≥Œ_–ﬁÂ\"™NÜ˜*ÍBö6Ù˘\':b˘7á¡•k%oÉ$Næ§Ãæ÷<qh;BÈπ”,aπÛ/Õû4qlÃ±|…N˝Ó{\0ﬁ7õ\rÑmn\r^è\"Ê|[\'f1|nNvx/ç€Y38±„à=‡ÌVr«Ïıe|QT˛\ZΩÀ!U\'C{óm∆iÙKõj∆7Sâ‚ôv∂≠°ıTÙ≈Ïdø8É®F›˚6ˆïÛ]ïÙ>›˘◊ˇ\0ƒ˛µûsÙ∫ÆL*dËorπ\r6#=Í·°©íëó◊ùê=—∑¶Ó¡tËrﬁá—áglhÇ‡uh;xûO`ˆÆßô±ú˘ÇÈS¿rñl†—OCHO$$QŒíﬁØÖƒnmˆÀüÍ,è	ÉMáiÉ%P‡<§X~v¡)LT\ZÓ¥5–µ£¡ˆ~ ÌÔg»Á¢“∆àÈjc‰Êéñí9Xwµ¬@ÔìÈn*LKXÿÀ2sXÈjõ$FúÍÚÍµŒ\r∂Î<ûÕÀÆd√ÑÈcÀ≤„“≤á;‡S«4R¥Yïµ¡Œm∏;y n;F¬@ÕöÔ‚œ”íiä°Ì“¶ih’∞Æ`^DTø°ΩÀ’iôénï≥HsKO>q⁄-∞µ∂+«“y≠\náÙ7πl’lÌªvH7éïP-¨qi®jÿÿç©eh‘6„dÉáJ◊´∂ƒmPM ¸nÁ˙¡tˇ\0¬SÛ≠WıJ’+öR7Ò∏?úgÎ”	6˛Ujœˇ\0ÍS˛©YøîW-uù3ÿÌ\ZC˛»ó(v»®Èt≠£¸&á	õêÕYróë28’≈fÇÊüváaL∫≤ë≈@Y\0∂TA-5D∞TF¯ßâ≈íFˆÍπé#ÅX-Äµ‰˙äMË™É7—·Tÿé5àUæ!QR	e#Z\\\0Ÿ∏ù^$ª~À.,\ZΩŒC“1îË*ËÈYI[áJyGQ÷F_∑H±n‡±î‹X˚⁄_•°≈≤∆YŒî¯{pÃCtç´ßgì#Öœ*;møàpøJ«IÉÚI£/´œ˜1yÎú1|Âà≈UåIl-‘ÇûÍExÜçªÏ6ùªˆ:Kí]˝^πäkZh\nh+365-,5ò>Í∫NT÷H∂€ßeØ¬ÊÀú„òµ~=äOâb’/©¨úÎ>G}Ä\0n\0n]+B˛à“Ù#˛ÁÆRÇ;üï\ZÏñ[,Å´H≈≠_{.≈πªäV5Òæ≤πéF‹–æ;[±}Ã≥ˇ\0m0ØSˇ\0Êµ*Ω·âVVÈ3¶™®|îÙEëSƒ|òöX◊¥ùß≥°sB@”ßÁ_0ˇ\0:œ¸¶/Bò˘µ±!l!bB“5ê±!fV%ÅXïôXïGQ¸ø;∏’™?Q}Õ‡’πáG\ZM¬p∏ƒµµu≈\\ÌQr˜m\'Äo¡|_¡ôÆ:[°-i!¥µÿn\Z†m_{6Êú?E∏5~R…&£´êø≈ö|”Õ¸˙#Ë˚\\vrÀÚ‘ˇ\0¶ßèô§\Z¸ ‰öΩ‡2∑≈*‰d∏Õ}¸=§H’ÿ7‹ùúÜ|6∫\nFUOEW,ûDœÅÕcØ–‚,W≤–≠âÈS\0ß∆√$•íw;R]≠í@◊9çu˜›¿oﬂÒ]œ*„Î“^9ÅÁ<*˘EÃ®dÒœHQÚe≤[¬∏∑ºùñŸm·“ko…≈n¨˝∫∫ÃôoC¢Gù±† ZåëkÙÚ{{VÈr∆àﬂ©|ÈçÓŸj#ˇ\0ı≠sÜúf8ﬂ,åé&9Ú<Üµ≠.\'`\0\rÁÿªñÉ·ö¡ ÃyÆ´3≠S∞º%∆‚ênÂd∂‚8ûÜ€ëû]£mäåo-UWf<¿∆ÍP≈[é8w»|çü¿Z˜\\o2b∏é?åT‚òÕLïU’÷íG˝Ä\rÄ~}|O\Z≥5àÊ,f´∆j_U]PÌi$wÿ\0‡–6\07/ñVebWFXïâY¨J¢\n¡f±(à+≤PPBÇ•ATb°JÇÉ8§tNª~#•lö0ˆÚ∞Ó‚ﬁÖ°eéâ˜oƒt®çhUôclçÂa›≈Ω\n≤¢ò‰∑ìóÕr¨à2í7FÌWÚ±V#ë≤7ìó˚.Z§ç—ªU›˝(5¢DBÖí≈Í_Hb¬o:˛“≥•ÙÜ,&ÛØÌ(|`àà\nÕGòÉ±VVj<ƒà+\"\",Ù\'˚ ∏VËO˜ïpãRààâàä\"\"\0RÅ®Y%!BîV⁄x˘GêMÄ⁄V…•jG≤1ˆ•˘=’°EJ»,B»\" ∂√%a÷ìÖ˜Åii!¬≈ ± É8õw/AÑPﬁ÷µ∑\'Ä_\ngÌ2ù[i+©Á∞&)\Z„bÏX µã≠a⁄\r™íä◊b¯}\';5„¢íÂ›ÑÉ∞ˆπfjÀX.#SEZ∆≈Qã“Ó?¥q_™·ÃŸOa≈Â≈©i˘@«…˚&à∑Éx·bÊπÀMu∞‚ï\'†¬‰§÷¥N™ß.yâ≥Üı√≤€•ë˘∆jR◊?¸K÷aöEŒòf0™ÀU\r[®∆¥∫6Ù5‰4vúØüOôëÆ!∏F\\=¥nˇ\0Z‘4ˇ\0ôä2ﬂ¯\'≠t˛◊ÿ«NRaíGπŒëØy$∏ó\\íxí∑R\n™:®ji\'0‘BÒ$r∆Ú◊1√h +¥‡ŸÀ“Õ;Ú÷w•√åRG_ƒË‚‰⁄…∂£Å\'EÏÌ€\rä‰˘«+‚ôCü	∆†‰™#⁄◊\r¨ïú√≈ßÏ‹v´2ﬂTu˙w·⁄j¡YGâ>ûÉHTqZû´…ècvÍª€Ï·ºl∏O√k0åJ¢Éßíö≤ùÊ9bêX¥ˇ\0Œ„∏ç´EL‘uQTR ¯gâ¡Ïëé’s\\7F‚ªù%F¶‹:,BH(3˝Vß©#UïÏu]n?vÒ≤·O√¸=p†≥\n÷-ÜV`¯ïFâ”…M[N˝IbêX¥˛—ƒƒ*°m‚“6*€Hù∑\r˛’L,¬ä∏ÿ∞ÇA]´ƒ0˝+‡∞e¸’,Tπ≤ôö∏n*G§≥ì§ûé;∆€É√\ZV¯ûÊΩÆcã\\ Éb\nÕõW“Ã8!ó±y‹Zù–VBlÊ†éà<\n’Ñ’÷·8ç=~<î’ê;^9c6-?Â“7Ÿ2ˆ)A•L5J |—L›\\;pÛ„’…“OG„mÔ‰jÚ./C[SISá‘rÙÊ“jFÁ∂‹ mÅReÚÆû¶∂éÉLx;Î∞¯‡°œîq^¢òVW∞l÷o∑€√qŸb∏ÃÙÚ”TIDOäxúX¯ﬁ›W1√x#Å^û(Î0LB\n⁄	§¶¨ßvºr∞ÿ¥ˇ\0ŒÒ≈tZ˙<?LSÍËcÇÉ=—«y†UïÏG∑€√qŸb&¯ˇ\0Éâ\0¨@<TΩä*)¶•®ñ\nòüÒ8≤Hﬁ›W1√x#Å[ *^≈¥Wh⁄S“P¸ìh”ÍÛ}Ã\\¡£h]GI#ÚO£_´Õ˜1g/b£B#˛àœˇ\0–è˚ûπ[GÇ;W–òˇ\0¢s˜Ù#˛ÁÆVÇ;{FY5´ ’±≠∞Z\Z‹,◊À?ˆ”\0˙ı?˛kW»ë{çÂJÏ√õ)+!’ß√p…c™´¨ódqµé÷’øX€‡6ï-‘tÁ˘÷Ã?Œ≥ˇ\0)ã¡êΩvï1j<{H÷%ÜHe£ûa…IkkÜ±≠∏ˆ\rΩã…«»ï¨ÖâaX°¨ÖâYïâDk+Íe|Ωâfånü\n¡©Ãıs∆±º^„¡£â˝´<Øó±,—çAÖ`¥ÊzπOcXﬁ/q‡—”˚WQÕ9É\r—~	Qî≤MCg«Ê\Z∏∂2ﬂ)Æ„gÅG—˜â\"\\æOC3„¯fäJå©íjQòÁ\Z∏∂2—∂3Í£<ˇ\0w⁄„≥à∏íI$ívíx¨›æÂz}dåO<„bã*h¨˙™«èNŒì“wŸº}ÇÂ$òÕ”◊ì§kÿÚ…\ZCö‡ÎF‚ÍÒm&g[8V!òÎ&°su¬ÊÉ#z‡ú;Nﬁ+¢„:P¬Ú9ã/h„√j˙;∂z˙ÿåÆ´óãÅ\\lﬂ∏\0óˇ\0◊‹À¸Qñˇ\0¡;˝jnﬁÙ9!Æ6÷Î⁄ÂºΩSèbttâjg!åm˛“x\06íΩl\Z{ÃnuùÑe¡ŸFÔıØkî¥—Z¸Zå‚Ùdtn>5‘¥ÂØh<GÑwt)ïÀÙ≤GŒƒ4U\rG0≈Ë+±\ZvkKG√∂p˚Ohà‚ÙÉúµóÏgÊ\\©ÇSúN,Vñ§∞=ÒGûêªÊªøà’˘C6U6¶≤yÖÅëÓyÖÕˇ\0jü«ïæ≠è+u\\µï∫}Ø+I]‹ò¨J»®*åV%d†¢1PT°AäÇ•BJÇ≤*\n¢*\n#(§tnª~#•mñ6»ﬁR/ãzuúR:7k7‚:T£Z-ımkd¢⁄¬ˆZb´…á›U’äØ\"ubàQX¨îi}!ã	ºÎ˚JŒó“∞õŒø¥°ÒÇ\" +5b≈YY®Ûv ¨àà,≥–üÔ*·Xg°?ﬁU¬-J\"\"%DDA!\"…Bî†•BîUö=Ú{´BﬂGæOuhQRK≤DHÿv+Lë≥42]é‡ÂT,ë[$ç—∫Œ¯ïà[°òÍMµù=\n%à≥h:Ã;äÉæïYàç´Êê6K6≤ΩTx”√-Æ{’\n⁄Û-ÓW»*nJœ€7ªX›@P§*åÇÌy34aöC¿`…y˛~Næ?∆ùµÒøpéBwﬂ`€Ân;lW6ÓY mcÔgØäez|+\ZÄ≈Q÷<md¨‡ˆ-?f„µ|∫:ô©*b®¶ëÒMÉÿˆ8µÕ#h ç≈u¸ôö∞Õ `PdΩ œ…’≥¡¬1ßm|O‹Úwﬂ`€Ân;lW7ŒY[…¯ÙÿN5\'<~›¨ôú√ƒv™KÚ´≠—‘·∫j¡#†ƒ‰Çá>QƒE-Y\Z¨Æ`€®˚qˆpﬁ6\\.s&çÛ§Ræ7e|\\πÑ¥ñSónÇ6ÌÀ—‘ÕGSÙ“>9cp{^«π§Ç‹GJˆCJ√˘Iãz?…MY‚˙®4wúøíÿœ¯W,ÜéÛóÚ_ˇ\0\nÂli?8)1_ÔG˘,Üì≥áÚì˛Ùíc•Q£Ã„¸ó∆?¬πiØ…Ÿì	£}f\'Ä‚Tî±€^i©‹÷6Ê¬ÁÇ˙cIπø˘Iäˇ\0z?…}¨´•‹sƒÔèT‘cXTÕ1T—’º9á~≠∆˛›áqÈ˚<ﬁa+H$8mo~øee[®p◊“O,ê:ïèl≠g(f}Ü«˘‚ø<Á<£EáPEö2ÉçnV™:¿¥íÍG‰<o\0ó;Aÿx´“.+É–ÛZ\nÈ¢Émô±¡ΩóΩæN]∆ûüNîîêfRÍv1ìKdù¨‹$7˚H±\\Ç\Z ú3Ü∑ùÙıp?^9c6-?Û√ä˙∏Œ8kÁíjóI,≤gΩÓπqÈ%|	»êk≈ªà[∆jhÆªSMáÈÉ\nuU`°œTëxË/´{\0ﬁ=æﬁéÀ…K5$ïTıQ>‚%íG#lÊ8op)Ü◊T·’∞VPŒ˙z®¨6sH‚ªôáÈw	|ÙÌÇã<R≈„b+ò8èo›∏Ï±Òˇ\0≈\Z›°u\r$…NçæØ7‹≈ŒÎ(ß°´ñöÆ\'√<N,{,ZFBË˙GíΩ}^oπâ}Éû·XŒ#Ñ≈]T˙vV¬iÍ@Òëüõ¥l¯m⁄WŒ≤€e\Z´C’.ÿ`/W£¸ìUõÎ‰s§x=(◊¨Æ}Ébh ∞∫ﬂº˚VËh—ÓH´Œ8åû0Raæmsˆ2&ç§v[ªyˆ˝ç%Ázi∞ËÚÆNg4À˚ÊÏ}k∫Œ;ıo∑n˝ÁÄM\"ÁjJå:<≠ìc4ô^ócà∏}k∏ΩÁymˆÌﬂºû Õ◊oî–≥&˚¢ô_zì#Êö h™i2Ó+5<≠éFS8á4Ó#ÿΩ∆G…¯vÉ79Áˆa¨!‘sáå≠~ˆí”ÛxÄwÔ;7¸LKø≈g´¶≈ÍpË|]-+ÄdMÄŸ¥Ùû*Óﬂ∆:=Œ…åc¸3ñ\'Gπ«˘/åÜr≤tìù?î¯ü˜É¸ñ\'IY◊˘Oäx?…_ÏäßGô«˘/åÖrﬂáh√9◊◊¡J‹ªà¿exo+Q	é6{\\„∏:KŒø |S˚¡˛KT⁄HŒíFÊ?3‚ÖÆ§	m≥¥ßˆ:{å’ò∞›`ìÂ,è8õîj‚ÿÀGÑ∆8œ6çûOºIU€M ÕÀ‘hÔ#‚9„\ZÊîVÇéW[ ÒtÏÈ=.;l?`%Y&3u=a£ÃëâgåoôPZ\ZXÄ}]c«ãßgIÈ\'má¿JızDœvÇ~‚txLWmesOåƒπ«[ãO«p≥FŸ“.x√hpCí¥|\r>_àñ’÷¥¯ÃAˇ\08óqi‚~v·fÏ<ò©\'.È„âﬁ≥+-†◊jïˆ[\\b1ÿ¸’Ò∑Uí9?u,%}È1ô,^{◊∆≠¨2ìµR/+ní±qπXëPVô`TëXî®*JQÇBÉBà1*ï\nàP•¢\"\rıæT~ÍÆ¨V˘Q˚™∫O\n+^D>ÍÆ¨Uy˚®+ï\nJÑAAR††€KÈXMÁ_⁄Vtæê≈Ñﬁu˝•åY®Ûv* ÕGòÉ±dDAeûÑˇ\0yW\n√=	˛ÚÆjQ(àä\"\"	ÅHR†)@\nT(´T{‰˜Uubè|ûÍÆ¢≤8›®În`¢-Ÿ0.ác∏µh Éc∞®cã]võh9ìÿ?¡ìÉ∫S≈Wt3ˆ¨;¬÷¯›≥á«•Xí[Øª::†¶)ÆﬂàÈ[˘H”ÆzVê≤ht≠›Î ¯=[ª–jRÌh=[ª÷Az∑w®≠Ad7-°–z∑w¨√†ınÔPj’ŸrÜn¬3æ^è\'È†C4 ¸óç»F¥∂∆»„√`;ÿvÿÆB´wz»:VÂõ6±‘Üâ0Ô˚∆ ﬂı,ÜâpÔ˚≈ üﬂı/2ˆ)¸AãÇó˝+1ó±O‚[¸øÈSø⁄ΩË—6ˇ\0xôS˚·˛•ê—>ˇ\0xôW˚·˛•‡Ü^≈?àqorˇ\0•f2ˆ)¸Cäˇ\0Éó˝*w˚á7dJLΩÉöË3väºH÷sj9/!ø.v+≈ı€óÒAˇ\0¯,[¸øÈGÂ¸`€S≈GMËÂˇ\0J≥˛«›—∂z´…∏åç1ÛÃ\Z´¿≠†~÷ ”∞ê¿Î|„Ï˚⁄C…¥‘òtyß& k2≠^“rÍ\'Ïxﬁ}ó;∑¯	0<Zü,¯V#L\ZŒ{ÈdkZ:I\"¿/G£åÛYìq	\0åVa^mõY+N¬@;≠;è≤Yˆ+Àw¨¢ycÆB“H£Éè5‰…\r^W™7s[µÙN‚«\r·∑Ÿ∑v„¿ûvób”ò›x˜qv[SáV¡YC<îıP∏>9c6sOHU°ya∏¯ÖΩÃo)Ó#°d√KÿI{Yﬁí?\rÉ¡esÌ˚∑ñ#ÁÈFñj=Ë˛ö™\'√<QN«∆Òg5√R‡ÖÃpÍ∫ä\nÿ*Ë¶|0º>9c6sH‚]“ˆ+6?ë≤.#^*j¢ôÔ,\Z÷eÏ8.z’ä„∫™5VÁ∞∞ŸÀ’h˚%‘f∫Ÿ$ñAGÉRxuïØÿÿ⁄6ê	Ÿ≠oÄO∑vÈhˇ\0$’f⁄ŸÈK·VW?cch ∞∫ﬂº˚oÈ:“’–Gñ2åfè+“Ïv:±√Áøâ€cøy‡Õ!ÁJz⁄(ÚﬁTå—Âä_‹:≠√ÁøçØ∂«~Û¿tÒæÍIæË–Ó+©dlßáeÏôœ=¥∂Ñm√“<ec˜¥ñüõƒ⁄voœ%Â<7.‡¨Œ9ˆ3Ãˆ?pÍﬂº8¥¸ﬁ úNÀ‚3ŒlƒsÜ4¸Cx\rl4¯3™ﬂ⁄x˜ﬂ.†œ=f¨G:‚Œƒ1€P√L”‡@Œ´i„‹î!}Ü`X–!Ã¬13ƒI&ﬂ˜VrÂÏbVÎ∑ƒ√¯éi&ﬂ˜V¶ßC—eÌ—b¯-%|π◊.–>vk\Zjâm$[w8k\r´Ëaﬂ˜ÖïæÍ^Â‹jˇ\0˝óˇ\0\'˙V\'.„_ƒ∏ü¯)?“ß±ÔNâÔ˚√ øﬂı,Nâ∞Ô˚ƒ øﬂı/rÊ5¸KäÇì˝+ó1ø‚LS¸øÈNˇ\0hË1hó\n2∞M§\\Æ\"÷\Z≈íÇ‡8⁄Óµ÷ù\"Á|:è+ ^Ω	\"™¨à?ÁÓ-=?;ÿ–ÁÛ`ƒQ>Ip|Ië∞9Œ£êÅºí[∞/ñv´1ﬂµ6¿¨JÃÖÅ[FbÂëXπ‹∑V~è›ZJ€W˙?uQ\\¨\nÃ¨F%ARTF%bVEbPbP°B©X®*TF%¢JÖ%B¢ä\" ±[æ?uVVkw«Ó™…<(¨Uy˚™∫±U‰CÓ†Æ°JÑJ(*Ti}!ã	ºÎ˚JŒó“∞õŒø¥°ÒÇ\" +5b≈YY®Ûv ¨àà,≥–üÔ*·Xg°?ﬁU¬-J\"\"%DDA!\"	\nT(JÄ•jè|ûÍÆ¨QÔì›U‘VAJÄ•!d±$\"õ¡‘îk3Ì	,%£YáYù+@[bï—ùõ∏ÖàYº∆…At;≈´Eà$ÖAd!dc%í≈d#n±_Fûâœ¡i†`sÇÍö3 c2c4‘!‚0˚óæ◊’h\'µg+¶§só·œhÚJÎY_-az2¡aÕŸ‚úTcR¯XNÔ(;Ñíl;|ükà±`Ÿ#*aX‰BääyqXctî¶±‰«#¿ÿÓãÉÏˆÖ˘è?‚òé;èUW„3j‹‚“>l`!£ÉG¸wÆs.}5≠>ΩNõ3Ï’2»ÃlB◊∏∏G4Z¨Ói6“J¿iü?(˛\ZÙ.v·g)|1˝3∫Ë£LŸ˚˘@ˇ\0–ˇ\0°d4Àüèﬂ˛\ZÙ.va8œ“Ì—òÛÁÒ˚ˇ\0√C˛Öê”|˛?¯h–π„w¨¬úgË€ß`⁄jÕÙ∏î2‚ï¨ƒËA¥‘í√[+¬.÷ÇGêUå˝ì0ÍÏ˜eêÔ6-Õ]˛p-‡—ƒpﬁ<≥ïçÎ’Ëˇ\09‚/ÁtVöñPUHÛ‡NŒÉ–F€ó\n\\uﬁ*∑£úÔYì±ê¡WÑ’\rJ⁄ÌdÕ\"ƒÄv[øqŸªÓÈ$—EÜ35‰©\r^X©⁄ˆó—;ã\\7Üﬂf›€éÀ∑>dÃ;¡éq»DÕÇIwU—4x Ò\Zº\Z8é≈€ªœhÔ;VdÏIÔcVR5+(_µì3u≈ˆ[q„∏ÏSﬁ‡Û\r[°ya∏¯Ö–4ÅíhŸÜ75‰∑Û¨≥Q·>1µÙN‚◊\r·†Ï€‰Ó;,W;RÏ[,„›ƒt.ï§OÕnéòõÓbÊ»XGƒ.£§q≠¢›πÉ¡M˜1g/`Û˙>À_∫‹RZz™®È()#Áu/pëÉ¬¸}ªÜÛÌ˙zDŒê÷Q«ñÚº<«,“Ïk[±’D|˜ÒµˆÿÌ\'iË¯∑~¬∂	ç‘êÌ‡‰◊{\ZK∫WP…ŸWÀ∏4y√=2‘ﬁVÜ8xuOﬁ◊9ßáiŸ∞≤~U√ÚæÃﬂü#Ò ﬂ√<:ßÔsO ”≤¿¯lÁö±€çIà‚ímÚbÖß¿Öú\Z—˜ù‰ßÂ‘g|—àÊ¸fLGìwÉ->Í∑ˆù‰Øqï2÷ë8svxÉî´q÷√0óyr;x{¡›mánÌÁmÇÀ+eÏ?\"‡–ÊÃÔΩk¸,/	wó#˜áº÷ÿv˘;Œ€‡sVcƒ3N!>\'ãM N˜Y≠DM‡∆é\0}ªŒ’=Íx>ÌnòÛº’RÀ.)ÿ˜6(È„-`Íã¥õiZ°“ˆyt†;}æ≠˙WÜ{T@ﬂ∏œ–ˆé”{ cœﬂˇ\0„C˛Öâ”|˛?¯h–ºÇœ=´QWå˝#ﬂ2gﬂ„˜ˇ\0Üá˝¶\\˚¸~ˇ\0–ˇ\0°x∞)«—∑K¬¥›ù©q&≠ƒô_L«x⁄Y`ç≠ïº[v¥€˜´˘Î$aòˆÏÈ£ˆark‡<eõ‹CGÕÈ7èw\'Ö∑p]/EŒ#ó±ÿ™0«k	àäjwvì‰ün›ááxRÕw	€üú=˙∑≤•QNYº/ÿ8˛è2kj‰uMe1®x÷u;Ìw\07\rªmb;¸Û§¨∞Ï≥ò´0…$‰H,êk0ã¥€Å±LsïlsáÉñ˙ÜŸÂhrË√∂’˛è›Zùπn¨˝∫®¨V2∞*£†©*\n#±+\"±(1(P°T¨T*\n#àQâP§®UààåQä›Ò˚™≤≥[æ?uVI·Eb´»á›U’äØ\"uu\nT\"QAR††€KÈXMÁ_⁄Vtæê≈Ñﬁu˝•åY®Ûv* ÕGòÉ±dDA∫ûP€±‚Ïvˇ\0bM	å‹ma‹VïæûmPY&ÿœÿä‘ãlòÕ∆÷≈jDJ\"\"ààÇB D•b≤J\nT)EY£ﬂ\'∫¥-Ù{‰˜VÖ!d±|Q	#:ÆÒÉá±∞≤X⁄∆«aY\"$)PÑVlqi¶≈Xµﬁ\\Ms∫U`≤\n\"h˝KVBh˝KUP≤M*◊-©jë4~•™∏RW’°©çØ(.ï£‹‡rÓ-M]M.åÌi6i#πrH‹Zv+–UπõäŒXÌe~†≈4ΩÄ”A-náU¸Ø$e¨3ºrpìºç¶ˇ\0\0>Û÷/^…Â{›súI$ù‰Øñ˙˜8oUdîºÌY«	ä⁄⁄È£øö\nD±˙†´êZE°,~®,Ñ±˙†´êAhJœTbVz†™ÖòEZ«ÍÇÀïai¥@X,öTØ ÁG&c\"≤Äâi‰ï4Ø>ÏË=†Ï∏_OIt˘]ı4X∂O´`ßƒZÈ&√à≥Ëﬁ-pG\0I6Õõ-o\n\nÃ5ﬁ«∞—Êv≠…∏õ§â¢´\r®\ZïîOÚ&fÓ;Ä‹~b˚\ZNÀU6ô2º˙ÿ0\\aÅ¿á¿ÒµÃ€√aÀ[h±\\‰‘≥y¸Ö‰O¨‘}Ú,ﬁ¨±\\Ÿßh][?8çËﬁ€å‹≈…ÿvÖ’tÅ≥E˙5˛boπâó∞s9¨$pÆ∫>è0\\	À≤gå’jö:yÃT\r3Œ7kpµ˜\r€	;Ä\\“wx◊vÆìX{≠Ù„æÁ¶C fÏ”àg^J‹ZOhÜ6y≥™—˜ùÂ}›Õï\n\n¨…èÕv)I/\'CÑçÓí◊;Ÿ–wÊ¡x]„Zµ |7v´Æ¥>ÆkÃxéh∆fƒÒyÃµlkF∆Fﬁ`‡¸N’ÛCø>Ú–JŒˇ\0äüyQé∫ŸNAî*ÖÀe3¸p¯™àï∑sªVá5ls¸#⁄±$\Z∑+Zû’DBÎ9zúøàÛY£ëÆ≥öAp!y#±mä°Ã‚ñlï˙í=-‡5TPœåaıoƒ\"\0ñB·…J·∏õëˆÉÒ\\;HYö\\…é’‚U!≠íwlcN∆¥é¿î8Éµm¨©OP_º¨cÑãkMCÆÚ´πfM ¿Ô]#\\∂÷~è›Z\\∑Voè›TV+ëXïQâPTïä\"\nƒ©*\nJPU°D(åJ!Dï\nJÖD\"(DB\" ﬂ[ÂGÓ™Í≈oï∫´§¢±U‰CÓ™Í≈Wë∫ÇπP§®D*\n\r¥æê≈Ñﬁu˝•gKÈXMÁ_⁄P¯¡© ”0≥n†±\n™ŸÜ\'‹|GJ\rh¨MsyXºû#°W@R)7√6†,x÷åËY^õ™ı]F÷/M’z^õ™ı†\"ivﬂzn´‘ﬁõ™ı]F÷¶ÍΩkóì$r@Å∆ÎXRÄ≤X©J%JÖ!∂9=mó∏≤≈bHf«êZlB¡d¨⁄ñ‹XJ7éïÄÇ^°ZA ‹∞H˛ªª—YäyzÖd ó®VæQ˝ww©?ÆÓı;<ΩB≤K‘ZƒèÎªΩHë˝ww†⁄ ó®VB	zÖjÂ◊wz»H˛ªª—[Dı\nëΩE¨H˛ªª÷\\£˙ÓÔQ[ı\nÃA-¸í¥â◊wzÀî]›Ë7rıJ»A\'Uj?ÆÓıêë˝ww®7dÍ¨ÑuV°#˙ŒÔY	÷wz+hÜN™ÃC\'Ui?¨Óıêë˝gw®7dÍ¨ƒ2uVë#˙ŒÔY	÷wz+xÜN©YdÍ≠\"Gıùﬁ≤?¨ÓıÒùUZl·bµâ÷wz∞«	⁄\Z„gç«• Æßõœ‰+\"}j£Ôër£v∫Œ!uLﬂ˘â»üZ®˚‰YÀ‚«5èx]SHf⁄.—ØÛ}Ã\\©¶À®È˛KtfÿM˜1LΩÉòNÔ\Z˛’“ÎÔs†˛úw‹ıÀÊ>5›´ßVﬁ„A˝8ÔπÍÂsHéj◊)ÒéÌ*`>9´\\ß√wiZD∂_ÒG{ÀA+eˇ\0wºÉKä õœ®≠îÁ«\Zû|#⁄±÷Güˆ¨	TgÆ†õ≠D®÷Df‡µ8,µîÉSÆµïπÀ[Ç®÷Vf‡∞*åJ€Wæ?ui+u_Ë˝‘ ƒ©+™!bTïâPT¨J¢+àÑ(††Ö\nTT*\n††©PQàâF˙ﬂ*?uWV+w«Ó™È\n+^D>ÍÆ¨Uy˚®+BàÇÇ•bÉu/§1a7ùiY“˙Cy◊ˆî>0DDDA∂	LNæˆù·g<B‹§[X~≈]läg≈}]«ÅAÖèB\0z˛w\'—ÓNw\'—ÓC¶õÑ±Ë[˘‹üGπ9‹üGπö@EºU…Ù{ìùIÙ{ëZoÁR}Â<ÓO£‹Ç∫…nÁr}Â<ÍO£‹†–ÅoÁr}Â\"ÆO£‹™Ù–§–VÓw\'—ÓR*‰˙= \r\"˝d∂Ûπ>èrëU\'—ÓA•HÏ[π‘üGπH™ìË˜\"µ|èä€Œ§˙= E\\üGπ•!nÁR}Â\"™O£‹†‘≤`™ìË˜,ÖTüGπ†≤h™ìË˜)R}‰V±~Öíÿ*§˙=À!U\'—ÓPj0≥R}Âê™ìË˜\"∞m÷AgŒ§˙=À!S\'—ÓPbAd*§˙=À1S\'—ÓE`Af*d˙= EK˛èrÉ≥\nELüGπd*d˙=» ,ÅY6•◊Ä-„±%f≠úÕ¨;ë@V@€r÷\n»#púøc∆‚∫Üp∫\n»ÄÔU|ãì3zÎô≤“Ë+\"Î‘‘X¸dXÀÿÆ[≠¥.£§c˘+—èÛ}Ã\\°∆Œ±‡WT“1¸îË√˘âæÊ%ˆ]3ºk˚WO¨?ΩæÉ˙uﬂs◊-ôﬁ5˝´®Vﬁ€@˛uﬂs”/ÉôSü’Ñß∆;¥•9ÒÕZÂ>1›•iV–>Ú—u≤ˇ\0äªﬁA®ïù9Ò√‚¥í∂S\Zû|#⁄∞%KœÑ{V¢`JíV$™à%F≤âA: 	∫¿ï†»≠n\nuît\Z ›W˙?ujr€W˙?uQT¨J»¨J®Ç±*Jƒ¢§¨J†±+\"±DBÇ§¨JÇ•ATb†©PÄ†©PQár!‹É}f¯˝’]X¨ﬂ∫´§(¨Uy˚™∫±U‰CÓ†¨QX©PÉu/§1a7ùiY“˙Cy◊ˆî>0DDD@DDDA*T(\nT)@DDQHP§ )Pà2DD≤!íEA(2\nT(2\nBƒ,ëYí¿,ÇÉ ≤\0≤¨‘¨B»(26ï¨,Ç+`Y¨ê*\rÄ¨Ç÷\n»YµÇ≤A∞∫	C|Ìa˚`V@¢¨JÕGt¥Ó*SÄéNO$Ó=Ê>≈±õ◊XÕGÚê~µS˜»π(+´Ê√˘\n—ˇ\0÷™~˘2¯± û|kªWV“9¸îhø˘âæÊ.LÛ„]⁄∫æí‰üEﬂÃO˜12ˆ#ñL|k˚WQ¨?ΩÆÉ˙yﬂs◊+ò¯◊ˆÆ•X{UÙÛæÁ¶_0ß>9´	åwiJs„ö∞ê¯«v≠Å+eˇ\0>Ú—u∂ˇ\0äüy¢Vt««§ï≤ò¯·ÒDkîÓ’Å*^|\'v¨	@%bä	UV©%bPBƒï$¨J¢	Xí§¨QVÍ≥Ê˝’°Àm_Ë˝‘\Z\nƒ©∫≈TAX¨ä≈äí°Qb§®D\n≈IPÄ±*Jƒ™\n¢≈IPà(*T+7«Ó™Í≈f¯˝’]!Eæ´»á›Z˙Ø\"utDDAP§®A∫ó“∞õŒø¥¨È}!ã	ºÎ˚J\"\"<Ì˝V˜\';UΩ ≤&ç’ûv˛´{ìùø™ﬁÂYFÍœ;UΩ…Œﬂ’or¨â£udUø™ﬁÂ<Ì˝V˜* SFÍ«;UΩ…Œü’orÆÅ4ªYÁOÍ∑π9”˙¨ÓU—4mcù?™Œ‰ÁOÍ≥πWD“Ó¨ÛßıY‹úÌ˝Vw*Ë¶ç¨äßıY‹ßù?™ŒÂX)MXoÍ≥πO:Uù ≤ïtmhU?™ﬁ‰ÁOÍ≥πV%4ªXOÍ∑πeŒü’or™A4,sßıY‹≤ÁOÍ∑πUY—µëT˛´;îäßı[‹´)\nhZOÍ∑πH™UΩ ≤êö6µŒü’or»U?™ﬁÂT)	•⁄–™UΩÀ.t˛´{ïP≤M\"©˝V˜,ÖS˙≠ÓUT¢ÌlU?™ﬁÂê©wC{ï@V@©°hU?™ﬁÂê©wUΩ ®R\nçpù∂6ñù†ÿÔX5ƒA±\nÀ≠35€Âç·®ê+Z»F∆Ô\n’Gùä£7´5\'∆|Xƒπu|ÿ!\Z>˙’Oﬂ\"‰eÀ≠f≥˘—Ô÷™~˘r¯± \\|aÌ]gI\'ÚM¢ﬂÊ\'˚òπœçwjÎ\ZMvÆà¥ZÌˆßüÓbeÏ#ñL|k˚WS¨?Ω£˛ûw‹ı…ﬁ˝góZ◊]Z∞˛ˆ|?˙yﬂs”/ÑrÍs„ö∞ê¯«vîß>9´	åwiZBÎh?äyh∫ÀîÒEñﬁotí∂S>+M÷ c„¬\ro>ÌX)î{V$™Å+Pïâ(¨IRJ¿†â*IXïP*\n,IAn´˝∫¥∫ØÙ~Í¢πPT¨J\"\nÇä\n¢\nÇ•bQÖQäí°QT\" (RT ±Yæ?uWV+7«Ó™È\n-ı^D>Í–∑’y˚®+¢\"\"\" ›KÈXMÁ_⁄Vtæê≈Ñﬁu˝•åûNZ{ììÉ÷ûÂY⁄œ\'≠=……¡ÎOr¨àmgìÉ÷û‰‰‡ıßπVD6≥…¡ÎOrûNü÷ûÂUHCk<ù?≠=……”˙”‹´¢Y‘É÷û‰‘É÷ûÂ]v±…”˙”‹úù?≠= ∫!µÄ Z{îÚpz”‹´)Qv±…”˙”‹≤‰È˝iÓUTÑ—µûNü÷ûÂ\":Z{ïdmd2Z{ñZêz”‹™¨Ç∫UéNü÷ûÂ!êz”‹´†PZ‘É÷ûÂ!êz”‹´AkRZ{îÜAÎOr¨\nî–≤≠= C ıßπV%4,ÍAÎOr»2Z{ïPT¢≠AÎOrê»=iÓUîÇÇ–d¥˜)É÷ûÂYH*hZÉ÷ûÂ&&πÖ—;Z€¬™∂G!ç¡Õˇ\0Â ¨Å[$kdg)ˆÇ–\n\rÄ≠ëHX‡‡¥Ç≤PYú6Fy.‡µÇ≥y¸V.’©®≠Õ+}YÒø\0´∂’ü5ﬂjÎô∞˛At{ı∫üæE»]{6»&è>∑S˜»±ó¬9;œçwjÍ˙P¸œËªÍÛ˝Ã\\ïÁ∆ªµuç(˛g¥[ıy˛Ê&^¡ .∫Ωa˝Ï∏Ù˚æÁÆKu÷k?É&˝>ÔπÈó¬9m9ÒÕXH|cªJSü’Ñá∆;¥≠‘]E‘]TJ€L|pÏ+E÷⁄S„Ç+[œÑ{V$£œÑ{Vâ%bJ±@%A(J≈T\"ÇP	XîPJ¢\n›W˙?uh+u_Ë˝‘\Z\n≈\nÇàäí°QB§®D+®ÖJÑJÇàÑDAX¨Ú£˜Uub≥ è›U“[Íºà}’\\´^D>Í\nÍ\nïàÉu/§1a7ùiY“˙Cy◊ˆî>0DDc–ñ=;ìË˜\';ìË˜!”EèBXÙ-¸ÓO£‹úÓO£‹áM=	c–∑Ûπ>èrsπ>èr4XÙ%èBﬂŒ‰˙=…Œ‰˙=»t”c–ñ=;óË˜\';óË˜\'gM Ñ±Ë+w;óË˜)ÁR}‰^ö,z\nXÙøùIÙ{ìùIÙ{êh±Ë*E˙\nﬂŒÂ˙=…Œ‰˙=»Ω4ÿÙ€–V˛u\'—ÓNw/—ÓPÈ¶«†•èA[≈\\øGπ9‹øGπõÇ§_†≠¬Æ_£‹ßùÀÙ{ï\Z∂Ù±Ë+h™ìË˜,π‘üGπEiË+-ΩlÁr}Âê™ìË˜ ”∑†¨Ö˙\n€Œ§˙=…Œ§˙=»5mË+!~Ç∂Û©>èr\n©>èrÉ^ﬁÇ≤Ë+`™ìË˜)ÁR}‰\ZˆÙ;z\nÿ*§˙=À!U\'—ÓEkR∑2q\'Å0;à‡µÀâ÷;GÇR±R\n\r±Hcu€Ò+t¨o)Ó#°U[!î∆Îç‹Bä)eR–…l›ƒ]k∑ü≈¢ÌZ¡Y;—bÌZÓ†œYm´>7‡{Ì[™œç¯∫÷t$~⁄= ÿÛ∫üæE»Å]o;ﬁ˜£ﬂ≠‘˝Ú,ÂÏXÂ\0Ì]oJGÚ;¢œ´O˜1rvÖ◊4¶#ö,˙¥ˇ\0sÀÿG&∫Î5á˜±aˇ\0”Ó˚ûπ◊Z≠?Ωá˛∞;Ózπ|#în6‹ÌX›E÷ëï“Î®A$≠¥ß«é≈¢Îm)Ò„‚Éü	›´Q˛[ªV$™%bJ(∫ °ÄJ≈®°(Å[´?GÓ≠≠’£˜PhXí§ïä††ï%bQà†îQâRT* ¢\"\")*¢ÑDAb≥ è›U’äœ*?uWHT+^D>ÍÆ¨Uy˚®äÎ%B\" ›KÈXMÁ_⁄Vtæê≈Ñﬁu˝•åÖ+íDàà¢\" êä†,ñ*B	R\"	 ±RY DPd@*Pd\nïÇ»!b§\"≤Y≥í!®%ú}ãRÉ5bAo\'.÷«°UdÉt±òœKN‚∞[!îjÚrma˚MåÙ¥Ó(®Hﬁ∞∫êv†≥V|o¿-!m´>7‡ê¢≠º˛+j”u≤C¯§]™Ω‘Éµo´>7‡aΩo¨>4vF∞W\\Œ«˜ΩËÛÎu?|ãêÇ∫Êw˛:<˙›Oﬂ\"∆^≈éN–∫Êîœ‰oEVüÓb‰\0ÌÆÈP˛F¥Uıi˛Ê&^¬9%◊\\≠?Ω˛∞;Óz‰7]r∑¯/aﬂ÷}œLæ…nöÀ®∫⁄2∫ã®∫ã¢2∫€H|xÏ*∫›H|xÏ(≠o>ªV(ˇ\0-›•B óPJÖ@ï	uç–I*(DÑ®@+u_Ë˝’†ï∫≥Ù~Í\nËãU@ïÖ\0¨P¢(†°PUD(*T (R°àÄT\" \"\"ûT~Í¨UöÕÒ˚™≤Bä≈Wë∫´≠ı~D>Í\"∫ÑDDA∫ó“∞õŒø¥¨È}!ã	ºÎ˚J\"\"	\"∆≈B¥Ê∂•öÕ∞êo*™\" \"\"\" )\nHàÇB([‚sÔ±¶÷EåHPà%Jï\nPï\n[¥Å“ä»)IY…HZMÏ† ï ¨¢èî.±µÖ÷EdäRà»+ †›¶\'t¥Ôd—ãrëÌa˚e∂	Lgn÷·äêV…£\rÒÌå˝ãRÉ%eÑö7É¿ÏUn¨GËív•X’u ÌX©—jœé¯®ù_û¯¶Ë´R≈bÌZV…‚±v≠*Üıæ∞¯ÔÄUÅ⁄¨V≠@ÆπûÔx—ﬂ÷ÍZE»Å]s<ç˝n´ı§YÀÿG%¬Î⁄U¸Õh´Í”˝Ã\\|oØiWÛ3¢ü´O˜1LΩÑr5◊+OÔ]√ø¨˚ûπ\nÎµø¡s˛∞ªÓzπ|#ë•‘%÷ë7QuK†ï∂ê¯ˆ¸Vã≠¥á«é¬Éüˆ¨QÁ¬wj∆Íâ∫ÇT]E—¢ÍË\n	Qt@PJÇT*o´˝∫µ1ÖÓ’nıù[Å{Z\rıEä\r$¨Q°*$™B((ä°\n(@DDD;êo≠Ú£˜Uub∑ è›U“%˙ø\"uWV*ºà}‘ën•ÙÜ,&ÛØÌ+:_Hb¬o:˛“á∆àÇ≈úw∫¥+^qﬁÍÆáƒ\"\"\" \"\"\" ê•b≤@V#Ù9{BÆ¨GËrˆÑ´\Zï\nBê°d•û[{Bƒ,ôÂ∑¥(7VzCª“ÍœHw`ZUãV®˜…Ó™„rﬂGæOuhîT©B\"2E\0©Aê*V\nAAfï‰<0Ìk∂V\0Ÿ‡Rüœ3µD˛y˝™}T+ü≈$Ì\nµ’à˝N‘£P*A⁄±@v†µV|o¿-7[+é¯¶È¨…Ë±v≠7[$ÙXªVõ§F`Ì[Îç¯X´}aÒﬂ\0ä‘\nÎŸ„¯;hÔÎu_|ãè›u¸Û¸¥uı∫Ø÷ëc/b«#h]Jﬂôù˝Zπãè¥.¡•c˘—G’ß˚òô{‰7]z∑¯-·ﬂ÷}œ\\~ÎØVˇ\0ú;˙¬ˇ\0πÈü¬9\ZÖç“Îh Èuç—7[iè¢Îu!Ò„∞•\ZﬂÂ;µctîÓ’A*.¢ÍI*AT.†îPÄ•ç/pkE…F¥π¡≠%n{Ö;uo!ﬁÓÑ	 ié3·ü) ™\"Ñ®DÄJ≈P*T \"!AàÄ≤k‡‚—p7©ä3+¨7q=d“\0ﬁJ/ o=(4(*J≈f∑ è›U’äﬂ*?uV)\nb´»á›UïöØ\"udD@DD©}!ã	ºÎ˚JŒó“∞õŒø¥°ÒÇ\" ≥EÁÓ™Í≈úw∫´°ÒàÄàààÄàà\nBÑAí±°À⁄`¨«ËrˆÑ´¬ï\nB ã(ÿÈ	\rﬁ÷(¢\" îP•fœ-Ω°`≤gñﬁ–Éug§;‡¥≠’ûêÓ¿¥©¨—Ôì›U¡ÿ∑—oì›ZÂFWR±∫êPJêT)h.pyÿ¢•Ì,qk∑Ñ∫#m7ügjôèéjäo>Œ’˘˜ˆß’B±¢I⁄PUò˝N‘§i∫êv¨P ≥YÁæiY‘»Ÿ$ªwYk∫ÇÃáÒHªJ—uõ‰iÅåP;V¥É v≠ıû{‡`∂‘»$íÌ›dÖ◊≥œu—◊÷ÍøZE«Ó∫˛y?Ω”G?[™˝irˆ,r vÖÿtØ˘ó—?’ß˚ò∏Ë;BÏ\ZW?ë}˝Z£Óbô{	ÂrÆøZzŒ˝a‹ı«Æªi˝Í¯wıâˇ\0s’ÀÁ˙G!∫]ct∫“%.±∫]W[©ÂuæhﬁV∏b2ÜçÂe4†çHˆ0}®58›∆›*]oâ¢6r≤ˇ\0eΩ(2cD,Â$Úèí’è:ì°ΩÀLí:Gó9`ö9‹ù\rÓQŒ§Ëor–†ïtmcù?°Ω \r[˙‹´›BhX5R[ÊèÇ–vÔP†î6õ®%E÷Ë\"\ZÚlå}®iåpHˆÎ4{JÀöÀ–;÷3Ld;64nQqÈ(7ÛizzÉK/C{÷ãûìﬁ¢Á§˜´⁄7ÛYzﬁ£öÀÙ{÷ùc“{‘\\Ùûı\r∑ÛYzﬁ†“À–ﬁı§∏Ùûı=\'Ωõπ¨Ω\rÔNk/@ÔZnzOz\\ÙûÙ:nÊ≤Ù7ΩG5ó°ΩÎMœIÔKûìﬁ©”w5ó°ΩË)døı¶Á§˜®πÈ(t±3ƒl‰¢˛—ÈU—AD¥P•B\"Õoï∫´+5ª„˜UTÖöØ\"uVVjºà}‘ën•ÙÜ,&ÛØÌ+:_Hb¬o:˛“á∆àÇÕúw∫´´^qﬁÍÆáƒ\"\"\" \"\"\" \"\"	VcÙ9{B™¨≈ËrˆÑ´\ZbãŒ;›Z˙/8ÔuhE\"	Y3ÀohXõ<∂ˆÑk=!ﬂ•n¨Ùáv°\nµGæOuW}˘=’]Edä™2gùghZñ»OçghJ6Uy˜≠KeOüz÷¢∂”Œ’3˘Áˆ¨iº˚;Rs„ﬂ⁄Éb?Cì¥*◊VcÙI;BR4¶ÎDfã©∫	SuDT›M÷(É+Æ¡ûøÉûé~∑U˙“.:ªz˛Z8˙›WÎH±ó±cêç·v,~e¥Mıjèπãé¥.≈•üÃÆâæ≠Q˜12ˆ „À∞Vˇ\0|7˙ƒˇ\0πÎé›v\ZÔ‡≠Üˇ\0Xü˜=3˘˛ë».óX›—ï÷»c2ùå “¨<ëIN’M0#R=ëèµi∫Ö∫¡Úl`˚UL1ÄﬁV_$n+\\≤s	4¶Gt4n]–Jã®∫ÑD›B\"]A*.ÇIPãlrÑól`ﬁQH\"◊ªü≤1º®û]rv0n\ngõ_¡f∆\r¡h%4®V!â≠o+7ì¿t®Â‚ı\rWcBÖcñã‘5G-®jõFÖXÂ„ı\rQÀGÍﬁÇ∫+¥~°©ÀGÍ\Zõ‘+¥~°©ÀGÍ\Z©•tV9h˝CSñè‘5]éZ?P’¥~°®4\n«-®j◊+⁄˚j02›çj\nï,VÔè›UñrHÈ-≠mÇ€QY™Ú!˜Uef´»á›AYÍ_Hb¬o:˛“≥•ÙÜ,&ÛØÌ(|`àà,—y«{™∫±EÁÓ™Ë|B\" \"\"\" \"\"\" +1˙Ω™≤≥°À⁄ã¬ïäîEö/8ÔuW\n≈úw∫´ß’J(\nPdœ-Ω°b•û[{B\rıû}›Åh[´=!ﬂ•HUö-Ú{™∏V(˜…Ó™ åëE‘†]láŒ≥¥-k8|Î;B+eW§=k∫Œ´“µ ﬂOÁŸ⁄¢<˛’««≥µ\'>9˝™+b?Cì¥*Î|~á\'hJFõ©∫≈.à…].ÇT›E—›M÷(É Waœ_¡ÀG\\™˝i]á=}r´ı§XÀÿ‘˙‰\0Ì±igÛ-¢o´T}Ã\\lo±ÈkÛ+¢_´T}ÃLΩÑÚ∏ı◊aÆ˛\n∏oıâˇ\0s◊]Üª¯*aø÷\'˝œL˛§r•÷∂À+≠Úü≈\"ÌUïâ=.‘™—tπµØ±B\"óQtóQu$ïD@Ed1ô]a±£yA0ƒd;v4o)<¡√R=ëèµ\'î[ìãc⁄¥$QoÜ  À±ÉpÈHb\Zº§ª7ïÆyLÆπÿ—∏*JÈ]s∞pZ\"3±E—B\" (D@DDD@Pàà\"((B\"\" +5^D>Í¨¨’y˚®+\"\"\" ›KÈXMÁ_⁄Vtæê≈Ñﬁu˝•åö/8ÔuWV(º„Ω’]àDDD@DDD@DDf?CóµVVcÙ9{Qb≤\"\"-P˘«{™∫ﬂCÁÓ≠|\" îQu(¢ñymÌ\n≥ÀohA∂≥“ZVÍœHw`ZRfè|ûÍÆ∑—Ôì›ZãR°D¨·Û¨ÌZŸ	Ò¨Ì3™Ùá≠W[jΩ!ÎRë[iº˚;R?\'jäo>Œ‘ú¯˜ˆ™1∫±¸RN–´+˙ù°*∆ï+©j\"Qn´∞ñ¿∞nZT›.∑H5àÿ^˚÷ît∫ÅΩn¨\0M∞\0,7 ◊uÿs◊q—«÷ÍøZE«ÏYÔ¯8hﬂÎu_≠\"∆^≈ü\\Ä°v--~etKıjèπãçÉ¥.«•øÃ¶â>≠Q˜12ˆ „∑]äª¯*aø÷\'˝œ\\nÎ±◊<7˙ƒˇ\0πÈüœÙü\\zÈuç—mñW[‰?äE⁄´-Ú˙$]•¶Í.àà\"(A(¢Í.®î∫ã¨¢ç“øUø–Çbå ˚\r‹OBŸ<†7íã…œJM#XﬁJ-‹OJ≠tT≠–ƒ5yIvF>’DÂ$Ÿ˚V3 ewCF‡¢ ewCF‡µ¢ã¢°bë¨:0˚Ù¨˘x˝CUt∫Ü÷9x˝KTrÒ˙Ü™ËÆókº~°©À«Í\Z´¢h⁄«/©jrÒ˙ñ™ËöM¨rÒ˙ñ®Â„ı\rU—4mcóè‘59x˝CUu	§⁄¡û?P‘Â„ı\rUë4mgóè‘59x˝CUdMYÂ„ı\rN^?P’YF÷yx˝CVπÂÂul›P6-HÜƒD@E66Ω∂n∫Ñ©}!ã	ºÎ˚JŒó“∞õŒø¥°ÒÇ\" ≥EÁÓ™Í≈úw∫´°ÒàÄàààÄààãlôOCFÚÅFWt4o+)Â\Zºú[>‘ûQ´…≈±ÉÌZDDDY¢Ûé˜UubãŒ;›Uê¯…)@@àÇT≥ÀohX¨ôÂ∑¥\"∂÷zCæJ›YÈ¯-)\n±GæOuWV(˜…Ó™Ë©∫(DD¨‚Û¨Ìú^uù°u^ê˛’™ÎeWüz‘Ön¶ÛÏÌQQÁ‰ÌJo>Œ‘ú¯˜ˆ®ø+üƒ‰Ì\n∫±°…⁄ç	≈B\r·Qf∑œ|—u∫¥¯·ÓÖ¢È\n≥!¸R.’¢ÎtæáiU∆“ëYç•Y¨a3|Œäò ‡ΩK0	Íûy_!\rÜ4∫√‡≥r“…∑å, Æ√ü\ZÊ˛\Z7÷^Æ®ãç‡ô,UºÉ£:C&lœé4yZè¬lF·ıœ‡∆ç˙§ÏŸµ€ÜÀï‚Ù≥ükÛŒ1§àQ`Ùcì†√„∞d›r¬‚\0π‹7\rãÂfæ.µo≤ioÛ)¢O´T}ÃT4W£ \Zå*LÈü§49:åÎ5é∏~ v1Éyi;6mqÿ8ëÁÙ´§\Zº˚å≈!Åî8=L8}`¡¡∂€5à¸Ä∑˚e5Ò<èªkI¸∞‚ f\'\\Åªc◊\Z∫È:%“;r∞©¿≥7 y;ªk(û5π;Ï20tÓ∏„`Eà\\Â÷·ãú\"Ë⁄Y—π Çü¿*>T…¯çüG]÷‘æË‰==ç∏BÊ˜Z∆Ã¶‚Y§´≈\"Ì*µ÷˘}.‘Fõ•÷(®õ•‘%–E÷Lcû‡÷ãíÇcaë˙≠ˇ\0·nñA9(éﬂú‰ë‚rqÁ9VPË\"\ZÚlå}©A¿æCh«ïåÛrÜÕ`‹\'î»l60nU‘\"∫Anca,Ô!‹EêiEøVü÷;π5)˝cªî]+¢±©OÎ‹öî˛±› öWEøRü÷;π5 ıéÓM¶öo‘É÷;π5)˝kªìfö+\Zî˛µ›…©OÎ‹õ4Æä∆•?¨wrjS˙«w&”J ˜∂“[#ã∏-àÄàààÄààlô\rŒ∆\rÂ Ñ»nv0o+)ÊjG≤1ˆ¢ì ‰„å}´B\"#u/§1a7ùiY“˙Cy◊ˆî>0DDhº„Ω’]X¢Ûé˜Ut>!ÿ!2ùå ô\r˜4o+)Ârql`˚RyÅú{#j–ä\"\" àà,—y«{™≤≥EÁÓ™»|®D\"≈J	Rœ-Ω°BñymÌ7U˙CæJ€YÈ¯-WHµbè|ûÍÆ7+{‰˜Uqπp˘÷vÖÇŒ/:Œ–É:Ø>ı©l™Ùá≠WP≠‘ﬁ}ù™\'ÛÚv•7ügjOÁü⁄ãÒ≠Yå˛\'\'hUïà˝N–≠#BëΩb§oDX≠ÛﬂŸB›Z|w¿-R-Yó—\"ÌZcÚñÈ}.’\\É‘`k§mÌΩ~Õ Q3…¯¡C!Ü¶òO=SaÂ≤ÿSoi#·`ø·ï|ìÅ∫Î[JXˆ^√åM~≠1€…H∆»xêÿ∏&6∫„^ˇ\0úñIe¿Ÿ4ÆaÊ¶GRÉ‡FÚ|´tù£‡πæéÚQá‘g<˜;irç»_√Æî6–6⁄˚\r∂ì∞X\\Ø3öÛUf9[-f#R˙äô<ßºÌ=ÿ=Åz¨Ÿ&ø‡≈ï]”çœˇ\0ºí\\dÖ±„Ù©§JÏ˘ä∆Lbá£ùÉ `Å∞∫‹w∞lﬂ·î\"Ô$ìQ ›•,ò¬Ì¡Q⁄ÙAWQ>ÑÙ´C4œíé\n8Âäõ≤7∏I¨ÊéÍ¥ˆÄ∏ô;JÌZÖÕ—&ñÖº¨>∫U∆dâÕ\'b∆?ïj˘\ZÓ∑ÀËqv≠\risÉZ.JﬂSfEWªõ¥≠2ØtDUDh.p\r%±•Ó\rhπ*√‹)ÿYºá wB9¬ôö≠±îÔ=\n©7ﬁß´·u∫µÓÁÏåo=* ã^Óq¥cyIÊ◊≥X-‹\'õî:≠ÿ¡∏-(ä†âu&Í]®DD]B\"\" \"\"\"±-Â&ÿﬁ•tV5©Ω[ª‘ÎSz∑w°•e∂åÜÁcÚ≥÷¶ınÔQ4⁄Õ`’`·“äO0p‘èdcÌZDA∫ó“∞õŒø¥¨È}!ã	ºÎ˚J\"\"4^qﬁÍÆ¨Qy«{™∫∂G§æ†ΩñµfõdS[™ÑcÕeÍ˝©ÕeÍ˝´Vª∫ŒÔMwuùﬁáMº÷^Ø⁄ú÷^Ø⁄µkª¨ÓÙ◊wY›Ët‹ WÎxœºM‘O0#R=ëèµj.q.6ÌX°±Y¢Ûé˜UefãŒ;›Uê¯\"\"\" õ¨ôÂ∑¥,Q˘mÌ7VzCæJ›YÈ¯-)\n±GæOuhñ˙=Ú{™∫*QE‘†,‚Û¨Ìú^uù°U^êı©m©ÛÔZê≠îﬁ}ù©?üjSyˆv•Güìµ>Ø∆V#Ù9;B¨¨GËrvÑ§hR7¨n§®ãæ{‡ub¥T;Å\nÆ§*ƒæâj–¨<G∂ÿÌUíõ^[π[¶¨í7x\'g“®´TqÎ<%X˙Å”∑îäÂßxË]_2R∏˛ôV;m‘Áˇ\09y¸ÅñÁ«1jZ\n6¥ÕP¡≠∏tìÏÂ~â«4sC]ê©rm,√àQN˙®åë∂Y,‚Ê{Ñwe√<ıc¨≈¯≤hK\n“Ωv?ÉIIQ,2Ü≤H‹XÊù‡Ébõíë¡ﬁS;◊ivÁqW`ªó‹¬®ygeÛa•pxôﬁΩÜWk\"™ÖÚÍ=≠p%∑ﬁ⁄ Æ1›tW£¸fÁüDc~7F∆R1Ó\rtñ€c∏ak⁄ÎÅf|>≤jjà_DN,{,ZFB˝∞√:Ëqå2™ûJF√ºÆ©•∑ï≥ßÿ~+ÛéùÒú;ŒXçNˆIå»›Œ-h√ß∑ÿº¯emt≤iƒ*@§ªY∂CºÙ*›[Ø7ê™k’jnäÄI∞⁄U@‚\0%Y6¶eÖåßÏAjf_aî˝ä±$íIπ*/Å77;JŸ\\°ª∂0o)\\°πÿ¡º©û`·©¥cÌ@û]{1õ#áJ“°“&Ë–\\‡\0π(÷ó8ãí¨í⁄fÿX wûÑÛI:[ﬁú÷Nñ˜≠ínM ÑUék\'K{”ö…“ﬁı]9¨ù-ÔNk\'K{’tAcö…“ﬁı÷Nñ˜™˜D6±Õ$ÈozsI:[ﬁ´¢\"«4ì•ΩÈÕ$ÈozØuAcö…“ﬁı“Nñ˜≠É4ì•ΩÈÕ$Èoz–à7>ôÏiq-∞ˆ≠àäƒ1∑îó…‡:P!â≠o)6∆+\\“ô]s∞p	4¶W\\Ó‡:¥E \\ÿoA¨\nW€köE‘ÛWuôﬁõ4¨ãd—à ‹_b÷Äàà7R˙Cy◊ˆïù/§1a7ùiC„DAfãŒ;›U’ä/8ÔuWC‚öo3?∫´+4ﬁfu*≈dDDö/8ÔuVVhº„Ω’YÇ\" \"\"…û[{V+&ymÌA∂≥“ZVÍœHw¡hB≠QÔì›Uïä=Ú{™∫àà&Î8ºÎ;B÷≥áŒ≥¥ ŒßœΩj[j|˚˚V§V >Œ’˘Áˆ©ßÛÏÌQ?ûj+˙ù°WV \ZI>⁄¨WD Éc∞ÑDXÜ@[…K‰ù«°jñ7DÎ‹J¡XÜF»ŒJ_Ïª°÷ÃbwKN≥ö!´ EµáÏZ•ç—ºµﬂ¸©ÜS∫ZwÑ]\\°xk¬”4CWîãkÒ–µ1≈¶Í:˛å3@Àò˝\"$>ÓeÌ¨“\"˝ÑÆ˚ài;&”j‚U÷U’B«\Zzn£›}Ó\"√y‚wÒ_ç)k›‚≠…äΩÕ∂±\\r˛-◊IõÍfÃH‚ÖUT§rì»È_m◊q$˝Î» n‚∑‘‘ô	⁄™ªc4∆WlölW”†¨1bæRêHK6íÈÏ‚«Âd%ÇGù‚˚\n˘xÜ$ÈØræ*Óí†∏ùÂIå[ì9_ÆÎ≠jiîÔ‹¨Ä)ô¨Ì≤ù√°—NÕwã»|ñÙ*œq{ãúnJã‡ÁIπ+dN”fçÂ à ÓÜçÂe<†éN-ëèµQ 5#Ÿ˚VîDAKAsÄhπ(÷ó8ãí¨⁄fŸ∂2ùÁ°í⁄fŸ∂2ùÁ°U$ìs¥°77;—E—∫\" \"(A*.äYÜ ∆Ú≥n‡:P!â¨o+7ì¿t≠SJÈ]sªÄËI•tÆπ›¿t-hä@$ÿm(\0l6ïe°¥Õ÷uåßpËRiôwX wÖUŒ.q.7%ƒπ≈Œ%∆‰¨Qk<¶{™≤≥YÂ3›UíDD©}!ã	ºÎ˚JŒó“∞õŒø¥°ÒÇ\" ≥EÁÓ™Í≈úw∫´°Ò\nÕ7ôü›Uïöo3?∫ïb≤\"\"àÄàààÄäR»!ŸMêo¢Ûé˜Uejàx«{´F™+[5TÜ\"i©J⁄#R#E”Mî∞xmÌxâg>{Bl”]`¸aﬂ¢≈}*∏/;æXßˆ)µ±™å…Ó™˙•}z:m≤l˘´P•ˆ&Õ>v©MRæ†§ˆ,€EÏMú_\'P©k\\◊7Öˆ[EÏY∂Ç¸íÒ|«EŒ[Æ¡iÒ“´rn\nÙ1–∏Ï*—√Cuö€H7éï9/ñk◊\rÑ+.Éú3YÇ“\r„•}¡Öû©[c¬‹◊4Ö9^WëwB…±=§pBˆGÂ€Æ∆Y¸Eñ\r¡]‘=…Ã‡Û/ß5◊`¥ÉxÈUπt/iˆ∏¥ﬂ±X~\0eo(∆m˘¬…Õxº ÓÑÊÓË^‰`?1ln]y˘âÃ‡Òëƒfg\' áíÂ°Ùí1≈Æi∏^ıπnN*€r€Áf´òu∆„mÍs89‘1…∑]ßxÈ[M,$ﬁÔ‡˜üπYÅ±åﬂ±H ≤˙≥‹úŒÕ\"Î?πO5ã¨˛ÂÔ∆Tõ’Â?π9ΩQÓNg>Êêıü‹ú“≥˚óA˝…ÕÍèr~‰ÊıGπ9Ø>Êêıü‹ú“≥˚óø9RoV{î´7œrsN/Õ!Î?π9§=g˜/}˚ì®;†˛±vT®‚#∑bs8º5á¨˛Â-Ü(é≥uú·∏Ω√≤ƒçﬁ\Zµ;.∏p˚ë≈·$çÔqs∂í≤ÜëÚ;uö7ïÓó\\Á[T€â≤â∞r…∆¬\Z7˚UÊpx©¡’‰‚`˚U~E›Ÿª#Ê≠n¡à˘©…8ºá$ÓÑ‰úΩY¬U`Ï(ıU‰qy∏âçé’oÜ~r‘XÎ‹Ô^ïÿg±kvn	»‚Û∫éËMBæ˘√˝ãY†ˆ\'$‚¯z•F©_h—{èÿØ$‚˘\Z•5J˙Üìÿ∞4æƒŸ≈Û¨TY_4˛≈Åßˆ+¥“ñ‘±VÃ\nl“≤+%âç\r4\"›®±-D”Z,ıSU≤’V\"àFﬁRm‹“ÜëMcyY∑p+T“∫W]€∏ÑôÓë◊w¿t,,ÇÄI\0íÄ&√iVÄm3nle;áB\0⁄f‹ÿ xt*Æqsâqπ(æqsâqπ*EìÁ∏5¢Â˙œ)ûÍ¨¨VëÆ–\r»*∫BààÉu/§1a7ùiY“˙Cy◊ˆî>0DDhº„Ω’]X¢Ûé˜Ut>!Y¶Û3˚™≤≥H5ô+FÚ6´ëI±\nD@DD!B …*Pd§,.óAráŒ;›+@[(èåw∫´Î\"Ì∏≤-\Z…¨Ü÷A0B©ØÌR$E⁄Ë!låçfˆØü õ&≥Å=*h€Í‘ëÀª‡±i\nçEH|≈Õ79SK∑‹£snˇ\0ub◊5|Í:Éy=’§Tûï4ª}∂π´k\\≈ÖYÈY\n√“úMΩ^≈µèg±y±ZzVb∏Ù©≈y=C$èÿ∑≈4m Ç^LWûïêƒOJq^OnÕ÷mÉ∆Ò“•íƒ7Ÿx∂béi:ƒ+_)rÌ÷a¥ÉxÈSäÚ{8j\"cÅ]^S»›v[[à\\‰bÆ.V»Òó±¿µ qß(Ë±‘¿8´îı–1¿ﬂ∑jÊÓ≈LåÂ#vﬁ-ZÜ4·Ûìâ :ﬂ;•’i\Zß±oã£ı~≈»·«ﬂ∂∏ñù·lós,Ê:Ï;î‚ºùí,NÄoÓ\nÏ8Æ\Z-‡0ˇ\0d.1˘Á¨Üaó÷ı8£Ù$Æ(€z√Ëç™Ï8Ü<∏)˛$˘ø˜C/¨wz√\'\\˜ßî~úãÀ£ŒAN{	VYçeAÂR1›ÑØÀ∫):ÁΩOÓäNπÔS˛3î~§v;î≠≥Ôëjv;ñ>n∆BWÊ›û∞˜ßÓäNπÔO¯ŒQ˙bL{\0˘îP7∞ˇ\0öß67Ñª…`ocÄ˝ãÛóÓÜNπÔQ˚°ìÆ{”˛3îw˘Ò<)¸˛?¯*2’·Gs~–∏iÃuœzƒ„ÔÎïx£¥KQá€;ï9%†\' ‡!8Î˙ÁΩbq«ı º) :•Ee\0\Zëªg´ΩPí¢ìÉárÁwY`qóuï‚réÅ$ÙºﬁÂ®Ú.m⁄ÊXØqwuñwY8‘ÂÂÏèÉ£ÔUﬁ∆uôﬁºY≈]÷XúLÙ´∆ß(ıœçΩfw≠/åt≥ΩyCâïÅƒJqß(ÙÔàt≥Ωit^÷wØ6kœJ¿◊ïx”ì—:/k{÷ßCÌoz¯¥Ù¨\rYÈN59>Î°=-ÔZùÈoz¯¶®Ù¨MIÈWärè∞Ís“Œı≠‘ÓÈgz˘&†Ù¨LÂ]}GSª•ùÎNÓñwØöf+)WI∏˙&ô›,ÔX\Zgt≥ΩPÂ\nÇˇ\0ji7ç3∫Yﬁ±4ØÈoz•Æ£Y4n.\ZWÙ≥ΩcÕ_÷gz©¨ö õãçâ∞›Ûm∏*º“]w|B’t∫i6…AQuâ[aï±á[øÅZQπ≈Œ%∆‰®D@D[aÑ z\Z7î≈§uõÒ={‰l-,ák∏πc,¡≠‰·ÿﬁ\'•WEÒ+tÎ\ry\r£jòa\Zº§ª>’ÑÛ\rÜ∆\r¡2πÆy,n´Vàç‘æê≈Ñﬁu˝•gKÈXMÁ_⁄P¯¡Y¢Ûé˜Uuîo1º9´të∂VÚëo˘ÕEVR◊∏õ°»mKn,%j™AÇ,B4ñêA±\n◊ÉRﬁQˆ¢˙®äH êEàPà\"\"\" \"\"\" ≥EÁÓ™ÀdrN&◊∏≤÷ÄàààÄàà%\"4{‰˜U{≠ÙéÓ€XX-RFË›™‰_ånRÂB\"&Â.T\"	÷*uä≈e¨T∂G1¿¥ÿÖÇ ∫O9n≥6J7éïW]¿ÿﬁÍ‚«4ÿÖe¡µ-÷mÑ£xÈEı™*á∆‡Êü¯≠Ú¯∆r±iΩ\nô6;÷QHËüv¸GJe ï∫\ní€±˚c;˝ã£k€ ≈ªàËU–ÒjFH◊xsN‚6õ®˛Â©≥H–^@.q/\\°∂võ®˛‰¥›G˜,9ƒΩrú‚^πP€;M‘rZn£ªñ‚^πN^^πClÌ7Q›…i∫èÓXrÚı rÚı gi∫èÓKM‘r√óóÆSóóÆP€;M‘rZn£˚ñºΩrú‚^πCl≠7Q›…i∫éÓXÛâzÂ9ƒΩr©∂Z≥u‹ö≤ı‹±Áı sâzÂ\r≤’ó®ÓÂ\Zíı‹±Áı sâzÂ;6ÀR^£ªîjK‘wréq/\\ß8óÆPN§ΩGw(‘ó®Ó‰Áı sâzÂéN^£ªììó®Ó‰Áı sâzÂéN^£ªìíó®Ó‰Áı sâzÂë…K‘wrrRı‹ßúK◊)Œ%Îî:G%\'Q›……I‘wrûq/\\ß8óÆPÈîùGw\'#\'Q› yƒΩrú‚^πC§r2u‹úåùGw)Áı sâzÂë»…‘wrr2u‹ßúK◊)Œ%Îî:G#\'Q›…»…‘wrûq/\\ß8óÆPÈåùGw\'#\'Q› yƒΩrú‚^πC§r2u‹úåùGw)Áı sâzÂë»…‘wrÉ¿πcÄÏYsâzÂC¶ë¿Ç‚ADÈ≠dÕ]qØ}^6[fõXjF5cj–à\nƒQ5≠Â&ÿﬁ•Lq∂&Úì|\ZµK#•u›æJev›ÄnZ-¬K‰:¨j\'≠¨j”uﬂ‹ßVõÆ˛‰Ÿ¶æê≈Ñﬁu˝•oå”±·¡Ó∏ˆ-ÈF‚QX\"\" ≥éGFÌf¨©#lÕÂ\"ﬂÛö™¨„{£v≥Jﬂ#3yHºØú‘_UT¥ñêA±\no¡©o(˚URIXÑi- ÉbØ•º£ÌEıQ∏í±\nD@DDD@DDD@DDD@DDf93y9w¸◊*»É9ctn’pˇ\0ä¡YäF ﬁNmˇ\05ÀM($‹t›\r4\"›Õ•Í}©Õ•Í}®i•Óm/SÌNm/SÌCM(•Õ-q!B…Æ-p-6!bà-∏6•∫Õ∞îo*©6;—Æ-p-6!Y!µ-÷mÑ£xÈEı¶LN∏›ƒt≠ìDﬁV/\'àËZ ÿÔY√)â◊Aﬁ\Z—Zt\rêÎƒˆÜûÇéjzÏÔMÆïëYÊßÆŒÙÊßÆŒÙ⁄iYûjzÏÔNjzÏÔMöVEgöûª;”öûª;”fïëYÊßÆŒÙÊßÆŒÙŸ•dVy©Î≥Ω9©Î≥Ω6iYûjzÏÔNjzÏÔMöVEgöûª;”öûª;”fïëYÊßÆŒÙÊßÆŒÙŸ•dVy©Î≥Ω9©Î≥Ω6iYûjzÏÔNjzÏÔMöVEgöûª;”öûª;”fïëYÊßÆŒÙÊßÆŒÙŸ•dVy©Î≥Ω9©Î≥Ω6iYûjzÏÔNjzÏÔMöVEgöûª;”öûª;”fïëYÊßÆŒÙÊßÆŒÙŸ•dVy©Î≥Ω9©Î≥Ω6iYûjzÏÔNjzÏÔMöVEgöûª;”öûª;”fïëYÊßÆŒÙÊßÆŒÙŸ•dVy©Î≥Ωb˙r÷ók¥€†¶Õ4\"\"¥∆6â%⁄Ó\rX¬câú°ü¿t-/{û‚Áî_$éë⁄Œ+[‡Ñ8k…≤1ˆ¢zA#îìdcÌXœ)êÏÿ—∏$Úô\rÜ∆\r¡j@DDD@DDD@Y∆˜FÌfïÇ µ#3yHºØú’Ug›µöv≠Ú1≥∑îã ˘ÕEıUKIi°¸\ZñèµUp-$b“6!Zj[¿J>‘_UKÅi ã°DDD@DDD@DDD@DDD@YÚèÎªΩ`à3Â◊wzrèÎªΩ`à3Â◊wzrèÎªΩ`à-¥∂•∫ÆŸ(‹zUg4µƒ8XÖ\0ÿ‹oVZ[R›Wlîn=(æ™¢…Ì,qkÖàX¢\nZ‚◊”b\"d6•∑mÑ£xÈUH ÿÏ(◊∏õ≠⁄ñ›∂ç„•<_UIÖB àààÄàààÄàààÄàààÄàààÄàààÄàààÄàààÄàààÄàààÄàààÄà∑AøÑ˝ëçÂ¡øÜ˝ëçÁ•DÛrÜÕÿ¡∏$ÛkŸ≠ÿ¡∏-(àÄàààÄàààÄàà8ﬁË‹”µ`à-H∆ŒﬁR/+Á5UYF˜F‡Êù™√ÿŸ€ G±„ j/™™A Ç\ràPàã<È‹Z“zlúÈ›Fw*»ö6≥Œù‘grsßu‹´\"h⁄œ:wQù…Œù‘gr¨â£mÔ®/an£E˙–àÄàà$m;á1êƒu¿28l\nchßg) ªœíw∏Ω≈Œ7%∆(àà\"\"\" \"\"\" \"\"êln\"Msj[™˝í\r«•WsK\\ZÌ·@67vÔAàÄ•Æ-p-6!B ≤jÌØâ•‹JrÒ˙Ü™»ö6≥À«Í\Zúº~°™≤&ç¨ÚÒ˙Üß/®j¨â£k<º~°©À«Í\Z´\"h⁄œ/®jrÒ˙Ü™»ö6≥À«Í\Zúº~°™≤&ç¨ÚÒ˙Üß/®j¨â£k<º~°©À«Í\Z´\"h⁄œ/®jrÒ˙Ü™»ö6≥À«Í\Zúº~°™≤&ç¨ÚÒ˙Üß/®j¨â£k<º~°©À«Í\Z´\"h⁄œ/®jrÒ˙Ü™»ö6≥À«Í\Zúº~°™≤&ç¨ÚÒ˙Üß/®j¨â£k<º~°©À«Í\Z´\"h⁄œ/®jrÒ˙Ü™»ö6≥À«Í\Zúº~°™≤&ç¨ÚÒ˙Üß/®j¨â£k<º~°©À«Í\Z´\"h⁄œ/®jrÒ˙Ü™»ö6≥À«Í\Zúº~°™≤&ç¨ÚÒ˙Üß/®j¨â£k<º~°´	¶2\0–5X8•ÿàààÄàààÄàà?ˇŸ'),(28,'ehogalde@simsanjuan.com',' Enrique ','Hogalde','21232f297a57a5a743894a0e4a801fc3',''),(29,'fechegaray@simsanjuan.com',' Federico ','Echegaray','21232f297a57a5a743894a0e4a801fc3',''),(30,'afabregas@simsanjuan.com','Andres','Fravegas','21232f297a57a5a743894a0e4a801fc3',''),(31,'soporte','Hugo','Gallardo','21232f297a57a5a743894a0e4a801fc3','ˇÿˇ·\0$Exif\0\0II*\0\0\0\0\0òÇ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇÏ\0Ducky\0\0\0\0\0<\0\0ˇ·)http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c061 64.140949, 2010/12/07-10:57:01        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmpMM:InstanceID=\"xmp.iid:586F2B7E1A3F11E98424F8C387FCBA79\" xmpMM:DocumentID=\"xmp.did:586F2B7F1A3F11E98424F8C387FCBA79\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:586F2B7C1A3F11E98424F8C387FCBA79\" stRef:documentID=\"xmp.did:586F2B7D1A3F11E98424F8C387FCBA79\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ˇÌ\0HPhotoshop 3.0\08BIM\0\0\0\0\0Z\0%G\0\0\0\08BIM%\0\0\0\0\0¸·â»∑…x/4b4XwÎˇÓ\0Adobe\0d¿\0\0\0ˇ€\0Ñ\0		\n\n\n\n\r\r\Z\Zˇ¿\0ÑÑ\0ˇƒ\0¶\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQa\"qÅë°±2B#¡Rb—r3·ÒÇS$¢≤¬Cí“c&s4%5\0\0\0\0!1AQ\"a2#qBÅ3°Rbˇ⁄\0\0\0?\0◊e˚G‰!Y\0»êÄd \0»êÄd(\nÅì e\0®\0¶\0 ÅëC(ÅP2Äd!Ä»R2(d\"LÑd*î\"ÜDäFD+\"ëêà2(d@»°êàFEÇFD®V@2êÄe¨âÄ»°ë*@2Äd \0»QC*@2à2†e\0 ÅêÄd d™PÄeT2 dP»ÑdR≤î*ë\"ÜDÅEàU# DH Åê+ \0»°ë\"‡¨Äd \0»@¨†M™ÅêÄe\0 Öe\0»ï @2†d @2d 2(d 2(d \0»ê¿e@ êÅ\0»T=ê+ \0»ÅëJ»@2ê†P2Äd*PÄd 2!Y2 d»@2êä2ÅP2ëC 2ÅëC\"@2(dB2d»@2d \0»$d*P+ \0»@2d \0»@2ê\r™êä2ÄeT2e EàF@2eC&@»DäF@2π(@\0Äd\"EÄd@ ®e\0»ï@ ÄdR2	YP2 d’¨™P™ÜQ2\0»ëC 2LÉjêP†P2î ÅîÂe„bWÓ‰LWX„#¡gn…ØÀZÈmÂzßÓ/L¢·F 9∏;Åà¨èÒva¨ÒÓøC{Û·ÀuØ‹é±vÍ®G Hâòí,Ä@Apwax˚?∞€iáØOCYs|π…w˜tP}—‘,g 9Ñ√s‰ºˇ\0Ìo˘wˇ\0SØ‹Èˇ\0º˘ï—\nÛÒ„m±m÷√IH?8r´OÏvìÀÕŸ˝n∂¯Æª£~ÁˆÁPŸUì8πS\">›üu»˛q£r’{z˝˝vÒ^>œG}|œ1÷c‰—ëTm¶qú$J$ﬂ%Ï◊y~Mµ≤˘JÀyd2Äd*@2êÄe\0 Ñd»\0 ï(íï QR2†d\n»P+ µ2@2êÄd \0»\r©ê2)v¶B2ë0I£	NZF!…Y€y>Z◊[~/v~‡«œ”`êl’Ï1qß·’æïÚ{ˇ\0∞ø\ZæßG°˜≥ŒlÓn´‘ØìŸ<òó1¶Vz∆öÌ†æn›ª_ö˙ZıkØƒe÷qƒ˜_\\„	õ;œ“¬√§ãYxX˜Rl√≤ŸL¥ge±>\0jVr∏W∑ß◊˙pa8ÕÀâ˚‹‹r!K[öÂù —X∏zß\"D4}>mÛRl›Î°(^\"d†Í\"0Ò!nW™ˆrıå,àN¨ª*ç2ﬂ	„¨BÔßu◊ÌÁﬂß]æc‘˚_˜RåÌ¥ı\Z£Mí“2Å&/¡ãÍæüOøü>ow°è:Ωã™æuHN$8 ∏˙ó—◊y~;mpìj“\r™†⁄†6™°êÄdB2⁄†6îRmTÄ⁄à6m*ò&‘Aµ2$⁄ô0]®∏S&‘»]•LÉiDPPÄd‘QµÌLÉjdT»6™\r™d¿⁄U»6©êm)ï¡óY\njï∂∞Ä&DÚK¥ì$◊7%Óœ›_u∏¯Ï°\r–“\\¥‰¯>œ±wæ>w◊ı¶ìœÀŒo…ŒùªÁ)pÀ“@≈ı^;^…∫GL“1Á(e&k\0ç¿p⁄bDπj≥…æ5©óã‘p2èø€√OÀê:Å)W≈÷WnäÚß	Jcd»m2aÒô‘2◊œß€MpÿL•˜¨åò;Ò\r˙,]≤ÔÆïßó€VdÙ⁄Ö‘\r dˇ\0\'”ÎXÂÂ◊èáìçv‰,åÑ7ò◊ë&Ûüªk≥Àæå€1ïôS e\"Ú†;èíÈ+çàjæ⁄-˛R¶:q‰µ+7W§v?Ó)ÈÙ«.ØzÉ ,πÃß‚[¡{˝jÎ‚º«´7Û«ãm9TFÍd\'\\√∆@∏!}}{%ôèì∂ñ|•ˆä◊&xèdß#àß#àˆSëƒ{)»¿ˆSëƒ\nÇr8îVô\\÷ëÉ}†Ø$¿5ENEÄB*‰¿Ÿ¶L¬*Êò\"ô1	∞&Pˇ\0h¯+ì€>	»¡}¥…Å±2`lLòÇd¿Ÿ‰¶LTO$‰q/≥#…9/ÏK¡9A¶I»‚Ohß$‚_hß%¿ˆT‰q,is¡K±ƒÛåTÊº	Ï\'3àˆSëƒ{I…fß{Aî‰∏yáÓ˜r€èàzEüÁ1»úHG˘t◊UÛ˝ﬁˇ\0˝cËz]y<¨)¿˚æÏ‰†BB |bc/µ|õ_VGC”˚l‰B$â÷5ËO»Ë5\\vÏëËÎÍµ~=\Z‹hë8[T°≠s‹Ã|^√—ØR˘Î8˜”‘!¥òÏ9q$â\Z;Ù◊…÷ÂpﬂÆ√Ò\"6\neXòc2π∑¯•¨.ÙÍ™ß&&ßçü…1∏‰|÷wv“◊Mç“Ûrhù◊ÅÄC9?”¡y7ﬁJˆÈ•¨ÆµŸòŸQ1ïD»TÅ*È‹õÙπõ{^ﬁúDF8ùGåÁ””û°õ‰Ω3±ÊΩ9sùo∂±∆„é ‡âÃÓ ¯¢?bÎßf\\;:lU∑ßX–/ú®∞¡çÑ8vÙª1\ZhWlº÷=\'ˆ◊≠€”sOM»üπãîA¢B^òÀúÄ‡“>€Íwq∏øo∑” f|«´±_]Ú™ô#BjÅ5DP!‹™dû§î¡êÂ*jÄd\0QB{¢±ÜÚ)äµ<ÄÌH¢UB∆QR¬S„(>•f ‘∞+	∆ôÑ˜\"Ø\Zdnâ‰¶)òƒÚJ\0J Ëò3ÉΩ–ß‰iúJ∏LöepÑ6C¡^4ª+ÊÊUçãnEür®ôóÚóƒ…ØõáÅıÃlŒµùë‘Óôç¶ZŒ”∂1è(F#Y_ùÌﬂ6◊Ëzµƒ¡›ø—+ôÖóT!Æ\" yü\0ºùõΩ˝=_ósèÖèÅ\\|óãm´ÈÈ◊#^ûïá~1Æ ‚Úã	p!˘É…rªŸ]g[+µ≥k2êêæ≥§c`1êèƒhWY⁄Á∑[++∑∫ï£Ÿ«sYeTÿ6ÆÔ÷vº˚zŒØµª#6™„~D4\0\"ÍYÏÏ…◊”äÍ„”ç0#ôÒ^M´ﬂ§ëÒ‡k€1Æ§a÷\Z„ñVWOÅñ›¢M®åùºı¶ΩÆW¶0˙üB¢ÿ\0 +ô–≈∑ÙÆ˙ˆ∏Ô“·˚ã†˚1.[wK’^”¿sÏÍÓÀÁwÙaì–anl7^aMdë-N¬†Ü-Ò^úºV>ÅËŸ√/¶—qêî•∏˘Å«ÊøA—∑-%~ø^;ÿª∏xÆÿr»$x¢dÖPhÄp»dö\"\rrMeLëhà]Fàdh¢èJ∫¨á)Ö»‹S	ëπ0dªìêÈÉ! a°êË@9L…0d/¬‰ø$R∏L¬‰Ñ´Ñ…F\'x‰å~ﬁ ì˙¶qÛ2 .≈∆ïﬂ÷ôÏè\'9?ÆªÙÛojØπH\0å•.oÃØÕÓ˝&ëØán}ÿ\rÇÚm|>ü\\t8Åÿëß%ÂŸÏ—∑áµòÒ\\kºkW\r—4*y0≥ãä,∂ ¿mé§˘Ú]5ÀHﬁçÙ”Iàæ@3∫€ák?\'VHê˙Û:è©b«mv¬§»poƒ,Òoì;&ñ\ZÒ+67ñu„OÇ∫≥c#;úòŒDv–!πÒ]µ∏y˚5ÃyèTËÛË˘í ßuqØv›öƒˇ\0N“ˇ\05Ù˙Óc‚vÎäı€å´r˙,g2˙è0ÀÓ_ç|/Ï$Â+≠ˆ‰æÜ_?ˆ d¿ˆ§…»¡=π&Ll≤d¡6r`l)î&‘»6î06î…Å¥¶Lc©ï&≈ròQp6® ≥í≤(˘ ]<Äd\"•`Ädä\0≤)]\0S\0pò2B©B dP¡ƒ˛Ì[e}¨Ezn∫•‡\"Ú˚C/\'ªÎØg•?Ïy>SŒA˜Åz|è“Â~wË:æ]èKD¯0^N ˙}nèå.+…k€´VôÏîOèŒ∫Íﬁƒ∂ø”ng/œ¡]Y⁄y_≈≤âDêCº8-∆,´ïŒ©6—Í\'√ö”U±,]ÖŸ¯—_~Yπy0;†\"^V’◊;]¥÷∞Óæ2w:á’rµË√3 ˙òp*ƒP¥ƒ:Ì>∂ég≠µë «≥’˘f`hêm>&.Ω˝√‚˚S˘7ie:˙^F9ˇ\0.πDàÊA»˘Ò_s–Ûó¡˛√˚‹Èq|ﬁC‹	ƒ‰=œ$‚r&Ò‡Ø#xL&I∏x&ìpWH·$—S$D+\"Ü@Ö Ÿ2®EÅv°Ä»LÅêÄd\n…ê2êPP¿d 2`2Éœ?{¨5v•2ﬁ`Tglò/\'Ωˇ\0÷˜z˝ü¸<É§‹/ÍQóÂ@?Ã[Sß–æÔΩ’ÚÙéé7á]˘/ü›_W™7´#^<ôÏç,Ydu·¡cjÈU\\ık†	*·o’\'#_¬∫ƒŸfπ÷∂à∆˜L9$¶.2ç†∂üé/≈b÷‰≈»≥Û¨àéÿ…s±“O¿≠Küå’	ªÅÕwé;∏Ó‚ çF©èU2¸´‡Ì°;ÑæLΩ˝_ãÏ\\◊U˚k∂7d‘$%kÑ·/Êÿ—‡æ«ı˚yØâ˝Üπëﬁ˚kÍÚ|¨€W&∂ôLi9 r^#Ÿ)»‚_aNgÏß#â=î‰q\'¥Ø#⁄NFÌ)…pCYWí`û—NF	Ì‰`ªJ”8.‘»6¶@»d2êà≤d# V@2êä@2®2ô Úˇ\0!3cWDÈXœÍª\"v7ïpo∂k√ÔÌ¸d}Îı˛Vˇ\0áôˆÆ,E…<F≠_wﬁÈè@Ë_ÜøQë\'‰º—Ùzk•∆£ıq`\r°^|aÎõ∆µ8sÑÄ‚Gz,·“lﬂ«ÑE@Hi£¶0óe√MSª`ê‘	¶fﬁŸ\n·ì\nÑ∂ôÉ©ÔZçOÑˇ\0§«$˙πÅÃïÁU≤(Øha©‘êV8∑ÆÃ| =F@Ë4b±áIYÚ∫Qg¿pETúâîN±]uØ?cŒ{–›èõ˙í§ÇH\Z˙õ˚¬˙7√‰{\Z‚∂f:¥nÎÜ©É∫ ¨ÿw0ƒƒE}?Nˇ\07»˜g{`}w«\r<Ñh¯™ä\0ÄÄLÖB2# D *ôIÉ#q)É%yx)Ö5ñ‹√*@mCêÄd\"@¨Ä⁄ä\0»ÅëC 6©ê2dS d»˘˚˜◊≠eÁw˙Y˝/Ma\\@ıŸ FRÛ_#›Ì∑n?á€Ùzd”ó›rù.∆5“å}QÊŒÀÁÓ˙]W\r™;íX«	€?∆˙Ò\\w”/NΩòÖ£ª˙Â2–âk≈€Â√ÇÕÎ ~⁄Ë∫GÓéUr…§òç4◊ü…s€°◊_gÚÔ˙?yau\Zb`Â(ûKÜ›xzÙÌ ı}N»ÁDâÇ$\0Â’rëﬂ]•XÍr—d∏≈⁄KNó$ß≠„cõ‰\0:á:Ñö◊\r∂äô}˚€—ô®IÁ√~k§“◊+€ÜMΩ„ÖtfaYôâım◊h˛`x˝4ûƒ,3±s\",åÉÚ\0ËW-¥±ﬁv ´Y2≤L}Øõ*g.[˜8±Ëø®≤@X\'≤°Ãí\nÙÙ|º>‹òÀû˝¢ñt;ÀËD˛í;Âëi“1âjxjJ˙ûøf∫Ô3p¯ﬁ«N€Èf≥/¢›}ÁÁmÆ$*Å Ärò2IÉ%‹T¬‰nÚLSCH¢ójô0CôL\rÖ\\ò$)ï+\"ÜZ`åô\n…îS*]•2`mL¶–ô\\@2 d‘ ç©îô&@»°ê+(Ñd»˘´˜Vã´Ô˛¥e®ëÑ·ïq1_€üˆWË˝;ˇ\0N¨Në”Ú≈8ô\0âcÓÑm§ƒí^[è®puÊﬂhÔ§ø)Pû$ÆŸ	@ñÄé”‰bãÕ|ΩS¯íéÍÓ√7«ê¿@KÂ™ó´Rvm~!˘]Kªs∂œ#ßÜv7{&ø¶Z-M$¯¶v∑·ß—:èua\\%	[˙•Uê3Ñ¢5;d5ˇ\0·*]øÀr_∆OÔ#’ËéFMíúE’Ué7òâ“E¯xÆ;uÀ3Ùtˆ\\‚∫ÆËÔ\Z°âQÜ&f=÷#^N9¨†›)Éµæ\ZÙˇ\0òÔ€ŸdŒG]Í}SQóêeX∫≥∂\0¸GÈ[“œ®Ûm-˘™=/Æˆ≈wF9ñØÜ\'Ë]-ﬂÍ8q÷˝ª^ª–¨åg“s*™∆0îh∞¿ë ≈ƒâ‚\nœÏ⁄~[◊™_åT‚è[∆rq&$ëeõ€ñÁ^>ıŒ‡ß¬ªsr§”∆ôˆ„\\c3µß-—îãÉ˜bØ_^õ¸ÊUﬂ∑}><∞;Ø3®töz¶h;)îe˙SßÂH\'Óø“∫Èuó\Z∏ˆÚ≥5◊ÙØ–‚Ù,j:(ˇ\0©àú§~Ëq∆…-‡8Ø&¸≠π}.ãÆ&>ﬁì”˜KS/#\\w0Ø◊zõÁ´[˛É˜Ù„›ºˇ\0˙XÿΩy0Mä‰¿0L¶	±2`ª\nd¿ÿT‰∏.≈2∏#2®FT.—‚¶T‡ UÇò\\É òLë¬∏µ\\≥Å¥ ]B bÄ⁄ôAµ2CjepT†2W e\0 ‰†2\r©êmLèûˇ\0}Ë8ΩÂÔ\0— ≈™√Êbıˇ\0È_#ﬂ◊˘æ˜ıªgØäŒÌdJ‹}≥ˆÎ«›—…q†_?Ÿˇ\0å}[˛UﬁÀ°aÊcYâ€)X∆$D|ƒ@ö˘º±_NuÊ3®Ì|ûû6STrq‚^ïm1ÛØfVuqk·”ë∞SV´\'F⁄\0ˇ\0ƒ søñ¶≤˝°“kß\Z€4«À!™ì%»º|õ‰€\\FGÌﬂLù]J¸ª•)⁄HÄïúLFÄáÒe◊ª|ÃF}nØ6◊†˜é,záo_ç¥N√Y5¸—÷:¸B·Æ¯±ËÏÎó[l:MìÈ4!ΩÿF_òöh5~[v/>ù∆eëwCÈê∏~≥W\\Oﬁˆ¡ÅÍÁfﬂEÈ’Ocvﬁd±¢=¬ƒlîc´jt+_ÏW;Îj^ù€}KßHäzî¨®ÿ‰{§ô2≈ÏóÈuÎ⁄‡Ï.ãëù÷ˇ\0[‘≈ìßü“—l6ôí@àîFÇ1⁄Îw|kâÚ«>[˝c\Z\Z¶	âK`<’Î∏Ú÷˙Á\Z∫é›È¯î‚ÙÍÍßÿ«¨≈·«R9¸JÛÛ∑kó∑M8Ã:loÚAfrHDï˙ÔÎµ≥£W·ø∂ﬁ_gl%^◊Õ\n.I™&F™ÉTÂ™2\0»LÑd ïEô@»\0»(@ U2†d VLÅì ⁄S!v2ºF‘…Ä¿ B3ˇ\0‰7A∂¡“˙≈r1û-£¿ÉÓD˝´¡ÔiúW’˛∑≥’¬vÓiØ6öÙU	…œ\05_+ÿ¯}è^ˇ\0\'ßtÓ°TB\"LIì\rÀ€W÷Îπt∏w`ê˙Å<˜ÄπWßéÿYûWNÆ¢}⁄âÍCç¸9>°ùèóì(áÙüë]t÷πn∑“±}ª…iX⁄/˜-m<;ukÜÏ£+\Z3õéG¡s‚Î¥Øëèèç9èwr;´âi◊#ƒ«˘¢|∆{*z1:eïèjˇ\0D∏Fc_©36¸:>.≥¨÷òÜ©üÚ∆/·üeÛ™ÑOπ7\'‘Je´teA≠¢fI÷Q\ZÎ«D÷πÏ£”¡≥´@XAã»ì…òØ\\ˇ\0ãÜ|∫⁄kÖX1ˆ«§ŒG1¯áÿº˙kù±ÕˆƒÕj¬Ωêå?îÙ/€ıÎ«Y?Á]€ÛﬁÌ˘•eºπÜLòô@…ïôB2πP…î¶@»°ì(FW!YL®⁄ô0M©ì	v2∏S)Ä\"ô\\bô06Ör`2!2jd¿erÉjô\\€<Çúóç8TT‰ºJ+K≤Ò)ã&WePåS ⁄U `mS&¡Tq?ºU„O∞Û%xıB •Gˇ\0®dﬂ˘I\\=ü¯WØ“œÏò|ˇ\0ã	√(‹4Ñi\'√q¯Øã⁄˚›_/[Ìä˝òH¬2ìTÄ2˙J˘›◊ÀÎtO”/\Z®É!ækÕöˆqÀ/´u‹¬√æ0DŒ…Ùƒk™≥5ù¨ér´±.›&Ÿôs/¡◊´Y„nìßBπ∂ﬁ\'@k›≠ÿÀƒˆkà6X⁄¸R»öÔï®Æ—(œÓ≥Ö πÓœ¿Ótﬁ•ÿ∆TZ7cZ@.óÊ≤˝,∆”¸ª\ZÚ,ßuU÷Ú6Öú≥¬≥2=®Ã ∫„Ú 7÷±ï≥√?\"·ª€÷O£r%jGõj©”®6u\ZÎ‹AõâHxm’zuæ§Õu=6»Õ›§i¨Óçcƒs?¡zˇ\0ÆËÂ€/„ÀÀ˝ß±√¢˛oÜÎ/”ø\\òÅ2d¡YE&‘…Ä…ìjd¿⁄ô06°Ä»`0@2d2Àe⁄ô…ìjeú\r•\\ò(¨©…fß{Agõ\\KÌ\'3ÅEqSïjk€…L’ƒ\Z(ï…Å¥&Sjd¿ÿ‰q&‘ `õJπL\râ»‚M°2òbwólW‹ù˛ï+}âXc:≠m¬3Åp„òYÏ”î√ØOoÎ€ìÊÓ•áoO»ÕÈñ+Ë »≈⁄^…ì≥ÚuÒ;u∆ÿ¸?A”∑-s>›ouŸ“e\\üÚÙ#ö˜j˙];∂hÎ˜ıπ`‚ u∑™ÏÉ®åO·Ä˛o±q··ÈΩﬂH;Ë˛ìµoØ≤”î≥„-§˙âó5æôùú˚7ƒˇ\0/8√Ô.£ÖVpá\0¸ó≤ı Òœb«q€øπÿà{3„ t◊Ê∏o”^˛üo[<∑Úu:5Ô≥ ﬁòèQ? ÎîÍµ◊gIˆÉ•~Âcuºÿ`Ù˙n7⁄vÇb¿Ê>\0+∑MûkûùÛoáS◊˚vÆ´”?L-ˆs)Xw∑›≤#üëÊ∏Î∂+µ∏ôsùµﬁY4eO§uXú~°évŒ<|%ÃIŸ◊˜^Ÿ≥∞∑®	÷ªç$5\\∞m≥>7Ô&Gá˜.òyvæK—%O˙¨%94`\')ì⁄|\'_ùùüBû=∂¿<gaóàéüj˚ﬂ÷kéª5˘œÔ6ˇ\0∂k¯ç=•},æ.¬úå\rär8çäÚ8çär^%⁄…Åµ2`åÆL\r•2`l)ì⁄ô06¶L\r©ìÿ¶N#bepóbœ&∏ójô^#br8ó`NG≤ô\\E¿bôL\r•2qëƒªíÒr8óhS+Ä¡2ò\Z BJ±≈T¿⁄S&≈2ºF–ô8ç°\\¶<~ÂÙ£ã˚ôë\r¶5eÌ ≠¥sdFÊˇ\0ä%|Øvck_o—€:D∏›3æÁîf\Z9UB⁄√∞vi∑ˇ\0\n˘7ku}m\'ñüt~É£èpƒT%k∫\0∑ÉYÍπΩû+∫0s°*¨…ÅÑû2Ñ∏I˘ê]v€\\&∑íé¡ÌÆ®Û¢¯‚NZƒ’ c1\'ÏR{|Ø˙πV?±ΩF»©ÍNÉ˜âÑ∑\0KpÆìŸïÀWi]gD˝†Ë]3ﬂÃ§Áﬂ°Z6√^Bﬁπoﬂ~ù:˙0ﬁƒ¡ƒÈ‚_ß«Ø3mÑ_ü·\\ÆŸ˘z5úR£8Àv“\rNÖ€ÕI¨.Ó∫∫_®dB¡GT≈”í8ê5ˆÂ˝\'Í]fÿÂ3úßÈTu,Ljaì3mV¿€¬Q-¨dﬂQ\\/À—ö”±!. æø5%Ú≈û\Zï—±3Ú2Ó ®[M`∆N€‰]Ùn\0/≥ËtÀõf_˚gm$ö‹W{]U\\kÆ¿4a¿ æºÒ¯;[µÕÛN⁄ôL\r™‰¿⁄ô0M•2ò&“ÆL\râ»‚QQ<ú÷jw±?¯¨^ÿÈ:v¢T <B≥≤_Ñ€™œì}µÆLÒÿNG∞)»‚]Å2qT ‡lNFd\\CN\neqNë‡	Sî&¥F§⁄ÒRˆHﬁΩVß≥B°=‚R%∂çW)Ïf¸:ˇ\0Ø„Â†c≈v◊y\\v“ÍE¶Bà-Åì&\"ÜD¿—!êÄd0L¶*<”˜ü∑Ω‹l„¶¨È≥ÂÅ©4Y-¸3?ZÚ˚}|µœ·ÓÙ{8ÌèÀåÎ8÷YÖNv9\"Ã≤2àrj,K|¡◊∆cÙlJ—‘z~%óµêàî=∆pÚ\Z}+ñæ+wÃyüx˛›g‚ﬂfgFùQ;≠ƒÅıGŒÒ%ÌÎÓó≈q€¢¸Í;•ı>∑ü<\n2„DÍÆVtj!˜É>™v¯4Ó€W©vÔlwΩT‚]ãm9e@˙Î∏àAµi;∏¯/ﬂ\\ΩZ˚˛—øWjwˆdØéN]Tr’Ωíó∏[Ì\Z|÷n⁄≠ˆÁ‘bwOh˜ÔMß‹√ÍÂLDŒ»1å¢\0Â∏Î™∫o≠IÏgÊ9^ì€ùÛ÷3®=K©{]0z≤RÅ\'á¢;||]zm◊X∫Õ∑ˇ\0√¨Í›;§U\\±aÌ‘\Z2\Zí«MI‚∏]≠Mµ¬ZÊgT¿Ç@~/£¨H’ÿÓµ1Eu„ƒ≥Ä¿+”3YÏ∏é”≤∞é/o“d\ZyWÑãGˇ\0_¶ı4„£Úﬁˆ¸ª/¯o/K»\"!Y2ô02∏YßÈ±1€ÃÆ˜»ÔßE≠*©Æ·Õx∂ﬁ◊∑]$.Dk0\"EáäŒ∂≠äˆ´Éôo¨H]Âπb‡¬qd∂ôi∑Àx≈”JÇTÃjƒ!u”∑Ú„øG‡ë™rO¡tÁ]¸1o ë¡fˆÎ>⁄ù[~ 2éÑ2‹≤¸1u∞›UB∆Cû´è*ı˛π¯M©ãÉ[éEıX∑kˆ≥Mg—“æêÿÛV¸\Z2gªãG¿+ƒ…±˜l&M∏+ô◊à\'àêW)ƒ¯à ß?&ÊÂã‡∫fy0FR-ˇ\0ﬁvœ∑õnãÙóÙóÓ,9≥¨ˇ\0±™ˇ\0≠≤$û¨ﬁW+◊¥˙#≠9–ËdnL&Cî\\—™bô1C2∏•*e©≠Së∆ç™r8*ıZz}Ω3*Æ§aüerÜT¨\"0»1yeΩeœèóÑÙÆ£ÅFe˝>å ˙Ü%≤¶90ıF⁄	1¿Øœ˚]\\vÒ˝/´€À_?+˝G7#¢LÔ√»áÍ0¶ˇ\0v$Ìî·,Àœ|˘èG«Öå´éÎÃÉ¬mßíﬁ\Z”{9=3§gf«#2π’ò#*øSèa¶À+ê⁄c9@É-4[Âdzg^õ˘∞⁄?l21Â:pe‡Aû∏BŸó¶P)wóÊFØ£¶<[ù/≤ˇ\0r`”=Â‘eY÷[dNÉŒ√%ù¥“ˇ\0Íƒıtü;¯iŸ”ß9UVvvWU…®ò¬Y6>≤‚‚\" ˇ\0ƒπI\'ƒ√—:tü\rº\Z˝ùê D@6–‰¡gkó>ÕÁ“±e◊*≠ó!Í”èÄXæ+œ∑òŒÈ5¡Âx]DƒÃèÓK|aù`«ƒ≥Æu⁄∞´%â›t«‡¨Q˛{˝>åº^Á±∆=V™k™®S\\v◊\\D! 1˚“·˘ªÊÊú Â02`åô0¶SË◊)…˘¨ÌŸ#zı⁄íâ”VDD∆|9.;Ìv◊√ø^ì[Â≤-§Y©ÇÂÏJv722z∂Da€Œü%ÍË”5«∑|FEπèÊ8/fΩ^^}ª|mî\'!∏ûDK¶|&ªcÂkßı8◊ë(ÿ\Z2?ﬁåÃ«m;|˘M\"aïd™-∏ºG\"\nÂ<œ.óÂn9o¨ÄFá¡s∫µìee2’£&Á¢‘Ãf‚™˚ÉıG∑‚¡óOØÚŒ<¸3ƒÀËª·úü5bVxÆNﬂ¶•ŸL5ì}Ë∏‹@WäsãÍ4’\\=R<O%ã”oív≈Cs»ó‘Æ”F9§™‚É¨m´Se‹)\0H–\'ÕqÏn$ÕÃÆ∫à|YÍÎ∂õÔ$d´\rrÜç\"‰Û^Ÿ◊3óûÔii±∏…áö∂~Ò~S◊v9ûŸKh˛n!K∂“1˙µµd’V·Ÿì¿πŒÎ¯o˝xífo∂Q q◊ÇÕˆ$YÎü^e#p8‰6ˆ?√s◊—M‘ºœ\'n€VøN∫≈z#+2\0ó&?≠Ó!§ÕkJå\Z\0Ú,ºsk^åH•óÖ-¬ÿêõ¢~æﬂß-˙˛ÿ}…‹=\'∂∫VGWÍˆm«™-UCÔ€g(@xü©nÔ„◊OÀÂ‹‹˛‚ÓÃŸÀ.ÛOO˛ü≤’B<úΩ/2≥n&±ç€}F¸q3\\à;¡gmYy˚g(ÙtÌ≈ÈuÉ:˙VX!Èº◊cË}ªb¸≈·öbÿ˜›Û%tΩ]¨\"ΩalZ±a”;kse^ÌN„ƒ-_.ömcg2ä£dKª?Y≤ΩS⁄ümòıN≠≥æË◊ Ê«ËRÕì˜Î~é«ú	¸ö»?œ≈˛±uj˜e£å·Å$ìƒ©}Ój<Úlúq„&ÛHÂ≥˛YŒnùW6åzÖ∑§\0Î]Z›ÆjˆÔ5◊	ªG®œß⁄rDl∏˛tOGê>Ï˙˜c‚{ZÚÒ^ô^e6S´;°`xØt€/õ˙ÈUX‚ZâzÏ,2hó	èÅ—\\VJr)qÎ\ZË¶	ìì\nÎŸ_´pıÃrKñπ⁄ª›x≈J3f…Õ¿·‚À∂˝r˘åi≤h[1\"@Õs∫¯j|µ´»«$HÃ‹]xˆ÷Ω2ƒsÎuUpÆ^®ªnñµıÆ”,m›%¬ó]≤©Y\\·\'ëß1‚Ω§≥2∏˚xe N< ˆGöêXuP≠Ñß÷D¶Ç∆ﬂ\rÍøçaˆdÓL4Å¯Ø7dÚÙi|\Ze!.^_||•∑·‹ÚZ ag~/Èü_u˛Á%ÀrtÃ¬Å±éã”≈Àê›)|<Uì›≤ÜSûÔIeπ\'€j{MûK9çböNÆ¥»ﬁA’0e<,$.[jÈ)ÒŒïn 5<÷N~Wˆ„·Ìï≤rVÊºclü\\jà›-e <æk;[ÒHä^©¯π·õ‰˘Dr+2ÆåNÂ´RE∫n∫ó1$n‘Æ;I≥¨ÃYß®¬πoıû Æ[t€·“v;%ìkôk»-I4âµªUÏ)Y‹\Z`˙_öÛˆ¸∫ı¸,[˙âF;H+ûºcw.gΩ?qzhaF]FÔw6qz1+÷…ü¸#Ã≠k◊ ≥üòøsq˙ßwfBy\0QâK˛üò≈¯»ûr+—dåÎÂÁWKä·]bÔG€∞ûrbÁ]5tÊYm±ë!¡o;Øú∫À„LÌ^ØWR¬Ÿf†¯Ä\nÚwiá∑£y[PÈë™¬∞\'Bº‹ﬁ©¢˝=\n¨ÜhÂ B‘Ÿ.çz{tWQî‡è|ïÂX„‰€(\r†hÚÀïŸËö•≈Æ5–müÅ? íÂœyÜ&Npà≤¬ZRÙè1ÀÎ[€\\‹1¶ÿÚÀ∆¢y&ÃõµÆ\'IhCé\0|Iuﬁ	è∑)9Ìü®µÑ˛È¡{∫/áœˆßÛtX=O\'jü§k≤ZçW™mc«fk[∏ÒmêØ {S:	qè˚IÿÕ—°u`êcœöÙÈ≥áfßS\\cÊ|Vw€-i§áŒEÿ,»ﬁ’©‹\\R‹ﬂwØ&oùeß^/√ÒæbQd%˜K.x≥Â◊2¸.ZÑÂÜxògÙpKr9‘2◊IX∫ìpuSõÃxqSÂgÖ‹n©:°∞¿Hq\\7ËÂsóm;pCú-ì»y˝Xâ;%•ç±ó·KÆŒRl.‹Ÿ÷r™ëàxØF\\0%/√ÖMM#åó=˜t”D≤\0Ú–.r∫a´ÉÍjmY∫ƒ3©éÖ¬Î7s€CZ`0‡µò∆(c¡“”	#y3¨⁄‘â\\.wgI©Äó`ò<GÉ¨⁄‹‘È¯TãI%ƒ∏)f~8˘H’Õc6:qîÜñ÷%jv~Rı˛UüïHóÊ@x¨Ì’Æﬂm¥Iü‹ÿ∏òS∞Çoê€U^2¯¯kÕøM÷ªiºØû?pª?¨u>∑>∞2}Ûì/Œç≤>Ü–ˇ\0OÄ]5Ÿlrù_ˆ◊Æ√Yx¶`eUn&√ã≈6€$é*Ñ•D±Bö„≥§ht∏µÎ”Vû,‚$a.˙ñ[tù©‘ß”ÛD4€2”a\\˜◊1◊Øn5È¯πıdVBG=\nm¶G^Ã∑02Ãc°àa≈ÿÖ$9-«™Ÿ∂Bo®ı1‚ïe?uãô0gÿ|¸÷loì+≠ıJ„W≥Iy≈π|V˙Ù˚pÓﬂ>ÓUé!TK€=\"≤ƒ€Y3ó\r≠¯kSçëüV0Å!˜ëÃ|~+8€m≥á¢]t◊äq-™ŸŒL71gÚÚ^˛çlû_3ŸÏ◊mº$ï‚%âbteËïÂHYÅu¨≤ÓpÎù⁄Àd~≈⁄m\\Ó∞˘uπY∞¬H.¥îËMµ‚¶–÷û¬N·÷3ÜæPK_Nã¨ÌsΩ_Çä≠!›Ns\'\r∞Ü[ÅcÙ.ë ‰õâ ©T…„O≈ñdkÙ”•KYùç^¥d- ∆\rîO%fÃÿ*p¸ìe‘Ôr{æÒSsrí;è\0ÍR&Æ‰=∂t◊SÕö≤Ãç‰Çeı‡ñ&AÜ˙“R¬∆Ωö]ñk\rùl|µ›ù¥¡±⁄Ωj±!I\'A†Yk\r´7ÀY¡ÆIÚZKOEïÜíy-% Ñâ’9D¡–¨⁄‘yîá¡g¨’|û•Éão∂1#Òó–µ®Â3:êœÀ7ƒKTO<~kñ˚e”YÜg[¶S¿òâi3ÇŒƒj±[¢»œ.¿Ä“˘%#Œx˚Fà„éΩáXÑƒƒ3c˜∑Mös}\nÕj8ù[P;]µã¡EhcÃ⁄é∂GÏYµ®⁄Èù”ìÉ\\Ñ•È,G»Æ{k+¶ªX◊Øø17	g\ru:∑…s˝Qø€Wˇ\0ˇ\0Fƒá∑ì\r7Kl∏ézÚ+7•©‹eøπ$öp°fF\\⁄5ƒã˘»Ú˘+:\'⁄˛ÌØ√Fæ°v&?Ωõ?s\"^õe†\ZÎ∂∞y|T˘¯¯L·w£‡‰BÍY?ÊZ@Æ\'OOı&∏ªMMøé∑o≤ı~ÊÆdåzÃ2∞‚gn-Ñ◊&à}	Ò\ZèÓìùm§Ìû„áW¿ÜL\\’kö§H$7K¬AnT≠›X∏¬Dn<ïeràB›á~ë¥\r≈\\\"˝›≈ëÅnnMõqhâú„‰â‰∫kæ€\\∂;wπ∫Gp‡«/¶d∆¯iÓW¬ …¸3èï⁄m/òÂã>[Àé*skà€…äd¿‹D%µQHëG∑uNXLd{!˝)œÚq6PêÂßä≤¶¯≠òáÚW)ÑRã8.ìg°¶ ù8´ñqìΩô¨Ûç~∫ªπáÄ\\]rd¶ÁNR!¨ÆLö	≥,·r]Â”K)	*IÇ˘4D\0ÀV§Ö,SN´Q)£ä2zçi¡KBQ•æ∑ÉåÒ˜mÇ\Z˝\'ÇÕŸ©´+≠ußàó±Y¸0‚ﬁgäÁwnj…Àÿ)1rg7π∑2≤¢2;\0àá+P‹â˚ïÌv#ó% ŒÈ“5Y!èßF¯+P˛Ω”™Íù#/aÜUSÄ\'ë#“~Ebµ+√Á“Ú0.ñ=—€(zH>!põeÏ∫aÍ‘è°iå\n\'*¨T§j∆1»Ü¯èP‚dV≥…\0<ºS8}ΩóìÍ5òW D,›∞‘—“t¸^ü—Ëî£ .!ßªÔK…˘Œ€≥\rﬁâ”Ì…3Í=B&‘èv™¨ tâ˙B„€Ÿè”ØØ>k;¨uŒ·Î=\'ÆÙ⁄x∏7Yex±;•eQÙÀœéû”ÎÙÒÛ~^_k∑7è”µË˘˝π÷ze=O\'ã-ç\'Û¨Ñe!$≈œÇıºNoµ°Ö_F¢‹\n£Mpî¥‘¸êIgoÂÁ˜,3-zpjÄ‹ç≥è#À‚∑ÜrÎi0É6àêS(Úü‹ÍóV…=3√˛üè\"g!ˇ\0ªh—ˇ\0√_JÕ≠HÊ:WTÍΩ2›;\"xŸ5≤ü˙d8HxÇ¨ÿ±Ô∑?∫u˜6cusç‘1£Ym@ õ,„ú%˝?BÎ7À6;⁄ÚqÆˇ\0.»»û@ÎÙ-JÕÉn“t[ŒX¡%Æâ\nP—ÙLÄHæà¡‘™qñç…L5îv@qB‘¨ÿÄ∫€&ë¢πJlt>kUô‡˝˙≤∆\Z I*∆i∫”íÇ2]¡π0dõãÒLÅ	U\n†WeC7≠‚–vW˘∂¯GÄ¯ïõ∂\ZöÂãï‘≥≤t≤DVxW\rœ≈rªe÷j©8¥XGhV2÷\r∞ÌÉÒ*<L¨åÓ∑ô7n5>2≥Ô\\~±í‘J”î„\ZçKW\0Åd<œ%@W*r∑ª-\n⁄K~p◊öQè˚ÖŸ—œËx˝{Ω”≠ÍÕ\Z∆»¯˘HzáÕxˆún~ûÓ≠˘L}«í[ç(∏!ñÚX©e<„°Ê)Ñÿì≤$!KŸ√æôë9D	é+ùtï±áõóeëßÉl§Ô´ûOØ–π‹:GI“ªY≠“7ﬂ)nÖEÃb¶>>kñ˝üá]4˚]Ô{-È›≠ëTF€≥DqhØååÌ-¿y.}sñ—◊{àπ–z]X=&ú04¶®÷<ÿ1_bL>◊5ân]+¶ıA!ãÌZXp‡.ﬂ9-2°⁄ùC\nxıbQ!*± !2Œ˚t~\Z®:är£u≥çnc\rßQµ¯ÊV£.k˜∫Ü Èxrlª†ˆŒ\'ZÎó\'˛i}ã;Uè1ÒYSËÆ‹õ´«™≥eˆ»B∏\rI$Ë{ógˆ›§Fê“»±ßì`¸Vyy¨å∑å@â é’J≥è’≤Èfóπ‰ûøZ‘©cW´‚‹—üÂLÚóë[õ1Ö” u~+HpQJe…LÜJ®<4ÄRT2p<V•fƒ:∫Ë…>z¢`ÒuDÈ ¶(x ÍAnIêHP{Å”íâ:òd¨âJÈÄÆ°Ñ99¥cC}≤oÂè3;\\5#ûœÍŸYd∆\'⁄ß˘‘ˇ\0àÆWwYÆÑ=.8Æv∑ ú§TíëúqAW®dUâÖ<úâQ_™…û\0\rJ„∏ÔD/.d,Ø®À.∑,%T‹¸uWhG≠‚›Nf<2(≤6B»ÉÇäí#€/¡–:Í7«pÂ¿®M8|ï?hÊ’Ô]Éìf.lv[Q‡H·Û\\ˆ◊-M±Ê0{ªˆè¶ãéEUQix[Ò>R§º]óm/¯}.≠Ádˇ\0.j≥›:‚:»¯˙˜¨∞Î:’≤fˇ\0Igª˙”n?=∞i|ıe~RıD∏Ωâ“ÍêÙõOY”ÍYΩ©¡–‡Ù*(kã£hÿπm≥Æ∫∂q0+†ÅÎ<eÕó-´¥é3∏,ˇ\0VÔ\\|@ˇ\0§Ëµ˚◊k°»≥ÓÁ™ˆ˙}o∑Ÿçq˘m	ò÷ÁÄ‚W–|∑?ü‘q∫ïßÄgUsâ…òf&%ƒ5ÛbRp˙}ô”kÖôíóΩtè®Uggü(«¯+î¬NÂÎò]Ω”°F;NÚ¢.g/≈eáüˆ	n<è/*ÏõÂu”6[a2úèJ¬¢&,ˇ\0•˚w⁄àulË’ﬂ≈ÆCZÎ?ã¸R˚‰¬W†U8œÔh<8≠DK7-´≤®hèÇ( \\|UâSSùïé∑7ã˝”®˙¶Ã›ZxΩj6\0Ñºyπ¥fÀçÚ~ß«:C|”Å»¢ÚÃRËºãæ>+83)Ü‚í-®%fÆ∫M\\Ú7≈∏Î‡ò\\©∞er`Ò9éC{ˆx°Ç˛¢œmëÊäMÂÓÃp*°∂2\"O’X‹BaT2∫ƒ·)UY›h”»%s€y]meŸdÌ≥uÑŒgåäÛ€ói\rDÎ¿Û*Vè%áró˚ëKN≤-Ú*˜g∏F>:5gÛnÌƒ¸E]bWà_\"dJl±⁄˛ﬁ˛‡O£»·gHœd\Z‰N∞?∞µÏ∏=S>òŸDÑ‚CºN∫á‘qZïï∫Á1˜èhWâ}— Û<SÒoï¬⁄•¨H?Bïc÷ze’‰‡’; \'èì#	¯è•fÎò∫€/ÖLæ ØyøßMÅˇ\0ÿ∞Ë?√/Ô^.œRÍ˜u{ü[23:^M\0¬˙Ãı\r¿^=¥€_ò˜iæªOÀgtÈU=’çö˝ﬁ!IZ‚óNZH\0|Vm\\&Œ…ß¸´ä`f¿9$p\0yï$Õ/á⁄òô«…Íß˛≥®],úâ@È¸¢æœVúu√„˚=ú∂Ò£÷z›ΩJÈ‡ÙÀ=º:é‹¨—œ∆¯ü∫ºÏ,,é£õ|˙OnT1Èh‰ıK=[O=ºåºGT“ªO°íÔlÀŸ)∂€Á.d˝Inïué≠QÕ≥+\"D GA 1‰¡c*œrO«D∑Ì◊g©ì˛•ô\rÿIÎÆC¸€#√˛ÛZ÷%ØTúàê∂Df√M∞ƒFä≤ô1â\ZƒÛV çë‘øÃ®y€ „B9 Ft·…T(cÁU\Zy€\Z´dÒ·¯y”M‹ˆ’¢#ƒr+Æ\\i*Â0èd7ö®´πeºç Ö‹†ÑêÆPn(\r≈\0AS™gCS\Z€-+èüè…cm∞‘ôetÌ”≈Ö≥\'tâîπÍWõjÎ¨Xî@ÂœEñÖëÙñ*˜õ:°∫ÒE-WT[›˝á‹ΩO¨ı\\Í6^\'!*£π§`ëà>z„ﬂóìe”m6Œ´`ad	å· ƒƒ±[à`ÖlÙ~ÊÍΩ*qˆ-&°ˇ\0∂I–qÙûI`ÙNç˚±ç`ÃÙOûˇ\0˛`™a÷`˜◊B…àlçßõ4Ä˙©ì\r\\~µ”m √&ôÇyÀi¯1er=;±zÊ%Ù«•Ÿ!π4	Âı ,’v∞ÑÍ-À¡TM!	≈§¢xÇ}f∆•¬éOotlë˘ò—Ò0x˝ãé›\Z_ßm}ùÁ⁄âÏÆÜ$ÒçëÚ˛πˇ\0´£Ø˚Ωü·Á˝ˇ\0wJ«ºtŒúˆN%Øú•∏n˛PÕ˜yïÆø_YsﬂŸﬂiäÛû°f^dß”0lˆjèß7(>ü˝8yëƒÚ^ßôC±gnd\rŸrˇ\0LÜ±¡≠·	ƒÔ∑«≈_È¨=3°ÙπZ–∆√«#¿û√ä#ÓN·…Í˘∆Î⁄£È¶ßqˇ\0yÊπ´˝ÌNç©A–vèj_÷ÛÑ◊ÖQ…∏r°Í*»Wµa„—â]x¯–UTD!¿\0∂ÕJaªW‘+ÇUlËèhH∑ßW¯(´N&à∫®å∏˘jêO	ù	Ê®_pÇ¸ê8Pµ —IåCî 41≤Â\\EgP>Î˝ã¶ïçº&9gÅu‚«3∆VÓ1N8Y¥(ú>\ny<ZbI\n†˜œ’2arò\Z¶LS!2\rS ‹®RT\rú·ôH¥bü ÉìÍπr…˜/ìàÄEqä·∂Ÿtë{¶ƒ¨r!ó:‹[î¥a≈EEdÉ˘qE2lËàdI2-¿\"üÎPEL•∂ÎyNDáQÂü∫]°,êzŒFV«L ‡5îyX√√ÅQ®Ú—QìS\r\r⁄T2p\Zƒòü¢ñ.R’‘∫ùºâƒé\Z©ÖmÙ>ıÎXyuLf[èdH1æ≥¨H.(>ÅÏœﬁŒ˘™à€‘cGstË∞ªŸåÍ«¿zf[ë˙S€{[∫ª{∫:`Í$]P;n¶Cm¥ŸŒ¿Î&Q±ÏéEUsùÔ‹pË=,ò»~Ø –„%ÜÊ›ëm≤ìësì!∆\0û?bm¶hGB<|~%i\Zô7‚`„N˚§+™∏ôY#¿™îxÁw˜U˝k(àì^GÚ*ˇ\0’/3À¡b’sÄô*\r^ﬁËùg®√\Z.eÍ≤∆Ù¬‰UêÀ€zWD√È=.x—€\nı3¸Rë„)yï÷2yì‚R™≈vbAôö$b8éK*≠”Ìâ«\0|Ç±,I\"ƒû_ﬁÆBO-O\r~•$ÀE°mizæhE¨H;Ü≤r~ñrU≠£oÅVT¡—ôÁ≈z¥€1√iÇÓZAÕ)3óQG∫|TE.ıìruPn@n4¿∆Îπ°„á¨ΩV∑á ±ΩkX»Í1€“≤	‡ N´ã´G6z˙Äi»#öç#∂/?ä°êof^\Z®I\Z˝H©,ñ⁄Â3£ﬂIî2ﬂÀ¶∫∏Ë¯ïHèÄg‚≤™}O±˚_®∆_®¿Ø‹ü`=π?ã≈ï‰érﬂŸŒŸî˝7d@xnâ˚BπL~…ˆﬂïíGÉ√ˇ\0ï2©Òˇ\0h;Nô<„u⁄Í\'6ˇ\0 ôL/è⁄ﬁ…úX‡k‚,ü˜¶Uâ◊f:\rÙt…Ÿáë†ë˜ ~ Í¢πûÅÉ◊ªsÆ◊Åñcçt¡ôıSgÑI˚9Ñë“:œTË˘∞Ó^ãWQØÚ˙¶\nÚaø\\«Û0íÔù\'πÒzØn”◊ÓèË-®›∫cXÌ˚–ì~(»m*\"Ó^øë÷:ï˝FÌj¨E|£√äÉ6¨c˛læ¸ÄïÑ¯û_%®ã8PÖpï”ì\0	yh\0ITyá}˜ÅÍπ√≈ëèO§Ò·Ó»~#˝#í≈™‚…‹xË≤.tûóô‘≤ÍƒƒØ}∂±i>\0x™=≥∂˚°`«\ZØU≈•ësk9p‰Ik7†+RbtJ\Z$b~¿¢¨∆qîÛZ®•ç^DÎ?wó¡HµfËz4˘™ëN√«Â‚¢îÕ¯üˆ™Üànê›§OKV-’ìÿ#‚†Ω_A0≈«\0∑Æÿchn·…z2ÊQ/ÆR	H3:ô\\∞¯´…0îIE.Â\0Â9LÅ—ïr®ÔæS;¶Z0TŒ9zß<ã¨»≥YÿLæKÜ’“≠N#¢‰GÑàà√qgÌ∂ÑgÌ”XÊ‹©ÆaÀÎŒ*4ízá‘Ë|ŸxH~üx<KÇ!ïùO\'J“smëá(˙•¸3Q‰9∞ø,ïb|:éßáäÇ‘É.JàgO(\'Ä,ÅvÒdƒ1aÕ@;‘ÖFwWËx=[XπuÓà\"UÃi(Kî¢yãããë”rƒoë.EwLüø∂?ócxë°DM_qu.ÜoÌÅ#˛ë’n˝]~ı÷?¶LÍXπ.fh∑´`tz	rNg¯a§Ã˝âÅØ:K5‹Ymwﬂ‰.å∫ONü˝4F‹õ¢Ã? è≠sµcÅ≤fr’glL+ÚnÆúh-∂[aÍI:h®ˆéÕÌ*:Î6Ÿ‘oëh◊h„≤¿sÒ[ë+zb$ï¥C b›‘⁄yüä¢<ù6ÀPA‰¢≠W8»«V\'SÊ™™lç£èn<\n¢+X`Xx(¶@ª˜|~‘âO¥4tÇUV«¥˚‡;m:®µªW™2ê*ƒ®H⁄ªÈ∑”ùÜÔ]p»ﬁ ˜SîÓ≤¬d¿2∏êî\n˛haã◊r\rÜê?’c}Agj≤*bV\"ú‹∫ÂkQùﬁV\Z:$ÏázÅ«áÊ≈\'ÀMy»ë\0t,)H|	?	|‘T∆f4 M†~*b6‚ƒÙ™\nY∑∫5%=\"QÆS<e©UïΩ2«U£DZŒ®	z§|Q\rìôÔA$FúHX«ÎEE!´Å\"^_RãÜ™\n˝K9XÚà⁄,>Ÿ.Œ5<–s}súºlm®’ëW∏+“qñ‡âñÅÀ2¢nã“´Ø*æ´dßnUÿ√ﬁ∏ 2Ä2ÚÙ•Óx)\nÊ{€Ωå´óJÈ∂0s¨àùIÁü¸≈KHÛ´%)‡VT¥S;\'∆&Së⁄\"5rOö_Ï~–áG†ff@•l~Ôj\'ê˛£Ã≠Î’LÍ¡i$F:qÒ@…nõ0◊«…P¢¸PCïÏ‘i√‚¢¢&@âG^`ÑQùjéÓ?À…—*H…Á¡É3-⁄\0ãr!f™\Z…åZ^Mˆ µ«q¸#E)XR3Àìéi\nËâ\0D;›‘î7…o[ÜlU:xØFrÁÉwô¶EùÀ-$‰Aππw\\*ÆVKÓƒ9J¨ %`ûDãõ	:Æ6µ\"Jb—rY≠0˚¸œ˛◊À1?t◊#ÚòIÚ≠ú)˚ÿ8∂ˇ\0=q<|Bµò¥ﬁí\0eñëgœf$â‡LG“Täñ„∂®\'AØ‘™C*;§ ˙è\\«óı°S{˚£dO·,Ç<XÔõ¸‘VÜÄ7Ç å]¯¢Ÿ-CøU+yÍ†ÁÙîC%¿Ún(¶GÔp$ƒËÉ7´”é:UÛê‹=⁄‹y{ë?≈Aƒw~M]ß.•€]7&ÎÌ9W¨ãõt;}®mÏ¯,⁄aÁñ⁄e&¯ïï6∫Ãä£’{≤£áL:ØPØ˛ÆaÒiêˇ\0.\'Òë¸«óÇﬁ±-vÑr+hI8‡ìˆ d•¥75∞ì\r~î¨<“«◊ƒÜ>j‘ï„∂!˘hTVFÈQ’#@âˆÌ&@øßN<PmVt\Zø\0ÆQ)§Œ∑QIàú†I‡ÏTUÉ2:|µ—»*_í2˙;Œfz±ëb~(WEl¥éºxïP›ﬁ®©Ö[â◊‰´*˘n8◊Mô±ºò&âî¬gQK™  d	ëü’m20∆ázßm]R!…rÀf‚Õ‡¸íä=€á<æ€œ¶\0JR™F#Œ>Ø‡¢©v.\\≤˚k\r’Goõ«EΩ´1ø\\ﬁ√r6ï∫å…∆ÆΩ¨≤nzI˛¿üb÷@yÅÀFB\'å∂ê⁄àâ˘Dj?äÅ$L)˜¶wêC¸ëp`\0\'ö*ƒ•$DƒCmãπ‡Íeb¿2°Õ´˝($1\0x®®ß˜Ñâ”¡6⁄A—†ìÚÊÉÖÔæÌ¢ºk∫F,ÑÌ¥∂UúDÚèÍ?RÕ™Ûå¨õ.ëî‰g3∆gROô’÷Up\'”I‰àÙü€˛∆\rØ‘°È˚ÿòÚO+$>¿∑\"W°œı≠!†â äZxDaß©*)‚#_≠rì?Å!1À‚µ(\\àÛ‚Æ≤0≥`›{˘l™ÿ«ó®m?bw2q û4˛£ÁÇD≠e∆5<ã>ü%†€l»ë®b†´‘≤=éèt¿‡	˙∏≠f¨G–ÈSL[ç<4É~¿A?$©•h6∑UÍdÒj≤u∞¨¯´≠¿°\"ªe¶Fˇ\0˙øÛ#ıÆæ:˛°˛Åkˇ\0õ≠?t?Pˇ\0@≥˛h˙˜≈˝eÛ–ßÓáÍ$∫åL•pàr[êO‹~ß-C›uπâÙáíﬁ’ DñÌïrèí ®aeX‰ÇÂ∞†¿êcÛEq=ãe∏9˘˝*œOµi0}2:‰µQÿ˚d_Xæ”Ò‰≥UG™JqœÈÒà;eeè‰}≤bô∫~iÃ¶FCm¥ŒTŸ41@∑¥ÔØVw∞è©@˘ç˜q–pT_Æ;\"¿1P<¡Ç®x‘S¶=?`D‡Ë\Zli˘†l≤\"X\r>*(å‹xÅı†Øë<|›ﬁùÍ:}R¿ÈÛŒ!Ø¥j*ê˛Ø±f’ye∑ NI2ë$ôx¨Ñ™…ô AÏ^…u.•Y„’èDá˘Ñpîøß√≈jjñΩ.O…õ»-°∂˙ ä\r≈˘™e•‰P7kÏ8Ëäl¢$≈AXâU.MÆº¡™g+ëc¯|ïFWZ≈∂0ß\"∞Mòñ4Á§«–£LﬁÂë«é7U®ˇ\0˚i«›@4ZDd¸Ù,Q≠¥ ≥c∏⁄d.è…ÙﬁßY©âw‡≈¯2≤ï[î≠ß\'\\ã=…è˛ùeŒüYø$i`hG\"®ÿºüdJ#8MÂı∫™“≈ìƒy\"TªÜ‚<Tzv&HûD‚u◊à*mΩçk¨´_ËX^JœÌ≠Ñ=G7â5œsMˇ\0PÕ#IC‚µçS4”ô‘N¢⁄”¯ûHrz∂üô~	.©¸ô›o;©◊âÏ€`#–—gn2˙ñÙö€·ù≠å˙+à´h\Z≠÷aÇ\'qJäÃ ’öÁÓO_Ç®‘¶bQ◊ü–¢∏¸ÃjÒ{∂õ„È˝D%‡LuS·+®õ  øﬁ≥_®G‹«çˇ\0äâã%‘TX»È9ìß´uxÅ”+)∫˜‘/Ù*ï´“¶n˜≤I›∏ÌÉj‡sH4)•Ωdq‡®πFºº8u∆:*R@—-4:ûhàl Õπ\"öc\"ƒ|ê,Fÿê8®8˛ˆÔH`÷ppf%õ ÷Ÿˇ\0(\\~˜ÿ≥vYWuÛ≤gS)ÃÒw$ì≈˘¨–»¬bf2L$¸äÁ∞ª>@û°ò√¢B1´ùì”C˝k]QÍóÌâà\"Ã\0–\0\0∂Ü	_ë˛(y˝+»Ïóí°dncëLr‹π!≤ê;kjypEF}`Ç•˚Ü©á”ÕâH]TÅ0®ÃÃ¬ÜFòñkU∞ïG· √ËPdÙ+,∑¶W]ØÔB2™›⁄<á•˛•·@∆@3ﬂI‚Ö^∂∏Y‘£s<®†Q»ùÚ˛´ïŸ≤@\"FΩÁv$H<ë#0n›ß…\Zka˝«HÕK9-8SÌ∂ÿ–m™F\r[¡\\$À7˝v˝ØÔÀ√öÂœFÒ±«®›˘r˚ª™<A ﬁSG+eÊ˘Ë∫N⁄óX≥VF$#˘@HüÌÕjoñqÉø‘3⁄ ê,∑∆1Ào√3+\"ÏÃˇ\0Õf«@7O◊]q€~R˙¥˙S- ≥p≥è=PVæØtó\Zá˙R“∆πÚmùÕÓõì¿∆Ôl˘âƒˇ\0¨+ru@≥‚TT¥¿≥;˘ÒRésxYDVY\0SªàJ⁄? ã]7OÑ(¢∫`\0Ñ\0\0ÜÂUïﬂp∞≈f\ZsD;v—ßJáAŸ€Õ–∏Y‘î1†EE/º4—Téö|\\y˜§zhû¡ŒêıLj*«˙ºmXÚõÚ,≤…ŒR2ú…2ë‘íKíÎQ¬>ÆDü„˝ø∑0È:jÊ_–Úz≈§◊ãLH´éÎ–Ì˛ë‚¨Ü^çÿˇ\0Ì*OÒ[â~[˘R›|GÄ‚™©?(èW%E`\'Â≈Ó\r‡ê¶h≈ï¿t>Ë*aI+,yÛD 1è–Ç;uv–)b¢™Ôlç⁄r †}—1iÙì∏?8¯|ïF={ﬂ=”1Âª‘x¸Tjø€…≤r}ïL<KËç5q‡O™zGtÙÊx¢d0◊i‡ÉnG˛è_E0ìsE≠\\Hë\0J®íÿ±\'ÍP>Çî%¿ÖFËÁ˙ˇ\0”∑•ﬂ‰º‹ûs„*±Àú¢vƒØö·%™H€n–$^Cåº~J„,´ﬁîg)Ü± ≥í∏Å∂ôíl2îß†÷\\BO4À_ßS≤Äe˜éøJ˜W⁄»ËEG9èp«ëHÖÿàw(*dQÌŒ6E¸ »Ó°:\r∂∫x“Ö¿BA˛§ä—¬∏œ\nπçAË`tJêó√|$≈à÷$)Zs∏vYwU…›-1•∑„#\\¸HWCD‚c˜u¸^R®ª[Iú∫P⁄5T>DÊ(îv®e∆úU	ÓÑíà´l⁄L9*ÆKª˚¬æô	b‚»O®ÃyP<ÂÊyõVGñ‰‰Œ€%d§e9ì#\"\\íyøˆ˛¸°)??ódˆeΩN˙≥s\"c”a6~Ÿ\rLc˝>%Y£˜}5◊Ÿ˘p¶∫°\\ˆB!ÑDG\0‹ñí)ˆÌ\Z<\0Ê®ﬁ»\ríòW|GüˆL•Mq13‡^H\"ë h4Ê™òIv\nâÈÉ 1#èTD¢ò ∑q&r¸88˚BÇúÿÓ ∑…U1›˘¸U≤4ã|ñU=w∆Qˆ‰¡÷ôQÀ®FËŸlºv∏˚\nïYø§?Ø∂r“°-—éátàÁPj–¬ë>ñÁ≈xÑ oeﬂÊÖm‰z1‡8y*™5IÏÚtJÿ£Ó(áXASk›iƒ\"ÏCıü™mvm˙‘„Á&~úâ Ö’æ$µê„‰æf€ﬂá|Bc€}ïn∂&voÇ÷∂„ ÿã0ÊKl(ÆRIKÄ]¶Rõá}v¬6Ã Rëw<óo[™Kñ;6uQmÄpíı◊8uzû, UW∏5„¡ ]“t¥ÒAó◊1A¬∏3¬»H¸B\n˝≤˙5qÑÆ•ÄV§]yòû\nX”åË˘2˜ÔÆÿ€;¨6Dın.5\n—aÿ€\\ÜÊ⁄}J≤ÿ¢»∞Ò‰äú»<¬ã%–>?X‰Åì∞\'‡C é˚t–ËÉéÓ˛Ì´¶¿„„H°1£j+Ã|¸ô\\<√\"˚.≤VŒFvLôJdíI<K¨d20ÂıqA◊vgeŸ’g˙ºßØßTu<\rí˛X¥´&Jı⁄*™òQMUäÍ™ F∏Ü\0|ÍF_w€!⁄ùCêˆÏâ˘∫\n˝â˛“®∏@”‡¨O∂ΩƒãÄ¸’πwoäämõáûøBDIL¿\ZÍ¸ëQ_(DnC°\n¢81\"Cñà$≤1‹ \"Dà2ûﬁlÃÂ√UêEMëÌƒ	xÉ#\"L◊ÒKËFP»Xh\"Z¥à‘Ò/£ÍYŸ#QXœ“y7p®ß-¡õñå†ÄLƒ7÷\ndgQ¨u˘»ÕÖÚ≥>Ëù=πm◊õ™ãWsÓé?N∂œÂâ¯˘!ËıÌÜ#Å#û∫îà’Íc» Øå5‘\0OêmSGõ*ÜZbb§Sjü©˘é\nãásr‡à‚±q+«f§\'à_?ÈòÇàV\'≈ÆùHï∆Rt0^ﬁΩq´éﬂ-9Å∞ßò[0msûæ¡E6‚7â7åbG6¡Ò$∂øıx>¿,b˚:êevÀ«pìi˜H‡ÀU#HÜ?jç8>ÃèFÎ5‰˙3ÅîáÓAÑµk(Í†µ”zïôõ\0v∏$$u5Q—‚‰°“2\Z>æh4kµ√	π‚n5‰Å¬aÀ®#∫`Læ®9ÚÓ¯töé5‹Í˛X<\'/‡ «ï]ïm÷J€dedŒÈNE…>.≤e¶ß˚jÉØÏéÀª≠‰ãÚbkÈïÕ∞hl#√ˇ\0Q‰¨ôK^≥ucc’Mçt¿∆Æ Å‡Àb«„\ZÍ⁄\'–Á;‚m⁄9QvyKAœäÅ›å[µÒ«…æ¿†ÿπΩÌ5>(â	`>áE6…Ûπq@ñ˙áó0PAUÜòLßPA‚à∑Uıç√{D≥Eõá¡ﬁÅuõÄgâpôä¢≠Û≥C∏j%¡¸¥QU$A·Ù çÀü©T2d?àÊRc«ÛLO›òc·ØîB√õêN§[ ~ ñPßw˜Wáä‰À*ÿâm˛Z∆˘ÂdVœLÅ–xAünßƒüö*\\>Eò¯+≠Ed˝Hàd}?\rYÿLÉ¸Z˜è∂⁄2#öàÄ¨ì@ËÌÕ|Î≥æ\r≤Ï:ü|ıÇÁ{W\nıuZÏ∏UUn‡òø9≠ÙÎw€	µƒo·T+†e}:·øJ…L$Ä[èÇ*2Ú\ZûƒC„Û@«;]ı}\nÕñ˙$Œ›APevÌrå\'ã1Z®—º \"Dhí√»,¥Ú.‰»Î}k®Sâïâ˙J±e˙®F«˜\'ú∏h§ZÍzV4ÒËÎ!†◊áá5¶[ÿÖÄ‘˙Èõˇ\0<S∆`êx}?j\0Xƒè˜®9éÚÔ<nèA¢¢-ÍV«Új‚ „üóáäec…2rÆ »ù◊LŸmátÊN§¨\rü´¯ Í{\'¥ß◊r∑[?kí\r“éìë˛X¨Ü^’âèF&%tc¬5’\0#\\\"\Z ¥3,Ω1<\Z@È«EîX}»◊ÍW	Ô}n=Øì°w>|ıQRvgß∂háÚ»≈€˘X-DlZÁ ¯™% ôq·ÕAÀ¶ºë¨}|TRÿxÉ…Q\rÄH6é«‚Ç#\"	à‰Å—«“Ë\"îãT44˚T¸P1Â#‡>¥∆íÒ⁄XÇ™QçÖ}ôﬂqéŸJÎ√qæAESñwsZv˛OO®Uj∆€H2aÂ¨+±¡Ñj®ÀêéâQùy3∫1\ZÇuu °i\ZfM<TDEõRäH\0	W(üt}∂Á‡¢·∆Ê«6gÚdHêÎÂ⁄ÔÜ4®ÍµJ[à……%Ña\0Áƒ≠]e}¨ÈF#:ÅMÄÈ«OÒ^ø[Yãcóe˙t— ™ÔY#˙øπ)ƒ‚!“\'_°„/G$⁄$<¯ eœ,i1bâÅõ—∑Wëud≥˙Éˇ\0`≠Fú»2>K-9é©<;Ú.ú´é˙û¬¿ÄƒÒ?·R-\\á±(Üb@qp~KL¶ÅÑdXq\Zbàñ6\0⁄È‡T ùÔ≥„îµ˛‰W3ﬁÔè—hˆh1ª©X?*æ\"\0˛9∑‘9©íGí›óìëë<åõ%mˆó≤…îèYRøÙ¯¢:nÃÌû‡ÀXıtÍœÁ^⁄»ˇ\0$<¸O%a^©^>\'MÎXòò’∆∫9ÖqÄ\0~\\ºøƒ∑–HÜ\n“xz~ΩU JÎU›È›≥ñ ÄO◊Ê¢¬v©?ˆ˝eàô:˘û*œÑ≠àâ{ áND	»ËË+{è$÷K±J–$.|ÿ†éD|]H	DÀÒ ÆI%é≠°T5â Ò*Á@Ñqtv–3†oU …¬ËôYÿı{ˆ„’+cX}vè.*+ëÈ˝ÕE}\"YSŸ˙\"˙ GÄfÒ*\rŒﬂ¬∫åXF“˘ìnLø˙≥;§ﬂ‡ÆQ–€f ƒAoÇïbÖ`Œ˘Hp\ZEQ±â…b|BN@S\"\\ÒbÇÀ\rå»én?¶Æ·D¯œEÒ∑ﬂ√’\"ﬂÍ=B5÷˙8õ7…rΩóeIÄ%m≥ú∏ìˆ/∑◊ßdy-ÕhËÓ∂ƒqÒA¢ÚbË$\"B‘Ié”ƒ [†vÈÛ#‰¢™Z^\"<’EzbañÛ⁄ ∑2I~>j1Ó^µoDÓºl¯»cf=ÿY\0<X˛\"Ò*4:vUëL*î¿úFﬁz∑œä÷Qøç’j∫[w\0IÙì/≈z7On≤râGÀ‡¢πÓÈÔl~ëèÌ–cwP∂\'egÑ\ræ‹•U~NFNDÚ2,6ﬂi2≤…jI*)—:1Á«‡¢:~œÌÆªªnÍ∫mGÛÓ‡dG‡áıxïd+⁄∫N6.<(∆™5c”µ÷Ä-·\"üV˝c¶ÏM£OÑOä€ë D˝úA\'0\'¡eP€È é\nƒfwëó˝±ñbÄw‰ÂEA⁄Ú~ﬁ√#XHª\0C<éü%QΩ\n˝r<˘:¢∂]±‡jE[ÁÕàh8ª¢N@»óp8®∏„‡U\ne49ÛA\0ÓîH~J\'(ƒqÓÍÂ#ÒJáâÜ‹u\'…@¿G√ÕåÃ∏·Ù‹ãvÔ0™s0‚\Z$ø≈JØ)Ì\ZÂ’≤1ß(6ﬁôZG§√≈\nÙÏj$Ì˛≈jÀZ?™ZÚQO¬âaßQ≥K∆Cmü2Åëòñåäñ\0@ÎœÇ&Ú˛Håõ°|Ñ∂0é¶\\◊»˝ËÊíˇ\0•ú†\ZQ¸V∫˝}yƒª\\.aVk™%µ:ü‚æΩy‚‘¶æ’ï!¥@@êrP8÷\"	@ïJ0«í∂e∏i™\nvá´B‰k™äÉFV¿û\\B®æCπ<x≈˛‰Ù∫«EÆÒÃ«∏Nß`LH\"Qr†ÚSWUËπë6’<{†xHhÅV+µË›c∑:ÂQ∆Ã¢œ:F¯ñy>åÅD∏∫ßlÉÖ+ÈŒù–\'\ZéæBVG_óädyÕ◊_}”æÈõ.∞ôNr‚IYRDñ\Z®:Æ…ÏÃÆ‡ ˜,æùTø:ﬁg˘!ÒÊy+◊±~õ\nº\\j£UÅ\ZÎÄ`\0[å·ßÜ%\Zbxí´/™ˇ\0˝∑M6ìo1·	\n‹∑Ó«è`lO†ÍíÇ+ó.^	uë◊Œ~uﬂ\n,TÌ1Ìˆ∑Mæ‡-¡‹≤±+n€v¿Å≈ã*(ídu‚ôTëÙËB!wjƒ˙Üäêm<Uπ!Üú»(7·´c≈@”2¡¯ÛTEp.,RäÚ IÉÌ?J∆œ¬˙UåHÔò>>(åˇ\0‹<√Å⁄9ˆTªt5dq{Nﬂ±‘X√Ì.ìï“1Ò•l}”Á.?Và:q&àcØàA]Ã≠r?¬+O;µf~(ãÒôå~!∞ôv@@¬\'é™‡<ÿt%‘¿èﬂôNüeáπ˛[Í‹[˚óœtIËˇ\0Mké¯˚ç¸Ø¢È—ûfˇ\0≤›∑—˜[Oˆ/erÇÓ*;toΩÕX%É0d\r≥sh®ØÎr˛:©TÈp.€~µŸ∑óTA_∑Ô~_˘ª ∑.ØöéπÔ~û>”o˜bÓˇ\0wW‡≤¨ﬁß˛ó˙?ˇ\0îˆ}Üı˚Ãﬂ\'HWñ˜˝üÓüÙow›◊Óˇ\0î˛[ΩKHÊÆ˜Ω„˙ù˛ÓèÓ>Êm8˘pX™MSb~óı˛ØwÈ˜sgﬁ€Õê}\r⁄ﬂ†ˇ\0M«˝∑˙]ÉŸˆ˛Ó÷ÚZå-uæ‰vp™Æc∑≤8≥s„ı\"∆OXŸ˛´“ô¯€‡Ï√≈\"V‰ül~˛ÖRW›/¡E%ªvÎÚÒH2;’ˇ\0Ì|Ø∑…EA⁄{ÌéñÔ¯_Ë.¥ç<ß˜èÚ@»∑˜:ÅÂπÒTˆ‚·ø±RÑ¸Œlﬁ~ù1o5i˙Xx∞g˙∏®¢Oø_ü—‰àtõfºy™(Y«ÕıÒP&∫n›µ˝?≈‘VóOm—nü≈Ta˛‰o˝\'J˜ÙﬂØ´ﬂ›√ÓÀkæçª≈\"ß∆⁄—g˛‹ÇŒöÒÊ®X∂‡˛<æøíà’¡⁄⁄∫¢{6∂àä≈˛Z¢£èﬂÏTH7Û˚æj˙}ÂˇŸ'),(32,'recepcionsim@simsanjuan.com','Melanie ','Ruiz','21232f297a57a5a743894a0e4a801fc3',''),(33,'test2','test2','test2','21232f297a57a5a743894a0e4a801fc3',''),(34,'nmareca@simsanjuan.com','Nahuel ','Mareca','21232f297a57a5a743894a0e4a801fc3',''),(35,'nmareca@simsanjuan.com','Nahuel','Mareca','21232f297a57a5a743894a0e4a801fc3',''),(36,'mibiza@simsanjuan.com','Matias','Ibiza','21232f297a57a5a743894a0e4a801fc3',''),(37,'jmbarrena@simsanjuan.com','Martin','Barrena','21232f297a57a5a743894a0e4a801fc3',''),(38,'ehogalde@simsanjuan.com','Enrique','Enrique Hogalde','21232f297a57a5a743894a0e4a801fc3',''),(39,'jmbarrena@simsanjuan.com','Martin','Barrena','21232f297a57a5a743894a0e4a801fc3',''),(40,'mibiza@simsanjuan.com','Matias','Ibiza','21232f297a57a5a743894a0e4a801fc3',''),(41,'dario.baidez','Dario','Baidez','21232f297a57a5a743894a0e4a801fc3',''),(42,'ariel.caseres','Ariel','Caseres','21232f297a57a5a743894a0e4a801fc3',''),(43,'gabriel.maldonado','Gabriel','Maldonado','21232f297a57a5a743894a0e4a801fc3',''),(44,'cecilia.paez','Cecilia','Paez','21232f297a57a5a743894a0e4a801fc3',''),(45,'juan.vega','Juan','Vega','21232f297a57a5a743894a0e4a801fc3',''),(46,'rodrigo.sanchez','Rodrigo','Sanchez','21232f297a57a5a743894a0e4a801fc3',''),(47,'gloria.cornejo','Gloria','Cornejo','21232f297a57a5a743894a0e4a801fc3',''),(48,'hugo.heredia','Hugo','Heredia','21232f297a57a5a743894a0e4a801fc3',''),(49,'elianabernaldez','eliana','bernaldez','202cb962ac59075b964b07152d234b70','ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0C\0	\n\n			\n\n		\r\r\nˇ€\0C	ˇ¿\0E\0\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\nˇƒ\0c\0\n\0\0\0	!1AQaq\"28RvÅë#7BVWbruíìï°≥¥—”36StÇ¢≤¡“$4CcsÖî§±µ√ƒ%5U¬9EGTdÉ£ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0G\0	\0\0\0\0!1AQaqÅ24ë°±≤¡—\"35Brs·6CRbÇ#Sí¬“Uì¢Òˇ⁄\0\0\0?\0’4D@\0DDD@\0DDD@\0D_ñÂuµŸ©_xπR–”GÏÊ©ô±FﬂKú@\nKVLbÊ˜bÆœ‘ä%…∏Æ·˜Ámv¶[*‰otv–˙“„‰ÊÖÆh¯HQu˚§KIhy£∞‚Ÿ-—ÌÓtë√OΩΩŒ¯⁄ºUs,¢Ûﬂ‘tx-èœ≥zIµ“‚‚ºÚ≤-Z*\'wÈ#øJ\\,:YAL>ï’ó7œê»Ÿˇ\0”Ó=!:·X„‡v¨RÖæ!œ?	|§~E‚û–‡c¬Mˆ\'Ô±“a˘)⁄Zﬁ=8√∂qˇ\0éÒ£à≥Øén#*NÂV˙O46ös˝vπ~	8”‚ZO˛§#m˛ä¿ˆõæÃºÀ‚lc»ﬁ%≠JK˙ßÓÅ©H≤÷>58óg~§#¨Ù±\\ç\'E”Ì◊dˆÍ≠øçµ@7˚∆µ”`ﬂŸóô|D˘œ‚¥©Iˇ\0TΩFú¢ŒkgHf∂QÏ⁄˚.)^ﬂ}Ãy¯Y0ëw7I%⁄2êÈU$‡˜æäËË∂˛k„~ˇ\0Y·¥8	qì]©˚Ækqïm5aJ3Ïú‰‚^ÑUcÈ“âlwÏw$¥<˜ºCDC·k√ø†•,cä]\0ÀKc∂ju¶	]Ÿ’‹Í#øìÁ·ÄüA+›K2¬VÒ*/=Ωg7çŸ˜/M‚0ìIs®∂ºÒ∫Ùí™/¢äæÜÂL ÀudTÚ\rŸ,±ﬁá¬æıÌN¸ußgƒ\"\"\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0E\nÍ∑Z7•Ü{|˜œWØ0Ó”n¥ë3òˇ\0$ío’«±ÔórU>‘ﬁ:uã7t‘Xº–‚«Ó÷≤ÄÛ’˝ïCÜ‡˘„Z¨fsÑ¡¸◊+À°k˘∆C…Óyü•Rù?M˝©¸’‹ºg‹≠÷h&k©⁄}ß4æúeˆª;Kyò â¿ñAˆçﬁˇ\0ÊÇ´~}“#Å⁄%&û‚óÇVÓU[ºüÃÊÇ#áòµä™a|=Î∆≤V≈/t®é∞ıí]ÓÚ:§ﬂÈ˙…}tøÃÊ*≈`ùtÏÍÍu+?|á∞æéÀ(¸<†ì¯1ÈZØ“¶?…iÓ«•¸^ûdv´e6/f>ª≈¯jãå#¬˝∞ºó|í!¨€çÕ{ÀÀ·¢»)q Wˇ\0ë¥S›∑ãÁØ.êµpÙ(∫:=Q’këö*l£.Æ\'b⁄äÈ>SÎàZkÜp≠†∏?$∂Õ<∑÷‘≥c·@k^O∫RZ”ˆ≠\nTß¶ß£Åî‘îÒ¡cïë∆¿÷¥y\0ÅGËV+\\]kıj˝vı|ß‰π2y^£¸œv/øuIæ˘\\À¨wÉ\"2.Y>AÖ≤ï∏÷√ﬁñsﬁ©.…—«®U!ß\"œÒ˙\0}ê§äj¢ﬂæè Ø˙/e-õ¡C∆ºª_¬∆á Ó–‚>árü›ç˝ß/QNÌ]ÿÑ!æ≠Ím‚¨èdihbßﬂ—ÃÈ6¸´µPt|h]#@©∏eUß∆fØâª˝‰MVi≤>)ØKıúı}ø⁄\\GèåíÏ¥}îàóÅé)€¥∏Ω¬§˘e∫‘˝5~∆pM√S=ñüHˇ\0∂ºWd¡Nh≥,∑øu2<⁄Ï˛Zºm_˝í^Ú\nìÇNÏp)ôˆ∑äﬂÌîÆ>´Åj7Í¨ózmˇ\0ä∫Jv˚˛eaQ[É∫èô\rØœ·™∆’ˇ\0|ü≠ïn·—ﬂ¢ı;∫á\"À®‹{Ä´ßëÉ‡t;˛U‘Æ›Vâ9ùb’z r ªSfﬂ“Ê»Õæ%tQ`ûKÄü\Zk“ΩLÿ–Âi∞˛&.OµF^“fyﬂz:ı^ãôˆ≥\Zπ±ΩÕïÛS»Ô@‰s~7(ﬂ#·à|kôÛÈ’UtMÓí›<U\\ﬁÜF‚ˇ\0ç´UxÍlﬁ~+qÔ¯ùï¸ˇ\0•eN¢ÎãOˇ\0ñó†∆¯‰‘˝*πâ#vMà◊Ô˛~ÜRGà˚T∑ÖqÕØ8££äÎw°…i∞ÍÆî≠Á€Õ,\\è\'Œ‚Â•’îTw\Zw—‹)!©ÇA≥‚ö0ˆ8y¡Ï*/À¯X–<–=◊-8∂RNˇ\0Úˆ∆ö\'ÉÓ∂ÑµÆ?l\nÚ~Å≈·u¬W∑S∫ı]z\r€Â7#ŒVÊ{ó\'¸ÀvO∫Í-wHâ.êÕ7Ω∫*LÛπ„s;`ÍàOÜ”)%†H=éÙ´áj\r®4~ÖeñÀÃ@?¡*\Z˜«ˆÏˆL>g\0UWÕz91Íê˙ç>œÎ®_⁄[MvÅµ\'…÷G»Z?ö‚†úõÑŒ$4™¥^Ï÷J™„HÓhÆ›S•ïá ÷∑ñqÈY#éÕp^SK}tÆ>èÇ<µ6obvã\\£‡*?≥;€≥ÁŸ˘§˚\r@Eú:{«.≥ÈıSlπÌ#2jZgur≈paßÆåZiˇ\0H◊8VÁJ∏≤—ΩV0––ﬂ≈öÒ.Õ€Ø,9Á≈˜,ìs‹\ZÓo±gÑŒ0òøö•it=?#èœy?œ2Í‘ß·)ˇ\0>r∑K\\WkVÎ&TD[CäàÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"‡≥L„”À˘6g|¶µ[©˝î≥;µŒÒ1çπÓ;v5†ì‰T?\\xÊÃ≥πf≈Ùû\Z¨z—3å>?Û\Z∞{)n˝H>Fíˇ\0≤êµ¯Ï Ü?Ê=yí‚u;7±˘û‘T∂¶∏ŒZEwÛæ•w”e©kuóä],—ñKCsπ˙≠~`ı∂ã{ÉÊkº]kΩå#ªŸzÌé·•Q›L‚ó[µ“‡q´CÍ≠∂Í◊ò°≤X⁄Û$‡˝,èoœ&$wé∆ürk—és˝AtY•TTbˆâè[‘»ﬁkçH=§Ú;≤-˚}tûªÏ;´ø¶Z-¶⁄Co\Zß£ïÌ\rû∂A÷UOˆÚª◊øo(Ÿ£ƒ”¯<«7÷o¡S|‹ÔﬂÁ≤Í;ˇ\0ïÏñ¡|‹4~Yã_i€r/´äVÍﬁó3í)&î®ŸhäÁ®ïÒbvÁÏÔÂ◊<}†<±ÔˆN.6´w¶|.Ë∆ïà™,x§U˜(ˆ>©]6©®ÊLﬁa…Û±≠R¬-Æ(¬`ıÑn˙^ØÚÓ8ú˚osÃ˝∏◊´πM˝à|ÿ˜Ûæˆ¬\"-ô∆ÑD@\0DDD@\0DDD@uå◊Lt˚Q©Moá⁄Ô\rÂÂkÍ lcÏ%=üÕ!VmFËÓƒÆbZ›1 ™¨µw6Ü„ΩM1>&â“0yœXU¿E„ƒÂ¯lZˇ\0:	æû9–d˚Súd-|Üº£·Ω„˛◊uËπ@≠ôo‹(ñ”ÂVJúõ¶ÿ+›YJ»«Òu\rﬁJ \0—Óú—æ)ÙØY[\r∂ÈÍE˘‡Z.ïŒÚDÔc0Ôˆ\'õaπhS¿µ¿{*’4oR]%∆)∆Ø.<Ì∏Y¿áw˜á>-∫∑vˆì∞q˜Ax·É≈`|ö{Ò˛{•Ò–ﬂ◊œÚM§˙ﬂ‡+?ﬁ—Z7”:mÎ÷”ﬁ&‰Uñœt‚WáûZ ﬂ6™a0v6Án›®¢7ƒ„Õ(rA.€¯¿;ÌÅÍ&©ñ&dXUˆûÂH„À a⁄H„d±ü]áë¿y{ªW∫Ü.5û‰ìå∫Óf∫—ÕfYl~QNQ´E©xı).0óÚ…\'—u©Ÿzç(DDD@\0DDD@\0DDD@\0DD	Ò≈6°ÙíZÿÊ^≤ô#ﬁT2vC∏Ï}CáÔmÒÜ˚\'vl6<¬/‚{ç:LM’òë’≈W{o45∑ÜÏ¯hèqd>)%7vµΩﬁ∏ÔÀ˜¡ÓS´uå‘=ZûæÜ≈W\'ÖL˜xuÿ∏Ó^\\Ô\\»›ﬁ^}sÅıΩ·√CãÕ*U©Ú\\ﬁü;Ê_ﬂ˜v}?!ÿº.≥Ω®óÉ°∆0·:ù\ZqIÙ-Z÷ÒZù€e◊æ2sá◊O4ïë@˛Y*¶Êä€kåˆÚ0\r¿;mÎZ˜mπﬂ¥´Ω°ú)ÈŒä≈Œ:q|…C~yv¨åoÒà#Ì?kéÁwmÿ•lk«∞Î-6;ãYÈmñ⁄6ÚCMMk\Z<gŒOy\'rOi$ÆQf¿Â“’û˝GŒ˝ﬂ_¥ª{ãŒ)¸ÉÑZ(GKØÊkŸZtﬂàDE∏8\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0ààËπêc7KÈÃ±˘\'∆2çªnˆÆXﬂP;˘jb «R¬v‹H“{;OjÔH©:q®≠%s—Ü≈÷¬IŒÑöoG–◊C\\\Z|È›3Ü±U‰Lh∑Ât˛¡≥khÉº\Z†{ÆGË]ÂcãÄ‹\0˜vÌÃ¢+EYX«Rj§∑íK≥ÄDE&0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"‡ê–\\‚\0rOâQ~*∏¡´Ω‘Ui^éWº“Ω∆ñ„x•$æ©ƒÏ`¶#∑ì~¬Ò⁄ÓÊ˙ﬁ◊<]ÒUYíWThﬁìV…-#‰;≠¬ìw>∂ByM,Ω•õˆ8èf}hıªÛ»º(pèGßÙöá®¥Q‘Âr¥KIF®„‰t€wûÊ˜› ÁqX∫πïWÉ¡;Ex“˜/Ô^√Î&GÅŸvÉhcΩRZ—£Œﬂ4§π∫u“+Wy4éª¬ÔêY°kπì‹}lÙ)Z od®Œì…s~õsÿ€ë‹à∂¯<,\r?I|_i¡Á˚Cé⁄L[≈„•wÃóã–óˆﬂ8DEÎ4aD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDSæ4¯ü}Ç*ç”ÀâJÜuw∫Ë€Ká¯≥ˇ\0(‡}qƒª…Âì8≤‚\Z\r√ΩK±TFÏ∂˘ôogcç,]Œ©pÛvÜﬁÔ(kÇÑ8-·æ|éπöÁ©4“TƒfuEñûØw:™~mÕdú›‡;~M˚›ªºM\'Eò‚™b*˛è¬øú¸g¸+˚˛ı>ô≤96+¡Ω©Œ’ÈA⁄î9ÍOõπ?SoHÎ›x<·V,éóTu⁄IR¡%∂Üfˇ\0Â±8vHˆüÚŒªÈ€Ÿµ≤D[L&û\ní•IiÎÎgûÁ∏Õ¢∆Àåï‰¯.hÆhÆ•È‚ıa§”ÑD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DD÷µP1˝/¬ÓyæK?%∂˛@G<Ú∆Dœ+ú‚\0ÙÓ{+≤¨˜‚õQo‹CÎ-∑D¥ÈÊÆ›l≠4q;Áu5›¢i‹G˘8ö–ÔlééZ¸ÀÚ*;—÷OHÆñu[!≥ø¨YÇ•UÓ—Çﬂ©.	Aq◊ôæ£WÃp⁄7ÄÂ<_Îe«P3ﬁ∞ÿ)*Qr ë ˝ÊÜ#‚\ré›°†íyú	— ZZj\Zhh®©„Çûû6≈Q¥5ë±£fµ†v\0\0\0\0∫¶íÈïáH∞;n``1—«ÕQQÀ≥Í™˚‰ŒÛ∏˜\rop∏*Âòë“ºıúµìÎ¸åªc¥ø¨≈:›√R[¥£¡(≠/nónÂeÃlé@\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"/á9¨i{‹\Z÷ç…\'`\r‚˜ZNêÈt⁄*˙¨ã#Á†∂ñªg¬›æ}8˚FêÒ=ÏÛ®ˇ\0Ä›˘≈‰’Ãéèk∂CWllçı–PÔøX7Ó2ëø⁄5§\\TI\\*¯…‚¨“G$íaˆGñs4ê÷€ Æp>\'O!Ï=‡H<LZMMOGM$√lqGCZ∆4l\Z\0Ï\0∂ÀCÑ_§±í≈ÀƒÜëÌÁﬂ∏˙~y?’ÇûCKLF!*ïü:èŸßÒ]º“>‘EVzCµˇ\0Rxu“a¶\nJ;ï~I\r∂w‘“2°¶R‘H@k˚Êâùæo:ﬂ=ò•r”\"≈Oöç≈ﬂ’UãÒ?ÍOöç≈ﬂ’UãÒ?ÍUﬁE∑µh±SÊ£qwıUb¸GO˙ìÊ£qwıUb¸GO˙ìy\r∆mZ,T˘®‹]˝UXø”˛•0n!µ6˚—ÌSƒ=∆„F¸“+⁄Ωµ-£caÎ©Î*\"åıC÷Ïw=î©\\áã^ã>j7UV/ƒtˇ\0©|∑•ã†A9EÖﬁccÉı(ﬁDÓ3jëb¸=*úYGÏÓX¥øoehˇ\0ÉÇÁ-.<K–»ﬂT±ÃÂ˛∏Im©ç‰yã*\0M‰7∞à®áù+:w®∑∫LKWÒëÉ◊V=∞¡uéØØ∂æC‹%.\r}8\'`	ÁhÔsöÓköÊá5¿Ç7¬ßr≠5ƒ˘DYá∆è∫˘£¸E‰⁄k¶∑€U5ñ«mlˆ»ßyñJX¶êÛ∏oÏ§€o»›ÇW4Ò*|‘n.˛™¨_àÈˇ\0R|‘n.˛™¨_àÈˇ\0Rç‰[qõVã>j7UV/ƒtˇ\0©l.ôeG:”lS7%§‰J°-\rÁÅív}ÚîÓCãGfDX◊òÙöqcfÀØvz¢»⁄jïM4!÷H	dÆkA;vˆ\0çÿÖõ(ã>j7UV/ƒtˇ\0©>j7UV/ƒtˇ\0©FÚ-∏Õ´Eäü5ãø™´‚:‘≠∑GWz◊ƒn}ïÿ5FÒn¨£¥Ÿ„¨¶m5æ:rŸLÕa$∞vçèr)&CÉZó’dÁ#úG`öÒùa8&Cgß±„˜™ãe$r⁄aïÌÍ’øw∏nO;]ﬁ•ªïÕcEäü5ãø™´‚:‘ü5ãø™´‚:‘£y‹f’¢≈∫îÆ,bÆßíø$≤ML…XÈ£míó∞Ã–vÏ‹n7[?MSe4Ut“	!ùçí7éÁ4ç¡Rù ∏¥}®∫û¨‰7<KKÚÃ¶À##∏Z,’ï¥Ø{⁄ŸcÖŒi-=Ñnbœoó≥à˝~’¯Æ‘µ∏Ï÷Ü_%\n©Î—ˇ\0Èÿl÷ƒf[UFu.	AŸÔ6µµ˘ì4’e|ΩúCˇ\0ÎˆØ≈p˛•k∏5÷|ÔYÒúäÁù÷”TœnØäÕÑ:>boj«ÑŒÿ⁄™ç4Ó˙WÊ{3ﬁNs}û¿À0≈ i=Ÿ6ıv\\b∫zKàãnpAO◊ﬁ:l∏-∆´“Í\Z[ıﬁô∆*õåÓ&äûAÿZ¿“ŒªêCAÒª¥\nìîqAØôlÔö„©˜™Vºù¢∂Õ‡1¥y6áóqÈ‹˘Vè¥\\,ú#y5—√œ>ïër[ùg4câ©ªFUΩ}Ê∫wRı¥k2,tÉWıföQ=>®e±»¸ÕΩTÉøßùIX\'\ZöÛÖ‘D+rV‰î-#ûñÔî∏xˆôªJú∏è1^Z{Oáì¥‡◊§‹„9ÕiSr√WÑﬂCºoŸ≈yÏj\n(ã@¯î¬uÊ›$v∆∫◊£åIYh®ê9Ìo`Î\"wgY‰\rˆ7qº∫∫\Z5©‚ ™RwL˘Naób≤¨D∞ò»8Tèˇ\0ΩWCZ>`ãËÆÆ¢∂QOqπU√KIK¶ûyûQ¥nÁ9«∞\0$ïIıØ§™*ÍåEh 0ƒÁFÎÂtE˝a8!;\0<éì}˝¿ÔX1ò˙ÔV}ãùõ=üŸåÀi´:9|/n2zF=Ø‹Æ˙ãæã\"oúCkñE3ßπÍ∂MªªK)ÆSG˜êñ∑Ú/¡A≠Z√kï≥Pjû[öw\0^jO••˚Ñ-⁄ö7“õ∑qÙòÚ-ò8^X®)tZMyÙı\nã6¥ﬂè\rbƒj°É0íõ-∂¥å©c`©\r˚	£o€µ ıÈ≥‡⁄’é¸êaóÁBZ  )¿eMÑn#wÓ=ª8”±ÿˆ6∏€\rè{¥›•–¯˛g¥õ\rõÏƒ|.*\nTˇ\0é:«øD◊z∑CgzDE≥8‡àà\" ∏õΩ€¿Æˆ;dnﬁKçT≠sT y]ËèKÇÂêD@∆û´?M¥z™Ÿm©ÍØSùk•-;9êñÔQ Ù0Ún;Aë•O™ägÒ;ä1ÈpVóMã·Ö–÷\0waéTì‰/ò∂«à4≠fkZTËx:~<ﬁÍÔ„Ë;-áÀ®‚Û?ñc>ÉV}ë‡∫Ô+iŒÆMÈt€I†ø‹©:ªﬁZp©.∫:mèÉ≈˜§ºé˝‰ ˜+øñ1ë±±∆–÷¥\0÷Å∞»ÙΩòl<p¥cF9¸„4≠ùcÍ„Ò5FﬂbÊ]âY.§ÈÅˆº‚û¸Èˇ\0A¨W±G∫◊†⁄gƒ&5GàÍùñ{ù≤Çπ∑(\"Ü≤ZbŸ€„ÊçÕ$r Ò±;v˘ñg™5…ŸûxQm∑Ã∆‡ÔÎ{r¸[˚Eê∫˘äY0Mpœ¨jô‘ˆõKr∂–¬È#£Ç\Zá≤6ó8ó8Ü¥\r…‹™5c*ígCDSÔ:KÉÎovM=‘[dµˆ:⁄:È¶Ç*ô sù;ﬁ√œ8\ZÇÕÿÄñ≥iwˇ\0jﬂzŸ¸∆≠J3Éø≠ÌÀÒ˝oÌ7ØögáËÔy˛ú`V˘(l6|b‰) íwÃÊuØ|Ø›Ô%«w»Û⁄|{+•cíf\"\"°êy—jœD}ñÕêh.yjøZhÆTU1d¥’ê2h§i£ÑÊ<A\"}qQÑŸ¥ÁàΩB√1⁄8È-vÎÌ@¢¶èÿAœX»€ˆ-k√Gò-sêù›à≠l«E÷∏]5SAj0ÏíΩ’w|≠ñ∆À#À§}æFsRó„o,±±âæ=÷3≠Ëp∫Õ°Í5ç≤m\r]ñé≠ÌÚ∫‹÷üÄNÔç#ƒâ≠\rR^~x∂»æJ∏ú‘˚»ìùá(Ø¶ç€˚(‡ô–∞è7,az\0¨´ÇÇízÍ©!ßç“»„Ù≠h‹üà/6ô\r‚|Üˇ\0rø’o◊\\Î&¨ìsÙ“<º˛R¶E`~E»],ï÷z{eEk9u£Ëè™ÎdåÑƒ„Ë!T»qÎw∏…˛J¯C”äÁIÕ%æ[c∆˝≠Zâ`h?Õçß–B¬∞}?™¸6›±˘dﬁ[QUøt2√≠?›/ƒ≠%\'¿ª´Œ¢˝rª5øüzÙ~™ıœ£_Ñ[≈ ÆÔ_Ä‹_S[<ï38_k\Z#‹\\„∞ìa⁄Obô+îå¨b-1„≥ÑNxv–\ZÏø¬´)rkç¬ñ’gí[Õ\\≠dœqíG:B¥1Mﬁ6‹µfr£V2ßp¥°”Ë±ü{›áÙñ¨¸Zm–ÈßUëRg˙±R⁄Zá”„Ù~ÂÔ`ÎÁ\'—œN• W%¿“ûÓ“º·j>Dr˝C 2¬˛s{ΩV‹yΩ◊];‰ﬂ˙K–~∞‰_\"\ZKõeùg!≤„∑+Äwê≈M#«ıWúÂ2+L\"/ﬂ|≤Wcı±–\\…,¥tïÕÊ™)„û3≤VüÖT»~Ë[Üúü‰Àá≠7…]\'<µ∏Ωµ”ª}˛|⁄v6_ÈµÀœJ€Œçü‰èÑJôÚsÕd©∏[$;˚ö©$`¯#ïÉ‡Vèì‡L⁄˝Ùœ˝Ì‹Gz»UØZ˝Ùœ˝Ì‹Gz»U∆ÌO”SÏ˜ü°π˙ª˜◊≤˜Ëﬂ˛Êu`¸ °\n˚Ùoˇ\0s∫∞~exvÀ„ÿ˝GG ßÏ≈nÿ{H∏*ºÒ≥¨⁄c•¨≥XjùOy Â}31€>\Zf¥‰iÒ;g1Ä¯∫Õ∆ƒaïÈ∏>Lˇ\0µí {<ïæ dùÕ\'·Íáƒ∫¸Íº∞¯) ^û»¯7\'ôe,◊h∞Ùk´¡^MtÓ¶◊uÌ~¢¢\".K§e~Ij°ë°Ã®ÆÇ\'4˜È\Z¸´ÊÈ]ÿ˝w9™qs|«?îËÓß·8›]ï·we¢ÊZ)™ßh\0ó4π°¿f 8v+ß-B„rí*éryû¿M,÷˘XO“ìY7»¯V^≠ñmÄé]]RÉ∫i={◊∏„∂iÎm^[,mx(J3q≤Ω¥QkèTµ9‹4øiÊYlÃÒö≥OpµŒŸ¢;ûWè¶cÄÔcõª\\<`ï∞FYnŒ˚6ej‹R^h°≠ç§ÓYŒ–Kùßvü8+ñ¢pMp}wÀ$y{©%Æß‹ü™îÅ\0∂ª/^J¥Ës5~ıeÔ8ûYÚ S¿PÃí˘ÒûÂ˙c$ﬁΩé:v≤È\n’ªï©:?f´|V”ã•ÿ±ƒYŒÊ√	€Èyò˜ë„!á≈€GTÒ∆˝¬Jﬁ$2:w∏ñ–¡ANŒﬁ‡ibê˛Y\nÅ÷ß8Ø*¯⁄éOÉ≤Ó–Ó∂.•ñÏˆ4’ú‡¶˙‹÷ıﬂsK±#Ó°°¨π÷”€m‘≤‘’’ » Ç&>Y@kZ—⁄I$\0ïvåˇ\0HıKMœ±:À8∏µŒ•t•èdúªs\0ÊÜ„vì∏‹v.À¬’U‹A‡–À{[tl¿u~–~m∫F)#~ìcµÂÄ…D»ZÔ }4‰èËâ_\ró∆æÆ)Ωc√—Ò<˘æ’VÀvèí∆	¬≤nMﬁÎäV÷‹V∑O∏œeﬂ4GUÆ˙9®∂º €4û\r≠ÜÂN”ŸSFÁ≤2;â€µæG5ßƒ∫\Z-m:í£5RÕju¯º%u	·±ﬁÑ”Mt¶m•=D5pGUM+dÜf	#{N·Õ#pGòÖˆ.É†Wi/ö%É\\•<è∞—G#Ω”ŸX„Ò¥Æ¸æØJ~öÁIüá±∏wÉƒ‘√æ0ìèôÿ\"\"πÊàÄçg∫õØ‘v(ª1¨.¶≤©£¥s‹+ad˘m∂£o3äíî	√≈–Ê∫ªÆ˙Öπ©[î“·ÙßÏ-TçlÄÎÍj§ï=®D∞àäH:v∞Á∞iÜôdYÃ•ºˆ∫\'æôÆÓ}K∂d->c#òò®/Äç8öÀß˜Pºµ“]s\nßÂìµ˛ú9∑=ªæS#èîÙÒœu∏‰¨¡t7~˜∫Ó…eh˙XÿDqÛ˝â|Ö€ˇ\0ô\'ƒ¨∆1è[±,r◊ã⁄\"ÍË≠4p—S∑«’∆¿—øüa⁄|´T£Úú¡…§¨æÙ∏˙‚u?CÏ¨iGJò…π?¬¶Ïó|Ó˙“94D[SáàÄ/>\\V{fı_ﬂùÁÙ…†’ÁÀäœlﬁ´˚Ûº˛ô\"¨ã√â+]—ÅÌ¡∆æÁ]?DëUk∫0=∏8◊‹ÎßËí*.&Ip6…C<e˚UuKﬁÕgıÃ°û2˝™∫•Ôf≥˙ã+0Æ&¢\"ƒg5õ°„Ë)õ{Èˇ\0¥ÖP3ÓÙ˜æ*µB∫ñF>6‰U4‹Ã;Ça\"#€Èa]C	◊=`”lzø”ÌGøcñªú∆¢Æe[©˙ŸãŸ≥ÅÂháƒ∫D≤À<Øûy$í8ΩÔy›Œq;íIÔ*[“≈R≥π¸≠Ëq∂M.£Í%Â¨˘’-ííïŒÚ:YÀö>(]Ò*#à`y∂†]c≤`ÿïﬁˇ\0_+É[Om£í°˝æ2√ O`Ò≠úËˆ·z˝√fîWª9ä(r‹∂™:€ç<R6AGl-Çùœn·œo<Æqç‰ ∂Â®õ–ò8ê»æD∏}‘åç≤rICä›$Ñˇ\0ù4œèÖÂ°yÊ[ì“;ë|é{ùIÀ5»P€¢ÌÔÎk!ÁÉ,6S\"!¿+≈ÊÚã@!ÍÕ«J,ï”\r∂⁄y$®|Ä˘«0›@4¥”VT≈GL¬˘ßë±∆—ﬁÁ8Ï∆U˝Èm√·≈ØZD f¶r¢œÄÏ-•|[äaÒ™Û|QüÀJz\ZÚ~JÌO√%ì~∂+eŒo› géS˝8~%ö ÁtN‰˛¢qG-ïÚlÃáÆ¢k	Ï/çÒTÈ\rÅˇ\0R∏ë.…\"/ÇCAsà\0\r…>%ê¬e?K˛ß˙Ø®ÿ~í—TsAé€§ªVµß≥¬jù ∆∏y[!√Õ2œÖ&Ò5©Œ÷=|Œ5ìô©n∑y[B‚wˇ\0ãhiø˛1∆£%âÍÃÒVAoü\ZW˚èp”É‚U›M∆k{n∑ Fœ™£◊=ÆÛ∞=±˙#8R“√¨¸B‡˙5?]CYté¶‚“7ä\0fú&Ò∆Êè;ÇÙ›ÿ¢RoòÄx˜»æF8C‘´Ä+™-ë€áoi™à†#‚î¸¨[!“…ëzç¬‰ñ…≥ØŸ5\rn˝•åéi…Ù~0±Ω%ƒòpÍ¡q’É˛Á‹ATcÇ©¥¯Ê=Y∂¿u6™js˘a*)“<w‰øU∞ºO´Áık!∑[ÀvÔÎ™cfﬂ“V∑•æ—Ív´ÉYÎnxïÂﬁW6¢™2>&7„\nº≈Ø©Iñ∞Ù<d˛§9ŒÈ9ùi»£∏Ô⁄÷‘”1É‡ﬁïﬂïdÚ–~á<ü¡5CP0”&ﬁ™ÿiÓAª˜öZéØ˛Ï¸jcƒâ4o_æÅŸˇ\0ΩªèËÔY\nµÎ_æÅŸˇ\0ΩªèËÔY\n∏Ì©˙j}ûÛÙ/\"ﬂWb~˙ˆBæ˝ˇ\0¿ú√Ó¨ôT!_~çˇ\0‡Na˜VÃØœ˘|{®Ë˘T˝ò≠€igoH£…÷õ#7Ïn/N~:∫Ø‘¥IgGHy\'[Ì@¯±öQ˛ÛT∫m£Ú⁄èéÚJØ¥ë˚ì˜ysXG“¡˜RóÛ≠\\*Ê∞è·•ÉÓ•/ÁZ∏*~:Ì?PbæÇ}è‘iá\Zû÷|À˝]ˇ\00ßYjµ+çOk>e˛Æˇ\0òS¨µ]”˘\\~Íı≥Â|å˝C[Ò•ÏSK∏7¥ç˜Z—˝ µfä“ûI:>+Õ`˛¢¶Õyk˚Ø‹z9_WŸÂ¯ëıHß<`Õ◊Ò!ö?…QLœΩ§ÑbáΩ≈«∂36˛YËÒ(ÖjqﬁUWÔK÷Œ„fï≤\\\Z_ÈSˆ.póÌä¬ñ…˘â¿Èµ‹Ó⁄3f¶µ[™´%nON˜GO§poÇU\r»h\'m»ÌÛÖO¯Kˆ≈a?Àd¸ƒãLÓZ©¶j˘ÌwçG≈®kiù…55M‚û)bwëÃs¡iÛ∫Lñî+Â’hŒ[™N◊ÓG»πE∆WÀvØé°I‘tÈ©n´ÎÛß–ùº∆D¸Öf_RWüˆ	∫ü!Yó‘ïÁ˝Ç_Ó≠m˝ŸÙ{Î±Ü˛=•˛˙~Ï˙=ıÿ√“ˇ\0}Wıw˛ø°|Lø‚Œiˇ\0å~y–Î¸/S’“hM]M-<Ò[˘¨,{vë˝Ñ—ÿ•%˘mw[]ÓÇ≠ñÂK_ERﬁxjifl±H›ˆ›Øi ç¡Ó+ı.≤Ñ*QÇw≤K–|32ƒÀå≠àúw\\Â)5—v›ª∏DYO]gS≥z4”¨õPÆ\\¶ü¥’\\ﬁ◊π˙®úœKà\rrfU§∑0∏3H1˝«%ˇ\0«µc#£±S∆=ëÅ≤±Ú∑oÔ¶ôÑxƒÖC–îÆŒ˘¿n7]`·s∏^È.πCjrj˘ú=tÚ÷Œ˘⁄ÛÁ1æ/âX∆c8˝ª∆Ì8≠¢>ÆÜÕCæïûÊck>ı°rjQ\"/…wπ“Ÿm5∑öÁr”PS…U3ºåcKú~ T6íª-π…F<YY±\Z?›Oç¨£/îu÷Õ6∑Gj•qÌ\r´{\\“ﬂ\'cüW¥+H†.¨t˙QSû^#ˇ\0≈s´Ω]Ú•ÁŸ∫B∆ÊıÆxˇ\0Hß’·Àc˛GÖ|f‹º¸=:mØÆûcÚ8?ôáåi/ËVìÔûÛÔàΩÁ.\0^|∏¨ˆÕÍøø;œÈí/A´œóûŸΩW˜Áy˝2EYá,Vª£€Éç}Œ∫~â\"™*◊t`{pqØπ◊O—$T\\Lí‡míÜxÀˆ™ÍóΩöœÍ)ôC<e˚UuKﬁÕgıVa\\LDEàŒJ\Z_√∫kF/qÃtª\0©»mvöìIW%5U;dd°Å¸¢\'»Ÿy\\≠iÔ€ø±FïtïTSP◊SKOSO#¢öXX¯ﬁ”≥öÊû–A{AZ√–ÒÙÕΩÙˇ\0⁄B≥ˇ\0å€d6é*µFíõíU‘ÚÅ∞ﬁWu§¸%‰¸*Z“ÂSª±«Ëﬂ∫Ô†ıP?Nµ\nÂKoÖ¸Ó¥T»j-“ç˜p4Ô›çﬂ∆Êrª»‡{VœpìƒÕèä-+á4§§é›{†ó¿oñ÷<∏SU\0s	Ì1=§9§˜v¥íZJ¿µ¢=\r˜i‚œu\"ƒÓ¶™—EVÊÔŸÕœh;z&rEÍD÷ó&~óúã‘Ó±‹z99dºeP9√e4”πﬂ”tK!÷ît ‰\\ı˙_âG&›T7KåÕﬂøù‘Ò∆~I~5öÈ.$√Åﬁt\"ÀÚI≠˙{èÚsñSj§#Ã˙∏⁄!Z+”#dåM≤>M¸Ô_CÕ‰Î·ç˚|>˘|ﬂõb⁄mÆ∏Nö¯W®∏˝⁄+çWÉE÷À¥{πº≠$ny√|j›qÛ∆æÉÒ)£6Ï+\0˘ õvAOuaÆ∑6ÃMÇxû9ÉœoœÅ€o.ﬁËœ’97ì¸âqi¶7N≥êT^Ÿl\'~ˇ\0çÙª|=rÉ7ÉdRb∂?ñ¬H}íÈIqi˚√3d}ÍÇÃÙä°.4u?˜#·ó; ‡®ÍkÊ∂∫’o Ï·SVDs|ÏÎûÜ5E,sF…¢x{$hs\\”∏ ˜≥o¶#S˙´~	£tu∫¢I≤KÑ`ÏyX6˛PK™~É#—\"ÆÃ∆DEåŒhÔC÷ï¯^Aõk=u6Ò€©„«≠œp‹e\"jÇ<ék\0ÙJV°®Å-+˝…8^¬Ïï4›M ÔKÍıƒ≥åı<hp˜Là≈ˇ\0Fßıëhå2wfoÙ d]N?¶8ì$ﬂ¬Î.wøwT»#a>ûπˇ\0Y~ØK˛E·⁄Òäc1…ÃÀN, á\r˝å≥’M∏˚ÿ£?TAR\\Lë‡N<Y}_‚”L(y9∫´Ïuª\'cÁﬂ‡Í∑Vì¶J…‘fögírèZÓ4<ﬁ^¢Xü∑˚«ÂUcÉ-W¡¥?à\\{T5√ΩI≤√]˛%N&ó≠öñX[≥Iü=>57ÙÜÒm¢¸N„òe6õ˙πÍÜ=[W$ﬁ®Pà‘Õ`Úê˜ny¢obs}‚ë+Y—ãì¸èq{ç–∫NHÔÙcŒ˝á¸”¥K‡hÙê™öîxZ…˛C∏ê”LÖ“uqSÂËÁv˝–…;cê˝„‹°q%7G_æÅŸˇ\0ΩªèËÔY\nµÎ_æÅŸˇ\0ΩªèËÔY\n∏˝©˙j}ûÛÙ\'\"ﬂWb~˙ˆBæ˝ˇ\0¿ú√Ó¨ôT!_~çˇ\0‡Na˜VÃØœ˘|{®Ë˘T˝ò≠€ig?H—¬◊ÔfóÙöï£:∫DôÀ≠∂w{¨^òˇ\0ΩUÏ].—˘ÌG«π$˝£è‹ü∏´ãö¬?Üñ∫îøùj·W5Ñ\r,u):’¡”Ò◊i˙ÙÏ~£L8‘ˆ≥Ê_ÍÔ˘Ö:ÀU©\\j{YÛ/ıw¸¬ùe™Ë6ü „˜W≠ü+‰gÍ\Zﬂç/bòZQ¿\'–	üvk?‡≈öÎJ¯o/uw¨?ï£˚=öÚﬂÈ~„” ˇ\0ÏÚ¸H˙§S..=±ô∑Ú»GâD*^‚Á€õ+áÙxîBµXÔ*©˜ü≠ù∆Õ˝KÑ¸*~¬%Œ˝±XOÚŸ?1\"¸úP{`sØ∫“U´ıóÌä¬ñ…˘âÄ„;ÜÏ?«ÚMp§Ω^dº◊‹†|î≤I¶iï·éÿˆÔ\\ΩÙp’1d•≥&ﬂfÍ9l√7¬Â{eJû!¥Í—å#eúÍª_£¥§hà¥«–Õ_·K⁄ÒÉ˝œwÁ^•ïp•Ìx¡˛ÁªÛØR ˙¶…©˝’Í?m◊ø≈©Ì0àã“i¬°WzÔñ\'§Ó—e•wÑcö#ií¶}ªc5„b‚â‚¢x\ZGˇ\0äÔ&Í‚k§⁄¥KrçMºñ\Zlv€5`çŒÿM(E>W»X¡ÁpU\'¢ßªªOs={ ˘ÁΩj=ÚG∂¶AÎ¶ÇºæP~Œ¢Y¡ÚıaC„bÀErÛ¢\"í°EúO]´-zîAm’◊à\"≤”0◊…Y+)ˆÕë«‡Röé5^É‰á$”º\\∑xﬂí6ÒQ‰ÍhiÂïªèÙÊú|+œãª£(Æ/O>ûÛkë∏C1•V¢º`˜⁄ÈP˘Ìw•c∏b8ÂäŸÒKx\rg°ÇÜ#∂€∂&|Ám˛À¢,ÒääQ\\≠©RU¶ÍM›∑v˙ÿDE%\" œóûŸΩW˜Áy˝2EË5yÚ‚≥€7™˛¸Ô?¶H´\"‚Eä◊t`{pqØπ◊O—$UEZÓån5˜:È˙$äãâí\\\r≤Pœ~’]R˜≥Y˝E3(gåøjÆ©{Ÿ¨˛¢ Ã+âÄ®à±ÕfËx˙\nfﬁ˙Ì!TCéØm∆ß}Ÿˇ\0£\ZΩ˝AL€ﬂO˝§*àq’Ì∏‘Ôª?ÙcV|\n/êBøΩÔ#Y3ñxé2”ÒUE˙’WÔ°„Ëœõ˚◊•ƒ°q&\\π“Ÿëz≠ƒÕ∫ «ÓÀ-GNÊÔ›$ìO1?dè‚\nì´“ë|ìqÅ®µmìö:J ksâæKN~«I*º(|Iè\0äH·«Jhıø[±=+∏‹*hir\n∑√=M0iñ(Ÿ‰söﬂfıqx†Ëœ”Ì–¨ßU±ΩB….ót“«IY)%TQ?ò±°›åëŒx¿K“v3…ì–˜9?…ûÉiÊRÈ9‰πc…Ê;ÔÛ„LŒ∞|∆<5?˜V‚ó7º”‘u∂˚Eg®4⁄\"§SãOçÆîJÒˆÎC8N÷W‚=ÉPZzÍÏ\"œzÖç€pgÜiùN”ÊŸÉÊ‹¨wûy™fí¶¢WÀ,Æ/ëÔ;πŒ\'rIÒíU§Ù1¡jœ·I7È|öÕÆòVöıNíûÒvâµ¡Ω‚é=Â©w¡$>ïÆ’¶ö£ûh˛PÃ”MÚŸoQC%;+#Ç)\\»ﬁ6xF∏\r¿€}∑€q„*¶Fz4é8·ç±D∆±å≠kF¡†w\0<AK	~h/ü^Îó‚˙/ÿ´ï—óƒ∂∏Îé¢fmUœÍ≤\n+mñ*™X¶¶ßàG)ù≠.(⁄Oa#µ]I3ÉZï;§ß\"˘ „3âís√hÜﬂnå˘9h‚{«¡$è\n∞)?äã‰≥àÌLø6NxÍ2´ìav˝≤°Ïè˙\rjåïp¶ût’ƒé∂PiçÚÒ[k†®¢´¨û™ç¨t¨FKvv∏¥Œ‚¨=x7\rz6ÌL≈≥´˝‚™;≠5îı—¬ÿƒRáÓÌÿ–wkG¬R‹‚È;M}Ùµ6 Íkïúïí≤xùÓ^“O∆˙	=	jÌÊõ#·ª,»hˇ\0x∫aıu±vÔÎ$§s«‰pY*¥_M≤í˛éõ}‰…÷9∫o5›æ‰æöïÙÓ\'œÕ	ﬂŒ≥°q˚QÙ‘˚=ÁË>EæÆ≈}ıÏÖ}˙7ˇ\0Å9á›X?2®BÓ⁄≠z°•¥uv¸-û—O]+f®dpD˛±‡lØcàÏÚ->WãÜ´TM•~á}∂y}£…Íe¯i(ŒN.ÚΩ¥í|…ænÉ`ñztåS9∫∑èVc.9c“⁄öÇÆgÚﬁÒı–≠ˇ\0c•˝íüzG1*πiÏÚúÍx∫˚USˆÏcù¥ë||≥|At8¸∆ûkÅ´‡b÷ÊÎw∑;Íl˘FÃl¶/bvõ±ı!/™En∑∆1O[•∆Í≈!\\∆Òcb{ªõs•\'≠\\:˚®Í•°¨Ç∂îÚ6VÓöwî.>/vIü}≠Rú†π”F°q¨ﬁ\Z2ˆüßuΩ£˝æúˇ\0bÀut8¢‚”LıKFÜÖOpíÂw©¶ñ≤	È]•é7	\\„Î\\Óv∞RGy‹xÈz›Ì\"ñ\'•JWJ)i⁄ﬂº˘œ%ôV3(…gGM¬n§ù§¨Ìª:aiØtŒÉá{TÆÓ®ØÆêz≈ø˚Ve-g·ã´¬4∞◊ƒË™º÷L«\rú«‘HÈ˘\\<DuÄÊYˆb\r‚•.e[F∑ñLD)‰î®ﬂÁJ¢”©FWÙµÁ3˚åX]Yõ›π¶§xÙ:é˝™V[èÏR¶…≠Ì»ånlä◊O;$€÷ı±•Ïﬂ∆CY?niZú û2¨_Ò?Kπ‹ÏÜ\"8úÉR˜p]ÒäO“ô-ò‡ﬁ\"pÇ„∞È«Å]û;^÷pÒskèkÓ-û¥Ï+=Ùü3ãO5/\ZÕ™!íZ{= \ZöÜF{°⁄@›˚9π∂ﬂ«≤≤ú`qKßö≠ßˆÏ#O*Î+5|u’”KJ¯[#c√bŸ‡‚ÁÉ∏‹NÛ∫⁄e¯∫4≤⁄Ùß+IﬁÀ¶È#ä⁄ºèé⁄¸ªBõï8nÔI-#ª\'\'wÕ£“¸yä~àãû>∞jˇ\0\n^◊åÓ{ø:ı,®õÖ/k∆˜=ﬂùzñW’0^MOÓØQ¯ìhæ∏≈˛-OiÑE∆‰πü«ny^CZ ;]ûéj˙⁄á˚†âÖÔqÙ5§ØIß(\'J¶ß›Øı7\n¯AuM„+ÆÇ·_OΩtÅ“ı4PºOîΩ‰Ó™3„WãJ¥˙’•:mçiΩî4“c∂»(\Z›∫◊1Ä>R=”ﬂÃÛÁqYœ¿ÌÆÒ≈áŸóç˝M«etˆËeıÕä¢Vò®‡#‘”±ƒë‹Òª‹µ\rUk©ii†DEb°u…Ìﬁ®twG7≤—f®Ño„5sDwp(œﬂy◊c_¿Ü6Ã˙Äﬂ^ˆµÑ˘öI÷*≤éıëñïWI∂∏¥◊üGË∫?¥DV1D@\0^|∏¨ˆÕÍøø;œÈí/A™»¯/·{-ø‹≤úèG,’◊[ΩTµ’µRI?4Û»‚ÁºÏ7.$ˆ\ZÜÆZ.∆´]—ÅÌ¡∆æÁ]?Dëiø ¬\'÷2≈¯Jè⁄.«ß¸)ı•y=>gß⁄[j≤^©Y$p÷SæRˆ5Ì-xœ#µ§éÂUYÕ4K\n„/⁄´™^ˆk?®¶e≈e8ΩÉ6«n8ñUlä„hªS∫ñ∂íRC&â√g4ÏAÿ˘äπçmo/ ¬\'÷2≈¯Jè⁄\' ¬\'÷2≈¯Jè⁄*n≥.˙ áè†¶mÔß˛“D8Íˆ‹jw›ü˙1≠∂”\r”-¥’ÿÙø£«®+™<.¢\ng<∂IπCyœ;âﬂï†|ßÂ¸—üd∑«0“;E“ÛuóØ¨¨ôÛÃ˝ÄÊ<Ø∏‡•≠\n©$Ó`ø}F|ﬂﬁ∏˝.%zæPÓ>±ñ/¬T~—w-0·«DtbÎW{“˝<∑c’’Ù˛	S53§.í.`ÓSŒ‚6Êh?Öô.i´?ÆY…~¥ÁπHìù∑löÁZ√ø“IU#öòÈyü¿è“=“?C¨nsâ$ôj	\'À˚‚¯˘C∏D˙∆Xø	Q˚D›dÔ£0z2≠>©qãà’Û6ŸIt´>mË¶àéPµ3ç{g™‹(jÖ//7&==NﬂËHóˇ\0bÊ¥ÁÖÕ“<åe⁄q¶6ª‡@˙aWNÈKƒO€ôæπ‰vÏ<JB»±Î.[`πbŸæ:˚UﬁíZ\Z⁄Y7‰û	Xˆ∂;í;˝™R≤±G+ªûlo/ ¬\'÷2≈¯Jè⁄\' ¬\'÷2≈¯Jè⁄(›e˜—E¯S…¸?£ìà,IÚs>—$ıçˆ∂:öh@éh$?	T	z\r≈¯]–,/\Z»¸_LÌñ˚6]t˜∫8ü)elqÛÚ5˚ºë∑X˛‚=íÍˇ\0(wüXÀ·*?hé,Ö4å\ZEºø(wüXÀ·*?hü(wüXÀ·*?hõ¨ùÙ`“øw*{6°jU‚∞Ì*⁄ôOëåú8˛@UÌ˘C∏D˙∆Xø	Q˚E⁄∞NtLõxf¶∂€0»(_lπx;Âˇ\0	•w≤ç‹œ;øãbä-Êö±ÁÊÁp®ª\\™ÓµéÊû∂y*%>WΩ≈ƒ¸dØÃ∑óÂ·Îb¸%GÌÂ·Îb¸%GÌuìæå˘Ëä¥¯owÀì€ª-ÿÖ[⁄|è}U+ÙK’‹È3∂xç@nÊﬂUk©o¯#\'‚ê©wL8s—-∫V^¥ªO-ÿıu}8•©öô“Ipw)ÁqÏÊ\0¸∂f¯F)®¯µ~úY ªŸ.mc*Ëß.î5Ì{AÂ ˆ9ç=áƒ•-,Qªªûn—o/ ¬\'÷2≈¯Jè⁄\' ¬\'÷2≈¯Jè⁄(›e˜—_∏-…˝_Ë€ÀÌFNcéS‰VÕ∑ˆ<—\Z≠øﬁø*®k^∞≠“:ƒ.¯ÉP⁄q˚Û§u∆Ç»c®2F#yw3â±°ßb;\0\\\' £√«÷≤’˜Û}h≥å¢Æc8 úí≤∂∑¯Oÿª¿ÏûµU9…ŒI≠€t[ù£(jˇ\0 £√«÷≤’˜Û}>U>µñØøõ˚ÎO˙Øâ˛8˙~}˛3‰ˇ\0ËUÛG˛∆P-è‘}=∞jñ\rr¡≤Hã®ÓP	\Z<÷JÕ˛ôÆ\0è.€¬BÈˇ\0*èZÀWﬂÕ˝ı,\0\0ÿxñÎ( \'ÅçH÷jJv·ﬂYÛÕª€º>“’¬WÀ£:s†‰ÓÏùﬁ„MYæ¶Bj˛ãf˙-íIaÀ-œÍ˜x∆6MYÓsÂ€mÿ}s|~\"z\Z⁄{ˆ=a msYr[5“Çq¥î’p6X›Á-p#!Ò((‡;@ÚﬂQn¢ºÿÚ\\[mÆﬁ=˛÷f…∞Û\ráìe©≈ÏÕE\',4ì]èÁË;|ãñ<$Ë∆ûqNQö„(+≈ı⁄ÈÆ≈uŸ¿ÕZG>ì6PÍåœ-í=˝ãe¶i€”‘ü¯)#·A∞\ZòÆxxªWBAeMﬁSTZGqù¢Œ∏^j{7åõ¥Ïóo¿›b˘^»(Sr†ßR\\…Fﬁv⁄ı2•pô¬≠ÎQo¥9˛ujíì°ëµ≈P¬◊]^”ªZ÷û¯wˆNÓpı£}…nç˜vkZ–\Z–\0`à/ï◊e˘}<∫óÉÜ≠Ò}\'¡∂Øj±{Yå˘N%n∆:F+ÑWΩæwœ‘íDGƒŒÖ”ÎÆü:ÕK,T◊€dÜÆ”Q\'cDªlËû{√6é‚\Z{vÿÂæOãd8]Ú´ ≠6Àù˘&ß®g+ö|Dxú”ﬁ7vÇB⁄E‘5I4ÎU®oœqZ;†àŒì√ø∏ïÑ=£~›Åÿ¯¡^€%é=¯Zn”Ù>ﬂâ”l7(ï6^ãÉ©ánÍﬁ4[„kË”Ë∫◊T¯ﬂóÀZÁ∏1ç.sé¿π\'»¥B·—›£ï5}}MñQ¬„πÖµ0<‰it;èáu iá˙-•W(Øñõ%M÷ÎN‡Ë+nÛ	ﬂásò–÷∆◊yÀÃ<D-=õ∆JvùíÈΩœ®‚˘^»h–s†ß9ÛGv⁄ı∂ÏªØÿÃÎ‘˝Ãtñﬂã÷Â‘ﬁ¸ûﬁÍË·-!ÙÓkˆ0øßtN#≈÷l{A]	l~w¶¶”“RÁò≈%Ê*∫Ja?0Íú‡à- ˆÄ7Ù”˛U>µñØøõ˚Î◊_f*:è¿Inıﬁ˛ÆìIñrÕÖé\Z+1£7W[Ó(ÓÒvµ‰ûä»p•Ìx¡˛ÁªÛØR „qÃr…àŸ)1ºn›∂Åù]5<dñ∆›…ÿnIÔ%rK¨√”th∆õ‚í^d|/4≈Gé≠äÇ≤úÂ%~6ìo_8Y˘“µƒ,÷NŸ√û#R˜ﬁ2ŒÆ∂Úÿ7tå°lü9Éa€Õ4≠ﬂa€ÀlıvµCQÒù#”˚Ó§f]E¶¡F˙©»€öB;7Ô{ﬁZ∆èúÃ~	∞Lìå^+≤\'5:ó≠¥„µÌπàùª°uu+7Ôdc_Â˘‹\\ﬁÕd}ä+ùó”Éùááç«zäv2˘TœU/œn€ææ`⁄HÔ¥2 |b0|jmDV+ƒ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0à™œ\\Y”pﬂ¶é≤c¨9ÓUêZX“®aˆ2V∏xπw⁄=˚ﬂ‚!é	¿îÆUëù~æk÷¨Z8P“% ö›téöπ¥ŒÏ∏^\\y˝›\\ƒ{9À…˝Ï†º6Ëeãá] ±Èïò«4‘ë¯EŒ±≠€√k‰\0Õ7ób@kAÌcâS~ãn™-to‚wPhﬁÎï⁄9\"∆\"®æ8∏ö∏Ô€Õ\'Æc∏/whë§h∫™È&OôDV*\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\rôf8Œüb◊<”1ºS⁄Ï∂zwUVUŒÌõcÚíN¿4n\\H\0@@uùt÷º3á˝6∫jVoUÀIBﬁJjV8	´™úWO=ÔqÜ¥9«±§¨≠–-.œ˙D∏ì∫Íñ©:V‚ñ˙àÍ/åπ±2ˇ\0ã⁄Èèx›£bGho;…ÁpÊ¸:ü®Z≥“SƒUª	¬(Á°∆®§ë∂∫Y∑0€hCÄöæ´ó≥¨pÂ‹Ó#n‰ÓÌc—\r√tMÌZiÉ“òËmÃÊö°‡u’ï.€¨®îé˜∏è@≠Ä+„2˛*Î;≠\r\r≤äû€n§Üñíí&A∞28£h\rk\Z—ÿ\Z\0\0‹˚—äD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDD@\0DDE¬fôÆ)ßX≈√3ÕÔ‘ñk-Æ#5UeS˘X∆¯áïŒ\'`\Zsâ\0H’ê‰6<N«]ìd◊Zke™ŸÍk+*däö7sú„‹\0X˝ƒˇ\0˙ï«n´[t_FmuÓ≈|;™¥€ZrïªÔ[U‚c\Zﬁg\0Ó»Ÿªù⁄NﬂO<RÍØ˙ëC£∫?eπ3ñ∞Ek≥EÎfπH”˛5VAÂkZpi<ë¥H.Z¡ø¯óXó_9ßªg7hZ/ÄŒ∆√‡‘˚ç€Hû¬Úù∂Õkk„∂Ó¨ÊxI·W·kOõa∑:+ÜKtö˝x‰Ÿ’3Ÿ{ˆ∂nC[„‹∏ˆ∏©—[ÅFÓ\0DDD@\0DDD@\0DDD@} l¯√YQêTx»iØòmMâÿ	dÓãsÿ˝öI}»]√\\◊¥9Æ§n=Ñ/îD@\0DDD@\0DDD@\0DDD@B‚”§ON4	ïx~ÍL√;`tn¶ä^jk˚∑©ëá◊<Ú,<›Ñ8≥∞ìv%+\'mt‚L∏v√§Ãu&¯⁄X›Ã *v}e¬P7Í‡èp\\{FÓ;5ªÇ‚…=K’Æ\":F5nìƒÏ≥«hÜc%∫≈ß¿≠∞Ô jÍÂ€g8€#áèïç›‹Æ˛4«D∏ïÈ‘™åÎ,Ω’zí%◊‰ó»££å¸\Zí!≥\\‡	⁄6l–NÔsy∑:€†¸>Èßò\\XfúŸÑ\rw+Î´ÊŸıw	Ä€¨öMÜÁ¥Ï—≥[π\rWY“=ßL·7ÑÖ¨S®∂2;∂[qâ¢Ò~ñ-§îˆ¶zÑÿ—⁄‚q$\0\'ƒEn∏DDD@\0DDD@\0DDD@\0DD≈Ò>	‚dë»“«±ÌÆiAÔhÄÇ≤ç&’=3|ôπ\r#iXLì‡7Áπˆy«y2èû[ﬁ{vcIÉr7cFÂqzu∆ÓódY¥ÎT®Î¥´=Å¬9Ï9F–±Ô=∆û´≤)òÔ•$¥øZ“;UâQÊ≥Ëîkˆ:qΩPƒ©në∞;¡j¿ÍÍË‹~öõÎòwÿëø+∂¿é≈Ñﬂ§êöÊπ°Õp ç¡∞ÖÚ≥™ˇ\0¢ºp\\Á›xwÕÍı7O)	x«.Q\Z™äHGo ß‹8ÅÂ•sI;ìπhﬂJ÷èerGa÷K\r«OÔLwS4ÓcÍË:¿v π≠Îb;¯ù\rÒø≥tøI;Ω„E√‚ôé%ùŸ¢»p¨ö◊}∂O˚›e∫≠ï∏˘9òHﬂ ;¬ÊïàÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0à∫.´kñìhÖü’ΩQŒmñ^“ËaöNjöçªƒP3y$˛kNﬁ=êÈG∫ÀØ∫O†XÒ»µC/§µFˆ∏““÷U÷8},0∑◊ø∑`N‹£qÃ@ÌYÒƒKe˛Ó åwá|m÷Zwn√ê^\"dµNXi˝tq˘ù!~‡˚ïÈ	|NÒìëÓ˘Sqé◊^Íú≥%ñW6Vo›\0wØün–6åm±sUw∫®Û≥Ωq+“G´ZÔS&£tGÆÇµîé/ª‹˘é¡é|ΩánW‰ÓA{¡Ÿw˛˙-.◊ÛGûÒ*…Ìñ˜rÕOãC!eU@Ô#N¥ˇ\0”÷vˆò»ÿ‹ﬁ8+—é\Z(‚¨«-^¨Â.èñ£\"πF◊’FŒl-ˆ4Ï=ΩåÌ#±Œv€©ıÈV—v?èX±;%7åYËÌV´tB\nJ:H[0∆;ö÷¥\0‰QäD@\0DDD@\0DDD@\0DDD@\0DDÎÔ˙ƒLsVÊ8´m˘çŸó˚O-5p;lÑŸÄÏH◊l;∂S¢ Ωåâœ¯‚„Ü;Ã˘ßπu◊ ∑ƒy¸#®íí‰#º≥R|¯xπXdﬂ∑vÅÿæÕ3ÈZ◊›=™˘÷LBﬂó6ç˝MC•à⁄Óq∏vÚ∆ò˜C;˜ïÆJ4’ﬁ¥G]i]ßi›ÆÌS……¿F`ÆàxÉj#-êÓyπ{;AUµ∏ﬁø“ﬁì^5EKz»´∞´åõ˙ò≤Ô’ƒÁyg°Y‹s)∆3k/8ñGkΩ€‰ˆvÍ»Íaw°Òí”Ò¨ﬂ÷áÈ⁄˘Óz©,sÓeß$fƒxˆmT-ÌÚ\0Ëáãwx’AÀ¥ä˛Ó≤^´±|√u?ˇ\0;≤THi˘Gq™W∑À≥úô.◊∫ü|ëb&ûÙïÒeÅ‡™Õ®Ú™H∂⁄ü †d‰˙fè´ò¸2cpnò¯»éüRÙU¿ˆuïv+ûˇ\04~u7ë“‰U/ÈC·\')‰eœ\'Ω„…∞ºYÂ;!u7Z—È$3‚¸NÌôÚ7÷Ï*ÆW˚\rÍ¶?˛ß∏?Ú)∫\"Õj/¶í∂é·j®*·©Ö˛∆HdiÙÿæÂ$D@\0DDZ…57M–ÛóÍ5c‰ˆ^©]`¶ÂÙıè(o/È·\rÁéØXh.S≥}¢¥SO]Œ|œâÜ?ç¿%…≥eâEüy◊L.ñ€:»tÔK2;Ùç›≠ñÁS\r∫\"|£ìÆqê”ËU≥QzU∏õÃ: lMˆ*ï€Üõu®©Â>ÍZÇˆÔÁk\ZUwë*\rõuª⁄l6˘Æ◊À•%∫Üùº”T’Œÿbåy\\˜\0ÙïXµs§£Ü\r/l‘ñ¨¶l⁄Î‡R„±â‚ÊÒsT∏∂_;Ú<ã%˙Œ#∏ü»Ñ=fo®∑6øp“Íä÷”Ô„Ò≤˝ÎB≥ZE—+≠yc‡∏j∂Ei¬(≥üKÖ¬øn˝πc\"ÔÂÎ	‰˜%€‡[u.\'≠*∫Û®ö’¶Ù4:kìvıîß¬ÓiÒ\Zâ\Z\ZœK#ká∫Q¶ïpÖ≈/◊qñzëtu≈‚IÚå¢¶VE0?N◊…Õ-G¶6ºyHZï¢¸p”¢Æß∏[¶‰ó∏6p∫‰%µíµ„Èô»=≈¨Ë´\0`67[‚FÚ\\\n}√ÁF^ÜiÉ_s∏øtí-ü÷‹°\r∑¿Ò¸].ÂÆ€À)p 5\\„éŸ1µë±°≠kF¡†w\0<AH≠kmæ!Äàà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ/ÇÚàgS8:·ßV›-Ne§v7VÀπuuæ3ATÁ{ßINX^~ﬂò*∑®]Zsstï:c™óÀŒÓm5⁄ñ;Ñ[˚ñΩÜ\'¥yœ9Ù≠\nED©4cNq—I≈2dìn3óB7,˚òßòè≤mHç†˘Éœ•Aôw\nJ`‹Ó…tC0Ç(˝úZ‰™Åæôa`¯◊†îQ∫ão≥Õú5yF!psiÍnñJ÷{ «…M+};lBÓvé$¯á∞ÚãF∫g‘¨otl»Í˘>… ~%Ë.Ìb≤_È¸˚f°∏¡¸U];&gƒ‡BËû∏r»yçﬂBp)ﬁÓ˘>G©Y\'ﬂµÅﬂïFÈ;Î†∆\n9x∂∑Üà5◊$/w^¯Ê¯˙∆◊3HèP\0≠ugowh∑?˛4Âjµ√ÄæÓ[¯FÜÿŸøˇ\0o5Dõë´Öó£{Ç˘I\'F\Z“}ŒAto¸*SuçËÙí˛ëæ3‰Æ÷ô@˚±ø¶_ÇØ§å:÷rM≠˜6É¸M\rG„d ≠Cã£oÇ¯éˇ\0∏·y˚<ÜËÓW%C—ı¡›Ω¸hçµ‰p≠ò|RLBYçËÙs„äk≥\\ ≠}Õÿﬂ‡◊iiœ«nÀ£ﬁµWT≤nf‰Zëï]∫Œ«\n€≈D¸ﬁûwù÷Ï⁄∏A·r ˆ…E†X;úﬁ„SfÜßo¬á.ˇ\0b”Ï-8∆`¥{\0∂√O∑£ë°7Xﬂ]ül_C5´7‰v!§πÖÂívâhÏµ2«€„/ÂŒJõ0æç..sÆJúãßìmßΩ]!ãoLqô%ﬁ\"ù“7Ÿò˙–„\\ÛF©Î,∑YGè–:M¸ªTN[∑‡J≥∫m—…¬Üú::ìÄ?)≠ãm™rJìX¶\0¯cVmŸ‰Ÿ¯¨ˆ[6=oä”`¥—[(`EMG!ä1‰k\0\0_µIPàà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0àà\" àÄ\"\"\0ààˇŸ'),(50,'rrrr','rrrr','rrrr','202cb962ac59075b964b07152d234b70',''),(52,'admin','admin','admin','21232f297a57a5a743894a0e4a801fc3','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0◊\0\0\0◊\0\0\0â}ƒµ\0\07<IDATx⁄Ì}˜w◊∂¶˛àyÈŒ¸rg÷[3˜æô;Î≠7sÔºˆ≈cccl¿òkõå¡òl¿,¿‰úA$Å@A$ëÉH\"H$\"cí…9Z ˆ‘wƒ.ùÆ>∫ª∫˚t´j≠ΩRw’9uˆwvﬁ\'„yA-Je*üQãÍøÛ:˝ıØ•fÕöQ”¶MÈÌ∑ﬂˇgz„ç7Ë˝˜ﬂkﬁº9µj’äæ˛˙kO‘∂m[˙¸Ûœ≈˜˘~Ôæ˚Æ¯Ó¬ˇÒ{¸ÏÂ~_~˘•˘]ô>˘‰[˙Ù”Oïﬂ±Rã-®uÎ÷‘Æ];œsL4aúXº≥’CjS™Û†e§Ú‡Ô.Æ/”;Ôº#¿fÛã)\0 ˜ﬁ{O‹\0√7n‹X¸‡s˚~Àñ-M‡ª\r6„|ÛÕ7C∆	a∏áLıÎ◊ß?¸Pl6òøé@√&É±bC:ºÄK7j’‰u%†\"ëL—ûÅÁ’©S«îíNœlﬂæ=}ı’WT¸qòdeê\0∏^Hı}\'zÎ≠∑®AÉlÒ~7¿“\0\\Y}^3ôR√O	ÂÖ¿®¸|H	ßœ2∞>¯‡Éêç\0Røì˘96º‹˜«ªQIu¸-—Ô¨¶,%¡U2±∂©\n&ìAXEt\Z$™\Z>ãÔx±Õ¸&å6lêÇ\0Z2%Z∫,#ïÌ¨d0©Ã¨ªœ¿÷Å„É` ]‘2lPoô©Y\0\0ì\r∞tqr§∏æoU•b∑M&s≤#‡qr`0∞\0Bø’??7\nÃám9¸õåçÔœ∆Ê	/p\0Æ“∂QµM	êlÜdpŸ1!ú¨\n∫Ÿd∫π…1ﬁd©∞ê®P[∞KÛp%\\‘¡gpŸ˝ù4ïÄeï\"ò# K§:m@x`õºÄ+4æ´Í Sì&Ml¡≈¿KU`YAˆ—G	ê%Ú›„ôxá\n‡ä#A=`[@ÜÉ «ô vªÆó†r*$ÊîHß{c·¿g\'Ü˙?vb0ú\rà?q âêÆÑœ·;¯.‘“ø˝ÌoaûB¸\r;<PWÁÖ66\'GéüÄf˚fA\0Æ8≈¥ú\\ﬁnÃ¿Ò0=≤*‹2\ZêéƒiD»®∞˛&?ãÛu∞	aèAuKî˝≥ \0óœÑ†b4RÄ≥î¯Ã‡ÖX±Ç\r@„å\nY¢Yô ßì√|„-•Ÿ9oq\0.üm-ØRãÃ¡Q?THvKÀÅVH>ƒÆ µ\0(d†„πÈÆ∫ÂZ∆sﬁ¸~SM=ÃH°◊Réx\Z⁄∏?∆ÅùZNú≠[∑Æß4®H§$$@Ìñ¿ãœ‡≥âHVˆ≤≈s∏™©áZÉ´iÉ◊µÒ™lv«öÁ∆Q%ÿFCúîõ,èb\"ºá©íΩ°-∏ê_Üâ]Yw5«Å\"ÏB´çáÕŸÛ®ır*ûdÇÙ¬ÁUua∏7ûë.™*Ásv˛¸ı\0\\~∏ﬂu™?rS9÷\r`¯¨*ñ6rus¥Ñ\0gıä‚w…Ltˆ;3&í{3tvd§j  ±ì¯´på\0± )T¿â√≤dLeiñJŒ\r-¡µ¯«⁄fOåtÚ™±ç©I¢íTÿAj{%∏ÌTGÏˆ÷\nh0h™æ_Æ◊=5JKpq˘~∫ÿ\nr≠˜ﬁê3>¢ô\'TOnúiŸøµyO*ÇåKStŒúœT¬¯gn4j‘H\0*ñÜ1\0ïwìÌ6nL„D¯ú\nå…™êéµÕÇŒïÀ∫™Ñ∫{	#Uabëún$É¢^Ωz,P˚¢µ…]\0Ræo*Ωw∑Æ“+#∆ø≤6⁄¯ﬁÅµÁ§‡_|!ÓÌDm⁄¥	IPv\ZTUYuM)∆Åe]•óV‡Ç˜Gß“íhÑŸ•>®O7 Ï˝-mõ3ú ¶(i„Ïî;!ì∫u˛∆÷˘!˜∂à’e‡!eã;D…$˜˚Hï<IiË(Ω¥óÒÎº®ú≈)Jº€◊ØWó&ÙÎD«ñM§ Ω9Äê·ﬁ∏\'{„9ÿ~êpênr`∞9NÊ%nÿ^)\0ÆHr	„©jÄ©U˘}™Ù§æø¢¢¨!Q JÁVO•o€\'OÿX™AML[LW€+CGºüÈ2UŸ	$d$]lõ~Ù>unŸåfÓN•9£Ë˛∂9æÄ /z∏}æP7w-C+ß˝L£ˆQ™ú^´≠Ò˛ ≈dıT«K/›‚^∫π‡£-ä¥÷©‹’Nµ¿⁄Ω≠	ûìÀ\'hûhi≈§Å‘≥csS3 7x…8a©ãÉ&q/ù≤62t≥∑¢…ËÊ∫+f\0Æ$∆Ô‰ùw”ÑæT<c†I%F§xº–çM≥ÈPÓZ3yÄÿDÏ6π∏îr∞ÊC‚=Î¶&r»Cßú√åTµ∑8Q;gí´b>H˚¡}«ÙlKè◊O1È…∆i5Xv…∞AZp≠ö5≤Õ‚‡#ò‰£ît\nÙsŒ°NÌÿ2R—ﬁ¬Æäì;\0(ßs´†Œ‡sıﬂyõÆØÆäsk<∏ú@\'\r‘c8l†2[¡&gÜËì‰Ö.ı^⁄ÄÀãΩ∞‡3NMcd‚ﬁ3˙w÷„\rSÈ≈ûÖê¢êrv`”¡„z/]‹ÚZÄã;<Ÿ≈∑∏1•µAåàà’®§÷≥≠≥¿ƒHπ£æQ#uâáâ3⁄\ZºÄÀz÷ñ*h\n`}ˆŸgÁÕŸJ-É^/\0‚]Y;]ÿlêfê`âËgË≈±°C#—ùÛ	˘l+˘¨_˘Ë”h§÷ìM”PƒImD0Ÿéâ.1/-¿•jDÉ¥n[¶:•1Z©82‚G™Cä%€—°Küç]íuΩÏv»\Z*µpO´‘*a‡»à;¡À»ééd§≤âSYö‡2ù^Ç«êd^˙F‡~ôùæ\n÷”-3ÊO¡ïœ^≈Dú9ÿ]„¡≈Œ/;ú{ãK&ŒÂéTBçÏ∞DûÒ≈ÅÓ\Z.ÓÔ%!‘…ﬁB0ôSù:5o¨¿Kò|;,Qj\"∑_´Ò‡Ç·Èµ8“N\r¥f¥#á–\n¨¿K®áñàäú©Q„¡Â5ûãÂ˛ráY˛˘ìﬂSJ≠g€≤&◊@MîœÒjäÉ˚\"CæFÉ9`^è7egÜ\\ä@·ªh¨ió†ÀÙ|◊¸Ä¡5rv4mX?§Q)\';Ÿ”l≥πô\0Wçw≈GRfgóüc1¨˘ÖNéP¿‘zR–PˆÉX$ld¶Êç´Z\'Ä∞¶ÿ<±÷rgbÑd‹jªj<∏ºz\nπñ¿≤K⁄≈ﬂZ~“P	¨¿ﬁ“è~€>GπVÎ&Ùwî^pjy	\"◊¯\r/m‘†b\'≤kˇÃÕbpüÖô]‘ˆVê®´=ﬂù∂NGÊ°…˝:9Ç\ZLê˛‰C\rtp/á†ÆÀI%‚[zíuù†&∂¯¥ë„Z√ˆˆrÜ≤…:z\n°6h–¿s7Y86ÏºÑÅ3C_z∫yF∏∏!©π93Xã©—YÒvûB®àh±Ã˝‹2·!’úºÑÅ3CoßÜºNàO≤\rnG^»5\Z\\*O!Äƒ≠öΩff∞^8úö;5äfá¨<á\"Vi£±†q©∏∏\"¢FKFíSË.H9ª¯ YWsßÜ°Æ´¿Öêã›Ÿe©í¥õTpEr‡ÇõΩeÁÇaw95<Ü.Î˘–ÁrÛ‡ír\nΩv{ä≈ﬁ\n<Ö©„1dpTHfB«&!o–©WG\0.Éê˚Â%a˝ÀÌ¿≈∆k¡»^Åß0ç¿egsAU‰3≈‡MVi=¢aiMoPm¬Æ*æÖ‡£∏Ç2ì‘q«ªÅj!}ÁÜJÇÈR‚ü≤‡≤û#e¨¿\rü^‡íΩ»|Œò5œ0\0W‡≤m„<FÛœÄÅS\'÷≈q.ª¸Q∑≥§¡+∏^ÅÜj$‡¬é√ﬂcgÜ]’±p√ªb¿¿©ÎBÜÜ\\Li\0Y∑c\\ìÓ-tKgapa7ì≥‚4ªF4∏j&∏XrÈrNW“É»nß‹„Öq)ø|ËÉK’õ0\0W˙ÅÀK\0ô{≈ÎråP“¿≈-’‹™ê(∏^≠{Ns±K{\nJ˚SÉ*vŒ)9¡ö¬Y\r∏X-‘!Ø0ÈYÒn±.\0J,\\ÿÌÇÏåÙIÅb[<pÈr∫dR¡≈m’TÒ\n¸yªÀjóSÄ+Ω¿Â%ıIóñjZÄ∫±ÍË ÿYhX‚îS»‡räq‡JMp© Nº‰†‡RÙâ∑∫‰5jdVh™¨x|«1∆Ä+%¡Ö5eûê	1Q8±ú@SAó‘\'möÇ ŸÒ8ãﬁA\0ä£Ôv‡räq‡JMpaMÌCÁÆΩ\0ë*Ñ£KK5m¿≈™!˙e‡Ö·≈Y˚$»Át‡Jop!n©JÅ¬ÀyÖÿ|ë∏k\r„‡≤–•yU^CÄEUÖlw∫	 ∏“ª`“ŒÊ¬Ÿm\0FŒàGù`\0.’–KÚÆ[ÍS\0Æ‘ó] Ÿ≠ÎìN˝\nµó[Á]’°w∏“\\àoF“ıI∑‘\'m¿Â%†å˙ù\0\\È.ƒ-U±.7W<ÛD\0Æ T∂V ‡J?pq¨ΩQ¢ó.©OZÅãUCk@ŸÍ1‰Í„\0\\È.éuE.xõpπ®Ü¯ÿÈ‘,±∏\n9\0WzÇãc]rN©∏tj™%∏X5ƒKUÅ™∫∏“\\™Xó[n°.ßIj.ß2>îAésÈOÈ	.U/\r∑¨xùZ™i	.r√T™!2‰e5!H‹M_p°Uû5÷Â\\:’™5∏∆w\rW\rÒ3R]‰L\r/‡ä§ïıÉ¬	t∑`d]À˛ë.NÌfK¯;ﬂèÖ…pØ[πÉ}9TÆ|psÒo,˜êﬂÉ”;\0a‹÷wÁı˘*p©…n‡?Ëî˙§%∏TßüpäãLv;¶’Kô?‡JV*Ìˆ∑≠ÌÌ˚ÊM:˙cS:=¢uUáﬂ·3¯@+∏,‹œ≤iö„F¬‡¿g˜iËÎ;\0a˛vc0+ëwÃ\r[7U¨À\r\\:u}“\\≤j®ä sºÀK%≤∏ò°ø Åë¡– y~H.ê|O~éıYâ$\'†[O:±+öt;·ü◊)ØP[p±j®j^√™!í6›zh®¿Ö;ªt¨‰á‘bHuõÄç\rÕ+∏p∏º√ÿDô‡nWyíu:™U{p±jàjdªﬁÒ^∫?=Ÿ∫[≤˙•ù◊1&…N=Lñ§rìbÚ\\Ì¿ÂV◊≈ˆòÆ©O⁄ÇÀ-S˙7∫Bπı-‰v÷XL,™RE˚˛c:3∫]û’Àêj#Ë¡öq!Ñﬂ]ù◊œ§Ûæüó	˜ê©§À;Ÿ%ÒÚƒ¡∂ä`÷yîg~6W˘]\\œˆæ@¯=>ãwæ∑„J)∆ tËR≠NÆA∏“\n©LÀ@´Aa-ü:\n^X¸cÌ\0\\ëQZ¡%øP∑@2t}´\Z∆HT`Úõ¨‡¥˛OW7òÿÈ˘Òû?œ99¨E–†¢[œE∂∆∫¨Y\Z0¨∂∏éŸZÉÀÆøÜ\\ﬂ≈=„ÌÄuwŸ”àÖ≈N|+HB*äw,Ißπ^ò⁄ïˆ|ﬂÿçúA µ„XóHN•‘\'≠¡%ßC©TC7w¸ÉU„åE¸ÄJª÷jïRõ«ı§)=ø¢·ﬂ4£Oﬁ©m“ü˛¯ﬂÈ˜øˇ}‘$ﬂKE≠\Zæ%û	*˙≠áﬂ`∫∞z2Ìû3òf\r¯Ü∆ˆjM?¥n‰:ÆwkˇﬂòÊçÔÛΩ∫4´oŒØ|˛O∂™#6;lz∑ráÿ∆∫\"lı\0\\>d C5tÍ∫{bps˙uˆ˜\"é\"/*\0+Ä¸¶?˝À®GãF—ÍÓñ,¶˙u˛]´πÒÜ£TvhX+lÜ*p…Â˛©î˙§∏Óœ´Eß’\n3~ÎΩ°NáB.3∞z±`Ú±≠O∑Œãô˝C;s¡[7˝êFˆÓ@”vßmsGz≤EÃƒ˜≤£UìãÁÇ0ÜwÎ‘aƒ∂ü‘@âXÎ&ı\05¡˙?ˇÖö5|èukOcËF3áÙq◊Å¸)1œ˝Ùö9!s¸ÒõTÎœˇfJ∂+KGVÉ´p|»ô»Úö…Ådˆ\n:ë\\¬ŸßäópΩ¢;Yµh_áZJVﬂÜÍLyŒ÷¿ﬂ˙¥˝Ã5ødŒ–WR‚èæ0í_ÙÏ`!]ÿæîf˝¸=’˛Ûøä1BäE¢2®z¥lBÎ≤FRÂ…¢zQæ5©sÏ⁄‚S1æÆ_|dÇÎYQVÿ±≠™@≤pq*úÈçÏP≈S∏¬n#SÂºµﬂ7µçy·ÖC™!‡Ëv√†éüWÌ†Ü§àòAJ◊–É=ts√¸®ËF·€{Wîm4Ap∑d\r’˛K’N–xÄàœœ\Z“ã*Ol\r”≥Ck´ü[≤äXı|nÆõMvÊF$ÕyêÅ• +¥ÇãKåÏ¿≈\'õÙh˛±‡3û÷\'\0= ©Ú¸T‘πe3ÂY^¯?´nY\Z,fÎOœéU”â]Ù€ÈΩ!Tq·==SJ∑ˆ¨£k€\n|°;W”›[Ë…â‚ÍgùŸGïøî\ZTBïgã©Ú‘vj˚Y„*∞ˆìp±:XVòMïßwV›˜ªxê*Ø≠¶´\'Ë∑_”√£ªËˆæ\ræŒÎﬁ¡-aÔY˘éê˜\\˚ﬂˇ\"∆Y8·{«§]ôÍøÛ∂ôe.Æ„* \Z\"Ó	b~o’hp][À,⁄e)¨ô<¿6Ê≈û\"´«∞ıGuï∆ı≈É;Ë≈ï„@v‹(^OOo˛Jø›ΩIáwl¶ù´Û®d„r*5hÀ≤ìVÂfS¡‚l*\\öCª7–∂µKhÖÒª«è_OÆ^åxsw!=:^,¸…©˝√ü§ó◊OõTyfó∞ëX5t≥Ω r´%ÇêP®‰˚1=øtåûù;Dè ˜–√cª≈XnÌﬂBïœ+Ã1ñÓŸEÖ∆|vlX.ÊÄ9Å÷Ê/0Á∫kM‹\\@˚7.£≠ÀsËÓÂÛ‚˝<8}DÄs\nyóÀåg•Áóè—¿>]ïÎQ:À>71L\'p±‘j’¨QHﬁ(Œ¡[5\Z\\Â˝kôi1Nå‘Ù£˜ï›°©W%÷˙?ˇ;l!a‰W^´fh¸å˝≈Ø\'‡ûû.\0∏[∂«dºäﬂ~£U˘i˚Üe¥kc≠^≤–d<+m]ì/\0∂eÕ:r`?…◊√ÛÂÇ©Ÿ*1H .sÃÔø©$ñƒ!‡2$ü<?+aû◊∑Ø§Î;Vá\0Àú„zÃq9≠Ã[`;«\"x™9b#¬}Ô6lº_À√∆q±tã\\vÙ.U%2k-•9£BxÖ≥q¿[5\Z\\lo©í:eö=∏ª2ôóù\ZVè°j!Û&™√ÖJ∆É\Zxc˜ZztÈL(n^øFWÂÜÌË*ÇÙ*6vˆùÉÓ⁄∫ë¨◊ΩÚR0Hë`]-ØRÈÄ`à∆›Ω;z¿ŒÌµ‘A\0†‚·Ω∞9nX·qéÀQÒñbé≈€BÁ¯‚Èc∫mhwJ6 áÃ—PWÎøı◊∞qè¸ˆsO‡≤6Âuá…`ÂŒ!M∂›ïtpïvˆÆ˚€Ê–GoÖó¢p3H/‡2–∞G‰Öá∫5… tÃxõïÃtÈ‹	ÒªÚ≤√∂å∑«`<Ï˛{ä6ëÍ¿¿‰&”¡6ÇƒyÂx®˝ˇBÉπà[!,TFŸınnÏ¿\0P\rI(œÄVKûcÒ÷’Ùº¢BH≤’KªÃ±ÄˆlWœR˙VÒ:°é\nÌ‡¸>€ç√+∏¨ˆ6gÁ\\Y;›\\‡≠\Z\r.v¡À‡ÇﬁåLq´[~R”◊îùyU9ÜÔæˆg{p1^:LèOÏ6É¨&…l\'H.◊≠◊m¡µ’Pï\\Gïê›u´d=9∂Ω ˘ yÙÓñÆ\r	,#~Â4FLå?èòVòóL}˘à)µ`©.Ä	‡⁄øc=›øsSÃq˝ e.s,†√˚ãmÁàg]ﬂ∂å*ém6«£◊ ·›<ÅKegwoö≤îÖ¡ﬁ\n‘BK=2≈Ì2∑T∂⁄^–Ω≠‡⁄6Ò;˙°uìêÖÄÀ†˚ªñ“É≥G…Ì*»ôMŸì¢≈”á–¢©ÉiXﬂÓ4‰ªÆ!4f`oZ2kÂÕJs∆§ÀŒ€ﬁÔ≈≥\'tª(?ê><V\'`…ƒ\0Éƒsr√?<w‹qékóÃ7Á8g‹¿∞˘Å¶\rÔGÀ≤Üã9Œuô#œÛfë∞£õB¿Öçv£ì‘í¡eµ∑†ΩÄ∂¥™Ê`ÏíØÒj!ÉKvh∞˜ˇ–åŒçÌ ËHﬂFb∑≤ï›‹ÒMÎΩ.,¯ÛÁ…ÀuÁ÷Mö<¥Õ\ZŸõÊç˚ûMÏGÍJv1®+Õ÷ì`»◊ófÔEÎ\nr]Ô˘Ú≈Û0Ùh◊‹Ã“⁄Î‚EÒêF+v˝LƒsÃ6h‹ÄŒ4^Ã±ÕÛ›´9~/Ê∏aeûßw˜≤‚©pÀÀ‡Bö◊ã=Å≈ÕA.d„XX„;˝MÜºÒZ\Z5\\r ø.É«Ôêw∆/˚“Ùû¥ÛˆkÎ∞[$H0;\Z÷/úÒ.¢óoä]÷È∫rÒÂÃK≥G˜∂pB?Z<πø†lŸ„˚R÷Ëæ¥o«fwÜªsI0ºu,H[bÊÛÆ¢ŸT±s5yÎ?ÏÁ«.˙[ø–Àß]fù#\0¬œÿ<Êé˚Åä÷ØrïX\0û…é\Zy~êª≈∏8àåÀ≤‘B2‚_HèbpqÆc~oqÆW//…ú .UG÷4øldO„wxÈ≤j»:∏›·„p˜\nâYc[’	L\0;ËÈÖcTqˇ∂-„=∏èäV/†-Y¥ıÌ(\\Hvm†\'èªK+xœGòU&œ]öp=€:ã&woÓ>øWÙÚﬁUWü:zêvm»ô#~ﬁªu•„_8AONÌ£ÁßãmÁáÇhLcl\nN¿:2HXlìùW\\ +˜I¿Ø∫pÒÔk|ú9`¸2Pö.íY5îì:ÒˇıC´î\\vÕj®t≥Kdz≤%=:ºônÓ\\Iè/üqõ€Ö]¸≈˝\"û&Ô‚VÇC\"“ºB¡†¶“©úüM’N◊9Bí ´∏{ÉbπnÓﬂOw˜¨¶G%Ö¶m•\"∂\'YÂµ+Ô∑K ÂF0;\0è7Zà¨&s˜+P≤Ûµ»-¥+ygè·ı™w4√Ó l⁄¿ÜcNù†8®luj∏QE˘6·¯∏π5_Á7˜nN0ñ	Ü+›D˜˜≠@ıÚv¡ÔöùqCÕ{+FAòKﬁmn07Ä„ﬁ·bnª›º√¬ÜÉwáÃìÖûûÛ‚ƒ6”ﬁ QUøÜûínŒk56QŒ#Öâ¿˝G‰w\";√Çƒ]…©Å™akß&¸uY¸“Oom⁄]Ïí˜ÆEôﬂVgiD\0.[Ô[Ò2%9Ìﬁv[	cÉ„%íRv\n@-⁄ïıì)ù=I/©m7∑hÔY∂f^àJ(¿eSﬁ/Á¬Qeµ∑fváÉã[»ÔÑ+œÉƒ›WtaD®›%ø,±;/í_˙/ì:Saã*pÒÀ˜.V\r£ë^Ò$x¯x\\´GE^ïµ•ÚO∑Ã0%·u‘e~≤óPˆÇ:y¢™x&÷*°.køÊ#T\0ÆWÖí™xªU±3õEtÜä»NçH¿ı∞p¢ÈíG\Zé.å«YP[·úà\\ê\0\0◊Ωï£Ö ≈@YÚ\ZÃo›ú±’õ⁄+/(¬N‡‚*dk¢∂Ï∏¨˘®rÎ<\n&µ©DÊL\r´jù˙ˆíüC_æÒπñÔVW({◊É’„E`ô\Z	≤…f<VA™¶#ÓÎ^4[Äæœ∂W¨Í°ÑÁ≥˚„ÚZj¬Œ93„€ˆmCDÏ”bo±JòÏÃÌ¿%«ªd’ı9–´C‹¥}	èa$íÎ˛ ±!1ØHçø	™©5ø6TƒßÑÏŒ‡NCEº≥yñôwËá}∞8Q„ëã?Ωz\nep\rhﬂ\\Ù2‰œ\\õ◊?§˛OV	ìﬂ“\\7¶©UCé]»/N\rxπ:ô¡eÁ™í\\„Ñjàüª~ˆAuiºaü$zá∞xG«X\"=ë%¨ªÓ¸ËÍ‹æØ˙4Nß≤≈£LÄ%c~PŸ˚˘ß?˛:º`X»x°˛:Åm∞û≤J8§˝g!…ŸXOŸô!´Ñ‡•\0\\=ÕW´Ü¸eÔºáH‚˝‚ìPo°”Ç=\\3A,ˇ	£rÕl0Eºùú‚$Zºˆg∫∫|åT•h¡uc·@.û\0ñ7ºá˘0zº•4ÊU[ŒÍ«∆Å˘Y’]7O!∑≤ñ¡ï’≠yàfÇ˜%ÉKV	¡K∏TC~qTñAe∏„¸™ëgp=Z7ôÓØÚ;,º™bYÓú¿E„]≥·ª∏Äk≠eb∆Sı¥è¯‡Öº!\\wóKÍ≥°\"MÈ\'$á™+ÏΩhÁÖÔ¨<7kô6-πåßK⁄ì\n\\v6=Ö÷ÕàC6:©Ñ⁄ÅKŒ÷∞î≠ª›∆éı(´]√∞‡¢Y¡≈Ñÿb™Íe‹»È˚X¬y!??\ZGÜlø‹Œjÿ\\?“Ìº°asÄa”… ≥¿·6\'U°£ï∞QY+ã!E≠6b4‡⁄<y@»gdp…Åc∫>i€îã\'ANßa °wy€z&∏‹z∆p≠\ZÎ˙\0\r*#ÄºÄŒH∏«¥ﬁ≠†XR9ùƒ-∏‡-î3YÏb}<7\0!ñyÅpûõmk;K_’awn‡Í—æUXW^9Ââ˘%Ÿ≈ë⁄ÉKN‰Eûò∏ê˛\"ÉÀÈ(!Y5π}Œ	x`$7¬Áºﬁ3©UDû\"¿U%ΩD5//s≤€…PM≠P7O°\n\\9ﬂ4Rû^#ü§©C¢Æˆ‡í[≠°å¿n«„ƒM\Z˜{Ypë”f,z¥\0Ûì‹éïıB\'ò‡ÇÌÂE:\'ÑåwåƒbU–;pAj!ÙbΩ∑\\û§K+µ‘8¸ÆxÃKxD9\nß≈8ùçlÌ¿ÎE5IÛ¡˛à\\≤‰=\\;1˘õá\r∞8]À∏8A ª›!ÈoÚ¶Ñ2≥ôl˝¯XKp…1/™¿ªkdªO©œßÔE,-∞¯∞wí≈Ä±™ÉfÚnÒ∫≥dò	.∏„≈Êë$Ä·˝⁄m\ZniO2∏∞aBjY´\"‰5‘1∂ïßúpÃãÛ«Te·\\v0©Õá1ÄúUFÑG+QÃág˘,ïj†1#˚&A É∫m\'≠BÍœ<‹ˆ3*Õ!µ∞æv- Y%‘%›)e¿•*ˇWù¡Öø£Qâı\Z\'RÌ¨`F0=≤¸îh∏vZ0Ñj†íiçqÀ™°ººâpÂ2∆ıÜbÄUÃ«∏ÓI€ã3CTégv°éü56{®®T{ŸK®Sl+%¿uubx@Y≈8‡ŒZÛÂóJ∆âñ¢…åÖXgp≈Íﬁèyqfpâˇ¢UUË(1\n[?Cr]UB≠¡%ó°∞K^u85Ú≠çl‹(ö“›IV\rÔØ£Â#QQ˘¸d’©ì–2‰æñ∫§;•‘…í÷D^UtüÎªJ∫‘ãHUK7paN≤jhM9J6y…Ã∞ÜY‰ÊD÷åÓv®áæ¸õR‡≤S-úv9;J¥⁄o‚L\r&?bh~€Ö^◊Ü´åU⁄´Ù∫Ù&LYpq*îúgh›akAjŸÈÁ∂vóãg+Ÿ∂IÂ˛‹à¡u%Î;¨{£ÑK^ß9πïô®Ïh®¸vyä∏‚–çów¡´s˙Üµ∫∆¢x∂ª∂e%ù·¨˝BL&‹0Ö*≠† í|Ôj·ÊÈ&∏~P@ygŸp}‘VèﬁI8f¨Îä\ré¨m‡ä∏ôÁûÜV≤\\œ‘£òº{#ïá˝¡ÁDÂæETyjágÄH\0Êèˇ„Á≤˛üh,/≠´≠±Kô∞÷Xs˘ûº˛gá‡ä)\rJŒ1îÌ„sÔdXúHÉ…… ’ëIl7ôﬁæ≤µÙÚÃ.™<≤¶\nl.˜ÈOØ§!~>5¨•ˆñ«‡1à[Tc]A\"˘†πeµ]ûR\\rÀ5kG(ºtπïœ¬UmÉ…1Tˇ∆J,ç°¬Aä>Z7)$ç…¸Ï—ıTYæô*èo§ “•ˆG∏ˆo\"æœøN‡RÖPl;?ΩZoñTàga≠≠⁄K\0Æ8Åªòµ§úƒÈ5[í\"ô‡Ç]${¯¢ıˆ·]îg~!\0 Y∏~óJˆl+U0ƒ9…«⁄.YÁ∆n¶ZDŒ5Û™\ZZ´d\rÆK”{ò`¬œ2¡vÚ´ÇS.k|«\n÷CΩ?L){Îƒ+uﬂ⁄2ç{¿´ ˙ë…Ä+∆≤´§R´Üaı?\Z∆ª^=\r\\õﬂüˆv®bƒ„ˇÁ\'|c0®Zr-\0≈‡:¸›G)coA€‡x• ã™Zg› ˙S\n\\Hk·óh›Õ‘Í«¥àΩÜâéw=⁄>OúÔ|aÈh*ÈVü.LÓ,Äp5Ôg∫î˚3õŸè ¶ˆ¶cæ•C[€™é¯l*¸+K≠ÎyÜÃ˙éNNÈAeì∫ã3ÉAw∂dâÁVÏ^†e|ÀN%¥€òt9l!e¡Bzã◊ó.{\rΩî„ïg¯tÁ|¡–`ÏìÀ&*ÕF%Y?	R˝\rt0g$]»,8.\0ŒcãFPYŒ€Ô⁄QYﬁX1ûÛ´&”µı3Ë‚ôñãJ®:M”Ù ˆØÄÀ/ªKÓ∞™zÈX~Ò^s\r˝»3Ñ4\0ÉHg\n&—°≈£#fx\':Ω|Ç,3aC¿Û¸|Ë¯íqtqÕT∫πqñê∞~rFö®ã5T≈ˇT*°ŒˆVJÄKn™Ùs9CZ&ØπÜ—$π2ò ¸fr+√€©r\0Åﬂ@∂K∑h‘IÄ$⁄¿1T?´Ì%K∑NO)	..?ëÊDP#Yï¥Ê¶ymˇÂ$°¿l~30\0¬™#Óœv¿„eL¯á•\'ﬂ‰\0±ë@’ı¨\Zªpg\rc›º¨3>£√)&i.kÒ§äê*≈û#˛¨W’–Küv01§àWFd∆ñôûÌêjW¥ƒc`õ™`$ Ùz/ùu≠πÑ\049æ©\"›’¡î∑]CI7Ä¬œ∞…¨ªò¨Jzçyπ1\n§Å”é≥&⁄o&6ßç Ñ√∆<O™∫,¨5÷÷∫ﬁ∫µOKpE”É√k:îìKﬁ…y\0FL∑¬Khv É˙ÍáûÀKRE\Z‡≤¥	Ûrr…€ŸYP©“X^6\')Ì•§ü´»u:ô$\0WÑ12Oé\r©ã´ï¢aÆt\";è®ùÌÂµ§üc[∫vo\n¿Â¡	Çäód^ïjh∑sC]ä<ÅuZX]R‚ìhß	∑ót2≥ú≈∞\'#Q\rΩd¡s[<]Œ/¿CåÃãcC•\ZBı≥ÛFí§´:)¿B¨àKvêõËÏêPël0^TBvdË\\IÄÀÖP©ÍŸ-ØP\rÌÏ≠H¿Ö 7ò\Z)\\(jåTz!I#Óá{1∏\0çLvÆl|c¿}›íd›ÏÆhΩÑ‹˜$5\\Ú©)^§óµa®]N`$‡íA ÄÒ!5¨`∞í*Î=R‚BC\0‹ÆT\'pY]Ú^ºÑúëë\nY∏<∫ÂΩî¢X ~ÇK•¶Å·Y˙∏Åç	@ë•Ó!KµDz≠Iø^TB¨C∫K≠\Z.π.ÃÀqrÆ°]÷Ç‡Jwº./Ω	Ÿ˝ûÓR´∆ÄKÓ$ÂEz…ÂˇN	µ5\\»<Ò./Ω‡kä‘™Q‡äDz…e(N9v5\\vS9÷Â•ºÑ•ñŒ-®p≈(ΩºxŸ±·ÆöD∂ãs…Y*^úÍ§si~\0Æxπ˚í∏‚Y¡´Ÿ9u\\^ö–p\\K˜Í·\0\\>ƒΩºdm†Ø°∏‚ô[»q(¿ÂTäÇ\r∆-#Éõœ§ka\0.E÷Üı kïÙr⁄µQÜ∑#w`#˜±.´ÎùÉ∆áz5vLº3„ù6ò{[g{.Ü‘π«`\0Æ8‰∫eÃóÁèIäSÉøLÏ\\’v≠M-ìé|ﬂ»<I”K°g,Ñí\Zß˘ﬂZÎ≠´S:ß9‡ä“5t·p_™rc9Êj’ıÏÇ¨™¨ﬂáóGboï,A◊WéwT9Õ)ïäp˘‡‹í‘{.w$ÌœÓÿ¿%û“À©5Yº•º°NÀﬁŸÉÈ˙äqÅ:Ä+:ı‡⁄ìïÈXÚûàÆµ‚{â—Ã‘.Ñ\rßx∆¿àÀ˜p’ ‚ºCªÉÛ.--òhﬂ‹°∂åIG§tq¡c√±Z⁄±w∞&™É∏$Ô!´ÚBÌÅJéL∏◊™Ç∏Vw8™É„jÔÌ¥C`£·w¢≤≥“π/F\0Æ˙\"ZÌØªk&öå¥wŒœ•~À≠È(Äó»¨l0¸>éÃR„J˜p≈hY;ı23ÅÏúÒpl8µsì…Ôà\0µ]‡N;pAÚ◊t;+\0óK_zkˆòHòùzË∑ÙÚ⁄§”Ôˆnvâ∫˚Áypˆ®JIjRF\0Æ(:F¡n`ÄùX TvﬁC?m/∑Ãàx=◊Œ÷í’A¶_ÚGÖ80“πŸL\0.ÉÀ≤ë=Ü2Ÿy˝Ú:e¢«3`Á!dÔ†Lpˆ»¿™Èå\0\\Äãv}È®0∆≤≥ø¿Ë~ÿ@Nnxïøÿ©É≤wP&ƒXHà¯\'\0óÁCŒ9√\0\0€3µ?Ìù9(å,\ZE\r@…Tæl|ÃÃnΩß›‹õ[ﬂW›∑t¡Âº˜NËe¶6’‰,å\0\\QÇKv-ØÌ¯.\0€7kPÌüùIUI,ôNƒ\00îqXÔÁFø¨û5∞nmö•º\'Nµ¥Œ¥clOZﬂ˛Ì	Ä+\0Wƒ‡bÄmlYõñ¥yõvçÎiµjπ:o(…FÂK«”É¢πQŸ[™˚π—£ë©£≈lüu8wïŒ6WÃ?ØE⁄⁄™∂ô‚Ä+\0W‘‡œlNπ_‘¶|É±vèÔI•≥\n°ÉÛáäÄØä¿¿è=2˛›≠≥mÔ„F«Ú«yz@uc„L:aÄﬂÓ^å\r√:GÃÛœ˚¢:ÿÄ+\0ó\'z±£=∫xäj.PÈòŒî◊‹ê`-ÎP—–ØÈ‡úÃ:ú˝3[2Œñ ….NˆÕ≥]Ÿa}√LÒß{x!<„°!1e¬ΩË>≥bíÎ˜1Î‹0_Ãtx|◊Í\0ªÆ kË≈ëq/‡≤–ÍzÙÚÒØÑÎ˘„`™<√›cª”Rc˜Œ7vÔuΩ>•˝S˚—°πÉM:≤`òhªñ™ÑÒÀÛaûò/Êç˘ﬂ[31\\∑˜ÆÔÓe≈zææq¿O∏™©ÚL.YØgeõ√\0v|¡œT:≠≠Í-1vÒeÜ€=≤≥»‚`*3Ëƒ≤	)E(ïÁÅyÒ<ÒÔæI}Ë‘¢·u˘K!ÌÂÎÂÕO‡zE∆NkwUúŸ¬L◊\nõd˛:î5ê∂g∂°•Õk	⁄6†Ö¯=”QÑû\\>A{¬8è.2˛Õ˝>7Á∂Æ{#1_¸˛÷*©ÚxÛ,™∏uE˘ﬁ^î¿Ä´ Vp∫û_.ådˆÖX6ñévIŸ¸°¥w\\*0§◊2cw_€˘C*ô¸ù¯Ω „3üZ>Q[¬¯é.fé„_mH)Ãge€∫!ÛπºtLu„‘›πTyˇ¶Ì;ÉäÄ+êZ‰Â#…\0{∏v2]Y6ÜéÍ»úü®õ˙¥¸À⁄Ç∂j)~/»êß…\0GÇnÑqÒ81å{E´:bz4ø√ﬂŒÊé•72∞^V<s}g5]ze∂V.yΩ*ü‹å%´â˜\'	ÊÉ-V<º#≠4ò≥¿`Œ’ÌÍ“æ1]ƒÔAßñå•≥+\'iCè\r„^kl7h◊êv‚˜\'sÜ—MK\Zÿ°^Øó˜N‡™…ÔV$vÏg\n√ÿŸœÁç§≤¨isØ∆¥‚´⁄Ç÷u™O˚«v•£û EÁVN¶Û´¶$ç|å„¡∏0>+∆}l^&ù\\4Lÿña-æ9Lë^œ∑|Ä´F∆µˆ|G—^*O\"ÉYÙ\'ı¢ı„Æ4òÑüKfÜ48W0A§+%ö‹ìãÜãq»c€ÿµ!ûˆ=ù2@uu˘X°ÚÜÃÀPá_‹æ’{ÇfÄ+pdDæ+√—a”˝Í‚ØÜMvh|7Z˜u]Zm01?g∂¢”ì_X5YdoƒõúÛ3iÔœÌ©∞us,\rÄ◊UåÂ≤±!`Ãa\'æe;:.\\%}\rvld*al◊ÛÎÁB*∫ΩjﬂU0336hK∑Üt–\0ﬂŸ¸ët©p™Ôtj·qÎs∑ıj\"~	{≠`úT¬æ2‘_/éã@5¿E;Ê}N#\'Ù£ñ?O§›gÓê_ó —°¢áÎ&”’‹a¥∑_3Zﬂˆ\r*lQ€§-]–æ°mË¯Ã~t~…hQ[)ùú7à ¶Ù¶‚Å_ä˚…˜_◊¶¯íNf˝ 2M¨ùd?VƒØ¢∞ØT◊—+®qÊLZ4˝:º†q\0Æt†Ûãﬂß5Y≠Èá1ôTw`6˝Á^C®ÓòbÚ˚˙≠|áßìÏÂ>Íá~¯î∂µÉ÷µ®eÄ î∂v˝Ä∂˜n‰J¯\\°‚˚;‘@;5≠∑˙‹ncäU\rîØ{O*Ë/CwÑº˜?|∑Jln”ßÙõ]\0Æ ÏäX∞.#G“_˙ÁáÅIE£7úı`PüÕçd‹á‚¸ƒŒt¯«f¥Î€z¥•UmQÊ≤R«#ÌÓı1ï¯ÇNMÓN◊ÚÜŸ™{JPmöNßv”ÀÁø˘ˆ.∫.>Íi Ÿ†Q\0l∑óºÄ+ôÑ`„eUÙá∂“≈€O|Ù≈—\r‚|-ß^Ô^\0áÆJn‰vRãSØy—ª$ü^ﬁw£Y[v=ÍuÅ¶çö4ê\0\\qVÒ†≥€©x±Pì©%ØÎÂ’UgmÌŒƒA:D4_h√Tqº*@è” EπÀ…\"z˘Ï°ØÛ∆ÜÖçÀØ5Ç&ÇM4’T…›–—˝”Ôz¨ßÍ∫ä˛°S>º?Ä›øF%’\'óL\ri∞ÒAÒ\"HMH\'‹Ä√ÙL@Å ≠.âÀúM‹)ﬁo<÷çÌ6õŒí-C\'{	/,Ó`ÍòK◊n˝ß÷≥L˙oﬂ.†{èüQ<Ø _JÏè\n2òÃÔÌŒvÆF>æ…wi≈◊•’Ô∂Ì˙˚ãËæ]Jˇ‘mM\\¡Üç⁄çN`K\Z∏†OG‚|àÜ˛±À\n!ô˛Æ}vòT‘wQ1≈˚Ç´<∏\"y\'ó@Z™jºÆù\'~u}œX¨	6∫xI7Äçm∂d:H2m;a“Òª‰ﬂΩ–uëU¥Û‰µ¯Ï˘oéR,nt∂ÿWO`ò€›ê¸ˇ⁄{qƒÔZ§€?v^7Èñ,2#Q6ƒv<^€M^§ì’T@â∫Ñ++å?®Iâg≈˚j>qCÃÔ_Põ,S∫AÛõ_‡É=ü†eƒT±∏ ù\0Ö›:Ω/*—¥ç«(ëú\nqUU@˘ Ÿy“˜uPI7øUIhPêh).ÏqTÙ_;Õßã∑%`œ\nó∏ovïÿx™ÄÚu‰¬-ÒŒ‚Ω.vvõ_“,∂YF<º~≈¢†É√ª	ÂDÕ\'m¢d\\19<™XÏ¨xÄ\r6€Ô∫Ø’\n`æÉ+V50YÄ≤R<c_Æ ªq÷;»†˛%T|’∏,È¿\n#Éo¿?∞◊\"xW[pE´\nÍ(ô∞##Ò4ôó\0ôù”†2˛ûP·ÍîU§∞lÏ5xêΩ\rﬁlÌ¿Ö@∞Ïw3<uîï˙-ﬁK:\\!Æ{Ä‡˝s∫¶m(K	`)•öa´πÕØ+ﬂ¿≈v@%2 ⁄dÖ,\0e%Ï…æÑ√„∏Â¥ª÷¯%5Åe!7/¢ˆWÜﬂÍ†\0œ´	`óê-ˇ-UvÖ“Îï\r©u„Œ}ë\ra•tÙ∆KULÑzò·G÷Ö©\Z‚÷\Z¥JÆT\\®Aâº.‹| û)KMv’ø|tá˙d≠≥›‚%i·L`±w—ã˝kÂtÃ‡í3/Tq(kîÄKµ≈\0SÅ·„Ì÷F0ˆ√´ïRìÉÕ∏ﬁ∏–q¨P›¸õñû¡8É+VÔaF¨≤C5\0Np¥y…&0}<Æ”óoRœπ€Ëw≠¶*ü;≤∞º⁄sXíOœû=£Ó0√uº»N˜Î¬¯“X*p!Ff0$ˇ&\\rLˆï]Æòu\"©∫(~2,Ï¶A9€]ü˘œ=ñVòèo¢≥.%tCòT∞3≠Ä•Ú¿¡Ê‰‹H8∏d©≈¥õå¨\Z¶™›Âß˜Íüg˚≈xØπ˚ØTÅÀ∞ªÚ7Ôãÿ!m≠Zºsu\0R®TÊãL—Êf¯aka`éìÈòõÚvó\\Óì5≥‚{—dè∑òµOÄvóù3√oÄa˘/Ìf¶=∏XìÇπ‚Tçk>#V°\'; \"vS’ÓbÍ4{GBù¶jxı˝m¯íË3N<v`∫x›¿%õ3N¡eÑõ.ƒ\0l›Ô6$¬!%’h—Ó≥âÛ∂õöòBz˝ØN”cäŸπ,›<Én‡íÎ\0≠∂òUz%\\rü[GÜ=7ï	}7 .ﬂÛ§^˘¡¨”∑û¶_Oâ{P¸›Ã•i\r,+/Ü¯\n ÙËà+∏\0˘Å÷f/^U√tX§72W;&˜˙ô—\0Ut≈Œ√˛‹+´(•ìq˝t≈ª≈ecÒfƒ‚»™™T√Tvj»‘9{_BRÖ‡VôÁ_º…öu2auIç\0ñ.ï#Œ…±iRoF,éåHsÂÄ≤=/¥ cìXº˜BBr>∫ƒ◊˚qX!]]ÓnZîˇ:96\"…⁄»à•^+‚Ïv)†úÍ√˚´Kéi•£¬˛B¬o∫∫‹›≤‚Ì¯◊…±IŒaD‡í[¢EÊTØéêT°ÎWê∫uN5ëúÉãc˝6}r¨BbU—6ã1é<ƒtí\\•πµuÛ“öÕ3∏Ä÷t…≤( WˇÄãc√KP˘ˇ[ÌËâeÏ*÷\0\0\0\0IENDÆB`ÇâPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0◊\0\0\0◊\0\0\0â}ƒµ\0\07<IDATx⁄Ì}˜w◊∂¶˛àyÈŒ¸rg÷[3˜æô;Î≠7sÔºˆ≈cccl¿òkõå¡òl¿,¿‰úA$Å@A$ëÉH\"H$\"cí…9Z ˆ‘wƒ.ùÆ>∫ª∫˚t´j≠ΩRw’9uˆwvﬁ\'„yA-Je*üQãÍøÛ:˝ıØ•fÕöQ”¶MÈÌ∑ﬂˇgz„ç7Ë˝˜ﬂkﬁº9µj’äæ˛˙kO‘∂m[˙¸Ûœ≈˜˘~Ôæ˚Æ¯Ó¬ˇÒ{¸ÏÂ~_~˘•˘]ô>˘‰[˙Ù”Oïﬂ±Rã-®uÎ÷‘Æ];œsL4aúXº≥’CjS™Û†e§Ú‡Ô.Æ/”;Ôº#¿fÛã)\0 ˜ﬁ{O‹\0√7n‹X¸‡s˚~Àñ-M‡ª\r6„|ÛÕ7C∆	a∏áLıÎ◊ß?¸Pl6òøé@√&É±bC:ºÄK7j’‰u%†\"ëL—ûÅÁ’©S«îíNœlﬂæ=}ı’WT¸qòdeê\0∏^Hı}\'zÎ≠∑®AÉlÒ~7¿“\0\\Y}^3ôR√O	ÂÖ¿®¸|H	ßœ2∞>¯‡Éêç\0Røì˘96º‹˜«ªQIu¸-—Ô¨¶,%¡U2±∂©\n&ìAXEt\Z$™\Z>ãÔx±Õ¸&å6lêÇ\0Z2%Z∫,#ïÌ¨d0©Ã¨ªœ¿÷Å„É` ]‘2lPoô©Y\0\0ì\r∞tqr§∏æoU•b∑M&s≤#‡qr`0∞\0Bø’??7\nÃám9¸õåçÔœ∆Ê	/p\0Æ“∂QµM	êlÜdpŸ1!ú¨\n∫Ÿd∫π…1ﬁd©∞ê®P[∞KÛp%\\‘¡gpŸ˝ù4ïÄeï\"ò# K§:m@x`õºÄ+4æ´Í Sì&Ml¡≈¿KU`YAˆ—G	ê%Ú›„ôxá\n‡ä#A=`[@ÜÉ «ô vªÆó†r*$ÊîHß{c·¿g\'Ü˙?vb0ú\rà?q âêÆÑœ·;¯.‘“ø˝ÌoaûB¸\r;<PWÁÖ66\'GéüÄf˚fA\0Æ8≈¥ú\\ﬁnÃ¿Ò0=≤*‹2\ZêéƒiD»®∞˛&?ãÛu∞	aèAuKî˝≥ \0óœÑ†b4RÄ≥î¯Ã‡ÖX±Ç\r@„å\nY¢Yô ßì√|„-•Ÿ9oq\0.üm-ØRãÃ¡Q?THvKÀÅVH>ƒÆ µ\0(d†„πÈÆ∫ÂZ∆sﬁ¸~SM=ÃH°◊Réx\Z⁄∏?∆ÅùZNú≠[∑Æß4®H§$$@Ìñ¿ãœ‡≥âHVˆ≤≈s∏™©áZÉ´iÉ◊µÒ™lv«öÁ∆Q%ÿFCúîõ,èb\"ºá©íΩ°-∏ê_Üâ]Yw5«Å\"ÏB´çáÕŸÛ®ır*ûdÇÙ¬ÁUua∏7ûë.™*Ásv˛¸ı\0\\~∏ﬂu™?rS9÷\r`¯¨*ñ6rus¥Ñ\0gıä‚w…Ltˆ;3&í{3tvd§j  ±ì¯´på\0± )T¿â√≤dLeiñJŒ\r-¡µ¯«⁄fOåtÚ™±ç©I¢íTÿAj{%∏ÌTGÏˆ÷\nh0h™æ_Æ◊=5JKpq˘~∫ÿ\nr≠˜ﬁê3>¢ô\'TOnúiŸøµyO*ÇåKStŒúœT¬¯gn4j‘H\0*ñÜ1\0ïwìÌ6nL„D¯ú\nå…™êéµÕÇŒïÀ∫™Ñ∫{	#Uabëún$É¢^Ωz,P˚¢µ…]\0Ræo*Ωw∑Æ“+#∆ø≤6⁄¯ﬁÅµÁ§‡_|!ÓÌDm⁄¥	IPv\ZTUYuM)∆Åe]•óV‡Ç˜Gß“íhÑŸ•>®O7 Ï˝-mõ3ú ¶(i„Ïî;!ì∫u˛∆÷˘!˜∂à’e‡!eã;D…$˜˚Hï<IiË(Ω¥óÒÎº®ú≈)Jº€◊ØWó&ÙÎD«ñM§ Ω9Äê·ﬁ∏\'{„9ÿ~êpênr`∞9NÊ%nÿ^)\0ÆHr	„©jÄ©U˘}™Ù§æø¢¢¨!Q JÁVO•o€\'OÿX™AML[LW€+CGºüÈ2UŸ	$d$]lõ~Ù>unŸåfÓN•9£Ë˛∂9æÄ /z∏}æP7w-C+ß˝L£ˆQ™ú^´≠Ò˛ ≈dıT«K/›‚^∫π‡£-ä¥÷©‹’Nµ¿⁄Ω≠	ûìÀ\'hûhi≈§Å‘≥csS3 7x…8a©ãÉ&q/ù≤62t≥∑¢…ËÊ∫+f\0Æ$∆Ô‰ùw”ÑæT<c†I%F§xº–çM≥ÈPÓZ3yÄÿDÏ6π∏îr∞ÊC‚=Î¶&r»Cßú√åTµ∑8Q;gí´b>H˚¡}«ÙlKè◊O1È…∆i5Xv…∞AZp≠ö5≤Õ‚‡#ò‰£ît\nÙsŒ°NÌÿ2R—ﬁ¬Æäì;\0(ßs´†Œ‡sıﬂyõÆØÆäsk<∏ú@\'\r‘c8l†2[¡&gÜËì‰Ö.ı^⁄ÄÀãΩ∞‡3NMcd‚ﬁ3˙w÷„\rSÈ≈ûÖê¢êrv`”¡„z/]‹ÚZÄã;<Ÿ≈∑∏1•µAåàà’®§÷≥≠≥¿ƒHπ£æQ#uâáâ3⁄\ZºÄÀz÷ñ*h\n`}ˆŸgÁÕŸJ-É^/\0‚]Y;]ÿlêfê`âËgË≈±°C#—ùÛ	˘l+˘¨_˘Ë”h§÷ìM”PƒImD0Ÿéâ.1/-¿•jDÉ¥n[¶:•1Z©82‚G™Cä%€—°Küç]íuΩÏv»\Z*µpO´‘*a‡»à;¡À»ééd§≤âSYö‡2ù^Ç«êd^˙F‡~ôùæ\n÷”-3ÊO¡ïœ^≈Dú9ÿ]„¡≈Œ/;ú{ãK&ŒÂéTBçÏ∞DûÒ≈ÅÓ\Z.ÓÔ%!‘…ﬁB0ôSù:5o¨¿Kò|;,Qj\"∑_´Ò‡Ç·Èµ8“N\r¥f¥#á–\n¨¿K®áñàäú©Q„¡Â5ûãÂ˛ráY˛˘ìﬂSJ≠g€≤&◊@MîœÒjäÉ˚\"CæFÉ9`^è7egÜ\\ä@·ªh¨ió†ÀÙ|◊¸Ä¡5rv4mX?§Q)\';Ÿ”l≥πô\0Wçw≈GRfgóüc1¨˘ÖNéP¿‘zR–PˆÉX$ld¶Êç´Z\'Ä∞¶ÿ<±÷rgbÑd‹jªj<∏ºz\nπñ¿≤K⁄≈ﬂZ~“P	¨¿ﬁ“è~€>GπVÎ&Ùwî^pjy	\"◊¯\r/m‘†b\'≤kˇÃÕbpüÖô]‘ˆVê®´=ﬂù∂NGÊ°…˝:9Ç\ZLê˛‰C\rtp/á†ÆÀI%‚[zíuù†&∂¯¥ë„Z√ˆˆrÜ≤…:z\n°6h–¿s7Y86ÏºÑÅ3C_z∫yF∏∏!©π93Xã©—YÒvûB®àh±Ã˝‹2·!’úºÑÅ3CoßÜºNàO≤\rnG^»5\Z\\*O!Äƒ≠öΩff∞^8úö;5äfá¨<á\"Vi£±†q©∏∏\"¢FKFíSË.H9ª¯ YWsßÜ°Æ´¿Öêã›Ÿe©í¥õTpEr‡ÇõΩeÁÇaw95<Ü.Î˘–ÁrÛ‡ír\nΩv{ä≈ﬁ\n<Ö©„1dpTHfB«&!o–©WG\0.Éê˚Â%a˝ÀÌ¿≈∆k¡»^Åß0ç¿egsAU‰3≈‡MVi=¢aiMoPm¬Æ*æÖ‡£∏Ç2ì‘q«ªÅj!}ÁÜJÇÈR‚ü≤‡≤û#e¨¿\rü^‡íΩ»|Œò5œ0\0W‡≤m„<FÛœÄÅS\'÷≈q.ª¸Q∑≥§¡+∏^ÅÜj$‡¬é√ﬂcgÜ]’±p√ªb¿¿©ÎBÜÜ\\Li\0Y∑c\\ìÓ-tKgapa7ì≥‚4ªF4∏j&∏XrÈrNW“É»nß‹„Öq)ø|ËÉK’õ0\0W˙ÅÀK\0ô{≈ÎråP“¿≈-’‹™ê(∏^≠{Ns±K{\nJ˚SÉ*vŒ)9¡ö¬Y\r∏X-‘!Ø0ÈYÒn±.\0J,\\ÿÌÇÏåÙIÅb[<pÈr∫dR¡≈m’TÒ\n¸yªÀjóSÄ+Ω¿Â%ıIóñjZÄ∫±ÍË ÿYhX‚îS»‡räq‡JMp© Nº‰†‡RÙâ∑∫‰5jdVh™¨x|«1∆Ä+%¡Ö5eûê	1Q8±ú@SAó‘\'möÇ ŸÒ8ãﬁA\0ä£Ôv‡räq‡JMpaMÌCÁÆΩ\0ë*Ñ£KK5m¿≈™!˙e‡Ö·≈Y˚$»Át‡Jop!n©JÅ¬ÀyÖÿ|ë∏k\r„‡≤–•yU^CÄEUÖlw∫	 ∏“ª`“ŒÊ¬Ÿm\0FŒàGù`\0.’–KÚÆ[ÍS\0Æ‘ó] Ÿ≠ÎìN˝\nµó[Á]’°w∏“\\àoF“ıI∑‘\'m¿Â%†å˙ù\0\\È.ƒ-U±.7W<ÛD\0Æ T∂V ‡J?pq¨ΩQ¢ó.©OZÅãUCk@ŸÍ1‰Í„\0\\È.éuE.xõpπ®Ü¯ÿÈ‘,±∏\n9\0WzÇãc]rN©∏tj™%∏X5ƒKUÅ™∫∏“\\™Xó[n°.ßIj.ß2>îAésÈOÈ	.U/\r∑¨xùZ™i	.r√T™!2‰e5!H‹M_p°Uû5÷Â\\:’™5∏∆w\rW\rÒ3R]‰L\r/‡ä§ïıÉ¬	t∑`d]À˛ë.NÌfK¯;ﬂèÖ…pØ[πÉ}9TÆ|psÒo,˜êﬂÉ”;\0a‹÷wÁı˘*p©…n‡?Ëî˙§%∏TßüpäãLv;¶’Kô?‡JV*Ìˆ∑≠ÌÌ˚ÊM:˙cS:=¢uUáﬂ·3¯@+∏,‹œ≤iö„F¬‡¿g˜iËÎ;\0a˛vc0+ëwÃ\r[7U¨À\r\\:u}“\\≤j®ä sºÀK%≤∏ò°ø Åë¡– y~H.ê|O~éıYâ$\'†[O:±+öt;·ü◊)ØP[p±j®j^√™!í6›zh®¿Ö;ªt¨‰á‘bHuõÄç\rÕ+∏p∏º√ÿDô‡nWyíu:™U{p±jàjdªﬁÒ^∫?=Ÿ∫[≤˙•ù◊1&…N=Lñ§rìbÚ\\Ì¿ÂV◊≈ˆòÆ©O⁄ÇÀ-S˙7∫Bπı-‰v÷XL,™RE˚˛c:3∫]û’Àêj#Ë¡öq!Ñﬂ]ù◊œ§Ûæüó	˜ê©§À;Ÿ%ÒÚƒ¡∂ä`÷yîg~6W˘]\\œˆæ@¯=>ãwæ∑„J)∆ tËR≠NÆA∏“\n©LÀ@´Aa-ü:\n^X¸cÌ\0\\ëQZ¡%øP∑@2t}´\Z∆HT`Úõ¨‡¥˛OW7òÿÈ˘Òû?œ99¨E–†¢[œE∂∆∫¨Y\Z0¨∂∏éŸZÉÀÆøÜ\\ﬂ≈=„ÌÄuwŸ”àÖ≈N|+HB*äw,Ißπ^ò⁄ïˆ|ﬂÿçúA µ„XóHN•‘\'≠¡%ßC©TC7w¸ÉU„åE¸ÄJª÷jïRõ«ı§)=ø¢·ﬂ4£Oﬁ©m“ü˛¯ﬂÈ˜øˇ}‘$ﬂKE≠\Zæ%û	*˙≠áﬂ`∫∞z2Ìû3òf\r¯Ü∆ˆjM?¥n‰:ÆwkˇﬂòÊçÔÛΩ∫4´oŒØ|˛O∂™#6;lz∑ráÿ∆∫\"lı\0\\>d C5tÍ∫{bps˙uˆ˜\"é\"/*\0+Ä¸¶?˝À®GãF—ÍÓñ,¶˙u˛]´πÒÜ£TvhX+lÜ*p…Â˛©î˙§∏Óœ´Eß’\n3~ÎΩ°NáB.3∞z±`Ú±≠O∑Œãô˝C;s¡[7˝êFˆÓ@”vßmsGz≤EÃƒ˜≤£UìãÁÇ0ÜwÎ‘aƒ∂ü‘@âXÎ&ı\05¡˙?ˇÖö5|èukOcËF3áÙq◊Å¸)1œ˝Ùö9!s¸ÒõTÎœˇfJ∂+KGVÉ´p|»ô»Úö…Ådˆ\n:ë\\¬ŸßäópΩ¢;Yµh_áZJVﬂÜÍLyŒ÷¿ﬂ˙¥˝Ã5ødŒ–WR‚èæ0í_ÙÏ`!]ÿæîf˝¸=’˛Ûøä1BäE¢2®z¥lBÎ≤FRÂ…¢zQæ5©sÏ⁄‚S1æÆ_|dÇÎYQVÿ±≠™@≤pq*úÈçÏP≈S∏¬n#SÂºµﬂ7µçy·ÖC™!‡Ëv√†éüWÌ†Ü§àòAJ◊–É=ts√¸®ËF·€{Wîm4Ap∑d\r’˛K’N–xÄàœœ\Z“ã*Ol\r”≥Ck´ü[≤äXı|nÆõMvÊF$ÕyêÅ• +¥ÇãKåÏ¿≈\'õÙh˛±‡3û÷\'\0= ©Ú¸T‘πe3ÂY^¯?´nY\Z,fÎOœéU”â]Ù€ÈΩ!Tq·==SJ∑ˆ¨£k€\n|°;W”›[Ë…â‚ÍgùŸGïøî\ZTBïgã©Ú‘vj˚Y„*∞ˆìp±:XVòMïßwV›˜ªxê*Ø≠¶´\'Ë∑_”√£ªËˆæ\ræŒÎﬁ¡-aÔY˘éê˜\\˚ﬂˇ\"∆Y8·{«§]ôÍøÛ∂ôe.Æ„* \Z\"Ó	b~o’hp][À,⁄e)¨ô<¿6Ê≈û\"´«∞ıGuï∆ı≈É;Ë≈ï„@v‹(^OOo˛Jø›ΩIáwl¶ù´Û®d„r*5hÀ≤ìVÂfS¡‚l*\\öCª7–∂µKhÖÒª«è_OÆ^åxsw!=:^,¸…©˝√ü§ó◊OõTyfó∞ëX5t≥Ω r´%ÇêP®‰˚1=øtåûù;Dè ˜–√cª≈XnÌﬂBïœ+Ã1ñÓŸEÖ∆|vlX.ÊÄ9Å÷Ê/0Á∫kM‹\\@˚7.£≠ÀsËÓÂÛ‚˝<8}DÄs\nyóÀåg•Áóè—¿>]ïÎQ:À>71L\'p±‘j’¨QHﬁ(Œ¡[5\Z\\Â˝kôi1Nå‘Ù£˜ï›°©W%÷˙?ˇ;l!a‰W^´fh¸å˝≈Ø\'‡ûû.\0∏[∂«dºäﬂ~£U˘i˚Üe¥kc≠^≤–d<+m]ì/\0∂eÕ:r`?…◊√ÛÂÇ©Ÿ*1H .sÃÔø©$ñƒ!‡2$ü<?+aû◊∑Ø§Î;Vá\0Àú„zÃq9≠Ã[`;«\"x™9b#¬}Ô6lº_À√∆q±tã\\vÙ.U%2k-•9£BxÖ≥q¿[5\Z\\lo©í:eö=∏ª2ôóù\ZVè°j!Û&™√ÖJ∆É\Zxc˜ZztÈL(n^øFWÂÜÌË*ÇÙ*6vˆùÉÓ⁄∫ë¨◊ΩÚR0Hë`]-ØRÈÄ`à∆›Ω;z¿ŒÌµ‘A\0†‚·Ω∞9nX·qéÀQÒñbé≈€BÁ¯‚Èc∫mhwJ6 áÃ—PWÎøı◊∞qè¸ˆsO‡≤6Âuá…`ÂŒ!M∂›ïtpïvˆÆ˚€Ê–GoÖó¢p3H/‡2–∞G‰Öá∫5… tÃxõïÃtÈ‹	ÒªÚ≤√∂å∑«`<Ï˛{ä6ëÍ¿¿‰&”¡6ÇƒyÂx®˝ˇBÉπà[!,TFŸınnÏ¿\0P\rI(œÄVKûcÒ÷’Ùº¢BH≤’KªÃ±ÄˆlWœR˙VÒ:°é\nÌ‡¸>€ç√+∏¨ˆ6gÁ\\Y;›\\‡≠\Z\r.v¡À‡ÇﬁåLq´[~R”◊îùyU9ÜÔæˆg{p1^:LèOÏ6É¨&…l\'H.◊≠◊m¡µ’Pï\\Gïê›u´d=9∂Ω ˘ yÙÓñÆ\r	,#~Â4FLå?èòVòóL}˘à)µ`©.Ä	‡⁄øc=›øsSÃq˝ e.s,†√˚ãmÁàg]ﬂ∂å*ém6«£◊ ·›<ÅKegwoö≤îÖ¡ﬁ\n‘BK=2≈Ì2∑T∂⁄^–Ω≠‡⁄6Ò;˙°uìêÖÄÀ†˚ªñ“É≥G…Ì*»ôMŸì¢≈”á–¢©ÉiXﬂÓ4‰ªÆ!4f`oZ2kÂÕJs∆§ÀŒ€ﬁÔ≈≥\'tª(?ê><V\'`…ƒ\0Éƒsr√?<w‹qékóÃ7Á8g‹¿∞˘Å¶\rÔGÀ≤Üã9Œuô#œÛfë∞£õB¿Öçv£ì‘í¡eµ∑†ΩÄ∂¥™Ê`ÏíØÒj!ÉKvh∞˜ˇ–åŒçÌ ËHﬂFb∑≤ï›‹ÒMÎΩ.,¯ÛÁ…ÀuÁ÷Mö<¥Õ\ZŸõÊç˚ûMÏGÍJv1®+Õ÷ì`»◊ófÔEÎ\nr]Ô˘Ú≈Û0Ùh◊‹Ã“⁄Î‚EÒêF+v˝LƒsÃ6h‹ÄŒ4^Ã±ÕÛ›´9~/Ê∏aeûßw˜≤‚©pÀÀ‡Bö◊ã=Å≈ÕA.d„XX„;˝MÜºÒZ\Z5\\r ø.É«Ôêw∆/˚“Ùû¥ÛˆkÎ∞[$H0;\Z÷/úÒ.¢óoä]÷È∫rÒÂÃK≥G˜∂pB?Z<πø†lŸ„˚R÷Ëæ¥o«fwÜªsI0ºu,H[bÊÛÆ¢ŸT±s5yÎ?ÏÁ«.˙[ø–Àß]fù#\0¬œÿ<Êé˚Åä÷ØrïX\0û…é\Zy~êª≈∏8àåÀ≤‘B2‚_HèbpqÆc~oqÆW//…ú .UG÷4øldO„wxÈ≤j»:∏›·„p˜\nâYc[’	L\0;ËÈÖcTqˇ∂-„=∏èäV/†-Y¥ıÌ(\\Hvm†\'èªK+xœGòU&œ]öp=€:ã&woÓ>øWÙÚﬁUWü:zêvm»ô#~ﬁªu•„_8AONÌ£ÁßãmÁáÇhLcl\nN¿:2HXlìùW\\ +˜I¿Ø∫pÒÔk|ú9`¸2Pö.íY5îì:ÒˇıC´î\\vÕj®t≥Kdz≤%=:ºônÓ\\Iè/üqõ€Ö]¸≈˝\"û&Ô‚VÇC\"“ºB¡†¶“©úüM’N◊9Bí ´∏{ÉbπnÓﬂOw˜¨¶G%Ö¶m•\"∂\'YÂµ+Ô∑K ÂF0;\0è7Zà¨&s˜+P≤Ûµ»-¥+ygè·ı™w4√Ó l⁄¿ÜcNù†8®luj∏QE˘6·¯∏π5_Á7˜nN0ñ	Ü+›D˜˜≠@ıÚv¡ÔöùqCÕ{+FAòKﬁmn07Ä„ﬁ·bnª›º√¬ÜÉwáÃìÖûûÛ‚ƒ6”ﬁ QUøÜûínŒk56QŒ#Öâ¿˝G‰w\";√Çƒ]…©Å™akß&¸uY¸“Oom⁄]Ïí˜ÆEôﬂVgiD\0.[Ô[Ò2%9Ìﬁv[	cÉ„%íRv\n@-⁄ïıì)ù=I/©m7∑hÔY∂f^àJ(¿eSﬁ/Á¬Qeµ∑fváÉã[»ÔÑ+œÉƒ›WtaD®›%ø,±;/í_˙/ì:Saã*pÒÀ˜.V\r£ë^Ò$x¯x\\´GE^ïµ•ÚO∑Ã0%·u‘e~≤óPˆÇ:y¢™x&÷*°.køÊ#T\0ÆWÖí™xªU±3õEtÜä»NçH¿ı∞p¢ÈíG\Zé.å«YP[·úà\\ê\0\0◊Ωï£Ö ≈@YÚ\ZÃo›ú±’õ⁄+/(¬N‡‚*dk¢∂Ï∏¨˘®rÎ<\n&µ©DÊL\r´jù˙ˆíüC_æÒπñÔVW({◊É’„E`ô\Z	≤…f<VA™¶#ÓÎ^4[Äæœ∂W¨Í°ÑÁ≥˚„ÚZj¬Œ93„€ˆmCDÏ”bo±JòÏÃÌ¿%«ªd’ı9–´C‹¥}	èa$íÎ˛ ±!1ØHçø	™©5ø6TƒßÑÏŒ‡NCEº≥yñôwËá}∞8Q„ëã?Ωz\nep\rhﬂ\\Ù2‰œ\\õ◊?§˛OV	ìﬂ“\\7¶©UCé]»/N\rxπ:ô¡eÁ™í\\„Ñjàüª~ˆAuiºaü$zá∞xG«X\"=ë%¨ªÓ¸ËÍ‹æØ˙4Nß≤≈£LÄ%c~PŸ˚˘ß?˛:º`X»x°˛:Åm∞û≤J8§˝g!…ŸXOŸô!´Ñ‡•\0\\=ÕW´Ü¸eÔºáH‚˝‚ìPo°”Ç=\\3A,ˇ	£rÕl0Eºùú‚$Zºˆg∫∫|åT•h¡uc·@.û\0ñ7ºá˘0zº•4ÊU[ŒÍ«∆Å˘Y’]7O!∑≤ñ¡ï’≠yàfÇ˜%ÉKV	¡K∏TC~qTñAe∏„¸™ëgp=Z7ôÓØÚ;,º™bYÓú¿E„]≥·ª∏Äk≠eb∆Sı¥è¯‡Öº!\\wóKÍ≥°\"MÈ\'$á™+ÏΩhÁÖÔ¨<7kô6-πåßK⁄ì\n\\v6=Ö÷ÕàC6:©Ñ⁄ÅKŒ÷∞î≠ª›∆éı(´]√∞‡¢Y¡≈Ñÿb™Íe‹»È˚X¬y!??\ZGÜlø‹Œjÿ\\?“Ìº°asÄa”… ≥¿·6\'U°£ï∞QY+ã!E≠6b4‡⁄<y@»gdp…Åc∫>i€îã\'ANßa °wy€z&∏‹z∆p≠\ZÎ˙\0\r*#ÄºÄŒH∏«¥ﬁ≠†XR9ùƒ-∏‡-î3YÏb}<7\0!ñyÅpûõmk;K_’awn‡Í—æUXW^9Ââ˘%Ÿ≈ë⁄ÉKN‰Eûò∏ê˛\"ÉÀÈ(!Y5π}Œ	x`$7¬Áºﬁ3©UDû\"¿U%ΩD5//s≤€…PM≠P7O°\n\\9ﬂ4Rû^#ü§©C¢Æˆ‡í[≠°å¿n«„ƒM\Z˜{Ypë”f,z¥\0Ûì‹éïıB\'ò‡ÇÌÂE:\'ÑåwåƒbU–;pAj!ÙbΩ∑\\û§K+µ‘8¸ÆxÃKxD9\nß≈8ùçlÌ¿ÎE5IÛ¡˛à\\≤‰=\\;1˘õá\r∞8]À∏8A ª›!ÈoÚ¶Ñ2≥ôl˝¯XKp…1/™¿ªkdªO©œßÔE,-∞¯∞wí≈Ä±™ÉfÚnÒ∫≥dò	.∏„≈Êë$Ä·˝⁄m\ZniO2∏∞aBjY´\"‰5‘1∂ïßúpÃãÛ«Te·\\v0©Õá1ÄúUFÑG+QÃág˘,ïj†1#˚&A É∫m\'≠BÍœ<‹ˆ3*Õ!µ∞æv- Y%‘%›)e¿•*ˇWù¡Öø£Qâı\Z\'RÌ¨`F0=≤¸îh∏vZ0Ñj†íiçqÀ™°ººâpÂ2∆ıÜbÄUÃ«∏ÓI€ã3CTégv°éü56{®®T{ŸK®Sl+%¿uubx@Y≈8‡ŒZÛÂóJ∆âñ¢…åÖXgp≈Íﬁèyqfpâˇ¢UUË(1\n[?Cr]UB≠¡%ó°∞K^u85Ú≠çl‹(ö“›IV\rÔØ£Â#QQ˘¸d’©ì–2‰æñ∫§;•‘…í÷D^UtüÎªJ∫‘ãHUK7paN≤jhM9J6y…Ã∞ÜY‰ÊD÷åÓv®áæ¸õR‡≤S-úv9;J¥⁄o‚L\r&?bh~€Ö^◊Ü´åU⁄´Ù∫Ù&LYpq*îúgh›akAjŸÈÁ∂vóãg+Ÿ∂IÂ˛‹à¡u%Î;¨{£ÑK^ß9πïô®Ïh®¸vyä∏‚–çów¡´s˙Üµ∫∆¢x∂ª∂e%ù·¨˝BL&‹0Ö*≠† í|Ôj·ÊÈ&∏~P@ygŸp}‘VèﬁI8f¨Îä\ré¨m‡ä∏ôÁûÜV≤\\œ‘£òº{#ïá˝¡ÁDÂæETyjágÄH\0Êèˇ„Á≤˛üh,/≠´≠±Kô∞÷Xs˘ûº˛gá‡ä)\rJŒ1îÌ„sÔdXúHÉ…… ’ëIl7ôﬁæ≤µÙÚÃ.™<≤¶\nl.˜ÈOØ§!~>5¨•ˆñ«‡1à[Tc]A\"˘†πeµ]ûR\\rÀ5kG(ºtπïœ¬UmÉ…1Tˇ∆J,ç°¬Aä>Z7)$ç…¸Ï—ıTYæô*èo§ “•ˆG∏ˆo\"æœøN‡RÖPl;?ΩZoñTàga≠≠⁄K\0Æ8Åªòµ§úƒÈ5[í\"ô‡Ç]${¯¢ıˆ·]îg~!\0 Y∏~óJˆl+U0ƒ9…«⁄.YÁ∆n¶ZDŒ5Û™\ZZ´d\rÆK”{ò`¬œ2¡vÚ´ÇS.k|«\n÷CΩ?L){Îƒ+uﬂ⁄2ç{¿´ ˙ë…Ä+∆≤´§R´Üaı?\Z∆ª^=\r\\õﬂüˆv®bƒ„ˇÁ\'|c0®Zr-\0≈‡:¸›G)coA€‡x• ã™Zg› ˙S\n\\Hk·óh›Õ‘Í«¥àΩÜâéw=⁄>OúÔ|aÈh*ÈVü.LÓ,Äp5Ôg∫î˚3õŸè ¶ˆ¶cæ•C[€™é¯l*¸+K≠ÎyÜÃ˙éNNÈAeì∫ã3ÉAw∂dâÁVÏ^†e|ÀN%¥€òt9l!e¡Bzã◊ó.{\rΩî„ïg¯tÁ|¡–`ÏìÀ&*ÕF%Y?	R˝\rt0g$]»,8.\0ŒcãFPYŒ€Ô⁄QYﬁX1ûÛ´&”µı3Ë‚ôñãJ®:M”Ù ˆØÄÀ/ªKÓ∞™zÈX~Ò^s\r˝»3Ñ4\0ÉHg\n&—°≈£#fx\':Ω|Ç,3aC¿Û¸|Ë¯íqtqÕT∫πqñê∞~rFö®ã5T≈ˇT*°ŒˆVJÄKn™Ùs9CZ&ØπÜ—$π2ò ¸fr+√€©r\0Åﬂ@∂K∑h‘IÄ$⁄¿1T?´Ì%K∑NO)	..?ëÊDP#Yï¥Ê¶ymˇÂ$°¿l~30\0¬™#Óœv¿„eL¯á•\'ﬂ‰\0±ë@’ı¨\Zªpg\rc›º¨3>£√)&i.kÒ§äê*≈û#˛¨W’–Küv01§àWFd∆ñôûÌêjW¥ƒc`õ™`$ Ùz/ùu≠πÑ\049æ©\"›’¡î∑]CI7Ä¬œ∞…¨ªò¨Jzçyπ1\n§Å”é≥&⁄o&6ßç Ñ√∆<O™∫,¨5÷÷∫ﬁ∫µOKpE”É√k:îìKﬁ…y\0FL∑¬Khv É˙ÍáûÀKRE\Z‡≤¥	Ûrr…€ŸYP©“X^6\')Ì•§ü´»u:ô$\0WÑ12Oé\r©ã´ï¢aÆt\";è®ùÌÂµ§üc[∫vo\n¿Â¡	Çäód^ïjh∑sC]ä<ÅuZX]R‚ìhß	∑ót2≥ú≈∞\'#Q\rΩd¡s[<]Œ/¿CåÃãcC•\ZBı≥ÛFí§´:)¿B¨àKvêõËÏêPël0^TBvdË\\IÄÀÖP©ÍŸ-ØP\rÌÏ≠H¿Ö 7ò\Z)\\(jåTz!I#Óá{1∏\0çLvÆl|c¿}›íd›ÏÆhΩÑ‹˜$5\\Ú©)^§óµa®]N`$‡íA ÄÒ!5¨`∞í*Î=R‚BC\0‹ÆT\'pY]Ú^ºÑúëë\nY∏<∫ÂΩî¢X ~ÇK•¶Å·Y˙∏Åç	@ë•Ó!KµDz≠Iø^TB¨C∫K≠\Z.π.ÃÀqrÆ°]÷Ç‡Jwº./Ω	Ÿ˝ûÓR´∆ÄKÓ$ÂEz…ÂˇN	µ5\\»<Ò./Ω‡kä‘™Q‡äDz…e(N9v5\\vS9÷Â•ºÑ•ñŒ-®p≈(ΩºxŸ±·ÆöD∂ãs…Y*^úÍ§si~\0Æxπ˚í∏‚Y¡´Ÿ9u\\^ö–p\\K˜Í·\0\\>ƒΩºdm†Ø°∏‚ô[»q(¿ÂTäÇ\r∆-#Éõœ§ka\0.E÷Üı kïÙr⁄µQÜ∑#w`#˜±.´ÎùÉ∆áz5vLº3„ù6ò{[g{.Ü‘π«`\0Æ8‰∫eÃóÁèIäSÉøLÏ\\’v≠M-ìé|ﬂ»<I”K°g,Ñí\Zß˘ﬂZÎ≠´S:ß9‡ä“5t·p_™rc9Êj’ıÏÇ¨™¨ﬂáóGboï,A◊WéwT9Õ)ïäp˘‡‹í‘{.w$ÌœÓÿ¿%û“À©5Yº•º°NÀﬁŸÉÈ˙äqÅ:Ä+:ı‡⁄ìïÈXÚûàÆµ‚{â—Ã‘.Ñ\rßx∆¿àÀ˜p’ ‚ºCªÉÛ.--òhﬂ‹°∂åIG§tq¡c√±Z⁄±w∞&™É∏$Ô!´ÚBÌÅJéL∏◊™Ç∏Vw8™É„jÔÌ¥C`£·w¢≤≥“π/F\0Æ˙\"ZÌØªk&öå¥wŒœ•~À≠È(Äó»¨l0¸>éÃR„J˜p≈hY;ı23ÅÏúÒpl8µsì…Ôà\0µ]‡N;pAÚ◊t;+\0óK_zkˆòHòùzË∑ÙÚ⁄§”Ôˆnvâ∫˚Áypˆ®JIjRF\0Æ(:F¡n`ÄùX TvﬁC?m/∑Ãàx=◊Œ÷í’A¶_ÚGÖ80“πŸL\0.ÉÀ≤ë=Ü2Ÿy˝Ú:e¢«3`Á!dÔ†Lpˆ»¿™Èå\0\\Äãv}È®0∆≤≥ø¿Ë~ÿ@Nnxïøÿ©É≤wP&ƒXHà¯\'\0óÁCŒ9√\0\0€3µ?Ìù9(å,\ZE\r@…Tæl|ÃÃnΩß›‹õ[ﬂW›∑t¡Âº˜NËe¶6’‰,å\0\\QÇKv-ØÌ¯.\0€7kPÌüùIUI,ôNƒ\00îqXÔÁFø¨û5∞nmö•º\'Nµ¥Œ¥clOZﬂ˛Ì	Ä+\0Wƒ‡bÄmlYõñ¥yõvçÎiµjπ:o(…FÂK«”É¢πQŸ[™˚π—£ë©£≈lüu8wïŒ6WÃ?ØE⁄⁄™∂ô‚Ä+\0W‘‡œlNπ_‘¶|É±vèÔI•≥\n°ÉÛáäÄØä¿¿è=2˛›≠≥mÔ„F«Ú«yz@uc„L:aÄﬂÓ^å\r√:GÃÛœ˚¢:ÿÄ+\0ó\'z±£=∫xäj.PÈòŒî◊‹ê`-ÎP—–ØÈ‡úÃ:ú˝3[2Œñ ….NˆÕ≥]Ÿa}√LÒß{x!<„°!1e¬ΩË>≥bíÎ˜1Î‹0_Ãtx|◊Í\0ªÆ kË≈ëq/‡≤–ÍzÙÚÒØÑÎ˘„`™<√›cª”Rc˜Œ7vÔuΩ>•˝S˚—°πÉM:≤`òhªñ™ÑÒÀÛaûò/Êç˘ﬂ[31\\∑˜ÆÔÓe≈zææq¿O∏™©ÚL.YØgeõ√\0v|¡œT:≠≠Í-1vÒeÜ€=≤≥»‚`*3Ëƒ≤	)E(ïÁÅyÒ<ÒÔæI}Ë‘¢·u˘K!ÌÂÎÂÕO‡zE∆NkwUúŸ¬L◊\nõd˛:î5ê∂g∂°•Õk	⁄6†Ö¯=”QÑû\\>A{¬8è.2˛Õ˝>7Á∂Æ{#1_¸˛÷*©ÚxÛ,™∏uE˘ﬁ^î¿Ä´ Vp∫û_.ådˆÖX6ñévIŸ¸°¥w\\*0§◊2cw_€˘C*ô¸ù¯Ω „3üZ>Q[¬¯é.fé„_mH)Ãge€∫!ÛπºtLu„‘›πTyˇ¶Ì;ÉäÄ+êZ‰Â#…\0{∏v2]Y6ÜéÍ»úü®õ˙¥¸À⁄Ç∂j)~/»êß…\0GÇnÑqÒ81å{E´:bz4ø√ﬂŒÊé•72∞^V<s}g5]ze∂V.yΩ*ü‹å%´â˜\'	ÊÉ-V<º#≠4ò≥¿`Œ’ÌÍ“æ1]ƒÔAßñå•≥+\'iCè\r„^kl7h◊êv‚˜\'sÜ—MK\Zÿ°^Øó˜N‡™…ÔV$vÏg\n√ÿŸœÁç§≤¨isØ∆¥‚´⁄Ç÷u™O˚«v•£û EÁVN¶Û´¶$ç|å„¡∏0>+∆}l^&ù\\4Lÿña-æ9Lë^œ∑|Ä´F∆µˆ|G—^*O\"ÉYÙ\'ı¢ı„Æ4òÑüKfÜ48W0A§+%ö‹ìãÜãq»c€ÿµ!ûˆ=ù2@uu˘X°ÚÜÃÀPá_‹æ’{ÇfÄ+pdDæ+√—a”˝Í‚ØÜMvh|7Z˜u]Zm01?g∂¢”ì_X5YdoƒõúÛ3iÔœÌ©∞us,\rÄ◊UåÂ≤±!`Ãa\'æe;:.\\%}\rvld*al◊ÛÎÁB*∫ΩjﬂU0336hK∑Üt–\0ﬂŸ¸ët©p™Ôtj·qÎs∑ıj\"~	{≠`úT¬æ2‘_/éã@5¿E;Ê}N#\'Ù£ñ?O§›gÓê_ó —°¢áÎ&”’‹a¥∑_3Zﬂˆ\r*lQ€§-]–æ°mË¯Ã~t~…hQ[)ùú7à ¶Ù¶‚Å_ä˚…˜_◊¶¯íNf˝ 2M¨ùd?VƒØ¢∞ØT◊—+®qÊLZ4˝:º†q\0Æt†Ûãﬂß5Y≠Èá1ôTw`6˝Á^C®ÓòbÚ˚˙≠|áßìÏÂ>Íá~¯î∂µÉ÷µ®eÄ î∂v˝Ä∂˜n‰J¯\\°‚˚;‘@;5≠∑˙‹ncäU\rîØ{O*Ë/CwÑº˜?|∑Jln”ßÙõ]\0Æ ÏäX∞.#G“_˙ÁáÅIE£7úı`PüÕçd‹á‚¸ƒŒt¯«f¥Î€z¥•UmQÊ≤R«#ÌÓı1ï¯ÇNMÓN◊ÚÜŸ™{JPmöNßv”ÀÁø˘ˆ.∫.>Íi Ÿ†Q\0l∑óºÄ+ôÑ`„eUÙá∂“≈€O|Ù≈—\r‚|-ß^Ô^\0áÆJn‰vRãSØy—ª$ü^ﬁw£Y[v=ÍuÅ¶çö4ê\0\\qVÒ†≥€©x±Pì©%ØÎÂ’UgmÌŒƒA:D4_h√Tqº*@è” EπÀ…\"z˘Ï°ØÛ∆ÜÖçÀØ5Ç&ÇM4’T…›–—˝”Ôz¨ßÍ∫ä˛°S>º?Ä›øF%’\'óL\ri∞ÒAÒ\"HMH\'‹Ä√ÙL@Å ≠.âÀúM‹)ﬁo<÷çÌ6õŒí-C\'{	/,Ó`ÍòK◊n˝ß÷≥L˙oﬂ.†{èüQ<Ø _JÏè\n2òÃÔÌŒvÆF>æ…wi≈◊•’Ô∂Ì˙˚ãËæ]Jˇ‘mM\\¡Üç⁄çN`K\Z∏†OG‚|àÜ˛±À\n!ô˛Æ}vòT‘wQ1≈˚Ç´<∏\"y\'ó@Z™jºÆù\'~u}œX¨	6∫xI7Äçm∂d:H2m;a“Òª‰ﬂΩ–uëU¥Û‰µ¯Ï˘oéR,nt∂ÿWO`ò€›ê¸ˇ⁄{qƒÔZ§€?v^7Èñ,2#Q6ƒv<^€M^§ì’T@â∫Ñ++å?®Iâg≈˚j>qCÃÔ_Põ,S∫AÛõ_‡É=ü†eƒT±∏ ù\0Ö›:Ω/*—¥ç«(ëú\nqUU@˘ Ÿy“˜uPI7øUIhPêh).ÏqTÙ_;Õßã∑%`œ\nó∏ovïÿx™ÄÚu‰¬-ÒŒ‚Ω.vvõ_“,∂YF<º~≈¢†É√ª	ÂDÕ\'m¢d\\19<™XÏ¨xÄ\r6€Ô∫Ø’\n`æÉ+V50YÄ≤R<c_Æ ªq÷;»†˛%T|’∏,È¿\n#Éo¿?∞◊\"xW[pE´\nÍ(ô∞##Ò4ôó\0ôù”†2˛ûP·ÍîU§∞lÏ5xêΩ\rﬁlÌ¿Ö@∞Ïw3<uîï˙-ﬁK:\\!Æ{Ä‡˝s∫¶m(K	`)•öa´πÕØ+ﬂ¿≈v@%2 ⁄dÖ,\0e%Ï…æÑ√„∏Â¥ª÷¯%5Åe!7/¢ˆWÜﬂÍ†\0œ´	`óê-ˇ-UvÖ“Îï\r©u„Œ}ë\ra•tÙ∆KULÑzò·G÷Ö©\Z‚÷\Z¥JÆT\\®Aâº.‹| û)KMv’ø|tá˙d≠≥›‚%i·L`±w—ã˝kÂtÃ‡í3/Tq(kîÄKµ≈\0SÅ·„Ì÷F0ˆ√´ïRìÉÕ∏ﬁ∏–q¨P›¸õñû¡8É+VÔaF¨≤C5\0Np¥y…&0}<Æ”óoRœπ€Ëw≠¶*ü;≤∞º⁄sXíOœû=£Ó0√uº»N˜Î¬¯“X*p!Ff0$ˇ&\\rLˆï]Æòu\"©∫(~2,Ï¶A9€]ü˘œ=ñVòèo¢≥.%tCòT∞3≠Ä•Ú¿¡Ê‰‹H8∏d©≈¥õå¨\Z¶™›Âß˜Íüg˚≈xØπ˚ØTÅÀ∞ªÚ7Ôãÿ!m≠Zºsu\0R®TÊãL—Êf¯aka`éìÈòõÚvó\\Óì5≥‚{—dè∑òµOÄvóù3√oÄa˘/Ìf¶=∏XìÇπ‚Tçk>#V°\'; \"vS’ÓbÍ4{GBù¶jxı˝m¯íË3N<v`∫x›¿%õ3N¡eÑõ.ƒ\0l›Ô6$¬!%’h—Ó≥âÛ∂õöòBz˝ØN”cäŸπ,›<Én‡íÎ\0≠∂òUz%\\rü[GÜ=7ï	}7 .ﬂÛ§^˘¡¨”∑û¶_Oâ{P¸›Ã•i\r,+/Ü¯\n ÙËà+∏\0˘Å÷f/^U√tX§72W;&˜˙ô—\0Ut≈Œ√˛‹+´(•ìq˝t≈ª≈ecÒfƒ‚»™™T√Tvj»‘9{_BRÖ‡VôÁ_º…öu2auIç\0ñ.ï#Œ…±iRoF,éåHsÂÄ≤=/¥ cìXº˜BBr>∫ƒ◊˚qX!]]ÓnZîˇ:96\"…⁄»à•^+‚Ïv)†úÍ√˚´Kéi•£¬˛B¬o∫∫‹›≤‚Ì¯◊…±IŒaD‡í[¢EÊTØéêT°ÎWê∫uN5ëúÉãc˝6}r¨BbU—6ã1é<ƒtí\\•πµuÛ“öÕ3∏Ä÷t…≤( WˇÄãc√KP˘ˇ[ÌËâeÏ*÷\0\0\0\0IENDÆB`Ç'),(53,'almacen1','Alma','Zen','202cb962ac59075b964b07152d234b70',''),(54,'suptest2','suptest2','suptest2','202cb962ac59075b964b07152d234b70',''),(55,'mantest2','mantest2','mantest2','202cb962ac59075b964b07152d234b70',''),(56,'plantest2','plantest2','plantest2','202cb962ac59075b964b07152d234b70',''),(57,'solitest2','solitest2','solitest2','202cb962ac59075b964b07152d234b70',''),(58,'mantenedor1','mantenedor','mantenedor apellido','2dc4e4a6fbeab8a7f828efa9aec7d7ad',''),(59,'serL','ser','led','2dc4e4a6fbeab8a7f828efa9aec7d7ad','');
/*!40000 ALTER TABLE `sisusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_reparacion`
--

DROP TABLE IF EXISTS `solicitud_reparacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud_reparacion` (
  `id_solicitud` int(100) NOT NULL AUTO_INCREMENT,
  `numero` int(100) DEFAULT NULL,
  `id_tipo` int(10) DEFAULT NULL,
  `nivel` int(10) DEFAULT NULL,
  `solicitante` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `f_solicitado` datetime NOT NULL,
  `f_sugerido` date NOT NULL,
  `hora_sug` time NOT NULL,
  `id_equipo` int(10) NOT NULL,
  `correctivo` int(10) DEFAULT NULL,
  `causa` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET latin1 NOT NULL,
  `usrId` int(11) NOT NULL,
  `fecha_conformidad` date NOT NULL,
  `observ_conformidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `foto1` blob,
  `foto2` blob,
  `foto3` blob,
  `foto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `urgente` tinyint(1) DEFAULT NULL,
  `sol_adjunto` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_equipo` (`id_equipo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_reparacion`
--

LOCK TABLES `solicitud_reparacion` WRITE;
/*!40000 ALTER TABLE `solicitud_reparacion` DISABLE KEYS */;
INSERT INTO `solicitud_reparacion` VALUES (1,NULL,NULL,NULL,'solitest1','2020-04-29 12:00:19','0000-00-00','00:00:00',19,NULL,'Solicitud urgente',NULL,'CE',4,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,8101,1,NULL),(2,NULL,NULL,NULL,'mantest1','2020-04-29 23:04:41','0000-00-00','00:00:00',3,NULL,'s.s',NULL,'T',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,8112,1,NULL),(3,NULL,NULL,NULL,'suptest1','2020-05-06 11:20:15','0000-00-00','00:00:00',19,NULL,'Probando s.s 06/05',NULL,'AS',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,8130,1,NULL),(4,NULL,NULL,NULL,'solitest1','2020-05-07 21:39:15','0000-00-00','00:00:00',22,NULL,'sin fallas',NULL,'AS',4,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,8156,1,NULL),(5,NULL,NULL,NULL,'suptest1','2020-05-26 21:50:33','0000-00-00','00:00:00',10,NULL,'prueba con mati',NULL,'AS',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10006,1,NULL),(6,NULL,NULL,NULL,'suptest1','2020-08-07 17:06:21','0000-00-00','00:00:00',1,NULL,'falla loca',NULL,'T',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10140,1,NULL),(7,NULL,NULL,NULL,'mantest1','2020-08-10 10:55:05','0000-00-00','00:00:00',15,NULL,'prueba para sim entrega de materiales',NULL,'AS',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10142,1,NULL),(8,NULL,NULL,NULL,'suptest1','2020-08-10 14:06:11','0000-00-00','00:00:00',16,NULL,'prueba con brave',NULL,'PL',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10148,1,NULL),(9,NULL,NULL,NULL,'suptest1','2020-08-10 14:15:31','0000-00-00','00:00:00',1,NULL,'otra prueba con brave',NULL,'AS',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10149,1,NULL),(10,NULL,NULL,NULL,'suptest1','2020-08-10 14:21:33','0000-00-00','00:00:00',1,NULL,'tercera falla brave',NULL,'AS',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10151,1,NULL),(11,NULL,NULL,NULL,'suptest1','2020-08-11 13:14:07','0000-00-00','00:00:00',1,NULL,'sedede',NULL,'AS',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10163,1,NULL),(12,NULL,NULL,NULL,'suptest1','2020-08-31 15:24:05','0000-00-00','00:00:00',13,NULL,'',NULL,'CN',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10170,1,NULL),(13,NULL,NULL,NULL,'solitest1','2020-08-31 18:50:17','0000-00-00','00:00:00',1,NULL,'pierde aceite',NULL,'CN',4,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10172,1,NULL),(20,NULL,NULL,NULL,'solitest1','2020-09-01 12:21:21','0000-00-00','00:00:00',1,NULL,'falla septiembre',NULL,'S',4,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10174,NULL,NULL),(21,NULL,NULL,NULL,'solitest1','2020-09-01 12:38:02','0000-00-00','00:00:00',1,NULL,'prueba1',NULL,'CN',4,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10175,1,NULL),(22,NULL,NULL,NULL,'solitest1','2020-09-01 12:39:43','0000-00-00','00:00:00',18,NULL,'prueba2',NULL,'S',4,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,10176,0,NULL),(23,NULL,NULL,NULL,'suptest1','2020-09-28 10:27:53','0000-00-00','00:00:00',1,NULL,'probando los comentarios',NULL,'S',2,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6,11074,1,'assets/filesSS/23_6_2020-09-28-10-27-54.png');
/*!40000 ALTER TABLE `solicitud_reparacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `dire` varchar(3000) NOT NULL,
  `telefono` varchar(3000) NOT NULL,
  `zonas` varchar(3000) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `descripc` varchar(3000) NOT NULL,
  `estado` varchar(4) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'SSSSS','3333','SSSS',0,'SUCURSAL1','AC',6),(2,'aaaaa','aaaaa','aaaa',0,'aaaa','AN',6);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas` (
  `id_tarea` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `form_asoc` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
INSERT INTO `tareas` VALUES (1,'Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)','AC',6,NULL,1),(2,'Limpie las Mangueras y las Conexiones del Radiador.','AC',6,NULL,1),(3,'Cambie Liquido de Refrigerante de Motor (Revise la Mezcla Anticongelante antes de la Epoca Invernal).','AC',6,NULL,1),(4,'Revise la Bomba de Agua','AC',6,NULL,1),(5,'Compruebe el Intercooler y las Mangueras de Conexion.','AC',6,NULL,1),(6,'Drene la Valvula de Purga de Agua del Deposito de Combustible','AC',6,NULL,1),(7,'Cambie el Filtro de Combustible del Motor','AC',6,NULL,1),(8,'Cambie el Respiradero del Deposito de Combustible.','AC',6,NULL,1),(9,'Limpie el Cuerpo del Radiador.','AC',6,NULL,1),(10,'Lubricar Todos los Puntos de Engrase de la Corredera ','AC',6,NULL,1),(11,'Compruebe la Holgura del Carro del Martillo Perforador y el Carril de la Corredera.','AC',6,NULL,1),(12,'Compruebe el Estado de las Mordazas del Centralizador del Retenedor.','AC',6,NULL,1),(13,'Compruebe el Aceite del Engranaje de la Corredera.','AC',6,NULL,1),(14,'Cambie el Aceite del Engranaje de la Corredera.','AC',6,NULL,1),(15,'Cambie los Filtros del Motor','AC',6,NULL,1),(16,'Lubrique los 13 Puntos de Engrase Segun Diagrama.','AC',6,NULL,1),(17,'Compruebe las Soldaduras del Brazo y de la Cuna.','AC',6,NULL,1),(18,'Compruebe los Soportes de los Cilindros ','AC',6,NULL,1),(19,'Apriete los Tornillos de los Pasadores de Expansi√≥n de los Cilindros.','AC',6,NULL,1),(20,'Revisar Apriete de las Varillas Tirantes. ','AC',6,NULL,1),(21,'Revisar Presion y Estado de Valvulas y Tapones de Llenado de Acumulacion.','AC',6,NULL,1),(22,'Revisar Apriete de los Tornillos del Acumulador, Motor de Rotaci√≥n y Tapa Trasera.','AC',6,NULL,1),(23,'Engrase los Ejes de Oscilaci√≥n y Pasadores del Cilindro de Oscilaci√≥n.','AC',6,NULL,1),(24,'Compruebe el Estado y la Sujeccion del Cable del Cabrestante.','AC',6,NULL,1),(25,'Compruebe que no Existen Roturas en las Costuras de Soldadura.','AC',6,NULL,1),(26,'Compruebe el Electrolito y las Conexiones de las Baterias.','AC',6,NULL,1),(27,'Inspecci√≥n: Revisar Desgaste de Correa de Distribuci√≥n (de ser necesario cambiar). ','AC',6,NULL,1),(28,'Regular Luz de V√°lvula de Motor (cada 2000hs segun horometro).','AC',6,NULL,1),(29,'Probar la Capacidad de Retenci√≥n del Freno de Servicio y del Freno de Estacionamiento (procedimiento CAT SMCS - 4251-081; 4267-081).','AC',6,NULL,1),(30,'Inspecci√≥n: Revisar Anclaje , Desgaste y Fecha de Instalacion del Cintur√≥n de Seguridad (de ser necesario cambie el cintur√≥n de seguridad con mas de tres a√±os o por excesivo desgaste). ','AC',6,NULL,1),(31,'Inspeccion: Revisar Nivel del Liquido Limpiaparabrisas (de ser necesario rellenar).','AC',6,NULL,1),(32,'Lubricar Articulaci√≥n de Cuchar√≥n y Cojinete del Cilindro Cargador (utilizar grasa EP68). ','AC',6,NULL,1),(33,'Inspeccion: Revisar Desgaste en Cuchillas, Cantoneras y Planchas de Desgaste Inferiores (controlar par de apriete en bulones, de ser necesario cambiar).','AC',6,NULL,1),(34,'Lubricar Cojinete del Pivote Inferior y Superior del Cucharon (limpie todas las conexiones de engrase antes de lubricar, utilizar grasa EP68 ).','AC',6,NULL,1),(35,'Inspecci√≥n: Revisar Desgaste en Puntas del Cucharon (de ser necesario, programar cambiarlo).','AC',6,NULL,1),(36,'Cambiar Aceite de Transmisi√≥n (cada 1000hs seg√∫n horometro, utilizar el aceite SAE10W). ','AC',6,NULL,1),(37,'Inspecci√≥n: Nivel de Aceite de Transmisi√≥n. ','AC',6,NULL,1),(38,'Cambiar Aceite Hidr√°ulico (cada 500hs segun horometro, utilizar aceite hidr√°ulico 68).. ','AC',6,NULL,1),(39,'Inspecci√≥n: Nivel de Aceite Hidr√°ulico.','AC',6,NULL,1),(40,'Lubricar Estrias de la Columna de Direcci√≥n (tener en cuenta 8 puntos de engrase).','AC',6,NULL,1),(41,'Lubricar Rodamiento de la Columna de Direcci√≥n (utilizar la grasa EP68).','AC',6,NULL,1),(42,'Inspecci√≥n: Revisar Corrosion en Terminales y Desgaste o Da√±o en los Cables (de ser necesario, limpiar bornes de bateria y/o cambiar cables).','AC',6,NULL,1),(43,'Lubricar Cojinetes Superior e Inferior de Articulaci√≥n (limpie todas las conexiones de engrase antes de lubricar, utilizar grasa EP68).','AC',6,NULL,1),(44,'Limpiar Equipo (utilice aire comprimido).','AC',6,NULL,1),(45,'Cambiar Filtro de Aceite de Motor (1R-1808 ITEM 57874).','AC',6,NULL,1),(46,'Cambiar Aceite de Motor (cada 250 hs seg√∫n horometro, utilizar aceite 15W40).','AC',6,NULL,1),(47,'Limpiar Tanque de Combustible.','AC',6,NULL,1),(48,'Inspecci√≥n: Revisar Desgaste de Correa de Distribuci√≥n (de ser necesario cambiar).','AC',6,NULL,1),(49,'Cambiar Filtro de Aire Primario 245-3818 Item 57871 (cada 250 hs seg√∫n horometro).','AC',6,NULL,1),(50,'Cambiar Filtro De Aire Secundario  245-3819 Item 57872 (cada 250 hs seg√∫n horometro).','AC',6,NULL,1),(51,'Cambiar Filtro Separador De Agua Del Sistema De Combustible (cada 250 hs seg√∫n horometro).','AC',6,NULL,1),(52,'Inspecci√≥n: Revisar Holgura De La V√°lvula (cada 1000 hs seg√∫n hor√≥metro. la holgura debe ser de 0,508 mm).','AC',6,NULL,1),(53,'Limpiar Respiradero Del Carter (utilice disolvente liquido no inflamable).','AC',6,NULL,1),(54,'Limpiar V√°lvula de Alivio de Tanque Hidr√°ulico (utilice disolvente liquido no inflamable).','AC',6,NULL,1),(55,'Limpiar Rejilla de Aceite de Direcci√≥n Piloto (utilice disolvente liquido no inflamable).','AC',6,NULL,1),(56,'Lubricar Cojinetes (V√°stago y Cabezal) del Cilindro de Direcci√≥n (limpie todas las conexiones de engrase antes de lubricar. utilizar grasa EP68).','AC',6,NULL,1),(57,'Inspecci√≥n: Revisar Holgura De La V√°lvula (cada 1000 hs seg√∫n hor√≥metro. la holgura debe ser de 0,254 mm).','AC',6,NULL,1),(58,'Inspecci√≥n Visual: Nivel de Aceite de Transmisi√≥n (cuando se requiera).','AC',6,NULL,1),(59,'Cambiar Filtro de Aceite de Transmisi√≥n (cada 500 hs seg√∫n horometro).','AC',6,NULL,1),(60,'Limpieza Respiradero (remover barro y suciedad. lavar con l√≠quido limpiador. cada 1000 hs seg√∫n horometro).','AC',6,NULL,1),(61,'Inspecci√≥n Visual: Nivel de Aceite del Eje de Mando Delantero.','AC',6,NULL,1),(62,'Lubricar Eje de Mando Delantero (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite. ver tabla de aceites. capacidad 16 litros).','AC',6,NULL,1),(63,'Inspecci√≥n Visual: Nivel de Aceite del Eje de Mando Trasero (Tomar lectura de nivel con varilla de medici√≥n).','AC',6,NULL,1),(64,'Lubricar Eje de Mando Trasero (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite. ver tabla de aceites capacidad 16 litros).','AC',6,NULL,1),(65,'Cambiar Aceite de Diferencial Delantero y Trasero (cada 1000 hs seg√∫n horometro √∫tilizar aceite sae50).','AC',6,NULL,1),(66,'Limpiar Filtro Acondicionador de Aire (utilizar aire comprimido seco, en caso de da√±os, cambiar. realizar cada 100 hs seg√∫n hor√≥metro).','AC',6,NULL,1),(67,'Cambiar Filtro Acondicionador de Aire (realizar cada 2000 hs seg√∫n hor√≥metro).','AC',6,NULL,1),(68,'Inspecci√≥n: Nivel de Aceite Hidr√°ulico (controlar el nivel por medio del medidor visual. revisar cada 100 hs seg√∫n hor√≥metro).','AC',6,NULL,1),(69,'Cambiar Aceite Hidr√°ulico (cada 2000 hs seg√∫n hor√≥metro. utilizar aceite SAE 10w. capacidad 63 litros).','AC',6,NULL,1),(70,'Revisar Presi√≥n de Inflado (revisar cada 50 hs seg√∫n hor√≥metro. la presi√≥n de inflado debe ser entre 2,5kg/cm2  a 3,5 kg/cm2).','AC',6,NULL,1),(71,'Inspecci√≥n Visual: Revisar Estado General de los Neum√°ticos (controlar que no tengan ning√∫n tipo de da√±os. revisar cada 50 hs seg√∫n hor√≥metro).','AC',6,NULL,1),(72,'Revisar el Apriete de los Tornllos de los Cubos de las Ruedas (revisar cada 250 hs. seg√∫n hor√≥metro. la tensi√≥n de apriete  es de 94,5 +/- 10,5 kgm).','AC',6,NULL,1),(73,'Cambiar Aceite de Mandos Finales (cada 1000 hs seg√∫n horometro utilizar aceite SAE 50).','AC',6,NULL,1),(74,'Limpiar el Equipo (utilice aire comprimido).','AC',6,NULL,1),(75,'Inspecci√≥n: Comprobar Funcionamiento de Alarma de Retroceso (con el equipo en contacto, active el freno de servicio y coloque marcha en retroceso).','AC',6,NULL,1),(76,'Inspecci√≥n: Revisar Presencia de Fisuras y Bulones Flojos o Da√±ados.','AC',6,NULL,1),(77,'Inspecci√≥n: Comprobar Funcionamiento de las Luces.','AC',6,NULL,1),(78,'Cambiar Aceite de Motor (utilizar aceite 15W40).','AC',6,NULL,1),(80,'Inspecci√≥n Visual: Controlar P√©rdida y Nivel de Aceite Motor (de ser necesario nivelar con aceite 15W40).','AC',6,NULL,1),(81,'Inspecci√≥n Visual: Controlar Soportes del Motor.','AC',6,NULL,1),(82,'Inspecci√≥n Visual: Controlar la Tensi√≥n de la Cadena.','AC',6,NULL,1),(83,'Presi√≥n Seg√∫n Fabricante.','AC',6,NULL,1),(84,'Inspecci√≥n Visual de los Neum√°ticos (control del dibujo de los neum√°ticos).','AC',6,NULL,1),(85,'Cambiar Filtro de Aceite de Motor ITEM. 51488.','AC',6,NULL,1),(86,'Inspecci√≥n Visual: Controlar la Tensi√≥n de la Correa (utilice medidor de tensi√≥n de correa).','AC',6,NULL,1),(87,'Cambiar Filtro de  Aire (primario ITEM 51518).','AC',6,NULL,1),(88,'Cambiar Filtro Separador de Agua del Sistema de Combustible.','AC',6,NULL,1),(89,'Inspecci√≥n Visual: Controlar Soportes del Motor.','AN',6,NULL,1),(90,'Probar la Capacidad de Retenci√≥n del Freno de Servicio y del Freno de Estacionamiento.','AC',6,NULL,1),(91,'Inspecci√≥n Visual: Controlar P√©rdida y Nivel de Agua del Radiador.','AC',6,NULL,1),(92,'Cambiar Cartucho Filtro de Aire.','AC',6,NULL,1),(93,'Inspecci√≥n: Revisar Corrosi√≥n en Terminales y Desgaste o Da√±o en los Cables (de ser necesario, limpiar bornes de bateria y/o cambiar cables).','AC',6,NULL,1),(94,'Inspecci√≥n: Comprobar Funcionamiento de la Bocina.','AC',6,NULL,1),(95,'Lubricar Movimiento (utilizar grasa EP 62).','AC',6,NULL,1),(96,'Inspeccion Visual: Controlar el Nivel de Aceite del Convertidor.','AC',6,NULL,1),(97,'Inspecci√≥n Visual: Controlar Manguera.','AC',6,NULL,1),(98,'Limpie el Filtro de Admisi√≥n de Aire (se puede limpiar como m√°ximo 6 veces, luego cambiar).','AC',6,NULL,1),(99,'Cambie el Filtro de Admisi√≥n de Aire (ITEM. 51549).','AC',6,NULL,1),(100,'Cambie el Cartucho de Filtro de Aire.','AC',6,NULL,1),(101,'Compruebe Juego y Desgaste en Patas de Motor.','AC',6,NULL,1),(102,'Compruebe el Amortiguador de Vibraciones del Cig√ºe√±al.','AC',6,NULL,1),(103,'Revise las Tuberias y Conexiones de la Admisi√≥n de Aire.','AC',6,NULL,1),(104,'Cambie el Aceite de Motor (aceite 15W40).','AC',6,NULL,1),(105,'Cambie los Filtros de Aceite (ITEM. 58108).','AC',6,NULL,1),(106,'Sustituya el Elemento del Respiradero del Carter de Motor.','AC',6,NULL,1),(107,'Compruebe las Boquillas del Inyector.','AC',6,NULL,1),(108,'Revise el Sensor de Temperatura.','AC',6,NULL,1),(109,'Compruebe la Holgura de la Cuna.','AC',6,NULL,1),(111,'TEST','AN',6,NULL,1),(112,'Orden y Limpieza','AC',7,NULL,1),(113,'Cambio de Vidrios ','AC',7,NULL,1),(114,'Cambio Asiento  ','AN',7,NULL,1),(115,'Reemplazo de butaca','AC',7,NULL,1),(116,'Regulaci√≥n de cerradura ','AC',7,NULL,1),(117,'Cambio de Cerradura ','AC',7,NULL,1),(118,'Cambio de Man√≥metros ','AC',7,NULL,1),(119,'Reemplazo de motores de Rotaci√≥n de Cabezal ','AC',7,NULL,1),(120,'Reemplazo de cabezal','AC',7,NULL,1),(121,'Regulaci√≥n El√©ctrica de Joysticks ','AC',7,NULL,1),(122,'Regulaci√≥n Mec√°nica de Joysticks','AC',7,NULL,1),(123,'Cambio de TIM','AC',7,NULL,1),(124,'Calibraci√≥n de TIM ','AC',7,NULL,1),(125,'Reparaci√≥n de Calefacci√≥n ','AC',7,NULL,1),(126,'Limpieza  de Filtro Interior de Cabina ','AC',7,NULL,1),(127,'Cambio de Filtro Exterior de Cabina ','AC',7,NULL,1),(128,'Cambio de Filtro Interior de Cabina','AC',7,NULL,1),(129,'Resellado de Cabina ','AC',7,NULL,1),(130,'Cambio de Burletes de Puerta ','AC',7,NULL,1),(131,'Cambio de Puerta de Acceso ','AC',7,NULL,1),(132,'Cambio de Lampara  Luz de cabina ','AC',7,NULL,1),(133,'Cambio de Interruptores en Cabina ','AC',7,NULL,1),(134,'Cambio de Joysticks ','AC',7,NULL,1),(135,'Carga de Gas de A/C ','AC',7,NULL,1),(136,'Chequeo de Sistema de A/C','AC',7,NULL,1),(137,'Cambio de Compresor de A/C ','AC',7,NULL,1),(138,'Cambio de Equipo A/C de Cabina ','AC',7,NULL,1),(139,'Cambio de Escobillas Limpiaparabrisas ','AC',7,NULL,1),(140,'Cambio de Escalera de Acceso ','AC',7,NULL,1),(141,'Reparaci√≥n de Escalera de Acceso ','AC',7,NULL,1),(142,'Cambio de llave U ','AC',7,NULL,1),(143,'Cambio de Cilindro de Llave U ','AC',7,NULL,1),(144,'Cambio de Goma de Cierre  ','AC',7,NULL,1),(145,'Cambio de Gu√≠as de  Teflon Cabezal ','AC',7,NULL,1),(146,'Regulaci√≥n de Motores de Rotaci√≥n ','AC',7,NULL,1),(147,'Cambio de Sellos Agua-Aire en Cabezal ','AC',7,NULL,1),(148,'Cambio de Retenes de Cabezal ','AC',7,NULL,1),(149,'Cambio de Sensor de RPM  de Cabezal ','AC',7,NULL,1),(150,'Alineaci√≥n de Cabezal ','AC',7,NULL,1),(151,'Regulaci√≥n de Sostenimiento de Cabezal ','AC',7,NULL,1),(152,'Cambio de Luces de Trabajo ','AC',7,NULL,1),(153,'Chequeo de Sistema El√©ctrico ','AC',7,NULL,1),(154,'Cambio de Bomba Principal ','AC',7,NULL,1),(155,'Cambio de Bombas Auxiliares ','AC',7,NULL,1),(156,'Cambio de Retenes de Bomba ','AC',7,NULL,1),(157,'Regulaci√≥n De Bombas ','AC',7,NULL,1),(158,'Cambio de Actuadores de Bomba ','AC',7,NULL,1),(159,'Cambio de Banco de 6 Carretes ','AC',7,NULL,1),(160,'Cambio de Banco de 9 Carretes ','AC',7,NULL,1),(161,'Cambio de V√°lvulas Pulsar ','AC',7,NULL,1),(162,'Resellado de Banco Principales ','AC',7,NULL,1),(163,'Cambio de V√°lvulas Diversoras ','AC',7,NULL,1),(164,'Reparaci√≥n de V√°lvulas Diversoras ','AC',7,NULL,1),(165,'Reparaci√≥n de V√°lvulas de Aceite Caliente ','AC',7,NULL,1),(166,'Reparaci√≥n de V√°lvula DR/PR ','AC',7,NULL,1),(167,'Cambio de V√°lvula Fema ','AC',7,NULL,1),(168,'Cambio de Motor de Traslaci√≥n ','AC',7,NULL,1),(169,'Cambio de Motor Hidr√°ulico ','AC',7,NULL,1),(170,'Regulaci√≥n  RPM de ventilador  de Enfriamiento ','AC',7,NULL,1),(171,'Reparaci√≥n de Fugas Hidr√°ulicas ','AC',7,NULL,1),(172,'Reparaci√≥n de V√°lvulas Contrabalance ','AC',7,NULL,1),(173,' Reparaci√≥n de V√°lvulas de Sostenimiento','AC',7,NULL,1),(174,'Cambio de V√°lvulas de Sostenimiento ','AC',7,NULL,1),(175,'Cambio de Cilindro Hidr√°ulico ','AC',7,NULL,1),(176,'Chequeo  de Sistema Hidr√°ulico ','AC',7,NULL,1),(177,'Cambio de Radiador ','AC',7,NULL,1),(178,'Limpieza de Radiador ','AC',7,NULL,1),(179,'Cambio de Termostato ','AC',7,NULL,1),(180,'Cambio de bomba de Agua ','AC',7,NULL,1),(181,'Reparaci√≥n de Boba de Agua  ','AC',7,NULL,1),(182,'Purgado de Sistema de Iyeccion de Agua ','AC',7,NULL,1),(183,'Reparaci√≥n de V√°lvula Check ','AC',7,NULL,1),(184,'Cambio de V√°lvula Check ','AC',7,NULL,1),(185,'Limpieza de Filtros De Aire ','AC',7,NULL,1),(186,'Cambio de Filtro de Aceite de Motor ','AC',7,NULL,1),(187,'Cambio de Filtro de Aceite Hidr√°ulico ','AC',7,NULL,1),(188,'Cambio de Filtro de Aceite de Compresor ','AC',7,NULL,1),(189,'Cambio de Filtro de Aire ','AC',7,NULL,1),(190,'Cambio de Filtros Colector de Polvo','AC',7,NULL,1),(191,'Limpieza de Filtros Colector de Polvo ','AC',7,NULL,1),(192,'Cambio de Sensores ','AC',7,NULL,1),(193,'Cambio de Arn√©s ','AC',7,NULL,1),(194,'Calibraci√≥n de Sensores ','AC',7,NULL,1),(195,'Chequeo Sistema Neum√°tico ','AC',7,NULL,1),(196,'Cambio de M√≥dulos El√©ctricos  ','AC',7,NULL,1),(197,'Cambio de Fusibles ','AC',7,NULL,1),(198,'Cambio de Bater√≠as ','AC',7,NULL,1),(199,'Cambio de Presoswitchs ','AC',7,NULL,1),(200,'Cambio de Solenoides ','AC',7,NULL,1),(201,'Limpieza de Sensores','AC',7,NULL,1),(202,'Tensado de Cadenas de Tren Rodante ','AC',7,NULL,1),(203,'Cambio de Rolos Superiores Tren Rodante ','AC',7,NULL,1),(204,'Cambio de Rolos Inferiores Tren Rodante','AC',7,NULL,1),(205,'Cambio de Rueda Gu√≠aTren Rodante  ','AC',7,NULL,1),(206,'Cambio de Mando Final ','AC',7,NULL,1),(207,'Tenzado de Cables de Avance ','AC',7,NULL,1),(208,'Tensado de Cables de Holdback ','AC',7,NULL,1),(209,'Cambio de Poleas Cables de Avance ','AC',7,NULL,1),(210,'Cambio de Sprocket de Holdback ','AC',7,NULL,1),(211,'Cambio de Mangueras Hidr√°ulicas ','AC',7,NULL,1),(212,'Cambio de Mangueras Neum√°ticas ','AC',7,NULL,1),(213,'Cambio de Vidrios ','AN',7,NULL,1),(214,'Cambio de Gu√≠as Met√°licas  de Viga ','AC',7,NULL,1),(215,'Cambio de Zapatas de Oruga ','AC',7,NULL,1),(216,'Retorqueo de Zapatas de Orugas ','AC',7,NULL,1),(217,'Recarga de Fluidos ','AC',7,NULL,1),(218,'Cambio de Bater√≠as ','AC',7,NULL,1),(219,'Engrase de Equipo ','AC',7,NULL,1),(220,'Toma de Muestras ','AC',7,NULL,1),(221,'Ejecuci√≥n de BKL ','AC',7,NULL,1),(222,'Inspecci√≥n Perforadora 901 ','AC',7,NULL,1),(223,'Inspecci√≥n Perforadora 903 ','AC',7,NULL,1),(224,'Inspecci√≥n Perforadora 905 ','AC',7,NULL,1),(225,'Inspecci√≥n Perforadora 906 ','AC',7,NULL,1),(226,'Regulaci√≥n de Cmpresor ','AC',7,NULL,1),(227,'Reparaci√≥n de V√°lvula UL-88 ','AC',7,NULL,1),(228,'Regulaci√≥n de Intercambiador de Barras ','AC',7,NULL,1),(229,'Limpieza de Difusor de Grasa de Barras','AC',7,NULL,1),(230,'Limpieza de Mangon de Succi√≥n primario ','AC',7,NULL,1),(231,'test 29-01','AN',7,NULL,1),(232,'ATAREAA','AN',6,NULL,1),(233,'LIMPIE EL CUERPO DEL RADIADOR DE AGUA','AC',8,NULL,1),(234,'LIMPIE LAS MANGUERAS Y LAS CONEXIONES DEL RADIADOR.','AC',8,NULL,1),(235,'REVISE LA BOMBA DE AGUA','AC',8,NULL,1),(236,'COMPRUEBE EL INTERCOOLER  Y LAS MANGUERAS DE CONEXI√ìN.','AC',8,NULL,1),(237,'LIMPIE EL FILTRO DE ADMISI√ìN DE AIRE.','AC',8,NULL,1),(238,'LUBRICAR ARTICULACI√ìN DE CUCHAR√ìN Y COJINETE DEL CILINDRO CARGADOR.','AC',8,NULL,1),(239,'INSPECCI√ìN: REVISAR DESGASTE EN CUCHILLAS, CANTONERAS Y PLANCHAS DE DESGASTE INFERIORES.','AC',8,NULL,1),(240,'LUBRICAR COJINETES DEL PIVOTE SUPERIOR E INFERIOR DEL CUCHAR√ìN.','AC',8,NULL,1),(241,'INSPECCI√ìN: REVISAR DESGASTE EN PUNTAS DEL CUCHAR√ìN.','AC',8,NULL,1),(242,'Inspecci√≥n de matafuegos - Flota Cargu√≠o','AC',6,NULL,0),(243,'Tarea eli','AN',6,NULL,0),(244,'Inspecci√≥n de Personal','AC',6,NULL,1);
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_back`
--

DROP TABLE IF EXISTS `tbl_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_back` (
  `backId` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `id_tarea` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `horash` float DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `back_duracion` int(11) NOT NULL,
  `id_unidad` int(11) DEFAULT NULL,
  `back_canth` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `idcomponenteequipo` int(11) DEFAULT NULL,
  `back_adjunto` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sore_id` int(11) DEFAULT NULL,
  `tarea_opcional` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`backId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_back`
--

LOCK TABLES `tbl_back` WRITE;
/*!40000 ALTER TABLE `tbl_back` DISABLE KEYS */;
INSERT INTO `tbl_back` VALUES (1,18,NULL,'2020-09-01 15:40:53',NULL,'B',0,NULL,0,6,NULL,NULL,22,'prueba2');
/*!40000 ALTER TABLE `tbl_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_backlogherramientas`
--

DROP TABLE IF EXISTS `tbl_backlogherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_backlogherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backId` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_backlogherramientas`
--

LOCK TABLES `tbl_backlogherramientas` WRITE;
/*!40000 ALTER TABLE `tbl_backlogherramientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_backlogherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_backloginsumos`
--

DROP TABLE IF EXISTS `tbl_backloginsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_backloginsumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backId` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_backloginsumos`
--

LOCK TABLES `tbl_backloginsumos` WRITE;
/*!40000 ALTER TABLE `tbl_backloginsumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_backloginsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detanotapedido`
--

DROP TABLE IF EXISTS `tbl_detanotapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detanotapedido` (
  `id_detaNota` int(11) NOT NULL AUTO_INCREMENT,
  `id_notaPedido` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `provid` int(11) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fechaEntregado` date DEFAULT NULL,
  `remito` int(11) DEFAULT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_detaNota`),
  KEY `id_notaPedido` (`id_notaPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detanotapedido`
--

LOCK TABLES `tbl_detanotapedido` WRITE;
/*!40000 ALTER TABLE `tbl_detanotapedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detanotapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detavaledescarga`
--

DROP TABLE IF EXISTS `tbl_detavaledescarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detavaledescarga` (
  `detavaledid` int(11) NOT NULL AUTO_INCREMENT,
  `valedid` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `observa` varchar(255) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`detavaledid`),
  KEY `equipid` (`herrId`) USING BTREE,
  KEY `valedid` (`valedid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detavaledescarga`
--

LOCK TABLES `tbl_detavaledescarga` WRITE;
/*!40000 ALTER TABLE `tbl_detavaledescarga` DISABLE KEYS */;
INSERT INTO `tbl_detavaledescarga` VALUES (1,3,10,NULL,NULL,6),(2,4,57,NULL,NULL,6),(3,5,8,NULL,NULL,6),(4,6,179,NULL,NULL,6),(5,7,43,NULL,NULL,6);
/*!40000 ALTER TABLE `tbl_detavaledescarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detavalesalida`
--

DROP TABLE IF EXISTS `tbl_detavalesalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detavalesalida` (
  `detavid` int(10) NOT NULL AUTO_INCREMENT,
  `valesid` int(11) DEFAULT NULL,
  `herrId` int(10) DEFAULT NULL,
  `observa` text,
  `dest` varchar(255) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`detavid`),
  KEY `equiid` (`herrId`) USING BTREE,
  KEY `valesid` (`valesid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detavalesalida`
--

LOCK TABLES `tbl_detavalesalida` WRITE;
/*!40000 ALTER TABLE `tbl_detavalesalida` DISABLE KEYS */;
INSERT INTO `tbl_detavalesalida` VALUES (1,1,4,NULL,NULL,6),(2,2,4,NULL,NULL,6),(4,4,NULL,NULL,NULL,6),(5,5,4,NULL,NULL,6),(6,6,48,NULL,NULL,6),(7,7,4,NULL,NULL,6),(8,8,18,NULL,NULL,6),(10,10,57,NULL,NULL,6),(11,10,NULL,NULL,NULL,6);
/*!40000 ALTER TABLE `tbl_detavalesalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado`
--

DROP TABLE IF EXISTS `tbl_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado` (
  `estadoid` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`estadoid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado`
--

LOCK TABLES `tbl_estado` WRITE;
/*!40000 ALTER TABLE `tbl_estado` DISABLE KEYS */;
INSERT INTO `tbl_estado` VALUES (1,'ACTIVO','AC'),(2,'TRANSITO','TR'),(3,'REPARACION','RE'),(4,'COMODATO','CO'),(5,'CURSO','C'),(6,'INACTIVO','IN'),(7,'SOLICITADO','S'),(8,'TAREA REALIZADA','RE'),(9,'TERMINADO PARCIAL','TE'),(10,'TERMINADO','T'),(11,'ENTREGADO','E'),(12,'PEDIDO','P'),(13,'ASIGNADO','As'),(14,'ANULADO','AN'),(15,'BORRADOR','B'),(16,'CERRADO','CE'),(17,'PLANIFICADO','PL');
/*!40000 ALTER TABLE `tbl_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estanteria`
--

DROP TABLE IF EXISTS `tbl_estanteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estanteria` (
  `id_estanteria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_estanteria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estanteria`
--

LOCK TABLES `tbl_estanteria` WRITE;
/*!40000 ALTER TABLE `tbl_estanteria` DISABLE KEYS */;
INSERT INTO `tbl_estanteria` VALUES (1,'estanteria 1','1','dd1',6),(2,'estanteria 2','1','dd2',6),(3,'estanteria 3','1','dd3',6),(4,'estanteria 4','1','dd4',6),(5,'estanteria 5','1','d5',6),(6,'Estanter√≠a de prueba 01','12','ESTANTERIA TEST 01',6),(7,'','6','E1 ',7),(8,'','p','000',6),(9,'','','',6),(10,'','','',6);
/*!40000 ALTER TABLE `tbl_estanteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_listarea`
--

DROP TABLE IF EXISTS `tbl_listarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_listarea` (
  `id_listarea` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) NOT NULL,
  `tareadescrip` varchar(5000) COLLATE utf8_spanish_ci NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `info_id` int(11) DEFAULT NULL,
  `id_subtarea` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_listarea`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_listarea`
--

LOCK TABLES `tbl_listarea` WRITE;
/*!40000 ALTER TABLE `tbl_listarea` DISABLE KEYS */;
INSERT INTO `tbl_listarea` VALUES (1,43,'',NULL,NULL,'T',1,1),(2,43,'',NULL,NULL,'T',2,2),(3,43,'',NULL,NULL,'T',3,3),(4,6,'Inspecci√≥n de Personal',NULL,'2019-11-19','T',4,4),(5,6,'Inspecci√≥n de Personal',NULL,'2019-11-19','T',5,4),(6,6,'Inspecci√≥n de Personal',NULL,'2019-11-19','T',6,4),(7,6,'Informe de Calidad del Sector',NULL,'2019-11-19','T',7,5),(8,20,'Inspecci√≥n de Personal',NULL,'2020-01-09','T',8,4),(9,20,'Informe de Calidad del Sector',NULL,'2020-01-09','T',9,5),(10,203,'Inspecci√≥n de Personal',NULL,'2020-01-09','AC',10,4),(11,203,'Informe de Calidad del Sector',NULL,'2020-01-09','AC',11,5);
/*!40000 ALTER TABLE `tbl_listarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lote`
--

DROP TABLE IF EXISTS `tbl_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lote` (
  `loteid` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `lotestado` char(4) DEFAULT NULL,
  `depositoid` int(11) DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`loteid`),
  KEY `depositoid` (`depositoid`),
  KEY `artId` (`artId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lote`
--

LOCK TABLES `tbl_lote` WRITE;
/*!40000 ALTER TABLE `tbl_lote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notapedido`
--

DROP TABLE IF EXISTS `tbl_notapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notapedido` (
  `id_notaPedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_ordTrabajo` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_notaPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notapedido`
--

LOCK TABLES `tbl_notapedido` WRITE;
/*!40000 ALTER TABLE `tbl_notapedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_otadjuntos`
--

DROP TABLE IF EXISTS `tbl_otadjuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_otadjuntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otId` int(11) NOT NULL,
  `ot_adjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_otadjuntos`
--

LOCK TABLES `tbl_otadjuntos` WRITE;
/*!40000 ALTER TABLE `tbl_otadjuntos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_otadjuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_otherramientas`
--

DROP TABLE IF EXISTS `tbl_otherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_otherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otId` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_otherramientas`
--

LOCK TABLES `tbl_otherramientas` WRITE;
/*!40000 ALTER TABLE `tbl_otherramientas` DISABLE KEYS */;
INSERT INTO `tbl_otherramientas` VALUES (1,3,15,1,6),(2,3,8,2,6),(3,3,41,2,6),(4,10,37,2,6),(5,11,86,3,6),(6,12,91,1,6),(7,13,31,2,6),(8,14,177,1,6),(9,17,177,3,6),(10,18,181,2,6),(11,20,179,2,6),(12,28,65,1,6),(13,35,64,2,6),(14,45,55,1,6),(15,46,55,1,6),(16,47,55,1,6),(17,48,55,1,6),(18,49,55,1,6),(19,50,55,1,6),(20,51,55,1,6),(21,52,55,1,6),(22,53,55,1,6),(23,54,55,1,6),(24,55,55,1,6),(25,56,55,1,6),(26,57,55,1,6),(27,58,55,1,6),(28,59,55,1,6),(29,60,55,1,6),(30,61,55,1,6),(31,62,55,1,6),(32,63,55,1,6),(33,64,55,1,6),(34,65,55,1,6),(35,66,55,1,6),(36,67,55,1,6),(37,68,55,1,6),(38,69,55,1,6),(39,70,55,1,6),(40,71,55,1,6),(41,72,55,1,6),(42,73,55,1,6),(43,74,55,1,6),(44,75,55,1,6),(45,76,55,1,6),(46,77,55,1,6),(47,78,55,1,6),(48,79,55,1,6),(49,80,55,1,6),(50,81,55,1,6),(51,82,55,1,6),(52,83,55,1,6),(53,84,55,1,6),(54,85,55,1,6),(55,86,55,1,6),(56,87,55,1,6),(57,88,55,1,6),(58,89,55,1,6),(59,90,55,1,6),(60,91,55,1,6),(61,92,55,1,6),(62,93,55,1,6),(63,94,55,1,6),(64,95,55,1,6),(65,96,55,1,6),(66,97,55,1,6),(67,98,55,1,6),(68,99,55,1,6),(69,100,55,1,6),(70,101,55,1,6),(71,102,55,1,6),(72,103,55,1,6),(73,104,55,1,6),(74,105,55,1,6),(75,106,55,1,6),(76,107,55,1,6),(77,108,55,1,6),(78,109,55,1,6),(79,110,55,1,6),(80,111,55,1,6),(81,112,55,1,6),(82,113,55,1,6),(83,114,55,1,6),(84,115,55,1,6),(85,116,55,1,6),(86,117,55,1,6),(87,118,55,1,6),(88,119,55,1,6),(89,120,55,1,6),(90,121,55,1,6),(91,122,55,1,6),(92,123,55,1,6),(93,124,55,1,6),(94,125,55,1,6),(95,126,55,1,6),(96,127,55,1,6),(97,128,55,1,6),(98,129,55,1,6),(99,130,55,1,6),(100,131,55,1,6),(101,132,55,1,6),(102,133,55,1,6),(103,134,55,1,6),(104,135,55,1,6),(105,136,55,1,6),(106,137,55,1,6),(107,138,55,1,6),(108,139,55,1,6),(109,140,55,1,6),(110,141,55,1,6),(111,142,55,1,6),(112,143,55,1,6),(113,144,55,1,6),(114,145,55,1,6),(115,146,55,1,6),(116,147,55,1,6),(117,148,55,1,6),(118,149,55,1,6),(119,150,55,1,6),(120,151,55,1,6),(121,152,55,1,6),(122,153,55,1,6),(123,154,55,1,6),(124,155,55,1,6),(125,156,55,1,6),(126,157,55,1,6),(127,158,55,1,6),(128,159,55,1,6),(129,160,55,1,6),(130,161,55,1,6),(131,162,55,1,6),(132,163,55,1,6),(133,164,55,1,6),(134,165,55,1,6),(135,166,55,1,6),(136,167,55,1,6),(137,199,8,1,6),(138,200,86,1,6),(139,201,77,1,6),(140,202,86,1,6),(141,203,34,2,6);
/*!40000 ALTER TABLE `tbl_otherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_otinsumos`
--

DROP TABLE IF EXISTS `tbl_otinsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_otinsumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otId` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_otinsumos`
--

LOCK TABLES `tbl_otinsumos` WRITE;
/*!40000 ALTER TABLE `tbl_otinsumos` DISABLE KEYS */;
INSERT INTO `tbl_otinsumos` VALUES (1,2,376,50,6),(2,3,93,4,6),(3,10,141,2,6),(4,11,40,1,6),(5,12,40,2,6),(6,13,145,2,6),(7,15,368,1,6),(8,16,93,1,6),(9,17,145,1,6),(10,18,145,2,6),(11,19,376,1,6),(12,35,93,2,6),(13,45,93,2,6),(14,46,93,2,6),(15,47,93,2,6),(16,48,93,2,6),(17,49,93,2,6),(18,50,93,2,6),(19,51,93,2,6),(20,52,93,2,6),(21,53,93,2,6),(22,54,93,2,6),(23,55,93,2,6),(24,56,93,2,6),(25,57,93,2,6),(26,58,93,2,6),(27,59,93,2,6),(28,60,93,2,6),(29,61,93,2,6),(30,62,93,2,6),(31,63,93,2,6),(32,64,93,2,6),(33,65,93,2,6),(34,66,93,2,6),(35,67,93,2,6),(36,68,93,2,6),(37,69,93,2,6),(38,70,93,2,6),(39,71,93,2,6),(40,72,93,2,6),(41,73,93,2,6),(42,74,93,2,6),(43,75,93,2,6),(44,76,93,2,6),(45,77,93,2,6),(46,78,93,2,6),(47,79,93,2,6),(48,80,93,2,6),(49,81,93,2,6),(50,82,93,2,6),(51,83,93,2,6),(52,84,93,2,6),(53,85,93,2,6),(54,86,93,2,6),(55,87,93,2,6),(56,88,93,2,6),(57,89,93,2,6),(58,90,93,2,6),(59,91,93,2,6),(60,92,93,2,6),(61,93,93,2,6),(62,94,93,2,6),(63,95,93,2,6),(64,96,93,2,6),(65,97,93,2,6),(66,98,93,2,6),(67,99,93,2,6),(68,100,93,2,6),(69,101,93,2,6),(70,102,93,2,6),(71,103,93,2,6),(72,104,93,2,6),(73,105,93,2,6),(74,106,93,2,6),(75,107,93,2,6),(76,108,93,2,6),(77,109,93,2,6),(78,110,93,2,6),(79,111,93,2,6),(80,112,93,2,6),(81,113,93,2,6),(82,114,93,2,6),(83,115,93,2,6),(84,116,93,2,6),(85,117,93,2,6),(86,118,93,2,6),(87,119,93,2,6),(88,120,93,2,6),(89,121,93,2,6),(90,122,93,2,6),(91,123,93,2,6),(92,124,93,2,6),(93,125,93,2,6),(94,126,93,2,6),(95,127,93,2,6),(96,128,93,2,6),(97,129,93,2,6),(98,130,93,2,6),(99,131,93,2,6),(100,132,93,2,6),(101,133,93,2,6),(102,134,93,2,6),(103,135,93,2,6),(104,136,93,2,6),(105,137,93,2,6),(106,138,93,2,6),(107,139,93,2,6),(108,140,93,2,6),(109,141,93,2,6),(110,142,93,2,6),(111,143,93,2,6),(112,144,93,2,6),(113,145,93,2,6),(114,146,93,2,6),(115,147,93,2,6),(116,148,93,2,6),(117,149,93,2,6),(118,150,93,2,6),(119,151,93,2,6),(120,152,93,2,6),(121,153,93,2,6),(122,154,93,2,6),(123,155,93,2,6),(124,156,93,2,6),(125,157,93,2,6),(126,158,93,2,6),(127,159,93,2,6),(128,160,93,2,6),(129,161,93,2,6),(130,162,93,2,6),(131,163,93,2,6),(132,164,93,2,6),(133,165,93,2,6),(134,166,93,2,6),(135,167,93,2,6),(136,203,69,1,6);
/*!40000 ALTER TABLE `tbl_otinsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_predictivoherramientas`
--

DROP TABLE IF EXISTS `tbl_predictivoherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_predictivoherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predId` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_predictivoherramientas`
--

LOCK TABLES `tbl_predictivoherramientas` WRITE;
/*!40000 ALTER TABLE `tbl_predictivoherramientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_predictivoherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_predictivoinsumos`
--

DROP TABLE IF EXISTS `tbl_predictivoinsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_predictivoinsumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predId` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_predictivoinsumos`
--

LOCK TABLES `tbl_predictivoinsumos` WRITE;
/*!40000 ALTER TABLE `tbl_predictivoinsumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_predictivoinsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preventivoherramientas`
--

DROP TABLE IF EXISTS `tbl_preventivoherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preventivoherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prevId` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prevId` (`prevId`) USING BTREE,
  KEY `tbl_preventivoherramientas_ibfk_2` (`herrId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preventivoherramientas`
--

LOCK TABLES `tbl_preventivoherramientas` WRITE;
/*!40000 ALTER TABLE `tbl_preventivoherramientas` DISABLE KEYS */;
INSERT INTO `tbl_preventivoherramientas` VALUES (1,1,15,1,6),(2,1,8,2,6),(3,2,65,1,6),(4,16,43,4,6),(5,17,179,1,6),(6,18,57,1,6),(7,1,41,2,6),(8,5,55,1,6);
/*!40000 ALTER TABLE `tbl_preventivoherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preventivoinsumos`
--

DROP TABLE IF EXISTS `tbl_preventivoinsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preventivoinsumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prevId` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prevId` (`prevId`),
  KEY `artId` (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preventivoinsumos`
--

LOCK TABLES `tbl_preventivoinsumos` WRITE;
/*!40000 ALTER TABLE `tbl_preventivoinsumos` DISABLE KEYS */;
INSERT INTO `tbl_preventivoinsumos` VALUES (1,1,93,4,6),(2,5,93,2,6);
/*!40000 ALTER TABLE `tbl_preventivoinsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipoordentrabajo`
--

DROP TABLE IF EXISTS `tbl_tipoordentrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipoordentrabajo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_orden` int(11) NOT NULL,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipoordentrabajo`
--

LOCK TABLES `tbl_tipoordentrabajo` WRITE;
/*!40000 ALTER TABLE `tbl_tipoordentrabajo` DISABLE KEYS */;
INSERT INTO `tbl_tipoordentrabajo` VALUES (1,1,'Orden de Trabajo'),(2,2,'Solicitud de servicio'),(3,3,'Preventivo'),(4,4,'Backlog'),(5,5,'Predictivo'),(6,6,'Correctivo Programado');
/*!40000 ALTER TABLE `tbl_tipoordentrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_trazacomponente`
--

DROP TABLE IF EXISTS `tbl_trazacomponente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_trazacomponente` (
  `id_trazacomponente` int(11) NOT NULL AUTO_INCREMENT,
  `idcomponenteequipo` int(11) NOT NULL,
  `id_estanteria` int(11) DEFAULT NULL,
  `fila` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `fecha_Entrega` datetime DEFAULT NULL,
  `ult_recibe` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_trazacomponente`),
  KEY `idcomponenteequipo` (`idcomponenteequipo`),
  KEY `id_estanteria` (`id_estanteria`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_trazacomponente`
--

LOCK TABLES `tbl_trazacomponente` WRITE;
/*!40000 ALTER TABLE `tbl_trazacomponente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_trazacomponente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_unidadmedida`
--

DROP TABLE IF EXISTS `tbl_unidadmedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_unidadmedida` (
  `id_unidadmedida` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_unidadmedida`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_unidadmedida`
--

LOCK TABLES `tbl_unidadmedida` WRITE;
/*!40000 ALTER TABLE `tbl_unidadmedida` DISABLE KEYS */;
INSERT INTO `tbl_unidadmedida` VALUES (1,'Unidad','AN',7),(2,'Litro','AC',7),(3,'Metro','AC',7),(4,'Kg','AC',7),(5,'m2','AC',7),(6,'m3','AC',7),(7,'unidad','AC',6),(8,'unidad de medida 2','AC',6),(9,'Unidad','AC',8),(10,'Metro','AC',8),(11,'Litro','AC',8),(12,'pulgadas','AC',6);
/*!40000 ALTER TABLE `tbl_unidadmedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_valedesacarga`
--

DROP TABLE IF EXISTS `tbl_valedesacarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_valedesacarga` (
  `valedid` int(11) NOT NULL AUTO_INCREMENT,
  `valedfecha` datetime DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `respons` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`valedid`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valedesacarga`
--

LOCK TABLES `tbl_valedesacarga` WRITE;
/*!40000 ALTER TABLE `tbl_valedesacarga` DISABLE KEYS */;
INSERT INTO `tbl_valedesacarga` VALUES (1,'2019-07-11 00:00:00',1,'','',6),(2,'2019-07-11 00:00:00',2,'','',6),(3,'2019-07-18 00:00:00',53,'Roberto Andr√©s S√°nchez','',6),(4,'2019-08-14 00:00:00',4,'Eliana Bernaldez','',6),(5,'2019-08-14 00:00:00',4,'Eliana Bernaldez','Deposito 2',6),(6,'2019-08-15 00:00:00',4,'Roberto Andr√©s S√°nchez','OT 30-23',6),(7,'2019-08-15 00:00:00',2,'juan','OT 25 OT 32',6);
/*!40000 ALTER TABLE `tbl_valedesacarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_valesalida`
--

DROP TABLE IF EXISTS `tbl_valesalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_valesalida` (
  `valesid` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `usrId` int(10) DEFAULT NULL,
  `respons` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`valesid`),
  KEY `repid` (`usrId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valesalida`
--

LOCK TABLES `tbl_valesalida` WRITE;
/*!40000 ALTER TABLE `tbl_valesalida` DISABLE KEYS */;
INSERT INTO `tbl_valesalida` VALUES (1,'2020-09-25',1,NULL,NULL,6),(2,'2020-09-25',1,NULL,NULL,6),(4,'2020-09-25',1,NULL,NULL,6),(5,'2020-10-03',1,NULL,NULL,6),(6,'2020-10-03',1,NULL,NULL,6),(7,'2020-10-04',1,NULL,NULL,6),(8,'2020-10-05',1,NULL,NULL,6),(10,'2020-10-05',1,NULL,NULL,6);
/*!40000 ALTER TABLE `tbl_valesalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocuenta`
--

DROP TABLE IF EXISTS `tipocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocuenta` (
  `tipocuentaid` int(11) NOT NULL AUTO_INCREMENT,
  `tipocuentadescrip` varchar(255) DEFAULT NULL,
  `tipocuentamonto` varchar(50) DEFAULT NULL,
  `tipocuentausuarios` varchar(50) DEFAULT NULL,
  `tipocuentaactivos` varchar(50) DEFAULT NULL,
  `tipocuentaempresas` varchar(50) DEFAULT NULL,
  `apps` varchar(2) DEFAULT NULL,
  `modulo_alerta` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`tipocuentaid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocuenta`
--

LOCK TABLES `tipocuenta` WRITE;
/*!40000 ALTER TABLE `tipocuenta` DISABLE KEYS */;
INSERT INTO `tipocuenta` VALUES (1,'GO','0','10','100','1','NO','NO'),(2,'PRO','100','50','1000','3','SI','SI'),(3,'CORPORATE','300','ILIMITADO','ILIMITADO','ILIMITADO','SI','SI');
/*!40000 ALTER TABLE `tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_industrial`
--

DROP TABLE IF EXISTS `unidad_industrial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_industrial` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_industrial`
--

LOCK TABLES `unidad_industrial` WRITE;
/*!40000 ALTER TABLE `unidad_industrial` DISABLE KEYS */;
INSERT INTO `unidad_industrial` VALUES (1,'veladero',6),(2,'nueva unidad insdutrial 2',6),(3,'MINA CHINCHILLAS',7),(4,'La Laja',2),(5,'unidad agregada 1',6),(6,'unidad agregada 2',6),(7,'unidad agregada 3',6),(8,'unidad agregada 4',6),(9,'unidad agregada 5',6),(10,'unidadagregada 6',6),(11,'La laja',6),(12,'CSJ-CIENAGUITA',8);
/*!40000 ALTER TABLE `unidad_industrial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_tiempo`
--

DROP TABLE IF EXISTS `unidad_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_tiempo` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `unidaddescrip` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_tiempo`
--

LOCK TABLES `unidad_tiempo` WRITE;
/*!40000 ALTER TABLE `unidad_tiempo` DISABLE KEYS */;
INSERT INTO `unidad_tiempo` VALUES (1,'minutos'),(2,'horas'),(3,'dias');
/*!40000 ALTER TABLE `unidad_tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioasempresa`
--

DROP TABLE IF EXISTS `usuarioasempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarioasempresa` (
  `empresaid` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo` tinyint(1) NOT NULL,
  `grpId` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`empresaid`,`usrId`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioasempresa`
--

LOCK TABLES `usuarioasempresa` WRITE;
/*!40000 ALTER TABLE `usuarioasempresa` DISABLE KEYS */;
INSERT INTO `usuarioasempresa` VALUES (6,1,'2018-10-25 00:00:00',1,1,'AC'),(6,2,'2019-04-11 14:27:44',1,1,'AC'),(6,3,'2019-04-11 14:40:04',1,7,'AC'),(6,4,'2019-04-11 14:40:36',1,1,'AC'),(6,11,'2018-10-25 00:00:00',0,1,'AC'),(6,17,'2018-09-18 00:00:00',1,1,'AC'),(6,26,'2018-09-18 00:00:00',0,1,'AC'),(6,31,'2018-11-23 00:00:00',1,1,'AC'),(6,49,'2019-01-17 09:22:31',1,1,'AC'),(6,50,'2019-01-30 11:49:00',1,20,'AN'),(6,51,'2019-04-11 10:25:33',1,1,'AC'),(6,53,'2019-06-03 15:46:27',1,1,'AC'),(6,54,'2019-09-18 10:05:32',1,21,'AC'),(6,55,'2019-09-18 10:06:57',1,1,'AC'),(6,56,'2019-09-18 10:09:16',1,7,'AC'),(6,57,'2019-09-18 10:10:13',1,20,'AC'),(6,59,'2020-09-28 16:51:00',1,21,'AC'),(7,1,'2018-09-17 00:00:00',0,1,'AC'),(7,9,'2018-09-17 00:00:00',1,1,'AC'),(7,18,'2018-09-21 00:00:00',1,7,'AC'),(7,20,'2018-09-12 00:00:00',1,1,'AC'),(8,1,'2018-09-12 00:00:00',0,1,'AC'),(8,26,'2018-11-09 00:00:00',1,1,'AC'),(8,28,'2018-11-09 00:00:00',1,1,'AC'),(8,29,'2018-11-09 00:00:00',1,1,'AC'),(8,30,'2018-11-09 00:00:00',1,1,'AC'),(8,31,'2018-11-23 00:00:00',1,13,'AC'),(8,36,'2018-11-23 00:00:00',1,13,'AC'),(8,39,'2018-11-23 00:00:00',1,14,'AC'),(8,41,'2018-11-23 00:00:00',1,13,'AC');
/*!40000 ALTER TABLE `usuarioasempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_tablas`
--

DROP TABLE IF EXISTS `utl_tablas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_tablas` (
  `tabl_id` int(11) NOT NULL AUTO_INCREMENT,
  `tabla` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`tabl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_tablas`
--

LOCK TABLES `utl_tablas` WRITE;
/*!40000 ALTER TABLE `utl_tablas` DISABLE KEYS */;
INSERT INTO `utl_tablas` VALUES (1,'tipos_datos','titulo1',NULL,'2019-08-21 13:50:49',0),(2,'tipos_datos','comentario',NULL,'2019-08-21 13:50:49',0),(3,'tipos_datos','input',NULL,'2019-08-21 13:50:49',0),(4,'tipos_datos','select',NULL,'2019-08-21 13:50:49',0),(5,'tipos_datos','date',NULL,'2019-08-21 13:50:49',0),(6,'tipos_datos','check',NULL,'2019-08-21 13:50:49',0),(7,'tipos_datos','radio',NULL,'2019-08-21 13:50:49',0),(8,'tipos_datos','file',NULL,'2019-08-21 13:50:49',0),(9,'tipos_datos','textarea',NULL,'2019-08-21 13:50:49',0),(10,'provincias','San Juan',NULL,'2019-08-17 15:33:52',0),(11,'provincias','Mendoza',NULL,'2019-08-17 15:33:52',0),(12,'provincias','San Luis',NULL,'2019-08-17 15:33:52',0),(13,'sexos','Hombre',NULL,'2019-08-17 16:28:10',0),(14,'sexos','Mujer',NULL,'2019-08-17 16:28:10',0),(15,'sexos','No Binario',NULL,'2019-08-17 16:28:10',0),(16,'contratos','Acepto los Terminos y Condiciones del Servicio',NULL,'2019-08-17 17:01:22',0),(17,'contratos','Enviar Emails',NULL,'2019-08-17 17:01:22',0),(21,'unidad','KM','Kilometros','2019-04-23 18:25:47',0),(22,'unidad','UN','UNIDAD','2019-05-24 00:56:16',1),(23,'unidad',NULL,'asd','2019-06-04 17:04:45',1),(24,'unidad',NULL,'dfg','2019-06-04 17:05:34',1),(25,'tipos_datos','titulo2',NULL,'2019-09-16 13:07:02',0),(26,'tipos_datos','titulo3',NULL,'2019-09-16 13:07:02',0),(27,'calificacion_sim','1','1 - Muy Insatisfactorio','2019-09-16 13:10:08',0),(28,'calificacion_sim','2','2 - Insatisfactorio','2019-09-16 13:10:08',0),(29,'calificacion_sim','3','3 - Satisfactorio','2019-09-16 13:10:08',0),(30,'calificacion_sim','4','4 - Muy satisfactorio','2019-09-16 13:10:08',0),(31,'calificacion_sim','5','5 - Sobresaliente','2019-09-16 13:10:08',0),(32,'tipos_ajuste_stock','Rotura:SALIDA','Salida por Rotura','2019-11-29 10:59:06',0),(33,'tipos_ajuste_stock','Robo:SALIDA','Salida por Robo','2019-11-29 10:59:06',0),(34,'tipos_ajuste_stock','Devolucion:ENTRADA','Entrada por devolucion','2019-11-29 10:59:06',0),(35,'tipos_ajuste_stock','Fraccionamiento:E/S','Entrada y Salida por Fraccionamiento','2019-11-29 10:59:06',0),(36,'unidad',NULL,'no','2020-04-29 16:13:14',1),(37,'unidad',NULL,'unidad nueva','2020-04-29 16:13:27',1),(38,'unidad',NULL,'Unidades','2020-05-04 14:09:31',0);
/*!40000 ALTER TABLE `utl_tablas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `abmdeposito`
--

/*!50001 DROP TABLE IF EXISTS `abmdeposito`*/;
/*!50001 DROP VIEW IF EXISTS `abmdeposito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `abmdeposito` AS select `alm_depositos`.`depo_id` AS `depositoId`,`alm_depositos`.`descripcion` AS `depositodescrip`,`alm_depositos`.`direccion` AS `direccion`,`alm_depositos`.`GPS` AS `GPS`,`alm_depositos`.`loca_id` AS `id_localidad`,`alm_depositos`.`esta_id` AS `id_provincial`,`alm_depositos`.`pais_id` AS `id_pais`,`alm_depositos`.`empr_id` AS `id_empresa`,if((`alm_depositos`.`eliminado` = 1),'AN','AC') AS `estado` from `alm_depositos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `abmproveedores`
--

/*!50001 DROP TABLE IF EXISTS `abmproveedores`*/;
/*!50001 DROP VIEW IF EXISTS `abmproveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `abmproveedores` AS select `alm_proveedores`.`prov_id` AS `provid`,`alm_proveedores`.`nombre` AS `provnombre`,`alm_proveedores`.`cuit` AS `provcuit`,`alm_proveedores`.`domicilio` AS `provdomicilio`,`alm_proveedores`.`telefono` AS `provtelefono`,`alm_proveedores`.`email` AS `provmail`,`alm_proveedores`.`empr_id` AS `id_empresa`,`alm_proveedores`.`fec_alta` AS `fec_alta`,if((`alm_proveedores`.`eliminado` = 1),'AN','AC') AS `estado` from `alm_proveedores` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `articles`
--

/*!50001 DROP TABLE IF EXISTS `articles`*/;
/*!50001 DROP VIEW IF EXISTS `articles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `articles` AS select `alm_articulos`.`arti_id` AS `artId`,`alm_articulos`.`barcode` AS `artBarCode`,`alm_articulos`.`descripcion` AS `artDescription`,`alm_articulos`.`costo` AS `artCoste`,`alm_articulos`.`es_caja` AS `artIsByBox`,`alm_articulos`.`cantidad_caja` AS `artCantbox`,`alm_articulos`.`punto_pedido` AS `punto_pedido`,if((`alm_articulos`.`eliminado` = 1),'AN','AC') AS `artEstado`,`alm_articulos`.`unidad_id` AS `unidadmedida`,`alm_articulos`.`empr_id` AS `id_empresa` from `alm_articulos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-07  1:12:40
