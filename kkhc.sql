-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 09, 2023 at 05:56 PM
-- Server version: 8.0.32
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkhc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `type`) VALUES
(6, 'KKHC', 'kkhc@123', NULL),
(7, 'Emmy', '1212', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
CREATE TABLE IF NOT EXISTS `children` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `birthdate` int DEFAULT NULL,
  `birthmonth` int DEFAULT NULL,
  `birthyear` int DEFAULT NULL,
  `sundayschoollevel` varchar(50) DEFAULT NULL,
  `dvbslevel` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `motherid` int DEFAULT NULL,
  `fatherid` int DEFAULT NULL,
  `mothername` varchar(254) DEFAULT NULL,
  `fathername` varchar(254) DEFAULT NULL,
  `familychurch` varchar(254) DEFAULT NULL,
  `motherphone` varchar(30) DEFAULT NULL,
  `fatherphone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `motherid` (`motherid`),
  KEY `fatherid` (`fatherid`)
);


--
-- Table structure for table `churchinfo`
--

DROP TABLE IF EXISTS `churchinfo`;
CREATE TABLE IF NOT EXISTS `churchinfo` (
  `memberid` int NOT NULL,
  `Baptizedwhere` varchar(254) DEFAULT NULL,
  `churchrelationship` tinyint(1) DEFAULT NULL,
  `baptizmdate` int DEFAULT NULL,
  `baptizmmonth` int DEFAULT NULL,
  `baptizmyear` int DEFAULT NULL,
  `Dateofmembership` int DEFAULT NULL,
  `monthofmembership` int DEFAULT NULL,
  `yearofmembership` int DEFAULT NULL,
  PRIMARY KEY (`memberid`)
) ;



--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberid` int DEFAULT NULL,
  `field` varchar(254) DEFAULT NULL,
  `edulevel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memberid` (`memberid`)
);



--
-- Table structure for table `marriage`
--

DROP TABLE IF EXISTS `marriage`;
CREATE TABLE IF NOT EXISTS `marriage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `husband_id` int DEFAULT NULL,
  `wife_id` int DEFAULT NULL,
  `spouserank` varchar(100) DEFAULT NULL,
  `spousefname` varchar(100) DEFAULT NULL,
  `spousemname` varchar(100) DEFAULT NULL,
  `spouselname` varchar(100) DEFAULT NULL,
  `weddingdate` int DEFAULT NULL,
  `weddingmonth` int DEFAULT NULL,
  `weddingyear` int DEFAULT NULL,
  `spousechurch` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `husband_id` (`husband_id`),
  KEY `wife_id` (`wife_id`)
);



--
-- Table structure for table `memberinfo`
--

DROP TABLE IF EXISTS `memberinfo`;
CREATE TABLE IF NOT EXISTS `memberinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `subcity` varchar(10) DEFAULT NULL,
  `district` int DEFAULT NULL,
  `homeno` varchar(50) DEFAULT NULL,
  `neighborhood` varchar(254) DEFAULT NULL,
  `Homephone` varchar(20) DEFAULT NULL,
  `personalphone` varchar(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `handicap` tinyint(1) DEFAULT NULL,
  `handicaptype` text,
  `birthdate` int DEFAULT NULL,
  `birthmonth` int DEFAULT NULL,
  `birthyear` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);


--
-- Table structure for table `serviceinfo`
--

DROP TABLE IF EXISTS `serviceinfo`;
CREATE TABLE IF NOT EXISTS `serviceinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberid` int DEFAULT NULL,
  `serviceid` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memberid` (`memberid`),
  KEY `serviceid` (`serviceid`)
);



--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service`) VALUES
(1, 'ዝማሬ'),
(2, 'የልጆች አገልግሎት'),
(3, 'ጸሎት ቡድን'),
(4, 'የወጣቶች አገልግሎት'),
(5, 'የአህቶች አገልግሎት'),
(6, 'ወንጌል ስርጭት'),
(7, 'ዲያቆናት'),
(8, 'ፍቅርና ርህራሄ'),
(9, 'አድር'),
(10, 'ሽምግልና'),
(11, 'ሙሉ ጊዜ አገልጋይ');

-- --------------------------------------------------------

--
-- Table structure for table `unioninfo`
--

DROP TABLE IF EXISTS `unioninfo`;
CREATE TABLE IF NOT EXISTS `unioninfo` (
  `memberid` int NOT NULL,
  `area` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`memberid`)
);



--
-- Table structure for table `workinfo`
--

DROP TABLE IF EXISTS `workinfo`;
CREATE TABLE IF NOT EXISTS `workinfo` (
  `memberid` int DEFAULT NULL,
  `work` tinyint(1) DEFAULT NULL,
  `worktype` varchar(254) DEFAULT NULL,
  `place` varchar(254) DEFAULT NULL,
  `responsiblility` varchar(254) DEFAULT NULL,
  `proffesion` varchar(254) DEFAULT NULL,
  `talent` text,
  KEY `memberid` (`memberid`)
);



--
-- Constraints for table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `children_ibfk_1` FOREIGN KEY (`motherid`) REFERENCES `memberinfo` (`id`),
  ADD CONSTRAINT `children_ibfk_2` FOREIGN KEY (`fatherid`) REFERENCES `memberinfo` (`id`);

--
-- Constraints for table `churchinfo`
--
ALTER TABLE `churchinfo`
  ADD CONSTRAINT `churchinfo_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `memberinfo` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `memberinfo` (`id`);

--
-- Constraints for table `marriage`
--
ALTER TABLE `marriage`
  ADD CONSTRAINT `marriage_ibfk_1` FOREIGN KEY (`husband_id`) REFERENCES `memberinfo` (`id`),
  ADD CONSTRAINT `marriage_ibfk_2` FOREIGN KEY (`wife_id`) REFERENCES `memberinfo` (`id`);

--
-- Constraints for table `serviceinfo`
--
ALTER TABLE `serviceinfo`
  ADD CONSTRAINT `serviceinfo_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `memberinfo` (`id`),
  ADD CONSTRAINT `serviceinfo_ibfk_2` FOREIGN KEY (`serviceid`) REFERENCES `services` (`id`);

--
-- Constraints for table `unioninfo`
--
ALTER TABLE `unioninfo`
  ADD CONSTRAINT `unioninfo_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `memberinfo` (`id`);

--
-- Constraints for table `workinfo`
--
ALTER TABLE `workinfo`
  ADD CONSTRAINT `workinfo_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `memberinfo` (`id`);
COMMIT;


