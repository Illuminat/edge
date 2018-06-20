-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: test_edge
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.10.1-log

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `title` varchar(45) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'ff','Gadgabuga','2018-06-21 00:09:47'),(2,'AF','Afghanistan','2018-06-21 00:09:47'),(3,'AL','Albania','2018-06-21 00:09:47'),(4,'DZ','Algeria','2018-06-21 00:09:47'),(5,'DS','American Samoa','2018-06-21 00:09:47'),(6,'AD','Andorra','2018-06-21 00:09:47'),(7,'AO','Angola','2018-06-21 00:09:47'),(8,'AI','Anguilla','2018-06-21 00:09:47'),(9,'AQ','Antarctica','2018-06-21 00:09:47'),(10,'AG','Antigua and Barbuda','2018-06-21 00:09:47'),(11,'AR','Argentina','2018-06-21 00:09:47'),(12,'AM','Armenia','2018-06-21 00:09:47'),(13,'AW','Aruba','2018-06-21 00:09:47'),(14,'AU','Australia','2018-06-21 00:09:47'),(15,'AT','Austria','2018-06-21 00:09:47'),(16,'AZ','Azerbaijan','2018-06-21 00:09:47'),(17,'BS','Bahamas','2018-06-21 00:09:47'),(18,'BH','Bahrain','2018-06-21 00:09:47'),(19,'BD','Bangladesh','2018-06-21 00:09:47'),(20,'BB','Barbados','2018-06-21 00:09:47'),(21,'BY','Belarus','2018-06-21 00:09:47'),(22,'BE','Belgium','2018-06-21 00:09:47'),(23,'BZ','Belize','2018-06-21 00:09:47'),(24,'BJ','Benin','2018-06-21 00:09:47'),(25,'BM','Bermuda','2018-06-21 00:09:47'),(26,'BT','Bhutan','2018-06-21 00:09:47'),(27,'BO','Bolivia','2018-06-21 00:09:47'),(28,'BA','Bosnia and Herzegovina','2018-06-21 00:09:47'),(29,'BW','Botswana','2018-06-21 00:09:47'),(30,'BV','Bouvet Island','2018-06-21 00:09:47'),(31,'BR','Brazil','2018-06-21 00:09:47'),(32,'IO','British Indian Ocean Territory','2018-06-21 00:09:47'),(33,'BN','Brunei Darussalam','2018-06-21 00:09:47'),(34,'BG','Bulgaria','2018-06-21 00:09:47'),(35,'BF','Burkina Faso','2018-06-21 00:09:47'),(36,'BI','Burundi','2018-06-21 00:09:47'),(37,'KH','Cambodia','2018-06-21 00:09:47'),(38,'CM','Cameroon','2018-06-21 00:09:47'),(39,'CA','Canada','2018-06-21 00:09:47'),(40,'CV','Cape Verde','2018-06-21 00:09:47'),(41,'KY','Cayman Islands','2018-06-21 00:09:47'),(42,'CF','Central African Republic','2018-06-21 00:09:47'),(43,'TD','Chad','2018-06-21 00:09:47'),(44,'CL','Chile','2018-06-21 00:09:47'),(45,'CN','China','2018-06-21 00:09:47'),(46,'CX','Christmas Island','2018-06-21 00:09:47'),(47,'CC','Cocos (Keeling) Islands','2018-06-21 00:09:47'),(48,'CO','Colombia','2018-06-21 00:09:47'),(49,'KM','Comoros','2018-06-21 00:09:47'),(50,'CG','Congo','2018-06-21 00:09:47'),(51,'CK','Cook Islands','2018-06-21 00:09:47'),(52,'CR','Costa Rica','2018-06-21 00:09:47'),(53,'HR','Croatia (Hrvatska)','2018-06-21 00:09:47'),(54,'CU','Cuba','2018-06-21 00:09:47'),(55,'CY','Cyprus','2018-06-21 00:09:47'),(56,'CZ','Czech Republic','2018-06-21 00:09:47'),(57,'DK','Denmark','2018-06-21 00:09:47'),(58,'DJ','Djibouti','2018-06-21 00:09:47'),(59,'DM','Dominica','2018-06-21 00:09:47'),(60,'DO','Dominican Republic','2018-06-21 00:09:47'),(61,'TP','East Timor','2018-06-21 00:09:47'),(62,'EC','Ecuador','2018-06-21 00:09:47'),(63,'EG','Egypt','2018-06-21 00:09:47'),(64,'SV','El Salvador','2018-06-21 00:09:47'),(65,'GQ','Equatorial Guinea','2018-06-21 00:09:47'),(66,'ER','Eritrea','2018-06-21 00:09:47'),(67,'EE','Estonia','2018-06-21 00:09:47'),(68,'ET','Ethiopia','2018-06-21 00:09:47'),(69,'FK','Falkland Islands (Malvinas)','2018-06-21 00:09:47'),(70,'FO','Faroe Islands','2018-06-21 00:09:47'),(71,'FJ','Fiji','2018-06-21 00:09:47'),(72,'FI','Finland','2018-06-21 00:09:47'),(73,'FR','France','2018-06-21 00:09:47'),(74,'FX','France, Metropolitan','2018-06-21 00:09:47'),(75,'GF','French Guiana','2018-06-21 00:09:47'),(76,'PF','French Polynesia','2018-06-21 00:09:47'),(77,'TF','French Southern Territories','2018-06-21 00:09:47'),(78,'GA','Gabon','2018-06-21 00:09:47'),(79,'GM','Gambia','2018-06-21 00:09:47'),(80,'GE','Georgia','2018-06-21 00:09:47'),(81,'DE','Germany','2018-06-21 00:09:47'),(82,'GH','Ghana','2018-06-21 00:09:47'),(83,'GI','Gibraltar','2018-06-21 00:09:47'),(84,'GK','Guernsey','2018-06-21 00:09:47'),(85,'GR','Greece','2018-06-21 00:09:47'),(86,'GL','Greenland','2018-06-21 00:09:47'),(87,'GD','Grenada','2018-06-21 00:09:47'),(88,'GP','Guadeloupe','2018-06-21 00:09:47'),(89,'GU','Guam','2018-06-21 00:09:47'),(90,'GT','Guatemala','2018-06-21 00:09:47'),(91,'GN','Guinea','2018-06-21 00:09:47'),(92,'GW','Guinea-Bissau','2018-06-21 00:09:47'),(93,'GY','Guyana','2018-06-21 00:09:47'),(94,'HT','Haiti','2018-06-21 00:09:47'),(95,'HM','Heard and Mc Donald Islands','2018-06-21 00:09:47'),(96,'HN','Honduras','2018-06-21 00:09:47'),(97,'HK','Hong Kong','2018-06-21 00:09:47'),(98,'HU','Hungary','2018-06-21 00:09:47'),(99,'IS','Iceland','2018-06-21 00:09:47'),(100,'IN','India','2018-06-21 00:09:47'),(101,'IM','Isle of Man','2018-06-21 00:09:47'),(102,'ID','Indonesia','2018-06-21 00:09:47'),(103,'IR','Iran (Islamic Republic of)','2018-06-21 00:09:47'),(104,'IQ','Iraq','2018-06-21 00:09:47'),(105,'IE','Ireland','2018-06-21 00:09:47'),(106,'IL','Israel','2018-06-21 00:09:47'),(107,'IT','Italy','2018-06-21 00:09:47'),(108,'CI','Ivory Coast','2018-06-21 00:09:47'),(109,'JE','Jersey','2018-06-21 00:09:47'),(110,'JM','Jamaica','2018-06-21 00:09:47'),(111,'JP','Japan','2018-06-21 00:09:47'),(112,'JO','Jordan','2018-06-21 00:09:47'),(113,'KZ','Kazakhstan','2018-06-21 00:09:47'),(114,'KE','Kenya','2018-06-21 00:09:47'),(115,'KI','Kiribati','2018-06-21 00:09:47'),(116,'KP','Korea, Democratic People\'s Republic of','2018-06-21 00:09:47'),(117,'KR','Korea, Republic of','2018-06-21 00:09:47'),(118,'XK','Kosovo','2018-06-21 00:09:47'),(119,'KW','Kuwait','2018-06-21 00:09:47'),(120,'KG','Kyrgyzstan','2018-06-21 00:09:47'),(121,'LA','Lao People\'s Democratic Republic','2018-06-21 00:09:47'),(122,'LV','Latvia','2018-06-21 00:09:47'),(123,'LB','Lebanon','2018-06-21 00:09:47'),(124,'LS','Lesotho','2018-06-21 00:09:47'),(125,'LR','Liberia','2018-06-21 00:09:47'),(126,'LY','Libyan Arab Jamahiriya','2018-06-21 00:09:47'),(127,'LI','Liechtenstein','2018-06-21 00:09:47'),(128,'LT','Lithuania','2018-06-21 00:09:47'),(129,'LU','Luxembourg','2018-06-21 00:09:47'),(130,'MO','Macau','2018-06-21 00:09:47'),(131,'MK','Macedonia','2018-06-21 00:09:47'),(132,'MG','Madagascar','2018-06-21 00:09:47'),(133,'MW','Malawi','2018-06-21 00:09:47'),(134,'MY','Malaysia','2018-06-21 00:09:47'),(135,'MV','Maldives','2018-06-21 00:09:47'),(136,'ML','Mali','2018-06-21 00:09:47'),(137,'MT','Malta','2018-06-21 00:09:47'),(138,'MH','Marshall Islands','2018-06-21 00:09:47'),(139,'MQ','Martinique','2018-06-21 00:09:47'),(140,'MR','Mauritania','2018-06-21 00:09:47'),(141,'MU','Mauritius','2018-06-21 00:09:47'),(142,'TY','Mayotte','2018-06-21 00:09:47'),(143,'MX','Mexico','2018-06-21 00:09:47'),(144,'FM','Micronesia, Federated States of','2018-06-21 00:09:47'),(145,'MD','Moldova, Republic of','2018-06-21 00:09:47'),(146,'MC','Monaco','2018-06-21 00:09:47'),(147,'MN','Mongolia','2018-06-21 00:09:47'),(148,'ME','Montenegro','2018-06-21 00:09:47'),(149,'MS','Montserrat','2018-06-21 00:09:47'),(150,'MA','Morocco','2018-06-21 00:09:47'),(151,'MZ','Mozambique','2018-06-21 00:09:47'),(152,'MM','Myanmar','2018-06-21 00:09:47'),(153,'NA','Namibia','2018-06-21 00:09:47'),(154,'NR','Nauru','2018-06-21 00:09:47'),(155,'NP','Nepal','2018-06-21 00:09:47'),(156,'NL','Netherlands','2018-06-21 00:09:47'),(157,'AN','Netherlands Antilles','2018-06-21 00:09:47'),(158,'NC','New Caledonia','2018-06-21 00:09:47'),(159,'NZ','New Zealand','2018-06-21 00:09:47'),(160,'NI','Nicaragua','2018-06-21 00:09:47'),(161,'NE','Niger','2018-06-21 00:09:47'),(162,'NG','Nigeria','2018-06-21 00:09:47'),(163,'NU','Niue','2018-06-21 00:09:47'),(164,'NF','Norfolk Island','2018-06-21 00:09:47'),(165,'MP','Northern Mariana Islands','2018-06-21 00:09:47'),(166,'NO','Norway','2018-06-21 00:09:47'),(167,'OM','Oman','2018-06-21 00:09:47'),(168,'PK','Pakistan','2018-06-21 00:09:47'),(169,'PW','Palau','2018-06-21 00:09:47'),(170,'PS','Palestine','2018-06-21 00:09:47'),(171,'PA','Panama','2018-06-21 00:09:47'),(172,'PG','Papua New Guinea','2018-06-21 00:09:47'),(173,'PY','Paraguay','2018-06-21 00:09:47'),(174,'PE','Peru','2018-06-21 00:09:47'),(175,'PH','Philippines','2018-06-21 00:09:47'),(176,'PN','Pitcairn','2018-06-21 00:09:47'),(177,'PL','Poland','2018-06-21 00:09:47'),(178,'PT','Portugal','2018-06-21 00:09:47'),(179,'PR','Puerto Rico','2018-06-21 00:09:47'),(180,'QA','Qatar','2018-06-21 00:09:47'),(181,'RE','Reunion','2018-06-21 00:09:47'),(182,'RO','Romania','2018-06-21 00:09:47'),(183,'RU','Russian Federation','2018-06-21 00:09:47'),(184,'RW','Rwanda','2018-06-21 00:09:47'),(185,'KN','Saint Kitts and Nevis','2018-06-21 00:09:47'),(186,'LC','Saint Lucia','2018-06-21 00:09:47'),(187,'VC','Saint Vincent and the Grenadines','2018-06-21 00:09:47'),(188,'WS','Samoa','2018-06-21 00:09:47'),(189,'SM','San Marino','2018-06-21 00:09:47'),(190,'ST','Sao Tome and Principe','2018-06-21 00:09:47'),(191,'SA','Saudi Arabia','2018-06-21 00:09:47'),(192,'SN','Senegal','2018-06-21 00:09:47'),(193,'RS','Serbia','2018-06-21 00:09:47'),(194,'SC','Seychelles','2018-06-21 00:09:47'),(195,'SL','Sierra Leone','2018-06-21 00:09:47'),(196,'SG','Singapore','2018-06-21 00:09:47'),(197,'SK','Slovakia','2018-06-21 00:09:47'),(198,'SI','Slovenia','2018-06-21 00:09:47'),(199,'SB','Solomon Islands','2018-06-21 00:09:47'),(200,'SO','Somalia','2018-06-21 00:09:47'),(201,'ZA','South Africa','2018-06-21 00:09:47'),(202,'GS','South Georgia South Sandwich Islands','2018-06-21 00:09:47'),(203,'ES','Spain','2018-06-21 00:09:47'),(204,'LK','Sri Lanka','2018-06-21 00:09:47'),(205,'SH','St. Helena','2018-06-21 00:09:47'),(206,'PM','St. Pierre and Miquelon','2018-06-21 00:09:47'),(207,'SD','Sudan','2018-06-21 00:09:47'),(208,'SR','Suriname','2018-06-21 00:09:47'),(209,'SJ','Svalbard and Jan Mayen Islands','2018-06-21 00:09:47'),(210,'SZ','Swaziland','2018-06-21 00:09:47'),(211,'SE','Sweden','2018-06-21 00:09:47'),(212,'CH','Switzerland','2018-06-21 00:09:47'),(213,'SY','Syrian Arab Republic','2018-06-21 00:09:47'),(214,'TW','Taiwan','2018-06-21 00:09:47'),(215,'TJ','Tajikistan','2018-06-21 00:09:47'),(216,'TZ','Tanzania, United Republic of','2018-06-21 00:09:47'),(217,'TH','Thailand','2018-06-21 00:09:47'),(218,'TG','Togo','2018-06-21 00:09:47'),(219,'TK','Tokelau','2018-06-21 00:09:47'),(220,'TO','Tonga','2018-06-21 00:09:47'),(221,'TT','Trinidad and Tobago','2018-06-21 00:09:47'),(222,'TN','Tunisia','2018-06-21 00:09:47'),(223,'TR','Turkey','2018-06-21 00:09:47'),(224,'TM','Turkmenistan','2018-06-21 00:09:47'),(225,'TC','Turks and Caicos Islands','2018-06-21 00:09:47'),(226,'TV','Tuvalu','2018-06-21 00:09:47'),(227,'UG','Uganda','2018-06-21 00:09:47'),(228,'UA','Ukraine','2018-06-21 00:09:47'),(229,'AE','United Arab Emirates','2018-06-21 00:09:47'),(230,'GB','United Kingdom','2018-06-21 00:09:47'),(231,'US','United States','2018-06-21 00:09:47'),(232,'UM','United States minor outlying islands','2018-06-21 00:09:47'),(233,'UY','Uruguay','2018-06-21 00:09:47'),(234,'UZ','Uzbekistan','2018-06-21 00:09:47'),(235,'VU','Vanuatu','2018-06-21 00:09:47'),(236,'VA','Vatican City State','2018-06-21 00:09:47'),(237,'VE','Venezuela','2018-06-21 00:09:47'),(238,'VN','Vietnam','2018-06-21 00:09:47'),(239,'VG','Virgin Islands (British)','2018-06-21 00:09:47'),(240,'VI','Virgin Islands (U.S.)','2018-06-21 00:09:47'),(241,'WF','Wallis and Futuna Islands','2018-06-21 00:09:47'),(242,'EH','Western Sahara','2018-06-21 00:09:47'),(243,'YE','Yemen','2018-06-21 00:09:47'),(244,'ZR','Zaire','2018-06-21 00:09:47'),(245,'ZM','Zambia','2018-06-21 00:09:47'),(246,'ZW','Zimbabwe','2018-06-21 00:09:47');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cntId` int(11) NOT NULL,
  `number` int(15) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1,1,555,'2018-06-21 00:10:05'),(2,2,5454545,'2018-06-21 00:10:05'),(3,3,54545,'2018-06-21 00:10:05'),(4,6,34343434,'2018-06-21 00:10:05');
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_log`
--

