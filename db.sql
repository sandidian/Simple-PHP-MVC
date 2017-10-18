/*
SQLyog Ultimate - MySQL GUI v8.21 
MySQL - 5.5.5-10.1.25-MariaDB : Database - mini
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mini` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mini`;

/*Table structure for table `song` */

DROP TABLE IF EXISTS `song`;

CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` text COLLATE utf8_unicode_ci NOT NULL,
  `track` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `song` */

insert  into `song`(`id`,`artist`,`track`,`link`) values (2,'Jessy Lanza','Kathy Lee','http://vimeo.com/73455369'),(3,'The Orwells','In my Bed (live)','http://www.youtube.com/watch?v=8tA_2qCGnmE'),(4,'L\'Orange & Stik Figa','Smoke Rings','https://www.youtube.com/watch?v=Q5teohMyGEY'),(5,'Labyrinth Ear','Navy Light','http://www.youtube.com/watch?v=a9qKkG7NDu0'),(6,'Bon Hiver','Wolves (Kill them with Colour Remix)','http://www.youtube.com/watch?v=5GXAL5mzmyw'),(7,'Detachments','Circles (Martyn Remix)','http://www.youtube.com/watch?v=UzS7Gvn7jJ0'),(8,'Dillon & Dirk von Loetzow','Tip Tapping (Live at ZDF Aufnahmezustand)','https://www.youtube.com/watch?v=hbrOLsgu000'),(9,'Dillon','Contact Us (Live at ZDF Aufnahmezustand)','https://www.youtube.com/watch?v=E6WqTL2Up3Y'),(10,'Tricky','Hey Love (Promo Edit)','http://www.youtube.com/watch?v=OIsCGdW49OQ'),(11,'Compuphonic','Sunset feat. Marques Toliver (DJ T. Remix)','http://www.youtube.com/watch?v=Ue5ZWSK9r00'),(12,'Caduk','Divenire (live @ Royal Albert Hall London)','http://www.youtube.com/watch?v=X1DRDcGlSsE'),(13,'Maxxi Soundsystem','Regrets we have no use for (Radio1 Rip)','https://soundcloud.com/maxxisoundsystem/maxxi-soundsystem-ft-name-one'),(14,'Beirut','Nantes (Fredo & Thang Remix)','https://www.youtube.com/watch?v=ojV3oMAgGgU'),(15,'Buku','All Deez','http://www.youtube.com/watch?v=R0bN9JRIqig'),(16,'Pilocka Krach','Wild Pete','http://www.youtube.com/watch?v=4wChP_BEJ4s'),(17,'Mount Kimbie','Here to stray (live at Pitchfork Music Festival Paris)','http://www.youtube.com/watch?v=jecgI-zEgIg'),(18,'Kool Savas','King of Rap (2012) / Ein Wunder','http://www.youtube.com/watch?v=mTqc6UTG1eY&hd=1'),(19,'Chaim feat. Meital De Razon','Love Rehab (Original Mix)','http://www.youtube.com/watch?v=MJT1BbNFiGs'),(20,'Emika','Searching','http://www.youtube.com/watch?v=oscuSiHfbwo'),(21,'Emika','Sing to me','http://www.youtube.com/watch?v=k9sDBZm8pgk'),(22,'George Fitzgerald','Thinking of You','http://www.youtube.com/watch?v=-14B8l49iKA'),(23,'Disclosure','You & Me (Flume Edit)','http://www.youtube.com/watch?v=OUkkaqSNduU'),(24,'Crystal Castles','Doe Deer','http://www.youtube.com/watch?v=zop0sWrKJnQ'),(25,'Tok Tok vs. Soffy O.','Missy Queens Gonna Die','http://www.youtube.com/watch?v=EN0Tnw5zy6w'),(26,'Fink','Maker (Synapson Remix)','http://www.youtube.com/watch?v=Dyd-cUkj4Nk'),(27,'Flight Facilities (ft. Christine Hoberg)','Clair De Lune','http://www.youtube.com/watch?v=Jcu1AHaTchM'),(28,'Karmon','Turning Point (Original Mix)','https://www.youtube.com/watch?v=-tB-zyLSPEo'),(29,'Shuttle Life','The Birds','http://www.youtube.com/watch?v=-I3m3cWDEtM'),(32,'cau','caduk','cadukangsa.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
