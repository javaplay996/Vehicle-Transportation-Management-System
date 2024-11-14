/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - cheliangyunshu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cheliangyunshu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cheliangyunshu`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_name` varchar(200) DEFAULT NULL COMMENT '车辆名字 Search111 ',
  `car_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111 ',
  `car_pinpai_types` int(11) DEFAULT NULL COMMENT '车辆品牌类型 Search111 ',
  `car_pai_number` varchar(200) DEFAULT NULL COMMENT '车牌号 Search111 ',
  `car_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `car_yesno_types` int(11) DEFAULT NULL COMMENT '是否在使用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `car` */

insert  into `car`(`id`,`car_name`,`car_types`,`car_pinpai_types`,`car_pai_number`,`car_photo`,`car_yesno_types`,`create_time`) values (1,'沃尔玛卡车1',1,1,'豫A999999','http://localhost:8080/cheliangyunshu/file/download?fileName=1621214352282.jpg',1,'2021-05-17 09:19:13'),(2,'沃尔玛卡车2',2,1,'豫b111111','http://localhost:8080/cheliangyunshu/file/download?fileName=1621214380307.jpg',1,'2021-05-17 09:19:41'),(3,'德国曼卡车1',1,3,'豫c222222','http://localhost:8080/cheliangyunshu/file/download?fileName=1621214417101.jpg',1,'2021-05-17 09:20:18'),(4,'奔驰卡车1',2,3,'豫d444444','http://localhost:8080/cheliangyunshu/file/download?fileName=1621216350117.jpg',1,'2021-05-17 09:52:33');

/*Table structure for table `car_order` */

DROP TABLE IF EXISTS `car_order`;

CREATE TABLE `car_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_danhao_number` varchar(200) DEFAULT NULL COMMENT '单号 Search111 ',
  `siji_id` int(11) DEFAULT NULL COMMENT '司机',
  `car_id` int(11) DEFAULT NULL COMMENT '车辆',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名字 Search111 ',
  `shangpin_number` int(11) DEFAULT NULL COMMENT '商品数量',
  `yunshu_money` decimal(10,4) DEFAULT NULL COMMENT '运输价格',
  `chuxing_time` timestamp NULL DEFAULT NULL COMMENT '出行时间',
  `car_order_yesno_types` int(11) DEFAULT NULL COMMENT '订单状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `car_order` */

insert  into `car_order`(`id`,`car_danhao_number`,`siji_id`,`car_id`,`shangpin_name`,`shangpin_number`,`yunshu_money`,`chuxing_time`,`car_order_yesno_types`,`insert_time`,`create_time`) values (1,'1621214780116',1,1,'商品1',10,'20.0000','2021-05-19 00:00:00',2,'2021-05-17 09:26:44','2021-05-17 09:26:44'),(2,'1621215200229',3,2,'商品12',12,'100.0000','2021-05-20 00:00:00',2,'2021-05-17 09:33:39','2021-05-17 09:33:39'),(3,'1621215245713',1,1,'商品3',3,'400.0000','2021-05-05 00:00:00',2,'2021-05-17 09:34:25','2021-05-17 09:34:25'),(4,'1621216361623',3,4,'商品5',13,'130.0000','2021-05-12 00:00:00',2,'2021-05-17 09:53:11','2021-05-17 09:53:11');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-15 20:42:21'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-15 20:42:21'),(3,'siji_yesno_types','司机状态',1,'空闲',NULL,'2021-05-15 20:42:21'),(4,'siji_yesno_types','司机状态',2,'工作中',NULL,'2021-05-15 20:42:21'),(5,'car_yesno_types','车辆状态',1,'空闲',NULL,'2021-05-15 20:42:21'),(6,'car_yesno_types','车辆状态',2,'使用中',NULL,'2021-05-15 20:42:21'),(7,'car_order_yesno_types','订单状态',1,'运输中',NULL,'2021-05-15 20:42:21'),(8,'car_order_yesno_types','订单状态',2,'完成',NULL,'2021-05-15 20:42:21'),(9,'car_types','车辆类型名称',1,'小型卡车',NULL,'2021-05-15 20:42:21'),(10,'car_types','车辆类型名称',2,'中型卡车',NULL,'2021-05-15 20:42:21'),(11,'car_types','车辆类型名称',3,'大型卡车',NULL,'2021-05-15 20:42:21'),(12,'car_pinpai_types','车辆品牌类型名称',1,'沃尔沃卡车',NULL,'2021-05-15 20:42:21'),(13,'car_pinpai_types','车辆品牌类型名称',2,'奔驰卡车',NULL,'2021-05-15 20:42:21'),(14,'car_pinpai_types','车辆品牌类型名称',3,'德国曼卡车',NULL,'2021-05-15 20:42:21'),(15,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-15 20:42:21'),(16,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-15 20:42:21'),(17,'gonggao_types','公告类型名称',3,'公告类型3',NULL,'2021-05-17 09:56:57');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告1',1,'2021-05-17 09:35:08','公告1的详情\r\n','2021-05-17 09:35:08'),(2,'公告2',2,'2021-05-17 09:56:21','公告2的详情\r\n','2021-05-17 09:56:21');

/*Table structure for table `siji` */

DROP TABLE IF EXISTS `siji`;

CREATE TABLE `siji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机姓名 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '司机手机号 Search111 ',
  `siji_id_number` varchar(200) DEFAULT NULL COMMENT '司机身份证号 Search111 ',
  `siji_photo` varchar(200) DEFAULT NULL COMMENT '司机照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `siji_yesno_types` int(11) DEFAULT NULL COMMENT '司机状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='司机';

/*Data for the table `siji` */

insert  into `siji`(`id`,`username`,`password`,`siji_name`,`siji_phone`,`siji_id_number`,`siji_photo`,`sex_types`,`siji_yesno_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/cheliangyunshu/file/download?fileName=1621213743361.jpg',2,1,'2021-05-17 09:09:06'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/cheliangyunshu/file/download?fileName=1621213799139.jpg',1,1,'2021-05-17 09:10:02'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/cheliangyunshu/file/download?fileName=1621213824968.jpg',1,1,'2021-05-17 09:10:27'),(4,'a4','123456','张4','17703786904','410224199610232004','http://localhost:8080/cheliangyunshu/file/download?fileName=1621216305020.jpg',2,1,'2021-05-17 09:52:00'),(5,'a7','123456','张7','17703786907','410224199610232007','http://localhost:8080/cheliangyunshu/file/download?fileName=1621216748540.jpg',1,1,'2021-05-17 09:59:19');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','zuf1jxndeh6gsd0fe7e75l3qhhaliem8','2021-05-15 21:29:24','2021-05-17 10:51:00'),(2,1,'a1','siji','司机','72s1es8g38hh3jf9a570mcyyctmyilud','2021-05-17 09:57:13','2021-05-17 10:57:14'),(3,5,'a7','siji','司机','c3vl115oqktp519fvfu2v7n2bp5akawo','2021-05-17 09:59:25','2021-05-17 10:59:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