DROP TABLE IF EXISTS `send_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrId` int(11) NOT NULL,
  `numberId` int(11) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `success` int(1) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_log`
--

LOCK TABLES `send_log` WRITE;
/*!40000 ALTER TABLE `send_log` DISABLE KEYS */;
INSERT INTO `send_log` VALUES (1,2,4,'dfgvdfg',1,'2018-06-21 00:12:01'),(2,4,6,'sdf',1,'2018-06-21 00:12:01'),(3,1,4,'dfgfg',0,'2018-06-21 00:12:01'),(4,3,2,'dfgdf',1,'2018-06-21 00:12:01');
/*!40000 ALTER TABLE `send_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_log_aggregated`
--

DROP TABLE IF EXISTS `send_log_aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_log_aggregated` (
  `date` date NOT NULL,
  `cntId` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `successed` int(11) DEFAULT '0',
  `failed` int(11) DEFAULT '0',
  PRIMARY KEY (`date`,`cntId`,`usrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_log_aggregated`
--

LOCK TABLES `send_log_aggregated` WRITE;
/*!40000 ALTER TABLE `send_log_aggregated` DISABLE KEYS */;
INSERT INTO `send_log_aggregated` VALUES ('2018-06-20',1,1,6,0),('2018-06-20',1,2,6,0),('2018-06-20',2,1,2,6),('2018-06-20',3,4,2,0),('2018-06-20',6,1,0,2),('2018-06-20',6,3,0,6);
/*!40000 ALTER TABLE `send_log_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hello',1,'2018-06-21 00:10:29'),(2,'World',1,'2018-06-21 00:10:29'),(3,'Druster',1,'2018-06-21 00:10:29'),(4,'Disaster',1,'2018-06-21 00:10:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21  0:21:38
