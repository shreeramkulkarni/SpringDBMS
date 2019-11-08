-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: panchaved_data
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `userName` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `dob` date NOT NULL,
  `aadhar` bigint(17) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adminlogin` (
  `usernameAdmin` varchar(45) NOT NULL,
  `emailAdmin` varchar(255) NOT NULL,
  `passwordAdmin` varchar(45) NOT NULL,
  `securityAnswer` varchar(50) NOT NULL,
  PRIMARY KEY (`usernameAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('admin','admin@p.com','admin123','tvs');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `doctor` (
  `doctorId` int(11) NOT NULL,
  `doctorName` varchar(45) DEFAULT NULL,
  `doctorMobile` varchar(45) DEFAULT NULL,
  `doctorDOB` varchar(45) DEFAULT NULL,
  `doctorQualification` varchar(45) DEFAULT NULL,
  `doctorAddress` varchar(45) DEFAULT NULL,
  `doctorCity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`doctorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `Aadhaar` int(11) NOT NULL,
  `employeeType` varchar(10) NOT NULL,
  PRIMARY KEY (`Aadhaar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient` (
  `patientId` int(11) NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `phoneNo` bigint(15) DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `casetaking` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'abhay','m',79998,'b+','1998-03-15','dsn','kjn','nk','sa',NULL),(2,'sajs','m',79598,'b+','1998-03-15','dsn','kjn','asa','sa',NULL),(3,'rana','m',445464,'a+','1998-03-15','sa','s','d','d',NULL),(4,'prada','f',546,'o+','1998-03-15','jh','hj','gf','gf',NULL),(5,'vaibhav','m',788789,'b+','1998-03-15','sjk','kjddd','rewq','h',NULL),(6,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(7,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(8,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(9,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(10,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(11,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(12,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(15,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(16,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(17,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(18,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(19,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(20,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(21,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(22,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(23,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(24,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(25,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(26,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(27,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(28,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(29,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(30,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(31,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(32,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(33,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(34,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(35,'sakj','f',7878454512,'a+','1998-03-15','sa','sa','sa','da',NULL),(361,'','Male',9552951410,'O+','2019-11-27','pune','pune ','Maharashtra','came here to get well',''),(371,'lomu','Male',4545787845,'AB-','1996-10-04','a','j','maam','d',''),(381,'dsj','Female',4556789817,'100','1982-10-08','sadgsjag','hdsjh','jhsaj','','');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07 12:58:42
