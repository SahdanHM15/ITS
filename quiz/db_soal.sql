/*
SQLyog Professional v12.4.1 (64 bit)
MySQL - 5.6.21 : Database - db_soal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_soal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_soal`;

/*Table structure for table `tbl_soal` */

DROP TABLE IF EXISTS `tbl_soal`;

CREATE TABLE `tbl_soal` (
  `id_soal` int(5) NOT NULL AUTO_INCREMENT,
  `soal` text NOT NULL,
  `a` varchar(40) NOT NULL,
  `b` varchar(40) NOT NULL,
  `c` varchar(40) NOT NULL,
  `d` varchar(40) NOT NULL,
  `knc_jawaban` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_soal`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_soal` */

insert  into `tbl_soal`(`id_soal`,`soal`,`a`,`b`,`c`,`d`,`knc_jawaban`,`gambar`,`tanggal`,`aktif`) values 
(1,'Dibawah merupakan tipe data bilangan bulat adalah ...','char','double','float','int','d','','0000-00-00','Y'),
(2,'Tipe data bahasa C++ untuk true false adalah ...','string','char','boolean','float','c','','0000-00-00','Y'),
(3,'Tipe data yang cocok untuk menampung nama siswa adalah ...','string','int','boolean','char','a','','0000-00-00','Y'),
(4,'Tipe-tipe data berikut akan memberi nilai output, kecuali ...\r\n','int','float','void','char','c','','0000-00-00','Y'),
(5,'Berikut ini adalah tipe data dalam c++ ...','int, float, char, double, cons','int, float, char, double','float, double float, long int','void, main, char, double','b','','0000-00-00','Y'),
(6,'Suatu identifier yang nilainya tidak tetap atau nilainya merupakan hasil dari suatu proses, disebut ...','Variabel','Tipe data','Array','Function','a','','0000-00-00','Y'),
(7,'Operator logika yang menyatakan \"atau\" dalam lambang berikut ini adalah ...','&&','||','!','==','b','','0000-00-00','Y'),
(8,'Fungsi dari operator % sebagai ...','Pembagian 2 bilangan','Membagi perseratus persen','Presentase 2 bilangan','Mencari sisa pembagian 2 bilangan','d','','0000-00-00','Y'),
(9,'Yang termasuk operator logika ingkaran adalah ...','!','&&','==','||','a','','0000-00-00','Y'),
(10,'Operator untuk menyatakan tidak sama dengan dalam c++ adalah ...\r\n','==','=!','>=','!=','d','','0000-00-00','Y');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
