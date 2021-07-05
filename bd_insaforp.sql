CREATE DATABASE  IF NOT EXISTS `insaforp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `insaforp`;
-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: insaforp
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cat_departamento`
--

LOCK TABLES `cat_departamento` WRITE;
/*!40000 ALTER TABLE `cat_departamento` DISABLE KEYS */;
INSERT INTO `cat_departamento` VALUES (1,'Ahuachapán','SV-AH',1,1,NULL,NULL),(2,'Santa Ana','SV-SA',1,1,NULL,NULL),(3,'Sonsonate','SV-SO',1,1,NULL,NULL),(4,'La Libertad','SV-LI',2,1,NULL,NULL),(5,'Chalatenango','SV-CH',2,1,NULL,NULL),(6,'San Salvador','SV-SS',2,1,NULL,NULL),(7,'Cuscatlán','SV-CU',3,1,NULL,NULL),(8,'La Paz','SV-PA',3,1,NULL,NULL),(9,'Cabañas','SV-CA',3,1,NULL,NULL),(10,'San Vicente','SV-SV',3,1,NULL,NULL),(11,'Usulután','SV-US',4,1,NULL,NULL),(12,'Morazán','SV-MO',4,1,NULL,NULL),(13,'San Miguel','SV-SM',4,1,NULL,NULL),(14,'La Unión','SV-UN',4,1,NULL,NULL);
/*!40000 ALTER TABLE `cat_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_facilitador`
--

LOCK TABLES `cat_facilitador` WRITE;
/*!40000 ALTER TABLE `cat_facilitador` DISABLE KEYS */;
INSERT INTO `cat_facilitador` VALUES (1,'Jairo Alvarado',1,NULL,NULL);
/*!40000 ALTER TABLE `cat_facilitador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_modalidad`
--

LOCK TABLES `cat_modalidad` WRITE;
/*!40000 ALTER TABLE `cat_modalidad` DISABLE KEYS */;
INSERT INTO `cat_modalidad` VALUES (1,'Presencial',1,NULL,NULL);
/*!40000 ALTER TABLE `cat_modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_municipio`
--

LOCK TABLES `cat_municipio` WRITE;
/*!40000 ALTER TABLE `cat_municipio` DISABLE KEYS */;
INSERT INTO `cat_municipio` VALUES (1,'Ahuachapán',1,1,NULL,NULL),(2,'Jujutla',1,1,NULL,NULL),(3,'Atiquizaya',1,1,NULL,NULL),(4,'Concepción de Ataco',1,1,NULL,NULL),(5,'El Refugio',1,1,NULL,NULL),(6,'Guaymango',1,1,NULL,NULL),(7,'Apaneca',1,1,NULL,NULL),(8,'San Francisco Menéndez',1,1,NULL,NULL),(9,'San Lorenzo',1,1,NULL,NULL),(10,'San Pedro Puxtla',1,1,NULL,NULL),(11,'Tacuba',1,1,NULL,NULL),(12,'Turín',1,1,NULL,NULL),(13,'Candelaria de la Frontera',1,2,NULL,NULL),(14,'Chalchuapa',1,2,NULL,NULL),(15,'Coatepeque',1,2,NULL,NULL),(16,'El Congo',1,2,NULL,NULL),(17,'El Porvenir',1,2,NULL,NULL),(18,'Masahuat',1,2,NULL,NULL),(19,'Metapán',1,2,NULL,NULL),(20,'San Antonio Pajonal',1,2,NULL,NULL),(21,'San Sebastián Salitrillo',1,2,NULL,NULL),(22,'Santa Ana',1,2,NULL,NULL),(23,'Santa Rosa Guachipilín',1,2,NULL,NULL),(24,'Santiago de la Frontera',1,2,NULL,NULL),(25,'Texistepeque',1,2,NULL,NULL),(26,'Acajutla',1,3,NULL,NULL),(27,'Armenia',1,3,NULL,NULL),(28,'Caluco',1,3,NULL,NULL),(29,'Cuisnahuat',1,3,NULL,NULL),(30,'Izalco',1,3,NULL,NULL),(31,'Juayúa',1,3,NULL,NULL),(32,'Nahuizalco',1,3,NULL,NULL),(33,'Nahulingo',1,3,NULL,NULL),(34,'Salcoatitán',1,3,NULL,NULL),(35,'San Antonio del Monte',1,3,NULL,NULL),(36,'San Julián',1,3,NULL,NULL),(37,'Santa Catarina Masahuat',1,3,NULL,NULL),(38,'Santa Isabel Ishuatán',1,3,NULL,NULL),(39,'Santo Domingo de Guzmán',1,3,NULL,NULL),(40,'Sonsonate',1,3,NULL,NULL),(41,'Sonzacate',1,3,NULL,NULL),(42,'Alegría',1,11,NULL,NULL),(43,'Berlín',1,11,NULL,NULL),(44,'California',1,11,NULL,NULL),(45,'Concepción Batres',1,11,NULL,NULL),(46,'El Triunfo',1,11,NULL,NULL),(47,'Ereguayquín',1,11,NULL,NULL),(48,'Estanzuelas',1,11,NULL,NULL),(49,'Jiquilisco',1,11,NULL,NULL),(50,'Jucuapa',1,11,NULL,NULL),(51,'Jucuarán',1,11,NULL,NULL),(52,'Mercedes Umaña',1,11,NULL,NULL),(53,'Nueva Granada',1,11,NULL,NULL),(54,'Ozatlán',1,11,NULL,NULL),(55,'Puerto El Triunfo',1,11,NULL,NULL),(56,'San Agustín',1,11,NULL,NULL),(57,'San Buenaventura',1,11,NULL,NULL),(58,'San Dionisio',1,11,NULL,NULL),(59,'San Francisco Javier',1,11,NULL,NULL),(60,'Santa Elena',1,11,NULL,NULL),(61,'Santa María',1,11,NULL,NULL),(62,'Santiago de María',1,11,NULL,NULL),(63,'Tecapán',1,11,NULL,NULL),(64,'Usulután',1,11,NULL,NULL),(65,'Carolina',1,13,NULL,NULL),(66,'Chapeltique',1,13,NULL,NULL),(67,'Chinameca',1,13,NULL,NULL),(68,'Chirilagua',1,13,NULL,NULL),(69,'Ciudad Barrios',1,13,NULL,NULL),(70,'Comacarán',1,13,NULL,NULL),(71,'El Tránsito',1,13,NULL,NULL),(72,'Lolotique',1,13,NULL,NULL),(73,'Moncagua',1,13,NULL,NULL),(74,'Nueva Guadalupe',1,13,NULL,NULL),(75,'Nuevo Edén de San Juan',1,13,NULL,NULL),(76,'Quelepa',1,13,NULL,NULL),(77,'San Antonio del Mosco',1,13,NULL,NULL),(78,'San Gerardo',1,13,NULL,NULL),(79,'San Jorge',1,13,NULL,NULL),(80,'San Luis de la Reina',1,13,NULL,NULL),(81,'San Miguel',1,13,NULL,NULL),(82,'San Rafael Oriente',1,13,NULL,NULL),(83,'Sesori',1,13,NULL,NULL),(84,'Uluazapa',1,13,NULL,NULL),(85,'Arambala',1,12,NULL,NULL),(86,'Cacaopera',1,12,NULL,NULL),(87,'Chilanga',1,12,NULL,NULL),(88,'Corinto',1,12,NULL,NULL),(89,'Delicias de Concepción',1,12,NULL,NULL),(90,'El Divisadero',1,12,NULL,NULL),(91,'El Rosario (Morazán)',1,12,NULL,NULL),(92,'Gualococti',1,12,NULL,NULL),(93,'Guatajiagua',1,12,NULL,NULL),(94,'Joateca',1,12,NULL,NULL),(95,'Jocoaitique',1,12,NULL,NULL),(96,'Jocoro',1,12,NULL,NULL),(97,'Lolotiquillo',1,12,NULL,NULL),(98,'Meanguera',1,12,NULL,NULL),(99,'Osicala',1,12,NULL,NULL),(100,'Perquín',1,12,NULL,NULL),(101,'San Carlos',1,12,NULL,NULL),(102,'San Fernando (Morazán)',1,12,NULL,NULL),(103,'San Francisco Gotera',1,12,NULL,NULL),(104,'San Isidro (Morazán)',1,12,NULL,NULL),(105,'San Simón',1,12,NULL,NULL),(106,'Sensembra',1,12,NULL,NULL),(107,'Sociedad',1,12,NULL,NULL),(108,'Torola',1,12,NULL,NULL),(109,'Yamabal',1,12,NULL,NULL),(110,'Yoloaiquín',1,12,NULL,NULL),(111,'La Unión',1,14,NULL,NULL),(112,'San Alejo',1,14,NULL,NULL),(113,'Yucuaiquín',1,14,NULL,NULL),(114,'Conchagua',1,14,NULL,NULL),(115,'Intipucá',1,14,NULL,NULL),(116,'San José',1,14,NULL,NULL),(117,'El Carmen (La Unión)',1,14,NULL,NULL),(118,'Yayantique',1,14,NULL,NULL),(119,'Bolívar',1,14,NULL,NULL),(120,'Meanguera del Golfo',1,14,NULL,NULL),(121,'Santa Rosa de Lima',1,14,NULL,NULL),(122,'Pasaquina',1,14,NULL,NULL),(123,'Anamoros',1,14,NULL,NULL),(124,'Nueva Esparta',1,14,NULL,NULL),(125,'El Sauce',1,14,NULL,NULL),(126,'Concepción de Oriente',1,14,NULL,NULL),(127,'Polorós',1,14,NULL,NULL),(128,'Lislique',1,14,NULL,NULL),(129,'Antiguo Cuscatlán',1,4,NULL,NULL),(130,'Chiltiupán',1,4,NULL,NULL),(131,'Ciudad Arce',1,4,NULL,NULL),(132,'Colón',1,4,NULL,NULL),(133,'Comasagua',1,4,NULL,NULL),(134,'Huizúcar',1,4,NULL,NULL),(135,'Jayaque',1,4,NULL,NULL),(136,'Jicalapa',1,4,NULL,NULL),(137,'La Libertad',1,4,NULL,NULL),(138,'Santa Tecla',1,4,NULL,NULL),(139,'Nuevo Cuscatlán',1,4,NULL,NULL),(140,'San Juan Opico',1,4,NULL,NULL),(141,'Quezaltepeque',1,4,NULL,NULL),(142,'Sacacoyo',1,4,NULL,NULL),(143,'San José Villanueva',1,4,NULL,NULL),(144,'San Matías',1,4,NULL,NULL),(145,'San Pablo Tacachico',1,4,NULL,NULL),(146,'Talnique',1,4,NULL,NULL),(147,'Tamanique',1,4,NULL,NULL),(148,'Teotepeque',1,4,NULL,NULL),(149,'Tepecoyo',1,4,NULL,NULL),(150,'Zaragoza',1,4,NULL,NULL),(151,'Agua Caliente',1,5,NULL,NULL),(152,'Arcatao',1,5,NULL,NULL),(153,'Azacualpa',1,5,NULL,NULL),(154,'Cancasque',1,5,NULL,NULL),(155,'Chalatenango',1,5,NULL,NULL),(156,'Citalá',1,5,NULL,NULL),(157,'Comapala',1,5,NULL,NULL),(158,'Concepción Quezaltepeque',1,5,NULL,NULL),(159,'Dulce Nombre de María',1,5,NULL,NULL),(160,'El Carrizal',1,5,NULL,NULL),(161,'El Paraíso',1,5,NULL,NULL),(162,'La Laguna',1,5,NULL,NULL),(163,'La Palma',1,5,NULL,NULL),(164,'La Reina',1,5,NULL,NULL),(165,'Las Vueltas',1,5,NULL,NULL),(166,'Nueva Concepción',1,5,NULL,NULL),(167,'Nueva Trinidad',1,5,NULL,NULL),(168,'Nombre de Jesús',1,5,NULL,NULL),(169,'Ojos de Agua',1,5,NULL,NULL),(170,'Potonico',1,5,NULL,NULL),(171,'San Antonio de la Cruz',1,5,NULL,NULL),(172,'San Antonio Los Ranchos',1,5,NULL,NULL),(173,'San Fernando (Chalatenango)',1,5,NULL,NULL),(174,'San Francisco Lempa',1,5,NULL,NULL),(175,'San Francisco Morazán',1,5,NULL,NULL),(176,'San Ignacio',1,5,NULL,NULL),(177,'San Isidro Labrador',1,5,NULL,NULL),(178,'Las Flores',1,5,NULL,NULL),(179,'San Luis del Carmen',1,5,NULL,NULL),(180,'San Miguel de Mercedes',1,5,NULL,NULL),(181,'San Rafael',1,5,NULL,NULL),(182,'Santa Rita',1,5,NULL,NULL),(183,'Tejutla',1,5,NULL,NULL),(184,'Cojutepeque',1,7,NULL,NULL),(185,'Candelaria',1,7,NULL,NULL),(186,'El Carmen (Cuscatlán)',1,7,NULL,NULL),(187,'El Rosario (Cuscatlán)',1,7,NULL,NULL),(188,'Monte San Juan',1,7,NULL,NULL),(189,'Oratorio de Concepción',1,7,NULL,NULL),(190,'San Bartolomé Perulapía',1,7,NULL,NULL),(191,'San Cristóbal',1,7,NULL,NULL),(192,'San José Guayabal',1,7,NULL,NULL),(193,'San Pedro Perulapán',1,7,NULL,NULL),(194,'San Rafael Cedros',1,7,NULL,NULL),(195,'San Ramón',1,7,NULL,NULL),(196,'Santa Cruz Analquito',1,7,NULL,NULL),(197,'Santa Cruz Michapa',1,7,NULL,NULL),(198,'Suchitoto',1,7,NULL,NULL),(199,'Tenancingo',1,7,NULL,NULL),(200,'Aguilares',1,6,NULL,NULL),(201,'Apopa',1,6,NULL,NULL),(202,'Ayutuxtepeque',1,6,NULL,NULL),(203,'Cuscatancingo',1,6,NULL,NULL),(204,'Ciudad Delgado',1,6,NULL,NULL),(205,'El Paisnal',1,6,NULL,NULL),(206,'Guazapa',1,6,NULL,NULL),(207,'Ilopango',1,6,NULL,NULL),(208,'Mejicanos',1,6,NULL,NULL),(209,'Nejapa',1,6,NULL,NULL),(210,'Panchimalco',1,6,NULL,NULL),(211,'Rosario de Mora',1,6,NULL,NULL),(212,'San Marcos',1,6,NULL,NULL),(213,'San Martín',1,6,NULL,NULL),(214,'San Salvador',1,6,NULL,NULL),(215,'Santiago Texacuangos',1,6,NULL,NULL),(216,'Santo Tomás',1,6,NULL,NULL),(217,'Soyapango',1,6,NULL,NULL),(218,'Tonacatepeque',1,6,NULL,NULL),(219,'Zacatecoluca',1,8,NULL,NULL),(220,'Cuyultitán',1,8,NULL,NULL),(221,'El Rosario (La Paz)',1,8,NULL,NULL),(222,'Jerusalén',1,8,NULL,NULL),(223,'Mercedes La Ceiba',1,8,NULL,NULL),(224,'Olocuilta',1,8,NULL,NULL),(225,'Paraíso de Osorio',1,8,NULL,NULL),(226,'San Antonio Masahuat',1,8,NULL,NULL),(227,'San Emigdio',1,8,NULL,NULL),(228,'San Francisco Chinameca',1,8,NULL,NULL),(229,'San Pedro Masahuat',1,8,NULL,NULL),(230,'San Juan Nonualco',1,8,NULL,NULL),(231,'San Juan Talpa',1,8,NULL,NULL),(232,'San Juan Tepezontes',1,8,NULL,NULL),(233,'San Luis La Herradura',1,8,NULL,NULL),(234,'San Luis Talpa',1,8,NULL,NULL),(235,'San Miguel Tepezontes',1,8,NULL,NULL),(236,'San Pedro Nonualco',1,8,NULL,NULL),(237,'San Rafael Obrajuelo',1,8,NULL,NULL),(238,'Santa María Ostuma',1,8,NULL,NULL),(239,'Santiago Nonualco',1,8,NULL,NULL),(240,'Tapalhuaca',1,8,NULL,NULL),(241,'Cinquera',1,9,NULL,NULL),(242,'Dolores',1,9,NULL,NULL),(243,'Guacotecti',1,9,NULL,NULL),(244,'Ilobasco',1,9,NULL,NULL),(245,'Jutiapa',1,9,NULL,NULL),(246,'San Isidro (Cabañas)',1,9,NULL,NULL),(247,'Sensuntepeque',1,9,NULL,NULL),(248,'Tejutepeque',1,9,NULL,NULL),(249,'Victoria',1,9,NULL,NULL),(250,'Apastepeque',1,10,NULL,NULL),(251,'Guadalupe',1,10,NULL,NULL),(252,'San Cayetano Istepeque',1,10,NULL,NULL),(253,'San Esteban Catarina',1,10,NULL,NULL),(254,'San Ildefonso',1,10,NULL,NULL),(255,'San Lorenzo',1,10,NULL,NULL),(256,'San Sebastián',1,10,NULL,NULL),(257,'San Vicente',1,10,NULL,NULL),(258,'Santa Clara',1,10,NULL,NULL),(259,'Santo Domingo',1,10,NULL,NULL),(260,'Tecoluca',1,10,NULL,NULL),(261,'Tepetitán',1,10,NULL,NULL),(262,'Verapaz',1,10,NULL,NULL);
/*!40000 ALTER TABLE `cat_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_programa`
--

LOCK TABLES `cat_programa` WRITE;
/*!40000 ALTER TABLE `cat_programa` DISABLE KEYS */;
INSERT INTO `cat_programa` VALUES (1,'Programa basico',1,NULL,NULL);
/*!40000 ALTER TABLE `cat_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_tipo_costo`
--

LOCK TABLES `cat_tipo_costo` WRITE;
/*!40000 ALTER TABLE `cat_tipo_costo` DISABLE KEYS */;
INSERT INTO `cat_tipo_costo` VALUES (1,'Participante/Curso',1,NULL,NULL);
/*!40000 ALTER TABLE `cat_tipo_costo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_zona`
--

LOCK TABLES `cat_zona` WRITE;
/*!40000 ALTER TABLE `cat_zona` DISABLE KEYS */;
INSERT INTO `cat_zona` VALUES (1,'Occidental',1,NULL,NULL),(2,'Central',1,NULL,NULL),(3,'Paracentral',1,NULL,NULL),(4,'Oriental',1,NULL,NULL);
/*!40000 ALTER TABLE `cat_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ins_evento`
--

LOCK TABLES `ins_evento` WRITE;
/*!40000 ALTER TABLE `ins_evento` DISABLE KEYS */;
INSERT INTO `ins_evento` VALUES (1,'Proyecto 1','es el primer proyecto','2021-07-04','2021-07-04','Santa tecla',8,1000,20,4,'1234','6786','9876','987',1,1,1,1,1,1,1,'2021-07-05 04:43:28',NULL);
/*!40000 ALTER TABLE `ins_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ins_horario`
--

LOCK TABLES `ins_horario` WRITE;
/*!40000 ALTER TABLE `ins_horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ins_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_07_05_020153_create_cat_zona_table',1),(2,'2021_07_05_020246_create_cat_departamento_table',1),(3,'2021_07_05_020352_create_cat_municipio_table',1),(4,'2021_07_05_020427_create_cat_facilitador_table',1),(5,'2021_07_05_020453_create_cat_modalidad_table',1),(6,'2021_07_05_022004_create_cat_programa_table',1),(7,'2021_07_05_022055_create_cat_tipo_costo_table',1),(8,'2021_07_05_024357_create_ins_evento_table',1),(9,'2021_07_05_024444_create_ins_horario_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'insaforp'
--

--
-- Dumping routines for database 'insaforp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-05  0:58:14
