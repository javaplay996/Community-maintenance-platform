-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot78n92
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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot78n92/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot78n92/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot78n92/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `weixiuleixing` varchar(200) DEFAULT NULL COMMENT '维修类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `weixiufeiyong` varchar(200) DEFAULT NULL COMMENT '维修费用',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240816296 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (61,'2021-02-25 08:01:42','订单编号1','物品名称1','维修类型1','用户名1','住户姓名1','维修费用1','账号1','姓名1','未支付'),(62,'2021-02-25 08:01:42','订单编号2','物品名称2','维修类型2','用户名2','住户姓名2','维修费用2','账号2','姓名2','未支付'),(63,'2021-02-25 08:01:42','订单编号3','物品名称3','维修类型3','用户名3','住户姓名3','维修费用3','账号3','姓名3','未支付'),(64,'2021-02-25 08:01:42','订单编号4','物品名称4','维修类型4','用户名4','住户姓名4','维修费用4','账号4','姓名4','未支付'),(65,'2021-02-25 08:01:42','订单编号5','物品名称5','维修类型5','用户名5','住户姓名5','维修费用5','账号5','姓名5','未支付'),(66,'2021-02-25 08:01:42','订单编号6','物品名称6','维修类型6','用户名6','住户姓名6','维修费用6','账号6','姓名6','未支付'),(1614240810086,'2021-02-25 08:13:29','202122516114335492703','家用洗衣机','居家维修','1','李铭','免费','001','刘倩','未支付'),(1614240816295,'2021-02-25 08:13:35','202122516114335492703','家用洗衣机','居家维修','1','李铭','100','001','刘倩','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiedanxinxi`
--

DROP TABLE IF EXISTS `jiedanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiedanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `weixiuleixing` varchar(200) DEFAULT NULL COMMENT '维修类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `jiedanneirong` varchar(200) DEFAULT NULL COMMENT '接单内容',
  `jiedanriqi` date DEFAULT NULL COMMENT '接单日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240712303 DEFAULT CHARSET=utf8 COMMENT='接单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiedanxinxi`
--

LOCK TABLES `jiedanxinxi` WRITE;
/*!40000 ALTER TABLE `jiedanxinxi` DISABLE KEYS */;
INSERT INTO `jiedanxinxi` VALUES (51,'2021-02-25 08:01:42','订单编号1','物品名称1','维修类型1','用户名1','住户姓名1','接单内容1','2021-02-25','账号1','姓名1','电话1'),(52,'2021-02-25 08:01:42','订单编号2','物品名称2','维修类型2','用户名2','住户姓名2','接单内容2','2021-02-25','账号2','姓名2','电话2'),(53,'2021-02-25 08:01:42','订单编号3','物品名称3','维修类型3','用户名3','住户姓名3','接单内容3','2021-02-25','账号3','姓名3','电话3'),(54,'2021-02-25 08:01:42','订单编号4','物品名称4','维修类型4','用户名4','住户姓名4','接单内容4','2021-02-25','账号4','姓名4','电话4'),(55,'2021-02-25 08:01:42','订单编号5','物品名称5','维修类型5','用户名5','住户姓名5','接单内容5','2021-02-25','账号5','姓名5','电话5'),(56,'2021-02-25 08:01:42','订单编号6','物品名称6','维修类型6','用户名6','住户姓名6','接单内容6','2021-02-25','账号6','姓名6','电话6'),(1614240712302,'2021-02-25 08:11:52','202122516114335492703','家用洗衣机','居家维修','1','李铭','我可以维修','2021-01-31','001','刘倩','13823888881');
/*!40000 ALTER TABLE `jiedanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jubaoxinxi`
--

DROP TABLE IF EXISTS `jubaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jubaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jubaoneirong` varchar(200) DEFAULT NULL COMMENT '举报内容',
  `jubaoriqi` date DEFAULT NULL COMMENT '举报日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240772424 DEFAULT CHARSET=utf8 COMMENT='举报信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jubaoxinxi`
--

