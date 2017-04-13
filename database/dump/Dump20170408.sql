CREATE DATABASE  IF NOT EXISTS `ibrainmart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ibrainmart`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: ibrainmart
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `ADDRESS_LINE1` varchar(100) NOT NULL,
  `ADDRESS_LINE2` varchar(100) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(100) DEFAULT NULL,
  `APT_NUMBER` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE` varchar(100) NOT NULL,
  `ZIP_CODE` int(11) NOT NULL,
  `COUNTRY` varchar(100) NOT NULL,
  `CELL_NUMBER` varchar(100) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL COMMENT '0 - DELETED (FALSE)\n1 - ACTIVE (NOT DELETED)\n',
  `REMARK` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `INSERT_USER_ID` bigint(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  `UPDATE_USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_user_password_user_master` (`USER_ID`),
  CONSTRAINT `fk_user_address_user_master` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_password`
--

DROP TABLE IF EXISTS `user_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_password` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `STATUS` tinyint(4) DEFAULT NULL COMMENT '0 - DELETED (FALSE)\n1 - ACTIVE (NOT DELETED)\n',
  `REMARK` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `INSERT_USER_ID` bigint(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  `UPDATE_USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_user_password_user_master` (`USER_ID`),
  CONSTRAINT `fk_user_password_user_master` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_password`
--

LOCK TABLES `user_password` WRITE;
/*!40000 ALTER TABLE `user_password` DISABLE KEYS */;
INSERT INTO `user_password` VALUES (1,1,'vajirakarunathilake@gmail.com','1234',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_master` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `IP_ADDRESS` varchar(100) DEFAULT NULL,
  `COUNTRY` varchar(50) NOT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL COMMENT '0 - DELETED (FALSE)\n1 - ACTIVE (NOT DELETED)\n',
  `REMARK` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `INSERT_USER_ID` bigint(20) DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  `UPDATE_USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (1,'vajirakarunathilake@gmail.com','Vajira','Vajira','Hapu',NULL,'Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-08 17:28:57
