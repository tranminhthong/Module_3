-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: baitap
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `dangkycungcap`
--

DROP TABLE IF EXISTS `dangkycungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangkycungcap` (
  `MaDKCC` varchar(100) NOT NULL,
  `MaNhaCC` varchar(100) DEFAULT NULL,
  `MaLoaiDV` varchar(100) DEFAULT NULL,
  `DongXe` varchar(100) DEFAULT NULL,
  `MaMP` varchar(100) DEFAULT NULL,
  `NgayBatDauCungCap` varchar(100) DEFAULT NULL,
  `NgayKetThucCungCap` varchar(100) DEFAULT NULL,
  `SoLuongXeDangKy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaDKCC`),
  KEY `MaNhaCC` (`MaNhaCC`),
  KEY `MaLoaiDV` (`MaLoaiDV`),
  KEY `DongXe` (`DongXe`),
  KEY `MaMP` (`MaMP`),
  CONSTRAINT `dangkycungcap_ibfk_1` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`),
  CONSTRAINT `dangkycungcap_ibfk_2` FOREIGN KEY (`MaLoaiDV`) REFERENCES `loaidichvu` (`MaLoaiDV`),
  CONSTRAINT `dangkycungcap_ibfk_3` FOREIGN KEY (`DongXe`) REFERENCES `dongxe` (`DongXe`),
  CONSTRAINT `dangkycungcap_ibfk_4` FOREIGN KEY (`MaMP`) REFERENCES `mucphi` (`MaMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangkycungcap`
--

LOCK TABLES `dangkycungcap` WRITE;
/*!40000 ALTER TABLE `dangkycungcap` DISABLE KEYS */;
INSERT INTO `dangkycungcap` VALUES ('DK001','NCC001','DV01','Hiace','MP01','2015/11/20','2016/11/20',NULL),('DK002','NCC002','DV02','Vios','MP02','2015/11/20','2017/11/20',NULL),('DK003','NCC003','DV03','Escape','MP03','2017/11/20','2018/11/20',NULL),('DK004','NCC005','DV01','Cerato','MP04','2015/11/20','2019/11/20',NULL),('DK005','NCC002','DV02','Forte','MP03','2019/11/20','2020/11/20',NULL),('DK006','NCC004','DV03','Starex','MP04','2016/11/10','2021/11/20',NULL),('DK007','NCC005','DV01','Cerato','MP03','2015/11/30','2016/01/25',NULL),('DK008','NCC006','DV01','Vios','MP02','2016/02/28','2016/08/15',NULL),('DK009','NCC005','DV03','Grand-i10','MP02','2016/04/27','2017/04/30',NULL),('DK010','NCC006','DV01','Forte','MP02','2016/11/21','2016/02/22',NULL),('DK011','NCC007','DV01','Forte','MP01','2016/12/25','2017/02/20',NULL),('DK012','NCC007','DV03','Cerato','MP01','2016/04/14','2017/12/20',NULL),('DK013','NCC003','DV02','Cerato','MP01','2015/12/21','2016/12/21',NULL),('DK014','NCC008','DV02','Cerato','MP01','2016/05/20','2016/12/30',NULL),('DK015','NCC003','DV01','Hiace','MP02','2018/04/24','2019/11/20',NULL),('DK016','NCC001','DV03','Grand-i10','MP02','2016/06/22','2016/12/21',NULL),('DK017','NCC002','DV03','Cerato','MP03','2016/09/30','2019/09/30',NULL),('DK020','NCC002','DV03','Cerato','MP04','2016/05/03','2017/10/21',NULL),('DK021','NCC006','DV01','Forte','MP02','2015/01/30','2016/12/30',NULL),('DK022','NCC002','DV02','Cerato','MP04','2016/07/25','2017/12/30',NULL),('DK023','NCC002','DV01','Forte','MP03','2017/11/30','2018/05/20',NULL),('DK024','NCC003','DV03','Forte','MP04','2017/12/23','2019/11/30',NULL),('DK025','NCC003','DV03','Hiace','MP02','2016/08/24','2017/10/25',NULL);
/*!40000 ALTER TABLE `dangkycungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dongxe`
--

DROP TABLE IF EXISTS `dongxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dongxe` (
  `DongXe` varchar(100) NOT NULL,
  `HangXe` varchar(100) DEFAULT NULL,
  `SoChoNgoi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DongXe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongxe`
--

LOCK TABLES `dongxe` WRITE;
/*!40000 ALTER TABLE `dongxe` DISABLE KEYS */;
INSERT INTO `dongxe` VALUES ('Cerato','KIA','7'),('Escape','Ford','5'),('Forte','KIA','5'),('Grand-i10','Huyndai','7'),('Hiace','Toyota','16'),('Starex','Huyndai','7'),('Vios','Toyota','5');
/*!40000 ALTER TABLE `dongxe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaidichvu`
--

DROP TABLE IF EXISTS `loaidichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaidichvu` (
  `MaLoaiDV` varchar(50) NOT NULL,
  `TenLoaiDV` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaLoaiDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidichvu`
--

LOCK TABLES `loaidichvu` WRITE;
/*!40000 ALTER TABLE `loaidichvu` DISABLE KEYS */;
INSERT INTO `loaidichvu` VALUES ('DV01','Dịch vụ xe taxi'),('DV02','Dịch vụ xe buýt công cộng theo tuyến cố định'),('DV03','Dịch vụ cho thuê xe theo hợp đồng');
/*!40000 ALTER TABLE `loaidichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mucphi`
--

DROP TABLE IF EXISTS `mucphi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mucphi` (
  `MaMP` varchar(50) NOT NULL,
  `DonGia` varchar(100) DEFAULT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mucphi`
--

LOCK TABLES `mucphi` WRITE;
/*!40000 ALTER TABLE `mucphi` DISABLE KEYS */;
INSERT INTO `mucphi` VALUES ('MP01','10000','Áp dụng từ ngày 1/2015'),('MP02','15000','Áp dụng từ ngày 2/2015'),('MP03','20000','Áp dụng từ ngày 1/2010'),('MP04','25000','Áp dụng từ ngày 2/2011');
/*!40000 ALTER TABLE `mucphi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MaNhaCC` varchar(100) NOT NULL,
  `TenNhaCC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `SoDT` varchar(50) DEFAULT NULL,
  `MaSoThue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES ('NCC001','Cty TNHH Toàn Phát','Hai Chau','051133999888','568941'),('NCC002','Cty Cổ Phần Đông Du','Lien Chieu','051133999889','456789'),('NCC003','Ông Nguyễn Văn A','Hoa Thuan','051133999890','321456'),('NCC004','Cty Cổ Phần Toàn Cầu Xanh','Hai Chau','05113658945','513364'),('NCC005','Cty TNHH AMA','Thanh Khe','051103875466','546546'),('NCC006','Bà Trần Thị Bích Vân','Lien Chieu','05113587469','524545'),('NCC007','Cty TNHH Phan Thành','Thanh Khe','05113987456','113021'),('NCC008','Ông Phan Đình Nam','Hoa Thuan','05113532456','121230'),('NCC009','Tập đoàn Đông Nam Á','Lien Chieu','05113987121','533654'),('NCC010','Cty Cổ Phần Rạng đông','Lien Chieu','05113569654','187864');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'baitap'
--

--
-- Dumping routines for database 'baitap'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-28  0:04:04