LOCK TABLES `jubaoxinxi` WRITE;
/*!40000 ALTER TABLE `jubaoxinxi` DISABLE KEYS */;
INSERT INTO `jubaoxinxi` VALUES (81,'2021-02-25 08:01:42','标题1','账号1','姓名1','举报内容1','2021-02-25','用户名1','住户姓名1','是',''),(82,'2021-02-25 08:01:42','标题2','账号2','姓名2','举报内容2','2021-02-25','用户名2','住户姓名2','是',''),(83,'2021-02-25 08:01:42','标题3','账号3','姓名3','举报内容3','2021-02-25','用户名3','住户姓名3','是',''),(84,'2021-02-25 08:01:42','标题4','账号4','姓名4','举报内容4','2021-02-25','用户名4','住户姓名4','是',''),(85,'2021-02-25 08:01:42','标题5','账号5','姓名5','举报内容5','2021-02-25','用户名5','住户姓名5','是',''),(86,'2021-02-25 08:01:42','标题6','账号6','姓名6','举报内容6','2021-02-25','用户名6','住户姓名6','是',''),(1614240772423,'2021-02-25 08:12:51','21122','001','刘倩','2121121','2021-01-30','1','李铭','是','好的 我们会进行调查');
/*!40000 ALTER TABLE `jubaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240761251 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-02-25 08:01:42',1,'用户名1','留言内容1','回复内容1'),(102,'2021-02-25 08:01:42',2,'用户名2','留言内容2','回复内容2'),(103,'2021-02-25 08:01:42',3,'用户名3','留言内容3','回复内容3'),(104,'2021-02-25 08:01:42',4,'用户名4','留言内容4','回复内容4'),(105,'2021-02-25 08:01:42',5,'用户名5','留言内容5','回复内容5'),(106,'2021-02-25 08:01:42',6,'用户名6','留言内容6','回复内容6'),(1614240761250,'2021-02-25 08:12:41',1614240472677,'1','有什么问题可以在这类反馈给管理员，管理员可以进行回复','好的 欢迎反馈');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-02-25 08:01:42','新闻资讯','简介1112','http://localhost:8080/springboot78n92/upload/news_picture1.jpg','<p>内容121221122121</p>'),(92,'2021-02-25 08:01:42','标题2','简介2','http://localhost:8080/springboot78n92/upload/news_picture2.jpg','内容2'),(93,'2021-02-25 08:01:42','标题3','简介3','http://localhost:8080/springboot78n92/upload/news_picture3.jpg','内容3'),(94,'2021-02-25 08:01:42','标题4','简介4','http://localhost:8080/springboot78n92/upload/news_picture4.jpg','内容4'),(95,'2021-02-25 08:01:42','标题5','简介5','http://localhost:8080/springboot78n92/upload/news_picture5.jpg','内容5'),(96,'2021-02-25 08:01:42','标题6','简介6','http://localhost:8080/springboot78n92/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shequgonggao`
--

DROP TABLE IF EXISTS `shequgonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shequgonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='社区公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shequgonggao`
--

LOCK TABLES `shequgonggao` WRITE;
/*!40000 ALTER TABLE `shequgonggao` DISABLE KEYS */;
INSERT INTO `shequgonggao` VALUES (21,'2021-02-25 08:01:42','社区公告','http://localhost:8080/springboot78n92/upload/shequgonggao_tupian1.jpg','<p><img src=\"http://localhost:8080/springboot78n92/upload/1614240507487.jpg\">公告内容1这里可以发布一些社区公告，内容都是用于测试的可以自行添加修改删除的</p>','2021-02-01 16:01:42'),(22,'2021-02-25 08:01:42','公告标题2','http://localhost:8080/springboot78n92/upload/shequgonggao_tupian2.jpg','公告内容2','2021-02-25 16:01:42'),(23,'2021-02-25 08:01:42','公告标题3','http://localhost:8080/springboot78n92/upload/shequgonggao_tupian3.jpg','公告内容3','2021-02-25 16:01:42'),(24,'2021-02-25 08:01:42','公告标题4','http://localhost:8080/springboot78n92/upload/shequgonggao_tupian4.jpg','公告内容4','2021-02-25 16:01:42'),(25,'2021-02-25 08:01:42','公告标题5','http://localhost:8080/springboot78n92/upload/shequgonggao_tupian5.jpg','公告内容5','2021-02-25 16:01:42'),(26,'2021-02-25 08:01:42','公告标题6','http://localhost:8080/springboot78n92/upload/shequgonggao_tupian6.jpg','公告内容6','2021-02-25 16:01:42');
/*!40000 ALTER TABLE `shequgonggao` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','kzrrlc1f1446iaybfkq47zc4fweyyxfa','2021-02-25 08:07:27','2021-02-25 01:14:15'),(2,1614240472677,'1','zhuhu','住户','kyqokd57vfmlbe1gu70x4046x76fqpjo','2021-02-25 08:09:11','2021-02-25 01:15:38'),(3,31,'001','weixiugong','维修工','l2y6m1zs9u73nam7xtdcpaxss1j7izj0','2021-02-25 08:10:41','2021-02-25 01:13:13');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-25 08:01:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiudingdan`
--

DROP TABLE IF EXISTS `weixiudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `weixiuleixing` varchar(200) DEFAULT NULL COMMENT '维修类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weixiuneirong` longtext COMMENT '维修内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240634250 DEFAULT CHARSET=utf8 COMMENT='维修订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiudingdan`
--

LOCK TABLES `weixiudingdan` WRITE;
/*!40000 ALTER TABLE `weixiudingdan` DISABLE KEYS */;
INSERT INTO `weixiudingdan` VALUES (41,'2021-02-25 08:01:42','名称1','物品名称1','居家维修','http://localhost:8080/springboot78n92/upload/weixiudingdan_tupian1.jpg','维修内容1','2021-02-25','用户名1','住户姓名1','手机1','地址1'),(42,'2021-02-25 08:01:42','名称2','物品名称2','居家维修','http://localhost:8080/springboot78n92/upload/weixiudingdan_tupian2.jpg','维修内容2','2021-02-25','用户名2','住户姓名2','手机2','地址2'),(43,'2021-02-25 08:01:42','名称3','物品名称3','居家维修','http://localhost:8080/springboot78n92/upload/weixiudingdan_tupian3.jpg','维修内容3','2021-02-25','用户名3','住户姓名3','手机3','地址3'),(44,'2021-02-25 08:01:42','名称4','物品名称4','居家维修','http://localhost:8080/springboot78n92/upload/weixiudingdan_tupian4.jpg','维修内容4','2021-02-25','用户名4','住户姓名4','手机4','地址4'),(45,'2021-02-25 08:01:42','名称5','物品名称5','居家维修','http://localhost:8080/springboot78n92/upload/weixiudingdan_tupian5.jpg','维修内容5','2021-02-25','用户名5','住户姓名5','手机5','地址5'),(46,'2021-02-25 08:01:42','名称6','物品名称6','居家维修','http://localhost:8080/springboot78n92/upload/weixiudingdan_tupian6.jpg','维修内容6','2021-02-25','用户名6','住户姓名6','手机6','地址6'),(1614240634249,'2021-02-25 08:10:33','XX维修','家用洗衣机','居家维修','http://localhost:8080/springboot78n92/upload/1614240593612.jpg','<p><img src=\"http://localhost:8080/springboot78n92/upload/1614240617615.jpg\"></p><p>可以上传一些图片跟文字进行描述物品目前的状况</p>','2021-02-01','1','李铭','15214121411','阳光小区A栋305');
/*!40000 ALTER TABLE `weixiudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiugong`
--

DROP TABLE IF EXISTS `weixiugong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiugong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `jianjie` longtext COMMENT '简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='维修工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiugong`
--

LOCK TABLES `weixiugong` WRITE;
/*!40000 ALTER TABLE `weixiugong` DISABLE KEYS */;
INSERT INTO `weixiugong` VALUES (31,'2021-02-25 08:01:42','001','001','刘倩','女','高级','http://localhost:8080/springboot78n92/upload/weixiugong_touxiang1.jpg','440300199101010001','13823888881','12121221'),(32,'2021-02-25 08:01:42','维修工2','123456','姓名2','男','高级','http://localhost:8080/springboot78n92/upload/weixiugong_touxiang2.jpg','440300199202020002','13823888882','简介2'),(33,'2021-02-25 08:01:42','维修工3','123456','姓名3','男','高级','http://localhost:8080/springboot78n92/upload/weixiugong_touxiang3.jpg','440300199303030003','13823888883','简介3'),(34,'2021-02-25 08:01:42','维修工4','123456','姓名4','男','高级','http://localhost:8080/springboot78n92/upload/weixiugong_touxiang4.jpg','440300199404040004','13823888884','简介4'),(35,'2021-02-25 08:01:42','维修工5','123456','姓名5','男','高级','http://localhost:8080/springboot78n92/upload/weixiugong_touxiang5.jpg','440300199505050005','13823888885','简介5'),(36,'2021-02-25 08:01:42','维修工6','123456','姓名6','男','高级','http://localhost:8080/springboot78n92/upload/weixiugong_touxiang6.jpg','440300199606060006','13823888886','简介6');
/*!40000 ALTER TABLE `weixiugong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiangoutong`
--

DROP TABLE IF EXISTS `zaixiangoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiangoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `liaotianneirong` varchar(200) DEFAULT NULL COMMENT '聊天内容',
  `liaotianhuifu` longtext COMMENT '聊天回复',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240729536 DEFAULT CHARSET=utf8 COMMENT='在线沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiangoutong`
--

LOCK TABLES `zaixiangoutong` WRITE;
/*!40000 ALTER TABLE `zaixiangoutong` DISABLE KEYS */;
INSERT INTO `zaixiangoutong` VALUES (71,'2021-02-25 08:01:42','标题1','用户名1','住户姓名1','聊天内容1','聊天回复1','2021-02-25','账号1','姓名1'),(72,'2021-02-25 08:01:42','标题2','用户名2','住户姓名2','聊天内容2','聊天回复2','2021-02-25','账号2','姓名2'),(73,'2021-02-25 08:01:42','标题3','用户名3','住户姓名3','聊天内容3','聊天回复3','2021-02-25','账号3','姓名3'),(74,'2021-02-25 08:01:42','标题4','用户名4','住户姓名4','聊天内容4','聊天回复4','2021-02-25','账号4','姓名4'),(75,'2021-02-25 08:01:42','标题5','用户名5','住户姓名5','聊天内容5','聊天回复5','2021-02-25','账号5','姓名5'),(76,'2021-02-25 08:01:42','标题6','用户名6','住户姓名6','聊天内容6','聊天回复6','2021-02-25','账号6','姓名6'),(1614240729535,'2021-02-25 08:12:08','1111','1','李铭','你这个怎么怎么这样','就是坏了','2021-01-30','001','刘倩');
/*!40000 ALTER TABLE `zaixiangoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuhu`
--

DROP TABLE IF EXISTS `zhuhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240472678 DEFAULT CHARSET=utf8 COMMENT='住户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuhu`
--

LOCK TABLES `zhuhu` WRITE;
/*!40000 ALTER TABLE `zhuhu` DISABLE KEYS */;
INSERT INTO `zhuhu` VALUES (11,'2021-02-25 08:01:42','001','001','住户姓名1','男','http://localhost:8080/springboot78n92/upload/zhuhu_touxiang1.jpg','13823888881'),(12,'2021-02-25 08:01:42','住户2','123456','住户姓名2','男','http://localhost:8080/springboot78n92/upload/zhuhu_touxiang2.jpg','13823888882'),(13,'2021-02-25 08:01:42','住户3','123456','住户姓名3','男','http://localhost:8080/springboot78n92/upload/zhuhu_touxiang3.jpg','13823888883'),(14,'2021-02-25 08:01:42','住户4','123456','住户姓名4','男','http://localhost:8080/springboot78n92/upload/zhuhu_touxiang4.jpg','13823888884'),(15,'2021-02-25 08:01:42','住户5','123456','住户姓名5','男','http://localhost:8080/springboot78n92/upload/zhuhu_touxiang5.jpg','13823888885'),(16,'2021-02-25 08:01:42','住户6','123456','住户姓名6','男','http://localhost:8080/springboot78n92/upload/zhuhu_touxiang6.jpg','13823888886'),(1614240472677,'2021-02-25 08:07:52','1','1','李铭','男','http://localhost:8080/springboot78n92/upload/1614240562203.png','15214121411');
/*!40000 ALTER TABLE `zhuhu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-01 20:09:49
