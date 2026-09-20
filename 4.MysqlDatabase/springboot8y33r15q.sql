-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot8y33r15q
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot8y33r15q`
--

/*!40000 DROP DATABASE IF EXISTS `springboot8y33r15q`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot8y33r15q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot8y33r15q`;

--
-- Table structure for table `bumenguanliyuan`
--

DROP TABLE IF EXISTS `bumenguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenzhanghao` varchar(200) NOT NULL COMMENT '部门账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `touxiang` longtext COMMENT '头像',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumenzhanghao` (`bumenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='部门管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenguanliyuan`
--

LOCK TABLES `bumenguanliyuan` WRITE;
/*!40000 ALTER TABLE `bumenguanliyuan` DISABLE KEYS */;
INSERT INTO `bumenguanliyuan` VALUES (21,'2024-04-28 12:11:34','部门账号1','e10adc3949ba59abbe56e057f20f883e','管理员姓名1','upload/bumenguanliyuan_touxiang1.jpg','部门1',1,'男','13823888881'),(22,'2024-04-28 12:11:34','部门账号2','e10adc3949ba59abbe56e057f20f883e','管理员姓名2','upload/bumenguanliyuan_touxiang2.jpg','部门2',2,'男','13823888882'),(23,'2024-04-28 12:11:34','部门账号3','e10adc3949ba59abbe56e057f20f883e','管理员姓名3','upload/bumenguanliyuan_touxiang3.jpg','部门3',3,'男','13823888883'),(24,'2024-04-28 12:11:34','部门账号4','e10adc3949ba59abbe56e057f20f883e','管理员姓名4','upload/bumenguanliyuan_touxiang4.jpg','部门4',4,'男','13823888884'),(25,'2024-04-28 12:11:34','部门账号5','e10adc3949ba59abbe56e057f20f883e','管理员姓名5','upload/bumenguanliyuan_touxiang5.jpg','部门5',5,'男','13823888885'),(26,'2024-04-28 12:11:34','部门账号6','e10adc3949ba59abbe56e057f20f883e','管理员姓名6','upload/bumenguanliyuan_touxiang6.jpg','部门6',6,'男','13823888886'),(27,'2024-04-28 12:11:34','部门账号7','e10adc3949ba59abbe56e057f20f883e','管理员姓名7','upload/bumenguanliyuan_touxiang7.jpg','部门7',7,'男','13823888887'),(28,'2024-04-28 12:11:34','部门账号8','e10adc3949ba59abbe56e057f20f883e','管理员姓名8','upload/bumenguanliyuan_touxiang8.jpg','部门8',8,'男','13823888888');
/*!40000 ALTER TABLE `bumenguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','lonh4c3zik15bo564pp84fmqoxqzfeu3','2024-04-28 12:13:21','2024-04-28 13:13:22');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-04-28 12:11:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaoganyingxiang`
--

DROP TABLE IF EXISTS `yaoganyingxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaoganyingxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingxiangmingcheng` varchar(200) DEFAULT NULL COMMENT '影像名称',
  `tupian` longtext COMMENT '图片',
  `yingxiangfenlei` varchar(200) DEFAULT NULL COMMENT '影像分类',
  `weixingshujuji` varchar(200) DEFAULT NULL COMMENT '卫星数据集',
  `yunliang` double DEFAULT NULL COMMENT '云量',
  `fenbianlv` int(11) DEFAULT NULL COMMENT '分辨率',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `bumenzhanghao` varchar(200) DEFAULT NULL COMMENT '部门账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `yingxiangziliao` longtext NOT NULL COMMENT '影像资料',
  `xiangqingjieshao` longtext COMMENT '详情介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='遥感影像';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaoganyingxiang`
--

