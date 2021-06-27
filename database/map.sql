/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.6.47.0 : Database - map
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`map` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `map`;

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(150) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `magnitudo` float DEFAULT NULL,
  `information` text,
  `tanggal` varchar(150) DEFAULT NULL,
  `jarak` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

/*Data for the table `location` */

insert  into `location`(`id`,`lokasi`,`x`,`y`,`magnitudo`,`information`,`tanggal`,`jarak`,`year`,`provinsi`) values 
(6,'Bengkulu',280,330,7.2,NULL,'4 Juni 2000','7-8',2000,'Bengkulu'),
(7,'Aceh',40,30,9.3,NULL,'26 Desember 2004','>9',2004,'Aceh'),
(8,'Pulau Nias',110,165,8.6,NULL,'28 Maret 2005','8-9',2005,'Sumatra Utara'),
(9,'Pulau Simeuleu',50,105,6,NULL,'11 Agustus 2006','5-6',2006,'Aceh'),
(10,'Solok - Bukit Tinggi',200,205,6.4,NULL,'6 Maret 2007','6-7',2007,'Sumatra Utara'),
(11,'Kepulauan Mentawai',170,275,7.7,NULL,'12 September 2007','7-8',2007,'Sumatra Utara'),
(12,'Padang Pariaman',190,205,7.6,NULL,'30 September 2009','7-8',2009,'Sumatra Barat'),
(13,'Kerinci',240,275,6.6,NULL,'1 Oktober 2009','6-7',2009,'Jambi'),
(14,'Sumatra Barat',180,175,7.7,NULL,'25 Oktober 2009','7-8',2010,'Sumatra Barat'),
(15,'Pulau Sumatra',220,195,8.5,NULL,'11 April 2012','8-9',2012,'Sumatra'),
(16,'Aceh',30,25,6.2,NULL,'2 Juli 2013','6-7',2013,'Aceh'),
(17,'Mentawai',170,275,7.8,NULL,'2 Maret 2016','7-8',2016,'Sumatra Utara'),
(18,'Kabupaten Pidie Jaya, Aceh',80,35,6.5,NULL,'7 Desember 2016','6-7',2016,'Aceh'),
(19,'Sumatra Utara',120,85,5.6,NULL,'30 April 2020','5-6',2020,'Sumatra Utara'),
(20,'Sumatra Barat',185,195,5,NULL,'8 September 2020','4-5',2020,'Sumatra Barat'),
(21,'Bandar Lampung',350,395,4.6,NULL,'2 Desember 2020','4-5',2020,'Lampung'),
(22,'Bandar Lampung',360,405,4.3,NULL,'2 Desember 2020','4-5',2020,'Lampung'),
(23,'Langsa, Aceh',127,42,4.9,NULL,'3 Desember 2020','4-5',2020,'Aceh'),
(24,'Karo, Sumatra Utara',135,95,5.4,NULL,'4 Desember 2020','5-6',2020,'Sumatra Utara'),
(25,'Banda Aceh',40,10,5,NULL,'5 Desember 2020','4-5',2020,'Aceh'),
(26,'Bengkulu',295,335,4.3,NULL,'5 Desember 2020','4-5',2020,'Bengkulu'),
(27,'Bukittinggi',210,205,4.8,NULL,'7 Desember 2020','4-5',2020,'Sumatra Barat'),
(28,'Bukittinggi',200,215,4.7,NULL,'12 Juni 2021','4-5',2021,'Sumatra Barat'),
(29,'Bengkulu',280,310,5.2,NULL,'15 Juni 2021','5-6',2021,'Bengkulu');

/*Table structure for table `magnitudo` */

DROP TABLE IF EXISTS `magnitudo`;

CREATE TABLE `magnitudo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magnitudo` varchar(10) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `magnitudo` */

insert  into `magnitudo`(`id`,`magnitudo`,`start`,`end`,`color`) values 
(1,'4-5',4,5,NULL),
(2,'5-6',5,6,NULL),
(3,'6-7',6,7,NULL),
(4,'7-8',7,8,NULL),
(5,'8-9',8,9,NULL),
(6,'>9',9,100,NULL);

/*Table structure for table `year_table` */

DROP TABLE IF EXISTS `year_table`;

CREATE TABLE `year_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `year_table` */

insert  into `year_table`(`id`,`tahun`) values 
(1,2001),
(2,2002),
(3,2003),
(4,2004),
(5,2005),
(6,2006),
(7,2007),
(8,2008),
(9,2009),
(10,2010),
(11,2011),
(12,2012),
(13,2014),
(14,2015),
(15,2016),
(16,2017),
(17,2018),
(18,2019),
(19,2020),
(20,2021);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
