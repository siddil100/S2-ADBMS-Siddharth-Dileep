CREATE DATABASE  IF NOT EXISTS `q1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `q1`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: q1
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow` (
  `loanno` varchar(8) NOT NULL,
  `cname` varchar(15) DEFAULT NULL,
  `bname` varchar(20) DEFAULT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`loanno`),
  CONSTRAINT `borrow_chk_1` CHECK ((`loanno` like _utf8mb4'l%')),
  CONSTRAINT `borrow_chk_2` CHECK ((`amount` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES ('L201','ANIL','VRCE',1000),('L206','MEHUL','AJNI',5000),('L311','SUNIL','DHARAMPETH',3000),('L321','MADHURI','ANDHERI',2000),('L371','PRAMOD','VIRAR',8000),('L481','KRANTI','NEHRU PLACE',3000);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `bname` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`bname`),
  CONSTRAINT `branch_chk_1` CHECK ((`city` in (_utf8mb4'nagpur',_utf8mb4'delhi',_utf8mb4'banglore',_utf8mb4'bombay')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('AJNI','NAGPUR'),('CHANDNI','DELHI'),('DHARAMPETH','NAGPUR'),('KAROLBAGH','DELHI'),('MG ROAD','BANGLORE'),('VRCE','NAGPUR');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cname` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('ANIL','CALCUTTA'),('KRANTI','BOMBAY'),('MADHURI','NAGPUR'),('MANDAR','PATNA'),('MEHUL','BARODA'),('NAREN','BOMBAY'),('PRAMOD','NAGPUR'),('SANDIP','SURAT'),('SHIVANI','BOMBAY'),('SUNIL','DELHI');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit` (
  `acno` varchar(5) NOT NULL,
  `cname` varchar(15) DEFAULT NULL,
  `bname` varchar(20) DEFAULT NULL,
  `amount` float NOT NULL,
  `adate` date DEFAULT NULL,
  PRIMARY KEY (`acno`),
  CONSTRAINT `deposit_chk_1` CHECK ((`acno` like _utf8mb4'd%')),
  CONSTRAINT `deposit_chk_2` CHECK ((`amount` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit`
--

LOCK TABLES `deposit` WRITE;
/*!40000 ALTER TABLE `deposit` DISABLE KEYS */;
INSERT INTO `deposit` VALUES ('D100','ANIL','VRCE',1000,'1995-03-01'),('D101','SUNIL','ANJNI',500,'1996-01-04'),('D102','MEHUL','KAROLBAGH',3500,'1995-11-17'),('D104','MADHURI','CHANDNI',1200,'1995-12-17'),('D105','PRAMOD','MG ROAD',3000,'1996-03-27'),('D106','SANDIP','ANDHERI',2000,'1996-03-31'),('D107','SHIVANI','VIRAR',1000,'1995-09-05'),('D108','KRANTI','NEHRU PLACE',5000,'1995-07-02'),('D109','MINU','POWAI',7000,'1995-08-10');
/*!40000 ALTER TABLE `deposit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15  7:35:03
