-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: qlphongmach
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_admin_taikhoan` FOREIGN KEY (`id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1851050010','Dang','Buu','Nam','2000-02-04','0768107704','/resources/image/admin.png');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bacsi`
--

DROP TABLE IF EXISTS `bacsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bacsi` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `QueQuan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_bacsi_taikhoan` FOREIGN KEY (`id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bacsi`
--

LOCK TABLES `bacsi` WRITE;
/*!40000 ALTER TABLE `bacsi` DISABLE KEYS */;
INSERT INTO `bacsi` VALUES ('1851050156','Hoang','Buu','Male','2000-04-02','1561615615','/resourceAdmin/plugins/images/users/d2.jpg','Tien Giang','deep_blue_ocean_1992@yahoo.com'),('1851050169','Tran','Phan Huy','Female','2001-03-02','0768107704','/resourceAdmin/plugins/images/users/d1.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('1dd56d41-06b4-4de9-9aa1-8a522c156866','Hoang','Buu','Male','2002-06-09','14555','http://res.cloudinary.com/dsqeplzno/image/upload/v1620922321/my_folder/Buu.jpg','Tien Giang','deep_blue_ocean_1992@yahoo.com'),('21520e40-a02b-408c-b396-2caf61d38325','Do','Trong','Female','2000-01-01','4816116316','http://res.cloudinary.com/dsqeplzno/image/upload/v1620921585/my_folder/Trong.jpg','Binh thuan','nhap27072000@gmail.com');
/*!40000 ALTER TABLE `bacsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benhnhan`
--

DROP TABLE IF EXISTS `benhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhnhan` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhnhan`
--

LOCK TABLES `benhnhan` WRITE;
/*!40000 ALTER TABLE `benhnhan` DISABLE KEYS */;
INSERT INTO `benhnhan` VALUES ('111111111','Hong','Tham','Female','1992-03-11','15656161'),('1851050168','Thien','Phuc','Female','2000-07-27','115'),('1cf18cf5-2045-448a-bc1d-f4325b0e2e74','Abe','Trung ','Male','2000-02-01','1614864515'),('282c271e-e183-4cbd-b517-58a17a0614c4','Yen','Vo','Female','2000-07-27','1'),('914fb8fc-9120-46dd-9670-9e21d10749b2','Thay','Buu','Male','2000-02-04','156189161'),('b85b5dd5-bffb-4eb9-92cf-4e7e7b56d584','Tan','Dat','Male','1998-12-02','166416166');
/*!40000 ALTER TABLE `benhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cakhambenh`
--

DROP TABLE IF EXISTS `cakhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cakhambenh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenCa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cakhambenh`
--

LOCK TABLES `cakhambenh` WRITE;
/*!40000 ALTER TABLE `cakhambenh` DISABLE KEYS */;
INSERT INTO `cakhambenh` VALUES (1,'Ca 1','7:00 - 9:00'),(2,'Ca 2','9:00 - 11:00'),(3,'Ca 3','13:00 - 15:00'),(4,'Ca 4','15:00 - 17:00'),(5,'Ca 5','17:00 - 19:00');
/*!40000 ALTER TABLE `cakhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietcakhambenh`
--

DROP TABLE IF EXISTS `chitietcakhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietcakhambenh` (
  `MaCa` int NOT NULL,
  `MaBacSi` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayKhamBenh` date NOT NULL,
  PRIMARY KEY (`MaCa`,`MaBacSi`,`NgayKhamBenh`),
  KEY `fk_chitietcakhambenh_bacsi` (`MaBacSi`),
  CONSTRAINT `fk_chitietcakhambenh_bacsi` FOREIGN KEY (`MaBacSi`) REFERENCES `bacsi` (`id`),
  CONSTRAINT `fk_chitietcakhambenh_cakhambenh` FOREIGN KEY (`MaCa`) REFERENCES `cakhambenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietcakhambenh`
--

LOCK TABLES `chitietcakhambenh` WRITE;
/*!40000 ALTER TABLE `chitietcakhambenh` DISABLE KEYS */;
INSERT INTO `chitietcakhambenh` VALUES (1,'1851050169','2021-03-18');
/*!40000 ALTER TABLE `chitietcakhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietphieukhambenh`
--

DROP TABLE IF EXISTS `chitietphieukhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietphieukhambenh` (
  `MaPhieuKhamBenh` int NOT NULL,
  `MaLoaiBenh` int NOT NULL,
  PRIMARY KEY (`MaPhieuKhamBenh`,`MaLoaiBenh`),
  KEY `fk_chitietphieukhambenh_loaibenh_idx` (`MaLoaiBenh`),
  CONSTRAINT `fk_chitietphieukhambenh_loaibenh` FOREIGN KEY (`MaLoaiBenh`) REFERENCES `loaibenh` (`id`),
  CONSTRAINT `fk_chitietphieukhambenh_phieukhambenh` FOREIGN KEY (`MaPhieuKhamBenh`) REFERENCES `phieukhambenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietphieukhambenh`
--

LOCK TABLES `chitietphieukhambenh` WRITE;
/*!40000 ALTER TABLE `chitietphieukhambenh` DISABLE KEYS */;
INSERT INTO `chitietphieukhambenh` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `chitietphieukhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiettoathuoc`
--

DROP TABLE IF EXISTS `chitiettoathuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiettoathuoc` (
  `MaToaThuoc` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaThuoc` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  PRIMARY KEY (`MaToaThuoc`,`MaThuoc`),
  KEY `fk_chitiettoathuoc_thuoc_idx` (`MaThuoc`),
  CONSTRAINT `fk_chitiettoathuoc_thuoc` FOREIGN KEY (`MaThuoc`) REFERENCES `thuoc` (`id`),
  CONSTRAINT `fk_chitiettoathuoc_toathuoc` FOREIGN KEY (`MaToaThuoc`) REFERENCES `toathuoc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiettoathuoc`
--

LOCK TABLES `chitiettoathuoc` WRITE;
/*!40000 ALTER TABLE `chitiettoathuoc` DISABLE KEYS */;
INSERT INTO `chitiettoathuoc` VALUES ('TOATHUOC1',1,3,35000,105000),('TOATHUOC2',1,3,35000,105000);
/*!40000 ALTER TABLE `chitiettoathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaToaThuoc` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaNhanVien` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayXuat` datetime NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MaToaThuoc_UNIQUE` (`MaToaThuoc`),
  KEY `fk_hoadon_nhanvien` (`MaNhanVien`),
  CONSTRAINT `fk_hoadon_nhanvien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`id`),
  CONSTRAINT `fk_hoadon_toathuoc` FOREIGN KEY (`MaToaThuoc`) REFERENCES `toathuoc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES ('ae97a5bd-27be-4c61-8dfb-14bb5d24793d','38d24768-2452-46b2-ac50-9efc5e92a378','employee3','2021-12-05 00:00:00',300000),('HOADONSO1','TOATHUOC1','1851050105','2021-03-18 00:00:00',230000),('HOADONSO2','TOATHUOC2','1851050105','2021-03-20 00:00:00',230000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaibenh`
--

DROP TABLE IF EXISTS `loaibenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaibenh` (
  `id` int NOT NULL,
  `TenBenh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaibenh`
--

LOCK TABLES `loaibenh` WRITE;
/*!40000 ALTER TABLE `loaibenh` DISABLE KEYS */;
INSERT INTO `loaibenh` VALUES (1,'Thoai vi dia dem','Dau lung',100000),(2,'Tri','Dau dit',200000),(3,'Mù','K thấy đường',300000),(4,'Ế','...',999999);
/*!40000 ALTER TABLE `loaibenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_nhanvien_taikhoan` FOREIGN KEY (`id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('1851050105','Nguyen','Phuc','Nam','2000-01-01','0768107704','/resourceAdmin/plugins/images/users/d1.jpg'),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','Le','Khoa','Male','2000-07-07','12345789','/resourceAdmin/plugins/images/users/d3.jpg'),('employee1','Giau','Nguoi','Male','1999-07-07','1516511616','/resourceAdmin/plugins/images/users/d4.jpg'),('employee2','Tin','Trong','Female','2003-07-07','5264156416','/resourceAdmin/plugins/images/users/d1.jpg'),('employee3','giau','Buu','Male','2001-01-03','456','/resourceAdmin/plugins/images/users/d2.jpg'),('employee6','Khoa','Buu','Male','2001-08-11','165156165','http://res.cloudinary.com/dsqeplzno/image/upload/v1620836960/my_folder/Buu.jpg');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieukhambenh`
--

DROP TABLE IF EXISTS `phieukhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieukhambenh` (
  `id` int NOT NULL,
  `MaBenhNhan` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayKham` date NOT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThanhToan` bit(1) NOT NULL,
  `MaCaKham` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieukhambenh_benhnhan` (`MaBenhNhan`),
  KEY `fk_phieukhambenh_cakhambenh_idx` (`MaCaKham`),
  CONSTRAINT `fk_phieukhambenh_benhnhan` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`id`),
  CONSTRAINT `fk_phieukhambenh_cakhambenh` FOREIGN KEY (`MaCaKham`) REFERENCES `cakhambenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieukhambenh`
--

LOCK TABLES `phieukhambenh` WRITE;
/*!40000 ALTER TABLE `phieukhambenh` DISABLE KEYS */;
INSERT INTO `phieukhambenh` VALUES (1,'1851050168','2021-03-18','371 Nguyen Kiem',_binary '\0',1),(2,'282c271e-e183-4cbd-b517-58a17a0614c4','2021-05-13','371 Nguyen Kiem',_binary '\0',1);
/*!40000 ALTER TABLE `phieukhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_BACSI'),(3,'ROLE_NHANVIEN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TaiKhoan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaRole` int DEFAULT NULL,
  `Active` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`TaiKhoan`),
  KEY `fk_taikhoan_role_idx` (`MaRole`),
  CONSTRAINT `fk_taikhoan_role` FOREIGN KEY (`MaRole`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('1851050010','hoangbuu','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',1,1),('1851050105','thienphuc','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('1851050156','buububu','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',2,1),('1851050169','phanhuy','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',2,0),('1dd56d41-06b4-4de9-9aa1-8a522c156866','doctor1','123',2,0),('21520e40-a02b-408c-b396-2caf61d38325','doctor2','123',2,0),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','doctor3','123',2,0),('3','doctor4','123',2,1),('307fc8f6-0814-48ba-840e-2356552addc9','doctor5','123',2,0),('48a7ca08-532a-4be9-9979-26395cf2d8f8','doctor6','123',2,0),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','doctor7','123',2,0),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','doctor8','123',2,0),('74b46ffa-f87a-44cb-a841-9682c330744c','tester2','123456',3,0),('7b8cdfad-7538-471e-84ea-8241939d9076','doctor9','123456',2,0),('7e51e415-1d11-4bf9-8c48-a27194f9da25','doctor0','123',2,0),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','doctor10','123',2,0),('870fe48e-7d4e-44ab-81f9-3a9334212336','shizuka123','123',2,0),('8afecf5e-4c1a-44d1-be7b-3c168069c998','suneo','123',2,0),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','lol123','123',2,0),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','tester3','123456',3,0),('employee0','employee0','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee1','employee1','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee2','employee2','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee3','employee3','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee4','employee4','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee5','employee5','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee6','employee6','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee7','employee7','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee8','employee8','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1),('employee9','employee9','$2a$10$qwMHpwUhm/RO8e3lE8IH8uQiycC4VyuYnLaXW.6S2/Bg/i450yhjO',3,1);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuoc` (
  `id` int NOT NULL DEFAULT '0',
  `TenThuoc` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `DonVi` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuoc`
--

LOCK TABLES `thuoc` WRITE;
/*!40000 ALTER TABLE `thuoc` DISABLE KEYS */;
INSERT INTO `thuoc` VALUES (1,'Panadol','Headche medicine',35000,'Vi'),(2,'7 color','Tri ngua',25000,'Tuyp'),(3,'Thuoc do','Rua vet thuong',132,'chai'),(4,'Oxy gia','Rua vet thuong',111,'chai'),(5,'Thuoc Xo','lau ngay k Äi dc ',111,'thung'),(6,'Chong oi','say xe',1000,'Vi');
/*!40000 ALTER TABLE `thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toathuoc`
--

DROP TABLE IF EXISTS `toathuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toathuoc` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBacSi` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBenhNhan` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayKeToa` datetime NOT NULL,
  `MaLoaiBenh` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_toathuoc_bacsi` (`MaBacSi`),
  KEY `fk_toathuoc_benhnhan` (`MaBenhNhan`),
  KEY `fk_toathuoc_loaibenh_idx` (`MaLoaiBenh`),
  CONSTRAINT `fk_toathuoc_bacsi` FOREIGN KEY (`MaBacSi`) REFERENCES `bacsi` (`id`),
  CONSTRAINT `fk_toathuoc_benhnhan` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`id`),
  CONSTRAINT `fk_toathuoc_loaibenh` FOREIGN KEY (`MaLoaiBenh`) REFERENCES `loaibenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toathuoc`
--

LOCK TABLES `toathuoc` WRITE;
/*!40000 ALTER TABLE `toathuoc` DISABLE KEYS */;
INSERT INTO `toathuoc` VALUES ('38d24768-2452-46b2-ac50-9efc5e92a378','1851050169','1851050168','2021-11-05 00:00:00',3),('TOATHUOC1','1851050169','1851050168','2021-03-18 00:00:00',1),('TOATHUOC2','1851050169','1851050168','2021-03-20 00:00:00',1);
/*!40000 ALTER TABLE `toathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'qlphongmach'
--

--
-- Dumping routines for database 'qlphongmach'
--
/*!50003 DROP PROCEDURE IF EXISTS `layTaiKhoanBacSiConTrong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `layTaiKhoanBacSiConTrong`()
BEGIN
	select t.* 
    from taikhoan t
    where t.id not in (select id from bacsi) and t.MaRole = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `layTaiKhoanNhanVienConTrong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `layTaiKhoanNhanVienConTrong`()
BEGIN
	select t.* 
    from taikhoan t
    where t.id not in (select id from nhanvien) and t.MaRole = 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13 23:26:02
