-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: tzkSpringTest
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_branch`
--

DROP TABLE IF EXISTS `tb_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchName` varchar(30) NOT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_branch`
--

LOCK TABLES `tb_branch` WRITE;
/*!40000 ALTER TABLE `tb_branch` DISABLE KEYS */;
INSERT INTO `tb_branch` VALUES (8,'拔河研究所','专研拔河20年'),(9,'java研究','java相关'),(10,'C语言研究','C语言相关');
/*!40000 ALTER TABLE `tb_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` int(11) DEFAULT NULL,
  `customerName` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customer`
--

LOCK TABLES `tb_customer` WRITE;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
INSERT INTO `tb_customer` VALUES (1,'1234',1234,'李好人','12353463'),(2,'1412',1242,'更ewrwe','1423'),(4,'764',123,'瓦尔特','134123256346'),(7,'2324',12345,'熊山炮bk','34583920'),(8,'764',123,'32142','1241234123');
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_department`
--

DROP TABLE IF EXISTS `tb_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departName` varchar(30) NOT NULL,
  `branchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa4d9xa5u6naa31c9fbhbndlg4` (`branchID`),
  CONSTRAINT `FKa4d9xa5u6naa31c9fbhbndlg4` FOREIGN KEY (`branchID`) REFERENCES `tb_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_department`
--

LOCK TABLES `tb_department` WRITE;
/*!40000 ALTER TABLE `tb_department` DISABLE KEYS */;
INSERT INTO `tb_department` VALUES (12,'拔河大力士部',8),(13,'拔河先锋部',8),(14,'java开发部',9),(15,'java测试部',9),(16,'java运维部',9);
/*!40000 ALTER TABLE `tb_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) NOT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `emial` varchar(30) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `partID` int(11) DEFAULT NULL,
  `prtID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgtlyseoyxkppg6ixc0qj90b5o` (`prtID`),
  KEY `FKnr6ckvfnpnypquxccsb5w3255` (`partID`),
  CONSTRAINT `FKgtlyseoyxkppg6ixc0qj90b5o` FOREIGN KEY (`prtID`) REFERENCES `tb_department` (`id`),
  CONSTRAINT `FKnr6ckvfnpnypquxccsb5w3255` FOREIGN KEY (`partID`) REFERENCES `tb_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES (1,'熊哈哈','10086','QWERTY@qq.com',NULL,NULL,NULL),(5,'zhike tang','18307418968','1645435334$@qq.com',NULL,14,NULL),(6,'zhike tang','18307418968','1645435334$@qq.com',NULL,14,NULL),(7,'干横均衡','567858567','1645435334$@qq.com',NULL,12,NULL),(8,'zhike tang','18307418968','1645435334$@qq.com',NULL,16,NULL),(9,'zhike tang','18307418968','1645435334$@qq.com',NULL,12,NULL),(10,'zhike tang','18307418968','1645435334$@qq.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-06 14:42:51
