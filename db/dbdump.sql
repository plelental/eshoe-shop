-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: prestashop
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `ps_access`
--

DROP TABLE IF EXISTS `ps_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_authorization_role` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_profile`,`id_authorization_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_access`
--

LOCK TABLES `ps_access` WRITE;
/*!40000 ALTER TABLE `ps_access` DISABLE KEYS */;
INSERT INTO `ps_access` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,127),(1,128),(1,129),(1,130),(1,131),(1,132),(1,133),(1,134),(1,135),(1,136),(1,137),(1,138),(1,139),(1,140),(1,141),(1,142),(1,143),(1,144),(1,145),(1,146),(1,147),(1,148),(1,149),(1,150),(1,151),(1,152),(1,153),(1,154),(1,155),(1,156),(1,157),(1,158),(1,159),(1,160),(1,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,168),(1,169),(1,170),(1,171),(1,172),(1,173),(1,174),(1,175),(1,176),(1,177),(1,178),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,188),(1,189),(1,190),(1,191),(1,192),(1,193),(1,194),(1,195),(1,196),(1,197),(1,198),(1,199),(1,200),(1,201),(1,202),(1,203),(1,204),(1,205),(1,206),(1,207),(1,208),(1,209),(1,210),(1,211),(1,212),(1,213),(1,214),(1,215),(1,216),(1,217),(1,218),(1,219),(1,220),(1,221),(1,222),(1,223),(1,224),(1,225),(1,226),(1,227),(1,228),(1,229),(1,230),(1,231),(1,232),(1,233),(1,234),(1,235),(1,236),(1,237),(1,238),(1,239),(1,240),(1,241),(1,242),(1,243),(1,244),(1,245),(1,246),(1,247),(1,248),(1,249),(1,250),(1,251),(1,252),(1,253),(1,254),(1,255),(1,256),(1,257),(1,258),(1,259),(1,260),(1,261),(1,262),(1,263),(1,264),(1,265),(1,266),(1,267),(1,268),(1,269),(1,270),(1,271),(1,272),(1,273),(1,274),(1,275),(1,276),(1,277),(1,278),(1,279),(1,280),(1,281),(1,282),(1,283),(1,284),(1,285),(1,286),(1,287),(1,288),(1,289),(1,290),(1,291),(1,292),(1,293),(1,294),(1,295),(1,296),(1,297),(1,298),(1,299),(1,300),(1,301),(1,302),(1,303),(1,304),(1,305),(1,306),(1,307),(1,308),(1,309),(1,310),(1,311),(1,312),(1,313),(1,314),(1,315),(1,316),(1,317),(1,318),(1,319),(1,320),(1,321),(1,322),(1,323),(1,324),(1,325),(1,326),(1,327),(1,328),(1,329),(1,330),(1,331),(1,332),(1,333),(1,334),(1,335),(1,336),(1,337),(1,338),(1,339),(1,340),(1,341),(1,342),(1,343),(1,344),(1,345),(1,346),(1,347),(1,348),(1,349),(1,350),(1,351),(1,352),(1,353),(1,354),(1,355),(1,356),(1,357),(1,358),(1,359),(1,360),(1,361),(1,362),(1,363),(1,364),(1,365),(1,366),(1,367),(1,368),(1,369),(1,370),(1,371),(1,372),(1,373),(1,374),(1,375),(1,376),(1,377),(1,378),(1,379),(1,380),(1,381),(1,382),(1,383),(1,384),(1,385),(1,386),(1,387),(1,388),(1,389),(1,390),(1,391),(1,392),(1,393),(1,394),(1,395),(1,396),(1,397),(1,398),(1,399),(1,400),(1,401),(1,402),(1,403),(1,404),(1,405),(1,406),(1,407),(1,408),(1,409),(1,410),(1,411),(1,412),(1,413),(1,414),(1,415),(1,416),(1,417),(1,418),(1,419),(1,420),(1,421),(1,422),(1,423),(1,424),(1,425),(1,426),(1,427),(1,428),(1,429),(1,430),(1,431),(1,432),(1,433),(1,434),(1,435),(1,436),(1,437),(1,438),(1,439),(1,440),(1,441),(1,442),(1,443),(1,444),(1,445),(1,446),(1,447),(1,448),(1,449),(1,450),(1,451),(1,452),(1,453),(1,454),(1,455),(1,456),(1,457),(1,458),(1,459),(1,460),(1,461),(1,462),(1,463),(1,464),(1,465),(1,466),(1,467),(1,468),(1,493),(1,494),(1,495),(1,496),(1,561),(1,562),(1,563),(1,564),(1,609),(1,610),(1,611),(1,612),(1,613),(1,614),(1,615),(1,616),(1,617),(1,618),(1,619),(1,620),(1,721),(1,722),(1,723),(1,724),(1,725),(1,726),(1,727),(1,728),(1,737),(1,738),(1,739),(1,740),(1,749),(1,750),(1,751),(1,752),(1,753),(1,754),(1,755),(1,756),(1,761),(1,762),(1,763),(1,764),(1,765),(1,766),(1,767),(1,768),(1,769),(1,770),(1,771),(1,772),(1,773),(1,774),(1,775),(1,776),(1,781),(1,782),(1,783),(1,784),(1,797),(1,798),(1,799),(1,800),(1,801),(1,802),(1,803),(1,804),(1,805),(1,806),(1,807),(1,808),(1,809),(1,810),(1,811),(1,812),(1,813),(1,814),(1,815),(1,816),(1,817),(1,818),(1,819),(1,820),(1,821),(1,822),(1,823),(1,824),(1,825),(1,826),(1,827),(1,828),(1,861),(1,862),(1,863),(1,864),(2,9),(2,10),(2,11),(2,12),(2,33),(2,34),(2,35),(2,36),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,85),(2,86),(2,87),(2,88),(2,129),(2,130),(2,131),(2,132),(2,189),(2,190),(2,191),(2,192),(2,209),(2,210),(2,211),(2,212),(2,217),(2,218),(2,219),(2,220),(2,229),(2,230),(2,231),(2,232),(2,242),(2,243),(2,249),(2,250),(2,251),(2,252),(2,269),(2,270),(2,271),(2,272),(2,273),(2,274),(2,275),(2,276),(2,309),(2,310),(2,311),(2,312),(2,325),(2,326),(2,327),(2,328),(2,337),(2,338),(2,339),(2,340),(2,349),(2,350),(2,351),(2,352),(2,373),(2,374),(2,375),(2,376),(2,389),(2,390),(2,391),(2,392),(2,397),(2,398),(2,399),(2,400),(2,401),(2,402),(2,403),(2,404),(2,425),(2,426),(2,427),(2,428),(2,433),(2,434),(2,435),(2,436),(2,449),(2,450),(2,451),(2,452),(2,453),(2,454),(2,455),(2,456),(3,45),(3,46),(3,47),(3,48),(3,49),(3,50),(3,51),(3,52),(3,125),(3,126),(3,127),(3,128),(3,141),(3,142),(3,143),(3,144),(3,225),(3,226),(3,227),(3,228),(3,265),(3,266),(3,267),(3,268),(3,309),(3,310),(3,311),(3,312),(3,329),(3,330),(3,331),(3,332),(3,429),(3,430),(3,431),(3,432),(3,445),(3,446),(3,447),(3,448),(3,449),(3,450),(3,451),(3,452),(3,453),(3,454),(3,455),(3,456),(3,457),(3,458),(3,459),(3,460),(4,0),(4,9),(4,10),(4,11),(4,12),(4,17),(4,18),(4,19),(4,20),(4,41),(4,42),(4,43),(4,44),(4,45),(4,46),(4,47),(4,48),(4,49),(4,50),(4,51),(4,52),(4,129),(4,130),(4,131),(4,132),(4,154),(4,181),(4,182),(4,183),(4,184),(4,189),(4,190),(4,191),(4,192),(4,209),(4,210),(4,211),(4,212),(4,217),(4,218),(4,219),(4,220),(4,229),(4,230),(4,231),(4,232),(4,237),(4,238),(4,239),(4,240),(4,242),(4,243),(4,249),(4,250),(4,251),(4,252),(4,266),(4,309),(4,310),(4,311),(4,312),(4,317),(4,318),(4,319),(4,320),(4,330),(4,349),(4,350),(4,351),(4,352),(4,401),(4,402),(4,403),(4,404),(4,437),(4,438),(4,439),(4,440),(4,445),(4,446),(4,447),(4,448),(4,453),(4,454),(4,455),(4,456),(4,457),(4,458),(4,459),(4,460);
/*!40000 ALTER TABLE `ps_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_accessory`
--

DROP TABLE IF EXISTS `ps_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_accessory`
--

LOCK TABLES `ps_accessory` WRITE;
/*!40000 ALTER TABLE `ps_accessory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_address`
--

DROP TABLE IF EXISTS `ps_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_address`
--

LOCK TABLES `ps_address` WRITE;
/*!40000 ALTER TABLE `ps_address` DISABLE KEYS */;
INSERT INTO `ps_address` VALUES (1,14,0,1,0,0,0,'Anonymous','Anonymous','Anonymous','Anonymous','Anonymous','','00000','Anonymous','','0000000000','0000000000','0000','0000','2020-11-30 19:28:44','2020-11-30 19:28:44',1,0),(2,8,0,2,0,0,0,'Mon adresse','My Company','DOE','John','16, Main street','2nd floor','75002','Paris ','','0102030405','','','','2020-11-30 19:28:56','2020-11-30 19:28:56',1,0),(5,21,12,2,0,0,0,'My address','My Company','DOE','John','16, Main street','2nd floor','33133','Miami','','0102030405','','','','2020-11-30 19:28:56','2020-11-30 19:28:56',1,0),(6,14,0,3,0,0,0,'Mój adres','','Jackowski','Jacek','Grunwaldzka 1','','80-000','Gdańsk','','','','','','2020-12-01 19:31:28','2020-12-01 19:31:28',1,0),(7,14,0,4,0,0,0,'Mój adres','','ljkhnkl','iwoewjef','WER','','11-111','gDFGFD','','','','','','2020-12-02 18:10:30','2020-12-02 18:10:30',1,0),(8,14,0,5,0,0,0,'Mój adres','','Lelental','Paweł','xfg','','00-000','h','','','','','','2020-12-02 19:46:55','2020-12-02 19:46:55',1,0),(9,14,0,7,0,0,0,'Mój adres','','ert','tert','cfgbghngvhj','','00-000','gjhgj','','','','','','2020-12-14 18:34:37','2020-12-14 18:34:37',1,0),(10,14,0,8,0,0,0,'Mój adres','adfdf','Returns','Amazon.co.uk','sadas','asd','88-299','Dunfermline','','','','','','2020-12-17 00:42:24','2020-12-17 00:42:24',1,0),(11,14,0,9,0,0,0,'Mój adres','','Nowak','Anna','warszawska 123','','12-344','WARSZAWA','','','','','','2020-12-18 01:47:31','2020-12-18 01:47:31',1,0),(12,14,0,10,0,0,0,'Mój adres','mp3store.pl','Logistyka','MIP','Działdowska 12','','01-184','Warszawa','','222668052','','mp3store.pl','','2020-12-18 18:58:46','2020-12-18 18:58:46',1,0);
/*!40000 ALTER TABLE `ps_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_address_format`
--

DROP TABLE IF EXISTS `ps_address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_address_format` (
  `id_country` int(10) unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_address_format`
--

LOCK TABLES `ps_address_format` WRITE;
/*!40000 ALTER TABLE `ps_address_format` DISABLE KEYS */;
INSERT INTO `ps_address_format` VALUES (1,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(2,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(3,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(4,'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone'),(5,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(6,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(7,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(8,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(9,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(10,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(11,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(12,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(13,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(14,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(15,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(16,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(17,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\ncity\npostcode\nCountry:name\nphone'),(18,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(19,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(20,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(21,'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone'),(22,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(23,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(24,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\ncity State:iso_code postcode\nCountry:name\nphone'),(25,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(26,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(27,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(28,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(29,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(30,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(31,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(32,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(33,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(34,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(35,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(36,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(37,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(38,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(39,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(40,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(41,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(42,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(43,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(44,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(45,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(46,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(47,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(48,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(49,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(50,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(51,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(52,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(53,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(54,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(55,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(56,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(57,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(58,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(59,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(60,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(61,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(62,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(63,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(64,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(65,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(66,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(67,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(68,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(69,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(70,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(71,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(72,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(73,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(74,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(75,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(76,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(77,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(78,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(79,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(80,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(81,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(82,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(83,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(84,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(85,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(86,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(87,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(88,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(89,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(90,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(91,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(92,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(93,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(94,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(95,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(96,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(97,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(98,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(99,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(100,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(101,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(102,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(103,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(104,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(105,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(106,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(107,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(108,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(109,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(110,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\ncity\npostcode\nState:name\nCountry:name\nphone'),(111,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(112,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(113,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(114,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(115,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(116,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(117,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(118,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(119,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(120,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(121,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(122,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(123,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(124,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(125,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(126,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(127,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(128,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(129,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(130,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(131,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(132,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(133,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(134,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(135,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(136,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(137,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(138,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(139,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(140,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(141,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(142,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(143,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(144,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(145,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(146,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(147,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(148,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(149,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(150,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(151,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(152,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(153,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(154,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(155,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(156,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(157,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(158,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(159,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(160,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(161,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(162,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(163,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(164,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(165,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(166,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(167,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(168,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(169,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(170,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(171,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(172,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(173,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(174,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(175,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(176,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(177,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(178,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(179,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(180,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(181,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(182,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(183,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(184,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(185,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(186,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(187,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(188,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(189,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(190,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(191,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(192,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(193,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(194,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(195,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(196,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(197,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(198,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(199,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(200,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(201,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(202,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(203,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(204,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(205,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(206,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(207,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(208,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(209,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(210,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(211,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(212,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(213,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(214,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(215,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(216,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(217,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(218,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(219,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(220,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(221,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(222,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(223,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(224,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(225,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(226,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(227,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(228,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(229,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(230,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(231,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(232,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(233,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(234,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(235,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(236,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(237,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(238,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(239,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(240,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(241,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(242,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(243,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(244,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone');
/*!40000 ALTER TABLE `ps_address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_admin_filter`
--

DROP TABLE IF EXISTS `ps_admin_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_admin_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `controller` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `filter_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_filter_search_id_idx` (`employee`,`shop`,`controller`,`action`,`filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_admin_filter`
--

LOCK TABLES `ps_admin_filter` WRITE;
/*!40000 ALTER TABLE `ps_admin_filter` DISABLE KEYS */;
INSERT INTO `ps_admin_filter` VALUES (1,1,1,'ProductController','catalogAction','{\"filter_category\":\"\",\"filter_column_id_product\":\"\",\"filter_column_name\":\"\",\"filter_column_reference\":\"\",\"filter_column_name_category\":\"\",\"filter_column_price\":\"\",\"filter_column_sav_quantity\":\"\",\"filter_column_active\":\"\",\"last_offset\":\"0\",\"last_limit\":\"20\",\"last_orderBy\":\"id_product\",\"last_sortOrder\":\"desc\"}',''),(2,1,1,'','','{\"orderBy\":\"position\",\"sortOrder\":\"asc\",\"limit\":50,\"filters\":{\"id_category_parent\":\"2\"}}','category'),(3,1,1,'','','{\"limit\":10,\"orderBy\":\"name\",\"sortOrder\":\"asc\",\"filters\":[]}','manufacturer'),(4,1,1,'','','{\"limit\":10,\"orderBy\":\"id_address\",\"sortOrder\":\"desc\",\"filters\":[]}','manufacturer_address'),(5,1,1,'','','{\"orderBy\":\"position\",\"sortOrder\":\"asc\",\"limit\":50,\"filters\":{\"id_cms_category_parent\":1}}','cms_page_category'),(6,1,1,'','','{\"orderBy\":\"position\",\"sortOrder\":\"asc\",\"limit\":50,\"filters\":{\"id_cms_category_parent\":1}}','cms_page'),(7,1,1,'tax','index','{\"limit\":50,\"orderBy\":\"id_tax\",\"sortOrder\":\"asc\",\"filters\":[]}',''),(8,1,1,'contacts','index','{\"limit\":10,\"orderBy\":\"id_contact\",\"sortOrder\":\"asc\",\"filters\":[]}',''),(9,1,1,'','','{\"limit\":50,\"orderBy\":\"date_add\",\"sortOrder\":\"DESC\",\"filters\":[]}','customer'),(10,1,1,'sqlmanager','index','{\"limit\":10,\"orderBy\":\"id_request_sql\",\"sortOrder\":\"desc\",\"filters\":[]}',''),(11,1,1,'meta','index','{\"limit\":50,\"orderBy\":\"id_meta\",\"sortOrder\":\"asc\",\"filters\":[]}',''),(12,1,1,'email','index','{\"limit\":50,\"orderBy\":\"id_mail\",\"sortOrder\":\"desc\",\"filters\":[]}',''),(13,1,1,'webservice','index','{\"limit\":50,\"orderBy\":\"id_webservice_account\",\"sortOrder\":\"asc\",\"filters\":[]}','');
/*!40000 ALTER TABLE `ps_admin_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_advice`
--

DROP TABLE IF EXISTS `ps_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_advice` (
  `id_advice` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_advice` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `ids_tab` text,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `location` enum('after','before') NOT NULL,
  `selector` varchar(255) DEFAULT NULL,
  `start_day` int(11) NOT NULL DEFAULT '0',
  `stop_day` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT '1',
  PRIMARY KEY (`id_advice`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_advice`
--

LOCK TABLES `ps_advice` WRITE;
/*!40000 ALTER TABLE `ps_advice` DISABLE KEYS */;
INSERT INTO `ps_advice` VALUES (10,2147483647,1,NULL,1,0,'after','#dashtrends',0,0,1),(11,765,1,NULL,1,0,'after','#dashtrends',0,0,1),(12,518,1,NULL,1,0,'after','.dash_news',0,0,1);
/*!40000 ALTER TABLE `ps_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_advice_lang`
--

DROP TABLE IF EXISTS `ps_advice_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_advice_lang` (
  `id_advice` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `html` text,
  PRIMARY KEY (`id_advice`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_advice_lang`
--

LOCK TABLES `ps_advice_lang` WRITE;
/*!40000 ALTER TABLE `ps_advice_lang` DISABLE KEYS */;
INSERT INTO `ps_advice_lang` VALUES (10,1,'<div id=\"wrap_id_advice_1592213893260\">\n            <div class=\"col-lg-6\">\n              <section id=\"\" class=\"panel panel-advice\" style=\"position: relative; padding: 10px; min-height: 75px;\">\n                <a href=\"#\" id=\"1592213893260\" class=\"close_link gamification_premium_close\" style=\"display: none; position: absolute; top: 10px; right: 10px;\">\n                  <i class=\"icon-remove\"></i>\n                </a>\n                <span class=\"gamification-close-confirmation hide\">\n                  Are you sure?\n                  <button class=\"btn btn-default btn-sm\" data-advice=\"delete\">\n                    <i class=\"icon-trash\"></i>Delete\n                  </button>\n                  <button class=\"btn btn-default btn-sm\" data-advice=\"cancel\">Cancel</button>\n                </span>\n                <a class=\"preactivationLink row\" rel=\"Glotio\" href=\"{link}AdminModules{/link}&install=Glotio&module_name=Glotio&redirectconfig\" style=\"display: table; margin: 0; text-decoration: none;\">\n                  <img src=\"https://storage.googleapis.com/production-gamification-assets/premium/Glotio.png?1592214028515?1592214053712?1592214069766?1592214096395?1592214115185?1592214139622?1592214157610?1592214175532?1592214198714\" class=\"advice-img img-thumbnail\">\n                  <img src=\"https://gamification.prestashop.com/api/getAdviceImg/1592213893260.png\" class=\"hide\">\n                  <p class=\"advice-description\" style=\"padding: 0 20px; display: table-cell; vertical-align: middle;\">Przetłumacz swój sklep automatycznie w kilka minut. Pierwszy język GRATIS + info</p>\n                </a>\n              </section>\n            </div>\n            <script>\n              $(document).ready( function () {\n                var link = $(\'#wrap_id_advice_1592213893260 .preactivationLink\')[0].href;\n                link = encodeURIComponent(link);\n                var newUrl = \'https://gamification.prestashop.com/get_advice_link.php?id_advice=1592213893260&url=\'+link;\n                $(\'#wrap_id_advice_1592213893260 .preactivationLink\')[0].href = newUrl;\n              });\n            </script>\n          </div>'),(11,1,'<div id=\"wrap_id_advice_765\">\n            <div class=\"col-lg-6\">\n              <section id=\"\" class=\"panel panel-advice\" style=\"position: relative; padding: 10px; min-height: 75px;\">\n                <a href=\"#\" id=\"765\" class=\"close_link gamification_premium_close\" style=\"display: none; position: absolute; top: 10px; right: 10px;\">\n                  <i class=\"icon-remove\"></i>\n                </a>\n                <span class=\"gamification-close-confirmation hide\">\n                  Are you sure?\n                  <button class=\"btn btn-default btn-sm\" data-advice=\"delete\">\n                    <i class=\"icon-trash\"></i>Delete\n                  </button>\n                  <button class=\"btn btn-default btn-sm\" data-advice=\"cancel\">Cancel</button>\n                </span>\n                <a class=\"preactivationLink row\" rel=\"skrill\" href=\"{link}AdminModules{/link}&install=skrill&module_name=skrill&redirectconfig\" style=\"display: table; margin: 0; text-decoration: none;\">\n                  <img src=\"https://storage.googleapis.com/production-gamification-assets/premium/skrill.png?1580726177957?1601566954303?1601567094742?1601567100211?1601567108238?1601567115233?1601567122661?1601888669196\" class=\"advice-img img-thumbnail\">\n                  <img src=\"https://gamification.prestashop.com/api/getAdviceImg/765.png\" class=\"hide\">\n                  <p class=\"advice-description\" style=\"padding: 0 20px; display: table-cell; vertical-align: middle;\">Zarejestruj się w Skrill i skorzystaj z obniżonych opłat w wysokości 0,5%.</p>\n                </a>\n              </section>\n            </div>\n            <script>\n              $(document).ready( function () {\n                var link = $(\'#wrap_id_advice_765 .preactivationLink\')[0].href;\n                link = encodeURIComponent(link);\n                var newUrl = \'https://gamification.prestashop.com/get_advice_link.php?id_advice=765&url=\'+link;\n                $(\'#wrap_id_advice_765 .preactivationLink\')[0].href = newUrl;\n              });\n            </script>\n          </div>'),(12,1,' <div id=\"wrap_id_advice_518\"> <section id=\"0_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Ustaw środki płatności w widocznym miejscu</b> </p> <p> Klienci po wejściu na stronę główną Twojego e-sklepu, powinni wiedzieć z jakich środków płatności mogą korzystać. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"1_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Proponuj jak najwięcej środków płatności</b> </p> <p> Im więcej środków płatności proponujesz, tym więcej masz szans na zwiększenie sprzedaży. Proponuj 7 środków płatności dzięki modułowi PayPal. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"2_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Obserwuj postępy Twojej działalności na żywo</b> </p> <p> Po każdej dokonanej tranzakcji, PayPal dostarczy Ci wszystkich szczegółów danej operacji. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"3_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Zaproponuj klientom darmowe* środki płatności</b> </p> <p> Nie nakładaj dodatkowych kosztów na Twoich klientów. Z modułem PayPal, mają oni całkowitą gwarancję bezpieczeństwa bez żadnych dodatkowych kosztów*.* W euro, w Europejskim Obszarze Gospodarczym. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"4_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Udostępnij swoim klientom gwarancję dostawy lub zwrotu</b> </p> <p> Z PayPal, Twoi klienci otrzymują dostawę lub zwrot. Nie wahaj się wykorzystać tego argumentu w zarządzaniu Twoim sklepem. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"5_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Nie ignoruj karty płatniczej</b> </p> <p> 79 % internautów płaci kartą bankową. Z PayPal, akceptujesz płatności dokonane kartą Visa i Mastercard. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"6_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Rozwiń swój biznes za granicą</b> </p> <p> Z PayPal możesz sprzedawać w 190 krajach i akceptować płatności w 24 walutach ! </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"7_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Nie przechodź obojętnie obok okazji Mobile!</b> </p> <p> 267% wzrost m-commerce w przeciągu 2 lat! PayPal i PrestaShop proponuje Ci darmowy szablon do realizacji płatności za pomocą telefonu. </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><section id=\"8_paypal\" class=\"panel\" style=\"display:none\"> <header class=\"panel-heading\"> <span class=\"icon-lightbulb\"></span> Tips of the day </header> <div class=\"panel-body\" style=\"padding:0\"> <img class=\"img-responsive\" src=\"https://storage.googleapis.com/production-gamification-assets/tips/paypal.png\" style=\"float:right; margin-left: 5px;\"> <img src=\"https://gamification.prestashop.com/api/getAdviceImg/518.png\"/> <p> <b>Stosuj róże kanały sprzedaży</b> </p> <p> Dopasuj funkcjonowanie sklepu do wymogów Twoich klientów : odkryj darmowy szablon mobile dla PrestaShop! </p> <span class=\"text-right\" style=\"float:right\"> <a class=\"btn btn-default\" target=\"_blank\" href=\"https://gamification.prestashop.com/get_advice_link.php?id_advice=518&url=http://addons.prestashop.com/pl/platnosci-prestashop-moduly/1748-paypal.html%3Futm_source%3Dback-office%26utm_medium%3Dtipoftheday%26utm_campaign%3Dpartenariats%26utm_content%3Dpaypal\"> dowiedz się więcej? </a> </span> </div> </section><script> $(document).ready( function () { $(\'#\'+rand(8)+\'_paypal\').show(); }); function rand(nbr){ return Math.floor(Math.random()*(nbr+1)); } </script> </div>');
/*!40000 ALTER TABLE `ps_advice_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_alias`
--

DROP TABLE IF EXISTS `ps_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_alias`
--

LOCK TABLES `ps_alias` WRITE;
/*!40000 ALTER TABLE `ps_alias` DISABLE KEYS */;
INSERT INTO `ps_alias` VALUES (1,'bloose','blouse',1),(2,'blues','blouse',1);
/*!40000 ALTER TABLE `ps_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attachment`
--

DROP TABLE IF EXISTS `ps_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attachment`
--

LOCK TABLES `ps_attachment` WRITE;
/*!40000 ALTER TABLE `ps_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attachment_lang`
--

DROP TABLE IF EXISTS `ps_attachment_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attachment_lang`
--

LOCK TABLES `ps_attachment_lang` WRITE;
/*!40000 ALTER TABLE `ps_attachment_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attachment_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute`
--

DROP TABLE IF EXISTS `ps_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute` (
  `id_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(11) NOT NULL,
  `color` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute`
--

LOCK TABLES `ps_attribute` WRITE;
/*!40000 ALTER TABLE `ps_attribute` DISABLE KEYS */;
INSERT INTO `ps_attribute` VALUES (5,2,'#AAB2BD',0),(6,2,'#CFC4A6',1),(7,2,'#f5f5dc',2),(8,2,'#ffffff',3),(9,2,'#faebd7',4),(10,2,'#E84C3D',5),(11,2,'#434A54',6),(12,2,'#C19A6B',7),(13,2,'#F39C11',8),(14,2,'#5D9CEC',9),(15,2,'#A0D468',10),(16,2,'#F1C40F',11),(17,2,'#964B00',12),(18,2,'#FCCACD',13),(26,1,'',0),(27,1,'',1),(28,1,'',2);
/*!40000 ALTER TABLE `ps_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group`
--

DROP TABLE IF EXISTS `ps_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group` (
  `id_attribute_group` int(11) NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL,
  `group_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group`
--

LOCK TABLES `ps_attribute_group` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group` DISABLE KEYS */;
INSERT INTO `ps_attribute_group` VALUES (1,0,'select',0),(2,1,'color',1);
/*!40000 ALTER TABLE `ps_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group_lang`
--

DROP TABLE IF EXISTS `ps_attribute_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group_lang` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `public_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`),
  KEY `IDX_4653726C67A664FB` (`id_attribute_group`),
  KEY `IDX_4653726CBA299860` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group_lang`
--

LOCK TABLES `ps_attribute_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group_lang` DISABLE KEYS */;
INSERT INTO `ps_attribute_group_lang` VALUES (1,1,'Rozmiar','Rozmiar'),(2,1,'Kolor','Kolor');
/*!40000 ALTER TABLE `ps_attribute_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group_shop`
--

DROP TABLE IF EXISTS `ps_attribute_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group_shop` (
  `id_attribute_group` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_shop`),
  KEY `IDX_DB30BAAC67A664FB` (`id_attribute_group`),
  KEY `IDX_DB30BAAC274A50A0` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group_shop`
--

LOCK TABLES `ps_attribute_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group_shop` DISABLE KEYS */;
INSERT INTO `ps_attribute_group_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_attribute_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_impact`
--

DROP TABLE IF EXISTS `ps_attribute_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_impact`
--

LOCK TABLES `ps_attribute_impact` WRITE;
/*!40000 ALTER TABLE `ps_attribute_impact` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attribute_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_lang`
--

DROP TABLE IF EXISTS `ps_attribute_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_lang` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `IDX_3ABE46A77A4F53DC` (`id_attribute`),
  KEY `IDX_3ABE46A7BA299860` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_lang`
--

LOCK TABLES `ps_attribute_lang` WRITE;
/*!40000 ALTER TABLE `ps_attribute_lang` DISABLE KEYS */;
INSERT INTO `ps_attribute_lang` VALUES (5,1,'Szary'),(6,1,'Szarobrązowy'),(7,1,'Beżowy'),(8,1,'Biały'),(9,1,'Złamana biel'),(10,1,'Czerwony'),(11,1,'czarny'),(12,1,'Wielbłąd'),(13,1,'Pomarańczowy'),(14,1,'Niebieski'),(15,1,'Zielony'),(16,1,'Żółty'),(17,1,'Brązowy'),(18,1,'Różowy'),(26,1,'44'),(27,1,'45'),(28,1,'46');
/*!40000 ALTER TABLE `ps_attribute_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_shop`
--

DROP TABLE IF EXISTS `ps_attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_shop` (
  `id_attribute` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_shop`),
  KEY `IDX_A7DD8E677A4F53DC` (`id_attribute`),
  KEY `IDX_A7DD8E67274A50A0` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_shop`
--

LOCK TABLES `ps_attribute_shop` WRITE;
/*!40000 ALTER TABLE `ps_attribute_shop` DISABLE KEYS */;
INSERT INTO `ps_attribute_shop` VALUES (5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(26,1),(27,1),(28,1);
/*!40000 ALTER TABLE `ps_attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_authorization_role`
--

DROP TABLE IF EXISTS `ps_authorization_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_authorization_role` (
  `id_authorization_role` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id_authorization_role`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=873 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_authorization_role`
--

LOCK TABLES `ps_authorization_role` WRITE;
/*!40000 ALTER TABLE `ps_authorization_role` DISABLE KEYS */;
INSERT INTO `ps_authorization_role` VALUES (785,'ROLE_MOD_MODULE_BLOCKREASSURANCE_CREATE'),(788,'ROLE_MOD_MODULE_BLOCKREASSURANCE_DELETE'),(786,'ROLE_MOD_MODULE_BLOCKREASSURANCE_READ'),(787,'ROLE_MOD_MODULE_BLOCKREASSURANCE_UPDATE'),(481,'ROLE_MOD_MODULE_CONTACTFORM_CREATE'),(484,'ROLE_MOD_MODULE_CONTACTFORM_DELETE'),(482,'ROLE_MOD_MODULE_CONTACTFORM_READ'),(483,'ROLE_MOD_MODULE_CONTACTFORM_UPDATE'),(485,'ROLE_MOD_MODULE_DASHACTIVITY_CREATE'),(488,'ROLE_MOD_MODULE_DASHACTIVITY_DELETE'),(486,'ROLE_MOD_MODULE_DASHACTIVITY_READ'),(487,'ROLE_MOD_MODULE_DASHACTIVITY_UPDATE'),(497,'ROLE_MOD_MODULE_DASHGOALS_CREATE'),(500,'ROLE_MOD_MODULE_DASHGOALS_DELETE'),(498,'ROLE_MOD_MODULE_DASHGOALS_READ'),(499,'ROLE_MOD_MODULE_DASHGOALS_UPDATE'),(501,'ROLE_MOD_MODULE_DASHPRODUCTS_CREATE'),(504,'ROLE_MOD_MODULE_DASHPRODUCTS_DELETE'),(502,'ROLE_MOD_MODULE_DASHPRODUCTS_READ'),(503,'ROLE_MOD_MODULE_DASHPRODUCTS_UPDATE'),(489,'ROLE_MOD_MODULE_DASHTRENDS_CREATE'),(492,'ROLE_MOD_MODULE_DASHTRENDS_DELETE'),(490,'ROLE_MOD_MODULE_DASHTRENDS_READ'),(491,'ROLE_MOD_MODULE_DASHTRENDS_UPDATE'),(733,'ROLE_MOD_MODULE_EMARKETING_CREATE'),(736,'ROLE_MOD_MODULE_EMARKETING_DELETE'),(734,'ROLE_MOD_MODULE_EMARKETING_READ'),(735,'ROLE_MOD_MODULE_EMARKETING_UPDATE'),(729,'ROLE_MOD_MODULE_GAMIFICATION_CREATE'),(732,'ROLE_MOD_MODULE_GAMIFICATION_DELETE'),(730,'ROLE_MOD_MODULE_GAMIFICATION_READ'),(731,'ROLE_MOD_MODULE_GAMIFICATION_UPDATE'),(505,'ROLE_MOD_MODULE_GRAPHNVD3_CREATE'),(508,'ROLE_MOD_MODULE_GRAPHNVD3_DELETE'),(506,'ROLE_MOD_MODULE_GRAPHNVD3_READ'),(507,'ROLE_MOD_MODULE_GRAPHNVD3_UPDATE'),(509,'ROLE_MOD_MODULE_GRIDHTML_CREATE'),(512,'ROLE_MOD_MODULE_GRIDHTML_DELETE'),(510,'ROLE_MOD_MODULE_GRIDHTML_READ'),(511,'ROLE_MOD_MODULE_GRIDHTML_UPDATE'),(513,'ROLE_MOD_MODULE_GSITEMAP_CREATE'),(516,'ROLE_MOD_MODULE_GSITEMAP_DELETE'),(514,'ROLE_MOD_MODULE_GSITEMAP_READ'),(515,'ROLE_MOD_MODULE_GSITEMAP_UPDATE'),(625,'ROLE_MOD_MODULE_PAGESNOTFOUND_CREATE'),(628,'ROLE_MOD_MODULE_PAGESNOTFOUND_DELETE'),(626,'ROLE_MOD_MODULE_PAGESNOTFOUND_READ'),(627,'ROLE_MOD_MODULE_PAGESNOTFOUND_UPDATE'),(793,'ROLE_MOD_MODULE_PAYPAL_CREATE'),(796,'ROLE_MOD_MODULE_PAYPAL_DELETE'),(794,'ROLE_MOD_MODULE_PAYPAL_READ'),(795,'ROLE_MOD_MODULE_PAYPAL_UPDATE'),(741,'ROLE_MOD_MODULE_PSADDONSCONNECT_CREATE'),(744,'ROLE_MOD_MODULE_PSADDONSCONNECT_DELETE'),(742,'ROLE_MOD_MODULE_PSADDONSCONNECT_READ'),(743,'ROLE_MOD_MODULE_PSADDONSCONNECT_UPDATE'),(745,'ROLE_MOD_MODULE_PSGDPR_CREATE'),(748,'ROLE_MOD_MODULE_PSGDPR_DELETE'),(746,'ROLE_MOD_MODULE_PSGDPR_READ'),(747,'ROLE_MOD_MODULE_PSGDPR_UPDATE'),(517,'ROLE_MOD_MODULE_PS_BANNER_CREATE'),(520,'ROLE_MOD_MODULE_PS_BANNER_DELETE'),(518,'ROLE_MOD_MODULE_PS_BANNER_READ'),(519,'ROLE_MOD_MODULE_PS_BANNER_UPDATE'),(849,'ROLE_MOD_MODULE_PS_BESTSELLERS_CREATE'),(852,'ROLE_MOD_MODULE_PS_BESTSELLERS_DELETE'),(850,'ROLE_MOD_MODULE_PS_BESTSELLERS_READ'),(851,'ROLE_MOD_MODULE_PS_BESTSELLERS_UPDATE'),(777,'ROLE_MOD_MODULE_PS_BUYBUTTONLITE_CREATE'),(780,'ROLE_MOD_MODULE_PS_BUYBUTTONLITE_DELETE'),(778,'ROLE_MOD_MODULE_PS_BUYBUTTONLITE_READ'),(779,'ROLE_MOD_MODULE_PS_BUYBUTTONLITE_UPDATE'),(833,'ROLE_MOD_MODULE_PS_CASHONDELIVERY_CREATE'),(836,'ROLE_MOD_MODULE_PS_CASHONDELIVERY_DELETE'),(834,'ROLE_MOD_MODULE_PS_CASHONDELIVERY_READ'),(835,'ROLE_MOD_MODULE_PS_CASHONDELIVERY_UPDATE'),(521,'ROLE_MOD_MODULE_PS_CATEGORYTREE_CREATE'),(524,'ROLE_MOD_MODULE_PS_CATEGORYTREE_DELETE'),(522,'ROLE_MOD_MODULE_PS_CATEGORYTREE_READ'),(523,'ROLE_MOD_MODULE_PS_CATEGORYTREE_UPDATE'),(529,'ROLE_MOD_MODULE_PS_CONTACTINFO_CREATE'),(532,'ROLE_MOD_MODULE_PS_CONTACTINFO_DELETE'),(530,'ROLE_MOD_MODULE_PS_CONTACTINFO_READ'),(531,'ROLE_MOD_MODULE_PS_CONTACTINFO_UPDATE'),(533,'ROLE_MOD_MODULE_PS_CURRENCYSELECTOR_CREATE'),(536,'ROLE_MOD_MODULE_PS_CURRENCYSELECTOR_DELETE'),(534,'ROLE_MOD_MODULE_PS_CURRENCYSELECTOR_READ'),(535,'ROLE_MOD_MODULE_PS_CURRENCYSELECTOR_UPDATE'),(537,'ROLE_MOD_MODULE_PS_CUSTOMERACCOUNTLINKS_CREATE'),(540,'ROLE_MOD_MODULE_PS_CUSTOMERACCOUNTLINKS_DELETE'),(538,'ROLE_MOD_MODULE_PS_CUSTOMERACCOUNTLINKS_READ'),(539,'ROLE_MOD_MODULE_PS_CUSTOMERACCOUNTLINKS_UPDATE'),(541,'ROLE_MOD_MODULE_PS_CUSTOMERSIGNIN_CREATE'),(544,'ROLE_MOD_MODULE_PS_CUSTOMERSIGNIN_DELETE'),(542,'ROLE_MOD_MODULE_PS_CUSTOMERSIGNIN_READ'),(543,'ROLE_MOD_MODULE_PS_CUSTOMERSIGNIN_UPDATE'),(545,'ROLE_MOD_MODULE_PS_CUSTOMTEXT_CREATE'),(548,'ROLE_MOD_MODULE_PS_CUSTOMTEXT_DELETE'),(546,'ROLE_MOD_MODULE_PS_CUSTOMTEXT_READ'),(547,'ROLE_MOD_MODULE_PS_CUSTOMTEXT_UPDATE'),(549,'ROLE_MOD_MODULE_PS_EMAILSUBSCRIPTION_CREATE'),(552,'ROLE_MOD_MODULE_PS_EMAILSUBSCRIPTION_DELETE'),(550,'ROLE_MOD_MODULE_PS_EMAILSUBSCRIPTION_READ'),(551,'ROLE_MOD_MODULE_PS_EMAILSUBSCRIPTION_UPDATE'),(789,'ROLE_MOD_MODULE_PS_FACETEDSEARCH_CREATE'),(792,'ROLE_MOD_MODULE_PS_FACETEDSEARCH_DELETE'),(790,'ROLE_MOD_MODULE_PS_FACETEDSEARCH_READ'),(791,'ROLE_MOD_MODULE_PS_FACETEDSEARCH_UPDATE'),(557,'ROLE_MOD_MODULE_PS_FAVICONNOTIFICATIONBO_CREATE'),(560,'ROLE_MOD_MODULE_PS_FAVICONNOTIFICATIONBO_DELETE'),(558,'ROLE_MOD_MODULE_PS_FAVICONNOTIFICATIONBO_READ'),(559,'ROLE_MOD_MODULE_PS_FAVICONNOTIFICATIONBO_UPDATE'),(565,'ROLE_MOD_MODULE_PS_FEATUREDPRODUCTS_CREATE'),(568,'ROLE_MOD_MODULE_PS_FEATUREDPRODUCTS_DELETE'),(566,'ROLE_MOD_MODULE_PS_FEATUREDPRODUCTS_READ'),(567,'ROLE_MOD_MODULE_PS_FEATUREDPRODUCTS_UPDATE'),(853,'ROLE_MOD_MODULE_PS_GOOGLEANALYTICS_CREATE'),(856,'ROLE_MOD_MODULE_PS_GOOGLEANALYTICS_DELETE'),(854,'ROLE_MOD_MODULE_PS_GOOGLEANALYTICS_READ'),(855,'ROLE_MOD_MODULE_PS_GOOGLEANALYTICS_UPDATE'),(569,'ROLE_MOD_MODULE_PS_IMAGESLIDER_CREATE'),(572,'ROLE_MOD_MODULE_PS_IMAGESLIDER_DELETE'),(570,'ROLE_MOD_MODULE_PS_IMAGESLIDER_READ'),(571,'ROLE_MOD_MODULE_PS_IMAGESLIDER_UPDATE'),(573,'ROLE_MOD_MODULE_PS_LANGUAGESELECTOR_CREATE'),(576,'ROLE_MOD_MODULE_PS_LANGUAGESELECTOR_DELETE'),(574,'ROLE_MOD_MODULE_PS_LANGUAGESELECTOR_READ'),(575,'ROLE_MOD_MODULE_PS_LANGUAGESELECTOR_UPDATE'),(581,'ROLE_MOD_MODULE_PS_LINKLIST_CREATE'),(584,'ROLE_MOD_MODULE_PS_LINKLIST_DELETE'),(582,'ROLE_MOD_MODULE_PS_LINKLIST_READ'),(583,'ROLE_MOD_MODULE_PS_LINKLIST_UPDATE'),(585,'ROLE_MOD_MODULE_PS_MAINMENU_CREATE'),(588,'ROLE_MOD_MODULE_PS_MAINMENU_DELETE'),(586,'ROLE_MOD_MODULE_PS_MAINMENU_READ'),(587,'ROLE_MOD_MODULE_PS_MAINMENU_UPDATE'),(757,'ROLE_MOD_MODULE_PS_MBO_CREATE'),(760,'ROLE_MOD_MODULE_PS_MBO_DELETE'),(758,'ROLE_MOD_MODULE_PS_MBO_READ'),(759,'ROLE_MOD_MODULE_PS_MBO_UPDATE'),(845,'ROLE_MOD_MODULE_PS_NEWPRODUCTS_CREATE'),(848,'ROLE_MOD_MODULE_PS_NEWPRODUCTS_DELETE'),(846,'ROLE_MOD_MODULE_PS_NEWPRODUCTS_READ'),(847,'ROLE_MOD_MODULE_PS_NEWPRODUCTS_UPDATE'),(857,'ROLE_MOD_MODULE_PS_REMINDER_CREATE'),(860,'ROLE_MOD_MODULE_PS_REMINDER_DELETE'),(858,'ROLE_MOD_MODULE_PS_REMINDER_READ'),(859,'ROLE_MOD_MODULE_PS_REMINDER_UPDATE'),(589,'ROLE_MOD_MODULE_PS_SEARCHBAR_CREATE'),(592,'ROLE_MOD_MODULE_PS_SEARCHBAR_DELETE'),(590,'ROLE_MOD_MODULE_PS_SEARCHBAR_READ'),(591,'ROLE_MOD_MODULE_PS_SEARCHBAR_UPDATE'),(593,'ROLE_MOD_MODULE_PS_SHAREBUTTONS_CREATE'),(596,'ROLE_MOD_MODULE_PS_SHAREBUTTONS_DELETE'),(594,'ROLE_MOD_MODULE_PS_SHAREBUTTONS_READ'),(595,'ROLE_MOD_MODULE_PS_SHAREBUTTONS_UPDATE'),(597,'ROLE_MOD_MODULE_PS_SHOPPINGCART_CREATE'),(600,'ROLE_MOD_MODULE_PS_SHOPPINGCART_DELETE'),(598,'ROLE_MOD_MODULE_PS_SHOPPINGCART_READ'),(599,'ROLE_MOD_MODULE_PS_SHOPPINGCART_UPDATE'),(601,'ROLE_MOD_MODULE_PS_SOCIALFOLLOW_CREATE'),(604,'ROLE_MOD_MODULE_PS_SOCIALFOLLOW_DELETE'),(602,'ROLE_MOD_MODULE_PS_SOCIALFOLLOW_READ'),(603,'ROLE_MOD_MODULE_PS_SOCIALFOLLOW_UPDATE'),(841,'ROLE_MOD_MODULE_PS_SPECIALS_CREATE'),(844,'ROLE_MOD_MODULE_PS_SPECIALS_DELETE'),(842,'ROLE_MOD_MODULE_PS_SPECIALS_READ'),(843,'ROLE_MOD_MODULE_PS_SPECIALS_UPDATE'),(605,'ROLE_MOD_MODULE_PS_THEMECUSTO_CREATE'),(608,'ROLE_MOD_MODULE_PS_THEMECUSTO_DELETE'),(606,'ROLE_MOD_MODULE_PS_THEMECUSTO_READ'),(607,'ROLE_MOD_MODULE_PS_THEMECUSTO_UPDATE'),(837,'ROLE_MOD_MODULE_PS_WIREPAYMENT_CREATE'),(840,'ROLE_MOD_MODULE_PS_WIREPAYMENT_DELETE'),(838,'ROLE_MOD_MODULE_PS_WIREPAYMENT_READ'),(839,'ROLE_MOD_MODULE_PS_WIREPAYMENT_UPDATE'),(629,'ROLE_MOD_MODULE_SEKEYWORDS_CREATE'),(632,'ROLE_MOD_MODULE_SEKEYWORDS_DELETE'),(630,'ROLE_MOD_MODULE_SEKEYWORDS_READ'),(631,'ROLE_MOD_MODULE_SEKEYWORDS_UPDATE'),(633,'ROLE_MOD_MODULE_STATSBESTCATEGORIES_CREATE'),(636,'ROLE_MOD_MODULE_STATSBESTCATEGORIES_DELETE'),(634,'ROLE_MOD_MODULE_STATSBESTCATEGORIES_READ'),(635,'ROLE_MOD_MODULE_STATSBESTCATEGORIES_UPDATE'),(637,'ROLE_MOD_MODULE_STATSBESTCUSTOMERS_CREATE'),(640,'ROLE_MOD_MODULE_STATSBESTCUSTOMERS_DELETE'),(638,'ROLE_MOD_MODULE_STATSBESTCUSTOMERS_READ'),(639,'ROLE_MOD_MODULE_STATSBESTCUSTOMERS_UPDATE'),(641,'ROLE_MOD_MODULE_STATSBESTPRODUCTS_CREATE'),(644,'ROLE_MOD_MODULE_STATSBESTPRODUCTS_DELETE'),(642,'ROLE_MOD_MODULE_STATSBESTPRODUCTS_READ'),(643,'ROLE_MOD_MODULE_STATSBESTPRODUCTS_UPDATE'),(645,'ROLE_MOD_MODULE_STATSBESTSUPPLIERS_CREATE'),(648,'ROLE_MOD_MODULE_STATSBESTSUPPLIERS_DELETE'),(646,'ROLE_MOD_MODULE_STATSBESTSUPPLIERS_READ'),(647,'ROLE_MOD_MODULE_STATSBESTSUPPLIERS_UPDATE'),(649,'ROLE_MOD_MODULE_STATSBESTVOUCHERS_CREATE'),(652,'ROLE_MOD_MODULE_STATSBESTVOUCHERS_DELETE'),(650,'ROLE_MOD_MODULE_STATSBESTVOUCHERS_READ'),(651,'ROLE_MOD_MODULE_STATSBESTVOUCHERS_UPDATE'),(653,'ROLE_MOD_MODULE_STATSCARRIER_CREATE'),(656,'ROLE_MOD_MODULE_STATSCARRIER_DELETE'),(654,'ROLE_MOD_MODULE_STATSCARRIER_READ'),(655,'ROLE_MOD_MODULE_STATSCARRIER_UPDATE'),(657,'ROLE_MOD_MODULE_STATSCATALOG_CREATE'),(660,'ROLE_MOD_MODULE_STATSCATALOG_DELETE'),(658,'ROLE_MOD_MODULE_STATSCATALOG_READ'),(659,'ROLE_MOD_MODULE_STATSCATALOG_UPDATE'),(661,'ROLE_MOD_MODULE_STATSCHECKUP_CREATE'),(664,'ROLE_MOD_MODULE_STATSCHECKUP_DELETE'),(662,'ROLE_MOD_MODULE_STATSCHECKUP_READ'),(663,'ROLE_MOD_MODULE_STATSCHECKUP_UPDATE'),(665,'ROLE_MOD_MODULE_STATSDATA_CREATE'),(668,'ROLE_MOD_MODULE_STATSDATA_DELETE'),(666,'ROLE_MOD_MODULE_STATSDATA_READ'),(667,'ROLE_MOD_MODULE_STATSDATA_UPDATE'),(669,'ROLE_MOD_MODULE_STATSEQUIPMENT_CREATE'),(672,'ROLE_MOD_MODULE_STATSEQUIPMENT_DELETE'),(670,'ROLE_MOD_MODULE_STATSEQUIPMENT_READ'),(671,'ROLE_MOD_MODULE_STATSEQUIPMENT_UPDATE'),(673,'ROLE_MOD_MODULE_STATSFORECAST_CREATE'),(676,'ROLE_MOD_MODULE_STATSFORECAST_DELETE'),(674,'ROLE_MOD_MODULE_STATSFORECAST_READ'),(675,'ROLE_MOD_MODULE_STATSFORECAST_UPDATE'),(677,'ROLE_MOD_MODULE_STATSLIVE_CREATE'),(680,'ROLE_MOD_MODULE_STATSLIVE_DELETE'),(678,'ROLE_MOD_MODULE_STATSLIVE_READ'),(679,'ROLE_MOD_MODULE_STATSLIVE_UPDATE'),(681,'ROLE_MOD_MODULE_STATSNEWSLETTER_CREATE'),(684,'ROLE_MOD_MODULE_STATSNEWSLETTER_DELETE'),(682,'ROLE_MOD_MODULE_STATSNEWSLETTER_READ'),(683,'ROLE_MOD_MODULE_STATSNEWSLETTER_UPDATE'),(685,'ROLE_MOD_MODULE_STATSORIGIN_CREATE'),(688,'ROLE_MOD_MODULE_STATSORIGIN_DELETE'),(686,'ROLE_MOD_MODULE_STATSORIGIN_READ'),(687,'ROLE_MOD_MODULE_STATSORIGIN_UPDATE'),(689,'ROLE_MOD_MODULE_STATSPERSONALINFOS_CREATE'),(692,'ROLE_MOD_MODULE_STATSPERSONALINFOS_DELETE'),(690,'ROLE_MOD_MODULE_STATSPERSONALINFOS_READ'),(691,'ROLE_MOD_MODULE_STATSPERSONALINFOS_UPDATE'),(693,'ROLE_MOD_MODULE_STATSPRODUCT_CREATE'),(696,'ROLE_MOD_MODULE_STATSPRODUCT_DELETE'),(694,'ROLE_MOD_MODULE_STATSPRODUCT_READ'),(695,'ROLE_MOD_MODULE_STATSPRODUCT_UPDATE'),(697,'ROLE_MOD_MODULE_STATSREGISTRATIONS_CREATE'),(700,'ROLE_MOD_MODULE_STATSREGISTRATIONS_DELETE'),(698,'ROLE_MOD_MODULE_STATSREGISTRATIONS_READ'),(699,'ROLE_MOD_MODULE_STATSREGISTRATIONS_UPDATE'),(701,'ROLE_MOD_MODULE_STATSSALES_CREATE'),(704,'ROLE_MOD_MODULE_STATSSALES_DELETE'),(702,'ROLE_MOD_MODULE_STATSSALES_READ'),(703,'ROLE_MOD_MODULE_STATSSALES_UPDATE'),(705,'ROLE_MOD_MODULE_STATSSEARCH_CREATE'),(708,'ROLE_MOD_MODULE_STATSSEARCH_DELETE'),(706,'ROLE_MOD_MODULE_STATSSEARCH_READ'),(707,'ROLE_MOD_MODULE_STATSSEARCH_UPDATE'),(709,'ROLE_MOD_MODULE_STATSSTOCK_CREATE'),(712,'ROLE_MOD_MODULE_STATSSTOCK_DELETE'),(710,'ROLE_MOD_MODULE_STATSSTOCK_READ'),(711,'ROLE_MOD_MODULE_STATSSTOCK_UPDATE'),(713,'ROLE_MOD_MODULE_STATSVISITS_CREATE'),(716,'ROLE_MOD_MODULE_STATSVISITS_DELETE'),(714,'ROLE_MOD_MODULE_STATSVISITS_READ'),(715,'ROLE_MOD_MODULE_STATSVISITS_UPDATE'),(717,'ROLE_MOD_MODULE_WELCOME_CREATE'),(720,'ROLE_MOD_MODULE_WELCOME_DELETE'),(718,'ROLE_MOD_MODULE_WELCOME_READ'),(719,'ROLE_MOD_MODULE_WELCOME_UPDATE'),(1,'ROLE_MOD_TAB_ADMINACCESS_CREATE'),(4,'ROLE_MOD_TAB_ADMINACCESS_DELETE'),(2,'ROLE_MOD_TAB_ADMINACCESS_READ'),(3,'ROLE_MOD_TAB_ADMINACCESS_UPDATE'),(5,'ROLE_MOD_TAB_ADMINADDONSCATALOG_CREATE'),(8,'ROLE_MOD_TAB_ADMINADDONSCATALOG_DELETE'),(6,'ROLE_MOD_TAB_ADMINADDONSCATALOG_READ'),(7,'ROLE_MOD_TAB_ADMINADDONSCATALOG_UPDATE'),(9,'ROLE_MOD_TAB_ADMINADDRESSES_CREATE'),(12,'ROLE_MOD_TAB_ADMINADDRESSES_DELETE'),(10,'ROLE_MOD_TAB_ADMINADDRESSES_READ'),(11,'ROLE_MOD_TAB_ADMINADDRESSES_UPDATE'),(13,'ROLE_MOD_TAB_ADMINADMINPREFERENCES_CREATE'),(16,'ROLE_MOD_TAB_ADMINADMINPREFERENCES_DELETE'),(14,'ROLE_MOD_TAB_ADMINADMINPREFERENCES_READ'),(15,'ROLE_MOD_TAB_ADMINADMINPREFERENCES_UPDATE'),(17,'ROLE_MOD_TAB_ADMINADVANCEDPARAMETERS_CREATE'),(20,'ROLE_MOD_TAB_ADMINADVANCEDPARAMETERS_DELETE'),(18,'ROLE_MOD_TAB_ADMINADVANCEDPARAMETERS_READ'),(19,'ROLE_MOD_TAB_ADMINADVANCEDPARAMETERS_UPDATE'),(749,'ROLE_MOD_TAB_ADMINAJAXPSGDPR_CREATE'),(752,'ROLE_MOD_TAB_ADMINAJAXPSGDPR_DELETE'),(750,'ROLE_MOD_TAB_ADMINAJAXPSGDPR_READ'),(751,'ROLE_MOD_TAB_ADMINAJAXPSGDPR_UPDATE'),(781,'ROLE_MOD_TAB_ADMINAJAXPS_BUYBUTTONLITE_CREATE'),(784,'ROLE_MOD_TAB_ADMINAJAXPS_BUYBUTTONLITE_DELETE'),(782,'ROLE_MOD_TAB_ADMINAJAXPS_BUYBUTTONLITE_READ'),(783,'ROLE_MOD_TAB_ADMINAJAXPS_BUYBUTTONLITE_UPDATE'),(21,'ROLE_MOD_TAB_ADMINATTACHMENTS_CREATE'),(24,'ROLE_MOD_TAB_ADMINATTACHMENTS_DELETE'),(22,'ROLE_MOD_TAB_ADMINATTACHMENTS_READ'),(23,'ROLE_MOD_TAB_ADMINATTACHMENTS_UPDATE'),(25,'ROLE_MOD_TAB_ADMINATTRIBUTESGROUPS_CREATE'),(28,'ROLE_MOD_TAB_ADMINATTRIBUTESGROUPS_DELETE'),(26,'ROLE_MOD_TAB_ADMINATTRIBUTESGROUPS_READ'),(27,'ROLE_MOD_TAB_ADMINATTRIBUTESGROUPS_UPDATE'),(29,'ROLE_MOD_TAB_ADMINBACKUP_CREATE'),(32,'ROLE_MOD_TAB_ADMINBACKUP_DELETE'),(30,'ROLE_MOD_TAB_ADMINBACKUP_READ'),(31,'ROLE_MOD_TAB_ADMINBACKUP_UPDATE'),(33,'ROLE_MOD_TAB_ADMINCARRIERS_CREATE'),(36,'ROLE_MOD_TAB_ADMINCARRIERS_DELETE'),(34,'ROLE_MOD_TAB_ADMINCARRIERS_READ'),(35,'ROLE_MOD_TAB_ADMINCARRIERS_UPDATE'),(37,'ROLE_MOD_TAB_ADMINCARTRULES_CREATE'),(40,'ROLE_MOD_TAB_ADMINCARTRULES_DELETE'),(38,'ROLE_MOD_TAB_ADMINCARTRULES_READ'),(39,'ROLE_MOD_TAB_ADMINCARTRULES_UPDATE'),(41,'ROLE_MOD_TAB_ADMINCARTS_CREATE'),(44,'ROLE_MOD_TAB_ADMINCARTS_DELETE'),(42,'ROLE_MOD_TAB_ADMINCARTS_READ'),(43,'ROLE_MOD_TAB_ADMINCARTS_UPDATE'),(45,'ROLE_MOD_TAB_ADMINCATALOG_CREATE'),(48,'ROLE_MOD_TAB_ADMINCATALOG_DELETE'),(46,'ROLE_MOD_TAB_ADMINCATALOG_READ'),(47,'ROLE_MOD_TAB_ADMINCATALOG_UPDATE'),(49,'ROLE_MOD_TAB_ADMINCATEGORIES_CREATE'),(52,'ROLE_MOD_TAB_ADMINCATEGORIES_DELETE'),(50,'ROLE_MOD_TAB_ADMINCATEGORIES_READ'),(51,'ROLE_MOD_TAB_ADMINCATEGORIES_UPDATE'),(53,'ROLE_MOD_TAB_ADMINCMSCONTENT_CREATE'),(56,'ROLE_MOD_TAB_ADMINCMSCONTENT_DELETE'),(54,'ROLE_MOD_TAB_ADMINCMSCONTENT_READ'),(55,'ROLE_MOD_TAB_ADMINCMSCONTENT_UPDATE'),(561,'ROLE_MOD_TAB_ADMINCONFIGUREFAVICONBO_CREATE'),(564,'ROLE_MOD_TAB_ADMINCONFIGUREFAVICONBO_DELETE'),(562,'ROLE_MOD_TAB_ADMINCONFIGUREFAVICONBO_READ'),(563,'ROLE_MOD_TAB_ADMINCONFIGUREFAVICONBO_UPDATE'),(57,'ROLE_MOD_TAB_ADMINCONTACTS_CREATE'),(60,'ROLE_MOD_TAB_ADMINCONTACTS_DELETE'),(58,'ROLE_MOD_TAB_ADMINCONTACTS_READ'),(59,'ROLE_MOD_TAB_ADMINCONTACTS_UPDATE'),(61,'ROLE_MOD_TAB_ADMINCOUNTRIES_CREATE'),(64,'ROLE_MOD_TAB_ADMINCOUNTRIES_DELETE'),(62,'ROLE_MOD_TAB_ADMINCOUNTRIES_READ'),(63,'ROLE_MOD_TAB_ADMINCOUNTRIES_UPDATE'),(65,'ROLE_MOD_TAB_ADMINCURRENCIES_CREATE'),(68,'ROLE_MOD_TAB_ADMINCURRENCIES_DELETE'),(66,'ROLE_MOD_TAB_ADMINCURRENCIES_READ'),(67,'ROLE_MOD_TAB_ADMINCURRENCIES_UPDATE'),(69,'ROLE_MOD_TAB_ADMINCUSTOMERPREFERENCES_CREATE'),(72,'ROLE_MOD_TAB_ADMINCUSTOMERPREFERENCES_DELETE'),(70,'ROLE_MOD_TAB_ADMINCUSTOMERPREFERENCES_READ'),(71,'ROLE_MOD_TAB_ADMINCUSTOMERPREFERENCES_UPDATE'),(73,'ROLE_MOD_TAB_ADMINCUSTOMERS_CREATE'),(76,'ROLE_MOD_TAB_ADMINCUSTOMERS_DELETE'),(74,'ROLE_MOD_TAB_ADMINCUSTOMERS_READ'),(75,'ROLE_MOD_TAB_ADMINCUSTOMERS_UPDATE'),(77,'ROLE_MOD_TAB_ADMINCUSTOMERTHREADS_CREATE'),(80,'ROLE_MOD_TAB_ADMINCUSTOMERTHREADS_DELETE'),(78,'ROLE_MOD_TAB_ADMINCUSTOMERTHREADS_READ'),(79,'ROLE_MOD_TAB_ADMINCUSTOMERTHREADS_UPDATE'),(81,'ROLE_MOD_TAB_ADMINDASHBOARD_CREATE'),(84,'ROLE_MOD_TAB_ADMINDASHBOARD_DELETE'),(82,'ROLE_MOD_TAB_ADMINDASHBOARD_READ'),(83,'ROLE_MOD_TAB_ADMINDASHBOARD_UPDATE'),(493,'ROLE_MOD_TAB_ADMINDASHGOALS_CREATE'),(496,'ROLE_MOD_TAB_ADMINDASHGOALS_DELETE'),(494,'ROLE_MOD_TAB_ADMINDASHGOALS_READ'),(495,'ROLE_MOD_TAB_ADMINDASHGOALS_UPDATE'),(85,'ROLE_MOD_TAB_ADMINDELIVERYSLIP_CREATE'),(88,'ROLE_MOD_TAB_ADMINDELIVERYSLIP_DELETE'),(86,'ROLE_MOD_TAB_ADMINDELIVERYSLIP_READ'),(87,'ROLE_MOD_TAB_ADMINDELIVERYSLIP_UPDATE'),(753,'ROLE_MOD_TAB_ADMINDOWNLOADINVOICESPSGDPR_CREATE'),(756,'ROLE_MOD_TAB_ADMINDOWNLOADINVOICESPSGDPR_DELETE'),(754,'ROLE_MOD_TAB_ADMINDOWNLOADINVOICESPSGDPR_READ'),(755,'ROLE_MOD_TAB_ADMINDOWNLOADINVOICESPSGDPR_UPDATE'),(89,'ROLE_MOD_TAB_ADMINEMAILS_CREATE'),(92,'ROLE_MOD_TAB_ADMINEMAILS_DELETE'),(90,'ROLE_MOD_TAB_ADMINEMAILS_READ'),(91,'ROLE_MOD_TAB_ADMINEMAILS_UPDATE'),(737,'ROLE_MOD_TAB_ADMINEMARKETING_CREATE'),(740,'ROLE_MOD_TAB_ADMINEMARKETING_DELETE'),(738,'ROLE_MOD_TAB_ADMINEMARKETING_READ'),(739,'ROLE_MOD_TAB_ADMINEMARKETING_UPDATE'),(93,'ROLE_MOD_TAB_ADMINEMPLOYEES_CREATE'),(96,'ROLE_MOD_TAB_ADMINEMPLOYEES_DELETE'),(94,'ROLE_MOD_TAB_ADMINEMPLOYEES_READ'),(95,'ROLE_MOD_TAB_ADMINEMPLOYEES_UPDATE'),(97,'ROLE_MOD_TAB_ADMINFEATURES_CREATE'),(100,'ROLE_MOD_TAB_ADMINFEATURES_DELETE'),(98,'ROLE_MOD_TAB_ADMINFEATURES_READ'),(99,'ROLE_MOD_TAB_ADMINFEATURES_UPDATE'),(725,'ROLE_MOD_TAB_ADMINGAMIFICATION_CREATE'),(728,'ROLE_MOD_TAB_ADMINGAMIFICATION_DELETE'),(726,'ROLE_MOD_TAB_ADMINGAMIFICATION_READ'),(727,'ROLE_MOD_TAB_ADMINGAMIFICATION_UPDATE'),(101,'ROLE_MOD_TAB_ADMINGENDERS_CREATE'),(104,'ROLE_MOD_TAB_ADMINGENDERS_DELETE'),(102,'ROLE_MOD_TAB_ADMINGENDERS_READ'),(103,'ROLE_MOD_TAB_ADMINGENDERS_UPDATE'),(105,'ROLE_MOD_TAB_ADMINGEOLOCATION_CREATE'),(108,'ROLE_MOD_TAB_ADMINGEOLOCATION_DELETE'),(106,'ROLE_MOD_TAB_ADMINGEOLOCATION_READ'),(107,'ROLE_MOD_TAB_ADMINGEOLOCATION_UPDATE'),(109,'ROLE_MOD_TAB_ADMINGROUPS_CREATE'),(112,'ROLE_MOD_TAB_ADMINGROUPS_DELETE'),(110,'ROLE_MOD_TAB_ADMINGROUPS_READ'),(111,'ROLE_MOD_TAB_ADMINGROUPS_UPDATE'),(113,'ROLE_MOD_TAB_ADMINIMAGES_CREATE'),(116,'ROLE_MOD_TAB_ADMINIMAGES_DELETE'),(114,'ROLE_MOD_TAB_ADMINIMAGES_READ'),(115,'ROLE_MOD_TAB_ADMINIMAGES_UPDATE'),(117,'ROLE_MOD_TAB_ADMINIMPORT_CREATE'),(120,'ROLE_MOD_TAB_ADMINIMPORT_DELETE'),(118,'ROLE_MOD_TAB_ADMINIMPORT_READ'),(119,'ROLE_MOD_TAB_ADMINIMPORT_UPDATE'),(121,'ROLE_MOD_TAB_ADMININFORMATION_CREATE'),(124,'ROLE_MOD_TAB_ADMININFORMATION_DELETE'),(122,'ROLE_MOD_TAB_ADMININFORMATION_READ'),(123,'ROLE_MOD_TAB_ADMININFORMATION_UPDATE'),(125,'ROLE_MOD_TAB_ADMININTERNATIONAL_CREATE'),(128,'ROLE_MOD_TAB_ADMININTERNATIONAL_DELETE'),(126,'ROLE_MOD_TAB_ADMININTERNATIONAL_READ'),(127,'ROLE_MOD_TAB_ADMININTERNATIONAL_UPDATE'),(129,'ROLE_MOD_TAB_ADMININVOICES_CREATE'),(132,'ROLE_MOD_TAB_ADMININVOICES_DELETE'),(130,'ROLE_MOD_TAB_ADMININVOICES_READ'),(131,'ROLE_MOD_TAB_ADMININVOICES_UPDATE'),(133,'ROLE_MOD_TAB_ADMINLANGUAGES_CREATE'),(136,'ROLE_MOD_TAB_ADMINLANGUAGES_DELETE'),(134,'ROLE_MOD_TAB_ADMINLANGUAGES_READ'),(135,'ROLE_MOD_TAB_ADMINLANGUAGES_UPDATE'),(137,'ROLE_MOD_TAB_ADMINLINKWIDGET_CREATE'),(140,'ROLE_MOD_TAB_ADMINLINKWIDGET_DELETE'),(138,'ROLE_MOD_TAB_ADMINLINKWIDGET_READ'),(139,'ROLE_MOD_TAB_ADMINLINKWIDGET_UPDATE'),(141,'ROLE_MOD_TAB_ADMINLOCALIZATION_CREATE'),(144,'ROLE_MOD_TAB_ADMINLOCALIZATION_DELETE'),(142,'ROLE_MOD_TAB_ADMINLOCALIZATION_READ'),(143,'ROLE_MOD_TAB_ADMINLOCALIZATION_UPDATE'),(145,'ROLE_MOD_TAB_ADMINLOGS_CREATE'),(148,'ROLE_MOD_TAB_ADMINLOGS_DELETE'),(146,'ROLE_MOD_TAB_ADMINLOGS_READ'),(147,'ROLE_MOD_TAB_ADMINLOGS_UPDATE'),(465,'ROLE_MOD_TAB_ADMINMAILTHEME_CREATE'),(468,'ROLE_MOD_TAB_ADMINMAILTHEME_DELETE'),(466,'ROLE_MOD_TAB_ADMINMAILTHEME_READ'),(467,'ROLE_MOD_TAB_ADMINMAILTHEME_UPDATE'),(149,'ROLE_MOD_TAB_ADMINMAINTENANCE_CREATE'),(152,'ROLE_MOD_TAB_ADMINMAINTENANCE_DELETE'),(150,'ROLE_MOD_TAB_ADMINMAINTENANCE_READ'),(151,'ROLE_MOD_TAB_ADMINMAINTENANCE_UPDATE'),(153,'ROLE_MOD_TAB_ADMINMANUFACTURERS_CREATE'),(156,'ROLE_MOD_TAB_ADMINMANUFACTURERS_DELETE'),(154,'ROLE_MOD_TAB_ADMINMANUFACTURERS_READ'),(155,'ROLE_MOD_TAB_ADMINMANUFACTURERS_UPDATE'),(157,'ROLE_MOD_TAB_ADMINMETA_CREATE'),(160,'ROLE_MOD_TAB_ADMINMETA_DELETE'),(158,'ROLE_MOD_TAB_ADMINMETA_READ'),(159,'ROLE_MOD_TAB_ADMINMETA_UPDATE'),(473,'ROLE_MOD_TAB_ADMINMODULESCATALOG_CREATE'),(476,'ROLE_MOD_TAB_ADMINMODULESCATALOG_DELETE'),(474,'ROLE_MOD_TAB_ADMINMODULESCATALOG_READ'),(475,'ROLE_MOD_TAB_ADMINMODULESCATALOG_UPDATE'),(469,'ROLE_MOD_TAB_ADMINMODULESMANAGE_CREATE'),(472,'ROLE_MOD_TAB_ADMINMODULESMANAGE_DELETE'),(470,'ROLE_MOD_TAB_ADMINMODULESMANAGE_READ'),(471,'ROLE_MOD_TAB_ADMINMODULESMANAGE_UPDATE'),(173,'ROLE_MOD_TAB_ADMINMODULESNOTIFICATIONS_CREATE'),(176,'ROLE_MOD_TAB_ADMINMODULESNOTIFICATIONS_DELETE'),(174,'ROLE_MOD_TAB_ADMINMODULESNOTIFICATIONS_READ'),(175,'ROLE_MOD_TAB_ADMINMODULESNOTIFICATIONS_UPDATE'),(165,'ROLE_MOD_TAB_ADMINMODULESPOSITIONS_CREATE'),(168,'ROLE_MOD_TAB_ADMINMODULESPOSITIONS_DELETE'),(166,'ROLE_MOD_TAB_ADMINMODULESPOSITIONS_READ'),(167,'ROLE_MOD_TAB_ADMINMODULESPOSITIONS_UPDATE'),(177,'ROLE_MOD_TAB_ADMINMODULESSF_CREATE'),(180,'ROLE_MOD_TAB_ADMINMODULESSF_DELETE'),(178,'ROLE_MOD_TAB_ADMINMODULESSF_READ'),(179,'ROLE_MOD_TAB_ADMINMODULESSF_UPDATE'),(169,'ROLE_MOD_TAB_ADMINMODULESUPDATES_CREATE'),(172,'ROLE_MOD_TAB_ADMINMODULESUPDATES_DELETE'),(170,'ROLE_MOD_TAB_ADMINMODULESUPDATES_READ'),(171,'ROLE_MOD_TAB_ADMINMODULESUPDATES_UPDATE'),(161,'ROLE_MOD_TAB_ADMINMODULES_CREATE'),(164,'ROLE_MOD_TAB_ADMINMODULES_DELETE'),(162,'ROLE_MOD_TAB_ADMINMODULES_READ'),(163,'ROLE_MOD_TAB_ADMINMODULES_UPDATE'),(181,'ROLE_MOD_TAB_ADMINORDERMESSAGE_CREATE'),(184,'ROLE_MOD_TAB_ADMINORDERMESSAGE_DELETE'),(182,'ROLE_MOD_TAB_ADMINORDERMESSAGE_READ'),(183,'ROLE_MOD_TAB_ADMINORDERMESSAGE_UPDATE'),(185,'ROLE_MOD_TAB_ADMINORDERPREFERENCES_CREATE'),(188,'ROLE_MOD_TAB_ADMINORDERPREFERENCES_DELETE'),(186,'ROLE_MOD_TAB_ADMINORDERPREFERENCES_READ'),(187,'ROLE_MOD_TAB_ADMINORDERPREFERENCES_UPDATE'),(189,'ROLE_MOD_TAB_ADMINORDERS_CREATE'),(192,'ROLE_MOD_TAB_ADMINORDERS_DELETE'),(190,'ROLE_MOD_TAB_ADMINORDERS_READ'),(191,'ROLE_MOD_TAB_ADMINORDERS_UPDATE'),(193,'ROLE_MOD_TAB_ADMINOUTSTANDING_CREATE'),(196,'ROLE_MOD_TAB_ADMINOUTSTANDING_DELETE'),(194,'ROLE_MOD_TAB_ADMINOUTSTANDING_READ'),(195,'ROLE_MOD_TAB_ADMINOUTSTANDING_UPDATE'),(197,'ROLE_MOD_TAB_ADMINPARENTATTRIBUTESGROUPS_CREATE'),(200,'ROLE_MOD_TAB_ADMINPARENTATTRIBUTESGROUPS_DELETE'),(198,'ROLE_MOD_TAB_ADMINPARENTATTRIBUTESGROUPS_READ'),(199,'ROLE_MOD_TAB_ADMINPARENTATTRIBUTESGROUPS_UPDATE'),(201,'ROLE_MOD_TAB_ADMINPARENTCARTRULES_CREATE'),(204,'ROLE_MOD_TAB_ADMINPARENTCARTRULES_DELETE'),(202,'ROLE_MOD_TAB_ADMINPARENTCARTRULES_READ'),(203,'ROLE_MOD_TAB_ADMINPARENTCARTRULES_UPDATE'),(205,'ROLE_MOD_TAB_ADMINPARENTCOUNTRIES_CREATE'),(208,'ROLE_MOD_TAB_ADMINPARENTCOUNTRIES_DELETE'),(206,'ROLE_MOD_TAB_ADMINPARENTCOUNTRIES_READ'),(207,'ROLE_MOD_TAB_ADMINPARENTCOUNTRIES_UPDATE'),(213,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERPREFERENCES_CREATE'),(216,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERPREFERENCES_DELETE'),(214,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERPREFERENCES_READ'),(215,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERPREFERENCES_UPDATE'),(217,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERTHREADS_CREATE'),(220,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERTHREADS_DELETE'),(218,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERTHREADS_READ'),(219,'ROLE_MOD_TAB_ADMINPARENTCUSTOMERTHREADS_UPDATE'),(209,'ROLE_MOD_TAB_ADMINPARENTCUSTOMER_CREATE'),(212,'ROLE_MOD_TAB_ADMINPARENTCUSTOMER_DELETE'),(210,'ROLE_MOD_TAB_ADMINPARENTCUSTOMER_READ'),(211,'ROLE_MOD_TAB_ADMINPARENTCUSTOMER_UPDATE'),(221,'ROLE_MOD_TAB_ADMINPARENTEMPLOYEES_CREATE'),(224,'ROLE_MOD_TAB_ADMINPARENTEMPLOYEES_DELETE'),(222,'ROLE_MOD_TAB_ADMINPARENTEMPLOYEES_READ'),(223,'ROLE_MOD_TAB_ADMINPARENTEMPLOYEES_UPDATE'),(225,'ROLE_MOD_TAB_ADMINPARENTLOCALIZATION_CREATE'),(228,'ROLE_MOD_TAB_ADMINPARENTLOCALIZATION_DELETE'),(226,'ROLE_MOD_TAB_ADMINPARENTLOCALIZATION_READ'),(227,'ROLE_MOD_TAB_ADMINPARENTLOCALIZATION_UPDATE'),(461,'ROLE_MOD_TAB_ADMINPARENTMAILTHEME_CREATE'),(464,'ROLE_MOD_TAB_ADMINPARENTMAILTHEME_DELETE'),(462,'ROLE_MOD_TAB_ADMINPARENTMAILTHEME_READ'),(463,'ROLE_MOD_TAB_ADMINPARENTMAILTHEME_UPDATE'),(229,'ROLE_MOD_TAB_ADMINPARENTMANUFACTURERS_CREATE'),(232,'ROLE_MOD_TAB_ADMINPARENTMANUFACTURERS_DELETE'),(230,'ROLE_MOD_TAB_ADMINPARENTMANUFACTURERS_READ'),(231,'ROLE_MOD_TAB_ADMINPARENTMANUFACTURERS_UPDATE'),(237,'ROLE_MOD_TAB_ADMINPARENTMETA_CREATE'),(240,'ROLE_MOD_TAB_ADMINPARENTMETA_DELETE'),(238,'ROLE_MOD_TAB_ADMINPARENTMETA_READ'),(239,'ROLE_MOD_TAB_ADMINPARENTMETA_UPDATE'),(477,'ROLE_MOD_TAB_ADMINPARENTMODULESCATALOG_CREATE'),(480,'ROLE_MOD_TAB_ADMINPARENTMODULESCATALOG_DELETE'),(478,'ROLE_MOD_TAB_ADMINPARENTMODULESCATALOG_READ'),(479,'ROLE_MOD_TAB_ADMINPARENTMODULESCATALOG_UPDATE'),(233,'ROLE_MOD_TAB_ADMINPARENTMODULESSF_CREATE'),(236,'ROLE_MOD_TAB_ADMINPARENTMODULESSF_DELETE'),(234,'ROLE_MOD_TAB_ADMINPARENTMODULESSF_READ'),(235,'ROLE_MOD_TAB_ADMINPARENTMODULESSF_UPDATE'),(241,'ROLE_MOD_TAB_ADMINPARENTMODULES_CREATE'),(244,'ROLE_MOD_TAB_ADMINPARENTMODULES_DELETE'),(242,'ROLE_MOD_TAB_ADMINPARENTMODULES_READ'),(243,'ROLE_MOD_TAB_ADMINPARENTMODULES_UPDATE'),(245,'ROLE_MOD_TAB_ADMINPARENTORDERPREFERENCES_CREATE'),(248,'ROLE_MOD_TAB_ADMINPARENTORDERPREFERENCES_DELETE'),(246,'ROLE_MOD_TAB_ADMINPARENTORDERPREFERENCES_READ'),(247,'ROLE_MOD_TAB_ADMINPARENTORDERPREFERENCES_UPDATE'),(249,'ROLE_MOD_TAB_ADMINPARENTORDERS_CREATE'),(252,'ROLE_MOD_TAB_ADMINPARENTORDERS_DELETE'),(250,'ROLE_MOD_TAB_ADMINPARENTORDERS_READ'),(251,'ROLE_MOD_TAB_ADMINPARENTORDERS_UPDATE'),(253,'ROLE_MOD_TAB_ADMINPARENTPAYMENT_CREATE'),(256,'ROLE_MOD_TAB_ADMINPARENTPAYMENT_DELETE'),(254,'ROLE_MOD_TAB_ADMINPARENTPAYMENT_READ'),(255,'ROLE_MOD_TAB_ADMINPARENTPAYMENT_UPDATE'),(797,'ROLE_MOD_TAB_ADMINPARENTPAYPALCONFIGURATION_CREATE'),(800,'ROLE_MOD_TAB_ADMINPARENTPAYPALCONFIGURATION_DELETE'),(798,'ROLE_MOD_TAB_ADMINPARENTPAYPALCONFIGURATION_READ'),(799,'ROLE_MOD_TAB_ADMINPARENTPAYPALCONFIGURATION_UPDATE'),(257,'ROLE_MOD_TAB_ADMINPARENTPREFERENCES_CREATE'),(260,'ROLE_MOD_TAB_ADMINPARENTPREFERENCES_DELETE'),(258,'ROLE_MOD_TAB_ADMINPARENTPREFERENCES_READ'),(259,'ROLE_MOD_TAB_ADMINPARENTPREFERENCES_UPDATE'),(261,'ROLE_MOD_TAB_ADMINPARENTREQUESTSQL_CREATE'),(264,'ROLE_MOD_TAB_ADMINPARENTREQUESTSQL_DELETE'),(262,'ROLE_MOD_TAB_ADMINPARENTREQUESTSQL_READ'),(263,'ROLE_MOD_TAB_ADMINPARENTREQUESTSQL_UPDATE'),(265,'ROLE_MOD_TAB_ADMINPARENTSEARCHCONF_CREATE'),(268,'ROLE_MOD_TAB_ADMINPARENTSEARCHCONF_DELETE'),(266,'ROLE_MOD_TAB_ADMINPARENTSEARCHCONF_READ'),(267,'ROLE_MOD_TAB_ADMINPARENTSEARCHCONF_UPDATE'),(269,'ROLE_MOD_TAB_ADMINPARENTSHIPPING_CREATE'),(272,'ROLE_MOD_TAB_ADMINPARENTSHIPPING_DELETE'),(270,'ROLE_MOD_TAB_ADMINPARENTSHIPPING_READ'),(271,'ROLE_MOD_TAB_ADMINPARENTSHIPPING_UPDATE'),(273,'ROLE_MOD_TAB_ADMINPARENTSTOCKMANAGEMENT_CREATE'),(276,'ROLE_MOD_TAB_ADMINPARENTSTOCKMANAGEMENT_DELETE'),(274,'ROLE_MOD_TAB_ADMINPARENTSTOCKMANAGEMENT_READ'),(275,'ROLE_MOD_TAB_ADMINPARENTSTOCKMANAGEMENT_UPDATE'),(277,'ROLE_MOD_TAB_ADMINPARENTSTORES_CREATE'),(280,'ROLE_MOD_TAB_ADMINPARENTSTORES_DELETE'),(278,'ROLE_MOD_TAB_ADMINPARENTSTORES_READ'),(279,'ROLE_MOD_TAB_ADMINPARENTSTORES_UPDATE'),(281,'ROLE_MOD_TAB_ADMINPARENTTAXES_CREATE'),(284,'ROLE_MOD_TAB_ADMINPARENTTAXES_DELETE'),(282,'ROLE_MOD_TAB_ADMINPARENTTAXES_READ'),(283,'ROLE_MOD_TAB_ADMINPARENTTAXES_UPDATE'),(285,'ROLE_MOD_TAB_ADMINPARENTTHEMES_CREATE'),(288,'ROLE_MOD_TAB_ADMINPARENTTHEMES_DELETE'),(286,'ROLE_MOD_TAB_ADMINPARENTTHEMES_READ'),(287,'ROLE_MOD_TAB_ADMINPARENTTHEMES_UPDATE'),(293,'ROLE_MOD_TAB_ADMINPAYMENTPREFERENCES_CREATE'),(296,'ROLE_MOD_TAB_ADMINPAYMENTPREFERENCES_DELETE'),(294,'ROLE_MOD_TAB_ADMINPAYMENTPREFERENCES_READ'),(295,'ROLE_MOD_TAB_ADMINPAYMENTPREFERENCES_UPDATE'),(289,'ROLE_MOD_TAB_ADMINPAYMENT_CREATE'),(292,'ROLE_MOD_TAB_ADMINPAYMENT_DELETE'),(290,'ROLE_MOD_TAB_ADMINPAYMENT_READ'),(291,'ROLE_MOD_TAB_ADMINPAYMENT_UPDATE'),(801,'ROLE_MOD_TAB_ADMINPAYPALCONFIGURATION_CREATE'),(804,'ROLE_MOD_TAB_ADMINPAYPALCONFIGURATION_DELETE'),(802,'ROLE_MOD_TAB_ADMINPAYPALCONFIGURATION_READ'),(803,'ROLE_MOD_TAB_ADMINPAYPALCONFIGURATION_UPDATE'),(809,'ROLE_MOD_TAB_ADMINPAYPALCUSTOMIZECHECKOUT_CREATE'),(812,'ROLE_MOD_TAB_ADMINPAYPALCUSTOMIZECHECKOUT_DELETE'),(810,'ROLE_MOD_TAB_ADMINPAYPALCUSTOMIZECHECKOUT_READ'),(811,'ROLE_MOD_TAB_ADMINPAYPALCUSTOMIZECHECKOUT_UPDATE'),(821,'ROLE_MOD_TAB_ADMINPAYPALGETCREDENTIALS_CREATE'),(824,'ROLE_MOD_TAB_ADMINPAYPALGETCREDENTIALS_DELETE'),(822,'ROLE_MOD_TAB_ADMINPAYPALGETCREDENTIALS_READ'),(823,'ROLE_MOD_TAB_ADMINPAYPALGETCREDENTIALS_UPDATE'),(813,'ROLE_MOD_TAB_ADMINPAYPALHELP_CREATE'),(816,'ROLE_MOD_TAB_ADMINPAYPALHELP_DELETE'),(814,'ROLE_MOD_TAB_ADMINPAYPALHELP_READ'),(815,'ROLE_MOD_TAB_ADMINPAYPALHELP_UPDATE'),(817,'ROLE_MOD_TAB_ADMINPAYPALLOGS_CREATE'),(820,'ROLE_MOD_TAB_ADMINPAYPALLOGS_DELETE'),(818,'ROLE_MOD_TAB_ADMINPAYPALLOGS_READ'),(819,'ROLE_MOD_TAB_ADMINPAYPALLOGS_UPDATE'),(825,'ROLE_MOD_TAB_ADMINPAYPALPROCESSLOGGER_CREATE'),(828,'ROLE_MOD_TAB_ADMINPAYPALPROCESSLOGGER_DELETE'),(826,'ROLE_MOD_TAB_ADMINPAYPALPROCESSLOGGER_READ'),(827,'ROLE_MOD_TAB_ADMINPAYPALPROCESSLOGGER_UPDATE'),(805,'ROLE_MOD_TAB_ADMINPAYPALSETUP_CREATE'),(808,'ROLE_MOD_TAB_ADMINPAYPALSETUP_DELETE'),(806,'ROLE_MOD_TAB_ADMINPAYPALSETUP_READ'),(807,'ROLE_MOD_TAB_ADMINPAYPALSETUP_UPDATE'),(297,'ROLE_MOD_TAB_ADMINPERFORMANCE_CREATE'),(300,'ROLE_MOD_TAB_ADMINPERFORMANCE_DELETE'),(298,'ROLE_MOD_TAB_ADMINPERFORMANCE_READ'),(299,'ROLE_MOD_TAB_ADMINPERFORMANCE_UPDATE'),(301,'ROLE_MOD_TAB_ADMINPPREFERENCES_CREATE'),(304,'ROLE_MOD_TAB_ADMINPPREFERENCES_DELETE'),(302,'ROLE_MOD_TAB_ADMINPPREFERENCES_READ'),(303,'ROLE_MOD_TAB_ADMINPPREFERENCES_UPDATE'),(305,'ROLE_MOD_TAB_ADMINPREFERENCES_CREATE'),(308,'ROLE_MOD_TAB_ADMINPREFERENCES_DELETE'),(306,'ROLE_MOD_TAB_ADMINPREFERENCES_READ'),(307,'ROLE_MOD_TAB_ADMINPREFERENCES_UPDATE'),(309,'ROLE_MOD_TAB_ADMINPRODUCTS_CREATE'),(312,'ROLE_MOD_TAB_ADMINPRODUCTS_DELETE'),(310,'ROLE_MOD_TAB_ADMINPRODUCTS_READ'),(311,'ROLE_MOD_TAB_ADMINPRODUCTS_UPDATE'),(313,'ROLE_MOD_TAB_ADMINPROFILES_CREATE'),(316,'ROLE_MOD_TAB_ADMINPROFILES_DELETE'),(314,'ROLE_MOD_TAB_ADMINPROFILES_READ'),(315,'ROLE_MOD_TAB_ADMINPROFILES_UPDATE'),(765,'ROLE_MOD_TAB_ADMINPSMBOADDONS_CREATE'),(768,'ROLE_MOD_TAB_ADMINPSMBOADDONS_DELETE'),(766,'ROLE_MOD_TAB_ADMINPSMBOADDONS_READ'),(767,'ROLE_MOD_TAB_ADMINPSMBOADDONS_UPDATE'),(761,'ROLE_MOD_TAB_ADMINPSMBOMODULE_CREATE'),(764,'ROLE_MOD_TAB_ADMINPSMBOMODULE_DELETE'),(762,'ROLE_MOD_TAB_ADMINPSMBOMODULE_READ'),(763,'ROLE_MOD_TAB_ADMINPSMBOMODULE_UPDATE'),(769,'ROLE_MOD_TAB_ADMINPSMBORECOMMENDED_CREATE'),(772,'ROLE_MOD_TAB_ADMINPSMBORECOMMENDED_DELETE'),(770,'ROLE_MOD_TAB_ADMINPSMBORECOMMENDED_READ'),(771,'ROLE_MOD_TAB_ADMINPSMBORECOMMENDED_UPDATE'),(773,'ROLE_MOD_TAB_ADMINPSMBOTHEME_CREATE'),(776,'ROLE_MOD_TAB_ADMINPSMBOTHEME_DELETE'),(774,'ROLE_MOD_TAB_ADMINPSMBOTHEME_READ'),(775,'ROLE_MOD_TAB_ADMINPSMBOTHEME_UPDATE'),(617,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOADVANCED_CREATE'),(620,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOADVANCED_DELETE'),(618,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOADVANCED_READ'),(619,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOADVANCED_UPDATE'),(613,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOCONFIGURATION_CREATE'),(616,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOCONFIGURATION_DELETE'),(614,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOCONFIGURATION_READ'),(615,'ROLE_MOD_TAB_ADMINPSTHEMECUSTOCONFIGURATION_UPDATE'),(317,'ROLE_MOD_TAB_ADMINREFERRERS_CREATE'),(320,'ROLE_MOD_TAB_ADMINREFERRERS_DELETE'),(318,'ROLE_MOD_TAB_ADMINREFERRERS_READ'),(319,'ROLE_MOD_TAB_ADMINREFERRERS_UPDATE'),(321,'ROLE_MOD_TAB_ADMINREQUESTSQL_CREATE'),(324,'ROLE_MOD_TAB_ADMINREQUESTSQL_DELETE'),(322,'ROLE_MOD_TAB_ADMINREQUESTSQL_READ'),(323,'ROLE_MOD_TAB_ADMINREQUESTSQL_UPDATE'),(325,'ROLE_MOD_TAB_ADMINRETURN_CREATE'),(328,'ROLE_MOD_TAB_ADMINRETURN_DELETE'),(326,'ROLE_MOD_TAB_ADMINRETURN_READ'),(327,'ROLE_MOD_TAB_ADMINRETURN_UPDATE'),(329,'ROLE_MOD_TAB_ADMINSEARCHCONF_CREATE'),(332,'ROLE_MOD_TAB_ADMINSEARCHCONF_DELETE'),(330,'ROLE_MOD_TAB_ADMINSEARCHCONF_READ'),(331,'ROLE_MOD_TAB_ADMINSEARCHCONF_UPDATE'),(333,'ROLE_MOD_TAB_ADMINSEARCHENGINES_CREATE'),(336,'ROLE_MOD_TAB_ADMINSEARCHENGINES_DELETE'),(334,'ROLE_MOD_TAB_ADMINSEARCHENGINES_READ'),(335,'ROLE_MOD_TAB_ADMINSEARCHENGINES_UPDATE'),(337,'ROLE_MOD_TAB_ADMINSHIPPING_CREATE'),(340,'ROLE_MOD_TAB_ADMINSHIPPING_DELETE'),(338,'ROLE_MOD_TAB_ADMINSHIPPING_READ'),(339,'ROLE_MOD_TAB_ADMINSHIPPING_UPDATE'),(341,'ROLE_MOD_TAB_ADMINSHOPGROUP_CREATE'),(344,'ROLE_MOD_TAB_ADMINSHOPGROUP_DELETE'),(342,'ROLE_MOD_TAB_ADMINSHOPGROUP_READ'),(343,'ROLE_MOD_TAB_ADMINSHOPGROUP_UPDATE'),(345,'ROLE_MOD_TAB_ADMINSHOPURL_CREATE'),(348,'ROLE_MOD_TAB_ADMINSHOPURL_DELETE'),(346,'ROLE_MOD_TAB_ADMINSHOPURL_READ'),(347,'ROLE_MOD_TAB_ADMINSHOPURL_UPDATE'),(349,'ROLE_MOD_TAB_ADMINSLIP_CREATE'),(352,'ROLE_MOD_TAB_ADMINSLIP_DELETE'),(350,'ROLE_MOD_TAB_ADMINSLIP_READ'),(351,'ROLE_MOD_TAB_ADMINSLIP_UPDATE'),(353,'ROLE_MOD_TAB_ADMINSPECIFICPRICERULE_CREATE'),(356,'ROLE_MOD_TAB_ADMINSPECIFICPRICERULE_DELETE'),(354,'ROLE_MOD_TAB_ADMINSPECIFICPRICERULE_READ'),(355,'ROLE_MOD_TAB_ADMINSPECIFICPRICERULE_UPDATE'),(357,'ROLE_MOD_TAB_ADMINSTATES_CREATE'),(360,'ROLE_MOD_TAB_ADMINSTATES_DELETE'),(358,'ROLE_MOD_TAB_ADMINSTATES_READ'),(359,'ROLE_MOD_TAB_ADMINSTATES_UPDATE'),(361,'ROLE_MOD_TAB_ADMINSTATS_CREATE'),(364,'ROLE_MOD_TAB_ADMINSTATS_DELETE'),(362,'ROLE_MOD_TAB_ADMINSTATS_READ'),(363,'ROLE_MOD_TAB_ADMINSTATS_UPDATE'),(365,'ROLE_MOD_TAB_ADMINSTATUSES_CREATE'),(368,'ROLE_MOD_TAB_ADMINSTATUSES_DELETE'),(366,'ROLE_MOD_TAB_ADMINSTATUSES_READ'),(367,'ROLE_MOD_TAB_ADMINSTATUSES_UPDATE'),(373,'ROLE_MOD_TAB_ADMINSTOCKCONFIGURATION_CREATE'),(376,'ROLE_MOD_TAB_ADMINSTOCKCONFIGURATION_DELETE'),(374,'ROLE_MOD_TAB_ADMINSTOCKCONFIGURATION_READ'),(375,'ROLE_MOD_TAB_ADMINSTOCKCONFIGURATION_UPDATE'),(377,'ROLE_MOD_TAB_ADMINSTOCKCOVER_CREATE'),(380,'ROLE_MOD_TAB_ADMINSTOCKCOVER_DELETE'),(378,'ROLE_MOD_TAB_ADMINSTOCKCOVER_READ'),(379,'ROLE_MOD_TAB_ADMINSTOCKCOVER_UPDATE'),(381,'ROLE_MOD_TAB_ADMINSTOCKINSTANTSTATE_CREATE'),(384,'ROLE_MOD_TAB_ADMINSTOCKINSTANTSTATE_DELETE'),(382,'ROLE_MOD_TAB_ADMINSTOCKINSTANTSTATE_READ'),(383,'ROLE_MOD_TAB_ADMINSTOCKINSTANTSTATE_UPDATE'),(385,'ROLE_MOD_TAB_ADMINSTOCKMANAGEMENT_CREATE'),(388,'ROLE_MOD_TAB_ADMINSTOCKMANAGEMENT_DELETE'),(386,'ROLE_MOD_TAB_ADMINSTOCKMANAGEMENT_READ'),(387,'ROLE_MOD_TAB_ADMINSTOCKMANAGEMENT_UPDATE'),(389,'ROLE_MOD_TAB_ADMINSTOCKMVT_CREATE'),(392,'ROLE_MOD_TAB_ADMINSTOCKMVT_DELETE'),(390,'ROLE_MOD_TAB_ADMINSTOCKMVT_READ'),(391,'ROLE_MOD_TAB_ADMINSTOCKMVT_UPDATE'),(369,'ROLE_MOD_TAB_ADMINSTOCK_CREATE'),(372,'ROLE_MOD_TAB_ADMINSTOCK_DELETE'),(370,'ROLE_MOD_TAB_ADMINSTOCK_READ'),(371,'ROLE_MOD_TAB_ADMINSTOCK_UPDATE'),(393,'ROLE_MOD_TAB_ADMINSTORES_CREATE'),(396,'ROLE_MOD_TAB_ADMINSTORES_DELETE'),(394,'ROLE_MOD_TAB_ADMINSTORES_READ'),(395,'ROLE_MOD_TAB_ADMINSTORES_UPDATE'),(397,'ROLE_MOD_TAB_ADMINSUPPLIERS_CREATE'),(400,'ROLE_MOD_TAB_ADMINSUPPLIERS_DELETE'),(398,'ROLE_MOD_TAB_ADMINSUPPLIERS_READ'),(399,'ROLE_MOD_TAB_ADMINSUPPLIERS_UPDATE'),(401,'ROLE_MOD_TAB_ADMINSUPPLYORDERS_CREATE'),(404,'ROLE_MOD_TAB_ADMINSUPPLYORDERS_DELETE'),(402,'ROLE_MOD_TAB_ADMINSUPPLYORDERS_READ'),(403,'ROLE_MOD_TAB_ADMINSUPPLYORDERS_UPDATE'),(405,'ROLE_MOD_TAB_ADMINTAGS_CREATE'),(408,'ROLE_MOD_TAB_ADMINTAGS_DELETE'),(406,'ROLE_MOD_TAB_ADMINTAGS_READ'),(407,'ROLE_MOD_TAB_ADMINTAGS_UPDATE'),(409,'ROLE_MOD_TAB_ADMINTAXES_CREATE'),(412,'ROLE_MOD_TAB_ADMINTAXES_DELETE'),(410,'ROLE_MOD_TAB_ADMINTAXES_READ'),(411,'ROLE_MOD_TAB_ADMINTAXES_UPDATE'),(413,'ROLE_MOD_TAB_ADMINTAXRULESGROUP_CREATE'),(416,'ROLE_MOD_TAB_ADMINTAXRULESGROUP_DELETE'),(414,'ROLE_MOD_TAB_ADMINTAXRULESGROUP_READ'),(415,'ROLE_MOD_TAB_ADMINTAXRULESGROUP_UPDATE'),(421,'ROLE_MOD_TAB_ADMINTHEMESCATALOG_CREATE'),(424,'ROLE_MOD_TAB_ADMINTHEMESCATALOG_DELETE'),(422,'ROLE_MOD_TAB_ADMINTHEMESCATALOG_READ'),(423,'ROLE_MOD_TAB_ADMINTHEMESCATALOG_UPDATE'),(609,'ROLE_MOD_TAB_ADMINTHEMESPARENT_CREATE'),(612,'ROLE_MOD_TAB_ADMINTHEMESPARENT_DELETE'),(610,'ROLE_MOD_TAB_ADMINTHEMESPARENT_READ'),(611,'ROLE_MOD_TAB_ADMINTHEMESPARENT_UPDATE'),(417,'ROLE_MOD_TAB_ADMINTHEMES_CREATE'),(420,'ROLE_MOD_TAB_ADMINTHEMES_DELETE'),(418,'ROLE_MOD_TAB_ADMINTHEMES_READ'),(419,'ROLE_MOD_TAB_ADMINTHEMES_UPDATE'),(425,'ROLE_MOD_TAB_ADMINTRACKING_CREATE'),(428,'ROLE_MOD_TAB_ADMINTRACKING_DELETE'),(426,'ROLE_MOD_TAB_ADMINTRACKING_READ'),(427,'ROLE_MOD_TAB_ADMINTRACKING_UPDATE'),(429,'ROLE_MOD_TAB_ADMINTRANSLATIONS_CREATE'),(432,'ROLE_MOD_TAB_ADMINTRANSLATIONS_DELETE'),(430,'ROLE_MOD_TAB_ADMINTRANSLATIONS_READ'),(431,'ROLE_MOD_TAB_ADMINTRANSLATIONS_UPDATE'),(433,'ROLE_MOD_TAB_ADMINWAREHOUSES_CREATE'),(436,'ROLE_MOD_TAB_ADMINWAREHOUSES_DELETE'),(434,'ROLE_MOD_TAB_ADMINWAREHOUSES_READ'),(435,'ROLE_MOD_TAB_ADMINWAREHOUSES_UPDATE'),(437,'ROLE_MOD_TAB_ADMINWEBSERVICE_CREATE'),(440,'ROLE_MOD_TAB_ADMINWEBSERVICE_DELETE'),(438,'ROLE_MOD_TAB_ADMINWEBSERVICE_READ'),(439,'ROLE_MOD_TAB_ADMINWEBSERVICE_UPDATE'),(721,'ROLE_MOD_TAB_ADMINWELCOME_CREATE'),(724,'ROLE_MOD_TAB_ADMINWELCOME_DELETE'),(722,'ROLE_MOD_TAB_ADMINWELCOME_READ'),(723,'ROLE_MOD_TAB_ADMINWELCOME_UPDATE'),(441,'ROLE_MOD_TAB_ADMINZONES_CREATE'),(444,'ROLE_MOD_TAB_ADMINZONES_DELETE'),(442,'ROLE_MOD_TAB_ADMINZONES_READ'),(443,'ROLE_MOD_TAB_ADMINZONES_UPDATE'),(445,'ROLE_MOD_TAB_CONFIGURE_CREATE'),(448,'ROLE_MOD_TAB_CONFIGURE_DELETE'),(446,'ROLE_MOD_TAB_CONFIGURE_READ'),(447,'ROLE_MOD_TAB_CONFIGURE_UPDATE'),(449,'ROLE_MOD_TAB_IMPROVE_CREATE'),(452,'ROLE_MOD_TAB_IMPROVE_DELETE'),(450,'ROLE_MOD_TAB_IMPROVE_READ'),(451,'ROLE_MOD_TAB_IMPROVE_UPDATE'),(453,'ROLE_MOD_TAB_SELL_CREATE'),(456,'ROLE_MOD_TAB_SELL_DELETE'),(454,'ROLE_MOD_TAB_SELL_READ'),(455,'ROLE_MOD_TAB_SELL_UPDATE'),(457,'ROLE_MOD_TAB_SHOPPARAMETERS_CREATE'),(460,'ROLE_MOD_TAB_SHOPPARAMETERS_DELETE'),(458,'ROLE_MOD_TAB_SHOPPARAMETERS_READ'),(459,'ROLE_MOD_TAB_SHOPPARAMETERS_UPDATE');
/*!40000 ALTER TABLE `ps_authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_badge`
--

DROP TABLE IF EXISTS `ps_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_badge` (
  `id_badge` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_badge` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `id_group` int(11) NOT NULL,
  `group_position` int(11) NOT NULL,
  `scoring` int(11) NOT NULL,
  `awb` int(11) DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_badge`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_badge`
--

LOCK TABLES `ps_badge` WRITE;
/*!40000 ALTER TABLE `ps_badge` DISABLE KEYS */;
INSERT INTO `ps_badge` VALUES (1,159,'feature',41,1,5,1,0),(2,160,'feature',41,2,10,1,0),(3,161,'feature',41,3,15,1,0),(4,162,'feature',41,4,20,1,0),(5,163,'feature',41,1,5,1,0),(6,164,'feature',41,2,10,1,0),(7,165,'feature',41,3,15,1,0),(8,166,'feature',41,4,20,1,0),(9,195,'feature',41,1,5,1,0),(10,196,'feature',41,2,10,1,0),(11,229,'feature',41,1,5,1,0),(12,230,'feature',41,2,10,1,0),(13,231,'feature',41,3,15,1,0),(14,232,'feature',41,4,20,1,0),(15,233,'feature',41,1,5,1,0),(16,234,'feature',41,2,10,1,0),(17,235,'feature',41,3,15,1,0),(18,236,'feature',41,4,20,1,0),(19,241,'feature',41,1,5,1,0),(20,242,'feature',41,2,10,1,0),(21,243,'feature',41,3,15,1,0),(22,244,'feature',41,4,20,1,0),(23,249,'feature',41,1,5,1,0),(24,250,'feature',41,2,10,1,0),(25,251,'feature',41,3,15,1,0),(26,252,'feature',41,4,20,1,0),(27,253,'feature',41,1,5,1,0),(28,254,'feature',41,2,10,1,0),(29,255,'feature',41,3,15,1,0),(30,256,'feature',41,4,20,1,0),(31,261,'feature',41,1,5,1,0),(32,262,'feature',41,2,10,1,0),(33,269,'feature',41,1,5,1,0),(34,270,'feature',41,2,10,1,0),(35,271,'feature',41,3,15,1,0),(36,272,'feature',41,4,20,1,0),(37,273,'feature',41,1,5,1,0),(38,274,'feature',41,2,10,1,0),(39,275,'feature',41,3,15,1,0),(40,276,'feature',41,4,20,1,0),(41,277,'feature',41,1,5,1,0),(42,278,'feature',41,2,10,1,0),(43,279,'feature',41,3,15,1,0),(44,280,'feature',41,4,20,1,0),(45,281,'feature',41,1,5,1,0),(46,282,'feature',41,2,10,1,0),(47,283,'feature',41,3,15,1,0),(48,284,'feature',41,4,20,1,0),(49,285,'feature',41,1,5,1,0),(50,286,'feature',41,2,10,1,0),(51,287,'feature',41,3,15,1,0),(52,288,'feature',41,4,20,1,0),(53,289,'feature',41,1,5,1,0),(54,290,'feature',41,2,10,1,0),(55,291,'feature',41,3,15,1,0),(56,292,'feature',41,4,20,1,0),(57,293,'feature',41,1,5,1,0),(58,294,'feature',41,2,10,1,0),(59,295,'feature',41,3,15,1,0),(60,296,'feature',41,4,20,1,0),(61,297,'feature',41,1,5,1,0),(62,298,'feature',41,2,10,1,0),(63,299,'feature',41,3,15,1,0),(64,300,'feature',41,4,20,1,0),(65,301,'feature',41,1,5,1,0),(66,302,'feature',41,2,10,1,0),(67,303,'feature',41,3,15,1,0),(68,304,'feature',41,4,20,1,0),(69,305,'feature',41,1,5,1,0),(70,306,'feature',41,2,10,1,0),(71,307,'feature',41,3,15,1,0),(72,308,'feature',41,4,20,1,0),(73,309,'feature',41,1,5,1,0),(74,310,'feature',41,2,10,1,0),(75,311,'feature',41,3,15,1,0),(76,312,'feature',41,4,20,1,0),(77,313,'feature',41,1,5,1,0),(78,314,'feature',41,2,10,1,0),(79,315,'feature',41,3,15,1,0),(80,316,'feature',41,4,20,1,0),(81,317,'feature',41,1,5,1,0),(82,318,'feature',41,2,10,1,0),(83,319,'feature',41,3,15,1,0),(84,320,'feature',41,4,20,1,0),(85,321,'feature',41,1,5,1,0),(86,322,'feature',41,2,10,1,0),(87,323,'feature',41,3,15,1,0),(88,324,'feature',41,4,20,1,0),(89,325,'feature',41,1,5,1,0),(90,326,'feature',41,2,10,1,0),(91,327,'feature',41,3,15,1,0),(92,328,'feature',41,4,20,1,0),(93,329,'feature',41,1,5,1,0),(94,330,'feature',41,2,10,1,0),(95,331,'feature',41,3,15,1,0),(96,332,'feature',41,4,20,1,0),(97,333,'feature',41,1,5,1,0),(98,334,'feature',41,2,10,1,0),(99,335,'feature',41,3,15,1,0),(100,336,'feature',41,4,20,1,0),(101,337,'feature',41,1,5,1,0),(102,338,'feature',41,2,10,1,0),(103,339,'feature',41,3,15,1,0),(104,340,'feature',41,4,20,1,0),(105,341,'feature',41,1,5,1,0),(106,342,'feature',41,2,10,1,0),(107,343,'feature',41,3,15,1,0),(108,344,'feature',41,4,20,1,0),(109,345,'feature',41,1,5,1,0),(110,346,'feature',41,2,10,1,0),(111,347,'feature',41,3,15,1,0),(112,348,'feature',41,4,20,1,0),(113,349,'feature',41,1,5,1,0),(114,350,'feature',41,2,10,1,0),(115,351,'feature',41,3,15,1,0),(116,352,'feature',41,4,20,1,0),(117,353,'feature',41,1,5,1,0),(118,354,'feature',41,2,10,1,0),(119,355,'feature',41,3,15,1,0),(120,356,'feature',41,4,20,1,0),(121,357,'feature',41,1,5,1,0),(122,358,'feature',41,2,10,1,0),(123,359,'feature',41,3,15,1,0),(124,360,'feature',41,4,20,1,0),(125,1,'feature',1,1,10,0,1),(126,2,'feature',2,1,10,0,0),(127,3,'feature',2,2,15,0,0),(128,4,'feature',3,1,15,0,0),(129,5,'feature',3,2,15,0,0),(130,6,'feature',4,1,15,0,1),(131,7,'feature',4,2,15,0,1),(132,8,'feature',5,1,5,0,1),(133,9,'feature',5,2,10,0,0),(134,10,'feature',6,1,15,0,0),(135,11,'feature',6,2,10,0,0),(136,12,'feature',6,3,10,0,0),(137,13,'feature',5,3,10,0,0),(138,14,'feature',5,4,15,0,0),(139,15,'feature',5,5,20,0,0),(140,16,'feature',5,6,20,0,0),(141,17,'achievement',7,1,5,0,1),(142,18,'achievement',7,2,10,0,1),(143,19,'feature',8,1,15,0,1),(144,20,'feature',8,2,15,0,0),(145,21,'feature',9,1,15,0,0),(146,22,'feature',10,1,10,0,0),(147,23,'feature',10,2,10,0,0),(148,24,'feature',10,3,10,0,0),(149,25,'feature',10,4,10,0,0),(150,26,'feature',10,5,10,0,0),(151,27,'feature',4,3,10,0,1),(152,28,'feature',3,3,10,0,0),(153,29,'achievement',11,1,5,0,1),(154,30,'achievement',11,2,10,0,0),(155,31,'achievement',11,3,15,0,0),(156,32,'achievement',11,4,20,0,0),(157,33,'achievement',11,5,25,0,0),(158,34,'achievement',11,6,30,0,0),(159,35,'achievement',7,3,15,0,0),(160,36,'achievement',7,4,20,0,0),(161,37,'achievement',7,5,25,0,0),(162,38,'achievement',7,6,30,0,0),(163,39,'achievement',12,1,5,0,1),(164,40,'achievement',12,2,10,0,0),(165,41,'achievement',12,3,15,0,0),(166,42,'achievement',12,4,20,0,0),(167,43,'achievement',12,5,25,0,0),(168,44,'achievement',12,6,30,0,0),(169,45,'achievement',13,1,5,0,1),(170,46,'achievement',13,2,10,0,1),(171,47,'achievement',13,3,15,0,0),(172,48,'achievement',13,4,20,0,0),(173,49,'achievement',13,5,25,0,0),(174,50,'achievement',13,6,30,0,0),(175,51,'achievement',14,1,5,0,1),(176,52,'achievement',14,2,10,0,0),(177,53,'achievement',14,3,15,0,0),(178,54,'achievement',14,4,20,0,0),(179,55,'achievement',14,5,25,0,0),(180,56,'achievement',14,6,30,0,0),(181,57,'achievement',15,1,5,0,0),(182,58,'achievement',15,2,10,0,0),(183,59,'achievement',15,3,15,0,0),(184,60,'achievement',15,4,20,0,0),(185,61,'achievement',15,5,25,0,0),(186,62,'achievement',15,6,30,0,0),(187,63,'achievement',16,1,5,0,1),(188,64,'achievement',16,2,10,0,0),(189,65,'achievement',16,3,15,0,0),(190,66,'achievement',16,4,20,0,0),(191,67,'achievement',16,5,25,0,0),(192,68,'achievement',16,6,30,0,0),(193,74,'international',22,1,10,0,0),(194,75,'international',23,1,10,0,0),(195,83,'international',31,1,10,0,0),(196,84,'international',25,1,10,0,0),(197,85,'international',32,1,10,0,0),(198,86,'international',33,1,10,0,0),(199,87,'international',34,1,10,0,0),(200,88,'feature',35,1,5,0,0),(201,89,'feature',35,2,10,0,0),(202,90,'feature',35,3,10,0,0),(203,91,'feature',35,4,10,0,0),(204,92,'feature',35,5,10,0,0),(205,93,'feature',35,6,10,0,0),(206,94,'feature',36,1,5,0,1),(207,95,'feature',36,2,5,0,0),(208,96,'feature',36,3,10,0,0),(209,97,'feature',36,4,10,0,0),(210,98,'feature',36,5,20,0,0),(211,99,'feature',36,6,20,0,0),(212,100,'feature',8,3,15,0,0),(213,101,'achievement',37,1,5,0,0),(214,102,'achievement',37,2,5,0,0),(215,103,'achievement',37,3,10,0,0),(216,104,'achievement',37,4,10,0,0),(217,105,'achievement',37,5,15,0,0),(218,106,'achievement',37,6,15,0,0),(219,107,'achievement',38,1,10,0,0),(220,108,'achievement',38,2,10,0,0),(221,109,'achievement',38,3,15,0,0),(222,110,'achievement',38,4,20,0,0),(223,111,'achievement',38,5,25,0,0),(224,112,'achievement',38,6,30,0,0),(225,113,'achievement',39,1,10,0,1),(226,114,'achievement',39,2,20,0,0),(227,115,'achievement',39,3,30,0,0),(228,116,'achievement',39,4,40,0,0),(229,117,'achievement',39,5,50,0,0),(230,118,'achievement',39,6,50,0,0),(231,119,'feature',40,1,10,0,0),(232,120,'feature',40,2,15,0,0),(233,121,'feature',40,3,20,0,0),(234,122,'feature',40,4,25,0,0);
/*!40000 ALTER TABLE `ps_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_badge_lang`
--

DROP TABLE IF EXISTS `ps_badge_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_badge_lang` (
  `id_badge` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_badge`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_badge_lang`
--

LOCK TABLES `ps_badge_lang` WRITE;
/*!40000 ALTER TABLE `ps_badge_lang` DISABLE KEYS */;
INSERT INTO `ps_badge_lang` VALUES (1,1,'Shopgate installed','You have installed the Shopgate module','Partners'),(2,1,'Shopgate configured','You have configured the Shopgate module','Partners'),(3,1,'Shopgate active','Your Shopgate module is active','Partners'),(4,1,'Shopgate very active','Your Shopgate module is very active','Partners'),(5,1,'Skrill installed','You have installed the Skrill module','Partners'),(6,1,'Skrill configured','You have configured the Skrill module','Partners'),(7,1,'Skrill active','Your Skrill module is active','Partners'),(8,1,'Skrill very active','Your Skrill module is very active','Partners'),(9,1,'Shopping Feed installed','You have installed the Shopping Feed module','Partners'),(10,1,'Shopping Feed configured','You have configured the Shopping Feed module','Partners'),(11,1,'Alliance Payment installed','You have installed the Alliance Payment module','Partners'),(12,1,'Alliance Payment configured','You have configured the Alliance Payment module','Partners'),(13,1,'Alliance Payment active','Your Alliance Payment module is active','Partners'),(14,1,'Alliance Payment very active','Your Alliance Payment module is very active','Partners'),(15,1,'Authorize Aim installed','You have installed the Authorize Aim module','Partners'),(16,1,'Authorize Aim configured','You have configured the Authorize Aim module','Partners'),(17,1,'Authorize Aim active','Your Authorize Aim module is active','Partners'),(18,1,'Authorize Aim very active','Your Authorize Aim module is very active','Partners'),(19,1,'Blue Pay installed','You have installed the Blue Pay module','Partners'),(20,1,'Blue Pay configured','You have configured the Blue Pay module','Partners'),(21,1,'Blue Pay active','Your Blue Pay module is active','Partners'),(22,1,'Blue Pay very active','Your Blue Pay module is very active','Partners'),(23,1,'Ebay installed','You have installed the Ebay module','Partners'),(24,1,'Ebay configured','You have configured the Ebay module','Partners'),(25,1,'Ebay active','Your Ebay module is active','Partners'),(26,1,'Ebay very active','Your Ebay module is very active','Partners'),(27,1,'PayPlug installed','You have installed the PayPlug module','Partners'),(28,1,'PayPlug configured','You have configured the PayPlug module','Partners'),(29,1,'PayPlug active','Your PayPlug module is active','Partners'),(30,1,'PayPlug very active','Your PayPlug module is very active','Partners'),(31,1,'Affinity Items installed','You have installed the Affinity Items module','Partners'),(32,1,'Affinity Items configured','You have configured the Affinity Items module','Partners'),(33,1,'DPD Poland installed','You have installed the DPD Poland module','Partners'),(34,1,'DPD Poland configured','You have configured the DPD Poland module','Partners'),(35,1,'DPD Poland active','Your DPD Poland module is active','Partners'),(36,1,'DPD Poland very active','Your DPD Poland module is very active','Partners'),(37,1,'Envoimoinscher installed','You have installed the Envoimoinscher module','Partners'),(38,1,'Envoimoinscher configured','You have configured the Envoimoinscher module','Partners'),(39,1,'Envoimoinscher active','Your Envoimoinscher module is active','Partners'),(40,1,'Envoimoinscher very active','Your Envoimoinscher module is very active','Partners'),(41,1,'Klik&Pay installed','You have installed the Klik&Pay module','Partners'),(42,1,'Klik&Pay configured','You have configured the Klik&Pay module','Partners'),(43,1,'Klik&Pay active','Your Klik&Pay module is active','Partners'),(44,1,'Klik&Pay very active','Your Klik&Pay module is very active','Partners'),(45,1,'Clickline installed','You have installed the Clickline module','Partners'),(46,1,'Clickline configured','You have configured the Clickline module','Partners'),(47,1,'Clickline active','Your Clickline module is active','Partners'),(48,1,'Clickline very active','Your Clickline module is very active','Partners'),(49,1,'CDiscount installed','You have installed the CDiscount module','Partners'),(50,1,'CDiscount configured','You have configured the CDiscount module','Partners'),(51,1,'CDiscount active','Your CDiscount module is active','Partners'),(52,1,'CDiscount very active','Your CDiscount module is very active','Partners'),(53,1,'illicoPresta installed','You have installed the illicoPresta module','Partners'),(54,1,'illicoPresta configured','You have configured the illicoPresta module','Partners'),(55,1,'illicoPresta active','Your illicoPresta module is active','Partners'),(56,1,'illicoPresta very active','Your illicoPresta module is very active','Partners'),(57,1,'NetReviews installed','You have installed the NetReviews module','Partners'),(58,1,'NetReviews configured','You have configured the NetReviews module','Partners'),(59,1,'NetReviews active','Your NetReviews module is active','Partners'),(60,1,'NetReviews very active','Your NetReviews module is very active','Partners'),(61,1,'Bluesnap installed','You have installed the Bluesnap module','Partners'),(62,1,'Bluesnap configured','You have configured the Bluesnap module','Partners'),(63,1,'Bluesnap active','Your Bluesnap module is active','Partners'),(64,1,'Bluesnap very active','Your Bluesnap module is very active','Partners'),(65,1,'Desjardins installed','You have installed the Desjardins module','Partners'),(66,1,'Desjardins configured','You have configured the Desjardins module','Partners'),(67,1,'Desjardins active','Your Desjardins module is active','Partners'),(68,1,'Desjardins very active','Your Desjardins module is very active','Partners'),(69,1,'First Data installed','You have installed the First Data module','Partners'),(70,1,'First Data configured','You have configured the First Data module','Partners'),(71,1,'First Data active','Your First Data module is active','Partners'),(72,1,'First Data very active','Your First Data module is very active','Partners'),(73,1,'Give.it installed','You have installed the Give.it module','Partners'),(74,1,'Give.it configured','You have configured the Give.it module','Partners'),(75,1,'Give.it active','Your Give.it module is active','Partners'),(76,1,'Give.it very active','Your Give.it module is very active','Partners'),(77,1,'Google Analytics installed','You have installed the Google Analytics module','Partners'),(78,1,'Google Analytics configured','You have configured the Google Analytics module','Partners'),(79,1,'Google Analytics active','Your Google Analytics module is active','Partners'),(80,1,'Google Analytics very active','Your Google Analytics module is very active','Partners'),(81,1,'PagSeguro installed','You have installed the PagSeguro module','Partners'),(82,1,'PagSeguro configured','You have configured the PagSeguro module','Partners'),(83,1,'PagSeguro active','Your PagSeguro module is active','Partners'),(84,1,'PagSeguro very active','Your PagSeguro module is very active','Partners'),(85,1,'Paypal MX installed','You have installed the Paypal MX module','Partners'),(86,1,'Paypal MX configured','You have configured the Paypal MX module','Partners'),(87,1,'Paypal MX active','Your Paypal MX module is active','Partners'),(88,1,'Paypal MX very active','Your Paypal MX module is very active','Partners'),(89,1,'Paypal USA installed','You have installed the Paypal USA module','Partners'),(90,1,'Paypal USA configured','You have configured the Paypal USA module','Partners'),(91,1,'Paypal USA active','Your Paypal USA module is active','Partners'),(92,1,'Paypal USA very active','Your Paypal USA module is very active','Partners'),(93,1,'PayULatam installed','You have installed the PayULatam module','Partners'),(94,1,'PayULatam configured','You have configured the PayULatam module','Partners'),(95,1,'PayULatam active','Your PayULatam module is active','Partners'),(96,1,'PayULatam very active','Your PayULatam module is very active','Partners'),(97,1,'PrestaStats installed','You have installed the PrestaStats module','Partners'),(98,1,'PrestaStats configured','You have configured the PrestaStats module','Partners'),(99,1,'PrestaStats active','Your PrestaStats module is active','Partners'),(100,1,'PrestaStats very active','Your PrestaStats module is very active','Partners'),(101,1,'Riskified installed','You have installed the Riskified module','Partners'),(102,1,'Riskified configured','You have configured the Riskified module','Partners'),(103,1,'Riskified active','Your Riskified module is active','Partners'),(104,1,'Riskified very active','Your Riskified module is very active','Partners'),(105,1,'Simplify installed','You have installed the Simplify module','Partners'),(106,1,'Simplify configured','You have configured the Simplify module','Partners'),(107,1,'Simplify active','Your Simplify module is active','Partners'),(108,1,'Simplify very active','Your Simplify module is very active','Partners'),(109,1,'VTPayment installed','You have installed the VTPayment module','Partners'),(110,1,'VTPayment configured','You have configured the VTPayment module','Partners'),(111,1,'VTPayment active','Your VTPayment module is active','Partners'),(112,1,'VTPayment very active','Your VTPayment module is very active','Partners'),(113,1,'Yotpo installed','You have installed the Yotpo module','Partners'),(114,1,'Yotpo configured','You have configured the Yotpo module','Partners'),(115,1,'Yotpo active','Your Yotpo module is active','Partners'),(116,1,'Yotpo very active','Your Yotpo module is very active','Partners'),(117,1,'Youstice installed','You have installed the Youstice module','Partners'),(118,1,'Youstice configured','You have configured the Youstice module','Partners'),(119,1,'Youstice active','Your Youstice module is active','Partners'),(120,1,'Youstice very active','Your Youstice module is very active','Partners'),(121,1,'Loyalty Lion installed','You have installed the Loyalty Lion module','Partners'),(122,1,'Loyalty Lion configured','You have configured the Loyalty Lion module','Partners'),(123,1,'Loyalty Lion active','Your Loyalty Lion module is active','Partners'),(124,1,'Loyalty Lion very active','Your Loyalty Lion module is very active','Partners'),(125,1,'SEO','You enabled the URL rewriting through the tab \"Preferences > SEO and URLs\".','SEO'),(126,1,'Site Performance','You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.','Site Performance'),(127,1,'Site Performance','You enabled media servers through the tab \"Advanced parameters > Performance\".','Site Performance'),(128,1,'Payment','You configured a payment solution on your shop.','Payment'),(129,1,'Payment','You offer two different payment methods to your customers.','Payment'),(130,1,'Shipping','You configured a carrier on your shop.','Shipping'),(131,1,'Shipping','You offer two shipping solutions (carriers) to your customers.','Shipping'),(132,1,'Catalog Size','You added your first product to your catalog!','Catalog Size'),(133,1,'Catalog Size','You have 10 products within your catalog.','Catalog Size'),(134,1,'Contact information','You configured your phone number so your customers can reach you!','Contact information'),(135,1,'Contact information','You added a third email address to your contact form.','Contact information'),(136,1,'Contact information','You suggest a total of 5 departments to be reached by your customers via your contact form.','Contact information'),(137,1,'Catalog Size','You have 100 products within your catalog.','Catalog Size'),(138,1,'Catalog Size','You have 1,000 products within your catalog.','Catalog Size'),(139,1,'Catalog Size','You have 10,000 products within your catalog.','Catalog Size'),(140,1,'Catalog Size','You have 100,000 products within your catalog.','Catalog Size'),(141,1,'Days of Experience','You just installed PrestaShop!','Days of Experience'),(142,1,'Days of Experience','You installed PrestaShop a week ago!','Days of Experience'),(143,1,'Customization','You uploaded your own logo.','Customization'),(144,1,'Customization','You installed a new template.','Customization'),(145,1,'Addons','You connected your back-office to the Addons platform using your PrestaShop Addons account.','Addons'),(146,1,'Multistores','You enabled the Multistores feature.','Multistores'),(147,1,'Multistores','You manage two shops with the Multistores feature.','Multistores'),(148,1,'Multistores','You manage two different groups of shops using the Multistores feature.','Multistores'),(149,1,'Multistores','You manage five shops with the Multistores feature.','Multistores'),(150,1,'Multistores','You manage five different groups of shops using the Multistores feature.','Multistores'),(151,1,'Shipping','You offer three different shipping solutions (carriers) to your customers.','Shipping'),(152,1,'Payment','You offer three different payment methods to your customers.','Payment'),(153,1,'Revenue','You get this badge when you reach 200 USD in sales.','Revenue'),(154,1,'Revenue','You get this badge when you reach 1000 USD in sales.','Revenue'),(155,1,'Revenue','You get this badge when you reach 1000 USD in sales.','Revenue'),(156,1,'Revenue','You get this badge when you reach 200 USD in sales.','Revenue'),(157,1,'Revenue','You get this badge when you reach 1000 USD in sales.','Revenue'),(158,1,'Revenue','You get this badge when you reach 1000 USD in sales.','Revenue'),(159,1,'Days of Experience','You installed PrestaShop a month ago!','Days of Experience'),(160,1,'Days of Experience','You installed PrestaShop six months ago!','Days of Experience'),(161,1,'Days of Experience','You installed PrestaShop a year ago!','Days of Experience'),(162,1,'Days of Experience','You installed PrestaShop two years ago!','Days of Experience'),(163,1,'Visitors','You reached 10 visitors!','Visitors'),(164,1,'Visitors','You reached 100 visitors!','Visitors'),(165,1,'Visitors','You reached 1,000 visitors!','Visitors'),(166,1,'Visitors','You reached 10,000 visitors!','Visitors'),(167,1,'Visitors','You reached 100,000 visitors!','Visitors'),(168,1,'Visitors','You reached 1,000,000 visitors!','Visitors'),(169,1,'Customer Carts','Two carts have been created by visitors','Customer Carts'),(170,1,'Customer Carts','Ten carts have been created by visitors.','Customer Carts'),(171,1,'Customer Carts','A hundred carts have been created by visitors on your shop.','Customer Carts'),(172,1,'Customer Carts','A thousand carts have been created by visitors on your shop.','Customer Carts'),(173,1,'Customer Carts','10,000 carts have been created by visitors.','Customer Carts'),(174,1,'Customer Carts','100,000 carts have been created by visitors.','Customer Carts'),(175,1,'Orders','You received your first order.','Orders'),(176,1,'Orders','10 orders have been placed through your online shop.','Orders'),(177,1,'Orders','You received 100 orders through your online shop!','Orders'),(178,1,'Orders','You received 1,000 orders through your online shop, congrats!','Orders'),(179,1,'Orders','You received 10,000 orders through your online shop, cheers!','Orders'),(180,1,'Orders','You received 100,000 orders through your online shop!','Orders'),(181,1,'Customer Service Threads','You received  your first customer\'s message.','Customer Service Threads'),(182,1,'Customer Service Threads','You received 10 messages from your customers.','Customer Service Threads'),(183,1,'Customer Service Threads','You received 100 messages from your customers.','Customer Service Threads'),(184,1,'Customer Service Threads','You received 1,000 messages from your customers.','Customer Service Threads'),(185,1,'Customer Service Threads','You received 10,000 messages from your customers.','Customer Service Threads'),(186,1,'Customer Service Threads','You received 100,000 messages from your customers.','Customer Service Threads'),(187,1,'Customers','You got the first customer registered on your shop!','Customers'),(188,1,'Customers','You have over 10 customers registered on your shop.','Customers'),(189,1,'Customers','You have over 100 customers registered on your shop.','Customers'),(190,1,'Customers','You have over 1,000 customers registered on your shop.','Customers'),(191,1,'Customers','You have over 10,000 customers registered on your shop.','Customers'),(192,1,'Customers','You have over 100,000 customers registered on your shop.','Customers'),(193,1,'North America','You got your first sale in North America','North America'),(194,1,'Oceania','You got your first sale in Oceania','Oceania'),(195,1,'Asia','You got your first sale in Asia','Asia'),(196,1,'South America','You got your first sale in South America','South America'),(197,1,'Europe','You got your first sale in  Europe!','Europe'),(198,1,'Africa','You got your first sale in Africa','Africa'),(199,1,'Maghreb','You got your first sale in Maghreb','Maghreb'),(200,1,'Your Team\'s Employees','First employee account added to your shop','Your Team\'s Employees'),(201,1,'Your Team\'s Employees','3 employee accounts added to your shop','Your Team\'s Employees'),(202,1,'Your Team\'s Employees','5 employee accounts added to your shop','Your Team\'s Employees'),(203,1,'Your Team\'s Employees','10 employee accounts added to your shop','Your Team\'s Employees'),(204,1,'Your Team\'s Employees','20 employee accounts added to your shop','Your Team\'s Employees'),(205,1,'Your Team\'s Employees','40 employee accounts added to your shop','Your Team\'s Employees'),(206,1,'Product Pictures','First photo added to your catalog','Product Pictures'),(207,1,'Product Pictures','50 photos added to your catalog','Product Pictures'),(208,1,'Product Pictures','100 photos added to your catalog','Product Pictures'),(209,1,'Product Pictures','1,000 photos added to your catalog','Product Pictures'),(210,1,'Product Pictures','10,000 photos added to your catalog','Product Pictures'),(211,1,'Product Pictures','50,000 photos added to your catalog','Product Pictures'),(212,1,'Customization','First CMS page added to your catalog','Customization'),(213,1,'Cart Rules','First cart rules configured on your shop','Cart Rules'),(214,1,'Cart Rules','You have 10 cart rules configured on your shop','Cart Rules'),(215,1,'Cart Rules','You have 100 cart rules configured on your shop','Cart Rules'),(216,1,'Cart Rules','You have 500 cart rules configured on your shop','Cart Rules'),(217,1,'Cart Rules','You have 1,000 cart rules configured on your shop','Cart Rules'),(218,1,'Cart Rules','You have 5,000 cart rules configured on your shop','Cart Rules'),(219,1,'International Orders','First international order placed on your shop.','International Orders'),(220,1,'International Orders','10 international orders placed on your shop.','International Orders'),(221,1,'International Orders','100 international orders placed on your shop!','International Orders'),(222,1,'International Orders','1,000 international orders placed on your shop!','International Orders'),(223,1,'International Orders','5,000 international orders placed on your shop!','International Orders'),(224,1,'International Orders','10,000 international orders placed on your shop!','International Orders'),(225,1,'Store','First store configured on your shop!','Store'),(226,1,'Store','You have 2 stores configured on your shop','Store'),(227,1,'Store','You have 5 stores configured on your shop','Store'),(228,1,'Store','You have 10 stores configured on your shop','Store'),(229,1,'Store','You have 20 stores configured on your shop','Store'),(230,1,'Store','You have 50 stores configured on your shop','Store'),(231,1,'Webservice x1','First webservice account added to your shop','WebService'),(232,1,'Webservice x2','2 webservice accounts added to your shop','WebService'),(233,1,'Webservice x3','3 webservice accounts added to your shop','WebService'),(234,1,'Webservice x4','4 webservice accounts added to your shop','WebService');
/*!40000 ALTER TABLE `ps_badge_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier`
--

DROP TABLE IF EXISTS `ps_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_reference` int(10) unsigned NOT NULL,
  `id_tax_rules_group` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `reference` (`id_reference`,`deleted`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier`
--

LOCK TABLES `ps_carrier` WRITE;
/*!40000 ALTER TABLE `ps_carrier` DISABLE KEYS */;
INSERT INTO `ps_carrier` VALUES (1,1,0,'eshoe-shop','',1,1,0,0,0,1,0,0,'',1,0,0,0,0,0.000000,0),(2,2,0,'My carrier','',1,1,1,0,0,0,0,0,'',1,1,0,0,0,0.000000,0),(3,2,0,'Pocztowy Kurier','',1,0,1,0,0,0,0,0,'',1,1,0,0,0,0.000000,0),(4,1,0,'Sklep stacjonarcy','',1,0,0,0,0,1,0,0,'',1,0,0,0,0,0.000000,0),(5,5,0,'FerdEx','',1,1,1,0,0,0,0,0,'',2,2,0,0,0,0.000000,1),(6,6,0,'UPES','',1,1,0,0,0,0,0,0,'',2,3,0,0,0,0.000000,1),(7,5,0,'FerdEx','',1,1,1,0,0,0,0,0,'',2,2,0,0,0,0.000000,1),(8,6,0,'UPES','',1,1,0,0,0,0,0,0,'',2,3,0,0,0,0.000000,1),(9,5,0,'FerdEx','',1,1,0,0,0,0,0,0,'',2,2,0,0,0,0.000000,1),(10,6,0,'UPES','',1,0,0,0,0,0,0,0,'',2,3,0,0,0,0.000000,1),(11,5,0,'FerdEx','',1,1,0,0,0,0,0,0,'',2,2,0,0,0,0.000000,1),(12,5,0,'FerdEx','',1,0,0,0,0,0,0,0,'',2,2,0,0,0,0.000000,1);
/*!40000 ALTER TABLE `ps_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_group`
--

DROP TABLE IF EXISTS `ps_carrier_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_group`
--

LOCK TABLES `ps_carrier_group` WRITE;
/*!40000 ALTER TABLE `ps_carrier_group` DISABLE KEYS */;
INSERT INTO `ps_carrier_group` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,1),(9,2),(9,3),(10,1),(10,2),(10,3),(11,1),(11,2),(11,3),(12,1),(12,2),(12,3);
/*!40000 ALTER TABLE `ps_carrier_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_lang`
--

DROP TABLE IF EXISTS `ps_carrier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_lang`
--

LOCK TABLES `ps_carrier_lang` WRITE;
/*!40000 ALTER TABLE `ps_carrier_lang` DISABLE KEYS */;
INSERT INTO `ps_carrier_lang` VALUES (1,1,1,'Odbiór w sklepie'),(2,1,1,'Dostawa następnego dnia!'),(3,1,1,'Dostawa następnego dnia!'),(4,1,1,'Odbiór w sklepie'),(5,1,1,'3'),(6,1,1,'1'),(7,1,1,'3'),(8,1,1,'1'),(9,1,1,'3'),(10,1,1,'1'),(11,1,1,'3'),(12,1,1,'3');
/*!40000 ALTER TABLE `ps_carrier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_shop`
--

DROP TABLE IF EXISTS `ps_carrier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_shop`
--

LOCK TABLES `ps_carrier_shop` WRITE;
/*!40000 ALTER TABLE `ps_carrier_shop` DISABLE KEYS */;
INSERT INTO `ps_carrier_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1);
/*!40000 ALTER TABLE `ps_carrier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_tax_rules_group_shop`
--

DROP TABLE IF EXISTS `ps_carrier_tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_tax_rules_group_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_tax_rules_group_shop`
--

LOCK TABLES `ps_carrier_tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_carrier_tax_rules_group_shop` DISABLE KEYS */;
INSERT INTO `ps_carrier_tax_rules_group_shop` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,0,1),(6,0,1),(7,0,1),(8,0,1),(9,0,1),(10,0,1),(11,0,1),(12,0,1);
/*!40000 ALTER TABLE `ps_carrier_tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_zone`
--

DROP TABLE IF EXISTS `ps_carrier_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_zone`
--

LOCK TABLES `ps_carrier_zone` WRITE;
/*!40000 ALTER TABLE `ps_carrier_zone` DISABLE KEYS */;
INSERT INTO `ps_carrier_zone` VALUES (1,1),(2,1),(2,2),(3,1),(3,2),(4,1),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8);
/*!40000 ALTER TABLE `ps_carrier_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart`
--

DROP TABLE IF EXISTS `ps_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `checkout_session_data` mediumtext,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop_2` (`id_shop`,`date_upd`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart`
--

LOCK TABLES `ps_cart` WRITE;
/*!40000 ALTER TABLE `ps_cart` DISABLE KEYS */;
INSERT INTO `ps_cart` VALUES (1,1,1,2,'{\"3\":\"2,\"}',1,5,5,1,2,1,'b44a6d9efd7a0076a0fbce6b15eaf3b1',0,0,'',0,0,'2020-11-30 19:28:56','2020-11-30 19:28:56',NULL),(2,1,1,2,'{\"3\":\"2,\"}',1,5,5,1,2,1,'b44a6d9efd7a0076a0fbce6b15eaf3b1',0,0,'',0,0,'2020-11-30 19:28:56','2020-11-30 19:28:56',NULL),(3,1,1,2,'{\"3\":\"2,\"}',1,5,5,1,2,1,'b44a6d9efd7a0076a0fbce6b15eaf3b1',0,0,'',0,0,'2020-11-30 19:28:56','2020-11-30 19:28:56',NULL),(4,1,1,2,'{\"3\":\"2,\"}',1,5,5,1,2,1,'b44a6d9efd7a0076a0fbce6b15eaf3b1',0,0,'',0,0,'2020-11-30 19:28:56','2020-11-30 19:28:56',NULL),(5,1,1,2,'{\"3\":\"2,\"}',1,5,5,1,2,1,'b44a6d9efd7a0076a0fbce6b15eaf3b1',0,0,'',0,0,'2020-11-30 19:28:56','2020-11-30 19:28:56',NULL),(6,1,1,1,'{\"6\":\"1,\"}',1,6,6,1,3,4,'dc2da80e0683a0c5042d7a5e3b507991',0,0,'',0,0,'2020-12-01 19:30:20','2020-12-01 19:31:32','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"50890d3bd258be446d85f36647355af9152ffd3b\"}'),(7,1,1,2,'{\"6\":\"2,\"}',1,6,6,1,3,5,'dc2da80e0683a0c5042d7a5e3b507991',0,0,'',0,0,'2020-12-01 19:32:15','2020-12-01 21:43:12','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"ba6c8acf1ce40c1683a2017fe369e59277ab0074\"}'),(8,1,1,3,'{\"7\":\"3,\"}',1,7,7,1,4,6,'b7b928b85706aab35f9bfc7ea19c7e1c',0,0,'',0,0,'2020-12-02 18:08:45','2020-12-02 18:10:36','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"c1ecc55ca81d29dd6e5253b5b5f756d5077d8f5f\"}'),(9,1,1,0,'',1,0,0,1,5,7,'0dfa8fa1fff81a5766dd558aa5c4a1f8',0,0,'',0,0,'2020-12-02 18:44:46','2020-12-02 19:11:56',NULL),(10,1,1,4,'{\"8\":\"4,\"}',1,8,8,1,5,8,'0dfa8fa1fff81a5766dd558aa5c4a1f8',0,0,'',0,0,'2020-12-02 19:44:51','2020-12-02 19:47:12','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"4a46227e40839f33d3911384b46211365d746bd0\"}'),(11,1,1,4,'{\"8\":\"4,\"}',1,8,8,1,5,7,'0dfa8fa1fff81a5766dd558aa5c4a1f8',0,0,'',0,0,'2020-12-06 15:34:06','2020-12-06 15:36:02','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"7a37203b96e09d2a9938371cb86fe8dd466e9893\"}'),(12,1,1,0,'',1,0,0,1,6,8,'5a42a10dda556a655455cec259e8bdff',0,0,'',0,0,'2020-12-06 15:37:45','2020-12-06 15:54:40',NULL),(13,1,1,3,'{\"9\":\"3,\"}',1,9,9,1,7,9,'ab0a87a1c69d238f299875500d7ee004',0,0,'',0,0,'2020-12-14 18:34:00','2020-12-14 18:34:42','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"ad769d4da4d10835dc18222aec46cd4fc52bd724\"}'),(14,1,1,12,'{\"10\":\"12,\"}',1,10,10,1,8,4,'cfc42db9003074c2e472f86be0b51a6a',0,0,'',0,0,'2020-12-17 00:41:40','2020-12-17 00:47:17','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checkout-payment-step\":{\"step_is_reachable\":false,\"step_is_complete\":false},\"checksum\":\"2afcb26554817509c5d081e21d68f4dac499aac3\"}'),(15,1,1,12,'{\"11\":\"12,\"}',1,11,11,1,9,12,'2f4a0c628f14a48f97e60ab8ad3cfb14',0,0,'',0,0,'2020-12-18 01:39:17','2020-12-18 01:48:17','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"3272f2e1caf2c341a0b466780da26901baeef3ad\"}'),(16,1,1,4,'{\"12\":\"4,\"}',1,12,12,1,10,13,'5268748b34a9ef2afece90f05a7da9a8',0,0,'',0,0,'2020-12-18 18:58:03','2020-12-18 18:58:48','{\"checkout-personal-information-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-addresses-step\":{\"step_is_reachable\":true,\"step_is_complete\":true,\"use_same_address\":true},\"checkout-delivery-step\":{\"step_is_reachable\":true,\"step_is_complete\":true},\"checkout-payment-step\":{\"step_is_reachable\":true,\"step_is_complete\":false},\"checksum\":\"2b2d8be4228943b42947d669e8cdc54a588badaa\"}');
/*!40000 ALTER TABLE `ps_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_cart_rule`
--

DROP TABLE IF EXISTS `ps_cart_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_cart_rule` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_cart_rule`
--

LOCK TABLES `ps_cart_cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_cart_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_product`
--

DROP TABLE IF EXISTS `ps_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_cart`,`id_product`,`id_product_attribute`,`id_customization`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_order` (`id_cart`,`date_add`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_product`
--

LOCK TABLES `ps_cart_product` WRITE;
/*!40000 ALTER TABLE `ps_cart_product` DISABLE KEYS */;
INSERT INTO `ps_cart_product` VALUES (6,20,6,1,0,0,1,'2020-12-01 19:30:20'),(7,21,6,1,60,0,1,'2020-12-01 21:35:48'),(8,21,7,1,60,0,1,'2020-12-02 18:08:45'),(9,21,0,1,60,0,1,'2020-12-02 19:01:16'),(10,20,8,1,66,0,1,'2020-12-02 19:46:29'),(11,20,8,1,66,0,4,'2020-12-06 15:34:06'),(13,20,9,1,66,0,1,'2020-12-14 18:34:00'),(14,20,10,1,66,0,2,'2020-12-17 00:47:04'),(14,21,10,1,60,0,1,'2020-12-17 00:46:28'),(15,21,11,1,60,0,1,'2020-12-18 01:46:19'),(16,21,12,1,60,0,1,'2020-12-18 18:58:03');
/*!40000 ALTER TABLE `ps_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule`
--

DROP TABLE IF EXISTS `ps_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule` (
  `id_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `reduction_exclude_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_product` int(10) unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`),
  KEY `id_customer` (`id_customer`,`active`,`date_to`),
  KEY `group_restriction` (`group_restriction`,`active`,`date_to`),
  KEY `id_customer_2` (`id_customer`,`active`,`highlight`,`date_to`),
  KEY `group_restriction_2` (`group_restriction`,`active`,`highlight`,`date_to`),
  KEY `date_from` (`date_from`),
  KEY `date_to` (`date_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule`
--

LOCK TABLES `ps_cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_carrier`
--

DROP TABLE IF EXISTS `ps_cart_rule_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_carrier` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_carrier`
--

LOCK TABLES `ps_cart_rule_carrier` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_combination`
--

DROP TABLE IF EXISTS `ps_cart_rule_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_combination` (
  `id_cart_rule_1` int(10) unsigned NOT NULL,
  `id_cart_rule_2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  KEY `id_cart_rule_1` (`id_cart_rule_1`),
  KEY `id_cart_rule_2` (`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_combination`
--

LOCK TABLES `ps_cart_rule_combination` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_country`
--

DROP TABLE IF EXISTS `ps_cart_rule_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_country` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_country`
--

LOCK TABLES `ps_cart_rule_country` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_group`
--

DROP TABLE IF EXISTS `ps_cart_rule_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_group` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_group`
--

LOCK TABLES `ps_cart_rule_group` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_lang`
--

DROP TABLE IF EXISTS `ps_cart_rule_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_lang` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_lang`
--

LOCK TABLES `ps_cart_rule_lang` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_product_rule`
--

DROP TABLE IF EXISTS `ps_cart_rule_product_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_product_rule` (
  `id_product_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int(10) unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_product_rule`
--

LOCK TABLES `ps_cart_rule_product_rule` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_product_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_product_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_product_rule_group`
--

DROP TABLE IF EXISTS `ps_cart_rule_product_rule_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_product_rule_group`
--

LOCK TABLES `ps_cart_rule_product_rule_group` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_product_rule_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_product_rule_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_product_rule_value`
--

DROP TABLE IF EXISTS `ps_cart_rule_product_rule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_product_rule_value` (
  `id_product_rule` int(10) unsigned NOT NULL,
  `id_item` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_product_rule_value`
--

LOCK TABLES `ps_cart_rule_product_rule_value` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_product_rule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_product_rule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_rule_shop`
--

DROP TABLE IF EXISTS `ps_cart_rule_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_rule_shop` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_rule_shop`
--

LOCK TABLES `ps_cart_rule_shop` WRITE;
/*!40000 ALTER TABLE `ps_cart_rule_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_rule_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category`
--

DROP TABLE IF EXISTS `ps_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `activenleft` (`active`,`nleft`),
  KEY `activenright` (`active`,`nright`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category`
--

LOCK TABLES `ps_category` WRITE;
/*!40000 ALTER TABLE `ps_category` DISABLE KEYS */;
INSERT INTO `ps_category` VALUES (1,0,1,0,1,16,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0,0),(2,1,1,1,2,15,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0,1),(3,2,1,2,3,8,1,'2020-11-30 19:28:56','2020-12-01 19:33:46',0,0),(4,3,1,3,4,5,1,'2020-11-30 19:28:56','2020-12-01 19:34:29',0,0),(5,3,1,3,6,7,1,'2020-11-30 19:28:56','2020-12-01 19:34:44',1,0),(10,2,1,2,9,14,1,'2020-12-01 19:24:01','2020-12-01 19:34:08',1,0),(11,10,1,3,10,11,1,'2020-12-01 19:35:08','2020-12-01 19:35:08',0,0),(12,10,1,3,12,13,1,'2020-12-01 19:35:19','2020-12-01 19:35:19',0,0);
/*!40000 ALTER TABLE `ps_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_group`
--

DROP TABLE IF EXISTS `ps_category_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_group`
--

LOCK TABLES `ps_category_group` WRITE;
/*!40000 ALTER TABLE `ps_category_group` DISABLE KEYS */;
INSERT INTO `ps_category_group` VALUES (2,0),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(10,1),(10,2),(10,3),(11,1),(11,2),(11,3),(12,1),(12,2),(12,3);
/*!40000 ALTER TABLE `ps_category_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_lang`
--

DROP TABLE IF EXISTS `ps_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_lang`
--

LOCK TABLES `ps_category_lang` WRITE;
/*!40000 ALTER TABLE `ps_category_lang` DISABLE KEYS */;
INSERT INTO `ps_category_lang` VALUES (1,1,1,'Baza','','baza','','',''),(2,1,1,'Strona główna','','strona-glowna','','',''),(3,1,1,'Męskie','<p>Odkryj intrygujące kolekcje butów męskich</p>','meskie','','',''),(4,1,1,'Półbuty','','polbuty','','',''),(5,1,1,'Sportowe','','sportowe','','',''),(10,1,1,'Damskie','<p>Odkryj intrygujące kolekcje butów damskich</p>','damskie','','',''),(11,1,1,'Botki','','botki','','',''),(12,1,1,'Kozaki','','kozaki','','','');
/*!40000 ALTER TABLE `ps_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_product`
--

DROP TABLE IF EXISTS `ps_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_product`
--

LOCK TABLES `ps_category_product` WRITE;
/*!40000 ALTER TABLE `ps_category_product` DISABLE KEYS */;
INSERT INTO `ps_category_product` VALUES (2,20,1),(2,21,2),(3,20,1),(3,21,2),(4,20,1),(4,21,2);
/*!40000 ALTER TABLE `ps_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_shop`
--

DROP TABLE IF EXISTS `ps_category_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_shop`
--

LOCK TABLES `ps_category_shop` WRITE;
/*!40000 ALTER TABLE `ps_category_shop` DISABLE KEYS */;
INSERT INTO `ps_category_shop` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(5,1,1),(10,1,1),(11,1,0),(12,1,1);
/*!40000 ALTER TABLE `ps_category_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms`
--

DROP TABLE IF EXISTS `ps_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indexation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms`
--

LOCK TABLES `ps_cms` WRITE;
/*!40000 ALTER TABLE `ps_cms` DISABLE KEYS */;
INSERT INTO `ps_cms` VALUES (1,1,0,1,0),(3,1,1,1,0),(4,1,2,1,0);
/*!40000 ALTER TABLE `ps_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_category`
--

DROP TABLE IF EXISTS `ps_cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_category` (
  `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_category`
--

LOCK TABLES `ps_cms_category` WRITE;
/*!40000 ALTER TABLE `ps_cms_category` DISABLE KEYS */;
INSERT INTO `ps_cms_category` VALUES (1,0,1,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0);
/*!40000 ALTER TABLE `ps_cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_category_lang`
--

DROP TABLE IF EXISTS `ps_cms_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_category_lang` (
  `id_cms_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_category_lang`
--

LOCK TABLES `ps_cms_category_lang` WRITE;
/*!40000 ALTER TABLE `ps_cms_category_lang` DISABLE KEYS */;
INSERT INTO `ps_cms_category_lang` VALUES (1,1,1,'Strona główna','','strona-glowna','','','');
/*!40000 ALTER TABLE `ps_cms_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_category_shop`
--

DROP TABLE IF EXISTS `ps_cms_category_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_category_shop` (
  `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_category_shop`
--

LOCK TABLES `ps_cms_category_shop` WRITE;
/*!40000 ALTER TABLE `ps_cms_category_shop` DISABLE KEYS */;
INSERT INTO `ps_cms_category_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_cms_category_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_lang`
--

DROP TABLE IF EXISTS `ps_cms_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `meta_title` varchar(255) NOT NULL,
  `head_seo_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_lang`
--

LOCK TABLES `ps_cms_lang` WRITE;
/*!40000 ALTER TABLE `ps_cms_lang` DISABLE KEYS */;
INSERT INTO `ps_cms_lang` VALUES (1,1,1,'Dostawa','','Regulamin dostawy','conditions, delivery, delay, shipment, pack','<h2>Dostawa i zwroty</h2>\n<p>Dostawa odbywa się 2 dni robocze. Klient ma prawo do zwrotu w przeciągu 2 tygodnii. </p>','dostawa'),(3,1,1,'Regulamin sklepu','','','conditions, terms, use, sell','<h2>Regulamin sklepu</h2>\n<h3></h3>\n<p>W przyszłości będzie tu regulamin sklepu</p>','regulamin-sklepu'),(4,1,1,'O nas','','','about us, informations','<h2>O nas</h2>\n<h3></h3>\n<p>To my.</p>','o-nas');
/*!40000 ALTER TABLE `ps_cms_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_role`
--

DROP TABLE IF EXISTS `ps_cms_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_role` (
  `id_cms_role` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_cms` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_role`,`id_cms`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_role`
--

LOCK TABLES `ps_cms_role` WRITE;
/*!40000 ALTER TABLE `ps_cms_role` DISABLE KEYS */;
INSERT INTO `ps_cms_role` VALUES (1,'LEGAL_CONDITIONS',3),(2,'LEGAL_NOTICE',2);
/*!40000 ALTER TABLE `ps_cms_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_role_lang`
--

DROP TABLE IF EXISTS `ps_cms_role_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_role_lang` (
  `id_cms_role` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_cms_role`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_role_lang`
--

LOCK TABLES `ps_cms_role_lang` WRITE;
/*!40000 ALTER TABLE `ps_cms_role_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cms_role_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_shop`
--

DROP TABLE IF EXISTS `ps_cms_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_shop` (
  `id_cms` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_shop`
--

LOCK TABLES `ps_cms_shop` WRITE;
/*!40000 ALTER TABLE `ps_cms_shop` DISABLE KEYS */;
INSERT INTO `ps_cms_shop` VALUES (1,1),(3,1),(4,1);
/*!40000 ALTER TABLE `ps_cms_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_condition`
--

DROP TABLE IF EXISTS `ps_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_condition` (
  `id_condition` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_condition` int(11) NOT NULL,
  `type` enum('configuration','install','sql') NOT NULL,
  `request` text,
  `operator` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `calculation_type` enum('hook','time') DEFAULT NULL,
  `calculation_detail` varchar(64) DEFAULT NULL,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_condition`,`id_ps_condition`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_condition`
--

LOCK TABLES `ps_condition` WRITE;
/*!40000 ALTER TABLE `ps_condition` DISABLE KEYS */;
INSERT INTO `ps_condition` VALUES (1,1,'configuration','PS_REWRITING_SETTINGS','==','1','1','hook','actionAdminMetaControllerUpdate_optionsAfter',1,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(2,2,'configuration','PS_SMARTY_FORCE_COMPILE','!=','2','1','hook','actionAdminPerformanceControllerSaveAfter',1,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(3,3,'configuration','PS_CSS_THEME_CACHE','==','1','','hook','actionAdminPerformanceControllerSaveAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(4,4,'configuration','PS_CIPHER_ALGORITHM','==','1','1','hook','actionAdminPerformanceControllerSaveAfter',1,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(5,5,'configuration','PS_MEDIA_SERVERS','==','1','','hook','actionAdminPerformanceControllerSaveAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(6,6,'sql','SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = \"displayPayment\" OR h.name = \"payment\") AND m.name NOT IN (\"bankwire\", \"cheque\", \"cashondelivery\")','>','0','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:30','2020-12-18 01:43:58'),(7,7,'sql','SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = \"displayPayment\" OR h.name = \"payment\") AND m.name NOT IN (\"bankwire\", \"cheque\", \"cashondelivery\")','>','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:30','2020-12-18 01:43:58'),(8,8,'sql','SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN (\"0\", \"My carrier\")','>','0','4','hook','actionObjectCarrierAddAfter',1,'2020-12-14 18:25:30','2020-12-17 00:29:07'),(9,9,'sql','SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN (\"0\", \"My carrier\")','>','1','4','hook','actionObjectCarrierAddAfter',1,'2020-12-14 18:25:30','2020-12-17 00:29:07'),(10,10,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','0','1','hook','actionObjectProductAddAfter',1,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(11,11,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','9','3','hook','actionObjectProductAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(12,12,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','99','3','hook','actionObjectProductAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(13,13,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','999','3','hook','actionObjectProductAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(14,14,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','9999','3','hook','actionObjectProductAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(15,15,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','99999','3','hook','actionObjectProductAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(16,16,'configuration','PS_SHOP_PHONE','!=','0','','hook','actionAdminStoresControllerUpdate_optionsAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(17,17,'sql','SELECT COUNT(*) FROM PREFIX_contact','>','2','2','hook','actionObjectContactAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(18,18,'sql','SELECT COUNT(*) FROM PREFIX_contact','>','4','2','hook','actionObjectContactAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(19,19,'install','','>','0','1','time','1',1,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(20,20,'install','','>=','7','1','time','1',1,'2020-12-14 18:25:30','2020-12-16 19:00:26'),(21,21,'configuration','PS_LOGO','!=','logo.jpg','1','hook','actionAdminThemesControllerUpdate_optionsAfter',1,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(22,22,'sql','SELECT COUNT(*) FROM PREFIX_theme WHERE directory != \"default\" AND directory != \"prestashop\" AND directory ! \"default-bootstrap\"','>','0','0','hook','actionObjectShopUpdateAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(23,23,'configuration','PS_LOGGED_ON_ADDONS','==','1','','time','1',0,'2020-12-14 18:25:30','2020-12-18 00:05:19'),(24,24,'configuration','PS_MULTISHOP_FEATURE_ACTIVE','==','1','','hook','actionAdminPreferencesControllerUpdate_optionsAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(25,25,'sql','SELECT COUNT(*) FROM PREFIX_shop','>','1','1','hook','actionObjectShopAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(26,26,'sql','SELECT COUNT(*) FROM PREFIX_shop','>','4','1','hook','actionObjectShopAddAfter',0,'2020-12-14 18:25:30','2020-12-14 18:25:30'),(27,27,'sql','SELECT COUNT(*) FROM PREFIX_shop_group','>','5','1','hook','actionObjectShopGroupAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(28,28,'sql','SELECT COUNT(*) FROM PREFIX_shop_group','>','1','1','hook','actionObjectShopGroupAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(29,29,'sql','SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = \"displayPayment\" OR h.name = \"payment\") AND m.name NOT IN (\"bankwire\", \"cheque\", \"cashondelivery\")','>','2','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(30,30,'sql','SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN (\"0\", \"My carrier\")','>','2','4','hook','actionObjectCarrierAddAfter',1,'2020-12-14 18:25:31','2020-12-17 00:29:07'),(31,31,'sql','SELECT SUM(total_paid_tax_excl / c.conversion_rate)\r\nFROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != \"XKBKNABJK\"','>=','200','359','hook','actionOrderStatusUpdate',1,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(32,32,'sql',' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != \"XKBKNABJK\"','>=','2000','359','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(33,33,'sql',' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != \"XKBKNABJK\"','>=','20000','359','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(34,34,'sql',' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1','>=','200000','359','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(35,35,'sql',' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1','>=','2000000','359','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(36,36,'sql',' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1','>=','20000000','359','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(37,37,'install','','>=','30','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(38,38,'install','','>=','182','','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(39,39,'install','','>=','365','','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(40,40,'install','','>=','730','','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(41,41,'sql','SELECT COUNT(*) FROM PREFIX_guest','>=','10','10','time','1',1,'2020-12-14 18:25:31','2020-12-16 19:00:26'),(42,42,'sql','SELECT COUNT(*) FROM PREFIX_guest','>=','100','11','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(43,43,'sql','SELECT COUNT(*) FROM PREFIX_guest','>=','1000','11','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(44,44,'sql','SELECT COUNT(*) FROM PREFIX_guest','>=','10000','11','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(45,45,'sql','SELECT COUNT(*) FROM PREFIX_guest','>=','100000','10','time','3',0,'2020-12-14 18:25:31','2020-12-16 19:00:26'),(46,46,'sql','SELECT COUNT(*) FROM PREFIX_guest','>=','1000000','10','time','4',0,'2020-12-14 18:25:31','2020-12-16 19:00:26'),(47,47,'sql','SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != \"b44a6d9efd7a0076a0fbce6b15eaf3b1\"','>=','2','2','hook','actionObjectCartAddAfter',1,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(48,48,'sql','SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != \"b44a6d9efd7a0076a0fbce6b15eaf3b1\"','>=','10','10','hook','actionObjectCartAddAfter',1,'2020-12-14 18:25:31','2020-12-18 01:39:17'),(49,49,'sql','SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != \"b44a6d9efd7a0076a0fbce6b15eaf3b1\"','>=','100','11','hook','actionObjectCartAddAfter',0,'2020-12-14 18:25:31','2020-12-18 18:58:03'),(50,50,'sql','SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != \"b44a6d9efd7a0076a0fbce6b15eaf3b1\"','>=','1000','10','time','1',0,'2020-12-14 18:25:31','2020-12-18 01:43:41'),(51,51,'sql','SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != \"b44a6d9efd7a0076a0fbce6b15eaf3b1\"','>=','10000','10','time','4',0,'2020-12-14 18:25:31','2020-12-18 01:43:41'),(52,52,'sql','SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != \"b44a6d9efd7a0076a0fbce6b15eaf3b1\"','>=','100000','10','time','8',0,'2020-12-14 18:25:31','2020-12-18 01:43:41'),(53,53,'sql','SELECT COUNT(*) FROM PREFIX_orders WHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\")','>=','1','1','hook','actionObjectOrderAddAfter',1,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(54,54,'sql','SELECT COUNT(*) FROM PREFIX_orders WHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\")','>=','10','7','hook','actionObjectOrderAddAfter',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(55,55,'sql','SELECT COUNT(*) FROM PREFIX_orders WHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\")','>=','100','7','hook','actionObjectOrderAddAfter',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(56,56,'sql','SELECT COUNT(*) FROM PREFIX_orders WHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\")','>=','1000','5','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(57,57,'sql','SELECT COUNT(*) FROM PREFIX_orders WHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\")','>=','10000','5','time','4',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(58,58,'sql','SELECT COUNT(*) FROM PREFIX_orders WHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\")','>=','100000','1','time','8',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(59,59,'sql','SELECT COUNT(*) FROM PREFIX_customer WHERE email != \"pub@prestashop.com\"','>=','1','1','hook','actionObjectCustomerAddAfter',1,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(60,60,'sql','SELECT COUNT(*) FROM PREFIX_customer WHERE email != \"pub@prestashop.com\"','>=','10','9','hook','actionObjectCustomerAddAfter',0,'2020-12-14 18:25:31','2020-12-18 18:58:42'),(61,61,'sql','SELECT COUNT(*) FROM PREFIX_customer WHERE email != \"pub@prestashop.com\"','>=','100','9','hook','actionObjectCustomerAddAfter',0,'2020-12-14 18:25:31','2020-12-18 18:58:42'),(62,62,'sql','SELECT COUNT(*) FROM PREFIX_customer WHERE email != \"pub@prestashop.com\"','>=','1000','7','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(63,63,'sql','SELECT COUNT(*) FROM PREFIX_customer WHERE email != \"pub@prestashop.com\"','>=','10000','7','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(64,64,'sql','SELECT COUNT(*) FROM PREFIX_customer WHERE email != \"pub@prestashop.com\"','>=','100000','7','time','4',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(65,65,'sql','SELECT COUNT(*) FROM PREFIX_customer_thread','>=','1','0','hook','actionObjectCustomerThreadAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(66,66,'sql','SELECT COUNT(*) FROM PREFIX_customer_thread','>=','10','0','hook','actionObjectCustomerThreadAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(67,67,'sql','SELECT COUNT(*) FROM PREFIX_customer_thread','>=','100','0','hook','actionObjectCustomerThreadAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(68,68,'sql','SELECT COUNT(*) FROM PREFIX_customer_thread','>=','1000','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(69,69,'sql','SELECT COUNT(*) FROM PREFIX_customer_thread','>=','10000','0','time','4',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(70,70,'sql','SELECT COUNT(*) FROM PREFIX_customer_thread','>=','100000','0','time','8',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(71,76,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"CA\",\r\n\"GL\",\r\n\"PM\",\r\n\"US\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(72,79,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"UM\",\r\n\"AS\",\r\n\"AU\",\r\n\"CK\",\r\n\"FJ\",\r\n\"FM\",\r\n\"GU\",\r\n\"KI\",\r\n\"MH,\"\r\n\"MP\",\r\n\"NC\",\r\n\"NF\",\r\n\"NR\",\r\n\"NU\",\r\n\"NZ\",\r\n\"PF\",\r\n\"PG\",\r\n\"PN\",\r\n\"PW\",\r\n\"SB\",\r\n\"TK\",\r\n\"TO\",\r\n\"TV\",\r\n\"VU\",\r\n\"WF\",\r\n\"WS\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(73,85,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"KG\",\r\n\"KZ\",\r\n\"TJ\",\r\n\"TM\",\r\n\"UZ\",\r\n\"AE\",\r\n\"AM\",\r\n\"AZ\",\r\n\"BH\",\r\n\"CY\",\r\n\"GE\",\r\n\"IL\",\r\n\"IQ\",\r\n\"IR\",\r\n\"JO\",\r\n\"KW\",\r\n\"LB\",\r\n\"OM\",\r\n\"QA\",\r\n\"SA\",\r\n\"SY\",\r\n\"TR\",\r\n\"YE\",\r\n\"AF\",\r\n\"BD\",\r\n\"BT\",\r\n\"IN\",\r\n\"IO\",\r\n\"LK\",\r\n\"MV\",\r\n\"NP\",\r\n\"PK\",\r\n\"CN\",\r\n\"HK\",\r\n\"JP\",\r\n\"KP\",\r\n\"KR\",\r\n\"MO\",\r\n\"TW\",\r\n\"MN\",\r\n\"BN\",\r\n\"CC\",\r\n\"CX\",\r\n\"ID\",\r\n\"KH\",\r\n\"LA\",\r\n\"MM\",\r\n\"MY\",\r\n\"PH\",\r\n\"SG\",\r\n\"TH\",\r\n\"TP\",\r\n\"VN\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(74,86,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"BZ\",\r\n\"CR\",\r\n\"GT\",\r\n\"HN\",\r\n\"MX\",\r\n\"NI\",\r\n\"PA\",\r\n\"SV\",\r\n\"AG\",\r\n\"AI\",\r\n\"AN\",\r\n\"AW\",\r\n\"BB\",\r\n\"BM\",\r\n\"BS\",\r\n\"CU\",\r\n\"DM\",\r\n\"DO\",\r\n\"GD\",\r\n\"GP\",\r\n\"HT\",\r\n\"JM\",\r\n\"KN\",\r\n\"KY\",\r\n\"LC\",\r\n\"MQ\",\r\n\"MS\",\r\n\"PR\",\r\n\"TC\",\r\n\"TT\",\r\n\"VC\",\r\n\"VG\",\r\n\"VI\",\r\n\"AR\",\r\n\"BO\",\r\n\"BR\",\r\n\"CL\",\r\n\"CO\",\r\n\"EC\",\r\n\"FK\",\r\n\"GF\",\r\n\"GY\",\r\n\"PE\",\r\n\"PY\",\r\n\"SR\",\r\n\"UY\",\r\n\"VE\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(75,87,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"BE\",\r\n\"DE\",\r\n\"FR\",\r\n\"FX\",\r\n\"GB\",\r\n\"IE\",\r\n\"LU\",\r\n\"MC\",\r\n\"NL\",\r\n\"IT\",\r\n\"MT\",\r\n\"SM\",\r\n\"VA\",\r\n\"AD\",\r\n\"ES\",\r\n\"GI\",\r\n\"PT\",\r\n\"BY\",\r\n\"EE\",\r\n\"LT\",\r\n\"LV\",\r\n\"MD\",\r\n\"PL\",\r\n\"UA\",\r\n\"AL\",\r\n\"BA\",\r\n\"BG\",\r\n\"GR\",\r\n\"HR\",\r\n\"MK\",\r\n\"RO\",\r\n\"SI\",\r\n\"YU\",\r\n\"RU\",\r\n\"AT\",\r\n\"CH\",\r\n\"CZ\",\r\n\"HU\",\r\n\"LI\",\r\n\"SK\",\r\n\"DK\",\r\n\"FI\",\r\n\"FO\",\r\n\"IS\",\r\n\"NO\",\r\n\"SE\",\r\n\"SJ\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(76,88,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"BI\",\r\n\"CF\",\r\n\"CG\",\r\n\"RW\",\r\n\"TD\",\r\n\"ZR\",\r\n\"DJ\",\r\n\"ER\",\r\n\"ET\",\r\n\"KE\",\r\n\"SO\",\r\n\"TZ\",\r\n\"UG\",\r\n\"KM\",\r\n\"MG\",\r\n\"MU\",\r\n\"RE\",\r\n\"SC\",\r\n\"YT\",\r\n\"AO\",\r\n\"BW\",\r\n\"LS\",\r\n\"MW\",\r\n\"MZ\",\r\n\"NA\",\r\n\"SZ\",\r\n\"ZA\",\r\n\"ZM\",\r\n\"ZW\",\r\n\"BF\",\r\n\"BJ\",\r\n\"CI\",\r\n\"CM\",\r\n\"CV\",\r\n\"GA\",\r\n\"GH\",\r\n\"GM\",\r\n\"GN\",\r\n\"GQ\",\r\n\"GW\",\r\n\"LR\",\r\n\"ML\",\r\n\"MR\",\r\n\"NE\",\r\n\"NG\",\r\n\"SL\",\r\n\"SN\",\r\n\"ST\",\r\n\"TG\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(77,89,'sql','SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\" AND c.iso_code IN (\r\n\"DZ\",\r\n\"EG\",\r\n\"EH\",\r\n\"LY\",\r\n\"MA\",\r\n\"SD\",\r\n\"TN\"\r\n)','!=','0','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(78,90,'sql','SELECT COUNT(*) FROM PREFIX_employee','>=','2','1','hook','actionObjectEmployeeAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(79,91,'sql','SELECT COUNT(*) FROM PREFIX_employee','>=','3','1','hook','actionObjectEmployeeAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(80,92,'sql','SELECT COUNT(*) FROM PREFIX_employee','>=','5','1','hook','actionObjectEmployeeAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(81,93,'sql','SELECT COUNT(*) FROM PREFIX_employee','>=','10','1','hook','actionObjectEmployeeAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(82,94,'sql','SELECT COUNT(*) FROM PREFIX_employee','>=','20','1','hook','actionObjectEmployeeAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(83,95,'sql','SELECT COUNT(*) FROM PREFIX_employee','>=','40','1','hook','actionObjectEmployeeAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(84,96,'sql','SELECT id_image FROM PREFIX_image WHERE id_image > 26','>','0','27','hook','actionObjectImageAddAfter',1,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(85,97,'sql','SELECT COUNT(*) FROM PREFIX_image','>=','50','4','hook','actionObjectImageAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(86,98,'sql','SELECT COUNT(*) FROM PREFIX_image','>=','100','4','hook','actionObjectImageAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(87,99,'sql','SELECT COUNT(*) FROM PREFIX_image','>=','1000','3','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(88,100,'sql','SELECT COUNT(*) FROM PREFIX_image','>=','10000','3','time','4',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(89,101,'sql','SELECT COUNT(*) FROM PREFIX_image','>=','50000','3','time','8',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(90,102,'sql','SELECT id_cms FROM PREFIX_cms WHERE id_cms > 5','>','0','0','hook','actionObjectCMSAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(91,103,'sql','SELECT COUNT(*) FROM PREFIX_cart_rule','>=','1','0','hook','actionObjectCartRuleAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(92,104,'sql','SELECT COUNT(*) FROM PREFIX_cart_rule','>=','10','0','hook','actionObjectCartRuleAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(93,105,'sql','SELECT COUNT(*) FROM PREFIX_cart_rule','>=','100','0','hook','actionObjectCartRuleAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(94,106,'sql','SELECT COUNT(*) FROM PREFIX_cart_rule','>=','1000','0','hook','actionObjectCartRuleAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(95,107,'sql','SELECT COUNT(*) FROM PREFIX_cart_rule','>=','500','0','hook','actionObjectCartRuleAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(96,108,'sql','SELECT COUNT(*) FROM PREFIX_cart_rule','>=','5000','0','hook','actionObjectCartRuleAddAfter 	',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(97,109,'sql','SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\") AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\"','>=','1','0','hook','newOrder',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(98,110,'sql','SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\") AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\"','>=','10','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(99,111,'sql','SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\") AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\"','>=','100','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(100,112,'sql','SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\") AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\"','>=','10000','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(101,113,'sql','SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\") AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\"','>=','1000','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(102,114,'sql','SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN (\"XKBKNABJK\", \"OHSATSERP\", \"FFATNOMMJ\", \"UOYEVOLI\", \"KHWLILZLL\") AND a.id_country != \"{config}PS_COUNTRY_DEFAULT{/config}\"','>=','5000','0','hook','actionOrderStatusUpdate',0,'2020-12-14 18:25:31','2020-12-18 18:58:53'),(103,132,'sql','SELECT count(id_configuration) FROM PREFIX_configuration WHERE `name` = \'PS_SHOP_DOMAIN\' AND value IN (\'127.0.0.1\', \'localhost\' )','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(104,136,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%ebay%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(105,140,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%moneybookers%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(106,142,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%paypal%\"','>=','1','','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(107,158,'install','','>=','90','','time','2',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(108,159,'install','','<=','90','','time','2',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(109,165,'sql','SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')','>','0','1','hook','actionAdminStoresControllerSaveAfter',1,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(110,166,'sql','SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')','>','1','1','hook','actionAdminStoresControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(111,167,'sql','SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')','>','4','1','hook','actionAdminStoresControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(112,168,'sql','SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')','>','9','1','hook','actionAdminStoresControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(113,169,'sql','SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')','>','19','1','hook','actionAdminStoresControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(114,170,'sql','SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')','>','49','1','hook','actionAdminStoresControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(115,171,'sql','SELECT COUNT(*) FROM PREFIX_webservice_account','>=','1','0','hook','actionAdminWebserviceControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(116,172,'sql','SELECT COUNT(*) FROM PREFIX_webservice_account','>=','2','0','hook','actionAdminWebserviceControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(117,173,'sql','SELECT COUNT(*) FROM PREFIX_webservice_account','>=','3','0','hook','actionAdminWebserviceControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(118,174,'sql','SELECT COUNT(*) FROM PREFIX_webservice_account','>=','4','0','hook','actionAdminWebserviceControllerSaveAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(119,175,'sql','SELECT count(*) FROM	 PREFIX_configuration WHERE name = \'PS_HOSTED_MODE\'','==','0','','time','1',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(120,209,'configuration','EBAY_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(121,320,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%shopgate%\" ','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(122,322,'configuration','SHOPGATE_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(123,323,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%shoppingfluxexport%\" ','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(124,324,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%shoppingfluxexport%\" ','==','0','','time','1',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(125,325,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE name LIKE \'SHOPPINGFLUXEXPORT_CONFIGURATION_OK\' OR name LIKE \'SHOPPINGFLUXEXPORT_CONFIGURED\'','>=','1','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(126,326,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'MONEYBOOKERS_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'MB_PAY_TO_EMAIL \') AND ( value != \'testaccount2@moneybookers.com \'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(127,358,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%ebay%\" AND os.logable = 1','>=','1','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(128,359,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%ebay%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(129,375,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%shopgate%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','1','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(130,376,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%shopgate%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(131,377,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%moneybookers%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','1','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(132,394,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%sofortbanking%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(133,399,'sql','SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE \"demo_%\"','>','499','','hook','actionObjectProductAddAfter',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(134,424,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%alliance3%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(135,425,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'ALLIANCE3_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'ALLIANCE_DEMO\') AND ( value = \'0\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(136,426,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%alliance3%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(137,427,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%alliance3%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(138,428,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%authorizeaim%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(139,429,'configuration','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'AUTHORIZEAIM_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'AUTHORIZE_AIM_SANDBOX\') AND ( value = \'0\'))','==','2','','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(140,430,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%authorizeaim%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(141,431,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%authorizeaim%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(142,434,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%bluepay%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(143,435,'configuration','BLUEPAY_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(144,436,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%bluepay%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(145,437,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%bluepay%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(146,438,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%payplug%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(147,439,'configuration','PAYPLUG_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(148,440,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%payplug%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(149,441,'sql','SELECT SUM(o.total_paid) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%payplug%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','10000','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(150,442,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%affinityitems%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(151,443,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE name LIKE \'AFFINITYITEMS_CONFIGURATION_OK\' AND value = \'1\'','==','1','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(152,446,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%dpdpoland%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(153,447,'configuration','DPDPOLAND_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(154,448,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like \"%dpdpoland%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(155,449,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like \"%dpdpoland%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','100','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(156,450,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%envoimoinscher%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(157,451,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'ENVOIMOINSCHER_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'EMC_ENV \') AND ( value != \'TEST\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(158,452,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like \"%envoimoinscher%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(159,453,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like \"%envoimoinscher%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','100','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(160,454,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%klikandpay%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(161,455,'configuration','KLIKANDPAY_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(162,456,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%klikandpay%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(163,457,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%klikandpay%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(164,458,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%clickline%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(165,459,'configuration','CLICKLINE_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(166,460,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like \"%clickline%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(167,461,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like \"%clickline%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','100','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(168,462,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%cdiscount%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(169,463,'sql','SELECT 1','!=','1','1','time','100',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(170,464,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%cdiscount%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(171,465,'sql','SELECT SUM(o.total_paid) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%cdiscount%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 365 DAY)','>=','500','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(172,467,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%erpillicopresta%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(173,468,'configuration','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'ERPILLICOPRESTA_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'ERP_LICENCE_VALIDITY \') AND ( value == \'1\')) OR (( name LIKE \'ERP_MONTH_FREE_ACTIVE \') AND ( value == \'0\'))','==','3','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(174,469,'sql','SELECT 1','!=','1','1','time','100',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(175,470,'sql','SELECT 1','!=','1','1','time','100',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(176,471,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%netreviews%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(177,472,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'NETREVIEWS_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'AVISVERIFIES_URLCERTIFICAT \') AND ( value IS NOT LIKE \'%preprod%\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(178,473,'sql','SELECT 1','!=','1','1','time','100',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(179,474,'sql','SELECT 1','!=','1','1','time','100',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(180,475,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%bluesnap%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(181,476,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'BLUESNAP_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'BLUESNAP_SANDBOX \') AND ( value NOT LIKE \'%sandbox%\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(182,477,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%bluesnap%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(183,478,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%bluesnap%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(184,479,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%desjardins%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(185,480,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'DESJARDINS_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'DESJARDINS_MODE \') AND ( value NOT LIKE \'%test%\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(186,481,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%desjardins%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(187,482,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%desjardins%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(188,483,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%firstdata%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(189,484,'configuration','FIRSTDATA_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(190,485,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%firstdata%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(191,486,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%firstdata%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(192,487,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%giveit%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(193,488,'sql','GIVEIT_CONFIGURATION_OK','>=','1','0','time','1',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(194,489,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(195,490,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(196,491,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%ganalytics%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(197,492,'configuration','GANALYTICS_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(198,493,'sql','SELECT 1','!=','1','1','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(199,494,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(200,496,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%pagseguro%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:58'),(201,497,'configuration','PAGSEGURO_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(202,498,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%pagseguro%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(203,499,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%pagseguro%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(204,500,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%paypalmx%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(205,501,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'PAYPALMX_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'PAYPAL_MX_SANDBOX\') AND ( value = \'0\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(206,502,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%paypalmx%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(207,503,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%paypalmx%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(208,505,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%paypalusa%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(209,506,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'PAYPALUSA_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'PAYPAL_USA_SANDBOX\') AND ( value = \'0\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(210,507,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%paypalusa%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(211,508,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%paypalmx%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(212,509,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%payulatam%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(213,510,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'PAYULATAM_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'PAYU_LATAM_TEST\') AND ( value = \'1\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(214,511,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%payulatam%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(215,512,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%payulatam%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(216,513,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%prestastats%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(217,514,'configuration','PRESTASTATS_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(218,515,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(219,516,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(220,517,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%riskified%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(221,518,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'RISKIFIED_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'RISKIFIED_MODE\') AND ( value = \'1\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(222,519,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%riskified%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(223,520,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%riskified%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(224,521,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%simplifycommerce%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(225,522,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'SIMPLIFY_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'SIMPLIFY_MODE\') AND ( value = \'1\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(226,523,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%simplifycommerce%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(227,524,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%simplifycommerce%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(228,525,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%vtpayment%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(229,526,'configuration','VTPAYMENT_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(230,527,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%vtpayment%\" AND os.logable = 1','>=','1','0','time','2',0,'2020-12-14 18:25:31','2020-12-18 01:00:38'),(231,528,'sql','SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like \"%vtpayment%\" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)','>=','30','0','time','7',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(232,529,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%yotpo%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(233,530,'configuration','YOTPO_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(234,531,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(235,532,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(236,533,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%yotpo%\"','==','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(237,534,'sql','SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'YOUSTICERESOLUTIONSYSTEM_CONF_OK\') AND ( value = \'1\')) OR (( name LIKE \'YRS_SANDBOX\') AND ( value = \'0\'))','==','2','0','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(238,535,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(239,536,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(240,537,'sql','SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like \"%loyaltylion%\"','>=','1','0','hook','actionModuleInstallAfter',0,'2020-12-14 18:25:31','2020-12-18 01:43:59'),(241,538,'configuration','LOYALTYLION_CONFIGURATION_OK','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-18 00:05:19'),(242,539,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(243,540,'sql','SELECT 1','!=','1','1','time','365',0,'2020-12-14 18:25:31','2020-12-14 18:25:31'),(244,542,'sql','SELECT \'{config} PS_VERSION_DB{/config}\' >= \'1.7.0.0\' AND < \'1.8.0.0\'','==','1','','time','1',0,'2020-12-14 18:25:31','2020-12-14 18:25:31');
/*!40000 ALTER TABLE `ps_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_condition_advice`
--

DROP TABLE IF EXISTS `ps_condition_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_condition_advice` (
  `id_condition` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_condition`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_condition_advice`
--

LOCK TABLES `ps_condition_advice` WRITE;
/*!40000 ALTER TABLE `ps_condition_advice` DISABLE KEYS */;
INSERT INTO `ps_condition_advice` VALUES (19,1,1),(19,2,1),(19,3,1),(19,4,1),(19,5,1),(19,6,1),(19,7,1),(19,8,1),(19,9,1),(19,10,1),(19,11,1),(19,12,1);
/*!40000 ALTER TABLE `ps_condition_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_condition_badge`
--

DROP TABLE IF EXISTS `ps_condition_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_condition_badge` (
  `id_condition` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL,
  PRIMARY KEY (`id_condition`,`id_badge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_condition_badge`
--

LOCK TABLES `ps_condition_badge` WRITE;
/*!40000 ALTER TABLE `ps_condition_badge` DISABLE KEYS */;
INSERT INTO `ps_condition_badge` VALUES (1,125),(2,126),(3,126),(4,126),(5,127),(6,128),(7,129),(8,130),(9,131),(10,132),(11,133),(12,137),(13,138),(14,139),(15,140),(16,134),(17,135),(18,136),(19,141),(20,142),(21,143),(22,144),(23,145),(24,146),(25,147),(26,149),(27,150),(28,148),(29,152),(30,151),(31,153),(32,154),(33,155),(34,156),(35,157),(36,158),(37,159),(38,160),(39,161),(40,162),(41,163),(42,164),(43,165),(44,166),(45,167),(46,168),(47,169),(48,170),(49,171),(50,172),(51,173),(52,174),(53,175),(54,176),(55,177),(56,178),(57,179),(58,180),(59,187),(60,188),(61,189),(62,190),(63,191),(64,192),(65,181),(66,182),(67,183),(68,184),(69,185),(70,186),(71,193),(72,194),(73,195),(74,196),(75,197),(76,198),(77,199),(78,200),(79,201),(80,202),(81,203),(82,204),(83,205),(84,206),(85,207),(86,208),(87,209),(88,210),(89,211),(90,212),(91,213),(92,214),(93,215),(94,217),(95,216),(96,218),(97,219),(98,220),(99,221),(100,224),(101,222),(102,223),(104,23),(105,5),(109,225),(110,226),(111,227),(112,228),(113,229),(114,230),(115,231),(116,232),(117,233),(118,234),(120,24),(121,1),(122,2),(123,9),(125,10),(126,6),(127,25),(128,26),(129,3),(130,4),(131,7),(132,8),(134,11),(135,12),(136,13),(137,14),(138,15),(139,16),(140,17),(141,18),(142,19),(143,20),(144,21),(145,22),(146,27),(147,28),(148,29),(149,30),(150,31),(151,32),(152,33),(153,34),(154,35),(155,36),(156,37),(157,38),(158,39),(159,40),(160,41),(161,42),(162,43),(163,44),(164,45),(165,46),(166,47),(167,48),(168,49),(169,50),(170,51),(171,52),(172,53),(173,54),(174,55),(175,56),(176,57),(177,58),(178,59),(179,60),(180,61),(181,62),(182,63),(183,64),(184,65),(185,66),(186,67),(187,68),(188,69),(189,70),(190,71),(191,72),(192,73),(193,74),(194,75),(195,76),(196,77),(197,78),(198,79),(199,80),(200,81),(201,82),(202,83),(203,84),(204,85),(205,86),(206,87),(207,88),(208,89),(209,90),(210,91),(211,92),(212,93),(213,94),(214,95),(215,96),(216,97),(217,98),(218,99),(219,100),(220,101),(221,102),(222,103),(223,104),(224,105),(225,106),(226,107),(227,108),(228,109),(229,110),(230,111),(231,112),(232,113),(233,114),(234,115),(235,116),(236,117),(237,118),(238,119),(239,120),(240,121),(241,122),(242,123),(243,124);
/*!40000 ALTER TABLE `ps_condition_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration`
--

DROP TABLE IF EXISTS `ps_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=480 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration`
--

LOCK TABLES `ps_configuration` WRITE;
/*!40000 ALTER TABLE `ps_configuration` DISABLE KEYS */;
INSERT INTO `ps_configuration` VALUES (1,NULL,NULL,'PS_LANG_DEFAULT','1','2020-11-30 19:28:29','2020-11-30 19:28:29'),(2,NULL,NULL,'PS_VERSION_DB','1.7.6.8','2020-11-30 19:28:29','2020-11-30 19:28:29'),(3,NULL,NULL,'PS_INSTALL_VERSION','1.7.6.8','2020-11-30 19:28:29','2020-11-30 19:28:29'),(4,NULL,NULL,'PS_CARRIER_DEFAULT','4','2020-11-30 19:28:30','2020-12-01 21:43:56'),(5,NULL,NULL,'PS_GROUP_FEATURE_ACTIVE','1','2020-11-30 19:28:30','2020-11-30 19:28:30'),(6,NULL,NULL,'PS_SEARCH_INDEXATION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,NULL,NULL,'PS_CURRENCY_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,NULL,NULL,'PS_COUNTRY_DEFAULT','14','0000-00-00 00:00:00','2020-11-30 19:28:30'),(9,NULL,NULL,'PS_REWRITING_SETTINGS','1','0000-00-00 00:00:00','2020-12-16 19:01:11'),(10,NULL,NULL,'PS_ORDER_OUT_OF_STOCK','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,NULL,NULL,'PS_LAST_QTIES','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,NULL,NULL,'PS_CONDITIONS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,NULL,NULL,'PS_RECYCLABLE_PACK','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,NULL,NULL,'PS_GIFT_WRAPPING','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,NULL,NULL,'PS_GIFT_WRAPPING_PRICE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,NULL,NULL,'PS_STOCK_MANAGEMENT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,NULL,NULL,'PS_NAVIGATION_PIPE','>','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,NULL,NULL,'PS_PRODUCTS_PER_PAGE','12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,NULL,NULL,'PS_PURCHASE_MINIMUM','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,NULL,NULL,'PS_PRODUCTS_ORDER_WAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,NULL,NULL,'PS_PRODUCTS_ORDER_BY','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,NULL,NULL,'PS_DISPLAY_QTIES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,NULL,NULL,'PS_SHIPPING_HANDLING','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,NULL,NULL,'PS_SHIPPING_FREE_PRICE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,NULL,NULL,'PS_SHIPPING_FREE_WEIGHT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,NULL,NULL,'PS_SHIPPING_METHOD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,NULL,NULL,'PS_TAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,NULL,NULL,'PS_SHOP_ENABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,NULL,NULL,'PS_NB_DAYS_NEW_PRODUCT','20','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,NULL,NULL,'PS_SSL_ENABLED','1','0000-00-00 00:00:00','2020-12-16 19:00:53'),(31,NULL,NULL,'PS_WEIGHT_UNIT','kg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,NULL,NULL,'PS_BLOCK_CART_AJAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,NULL,NULL,'PS_ORDER_RETURN','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,NULL,NULL,'PS_ORDER_RETURN_NB_DAYS','14','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,NULL,NULL,'PS_MAIL_TYPE','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,NULL,NULL,'PS_PRODUCT_PICTURE_MAX_SIZE','8388608','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,NULL,NULL,'PS_PRODUCT_PICTURE_WIDTH','64','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,NULL,NULL,'PS_PRODUCT_PICTURE_HEIGHT','64','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,NULL,NULL,'PS_INVOICE_PREFIX','#IN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,NULL,NULL,'PS_INVCE_INVOICE_ADDR_RULES','{\"avoid\":[]}','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,NULL,NULL,'PS_INVCE_DELIVERY_ADDR_RULES','{\"avoid\":[]}','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,NULL,NULL,'PS_DELIVERY_PREFIX','#DE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,NULL,NULL,'PS_DELIVERY_NUMBER',NULL,'0000-00-00 00:00:00','2020-12-02 19:47:23'),(44,NULL,NULL,'PS_RETURN_PREFIX','#RE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,NULL,NULL,'PS_INVOICE',NULL,'0000-00-00 00:00:00','2020-12-18 18:58:25'),(46,NULL,NULL,'PS_PASSWD_TIME_BACK','360','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,NULL,NULL,'PS_PASSWD_TIME_FRONT','360','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,NULL,NULL,'PS_PASSWD_RESET_VALIDITY','1440','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,NULL,NULL,'PS_DISP_UNAVAILABLE_ATTR','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,NULL,NULL,'PS_SEARCH_MINWORDLEN','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,NULL,NULL,'PS_SEARCH_BLACKLIST','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,NULL,NULL,'PS_SEARCH_WEIGHT_PNAME','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,NULL,NULL,'PS_SEARCH_WEIGHT_REF','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,NULL,NULL,'PS_SEARCH_WEIGHT_SHORTDESC','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,NULL,NULL,'PS_SEARCH_WEIGHT_DESC','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,NULL,NULL,'PS_SEARCH_WEIGHT_CNAME','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,NULL,NULL,'PS_SEARCH_WEIGHT_MNAME','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,NULL,NULL,'PS_SEARCH_WEIGHT_TAG','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,NULL,NULL,'PS_SEARCH_WEIGHT_ATTRIBUTE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,NULL,NULL,'PS_SEARCH_WEIGHT_FEATURE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,NULL,NULL,'PS_SEARCH_AJAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,NULL,NULL,'PS_TIMEZONE','Europe/Warsaw','0000-00-00 00:00:00','2020-11-30 19:28:30'),(63,NULL,NULL,'PS_THEME_V11','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,NULL,NULL,'PRESTASTORE_LIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,NULL,NULL,'PS_TIN_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,NULL,NULL,'PS_SHOW_ALL_MODULES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,NULL,NULL,'PS_BACKUP_ALL','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,NULL,NULL,'PS_1_3_UPDATE_DATE','2011-12-27 10:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,NULL,NULL,'PS_PRICE_ROUND_MODE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,NULL,NULL,'PS_1_3_2_UPDATE_DATE','2011-12-27 10:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,NULL,NULL,'PS_CONDITIONS_CMS_ID','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,NULL,NULL,'TRACKING_DIRECT_TRAFFIC','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,NULL,NULL,'PS_VOLUME_UNIT','cl','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,NULL,NULL,'PS_CIPHER_ALGORITHM','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,NULL,NULL,'PS_ATTRIBUTE_CATEGORY_DISPLAY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,NULL,NULL,'PS_CUSTOMER_SERVICE_FILE_UPLOAD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,NULL,NULL,'PS_CUSTOMER_SERVICE_SIGNATURE','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,NULL,NULL,'PS_BLOCK_BESTSELLERS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,NULL,NULL,'PS_BLOCK_NEWPRODUCTS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,NULL,NULL,'PS_BLOCK_SPECIALS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,NULL,NULL,'PS_STOCK_MVT_REASON_DEFAULT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,NULL,NULL,'PS_SPECIFIC_PRICE_PRIORITIES','id_shop;id_currency;id_country;id_group','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,NULL,NULL,'PS_TAX_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,NULL,NULL,'PS_SMARTY_FORCE_COMPILE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,NULL,NULL,'PS_DISTANCE_UNIT','km','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,NULL,NULL,'PS_STORES_DISPLAY_CMS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,NULL,NULL,'SHOP_LOGO_WIDTH','100','0000-00-00 00:00:00','2020-11-30 19:28:30'),(88,NULL,NULL,'SHOP_LOGO_HEIGHT','28','0000-00-00 00:00:00','2020-11-30 19:28:30'),(89,NULL,NULL,'EDITORIAL_IMAGE_WIDTH','530','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,NULL,NULL,'EDITORIAL_IMAGE_HEIGHT','228','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,NULL,NULL,'PS_STATSDATA_CUSTOMER_PAGESVIEWS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,NULL,NULL,'PS_STATSDATA_PAGESVIEWS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,NULL,NULL,'PS_STATSDATA_PLUGINS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,NULL,NULL,'PS_GEOLOCATION_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,NULL,NULL,'PS_ALLOWED_COUNTRIES','AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,NULL,NULL,'PS_GEOLOCATION_BEHAVIOR','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,NULL,NULL,'PS_LOCALE_LANGUAGE','pl','0000-00-00 00:00:00','2020-11-30 19:28:30'),(98,NULL,NULL,'PS_LOCALE_COUNTRY','pl','0000-00-00 00:00:00','2020-11-30 19:28:30'),(99,NULL,NULL,'PS_ATTACHMENT_MAXIMUM_SIZE','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,NULL,NULL,'PS_SMARTY_CACHE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,NULL,NULL,'PS_DIMENSION_UNIT','cm','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,NULL,NULL,'PS_GUEST_CHECKOUT_ENABLED','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,NULL,NULL,'PS_DISPLAY_SUPPLIERS','1','0000-00-00 00:00:00','2020-12-16 19:00:53'),(104,NULL,NULL,'PS_DISPLAY_BEST_SELLERS','1','0000-00-00 00:00:00','2020-12-16 19:00:53'),(105,NULL,NULL,'PS_CATALOG_MODE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,NULL,NULL,'PS_GEOLOCATION_WHITELIST','127;::1;188.165.122;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;91.240.109;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,NULL,NULL,'PS_LOGS_BY_EMAIL','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,NULL,NULL,'PS_COOKIE_CHECKIP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,NULL,NULL,'PS_USE_ECOTAX','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,NULL,NULL,'PS_CANONICAL_REDIRECT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,NULL,NULL,'PS_IMG_UPDATE_TIME','1606931906','0000-00-00 00:00:00','2020-12-02 18:58:26'),(112,NULL,NULL,'PS_BACKUP_DROP_TABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,NULL,NULL,'PS_OS_CHEQUE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,NULL,NULL,'PS_OS_PAYMENT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,NULL,NULL,'PS_OS_PREPARATION','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,NULL,NULL,'PS_OS_SHIPPING','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,NULL,NULL,'PS_OS_DELIVERED','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,NULL,NULL,'PS_OS_CANCELED','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,NULL,NULL,'PS_OS_REFUND','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,NULL,NULL,'PS_OS_ERROR','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,NULL,NULL,'PS_OS_OUTOFSTOCK','9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,NULL,NULL,'PS_OS_BANKWIRE','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,NULL,NULL,'PS_OS_WS_PAYMENT','11','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,NULL,NULL,'PS_OS_OUTOFSTOCK_PAID','9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,NULL,NULL,'PS_OS_OUTOFSTOCK_UNPAID','12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,NULL,NULL,'PS_OS_COD_VALIDATION','13','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,NULL,NULL,'PS_LEGACY_IMAGES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,NULL,NULL,'PS_IMAGE_QUALITY','png','0000-00-00 00:00:00','2020-11-30 19:28:47'),(129,NULL,NULL,'PS_PNG_QUALITY','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,NULL,NULL,'PS_JPEG_QUALITY','90','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,NULL,NULL,'PS_COOKIE_LIFETIME_FO','480','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,NULL,NULL,'PS_COOKIE_LIFETIME_BO','480','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,NULL,NULL,'PS_RESTRICT_DELIVERED_COUNTRIES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,NULL,NULL,'PS_SHOW_NEW_ORDERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,NULL,NULL,'PS_SHOW_NEW_CUSTOMERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,NULL,NULL,'PS_SHOW_NEW_MESSAGES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,NULL,NULL,'PS_FEATURE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,NULL,NULL,'PS_COMBINATION_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,NULL,NULL,'PS_SPECIFIC_PRICE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','2020-12-06 16:18:00'),(140,NULL,NULL,'PS_VIRTUAL_PROD_FEATURE_ACTIVE','1','0000-00-00 00:00:00','2020-11-30 19:28:56'),(141,NULL,NULL,'PS_CUSTOMIZATION_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,NULL,NULL,'PS_CART_RULE_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,NULL,NULL,'PS_PACK_FEATURE_ACTIVE',NULL,'0000-00-00 00:00:00','2020-12-17 00:49:17'),(144,NULL,NULL,'PS_ALIAS_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,NULL,NULL,'PS_TAX_ADDRESS_TYPE','id_address_delivery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,NULL,NULL,'PS_SHOP_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,NULL,NULL,'PS_CARRIER_DEFAULT_SORT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,NULL,NULL,'PS_STOCK_MVT_INC_REASON_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,NULL,NULL,'PS_STOCK_MVT_DEC_REASON_DEFAULT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,NULL,NULL,'PS_ADVANCED_STOCK_MANAGEMENT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,NULL,NULL,'PS_STOCK_MVT_TRANSFER_TO','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,NULL,NULL,'PS_STOCK_MVT_TRANSFER_FROM','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,NULL,NULL,'PS_CARRIER_DEFAULT_ORDER','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,NULL,NULL,'PS_STOCK_MVT_SUPPLY_ORDER','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,NULL,NULL,'PS_STOCK_CUSTOMER_ORDER_CANCEL_REASON','9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,NULL,NULL,'PS_STOCK_CUSTOMER_RETURN_REASON','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,NULL,NULL,'PS_STOCK_MVT_INC_EMPLOYEE_EDITION','11','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,NULL,NULL,'PS_STOCK_MVT_DEC_EMPLOYEE_EDITION','12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,NULL,NULL,'PS_STOCK_CUSTOMER_ORDER_REASON','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,NULL,NULL,'PS_UNIDENTIFIED_GROUP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,NULL,NULL,'PS_GUEST_GROUP','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,NULL,NULL,'PS_CUSTOMER_GROUP','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,NULL,NULL,'PS_SMARTY_CONSOLE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,NULL,NULL,'PS_INVOICE_MODEL','invoice','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,NULL,NULL,'PS_LIMIT_UPLOAD_IMAGE_VALUE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,NULL,NULL,'PS_LIMIT_UPLOAD_FILE_VALUE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,NULL,NULL,'MB_PAY_TO_EMAIL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,NULL,NULL,'MB_SECRET_WORD','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,NULL,NULL,'MB_HIDE_LOGIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,NULL,NULL,'MB_ID_LOGO','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,NULL,NULL,'MB_ID_LOGO_WALLET','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,NULL,NULL,'MB_PARAMETERS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,NULL,NULL,'MB_PARAMETERS_2','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,NULL,NULL,'MB_DISPLAY_MODE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,NULL,NULL,'MB_CANCEL_URL','http://www.yoursite.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,NULL,NULL,'MB_LOCAL_METHODS','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,NULL,NULL,'MB_INTER_METHODS','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,NULL,NULL,'BANK_WIRE_CURRENCIES','2,1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,NULL,NULL,'CHEQUE_CURRENCIES','2,1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,NULL,NULL,'PRODUCTS_VIEWED_NBR','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,NULL,NULL,'BLOCK_CATEG_DHTML','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,NULL,NULL,'BLOCK_CATEG_MAX_DEPTH','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,NULL,NULL,'MANUFACTURER_DISPLAY_FORM','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,NULL,NULL,'MANUFACTURER_DISPLAY_TEXT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,NULL,NULL,'MANUFACTURER_DISPLAY_TEXT_NB','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,NULL,NULL,'NEW_PRODUCTS_NBR','8','0000-00-00 00:00:00','2020-12-02 18:34:56'),(187,NULL,NULL,'PS_TOKEN_ENABLE','1','0000-00-00 00:00:00','2020-12-16 19:00:53'),(188,NULL,NULL,'PS_STATS_RENDER','graphnvd3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,NULL,NULL,'PS_STATS_OLD_CONNECT_AUTO_CLEAN','never','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,NULL,NULL,'PS_STATS_GRID_RENDER','gridhtml','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,NULL,NULL,'BLOCKTAGS_NBR','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,NULL,NULL,'CHECKUP_DESCRIPTIONS_LT','100','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,NULL,NULL,'CHECKUP_DESCRIPTIONS_GT','400','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,NULL,NULL,'CHECKUP_IMAGES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,NULL,NULL,'CHECKUP_IMAGES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,NULL,NULL,'CHECKUP_SALES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,NULL,NULL,'CHECKUP_SALES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,NULL,NULL,'CHECKUP_STOCK_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,NULL,NULL,'CHECKUP_STOCK_GT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,NULL,NULL,'FOOTER_CMS','0_3|0_4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,NULL,NULL,'FOOTER_BLOCK_ACTIVATION','0_3|0_4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,NULL,NULL,'FOOTER_POWEREDBY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,NULL,NULL,'BLOCKADVERT_LINK','http://www.prestashop.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,NULL,NULL,'BLOCKSTORE_IMG','store.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,NULL,NULL,'BLOCKADVERT_IMG_EXT','jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,NULL,NULL,'MOD_BLOCKTOPMENU_ITEMS','CAT3,CAT6,CAT9','0000-00-00 00:00:00','2020-11-30 19:28:35'),(207,NULL,NULL,'MOD_BLOCKTOPMENU_SEARCH','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,NULL,NULL,'BLOCKSOCIAL_FACEBOOK',NULL,'0000-00-00 00:00:00','2020-11-30 19:28:35'),(209,NULL,NULL,'BLOCKSOCIAL_TWITTER',NULL,'0000-00-00 00:00:00','2020-11-30 19:28:35'),(210,NULL,NULL,'BLOCKSOCIAL_RSS',NULL,'0000-00-00 00:00:00','2020-11-30 19:28:35'),(211,NULL,NULL,'BLOCKCONTACTINFOS_COMPANY','Your company','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,NULL,NULL,'BLOCKCONTACTINFOS_ADDRESS','Address line 1\nCity\nCountry','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,NULL,NULL,'BLOCKCONTACTINFOS_PHONE','0123-456-789','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,NULL,NULL,'BLOCKCONTACTINFOS_EMAIL','pub@prestashop.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,NULL,NULL,'BLOCKCONTACT_TELNUMBER','0123-456-789','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,NULL,NULL,'BLOCKCONTACT_EMAIL','pub@prestashop.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,NULL,NULL,'SUPPLIER_DISPLAY_TEXT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,NULL,NULL,'SUPPLIER_DISPLAY_TEXT_NB','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,NULL,NULL,'SUPPLIER_DISPLAY_FORM','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,NULL,NULL,'BLOCK_CATEG_NBR_COLUMN_FOOTER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,NULL,NULL,'UPGRADER_BACKUPDB_FILENAME','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,NULL,NULL,'UPGRADER_BACKUPFILES_FILENAME','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,NULL,NULL,'BLOCKREINSURANCE_NBBLOCKS','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,NULL,NULL,'HOMESLIDER_WIDTH','535','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,NULL,NULL,'HOMESLIDER_SPEED','5000','0000-00-00 00:00:00','2020-11-30 19:28:34'),(226,NULL,NULL,'HOMESLIDER_PAUSE','7700','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,NULL,NULL,'HOMESLIDER_LOOP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,NULL,NULL,'PS_BASE_DISTANCE_UNIT','m','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,NULL,NULL,'PS_SHOP_DOMAIN','localhost','0000-00-00 00:00:00','2020-12-16 19:01:12'),(230,NULL,NULL,'PS_SHOP_DOMAIN_SSL','localhost','0000-00-00 00:00:00','2020-12-16 19:01:12'),(231,NULL,NULL,'PS_SHOP_NAME','eshoe-shop','0000-00-00 00:00:00','2020-11-30 19:28:30'),(232,NULL,NULL,'PS_SHOP_EMAIL','aa@ebuty.pl','0000-00-00 00:00:00','2020-11-30 19:28:31'),(233,NULL,NULL,'PS_MAIL_METHOD','2','0000-00-00 00:00:00','2020-12-18 01:22:51'),(234,NULL,NULL,'PS_SHOP_ACTIVITY','9','0000-00-00 00:00:00','2020-11-30 19:28:30'),(235,NULL,NULL,'PS_LOGO','eshoe-shop-logo-1606931906.jpg','0000-00-00 00:00:00','2020-12-02 18:58:26'),(236,NULL,NULL,'PS_FAVICON','favicon.ico','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,NULL,NULL,'PS_STORES_ICON','logo_stores.png','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,NULL,NULL,'PS_ROOT_CATEGORY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,NULL,NULL,'PS_HOME_CATEGORY','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,NULL,NULL,'PS_CONFIGURATION_AGREMENT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,NULL,NULL,'PS_MAIL_SERVER','smtp.gmail.com','0000-00-00 00:00:00','2020-12-18 01:24:20'),(242,NULL,NULL,'PS_MAIL_USER','ebutypresta@gmail.com','0000-00-00 00:00:00','2020-12-18 01:22:51'),(243,NULL,NULL,'PS_MAIL_PASSWD','prestabut12345678','0000-00-00 00:00:00','2020-12-18 01:22:51'),(244,NULL,NULL,'PS_MAIL_SMTP_ENCRYPTION','ssl','0000-00-00 00:00:00','2020-12-18 01:22:51'),(245,NULL,NULL,'PS_MAIL_SMTP_PORT','465','0000-00-00 00:00:00','2020-12-18 01:22:51'),(246,NULL,NULL,'PS_MAIL_COLOR','#db3484','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,NULL,NULL,'NW_SALT','wd3LgTvFVN07nUWs','0000-00-00 00:00:00','2020-11-30 19:28:34'),(248,NULL,NULL,'PS_PAYMENT_LOGO_CMS_ID','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,NULL,NULL,'HOME_FEATURED_NBR','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(250,NULL,NULL,'SEK_MIN_OCCURENCES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(251,NULL,NULL,'SEK_FILTER_KW','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(252,NULL,NULL,'PS_ALLOW_MOBILE_DEVICE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(253,NULL,NULL,'PS_CUSTOMER_CREATION_EMAIL','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(254,NULL,NULL,'PS_SMARTY_CONSOLE_KEY','SMARTY_DEBUG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(255,NULL,NULL,'PS_DASHBOARD_USE_PUSH','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(256,NULL,NULL,'PS_ATTRIBUTE_ANCHOR_SEPARATOR','-','0000-00-00 00:00:00','0000-00-00 00:00:00'),(257,NULL,NULL,'CONF_AVERAGE_PRODUCT_MARGIN','40','0000-00-00 00:00:00','0000-00-00 00:00:00'),(258,NULL,NULL,'PS_DASHBOARD_SIMULATION','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(259,NULL,NULL,'PS_USE_HTMLPURIFIER','1','0000-00-00 00:00:00','2020-12-16 19:00:53'),(260,NULL,NULL,'PS_SMARTY_CACHING_TYPE','filesystem','0000-00-00 00:00:00','0000-00-00 00:00:00'),(261,NULL,NULL,'PS_SMARTY_LOCAL','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(262,NULL,NULL,'PS_SMARTY_CLEAR_CACHE','everytime','0000-00-00 00:00:00','0000-00-00 00:00:00'),(263,NULL,NULL,'PS_DETECT_LANG','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(264,NULL,NULL,'PS_DETECT_COUNTRY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(265,NULL,NULL,'PS_ROUND_TYPE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(266,NULL,NULL,'PS_PRICE_DISPLAY_PRECISION','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(267,NULL,NULL,'PS_LOG_EMAILS','1','0000-00-00 00:00:00','2020-12-18 01:31:35'),(268,NULL,NULL,'PS_CUSTOMER_OPTIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(269,NULL,NULL,'PS_CUSTOMER_BIRTHDATE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(270,NULL,NULL,'PS_PACK_STOCK_TYPE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(271,NULL,NULL,'PS_LOG_MODULE_PERFS_MODULO','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(272,NULL,NULL,'PS_DISALLOW_HISTORY_REORDERING','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(273,NULL,NULL,'PS_DISPLAY_PRODUCT_WEIGHT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(274,NULL,NULL,'PS_PRODUCT_WEIGHT_PRECISION','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(275,NULL,NULL,'PS_ACTIVE_CRONJOB_EXCHANGE_RATE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(276,NULL,NULL,'PS_ORDER_RECALCULATE_SHIPPING','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(277,NULL,NULL,'PS_MAINTENANCE_TEXT','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(278,NULL,NULL,'PS_PRODUCT_SHORT_DESC_LIMIT','800','0000-00-00 00:00:00','0000-00-00 00:00:00'),(279,NULL,NULL,'PS_LABEL_IN_STOCK_PRODUCTS','In Stock','0000-00-00 00:00:00','0000-00-00 00:00:00'),(280,NULL,NULL,'PS_LABEL_OOS_PRODUCTS_BOA','Product available for orders','0000-00-00 00:00:00','0000-00-00 00:00:00'),(281,NULL,NULL,'PS_LABEL_OOS_PRODUCTS_BOD','Out-of-Stock','0000-00-00 00:00:00','0000-00-00 00:00:00'),(282,NULL,NULL,'PS_CATALOG_MODE_WITH_PRICES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(283,NULL,NULL,'PS_MAIL_THEME','modern','0000-00-00 00:00:00','0000-00-00 00:00:00'),(284,NULL,NULL,'PS_SSL_ENABLED_EVERYWHERE','1','2020-11-30 19:28:30','2020-12-16 19:00:53'),(285,NULL,NULL,'DASHACTIVITY_CART_ACTIVE','30','2020-11-30 19:28:32','2020-11-30 19:28:32'),(286,NULL,NULL,'DASHACTIVITY_CART_ABANDONED_MIN','24','2020-11-30 19:28:32','2020-11-30 19:28:32'),(287,NULL,NULL,'DASHACTIVITY_CART_ABANDONED_MAX','48','2020-11-30 19:28:32','2020-11-30 19:28:32'),(288,NULL,NULL,'DASHACTIVITY_VISITOR_ONLINE','30','2020-11-30 19:28:32','2020-11-30 19:28:32'),(289,NULL,NULL,'PS_DASHGOALS_CURRENT_YEAR','2020','2020-11-30 19:28:32','2020-11-30 19:28:32'),(290,NULL,NULL,'DASHPRODUCT_NBR_SHOW_LAST_ORDER','10','2020-11-30 19:28:33','2020-11-30 19:28:33'),(291,NULL,NULL,'DASHPRODUCT_NBR_SHOW_BEST_SELLER','10','2020-11-30 19:28:33','2020-11-30 19:28:33'),(292,NULL,NULL,'DASHPRODUCT_NBR_SHOW_MOST_VIEWED','10','2020-11-30 19:28:33','2020-11-30 19:28:33'),(293,NULL,NULL,'DASHPRODUCT_NBR_SHOW_TOP_SEARCH','10','2020-11-30 19:28:33','2020-11-30 19:28:33'),(294,NULL,NULL,'GSITEMAP_PRIORITY_HOME','1','2020-11-30 19:28:33','2020-11-30 19:28:33'),(295,NULL,NULL,'GSITEMAP_PRIORITY_PRODUCT','0.9','2020-11-30 19:28:33','2020-11-30 19:28:33'),(296,NULL,NULL,'GSITEMAP_PRIORITY_CATEGORY','0.8','2020-11-30 19:28:33','2020-11-30 19:28:33'),(297,NULL,NULL,'GSITEMAP_PRIORITY_CMS','0.7','2020-11-30 19:28:33','2020-11-30 19:28:33'),(298,NULL,NULL,'GSITEMAP_FREQUENCY','weekly','2020-11-30 19:28:33','2020-11-30 19:28:33'),(299,NULL,NULL,'BANNER_IMG',NULL,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(300,NULL,NULL,'BANNER_LINK',NULL,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(301,NULL,NULL,'BANNER_DESC',NULL,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(302,NULL,NULL,'BLOCK_CATEG_ROOT_CATEGORY','1','2020-11-30 19:28:33','2020-11-30 19:28:33'),(303,NULL,NULL,'CONF_PS_CHECKPAYMENT_FIXED','0.2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(304,NULL,NULL,'CONF_PS_CHECKPAYMENT_VAR','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(305,NULL,NULL,'CONF_PS_CHECKPAYMENT_FIXED_FOREIGN','0.2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(306,NULL,NULL,'CONF_PS_CHECKPAYMENT_VAR_FOREIGN','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(307,NULL,NULL,'PS_CONTACT_INFO_DISPLAY_EMAIL','1','2020-11-30 19:28:33','2020-11-30 19:28:33'),(308,NULL,NULL,'PS_NEWSLETTER_RAND','2059906667379675107','2020-11-30 19:28:34','2020-11-30 19:28:34'),(309,NULL,NULL,'NW_CONDITIONS',NULL,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(318,NULL,NULL,'CHECKBOX_ORDER','1','2020-11-30 19:28:34','2020-11-30 19:28:34'),(319,NULL,NULL,'CHECKBOX_CUSTOMER','1','2020-11-30 19:28:34','2020-11-30 19:28:34'),(320,NULL,NULL,'CHECKBOX_MESSAGE','1','2020-11-30 19:28:34','2020-11-30 19:28:34'),(321,NULL,NULL,'BACKGROUND_COLOR_FAVICONBO','#DF0067','2020-11-30 19:28:34','2020-11-30 19:28:34'),(322,NULL,NULL,'TEXT_COLOR_FAVICONBO','#FFFFFF','2020-11-30 19:28:34','2020-11-30 19:28:34'),(323,NULL,NULL,'HOME_FEATURED_CAT','2','2020-11-30 19:28:34','2020-11-30 19:28:34'),(324,NULL,NULL,'HOMESLIDER_PAUSE_ON_HOVER','1','2020-11-30 19:28:34','2020-11-30 19:28:34'),(325,NULL,NULL,'HOMESLIDER_WRAP','1','2020-11-30 19:28:34','2020-11-30 19:28:34'),(326,NULL,NULL,'PS_SC_TWITTER','1','2020-11-30 19:28:35','2020-11-30 19:28:35'),(327,NULL,NULL,'PS_SC_FACEBOOK','1','2020-11-30 19:28:35','2020-11-30 19:28:35'),(328,NULL,NULL,'PS_SC_PINTEREST','1','2020-11-30 19:28:35','2020-11-30 19:28:35'),(329,NULL,NULL,'BLOCKSOCIAL_YOUTUBE',NULL,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(330,NULL,NULL,'BLOCKSOCIAL_PINTEREST',NULL,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(331,NULL,NULL,'BLOCKSOCIAL_VIMEO',NULL,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(332,NULL,NULL,'BLOCKSOCIAL_INSTAGRAM',NULL,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(333,NULL,NULL,'BLOCKSOCIAL_LINKEDIN',NULL,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(335,NULL,NULL,'CONF_PS_WIREPAYMENT_FIXED','0.2','2020-11-30 19:28:35','2020-11-30 19:28:35'),(336,NULL,NULL,'CONF_PS_WIREPAYMENT_VAR','2','2020-11-30 19:28:35','2020-11-30 19:28:35'),(337,NULL,NULL,'CONF_PS_WIREPAYMENT_FIXED_FOREIGN','0.2','2020-11-30 19:28:35','2020-11-30 19:28:35'),(338,NULL,NULL,'CONF_PS_WIREPAYMENT_VAR_FOREIGN','2','2020-11-30 19:28:35','2020-11-30 19:28:35'),(339,NULL,NULL,'GF_INSTALL_CALC','1','2020-11-30 19:28:44','2020-11-30 19:31:12'),(340,NULL,NULL,'GF_CURRENT_LEVEL','2','2020-11-30 19:28:44','2020-12-17 00:29:08'),(341,NULL,NULL,'GF_CURRENT_LEVEL_PERCENT','35','2020-11-30 19:28:44','2020-12-18 01:43:41'),(342,NULL,NULL,'GF_NOTIFICATION','16','2020-11-30 19:28:44','2020-12-18 01:43:41'),(343,NULL,NULL,'EMARKETING_SHOPTOKEN',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(344,NULL,NULL,'EMARKETING_AUTHORIZE_JWT',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(345,NULL,NULL,'EMARKETING_GLOBAL_SITE_TRACKER',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(346,NULL,NULL,'EMARKETING_CONVERSION_TRACKER',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(347,NULL,NULL,'EMARKETING_VERIFICATION_TAG',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(348,NULL,NULL,'EMARKETING_FB_GLOBAL',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(349,NULL,NULL,'EMARKETING_FB_VIEWCONTENT',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(350,NULL,NULL,'EMARKETING_FB_ADDTOCART',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(351,NULL,NULL,'EMARKETING_FB_PURCHASE',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(352,NULL,NULL,'EMARKETING_ROUTETOKEN','6617ip2v','2020-11-30 19:28:44','2020-11-30 19:28:44'),(353,NULL,NULL,'PSGDPR_CREATION_FORM_SWITCH','1','2020-11-30 19:28:44','2020-11-30 19:28:44'),(354,NULL,NULL,'PSGDPR_CREATION_FORM',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(355,NULL,NULL,'PSGDPR_CUSTOMER_FORM_SWITCH','1','2020-11-30 19:28:44','2020-11-30 19:28:44'),(356,NULL,NULL,'PSGDPR_CUSTOMER_FORM',NULL,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(357,NULL,NULL,'PSGDPR_ANONYMOUS_CUSTOMER','1','2020-11-30 19:28:44','2020-11-30 19:28:44'),(358,NULL,NULL,'PSGDPR_ANONYMOUS_ADDRESS','1','2020-11-30 19:28:44','2020-11-30 19:28:44'),(359,NULL,NULL,'BLOCKREASSURANCE_NBBLOCKS','5','2020-11-30 19:28:48','2020-11-30 19:28:48'),(360,NULL,NULL,'PS_LAYERED_SHOW_QTIES','1','2020-11-30 19:28:59','2020-11-30 19:28:59'),(361,NULL,NULL,'PS_LAYERED_FULL_TREE','1','2020-11-30 19:28:59','2020-11-30 19:28:59'),(362,NULL,NULL,'PS_LAYERED_FILTER_PRICE_USETAX','1','2020-11-30 19:28:59','2020-11-30 19:28:59'),(363,NULL,NULL,'PS_LAYERED_FILTER_CATEGORY_DEPTH','1','2020-11-30 19:28:59','2020-11-30 19:28:59'),(364,NULL,NULL,'PS_LAYERED_FILTER_PRICE_ROUNDING','1','2020-11-30 19:28:59','2020-11-30 19:28:59'),(365,NULL,NULL,'PS_LAYERED_FILTER_SHOW_OUT_OF_STOCK_LAST','0','2020-11-30 19:28:59','2020-11-30 19:28:59'),(366,NULL,NULL,'PS_LAYERED_FILTER_BY_DEFAULT_CATEGORY','0','2020-11-30 19:28:59','2020-11-30 19:28:59'),(367,NULL,NULL,'PS_LAYERED_INDEXED','1','2020-11-30 19:28:59','2020-11-30 19:28:59'),(368,NULL,NULL,'GF_NOT_VIEWED_BADGE','170','2020-11-30 19:31:13','2020-12-18 01:43:41'),(369,NULL,NULL,'ONBOARDINGV2_SHUT_DOWN','1','2020-11-30 19:31:13','2020-11-30 19:31:13'),(370,NULL,NULL,'CONF_PAYPAL_FIXED','0.2','2020-12-01 19:56:47','2020-12-01 19:56:47'),(371,NULL,NULL,'CONF_PAYPAL_VAR','2','2020-12-01 19:56:47','2020-12-01 19:56:47'),(372,NULL,NULL,'CONF_PAYPAL_FIXED_FOREIGN','0.2','2020-12-01 19:56:47','2020-12-01 19:56:47'),(373,NULL,NULL,'CONF_PAYPAL_VAR_FOREIGN','2','2020-12-01 19:56:47','2020-12-01 19:56:47'),(374,NULL,NULL,'PAYPAL_OS_WAITING','14','2020-12-01 19:56:47','2020-12-01 19:56:47'),(375,NULL,NULL,'PAYPAL_MERCHANT_ID_SANDBOX',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(376,NULL,NULL,'PAYPAL_MERCHANT_ID_LIVE',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(377,NULL,NULL,'PAYPAL_USERNAME_SANDBOX',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(378,NULL,NULL,'PAYPAL_PSWD_SANDBOX',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(379,NULL,NULL,'PAYPAL_SIGNATURE_SANDBOX',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(380,NULL,NULL,'PAYPAL_SANDBOX_ACCESS','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(381,NULL,NULL,'PAYPAL_USERNAME_LIVE',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(382,NULL,NULL,'PAYPAL_PSWD_LIVE',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(383,NULL,NULL,'PAYPAL_SIGNATURE_LIVE',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(384,NULL,NULL,'PAYPAL_LIVE_ACCESS','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(385,NULL,NULL,'PAYPAL_SANDBOX','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(386,NULL,NULL,'PAYPAL_API_INTENT','sale','2020-12-01 19:56:47','2020-12-01 19:56:47'),(387,NULL,NULL,'PAYPAL_API_ADVANTAGES','1','2020-12-01 19:56:47','2020-12-01 19:56:47'),(388,NULL,NULL,'PAYPAL_API_CARD','1','2020-12-01 19:56:47','2020-12-01 19:56:47'),(389,NULL,NULL,'PAYPAL_METHOD',NULL,'2020-12-01 19:56:47','2020-12-01 19:56:47'),(390,NULL,NULL,'PAYPAL_EXPRESS_CHECKOUT_SHORTCUT','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(391,NULL,NULL,'PAYPAL_EXPRESS_CHECKOUT_SHORTCUT_CART','1','2020-12-01 19:56:47','2020-12-01 19:56:47'),(392,NULL,NULL,'PAYPAL_CRON_TIME','2020-12-01 19:12:47','2020-12-01 19:56:47','2020-12-01 19:56:47'),(393,NULL,NULL,'PAYPAL_BY_BRAINTREE','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(394,NULL,NULL,'PAYPAL_EXPRESS_CHECKOUT_IN_CONTEXT','1','2020-12-01 19:56:47','2020-12-01 19:56:47'),(395,NULL,NULL,'PAYPAL_VAULTING','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(396,NULL,NULL,'PAYPAL_REQUIREMENTS','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(397,NULL,NULL,'PAYPAL_MB_EC_ENABLED','1','2020-12-01 19:56:47','2020-12-01 19:56:47'),(398,NULL,NULL,'PAYPAL_CUSTOMIZE_ORDER_STATUS','0','2020-12-01 19:56:47','2020-12-01 19:56:47'),(399,NULL,NULL,'PAYPAL_OS_REFUNDED','7','2020-12-01 19:56:47','2020-12-01 19:56:47'),(400,NULL,NULL,'PAYPAL_OS_CANCELED','6','2020-12-01 19:56:47','2020-12-01 19:56:47'),(401,NULL,NULL,'PAYPAL_OS_ACCEPTED','2','2020-12-01 19:56:47','2020-12-01 19:56:47'),(402,NULL,NULL,'PAYPAL_OS_CAPTURE_CANCELED','6','2020-12-01 19:56:47','2020-12-01 19:56:47'),(403,NULL,NULL,'PAYPAL_OS_ACCEPTED_TWO','2','2020-12-01 19:56:47','2020-12-01 19:56:47'),(404,NULL,NULL,'PAYPAL_OS_WAITING_VALIDATION','14','2020-12-01 19:56:47','2020-12-01 19:56:47'),(405,NULL,NULL,'PAYPAL_OS_PROCESSING','14','2020-12-01 19:56:47','2020-12-01 19:56:47'),(406,NULL,NULL,'PAYPAL_OS_VALIDATION_ERROR','6','2020-12-01 19:56:47','2020-12-01 19:56:47'),(407,NULL,NULL,'PAYPAL_OS_REFUNDED_PAYPAL','7','2020-12-01 19:56:47','2020-12-01 19:56:47'),(408,NULL,NULL,'PAYPAL_NOT_SHOW_PS_CHECKOUT','[\"5.3.0\",0]','2020-12-01 19:56:47','2020-12-01 19:56:47'),(409,NULL,NULL,'CONF_PS_CASHONDELIVERY_FIXED','0.2','2020-12-01 19:56:54','2020-12-01 19:56:54'),(410,NULL,NULL,'CONF_PS_CASHONDELIVERY_VAR','2','2020-12-01 19:56:54','2020-12-01 19:56:54'),(411,NULL,NULL,'CONF_PS_CASHONDELIVERY_FIXED_FOREIGN','0.2','2020-12-01 19:56:54','2020-12-01 19:56:54'),(412,NULL,NULL,'CONF_PS_CASHONDELIVERY_VAR_FOREIGN','2','2020-12-01 19:56:54','2020-12-01 19:56:54'),(418,NULL,NULL,'BANK_WIRE_PAYMENT_INVITE','1','2020-12-01 21:42:48','2020-12-01 21:42:48'),(419,NULL,NULL,'BLOCKSPECIALS_SPECIALS_NBR','8','2020-12-02 18:34:15','2020-12-02 18:34:15'),(420,NULL,NULL,'PS_BLOCK_BESTSELLERS_TO_DISPLAY','8','2020-12-02 18:34:57','2020-12-02 18:34:57'),(421,NULL,NULL,'PS_LOGO_MAIL','eshoe-shop-logo_mail-1606931906.jpg','2020-12-02 18:58:27','2020-12-02 18:58:27'),(422,NULL,NULL,'PS_LOGO_INVOICE','eshoe-shop-logo_invoice-1606931906.jpg','2020-12-02 18:58:27','2020-12-02 18:58:27'),(423,NULL,NULL,'ONBOARDINGV2_CURRENT_STEP','14','2020-12-02 19:13:30','2020-12-02 19:13:30'),(424,NULL,NULL,'BANK_WIRE_DETAILS','86 1160 2202 0000 0000 5177 2812','2020-12-14 18:33:54','2020-12-14 18:33:54'),(425,NULL,NULL,'BANK_WIRE_OWNER','EButy - sklep z butami','2020-12-14 18:33:54','2020-12-14 18:33:54'),(426,NULL,NULL,'BANK_WIRE_ADDRESS','ul. Butowa 2 00-000 Warszawa','2020-12-14 18:33:54','2020-12-14 18:33:54'),(427,NULL,NULL,'BANK_WIRE_RESERVATION_DAYS',NULL,'2020-12-14 18:33:54','2020-12-14 18:33:54'),(428,NULL,NULL,'BANK_WIRE_CUSTOM_TEXT',NULL,'2020-12-14 18:33:54','2020-12-14 18:33:54'),(429,NULL,NULL,'PS_CCCJS_VERSION','2','2020-12-16 19:01:12','2020-12-16 19:01:12'),(430,NULL,NULL,'PS_CCCCSS_VERSION','2','2020-12-16 19:01:12','2020-12-16 19:01:12'),(431,NULL,NULL,'PS_ROUTE_category_rule','{id}-{rewrite}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(432,NULL,NULL,'PS_ROUTE_supplier_rule','supplier/{id}-{rewrite}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(433,NULL,NULL,'PS_ROUTE_manufacturer_rule','brand/{id}-{rewrite}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(434,NULL,NULL,'PS_ROUTE_cms_rule','content/{id}-{rewrite}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(435,NULL,NULL,'PS_ROUTE_cms_category_rule','content/category/{id}-{rewrite}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(436,NULL,NULL,'PS_ROUTE_module','module/{module}{/:controller}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(437,NULL,NULL,'PS_ROUTE_product_rule','{category:/}{id}{-:id_product_attribute}-{rewrite}{-:ean13}.html','2020-12-16 19:01:13','2020-12-16 19:01:13'),(438,NULL,NULL,'PS_ROUTE_layered_rule','{id}-{rewrite}{/:selected_filters}','2020-12-16 19:01:13','2020-12-16 19:01:13'),(439,NULL,NULL,'GA_ACCOUNT_ID','UA-XYZAA','2020-12-18 00:17:56','2020-12-18 00:36:08'),(440,NULL,NULL,'GANALYTICS_CONFIGURATION_OK','1','2020-12-18 00:17:56','2020-12-18 02:03:04'),(441,NULL,NULL,'PS_FOLLOWUP_SECURE_KEY','URAOPZFVFKLM3QHQ','2020-12-18 00:38:21','2020-12-18 00:38:21'),(442,NULL,NULL,'PS_FOLLOW_UP_ENABLE_1','1','2020-12-18 00:38:21','2020-12-18 00:41:01'),(443,NULL,NULL,'PS_FOLLOW_UP_ENABLE_2','1','2020-12-18 00:38:21','2020-12-18 00:40:05'),(444,NULL,NULL,'PS_FOLLOW_UP_ENABLE_3','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(445,NULL,NULL,'PS_FOLLOW_UP_ENABLE_4','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(446,NULL,NULL,'PS_FOLLOW_UP_AMOUNT_1','3','2020-12-18 00:38:21','2020-12-18 00:41:01'),(447,NULL,NULL,'PS_FOLLOW_UP_AMOUNT_2','5','2020-12-18 00:38:21','2020-12-18 00:40:05'),(448,NULL,NULL,'PS_FOLLOW_UP_AMOUNT_3','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(449,NULL,NULL,'PS_FOLLOW_UP_AMOUNT_4','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(450,NULL,NULL,'PS_FOLLOW_UP_DAYS_1','1','2020-12-18 00:38:21','2020-12-18 00:41:01'),(451,NULL,NULL,'PS_FOLLOW_UP_DAYS_2','10','2020-12-18 00:38:21','2020-12-18 00:40:05'),(452,NULL,NULL,'PS_FOLLOW_UP_DAYS_3','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(453,NULL,NULL,'PS_FOLLOW_UP_DAYS_4','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(454,NULL,NULL,'PS_FOLLOW_UP_THRESHOLD_3','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(455,NULL,NULL,'PS_FOLLOW_UP_DAYS_THRESHOLD_4','0','2020-12-18 00:38:21','2020-12-18 00:38:21'),(456,NULL,NULL,'PS_FOLLOW_UP_CLEAN_DB','1','2020-12-18 00:38:21','2020-12-18 00:41:01'),(457,NULL,NULL,'PS_SAV_IMAP_URL','imap.gmail.com','2020-12-18 00:47:50','2020-12-18 02:28:25'),(458,NULL,NULL,'PS_SAV_IMAP_PORT','993','2020-12-18 00:47:50','2020-12-18 02:28:25'),(459,NULL,NULL,'PS_SAV_IMAP_USER','ebutypresta@gmail.com','2020-12-18 00:47:50','2020-12-18 02:28:25'),(460,NULL,NULL,'PS_SAV_IMAP_PWD',NULL,'2020-12-18 00:47:50','2020-12-18 02:28:58'),(461,NULL,NULL,'PS_SAV_IMAP_DELETE_MSG','0','2020-12-18 00:47:50','2020-12-18 00:47:50'),(462,NULL,NULL,'PS_SAV_IMAP_CREATE_THREADS','0','2020-12-18 00:47:50','2020-12-18 00:47:50'),(463,NULL,NULL,'PS_SAV_IMAP_OPT_POP3','1','2020-12-18 00:47:50','2020-12-18 02:28:25'),(464,NULL,NULL,'PS_SAV_IMAP_OPT_NORSH','0','2020-12-18 00:47:50','2020-12-18 00:47:50'),(465,NULL,NULL,'PS_SAV_IMAP_OPT_SSL','1','2020-12-18 00:47:50','2020-12-18 02:28:25'),(466,NULL,NULL,'PS_SAV_IMAP_OPT_VALIDATE-CERT','0','2020-12-18 00:47:50','2020-12-18 00:47:50'),(467,NULL,NULL,'PS_SAV_IMAP_OPT_NOVALIDATE-CERT','0','2020-12-18 00:47:50','2020-12-18 00:47:50'),(468,NULL,NULL,'PS_SAV_IMAP_OPT_TLS','1','2020-12-18 00:47:50','2020-12-18 02:28:25'),(469,NULL,NULL,'PS_SAV_IMAP_OPT_NOTLS','0','2020-12-18 00:47:50','2020-12-18 00:47:50'),(470,NULL,NULL,'PS_MAIL_EMAIL_MESSAGE','2','2020-12-18 01:22:51','2020-12-18 01:22:51'),(471,NULL,NULL,'PS_MAIL_DOMAIN',NULL,'2020-12-18 01:22:51','2020-12-18 01:24:20'),(473,NULL,NULL,'GA_USERID_ENABLED','1','2020-12-18 02:03:04','2020-12-18 02:03:04'),(474,NULL,NULL,'NW_CONFIRMATION_EMAIL','1','2020-12-18 02:24:57','2020-12-18 02:25:19'),(475,NULL,NULL,'NW_VOUCHER_CODE',NULL,'2020-12-18 02:25:19','2020-12-18 02:25:19'),(476,NULL,NULL,'PS_INVOICE_YEAR_POS','0','2020-12-18 18:57:58','2020-12-18 18:57:58'),(477,NULL,NULL,'PS_INVOICE_START_NUMBER','0','2020-12-18 18:57:58','2020-12-18 18:57:58'),(478,NULL,NULL,'PS_INVOICE_LEGAL_FREE_TEXT',NULL,'2020-12-18 18:57:58','2020-12-18 18:57:58'),(479,NULL,NULL,'PS_INVOICE_FREE_TEXT',NULL,'2020-12-18 18:57:58','2020-12-18 18:57:58');
/*!40000 ALTER TABLE `ps_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration_kpi`
--

DROP TABLE IF EXISTS `ps_configuration_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration_kpi` (
  `id_configuration_kpi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration_kpi`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration_kpi`
--

LOCK TABLES `ps_configuration_kpi` WRITE;
/*!40000 ALTER TABLE `ps_configuration_kpi` DISABLE KEYS */;
INSERT INTO `ps_configuration_kpi` VALUES (1,NULL,NULL,'DASHGOALS_TRAFFIC_01_2020','600','2020-11-30 19:28:32','2020-11-30 19:28:32'),(2,NULL,NULL,'DASHGOALS_CONVERSION_01_2020','2','2020-11-30 19:28:32','2020-11-30 19:28:32'),(3,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_01_2020','80','2020-11-30 19:28:32','2020-11-30 19:28:32'),(4,NULL,NULL,'DASHGOALS_TRAFFIC_02_2020','600','2020-11-30 19:28:32','2020-11-30 19:28:32'),(5,NULL,NULL,'DASHGOALS_CONVERSION_02_2020','2','2020-11-30 19:28:32','2020-11-30 19:28:32'),(6,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_02_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(7,NULL,NULL,'DASHGOALS_TRAFFIC_03_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(8,NULL,NULL,'DASHGOALS_CONVERSION_03_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(9,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_03_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(10,NULL,NULL,'DASHGOALS_TRAFFIC_04_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(11,NULL,NULL,'DASHGOALS_CONVERSION_04_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(12,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_04_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(13,NULL,NULL,'DASHGOALS_TRAFFIC_05_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(14,NULL,NULL,'DASHGOALS_CONVERSION_05_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(15,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_05_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(16,NULL,NULL,'DASHGOALS_TRAFFIC_06_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(17,NULL,NULL,'DASHGOALS_CONVERSION_06_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(18,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_06_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(19,NULL,NULL,'DASHGOALS_TRAFFIC_07_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(20,NULL,NULL,'DASHGOALS_CONVERSION_07_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(21,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_07_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(22,NULL,NULL,'DASHGOALS_TRAFFIC_08_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(23,NULL,NULL,'DASHGOALS_CONVERSION_08_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(24,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_08_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(25,NULL,NULL,'DASHGOALS_TRAFFIC_09_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(26,NULL,NULL,'DASHGOALS_CONVERSION_09_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(27,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_09_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(28,NULL,NULL,'DASHGOALS_TRAFFIC_10_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(29,NULL,NULL,'DASHGOALS_CONVERSION_10_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(30,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_10_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(31,NULL,NULL,'DASHGOALS_TRAFFIC_11_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(32,NULL,NULL,'DASHGOALS_CONVERSION_11_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(33,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_11_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(34,NULL,NULL,'DASHGOALS_TRAFFIC_12_2020','600','2020-11-30 19:28:33','2020-11-30 19:28:33'),(35,NULL,NULL,'DASHGOALS_CONVERSION_12_2020','2','2020-11-30 19:28:33','2020-11-30 19:28:33'),(36,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_12_2020','80','2020-11-30 19:28:33','2020-11-30 19:28:33'),(37,NULL,NULL,'EMPTY_CATEGORIES','0','2020-12-01 19:19:36','2020-12-01 19:19:36'),(38,NULL,NULL,'EMPTY_CATEGORIES_EXPIRE','1606853976','2020-12-01 19:19:36','2020-12-01 19:19:36'),(39,NULL,NULL,'TOP_CATEGORY',NULL,'2020-12-01 19:19:36','2020-12-01 19:19:36'),(40,NULL,NULL,'TOP_CATEGORY_EXPIRE',NULL,'2020-12-01 19:19:36','2020-12-01 19:19:36'),(41,NULL,NULL,'PRODUCTS_PER_CATEGORY','2','2020-12-01 19:19:36','2020-12-01 19:19:36'),(42,NULL,NULL,'PRODUCTS_PER_CATEGORY_EXPIRE','1606850376','2020-12-01 19:19:36','2020-12-01 19:19:36'),(43,NULL,NULL,'DISABLED_CATEGORIES','0','2020-12-01 19:19:36','2020-12-01 19:19:36'),(44,NULL,NULL,'DISABLED_CATEGORIES_EXPIRE','1606853976','2020-12-01 19:19:36','2020-12-01 19:19:36'),(45,NULL,NULL,'CONVERSION_RATE','0%','2020-12-01 21:13:15','2020-12-01 21:13:15'),(46,NULL,NULL,'CONVERSION_RATE_EXPIRE','1606863600','2020-12-01 21:13:15','2020-12-01 21:13:15'),(47,NULL,NULL,'AVG_ORDER_VALUE','0,00 zł','2020-12-01 21:13:16','2020-12-01 21:13:16'),(48,NULL,NULL,'AVG_ORDER_VALUE_EXPIRE','1606863600','2020-12-01 21:13:16','2020-12-01 21:13:16'),(49,NULL,NULL,'NETPROFIT_VISIT','0,00 zł','2020-12-01 21:13:16','2020-12-01 21:13:16'),(50,NULL,NULL,'NETPROFIT_VISIT_EXPIRE','1606863600','2020-12-01 21:13:16','2020-12-01 21:13:16'),(51,NULL,NULL,'ABANDONED_CARTS','0','2020-12-01 21:13:16','2020-12-01 21:13:16'),(52,NULL,NULL,'ABANDONED_CARTS_EXPIRE','1606857196','2020-12-01 21:13:16','2020-12-01 21:13:16'),(53,NULL,NULL,'MAIN_COUNTRY',NULL,'2020-12-02 18:18:21','2020-12-02 18:18:21'),(54,NULL,NULL,'MAIN_COUNTRY_EXPIRE',NULL,'2020-12-02 18:18:21','2020-12-02 18:18:21'),(55,NULL,NULL,'ENABLED_LANGUAGES','1','2020-12-02 18:18:21','2020-12-02 18:18:21'),(56,NULL,NULL,'ENABLED_LANGUAGES_EXPIRE','1606929561','2020-12-02 18:18:21','2020-12-02 18:18:21'),(57,NULL,NULL,'FRONTOFFICE_TRANSLATIONS','0%','2020-12-02 18:18:21','2020-12-02 18:18:21'),(58,NULL,NULL,'FRONTOFFICE_TRANSLATIONS_EXPIRE','1606929621','2020-12-02 18:18:21','2020-12-02 18:18:21'),(59,NULL,NULL,'CUSTOMER_MAIN_GENDER',NULL,'2020-12-02 18:50:57','2020-12-02 18:50:57'),(60,NULL,NULL,'CUSTOMER_MAIN_GENDER_EXPIRE',NULL,'2020-12-02 18:50:57','2020-12-02 18:50:57'),(61,NULL,NULL,'AVG_CUSTOMER_AGE',NULL,'2020-12-02 18:50:57','2020-12-02 18:50:57'),(62,NULL,NULL,'AVG_CUSTOMER_AGE_EXPIRE',NULL,'2020-12-02 18:50:57','2020-12-02 18:50:57'),(63,NULL,NULL,'NEWSLETTER_REGISTRATIONS','3','2020-12-02 18:50:57','2020-12-02 18:50:57'),(64,NULL,NULL,'NEWSLETTER_REGISTRATIONS_EXPIRE','1606953057','2020-12-02 18:50:57','2020-12-02 18:50:57'),(65,NULL,NULL,'ORDERS_PER_CUSTOMER','0','2020-12-02 18:50:57','2020-12-02 18:50:57'),(66,NULL,NULL,'ORDERS_PER_CUSTOMER_EXPIRE','1607017857','2020-12-02 18:50:57','2020-12-02 18:50:57'),(67,NULL,NULL,'MESSAGES_PER_THREAD','0','2020-12-02 18:51:11','2020-12-02 18:51:11'),(68,NULL,NULL,'MESSAGES_PER_THREAD_EXPIRE','1606974671','2020-12-02 18:51:11','2020-12-02 18:51:11'),(69,NULL,NULL,'PENDING_MESSAGES','0','2020-12-02 18:51:11','2020-12-02 18:51:11'),(70,NULL,NULL,'PENDING_MESSAGES_EXPIRE','1606931771','2020-12-02 18:51:11','2020-12-02 18:51:11'),(71,NULL,NULL,'AVG_MSG_RESPONSE_TIME','0 godzin','2020-12-02 18:51:11','2020-12-02 18:51:11'),(72,NULL,NULL,'AVG_MSG_RESPONSE_TIME_EXPIRE','1606945871','2020-12-02 18:51:11','2020-12-02 18:51:11');
/*!40000 ALTER TABLE `ps_configuration_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration_kpi_lang`
--

DROP TABLE IF EXISTS `ps_configuration_kpi_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration_kpi_lang` (
  `id_configuration_kpi` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration_kpi`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration_kpi_lang`
--

LOCK TABLES `ps_configuration_kpi_lang` WRITE;
/*!40000 ALTER TABLE `ps_configuration_kpi_lang` DISABLE KEYS */;
INSERT INTO `ps_configuration_kpi_lang` VALUES (39,1,'Women','2020-12-01 19:19:36'),(40,1,'1606933176','2020-12-01 19:19:36'),(53,1,'Brak zamówień','2020-12-02 18:18:21'),(54,1,'1607015901','2020-12-02 18:18:21'),(59,1,'100% Klientów Mężczyzn','2020-12-02 18:50:57'),(60,1,'1607017857','2020-12-02 18:50:57'),(61,1,'40 lat','2020-12-02 18:50:57'),(62,1,'1607017857','2020-12-02 18:50:57');
/*!40000 ALTER TABLE `ps_configuration_kpi_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration_lang`
--

DROP TABLE IF EXISTS `ps_configuration_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration_lang`
--

LOCK TABLES `ps_configuration_lang` WRITE;
/*!40000 ALTER TABLE `ps_configuration_lang` DISABLE KEYS */;
INSERT INTO `ps_configuration_lang` VALUES (39,1,'#FV',NULL),(42,1,'#LP',NULL),(44,1,'#ZW',NULL),(51,1,'ach|aj|albo|bardzo|bez|bo|być|ci|cię|ciebie|co|czy|daleko|dla|dlaczego|dlatego|do|dobrze|dokąd|dość|dużo|dwa|dwaj|dwie|dwoje|dziś|dzisiaj|gdyby|gdzie|go|ich|ile|im|inny|ja|ją|jak|jakby|jaki|je|jeden|jedna|jedno|jego|jej|jemu|jeśli|jest|jestem|jeżeli|już|każdy|kiedy|kierunku|kto|ku|lub|ma|mają|mam|mi|mną|mnie|moi|mój|moja|moje|może|mu|my|na|nam|nami|nas|nasi|nasz|nasza|nasze|natychmiast|nią|nic|nich|nie|niego|niej|niemu|nigdy|nim|nimi|niż|obok|od|okolo|on|ona|one|oni|ono|owszem|po|pod|ponieważ|przed|przedtem|są|sam|sama|się|skąd|tak|taki|tam|ten|to|tobą|tobie|tu|tutaj|twoi|twój|twoja|twoje|ty|wam|wami|was|wasi|wasz|wasza|wasze|we|więc|wszystko|wtedy|wy|żaden|zawsze|że',NULL),(77,1,'Drogi kliencie, \r\ndziękujemy za zainteresowanie naszymi produktami.\r\n\r\nZapraszamy do zakupów,\r\neButy','2020-12-17 23:47:50'),(277,1,'We are currently updating our shop and will be back really soon.\r\nThanks for your patience.',NULL),(279,1,'',NULL),(280,1,'',NULL),(281,1,'Obecnie brak na stanie',NULL),(299,1,'e483913456c26dba649c80a0dcb297f0.png','2020-12-01 20:35:15'),(300,1,'http://localhost:8080/brand/2-newbalance','2020-12-01 20:35:15'),(301,1,'','2020-11-30 19:28:33'),(309,1,'Możesz zrezygnować w każdej chwili. W tym celu należy odnaleźć szczegóły w naszej informacji prawnej.','2020-11-30 19:28:34'),(354,1,'Akceptuję ogólne warunki użytkowania i politykę prywatności','2020-11-30 19:28:44'),(356,1,'Akceptuję ogólne warunki użytkowania i politykę prywatności','2020-11-30 19:28:44'),(428,1,'','2020-12-14 18:33:54'),(478,1,'','2020-12-18 17:58:25'),(479,1,'','2020-12-18 17:58:25');
/*!40000 ALTER TABLE `ps_configuration_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections`
--

DROP TABLE IF EXISTS `ps_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections`
--

LOCK TABLES `ps_connections` WRITE;
/*!40000 ALTER TABLE `ps_connections` DISABLE KEYS */;
INSERT INTO `ps_connections` VALUES (1,1,1,1,1,2130706433,'2020-11-30 19:28:57','http://www.prestashop.com'),(2,1,1,3,1,2886860801,'2020-11-30 19:29:43','http://localhost:8080/admin/index.php?controller=AdminLogin&token=ac1a009b6ab39989667944c571f60790'),(3,1,1,4,2,2886860801,'2020-12-01 19:20:54','http://localhost:8080/admin123/index.php/sell/catalog/categories/2?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs'),(4,1,1,4,3,2886860801,'2020-12-01 19:32:04','http://localhost:8080/dane-osobiste'),(5,1,1,5,2,2886860801,'2020-12-01 21:45:08',''),(6,1,1,4,2,2886860801,'2020-12-02 18:05:34',''),(7,1,1,6,2,2886860801,'2020-12-02 18:06:57','http://localhost:8080/'),(8,1,1,7,3,2886860801,'2020-12-02 18:11:02','http://localhost:8080/adresy'),(9,1,1,7,4,2886860801,'2020-12-02 19:03:18',''),(10,1,1,8,2,2887057409,'2020-12-02 19:43:32',''),(11,1,1,7,2,2887057409,'2020-12-06 15:11:02',''),(12,1,1,8,3,2887057409,'2020-12-06 15:36:47','http://localhost:8080/potwierdzenie-zamowienia?id_cart=11&id_module=66&id_order=9&key=0dfa8fa1fff81a5766dd558aa5c4a1f8'),(13,1,1,9,4,2887057409,'2020-12-14 18:24:55',''),(14,1,1,10,5,2887057409,'2020-12-14 18:34:48','http://localhost:8080/zam%C3%B3wienie'),(15,1,1,4,2,2886991873,'2020-12-16 19:02:18',''),(16,1,1,4,2,2886991873,'2020-12-16 19:49:22',''),(17,1,1,4,2,2886991873,'2020-12-17 00:41:33',''),(18,1,1,12,2,2887450625,'2020-12-17 23:54:58',''),(19,1,1,12,2,2887450625,'2020-12-18 00:34:30',''),(20,1,1,12,2,2887450625,'2020-12-18 01:37:24',''),(21,1,1,12,1,2887450625,'2020-12-18 02:14:36',''),(22,1,1,12,2,2887450625,'2020-12-18 08:33:20',''),(23,1,1,13,2,2887057409,'2020-12-18 18:57:12','');
/*!40000 ALTER TABLE `ps_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_page`
--

DROP TABLE IF EXISTS `ps_connections_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_page`
--

LOCK TABLES `ps_connections_page` WRITE;
/*!40000 ALTER TABLE `ps_connections_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_connections_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_source`
--

DROP TABLE IF EXISTS `ps_connections_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_source`
--

LOCK TABLES `ps_connections_source` WRITE;
/*!40000 ALTER TABLE `ps_connections_source` DISABLE KEYS */;
INSERT INTO `ps_connections_source` VALUES (1,2,'http://localhost:8080/admin/index.php?controller=AdminLogin&token=ac1a009b6ab39989667944c571f60790','localhost:8080/admin371mjdtgs/','','2020-11-30 19:29:43'),(2,3,'http://localhost:8080/admin123/index.php/sell/catalog/categories/2?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/','','2020-12-01 19:20:54'),(3,3,'http://localhost:8080/admin123/index.php/sell/catalog/categories/2?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/','','2020-12-01 19:24:02'),(4,3,'http://localhost:8080/admin123/index.php/sell/catalog/categories/2?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/','','2020-12-01 19:24:07'),(5,3,'http://localhost:8080/admin123/index.php/sell/catalog/categories/2?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/','','2020-12-01 19:24:09'),(6,3,'http://localhost:8080/','localhost:8080/5-women','','2020-12-01 19:24:12'),(7,3,'http://localhost:8080/5-women','localhost:8080/','','2020-12-01 19:24:15'),(8,3,'http://localhost:8080/admin123/index.php/sell/catalog/categories/2?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/','','2020-12-01 19:24:17'),(9,3,'http://localhost:8080/admin123/index.php/sell/catalog/categories/3?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/','','2020-12-01 19:25:09'),(10,3,'http://localhost:8080/','localhost:8080/5-sportowe','','2020-12-01 19:25:11'),(11,3,'http://localhost:8080/5-sportowe','localhost:8080/','','2020-12-01 19:25:12'),(12,3,'http://localhost:8080/','localhost:8080/kontakt','','2020-12-01 19:25:40'),(13,3,'http://localhost:8080/kontakt','localhost:8080/promocje','','2020-12-01 19:25:44'),(14,3,'http://localhost:8080/promocje','localhost:8080/','','2020-12-01 19:25:47'),(15,3,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 19:29:40'),(16,3,'http://localhost:8080/4-polbuty','localhost:8080/4-polbuty','','2020-12-01 19:29:55'),(17,3,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:29:58'),(18,3,'http://localhost:8080/strona-glowna/20-trzewiki-new-balance.html','localhost:8080/brand/2-graphic-corner','','2020-12-01 19:30:10'),(19,3,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:30:13'),(20,3,'http://localhost:8080/strona-glowna/20-trzewiki-new-balance.html','localhost:8080/koszyk?action=show','','2020-12-01 19:30:31'),(21,3,'http://localhost:8080/koszyk?action=show','localhost:8080/zam%C3%B3wienie','','2020-12-01 19:30:34'),(22,3,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 19:31:05'),(23,3,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 19:31:29'),(24,3,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 19:31:33'),(25,3,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/potwierdzenie-zamowienia?id_cart=6&id_module=30&id_order=6&key=dc2da80e0683a0c5042d7a5e3b507991','','2020-12-01 19:31:41'),(26,3,'http://localhost:8080/potwierdzenie-zamowienia?id_cart=6&id_module=30&id_order=6&key=dc2da80e0683a0c5042d7a5e3b507991','localhost:8080/moje-konto','','2020-12-01 19:31:57'),(27,3,'http://localhost:8080/moje-konto','localhost:8080/dane-osobiste','','2020-12-01 19:31:59'),(28,4,'http://localhost:8080/dane-osobiste','localhost:8080/logowanie?back=identity','','2020-12-01 19:32:04'),(29,4,'http://localhost:8080/logowanie?back=identity','localhost:8080/logowanie?back=identity','','2020-12-01 19:32:11'),(30,4,'http://localhost:8080/logowanie?back=identity','localhost:8080/dane-osobiste','','2020-12-01 19:32:16'),(31,4,'http://localhost:8080/dane-osobiste','localhost:8080/','','2020-12-01 19:44:30'),(32,4,'http://localhost:8080/','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:44:32'),(33,4,'http://localhost:8080/strona-glowna/20-trzewiki-new-balance.html','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:44:38'),(34,4,'http://localhost:8080/strona-glowna/20-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 19:44:40'),(35,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:44:41'),(36,4,'http://localhost:8080/admin123/index.php/sell/catalog/products/20?_token=UIXW9cfku2OlW5fRKeRnHw2IbKLJlAYLMcnBXfNYyQs','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:45:02'),(37,4,'http://localhost:8080/strona-glowna/20-trzewiki-new-balance.html','localhost:8080/strona-glowna/20-trzewiki-new-balance.html','','2020-12-01 19:46:29'),(38,4,'http://localhost:8080/strona-glowna/20-trzewiki-new-balance.html','localhost:8080/','','2020-12-01 19:48:40'),(39,4,'http://localhost:8080/','localhost:8080/5-sportowe','','2020-12-01 19:48:43'),(40,4,'http://localhost:8080/strona-glowna/20-42-trzewiki-new-balance.html','localhost:8080/','','2020-12-01 19:52:09'),(41,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 19:52:12'),(42,4,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-01 19:52:14'),(43,4,'http://localhost:8080/','localhost:8080/2-strona-glowna','','2020-12-01 19:52:19'),(44,4,'http://localhost:8080/2-strona-glowna','localhost:8080/','','2020-12-01 19:52:23'),(45,4,'http://localhost:8080/2-strona-glowna','localhost:8080/','','2020-12-01 20:49:16'),(46,4,'http://localhost:8080/','localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','','2020-12-01 20:50:05'),(47,4,'http://localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','localhost:8080/','','2020-12-01 20:51:07'),(48,4,'http://localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','localhost:8080/','','2020-12-01 20:51:16'),(49,4,'http://localhost:8080/','localhost:8080/strona-glowna/21-44-new-balance-h754ob.html','','2020-12-01 20:51:21'),(50,4,'http://localhost:8080/strona-glowna/21-44-new-balance-h754ob.html','localhost:8080/','','2020-12-01 20:53:24'),(51,4,'http://localhost:8080/','localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','','2020-12-01 20:53:28'),(52,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 20:53:37'),(53,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','','2020-12-01 20:53:39'),(54,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 20:53:49'),(55,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','','2020-12-01 20:53:50'),(56,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 20:53:53'),(57,4,'http://localhost:8080/4-polbuty?q=Rozmiar-45/Kolor-Szary','localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','','2020-12-01 20:55:23'),(58,4,'http://localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','localhost:8080/','','2020-12-01 20:55:58'),(59,4,'http://localhost:8080/','localhost:8080/','','2020-12-01 20:56:32'),(60,4,'http://localhost:8080/','localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','','2020-12-01 20:56:38'),(61,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/koszyk?action=show','','2020-12-01 20:58:01'),(62,4,'http://localhost:8080/koszyk?action=show','localhost:8080/4-polbuty','','2020-12-01 21:00:11'),(63,4,'http://localhost:8080/koszyk?action=show','localhost:8080/4-polbuty?order=product.price.asc&q=Rozmiar-45','','2020-12-01 21:01:10'),(64,4,'http://localhost:8080/koszyk?action=show','localhost:8080/4-polbuty?order=product.price.asc&q=Rozmiar-45','','2020-12-01 21:01:15'),(65,4,'http://localhost:8080/koszyk?action=show','localhost:8080/4-polbuty?order=product.price.asc&q=Rozmiar-45','','2020-12-01 21:01:31'),(66,4,'http://localhost:8080/4-polbuty?order=product.price.asc&q=Rozmiar-45','localhost:8080/','','2020-12-01 21:01:34'),(67,4,'http://localhost:8080/4-polbuty?order=product.price.asc&q=Rozmiar-45','localhost:8080/','','2020-12-01 21:02:05'),(68,4,'http://localhost:8080/','localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','','2020-12-01 21:02:09'),(69,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 21:02:27'),(70,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/4-polbuty?q=Kolor-Szary-Szarobr%C4%85zowy','','2020-12-01 21:03:44'),(71,4,'http://localhost:8080/4-polbuty?q=Kolor-Szary-Szarobr%C4%85zowy','localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','','2020-12-01 21:05:30'),(72,4,'http://localhost:8080/strona-glowna/20-40-trzewiki-new-balance.html','localhost:8080/4-polbuty?q=Kolor-Szary-Szarobr%C4%85zowy','','2020-12-01 21:05:38'),(73,4,'http://localhost:8080/4-polbuty?q=Kolor-Szary-Szarobr%C4%85zowy','localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','','2020-12-01 21:05:39'),(74,4,'http://localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','localhost:8080/','','2020-12-01 21:10:22'),(75,4,'http://localhost:8080/','localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','','2020-12-01 21:10:26'),(76,4,'http://localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','localhost:8080/3-meskie','','2020-12-01 21:11:01'),(77,4,'http://localhost:8080/3-meskie','localhost:8080/strona-glowna/21-48-new-balance-h754ob.html','','2020-12-01 21:11:04'),(78,4,'http://localhost:8080/strona-glowna/21-48-new-balance-h754ob.html','localhost:8080/','','2020-12-01 21:11:08'),(79,4,'http://localhost:8080/','localhost:8080/strona-glowna/21-43-new-balance-h754ob.html','','2020-12-01 21:11:10'),(80,4,'http://localhost:8080/strona-glowna/21-44-new-balance-h754ob.html','localhost:8080/3-meskie','','2020-12-01 21:12:21'),(81,4,'http://localhost:8080/strona-glowna/21-44-new-balance-h754ob.html','localhost:8080/4-polbuty','','2020-12-01 21:12:21'),(82,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-48-new-balance-h754ob.html','','2020-12-01 21:12:26'),(83,4,'http://localhost:8080/strona-glowna/21-48-new-balance-h754ob.html','localhost:8080/','','2020-12-01 21:12:32'),(84,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:12:33'),(85,4,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-01 21:13:06'),(86,4,'http://localhost:8080/','localhost:8080/promocje','','2020-12-01 21:13:37'),(87,4,'http://localhost:8080/promocje','localhost:8080/nowe-produkty','','2020-12-01 21:13:39'),(88,4,'http://localhost:8080/nowe-produkty','localhost:8080/najczesciej-kupowane','','2020-12-01 21:13:40'),(89,4,'http://localhost:8080/najczesciej-kupowane','localhost:8080/','','2020-12-01 21:13:42'),(90,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:17:38'),(91,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-45-trzewiki-new-balance.html','','2020-12-01 21:17:47'),(92,4,'http://localhost:8080/strona-glowna/20-45-trzewiki-new-balance.html','localhost:8080/','','2020-12-01 21:17:49'),(93,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:18:21'),(94,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:22:56'),(95,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:26:09'),(96,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:26:11'),(97,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:26:12'),(98,4,'http://localhost:8080/4-polbuty','localhost:8080/3-meskie','','2020-12-01 21:26:15'),(99,4,'http://localhost:8080/3-meskie','localhost:8080/','','2020-12-01 21:26:19'),(100,4,'http://localhost:8080/','localhost:8080/strona-glowna/20-51-trzewiki-new-balance.html','','2020-12-01 21:26:22'),(101,4,'http://localhost:8080/strona-glowna/20-51-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 21:26:31'),(102,4,'http://localhost:8080/strona-glowna/20-51-trzewiki-new-balance.html','localhost:8080/4-polbuty','','2020-12-01 21:28:45'),(103,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-01 21:28:49'),(104,4,'http://localhost:8080/strona-glowna/21-63-new-balance-h754ob.html','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-01 21:28:57'),(105,4,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/','','2020-12-01 21:28:58'),(106,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:29:02'),(107,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:32:27'),(108,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','','2020-12-01 21:32:31'),(109,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','','2020-12-01 21:34:46'),(110,4,'http://localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','localhost:8080/','','2020-12-01 21:34:50'),(111,4,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-01 21:34:52'),(112,4,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','','2020-12-01 21:34:53'),(113,4,'http://localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','localhost:8080/brand/2-newbalance','','2020-12-01 21:34:59'),(114,4,'http://localhost:8080/brand/2-newbalance','localhost:8080/','','2020-12-01 21:35:19'),(115,4,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-01 21:35:21'),(116,4,'http://localhost:8080/brand/2-newbalance','localhost:8080/','','2020-12-01 21:35:23'),(117,4,'http://localhost:8080/','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-01 21:35:47'),(118,4,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/koszyk?action=show','','2020-12-01 21:35:51'),(119,4,'http://localhost:8080/koszyk?action=show','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:35:54'),(120,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:35:57'),(121,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:36:04'),(122,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:37:15'),(123,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:41:16'),(124,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:41:56'),(125,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie?controller=order','','2020-12-01 21:42:04'),(126,4,'http://localhost:8080/zam%C3%B3wienie?controller=order','localhost:8080/zam%C3%B3wienie?controller=order&updatedTransaction=1','','2020-12-01 21:42:07'),(127,4,'http://localhost:8080/zam%C3%B3wienie?controller=order&updatedTransaction=1','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:42:12'),(128,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie?updatedTransaction=1','','2020-12-01 21:42:15'),(129,4,'http://localhost:8080/zam%C3%B3wienie?updatedTransaction=1','localhost:8080/zam%C3%B3wienie','','2020-12-01 21:42:41'),(130,4,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie?updatedTransaction=1','','2020-12-01 21:43:13'),(131,5,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-01 21:45:15'),(132,5,'http://localhost:8080/brand/2-newbalance','localhost:8080/','','2020-12-01 21:45:16'),(133,5,'http://localhost:8080/','localhost:8080/5-sportowe','','2020-12-01 21:45:20'),(134,5,'http://localhost:8080/5-sportowe','localhost:8080/','','2020-12-01 21:45:21'),(135,5,'http://localhost:8080/','localhost:8080/3-meskie','','2020-12-01 21:45:23'),(136,5,'http://localhost:8080/3-meskie','localhost:8080/4-polbuty','','2020-12-01 21:45:27'),(137,5,'http://localhost:8080/4-polbuty','localhost:8080/5-sportowe','','2020-12-01 21:45:32'),(138,5,'http://localhost:8080/5-sportowe','localhost:8080/4-polbuty','','2020-12-01 21:45:34'),(139,7,'http://localhost:8080/','localhost:8080/','','2020-12-02 18:06:57'),(140,7,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-02 18:07:27'),(141,7,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:08:22'),(142,7,'http://localhost:8080/','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-02 18:08:43'),(143,7,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/koszyk?action=show','','2020-12-02 18:08:47'),(144,7,'http://localhost:8080/koszyk?action=show','localhost:8080/zam%C3%B3wienie','','2020-12-02 18:08:50'),(145,7,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-02 18:09:17'),(146,7,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-02 18:09:28'),(147,7,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie?controller=order','','2020-12-02 18:09:59'),(148,7,'http://localhost:8080/zam%C3%B3wienie?controller=order','localhost:8080/zam%C3%B3wienie','','2020-12-02 18:10:30'),(149,7,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-02 18:10:36'),(150,7,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/potwierdzenie-zamowienia?id_cart=8&id_module=66&id_order=7&key=b7b928b85706aab35f9bfc7ea19c7e1c','','2020-12-02 18:10:46'),(151,7,'http://localhost:8080/potwierdzenie-zamowienia?id_cart=8&id_module=66&id_order=7&key=b7b928b85706aab35f9bfc7ea19c7e1c','localhost:8080/moje-konto','','2020-12-02 18:10:51'),(152,7,'http://localhost:8080/moje-konto','localhost:8080/dane-osobiste','','2020-12-02 18:10:52'),(153,7,'http://localhost:8080/dane-osobiste','localhost:8080/','','2020-12-02 18:10:56'),(154,7,'http://localhost:8080/','localhost:8080/moje-konto','','2020-12-02 18:10:59'),(155,7,'http://localhost:8080/moje-konto','localhost:8080/adresy','','2020-12-02 18:11:00'),(156,8,'http://localhost:8080/adresy','localhost:8080/logowanie?back=addresses','','2020-12-02 18:11:02'),(157,8,'http://localhost:8080/logowanie?back=addresses','localhost:8080/logowanie?back=addresses','','2020-12-02 18:11:21'),(158,8,'http://localhost:8080/logowanie?back=addresses','localhost:8080/logowanie?back=addresses','','2020-12-02 18:11:25'),(159,8,'http://localhost:8080/logowanie?back=addresses','localhost:8080/','','2020-12-02 18:11:27'),(160,8,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-02 18:11:49'),(161,8,'http://localhost:8080/brand/2-newbalance','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-02 18:11:58'),(162,8,'http://localhost:8080/strona-glowna/21-63-new-balance-h754ob.html','localhost:8080/4-polbuty','','2020-12-02 18:12:31'),(163,8,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-63-new-balance-h754ob.html','','2020-12-02 18:12:39'),(164,8,'http://localhost:8080/strona-glowna/21-63-new-balance-h754ob.html','localhost:8080/','','2020-12-02 18:12:56'),(165,8,'http://localhost:8080/','localhost:8080/kontakt','','2020-12-02 18:13:09'),(166,8,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-02 18:13:16'),(167,8,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-02 18:13:20'),(168,8,'http://localhost:8080/brand/2-newbalance','localhost:8080/','','2020-12-02 18:13:27'),(169,8,'http://localhost:8080/brand/2-newbalance','localhost:8080/','','2020-12-02 18:13:43'),(170,8,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-02 18:23:31'),(171,8,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:23:47'),(172,8,'http://localhost:8080/','localhost:8080/content/2-legal-notice','','2020-12-02 18:24:27'),(173,8,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:24:29'),(174,8,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:26:37'),(175,8,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:26:39'),(176,8,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:28:49'),(177,8,'http://localhost:8080/4-polbuty','localhost:8080/','','2020-12-02 18:28:53'),(178,8,'http://localhost:8080/content/1-delivery','localhost:8080/favicon.ico','','2020-12-02 18:29:02'),(179,8,'http://localhost:8080/content/1-delivery','localhost:8080/content/1-dostawa','','2020-12-02 18:29:06'),(180,8,'http://localhost:8080/content/1-dostawa','localhost:8080/','','2020-12-02 18:29:09'),(181,8,'http://localhost:8080/content/1-dostawa','localhost:8080/','','2020-12-02 18:33:03'),(182,8,'http://localhost:8080/','localhost:8080/','','2020-12-02 18:34:50'),(183,8,'http://localhost:8080/','localhost:8080/','','2020-12-02 18:35:52'),(184,8,'http://localhost:8080/','localhost:8080/','','2020-12-02 18:39:24'),(185,8,'http://localhost:8080/','localhost:8080/','','2020-12-02 18:40:16'),(186,8,'http://localhost:8080/','localhost:8080/promocje','','2020-12-02 18:40:21'),(187,8,'http://localhost:8080/promocje','localhost:8080/nowe-produkty','','2020-12-02 18:40:24'),(188,8,'http://localhost:8080/nowe-produkty','localhost:8080/najczesciej-kupowane','','2020-12-02 18:40:26'),(189,8,'http://localhost:8080/najczesciej-kupowane','localhost:8080/content/1-dostawa','','2020-12-02 18:40:28'),(190,8,'http://localhost:8080/content/1-dostawa','localhost:8080/content/3-regulamin-sklepu','','2020-12-02 18:40:31'),(191,8,'http://localhost:8080/content/3-regulamin-sklepu','localhost:8080/content/4-o-nas','','2020-12-02 18:40:33'),(192,8,'http://localhost:8080/content/4-o-nas','localhost:8080/kontakt','','2020-12-02 18:40:34'),(193,8,'http://localhost:8080/kontakt','localhost:8080/Mapa%20strony','','2020-12-02 18:40:38'),(194,8,'http://localhost:8080/Mapa%20strony','localhost:8080/nasze-sklepy','','2020-12-02 18:40:42'),(195,8,'http://localhost:8080/nasze-sklepy','localhost:8080/','','2020-12-02 18:42:41'),(196,8,'http://localhost:8080/nasze-sklepy','localhost:8080/','','2020-12-02 18:42:41'),(197,8,'http://localhost:8080/nasze-sklepy','localhost:8080/','','2020-12-02 18:43:59'),(198,8,'http://localhost:8080/','localhost:8080/logowanie?back=identity','','2020-12-02 18:44:02'),(199,8,'http://localhost:8080/logowanie?back=identity','localhost:8080/logowanie?back=my-account','','2020-12-02 18:44:06'),(200,8,'http://localhost:8080/logowanie?back=my-account','localhost:8080/logowanie?back=order-slip','','2020-12-02 18:44:11'),(201,8,'http://localhost:8080/logowanie?back=order-slip','localhost:8080/logowanie?back=addresses','','2020-12-02 18:44:13'),(202,8,'http://localhost:8080/logowanie?back=addresses','localhost:8080/kontakt','','2020-12-02 18:44:17'),(203,8,'http://localhost:8080/kontakt','localhost:8080/Mapa%20strony','','2020-12-02 18:44:20'),(204,8,'http://localhost:8080/Mapa%20strony','localhost:8080/logowanie','','2020-12-02 18:44:25'),(205,8,'http://localhost:8080/logowanie','localhost:8080/logowanie?create_account=1','','2020-12-02 18:44:29'),(206,8,'http://localhost:8080/logowanie?create_account=1','localhost:8080/','','2020-12-02 18:44:46'),(207,8,'http://localhost:8080/','localhost:8080/moje-konto','','2020-12-02 18:44:49'),(208,8,'http://localhost:8080/moje-konto','localhost:8080/dane-osobiste','','2020-12-02 18:44:57'),(209,8,'http://localhost:8080/','localhost:8080/moje-konto','','2020-12-02 18:45:00'),(210,8,'http://localhost:8080/moje-konto','localhost:8080/adres','','2020-12-02 18:45:02'),(211,8,'http://localhost:8080/','localhost:8080/moje-konto','','2020-12-02 18:45:04'),(212,8,'http://localhost:8080/moje-konto','localhost:8080/historia-zamowien','','2020-12-02 18:45:06'),(213,8,'http://localhost:8080/','localhost:8080/moje-konto','','2020-12-02 18:45:07'),(214,8,'http://localhost:8080/moje-konto','localhost:8080/potwierdzenie-zwrotu','','2020-12-02 18:45:08'),(215,8,'http://localhost:8080/','localhost:8080/moje-konto','','2020-12-02 18:45:10'),(216,8,'http://localhost:8080/moje-konto','localhost:8080/module/psgdpr/gdpr','','2020-12-02 18:45:11'),(217,8,'http://localhost:8080/moje-konto','localhost:8080/module/psgdpr/gdpr','','2020-12-02 18:55:59'),(218,8,'http://localhost:8080/module/psgdpr/gdpr','localhost:8080/moje-konto','','2020-12-02 18:56:31'),(219,8,'http://localhost:8080/moje-konto','localhost:8080/module/psgdpr/gdpr','','2020-12-02 18:56:33'),(220,8,'http://localhost:8080/module/psgdpr/gdpr','localhost:8080/','','2020-12-02 18:56:36'),(221,8,'http://localhost:8080/module/psgdpr/gdpr','localhost:8080/','','2020-12-02 18:58:54'),(222,8,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-02 18:59:17'),(223,8,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-02 19:01:14'),(224,8,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/koszyk?action=show','','2020-12-02 19:01:17'),(225,8,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/koszyk?action=show','','2020-12-02 19:02:53'),(226,8,'http://localhost:8080/koszyk?action=show','localhost:8080/4-polbuty','','2020-12-02 19:02:58'),(227,8,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-02 19:03:00'),(228,8,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/koszyk?action=show','','2020-12-02 19:03:04'),(229,9,'http://localhost:8080/koszyk?action=show','localhost:8080/','','2020-12-02 19:04:00'),(230,9,'http://localhost:8080/koszyk?action=show','localhost:8080/kontakt','','2020-12-02 19:04:00'),(231,9,'http://localhost:8080/kontakt','localhost:8080/3-meskie','','2020-12-02 19:04:15'),(232,9,'http://localhost:8080/3-meskie','localhost:8080/koszyk?action=show','','2020-12-02 19:04:16'),(233,9,'http://localhost:8080/koszyk?action=show','localhost:8080/koszyk?action=show','','2020-12-02 19:04:19'),(234,9,'http://localhost:8080/koszyk?action=show','localhost:8080/koszyk?action=show','','2020-12-02 19:04:20'),(235,9,'http://localhost:8080/koszyk?action=show','localhost:8080/kontakt','','2020-12-02 19:04:23'),(236,9,'http://localhost:8080/kontakt','localhost:8080/koszyk?action=show','','2020-12-02 19:04:24'),(237,9,'http://localhost:8080/kontakt','localhost:8080/koszyk?action=show','','2020-12-02 19:05:51'),(238,9,'http://localhost:8080/koszyk?action=show','localhost:8080/kontakt','','2020-12-02 19:05:56'),(239,9,'http://localhost:8080/kontakt','localhost:8080/potwierdzenie-zwrotu','','2020-12-02 19:08:02'),(240,9,'http://localhost:8080/potwierdzenie-zwrotu','localhost:8080/historia-zamowien','','2020-12-02 19:08:05'),(241,9,'http://localhost:8080/historia-zamowien','localhost:8080/dane-osobiste','','2020-12-02 19:08:07'),(242,9,'http://localhost:8080/dane-osobiste','localhost:8080/adresy','','2020-12-02 19:08:09'),(243,9,'http://localhost:8080/adresy','localhost:8080/4-polbuty','','2020-12-02 19:10:40'),(244,9,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-02 19:10:42'),(245,10,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-02 19:43:53'),(246,10,'http://localhost:8080/brand/2-newbalance','localhost:8080/logowanie?back=my-account','','2020-12-02 19:44:31'),(247,10,'http://localhost:8080/logowanie?back=my-account','localhost:8080/moje-konto','','2020-12-02 19:44:54'),(248,10,'http://localhost:8080/moje-konto','localhost:8080/dane-osobiste','','2020-12-02 19:46:03'),(249,10,'http://localhost:8080/moje-konto','localhost:8080/historia-zamowien','','2020-12-02 19:46:05'),(250,10,'http://localhost:8080/historia-zamowien','localhost:8080/','','2020-12-02 19:46:10'),(251,10,'http://localhost:8080/historia-zamowien','localhost:8080/4-polbuty','','2020-12-02 19:46:12'),(252,10,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','','2020-12-02 19:46:17'),(253,10,'http://localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','localhost:8080/koszyk?action=show','','2020-12-02 19:46:36'),(254,10,'http://localhost:8080/koszyk?action=show','localhost:8080/zam%C3%B3wienie','','2020-12-02 19:46:43'),(255,10,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-02 19:46:57'),(256,10,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-02 19:47:14'),(257,10,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/potwierdzenie-zamowienia?key=0dfa8fa1fff81a5766dd558aa5c4a1f8&id_cart=10&id_module=65&id_order=8','','2020-12-02 19:47:28'),(258,10,'http://localhost:8080/potwierdzenie-zamowienia?key=0dfa8fa1fff81a5766dd558aa5c4a1f8&id_cart=10&id_module=65&id_order=8','localhost:8080/moje-konto','','2020-12-02 19:47:33'),(259,10,'http://localhost:8080/moje-konto','localhost:8080/historia-zamowien','','2020-12-02 19:47:40'),(260,11,'http://localhost:8080/','localhost:8080/Mapa%20strony','','2020-12-06 15:19:23'),(261,11,'http://localhost:8080/','localhost:8080/nasze-sklepy','','2020-12-06 15:32:46'),(262,11,'http://localhost:8080/nasze-sklepy','localhost:8080/Mapa%20strony','','2020-12-06 15:33:05'),(263,11,'http://localhost:8080/Mapa%20strony','localhost:8080/content/3-regulamin-sklepu','','2020-12-06 15:33:19'),(264,11,'http://localhost:8080/nasze-sklepy','localhost:8080/Mapa%20strony','','2020-12-06 15:33:29'),(265,11,'http://localhost:8080/Mapa%20strony','localhost:8080/content/4-o-nas','','2020-12-06 15:33:36'),(266,11,'http://localhost:8080/content/4-o-nas','localhost:8080/4-polbuty','','2020-12-06 15:33:49'),(267,11,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','','2020-12-06 15:34:00'),(268,11,'http://localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','localhost:8080/koszyk?action=show','','2020-12-06 15:34:22'),(269,11,'http://localhost:8080/koszyk?action=show','localhost:8080/zam%C3%B3wienie','','2020-12-06 15:35:45'),(270,11,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-06 15:35:54'),(271,11,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-06 15:36:04'),(272,11,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/potwierdzenie-zamowienia?id_cart=11&id_module=66&id_order=9&key=0dfa8fa1fff81a5766dd558aa5c4a1f8','','2020-12-06 15:36:19'),(273,12,'http://localhost:8080/potwierdzenie-zamowienia?id_cart=11&id_module=66&id_order=9&key=0dfa8fa1fff81a5766dd558aa5c4a1f8','localhost:8080/logowanie?back=history','','2020-12-06 15:36:47'),(274,12,'http://localhost:8080/logowanie?back=history','localhost:8080/4-polbuty','','2020-12-06 15:37:09'),(275,12,'http://localhost:8080/4-polbuty','localhost:8080/logowanie?back=my-account','','2020-12-06 15:37:22'),(276,12,'http://localhost:8080/logowanie?back=my-account','localhost:8080/logowanie?create_account=1','','2020-12-06 15:37:26'),(277,12,'http://localhost:8080/logowanie?create_account=1','localhost:8080/','','2020-12-06 15:37:48'),(278,12,'http://localhost:8080/logowanie?create_account=1','localhost:8080/','','2020-12-06 15:38:05'),(279,12,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-06 15:38:12'),(280,12,'http://localhost:8080/brand/2-newbalance','localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','','2020-12-06 15:38:20'),(281,12,'http://localhost:8080/strona-glowna/21-60-new-balance-h754ob.html','localhost:8080/','','2020-12-06 15:38:34'),(282,12,'http://localhost:8080/','localhost:8080/4-polbuty','','2020-12-06 15:38:40'),(283,12,'http://localhost:8080/4-polbuty','localhost:8080/strona-glowna/21-63-new-balance-h754ob.html','','2020-12-06 15:38:47'),(284,12,'http://localhost:8080/strona-glowna/21-63-new-balance-h754ob.html','localhost:8080/','','2020-12-06 15:40:49'),(285,12,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-06 15:40:54'),(286,12,'http://localhost:8080/brand/2-newbalance','localhost:8080/','','2020-12-06 15:41:02'),(287,12,'http://localhost:8080/','localhost:8080/brand/2-newbalance','','2020-12-06 15:55:00'),(288,13,'http://localhost:8080/koszyk','localhost:8080/kontakt','','2020-12-14 18:25:02'),(289,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:27:52'),(290,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:28:33'),(291,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:28:54'),(292,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:28:58'),(293,13,'http://localhost:8080/','localhost:8080/kontakt','','2020-12-14 18:29:02'),(294,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:29:05'),(295,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:29:57'),(296,13,'http://localhost:8080/kontakt','localhost:8080/','','2020-12-14 18:32:10'),(297,13,'http://localhost:8080/','localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','','2020-12-14 18:33:58'),(298,13,'http://localhost:8080/strona-glowna/20-66-trzewiki-new-balance.html','localhost:8080/koszyk?action=show','','2020-12-14 18:34:02'),(299,13,'http://localhost:8080/koszyk?action=show','localhost:8080/zam%C3%B3wienie','','2020-12-14 18:34:07'),(300,13,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-14 18:34:23'),(301,13,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie?id_address=0','','2020-12-14 18:34:30'),(302,13,'http://localhost:8080/zam%C3%B3wienie?id_address=0','localhost:8080/zam%C3%B3wienie','','2020-12-14 18:34:38'),(303,13,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/zam%C3%B3wienie','','2020-12-14 18:34:42'),(304,14,'http://localhost:8080/zam%C3%B3wienie','localhost:8080/potwierdzenie-zamowienia?id_cart=13&id_module=66&id_order=10&key=ab0a87a1c69d238f299875500d7ee004','','2020-12-14 18:34:48');
/*!40000 ALTER TABLE `ps_connections_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact`
--

DROP TABLE IF EXISTS `ps_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact`
--

LOCK TABLES `ps_contact` WRITE;
/*!40000 ALTER TABLE `ps_contact` DISABLE KEYS */;
INSERT INTO `ps_contact` VALUES (1,'aa@ebuty.pl',1,0),(2,'ebutypresta@gmail.com',1,0);
/*!40000 ALTER TABLE `ps_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact_lang`
--

DROP TABLE IF EXISTS `ps_contact_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact_lang`
--

LOCK TABLES `ps_contact_lang` WRITE;
/*!40000 ALTER TABLE `ps_contact_lang` DISABLE KEYS */;
INSERT INTO `ps_contact_lang` VALUES (1,1,'Webmaster','Jeśli pojawił się problem techniczny na tej stronie'),(2,1,'Biuro Obsługi Klienta','Wszelkie pytania dotyczące produktów i zamówień');
/*!40000 ALTER TABLE `ps_contact_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact_shop`
--

DROP TABLE IF EXISTS `ps_contact_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact_shop` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact_shop`
--

LOCK TABLES `ps_contact_shop` WRITE;
/*!40000 ALTER TABLE `ps_contact_shop` DISABLE KEYS */;
INSERT INTO `ps_contact_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_contact_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country`
--

DROP TABLE IF EXISTS `ps_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country`
--

LOCK TABLES `ps_country` WRITE;
/*!40000 ALTER TABLE `ps_country` DISABLE KEYS */;
INSERT INTO `ps_country` VALUES (1,1,0,'DE',49,0,0,0,1,'NNNNN',1),(2,1,0,'AT',43,0,0,0,1,'NNNN',1),(3,1,0,'BE',32,0,0,0,1,'NNNN',1),(4,2,0,'CA',1,0,1,0,1,'LNL NLN',0),(5,3,0,'CN',86,0,0,0,1,'NNNNNN',1),(6,1,0,'ES',34,0,0,1,1,'NNNNN',1),(7,1,0,'FI',358,0,0,0,1,'NNNNN',1),(8,1,0,'FR',33,0,0,0,1,'NNNNN',1),(9,1,0,'GR',30,0,0,0,1,'NNNNN',1),(10,1,0,'IT',39,0,1,0,1,'NNNNN',1),(11,3,0,'JP',81,0,1,0,1,'NNN-NNNN',1),(12,1,0,'LU',352,0,0,0,1,'NNNN',1),(13,1,0,'NL',31,0,0,0,1,'NNNN LL',1),(14,1,0,'PL',48,1,0,0,1,'NN-NNN',1),(15,1,0,'PT',351,0,0,0,1,'NNNN-NNN',1),(16,1,0,'CZ',420,0,0,0,1,'NNN NN',1),(17,1,0,'GB',44,0,0,0,1,'',1),(18,1,0,'SE',46,0,0,0,1,'NNN NN',1),(19,7,0,'CH',41,0,0,0,1,'NNNN',1),(20,1,0,'DK',45,0,0,0,1,'NNNN',1),(21,2,0,'US',1,0,1,0,1,'NNNNN',0),(22,3,0,'HK',852,0,0,0,0,'',1),(23,7,0,'NO',47,0,0,0,1,'NNNN',1),(24,5,0,'AU',61,0,1,0,1,'NNNN',1),(25,3,0,'SG',65,0,0,0,1,'NNNNNN',1),(26,1,0,'IE',353,0,0,0,0,'',1),(27,5,0,'NZ',64,0,0,0,1,'NNNN',1),(28,3,0,'KR',82,0,0,0,1,'NNN-NNN',1),(29,3,0,'IL',972,0,0,0,1,'NNNNNNN',1),(30,4,0,'ZA',27,0,0,0,1,'NNNN',1),(31,4,0,'NG',234,0,0,0,1,'',1),(32,4,0,'CI',225,0,0,0,1,'',1),(33,4,0,'TG',228,0,0,0,1,'',1),(34,6,0,'BO',591,0,0,0,1,'',1),(35,4,0,'MU',230,0,0,0,1,'',1),(36,1,0,'RO',40,0,0,0,1,'NNNNNN',1),(37,1,0,'SK',421,0,0,0,1,'NNN NN',1),(38,4,0,'DZ',213,0,0,0,1,'NNNNN',1),(39,2,0,'AS',0,0,0,0,1,'',1),(40,7,0,'AD',376,0,0,0,1,'CNNN',1),(41,4,0,'AO',244,0,0,0,0,'',1),(42,8,0,'AI',0,0,0,0,1,'',1),(43,2,0,'AG',0,0,0,0,1,'',1),(44,6,0,'AR',54,0,1,0,1,'LNNNNLLL',1),(45,3,0,'AM',374,0,0,0,1,'NNNN',1),(46,8,0,'AW',297,0,0,0,1,'',1),(47,3,0,'AZ',994,0,0,0,1,'CNNNN',1),(48,2,0,'BS',0,0,0,0,1,'',1),(49,3,0,'BH',973,0,0,0,1,'',1),(50,3,0,'BD',880,0,0,0,1,'NNNN',1),(51,2,0,'BB',0,0,0,0,1,'CNNNNN',1),(52,7,0,'BY',0,0,0,0,1,'NNNNNN',1),(53,8,0,'BZ',501,0,0,0,0,'',1),(54,4,0,'BJ',229,0,0,0,0,'',1),(55,2,0,'BM',0,0,0,0,1,'',1),(56,3,0,'BT',975,0,0,0,1,'',1),(57,4,0,'BW',267,0,0,0,1,'',1),(58,6,0,'BR',55,0,0,0,1,'NNNNN-NNN',1),(59,3,0,'BN',673,0,0,0,1,'LLNNNN',1),(60,4,0,'BF',226,0,0,0,1,'',1),(61,3,0,'MM',95,0,0,0,1,'',1),(62,4,0,'BI',257,0,0,0,1,'',1),(63,3,0,'KH',855,0,0,0,1,'NNNNN',1),(64,4,0,'CM',237,0,0,0,1,'',1),(65,4,0,'CV',238,0,0,0,1,'NNNN',1),(66,4,0,'CF',236,0,0,0,1,'',1),(67,4,0,'TD',235,0,0,0,1,'',1),(68,6,0,'CL',56,0,0,0,1,'NNN-NNNN',1),(69,6,0,'CO',57,0,0,0,1,'NNNNNN',1),(70,4,0,'KM',269,0,0,0,1,'',1),(71,4,0,'CD',242,0,0,0,1,'',1),(72,4,0,'CG',243,0,0,0,1,'',1),(73,8,0,'CR',506,0,0,0,1,'NNNNN',1),(74,7,0,'HR',385,0,0,0,1,'NNNNN',1),(75,8,0,'CU',53,0,0,0,1,'',1),(76,1,0,'CY',357,0,0,0,1,'NNNN',1),(77,4,0,'DJ',253,0,0,0,1,'',1),(78,8,0,'DM',0,0,0,0,1,'',1),(79,8,0,'DO',0,0,0,0,1,'',1),(80,3,0,'TL',670,0,0,0,1,'',1),(81,6,0,'EC',593,0,0,0,1,'CNNNNNN',1),(82,4,0,'EG',20,0,0,0,1,'NNNNN',1),(83,8,0,'SV',503,0,0,0,1,'',1),(84,4,0,'GQ',240,0,0,0,1,'',1),(85,4,0,'ER',291,0,0,0,1,'',1),(86,1,0,'EE',372,0,0,0,1,'NNNNN',1),(87,4,0,'ET',251,0,0,0,1,'',1),(88,8,0,'FK',0,0,0,0,1,'LLLL NLL',1),(89,7,0,'FO',298,0,0,0,1,'',1),(90,5,0,'FJ',679,0,0,0,1,'',1),(91,4,0,'GA',241,0,0,0,1,'',1),(92,4,0,'GM',220,0,0,0,1,'',1),(93,3,0,'GE',995,0,0,0,1,'NNNN',1),(94,4,0,'GH',233,0,0,0,1,'',1),(95,8,0,'GD',0,0,0,0,1,'',1),(96,7,0,'GL',299,0,0,0,1,'',1),(97,7,0,'GI',350,0,0,0,1,'',1),(98,8,0,'GP',590,0,0,0,1,'',1),(99,5,0,'GU',0,0,0,0,1,'',1),(100,8,0,'GT',502,0,0,0,1,'',1),(101,7,0,'GG',0,0,0,0,1,'LLN NLL',1),(102,4,0,'GN',224,0,0,0,1,'',1),(103,4,0,'GW',245,0,0,0,1,'',1),(104,6,0,'GY',592,0,0,0,1,'',1),(105,8,0,'HT',509,0,0,0,1,'',1),(106,5,0,'HM',0,0,0,0,1,'',1),(107,7,0,'VA',379,0,0,0,1,'NNNNN',1),(108,8,0,'HN',504,0,0,0,1,'',1),(109,7,0,'IS',354,0,0,0,1,'NNN',1),(110,3,0,'IN',91,0,0,0,1,'NNN NNN',1),(111,3,0,'ID',62,0,1,0,1,'NNNNN',1),(112,3,0,'IR',98,0,0,0,1,'NNNNN-NNNNN',1),(113,3,0,'IQ',964,0,0,0,1,'NNNNN',1),(114,7,0,'IM',0,0,0,0,1,'CN NLL',1),(115,8,0,'JM',0,0,0,0,1,'',1),(116,7,0,'JE',0,0,0,0,1,'CN NLL',1),(117,3,0,'JO',962,0,0,0,1,'',1),(118,3,0,'KZ',7,0,0,0,1,'NNNNNN',1),(119,4,0,'KE',254,0,0,0,1,'',1),(120,5,0,'KI',686,0,0,0,1,'',1),(121,3,0,'KP',850,0,0,0,1,'',1),(122,3,0,'KW',965,0,0,0,1,'',1),(123,3,0,'KG',996,0,0,0,1,'',1),(124,3,0,'LA',856,0,0,0,1,'',1),(125,1,0,'LV',371,0,0,0,1,'C-NNNN',1),(126,3,0,'LB',961,0,0,0,1,'',1),(127,4,0,'LS',266,0,0,0,1,'',1),(128,4,0,'LR',231,0,0,0,1,'',1),(129,4,0,'LY',218,0,0,0,1,'',1),(130,1,0,'LI',423,0,0,0,1,'NNNN',1),(131,1,0,'LT',370,0,0,0,1,'NNNNN',1),(132,3,0,'MO',853,0,0,0,0,'',1),(133,7,0,'MK',389,0,0,0,1,'',1),(134,4,0,'MG',261,0,0,0,1,'',1),(135,4,0,'MW',265,0,0,0,1,'',1),(136,3,0,'MY',60,0,0,0,1,'NNNNN',1),(137,3,0,'MV',960,0,0,0,1,'',1),(138,4,0,'ML',223,0,0,0,1,'',1),(139,1,0,'MT',356,0,0,0,1,'LLL NNNN',1),(140,5,0,'MH',692,0,0,0,1,'',1),(141,8,0,'MQ',596,0,0,0,1,'',1),(142,4,0,'MR',222,0,0,0,1,'',1),(143,1,0,'HU',36,0,0,0,1,'NNNN',1),(144,4,0,'YT',262,0,0,0,1,'',1),(145,2,0,'MX',52,0,1,1,1,'NNNNN',1),(146,5,0,'FM',691,0,0,0,1,'',1),(147,7,0,'MD',373,0,0,0,1,'C-NNNN',1),(148,7,0,'MC',377,0,0,0,1,'980NN',1),(149,3,0,'MN',976,0,0,0,1,'',1),(150,7,0,'ME',382,0,0,0,1,'NNNNN',1),(151,8,0,'MS',0,0,0,0,1,'',1),(152,4,0,'MA',212,0,0,0,1,'NNNNN',1),(153,4,0,'MZ',258,0,0,0,1,'',1),(154,4,0,'NA',264,0,0,0,1,'',1),(155,5,0,'NR',674,0,0,0,1,'',1),(156,3,0,'NP',977,0,0,0,1,'',1),(157,8,0,'AN',599,0,0,0,1,'',1),(158,5,0,'NC',687,0,0,0,1,'',1),(159,8,0,'NI',505,0,0,0,1,'NNNNNN',1),(160,4,0,'NE',227,0,0,0,1,'',1),(161,5,0,'NU',683,0,0,0,1,'',1),(162,5,0,'NF',0,0,0,0,1,'',1),(163,5,0,'MP',0,0,0,0,1,'',1),(164,3,0,'OM',968,0,0,0,1,'',1),(165,3,0,'PK',92,0,0,0,1,'',1),(166,5,0,'PW',680,0,0,0,1,'',1),(167,3,0,'PS',0,0,0,0,1,'',1),(168,8,0,'PA',507,0,0,0,1,'NNNNNN',1),(169,5,0,'PG',675,0,0,0,1,'',1),(170,6,0,'PY',595,0,0,0,1,'',1),(171,6,0,'PE',51,0,0,0,1,'',1),(172,3,0,'PH',63,0,0,0,1,'NNNN',1),(173,5,0,'PN',0,0,0,0,1,'LLLL NLL',1),(174,8,0,'PR',0,0,0,0,1,'NNNNN',1),(175,3,0,'QA',974,0,0,0,1,'',1),(176,4,0,'RE',262,0,0,0,1,'',1),(177,7,0,'RU',7,0,0,0,1,'NNNNNN',1),(178,4,0,'RW',250,0,0,0,1,'',1),(179,8,0,'BL',0,0,0,0,1,'',1),(180,8,0,'KN',0,0,0,0,1,'',1),(181,8,0,'LC',0,0,0,0,1,'',1),(182,8,0,'MF',0,0,0,0,1,'',1),(183,8,0,'PM',508,0,0,0,1,'',1),(184,8,0,'VC',0,0,0,0,1,'',1),(185,5,0,'WS',685,0,0,0,1,'',1),(186,7,0,'SM',378,0,0,0,1,'NNNNN',1),(187,4,0,'ST',239,0,0,0,1,'',1),(188,3,0,'SA',966,0,0,0,1,'',1),(189,4,0,'SN',221,0,0,0,1,'',1),(190,7,0,'RS',381,0,0,0,1,'NNNNN',1),(191,4,0,'SC',248,0,0,0,1,'',1),(192,4,0,'SL',232,0,0,0,1,'',1),(193,1,0,'SI',386,0,0,0,1,'C-NNNN',1),(194,5,0,'SB',677,0,0,0,1,'',1),(195,4,0,'SO',252,0,0,0,1,'',1),(196,8,0,'GS',0,0,0,0,1,'LLLL NLL',1),(197,3,0,'LK',94,0,0,0,1,'NNNNN',1),(198,4,0,'SD',249,0,0,0,1,'',1),(199,8,0,'SR',597,0,0,0,1,'',1),(200,7,0,'SJ',0,0,0,0,1,'',1),(201,4,0,'SZ',268,0,0,0,1,'',1),(202,3,0,'SY',963,0,0,0,1,'',1),(203,3,0,'TW',886,0,0,0,1,'NNNNN',1),(204,3,0,'TJ',992,0,0,0,1,'',1),(205,4,0,'TZ',255,0,0,0,1,'',1),(206,3,0,'TH',66,0,0,0,1,'NNNNN',1),(207,5,0,'TK',690,0,0,0,1,'',1),(208,5,0,'TO',676,0,0,0,1,'',1),(209,6,0,'TT',0,0,0,0,1,'',1),(210,4,0,'TN',216,0,0,0,1,'',1),(211,7,0,'TR',90,0,0,0,1,'NNNNN',1),(212,3,0,'TM',993,0,0,0,1,'',1),(213,8,0,'TC',0,0,0,0,1,'LLLL NLL',1),(214,5,0,'TV',688,0,0,0,1,'',1),(215,4,0,'UG',256,0,0,0,1,'',1),(216,1,0,'UA',380,0,0,0,1,'NNNNN',1),(217,3,0,'AE',971,0,0,0,1,'',1),(218,6,0,'UY',598,0,0,0,1,'',1),(219,3,0,'UZ',998,0,0,0,1,'',1),(220,5,0,'VU',678,0,0,0,1,'',1),(221,6,0,'VE',58,0,0,0,1,'',1),(222,3,0,'VN',84,0,0,0,1,'NNNNNN',1),(223,2,0,'VG',0,0,0,0,1,'CNNNN',1),(224,2,0,'VI',0,0,0,0,1,'',1),(225,5,0,'WF',681,0,0,0,1,'',1),(226,4,0,'EH',0,0,0,0,1,'',1),(227,3,0,'YE',967,0,0,0,1,'',1),(228,4,0,'ZM',260,0,0,0,1,'',1),(229,4,0,'ZW',263,0,0,0,1,'',1),(230,7,0,'AL',355,0,0,0,1,'NNNN',1),(231,3,0,'AF',93,0,0,0,1,'NNNN',1),(232,5,0,'AQ',0,0,0,0,1,'',1),(233,1,0,'BA',387,0,0,0,1,'',1),(234,5,0,'BV',0,0,0,0,1,'',1),(235,5,0,'IO',0,0,0,0,1,'LLLL NLL',1),(236,1,0,'BG',359,0,0,0,1,'NNNN',1),(237,8,0,'KY',0,0,0,0,1,'',1),(238,3,0,'CX',0,0,0,0,1,'',1),(239,3,0,'CC',0,0,0,0,1,'',1),(240,5,0,'CK',682,0,0,0,1,'',1),(241,6,0,'GF',594,0,0,0,1,'',1),(242,5,0,'PF',689,0,0,0,1,'',1),(243,5,0,'TF',0,0,0,0,1,'',1),(244,7,0,'AX',0,0,0,0,1,'NNNNN',1);
/*!40000 ALTER TABLE `ps_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country_lang`
--

DROP TABLE IF EXISTS `ps_country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country_lang`
--

LOCK TABLES `ps_country_lang` WRITE;
/*!40000 ALTER TABLE `ps_country_lang` DISABLE KEYS */;
INSERT INTO `ps_country_lang` VALUES (1,1,'Germany'),(2,1,'Austria'),(3,1,'Belgium'),(4,1,'Canada'),(5,1,'China'),(6,1,'Spain'),(7,1,'Finland'),(8,1,'France'),(9,1,'Greece'),(10,1,'Italy'),(11,1,'Japan'),(12,1,'Luxemburg'),(13,1,'Netherlands'),(14,1,'Poland'),(15,1,'Portugal'),(16,1,'Czech Republic'),(17,1,'United Kingdom'),(18,1,'Sweden'),(19,1,'Switzerland'),(20,1,'Denmark'),(21,1,'United States'),(22,1,'HongKong'),(23,1,'Norway'),(24,1,'Australia'),(25,1,'Singapore'),(26,1,'Ireland'),(27,1,'New Zealand'),(28,1,'South Korea'),(29,1,'Israel'),(30,1,'South Africa'),(31,1,'Nigeria'),(32,1,'Ivory Coast'),(33,1,'Togo'),(34,1,'Bolivia'),(35,1,'Mauritius'),(36,1,'Romania'),(37,1,'Slovakia'),(38,1,'Algeria'),(39,1,'American Samoa'),(40,1,'Andorra'),(41,1,'Angola'),(42,1,'Anguilla'),(43,1,'Antigua and Barbuda'),(44,1,'Argentina'),(45,1,'Armenia'),(46,1,'Aruba'),(47,1,'Azerbaijan'),(48,1,'Bahamas'),(49,1,'Bahrain'),(50,1,'Bangladesh'),(51,1,'Barbados'),(52,1,'Belarus'),(53,1,'Belize'),(54,1,'Benin'),(55,1,'Bermuda'),(56,1,'Bhutan'),(57,1,'Botswana'),(58,1,'Brazil'),(59,1,'Brunei'),(60,1,'Burkina Faso'),(61,1,'Burma (Myanmar)'),(62,1,'Burundi'),(63,1,'Cambodia'),(64,1,'Cameroon'),(65,1,'Cape Verde'),(66,1,'Central African Republic'),(67,1,'Chad'),(68,1,'Chile'),(69,1,'Colombia'),(70,1,'Comoros'),(71,1,'Congo, Dem. Republic'),(72,1,'Congo, Republic'),(73,1,'Costa Rica'),(74,1,'Croatia'),(75,1,'Cuba'),(76,1,'Cyprus'),(77,1,'Djibouti'),(78,1,'Dominica'),(79,1,'Dominican Republic'),(80,1,'East Timor'),(81,1,'Ecuador'),(82,1,'Egypt'),(83,1,'El Salvador'),(84,1,'Equatorial Guinea'),(85,1,'Eritrea'),(86,1,'Estonia'),(87,1,'Ethiopia'),(88,1,'Falkland Islands'),(89,1,'Faroe Islands'),(90,1,'Fiji'),(91,1,'Gabon'),(92,1,'Gambia'),(93,1,'Georgia'),(94,1,'Ghana'),(95,1,'Grenada'),(96,1,'Greenland'),(97,1,'Gibraltar'),(98,1,'Guadeloupe'),(99,1,'Guam'),(100,1,'Guatemala'),(101,1,'Guernsey'),(102,1,'Guinea'),(103,1,'Guinea-Bissau'),(104,1,'Guyana'),(105,1,'Haiti'),(106,1,'Heard Island and McDonald Islands'),(107,1,'Vatican City State'),(108,1,'Honduras'),(109,1,'Iceland'),(110,1,'India'),(111,1,'Indonesia'),(112,1,'Iran'),(113,1,'Iraq'),(114,1,'Man Island'),(115,1,'Jamaica'),(116,1,'Jersey'),(117,1,'Jordan'),(118,1,'Kazakhstan'),(119,1,'Kenya'),(120,1,'Kiribati'),(121,1,'Korea, Dem. Republic of'),(122,1,'Kuwait'),(123,1,'Kyrgyzstan'),(124,1,'Laos'),(125,1,'Latvia'),(126,1,'Lebanon'),(127,1,'Lesotho'),(128,1,'Liberia'),(129,1,'Libya'),(130,1,'Liechtenstein'),(131,1,'Lithuania'),(132,1,'Macau'),(133,1,'Macedonia'),(134,1,'Madagascar'),(135,1,'Malawi'),(136,1,'Malaysia'),(137,1,'Maldives'),(138,1,'Mali'),(139,1,'Malta'),(140,1,'Marshall Islands'),(141,1,'Martinique'),(142,1,'Mauritania'),(143,1,'Hungary'),(144,1,'Mayotte'),(145,1,'Mexico'),(146,1,'Micronesia'),(147,1,'Moldova'),(148,1,'Monaco'),(149,1,'Mongolia'),(150,1,'Montenegro'),(151,1,'Montserrat'),(152,1,'Morocco'),(153,1,'Mozambique'),(154,1,'Namibia'),(155,1,'Nauru'),(156,1,'Nepal'),(157,1,'Netherlands Antilles'),(158,1,'New Caledonia'),(159,1,'Nicaragua'),(160,1,'Niger'),(161,1,'Niue'),(162,1,'Norfolk Island'),(163,1,'Northern Mariana Islands'),(164,1,'Oman'),(165,1,'Pakistan'),(166,1,'Palau'),(167,1,'Palestinian Territories'),(168,1,'Panama'),(169,1,'Papua New Guinea'),(170,1,'Paraguay'),(171,1,'Peru'),(172,1,'Philippines'),(173,1,'Pitcairn'),(174,1,'Puerto Rico'),(175,1,'Qatar'),(176,1,'Reunion Island'),(177,1,'Russian Federation'),(178,1,'Rwanda'),(179,1,'Saint Barthelemy'),(180,1,'Saint Kitts and Nevis'),(181,1,'Saint Lucia'),(182,1,'Saint Martin'),(183,1,'Saint Pierre and Miquelon'),(184,1,'Saint Vincent and the Grenadines'),(185,1,'Samoa'),(186,1,'San Marino'),(187,1,'São Tomé and Príncipe'),(188,1,'Saudi Arabia'),(189,1,'Senegal'),(190,1,'Serbia'),(191,1,'Seychelles'),(192,1,'Sierra Leone'),(193,1,'Slovenia'),(194,1,'Solomon Islands'),(195,1,'Somalia'),(196,1,'South Georgia and the South Sandwich Islands'),(197,1,'Sri Lanka'),(198,1,'Sudan'),(199,1,'Suriname'),(200,1,'Svalbard and Jan Mayen'),(201,1,'Swaziland'),(202,1,'Syria'),(203,1,'Taiwan'),(204,1,'Tajikistan'),(205,1,'Tanzania'),(206,1,'Thailand'),(207,1,'Tokelau'),(208,1,'Tonga'),(209,1,'Trinidad and Tobago'),(210,1,'Tunisia'),(211,1,'Turkey'),(212,1,'Turkmenistan'),(213,1,'Turks and Caicos Islands'),(214,1,'Tuvalu'),(215,1,'Uganda'),(216,1,'Ukraine'),(217,1,'United Arab Emirates'),(218,1,'Uruguay'),(219,1,'Uzbekistan'),(220,1,'Vanuatu'),(221,1,'Venezuela'),(222,1,'Vietnam'),(223,1,'Virgin Islands (British)'),(224,1,'Virgin Islands (U.S.)'),(225,1,'Wallis and Futuna'),(226,1,'Western Sahara'),(227,1,'Yemen'),(228,1,'Zambia'),(229,1,'Zimbabwe'),(230,1,'Albania'),(231,1,'Afghanistan'),(232,1,'Antarctica'),(233,1,'Bosnia and Herzegovina'),(234,1,'Bouvet Island'),(235,1,'British Indian Ocean Territory'),(236,1,'Bulgaria'),(237,1,'Cayman Islands'),(238,1,'Christmas Island'),(239,1,'Cocos (Keeling) Islands'),(240,1,'Cook Islands'),(241,1,'French Guiana'),(242,1,'French Polynesia'),(243,1,'French Southern Territories'),(244,1,'Åland Islands');
/*!40000 ALTER TABLE `ps_country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country_shop`
--

DROP TABLE IF EXISTS `ps_country_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country_shop` (
  `id_country` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country_shop`
--

LOCK TABLES `ps_country_shop` WRITE;
/*!40000 ALTER TABLE `ps_country_shop` DISABLE KEYS */;
INSERT INTO `ps_country_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1),(202,1),(203,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(221,1),(222,1),(223,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(230,1),(231,1),(232,1),(233,1),(234,1),(235,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1);
/*!40000 ALTER TABLE `ps_country_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency`
--

DROP TABLE IF EXISTS `ps_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `numeric_iso_code` varchar(3) DEFAULT NULL,
  `precision` int(2) NOT NULL DEFAULT '6',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`),
  KEY `currency_iso_code` (`iso_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency`
--

LOCK TABLES `ps_currency` WRITE;
/*!40000 ALTER TABLE `ps_currency` DISABLE KEYS */;
INSERT INTO `ps_currency` VALUES (1,'','PLN','985',2,1.000000,0,1);
/*!40000 ALTER TABLE `ps_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency_lang`
--

DROP TABLE IF EXISTS `ps_currency_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency_lang` (
  `id_currency` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency_lang`
--

LOCK TABLES `ps_currency_lang` WRITE;
/*!40000 ALTER TABLE `ps_currency_lang` DISABLE KEYS */;
INSERT INTO `ps_currency_lang` VALUES (1,1,'złoty polski','zł');
/*!40000 ALTER TABLE `ps_currency_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency_shop`
--

DROP TABLE IF EXISTS `ps_currency_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency_shop` (
  `id_currency` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency_shop`
--

LOCK TABLES `ps_currency_shop` WRITE;
/*!40000 ALTER TABLE `ps_currency_shop` DISABLE KEYS */;
INSERT INTO `ps_currency_shop` VALUES (1,1,1.000000);
/*!40000 ALTER TABLE `ps_currency_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer`
--

DROP TABLE IF EXISTS `ps_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned DEFAULT NULL,
  `id_risk` int(10) unsigned NOT NULL DEFAULT '1',
  `company` varchar(255) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int(10) unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `reset_password_token` varchar(40) DEFAULT NULL,
  `reset_password_validity` datetime DEFAULT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer`
--

LOCK TABLES `ps_customer` WRITE;
/*!40000 ALTER TABLE `ps_customer` DISABLE KEYS */;
INSERT INTO `ps_customer` VALUES (1,1,1,1,3,1,0,'','','','Anonymous','Anonymous','anonymous@psgdpr.com','prestashop','2020-11-30 13:28:44','0000-00-00',0,'','0000-00-00 00:00:00',1,'',0.000000,0,0,'d4a9e2027b4a6fb66d71b63e84a57869','',0,0,0,'2020-11-30 19:28:44','2020-11-30 19:28:44','','0000-00-00 00:00:00'),(2,1,1,1,3,1,0,'','','','John','DOE','pub@prestashop.com','54f4fc19008b9cd010d15848c490af7c','2020-11-30 13:28:56','1970-01-15',1,'','2013-12-13 08:19:15',1,'',0.000000,0,0,'56d1f25dd29558a0852e1a6df7934546','',1,0,0,'2020-11-30 19:28:56','2020-11-30 19:28:56','','0000-00-00 00:00:00'),(3,1,1,1,3,1,0,'','','','Jacek','Jackowski','jackowski@jacek.jck','$2y$10$nUWLdEwTuAyPR.lTlhRzRu1.W1yNRPivkqNoxz3TqCxPZeg8QjD0a','2020-12-01 13:31:04','1980-01-01',1,'','2020-12-01 19:31:04',1,'',0.000000,0,0,'dc2da80e0683a0c5042d7a5e3b507991','',1,0,0,'2020-12-01 19:31:04','2020-12-01 19:31:04','','0000-00-00 00:00:00'),(4,1,1,1,3,1,0,'','','','iwoewjef','ljkhnkl','wqe2awDASDFQ@aeFDS.PL','$2y$10$CX9z6UiT0cAFznOuJOoRle7T5n8Qzp/dHyiqbUvvsxPPJQn6ski02','2020-12-02 12:09:27','1980-01-01',1,'','2020-12-02 18:09:27',1,'',0.000000,0,0,'b7b928b85706aab35f9bfc7ea19c7e1c','',1,0,0,'2020-12-02 18:09:27','2020-12-02 18:09:27','','0000-00-00 00:00:00'),(5,1,1,1,3,1,0,'','','','Paweł','Lelental','pawel.lelental@ihsmarkit.com','$2y$10$7zOfrlYsSywp3c8xODNk6.leBy0RHX3GjySIkwMyjfDUAA7tRXutO','2020-12-02 12:44:46','1995-03-10',0,'','0000-00-00 00:00:00',0,'',0.000000,0,0,'0dfa8fa1fff81a5766dd558aa5c4a1f8','',1,0,0,'2020-12-02 18:44:46','2020-12-02 18:44:46','','0000-00-00 00:00:00'),(6,1,1,1,3,1,0,'','','','Jan','Nowak','jan.nowak@gmail.com','$2y$10$hz7Jc1kPXO1/ieVy9EpOPOaM1SIfjd5Qe.YS1cJOaAW.ngoaIJOKq','2020-12-06 09:37:45','0000-00-00',1,'','2020-12-06 15:37:45',1,'',0.000000,0,0,'5a42a10dda556a655455cec259e8bdff','',1,0,0,'2020-12-06 15:37:45','2020-12-06 15:37:45','','0000-00-00 00:00:00'),(7,1,1,1,2,1,0,'','','','tert','ert','w@w.pl','$2y$10$g7O7kN4Hs0MZxHfg6BL9pOtjinS4cvaKqhLAkztTMpsvlJ1XwNooa','2020-12-14 12:34:22','0000-00-00',0,'','0000-00-00 00:00:00',0,'',0.000000,0,0,'ab0a87a1c69d238f299875500d7ee004','',1,1,0,'2020-12-14 18:34:22','2020-12-14 18:34:22','','0000-00-00 00:00:00'),(8,1,1,1,2,1,0,NULL,NULL,NULL,'adasd','asdas','asdas@sdf.pl','$2y$10$OjRaTqC/3ov0pvsSzeh/h.BShnQDrxj/6j98vL41MFCL/K1668aYy','2020-12-16 18:42:05','0000-00-00',1,NULL,'2020-12-17 00:42:05',1,NULL,0.000000,0,0,'cfc42db9003074c2e472f86be0b51a6a',NULL,1,1,0,'2020-12-17 00:42:05','2020-12-17 00:47:15',NULL,'0000-00-00 00:00:00'),(9,1,1,1,3,1,0,'','','','Anna','Nowak','an@niepodam.pl','$2y$10$Lq3o4IfOw/RJZM3kqet4KOhTM3KT3Z0rLuekklhjF8Iq7Qb2lK0lu','2020-12-17 19:39:17','1970-05-31',1,'','2020-12-18 01:39:17',1,'',0.000000,0,0,'2f4a0c628f14a48f97e60ab8ad3cfb14','',1,0,0,'2020-12-18 01:39:17','2020-12-18 01:39:17','','0000-00-00 00:00:00'),(10,1,1,0,2,1,0,'','','','MIP','Logistyka','kontakt@mp3store.pl','$2y$10$QhSuMQIWmFb5oG./F697Veh6/EHqPJNtZIAmay6Ro4vuFYmxGOiVq','2020-12-18 12:58:42','0000-00-00',0,'','0000-00-00 00:00:00',0,'',0.000000,0,0,'5268748b34a9ef2afece90f05a7da9a8','',1,1,0,'2020-12-18 18:58:42','2020-12-18 18:58:42','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_group`
--

DROP TABLE IF EXISTS `ps_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_group`
--

LOCK TABLES `ps_customer_group` WRITE;
/*!40000 ALTER TABLE `ps_customer_group` DISABLE KEYS */;
INSERT INTO `ps_customer_group` VALUES (7,2),(8,2),(10,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(9,3);
/*!40000 ALTER TABLE `ps_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_message`
--

DROP TABLE IF EXISTS `ps_customer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_message` (
  `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_message`
--

LOCK TABLES `ps_customer_message` WRITE;
/*!40000 ALTER TABLE `ps_customer_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_message_sync_imap`
--

DROP TABLE IF EXISTS `ps_customer_message_sync_imap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_message_sync_imap`
--

LOCK TABLES `ps_customer_message_sync_imap` WRITE;
/*!40000 ALTER TABLE `ps_customer_message_sync_imap` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_message_sync_imap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_session`
--

DROP TABLE IF EXISTS `ps_customer_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_session` (
  `id_customer_session` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_customer_session`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_session`
--

LOCK TABLES `ps_customer_session` WRITE;
/*!40000 ALTER TABLE `ps_customer_session` DISABLE KEYS */;
INSERT INTO `ps_customer_session` VALUES (1,3,'a2c636e6b51a7a37172e1806752c2c5748c4688b'),(2,3,'f6f8b491e59cbec5f314745a44abe7a4657cee76'),(3,4,'675de544a81d170c15888c39907b4d923a82d892'),(4,5,'509b94436fd0c1f0a1a782929e971c15e877e993'),(5,5,'282076c8fb1f4bdfd317a7438ff20c4ddf2f1b1d'),(6,6,'20c9d8527e507b90fb1fd0f330801ca31b23adb4'),(7,7,'c2bc7e6e6d74920b2c49c77b5d7995c253367de1'),(8,8,'07d6d88ee1bb88769bda1bfdeb4114ec5aa2d46f'),(9,8,'5a5a5485ae87726cb532eeb1cec60de7d238aa56'),(10,8,'02c2ad6df284955086bd0385455ade44887dc6f6'),(11,8,'e39cbec8bb69c7593008ee9e10e5d42c415697a0'),(12,9,'c567bd8c4264607867806c4ead7914f07286f211'),(13,10,'e0c6e0fbaf4a8ed1136fa217936b7e51cada62db');
/*!40000 ALTER TABLE `ps_customer_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_thread`
--

DROP TABLE IF EXISTS `ps_customer_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_thread` (
  `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(255) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_thread`
--

LOCK TABLES `ps_customer_thread` WRITE;
/*!40000 ALTER TABLE `ps_customer_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customer_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization`
--

DROP TABLE IF EXISTS `ps_customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_product` (`id_cart`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization`
--

LOCK TABLES `ps_customization` WRITE;
/*!40000 ALTER TABLE `ps_customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field`
--

DROP TABLE IF EXISTS `ps_customization_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `is_module` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field`
--

LOCK TABLES `ps_customization_field` WRITE;
/*!40000 ALTER TABLE `ps_customization_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field_lang`
--

DROP TABLE IF EXISTS `ps_customization_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field_lang`
--

LOCK TABLES `ps_customization_field_lang` WRITE;
/*!40000 ALTER TABLE `ps_customization_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customized_data`
--

DROP TABLE IF EXISTS `ps_customized_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  `id_module` int(10) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customized_data`
--

LOCK TABLES `ps_customized_data` WRITE;
/*!40000 ALTER TABLE `ps_customized_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customized_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_date_range`
--

DROP TABLE IF EXISTS `ps_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_date_range`
--

LOCK TABLES `ps_date_range` WRITE;
/*!40000 ALTER TABLE `ps_date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_delivery`
--

DROP TABLE IF EXISTS `ps_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned DEFAULT NULL,
  `id_shop_group` int(10) unsigned DEFAULT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_delivery`
--

LOCK TABLES `ps_delivery` WRITE;
/*!40000 ALTER TABLE `ps_delivery` DISABLE KEYS */;
INSERT INTO `ps_delivery` VALUES (1,NULL,NULL,2,0,1,1,5.000000),(2,NULL,NULL,2,0,1,2,5.000000),(3,NULL,NULL,2,1,0,1,5.000000),(4,NULL,NULL,2,1,0,2,5.000000),(7,NULL,NULL,3,NULL,2,1,5.000000),(8,NULL,NULL,3,NULL,2,2,5.000000),(17,NULL,NULL,5,2,NULL,4,30.000000),(18,NULL,NULL,5,2,NULL,3,30.000000),(19,NULL,NULL,5,2,NULL,8,30.000000),(20,NULL,NULL,5,2,NULL,1,30.000000),(21,NULL,NULL,5,2,NULL,7,30.000000),(22,NULL,NULL,5,2,NULL,2,30.000000),(23,NULL,NULL,5,2,NULL,5,30.000000),(24,NULL,NULL,5,2,NULL,6,30.000000),(33,NULL,NULL,5,3,NULL,4,15.000000),(34,NULL,NULL,5,3,NULL,3,15.000000),(35,NULL,NULL,5,3,NULL,8,15.000000),(36,NULL,NULL,5,3,NULL,1,15.000000),(37,NULL,NULL,5,3,NULL,7,15.000000),(38,NULL,NULL,5,3,NULL,2,15.000000),(39,NULL,NULL,5,3,NULL,5,15.000000),(40,NULL,NULL,5,3,NULL,6,15.000000),(49,NULL,NULL,5,4,NULL,4,0.000000),(50,NULL,NULL,5,4,NULL,3,0.000000),(51,NULL,NULL,5,4,NULL,8,0.000000),(52,NULL,NULL,5,4,NULL,1,0.000000),(53,NULL,NULL,5,4,NULL,7,0.000000),(54,NULL,NULL,5,4,NULL,2,0.000000),(55,NULL,NULL,5,4,NULL,5,0.000000),(56,NULL,NULL,5,4,NULL,6,0.000000),(65,NULL,NULL,6,5,NULL,4,50.000000),(66,NULL,NULL,6,5,NULL,3,50.000000),(67,NULL,NULL,6,5,NULL,8,50.000000),(68,NULL,NULL,6,5,NULL,1,50.000000),(69,NULL,NULL,6,5,NULL,7,50.000000),(70,NULL,NULL,6,5,NULL,2,50.000000),(71,NULL,NULL,6,5,NULL,5,50.000000),(72,NULL,NULL,6,5,NULL,6,50.000000),(81,NULL,NULL,6,6,NULL,4,0.000000),(82,NULL,NULL,6,6,NULL,3,0.000000),(83,NULL,NULL,6,6,NULL,8,0.000000),(84,NULL,NULL,6,6,NULL,1,0.000000),(85,NULL,NULL,6,6,NULL,7,0.000000),(86,NULL,NULL,6,6,NULL,2,0.000000),(87,NULL,NULL,6,6,NULL,5,0.000000),(88,NULL,NULL,6,6,NULL,6,0.000000),(97,NULL,NULL,7,7,NULL,4,30.000000),(98,NULL,NULL,7,7,NULL,3,30.000000),(99,NULL,NULL,7,7,NULL,8,30.000000),(100,NULL,NULL,7,7,NULL,1,30.000000),(101,NULL,NULL,7,7,NULL,7,30.000000),(102,NULL,NULL,7,7,NULL,2,30.000000),(103,NULL,NULL,7,7,NULL,5,30.000000),(104,NULL,NULL,7,7,NULL,6,30.000000),(113,NULL,NULL,7,8,NULL,4,15.000000),(114,NULL,NULL,7,8,NULL,3,15.000000),(115,NULL,NULL,7,8,NULL,8,15.000000),(116,NULL,NULL,7,8,NULL,1,15.000000),(117,NULL,NULL,7,8,NULL,7,15.000000),(118,NULL,NULL,7,8,NULL,2,15.000000),(119,NULL,NULL,7,8,NULL,5,15.000000),(120,NULL,NULL,7,8,NULL,6,15.000000),(129,NULL,NULL,7,9,NULL,4,0.000000),(130,NULL,NULL,7,9,NULL,3,0.000000),(131,NULL,NULL,7,9,NULL,8,0.000000),(132,NULL,NULL,7,9,NULL,1,0.000000),(133,NULL,NULL,7,9,NULL,7,0.000000),(134,NULL,NULL,7,9,NULL,2,0.000000),(135,NULL,NULL,7,9,NULL,5,0.000000),(136,NULL,NULL,7,9,NULL,6,0.000000),(145,NULL,NULL,8,10,NULL,4,50.000000),(146,NULL,NULL,8,10,NULL,3,50.000000),(147,NULL,NULL,8,10,NULL,8,50.000000),(148,NULL,NULL,8,10,NULL,1,50.000000),(149,NULL,NULL,8,10,NULL,7,50.000000),(150,NULL,NULL,8,10,NULL,2,50.000000),(151,NULL,NULL,8,10,NULL,5,50.000000),(152,NULL,NULL,8,10,NULL,6,50.000000),(161,NULL,NULL,8,11,NULL,4,0.000000),(162,NULL,NULL,8,11,NULL,3,0.000000),(163,NULL,NULL,8,11,NULL,8,0.000000),(164,NULL,NULL,8,11,NULL,1,0.000000),(165,NULL,NULL,8,11,NULL,7,0.000000),(166,NULL,NULL,8,11,NULL,2,0.000000),(167,NULL,NULL,8,11,NULL,5,0.000000),(168,NULL,NULL,8,11,NULL,6,0.000000),(177,NULL,NULL,9,12,NULL,4,30.000000),(178,NULL,NULL,9,12,NULL,3,30.000000),(179,NULL,NULL,9,12,NULL,8,30.000000),(180,NULL,NULL,9,12,NULL,1,30.000000),(181,NULL,NULL,9,12,NULL,7,30.000000),(182,NULL,NULL,9,12,NULL,2,30.000000),(183,NULL,NULL,9,12,NULL,5,30.000000),(184,NULL,NULL,9,12,NULL,6,30.000000),(193,NULL,NULL,9,13,NULL,4,15.000000),(194,NULL,NULL,9,13,NULL,3,15.000000),(195,NULL,NULL,9,13,NULL,8,15.000000),(196,NULL,NULL,9,13,NULL,1,15.000000),(197,NULL,NULL,9,13,NULL,7,15.000000),(198,NULL,NULL,9,13,NULL,2,15.000000),(199,NULL,NULL,9,13,NULL,5,15.000000),(200,NULL,NULL,9,13,NULL,6,15.000000),(209,NULL,NULL,9,14,NULL,4,0.000000),(210,NULL,NULL,9,14,NULL,3,0.000000),(211,NULL,NULL,9,14,NULL,8,0.000000),(212,NULL,NULL,9,14,NULL,1,0.000000),(213,NULL,NULL,9,14,NULL,7,0.000000),(214,NULL,NULL,9,14,NULL,2,0.000000),(215,NULL,NULL,9,14,NULL,5,0.000000),(216,NULL,NULL,9,14,NULL,6,0.000000),(225,NULL,NULL,10,15,NULL,4,50.000000),(226,NULL,NULL,10,15,NULL,3,50.000000),(227,NULL,NULL,10,15,NULL,8,50.000000),(228,NULL,NULL,10,15,NULL,1,50.000000),(229,NULL,NULL,10,15,NULL,7,50.000000),(230,NULL,NULL,10,15,NULL,2,50.000000),(231,NULL,NULL,10,15,NULL,5,50.000000),(232,NULL,NULL,10,15,NULL,6,50.000000),(241,NULL,NULL,10,16,NULL,4,0.000000),(242,NULL,NULL,10,16,NULL,3,0.000000),(243,NULL,NULL,10,16,NULL,8,0.000000),(244,NULL,NULL,10,16,NULL,1,0.000000),(245,NULL,NULL,10,16,NULL,7,0.000000),(246,NULL,NULL,10,16,NULL,2,0.000000),(247,NULL,NULL,10,16,NULL,5,0.000000),(248,NULL,NULL,10,16,NULL,6,0.000000),(257,NULL,NULL,11,17,NULL,4,30.000000),(258,NULL,NULL,11,17,NULL,3,30.000000),(259,NULL,NULL,11,17,NULL,8,30.000000),(260,NULL,NULL,11,17,NULL,1,30.000000),(261,NULL,NULL,11,17,NULL,7,30.000000),(262,NULL,NULL,11,17,NULL,2,30.000000),(263,NULL,NULL,11,17,NULL,5,30.000000),(264,NULL,NULL,11,17,NULL,6,30.000000),(273,NULL,NULL,11,18,NULL,4,15.000000),(274,NULL,NULL,11,18,NULL,3,15.000000),(275,NULL,NULL,11,18,NULL,8,15.000000),(276,NULL,NULL,11,18,NULL,1,15.000000),(277,NULL,NULL,11,18,NULL,7,15.000000),(278,NULL,NULL,11,18,NULL,2,15.000000),(279,NULL,NULL,11,18,NULL,5,15.000000),(280,NULL,NULL,11,18,NULL,6,15.000000),(289,NULL,NULL,11,19,NULL,4,0.000000),(290,NULL,NULL,11,19,NULL,3,0.000000),(291,NULL,NULL,11,19,NULL,8,0.000000),(292,NULL,NULL,11,19,NULL,1,0.000000),(293,NULL,NULL,11,19,NULL,7,0.000000),(294,NULL,NULL,11,19,NULL,2,0.000000),(295,NULL,NULL,11,19,NULL,5,0.000000),(296,NULL,NULL,11,19,NULL,6,0.000000),(305,NULL,NULL,12,20,NULL,4,30.000000),(306,NULL,NULL,12,20,NULL,3,30.000000),(307,NULL,NULL,12,20,NULL,8,30.000000),(308,NULL,NULL,12,20,NULL,1,30.000000),(309,NULL,NULL,12,20,NULL,7,30.000000),(310,NULL,NULL,12,20,NULL,2,30.000000),(311,NULL,NULL,12,20,NULL,5,30.000000),(312,NULL,NULL,12,20,NULL,6,30.000000),(321,NULL,NULL,12,21,NULL,4,15.000000),(322,NULL,NULL,12,21,NULL,3,15.000000),(323,NULL,NULL,12,21,NULL,8,15.000000),(324,NULL,NULL,12,21,NULL,1,15.000000),(325,NULL,NULL,12,21,NULL,7,15.000000),(326,NULL,NULL,12,21,NULL,2,15.000000),(327,NULL,NULL,12,21,NULL,5,15.000000),(328,NULL,NULL,12,21,NULL,6,15.000000),(337,NULL,NULL,12,22,NULL,4,0.000000),(338,NULL,NULL,12,22,NULL,3,0.000000),(339,NULL,NULL,12,22,NULL,8,0.000000),(340,NULL,NULL,12,22,NULL,1,0.000000),(341,NULL,NULL,12,22,NULL,7,0.000000),(342,NULL,NULL,12,22,NULL,2,0.000000),(343,NULL,NULL,12,22,NULL,5,0.000000),(344,NULL,NULL,12,22,NULL,6,0.000000);
/*!40000 ALTER TABLE `ps_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_emailsubscription`
--

DROP TABLE IF EXISTS `ps_emailsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_emailsubscription` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `id_lang` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_emailsubscription`
--

LOCK TABLES `ps_emailsubscription` WRITE;
/*!40000 ALTER TABLE `ps_emailsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_emailsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee`
--

DROP TABLE IF EXISTS `ps_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int(1) unsigned NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_width` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `id_last_order` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `last_connection_date` date DEFAULT NULL,
  `reset_password_token` varchar(40) DEFAULT NULL,
  `reset_password_validity` datetime DEFAULT NULL,
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee`
--

LOCK TABLES `ps_employee` WRITE;
/*!40000 ALTER TABLE `ps_employee` DISABLE KEYS */;
INSERT INTO `ps_employee` VALUES (1,1,1,'Adamski','Adam','aa@ebuty.pl','$2y$10$8qjE04fnbalfxTj9nD60auwViWo.k03sNqucWBVZgrgnJCN/Icjt6','2020-11-30 13:28:31','2020-10-30','2020-11-30','0000-00-00','0000-00-00',1,NULL,NULL,'default','theme.css',1,0,1,1,1,10,0,0,'2020-12-18',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee_session`
--

DROP TABLE IF EXISTS `ps_employee_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee_session` (
  `id_employee_session` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_employee_session`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee_session`
--

LOCK TABLES `ps_employee_session` WRITE;
/*!40000 ALTER TABLE `ps_employee_session` DISABLE KEYS */;
INSERT INTO `ps_employee_session` VALUES (1,1,'c9c0cee9dff2694a16cab1dac55fd12ae5146246'),(2,1,'c1c45a5e55363452a2d33182b0e41dfc9531c27f'),(4,1,'6e35be49bca79d87545491e6f51298a33a39496a'),(5,1,'660d36c4d05198327a319ca681569cccdf49403b'),(7,1,'4c55d058b3efc39a578f353331ce88413e1ca9cd'),(9,1,'75809165c5f5c2bba9b82c43ff3d6b64e193010e'),(10,1,'113c7dbecbe18288dc374284e94295dc638e44fe');
/*!40000 ALTER TABLE `ps_employee_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee_shop`
--

DROP TABLE IF EXISTS `ps_employee_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee_shop` (
  `id_employee` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee_shop`
--

LOCK TABLES `ps_employee_shop` WRITE;
/*!40000 ALTER TABLE `ps_employee_shop` DISABLE KEYS */;
INSERT INTO `ps_employee_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_employee_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature`
--

DROP TABLE IF EXISTS `ps_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature`
--

LOCK TABLES `ps_feature` WRITE;
/*!40000 ALTER TABLE `ps_feature` DISABLE KEYS */;
INSERT INTO `ps_feature` VALUES (3,0);
/*!40000 ALTER TABLE `ps_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_lang`
--

DROP TABLE IF EXISTS `ps_feature_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_lang`
--

LOCK TABLES `ps_feature_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_lang` VALUES (3,1,'Rozmiar');
/*!40000 ALTER TABLE `ps_feature_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_product`
--

DROP TABLE IF EXISTS `ps_feature_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`,`id_feature_value`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_product`
--

LOCK TABLES `ps_feature_product` WRITE;
/*!40000 ALTER TABLE `ps_feature_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_feature_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_shop`
--

DROP TABLE IF EXISTS `ps_feature_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_shop` (
  `id_feature` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_shop`
--

LOCK TABLES `ps_feature_shop` WRITE;
/*!40000 ALTER TABLE `ps_feature_shop` DISABLE KEYS */;
INSERT INTO `ps_feature_shop` VALUES (3,1);
/*!40000 ALTER TABLE `ps_feature_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value`
--

DROP TABLE IF EXISTS `ps_feature_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value`
--

LOCK TABLES `ps_feature_value` WRITE;
/*!40000 ALTER TABLE `ps_feature_value` DISABLE KEYS */;
INSERT INTO `ps_feature_value` VALUES (11,3,0),(12,3,0),(13,3,0);
/*!40000 ALTER TABLE `ps_feature_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value_lang`
--

DROP TABLE IF EXISTS `ps_feature_value_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value_lang`
--

LOCK TABLES `ps_feature_value_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_value_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_value_lang` VALUES (11,1,'44'),(12,1,'45'),(13,1,'46');
/*!40000 ALTER TABLE `ps_feature_value_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_ganalytics`
--

DROP TABLE IF EXISTS `ps_ganalytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_ganalytics` (
  `id_google_analytics` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `sent` tinyint(1) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`id_google_analytics`),
  KEY `id_order` (`id_order`),
  KEY `sent` (`sent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_ganalytics`
--

LOCK TABLES `ps_ganalytics` WRITE;
/*!40000 ALTER TABLE `ps_ganalytics` DISABLE KEYS */;
INSERT INTO `ps_ganalytics` VALUES (1,11,0,1,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_ganalytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_ganalytics_data`
--

DROP TABLE IF EXISTS `ps_ganalytics_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_ganalytics_data` (
  `id_cart` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `data` text,
  PRIMARY KEY (`id_cart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_ganalytics_data`
--

LOCK TABLES `ps_ganalytics_data` WRITE;
/*!40000 ALTER TABLE `ps_ganalytics_data` DISABLE KEYS */;
INSERT INTO `ps_ganalytics_data` VALUES (0,1,'[[[[\"MBG.addCheckoutOption(2,\'\');\"]]]]'),(15,1,'[[[[[[[\"MBG.addCheckoutOption(2,\'\');\"]]]]]]]');
/*!40000 ALTER TABLE `ps_ganalytics_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_gender`
--

DROP TABLE IF EXISTS `ps_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_gender` (
  `id_gender` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_gender`
--

LOCK TABLES `ps_gender` WRITE;
/*!40000 ALTER TABLE `ps_gender` DISABLE KEYS */;
INSERT INTO `ps_gender` VALUES (1,0),(2,1);
/*!40000 ALTER TABLE `ps_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_gender_lang`
--

DROP TABLE IF EXISTS `ps_gender_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_gender_lang` (
  `id_gender` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_gender_lang`
--

LOCK TABLES `ps_gender_lang` WRITE;
/*!40000 ALTER TABLE `ps_gender_lang` DISABLE KEYS */;
INSERT INTO `ps_gender_lang` VALUES (1,1,'Pan'),(2,1,'Pani');
/*!40000 ALTER TABLE `ps_gender_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group`
--

DROP TABLE IF EXISTS `ps_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group`
--

LOCK TABLES `ps_group` WRITE;
/*!40000 ALTER TABLE `ps_group` DISABLE KEYS */;
INSERT INTO `ps_group` VALUES (1,0.00,0,1,'2020-11-30 19:28:30','2020-11-30 19:28:30'),(2,0.00,0,1,'2020-11-30 19:28:30','2020-11-30 19:28:30'),(3,0.00,0,1,'2020-11-30 19:28:30','2020-11-30 19:28:30');
/*!40000 ALTER TABLE `ps_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_lang`
--

DROP TABLE IF EXISTS `ps_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_lang`
--

LOCK TABLES `ps_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_group_lang` DISABLE KEYS */;
INSERT INTO `ps_group_lang` VALUES (1,1,'Odwiedzający'),(2,1,'Gość'),(3,1,'Klient');
/*!40000 ALTER TABLE `ps_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_reduction`
--

DROP TABLE IF EXISTS `ps_group_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_reduction` (
  `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_reduction`
--

LOCK TABLES `ps_group_reduction` WRITE;
/*!40000 ALTER TABLE `ps_group_reduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_group_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_shop`
--

DROP TABLE IF EXISTS `ps_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_shop` (
  `id_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_shop`
--

LOCK TABLES `ps_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_group_shop` DISABLE KEYS */;
INSERT INTO `ps_group_shop` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `ps_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_gsitemap_sitemap`
--

DROP TABLE IF EXISTS `ps_gsitemap_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_gsitemap_sitemap` (
  `link` varchar(255) DEFAULT NULL,
  `id_shop` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_gsitemap_sitemap`
--

LOCK TABLES `ps_gsitemap_sitemap` WRITE;
/*!40000 ALTER TABLE `ps_gsitemap_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_gsitemap_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_guest`
--

DROP TABLE IF EXISTS `ps_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_guest`
--

LOCK TABLES `ps_guest` WRITE;
/*!40000 ALTER TABLE `ps_guest` DISABLE KEYS */;
INSERT INTO `ps_guest` VALUES (1,0,0,2,0,0,0,0,0,0,0,0,0,0,'',0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0),(3,6,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(4,6,11,3,0,0,0,0,0,0,0,0,0,0,'pl',0),(5,6,11,0,0,0,0,0,0,0,0,0,0,0,'pl',0),(6,6,11,4,0,0,0,0,0,0,0,0,0,0,'pl',0),(7,0,0,5,0,0,0,0,0,0,0,0,0,0,'',0),(8,7,11,6,0,0,0,0,0,0,0,0,0,0,'pl',0),(9,7,11,7,0,0,0,0,0,0,0,0,0,0,'pl',0),(10,7,11,0,0,0,0,0,0,0,0,0,0,0,'pl',0),(11,6,11,8,0,0,0,0,0,0,0,0,0,0,'pl',0),(12,6,11,0,0,0,0,0,0,0,0,0,0,0,'pl',0),(13,6,11,0,0,0,0,0,0,0,0,0,0,0,'en',0);
/*!40000 ALTER TABLE `ps_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_homeslider`
--

DROP TABLE IF EXISTS `ps_homeslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_homeslider` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_homeslider`
--

LOCK TABLES `ps_homeslider` WRITE;
/*!40000 ALTER TABLE `ps_homeslider` DISABLE KEYS */;
INSERT INTO `ps_homeslider` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `ps_homeslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_homeslider_slides`
--

DROP TABLE IF EXISTS `ps_homeslider_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_homeslider_slides` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_homeslider_slides`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_homeslider_slides`
--

LOCK TABLES `ps_homeslider_slides` WRITE;
/*!40000 ALTER TABLE `ps_homeslider_slides` DISABLE KEYS */;
INSERT INTO `ps_homeslider_slides` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `ps_homeslider_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_homeslider_slides_lang`
--

DROP TABLE IF EXISTS `ps_homeslider_slides_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_homeslider_slides_lang`
--

LOCK TABLES `ps_homeslider_slides_lang` WRITE;
/*!40000 ALTER TABLE `ps_homeslider_slides_lang` DISABLE KEYS */;
INSERT INTO `ps_homeslider_slides_lang` VALUES (1,1,'Najlepszy sklep z butami','<p>Jesteśmy <strong>najlepszymi</strong> sklepami z butami</p>','najlepszy-sklep','http://www.prestashop.com/?utm_source=back-office&utm_medium=v17_homeslider&utm_campaign=back-office-PL&utm_content=download','sample-1.jpg'),(2,1,'Super sklep','<h3>Super sklep</h3>\n<p>Jesteśmy super sklepem.</p>','Super sklep','http://www.prestashop.com/?utm_source=back-office&utm_medium=v17_homeslider&utm_campaign=back-office-PL&utm_content=download','sample-2.jpg'),(3,1,'Zamów u nas','<h3>Zamów u nas!</h3>\n<h3></h3>','zamow-u-nas','http://www.prestashop.com/?utm_source=back-office&utm_medium=v17_homeslider&utm_campaign=back-office-PL&utm_content=download','sample-3.jpg');
/*!40000 ALTER TABLE `ps_homeslider_slides_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook`
--

DROP TABLE IF EXISTS `ps_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook`
--

LOCK TABLES `ps_hook` WRITE;
/*!40000 ALTER TABLE `ps_hook` DISABLE KEYS */;
INSERT INTO `ps_hook` VALUES (1,'actionValidateOrder','New orders','',1),(2,'displayMaintenance','Maintenance Page','This hook displays new elements on the maintenance page',1),(3,'displayProductPageDrawer','Product Page Drawer','This hook displays content in the right sidebar of the product page',1),(4,'actionPaymentConfirmation','Payment confirmation','This hook displays new elements after the payment is validated',1),(5,'displayPaymentReturn','Payment return','',1),(6,'actionUpdateQuantity','Quantity update','Quantity is updated only when a customer effectively places their order',1),(7,'displayRightColumn','Right column blocks','This hook displays new elements in the right-hand column',1),(8,'displayWrapperTop','Main wrapper section (top)','This hook displays new elements in the top of the main wrapper',1),(9,'displayWrapperBottom','Main wrapper section (bottom)','This hook displays new elements in the bottom of the main wrapper',1),(10,'displayContentWrapperTop','Content wrapper section (top)','This hook displays new elements in the top of the content wrapper',1),(11,'displayContentWrapperBottom','Content wrapper section (bottom)','This hook displays new elements in the bottom of the content wrapper',1),(12,'displayLeftColumn','Left column blocks','This hook displays new elements in the left-hand column',1),(13,'displayHome','Homepage content','This hook displays new elements on the homepage',1),(14,'Header','Pages html head section','This hook adds additional elements in the head section of your pages (head section of html)',1),(15,'actionCartSave','Cart creation and update','This hook is displayed when a product is added to the cart or if the cart\'s content is modified',1),(16,'actionAuthentication','Successful customer authentication','This hook is displayed after a customer successfully signs in',1),(17,'actionProductAdd','Product creation','This hook is displayed after a product is created',1),(18,'actionProductUpdate','Product update','This hook is displayed after a product has been updated',1),(19,'displayAfterBodyOpeningTag','Very top of pages','Use this hook for advertisement or modals you want to load first',1),(20,'displayBeforeBodyClosingTag','Very bottom of pages','Use this hook for your modals or any content you want to load at the very end',1),(21,'displayTop','Top of pages','This hook displays additional elements at the top of your pages',1),(22,'displayNavFullWidth','Navigation','This hook displays full width navigation menu at the top of your pages',1),(23,'displayRightColumnProduct','New elements on the product page (right column)','This hook displays new elements in the right-hand column of the product page',1),(24,'actionProductDelete','Product deletion','This hook is called when a product is deleted',1),(25,'actionObjectProductInCartDeleteBefore','Cart product removal','This hook is called before a product is removed from a cart',1),(26,'actionObjectProductInCartDeleteAfter','Cart product removal','This hook is called after a product is removed from a cart',1),(27,'displayFooterProduct','Product footer','This hook adds new blocks under the product\'s description',1),(28,'displayInvoice','Invoice','This hook displays new blocks on the invoice (order)',1),(29,'actionOrderStatusUpdate','Order status update - Event','This hook launches modules when the status of an order changes',1),(30,'displayAdminOrder','Display new elements in the Back Office, tab AdminOrder','This hook launches modules when the AdminOrder tab is displayed in the Back Office',1),(31,'displayAdminOrderTabOrder','Display new elements in Back Office, AdminOrder, panel Order','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel tabs',1),(32,'displayAdminOrderTabShip','Display new elements in Back Office, AdminOrder, panel Shipping','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel tabs',1),(33,'displayAdminOrderContentOrder','Display new elements in Back Office, AdminOrder, panel Order','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel content',1),(34,'displayAdminOrderContentShip','Display new elements in Back Office, AdminOrder, panel Shipping','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel content',1),(35,'displayFooter','Footer','This hook displays new blocks in the footer',1),(36,'displayPDFInvoice','PDF Invoice','This hook allows you to display additional information on PDF invoices',1),(37,'displayInvoiceLegalFreeText','PDF Invoice - Legal Free Text','This hook allows you to modify the legal free text on PDF invoices',1),(38,'displayAdminCustomers','Display new elements in the Back Office, tab AdminCustomers','This hook launches modules when the AdminCustomers tab is displayed in the Back Office',1),(39,'displayAdminCustomersAddressesItemAction','Display new elements in the Back Office, tab AdminCustomers, Add','This hook launches modules when the Addresses list into the AdminCustomers tab is displayed in the Back Office',1),(40,'displayOrderConfirmation','Order confirmation page','This hook is called within an order\'s confirmation page',1),(41,'actionCustomerAccountAdd','Successful customer account creation','This hook is called when a new customer creates an account successfully',1),(42,'actionCustomerAccountUpdate','Successful customer account update','This hook is called when a customer updates its account successfully',1),(43,'displayCustomerAccount','Customer account displayed in Front Office','This hook displays new elements on the customer account page',1),(44,'actionOrderSlipAdd','Order slip creation','This hook is called when a new credit slip is added regarding client order',1),(45,'displayShoppingCartFooter','Shopping cart footer','This hook displays some specific information on the shopping cart\'s page',1),(46,'displayCreateAccountEmailFormBottom','Customer authentication form','This hook displays some information on the bottom of the email form',1),(47,'displayAuthenticateFormBottom','Customer authentication form','This hook displays some information on the bottom of the authentication form',1),(48,'displayCustomerAccountForm','Customer account creation form','This hook displays some information on the form to create a customer account',1),(49,'displayAdminStatsModules','Stats - Modules','',1),(50,'displayAdminStatsGraphEngine','Graph engines','',1),(51,'actionOrderReturn','Returned product','This hook is displayed when a customer returns a product ',1),(52,'displayProductAdditionalInfo','Product page additional info','This hook adds additional information on the product page',1),(53,'displayBackOfficeHome','Administration panel homepage','This hook is displayed on the admin panel\'s homepage',1),(54,'displayAdminStatsGridEngine','Grid engines','',1),(55,'actionWatermark','Watermark','',1),(56,'actionProductCancel','Product cancelled','This hook is called when you cancel a product in an order',1),(57,'displayLeftColumnProduct','New elements on the product page (left column)','This hook displays new elements in the left-hand column of the product page',1),(58,'actionProductOutOfStock','Out-of-stock product','This hook displays new action buttons if a product is out of stock',1),(59,'actionProductAttributeUpdate','Product attribute update','This hook is displayed when a product\'s attribute is updated',1),(60,'displayCarrierList','Extra carrier (module mode)','',1),(61,'displayShoppingCart','Shopping cart - Additional button','This hook displays new action buttons within the shopping cart',1),(62,'actionCarrierUpdate','Carrier Update','This hook is called when a carrier is updated',1),(63,'actionOrderStatusPostUpdate','Post update of order status','',1),(64,'displayCustomerAccountFormTop','Block above the form for create an account','This hook is displayed above the customer\'s account creation form',1),(65,'displayBackOfficeHeader','Administration panel header','This hook is displayed in the header of the admin panel',1),(66,'displayBackOfficeTop','Administration panel hover the tabs','This hook is displayed on the roll hover of the tabs within the admin panel',1),(67,'displayAdminEndContent','Administration end of content','This hook is displayed at the end of the main content, before the footer',1),(68,'displayBackOfficeFooter','Administration panel footer','This hook is displayed within the admin panel\'s footer',1),(69,'actionProductAttributeDelete','Product attribute deletion','This hook is displayed when a product\'s attribute is deleted',1),(70,'actionCarrierProcess','Carrier process','',1),(71,'displayBeforeCarrier','Before carriers list','This hook is displayed before the carrier list in Front Office',1),(72,'displayAfterCarrier','After carriers list','This hook is displayed after the carrier list in Front Office',1),(73,'displayOrderDetail','Order detail','This hook is displayed within the order\'s details in Front Office',1),(74,'actionPaymentCCAdd','Payment CC added','',1),(75,'actionCategoryAdd','Category creation','This hook is displayed when a category is created',1),(76,'actionCategoryUpdate','Category modification','This hook is displayed when a category is modified',1),(77,'actionCategoryDelete','Category deletion','This hook is displayed when a category is deleted',1),(78,'displayPaymentTop','Top of payment page','This hook is displayed at the top of the payment page',1),(79,'actionHtaccessCreate','After htaccess creation','This hook is displayed after the htaccess creation',1),(80,'actionAdminMetaSave','After saving the configuration in AdminMeta','This hook is displayed after saving the configuration in AdminMeta',1),(81,'displayAttributeGroupForm','Add fields to the form \'attribute group\'','This hook adds fields to the form \'attribute group\'',1),(82,'actionAttributeGroupSave','Saving an attribute group','This hook is called while saving an attributes group',1),(83,'actionAttributeGroupDelete','Deleting attribute group','This hook is called while deleting an attributes  group',1),(84,'displayFeatureForm','Add fields to the form \'feature\'','This hook adds fields to the form \'feature\'',1),(85,'actionFeatureSave','Saving attributes\' features','This hook is called while saving an attributes features',1),(86,'actionFeatureDelete','Deleting attributes\' features','This hook is called while deleting an attributes features',1),(87,'actionProductSave','Saving products','This hook is called while saving products',1),(88,'displayAttributeGroupPostProcess','On post-process in admin attribute group','This hook is called on post-process in admin attribute group',1),(89,'displayFeaturePostProcess','On post-process in admin feature','This hook is called on post-process in admin feature',1),(90,'displayFeatureValueForm','Add fields to the form \'feature value\'','This hook adds fields to the form \'feature value\'',1),(91,'displayFeatureValuePostProcess','On post-process in admin feature value','This hook is called on post-process in admin feature value',1),(92,'actionFeatureValueDelete','Deleting attributes\' features\' values','This hook is called while deleting an attributes features value',1),(93,'actionFeatureValueSave','Saving an attributes features value','This hook is called while saving an attributes features value',1),(94,'displayAttributeForm','Add fields to the form \'attribute value\'','This hook adds fields to the form \'attribute value\'',1),(95,'actionAttributePostProcess','On post-process in admin feature value','This hook is called on post-process in admin feature value',1),(96,'actionAttributeDelete','Deleting an attributes features value','This hook is called while deleting an attributes features value',1),(97,'actionAttributeSave','Saving an attributes features value','This hook is called while saving an attributes features value',1),(98,'actionTaxManager','Tax Manager Factory','',1),(99,'displayMyAccountBlock','My account block','This hook displays extra information within the \'my account\' block\"',1),(100,'actionModuleInstallBefore','actionModuleInstallBefore','',1),(101,'actionModuleInstallAfter','actionModuleInstallAfter','',1),(102,'displayTopColumn','Top column blocks','This hook displays new elements in the top of columns',1),(103,'displayBackOfficeCategory','Display new elements in the Back Office, tab AdminCategories','This hook launches modules when the AdminCategories tab is displayed in the Back Office',1),(104,'displayProductListFunctionalButtons','Display new elements in the Front Office, products list','This hook launches modules when the products list is displayed in the Front Office',1),(105,'displayNav','Navigation','',1),(106,'displayOverrideTemplate','Change the default template of current controller','',1),(107,'actionAdminLoginControllerSetMedia','Set media on admin login page header','This hook is called after adding media to admin login page header',1),(108,'actionOrderEdited','Order edited','This hook is called when an order is edited',1),(109,'actionEmailAddBeforeContent','Add extra content before mail content','This hook is called just before fetching mail template',1),(110,'actionEmailAddAfterContent','Add extra content after mail content','This hook is called just after fetching mail template',1),(111,'sendMailAlterTemplateVars','Alter template vars on the fly','This hook is called when Mail::send() is called',1),(112,'displayCartExtraProductActions','Extra buttons in shopping cart','This hook adds extra buttons to the product lines, in the shopping cart',1),(113,'displayPaymentByBinaries','Payment form generated by binaries','This hook displays form generated by binaries during the checkout',1),(114,'additionalCustomerFormFields','Add fields to the Customer form','This hook returns an array of FormFields to add them to the customer registration form',1),(115,'additionalCustomerAddressFields','Add fields to the Customer address form','This hook returns an array of FormFields to add them to the customer address registration form',1),(116,'addWebserviceResources','Add extra webservice resource','This hook is called when webservice resources list in webservice controller',1),(117,'displayCustomerLoginFormAfter','Display elements after login form','This hook displays new elements after the login form',1),(118,'actionClearCache','Clear smarty cache','This hook is called when smarty\'s cache is cleared',1),(119,'actionClearCompileCache','Clear smarty compile cache','This hook is called when smarty\'s compile cache is cleared',1),(120,'actionClearSf2Cache','Clear Sf2 cache','This hook is called when the Symfony cache is cleared',1),(121,'actionValidateCustomerAddressForm','Customer address form validation','This hook is called when a customer submit its address form',1),(122,'displayCarrierExtraContent','Display additional content for a carrier (e.g pickup points)','This hook calls only the module related to the carrier, in order to add options when needed',1),(123,'validateCustomerFormFields','Customer registration form validation','This hook is called to a module when it has sent additional fields with additionalCustomerFormFields',1),(124,'displayProductExtraContent','Display extra content on the product page','This hook expects ProductExtraContent instances, which will be properly displayed by the template on the product page',1),(125,'filterCmsContent','Filter the content page','This hook is called just before fetching content page',1),(126,'filterCmsCategoryContent','Filter the content page category','This hook is called just before fetching content page category',1),(127,'filterProductContent','Filter the content page product','This hook is called just before fetching content page product',1),(128,'filterCategoryContent','Filter the content page category','This hook is called just before fetching content page category',1),(129,'filterManufacturerContent','Filter the content page manufacturer','This hook is called just before fetching content page manufacturer',1),(130,'filterSupplierContent','Filter the content page supplier','This hook is called just before fetching content page supplier',1),(131,'filterHtmlContent','Filter HTML field before rending a page','This hook is called just before fetching a page on HTML field',1),(132,'displayDashboardTop','Dashboard Top','Displays the content in the dashboard\'s top area',1),(133,'actionUpdateLangAfter','Update \"lang\" tables','Update \"lang\" tables after adding or updating a language',1),(134,'actionOutputHTMLBefore','Before HTML output','This hook is used to filter the whole HTML page before it is rendered (only front)',1),(135,'displayAfterProductThumbs','Display extra content below product thumbs','This hook displays new elements below product images ex. additional media',1),(136,'actionDispatcherBefore','Before dispatch','This hook is called at the beginning of the dispatch method of the Dispatcher',1),(137,'actionDispatcherAfter','After dispatch','This hook is called at the end of the dispatch method of the Dispatcher',1),(138,'filterProductSearch','Filter search products result','This hook is called in order to allow to modify search product result',1),(139,'actionProductSearchAfter','Event triggered after search product completed','This hook is called after the product search. Parameters are already filter',1),(140,'actionEmailSendBefore','Before sending an email','This hook is used to filter the content or the metadata of an email before sending it or even prevent its sending',1),(141,'displayAdminProductsMainStepLeftColumnMiddle','Display new elements in back office product page, left column of','This hook launches modules when the back office product page is displayed',1),(142,'displayAdminProductsMainStepLeftColumnBottom','Display new elements in back office product page, left column of','This hook launches modules when the back office product page is displayed',1),(143,'displayAdminProductsMainStepRightColumnBottom','Display new elements in back office product page, right column o','This hook launches modules when the back office product page is displayed',1),(144,'displayAdminProductsQuantitiesStepBottom','Display new elements in back office product page, Quantities/Com','This hook launches modules when the back office product page is displayed',1),(145,'displayAdminProductsPriceStepBottom','Display new elements in back office product page, Price tab','This hook launches modules when the back office product page is displayed',1),(146,'displayAdminProductsOptionsStepTop','Display new elements in back office product page, Options tab','This hook launches modules when the back office product page is displayed',1),(147,'displayAdminProductsOptionsStepBottom','Display new elements in back office product page, Options tab','This hook launches modules when the back office product page is displayed',1),(148,'displayAdminProductsSeoStepBottom','Display new elements in back office product page, SEO tab','This hook launches modules when the back office product page is displayed',1),(149,'displayAdminProductsShippingStepBottom','Display new elements in back office product page, Shipping tab','This hook launches modules when the back office product page is displayed',1),(150,'displayAdminProductsCombinationBottom','Display new elements in back office product page, Combination ta','This hook launches modules when the back office product page is displayed',1),(151,'displayDashboardToolbarTopMenu','Display new elements in back office page with a dashboard, on to','This hook launches modules when a page with a dashboard is displayed',1),(152,'displayDashboardToolbarIcons','Display new elements in back office page with dashboard, on icon','This hook launches modules when the back office with dashboard is displayed',1),(153,'actionBuildFrontEndObject','Manage elements added to the \"prestashop\" javascript object','This hook allows you to customize the \"prestashop\" javascript object that is included in all front office pages',1),(154,'actionFrontControllerAfterInit','Perform actions after front office controller initialization','This hook is launched after the initialization of all front office controllers',1),(155,'actionAdministrationPageForm','Manage Administration Page form fields','This hook adds, update or remove fields of the Administration Page form',1),(156,'actionAdministrationPageFormSave','Processing Administration page form','This hook is called when the Administration Page form is processed',1),(157,'actionPerformancePageForm','Manage Performance Page form fields','This hook adds, update or remove fields of the Performance Page form',1),(158,'actionPerformancePageFormSave','Processing Performance page form','This hook is called when the Performance Page form is processed',1),(159,'actionMaintenancePageForm','Manage Maintenance Page form fields','This hook adds, update or remove fields of the Maintenance Page form',1),(160,'actionMaintenancePageFormSave','Processing Maintenance page form','This hook is called when the Maintenance Page form is processed',1),(161,'actionWebserviceKeyGridPresenterModifier','Modify Webservice grid view data','This hook allows to alter presented Webservice grid data',1),(162,'actionWebserviceKeyGridDefinitionModifier','Modifying Webservice grid definition','This hook allows to alter Webservice grid columns, actions and filters',1),(163,'actionWebserviceKeyGridQueryBuilderModifier','Modify Webservice grid query builder','This hook allows to alter Doctrine query builder for Webservice grid',1),(164,'actionWebserviceKeyGridFilterFormModifier','Modify filters form for Webservice grid','This hook allows to alter filters form used in Webservice',1),(165,'actionSqlRequestGridPresenterModifier','Modify SQL Manager grid view data','This hook allows to alter presented SQL Manager grid data',1),(166,'actionSqlRequestGridDefinitionModifier','Modifying SQL Manager grid definition','This hook allows to alter SQL Manager grid columns, actions and filters',1),(167,'actionSqlRequestGridQueryBuilderModifier','Modify SQL Manager grid query builder','This hook allows to alter Doctrine query builder for SQL Manager grid',1),(168,'actionSqlRequestGridFilterFormModifier','Modify filters form for SQL Manager grid','This hook allows to alter filters form used in SQL Manager',1),(169,'actionMetaGridPresenterModifier','Modify SEO and URLs grid view data','This hook allows to alter presented SEO and URLs grid data',1),(170,'actionMetaGridDefinitionModifier','Modifying SEO and URLs grid definition','This hook allows to alter SEO and URLs grid columns, actions and filters',1),(171,'actionMetaGridQueryBuilderModifier','Modify SEO and URLs grid query builder','This hook allows to alter Doctrine query builder for SEO and URLs grid',1),(172,'actionMetaGridFilterFormModifier','Modify filters form for SEO and URLs grid','This hook allows to alter filters form used in SEO and URLs',1),(173,'actionLogsGridPresenterModifier','Modify Logs grid view data','This hook allows to alter presented Logs grid data',1),(174,'actionLogsGridDefinitionModifier','Modifying Logs grid definition','This hook allows to alter Logs grid columns, actions and filters',1),(175,'actionLogsGridQueryBuilderModifier','Modify Logs grid query builder','This hook allows to alter Doctrine query builder for Logs grid',1),(176,'actionLogsGridFilterFormModifier','Modify filters form for Logs grid','This hook allows to alter filters form used in Logs',1),(177,'actionEmailLogsGridPresenterModifier','Modify E-mail grid view data','This hook allows to alter presented E-mail grid data',1),(178,'actionEmailLogsGridDefinitionModifier','Modifying E-mail grid definition','This hook allows to alter E-mail grid columns, actions and filters',1),(179,'actionEmailLogsGridQueryBuilderModifier','Modify E-mail grid query builder','This hook allows to alter Doctrine query builder for E-mail grid',1),(180,'actionEmailLogsGridFilterFormModifier','Modify filters form for E-mail grid','This hook allows to alter filters form used in E-mail',1),(181,'actionBackupGridPresenterModifier','Modify DB Backup grid view data','This hook allows to alter presented DB Backup grid data',1),(182,'actionBackupGridDefinitionModifier','Modifying DB Backup grid definition','This hook allows to alter DB Backup grid columns, actions and filters',1),(183,'actionBackupGridFilterFormModifier','Modify filters form for DB Backup grid','This hook allows to alter filters form used in DB Backup',1),(184,'actionProductFlagsModifier','Customize product labels displayed on the product list on FO','This hook allows to add and remove product labels displayed on top of product images',1),(185,'actionListMailThemes','List the available email themes and layouts','This hook allows to add/remove available email themes (ThemeInterface) and/or to add/remove their layouts (LayoutInterface)',1),(186,'actionGetMailThemeFolder','Define the folder of an email theme','This hook allows to change the folder of an email theme (useful if you theme is in a module for example)',1),(187,'actionBuildMailLayoutVariables','Build the variables used in email layout rendering','This hook allows to change the variables used when an email layout is rendered',1),(188,'actionGetMailLayoutTransformations','Define the transformation to apply on layout','This hook allows to add/remove TransformationInterface used to generate an email layout',1),(189,'displayProductActions','Display additional action button on the product page','This hook allow additional actions to be triggered, near the add to cart button.',1),(190,'displayPersonalInformationTop','Content in the checkout funnel, on top of the personal informati','Display actions or additional content in the personal details tab of the checkout funnel.',1),(191,'actionSqlRequestFormBuilderModifier','Modify sql request identifiable object form','This hook allows to modify sql request identifiable object forms content by modifying form\n          builder data or FormBuilder itself\n      ',1),(192,'actionCustomerFormBuilderModifier','Modify customer identifiable object form','This hook allows to modify customer identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(193,'actionLanguageFormBuilderModifier','Modify language identifiable object form','This hook allows to modify language identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(194,'actionCurrencyFormBuilderModifier','Modify currency identifiable object form','This hook allows to modify currency identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(195,'actionWebserviceKeyFormBuilderModifier','Modify webservice key identifiable object form','This hook allows to modify webservice key identifiable object forms content by modifying form\n          builder data or FormBuilder itself\n      ',1),(196,'actionMetaFormBuilderModifier','Modify meta identifiable object form','This hook allows to modify meta identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(197,'actionCategoryFormBuilderModifier','Modify category identifiable object form','This hook allows to modify category identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(198,'actionRootCategoryFormBuilderModifier','Modify root category identifiable object form','This hook allows to modify root category identifiable object forms content by modifying form\n          builder data or FormBuilder itself\n      ',1),(199,'actionContactFormBuilderModifier','Modify contact identifiable object form','This hook allows to modify contact identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(200,'actionCmsPageCategoryFormBuilderModifier','Modify cms page category identifiable object form','This hook allows to modify cms page category identifiable object forms content by modifying\n          form builder data or FormBuilder itself\n      ',1),(201,'actionTaxFormBuilderModifier','Modify tax identifiable object form','This hook allows to modify tax identifiable object forms content by modifying form builder data\n          or FormBuilder itself\n      ',1),(202,'actionManufacturerFormBuilderModifier','Modify manufacturer identifiable object form','This hook allows to modify manufacturer identifiable object forms content by modifying form\n          builder data or FormBuilder itself\n      ',1),(203,'actionEmployeeFormBuilderModifier','Modify employee identifiable object form','This hook allows to modify employee identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(204,'actionProfileFormBuilderModifier','Modify profile identifiable object form','This hook allows to modify profile identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(205,'actionCmsPageFormBuilderModifier','Modify cms page identifiable object form','This hook allows to modify cms page identifiable object forms content by modifying form builder\n          data or FormBuilder itself\n      ',1),(206,'actionManufacturerAddressFormBuilderModifier','Modify manufacturer address identifiable object form','This hook allows to modify manufacturer address identifiable object forms content by modifying\n          form builder data or FormBuilder itself\n      ',1),(207,'actionBeforeUpdateSqlRequestFormHandler','Modify sql request identifiable object data before updating it','This hook allows to modify sql request identifiable object forms data before it was updated\n      ',1),(208,'actionBeforeUpdateCustomerFormHandler','Modify customer identifiable object data before updating it','This hook allows to modify customer identifiable object forms data before it was updated\n      ',1),(209,'actionBeforeUpdateLanguageFormHandler','Modify language identifiable object data before updating it','This hook allows to modify language identifiable object forms data before it was updated\n      ',1),(210,'actionBeforeUpdateCurrencyFormHandler','Modify currency identifiable object data before updating it','This hook allows to modify currency identifiable object forms data before it was updated\n      ',1),(211,'actionBeforeUpdateWebserviceKeyFormHandler','Modify webservice key identifiable object data before updating i','This hook allows to modify webservice key identifiable object forms data before it was\n          updated\n      ',1),(212,'actionBeforeUpdateMetaFormHandler','Modify meta identifiable object data before updating it','This hook allows to modify meta identifiable object forms data before it was updated\n      ',1),(213,'actionBeforeUpdateCategoryFormHandler','Modify category identifiable object data before updating it','This hook allows to modify category identifiable object forms data before it was updated\n      ',1),(214,'actionBeforeUpdateRootCategoryFormHandler','Modify root category identifiable object data before updating it','This hook allows to modify root category identifiable object forms data before it was updated\n      ',1),(215,'actionBeforeUpdateContactFormHandler','Modify contact identifiable object data before updating it','This hook allows to modify contact identifiable object forms data before it was updated\n      ',1),(216,'actionBeforeUpdateCmsPageCategoryFormHandler','Modify cms page category identifiable object data before updatin','This hook allows to modify cms page category identifiable object forms data before it was\n          updated\n      ',1),(217,'actionBeforeUpdateTaxFormHandler','Modify tax identifiable object data before updating it','This hook allows to modify tax identifiable object forms data before it was updated\n      ',1),(218,'actionBeforeUpdateManufacturerFormHandler','Modify manufacturer identifiable object data before updating it','This hook allows to modify manufacturer identifiable object forms data before it was updated\n      ',1),(219,'actionBeforeUpdateEmployeeFormHandler','Modify employee identifiable object data before updating it','This hook allows to modify employee identifiable object forms data before it was updated\n      ',1),(220,'actionBeforeUpdateProfileFormHandler','Modify profile identifiable object data before updating it','This hook allows to modify profile identifiable object forms data before it was updated\n      ',1),(221,'actionBeforeUpdateCmsPageFormHandler','Modify cms page identifiable object data before updating it','This hook allows to modify cms page identifiable object forms data before it was updated\n      ',1),(222,'actionBeforeUpdateManufacturerAddressFormHandler','Modify manufacturer address identifiable object data before upda','This hook allows to modify manufacturer address identifiable object forms data before it was\n          updated\n      ',1),(223,'actionAfterUpdateSqlRequestFormHandler','Modify sql request identifiable object data after updating it','This hook allows to modify sql request identifiable object forms data after it was updated\n      ',1),(224,'actionAfterUpdateCustomerFormHandler','Modify customer identifiable object data after updating it','This hook allows to modify customer identifiable object forms data after it was updated\n      ',1),(225,'actionAfterUpdateLanguageFormHandler','Modify language identifiable object data after updating it','This hook allows to modify language identifiable object forms data after it was updated\n      ',1),(226,'actionAfterUpdateCurrencyFormHandler','Modify currency identifiable object data after updating it','This hook allows to modify currency identifiable object forms data after it was updated\n      ',1),(227,'actionAfterUpdateWebserviceKeyFormHandler','Modify webservice key identifiable object data after updating it','This hook allows to modify webservice key identifiable object forms data after it was updated\n      ',1),(228,'actionAfterUpdateMetaFormHandler','Modify meta identifiable object data after updating it','This hook allows to modify meta identifiable object forms data after it was updated\n      ',1),(229,'actionAfterUpdateCategoryFormHandler','Modify category identifiable object data after updating it','This hook allows to modify category identifiable object forms data after it was updated\n      ',1),(230,'actionAfterUpdateRootCategoryFormHandler','Modify root category identifiable object data after updating it','This hook allows to modify root category identifiable object forms data after it was updated\n      ',1),(231,'actionAfterUpdateContactFormHandler','Modify contact identifiable object data after updating it','This hook allows to modify contact identifiable object forms data after it was updated\n      ',1),(232,'actionAfterUpdateCmsPageCategoryFormHandler','Modify cms page category identifiable object data after updating','This hook allows to modify cms page category identifiable object forms data after it was\n          updated\n      ',1),(233,'actionAfterUpdateTaxFormHandler','Modify tax identifiable object data after updating it','This hook allows to modify tax identifiable object forms data after it was updated\n      ',1),(234,'actionAfterUpdateManufacturerFormHandler','Modify manufacturer identifiable object data after updating it','This hook allows to modify manufacturer identifiable object forms data after it was updated\n      ',1),(235,'actionAfterUpdateEmployeeFormHandler','Modify employee identifiable object data after updating it','This hook allows to modify employee identifiable object forms data after it was updated\n      ',1),(236,'actionAfterUpdateProfileFormHandler','Modify profile identifiable object data after updating it','This hook allows to modify profile identifiable object forms data after it was updated\n      ',1),(237,'actionAfterUpdateCmsPageFormHandler','Modify cms page identifiable object data after updating it','This hook allows to modify cms page identifiable object forms data after it was updated\n      ',1),(238,'actionAfterUpdateManufacturerAddressFormHandler','Modify manufacturer address identifiable object data after updat','This hook allows to modify manufacturer address identifiable object forms data after it was\n          updated\n      ',1),(239,'actionBeforeCreateSqlRequestFormHandler','Modify sql request identifiable object data before creating it','This hook allows to modify sql request identifiable object forms data before it was created\n      ',1),(240,'actionBeforeCreateCustomerFormHandler','Modify customer identifiable object data before creating it','This hook allows to modify customer identifiable object forms data before it was created\n      ',1),(241,'actionBeforeCreateLanguageFormHandler','Modify language identifiable object data before creating it','This hook allows to modify language identifiable object forms data before it was created\n      ',1),(242,'actionBeforeCreateCurrencyFormHandler','Modify currency identifiable object data before creating it','This hook allows to modify currency identifiable object forms data before it was created\n      ',1),(243,'actionBeforeCreateWebserviceKeyFormHandler','Modify webservice key identifiable object data before creating i','This hook allows to modify webservice key identifiable object forms data before it was\n          created\n      ',1),(244,'actionBeforeCreateMetaFormHandler','Modify meta identifiable object data before creating it','This hook allows to modify meta identifiable object forms data before it was created\n      ',1),(245,'actionBeforeCreateCategoryFormHandler','Modify category identifiable object data before creating it','This hook allows to modify category identifiable object forms data before it was created\n      ',1),(246,'actionBeforeCreateRootCategoryFormHandler','Modify root category identifiable object data before creating it','This hook allows to modify root category identifiable object forms data before it was created\n      ',1),(247,'actionBeforeCreateContactFormHandler','Modify contact identifiable object data before creating it','This hook allows to modify contact identifiable object forms data before it was created\n      ',1),(248,'actionBeforeCreateCmsPageCategoryFormHandler','Modify cms page category identifiable object data before creatin','This hook allows to modify cms page category identifiable object forms data before it was\n          created\n      ',1),(249,'actionBeforeCreateTaxFormHandler','Modify tax identifiable object data before creating it','This hook allows to modify tax identifiable object forms data before it was created\n      ',1),(250,'actionBeforeCreateManufacturerFormHandler','Modify manufacturer identifiable object data before creating it','This hook allows to modify manufacturer identifiable object forms data before it was created\n      ',1),(251,'actionBeforeCreateEmployeeFormHandler','Modify employee identifiable object data before creating it','This hook allows to modify employee identifiable object forms data before it was created\n      ',1),(252,'actionBeforeCreateProfileFormHandler','Modify profile identifiable object data before creating it','This hook allows to modify profile identifiable object forms data before it was created\n      ',1),(253,'actionBeforeCreateCmsPageFormHandler','Modify cms page identifiable object data before creating it','This hook allows to modify cms page identifiable object forms data before it was created\n      ',1),(254,'actionBeforeCreateManufacturerAddressFormHandler','Modify manufacturer address identifiable object data before crea','This hook allows to modify manufacturer address identifiable object forms data before it was\n          created\n      ',1),(255,'actionAfterCreateSqlRequestFormHandler','Modify sql request identifiable object data after creating it','This hook allows to modify sql request identifiable object forms data after it was created\n      ',1),(256,'actionAfterCreateCustomerFormHandler','Modify customer identifiable object data after creating it','This hook allows to modify customer identifiable object forms data after it was created\n      ',1),(257,'actionAfterCreateLanguageFormHandler','Modify language identifiable object data after creating it','This hook allows to modify language identifiable object forms data after it was created\n      ',1),(258,'actionAfterCreateCurrencyFormHandler','Modify currency identifiable object data after creating it','This hook allows to modify currency identifiable object forms data after it was created\n      ',1),(259,'actionAfterCreateWebserviceKeyFormHandler','Modify webservice key identifiable object data after creating it','This hook allows to modify webservice key identifiable object forms data after it was created\n      ',1),(260,'actionAfterCreateMetaFormHandler','Modify meta identifiable object data after creating it','This hook allows to modify meta identifiable object forms data after it was created\n      ',1),(261,'actionAfterCreateCategoryFormHandler','Modify category identifiable object data after creating it','This hook allows to modify category identifiable object forms data after it was created\n      ',1),(262,'actionAfterCreateRootCategoryFormHandler','Modify root category identifiable object data after creating it','This hook allows to modify root category identifiable object forms data after it was created\n      ',1),(263,'actionAfterCreateContactFormHandler','Modify contact identifiable object data after creating it','This hook allows to modify contact identifiable object forms data after it was created\n      ',1),(264,'actionAfterCreateCmsPageCategoryFormHandler','Modify cms page category identifiable object data after creating','This hook allows to modify cms page category identifiable object forms data after it was\n          created\n      ',1),(265,'actionAfterCreateTaxFormHandler','Modify tax identifiable object data after creating it','This hook allows to modify tax identifiable object forms data after it was created\n      ',1),(266,'actionAfterCreateManufacturerFormHandler','Modify manufacturer identifiable object data after creating it','This hook allows to modify manufacturer identifiable object forms data after it was created\n      ',1),(267,'actionAfterCreateEmployeeFormHandler','Modify employee identifiable object data after creating it','This hook allows to modify employee identifiable object forms data after it was created\n      ',1),(268,'actionAfterCreateProfileFormHandler','Modify profile identifiable object data after creating it','This hook allows to modify profile identifiable object forms data after it was created\n      ',1),(269,'actionAfterCreateCmsPageFormHandler','Modify cms page identifiable object data after creating it','This hook allows to modify cms page identifiable object forms data after it was created\n      ',1),(270,'actionAfterCreateManufacturerAddressFormHandler','Modify manufacturer address identifiable object data after creat','This hook allows to modify manufacturer address identifiable object forms data after it was\n          created\n      ',1),(271,'actionShippingPreferencesPageForm','Modify shipping preferences page options form content','This hook allows to modify shipping preferences page options form FormBuilder',1),(272,'actionOrdersInvoicesByDateForm','Modify orders invoices by date options form content','This hook allows to modify orders invoices by date options form FormBuilder',1),(273,'actionOrdersInvoicesByStatusForm','Modify orders invoices by status options form content','This hook allows to modify orders invoices by status options form FormBuilder',1),(274,'actionOrdersInvoicesOptionsForm','Modify orders invoices options options form content','This hook allows to modify orders invoices options options form FormBuilder',1),(275,'actionCustomerPreferencesPageForm','Modify customer preferences page options form content','This hook allows to modify customer preferences page options form FormBuilder',1),(276,'actionOrderPreferencesPageForm','Modify order preferences page options form content','This hook allows to modify order preferences page options form FormBuilder',1),(277,'actionProductPreferencesPageForm','Modify product preferences page options form content','This hook allows to modify product preferences page options form FormBuilder',1),(278,'actionGeneralPageForm','Modify general page options form content','This hook allows to modify general page options form FormBuilder',1),(279,'actionLogsPageForm','Modify logs page options form content','This hook allows to modify logs page options form FormBuilder',1),(280,'actionOrderDeliverySlipOptionsForm','Modify order delivery slip options options form content','This hook allows to modify order delivery slip options options form FormBuilder',1),(281,'actionOrderDeliverySlipPdfForm','Modify order delivery slip pdf options form content','This hook allows to modify order delivery slip pdf options form FormBuilder',1),(282,'actionGeolocationPageForm','Modify geolocation page options form content','This hook allows to modify geolocation page options form FormBuilder',1),(283,'actionLocalizationPageForm','Modify localization page options form content','This hook allows to modify localization page options form FormBuilder',1),(284,'actionPaymentPreferencesForm','Modify payment preferences options form content','This hook allows to modify payment preferences options form FormBuilder',1),(285,'actionEmailConfigurationForm','Modify email configuration options form content','This hook allows to modify email configuration options form FormBuilder',1),(286,'actionRequestSqlForm','Modify request sql options form content','This hook allows to modify request sql options form FormBuilder',1),(287,'actionBackupForm','Modify backup options form content','This hook allows to modify backup options form FormBuilder',1),(288,'actionWebservicePageForm','Modify webservice page options form content','This hook allows to modify webservice page options form FormBuilder',1),(289,'actionMetaPageForm','Modify meta page options form content','This hook allows to modify meta page options form FormBuilder',1),(290,'actionEmployeeForm','Modify employee options form content','This hook allows to modify employee options form FormBuilder',1),(291,'actionCurrencyForm','Modify currency options form content','This hook allows to modify currency options form FormBuilder',1),(292,'actionShopLogoForm','Modify shop logo options form content','This hook allows to modify shop logo options form FormBuilder',1),(293,'actionTaxForm','Modify tax options form content','This hook allows to modify tax options form FormBuilder',1),(294,'actionMailThemeForm','Modify mail theme options form content','This hook allows to modify mail theme options form FormBuilder',1),(295,'actionPerformancePageSave','Modify performance page options form saved data','This hook allows to modify data of performance page options form after it was saved\n      ',1),(296,'actionMaintenancePageSave','Modify maintenance page options form saved data','This hook allows to modify data of maintenance page options form after it was saved\n      ',1),(297,'actionAdministrationPageSave','Modify administration page options form saved data','This hook allows to modify data of administration page options form after it was saved\n      ',1),(298,'actionShippingPreferencesPageSave','Modify shipping preferences page options form saved data','This hook allows to modify data of shipping preferences page options form after it was saved\n      ',1),(299,'actionOrdersInvoicesByDateSave','Modify orders invoices by date options form saved data','This hook allows to modify data of orders invoices by date options form after it was saved\n      ',1),(300,'actionOrdersInvoicesByStatusSave','Modify orders invoices by status options form saved data','This hook allows to modify data of orders invoices by status options form after it was saved\n      ',1),(301,'actionOrdersInvoicesOptionsSave','Modify orders invoices options options form saved data','This hook allows to modify data of orders invoices options options form after it was saved\n      ',1),(302,'actionCustomerPreferencesPageSave','Modify customer preferences page options form saved data','This hook allows to modify data of customer preferences page options form after it was saved\n      ',1),(303,'actionOrderPreferencesPageSave','Modify order preferences page options form saved data','This hook allows to modify data of order preferences page options form after it was saved\n      ',1),(304,'actionProductPreferencesPageSave','Modify product preferences page options form saved data','This hook allows to modify data of product preferences page options form after it was saved\n      ',1),(305,'actionGeneralPageSave','Modify general page options form saved data','This hook allows to modify data of general page options form after it was saved',1),(306,'actionLogsPageSave','Modify logs page options form saved data','This hook allows to modify data of logs page options form after it was saved',1),(307,'actionOrderDeliverySlipOptionsSave','Modify order delivery slip options options form saved data','This hook allows to modify data of order delivery slip options options form after it was\n          saved\n      ',1),(308,'actionOrderDeliverySlipPdfSave','Modify order delivery slip pdf options form saved data','This hook allows to modify data of order delivery slip pdf options form after it was saved\n      ',1),(309,'actionGeolocationPageSave','Modify geolocation page options form saved data','This hook allows to modify data of geolocation page options form after it was saved\n      ',1),(310,'actionLocalizationPageSave','Modify localization page options form saved data','This hook allows to modify data of localization page options form after it was saved\n      ',1),(311,'actionPaymentPreferencesSave','Modify payment preferences options form saved data','This hook allows to modify data of payment preferences options form after it was saved\n      ',1),(312,'actionEmailConfigurationSave','Modify email configuration options form saved data','This hook allows to modify data of email configuration options form after it was saved\n      ',1),(313,'actionRequestSqlSave','Modify request sql options form saved data','This hook allows to modify data of request sql options form after it was saved',1),(314,'actionBackupSave','Modify backup options form saved data','This hook allows to modify data of backup options form after it was saved',1),(315,'actionWebservicePageSave','Modify webservice page options form saved data','This hook allows to modify data of webservice page options form after it was saved\n      ',1),(316,'actionMetaPageSave','Modify meta page options form saved data','This hook allows to modify data of meta page options form after it was saved',1),(317,'actionEmployeeSave','Modify employee options form saved data','This hook allows to modify data of employee options form after it was saved',1),(318,'actionCurrencySave','Modify currency options form saved data','This hook allows to modify data of currency options form after it was saved',1),(319,'actionShopLogoSave','Modify shop logo options form saved data','This hook allows to modify data of shop logo options form after it was saved',1),(320,'actionTaxSave','Modify tax options form saved data','This hook allows to modify data of tax options form after it was saved',1),(321,'actionMailThemeSave','Modify mail theme options form saved data','This hook allows to modify data of mail theme options form after it was saved',1),(322,'actionCategoryGridDefinitionModifier','Modify category grid definition','This hook allows to alter category grid columns, actions and filters',1),(323,'actionEmployeeGridDefinitionModifier','Modify employee grid definition','This hook allows to alter employee grid columns, actions and filters',1),(324,'actionContactGridDefinitionModifier','Modify contact grid definition','This hook allows to alter contact grid columns, actions and filters',1),(325,'actionCustomerGridDefinitionModifier','Modify customer grid definition','This hook allows to alter customer grid columns, actions and filters',1),(326,'actionLanguageGridDefinitionModifier','Modify language grid definition','This hook allows to alter language grid columns, actions and filters',1),(327,'actionCurrencyGridDefinitionModifier','Modify currency grid definition','This hook allows to alter currency grid columns, actions and filters',1),(328,'actionSupplierGridDefinitionModifier','Modify supplier grid definition','This hook allows to alter supplier grid columns, actions and filters',1),(329,'actionProfileGridDefinitionModifier','Modify profile grid definition','This hook allows to alter profile grid columns, actions and filters',1),(330,'actionCmsPageCategoryGridDefinitionModifier','Modify cms page category grid definition','This hook allows to alter cms page category grid columns, actions and filters',1),(331,'actionTaxGridDefinitionModifier','Modify tax grid definition','This hook allows to alter tax grid columns, actions and filters',1),(332,'actionManufacturerGridDefinitionModifier','Modify manufacturer grid definition','This hook allows to alter manufacturer grid columns, actions and filters',1),(333,'actionManufacturerAddressGridDefinitionModifier','Modify manufacturer address grid definition','This hook allows to alter manufacturer address grid columns, actions and filters',1),(334,'actionCmsPageGridDefinitionModifier','Modify cms page grid definition','This hook allows to alter cms page grid columns, actions and filters',1),(335,'actionBackupGridQueryBuilderModifier','Modify backup grid query builder','This hook allows to alter Doctrine query builder for backup grid',1),(336,'actionCategoryGridQueryBuilderModifier','Modify category grid query builder','This hook allows to alter Doctrine query builder for category grid',1),(337,'actionEmployeeGridQueryBuilderModifier','Modify employee grid query builder','This hook allows to alter Doctrine query builder for employee grid',1),(338,'actionContactGridQueryBuilderModifier','Modify contact grid query builder','This hook allows to alter Doctrine query builder for contact grid',1),(339,'actionCustomerGridQueryBuilderModifier','Modify customer grid query builder','This hook allows to alter Doctrine query builder for customer grid',1),(340,'actionLanguageGridQueryBuilderModifier','Modify language grid query builder','This hook allows to alter Doctrine query builder for language grid',1),(341,'actionCurrencyGridQueryBuilderModifier','Modify currency grid query builder','This hook allows to alter Doctrine query builder for currency grid',1),(342,'actionSupplierGridQueryBuilderModifier','Modify supplier grid query builder','This hook allows to alter Doctrine query builder for supplier grid',1),(343,'actionProfileGridQueryBuilderModifier','Modify profile grid query builder','This hook allows to alter Doctrine query builder for profile grid',1),(344,'actionCmsPageCategoryGridQueryBuilderModifier','Modify cms page category grid query builder','This hook allows to alter Doctrine query builder for cms page category grid',1),(345,'actionTaxGridQueryBuilderModifier','Modify tax grid query builder','This hook allows to alter Doctrine query builder for tax grid',1),(346,'actionManufacturerGridQueryBuilderModifier','Modify manufacturer grid query builder','This hook allows to alter Doctrine query builder for manufacturer grid',1),(347,'actionManufacturerAddressGridQueryBuilderModifier','Modify manufacturer address grid query builder','This hook allows to alter Doctrine query builder for manufacturer address grid',1),(348,'actionCmsPageGridQueryBuilderModifier','Modify cms page grid query builder','This hook allows to alter Doctrine query builder for cms page grid',1),(349,'actionLogsGridDataModifier','Modify logs grid data','This hook allows to modify logs grid data',1),(350,'actionEmailLogsGridDataModifier','Modify email logs grid data','This hook allows to modify email logs grid data',1),(351,'actionSqlRequestGridDataModifier','Modify sql request grid data','This hook allows to modify sql request grid data',1),(352,'actionBackupGridDataModifier','Modify backup grid data','This hook allows to modify backup grid data',1),(353,'actionWebserviceKeyGridDataModifier','Modify webservice key grid data','This hook allows to modify webservice key grid data',1),(354,'actionMetaGridDataModifier','Modify meta grid data','This hook allows to modify meta grid data',1),(355,'actionCategoryGridDataModifier','Modify category grid data','This hook allows to modify category grid data',1),(356,'actionEmployeeGridDataModifier','Modify employee grid data','This hook allows to modify employee grid data',1),(357,'actionContactGridDataModifier','Modify contact grid data','This hook allows to modify contact grid data',1),(358,'actionCustomerGridDataModifier','Modify customer grid data','This hook allows to modify customer grid data',1),(359,'actionLanguageGridDataModifier','Modify language grid data','This hook allows to modify language grid data',1),(360,'actionCurrencyGridDataModifier','Modify currency grid data','This hook allows to modify currency grid data',1),(361,'actionSupplierGridDataModifier','Modify supplier grid data','This hook allows to modify supplier grid data',1),(362,'actionProfileGridDataModifier','Modify profile grid data','This hook allows to modify profile grid data',1),(363,'actionCmsPageCategoryGridDataModifier','Modify cms page category grid data','This hook allows to modify cms page category grid data',1),(364,'actionTaxGridDataModifier','Modify tax grid data','This hook allows to modify tax grid data',1),(365,'actionManufacturerGridDataModifier','Modify manufacturer grid data','This hook allows to modify manufacturer grid data',1),(366,'actionManufacturerAddressGridDataModifier','Modify manufacturer address grid data','This hook allows to modify manufacturer address grid data',1),(367,'actionCmsPageGridDataModifier','Modify cms page grid data','This hook allows to modify cms page grid data',1),(368,'actionCategoryGridFilterFormModifier','Modify category grid filters','This hook allows to modify filters for category grid',1),(369,'actionEmployeeGridFilterFormModifier','Modify employee grid filters','This hook allows to modify filters for employee grid',1),(370,'actionContactGridFilterFormModifier','Modify contact grid filters','This hook allows to modify filters for contact grid',1),(371,'actionCustomerGridFilterFormModifier','Modify customer grid filters','This hook allows to modify filters for customer grid',1),(372,'actionLanguageGridFilterFormModifier','Modify language grid filters','This hook allows to modify filters for language grid',1),(373,'actionCurrencyGridFilterFormModifier','Modify currency grid filters','This hook allows to modify filters for currency grid',1),(374,'actionSupplierGridFilterFormModifier','Modify supplier grid filters','This hook allows to modify filters for supplier grid',1),(375,'actionProfileGridFilterFormModifier','Modify profile grid filters','This hook allows to modify filters for profile grid',1),(376,'actionCmsPageCategoryGridFilterFormModifier','Modify cms page category grid filters','This hook allows to modify filters for cms page category grid',1),(377,'actionTaxGridFilterFormModifier','Modify tax grid filters','This hook allows to modify filters for tax grid',1),(378,'actionManufacturerGridFilterFormModifier','Modify manufacturer grid filters','This hook allows to modify filters for manufacturer grid',1),(379,'actionManufacturerAddressGridFilterFormModifier','Modify manufacturer address grid filters','This hook allows to modify filters for manufacturer address grid',1),(380,'actionCmsPageGridFilterFormModifier','Modify cms page grid filters','This hook allows to modify filters for cms page grid',1),(381,'actionCategoryGridPresenterModifier','Modify category grid template data','This hook allows to modify data which is about to be used in template for category grid\n      ',1),(382,'actionEmployeeGridPresenterModifier','Modify employee grid template data','This hook allows to modify data which is about to be used in template for employee grid\n      ',1),(383,'actionContactGridPresenterModifier','Modify contact grid template data','This hook allows to modify data which is about to be used in template for contact grid\n      ',1),(384,'actionCustomerGridPresenterModifier','Modify customer grid template data','This hook allows to modify data which is about to be used in template for customer grid\n      ',1),(385,'actionLanguageGridPresenterModifier','Modify language grid template data','This hook allows to modify data which is about to be used in template for language grid\n      ',1),(386,'actionCurrencyGridPresenterModifier','Modify currency grid template data','This hook allows to modify data which is about to be used in template for currency grid\n      ',1),(387,'actionSupplierGridPresenterModifier','Modify supplier grid template data','This hook allows to modify data which is about to be used in template for supplier grid\n      ',1),(388,'actionProfileGridPresenterModifier','Modify profile grid template data','This hook allows to modify data which is about to be used in template for profile grid\n      ',1),(389,'actionCmsPageCategoryGridPresenterModifier','Modify cms page category grid template data','This hook allows to modify data which is about to be used in template for cms page category\n          grid\n      ',1),(390,'actionTaxGridPresenterModifier','Modify tax grid template data','This hook allows to modify data which is about to be used in template for tax grid\n      ',1),(391,'actionManufacturerGridPresenterModifier','Modify manufacturer grid template data','This hook allows to modify data which is about to be used in template for manufacturer grid\n      ',1),(392,'actionManufacturerAddressGridPresenterModifier','Modify manufacturer address grid template data','This hook allows to modify data which is about to be used in template for manufacturer address\n          grid\n      ',1),(393,'actionCmsPageGridPresenterModifier','Modify cms page grid template data','This hook allows to modify data which is about to be used in template for cms page grid\n      ',1),(394,'registerGDPRConsent','registerGDPRConsent','',1),(395,'dashboardZoneOne','dashboardZoneOne','',1),(396,'dashboardData','dashboardData','',1),(397,'actionObjectOrderAddAfter','actionObjectOrderAddAfter','',1),(398,'actionObjectCustomerAddAfter','actionObjectCustomerAddAfter','',1),(399,'actionObjectCustomerMessageAddAfter','actionObjectCustomerMessageAddAfter','',1),(400,'actionObjectCustomerThreadAddAfter','actionObjectCustomerThreadAddAfter','',1),(401,'actionObjectOrderReturnAddAfter','actionObjectOrderReturnAddAfter','',1),(402,'actionAdminControllerSetMedia','actionAdminControllerSetMedia','',1),(403,'dashboardZoneTwo','dashboardZoneTwo','',1),(404,'actionSearch','actionSearch','',1),(405,'gSitemapAppendUrls','GSitemap Append URLs','This hook allows a module to add URLs to a generated sitemap',1),(406,'actionObjectLanguageAddAfter','actionObjectLanguageAddAfter','',1),(407,'paymentOptions','paymentOptions','',1),(408,'displayNav1','displayNav1','',1),(409,'actionAdminStoresControllerUpdate_optionsAfter','actionAdminStoresControllerUpdate_optionsAfter','',1),(410,'actionAdminCurrenciesControllerSaveAfter','actionAdminCurrenciesControllerSaveAfter','',1),(411,'actionModuleRegisterHookAfter','actionModuleRegisterHookAfter','',1),(412,'actionModuleUnRegisterHookAfter','actionModuleUnRegisterHookAfter','',1),(413,'actionShopDataDuplication','actionShopDataDuplication','',1),(414,'actionFrontControllerSetMedia','actionFrontControllerSetMedia','',1),(415,'displayFooterBefore','displayFooterBefore','',1),(416,'actionObjectCustomerUpdateBefore','actionObjectCustomerUpdateBefore','',1),(417,'displayAdminCustomersForm','displayAdminCustomersForm','',1),(418,'actionDeleteGDPRCustomer','actionDeleteGDPRCustomer','',1),(419,'actionExportGDPRData','actionExportGDPRData','',1),(420,'actionFeatureFormBuilderModifier','actionFeatureFormBuilderModifier','',1),(421,'actionAfterCreateFeatureFormHandler','actionAfterCreateFeatureFormHandler','',1),(422,'actionAfterUpdateFeatureFormHandler','actionAfterUpdateFeatureFormHandler','',1),(423,'productSearchProvider','productSearchProvider','',1),(424,'actionObjectSpecificPriceRuleUpdateBefore','actionObjectSpecificPriceRuleUpdateBefore','',1),(425,'actionAdminSpecificPriceRuleControllerSaveAfter','actionAdminSpecificPriceRuleControllerSaveAfter','',1),(426,'displayOrderConfirmation2','displayOrderConfirmation2','',1),(427,'displayCrossSellingShoppingCart','displayCrossSellingShoppingCart','',1),(428,'actionAdminGroupsControllerSaveAfter','actionAdminGroupsControllerSaveAfter','',1),(429,'actionObjectCategoryUpdateAfter','actionObjectCategoryUpdateAfter','',1),(430,'actionObjectCategoryDeleteAfter','actionObjectCategoryDeleteAfter','',1),(431,'actionObjectCategoryAddAfter','actionObjectCategoryAddAfter','',1),(432,'actionObjectCmsUpdateAfter','actionObjectCmsUpdateAfter','',1),(433,'actionObjectCmsDeleteAfter','actionObjectCmsDeleteAfter','',1),(434,'actionObjectCmsAddAfter','actionObjectCmsAddAfter','',1),(435,'actionObjectSupplierUpdateAfter','actionObjectSupplierUpdateAfter','',1),(436,'actionObjectSupplierDeleteAfter','actionObjectSupplierDeleteAfter','',1),(437,'actionObjectSupplierAddAfter','actionObjectSupplierAddAfter','',1),(438,'actionObjectManufacturerUpdateAfter','actionObjectManufacturerUpdateAfter','',1),(439,'actionObjectManufacturerDeleteAfter','actionObjectManufacturerDeleteAfter','',1),(440,'actionObjectManufacturerAddAfter','actionObjectManufacturerAddAfter','',1),(441,'actionObjectProductUpdateAfter','actionObjectProductUpdateAfter','',1),(442,'actionObjectProductDeleteAfter','actionObjectProductDeleteAfter','',1),(443,'actionObjectProductAddAfter','actionObjectProductAddAfter','',1),(444,'displaySearch','displaySearch','',1),(445,'displayAdminNavBarBeforeEnd','displayAdminNavBarBeforeEnd','',1),(446,'displayAdminAfterHeader','displayAdminAfterHeader','',1),(447,'displayGDPRConsent','displayGDPRConsent','',1),(448,'displayNav2','','',1),(449,'displayReassurance','','',1),(450,'actionAdminMetaControllerUpdate_optionsAfter','actionAdminMetaControllerUpdate_optionsAfter','',1),(451,'actionAdminPerformanceControllerSaveAfter','actionAdminPerformanceControllerSaveAfter','',1),(452,'actionObjectCarrierAddAfter','actionObjectCarrierAddAfter','',1),(453,'actionObjectContactAddAfter','actionObjectContactAddAfter','',1),(454,'actionAdminThemesControllerUpdate_optionsAfter','actionAdminThemesControllerUpdate_optionsAfter','',1),(455,'actionObjectShopUpdateAfter','actionObjectShopUpdateAfter','',1),(456,'actionAdminPreferencesControllerUpdate_optionsAfter','actionAdminPreferencesControllerUpdate_optionsAfter','',1),(457,'actionObjectShopAddAfter','actionObjectShopAddAfter','',1),(458,'actionObjectShopGroupAddAfter','actionObjectShopGroupAddAfter','',1),(459,'actionObjectCartAddAfter','actionObjectCartAddAfter','',1),(460,'actionObjectEmployeeAddAfter','actionObjectEmployeeAddAfter','',1),(461,'actionObjectImageAddAfter','actionObjectImageAddAfter','',1),(462,'actionObjectCartRuleAddAfter','actionObjectCartRuleAddAfter','',1),(463,'actionAdminStoresControllerSaveAfter','actionAdminStoresControllerSaveAfter','',1),(464,'actionAdminWebserviceControllerSaveAfter','actionAdminWebserviceControllerSaveAfter','',1),(465,'actionCartUpdateQuantityBefore','actionCartUpdateQuantityBefore','',1),(466,'displayAdminCartsView','displayAdminCartsView','',1),(467,'displayAdminOrderTop','displayAdminOrderTop','',1),(468,'displayAdminOrderTabLink','displayAdminOrderTabLink','',1),(469,'displayAdminOrderTabContent','displayAdminOrderTabContent','',1),(470,'displayOrderPreview','displayOrderPreview','',1),(471,'displayExpressCheckout','displayExpressCheckout','',1),(472,'actionObjectSpecificPriceCoreDeleteAfter','actionObjectSpecificPriceCoreDeleteAfter','',1),(473,'actionObjectSpecificPriceCoreAddAfter','actionObjectSpecificPriceCoreAddAfter','',1),(474,'actionObjectSpecificPriceCoreUpdateAfter','actionObjectSpecificPriceCoreUpdateAfter','',1),(475,'actionGetExtraMailTemplateVars','actionGetExtraMailTemplateVars','',1);
/*!40000 ALTER TABLE `ps_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_alias`
--

DROP TABLE IF EXISTS `ps_hook_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_alias` (
  `id_hook_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_alias`
--

LOCK TABLES `ps_hook_alias` WRITE;
/*!40000 ALTER TABLE `ps_hook_alias` DISABLE KEYS */;
INSERT INTO `ps_hook_alias` VALUES (1,'newOrder','actionValidateOrder'),(2,'paymentConfirm','actionPaymentConfirmation'),(3,'paymentReturn','displayPaymentReturn'),(4,'updateQuantity','actionUpdateQuantity'),(5,'rightColumn','displayRightColumn'),(6,'leftColumn','displayLeftColumn'),(7,'home','displayHome'),(8,'displayHeader','Header'),(9,'cart','actionCartSave'),(10,'authentication','actionAuthentication'),(11,'addproduct','actionProductAdd'),(12,'updateproduct','actionProductUpdate'),(13,'top','displayTop'),(14,'extraRight','displayRightColumnProduct'),(15,'deleteproduct','actionProductDelete'),(16,'productfooter','displayFooterProduct'),(17,'invoice','displayInvoice'),(18,'updateOrderStatus','actionOrderStatusUpdate'),(19,'adminOrder','displayAdminOrder'),(20,'footer','displayFooter'),(21,'PDFInvoice','displayPDFInvoice'),(22,'adminCustomers','displayAdminCustomers'),(23,'orderConfirmation','displayOrderConfirmation'),(24,'createAccount','actionCustomerAccountAdd'),(25,'customerAccount','displayCustomerAccount'),(26,'orderSlip','actionOrderSlipAdd'),(27,'shoppingCart','displayShoppingCartFooter'),(28,'createAccountForm','displayCustomerAccountForm'),(29,'AdminStatsModules','displayAdminStatsModules'),(30,'GraphEngine','displayAdminStatsGraphEngine'),(31,'orderReturn','actionOrderReturn'),(32,'productActions','displayProductAdditionalInfo'),(33,'displayProductButtons','displayProductAdditionalInfo'),(34,'backOfficeHome','displayBackOfficeHome'),(35,'GridEngine','displayAdminStatsGridEngine'),(36,'watermark','actionWatermark'),(37,'cancelProduct','actionProductCancel'),(38,'extraLeft','displayLeftColumnProduct'),(39,'productOutOfStock','actionProductOutOfStock'),(40,'updateProductAttribute','actionProductAttributeUpdate'),(41,'extraCarrier','displayCarrierList'),(42,'shoppingCartExtra','displayShoppingCart'),(43,'updateCarrier','actionCarrierUpdate'),(44,'postUpdateOrderStatus','actionOrderStatusPostUpdate'),(45,'createAccountTop','displayCustomerAccountFormTop'),(46,'backOfficeHeader','displayBackOfficeHeader'),(47,'backOfficeTop','displayBackOfficeTop'),(48,'backOfficeFooter','displayBackOfficeFooter'),(49,'deleteProductAttribute','actionProductAttributeDelete'),(50,'processCarrier','actionCarrierProcess'),(51,'beforeCarrier','displayBeforeCarrier'),(52,'orderDetailDisplayed','displayOrderDetail'),(53,'paymentCCAdded','actionPaymentCCAdd'),(54,'categoryAddition','actionCategoryAdd'),(55,'categoryUpdate','actionCategoryUpdate'),(56,'categoryDeletion','actionCategoryDelete'),(57,'paymentTop','displayPaymentTop'),(58,'afterCreateHtaccess','actionHtaccessCreate'),(59,'afterSaveAdminMeta','actionAdminMetaSave'),(60,'attributeGroupForm','displayAttributeGroupForm'),(61,'afterSaveAttributeGroup','actionAttributeGroupSave'),(62,'afterDeleteAttributeGroup','actionAttributeGroupDelete'),(63,'featureForm','displayFeatureForm'),(64,'afterSaveFeature','actionFeatureSave'),(65,'afterDeleteFeature','actionFeatureDelete'),(66,'afterSaveProduct','actionProductSave'),(67,'postProcessAttributeGroup','displayAttributeGroupPostProcess'),(68,'postProcessFeature','displayFeaturePostProcess'),(69,'featureValueForm','displayFeatureValueForm'),(70,'postProcessFeatureValue','displayFeatureValuePostProcess'),(71,'afterDeleteFeatureValue','actionFeatureValueDelete'),(72,'afterSaveFeatureValue','actionFeatureValueSave'),(73,'attributeForm','displayAttributeForm'),(74,'postProcessAttribute','actionAttributePostProcess'),(75,'afterDeleteAttribute','actionAttributeDelete'),(76,'afterSaveAttribute','actionAttributeSave'),(77,'taxManager','actionTaxManager'),(78,'myAccountBlock','displayMyAccountBlock'),(79,'actionBeforeCartUpdateQty','actionCartUpdateQuantityBefore'),(80,'actionBeforeAjaxDie','actionAjaxDieBefore'),(81,'actionBeforeAuthentication','actionAuthenticationBefore'),(82,'actionBeforeSubmitAccount','actionSubmitAccountBefore'),(83,'actionAfterDeleteProductInCart','actionDeleteProductInCartAfter');
/*!40000 ALTER TABLE `ps_hook_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module`
--

DROP TABLE IF EXISTS `ps_hook_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module`
--

LOCK TABLES `ps_hook_module` WRITE;
/*!40000 ALTER TABLE `ps_hook_module` DISABLE KEYS */;
INSERT INTO `ps_hook_module` VALUES (1,1,394,1),(2,1,396,1),(2,1,397,1),(2,1,398,1),(2,1,399,1),(2,1,400,1),(2,1,401,1),(2,1,402,1),(3,1,63,1),(3,1,403,1),(5,1,404,1),(6,1,50,1),(7,1,54,1),(9,1,406,1),(10,1,12,1),(12,1,408,1),(12,1,409,1),(13,1,410,1),(14,1,411,1),(14,1,412,1),(16,1,413,1),(17,1,41,1),(17,1,42,1),(17,1,114,1),(17,1,414,1),(17,1,415,1),(17,1,416,1),(17,1,418,1),(17,1,419,1),(19,1,65,1),(20,1,17,1),(20,1,18,1),(20,1,24,1),(20,1,76,1),(20,1,426,1),(20,1,427,1),(20,1,428,1),(21,1,13,1),(21,1,14,1),(22,1,448,1),(23,1,35,1),(23,1,133,1),(24,1,21,1),(24,1,429,1),(24,1,430,1),(24,1,431,1),(24,1,432,1),(24,1,433,1),(24,1,434,1),(24,1,435,1),(24,1,436,1),(24,1,437,1),(24,1,438,1),(24,1,439,1),(24,1,440,1),(24,1,441,1),(24,1,442,1),(24,1,443,1),(25,1,444,1),(26,1,52,1),(31,1,49,1),(41,1,16,1),(41,1,20,1),(54,1,445,1),(54,1,446,1),(55,1,1,1),(55,1,29,1),(55,1,101,1),(55,1,450,1),(55,1,451,1),(55,1,452,1),(55,1,453,1),(55,1,454,1),(55,1,455,1),(55,1,456,1),(55,1,457,1),(55,1,458,1),(55,1,459,1),(55,1,460,1),(55,1,461,1),(55,1,462,1),(55,1,463,1),(55,1,464,1),(57,1,395,1),(58,1,43,1),(58,1,447,1),(59,1,132,1),(61,1,449,1),(62,1,75,1),(62,1,77,1),(62,1,81,1),(62,1,82,1),(62,1,83,1),(62,1,84,1),(62,1,85,1),(62,1,86,1),(62,1,87,1),(62,1,88,1),(62,1,89,1),(62,1,90,1),(62,1,91,1),(62,1,92,1),(62,1,93,1),(62,1,94,1),(62,1,95,1),(62,1,97,1),(62,1,420,1),(62,1,421,1),(62,1,422,1),(62,1,423,1),(62,1,424,1),(62,1,425,1),(63,1,27,1),(63,1,30,1),(63,1,31,1),(63,1,33,1),(63,1,37,1),(63,1,40,1),(63,1,44,1),(63,1,45,1),(63,1,135,1),(63,1,189,1),(63,1,190,1),(63,1,407,1),(63,1,465,1),(63,1,466,1),(63,1,467,1),(63,1,468,1),(63,1,469,1),(63,1,470,1),(63,1,471,1),(65,1,5,1),(67,1,472,1),(67,1,473,1),(67,1,474,1),(70,1,15,1),(70,1,56,1),(70,1,70,1),(2,1,395,2),(3,1,396,2),(3,1,402,2),(4,1,403,2),(5,1,397,2),(13,1,448,2),(14,1,35,2),(17,1,394,2),(20,1,13,2),(21,1,413,2),(24,1,76,2),(25,1,14,2),(25,1,21,2),(28,1,415,2),(32,1,49,2),(41,1,41,2),(51,1,404,2),(54,1,65,2),(55,1,398,2),(55,1,400,2),(55,1,409,2),(55,1,434,2),(55,1,443,2),(58,1,114,2),(58,1,418,2),(61,1,133,2),(62,1,12,2),(63,1,29,2),(63,1,52,2),(63,1,63,2),(63,1,449,2),(65,1,407,2),(66,1,5,2),(67,1,17,2),(67,1,18,2),(67,1,24,2),(70,1,27,2),(70,1,30,2),(70,1,40,2),(4,1,396,3),(4,1,402,3),(5,1,403,3),(9,1,13,3),(12,1,35,3),(15,1,448,3),(24,1,413,3),(27,1,14,3),(33,1,49,3),(55,1,65,3),(55,1,397,3),(58,1,41,3),(58,1,394,3),(62,1,76,3),(66,1,407,3),(68,1,17,3),(68,1,18,3),(68,1,24,3),(69,1,63,3),(5,1,396,4),(6,1,402,4),(16,1,13,4),(27,1,448,4),(34,1,49,4),(56,1,14,4),(56,1,65,4),(69,1,17,4),(69,1,18,4),(69,1,24,4),(70,1,35,4),(35,1,49,5),(55,1,402,5),(63,1,14,5),(67,1,13,5),(70,1,65,5),(36,1,49,6),(58,1,402,6),(68,1,13,6),(70,1,14,6),(37,1,49,7),(59,1,402,7),(69,1,13,7),(38,1,49,8),(70,1,13,8),(39,1,49,9),(40,1,49,10),(42,1,49,11),(43,1,49,12),(44,1,49,13),(45,1,49,14),(46,1,49,15),(47,1,49,16),(48,1,49,17),(49,1,49,18),(50,1,49,19),(51,1,49,20),(52,1,49,21),(53,1,49,22);
/*!40000 ALTER TABLE `ps_hook_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module_exceptions`
--

DROP TABLE IF EXISTS `ps_hook_module_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module_exceptions`
--

LOCK TABLES `ps_hook_module_exceptions` WRITE;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image`
--

DROP TABLE IF EXISTS `ps_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `id_product_cover` (`id_product`,`cover`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image`
--

LOCK TABLES `ps_image` WRITE;
/*!40000 ALTER TABLE `ps_image` DISABLE KEYS */;
INSERT INTO `ps_image` VALUES (25,21,1,1),(27,20,1,1),(28,21,2,NULL);
/*!40000 ALTER TABLE `ps_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_lang`
--

DROP TABLE IF EXISTS `ps_image_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_lang`
--

LOCK TABLES `ps_image_lang` WRITE;
/*!40000 ALTER TABLE `ps_image_lang` DISABLE KEYS */;
INSERT INTO `ps_image_lang` VALUES (25,1,''),(27,1,''),(28,1,'');
/*!40000 ALTER TABLE `ps_image_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_shop`
--

DROP TABLE IF EXISTS `ps_image_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `cover` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_shop`
--

LOCK TABLES `ps_image_shop` WRITE;
/*!40000 ALTER TABLE `ps_image_shop` DISABLE KEYS */;
INSERT INTO `ps_image_shop` VALUES (20,27,1,1),(21,28,1,NULL),(21,25,1,1);
/*!40000 ALTER TABLE `ps_image_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_type`
--

DROP TABLE IF EXISTS `ps_image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_type`
--

LOCK TABLES `ps_image_type` WRITE;
/*!40000 ALTER TABLE `ps_image_type` DISABLE KEYS */;
INSERT INTO `ps_image_type` VALUES (1,'cart_default',125,125,1,0,0,0,0),(2,'small_default',98,98,1,1,1,1,0),(3,'medium_default',452,452,1,0,1,1,0),(4,'home_default',250,250,1,0,0,0,0),(5,'large_default',800,800,1,0,1,1,0),(6,'category_default',141,180,0,1,0,0,0),(7,'stores_default',170,115,0,0,0,0,1);
/*!40000 ALTER TABLE `ps_image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_import_match`
--

DROP TABLE IF EXISTS `ps_import_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_import_match` (
  `id_import_match` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_import_match`
--

LOCK TABLES `ps_import_match` WRITE;
/*!40000 ALTER TABLE `ps_import_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_import_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_info`
--

DROP TABLE IF EXISTS `ps_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_info` (
  `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_info`
--

LOCK TABLES `ps_info` WRITE;
/*!40000 ALTER TABLE `ps_info` DISABLE KEYS */;
INSERT INTO `ps_info` VALUES (1);
/*!40000 ALTER TABLE `ps_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_info_lang`
--

DROP TABLE IF EXISTS `ps_info_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_info_lang` (
  `id_info` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id_info`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_info_lang`
--

LOCK TABLES `ps_info_lang` WRITE;
/*!40000 ALTER TABLE `ps_info_lang` DISABLE KEYS */;
INSERT INTO `ps_info_lang` VALUES (1,1,1,'<h2>Nowe wyprzedaże!</h2>\n<p>Mamy nowe wyprzedaże</p>\n<p>A wiecie że mamy nowe wyprzedaże?</p>');
/*!40000 ALTER TABLE `ps_info_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_info_shop`
--

DROP TABLE IF EXISTS `ps_info_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_info_shop` (
  `id_info` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_info`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_info_shop`
--

LOCK TABLES `ps_info_shop` WRITE;
/*!40000 ALTER TABLE `ps_info_shop` DISABLE KEYS */;
INSERT INTO `ps_info_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_info_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_lang`
--

DROP TABLE IF EXISTS `ps_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_lang` (
  `id_lang` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `iso_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `language_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `date_format_lite` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `date_format_full` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_lang`
--

LOCK TABLES `ps_lang` WRITE;
/*!40000 ALTER TABLE `ps_lang` DISABLE KEYS */;
INSERT INTO `ps_lang` VALUES (1,'Polski (Polish)',1,'pl','pl','pl-PL','Y-m-d','Y-m-d H:i:s',0);
/*!40000 ALTER TABLE `ps_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_lang_shop`
--

DROP TABLE IF EXISTS `ps_lang_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_lang_shop` (
  `id_lang` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `IDX_2F43BFC7BA299860` (`id_lang`),
  KEY `IDX_2F43BFC7274A50A0` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_lang_shop`
--

LOCK TABLES `ps_lang_shop` WRITE;
/*!40000 ALTER TABLE `ps_lang_shop` DISABLE KEYS */;
INSERT INTO `ps_lang_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_lang_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_category`
--

DROP TABLE IF EXISTS `ps_layered_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_category` (
  `id_layered_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `id_value` int(10) unsigned DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `filter_type` int(10) unsigned NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_layered_category`),
  KEY `id_category_shop` (`id_category`,`id_shop`,`type`,`id_value`,`position`),
  KEY `id_category` (`id_category`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_category`
--

LOCK TABLES `ps_layered_category` WRITE;
/*!40000 ALTER TABLE `ps_layered_category` DISABLE KEYS */;
INSERT INTO `ps_layered_category` VALUES (1,1,2,NULL,'category',1,0,0),(2,1,2,1,'id_attribute_group',2,0,0),(3,1,2,2,'id_attribute_group',3,0,0),(4,1,2,1,'id_feature',4,0,0),(5,1,2,2,'id_feature',5,0,0),(6,1,2,NULL,'quantity',6,0,0),(7,1,2,NULL,'manufacturer',7,0,0),(8,1,2,NULL,'condition',8,0,0),(9,1,2,NULL,'weight',9,0,0),(10,1,2,NULL,'price',10,0,0),(11,1,2,3,'id_attribute_group',11,0,0),(12,1,2,4,'id_attribute_group',12,0,0),(13,1,3,NULL,'category',1,0,0),(14,1,3,1,'id_attribute_group',2,0,0),(15,1,3,2,'id_attribute_group',3,0,0),(16,1,3,1,'id_feature',4,0,0),(17,1,3,2,'id_feature',5,0,0),(18,1,3,NULL,'quantity',6,0,0),(19,1,3,NULL,'manufacturer',7,0,0),(20,1,3,NULL,'condition',8,0,0),(21,1,3,NULL,'weight',9,0,0),(22,1,3,NULL,'price',10,0,0),(23,1,3,3,'id_attribute_group',11,0,0),(24,1,3,4,'id_attribute_group',12,0,0),(25,1,4,NULL,'category',1,0,0),(26,1,4,1,'id_attribute_group',2,0,0),(27,1,4,2,'id_attribute_group',3,0,0),(28,1,4,1,'id_feature',4,0,0),(29,1,4,2,'id_feature',5,0,0),(30,1,4,NULL,'quantity',6,0,0),(31,1,4,NULL,'manufacturer',7,0,0),(32,1,4,NULL,'condition',8,0,0),(33,1,4,NULL,'weight',9,0,0),(34,1,4,NULL,'price',10,0,0),(35,1,4,3,'id_attribute_group',11,0,0),(36,1,4,4,'id_attribute_group',12,0,0),(37,1,5,NULL,'category',1,0,0),(38,1,5,1,'id_attribute_group',2,0,0),(39,1,5,2,'id_attribute_group',3,0,0),(40,1,5,1,'id_feature',4,0,0),(41,1,5,2,'id_feature',5,0,0),(42,1,5,NULL,'quantity',6,0,0),(43,1,5,NULL,'manufacturer',7,0,0),(44,1,5,NULL,'condition',8,0,0),(45,1,5,NULL,'weight',9,0,0),(46,1,5,NULL,'price',10,0,0),(47,1,5,3,'id_attribute_group',11,0,0),(48,1,5,4,'id_attribute_group',12,0,0),(49,1,8,NULL,'category',1,0,0),(50,1,8,1,'id_attribute_group',2,0,0),(51,1,8,2,'id_attribute_group',3,0,0),(52,1,8,1,'id_feature',4,0,0),(53,1,8,2,'id_feature',5,0,0),(54,1,8,NULL,'quantity',6,0,0),(55,1,8,NULL,'manufacturer',7,0,0),(56,1,8,NULL,'condition',8,0,0),(57,1,8,NULL,'weight',9,0,0),(58,1,8,NULL,'price',10,0,0),(59,1,8,3,'id_attribute_group',11,0,0),(60,1,8,4,'id_attribute_group',12,0,0),(61,1,7,NULL,'category',1,0,0),(62,1,7,1,'id_attribute_group',2,0,0),(63,1,7,2,'id_attribute_group',3,0,0),(64,1,7,1,'id_feature',4,0,0),(65,1,7,2,'id_feature',5,0,0),(66,1,7,NULL,'quantity',6,0,0),(67,1,7,NULL,'manufacturer',7,0,0),(68,1,7,NULL,'condition',8,0,0),(69,1,7,NULL,'weight',9,0,0),(70,1,7,NULL,'price',10,0,0),(71,1,7,3,'id_attribute_group',11,0,0),(72,1,7,4,'id_attribute_group',12,0,0);
/*!40000 ALTER TABLE `ps_layered_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_filter`
--

DROP TABLE IF EXISTS `ps_layered_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_filter` (
  `id_layered_filter` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `filters` longtext,
  `n_categories` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_layered_filter`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_filter`
--

LOCK TABLES `ps_layered_filter` WRITE;
/*!40000 ALTER TABLE `ps_layered_filter` DISABLE KEYS */;
INSERT INTO `ps_layered_filter` VALUES (1,'Mój szablon 2020-11-30','a:14:{s:10:\"categories\";a:6:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:6;i:8;i:7;i:7;}s:9:\"shop_list\";a:1:{i:1;i:1;}s:31:\"layered_selection_subcategories\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:22:\"layered_selection_ag_1\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:22:\"layered_selection_ag_2\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:24:\"layered_selection_feat_1\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:24:\"layered_selection_feat_2\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:23:\"layered_selection_stock\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:30:\"layered_selection_manufacturer\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:27:\"layered_selection_condition\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:31:\"layered_selection_weight_slider\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:30:\"layered_selection_price_slider\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:22:\"layered_selection_ag_3\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}s:22:\"layered_selection_ag_4\";a:2:{s:11:\"filter_type\";i:0;s:17:\"filter_show_limit\";i:0;}}',8,'2020-11-30 18:28:59');
/*!40000 ALTER TABLE `ps_layered_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_filter_block`
--

DROP TABLE IF EXISTS `ps_layered_filter_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_filter_block` (
  `hash` char(32) NOT NULL DEFAULT '',
  `data` text,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_filter_block`
--

LOCK TABLES `ps_layered_filter_block` WRITE;
/*!40000 ALTER TABLE `ps_layered_filter_block` DISABLE KEYS */;
INSERT INTO `ps_layered_filter_block` VALUES ('3c89e4d2fe714839734a43c9245e4117','a:1:{s:7:\"filters\";a:8:{i:0;a:7:{s:9:\"type_lite\";s:8:\"category\";s:4:\"type\";s:8:\"category\";s:6:\"id_key\";i:0;s:4:\"name\";s:9:\"Kategorie\";s:6:\"values\";a:0:{}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:1;a:10:{s:9:\"type_lite\";s:18:\"id_attribute_group\";s:4:\"type\";s:18:\"id_attribute_group\";s:6:\"id_key\";s:1:\"1\";s:4:\"name\";s:7:\"Rozmiar\";s:14:\"is_color_group\";b:0;s:6:\"values\";a:3:{i:26;a:4:{s:4:\"name\";s:2:\"44\";s:3:\"nbr\";s:1:\"2\";s:8:\"url_name\";N;s:10:\"meta_title\";N;}i:27;a:4:{s:4:\"name\";s:2:\"45\";s:3:\"nbr\";s:1:\"2\";s:8:\"url_name\";N;s:10:\"meta_title\";N;}i:28;a:4:{s:4:\"name\";s:2:\"46\";s:3:\"nbr\";s:1:\"2\";s:8:\"url_name\";N;s:10:\"meta_title\";N;}}s:8:\"url_name\";N;s:10:\"meta_title\";N;s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:2;a:10:{s:9:\"type_lite\";s:18:\"id_attribute_group\";s:4:\"type\";s:18:\"id_attribute_group\";s:6:\"id_key\";s:1:\"2\";s:4:\"name\";s:5:\"Kolor\";s:14:\"is_color_group\";b:1;s:6:\"values\";a:3:{i:5;a:5:{s:4:\"name\";s:5:\"Szary\";s:3:\"nbr\";s:1:\"1\";s:8:\"url_name\";N;s:10:\"meta_title\";N;s:5:\"color\";s:7:\"#AAB2BD\";}i:13;a:5:{s:4:\"name\";s:13:\"Pomarańczowy\";s:3:\"nbr\";s:1:\"1\";s:8:\"url_name\";N;s:10:\"meta_title\";N;s:5:\"color\";s:7:\"#F39C11\";}i:17;a:5:{s:4:\"name\";s:8:\"Brązowy\";s:3:\"nbr\";s:1:\"1\";s:8:\"url_name\";N;s:10:\"meta_title\";N;s:5:\"color\";s:7:\"#964B00\";}}s:8:\"url_name\";N;s:10:\"meta_title\";N;s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:3;a:7:{s:9:\"type_lite\";s:8:\"quantity\";s:4:\"type\";s:8:\"quantity\";s:6:\"id_key\";i:0;s:4:\"name\";s:13:\"Dostępność\";s:6:\"values\";a:2:{i:0;a:2:{s:4:\"name\";s:12:\"Niedostępne\";s:3:\"nbr\";i:0;}i:1;a:2:{s:4:\"name\";s:11:\"W magazynie\";s:3:\"nbr\";i:2;}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:4;a:7:{s:9:\"type_lite\";s:12:\"manufacturer\";s:4:\"type\";s:12:\"manufacturer\";s:6:\"id_key\";i:0;s:4:\"name\";s:5:\"Marka\";s:6:\"values\";a:1:{i:2;a:2:{s:4:\"name\";s:10:\"NewBalance\";s:3:\"nbr\";s:1:\"2\";}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:5;a:7:{s:9:\"type_lite\";s:9:\"condition\";s:4:\"type\";s:9:\"condition\";s:6:\"id_key\";i:0;s:4:\"name\";s:5:\"Stan:\";s:6:\"values\";a:3:{s:3:\"new\";a:2:{s:4:\"name\";s:4:\"Nowy\";s:3:\"nbr\";s:1:\"2\";}s:4:\"used\";a:2:{s:4:\"name\";s:8:\"Używane\";s:3:\"nbr\";i:0;}s:11:\"refurbished\";a:2:{s:4:\"name\";s:9:\"Odnowione\";s:3:\"nbr\";i:0;}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:6;a:0:{}i:7;a:12:{s:9:\"type_lite\";s:5:\"price\";s:4:\"type\";s:5:\"price\";s:6:\"id_key\";i:0;s:4:\"name\";s:4:\"Cena\";s:3:\"max\";d:492;s:3:\"min\";d:455;s:4:\"unit\";s:3:\"zł\";s:14:\"specifications\";a:10:{s:6:\"symbol\";a:11:{i:0;s:1:\",\";i:1;s:2:\" \";i:2;s:1:\";\";i:3;s:1:\"%\";i:4;s:1:\"-\";i:5;s:1:\"+\";i:6;s:1:\"E\";i:7;s:2:\"×\";i:8;s:3:\"‰\";i:9;s:3:\"∞\";i:10;s:3:\"NaN\";}s:12:\"currencyCode\";s:3:\"PLN\";s:14:\"currencySymbol\";s:3:\"zł\";s:15:\"positivePattern\";s:12:\"#,##0.00 ¤\";s:15:\"negativePattern\";s:13:\"-#,##0.00 ¤\";s:17:\"maxFractionDigits\";i:2;s:17:\"minFractionDigits\";i:2;s:12:\"groupingUsed\";b:1;s:16:\"primaryGroupSize\";i:3;s:18:\"secondaryGroupSize\";i:3;}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";i:3;s:3:\"nbr\";i:2;s:5:\"value\";N;}}}'),('99a8b59891d6832eefba67582517293d','a:1:{s:7:\"filters\";a:8:{i:0;a:7:{s:9:\"type_lite\";s:8:\"category\";s:4:\"type\";s:8:\"category\";s:6:\"id_key\";i:0;s:4:\"name\";s:9:\"Kategorie\";s:6:\"values\";a:1:{i:4;a:2:{s:4:\"name\";s:9:\"Półbuty\";s:3:\"nbr\";s:1:\"2\";}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:1;a:10:{s:9:\"type_lite\";s:18:\"id_attribute_group\";s:4:\"type\";s:18:\"id_attribute_group\";s:6:\"id_key\";s:1:\"1\";s:4:\"name\";s:7:\"Rozmiar\";s:14:\"is_color_group\";b:0;s:6:\"values\";a:3:{i:26;a:4:{s:4:\"name\";s:2:\"44\";s:3:\"nbr\";s:1:\"2\";s:8:\"url_name\";N;s:10:\"meta_title\";N;}i:27;a:4:{s:4:\"name\";s:2:\"45\";s:3:\"nbr\";s:1:\"2\";s:8:\"url_name\";N;s:10:\"meta_title\";N;}i:28;a:4:{s:4:\"name\";s:2:\"46\";s:3:\"nbr\";s:1:\"2\";s:8:\"url_name\";N;s:10:\"meta_title\";N;}}s:8:\"url_name\";N;s:10:\"meta_title\";N;s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:2;a:10:{s:9:\"type_lite\";s:18:\"id_attribute_group\";s:4:\"type\";s:18:\"id_attribute_group\";s:6:\"id_key\";s:1:\"2\";s:4:\"name\";s:5:\"Kolor\";s:14:\"is_color_group\";b:1;s:6:\"values\";a:3:{i:5;a:5:{s:4:\"name\";s:5:\"Szary\";s:3:\"nbr\";s:1:\"1\";s:8:\"url_name\";N;s:10:\"meta_title\";N;s:5:\"color\";s:7:\"#AAB2BD\";}i:13;a:5:{s:4:\"name\";s:13:\"Pomarańczowy\";s:3:\"nbr\";s:1:\"1\";s:8:\"url_name\";N;s:10:\"meta_title\";N;s:5:\"color\";s:7:\"#F39C11\";}i:17;a:5:{s:4:\"name\";s:8:\"Brązowy\";s:3:\"nbr\";s:1:\"1\";s:8:\"url_name\";N;s:10:\"meta_title\";N;s:5:\"color\";s:7:\"#964B00\";}}s:8:\"url_name\";N;s:10:\"meta_title\";N;s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:3;a:7:{s:9:\"type_lite\";s:8:\"quantity\";s:4:\"type\";s:8:\"quantity\";s:6:\"id_key\";i:0;s:4:\"name\";s:13:\"Dostępność\";s:6:\"values\";a:2:{i:0;a:2:{s:4:\"name\";s:12:\"Niedostępne\";s:3:\"nbr\";i:0;}i:1;a:2:{s:4:\"name\";s:11:\"W magazynie\";s:3:\"nbr\";i:2;}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:4;a:7:{s:9:\"type_lite\";s:12:\"manufacturer\";s:4:\"type\";s:12:\"manufacturer\";s:6:\"id_key\";i:0;s:4:\"name\";s:5:\"Marka\";s:6:\"values\";a:1:{i:2;a:2:{s:4:\"name\";s:10:\"NewBalance\";s:3:\"nbr\";s:1:\"2\";}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:5;a:7:{s:9:\"type_lite\";s:9:\"condition\";s:4:\"type\";s:9:\"condition\";s:6:\"id_key\";i:0;s:4:\"name\";s:5:\"Stan:\";s:6:\"values\";a:3:{s:3:\"new\";a:2:{s:4:\"name\";s:4:\"Nowy\";s:3:\"nbr\";s:1:\"2\";}s:4:\"used\";a:2:{s:4:\"name\";s:8:\"Używane\";s:3:\"nbr\";i:0;}s:11:\"refurbished\";a:2:{s:4:\"name\";s:9:\"Odnowione\";s:3:\"nbr\";i:0;}}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";s:1:\"0\";}i:6;a:0:{}i:7;a:12:{s:9:\"type_lite\";s:5:\"price\";s:4:\"type\";s:5:\"price\";s:6:\"id_key\";i:0;s:4:\"name\";s:4:\"Cena\";s:3:\"max\";d:492;s:3:\"min\";d:455;s:4:\"unit\";s:3:\"zł\";s:14:\"specifications\";a:10:{s:6:\"symbol\";a:11:{i:0;s:1:\",\";i:1;s:2:\" \";i:2;s:1:\";\";i:3;s:1:\"%\";i:4;s:1:\"-\";i:5;s:1:\"+\";i:6;s:1:\"E\";i:7;s:2:\"×\";i:8;s:3:\"‰\";i:9;s:3:\"∞\";i:10;s:3:\"NaN\";}s:12:\"currencyCode\";s:3:\"PLN\";s:14:\"currencySymbol\";s:3:\"zł\";s:15:\"positivePattern\";s:12:\"#,##0.00 ¤\";s:15:\"negativePattern\";s:13:\"-#,##0.00 ¤\";s:17:\"maxFractionDigits\";i:2;s:17:\"minFractionDigits\";i:2;s:12:\"groupingUsed\";b:1;s:16:\"primaryGroupSize\";i:3;s:18:\"secondaryGroupSize\";i:3;}s:17:\"filter_show_limit\";i:0;s:11:\"filter_type\";i:3;s:3:\"nbr\";i:2;s:5:\"value\";N;}}}');
/*!40000 ALTER TABLE `ps_layered_filter_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_filter_shop`
--

DROP TABLE IF EXISTS `ps_layered_filter_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_filter_shop` (
  `id_layered_filter` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_layered_filter`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_filter_shop`
--

LOCK TABLES `ps_layered_filter_shop` WRITE;
/*!40000 ALTER TABLE `ps_layered_filter_shop` DISABLE KEYS */;
INSERT INTO `ps_layered_filter_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_layered_filter_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_attribute_group`
--

DROP TABLE IF EXISTS `ps_layered_indexable_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_attribute_group`
--

LOCK TABLES `ps_layered_indexable_attribute_group` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_attribute_group` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_attribute_group_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_attribute_group_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_attribute_group_lang_value`
--

LOCK TABLES `ps_layered_indexable_attribute_group_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group_lang_value` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_attribute_group_lang_value` VALUES (5,1,'producent','');
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_group_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_attribute_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_attribute_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_attribute_lang_value`
--

LOCK TABLES `ps_layered_indexable_attribute_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_lang_value` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_attribute_lang_value` VALUES (29,1,'newbalance','');
/*!40000 ALTER TABLE `ps_layered_indexable_attribute_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_feature`
--

DROP TABLE IF EXISTS `ps_layered_indexable_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_feature`
--

LOCK TABLES `ps_layered_indexable_feature` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_feature` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_feature` VALUES (3,1);
/*!40000 ALTER TABLE `ps_layered_indexable_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_feature_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_feature_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_feature_lang_value`
--

LOCK TABLES `ps_layered_indexable_feature_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_lang_value` DISABLE KEYS */;
INSERT INTO `ps_layered_indexable_feature_lang_value` VALUES (3,1,'','');
/*!40000 ALTER TABLE `ps_layered_indexable_feature_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_indexable_feature_value_lang_value`
--

DROP TABLE IF EXISTS `ps_layered_indexable_feature_value_lang_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_indexable_feature_value_lang_value`
--

LOCK TABLES `ps_layered_indexable_feature_value_lang_value` WRITE;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_value_lang_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_layered_indexable_feature_value_lang_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_price_index`
--

DROP TABLE IF EXISTS `ps_layered_price_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` decimal(11,5) NOT NULL,
  `price_max` decimal(11,5) NOT NULL,
  `id_country` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_currency`,`id_shop`,`id_country`),
  KEY `id_currency` (`id_currency`),
  KEY `price_min` (`price_min`),
  KEY `price_max` (`price_max`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_price_index`
--

LOCK TABLES `ps_layered_price_index` WRITE;
/*!40000 ALTER TABLE `ps_layered_price_index` DISABLE KEYS */;
INSERT INTO `ps_layered_price_index` VALUES (0,1,1,0.00000,0.00000,14),(1,1,1,23.51760,23.51760,14),(2,1,1,35.32560,35.32560,14),(3,1,1,35.67000,35.67000,14),(4,1,1,35.67000,35.67000,14),(5,1,1,35.67000,35.67000,14),(6,1,1,14.63700,14.63700,14),(7,1,1,14.63700,14.63700,14),(8,1,1,14.63700,14.63700,14),(9,1,1,23.24700,23.24700,14),(10,1,1,23.24700,23.24700,14),(11,1,1,23.24700,23.24700,14),(12,1,1,11.07000,11.07000,14),(13,1,1,11.07000,11.07000,14),(14,1,1,11.07000,11.07000,14),(15,1,1,43.05000,43.05000,14),(16,1,1,15.86700,15.86700,14),(17,1,1,15.86700,15.86700,14),(18,1,1,15.86700,15.86700,14),(19,1,1,17.09700,17.09700,14),(20,1,1,492.00000,492.00000,14),(21,1,1,455.00000,455.00000,14),(22,1,1,0.00000,0.00000,14);
/*!40000 ALTER TABLE `ps_layered_price_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_layered_product_attribute`
--

DROP TABLE IF EXISTS `ps_layered_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_layered_product_attribute` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_attribute_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attribute`,`id_product`,`id_shop`),
  UNIQUE KEY `id_attribute_group` (`id_attribute_group`,`id_attribute`,`id_product`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_layered_product_attribute`
--

LOCK TABLES `ps_layered_product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_layered_product_attribute` DISABLE KEYS */;
INSERT INTO `ps_layered_product_attribute` VALUES (1,1,1,1),(1,2,1,1),(2,1,1,1),(2,2,1,1),(3,1,1,1),(3,2,1,1),(4,1,1,1),(4,2,1,1),(26,20,1,1),(26,21,1,1),(27,20,1,1),(27,21,1,1),(28,20,1,1),(28,21,1,1),(5,21,2,1),(8,1,2,1),(8,9,2,1),(8,10,2,1),(8,11,2,1),(11,1,2,1),(11,9,2,1),(11,10,2,1),(11,11,2,1),(13,20,2,1),(17,21,2,1),(19,3,3,1),(19,4,3,1),(19,5,3,1),(20,3,3,1),(20,4,3,1),(20,5,3,1),(21,3,3,1),(21,4,3,1),(21,5,3,1),(22,16,4,1),(22,17,4,1),(22,18,4,1),(23,16,4,1),(23,17,4,1),(23,18,4,1),(24,16,4,1),(24,17,4,1),(24,18,4,1),(25,16,4,1),(25,17,4,1),(25,18,4,1);
/*!40000 ALTER TABLE `ps_layered_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_link_block`
--

DROP TABLE IF EXISTS `ps_link_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_link_block` (
  `id_link_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_hook` int(1) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id_link_block`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_link_block`
--

LOCK TABLES `ps_link_block` WRITE;
/*!40000 ALTER TABLE `ps_link_block` DISABLE KEYS */;
INSERT INTO `ps_link_block` VALUES (1,35,0,'{\"cms\":[false],\"product\":[\"prices-drop\",\"new-products\",\"best-sales\"],\"static\":[false]}'),(2,35,1,'{\"cms\":{\"0\":\"1\",\"2\":\"3\",\"3\":\"4\"},\"static\":[\"contact\",\"sitemap\",\"stores\"],\"product\":[false]}');
/*!40000 ALTER TABLE `ps_link_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_link_block_lang`
--

DROP TABLE IF EXISTS `ps_link_block_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_link_block_lang` (
  `id_link_block` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `custom_content` text,
  PRIMARY KEY (`id_link_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_link_block_lang`
--

LOCK TABLES `ps_link_block_lang` WRITE;
/*!40000 ALTER TABLE `ps_link_block_lang` DISABLE KEYS */;
INSERT INTO `ps_link_block_lang` VALUES (1,1,'Produkty',NULL),(2,1,'Nasza firma',NULL);
/*!40000 ALTER TABLE `ps_link_block_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_link_block_shop`
--

DROP TABLE IF EXISTS `ps_link_block_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_link_block_shop` (
  `id_link_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_link_block`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_link_block_shop`
--

LOCK TABLES `ps_link_block_shop` WRITE;
/*!40000 ALTER TABLE `ps_link_block_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_link_block_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_linksmenutop`
--

DROP TABLE IF EXISTS `ps_linksmenutop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_linksmenutop` (
  `id_linksmenutop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_linksmenutop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_linksmenutop`
--

LOCK TABLES `ps_linksmenutop` WRITE;
/*!40000 ALTER TABLE `ps_linksmenutop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_linksmenutop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_linksmenutop_lang`
--

DROP TABLE IF EXISTS `ps_linksmenutop_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_linksmenutop_lang` (
  `id_linksmenutop` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_linksmenutop_lang`
--

LOCK TABLES `ps_linksmenutop_lang` WRITE;
/*!40000 ALTER TABLE `ps_linksmenutop_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_linksmenutop_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_log`
--

DROP TABLE IF EXISTS `ps_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_log` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_log`
--

LOCK TABLES `ps_log` WRITE;
/*!40000 ALTER TABLE `ps_log` DISABLE KEYS */;
INSERT INTO `ps_log` VALUES (1,1,0,'Exporting mail with theme modern for language Polski (Polish)','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(2,1,0,'Core output folder: /var/www/html/mails','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(3,1,0,'Modules output folder: /var/www/html/modules/','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(4,1,0,'Generate html template account at /var/www/html/mails/pl/account.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(5,1,0,'Generate txt template account at /var/www/html/mails/pl/account.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(6,1,0,'Generate html template backoffice_order at /var/www/html/mails/pl/backoffice_order.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(7,1,0,'Generate txt template backoffice_order at /var/www/html/mails/pl/backoffice_order.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(8,1,0,'Generate html template bankwire at /var/www/html/mails/pl/bankwire.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(9,1,0,'Generate txt template bankwire at /var/www/html/mails/pl/bankwire.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(10,1,0,'Generate html template cheque at /var/www/html/mails/pl/cheque.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(11,1,0,'Generate txt template cheque at /var/www/html/mails/pl/cheque.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(12,1,0,'Generate html template contact at /var/www/html/mails/pl/contact.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(13,1,0,'Generate txt template contact at /var/www/html/mails/pl/contact.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(14,1,0,'Generate html template contact_form at /var/www/html/mails/pl/contact_form.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(15,1,0,'Generate txt template contact_form at /var/www/html/mails/pl/contact_form.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(16,1,0,'Generate html template credit_slip at /var/www/html/mails/pl/credit_slip.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(17,1,0,'Generate txt template credit_slip at /var/www/html/mails/pl/credit_slip.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(18,1,0,'Generate html template download_product at /var/www/html/mails/pl/download_product.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(19,1,0,'Generate txt template download_product at /var/www/html/mails/pl/download_product.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(20,1,0,'Generate html template employee_password at /var/www/html/mails/pl/employee_password.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(21,1,0,'Generate txt template employee_password at /var/www/html/mails/pl/employee_password.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(22,1,0,'Generate html template forward_msg at /var/www/html/mails/pl/forward_msg.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(23,1,0,'Generate txt template forward_msg at /var/www/html/mails/pl/forward_msg.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(24,1,0,'Generate html template guest_to_customer at /var/www/html/mails/pl/guest_to_customer.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(25,1,0,'Generate txt template guest_to_customer at /var/www/html/mails/pl/guest_to_customer.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(26,1,0,'Generate html template import at /var/www/html/mails/pl/import.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(27,1,0,'Generate txt template import at /var/www/html/mails/pl/import.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(28,1,0,'Generate html template in_transit at /var/www/html/mails/pl/in_transit.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(29,1,0,'Generate txt template in_transit at /var/www/html/mails/pl/in_transit.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(30,1,0,'Generate html template log_alert at /var/www/html/mails/pl/log_alert.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(31,1,0,'Generate txt template log_alert at /var/www/html/mails/pl/log_alert.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(32,1,0,'Generate html template newsletter at /var/www/html/mails/pl/newsletter.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(33,1,0,'Generate txt template newsletter at /var/www/html/mails/pl/newsletter.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(34,1,0,'Generate html template order_canceled at /var/www/html/mails/pl/order_canceled.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(35,1,0,'Generate txt template order_canceled at /var/www/html/mails/pl/order_canceled.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(36,1,0,'Generate html template order_changed at /var/www/html/mails/pl/order_changed.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(37,1,0,'Generate txt template order_changed at /var/www/html/mails/pl/order_changed.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(38,1,0,'Generate html template order_conf at /var/www/html/mails/pl/order_conf.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(39,1,0,'Generate txt template order_conf at /var/www/html/mails/pl/order_conf.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(40,1,0,'Generate html template order_customer_comment at /var/www/html/mails/pl/order_customer_comment.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(41,1,0,'Generate txt template order_customer_comment at /var/www/html/mails/pl/order_customer_comment.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(42,1,0,'Generate html template order_merchant_comment at /var/www/html/mails/pl/order_merchant_comment.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(43,1,0,'Generate txt template order_merchant_comment at /var/www/html/mails/pl/order_merchant_comment.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(44,1,0,'Generate html template order_return_state at /var/www/html/mails/pl/order_return_state.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(45,1,0,'Generate txt template order_return_state at /var/www/html/mails/pl/order_return_state.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(46,1,0,'Generate html template outofstock at /var/www/html/mails/pl/outofstock.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(47,1,0,'Generate txt template outofstock at /var/www/html/mails/pl/outofstock.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(48,1,0,'Generate html template password at /var/www/html/mails/pl/password.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(49,1,0,'Generate txt template password at /var/www/html/mails/pl/password.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(50,1,0,'Generate html template password_query at /var/www/html/mails/pl/password_query.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(51,1,0,'Generate txt template password_query at /var/www/html/mails/pl/password_query.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(52,1,0,'Generate html template payment at /var/www/html/mails/pl/payment.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(53,1,0,'Generate txt template payment at /var/www/html/mails/pl/payment.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(54,1,0,'Generate html template payment_error at /var/www/html/mails/pl/payment_error.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(55,1,0,'Generate txt template payment_error at /var/www/html/mails/pl/payment_error.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(56,1,0,'Generate html template preparation at /var/www/html/mails/pl/preparation.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(57,1,0,'Generate txt template preparation at /var/www/html/mails/pl/preparation.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(58,1,0,'Generate html template productoutofstock at /var/www/html/mails/pl/productoutofstock.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(59,1,0,'Generate txt template productoutofstock at /var/www/html/mails/pl/productoutofstock.txt','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(60,1,0,'Generate html template refund at /var/www/html/mails/pl/refund.html','',0,0,'2020-11-30 19:28:28','2020-11-30 19:28:28'),(61,1,0,'Generate txt template refund at /var/www/html/mails/pl/refund.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(62,1,0,'Generate html template reply_msg at /var/www/html/mails/pl/reply_msg.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(63,1,0,'Generate txt template reply_msg at /var/www/html/mails/pl/reply_msg.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(64,1,0,'Generate html template shipped at /var/www/html/mails/pl/shipped.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(65,1,0,'Generate txt template shipped at /var/www/html/mails/pl/shipped.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(66,1,0,'Generate html template test at /var/www/html/mails/pl/test.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(67,1,0,'Generate txt template test at /var/www/html/mails/pl/test.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(68,1,0,'Generate html template voucher at /var/www/html/mails/pl/voucher.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(69,1,0,'Generate txt template voucher at /var/www/html/mails/pl/voucher.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(70,1,0,'Generate html template voucher_new at /var/www/html/mails/pl/voucher_new.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(71,1,0,'Generate txt template voucher_new at /var/www/html/mails/pl/voucher_new.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(72,1,0,'Generate html template followup_1 at /var/www/html/modules//followup/mails/pl/followup_1.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(73,1,0,'Generate txt template followup_1 at /var/www/html/modules//followup/mails/pl/followup_1.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(74,1,0,'Generate html template followup_2 at /var/www/html/modules//followup/mails/pl/followup_2.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(75,1,0,'Generate txt template followup_2 at /var/www/html/modules//followup/mails/pl/followup_2.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(76,1,0,'Generate html template followup_3 at /var/www/html/modules//followup/mails/pl/followup_3.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(77,1,0,'Generate txt template followup_3 at /var/www/html/modules//followup/mails/pl/followup_3.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(78,1,0,'Generate html template followup_4 at /var/www/html/modules//followup/mails/pl/followup_4.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(79,1,0,'Generate txt template followup_4 at /var/www/html/modules//followup/mails/pl/followup_4.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(80,1,0,'Generate html template customer_qty at /var/www/html/modules//ps_emailalerts/mails/pl/customer_qty.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(81,1,0,'Generate txt template customer_qty at /var/www/html/modules//ps_emailalerts/mails/pl/customer_qty.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(82,1,0,'Generate html template new_order at /var/www/html/modules//ps_emailalerts/mails/pl/new_order.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(83,1,0,'Generate txt template new_order at /var/www/html/modules//ps_emailalerts/mails/pl/new_order.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(84,1,0,'Generate html template order_changed at /var/www/html/modules//ps_emailalerts/mails/pl/order_changed.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(85,1,0,'Generate txt template order_changed at /var/www/html/modules//ps_emailalerts/mails/pl/order_changed.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(86,1,0,'Generate html template productcoverage at /var/www/html/modules//ps_emailalerts/mails/pl/productcoverage.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(87,1,0,'Generate txt template productcoverage at /var/www/html/modules//ps_emailalerts/mails/pl/productcoverage.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(88,1,0,'Generate html template productoutofstock at /var/www/html/modules//ps_emailalerts/mails/pl/productoutofstock.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(89,1,0,'Generate txt template productoutofstock at /var/www/html/modules//ps_emailalerts/mails/pl/productoutofstock.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(90,1,0,'Generate html template return_slip at /var/www/html/modules//ps_emailalerts/mails/pl/return_slip.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(91,1,0,'Generate txt template return_slip at /var/www/html/modules//ps_emailalerts/mails/pl/return_slip.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(92,1,0,'Generate html template newsletter_conf at /var/www/html/modules//ps_emailsubscription/mails/pl/newsletter_conf.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(93,1,0,'Generate txt template newsletter_conf at /var/www/html/modules//ps_emailsubscription/mails/pl/newsletter_conf.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(94,1,0,'Generate html template newsletter_verif at /var/www/html/modules//ps_emailsubscription/mails/pl/newsletter_verif.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(95,1,0,'Generate txt template newsletter_verif at /var/www/html/modules//ps_emailsubscription/mails/pl/newsletter_verif.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(96,1,0,'Generate html template newsletter_voucher at /var/www/html/modules//ps_emailsubscription/mails/pl/newsletter_voucher.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(97,1,0,'Generate txt template newsletter_voucher at /var/www/html/modules//ps_emailsubscription/mails/pl/newsletter_voucher.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(98,1,0,'Generate html template referralprogram-congratulations at /var/www/html/modules//referralprogram/mails/pl/referralprogram-congratulations.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(99,1,0,'Generate txt template referralprogram-congratulations at /var/www/html/modules//referralprogram/mails/pl/referralprogram-congratulations.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(100,1,0,'Generate html template referralprogram-invitation at /var/www/html/modules//referralprogram/mails/pl/referralprogram-invitation.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(101,1,0,'Generate txt template referralprogram-invitation at /var/www/html/modules//referralprogram/mails/pl/referralprogram-invitation.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(102,1,0,'Generate html template referralprogram-voucher at /var/www/html/modules//referralprogram/mails/pl/referralprogram-voucher.html','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(103,1,0,'Generate txt template referralprogram-voucher at /var/www/html/modules//referralprogram/mails/pl/referralprogram-voucher.txt','',0,0,'2020-11-30 19:28:29','2020-11-30 19:28:29'),(104,1,0,'Protect vendor folder in module contactform','',0,1,'2020-11-30 19:28:32','2020-11-30 19:28:32'),(105,1,0,'Module contactform has no vendor folder','',0,1,'2020-11-30 19:28:32','2020-11-30 19:28:32'),(106,1,0,'Protect vendor folder in module dashactivity','',0,1,'2020-11-30 19:28:32','2020-11-30 19:28:32'),(107,1,0,'Module dashactivity has no vendor folder','',0,1,'2020-11-30 19:28:32','2020-11-30 19:28:32'),(108,1,0,'Protect vendor folder in module dashtrends','',0,1,'2020-11-30 19:28:32','2020-11-30 19:28:32'),(109,1,0,'Module dashtrends has no vendor folder','',0,1,'2020-11-30 19:28:32','2020-11-30 19:28:32'),(110,1,0,'Protect vendor folder in module dashgoals','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(111,1,0,'Module dashgoals has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(112,1,0,'Protect vendor folder in module dashproducts','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(113,1,0,'Module dashproducts has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(114,1,0,'Protect vendor folder in module graphnvd3','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(115,1,0,'Module graphnvd3 has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(116,1,0,'Protect vendor folder in module gridhtml','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(117,1,0,'Module gridhtml has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(118,1,0,'Protect vendor folder in module gsitemap','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(119,1,0,'Module gsitemap has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(120,1,0,'Protect vendor folder in module ps_banner','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(121,1,0,'Module ps_banner has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(122,1,0,'Protect vendor folder in module ps_categorytree','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(123,1,0,'Module ps_categorytree has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(124,1,0,'Protect vendor folder in module ps_checkpayment','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(125,1,0,'Module ps_checkpayment has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(126,1,0,'Protect vendor folder in module ps_contactinfo','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(127,1,0,'Module ps_contactinfo has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(128,1,0,'Protect vendor folder in module ps_currencyselector','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(129,1,0,'Module ps_currencyselector has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(130,1,0,'Protect vendor folder in module ps_customeraccountlinks','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(131,1,0,'Module ps_customeraccountlinks has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(132,1,0,'Protect vendor folder in module ps_customersignin','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(133,1,0,'Module ps_customersignin has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(134,1,0,'Protect vendor folder in module ps_customtext','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(135,1,0,'Module ps_customtext has no vendor folder','',0,1,'2020-11-30 19:28:33','2020-11-30 19:28:33'),(136,1,0,'Protect vendor folder in module ps_emailsubscription','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(137,1,0,'Module ps_emailsubscription has no vendor folder','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(138,1,0,'Protect vendor folder in module ps_facetedsearch','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(139,1,0,'Module ps_facetedsearch has no vendor folder','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(140,1,0,'Protect vendor folder in module ps_faviconnotificationbo','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(141,1,0,'Module ps_faviconnotificationbo has no vendor folder','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(142,1,0,'Protect vendor folder in module ps_featuredproducts','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(143,1,0,'Module ps_featuredproducts has no vendor folder','',0,1,'2020-11-30 19:28:34','2020-11-30 19:28:34'),(144,1,0,'Protect vendor folder in module ps_imageslider','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(145,1,0,'Module ps_imageslider has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(146,1,0,'Protect vendor folder in module ps_languageselector','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(147,1,0,'Module ps_languageselector has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(148,1,0,'Protect vendor folder in module ps_linklist','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(149,1,0,'Module ps_linklist has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(150,3,0,'Class \\\"AdminLinkWidgetController\\\" not found in controllers/admin','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(151,1,0,'Protect vendor folder in module ps_mainmenu','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(152,1,0,'Module ps_mainmenu has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(153,1,0,'Protect vendor folder in module ps_searchbar','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(154,1,0,'Module ps_searchbar has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(155,1,0,'Protect vendor folder in module ps_sharebuttons','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(156,1,0,'Module ps_sharebuttons has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(157,1,0,'Protect vendor folder in module ps_shoppingcart','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(158,1,0,'Module ps_shoppingcart has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(159,1,0,'Protect vendor folder in module ps_socialfollow','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(160,1,0,'Module ps_socialfollow has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(161,1,0,'Protect vendor folder in module ps_themecusto','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(162,1,0,'Module ps_themecusto has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(163,1,0,'Protect vendor folder in module ps_wirepayment','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(164,1,0,'Module ps_wirepayment has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(165,1,0,'Protect vendor folder in module pagesnotfound','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(166,1,0,'Module pagesnotfound has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(167,1,0,'Protect vendor folder in module sekeywords','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(168,1,0,'Module sekeywords has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(169,1,0,'Protect vendor folder in module statsbestcategories','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(170,1,0,'Module statsbestcategories has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(171,1,0,'Protect vendor folder in module statsbestcustomers','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(172,1,0,'Module statsbestcustomers has no vendor folder','',0,1,'2020-11-30 19:28:35','2020-11-30 19:28:35'),(173,1,0,'Protect vendor folder in module statsbestproducts','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(174,1,0,'Module statsbestproducts has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(175,1,0,'Protect vendor folder in module statsbestsuppliers','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(176,1,0,'Module statsbestsuppliers has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(177,1,0,'Protect vendor folder in module statsbestvouchers','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(178,1,0,'Module statsbestvouchers has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(179,1,0,'Protect vendor folder in module statscarrier','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(180,1,0,'Module statscarrier has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(181,1,0,'Protect vendor folder in module statscatalog','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(182,1,0,'Module statscatalog has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(183,1,0,'Protect vendor folder in module statscheckup','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(184,1,0,'Module statscheckup has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(185,1,0,'Protect vendor folder in module statsdata','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(186,1,0,'Module statsdata has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(187,1,0,'Protect vendor folder in module statsequipment','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(188,1,0,'Module statsequipment has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(189,1,0,'Protect vendor folder in module statsforecast','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(190,1,0,'Module statsforecast has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(191,1,0,'Protect vendor folder in module statslive','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(192,1,0,'Module statslive has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(193,1,0,'Protect vendor folder in module statsnewsletter','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(194,1,0,'Module statsnewsletter has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(195,1,0,'Protect vendor folder in module statsorigin','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(196,1,0,'Module statsorigin has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(197,1,0,'Protect vendor folder in module statspersonalinfos','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(198,1,0,'Module statspersonalinfos has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(199,1,0,'Protect vendor folder in module statsproduct','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(200,1,0,'Module statsproduct has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(201,1,0,'Protect vendor folder in module statsregistrations','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(202,1,0,'Module statsregistrations has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(203,1,0,'Protect vendor folder in module statssales','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(204,1,0,'Module statssales has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(205,1,0,'Protect vendor folder in module statssearch','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(206,1,0,'Module statssearch has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(207,1,0,'Protect vendor folder in module statsstock','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(208,1,0,'Module statsstock has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(209,1,0,'Protect vendor folder in module statsvisits','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(210,1,0,'Module statsvisits has no vendor folder','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(211,1,0,'Protect vendor folder in module welcome','',0,1,'2020-11-30 19:28:36','2020-11-30 19:28:36'),(212,1,0,'Protect vendor folder in module gamification','',0,1,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(213,1,0,'Protect vendor folder in module emarketing','',0,1,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(214,1,0,'Protect vendor folder in module psaddonsconnect','',0,1,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(215,1,0,'Protect vendor folder in module psgdpr','',0,1,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(216,1,0,'Protect vendor folder in module ps_mbo','',0,1,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(217,1,0,'Protect vendor folder in module ps_buybuttonlite','',0,1,'2020-11-30 19:28:44','2020-11-30 19:28:44'),(218,1,0,'Protect vendor folder in module blockreassurance','',0,1,'2020-11-30 19:28:48','2020-11-30 19:28:48'),(219,1,0,'Module blockreassurance has no vendor folder','',0,1,'2020-11-30 19:28:48','2020-11-30 19:28:48'),(220,1,0,'Połączenie z panelem administracyjnym z 172.18.0.1','',0,1,'2020-11-30 19:31:09','2020-11-30 19:31:09'),(221,1,0,'Połączenie z panelem administracyjnym z 172.18.0.1','',0,1,'2020-12-01 19:18:36','2020-12-01 19:18:36'),(222,1,0,'Products deleted: (19).','',0,1,'2020-12-01 19:22:52','2020-12-01 19:22:52'),(223,1,0,'Products deleted: (18).','',0,1,'2020-12-01 19:22:53','2020-12-01 19:22:53'),(224,1,0,'Products deleted: (17).','',0,1,'2020-12-01 19:22:54','2020-12-01 19:22:54'),(225,1,0,'Products deleted: (16).','',0,1,'2020-12-01 19:22:54','2020-12-01 19:22:54'),(226,1,0,'Products deleted: (15).','',0,1,'2020-12-01 19:22:55','2020-12-01 19:22:55'),(227,1,0,'Products deleted: (14).','',0,1,'2020-12-01 19:22:55','2020-12-01 19:22:55'),(228,1,0,'Products deleted: (13).','',0,1,'2020-12-01 19:22:56','2020-12-01 19:22:56'),(229,1,0,'Products deleted: (12).','',0,1,'2020-12-01 19:22:57','2020-12-01 19:22:57'),(230,1,0,'Products deleted: (11).','',0,1,'2020-12-01 19:22:57','2020-12-01 19:22:57'),(231,1,0,'Products deleted: (10).','',0,1,'2020-12-01 19:22:58','2020-12-01 19:22:58'),(232,1,0,'Products deleted: (9).','',0,1,'2020-12-01 19:22:59','2020-12-01 19:22:59'),(233,1,0,'Products deleted: (8).','',0,1,'2020-12-01 19:23:00','2020-12-01 19:23:00'),(234,1,0,'Products deleted: (7).','',0,1,'2020-12-01 19:23:00','2020-12-01 19:23:00'),(235,1,0,'Products deleted: (6).','',0,1,'2020-12-01 19:23:01','2020-12-01 19:23:01'),(236,1,0,'Products deleted: (5).','',0,1,'2020-12-01 19:23:01','2020-12-01 19:23:01'),(237,1,0,'Products deleted: (4).','',0,1,'2020-12-01 19:23:02','2020-12-01 19:23:02'),(238,1,0,'Products deleted: (3).','',0,1,'2020-12-01 19:23:03','2020-12-01 19:23:03'),(239,1,0,'Products deleted: (2).','',0,1,'2020-12-01 19:23:04','2020-12-01 19:23:04'),(240,1,0,'Products deleted: (1).','',0,1,'2020-12-01 19:23:05','2020-12-01 19:23:05'),(241,1,0,'Product modification','Product',20,1,'2020-12-01 19:29:25','2020-12-01 19:29:25'),(242,1,0,'Product modification','Product',20,1,'2020-12-01 19:29:46','2020-12-01 19:29:46'),(243,1,0,'Product modification','Product',20,1,'2020-12-01 19:29:50','2020-12-01 19:29:50'),(244,1,0,'Product modification','Product',20,1,'2020-12-01 19:29:52','2020-12-01 19:29:52'),(245,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',6,0,'2020-12-01 19:31:40','2020-12-01 19:31:40'),(246,1,0,'usunięcie Feature','Feature',1,1,'2020-12-01 19:38:08','2020-12-01 19:38:08'),(247,1,0,'usunięcie Feature','Feature',2,1,'2020-12-01 19:38:08','2020-12-01 19:38:08'),(248,1,0,'Product modification','Product',20,1,'2020-12-01 19:39:36','2020-12-01 19:39:36'),(249,1,0,'Product modification','Product',20,1,'2020-12-01 19:39:44','2020-12-01 19:39:44'),(250,1,0,'dodanie Attribute','Attribute',26,1,'2020-12-01 19:41:27','2020-12-01 19:41:27'),(251,1,0,'dodanie Attribute','Attribute',27,1,'2020-12-01 19:41:30','2020-12-01 19:41:30'),(252,1,0,'dodanie Attribute','Attribute',28,1,'2020-12-01 19:41:33','2020-12-01 19:41:33'),(253,1,0,'dodanie Feature','Feature',3,1,'2020-12-01 19:42:17','2020-12-01 19:42:17'),(254,1,0,'dodanie FeatureValue','FeatureValue',11,1,'2020-12-01 19:42:24','2020-12-01 19:42:24'),(255,1,0,'dodanie FeatureValue','FeatureValue',12,1,'2020-12-01 19:42:26','2020-12-01 19:42:26'),(256,1,0,'dodanie FeatureValue','FeatureValue',13,1,'2020-12-01 19:42:29','2020-12-01 19:42:29'),(257,1,0,'Product modification','Product',20,1,'2020-12-01 19:44:25','2020-12-01 19:44:25'),(258,1,0,'Product modification','Product',20,1,'2020-12-01 19:44:59','2020-12-01 19:44:59'),(259,1,0,'Product modification','Product',20,1,'2020-12-01 19:45:02','2020-12-01 19:45:02'),(260,1,0,'Product modification','Product',20,1,'2020-12-01 19:45:49','2020-12-01 19:45:49'),(261,1,0,'Product modification','Product',20,1,'2020-12-01 19:46:18','2020-12-01 19:46:18'),(262,1,0,'Product modification','Product',20,1,'2020-12-01 19:46:26','2020-12-01 19:46:26'),(263,1,0,'Product modification','Product',21,1,'2020-12-01 19:51:26','2020-12-01 19:51:26'),(264,1,0,'Product modification','Product',21,1,'2020-12-01 19:51:57','2020-12-01 19:51:57'),(265,1,0,'Product modification','Product',21,1,'2020-12-01 19:52:02','2020-12-01 19:52:02'),(266,1,0,'Product modification','Product',21,1,'2020-12-01 19:52:05','2020-12-01 19:52:05'),(267,1,0,'Protect vendor folder in module paypal','',0,1,'2020-12-01 19:56:48','2020-12-01 19:56:48'),(268,1,0,'Protect vendor folder in module ps_cashondelivery','',0,1,'2020-12-01 19:56:54','2020-12-01 19:56:54'),(269,1,0,'dodanie SpecificPriceRule','SpecificPriceRule',1,1,'2020-12-01 20:49:00','2020-12-01 20:49:00'),(270,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',1,1,'2020-12-01 20:51:06','2020-12-01 20:51:06'),(271,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',1,1,'2020-12-01 20:51:50','2020-12-01 20:51:50'),(272,1,0,'dodanie SpecificPriceRule','SpecificPriceRule',2,1,'2020-12-01 20:52:48','2020-12-01 20:52:48'),(273,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',2,1,'2020-12-01 20:53:15','2020-12-01 20:53:15'),(274,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',2,1,'2020-12-01 20:57:27','2020-12-01 20:57:27'),(275,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',1,1,'2020-12-01 21:01:05','2020-12-01 21:01:05'),(276,1,0,'usunięcie SpecificPriceRule','SpecificPriceRule',2,1,'2020-12-01 21:01:27','2020-12-01 21:01:27'),(277,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',1,1,'2020-12-01 21:01:59','2020-12-01 21:01:59'),(278,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',1,1,'2020-12-01 21:02:54','2020-12-01 21:02:54'),(279,1,0,'dodanie SpecificPriceRule','SpecificPriceRule',3,1,'2020-12-01 21:03:40','2020-12-01 21:03:40'),(280,1,0,'Product modification','Product',20,1,'2020-12-01 21:08:08','2020-12-01 21:08:08'),(281,1,0,'Product modification','Product',20,1,'2020-12-01 21:08:17','2020-12-01 21:08:17'),(282,1,0,'Product modification','Product',20,1,'2020-12-01 21:08:23','2020-12-01 21:08:23'),(283,1,0,'Product modification','Product',21,1,'2020-12-01 21:08:52','2020-12-01 21:08:52'),(284,1,0,'Product modification','Product',21,1,'2020-12-01 21:09:01','2020-12-01 21:09:01'),(285,1,0,'Product modification','Product',21,1,'2020-12-01 21:10:13','2020-12-01 21:10:13'),(286,1,0,'Product modification','Product',21,1,'2020-12-01 21:10:20','2020-12-01 21:10:20'),(287,1,0,'Product modification','Product',21,1,'2020-12-01 21:10:58','2020-12-01 21:10:58'),(288,1,0,'SpecificPriceRule modyfikacja','SpecificPriceRule',3,1,'2020-12-01 21:12:16','2020-12-01 21:12:16'),(289,1,0,'dodanie AttributeGroup','AttributeGroup',5,1,'2020-12-01 21:19:00','2020-12-01 21:19:00'),(290,1,0,'dodanie Attribute','Attribute',29,1,'2020-12-01 21:19:27','2020-12-01 21:19:27'),(291,1,0,'Product modification','Product',20,1,'2020-12-01 21:24:02','2020-12-01 21:24:02'),(292,1,0,'Product modification','Product',20,1,'2020-12-01 21:24:11','2020-12-01 21:24:11'),(293,1,0,'Product modification','Product',21,1,'2020-12-01 21:24:45','2020-12-01 21:24:45'),(294,1,0,'Product modification','Product',21,1,'2020-12-01 21:24:57','2020-12-01 21:24:57'),(295,1,0,'Product modification','Product',21,1,'2020-12-01 21:25:37','2020-12-01 21:25:37'),(296,1,0,'Product modification','Product',21,1,'2020-12-01 21:25:48','2020-12-01 21:25:48'),(297,1,0,'Product modification','Product',21,1,'2020-12-01 21:25:51','2020-12-01 21:25:51'),(298,1,0,'Product modification','Product',20,1,'2020-12-01 21:26:06','2020-12-01 21:26:06'),(299,1,0,'Product modification','Product',21,1,'2020-12-01 21:27:30','2020-12-01 21:27:30'),(300,1,0,'Product modification','Product',21,1,'2020-12-01 21:28:01','2020-12-01 21:28:01'),(301,1,0,'Product modification','Product',21,1,'2020-12-01 21:28:08','2020-12-01 21:28:08'),(302,1,0,'Product modification','Product',20,1,'2020-12-01 21:28:34','2020-12-01 21:28:34'),(303,1,0,'Product modification','Product',20,1,'2020-12-01 21:28:41','2020-12-01 21:28:41'),(304,1,0,'usunięcie AttributeGroup','AttributeGroup',5,1,'2020-12-01 21:31:34','2020-12-01 21:31:34'),(305,1,0,'Product modification','Product',20,1,'2020-12-01 21:32:07','2020-12-01 21:32:07'),(306,1,0,'Product modification','Product',21,1,'2020-12-01 21:32:20','2020-12-01 21:32:20'),(307,1,0,'Product modification','Product',20,1,'2020-12-01 21:34:04','2020-12-01 21:34:04'),(308,1,0,'Product modification','Product',21,1,'2020-12-01 21:34:25','2020-12-01 21:34:25'),(309,1,0,'Product modification','Product',21,1,'2020-12-01 21:34:28','2020-12-01 21:34:28'),(310,1,0,'Product modification','Product',21,1,'2020-12-01 21:34:35','2020-12-01 21:34:35'),(311,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',8,0,'2020-12-02 18:10:46','2020-12-02 18:10:46'),(312,1,0,'usunięcie Store','Store',2,1,'2020-12-02 18:36:27','2020-12-02 18:36:27'),(313,1,0,'usunięcie Store','Store',3,1,'2020-12-02 18:36:27','2020-12-02 18:36:27'),(314,1,0,'usunięcie Store','Store',4,1,'2020-12-02 18:36:27','2020-12-02 18:36:27'),(315,1,0,'usunięcie Store','Store',5,1,'2020-12-02 18:36:27','2020-12-02 18:36:27'),(316,1,0,'Store modyfikacja','Store',1,1,'2020-12-02 18:38:00','2020-12-02 18:38:00'),(317,1,0,'Store modyfikacja','Store',1,1,'2020-12-02 18:43:45','2020-12-02 18:43:45'),(318,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',10,0,'2020-12-02 19:47:26','2020-12-02 19:47:26'),(319,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',11,0,'2020-12-06 15:36:17','2020-12-06 15:36:17'),(320,1,0,'Połączenie z panelem administracyjnym z 172.21.0.1','',0,1,'2020-12-06 15:42:15','2020-12-06 15:42:15'),(321,3,0,'The addon with id 29992 does not have name.','',0,1,'2020-12-06 15:43:20','2020-12-06 15:43:20'),(322,1,0,'Połączenie z panelem administracyjnym z 172.21.0.1','',0,1,'2020-12-06 16:14:07','2020-12-06 16:14:07'),(323,1,0,'Połączenie z panelem administracyjnym z 172.21.0.1','',0,1,'2020-12-14 18:25:23','2020-12-14 18:25:23'),(324,3,0,'You must specify as many arguments (%d, %s ...) as the original string.','',0,1,'2020-12-14 18:27:27','2020-12-14 18:27:27'),(325,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',13,0,'2020-12-14 18:34:48','2020-12-14 18:34:48'),(326,1,0,'Połączenie z panelem administracyjnym z 172.20.0.1','',0,1,'2020-12-16 19:00:23','2020-12-16 19:00:23'),(327,1,0,'Połączenie z panelem administracyjnym z 172.20.0.1','',0,1,'2020-12-17 00:24:29','2020-12-17 00:24:29'),(328,1,0,'Product modification','Product',20,1,'2020-12-17 00:49:17','2020-12-17 00:49:17'),(329,1,0,'Połączenie z panelem administracyjnym z 172.27.0.1','',0,1,'2020-12-18 00:05:17','2020-12-18 00:05:17'),(330,1,0,'Protect vendor folder in module ps_googleanalytics','',0,1,'2020-12-18 00:15:51','2020-12-18 00:15:51'),(331,1,0,'Połączenie z panelem administracyjnym z 172.27.0.1','',0,1,'2020-12-18 00:35:28','2020-12-18 00:35:28'),(332,1,0,'Protect vendor folder in module ps_reminder','',0,1,'2020-12-18 00:38:21','2020-12-18 00:38:21'),(333,1,0,'Protect vendor folder in module ps_emailsmanager','',0,1,'2020-12-18 00:38:28','2020-12-18 00:38:28'),(334,1,0,'Module ps_emailsmanager has no vendor folder','',0,1,'2020-12-18 00:38:28','2020-12-18 00:38:28'),(335,1,0,'Protect vendor folder in module sendinblue','',0,1,'2020-12-18 01:43:59','2020-12-18 01:43:59'),(336,1,0,'Module sendinblue has no vendor folder','',0,1,'2020-12-18 01:43:59','2020-12-18 01:43:59'),(337,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',15,0,'2020-12-18 01:48:53','2020-12-18 01:48:53'),(338,1,0,'OrderMessage modyfikacja','OrderMessage',1,1,'2020-12-18 02:17:29','2020-12-18 02:17:29'),(339,1,0,'Połączenie z panelem administracyjnym z 172.21.0.1','',0,1,'2020-12-18 18:57:45','2020-12-18 18:57:45'),(340,1,0,'Frontcontroller::init - Cart cannot be loaded or an order has already been placed using this cart','Cart',16,0,'2020-12-18 18:58:57','2020-12-18 18:58:57');
/*!40000 ALTER TABLE `ps_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_log_email`
--

DROP TABLE IF EXISTS `ps_log_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_log_email` (
  `id_log_email` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_email_type` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_log_email`),
  KEY `date_add` (`date_add`),
  KEY `id_cart` (`id_cart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_log_email`
--

LOCK TABLES `ps_log_email` WRITE;
/*!40000 ALTER TABLE `ps_log_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_log_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_mail`
--

DROP TABLE IF EXISTS `ps_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_mail` (
  `id_mail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(126) NOT NULL,
  `template` varchar(62) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mail`),
  KEY `recipient` (`recipient`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_mail`
--

LOCK TABLES `ps_mail` WRITE;
/*!40000 ALTER TABLE `ps_mail` DISABLE KEYS */;
INSERT INTO `ps_mail` VALUES (1,'an@niepodam.pl','account','[eshoe-shop] Witaj !',1,'2020-12-18 01:39:19'),(2,'an@niepodam.pl','bankwire','[eshoe-shop] Oczekiwanie na płatność przelewem',1,'2020-12-18 01:48:50'),(3,'an@niepodam.pl','order_conf','[eshoe-shop] Potwierdzenie zamówienia',1,'2020-12-18 01:48:52'),(4,'kontakt@mp3store.pl','preparation','[eshoe-shop] Przygotowanie w toku',1,'2020-12-18 18:58:55'),(5,'kontakt@mp3store.pl','order_conf','[eshoe-shop] Potwierdzenie zamówienia',1,'2020-12-18 18:58:56');
/*!40000 ALTER TABLE `ps_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer`
--

DROP TABLE IF EXISTS `ps_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer`
--

LOCK TABLES `ps_manufacturer` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer` DISABLE KEYS */;
INSERT INTO `ps_manufacturer` VALUES (2,'NewBalance','2020-11-30 19:28:56','2020-12-01 21:33:33',1);
/*!40000 ALTER TABLE `ps_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer_lang`
--

DROP TABLE IF EXISTS `ps_manufacturer_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer_lang`
--

LOCK TABLES `ps_manufacturer_lang` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer_lang` DISABLE KEYS */;
INSERT INTO `ps_manufacturer_lang` VALUES (2,1,'','','NewBalance','','NewBalance');
/*!40000 ALTER TABLE `ps_manufacturer_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer_shop`
--

DROP TABLE IF EXISTS `ps_manufacturer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer_shop` (
  `id_manufacturer` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer_shop`
--

LOCK TABLES `ps_manufacturer_shop` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer_shop` DISABLE KEYS */;
INSERT INTO `ps_manufacturer_shop` VALUES (2,1);
/*!40000 ALTER TABLE `ps_manufacturer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_memcached_servers`
--

DROP TABLE IF EXISTS `ps_memcached_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_memcached_servers` (
  `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_memcached_servers`
--

LOCK TABLES `ps_memcached_servers` WRITE;
/*!40000 ALTER TABLE `ps_memcached_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_memcached_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message`
--

DROP TABLE IF EXISTS `ps_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message`
--

LOCK TABLES `ps_message` WRITE;
/*!40000 ALTER TABLE `ps_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message_readed`
--

DROP TABLE IF EXISTS `ps_message_readed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message_readed`
--

LOCK TABLES `ps_message_readed` WRITE;
/*!40000 ALTER TABLE `ps_message_readed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message_readed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta`
--

DROP TABLE IF EXISTS `ps_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_meta`),
  UNIQUE KEY `page` (`page`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta`
--

LOCK TABLES `ps_meta` WRITE;
/*!40000 ALTER TABLE `ps_meta` DISABLE KEYS */;
INSERT INTO `ps_meta` VALUES (1,'pagenotfound',1),(2,'best-sales',1),(3,'contact',1),(4,'index',1),(5,'manufacturer',1),(6,'new-products',1),(7,'password',1),(8,'prices-drop',1),(9,'sitemap',1),(10,'supplier',1),(11,'address',1),(12,'addresses',1),(13,'authentication',1),(14,'cart',1),(15,'discount',1),(16,'history',1),(17,'identity',1),(18,'my-account',1),(19,'order-follow',1),(20,'order-slip',1),(21,'order',1),(22,'search',1),(23,'stores',1),(24,'guest-tracking',1),(25,'order-confirmation',1),(26,'product',0),(27,'category',0),(28,'cms',0),(29,'module-cheque-payment',0),(30,'module-cheque-validation',0),(31,'module-bankwire-validation',0),(32,'module-bankwire-payment',0),(33,'module-cashondelivery-validation',0),(36,'module-ps_emailsubscription-verification',1),(37,'module-ps_emailsubscription-subscription',1),(38,'module-ps_shoppingcart-ajax',1),(41,'module-paypal-payment',1),(42,'module-paypal-validation',1),(44,'module-ps_cashondelivery-validation',1),(45,'module-ps_wirepayment-payment',1),(46,'module-ps_wirepayment-validation',1);
/*!40000 ALTER TABLE `ps_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta_lang`
--

DROP TABLE IF EXISTS `ps_meta_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta_lang`
--

LOCK TABLES `ps_meta_lang` WRITE;
/*!40000 ALTER TABLE `ps_meta_lang` DISABLE KEYS */;
INSERT INTO `ps_meta_lang` VALUES (1,1,1,'Błąd 404','Nie można odnaleźć strony','','nie-znaleziono-strony'),(2,1,1,'Najczęściej kupowane','Nasze najlepiej sprzedające się produkty','','najczesciej-kupowane'),(3,1,1,'Kontakt z nami','Skorzystaj z formularza kontaktowego','','kontakt'),(4,1,1,'','Sklep na oprogramowaniu PrestaShop','',''),(5,1,1,'Brands','Brands list','','brands'),(6,1,1,'Nowe produkty','Nasze nowe produkty','','nowe-produkty'),(7,1,1,'Zapomniałeś hasła','Wpisz swój adres e-mail w celu uzyskania nowego hasła','','odzyskiwanie-hasla'),(8,1,1,'Promocje','Our special products','','promocje'),(9,1,1,'Mapa strony','Zagubiłeś się? Znajdź to, czego szukasz!','','Mapa strony'),(10,1,1,'Dostawcy','Lista dostawców','','dostawcy'),(11,1,1,'Adres','','','adres'),(12,1,1,'Adresy','','','adresy'),(13,1,1,'Nazwa użytkowika','','','logowanie'),(14,1,1,'Koszyk','','','koszyk'),(15,1,1,'Rabat','','','rabaty'),(16,1,1,'Historia zamówień','','','historia-zamowien'),(17,1,1,'Dane osobiste','','','dane-osobiste'),(18,1,1,'Moje konto','','','moje-konto'),(19,1,1,'Śledzenie zamówienia','','','sledzenie-zamowienia'),(20,1,1,'Pokwitowanie - korekta kredytowa','','','potwierdzenie-zwrotu'),(21,1,1,'Zamówienie','','','zamówienie'),(22,1,1,'Szukaj','','','szukaj'),(23,1,1,'Sklepy','','','nasze-sklepy'),(24,1,1,'Śledzenie zamówień gości','','','sledzenie-zamowien-gosci'),(25,1,1,'Potwierdzenie zamówienia','','','potwierdzenie-zamowienia'),(36,1,1,'','','',''),(37,1,1,'','','',''),(38,1,1,'','','',''),(41,1,1,'','','',''),(42,1,1,'','','',''),(44,1,1,'','','',''),(45,1,1,'','','',''),(46,1,1,'','','','');
/*!40000 ALTER TABLE `ps_meta_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module`
--

DROP TABLE IF EXISTS `ps_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module`
--

LOCK TABLES `ps_module` WRITE;
/*!40000 ALTER TABLE `ps_module` DISABLE KEYS */;
INSERT INTO `ps_module` VALUES (1,'contactform',1,'4.3.0'),(2,'dashactivity',1,'2.0.2'),(3,'dashtrends',1,'2.0.2'),(4,'dashgoals',1,'2.0.2'),(5,'dashproducts',1,'2.0.4'),(6,'graphnvd3',1,'2.0.1'),(7,'gridhtml',1,'2.0.0'),(8,'gsitemap',1,'4.2.0'),(9,'ps_banner',1,'2.1.0'),(10,'ps_categorytree',1,'2.0.0'),(12,'ps_contactinfo',1,'3.2.0'),(13,'ps_currencyselector',1,'2.0.1'),(14,'ps_customeraccountlinks',1,'3.1.0'),(15,'ps_customersignin',1,'2.0.2'),(16,'ps_customtext',1,'4.1.0'),(17,'ps_emailsubscription',1,'2.6.0'),(19,'ps_faviconnotificationbo',1,'2.1.0'),(20,'ps_featuredproducts',1,'2.0.0'),(21,'ps_imageslider',1,'3.1.0'),(22,'ps_languageselector',1,'2.0.2'),(23,'ps_linklist',1,'3.1.0'),(24,'ps_mainmenu',1,'2.1.1'),(25,'ps_searchbar',1,'2.0.1'),(26,'ps_sharebuttons',1,'2.1.0'),(27,'ps_shoppingcart',1,'2.0.3'),(28,'ps_socialfollow',1,'2.1.0'),(29,'ps_themecusto',1,'1.2.0'),(31,'pagesnotfound',1,'2.0.0'),(32,'sekeywords',1,'2.0.0'),(33,'statsbestcategories',1,'2.0.0'),(34,'statsbestcustomers',1,'2.0.2'),(35,'statsbestproducts',1,'2.0.0'),(36,'statsbestsuppliers',1,'2.0.0'),(37,'statsbestvouchers',1,'2.0.0'),(38,'statscarrier',1,'2.0.0'),(39,'statscatalog',1,'2.0.1'),(40,'statscheckup',1,'2.0.1'),(41,'statsdata',1,'2.0.0'),(42,'statsequipment',1,'2.0.0'),(43,'statsforecast',1,'2.0.3'),(44,'statslive',1,'2.0.2'),(45,'statsnewsletter',1,'2.0.2'),(46,'statsorigin',1,'2.0.2'),(47,'statspersonalinfos',1,'2.0.3'),(48,'statsproduct',1,'2.0.3'),(49,'statsregistrations',1,'2.0.0'),(50,'statssales',1,'2.0.0'),(51,'statssearch',1,'2.0.1'),(52,'statsstock',1,'2.0.0'),(53,'statsvisits',1,'2.0.2'),(54,'welcome',1,'6.0.0'),(55,'gamification',1,'2.3.2'),(56,'emarketing',1,'2.2.0'),(57,'psaddonsconnect',1,'2.1.2'),(58,'psgdpr',1,'1.2.0'),(59,'ps_mbo',1,'2.0.1'),(60,'ps_buybuttonlite',1,'1.0.1'),(61,'blockreassurance',1,'3.0.1'),(62,'ps_facetedsearch',1,'3.5.0'),(63,'paypal',1,'5.3.0'),(65,'ps_cashondelivery',1,'1.0.6'),(66,'ps_wirepayment',1,'2.1.0'),(67,'ps_specials',1,'1.0.1'),(68,'ps_newproducts',1,'1.0.1'),(69,'ps_bestsellers',1,'1.0.3'),(70,'ps_googleanalytics',1,'4.0.0'),(71,'ps_reminder',1,'2.0.0');
/*!40000 ALTER TABLE `ps_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_access`
--

DROP TABLE IF EXISTS `ps_module_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_authorization_role` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_profile`,`id_authorization_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_access`
--

LOCK TABLES `ps_module_access` WRITE;
/*!40000 ALTER TABLE `ps_module_access` DISABLE KEYS */;
INSERT INTO `ps_module_access` VALUES (1,481),(1,482),(1,483),(1,484),(1,485),(1,486),(1,487),(1,488),(1,489),(1,490),(1,491),(1,492),(1,497),(1,498),(1,499),(1,500),(1,501),(1,502),(1,503),(1,504),(1,505),(1,506),(1,507),(1,508),(1,509),(1,510),(1,511),(1,512),(1,513),(1,514),(1,515),(1,516),(1,517),(1,518),(1,519),(1,520),(1,521),(1,522),(1,523),(1,524),(1,529),(1,530),(1,531),(1,532),(1,533),(1,534),(1,535),(1,536),(1,537),(1,538),(1,539),(1,540),(1,541),(1,542),(1,543),(1,544),(1,545),(1,546),(1,547),(1,548),(1,549),(1,550),(1,551),(1,552),(1,557),(1,558),(1,559),(1,560),(1,565),(1,566),(1,567),(1,568),(1,569),(1,570),(1,571),(1,572),(1,573),(1,574),(1,575),(1,576),(1,581),(1,582),(1,583),(1,584),(1,585),(1,586),(1,587),(1,588),(1,589),(1,590),(1,591),(1,592),(1,593),(1,594),(1,595),(1,596),(1,597),(1,598),(1,599),(1,600),(1,601),(1,602),(1,603),(1,604),(1,605),(1,606),(1,607),(1,608),(1,625),(1,626),(1,627),(1,628),(1,629),(1,630),(1,631),(1,632),(1,633),(1,634),(1,635),(1,636),(1,637),(1,638),(1,639),(1,640),(1,641),(1,642),(1,643),(1,644),(1,645),(1,646),(1,647),(1,648),(1,649),(1,650),(1,651),(1,652),(1,653),(1,654),(1,655),(1,656),(1,657),(1,658),(1,659),(1,660),(1,661),(1,662),(1,663),(1,664),(1,665),(1,666),(1,667),(1,668),(1,669),(1,670),(1,671),(1,672),(1,673),(1,674),(1,675),(1,676),(1,677),(1,678),(1,679),(1,680),(1,681),(1,682),(1,683),(1,684),(1,685),(1,686),(1,687),(1,688),(1,689),(1,690),(1,691),(1,692),(1,693),(1,694),(1,695),(1,696),(1,697),(1,698),(1,699),(1,700),(1,701),(1,702),(1,703),(1,704),(1,705),(1,706),(1,707),(1,708),(1,709),(1,710),(1,711),(1,712),(1,713),(1,714),(1,715),(1,716),(1,717),(1,718),(1,719),(1,720),(1,729),(1,730),(1,731),(1,732),(1,733),(1,734),(1,735),(1,736),(1,741),(1,742),(1,743),(1,744),(1,745),(1,746),(1,747),(1,748),(1,757),(1,758),(1,759),(1,760),(1,777),(1,778),(1,779),(1,780),(1,785),(1,786),(1,787),(1,788),(1,789),(1,790),(1,791),(1,792),(1,793),(1,794),(1,795),(1,796),(1,833),(1,834),(1,835),(1,836),(1,837),(1,838),(1,839),(1,840),(1,841),(1,842),(1,843),(1,844),(1,845),(1,846),(1,847),(1,848),(1,849),(1,850),(1,851),(1,852),(1,853),(1,854),(1,855),(1,856),(1,857),(1,858),(1,859),(1,860);
/*!40000 ALTER TABLE `ps_module_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_carrier`
--

DROP TABLE IF EXISTS `ps_module_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_carrier` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_reference` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_carrier`
--

LOCK TABLES `ps_module_carrier` WRITE;
/*!40000 ALTER TABLE `ps_module_carrier` DISABLE KEYS */;
INSERT INTO `ps_module_carrier` VALUES (65,1,1),(65,1,2),(65,1,5),(65,1,6),(66,1,1),(66,1,2),(66,1,5),(66,1,6);
/*!40000 ALTER TABLE `ps_module_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_country`
--

DROP TABLE IF EXISTS `ps_module_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_country`
--

LOCK TABLES `ps_module_country` WRITE;
/*!40000 ALTER TABLE `ps_module_country` DISABLE KEYS */;
INSERT INTO `ps_module_country` VALUES (63,1,6),(63,1,13),(63,1,14),(63,1,15),(63,1,17),(63,1,18),(63,1,19),(63,1,21),(63,1,23),(63,1,25),(63,1,27),(63,1,28),(63,1,30),(63,1,31),(63,1,33),(63,1,35),(63,1,36),(63,1,37),(63,1,107),(63,1,114),(63,1,136),(63,1,137),(63,1,138),(63,1,139),(63,1,140),(63,1,141),(63,1,142),(63,1,144),(63,1,145),(63,1,146),(63,1,147),(63,1,148),(63,1,149),(63,1,150),(63,1,151),(63,1,152),(63,1,153),(63,1,154),(63,1,155),(63,1,156),(63,1,157),(63,1,158),(63,1,159),(63,1,160),(63,1,161),(63,1,162),(63,1,163),(63,1,164),(63,1,165),(63,1,166),(63,1,167),(63,1,168),(63,1,169),(63,1,170),(63,1,171),(63,1,172),(63,1,173),(63,1,174),(63,1,175),(63,1,176),(63,1,177),(63,1,178),(63,1,179),(63,1,180),(63,1,181),(63,1,182),(63,1,183),(63,1,184),(63,1,185),(63,1,186),(63,1,187),(63,1,188),(63,1,189),(63,1,190),(63,1,191),(63,1,192),(63,1,193),(63,1,194),(63,1,195),(63,1,196),(63,1,197),(63,1,198),(63,1,199),(63,1,200),(63,1,201),(63,1,202),(63,1,203),(63,1,204),(63,1,205),(63,1,206),(63,1,207),(63,1,208),(63,1,209),(63,1,210),(63,1,211),(63,1,212),(63,1,213),(63,1,214),(63,1,215),(63,1,216),(63,1,217),(63,1,218),(63,1,219),(63,1,220),(63,1,221),(63,1,222),(63,1,223),(63,1,224),(63,1,225),(63,1,226),(63,1,227),(63,1,228),(63,1,229),(65,1,14),(66,1,14);
/*!40000 ALTER TABLE `ps_module_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_currency`
--

DROP TABLE IF EXISTS `ps_module_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_currency`
--

LOCK TABLES `ps_module_currency` WRITE;
/*!40000 ALTER TABLE `ps_module_currency` DISABLE KEYS */;
INSERT INTO `ps_module_currency` VALUES (63,1,-1),(65,1,1),(66,1,1);
/*!40000 ALTER TABLE `ps_module_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_group`
--

DROP TABLE IF EXISTS `ps_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_group`
--

LOCK TABLES `ps_module_group` WRITE;
/*!40000 ALTER TABLE `ps_module_group` DISABLE KEYS */;
INSERT INTO `ps_module_group` VALUES (1,1,1),(1,1,2),(1,1,3),(2,1,1),(2,1,2),(2,1,3),(3,1,1),(3,1,2),(3,1,3),(4,1,1),(4,1,2),(4,1,3),(5,1,1),(5,1,2),(5,1,3),(6,1,1),(6,1,2),(6,1,3),(7,1,1),(7,1,2),(7,1,3),(8,1,1),(8,1,2),(8,1,3),(9,1,1),(9,1,2),(9,1,3),(10,1,1),(10,1,2),(10,1,3),(12,1,1),(12,1,2),(12,1,3),(13,1,1),(13,1,2),(13,1,3),(14,1,1),(14,1,2),(14,1,3),(15,1,1),(15,1,2),(15,1,3),(16,1,1),(16,1,2),(16,1,3),(17,1,1),(17,1,2),(17,1,3),(19,1,1),(19,1,2),(19,1,3),(20,1,1),(20,1,2),(20,1,3),(21,1,1),(21,1,2),(21,1,3),(22,1,1),(22,1,2),(22,1,3),(23,1,1),(23,1,2),(23,1,3),(24,1,1),(24,1,2),(24,1,3),(25,1,1),(25,1,2),(25,1,3),(26,1,1),(26,1,2),(26,1,3),(27,1,1),(27,1,2),(27,1,3),(28,1,1),(28,1,2),(28,1,3),(29,1,1),(29,1,2),(29,1,3),(31,1,1),(31,1,2),(31,1,3),(32,1,1),(32,1,2),(32,1,3),(33,1,1),(33,1,2),(33,1,3),(34,1,1),(34,1,2),(34,1,3),(35,1,1),(35,1,2),(35,1,3),(36,1,1),(36,1,2),(36,1,3),(37,1,1),(37,1,2),(37,1,3),(38,1,1),(38,1,2),(38,1,3),(39,1,1),(39,1,2),(39,1,3),(40,1,1),(40,1,2),(40,1,3),(41,1,1),(41,1,2),(41,1,3),(42,1,1),(42,1,2),(42,1,3),(43,1,1),(43,1,2),(43,1,3),(44,1,1),(44,1,2),(44,1,3),(45,1,1),(45,1,2),(45,1,3),(46,1,1),(46,1,2),(46,1,3),(47,1,1),(47,1,2),(47,1,3),(48,1,1),(48,1,2),(48,1,3),(49,1,1),(49,1,2),(49,1,3),(50,1,1),(50,1,2),(50,1,3),(51,1,1),(51,1,2),(51,1,3),(52,1,1),(52,1,2),(52,1,3),(53,1,1),(53,1,2),(53,1,3),(54,1,1),(54,1,2),(54,1,3),(55,1,1),(55,1,2),(55,1,3),(56,1,1),(56,1,2),(56,1,3),(57,1,1),(57,1,2),(57,1,3),(58,1,1),(58,1,2),(58,1,3),(59,1,1),(59,1,2),(59,1,3),(60,1,1),(60,1,2),(60,1,3),(61,1,1),(61,1,2),(61,1,3),(62,1,1),(62,1,2),(62,1,3),(65,1,1),(65,1,2),(65,1,3),(66,1,1),(66,1,2),(66,1,3),(67,1,1),(67,1,2),(67,1,3),(68,1,1),(68,1,2),(68,1,3),(69,1,1),(69,1,2),(69,1,3),(70,1,1),(70,1,2),(70,1,3),(71,1,1),(71,1,2),(71,1,3);
/*!40000 ALTER TABLE `ps_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_history`
--

DROP TABLE IF EXISTS `ps_module_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_history`
--

LOCK TABLES `ps_module_history` WRITE;
/*!40000 ALTER TABLE `ps_module_history` DISABLE KEYS */;
INSERT INTO `ps_module_history` VALUES (1,1,11,'2020-12-01 19:54:00','2020-12-01 19:54:33'),(2,1,63,'2020-12-01 20:46:05','2020-12-01 20:46:05'),(3,1,30,'2020-12-01 21:36:28','2020-12-01 21:42:27'),(4,1,66,'2020-12-14 18:33:04','2020-12-14 18:33:04'),(5,1,70,'2020-12-18 00:15:59','2020-12-18 02:02:56'),(6,1,71,'2020-12-18 00:38:33','2020-12-18 02:19:57'),(7,1,72,'2020-12-18 01:02:32','2020-12-18 01:02:32'),(8,1,73,'2020-12-18 01:44:11','2020-12-18 01:44:11'),(9,1,17,'2020-12-18 02:24:08','2020-12-18 02:24:08');
/*!40000 ALTER TABLE `ps_module_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_preference`
--

DROP TABLE IF EXISTS `ps_module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_preference` (
  `id_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_preference`
--

LOCK TABLES `ps_module_preference` WRITE;
/*!40000 ALTER TABLE `ps_module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_shop`
--

DROP TABLE IF EXISTS `ps_module_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_shop` (
  `id_module` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7',
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_shop`
--

LOCK TABLES `ps_module_shop` WRITE;
/*!40000 ALTER TABLE `ps_module_shop` DISABLE KEYS */;
INSERT INTO `ps_module_shop` VALUES (1,1,7),(2,1,7),(3,1,7),(4,1,7),(5,1,7),(6,1,7),(7,1,7),(8,1,7),(9,1,3),(10,1,7),(12,1,7),(13,1,7),(14,1,7),(15,1,7),(16,1,7),(17,1,7),(19,1,7),(20,1,7),(22,1,7),(23,1,7),(24,1,7),(25,1,7),(26,1,7),(27,1,7),(28,1,7),(29,1,7),(31,1,7),(32,1,7),(33,1,7),(34,1,7),(35,1,7),(36,1,7),(37,1,7),(38,1,7),(39,1,7),(40,1,7),(41,1,7),(42,1,7),(43,1,7),(44,1,7),(45,1,7),(46,1,7),(47,1,7),(48,1,7),(49,1,7),(50,1,7),(51,1,7),(52,1,7),(53,1,7),(54,1,7),(55,1,7),(56,1,7),(57,1,7),(58,1,7),(59,1,7),(60,1,7),(61,1,7),(62,1,7),(65,1,7),(66,1,7),(71,1,7);
/*!40000 ALTER TABLE `ps_module_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_operating_system`
--

DROP TABLE IF EXISTS `ps_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_operating_system`
--

LOCK TABLES `ps_operating_system` WRITE;
/*!40000 ALTER TABLE `ps_operating_system` DISABLE KEYS */;
INSERT INTO `ps_operating_system` VALUES (1,'Windows XP'),(2,'Windows Vista'),(3,'Windows 7'),(4,'Windows 8'),(5,'Windows 8.1'),(6,'Windows 10'),(7,'MacOsX'),(8,'Linux'),(9,'Android');
/*!40000 ALTER TABLE `ps_operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_carrier`
--

DROP TABLE IF EXISTS `ps_order_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_carrier` (
  `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) unsigned NOT NULL,
  `id_carrier` int(11) unsigned NOT NULL,
  `id_order_invoice` int(11) unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_carrier`
--

LOCK TABLES `ps_order_carrier` WRITE;
/*!40000 ALTER TABLE `ps_order_carrier` DISABLE KEYS */;
INSERT INTO `ps_order_carrier` VALUES (1,1,2,0,0.000000,2.000000,2.000000,'','2020-11-30 19:28:57'),(2,2,2,0,0.000000,2.000000,2.000000,'','2020-11-30 19:28:57'),(3,3,2,0,0.000000,2.000000,2.000000,'','2020-11-30 19:28:57'),(4,4,2,0,0.000000,2.000000,2.000000,'','2020-11-30 19:28:57'),(5,5,2,0,0.000000,2.000000,2.000000,'','2020-11-30 19:28:57'),(6,6,1,0,0.000000,0.000000,0.000000,'','2020-12-01 19:31:39'),(7,7,3,0,0.000000,7.000000,8.610000,'','2020-12-02 18:10:45'),(8,8,4,1,0.000000,0.000000,0.000000,'','2020-12-02 19:47:22'),(9,9,4,0,0.000000,0.000000,0.000000,'','2020-12-06 15:36:14'),(10,10,3,0,0.000000,17.000000,20.910000,'','2020-12-14 18:34:47'),(11,11,12,0,0.000000,15.000000,15.000000,'','2020-12-18 01:48:48'),(12,12,4,2,0.000000,0.000000,0.000000,'','2020-12-18 18:58:53');
/*!40000 ALTER TABLE `ps_order_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_cart_rule`
--

DROP TABLE IF EXISTS `ps_order_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_cart_rule` (
  `id_order_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_order_invoice` int(10) unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_cart_rule`
--

LOCK TABLES `ps_order_cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_order_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_detail`
--

DROP TABLE IF EXISTS `ps_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) unsigned DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `id_customization` int(10) unsigned DEFAULT '0',
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_isbn` varchar(32) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(64) DEFAULT NULL,
  `product_supplier_reference` varchar(64) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `id_tax_rules_group` int(11) unsigned DEFAULT '0',
  `tax_computation_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`,`product_attribute_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_detail`
--

LOCK TABLES `ps_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_detail` DISABLE KEYS */;
INSERT INTO `ps_order_detail` VALUES (1,1,0,0,1,1,1,0,'Hummingbird printed t-shirt - Color : White, Size : S',1,1,0,0,0,23.900000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_2','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',27.000000,23.900000,23.900000,23.900000,0.000000,0.000000,0.000000,23.900000,0.000000),(2,1,0,0,1,2,9,0,'Hummingbird printed sweater - Color : White, Size : S',1,1,0,0,0,35.900000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_3','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',35.900000,35.900000,35.900000,35.900000,0.000000,0.000000,0.000000,35.900000,0.000000),(3,2,0,0,1,4,18,0,'The adventure begins Framed poster - Size : 80x120cm',2,3,0,0,0,29.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_2','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',58.000000,29.000000,29.000000,29.000000,0.000000,0.000000,0.000000,29.000000,0.000000),(4,2,0,0,1,8,0,0,'Mug Today is a good day',1,1,0,0,0,11.900000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_6','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',11.900000,11.900000,11.900000,11.900000,0.000000,0.000000,0.000000,11.900000,0.000000),(5,3,0,0,1,16,28,0,'Mountain fox notebook Style : Ruled',1,1,0,0,0,12.900000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_1','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',12.900000,12.900000,12.900000,12.900000,0.000000,0.000000,0.000000,12.900000,0.000000),(6,4,0,0,1,16,29,0,'Mountain fox notebook Style : Plain',1,1,0,0,0,12.900000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_1','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',12.900000,12.900000,12.900000,12.900000,0.000000,0.000000,0.000000,12.900000,0.000000),(7,5,0,0,1,10,25,0,'Brown bear cushion Color : Black',1,1,0,0,0,18.900000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','demo_1','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',18.900000,18.900000,18.900000,18.900000,0.000000,0.000000,0.000000,18.900000,0.000000),(8,6,0,0,1,20,0,0,'Trzewiki NEW BALANCE',1,1,0,0,0,400.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','1','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',492.000000,400.000000,492.000000,400.000000,12.300000,10.000000,0.000000,400.000000,0.000000),(9,7,0,0,1,21,60,0,'New Balance H754OB - Rozmiar : 44- Kolor : Brązowy',1,1,0,0,0,369.918699,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','2','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',455.000000,369.920000,455.000000,369.918699,0.000000,0.000000,0.000000,369.918699,0.000000),(10,8,1,0,1,20,66,0,'Trzewiki NEW BALANCE - Rozmiar : 44- Kolor : Pomarańczowy',1,1,0,0,0,400.000000,0.00,50.000000,50.000000,40.650000,0.00,0.000000,'','','','1','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',442.000000,359.350000,442.000000,359.349593,12.300000,10.000000,0.000000,400.000000,0.000000),(11,9,0,0,1,20,66,0,'Trzewiki NEW BALANCE - Rozmiar : 44- Kolor : Pomarańczowy',4,4,0,0,0,400.000000,0.00,50.000000,50.000000,40.650000,0.00,0.000000,'','','','1','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',1768.000000,1437.400000,442.000000,359.349593,12.300000,10.000000,0.000000,400.000000,0.000000),(12,10,0,0,1,20,66,0,'Trzewiki NEW BALANCE - Rozmiar : 44- Kolor : Pomarańczowy',1,1,0,0,0,400.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','1','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',492.000000,400.000000,492.000000,400.000000,12.300000,10.000000,0.000000,400.000000,0.000000),(13,11,0,0,1,21,60,0,'New Balance H754OB - Rozmiar : 44- Kolor : Brązowy',1,1,0,0,0,369.918699,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','2','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',455.000000,369.920000,455.000000,369.918699,0.000000,0.000000,0.000000,369.918699,0.000000),(14,12,2,0,1,21,60,0,'New Balance H754OB - Rozmiar : 44- Kolor : Brązowy',1,1,0,0,0,369.918699,0.00,0.000000,0.000000,0.000000,0.00,0.000000,'','','','2','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',455.000000,369.920000,455.000000,369.918699,0.000000,0.000000,0.000000,369.918699,0.000000);
/*!40000 ALTER TABLE `ps_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_detail_tax`
--

DROP TABLE IF EXISTS `ps_order_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_detail` (`id_order_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_detail_tax`
--

LOCK TABLES `ps_order_detail_tax` WRITE;
/*!40000 ALTER TABLE `ps_order_detail_tax` DISABLE KEYS */;
INSERT INTO `ps_order_detail_tax` VALUES (8,1,92.000000,92.000000),(9,1,85.081301,85.080000),(10,1,82.650406,82.650000),(11,1,82.650406,330.600000),(12,1,92.000000,92.000000),(13,1,85.081301,85.080000),(14,1,85.081301,85.080000);
/*!40000 ALTER TABLE `ps_order_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_history`
--

DROP TABLE IF EXISTS `ps_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_history`
--

LOCK TABLES `ps_order_history` WRITE;
/*!40000 ALTER TABLE `ps_order_history` DISABLE KEYS */;
INSERT INTO `ps_order_history` VALUES (1,0,1,1,'2020-11-30 19:28:57'),(2,0,2,1,'2020-11-30 19:28:57'),(3,0,3,1,'2020-11-30 19:28:57'),(4,0,4,1,'2020-11-30 19:28:57'),(5,0,5,10,'2020-11-30 19:28:57'),(6,1,1,6,'2020-11-30 19:28:57'),(7,1,3,8,'2020-11-30 19:28:57'),(8,0,6,10,'2020-12-01 19:31:40'),(9,0,7,10,'2020-12-02 18:10:45'),(10,1,5,6,'2020-12-02 18:15:36'),(11,1,4,6,'2020-12-02 18:15:37'),(12,1,3,6,'2020-12-02 18:15:37'),(13,1,2,6,'2020-12-02 18:15:37'),(14,0,8,3,'2020-12-02 19:47:23'),(15,0,9,10,'2020-12-06 15:36:14'),(16,0,10,10,'2020-12-14 18:34:47'),(17,0,11,10,'2020-12-18 01:48:48'),(18,0,12,3,'2020-12-18 18:58:53');
/*!40000 ALTER TABLE `ps_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_invoice`
--

DROP TABLE IF EXISTS `ps_order_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_invoice` (
  `id_order_invoice` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_computation_method` int(10) unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shop_address` text,
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_invoice`
--

LOCK TABLES `ps_order_invoice` WRITE;
/*!40000 ALTER TABLE `ps_order_invoice` DISABLE KEYS */;
INSERT INTO `ps_order_invoice` VALUES (1,8,1,1,'2020-12-02 19:47:23',0.000000,0.000000,359.350000,442.000000,359.350000,442.000000,0.000000,0.000000,0,0.000000,0.000000,'eshoe-shop','','2020-12-02 19:47:22'),(2,12,0,2,'2020-12-18 18:58:53',0.000000,0.000000,369.920000,455.000000,369.920000,455.000000,0.000000,0.000000,0,0.000000,0.000000,'eshoe-shop','','2020-12-18 18:58:53');
/*!40000 ALTER TABLE `ps_order_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_invoice_payment`
--

DROP TABLE IF EXISTS `ps_order_invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_invoice_payment` (
  `id_order_invoice` int(11) unsigned NOT NULL,
  `id_order_payment` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_invoice_payment`
--

LOCK TABLES `ps_order_invoice_payment` WRITE;
/*!40000 ALTER TABLE `ps_order_invoice_payment` DISABLE KEYS */;
INSERT INTO `ps_order_invoice_payment` VALUES (1,1,8),(2,2,12);
/*!40000 ALTER TABLE `ps_order_invoice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_invoice_tax`
--

DROP TABLE IF EXISTS `ps_order_invoice_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000',
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_invoice_tax`
--

LOCK TABLES `ps_order_invoice_tax` WRITE;
/*!40000 ALTER TABLE `ps_order_invoice_tax` DISABLE KEYS */;
INSERT INTO `ps_order_invoice_tax` VALUES (1,'shipping',1,0.000000),(2,'shipping',1,0.000000);
/*!40000 ALTER TABLE `ps_order_invoice_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message`
--

DROP TABLE IF EXISTS `ps_order_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message`
--

LOCK TABLES `ps_order_message` WRITE;
/*!40000 ALTER TABLE `ps_order_message` DISABLE KEYS */;
INSERT INTO `ps_order_message` VALUES (1,'2020-11-30 19:28:57');
/*!40000 ALTER TABLE `ps_order_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message_lang`
--

DROP TABLE IF EXISTS `ps_order_message_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message_lang`
--

LOCK TABLES `ps_order_message_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_message_lang` DISABLE KEYS */;
INSERT INTO `ps_order_message_lang` VALUES (1,1,'Czas przesyłki','Witaj,\r\n\r\nNiestety, artykuł na twoim zamówieniu jest obecnie niedostępny. Może to spowodować delikatne opóźnienie w dostawie.\r\nPrzepraszamy za powstałe utrudnienia, zapewniamy że pracujemy by to skorygować.\r\n\r\nZ poważaniem,');
/*!40000 ALTER TABLE `ps_order_message_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_payment`
--

DROP TABLE IF EXISTS `ps_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_payment` (
  `id_order_payment` int(11) NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_payment`
--

LOCK TABLES `ps_order_payment` WRITE;
/*!40000 ALTER TABLE `ps_order_payment` DISABLE KEYS */;
INSERT INTO `ps_order_payment` VALUES (1,'ZRXADCJRZ',1,442.00,'Płatność przy odbiorze',1.000000,'','','','','','2020-12-02 19:47:22'),(2,'QNWYHVPMY',1,455.00,'Płatność przy odbiorze',1.000000,'','','','','','2020-12-18 18:58:53');
/*!40000 ALTER TABLE `ps_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return`
--

DROP TABLE IF EXISTS `ps_order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return`
--

LOCK TABLES `ps_order_return` WRITE;
/*!40000 ALTER TABLE `ps_order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_detail`
--

DROP TABLE IF EXISTS `ps_order_return_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_detail`
--

LOCK TABLES `ps_order_return_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_return_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state`
--

DROP TABLE IF EXISTS `ps_order_return_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state`
--

LOCK TABLES `ps_order_return_state` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state` DISABLE KEYS */;
INSERT INTO `ps_order_return_state` VALUES (1,'#4169E1'),(2,'#8A2BE2'),(3,'#32CD32'),(4,'#DC143C'),(5,'#108510');
/*!40000 ALTER TABLE `ps_order_return_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state_lang`
--

DROP TABLE IF EXISTS `ps_order_return_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state_lang`
--

LOCK TABLES `ps_order_return_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_return_state_lang` VALUES (1,1,'Oczekiwanie na potwierdzenie'),(2,1,'Oczekiwanie na paczkę'),(3,1,'Paczka została odebrana'),(4,1,'Brak akceptacji zwrotu'),(5,1,'Dokonanie zwrotu');
/*!40000 ALTER TABLE `ps_order_return_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip`
--

DROP TABLE IF EXISTS `ps_order_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `total_products_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_products_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `order_slip_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip`
--

LOCK TABLES `ps_order_slip` WRITE;
/*!40000 ALTER TABLE `ps_order_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip_detail`
--

DROP TABLE IF EXISTS `ps_order_slip_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `unit_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `amount_tax_excl` decimal(20,6) DEFAULT NULL,
  `amount_tax_incl` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip_detail`
--

LOCK TABLES `ps_order_slip_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_slip_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip_detail_tax`
--

DROP TABLE IF EXISTS `ps_order_slip_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip_detail_tax` (
  `id_order_slip_detail` int(11) unsigned NOT NULL,
  `id_tax` int(11) unsigned NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_slip_detail` (`id_order_slip_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip_detail_tax`
--

LOCK TABLES `ps_order_slip_detail_tax` WRITE;
/*!40000 ALTER TABLE `ps_order_slip_detail_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state`
--

DROP TABLE IF EXISTS `ps_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pdf_invoice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pdf_delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state`
--

LOCK TABLES `ps_order_state` WRITE;
/*!40000 ALTER TABLE `ps_order_state` DISABLE KEYS */;
INSERT INTO `ps_order_state` VALUES (1,0,1,'ps_checkpayment','#4169E1',1,0,0,0,0,0,0,0,0),(2,1,1,'','#32CD32',1,0,1,0,0,1,1,0,0),(3,1,1,'','#FF8C00',1,0,1,1,0,1,0,0,0),(4,1,1,'','#8A2BE2',1,0,1,1,1,1,0,0,0),(5,1,0,'','#108510',1,0,1,1,1,1,0,0,0),(6,0,1,'','#DC143C',1,0,0,0,0,0,0,0,0),(7,1,1,'','#ec2e15',1,0,0,0,0,0,0,0,0),(8,0,1,'','#8f0621',1,0,0,0,0,0,0,0,0),(9,1,1,'','#FF69B4',1,0,0,0,0,1,0,0,0),(10,0,1,'ps_wirepayment','#4169E1',1,0,0,0,0,0,0,0,0),(11,1,1,'','#32CD32',1,0,1,0,0,1,0,0,0),(12,0,1,'','#FF69B4',1,0,0,0,0,0,0,0,0),(13,0,0,'ps_cashondelivery','#4169E1',1,0,0,0,0,0,0,0,0),(14,0,0,'paypal','#4169E1',0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `ps_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state_lang`
--

DROP TABLE IF EXISTS `ps_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state_lang`
--

LOCK TABLES `ps_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_state_lang` VALUES (1,1,'Oczekiwanie na płatność czekiem','cheque'),(2,1,'Płatność zaakceptowana','payment'),(3,1,'Przygotowanie w toku','preparation'),(4,1,'Wysłane','shipped'),(5,1,'Dostarczone',''),(6,1,'Anulowane','order_canceled'),(7,1,'Zwrócono','refund'),(8,1,'Błąd płatności','payment_error'),(9,1,'Zamówienie oczekujące (opłacone)','outofstock'),(10,1,'Oczekiwanie na płatność przelewem','bankwire'),(11,1,'Płatność przyjęta','payment'),(12,1,'Zamówienie oczekujące (nieopłacone)','outofstock'),(13,1,'Oczekiwanie na płatność przy odbiorze','cashondelivery'),(14,1,'Awaiting for PayPal payment','');
/*!40000 ALTER TABLE `ps_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_orders`
--

DROP TABLE IF EXISTS `ps_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `current_state` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(64) DEFAULT NULL,
  `total_discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_real` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `round_mode` tinyint(1) NOT NULL DEFAULT '2',
  `round_type` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `reference` (`reference`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `current_state` (`current_state`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_orders`
--

LOCK TABLES `ps_orders` WRITE;
/*!40000 ALTER TABLE `ps_orders` DISABLE KEYS */;
INSERT INTO `ps_orders` VALUES (1,'XKBKNABJK',1,1,2,1,2,1,1,5,5,6,'b44a6d9efd7a0076a0fbce6b15eaf3b1','Payment by check',1.000000,'ps_checkpayment',0,0,'',0,'',0.000000,0.000000,0.000000,61.800000,61.800000,61.800000,0.000000,59.800000,59.800000,2.000000,2.000000,2.000000,0.000,0.000000,0.000000,0.000000,0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-11-30 19:28:57','2020-11-30 19:28:57'),(2,'OHSATSERP',1,1,2,1,2,2,1,5,5,6,'b44a6d9efd7a0076a0fbce6b15eaf3b1','Payment by check',1.000000,'ps_checkpayment',0,0,'',0,'',0.000000,0.000000,0.000000,69.900000,69.900000,69.900000,0.000000,69.900000,69.900000,0.000000,0.000000,0.000000,0.000,0.000000,0.000000,0.000000,0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-11-30 19:28:57','2020-12-02 18:15:37'),(3,'UOYEVOLI',1,1,2,1,2,3,1,5,5,6,'b44a6d9efd7a0076a0fbce6b15eaf3b1','Payment by check',1.000000,'ps_checkpayment',0,0,'',0,'',0.000000,0.000000,0.000000,14.900000,14.900000,14.900000,0.000000,12.900000,12.900000,2.000000,2.000000,2.000000,0.000,0.000000,0.000000,0.000000,0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-11-30 19:28:57','2020-12-02 18:15:37'),(4,'FFATNOMMJ',1,1,2,1,2,4,1,5,5,6,'b44a6d9efd7a0076a0fbce6b15eaf3b1','Payment by check',1.000000,'ps_checkpayment',0,0,'',0,'',0.000000,0.000000,0.000000,14.900000,14.900000,14.900000,0.000000,12.900000,12.900000,2.000000,2.000000,2.000000,0.000,0.000000,0.000000,0.000000,0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-11-30 19:28:57','2020-12-02 18:15:37'),(5,'KHWLILZLL',1,1,2,1,2,5,1,5,5,6,'b44a6d9efd7a0076a0fbce6b15eaf3b1','Bank wire',1.000000,'ps_wirepayment',0,0,'',0,'',0.000000,0.000000,0.000000,20.900000,20.900000,20.900000,0.000000,18.900000,18.900000,2.000000,2.000000,2.000000,0.000,0.000000,0.000000,0.000000,0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-11-30 19:28:57','2020-12-02 18:15:37'),(6,'UJPMTOPOB',1,1,1,1,3,6,1,6,6,10,'dc2da80e0683a0c5042d7a5e3b507991','Płatności elektroniczne',1.000000,'ps_wirepayment',0,0,'',0,'',0.000000,0.000000,0.000000,492.000000,492.000000,400.000000,0.000000,400.000000,492.000000,0.000000,0.000000,0.000000,23.000,0.000000,0.000000,0.000000,2,2,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-12-01 19:31:39','2020-12-01 19:31:40'),(7,'TGJWMZENR',1,1,3,1,4,8,1,7,7,10,'b7b928b85706aab35f9bfc7ea19c7e1c','Płatności elektroniczne',1.000000,'ps_wirepayment',0,0,'',0,'',0.000000,0.000000,0.000000,463.610000,463.610000,376.920000,0.000000,369.920000,455.000000,8.610000,8.610000,7.000000,23.000,0.000000,0.000000,0.000000,2,2,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-12-02 18:10:45','2020-12-02 18:10:45'),(8,'ZRXADCJRZ',1,1,4,1,5,10,1,8,8,3,'0dfa8fa1fff81a5766dd558aa5c4a1f8','Płatność przy odbiorze',1.000000,'ps_cashondelivery',0,0,'',0,'',0.000000,0.000000,0.000000,442.000000,442.000000,359.350000,442.000000,359.350000,442.000000,0.000000,0.000000,0.000000,23.000,0.000000,0.000000,0.000000,2,2,1,1,'2020-12-02 19:47:22','2020-12-02 19:47:23',1,'2020-12-02 19:47:22','2020-12-02 19:47:23'),(9,'NTGREHTXC',1,1,4,1,5,11,1,8,8,10,'0dfa8fa1fff81a5766dd558aa5c4a1f8','Płatności elektroniczne',1.000000,'ps_wirepayment',0,0,'',0,'',0.000000,0.000000,0.000000,1768.000000,1768.000000,1437.400000,0.000000,1437.400000,1768.000000,0.000000,0.000000,0.000000,23.000,0.000000,0.000000,0.000000,2,2,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-12-06 15:36:14','2020-12-06 15:36:14'),(10,'XJZDSLRFN',1,1,3,1,7,13,1,9,9,10,'ab0a87a1c69d238f299875500d7ee004','Płatności elektroniczne',1.000000,'ps_wirepayment',0,0,'',0,'',0.000000,0.000000,0.000000,512.910000,512.910000,417.000000,0.000000,400.000000,492.000000,20.910000,20.910000,17.000000,23.000,0.000000,0.000000,0.000000,2,2,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-12-14 18:34:47','2020-12-14 18:34:47'),(11,'MNJNDMDUB',1,1,12,1,9,15,1,11,11,10,'2f4a0c628f14a48f97e60ab8ad3cfb14','Płatności elektroniczne',1.000000,'ps_wirepayment',0,0,'',0,'',0.000000,0.000000,0.000000,470.000000,470.000000,384.920000,0.000000,369.920000,455.000000,15.000000,15.000000,15.000000,0.000,0.000000,0.000000,0.000000,2,2,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2020-12-18 01:48:48','2020-12-18 01:48:48'),(12,'QNWYHVPMY',1,1,4,1,10,16,1,12,12,3,'5268748b34a9ef2afece90f05a7da9a8','Płatność przy odbiorze',1.000000,'ps_cashondelivery',0,0,'',0,'',0.000000,0.000000,0.000000,455.000000,455.000000,369.920000,455.000000,369.920000,455.000000,0.000000,0.000000,0.000000,23.000,0.000000,0.000000,0.000000,2,2,0,2,'2020-12-18 18:58:53','2020-12-18 18:58:53',1,'2020-12-18 18:58:53','2020-12-18 18:58:53');
/*!40000 ALTER TABLE `ps_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pack`
--

DROP TABLE IF EXISTS `ps_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `id_product_attribute_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`,`id_product_attribute_item`),
  KEY `product_item` (`id_product_item`,`id_product_attribute_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pack`
--

LOCK TABLES `ps_pack` WRITE;
/*!40000 ALTER TABLE `ps_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page`
--

DROP TABLE IF EXISTS `ps_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page`
--

LOCK TABLES `ps_page` WRITE;
/*!40000 ALTER TABLE `ps_page` DISABLE KEYS */;
INSERT INTO `ps_page` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,NULL),(5,5,NULL);
/*!40000 ALTER TABLE `ps_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_type`
--

DROP TABLE IF EXISTS `ps_page_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_type`
--

LOCK TABLES `ps_page_type` WRITE;
/*!40000 ALTER TABLE `ps_page_type` DISABLE KEYS */;
INSERT INTO `ps_page_type` VALUES (3,'authentication'),(4,'cart'),(2,'index'),(5,'orderconfirmation'),(1,'pagenotfound');
/*!40000 ALTER TABLE `ps_page_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_viewed`
--

DROP TABLE IF EXISTS `ps_page_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_viewed`
--

LOCK TABLES `ps_page_viewed` WRITE;
/*!40000 ALTER TABLE `ps_page_viewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_page_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pagenotfound`
--

DROP TABLE IF EXISTS `ps_pagenotfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pagenotfound`
--

LOCK TABLES `ps_pagenotfound` WRITE;
/*!40000 ALTER TABLE `ps_pagenotfound` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_pagenotfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_capture`
--

DROP TABLE IF EXISTS `ps_paypal_capture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_capture` (
  `id_paypal_capture` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_capture` varchar(255) NOT NULL,
  `id_paypal_order` int(10) NOT NULL,
  `capture_amount` decimal(10,2) NOT NULL,
  `result` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_capture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_capture`
--

LOCK TABLES `ps_paypal_capture` WRITE;
/*!40000 ALTER TABLE `ps_paypal_capture` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_paypal_capture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_ipn`
--

DROP TABLE IF EXISTS `ps_paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_ipn` (
  `id_paypal_ipn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_transaction` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `response` text NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_ipn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_ipn`
--

LOCK TABLES `ps_paypal_ipn` WRITE;
/*!40000 ALTER TABLE `ps_paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_order`
--

DROP TABLE IF EXISTS `ps_paypal_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_order` (
  `id_paypal_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_transaction` varchar(255) NOT NULL,
  `id_payment` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `total_paid` decimal(10,2) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `total_prestashop` decimal(10,2) NOT NULL,
  `method` varchar(255) NOT NULL,
  `payment_tool` varchar(255) NOT NULL,
  `sandbox` tinyint(1) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_order`
--

LOCK TABLES `ps_paypal_order` WRITE;
/*!40000 ALTER TABLE `ps_paypal_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_paypal_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_processlogger`
--

DROP TABLE IF EXISTS `ps_paypal_processlogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_processlogger` (
  `id_paypal_processlogger` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_transaction` varchar(50) NOT NULL,
  `log` varchar(1000) NOT NULL,
  `status` varchar(20) NOT NULL,
  `sandbox` tinyint(1) unsigned NOT NULL,
  `tools` varchar(50) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_transaction` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_processlogger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_processlogger`
--

LOCK TABLES `ps_paypal_processlogger` WRITE;
/*!40000 ALTER TABLE `ps_paypal_processlogger` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_paypal_processlogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_paypal_vaulting`
--

DROP TABLE IF EXISTS `ps_paypal_vaulting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_paypal_vaulting` (
  `id_paypal_vaulting` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `rememberedCards` varchar(255) NOT NULL,
  `profile_key` varchar(255) NOT NULL,
  `sandbox` tinyint(1) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_paypal_vaulting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_paypal_vaulting`
--

LOCK TABLES `ps_paypal_vaulting` WRITE;
/*!40000 ALTER TABLE `ps_paypal_vaulting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_paypal_vaulting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product`
--

DROP TABLE IF EXISTS `ps_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(64) DEFAULT NULL,
  `supplier_reference` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `additional_delivery_times` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301-product','302-product','301-category','302-category') NOT NULL DEFAULT '',
  `id_type_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date DEFAULT NULL,
  `show_condition` tinyint(1) NOT NULL DEFAULT '0',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int(11) unsigned NOT NULL DEFAULT '3',
  `state` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`),
  KEY `state` (`state`,`date_upd`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product`
--

LOCK TABLES `ps_product` WRITE;
/*!40000 ALTER TABLE `ps_product` DISABLE KEYS */;
INSERT INTO `ps_product` VALUES (20,0,2,2,1,1,0,0,'','','',0.000000,0,1,NULL,0,400.000000,0.000000,'',0.000000,0.00,'1','','',0.000000,0.000000,0.000000,0.000000,2,1,0,0,0,0,1,'301-category',0,1,'0000-00-00',0,'new',1,1,'both',0,0,0,66,'2020-12-01 19:25:52','2020-12-17 00:49:17',0,3,1),(21,0,2,2,1,1,0,0,'','','',0.000000,0,1,NULL,0,369.918699,0.000000,'',0.000000,0.00,'2','','',0.000000,0.000000,0.000000,0.000000,2,1,0,0,0,0,1,'301-category',0,1,'0000-00-00',0,'new',1,1,'both',0,0,0,60,'2020-12-01 19:50:04','2020-12-01 21:34:34',0,3,1);
/*!40000 ALTER TABLE `ps_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attachment`
--

DROP TABLE IF EXISTS `ps_product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attachment`
--

LOCK TABLES `ps_product_attachment` WRITE;
/*!40000 ALTER TABLE `ps_product_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute`
--

DROP TABLE IF EXISTS `ps_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `supplier_reference` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) unsigned DEFAULT NULL,
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL,
  PRIMARY KEY (`id_product_attribute`),
  UNIQUE KEY `product_default` (`id_product`,`default_on`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute`
--

LOCK TABLES `ps_product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute` DISABLE KEYS */;
INSERT INTO `ps_product_attribute` VALUES (60,21,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,1,1,NULL,0,'0000-00-00'),(61,21,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(62,21,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(63,21,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(64,21,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(65,21,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(66,20,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,1,1,NULL,0,'0000-00-00'),(67,20,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(68,20,'','','','','','',0.000000,0.000000,0.000000,0,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00');
/*!40000 ALTER TABLE `ps_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_combination`
--

DROP TABLE IF EXISTS `ps_product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_combination`
--

LOCK TABLES `ps_product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_combination` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_combination` VALUES (17,60),(26,60),(17,61),(27,61),(17,62),(28,62),(5,63),(26,63),(5,64),(27,64),(5,65),(28,65),(13,66),(26,66),(13,67),(27,67),(13,68),(28,68);
/*!40000 ALTER TABLE `ps_product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_image`
--

DROP TABLE IF EXISTS `ps_product_attribute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_image`
--

LOCK TABLES `ps_product_attribute_image` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_image` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_image` VALUES (63,25),(64,25),(65,25),(60,28),(61,28),(62,28);
/*!40000 ALTER TABLE `ps_product_attribute_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_shop`
--

DROP TABLE IF EXISTS `ps_product_attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) unsigned DEFAULT NULL,
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_shop`
--

LOCK TABLES `ps_product_attribute_shop` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_shop` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_shop` VALUES (21,60,1,0.000000,0.000000,0.000000,0.000000,0.000000,1,1,NULL,0,'0000-00-00'),(21,61,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(21,62,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(21,63,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(21,64,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(21,65,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(20,66,1,0.000000,0.000000,0.000000,0.000000,0.000000,1,1,NULL,0,'0000-00-00'),(20,67,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00'),(20,68,1,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,1,NULL,0,'0000-00-00');
/*!40000 ALTER TABLE `ps_product_attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_carrier`
--

DROP TABLE IF EXISTS `ps_product_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_carrier`
--

LOCK TABLES `ps_product_carrier` WRITE;
/*!40000 ALTER TABLE `ps_product_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_country_tax`
--

DROP TABLE IF EXISTS `ps_product_country_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_country_tax`
--

LOCK TABLES `ps_product_country_tax` WRITE;
/*!40000 ALTER TABLE `ps_product_country_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_country_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_download`
--

DROP TABLE IF EXISTS `ps_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_download`
--

LOCK TABLES `ps_product_download` WRITE;
/*!40000 ALTER TABLE `ps_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_group_reduction_cache`
--

DROP TABLE IF EXISTS `ps_product_group_reduction_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_group_reduction_cache`
--

LOCK TABLES `ps_product_group_reduction_cache` WRITE;
/*!40000 ALTER TABLE `ps_product_group_reduction_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_group_reduction_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_lang`
--

DROP TABLE IF EXISTS `ps_product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  `delivery_in_stock` varchar(255) DEFAULT NULL,
  `delivery_out_stock` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_lang`
--

LOCK TABLES `ps_product_lang` WRITE;
/*!40000 ALTER TABLE `ps_product_lang` DISABLE KEYS */;
INSERT INTO `ps_product_lang` VALUES (20,1,1,'<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';font-style:normal;font-weight:400;letter-spacing:normal;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-color:#ffffff;\"></p>\n<h1 style=\"font-weight:bold;font-size:18px;color:#111111;font-family:\'GothamSSm-Book\';font-style:normal;letter-spacing:normal;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-color:#ffffff;\">Buty Zimowe New Balance H754LLB</h1>\n<p><span style=\"color:#111111;font-family:\'GothamSSm-Book\';font-size:13px;background-color:#ffffff;\">Obuwie New Balance wykonane z najwyższej jakości skóry naturalnej. Dzięki amortyzowanej podeszwie modele z serii 754 zapewniają maksimum komfortu podczas codziennych spacerów. Dzięki agresywnemu bieżnikowi modele serii H754 idealnie sprawują się również na nierównym, śliskim podłożu. Obuwie przeznaczone do użytku całorocznego.</span></p>','<p><span style=\"color:#111111;font-family:\'GothamSSm-Book\';font-size:13px;background-color:#ffffff;\">Obuwie New Balance wykonane z najwyższej jakości skóry naturalnej. Dzięki amortyzowanej podeszwie modele z serii 754 zapewniają maksimum komfortu podczas codziennych spacerów. Dzięki agresywnemu bieżnikowi modele serii H754 idealnie sprawują się również na nierównym, śliskim podłożu. Obuwie przeznaczone do użytku całorocznego.</span></p>','trzewiki-new-balance','','','','Trzewiki NEW BALANCE','','','',''),(21,1,1,'<h1 style=\"font-size:18px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Buty Zimowe New Balance H754OB</h1>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\"></p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Obuwie New Balance wykonane z najwyższej jakości skóry naturalnej.</p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Dzięki amortyzowanej podeszwie modele z serii 754 zapewniają maksimum komfortu podczas codziennych spacerów.</p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Agresywny bieżnik modeli z serii 754 idealnie sprawują się również na nierównym, śliskim podłożu.</p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Obuwie przeznaczone do użytku całorocznego.</p>','<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Obuwie New Balance wykonane z najwyższej jakości skóry naturalnej.</p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Dzięki amortyzowanej podeszwie modele z serii 754 zapewniają maksimum komfortu podczas codziennych spacerów.</p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Agresywny bieżnik modeli z serii 754 idealnie sprawują się również na nierównym, śliskim podłożu.</p>\n<p style=\"line-height:1.45;margin:12px 0px;font-size:13px;color:#111111;font-family:\'GothamSSm-Book\';background-color:#ffffff;\">Obuwie przeznaczone do użytku całorocznego.</p>','new-balance-h754ob','','','','New Balance H754OB','','','','');
/*!40000 ALTER TABLE `ps_product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_sale`
--

DROP TABLE IF EXISTS `ps_product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_sale`
--

LOCK TABLES `ps_product_sale` WRITE;
/*!40000 ALTER TABLE `ps_product_sale` DISABLE KEYS */;
INSERT INTO `ps_product_sale` VALUES (1,1,1,'2020-12-02'),(2,1,1,'2020-12-02'),(4,2,1,'2020-12-02'),(8,1,1,'2020-12-02'),(10,1,1,'2020-12-02'),(16,2,2,'2020-12-02'),(20,2,2,'2020-12-02'),(21,2,2,'2020-12-18');
/*!40000 ALTER TABLE `ps_product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_shop`
--

DROP TABLE IF EXISTS `ps_product_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301-product','302-product','301-category','302-category') NOT NULL DEFAULT '',
  `id_type_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date DEFAULT NULL,
  `show_condition` tinyint(1) NOT NULL DEFAULT '1',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int(11) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`),
  KEY `indexed` (`indexed`,`active`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_shop`
--

LOCK TABLES `ps_product_shop` WRITE;
/*!40000 ALTER TABLE `ps_product_shop` DISABLE KEYS */;
INSERT INTO `ps_product_shop` VALUES (20,1,2,1,0,0,0.000000,1,NULL,0,400.000000,0.000000,'',0.000000,0.00,0,0,0,1,'301-category',0,1,'0000-00-00',0,'new',1,1,'both',66,0,'2020-12-01 19:25:52','2020-12-17 00:49:17',3),(21,1,2,1,0,0,0.000000,1,NULL,0,369.918699,0.000000,'',0.000000,0.00,0,0,0,1,'301-category',0,1,'0000-00-00',0,'new',1,1,'both',60,0,'2020-12-01 19:50:04','2020-12-01 21:34:34',3);
/*!40000 ALTER TABLE `ps_product_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_supplier`
--

DROP TABLE IF EXISTS `ps_product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_supplier` (
  `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(64) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  KEY `id_supplier` (`id_supplier`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_supplier`
--

LOCK TABLES `ps_product_supplier` WRITE;
/*!40000 ALTER TABLE `ps_product_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_tag`
--

DROP TABLE IF EXISTS `ps_product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`),
  KEY `id_lang` (`id_lang`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_tag`
--

LOCK TABLES `ps_product_tag` WRITE;
/*!40000 ALTER TABLE `ps_product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile`
--

DROP TABLE IF EXISTS `ps_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile`
--

LOCK TABLES `ps_profile` WRITE;
/*!40000 ALTER TABLE `ps_profile` DISABLE KEYS */;
INSERT INTO `ps_profile` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `ps_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile_lang`
--

DROP TABLE IF EXISTS `ps_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile_lang`
--

LOCK TABLES `ps_profile_lang` WRITE;
/*!40000 ALTER TABLE `ps_profile_lang` DISABLE KEYS */;
INSERT INTO `ps_profile_lang` VALUES (1,1,'Administrator'),(1,2,'Logistyk'),(1,3,'Tłumacz'),(1,4,'Sprzedawca');
/*!40000 ALTER TABLE `ps_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_psgdpr_consent`
--

DROP TABLE IF EXISTS `ps_psgdpr_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_psgdpr_consent` (
  `id_gdpr_consent` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_module` int(10) unsigned NOT NULL,
  `active` int(10) NOT NULL,
  `error` int(10) DEFAULT NULL,
  `error_message` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_gdpr_consent`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_psgdpr_consent`
--

LOCK TABLES `ps_psgdpr_consent` WRITE;
/*!40000 ALTER TABLE `ps_psgdpr_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_psgdpr_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_psgdpr_consent_lang`
--

DROP TABLE IF EXISTS `ps_psgdpr_consent_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_psgdpr_consent_lang` (
  `id_gdpr_consent` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `message` text,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_gdpr_consent`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_psgdpr_consent_lang`
--

LOCK TABLES `ps_psgdpr_consent_lang` WRITE;
/*!40000 ALTER TABLE `ps_psgdpr_consent_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_psgdpr_consent_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_psgdpr_log`
--

DROP TABLE IF EXISTS `ps_psgdpr_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_psgdpr_log` (
  `id_gdpr_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_guest` int(10) unsigned DEFAULT NULL,
  `client_name` varchar(250) DEFAULT NULL,
  `id_module` int(10) unsigned NOT NULL,
  `request_type` int(10) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_gdpr_log`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_psgdpr_log`
--

LOCK TABLES `ps_psgdpr_log` WRITE;
/*!40000 ALTER TABLE `ps_psgdpr_log` DISABLE KEYS */;
INSERT INTO `ps_psgdpr_log` VALUES (1,3,0,'Jacek Jackowski',0,1,'2020-12-01 19:31:05','2020-12-01 19:31:05'),(2,4,0,'iwoewjef ljkhnkl',0,1,'2020-12-02 18:09:28','2020-12-02 18:09:28'),(3,5,0,'Paweł Lelental',0,1,'2020-12-02 18:44:46','2020-12-02 18:44:46'),(4,5,0,'Paweł Lelental',0,2,'2020-12-02 18:56:01','2020-12-02 18:56:01'),(5,6,0,'Jan Nowak',0,1,'2020-12-06 15:37:46','2020-12-06 15:37:46'),(6,7,0,'tert ert',0,1,'2020-12-14 18:34:22','2020-12-14 18:34:22'),(7,8,0,'adasd asdas',0,1,'2020-12-17 00:42:06','2020-12-17 00:42:06'),(8,9,0,'Anna Nowak',0,1,'2020-12-18 01:39:19','2020-12-18 01:39:19'),(9,10,0,'MIP Logistyka',0,1,'2020-12-18 18:58:42','2020-12-18 18:58:42');
/*!40000 ALTER TABLE `ps_psgdpr_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access`
--

DROP TABLE IF EXISTS `ps_quick_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access`
--

LOCK TABLES `ps_quick_access` WRITE;
/*!40000 ALTER TABLE `ps_quick_access` DISABLE KEYS */;
INSERT INTO `ps_quick_access` VALUES (1,0,'index.php?controller=AdminOrders'),(2,0,'index.php?controller=AdminCartRules&addcart_rule'),(3,0,'index.php/sell/catalog/products/new'),(4,0,'index.php/sell/catalog/categories/new'),(5,0,'index.php/improve/modules/manage'),(6,0,'index.php?controller=AdminStats&module=statscheckup');
/*!40000 ALTER TABLE `ps_quick_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access_lang`
--

DROP TABLE IF EXISTS `ps_quick_access_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access_lang`
--

LOCK TABLES `ps_quick_access_lang` WRITE;
/*!40000 ALTER TABLE `ps_quick_access_lang` DISABLE KEYS */;
INSERT INTO `ps_quick_access_lang` VALUES (1,1,'Zamówienia'),(2,1,'Nowy kupon'),(3,1,'Nowy produkt'),(4,1,'Nowa kategoria'),(5,1,'Zainstalowane moduły'),(6,1,'Ocena katalogu');
/*!40000 ALTER TABLE `ps_quick_access_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_price`
--

DROP TABLE IF EXISTS `ps_range_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_price`
--

LOCK TABLES `ps_range_price` WRITE;
/*!40000 ALTER TABLE `ps_range_price` DISABLE KEYS */;
INSERT INTO `ps_range_price` VALUES (1,2,0.000000,10000.000000),(2,5,0.000000,200.000000),(3,5,500.000000,1000.000000),(4,5,1000.000000,100000.000000),(5,6,0.000000,200.000000),(6,6,200.000000,100000000.000000),(7,7,0.000000,200.000000),(8,7,500.000000,1000.000000),(9,7,1000.000000,100000.000000),(10,8,0.000000,200.000000),(11,8,200.000000,100000000.000000),(12,9,0.000000,200.000000),(13,9,500.000000,1000.000000),(14,9,1000.000000,100000.000000),(15,10,0.000000,500.000000),(16,10,500.000000,100000000.000000),(17,11,0.000000,200.000000),(18,11,200.000000,1000.000000),(19,11,5000.000000,100000.000000),(20,12,0.000000,200.000000),(21,12,200.000000,1000.000000),(22,12,5000.000000,100000.000000);
/*!40000 ALTER TABLE `ps_range_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_weight`
--

DROP TABLE IF EXISTS `ps_range_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_weight`
--

LOCK TABLES `ps_range_weight` WRITE;
/*!40000 ALTER TABLE `ps_range_weight` DISABLE KEYS */;
INSERT INTO `ps_range_weight` VALUES (1,2,0.000000,10000.000000),(2,3,0.000000,10000.000000);
/*!40000 ALTER TABLE `ps_range_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_reassurance`
--

DROP TABLE IF EXISTS `ps_reassurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_reassurance` (
  `id_reassurance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `file_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_reassurance`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_reassurance`
--

LOCK TABLES `ps_reassurance` WRITE;
/*!40000 ALTER TABLE `ps_reassurance` DISABLE KEYS */;
INSERT INTO `ps_reassurance` VALUES (1,1,'ic_verified_user_black_36dp_1x.png'),(2,1,'ic_local_shipping_black_36dp_1x.png'),(3,1,'ic_swap_horiz_black_36dp_1x.png');
/*!40000 ALTER TABLE `ps_reassurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_reassurance_lang`
--

DROP TABLE IF EXISTS `ps_reassurance_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_reassurance_lang` (
  `id_reassurance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `text` varchar(300) NOT NULL,
  PRIMARY KEY (`id_reassurance`,`id_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_reassurance_lang`
--

LOCK TABLES `ps_reassurance_lang` WRITE;
/*!40000 ALTER TABLE `ps_reassurance_lang` DISABLE KEYS */;
INSERT INTO `ps_reassurance_lang` VALUES (1,1,'Polityka bezpieczeństwa (edytuj za pomocą modułu „Bezpieczeństwo klienta”)'),(2,1,'Zasady dostawy (edytuj za pomocą modułu „Bezpieczeństwo klienta”)'),(3,1,'Zasady zwrotu (edytuj za pomocą modułu „Bezpieczeństwo klienta”)');
/*!40000 ALTER TABLE `ps_reassurance_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer`
--

DROP TABLE IF EXISTS `ps_referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer`
--

LOCK TABLES `ps_referrer` WRITE;
/*!40000 ALTER TABLE `ps_referrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer_cache`
--

DROP TABLE IF EXISTS `ps_referrer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer_cache`
--

LOCK TABLES `ps_referrer_cache` WRITE;
/*!40000 ALTER TABLE `ps_referrer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer_shop`
--

DROP TABLE IF EXISTS `ps_referrer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer_shop` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer_shop`
--

LOCK TABLES `ps_referrer_shop` WRITE;
/*!40000 ALTER TABLE `ps_referrer_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_request_sql`
--

DROP TABLE IF EXISTS `ps_request_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_request_sql` (
  `id_request_sql` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_request_sql`
--

LOCK TABLES `ps_request_sql` WRITE;
/*!40000 ALTER TABLE `ps_request_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_request_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_required_field`
--

DROP TABLE IF EXISTS `ps_required_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_required_field` (
  `id_required_field` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_required_field`
--

LOCK TABLES `ps_required_field` WRITE;
/*!40000 ALTER TABLE `ps_required_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_required_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_risk`
--

DROP TABLE IF EXISTS `ps_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_risk` (
  `id_risk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_risk`
--

LOCK TABLES `ps_risk` WRITE;
/*!40000 ALTER TABLE `ps_risk` DISABLE KEYS */;
INSERT INTO `ps_risk` VALUES (1,0,'#32CD32'),(2,35,'#FF8C00'),(3,75,'#DC143C'),(4,100,'#ec2e15');
/*!40000 ALTER TABLE `ps_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_risk_lang`
--

DROP TABLE IF EXISTS `ps_risk_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_risk_lang` (
  `id_risk` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_risk_lang`
--

LOCK TABLES `ps_risk_lang` WRITE;
/*!40000 ALTER TABLE `ps_risk_lang` DISABLE KEYS */;
INSERT INTO `ps_risk_lang` VALUES (1,1,'Żaden'),(2,1,'Niski'),(3,1,'Średnia'),(4,1,'Wysoka');
/*!40000 ALTER TABLE `ps_risk_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_engine`
--

DROP TABLE IF EXISTS `ps_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_engine`
--

LOCK TABLES `ps_search_engine` WRITE;
/*!40000 ALTER TABLE `ps_search_engine` DISABLE KEYS */;
INSERT INTO `ps_search_engine` VALUES (1,'google','q'),(2,'aol','q'),(3,'yandex','text'),(4,'ask.com','q'),(5,'nhl.com','q'),(6,'yahoo','p'),(7,'baidu','wd'),(8,'lycos','query'),(9,'exalead','q'),(10,'search.live','q'),(11,'voila','rdata'),(12,'altavista','q'),(13,'bing','q'),(14,'daum','q'),(15,'eniro','search_word'),(16,'naver','query'),(17,'msn','q'),(18,'netscape','query'),(19,'cnn','query'),(20,'about','terms'),(21,'mamma','query'),(22,'alltheweb','q'),(23,'virgilio','qs'),(24,'alice','qs'),(25,'najdi','q'),(26,'mama','query'),(27,'seznam','q'),(28,'onet','qt'),(29,'szukacz','q'),(30,'yam','k'),(31,'pchome','q'),(32,'kvasir','q'),(33,'sesam','q'),(34,'ozu','q'),(35,'terra','query'),(36,'mynet','q'),(37,'ekolay','q'),(38,'rambler','words');
/*!40000 ALTER TABLE `ps_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_index`
--

DROP TABLE IF EXISTS `ps_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`),
  KEY `id_product` (`id_product`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_index`
--

LOCK TABLES `ps_search_index` WRITE;
/*!40000 ALTER TABLE `ps_search_index` DISABLE KEYS */;
INSERT INTO `ps_search_index` VALUES (20,815,1),(20,816,1),(20,817,1),(20,785,2),(20,786,2),(20,787,2),(20,788,2),(20,789,2),(20,790,2),(20,791,2),(20,792,2),(20,793,2),(20,794,2),(20,795,2),(20,796,2),(20,797,2),(20,798,2),(20,799,2),(20,800,2),(20,801,2),(20,802,2),(20,803,2),(20,804,2),(20,805,2),(20,806,2),(20,807,2),(20,808,2),(20,809,2),(20,810,2),(20,811,2),(20,812,2),(20,813,2),(20,814,2),(20,1216,2),(20,774,3),(20,775,3),(20,818,3),(20,771,6),(20,772,8),(20,773,8),(21,815,1),(21,816,1),(21,785,2),(21,786,2),(21,787,2),(21,788,2),(21,789,2),(21,790,2),(21,791,2),(21,792,2),(21,793,2),(21,794,2),(21,795,2),(21,796,2),(21,797,2),(21,798,2),(21,799,2),(21,800,2),(21,801,2),(21,802,2),(21,806,2),(21,807,2),(21,808,2),(21,809,2),(21,810,2),(21,811,2),(21,812,2),(21,813,2),(21,814,2),(21,1100,2),(21,1101,2),(21,1102,2),(21,1103,2),(21,1335,2),(21,774,3),(21,775,3),(21,818,3),(21,1099,7),(21,772,8),(21,773,8);
/*!40000 ALTER TABLE `ps_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_word`
--

DROP TABLE IF EXISTS `ps_search_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB AUTO_INCREMENT=1376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_word`
--

LOCK TABLES `ps_search_word` WRITE;
/*!40000 ALTER TABLE `ps_search_word` DISABLE KEYS */;
INSERT INTO `ps_search_word` VALUES (796,1,1,'754'),(803,1,1,'agresywnemu'),(1100,1,1,'agresywny'),(792,1,1,'amortyzowanej'),(773,1,1,'balance'),(1101,1,1,'bieznik'),(804,1,1,'bieznikowi'),(1335,1,1,'brazowy'),(815,1,1,'buty'),(814,1,1,'calorocznego'),(801,1,1,'codziennych'),(791,1,1,'dzieki'),(775,1,1,'glowna'),(805,1,1,'h754'),(817,1,1,'h754llb'),(1099,1,1,'h754ob'),(806,1,1,'idealnie'),(788,1,1,'jakosci'),(799,1,1,'komfortu'),(798,1,1,'maksimum'),(794,1,1,'modele'),(1102,1,1,'modeli'),(787,1,1,'najwyzszej'),(790,1,1,'naturalnej'),(772,1,1,'new'),(818,1,1,'newbalance'),(809,1,1,'nierownym'),(785,1,1,'obuwie'),(800,1,1,'podczas'),(793,1,1,'podeszwie'),(811,1,1,'podlozu'),(1216,1,1,'pomaranczowy'),(812,1,1,'przeznaczone'),(808,1,1,'rowniez'),(795,1,1,'serii'),(789,1,1,'skory'),(810,1,1,'sliskim'),(802,1,1,'spacerow'),(807,1,1,'sprawuja'),(774,1,1,'strona'),(1103,1,1,'szary'),(771,1,1,'trzewiki'),(813,1,1,'uzytku'),(786,1,1,'wykonane'),(797,1,1,'zapewniaja'),(816,1,1,'zimowe');
/*!40000 ALTER TABLE `ps_search_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_sekeyword`
--

DROP TABLE IF EXISTS `ps_sekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_sekeyword`
--

LOCK TABLES `ps_sekeyword` WRITE;
/*!40000 ALTER TABLE `ps_sekeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_sekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_shop`
--

DROP TABLE IF EXISTS `ps_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_shop` (
  `id_shop` int(11) NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop`),
  KEY `IDX_CBDFBB9EF5C9E40` (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_shop`
--

LOCK TABLES `ps_shop` WRITE;
/*!40000 ALTER TABLE `ps_shop` DISABLE KEYS */;
INSERT INTO `ps_shop` VALUES (1,1,'eshoe-shop',2,'classic',1,0);
/*!40000 ALTER TABLE `ps_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_shop_group`
--

DROP TABLE IF EXISTS `ps_shop_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_shop_group` (
  `id_shop_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_shop_group`
--

LOCK TABLES `ps_shop_group` WRITE;
/*!40000 ALTER TABLE `ps_shop_group` DISABLE KEYS */;
INSERT INTO `ps_shop_group` VALUES (1,'Default',0,0,0,1,0);
/*!40000 ALTER TABLE `ps_shop_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_shop_url`
--

DROP TABLE IF EXISTS `ps_shop_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_shop_url` (
  `id_shop_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`,`main`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_shop_url`
--

LOCK TABLES `ps_shop_url` WRITE;
/*!40000 ALTER TABLE `ps_shop_url` DISABLE KEYS */;
INSERT INTO `ps_shop_url` VALUES (1,1,'localhost','localhost','/','',1,1);
/*!40000 ALTER TABLE `ps_shop_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_smarty_cache`
--

DROP TABLE IF EXISTS `ps_smarty_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_smarty_cache` (
  `id_smarty_cache` char(40) NOT NULL,
  `name` char(40) NOT NULL,
  `cache_id` varchar(254) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id_smarty_cache`),
  KEY `name` (`name`),
  KEY `cache_id` (`cache_id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_smarty_cache`
--

LOCK TABLES `ps_smarty_cache` WRITE;
/*!40000 ALTER TABLE `ps_smarty_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_smarty_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_smarty_last_flush`
--

DROP TABLE IF EXISTS `ps_smarty_last_flush`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_smarty_last_flush` (
  `type` enum('compile','template') NOT NULL,
  `last_flush` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_smarty_last_flush`
--

LOCK TABLES `ps_smarty_last_flush` WRITE;
/*!40000 ALTER TABLE `ps_smarty_last_flush` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_smarty_last_flush` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_smarty_lazy_cache`
--

DROP TABLE IF EXISTS `ps_smarty_lazy_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_smarty_lazy_cache` (
  `template_hash` varchar(32) NOT NULL DEFAULT '',
  `cache_id` varchar(255) NOT NULL DEFAULT '',
  `compile_id` varchar(32) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_hash`,`cache_id`,`compile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_smarty_lazy_cache`
--

LOCK TABLES `ps_smarty_lazy_cache` WRITE;
/*!40000 ALTER TABLE `ps_smarty_lazy_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_smarty_lazy_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price`
--

DROP TABLE IF EXISTS `ps_specific_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price` (
  `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(11) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  UNIQUE KEY `id_product_2` (`id_product`,`id_product_attribute`,`id_customer`,`id_cart`,`from`,`to`,`id_shop`,`id_shop_group`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`id_specific_price_rule`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_shop` (`id_shop`),
  KEY `id_customer` (`id_customer`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price`
--

LOCK TABLES `ps_specific_price` WRITE;
/*!40000 ALTER TABLE `ps_specific_price` DISABLE KEYS */;
INSERT INTO `ps_specific_price` VALUES (133,1,0,21,1,0,1,14,0,0,63,-1.000000,1,0.100000,1,'percentage','2020-12-01 00:00:00','2020-12-08 00:00:00'),(134,1,0,21,1,0,1,14,0,0,64,-1.000000,1,0.100000,1,'percentage','2020-12-01 00:00:00','2020-12-08 00:00:00'),(135,1,0,21,1,0,1,14,0,0,65,-1.000000,1,0.100000,1,'percentage','2020-12-01 00:00:00','2020-12-08 00:00:00'),(139,3,0,20,1,0,0,0,0,0,66,-1.000000,1,50.000000,1,'amount','2020-12-01 00:00:00','2020-12-08 00:00:00'),(140,3,0,20,1,0,0,0,0,0,67,-1.000000,1,50.000000,1,'amount','2020-12-01 00:00:00','2020-12-08 00:00:00'),(141,3,0,20,1,0,0,0,0,0,68,-1.000000,1,50.000000,1,'amount','2020-12-01 00:00:00','2020-12-08 00:00:00');
/*!40000 ALTER TABLE `ps_specific_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_priority`
--

DROP TABLE IF EXISTS `ps_specific_price_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_priority`
--

LOCK TABLES `ps_specific_price_priority` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_priority` DISABLE KEYS */;
INSERT INTO `ps_specific_price_priority` VALUES (1,20,'id_shop;id_currency;id_country;id_group'),(13,21,'id_shop;id_currency;id_country;id_group');
/*!40000 ALTER TABLE `ps_specific_price_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_rule`
--

DROP TABLE IF EXISTS `ps_specific_price_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_rule` (
  `id_specific_price_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_rule`
--

LOCK TABLES `ps_specific_price_rule` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_rule` DISABLE KEYS */;
INSERT INTO `ps_specific_price_rule` VALUES (1,'Black friday',1,1,14,0,1,-1.000000,10.000000,1,'percentage','2020-12-01 00:00:00','2020-12-08 00:00:00'),(3,'Black friday 2',1,0,0,0,1,-1.000000,50.000000,1,'amount','2020-12-01 00:00:00','2020-12-08 00:00:00');
/*!40000 ALTER TABLE `ps_specific_price_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_rule_condition`
--

DROP TABLE IF EXISTS `ps_specific_price_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_rule_condition`
--

LOCK TABLES `ps_specific_price_rule_condition` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_rule_condition` DISABLE KEYS */;
INSERT INTO `ps_specific_price_rule_condition` VALUES (17,8,'manufacturer','2'),(18,8,'attribute','5'),(21,10,'manufacturer','2'),(22,10,'attribute','13');
/*!40000 ALTER TABLE `ps_specific_price_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_specific_price_rule_condition_group`
--

DROP TABLE IF EXISTS `ps_specific_price_rule_condition_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_specific_price_rule_condition_group`
--

LOCK TABLES `ps_specific_price_rule_condition_group` WRITE;
/*!40000 ALTER TABLE `ps_specific_price_rule_condition_group` DISABLE KEYS */;
INSERT INTO `ps_specific_price_rule_condition_group` VALUES (8,1),(10,3);
/*!40000 ALTER TABLE `ps_specific_price_rule_condition_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_state`
--

DROP TABLE IF EXISTS `ps_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_state`
--

LOCK TABLES `ps_state` WRITE;
/*!40000 ALTER TABLE `ps_state` DISABLE KEYS */;
INSERT INTO `ps_state` VALUES (1,21,2,'AA','AA',0,1),(2,21,2,'AE','AE',0,1),(3,21,2,'AP','AP',0,1),(4,21,2,'Alabama','AL',0,1),(5,21,2,'Alaska','AK',0,1),(6,21,2,'Arizona','AZ',0,1),(7,21,2,'Arkansas','AR',0,1),(8,21,2,'California','CA',0,1),(9,21,2,'Colorado','CO',0,1),(10,21,2,'Connecticut','CT',0,1),(11,21,2,'Delaware','DE',0,1),(12,21,2,'Florida','FL',0,1),(13,21,2,'Georgia','GA',0,1),(14,21,2,'Hawaii','HI',0,1),(15,21,2,'Idaho','ID',0,1),(16,21,2,'Illinois','IL',0,1),(17,21,2,'Indiana','IN',0,1),(18,21,2,'Iowa','IA',0,1),(19,21,2,'Kansas','KS',0,1),(20,21,2,'Kentucky','KY',0,1),(21,21,2,'Louisiana','LA',0,1),(22,21,2,'Maine','ME',0,1),(23,21,2,'Maryland','MD',0,1),(24,21,2,'Massachusetts','MA',0,1),(25,21,2,'Michigan','MI',0,1),(26,21,2,'Minnesota','MN',0,1),(27,21,2,'Mississippi','MS',0,1),(28,21,2,'Missouri','MO',0,1),(29,21,2,'Montana','MT',0,1),(30,21,2,'Nebraska','NE',0,1),(31,21,2,'Nevada','NV',0,1),(32,21,2,'New Hampshire','NH',0,1),(33,21,2,'New Jersey','NJ',0,1),(34,21,2,'New Mexico','NM',0,1),(35,21,2,'New York','NY',0,1),(36,21,2,'North Carolina','NC',0,1),(37,21,2,'North Dakota','ND',0,1),(38,21,2,'Ohio','OH',0,1),(39,21,2,'Oklahoma','OK',0,1),(40,21,2,'Oregon','OR',0,1),(41,21,2,'Pennsylvania','PA',0,1),(42,21,2,'Rhode Island','RI',0,1),(43,21,2,'South Carolina','SC',0,1),(44,21,2,'South Dakota','SD',0,1),(45,21,2,'Tennessee','TN',0,1),(46,21,2,'Texas','TX',0,1),(47,21,2,'Utah','UT',0,1),(48,21,2,'Vermont','VT',0,1),(49,21,2,'Virginia','VA',0,1),(50,21,2,'Washington','WA',0,1),(51,21,2,'West Virginia','WV',0,1),(52,21,2,'Wisconsin','WI',0,1),(53,21,2,'Wyoming','WY',0,1),(54,21,2,'Puerto Rico','PR',0,1),(55,21,2,'US Virgin Islands','VI',0,1),(56,21,2,'District of Columbia','DC',0,1),(57,145,2,'Aguascalientes','AGS',0,1),(58,145,2,'Baja California','BCN',0,1),(59,145,2,'Baja California Sur','BCS',0,1),(60,145,2,'Campeche','CAM',0,1),(61,145,2,'Chiapas','CHP',0,1),(62,145,2,'Chihuahua','CHH',0,1),(63,145,2,'Coahuila','COA',0,1),(64,145,2,'Colima','COL',0,1),(65,145,2,'Distrito Federal','DIF',0,1),(66,145,2,'Durango','DUR',0,1),(67,145,2,'Guanajuato','GUA',0,1),(68,145,2,'Guerrero','GRO',0,1),(69,145,2,'Hidalgo','HID',0,1),(70,145,2,'Jalisco','JAL',0,1),(71,145,2,'Estado de México','MEX',0,1),(72,145,2,'Michoacán','MIC',0,1),(73,145,2,'Morelos','MOR',0,1),(74,145,2,'Nayarit','NAY',0,1),(75,145,2,'Nuevo León','NLE',0,1),(76,145,2,'Oaxaca','OAX',0,1),(77,145,2,'Puebla','PUE',0,1),(78,145,2,'Querétaro','QUE',0,1),(79,145,2,'Quintana Roo','ROO',0,1),(80,145,2,'San Luis Potosí','SLP',0,1),(81,145,2,'Sinaloa','SIN',0,1),(82,145,2,'Sonora','SON',0,1),(83,145,2,'Tabasco','TAB',0,1),(84,145,2,'Tamaulipas','TAM',0,1),(85,145,2,'Tlaxcala','TLA',0,1),(86,145,2,'Veracruz','VER',0,1),(87,145,2,'Yucatán','YUC',0,1),(88,145,2,'Zacatecas','ZAC',0,1),(89,4,2,'Ontario','ON',0,1),(90,4,2,'Quebec','QC',0,1),(91,4,2,'British Columbia','BC',0,1),(92,4,2,'Alberta','AB',0,1),(93,4,2,'Manitoba','MB',0,1),(94,4,2,'Saskatchewan','SK',0,1),(95,4,2,'Nova Scotia','NS',0,1),(96,4,2,'New Brunswick','NB',0,1),(97,4,2,'Newfoundland and Labrador','NL',0,1),(98,4,2,'Prince Edward Island','PE',0,1),(99,4,2,'Northwest Territories','NT',0,1),(100,4,2,'Yukon','YT',0,1),(101,4,2,'Nunavut','NU',0,1),(102,44,6,'Buenos Aires','B',0,1),(103,44,6,'Catamarca','K',0,1),(104,44,6,'Chaco','H',0,1),(105,44,6,'Chubut','U',0,1),(106,44,6,'Ciudad de Buenos Aires','C',0,1),(107,44,6,'Córdoba','X',0,1),(108,44,6,'Corrientes','W',0,1),(109,44,6,'Entre Ríos','E',0,1),(110,44,6,'Formosa','P',0,1),(111,44,6,'Jujuy','Y',0,1),(112,44,6,'La Pampa','L',0,1),(113,44,6,'La Rioja','F',0,1),(114,44,6,'Mendoza','M',0,1),(115,44,6,'Misiones','N',0,1),(116,44,6,'Neuquén','Q',0,1),(117,44,6,'Río Negro','R',0,1),(118,44,6,'Salta','A',0,1),(119,44,6,'San Juan','J',0,1),(120,44,6,'San Luis','D',0,1),(121,44,6,'Santa Cruz','Z',0,1),(122,44,6,'Santa Fe','S',0,1),(123,44,6,'Santiago del Estero','G',0,1),(124,44,6,'Tierra del Fuego','V',0,1),(125,44,6,'Tucumán','T',0,1),(126,10,1,'Agrigento','AG',0,1),(127,10,1,'Alessandria','AL',0,1),(128,10,1,'Ancona','AN',0,1),(129,10,1,'Aosta','AO',0,1),(130,10,1,'Arezzo','AR',0,1),(131,10,1,'Ascoli Piceno','AP',0,1),(132,10,1,'Asti','AT',0,1),(133,10,1,'Avellino','AV',0,1),(134,10,1,'Bari','BA',0,1),(135,10,1,'Barletta-Andria-Trani','BT',0,1),(136,10,1,'Belluno','BL',0,1),(137,10,1,'Benevento','BN',0,1),(138,10,1,'Bergamo','BG',0,1),(139,10,1,'Biella','BI',0,1),(140,10,1,'Bologna','BO',0,1),(141,10,1,'Bolzano','BZ',0,1),(142,10,1,'Brescia','BS',0,1),(143,10,1,'Brindisi','BR',0,1),(144,10,1,'Cagliari','CA',0,1),(145,10,1,'Caltanissetta','CL',0,1),(146,10,1,'Campobasso','CB',0,1),(147,10,1,'Carbonia-Iglesias','CI',0,1),(148,10,1,'Caserta','CE',0,1),(149,10,1,'Catania','CT',0,1),(150,10,1,'Catanzaro','CZ',0,1),(151,10,1,'Chieti','CH',0,1),(152,10,1,'Como','CO',0,1),(153,10,1,'Cosenza','CS',0,1),(154,10,1,'Cremona','CR',0,1),(155,10,1,'Crotone','KR',0,1),(156,10,1,'Cuneo','CN',0,1),(157,10,1,'Enna','EN',0,1),(158,10,1,'Fermo','FM',0,1),(159,10,1,'Ferrara','FE',0,1),(160,10,1,'Firenze','FI',0,1),(161,10,1,'Foggia','FG',0,1),(162,10,1,'Forlì-Cesena','FC',0,1),(163,10,1,'Frosinone','FR',0,1),(164,10,1,'Genova','GE',0,1),(165,10,1,'Gorizia','GO',0,1),(166,10,1,'Grosseto','GR',0,1),(167,10,1,'Imperia','IM',0,1),(168,10,1,'Isernia','IS',0,1),(169,10,1,'L\'Aquila','AQ',0,1),(170,10,1,'La Spezia','SP',0,1),(171,10,1,'Latina','LT',0,1),(172,10,1,'Lecce','LE',0,1),(173,10,1,'Lecco','LC',0,1),(174,10,1,'Livorno','LI',0,1),(175,10,1,'Lodi','LO',0,1),(176,10,1,'Lucca','LU',0,1),(177,10,1,'Macerata','MC',0,1),(178,10,1,'Mantova','MN',0,1),(179,10,1,'Massa','MS',0,1),(180,10,1,'Matera','MT',0,1),(181,10,1,'Medio Campidano','VS',0,1),(182,10,1,'Messina','ME',0,1),(183,10,1,'Milano','MI',0,1),(184,10,1,'Modena','MO',0,1),(185,10,1,'Monza e della Brianza','MB',0,1),(186,10,1,'Napoli','NA',0,1),(187,10,1,'Novara','NO',0,1),(188,10,1,'Nuoro','NU',0,1),(189,10,1,'Ogliastra','OG',0,1),(190,10,1,'Olbia-Tempio','OT',0,1),(191,10,1,'Oristano','OR',0,1),(192,10,1,'Padova','PD',0,1),(193,10,1,'Palermo','PA',0,1),(194,10,1,'Parma','PR',0,1),(195,10,1,'Pavia','PV',0,1),(196,10,1,'Perugia','PG',0,1),(197,10,1,'Pesaro-Urbino','PU',0,1),(198,10,1,'Pescara','PE',0,1),(199,10,1,'Piacenza','PC',0,1),(200,10,1,'Pisa','PI',0,1),(201,10,1,'Pistoia','PT',0,1),(202,10,1,'Pordenone','PN',0,1),(203,10,1,'Potenza','PZ',0,1),(204,10,1,'Prato','PO',0,1),(205,10,1,'Ragusa','RG',0,1),(206,10,1,'Ravenna','RA',0,1),(207,10,1,'Reggio Calabria','RC',0,1),(208,10,1,'Reggio Emilia','RE',0,1),(209,10,1,'Rieti','RI',0,1),(210,10,1,'Rimini','RN',0,1),(211,10,1,'Roma','RM',0,1),(212,10,1,'Rovigo','RO',0,1),(213,10,1,'Salerno','SA',0,1),(214,10,1,'Sassari','SS',0,1),(215,10,1,'Savona','SV',0,1),(216,10,1,'Siena','SI',0,1),(217,10,1,'Siracusa','SR',0,1),(218,10,1,'Sondrio','SO',0,1),(219,10,1,'Taranto','TA',0,1),(220,10,1,'Teramo','TE',0,1),(221,10,1,'Terni','TR',0,1),(222,10,1,'Torino','TO',0,1),(223,10,1,'Trapani','TP',0,1),(224,10,1,'Trento','TN',0,1),(225,10,1,'Treviso','TV',0,1),(226,10,1,'Trieste','TS',0,1),(227,10,1,'Udine','UD',0,1),(228,10,1,'Varese','VA',0,1),(229,10,1,'Venezia','VE',0,1),(230,10,1,'Verbano-Cusio-Ossola','VB',0,1),(231,10,1,'Vercelli','VC',0,1),(232,10,1,'Verona','VR',0,1),(233,10,1,'Vibo Valentia','VV',0,1),(234,10,1,'Vicenza','VI',0,1),(235,10,1,'Viterbo','VT',0,1),(236,111,3,'Aceh','ID-AC',0,1),(237,111,3,'Bali','ID-BA',0,1),(238,111,3,'Banten','ID-BT',0,1),(239,111,3,'Bengkulu','ID-BE',0,1),(240,111,3,'Gorontalo','ID-GO',0,1),(241,111,3,'Jakarta','ID-JK',0,1),(242,111,3,'Jambi','ID-JA',0,1),(243,111,3,'Jawa Barat','ID-JB',0,1),(244,111,3,'Jawa Tengah','ID-JT',0,1),(245,111,3,'Jawa Timur','ID-JI',0,1),(246,111,3,'Kalimantan Barat','ID-KB',0,1),(247,111,3,'Kalimantan Selatan','ID-KS',0,1),(248,111,3,'Kalimantan Tengah','ID-KT',0,1),(249,111,3,'Kalimantan Timur','ID-KI',0,1),(250,111,3,'Kalimantan Utara','ID-KU',0,1),(251,111,3,'Kepulauan Bangka Belitug','ID-BB',0,1),(252,111,3,'Kepulauan Riau','ID-KR',0,1),(253,111,3,'Lampung','ID-LA',0,1),(254,111,3,'Maluku','ID-MA',0,1),(255,111,3,'Maluku Utara','ID-MU',0,1),(256,111,3,'Nusa Tengara Barat','ID-NB',0,1),(257,111,3,'Nusa Tenggara Timur','ID-NT',0,1),(258,111,3,'Papua','ID-PA',0,1),(259,111,3,'Papua Barat','ID-PB',0,1),(260,111,3,'Riau','ID-RI',0,1),(261,111,3,'Sulawesi Barat','ID-SR',0,1),(262,111,3,'Sulawesi Selatan','ID-SN',0,1),(263,111,3,'Sulawesi Tengah','ID-ST',0,1),(264,111,3,'Sulawesi Tenggara','ID-SG',0,1),(265,111,3,'Sulawesi Utara','ID-SA',0,1),(266,111,3,'Sumatera Barat','ID-SB',0,1),(267,111,3,'Sumatera Selatan','ID-SS',0,1),(268,111,3,'Sumatera Utara','ID-SU',0,1),(269,111,3,'Yogyakarta','ID-YO',0,1),(270,11,3,'Aichi','23',0,1),(271,11,3,'Akita','05',0,1),(272,11,3,'Aomori','02',0,1),(273,11,3,'Chiba','12',0,1),(274,11,3,'Ehime','38',0,1),(275,11,3,'Fukui','18',0,1),(276,11,3,'Fukuoka','40',0,1),(277,11,3,'Fukushima','07',0,1),(278,11,3,'Gifu','21',0,1),(279,11,3,'Gunma','10',0,1),(280,11,3,'Hiroshima','34',0,1),(281,11,3,'Hokkaido','01',0,1),(282,11,3,'Hyogo','28',0,1),(283,11,3,'Ibaraki','08',0,1),(284,11,3,'Ishikawa','17',0,1),(285,11,3,'Iwate','03',0,1),(286,11,3,'Kagawa','37',0,1),(287,11,3,'Kagoshima','46',0,1),(288,11,3,'Kanagawa','14',0,1),(289,11,3,'Kochi','39',0,1),(290,11,3,'Kumamoto','43',0,1),(291,11,3,'Kyoto','26',0,1),(292,11,3,'Mie','24',0,1),(293,11,3,'Miyagi','04',0,1),(294,11,3,'Miyazaki','45',0,1),(295,11,3,'Nagano','20',0,1),(296,11,3,'Nagasaki','42',0,1),(297,11,3,'Nara','29',0,1),(298,11,3,'Niigata','15',0,1),(299,11,3,'Oita','44',0,1),(300,11,3,'Okayama','33',0,1),(301,11,3,'Okinawa','47',0,1),(302,11,3,'Osaka','27',0,1),(303,11,3,'Saga','41',0,1),(304,11,3,'Saitama','11',0,1),(305,11,3,'Shiga','25',0,1),(306,11,3,'Shimane','32',0,1),(307,11,3,'Shizuoka','22',0,1),(308,11,3,'Tochigi','09',0,1),(309,11,3,'Tokushima','36',0,1),(310,11,3,'Tokyo','13',0,1),(311,11,3,'Tottori','31',0,1),(312,11,3,'Toyama','16',0,1),(313,11,3,'Wakayama','30',0,1),(314,11,3,'Yamagata','06',0,1),(315,11,3,'Yamaguchi','35',0,1),(316,11,3,'Yamanashi','19',0,1),(317,24,5,'Australian Capital Territory','ACT',0,1),(318,24,5,'New South Wales','NSW',0,1),(319,24,5,'Northern Territory','NT',0,1),(320,24,5,'Queensland','QLD',0,1),(321,24,5,'South Australia','SA',0,1),(322,24,5,'Tasmania','TAS',0,1),(323,24,5,'Victoria','VIC',0,1),(324,24,5,'Western Australia','WA',0,1);
/*!40000 ALTER TABLE `ps_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_statssearch`
--

DROP TABLE IF EXISTS `ps_statssearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_statssearch`
--

LOCK TABLES `ps_statssearch` WRITE;
/*!40000 ALTER TABLE `ps_statssearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_statssearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock`
--

DROP TABLE IF EXISTS `ps_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock` (
  `id_stock` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) unsigned NOT NULL,
  `usable_quantity` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock`
--

LOCK TABLES `ps_stock` WRITE;
/*!40000 ALTER TABLE `ps_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_available`
--

DROP TABLE IF EXISTS `ps_stock_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_available` (
  `id_stock_available` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `physical_quantity` int(11) NOT NULL DEFAULT '0',
  `reserved_quantity` int(11) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `location` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_available`
--

LOCK TABLES `ps_stock_available` WRITE;
/*!40000 ALTER TABLE `ps_stock_available` DISABLE KEYS */;
INSERT INTO `ps_stock_available` VALUES (59,18,0,1,0,0,0,0,0,0,''),(60,17,0,1,0,0,0,0,0,0,''),(61,16,0,1,0,0,0,0,0,0,''),(62,11,0,1,0,0,0,0,0,0,''),(63,10,0,1,0,0,0,0,0,0,''),(64,9,0,1,0,0,0,0,0,0,''),(65,5,0,1,0,0,0,0,0,0,''),(66,4,0,1,0,0,0,0,0,0,''),(67,3,0,1,0,0,0,0,0,0,''),(68,2,0,1,0,0,0,0,0,0,''),(69,1,0,1,0,0,0,0,0,0,''),(70,20,0,1,0,24,25,1,0,2,''),(74,21,0,1,0,177,177,0,0,2,''),(93,21,60,1,0,27,30,3,0,2,''),(94,21,61,1,0,30,30,0,0,2,''),(95,21,62,1,0,30,30,0,0,2,''),(96,21,63,1,0,30,30,0,0,2,''),(97,21,64,1,0,30,30,0,0,2,''),(98,21,65,1,0,30,30,0,0,2,''),(99,20,66,1,0,4,10,6,0,2,''),(100,20,67,1,0,10,10,0,0,2,''),(101,20,68,1,0,10,10,0,0,2,'');
/*!40000 ALTER TABLE `ps_stock_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_mvt`
--

DROP TABLE IF EXISTS `ps_stock_mvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_mvt` (
  `id_stock_mvt` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_supply_order` int(11) DEFAULT NULL,
  `id_stock_mvt_reason` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `employee_lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_quantity` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` smallint(6) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_mvt`
--

LOCK TABLES `ps_stock_mvt` WRITE;
/*!40000 ALTER TABLE `ps_stock_mvt` DISABLE KEYS */;
INSERT INTO `ps_stock_mvt` VALUES (1,70,NULL,NULL,11,1,'Adamski','Adam',100,'2020-12-01 19:29:25',1,0.000000,0.000000,0.000000,NULL),(2,71,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 19:46:18',1,0.000000,0.000000,0.000000,NULL),(3,72,NULL,NULL,11,1,'Adamski','Adam',39,'2020-12-01 19:46:18',1,0.000000,0.000000,0.000000,NULL),(4,73,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 19:46:18',1,0.000000,0.000000,0.000000,NULL),(5,74,NULL,NULL,11,1,'Adamski','Adam',50,'2020-12-01 19:51:26',1,0.000000,0.000000,0.000000,NULL),(6,75,NULL,NULL,11,1,'Adamski','Adam',25,'2020-12-01 19:51:57',1,0.000000,0.000000,0.000000,NULL),(7,76,NULL,NULL,11,1,'Adamski','Adam',25,'2020-12-01 19:51:57',1,0.000000,0.000000,0.000000,NULL),(8,70,NULL,NULL,11,1,'Adamski','Adam',99,'2020-12-01 21:08:08',1,0.000000,0.000000,0.000000,NULL),(9,78,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:08:18',1,0.000000,0.000000,0.000000,NULL),(10,79,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:08:18',1,0.000000,0.000000,0.000000,NULL),(11,80,NULL,NULL,11,1,'Adamski','Adam',39,'2020-12-01 21:08:18',1,0.000000,0.000000,0.000000,NULL),(12,81,NULL,NULL,11,1,'Adamski','Adam',2,'2020-12-01 21:10:13',1,0.000000,0.000000,0.000000,NULL),(13,82,NULL,NULL,11,1,'Adamski','Adam',5,'2020-12-01 21:10:13',1,0.000000,0.000000,0.000000,NULL),(14,83,NULL,NULL,11,1,'Adamski','Adam',6,'2020-12-01 21:10:13',1,0.000000,0.000000,0.000000,NULL),(15,70,NULL,NULL,11,1,'Adamski','Adam',99,'2020-12-01 21:24:02',1,0.000000,0.000000,0.000000,NULL),(16,74,NULL,NULL,11,1,'Adamski','Adam',63,'2020-12-01 21:24:45',1,0.000000,0.000000,0.000000,NULL),(17,90,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:25:48',1,0.000000,0.000000,0.000000,NULL),(18,87,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:25:48',1,0.000000,0.000000,0.000000,NULL),(19,88,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:25:48',1,0.000000,0.000000,0.000000,NULL),(20,91,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:25:48',1,0.000000,0.000000,0.000000,NULL),(21,89,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:25:48',1,0.000000,0.000000,0.000000,NULL),(22,92,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:25:48',1,0.000000,0.000000,0.000000,NULL),(23,84,NULL,NULL,11,1,'Adamski','Adam',10,'2020-12-01 21:26:06',1,0.000000,0.000000,0.000000,NULL),(24,85,NULL,NULL,11,1,'Adamski','Adam',10,'2020-12-01 21:26:06',1,0.000000,0.000000,0.000000,NULL),(25,86,NULL,NULL,11,1,'Adamski','Adam',10,'2020-12-01 21:26:07',1,0.000000,0.000000,0.000000,NULL),(26,74,NULL,NULL,11,1,'Adamski','Adam',180,'2020-12-01 21:27:30',1,0.000000,0.000000,0.000000,NULL),(27,93,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:08',1,0.000000,0.000000,0.000000,NULL),(28,96,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:08',1,0.000000,0.000000,0.000000,NULL),(29,94,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:08',1,0.000000,0.000000,0.000000,NULL),(30,97,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:08',1,0.000000,0.000000,0.000000,NULL),(31,95,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:08',1,0.000000,0.000000,0.000000,NULL),(32,98,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:08',1,0.000000,0.000000,0.000000,NULL),(33,70,NULL,NULL,11,1,'Adamski','Adam',30,'2020-12-01 21:28:34',1,0.000000,0.000000,0.000000,NULL),(34,99,NULL,NULL,11,1,'Adamski','Adam',10,'2020-12-01 21:28:41',1,0.000000,0.000000,0.000000,NULL),(35,100,NULL,NULL,11,1,'Adamski','Adam',10,'2020-12-01 21:28:41',1,0.000000,0.000000,0.000000,NULL),(36,101,NULL,NULL,11,1,'Adamski','Adam',10,'2020-12-01 21:28:41',1,0.000000,0.000000,0.000000,NULL);
/*!40000 ALTER TABLE `ps_stock_mvt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_mvt_reason`
--

DROP TABLE IF EXISTS `ps_stock_mvt_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_mvt_reason`
--

LOCK TABLES `ps_stock_mvt_reason` WRITE;
/*!40000 ALTER TABLE `ps_stock_mvt_reason` DISABLE KEYS */;
INSERT INTO `ps_stock_mvt_reason` VALUES (1,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(2,-1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(3,-1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(4,-1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(5,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(6,-1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(7,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(8,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(9,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(10,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(11,1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0),(12,-1,'2020-11-30 19:28:30','2020-11-30 19:28:30',0);
/*!40000 ALTER TABLE `ps_stock_mvt_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_stock_mvt_reason_lang`
--

DROP TABLE IF EXISTS `ps_stock_mvt_reason_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_stock_mvt_reason_lang`
--

LOCK TABLES `ps_stock_mvt_reason_lang` WRITE;
/*!40000 ALTER TABLE `ps_stock_mvt_reason_lang` DISABLE KEYS */;
INSERT INTO `ps_stock_mvt_reason_lang` VALUES (1,1,'Wzrost'),(2,1,'Zmniejsz'),(3,1,'Zamówienie klienta'),(4,1,'Regulation following an inventory of stock'),(5,1,'Regulation following an inventory of stock'),(6,1,'Przeniesienie do innego magazynu'),(7,1,'Przeniesienie z innego magazynu'),(8,1,'Zamówienie dostawcy'),(9,1,'Zamówienie klienta'),(10,1,'Zwrot produktu'),(11,1,'Employee Edition'),(12,1,'Employee Edition');
/*!40000 ALTER TABLE `ps_stock_mvt_reason_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_store`
--

DROP TABLE IF EXISTS `ps_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_store` (
  `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_store`
--

LOCK TABLES `ps_store` WRITE;
/*!40000 ALTER TABLE `ps_store` DISABLE KEYS */;
INSERT INTO `ps_store` VALUES (1,14,0,'Sosnowiec','00-000',50.27795825,19.14715600,'','','',1,'2020-11-30 19:28:57','2020-12-02 18:43:45');
/*!40000 ALTER TABLE `ps_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_store_lang`
--

DROP TABLE IF EXISTS `ps_store_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_store_lang` (
  `id_store` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `hours` text,
  `note` text,
  PRIMARY KEY (`id_store`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_store_lang`
--

LOCK TABLES `ps_store_lang` WRITE;
/*!40000 ALTER TABLE `ps_store_lang` DISABLE KEYS */;
INSERT INTO `ps_store_lang` VALUES (1,1,'Butowo','Grunwaldzka 1 Sosnowiec','','[[\"09:00 - 20:00\"],[\"09:00 - 20:00\"],[\"09:00 - 20:00\"],[\"09:00 - 20:00\"],[\"09:00 - 20:00\"],[\"09:00 - 20:00\"],[\"09:00 - 20:00\"]]','');
/*!40000 ALTER TABLE `ps_store_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_store_shop`
--

DROP TABLE IF EXISTS `ps_store_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_store_shop` (
  `id_store` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_store_shop`
--

LOCK TABLES `ps_store_shop` WRITE;
/*!40000 ALTER TABLE `ps_store_shop` DISABLE KEYS */;
INSERT INTO `ps_store_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_store_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier`
--

DROP TABLE IF EXISTS `ps_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier`
--

LOCK TABLES `ps_supplier` WRITE;
/*!40000 ALTER TABLE `ps_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier_lang`
--

DROP TABLE IF EXISTS `ps_supplier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier_lang`
--

LOCK TABLES `ps_supplier_lang` WRITE;
/*!40000 ALTER TABLE `ps_supplier_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supplier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier_shop`
--

DROP TABLE IF EXISTS `ps_supplier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier_shop` (
  `id_supplier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier_shop`
--

LOCK TABLES `ps_supplier_shop` WRITE;
/*!40000 ALTER TABLE `ps_supplier_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supplier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order`
--

DROP TABLE IF EXISTS `ps_supply_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order` (
  `id_supply_order` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_ref_currency` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order`
--

LOCK TABLES `ps_supply_order` WRITE;
/*!40000 ALTER TABLE `ps_supply_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_detail`
--

DROP TABLE IF EXISTS `ps_supply_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_detail` (
  `id_supply_order_detail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `supplier_reference` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) unsigned NOT NULL,
  `quantity_received` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_detail`
--

LOCK TABLES `ps_supply_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_history`
--

DROP TABLE IF EXISTS `ps_supply_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_history` (
  `id_supply_order_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(255) DEFAULT '',
  `employee_firstname` varchar(255) DEFAULT '',
  `id_state` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_history`
--

LOCK TABLES `ps_supply_order_history` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_receipt_history`
--

DROP TABLE IF EXISTS `ps_supply_order_receipt_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(255) DEFAULT '',
  `employee_firstname` varchar(255) DEFAULT '',
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_receipt_history`
--

LOCK TABLES `ps_supply_order_receipt_history` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_receipt_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supply_order_receipt_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_state`
--

DROP TABLE IF EXISTS `ps_supply_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_state` (
  `id_supply_order_state` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_state`
--

LOCK TABLES `ps_supply_order_state` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_state` DISABLE KEYS */;
INSERT INTO `ps_supply_order_state` VALUES (1,0,1,0,0,0,'#faab00'),(2,1,0,0,0,0,'#273cff'),(3,0,0,0,1,0,'#ff37f5'),(4,0,0,1,1,0,'#ff3e33'),(5,0,0,1,0,1,'#00d60c'),(6,0,0,0,0,1,'#666666');
/*!40000 ALTER TABLE `ps_supply_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supply_order_state_lang`
--

DROP TABLE IF EXISTS `ps_supply_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supply_order_state_lang` (
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supply_order_state_lang`
--

LOCK TABLES `ps_supply_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_supply_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_supply_order_state_lang` VALUES (1,1,'1 - Tworzenie w toku'),(2,1,'2 - Zamówienie zostało zatwierdzone'),(3,1,'3 - W oczekiwaniu'),(4,1,'4 - Zamówienie zostało otrzymane w częściach'),(5,1,'5 - Otrzymano zamówienie'),(6,1,'6 - Zamówienie zostało anulowane');
/*!40000 ALTER TABLE `ps_supply_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab`
--

DROP TABLE IF EXISTS `ps_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab` (
  `id_tab` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `hide_host_mode` tinyint(1) NOT NULL,
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_tab`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab`
--

LOCK TABLES `ps_tab` WRITE;
/*!40000 ALTER TABLE `ps_tab` DISABLE KEYS */;
INSERT INTO `ps_tab` VALUES (1,0,0,NULL,'AdminDashboard',1,0,'trending_up'),(2,0,1,NULL,'SELL',1,0,''),(3,2,0,NULL,'AdminParentOrders',1,0,'shopping_basket'),(4,3,0,NULL,'AdminOrders',1,0,''),(5,3,1,NULL,'AdminInvoices',1,0,''),(6,3,2,NULL,'AdminSlip',1,0,''),(7,3,3,NULL,'AdminDeliverySlip',1,0,''),(8,3,4,NULL,'AdminCarts',1,0,''),(9,2,1,NULL,'AdminCatalog',1,0,'store'),(10,9,0,NULL,'AdminProducts',1,0,''),(11,9,1,NULL,'AdminCategories',1,0,''),(12,9,2,NULL,'AdminTracking',1,0,''),(13,9,3,NULL,'AdminParentAttributesGroups',1,0,''),(14,13,0,NULL,'AdminAttributesGroups',1,0,''),(15,13,1,NULL,'AdminFeatures',1,0,''),(16,9,4,NULL,'AdminParentManufacturers',1,0,''),(17,16,0,NULL,'AdminManufacturers',1,0,''),(18,16,1,NULL,'AdminSuppliers',1,0,''),(19,9,5,NULL,'AdminAttachments',1,0,''),(20,9,6,NULL,'AdminParentCartRules',1,0,''),(21,20,0,NULL,'AdminCartRules',1,0,''),(22,20,1,NULL,'AdminSpecificPriceRule',1,0,''),(23,9,7,NULL,'AdminStockManagement',1,0,''),(24,2,2,NULL,'AdminParentCustomer',1,0,'account_circle'),(25,24,0,NULL,'AdminCustomers',1,0,''),(26,24,1,NULL,'AdminAddresses',1,0,''),(27,24,2,NULL,'AdminOutstanding',0,0,''),(28,2,3,NULL,'AdminParentCustomerThreads',1,0,'chat'),(29,28,0,NULL,'AdminCustomerThreads',1,0,''),(30,28,1,NULL,'AdminOrderMessage',1,0,''),(31,28,2,NULL,'AdminReturn',1,0,''),(32,2,4,NULL,'AdminStats',1,0,'assessment'),(33,2,5,NULL,'AdminStock',1,0,'store'),(34,33,0,NULL,'AdminWarehouses',1,0,''),(35,33,1,NULL,'AdminParentStockManagement',1,0,''),(36,35,0,NULL,'AdminStockManagement',1,0,''),(37,36,0,NULL,'AdminStockMvt',1,0,''),(38,36,1,NULL,'AdminStockInstantState',1,0,''),(39,36,2,NULL,'AdminStockCover',1,0,''),(40,33,2,NULL,'AdminSupplyOrders',1,0,''),(41,33,3,NULL,'AdminStockConfiguration',1,0,''),(42,0,2,NULL,'IMPROVE',1,0,''),(43,42,0,NULL,'AdminParentModulesSf',1,0,'extension'),(44,43,0,NULL,'AdminModulesSf',1,0,''),(45,44,0,NULL,'AdminModulesManage',1,0,''),(46,44,1,NULL,'AdminModulesNotifications',1,0,''),(47,44,2,NULL,'AdminModulesUpdates',1,0,''),(48,43,1,NULL,'AdminParentModulesCatalog',1,0,''),(49,48,0,'','AdminModulesCatalog',0,0,''),(50,48,1,'','AdminAddonsCatalog',0,0,''),(51,43,2,NULL,'AdminModules',0,0,''),(52,42,1,NULL,'AdminParentThemes',1,0,'desktop_mac'),(53,126,1,'','AdminThemes',1,0,''),(54,52,1,'','AdminThemesCatalog',0,0,''),(55,52,2,NULL,'AdminParentMailTheme',1,0,''),(56,55,0,NULL,'AdminMailTheme',1,0,''),(57,52,3,NULL,'AdminCmsContent',1,0,''),(58,52,4,NULL,'AdminModulesPositions',1,0,''),(59,52,5,NULL,'AdminImages',1,0,''),(60,42,2,NULL,'AdminParentShipping',1,0,'local_shipping'),(61,60,0,NULL,'AdminCarriers',1,0,''),(62,60,1,NULL,'AdminShipping',1,0,''),(63,42,3,NULL,'AdminParentPayment',1,0,'payment'),(64,63,0,NULL,'AdminPayment',1,0,''),(65,63,1,NULL,'AdminPaymentPreferences',1,0,''),(66,42,4,NULL,'AdminInternational',1,0,'language'),(67,66,0,NULL,'AdminParentLocalization',1,0,''),(68,67,0,NULL,'AdminLocalization',1,0,''),(69,67,1,NULL,'AdminLanguages',1,0,''),(70,67,2,NULL,'AdminCurrencies',1,0,''),(71,67,3,NULL,'AdminGeolocation',1,0,''),(72,66,1,NULL,'AdminParentCountries',1,0,''),(73,72,0,NULL,'AdminZones',1,0,''),(74,72,1,NULL,'AdminCountries',1,0,''),(75,72,2,NULL,'AdminStates',1,0,''),(76,66,2,NULL,'AdminParentTaxes',1,0,''),(77,76,0,NULL,'AdminTaxes',1,0,''),(78,76,1,NULL,'AdminTaxRulesGroup',1,0,''),(79,66,3,NULL,'AdminTranslations',1,0,''),(80,0,3,NULL,'CONFIGURE',1,0,''),(81,80,0,NULL,'ShopParameters',1,0,'settings'),(82,81,0,NULL,'AdminParentPreferences',1,0,''),(83,82,0,NULL,'AdminPreferences',1,0,''),(84,82,1,NULL,'AdminMaintenance',1,0,''),(85,81,1,NULL,'AdminParentOrderPreferences',1,0,''),(86,85,0,NULL,'AdminOrderPreferences',1,0,''),(87,85,1,NULL,'AdminStatuses',1,0,''),(88,81,2,NULL,'AdminPPreferences',1,0,''),(89,81,3,NULL,'AdminParentCustomerPreferences',1,0,''),(90,89,0,NULL,'AdminCustomerPreferences',1,0,''),(91,89,1,NULL,'AdminGroups',1,0,''),(92,89,2,NULL,'AdminGenders',1,0,''),(93,81,4,NULL,'AdminParentStores',1,0,''),(94,93,0,NULL,'AdminContacts',1,0,''),(95,93,1,NULL,'AdminStores',1,0,''),(96,81,5,NULL,'AdminParentMeta',1,0,''),(97,96,0,NULL,'AdminMeta',1,0,''),(98,96,1,NULL,'AdminSearchEngines',1,0,''),(99,96,2,NULL,'AdminReferrers',1,0,''),(100,81,6,NULL,'AdminParentSearchConf',1,0,''),(101,100,0,NULL,'AdminSearchConf',1,0,''),(102,100,1,NULL,'AdminTags',1,0,''),(103,80,1,NULL,'AdminAdvancedParameters',1,0,'settings_applications'),(104,103,0,NULL,'AdminInformation',1,0,''),(105,103,1,NULL,'AdminPerformance',1,0,''),(106,103,2,NULL,'AdminAdminPreferences',1,0,''),(107,103,3,NULL,'AdminEmails',1,0,''),(108,103,4,NULL,'AdminImport',1,0,''),(109,103,5,NULL,'AdminParentEmployees',1,0,''),(110,109,0,NULL,'AdminEmployees',1,0,''),(111,109,1,NULL,'AdminProfiles',1,0,''),(112,109,2,NULL,'AdminAccess',1,0,''),(113,103,6,NULL,'AdminParentRequestSql',1,0,''),(114,113,0,NULL,'AdminRequestSql',1,0,''),(115,113,1,NULL,'AdminBackup',1,0,''),(116,103,7,NULL,'AdminLogs',1,0,''),(117,103,8,NULL,'AdminWebservice',1,0,''),(118,103,9,NULL,'AdminShopGroup',0,0,''),(119,103,10,NULL,'AdminShopUrl',0,0,''),(120,-1,1,NULL,'AdminQuickAccesses',1,0,''),(121,0,4,NULL,'DEFAULT',1,0,''),(122,-1,3,NULL,'AdminPatterns',1,0,''),(123,-1,4,'dashgoals','AdminDashgoals',1,0,''),(124,-1,5,'ps_faviconnotificationbo','AdminConfigureFaviconBo',1,0,''),(125,52,6,'ps_linklist','AdminLinkWidget',1,0,''),(126,52,0,'','AdminThemesParent',1,0,''),(127,126,2,'ps_themecusto','AdminPsThemeCustoConfiguration',1,0,''),(128,126,3,'ps_themecusto','AdminPsThemeCustoAdvanced',1,0,''),(129,0,5,'welcome','AdminWelcome',1,0,''),(130,81,7,'gamification','AdminGamification',1,0,''),(131,42,5,'emarketing','AdminEmarketing',1,0,'track_changes'),(132,-1,6,'psgdpr','AdminAjaxPsgdpr',1,0,''),(133,-1,7,'psgdpr','AdminDownloadInvoicesPsgdpr',1,0,''),(134,48,0,'ps_mbo','AdminPsMboModule',1,0,''),(135,48,1,'ps_mbo','AdminPsMboAddons',1,0,''),(136,-1,2,'ps_mbo','AdminPsMboRecommended',1,0,''),(137,52,1,'ps_mbo','AdminPsMboTheme',1,0,''),(138,-1,8,'ps_buybuttonlite','AdminAjaxPs_buybuttonlite',1,0,''),(139,2,6,'paypal','AdminParentPaypalConfiguration',0,0,'payment'),(140,139,1,'paypal','AdminPaypalConfiguration',0,0,''),(141,140,1,'paypal','AdminPayPalSetup',1,0,''),(142,140,2,'paypal','AdminPayPalCustomizeCheckout',1,0,''),(143,140,3,'paypal','AdminPayPalHelp',1,0,''),(144,140,4,'paypal','AdminPayPalLogs',1,0,''),(145,139,2,'paypal','AdminPaypalGetCredentials',0,0,''),(146,139,3,'paypal','AdminPaypalProcessLogger',1,0,'');
/*!40000 ALTER TABLE `ps_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_advice`
--

DROP TABLE IF EXISTS `ps_tab_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  PRIMARY KEY (`id_tab`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_advice`
--

LOCK TABLES `ps_tab_advice` WRITE;
/*!40000 ALTER TABLE `ps_tab_advice` DISABLE KEYS */;
INSERT INTO `ps_tab_advice` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12);
/*!40000 ALTER TABLE `ps_tab_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_lang`
--

DROP TABLE IF EXISTS `ps_tab_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_lang` (
  `id_tab` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`),
  KEY `IDX_CFD9262DED47AB56` (`id_tab`),
  KEY `IDX_CFD9262DBA299860` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_lang`
--

LOCK TABLES `ps_tab_lang` WRITE;
/*!40000 ALTER TABLE `ps_tab_lang` DISABLE KEYS */;
INSERT INTO `ps_tab_lang` VALUES (1,1,'Pulpit'),(2,1,'Sprzedaż'),(3,1,'Zamówienia'),(4,1,'Zamówienia'),(5,1,'Faktury'),(6,1,'Druki kredytowe'),(7,1,'Druk wysyłki'),(8,1,'Koszyki zakupowe'),(9,1,'Katalog'),(10,1,'Produkty'),(11,1,'Kategorie'),(12,1,'Monitorowanie'),(13,1,'Atrybuty & Cechy'),(14,1,'Atrybuty'),(15,1,'Funkcje'),(16,1,'Marki & Dostawcy'),(17,1,'Marki'),(18,1,'Dostawcy'),(19,1,'Pliki'),(20,1,'Rabaty'),(21,1,'Kody rabatowe'),(22,1,'Reguły cenowe katalogu'),(23,1,'Stocks'),(24,1,'Klienci'),(25,1,'Klienci'),(26,1,'Adresy'),(27,1,'Saldo'),(28,1,'Obsługa klienta'),(29,1,'Obsługa klienta'),(30,1,'Wiadomości zamówienia'),(31,1,'Zwroty produktów'),(32,1,'Statystyki'),(34,1,'Magazyny'),(35,1,'Zarządzanie magazynem'),(36,1,'Zarządzanie magazynem'),(37,1,'Ruch magazynowy'),(38,1,'Stany magazynowe'),(39,1,'Aktualne pokrycie stanu'),(40,1,'Dostawa zamówień'),(41,1,'Konfiguracja'),(42,1,'Ulepszenia'),(43,1,'Moduły'),(44,1,'Module Manager'),(45,1,'Moduły'),(46,1,'Powiadomienia'),(47,1,'Aktualizacje'),(48,1,'Katalog'),(49,1,'Katalog'),(50,1,'Module Selections'),(52,1,'Wygląd'),(53,1,'Szablony'),(54,1,'Katalog'),(55,1,'Szablon maila'),(56,1,'Szablon maila'),(57,1,'Strony'),(58,1,'Pozycje'),(59,1,'Zdjęcia'),(60,1,'Wysyłka'),(61,1,'Przewoźnicy'),(62,1,'Preferencje'),(63,1,'Płatność'),(64,1,'Płatności'),(65,1,'Preferencje'),(66,1,'Międzynarodowy'),(67,1,'Lokalizacja'),(68,1,'Lokalizacja'),(69,1,'Języki'),(70,1,'Waluty'),(71,1,'Geolokalizacja'),(72,1,'Położenie'),(73,1,'Strefy'),(74,1,'Kraje'),(75,1,'Województwa lub regiony'),(76,1,'Podatki'),(77,1,'Podatki'),(78,1,'Reguły podatków'),(79,1,'Tłumaczenia'),(80,1,'Konfiguruj'),(81,1,'Preferencje'),(82,1,'Ogólny'),(83,1,'Ogólny'),(84,1,'Przerwa techniczna'),(85,1,'Zamówienia'),(86,1,'Zamówienia'),(87,1,'Statusy'),(88,1,'Produkty'),(89,1,'Klienci'),(90,1,'Klienci'),(91,1,'Grupy'),(92,1,'Tytuły'),(93,1,'Kontakt'),(94,1,'Kontakty'),(95,1,'Sklepy'),(96,1,'Ruch'),(97,1,'SEO & URL'),(98,1,'Wyszukiwarki'),(99,1,'Polecający'),(100,1,'Szukaj'),(101,1,'Szukaj'),(102,1,'Tagi'),(103,1,'Zaawansowane'),(104,1,'Informacja'),(105,1,'Wydajność'),(106,1,'Administracja'),(107,1,'Adres e-mail'),(108,1,'Importuj'),(109,1,'Zespół'),(110,1,'Pracownicy'),(111,1,'Profile'),(112,1,'Uprawnienia'),(113,1,'Baza danych'),(114,1,'Menadżer SQL'),(115,1,'Kopia zapasowa DB'),(116,1,'Logi'),(117,1,'API'),(118,1,'Multisklep'),(119,1,'Multisklep'),(120,1,'Szybki dostęp'),(121,1,'Więcej'),(123,1,'Dashgoals'),(124,1,'Pokaż powiadomienia o nowych zamówieniach'),(125,1,'Link Widget'),(126,1,'Szablony'),(127,1,'Pages Configuration'),(128,1,'Advanced Customization'),(129,1,'Welcome'),(130,1,'Merchant Expertise'),(131,1,'Advertising'),(132,1,'Oficjalna zgodność z RODO'),(133,1,'Oficjalna zgodność z RODO'),(134,1,'Katalog'),(135,1,'Module Selections'),(136,1,'Module recommended'),(137,1,'Katalog'),(138,1,'ps_buybuttonlite'),(139,1,'PayPal Official'),(140,1,'Konfiguracja'),(141,1,'Ustawienia'),(142,1,'Doświadczenie'),(143,1,'Pomoc'),(144,1,'Dzienniki'),(145,1,'Get Credentials'),(146,1,'Logger');
/*!40000 ALTER TABLE `ps_tab_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_module_preference`
--

DROP TABLE IF EXISTS `ps_tab_module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_module_preference` (
  `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tab_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_module_preference`
--

LOCK TABLES `ps_tab_module_preference` WRITE;
/*!40000 ALTER TABLE `ps_tab_module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tab_module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tag`
--

DROP TABLE IF EXISTS `ps_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tag`
--

LOCK TABLES `ps_tag` WRITE;
/*!40000 ALTER TABLE `ps_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tag_count`
--

DROP TABLE IF EXISTS `ps_tag_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tag_count` (
  `id_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_tag` int(10) unsigned NOT NULL DEFAULT '0',
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '0',
  `counter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_tag`),
  KEY `id_group` (`id_group`,`id_lang`,`id_shop`,`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tag_count`
--

LOCK TABLES `ps_tag_count` WRITE;
/*!40000 ALTER TABLE `ps_tag_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tag_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax`
--

DROP TABLE IF EXISTS `ps_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax`
--

LOCK TABLES `ps_tax` WRITE;
/*!40000 ALTER TABLE `ps_tax` DISABLE KEYS */;
INSERT INTO `ps_tax` VALUES (1,23.000,1,0),(2,8.000,1,0),(3,5.000,1,0),(4,0.000,1,0),(5,20.000,1,0),(6,21.000,1,0),(7,20.000,1,0),(8,19.000,1,0),(9,21.000,1,0),(10,19.000,1,0),(11,25.000,1,0),(12,20.000,1,0),(13,21.000,1,0),(14,24.000,1,0),(15,20.000,1,0),(16,20.000,1,0),(17,23.000,1,0),(18,25.000,1,0),(19,27.000,1,0),(20,23.000,1,0),(21,22.000,1,0),(22,21.000,1,0),(23,17.000,1,0),(24,21.000,1,0),(25,18.000,1,0),(26,21.000,1,0),(27,23.000,1,0),(28,20.000,1,0),(29,25.000,1,0),(30,22.000,1,0),(31,20.000,1,0);
/*!40000 ALTER TABLE `ps_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_lang`
--

DROP TABLE IF EXISTS `ps_tax_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_lang`
--

LOCK TABLES `ps_tax_lang` WRITE;
/*!40000 ALTER TABLE `ps_tax_lang` DISABLE KEYS */;
INSERT INTO `ps_tax_lang` VALUES (1,1,'PTU PL 23%'),(2,1,'PTU PL 8%'),(3,1,'PTU PL 5%'),(4,1,'PTU PL 0'),(5,1,'USt. AT 20%'),(6,1,'TVA BE 21%'),(7,1,'ДДС BG 20%'),(8,1,'ΦΠΑ CY 19%'),(9,1,'DPH CZ 21%'),(10,1,'MwSt. DE 19%'),(11,1,'moms DK 25%'),(12,1,'km EE 20%'),(13,1,'IVA ES 21%'),(14,1,'ALV FI 24%'),(15,1,'TVA FR 20%'),(16,1,'VAT UK 20%'),(17,1,'ΦΠΑ GR 23%'),(18,1,'Croatia PDV 25%'),(19,1,'ÁFA HU 27%'),(20,1,'VAT IE 23%'),(21,1,'IVA IT 22%'),(22,1,'PVM LT 21%'),(23,1,'TVA LU 17%'),(24,1,'PVN LV 21%'),(25,1,'VAT MT 18%'),(26,1,'BTW NL 21%'),(27,1,'IVA PT 23%'),(28,1,'TVA RO 20%'),(29,1,'Moms SE 25%'),(30,1,'DDV SI 22%'),(31,1,'DPH SK 20%');
/*!40000 ALTER TABLE `ps_tax_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_rule`
--

DROP TABLE IF EXISTS `ps_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_rule` (
  `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_rule`
--

LOCK TABLES `ps_tax_rule` WRITE;
/*!40000 ALTER TABLE `ps_tax_rule` DISABLE KEYS */;
INSERT INTO `ps_tax_rule` VALUES (1,1,3,0,'0','0',1,0,''),(2,1,236,0,'0','0',1,0,''),(3,1,16,0,'0','0',1,0,''),(4,1,20,0,'0','0',1,0,''),(5,1,1,0,'0','0',1,0,''),(6,1,86,0,'0','0',1,0,''),(7,1,9,0,'0','0',1,0,''),(8,1,6,0,'0','0',1,0,''),(9,1,8,0,'0','0',1,0,''),(10,1,26,0,'0','0',1,0,''),(11,1,10,0,'0','0',1,0,''),(12,1,76,0,'0','0',1,0,''),(13,1,125,0,'0','0',1,0,''),(14,1,131,0,'0','0',1,0,''),(15,1,12,0,'0','0',1,0,''),(16,1,143,0,'0','0',1,0,''),(17,1,139,0,'0','0',1,0,''),(18,1,13,0,'0','0',1,0,''),(19,1,2,0,'0','0',1,0,''),(20,1,14,0,'0','0',1,0,''),(21,1,15,0,'0','0',1,0,''),(22,1,36,0,'0','0',1,0,''),(23,1,193,0,'0','0',1,0,''),(24,1,37,0,'0','0',1,0,''),(25,1,7,0,'0','0',1,0,''),(26,1,18,0,'0','0',1,0,''),(27,2,3,0,'0','0',2,0,''),(28,2,236,0,'0','0',2,0,''),(29,2,16,0,'0','0',2,0,''),(30,2,20,0,'0','0',2,0,''),(31,2,1,0,'0','0',2,0,''),(32,2,86,0,'0','0',2,0,''),(33,2,9,0,'0','0',2,0,''),(34,2,6,0,'0','0',2,0,''),(35,2,8,0,'0','0',2,0,''),(36,2,26,0,'0','0',2,0,''),(37,2,10,0,'0','0',2,0,''),(38,2,76,0,'0','0',2,0,''),(39,2,125,0,'0','0',2,0,''),(40,2,131,0,'0','0',2,0,''),(41,2,12,0,'0','0',2,0,''),(42,2,143,0,'0','0',2,0,''),(43,2,139,0,'0','0',2,0,''),(44,2,13,0,'0','0',2,0,''),(45,2,2,0,'0','0',2,0,''),(46,2,14,0,'0','0',2,0,''),(47,2,15,0,'0','0',2,0,''),(48,2,36,0,'0','0',2,0,''),(49,2,193,0,'0','0',2,0,''),(50,2,37,0,'0','0',2,0,''),(51,2,7,0,'0','0',2,0,''),(52,2,18,0,'0','0',2,0,''),(53,3,3,0,'0','0',3,0,''),(54,3,236,0,'0','0',3,0,''),(55,3,16,0,'0','0',3,0,''),(56,3,20,0,'0','0',3,0,''),(57,3,1,0,'0','0',3,0,''),(58,3,86,0,'0','0',3,0,''),(59,3,9,0,'0','0',3,0,''),(60,3,6,0,'0','0',3,0,''),(61,3,8,0,'0','0',3,0,''),(62,3,10,0,'0','0',3,0,''),(63,3,76,0,'0','0',3,0,''),(64,3,125,0,'0','0',3,0,''),(65,3,131,0,'0','0',3,0,''),(66,3,12,0,'0','0',3,0,''),(67,3,143,0,'0','0',3,0,''),(68,3,139,0,'0','0',3,0,''),(69,3,13,0,'0','0',3,0,''),(70,3,2,0,'0','0',3,0,''),(71,3,14,0,'0','0',3,0,''),(72,3,15,0,'0','0',3,0,''),(73,3,36,0,'0','0',3,0,''),(74,3,193,0,'0','0',3,0,''),(75,3,37,0,'0','0',3,0,''),(76,3,7,0,'0','0',3,0,''),(77,3,18,0,'0','0',3,0,''),(78,4,3,0,'0','0',4,0,''),(79,4,236,0,'0','0',4,0,''),(80,4,16,0,'0','0',4,0,''),(81,4,20,0,'0','0',4,0,''),(82,4,1,0,'0','0',4,0,''),(83,4,86,0,'0','0',4,0,''),(84,4,9,0,'0','0',4,0,''),(85,4,6,0,'0','0',4,0,''),(86,4,8,0,'0','0',4,0,''),(87,4,10,0,'0','0',4,0,''),(88,4,76,0,'0','0',4,0,''),(89,4,125,0,'0','0',4,0,''),(90,4,131,0,'0','0',4,0,''),(91,4,12,0,'0','0',4,0,''),(92,4,143,0,'0','0',4,0,''),(93,4,139,0,'0','0',4,0,''),(94,4,13,0,'0','0',4,0,''),(95,4,2,0,'0','0',4,0,''),(96,4,14,0,'0','0',4,0,''),(97,4,15,0,'0','0',4,0,''),(98,4,36,0,'0','0',4,0,''),(99,4,193,0,'0','0',4,0,''),(100,4,37,0,'0','0',4,0,''),(101,4,7,0,'0','0',4,0,''),(102,4,18,0,'0','0',4,0,''),(103,5,14,0,'0','0',1,0,''),(104,5,2,0,'0','0',5,0,''),(105,5,3,0,'0','0',6,0,''),(106,5,236,0,'0','0',7,0,''),(107,5,76,0,'0','0',8,0,''),(108,5,16,0,'0','0',9,0,''),(109,5,1,0,'0','0',10,0,''),(110,5,20,0,'0','0',11,0,''),(111,5,86,0,'0','0',12,0,''),(112,5,6,0,'0','0',13,0,''),(113,5,7,0,'0','0',14,0,''),(114,5,8,0,'0','0',15,0,''),(115,5,17,0,'0','0',16,0,''),(116,5,9,0,'0','0',17,0,''),(117,5,74,0,'0','0',18,0,''),(118,5,143,0,'0','0',19,0,''),(119,5,26,0,'0','0',20,0,''),(120,5,10,0,'0','0',21,0,''),(121,5,131,0,'0','0',22,0,''),(122,5,12,0,'0','0',23,0,''),(123,5,125,0,'0','0',24,0,''),(124,5,139,0,'0','0',25,0,''),(125,5,13,0,'0','0',26,0,''),(126,5,15,0,'0','0',27,0,''),(127,5,36,0,'0','0',28,0,''),(128,5,18,0,'0','0',29,0,''),(129,5,193,0,'0','0',30,0,''),(130,5,37,0,'0','0',31,0,'');
/*!40000 ALTER TABLE `ps_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_rules_group`
--

DROP TABLE IF EXISTS `ps_tax_rules_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_rules_group`
--

LOCK TABLES `ps_tax_rules_group` WRITE;
/*!40000 ALTER TABLE `ps_tax_rules_group` DISABLE KEYS */;
INSERT INTO `ps_tax_rules_group` VALUES (1,'PL Standard Rate (23%)',1,0,'2020-11-30 19:28:30','2020-11-30 19:28:30'),(2,'PL Reduced Rate (8%)',1,0,'2020-11-30 19:28:30','2020-11-30 19:28:30'),(3,'PL Reduced Rate (5%)',1,0,'2020-11-30 19:28:31','2020-11-30 19:28:31'),(4,'PL Exempted Rate (0%)',1,0,'2020-11-30 19:28:31','2020-11-30 19:28:31'),(5,'EU VAT For Virtual Products',1,0,'2020-11-30 19:28:31','2020-11-30 19:28:31');
/*!40000 ALTER TABLE `ps_tax_rules_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_rules_group_shop`
--

DROP TABLE IF EXISTS `ps_tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_rules_group_shop`
--

LOCK TABLES `ps_tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_tax_rules_group_shop` DISABLE KEYS */;
INSERT INTO `ps_tax_rules_group_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `ps_tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_timezone`
--

DROP TABLE IF EXISTS `ps_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_timezone`
--

LOCK TABLES `ps_timezone` WRITE;
/*!40000 ALTER TABLE `ps_timezone` DISABLE KEYS */;
INSERT INTO `ps_timezone` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Asmera'),(7,'Africa/Bamako'),(8,'Africa/Bangui'),(9,'Africa/Banjul'),(10,'Africa/Bissau'),(11,'Africa/Blantyre'),(12,'Africa/Brazzaville'),(13,'Africa/Bujumbura'),(14,'Africa/Cairo'),(15,'Africa/Casablanca'),(16,'Africa/Ceuta'),(17,'Africa/Conakry'),(18,'Africa/Dakar'),(19,'Africa/Dar_es_Salaam'),(20,'Africa/Djibouti'),(21,'Africa/Douala'),(22,'Africa/El_Aaiun'),(23,'Africa/Freetown'),(24,'Africa/Gaborone'),(25,'Africa/Harare'),(26,'Africa/Johannesburg'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Timbuktu'),(51,'Africa/Tripoli'),(52,'Africa/Tunis'),(53,'Africa/Windhoek'),(54,'America/Adak'),(55,'America/Anchorage '),(56,'America/Anguilla'),(57,'America/Antigua'),(58,'America/Araguaina'),(59,'America/Argentina/Buenos_Aires'),(60,'America/Argentina/Catamarca'),(61,'America/Argentina/ComodRivadavia'),(62,'America/Argentina/Cordoba'),(63,'America/Argentina/Jujuy'),(64,'America/Argentina/La_Rioja'),(65,'America/Argentina/Mendoza'),(66,'America/Argentina/Rio_Gallegos'),(67,'America/Argentina/Salta'),(68,'America/Argentina/San_Juan'),(69,'America/Argentina/San_Luis'),(70,'America/Argentina/Tucuman'),(71,'America/Argentina/Ushuaia'),(72,'America/Aruba'),(73,'America/Asuncion'),(74,'America/Atikokan'),(75,'America/Atka'),(76,'America/Bahia'),(77,'America/Barbados'),(78,'America/Belem'),(79,'America/Belize'),(80,'America/Blanc-Sablon'),(81,'America/Boa_Vista'),(82,'America/Bogota'),(83,'America/Boise'),(84,'America/Buenos_Aires'),(85,'America/Cambridge_Bay'),(86,'America/Campo_Grande'),(87,'America/Cancun'),(88,'America/Caracas'),(89,'America/Catamarca'),(90,'America/Cayenne'),(91,'America/Cayman'),(92,'America/Chicago'),(93,'America/Chihuahua'),(94,'America/Coral_Harbour'),(95,'America/Cordoba'),(96,'America/Costa_Rica'),(97,'America/Cuiaba'),(98,'America/Curacao'),(99,'America/Danmarkshavn'),(100,'America/Dawson'),(101,'America/Dawson_Creek'),(102,'America/Denver'),(103,'America/Detroit'),(104,'America/Dominica'),(105,'America/Edmonton'),(106,'America/Eirunepe'),(107,'America/El_Salvador'),(108,'America/Ensenada'),(109,'America/Fort_Wayne'),(110,'America/Fortaleza'),(111,'America/Glace_Bay'),(112,'America/Godthab'),(113,'America/Goose_Bay'),(114,'America/Grand_Turk'),(115,'America/Grenada'),(116,'America/Guadeloupe'),(117,'America/Guatemala'),(118,'America/Guayaquil'),(119,'America/Guyana'),(120,'America/Halifax'),(121,'America/Havana'),(122,'America/Hermosillo'),(123,'America/Indiana/Indianapolis'),(124,'America/Indiana/Knox'),(125,'America/Indiana/Marengo'),(126,'America/Indiana/Petersburg'),(127,'America/Indiana/Tell_City'),(128,'America/Indiana/Vevay'),(129,'America/Indiana/Vincennes'),(130,'America/Indiana/Winamac'),(131,'America/Indianapolis'),(132,'America/Inuvik'),(133,'America/Iqaluit'),(134,'America/Jamaica'),(135,'America/Jujuy'),(136,'America/Juneau'),(137,'America/Kentucky/Louisville'),(138,'America/Kentucky/Monticello'),(139,'America/Knox_IN'),(140,'America/La_Paz'),(141,'America/Lima'),(142,'America/Los_Angeles'),(143,'America/Louisville'),(144,'America/Maceio'),(145,'America/Managua'),(146,'America/Manaus'),(147,'America/Marigot'),(148,'America/Martinique'),(149,'America/Mazatlan'),(150,'America/Mendoza'),(151,'America/Menominee'),(152,'America/Merida'),(153,'America/Mexico_City'),(154,'America/Miquelon'),(155,'America/Moncton'),(156,'America/Monterrey'),(157,'America/Montevideo'),(158,'America/Montreal'),(159,'America/Montserrat'),(160,'America/Nassau'),(161,'America/New_York'),(162,'America/Nipigon'),(163,'America/Nome'),(164,'America/Noronha'),(165,'America/North_Dakota/Center'),(166,'America/North_Dakota/New_Salem'),(167,'America/Panama'),(168,'America/Pangnirtung'),(169,'America/Paramaribo'),(170,'America/Phoenix'),(171,'America/Port-au-Prince'),(172,'America/Port_of_Spain'),(173,'America/Porto_Acre'),(174,'America/Porto_Velho'),(175,'America/Puerto_Rico'),(176,'America/Rainy_River'),(177,'America/Rankin_Inlet'),(178,'America/Recife'),(179,'America/Regina'),(180,'America/Resolute'),(181,'America/Rio_Branco'),(182,'America/Rosario'),(183,'America/Santarem'),(184,'America/Santiago'),(185,'America/Santo_Domingo'),(186,'America/Sao_Paulo'),(187,'America/Scoresbysund'),(188,'America/Shiprock'),(189,'America/St_Barthelemy'),(190,'America/St_Johns'),(191,'America/St_Kitts'),(192,'America/St_Lucia'),(193,'America/St_Thomas'),(194,'America/St_Vincent'),(195,'America/Swift_Current'),(196,'America/Tegucigalpa'),(197,'America/Thule'),(198,'America/Thunder_Bay'),(199,'America/Tijuana'),(200,'America/Toronto'),(201,'America/Tortola'),(202,'America/Vancouver'),(203,'America/Virgin'),(204,'America/Whitehorse'),(205,'America/Winnipeg'),(206,'America/Yakutat'),(207,'America/Yellowknife'),(208,'Antarctica/Casey'),(209,'Antarctica/Davis'),(210,'Antarctica/DumontDUrville'),(211,'Antarctica/Mawson'),(212,'Antarctica/McMurdo'),(213,'Antarctica/Palmer'),(214,'Antarctica/Rothera'),(215,'Antarctica/South_Pole'),(216,'Antarctica/Syowa'),(217,'Antarctica/Vostok'),(218,'Arctic/Longyearbyen'),(219,'Asia/Aden'),(220,'Asia/Almaty'),(221,'Asia/Amman'),(222,'Asia/Anadyr'),(223,'Asia/Aqtau'),(224,'Asia/Aqtobe'),(225,'Asia/Ashgabat'),(226,'Asia/Ashkhabad'),(227,'Asia/Baghdad'),(228,'Asia/Bahrain'),(229,'Asia/Baku'),(230,'Asia/Bangkok'),(231,'Asia/Beirut'),(232,'Asia/Bishkek'),(233,'Asia/Brunei'),(234,'Asia/Calcutta'),(235,'Asia/Choibalsan'),(236,'Asia/Chongqing'),(237,'Asia/Chungking'),(238,'Asia/Colombo'),(239,'Asia/Dacca'),(240,'Asia/Damascus'),(241,'Asia/Dhaka'),(242,'Asia/Dili'),(243,'Asia/Dubai'),(244,'Asia/Dushanbe'),(245,'Asia/Gaza'),(246,'Asia/Harbin'),(247,'Asia/Ho_Chi_Minh'),(248,'Asia/Hong_Kong'),(249,'Asia/Hovd'),(250,'Asia/Irkutsk'),(251,'Asia/Istanbul'),(252,'Asia/Jakarta'),(253,'Asia/Jayapura'),(254,'Asia/Jerusalem'),(255,'Asia/Kabul'),(256,'Asia/Kamchatka'),(257,'Asia/Karachi'),(258,'Asia/Kashgar'),(259,'Asia/Kathmandu'),(260,'Asia/Katmandu'),(261,'Asia/Kolkata'),(262,'Asia/Krasnoyarsk'),(263,'Asia/Kuala_Lumpur'),(264,'Asia/Kuching'),(265,'Asia/Kuwait'),(266,'Asia/Macao'),(267,'Asia/Macau'),(268,'Asia/Magadan'),(269,'Asia/Makassar'),(270,'Asia/Manila'),(271,'Asia/Muscat'),(272,'Asia/Nicosia'),(273,'Asia/Novosibirsk'),(274,'Asia/Omsk'),(275,'Asia/Oral'),(276,'Asia/Phnom_Penh'),(277,'Asia/Pontianak'),(278,'Asia/Pyongyang'),(279,'Asia/Qatar'),(280,'Asia/Qyzylorda'),(281,'Asia/Rangoon'),(282,'Asia/Riyadh'),(283,'Asia/Saigon'),(284,'Asia/Sakhalin'),(285,'Asia/Samarkand'),(286,'Asia/Seoul'),(287,'Asia/Shanghai'),(288,'Asia/Singapore'),(289,'Asia/Taipei'),(290,'Asia/Tashkent'),(291,'Asia/Tbilisi'),(292,'Asia/Tehran'),(293,'Asia/Tel_Aviv'),(294,'Asia/Thimbu'),(295,'Asia/Thimphu'),(296,'Asia/Tokyo'),(297,'Asia/Ujung_Pandang'),(298,'Asia/Ulaanbaatar'),(299,'Asia/Ulan_Bator'),(300,'Asia/Urumqi'),(301,'Asia/Vientiane'),(302,'Asia/Vladivostok'),(303,'Asia/Yakutsk'),(304,'Asia/Yekaterinburg'),(305,'Asia/Yerevan'),(306,'Atlantic/Azores'),(307,'Atlantic/Bermuda'),(308,'Atlantic/Canary'),(309,'Atlantic/Cape_Verde'),(310,'Atlantic/Faeroe'),(311,'Atlantic/Faroe'),(312,'Atlantic/Jan_Mayen'),(313,'Atlantic/Madeira'),(314,'Atlantic/Reykjavik'),(315,'Atlantic/South_Georgia'),(316,'Atlantic/St_Helena'),(317,'Atlantic/Stanley'),(318,'Australia/ACT'),(319,'Australia/Adelaide'),(320,'Australia/Brisbane'),(321,'Australia/Broken_Hill'),(322,'Australia/Canberra'),(323,'Australia/Currie'),(324,'Australia/Darwin'),(325,'Australia/Eucla'),(326,'Australia/Hobart'),(327,'Australia/LHI'),(328,'Australia/Lindeman'),(329,'Australia/Lord_Howe'),(330,'Australia/Melbourne'),(331,'Australia/North'),(332,'Australia/NSW'),(333,'Australia/Perth'),(334,'Australia/Queensland'),(335,'Australia/South'),(336,'Australia/Sydney'),(337,'Australia/Tasmania'),(338,'Australia/Victoria'),(339,'Australia/West'),(340,'Australia/Yancowinna'),(341,'Europe/Amsterdam'),(342,'Europe/Andorra'),(343,'Europe/Athens'),(344,'Europe/Belfast'),(345,'Europe/Belgrade'),(346,'Europe/Berlin'),(347,'Europe/Bratislava'),(348,'Europe/Brussels'),(349,'Europe/Bucharest'),(350,'Europe/Budapest'),(351,'Europe/Chisinau'),(352,'Europe/Copenhagen'),(353,'Europe/Dublin'),(354,'Europe/Gibraltar'),(355,'Europe/Guernsey'),(356,'Europe/Helsinki'),(357,'Europe/Isle_of_Man'),(358,'Europe/Istanbul'),(359,'Europe/Jersey'),(360,'Europe/Kaliningrad'),(361,'Europe/Kiev'),(362,'Europe/Lisbon'),(363,'Europe/Ljubljana'),(364,'Europe/London'),(365,'Europe/Luxembourg'),(366,'Europe/Madrid'),(367,'Europe/Malta'),(368,'Europe/Mariehamn'),(369,'Europe/Minsk'),(370,'Europe/Monaco'),(371,'Europe/Moscow'),(372,'Europe/Nicosia'),(373,'Europe/Oslo'),(374,'Europe/Paris'),(375,'Europe/Podgorica'),(376,'Europe/Prague'),(377,'Europe/Riga'),(378,'Europe/Rome'),(379,'Europe/Samara'),(380,'Europe/San_Marino'),(381,'Europe/Sarajevo'),(382,'Europe/Simferopol'),(383,'Europe/Skopje'),(384,'Europe/Sofia'),(385,'Europe/Stockholm'),(386,'Europe/Tallinn'),(387,'Europe/Tirane'),(388,'Europe/Tiraspol'),(389,'Europe/Uzhgorod'),(390,'Europe/Vaduz'),(391,'Europe/Vatican'),(392,'Europe/Vienna'),(393,'Europe/Vilnius'),(394,'Europe/Volgograd'),(395,'Europe/Warsaw'),(396,'Europe/Zagreb'),(397,'Europe/Zaporozhye'),(398,'Europe/Zurich'),(399,'Indian/Antananarivo'),(400,'Indian/Chagos'),(401,'Indian/Christmas'),(402,'Indian/Cocos'),(403,'Indian/Comoro'),(404,'Indian/Kerguelen'),(405,'Indian/Mahe'),(406,'Indian/Maldives'),(407,'Indian/Mauritius'),(408,'Indian/Mayotte'),(409,'Indian/Reunion'),(410,'Pacific/Apia'),(411,'Pacific/Auckland'),(412,'Pacific/Chatham'),(413,'Pacific/Easter'),(414,'Pacific/Efate'),(415,'Pacific/Enderbury'),(416,'Pacific/Fakaofo'),(417,'Pacific/Fiji'),(418,'Pacific/Funafuti'),(419,'Pacific/Galapagos'),(420,'Pacific/Gambier'),(421,'Pacific/Guadalcanal'),(422,'Pacific/Guam'),(423,'Pacific/Honolulu'),(424,'Pacific/Johnston'),(425,'Pacific/Kiritimati'),(426,'Pacific/Kosrae'),(427,'Pacific/Kwajalein'),(428,'Pacific/Majuro'),(429,'Pacific/Marquesas'),(430,'Pacific/Midway'),(431,'Pacific/Nauru'),(432,'Pacific/Niue'),(433,'Pacific/Norfolk'),(434,'Pacific/Noumea'),(435,'Pacific/Pago_Pago'),(436,'Pacific/Palau'),(437,'Pacific/Pitcairn'),(438,'Pacific/Ponape'),(439,'Pacific/Port_Moresby'),(440,'Pacific/Rarotonga'),(441,'Pacific/Saipan'),(442,'Pacific/Samoa'),(443,'Pacific/Tahiti'),(444,'Pacific/Tarawa'),(445,'Pacific/Tongatapu'),(446,'Pacific/Truk'),(447,'Pacific/Wake'),(448,'Pacific/Wallis'),(449,'Pacific/Yap'),(450,'Brazil/Acre'),(451,'Brazil/DeNoronha'),(452,'Brazil/East'),(453,'Brazil/West'),(454,'Canada/Atlantic'),(455,'Canada/Central'),(456,'Canada/East-Saskatchewan'),(457,'Canada/Eastern'),(458,'Canada/Mountain'),(459,'Canada/Newfoundland'),(460,'Canada/Pacific'),(461,'Canada/Saskatchewan'),(462,'Canada/Yukon'),(463,'CET'),(464,'Chile/Continental'),(465,'Chile/EasterIsland'),(466,'CST6CDT'),(467,'Cuba'),(468,'EET'),(469,'Egypt'),(470,'Eire'),(471,'EST'),(472,'EST5EDT'),(473,'Etc/GMT'),(474,'Etc/GMT+0'),(475,'Etc/GMT+1'),(476,'Etc/GMT+10'),(477,'Etc/GMT+11'),(478,'Etc/GMT+12'),(479,'Etc/GMT+2'),(480,'Etc/GMT+3'),(481,'Etc/GMT+4'),(482,'Etc/GMT+5'),(483,'Etc/GMT+6'),(484,'Etc/GMT+7'),(485,'Etc/GMT+8'),(486,'Etc/GMT+9'),(487,'Etc/GMT-0'),(488,'Etc/GMT-1'),(489,'Etc/GMT-10'),(490,'Etc/GMT-11'),(491,'Etc/GMT-12'),(492,'Etc/GMT-13'),(493,'Etc/GMT-14'),(494,'Etc/GMT-2'),(495,'Etc/GMT-3'),(496,'Etc/GMT-4'),(497,'Etc/GMT-5'),(498,'Etc/GMT-6'),(499,'Etc/GMT-7'),(500,'Etc/GMT-8'),(501,'Etc/GMT-9'),(502,'Etc/GMT0'),(503,'Etc/Greenwich'),(504,'Etc/UCT'),(505,'Etc/Universal'),(506,'Etc/UTC'),(507,'Etc/Zulu'),(508,'Factory'),(509,'GB'),(510,'GB-Eire'),(511,'GMT'),(512,'GMT+0'),(513,'GMT-0'),(514,'GMT0'),(515,'Greenwich'),(516,'Hongkong'),(517,'HST'),(518,'Iceland'),(519,'Iran'),(520,'Israel'),(521,'Jamaica'),(522,'Japan'),(523,'Kwajalein'),(524,'Libya'),(525,'MET'),(526,'Mexico/BajaNorte'),(527,'Mexico/BajaSur'),(528,'Mexico/General'),(529,'MST'),(530,'MST7MDT'),(531,'Navajo'),(532,'NZ'),(533,'NZ-CHAT'),(534,'Poland'),(535,'Portugal'),(536,'PRC'),(537,'PST8PDT'),(538,'ROC'),(539,'ROK'),(540,'Singapore'),(541,'Turkey'),(542,'UCT'),(543,'Universal'),(544,'US/Alaska'),(545,'US/Aleutian'),(546,'US/Arizona'),(547,'US/Central'),(548,'US/East-Indiana'),(549,'US/Eastern'),(550,'US/Hawaii'),(551,'US/Indiana-Starke'),(552,'US/Michigan'),(553,'US/Mountain'),(554,'US/Pacific'),(555,'US/Pacific-New'),(556,'US/Samoa'),(557,'UTC'),(558,'W-SU'),(559,'WET'),(560,'Zulu');
/*!40000 ALTER TABLE `ps_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_translation`
--

DROP TABLE IF EXISTS `ps_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_translation` (
  `id_translation` int(11) NOT NULL AUTO_INCREMENT,
  `id_lang` int(11) NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `translation` text COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_translation`),
  KEY `IDX_ADEBEB36BA299860` (`id_lang`),
  KEY `key` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_translation`
--

LOCK TABLES `ps_translation` WRITE;
/*!40000 ALTER TABLE `ps_translation` DISABLE KEYS */;
INSERT INTO `ps_translation` VALUES (1,1,'Security policy (edit with Customer reassurance module)','Mamy politykę bezpieczeństwa ','ModulesBlockreassuranceShop',NULL),(2,1,'Delivery policy (edit with Customer reassurance module)','Posiadamy zasady dostawy','ModulesBlockreassuranceShop',NULL),(3,1,'Return policy (edit with Customer reassurance module)','Stworzyliśmy zasady zwrotu ','ModulesBlockreassuranceShop',NULL),(4,1,'%copyright% %year% - Ecommerce software by %prestashop%','%copyright% %year% - eButy - eShoeShop','ShopThemeGlobal','classic');
/*!40000 ALTER TABLE `ps_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse`
--

DROP TABLE IF EXISTS `ps_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse` (
  `id_warehouse` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int(11) unsigned NOT NULL,
  `id_address` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse`
--

LOCK TABLES `ps_warehouse` WRITE;
/*!40000 ALTER TABLE `ps_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse_carrier`
--

DROP TABLE IF EXISTS `ps_warehouse_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse_carrier` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse_carrier`
--

LOCK TABLES `ps_warehouse_carrier` WRITE;
/*!40000 ALTER TABLE `ps_warehouse_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse_product_location`
--

DROP TABLE IF EXISTS `ps_warehouse_product_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse_product_location` (
  `id_warehouse_product_location` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse_product_location`
--

LOCK TABLES `ps_warehouse_product_location` WRITE;
/*!40000 ALTER TABLE `ps_warehouse_product_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse_product_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_warehouse_shop`
--

DROP TABLE IF EXISTS `ps_warehouse_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_warehouse_shop` (
  `id_shop` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_warehouse_shop`
--

LOCK TABLES `ps_warehouse_shop` WRITE;
/*!40000 ALTER TABLE `ps_warehouse_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_warehouse_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_web_browser`
--

DROP TABLE IF EXISTS `ps_web_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_web_browser`
--

LOCK TABLES `ps_web_browser` WRITE;
/*!40000 ALTER TABLE `ps_web_browser` DISABLE KEYS */;
INSERT INTO `ps_web_browser` VALUES (1,'Safari'),(2,'Safari iPad'),(3,'Firefox'),(4,'Opera'),(5,'IE 6'),(6,'IE 7'),(7,'IE 8'),(8,'IE 9'),(9,'IE 10'),(10,'IE 11'),(11,'Chrome');
/*!40000 ALTER TABLE `ps_web_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_webservice_account`
--

DROP TABLE IF EXISTS `ps_webservice_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_webservice_account` (
  `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_webservice_account`
--

LOCK TABLES `ps_webservice_account` WRITE;
/*!40000 ALTER TABLE `ps_webservice_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_webservice_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_webservice_account_shop`
--

DROP TABLE IF EXISTS `ps_webservice_account_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_webservice_account_shop` (
  `id_webservice_account` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_webservice_account_shop`
--

LOCK TABLES `ps_webservice_account_shop` WRITE;
/*!40000 ALTER TABLE `ps_webservice_account_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_webservice_account_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_webservice_permission`
--

DROP TABLE IF EXISTS `ps_webservice_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_webservice_permission`
--

LOCK TABLES `ps_webservice_permission` WRITE;
/*!40000 ALTER TABLE `ps_webservice_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_webservice_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_zone`
--

DROP TABLE IF EXISTS `ps_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_zone`
--

LOCK TABLES `ps_zone` WRITE;
/*!40000 ALTER TABLE `ps_zone` DISABLE KEYS */;
INSERT INTO `ps_zone` VALUES (1,'Europe',1),(2,'North America',1),(3,'Asia',1),(4,'Africa',1),(5,'Oceania',1),(6,'South America',1),(7,'Europe (non-EU)',1),(8,'Central America/Antilla',1);
/*!40000 ALTER TABLE `ps_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_zone_shop`
--

DROP TABLE IF EXISTS `ps_zone_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_zone_shop` (
  `id_zone` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_zone_shop`
--

LOCK TABLES `ps_zone_shop` WRITE;
/*!40000 ALTER TABLE `ps_zone_shop` DISABLE KEYS */;
INSERT INTO `ps_zone_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);
/*!40000 ALTER TABLE `ps_zone_shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-18 17:59:23