LOCK TABLES `yaoganyingxiang` WRITE;
/*!40000 ALTER TABLE `yaoganyingxiang` DISABLE KEYS */;
INSERT INTO `yaoganyingxiang` VALUES (41,'2024-04-28 12:11:34','影像名称1','upload/yaoganyingxiang_tupian1.jpg,upload/yaoganyingxiang_tupian2.jpg,upload/yaoganyingxiang_tupian3.jpg','影像分类1','卫星数据集1',1,1,'地区1','2024-04-28','部门1','部门账号1','管理员姓名1','','详情介绍1'),(42,'2024-04-28 12:11:34','影像名称2','upload/yaoganyingxiang_tupian2.jpg,upload/yaoganyingxiang_tupian3.jpg,upload/yaoganyingxiang_tupian4.jpg','影像分类2','卫星数据集2',2,2,'地区2','2024-04-28','部门2','部门账号2','管理员姓名2','','详情介绍2'),(43,'2024-04-28 12:11:34','影像名称3','upload/yaoganyingxiang_tupian3.jpg,upload/yaoganyingxiang_tupian4.jpg,upload/yaoganyingxiang_tupian5.jpg','影像分类3','卫星数据集3',3,3,'地区3','2024-04-28','部门3','部门账号3','管理员姓名3','','详情介绍3'),(44,'2024-04-28 12:11:34','影像名称4','upload/yaoganyingxiang_tupian4.jpg,upload/yaoganyingxiang_tupian5.jpg,upload/yaoganyingxiang_tupian6.jpg','影像分类4','卫星数据集4',4,4,'地区4','2024-04-28','部门4','部门账号4','管理员姓名4','','详情介绍4'),(45,'2024-04-28 12:11:34','影像名称5','upload/yaoganyingxiang_tupian5.jpg,upload/yaoganyingxiang_tupian6.jpg,upload/yaoganyingxiang_tupian7.jpg','影像分类5','卫星数据集5',5,5,'地区5','2024-04-28','部门5','部门账号5','管理员姓名5','','详情介绍5'),(46,'2024-04-28 12:11:34','影像名称6','upload/yaoganyingxiang_tupian6.jpg,upload/yaoganyingxiang_tupian7.jpg,upload/yaoganyingxiang_tupian8.jpg','影像分类6','卫星数据集6',6,6,'地区6','2024-04-28','部门6','部门账号6','管理员姓名6','','详情介绍6'),(47,'2024-04-28 12:11:34','影像名称7','upload/yaoganyingxiang_tupian7.jpg,upload/yaoganyingxiang_tupian8.jpg,upload/yaoganyingxiang_tupian9.jpg','影像分类7','卫星数据集7',7,7,'地区7','2024-04-28','部门7','部门账号7','管理员姓名7','','详情介绍7'),(48,'2024-04-28 12:11:34','影像名称8','upload/yaoganyingxiang_tupian8.jpg,upload/yaoganyingxiang_tupian9.jpg,upload/yaoganyingxiang_tupian10.jpg','影像分类8','卫星数据集8',8,8,'地区8','2024-04-28','部门8','部门账号8','管理员姓名8','','详情介绍8');
/*!40000 ALTER TABLE `yaoganyingxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingxiangfenlei`
--

DROP TABLE IF EXISTS `yingxiangfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingxiangfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingxiangfenlei` varchar(200) NOT NULL COMMENT '影像分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='影像分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingxiangfenlei`
--

LOCK TABLES `yingxiangfenlei` WRITE;
/*!40000 ALTER TABLE `yingxiangfenlei` DISABLE KEYS */;
INSERT INTO `yingxiangfenlei` VALUES (31,'2024-04-28 12:11:34','影像分类1'),(32,'2024-04-28 12:11:34','影像分类2'),(33,'2024-04-28 12:11:34','影像分类3'),(34,'2024-04-28 12:11:34','影像分类4'),(35,'2024-04-28 12:11:34','影像分类5'),(36,'2024-04-28 12:11:34','影像分类6'),(37,'2024-04-28 12:11:34','影像分类7'),(38,'2024-04-28 12:11:34','影像分类8');
/*!40000 ALTER TABLE `yingxiangfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-04-28 12:11:34','用户账号1','e10adc3949ba59abbe56e057f20f883e','用户姓名1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881'),(12,'2024-04-28 12:11:34','用户账号2','e10adc3949ba59abbe56e057f20f883e','用户姓名2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882'),(13,'2024-04-28 12:11:34','用户账号3','e10adc3949ba59abbe56e057f20f883e','用户姓名3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883'),(14,'2024-04-28 12:11:34','用户账号4','e10adc3949ba59abbe56e057f20f883e','用户姓名4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884'),(15,'2024-04-28 12:11:34','用户账号5','e10adc3949ba59abbe56e057f20f883e','用户姓名5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885'),(16,'2024-04-28 12:11:34','用户账号6','e10adc3949ba59abbe56e057f20f883e','用户姓名6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886'),(17,'2024-04-28 12:11:34','用户账号7','e10adc3949ba59abbe56e057f20f883e','用户姓名7','男','年龄7','upload/yonghu_touxiang7.jpg','13823888887'),(18,'2024-04-28 12:11:34','用户账号8','e10adc3949ba59abbe56e057f20f883e','用户姓名8','男','年龄8','upload/yonghu_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02  8:46:08
