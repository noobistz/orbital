CREATE DATABASE  IF NOT EXISTS `orbital` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `orbital`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: orbital
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('Business Analytics','The Bachelor of Science (Business Analytics) degree programme is an inter-disciplinary undergraduate degree programme offered by the School of Computing with participation from the Business School, Faculty of Engineering, Faculty of Science, and Faculty of Arts and Social Sciences. This is a four-year direct honours programme which offers a common two-year broad-based inter-disciplinary curriculum where all students will read modules in Mathematics, Statistics, Economics, Accounting, Marketing, Decision Science, Industrial and Systems Engineering, Computer Science and Information Systems. Students in their third and fourth years of study may choose elective modules from two lists of either functional or methodological elective modules. Functional elective modules span business functions or sectors of marketing, retailing, logistics, healthcare, etc. Methodological elective modules include those related to big data techniques, statistics, text mining, data mining, social network analysis, econometrics, forecasting, operations research, etc. In sum, these elective modules span the most exciting and challenging areas of business analytics practice in the industry today.'),('Computer Engineering','The Computer Engineering programme (CEG) at NUS prepares its graduates to embark on a lifelong journey in designing computing systems for a smarter world – hence our theme “Designing Intelligence”.\r\n\r\nA sophisticated piece of hardware is useless without the software that brings it to life. Computer engineers introduce intelligence into every conceivable device --- from the smart phone that you cannot live without, to massive industrial control systems that power economies. They create the electronic systems in a modern car containing dozens of computing systems communicating through a network. They connect the physical world with cyberspace to enhance everything from entertainment to healthcare and the environment. CEG gives you the skills and knowledge to engineer exciting solutions that move as well as change the world.\r\n\r\nA uniquely multi-disciplinary programme, CEG transcends the traditional boundary of computer science and electrical engineering. You will enjoy the resources and opportunities offered by both the host departments: Computer Science and Electrical & Computer Engineering. The curriculum aims to bring real-world problems, solutions, and experiences into the university environment. You will have the opportunity to consolidate your knowledge through a unique Full-Year industrial attachment, and through overseas work or learning experience. With the solid fundamentals that the NUS Computer Engineering degree will give you, only imagination and ambition will be your limits.'),('Computer Science','The Bachelor of Computing (Honours) in Computer Science or BComp (CS) programme aims to nurture students for a rewarding computing career in various industry sectors. Suitable for those who love hands-on work and keen to apply computing technologies to solve real-world problems, the programme will equip students with the critical knowledge and capacity to take on the world with confidence.'),('Information Security','The Bachelor of Computing in Information Security aims to:\r\n\r\nTo provide a broad-based, inter-disciplinary information security undergraduate programme within NUS.\r\n\r\nTo contribute to the national focus on growing the pool of cyber security professionals in Singapore.\r\n\r\nTo produce graduates who are able to understand information security issues and practices from both technical and organisational points of view.\r\n'),('Information System','The four-year IS programme provides a stimulating education that equips students with the ability to integrate infocomm technology fundamentals with domain expertise to develop innovative solutions for organisations. Through projects and case studies that are aligned with industry best practices, students will develop an in-depth understanding of the strategic exploitation of infocomm technology in emerging organisational forms. Students become proficient in the design and development of infocomm solutions and the management of infocomm projects. Such skills are vital in helping students develop careers that are being emphasised in the iN2015 plan, such as techno-strategist, solution architect, and infocomm project manager.\r\n\r\nStudents can also take a specialisation in Electronic Commerce.');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-22 19:16:11
