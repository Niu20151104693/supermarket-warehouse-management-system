/*
Navicat MySQL Data Transfer

Source Server         : MySQL5.1
Source Server Version : 50145
Source Host           : localhost:3306
Source Database       : supermarkets

Target Server Type    : MYSQL
Target Server Version : 50145
File Encoding         : 65001

Date: 2017-08-23 15:10:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attachement`
-- ----------------------------
DROP TABLE IF EXISTS `attachement`;
CREATE TABLE `attachement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongfileldname` varchar(255) DEFAULT NULL,
  `belongid` varchar(255) DEFAULT NULL,
  `belongtable` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `pubtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of attachement
-- ----------------------------

-- ----------------------------
-- Table structure for `bumen`
-- ----------------------------
DROP TABLE IF EXISTS `bumen`;
CREATE TABLE `bumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bumenming` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of bumen
-- ----------------------------
INSERT INTO `bumen` VALUES ('1', '采购', '采购');
INSERT INTO `bumen` VALUES ('2', '销售', '销售');

-- ----------------------------
-- Table structure for `caigou`
-- ----------------------------
DROP TABLE IF EXISTS `caigou`;
CREATE TABLE `caigou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cgdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cgren` varchar(255) DEFAULT NULL,
  `count` double DEFAULT NULL,
  `spname` varchar(255) DEFAULT NULL,
  `spno` varchar(255) DEFAULT NULL,
  `supplor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of caigou
-- ----------------------------
INSERT INTO `caigou` VALUES ('1', '2017-11-14 12:24:06', '123', '12', 'SKGSF1042高端电热水壶 ', 'S001', '上海捷达');
INSERT INTO `caigou` VALUES ('2', '2017-11-14 12:24:06', '李艳', '2', '苏泊尔油烟不粘煎锅炒锅', 'S003', '上海捷达');
INSERT INTO `caigou` VALUES ('3', '2017-11-14 12:24:06', '李艳', '2', 'SKGA201 2L迷你 智能小 电压力锅', '002', '上海捷达');
INSERT INTO `caigou` VALUES ('4', '2017-11-14 12:24:06', '李艳', '2', '热水壶', 'S004', '上海捷达');
INSERT INTO `caigou` VALUES ('5', '2017-11-14 12:24:06', '李涛', '10', '苏泊尔油烟不粘煎锅炒锅', 'S003', '上海捷达');
INSERT INTO `caigou` VALUES ('6', '2017-11-14 12:24:06', '李天', '20', '热水壶', 'S004', '上海捷达');
INSERT INTO `caigou` VALUES ('7', '2017-11-14 00:00:00', 'admin', '200', '老坛酸菜方便面', 'SP0004', '深圳天意食品');
INSERT INTO `caigou` VALUES ('8', '2017-08-23 00:00:00', 'admin', '100', 'iPhone', '4001', '苹果科技');
INSERT INTO `caigou` VALUES ('9', '2017-08-23 00:00:00', 'admin', '28', 'SKGA201 2L迷你 智能小 电压力锅', '002', '上海捷达');
INSERT INTO `caigou` VALUES ('10', '2017-08-31 00:00:00', 'admin', '100', '红富士苹果', 'S801', '上海捷达');

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `khaccountname` varchar(255) DEFAULT NULL,
  `khname` varchar(255) DEFAULT NULL,
  `shuliang` int(11) DEFAULT NULL,
  `spname` varchar(255) DEFAULT NULL,
  `spno` varchar(255) DEFAULT NULL,
  `sptupian` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `totalfee` double DEFAULT NULL,
  `xdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `xiadanren` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', 'DD201556031003210', '12334444', '001', '李明', '1', '苏泊尔油烟不粘煎锅炒锅', 'S003', '/invoicing/upload/temp/54f42d47Nc60f14fc.jpg', '购买锅子', '189', '2017-09-14 12:23:34', '001');
INSERT INTO `dingdan` VALUES ('2', 'DD201510031103581', '11', '001', '李明', '1', 'SKGSF1042高端电热水壶 ', 'S001', '/invoicing/upload/temp/909890513_1303848328.search.jpg', '1233333', '159', '2017-09-14 12:23:34', '李明');
INSERT INTO `dingdan` VALUES ('3', 'DD201521031103106', '12334', '002', '王涛', '1', '苏泊尔油烟不粘煎锅炒锅', 'S003', '/invoicing/upload/temp/54f42d47Nc60f14fc.jpg', '1233333', '189', '2017-09-14 12:23:34', '002');
INSERT INTO `dingdan` VALUES ('4', 'DD201515232204311', '11113', '001', '李明', '1', '热水壶', 'S004', '/supermarket/upload/temp/1_sn.jpg', '123', '89', '2017-09-14 12:23:34', '001');
INSERT INTO `dingdan` VALUES ('5', 'DD201541232204160', '1234', '004', '李军', '1', '热水壶', 'S004', '/supermarket/upload/temp/1_sn.jpg', '购买一个热水壶', '89', '2017-09-14 12:23:34', '004');
INSERT INTO `dingdan` VALUES ('6', 'DD201733141302243', '123433', '001', '李明', '2', '老坛酸菜方便面', 'SP0004', '/supermarket/upload/temp/56036cd5Nc3d6e214.jpg', '方便面', '7', '2017-09-14 12:23:34', '李明');
INSERT INTO `dingdan` VALUES ('7', 'DD201735141302464', '买方便面', 'H008', '刘岩', '3', '老坛酸菜方便面', 'SP0004', '/supermarket/upload/temp/56036cd5Nc3d6e214.jpg', '', '10.5', '2017-09-14 12:23:34', 'H008');
INSERT INTO `dingdan` VALUES ('8', 'DD201725231408020', '玫瑰金色！', '001', '李明', '1', 'iPhone', '4001', '/supermarket/upload/temp/3003332_pop_750_1000_6.jpg', '', '5999', '2017-08-23 14:25:02', '001');
INSERT INTO `dingdan` VALUES ('9', 'DD201701231508175', '1', '001', '李明', '1', '热水壶', 'S004', '/supermarket/upload/temp/1_sn.jpg', '1', '89', '2017-08-23 15:01:17', '欧阳锋');
INSERT INTO `dingdan` VALUES ('10', 'DD201703231508142', '自己买苹果，哈哈', 'aodamao', '嗷大猫', '10', '红富士苹果', 'S801', '/supermarket/upload/temp/pingguo.jpg', '', '100', '2017-08-23 15:03:14', 'aodamao');
INSERT INTO `dingdan` VALUES ('11', 'DD201704231508304', '帮嗷大猫购买', 'aodamao', '嗷大猫', '10', '红富士苹果', 'S801', '/supermarket/upload/temp/pingguo.jpg', '再次购买', '100', '2017-08-23 15:04:30', '欧阳锋');

-- ----------------------------
-- Table structure for `huiyuan`
-- ----------------------------
DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `des` varchar(255) DEFAULT NULL,
  `idcardno` varchar(255) DEFAULT NULL,
  `jifen` double DEFAULT NULL,
  `jiguan` varchar(255) DEFAULT NULL,
  `logintimes` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `yue` double DEFAULT NULL,
  `xtype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huiyuan
-- ----------------------------
INSERT INTO `huiyuan` VALUES ('1', '001', '123444444', '2017-11-14 12:17:25', '2017-11-14 12:17:25', '12344444', '3601211981234443', '6532', '江西南昌', '21', '李明', '123456', '/supermarket/upload/temp/nopic.jpg', '男', '13821243243', '4067', '2');
INSERT INTO `huiyuan` VALUES ('2', '002', '123444444', '2017-11-14 12:17:25', '2017-11-14 12:17:25', '1234444', '3601211981234443', '189', '江西南昌', '1', '王涛', '123456', '/invoicing/upload/nopic.jpg', '男', '13821243243', '311', '1');
INSERT INTO `huiyuan` VALUES ('3', '003', '123444444', '2017-11-14 12:17:25', '2017-11-14 12:17:25', '123333', '3601211981234443', '0', '江西南昌', '0', '朱骏', '123456', '/invoicing/upload/temp/316540894,22694932650.jpg', '男', '13821243243', '0', '1');
INSERT INTO `huiyuan` VALUES ('4', '004', '北京市XXXX', '2017-11-14 12:17:25', '2017-11-14 12:17:25', '北京妹子', '360121198814434', '89', '北京', '2', '李军', '123456', '/supermarket/upload/temp/6677770.jpg', '女', '1895715212', '11', '1');
INSERT INTO `huiyuan` VALUES ('5', 'H008', '北京市XXXx', '2017-11-14 00:00:00', '2017-11-14 13:34:42', '1234343434', '360121234343434123', '10.5', '北京', '2', '刘岩', '123456', '/supermarket/upload/temp/u=2902925563,297294419&fm=23&gp=0.jpg', '女', '13732921234', '989.5', '1');
INSERT INTO `huiyuan` VALUES ('6', 'aodamao', '北京市动物园', '2017-07-01 00:00:00', '2017-08-23 14:46:07', '一只热情可爱的猫', '401123123111222333', '200', '北京市', '1', '嗷大猫', '123456', '/supermarket/upload/temp/t.jpg', '男', '13812312312', '4800', '1');

-- ----------------------------
-- Table structure for `leaveword`
-- ----------------------------
DROP TABLE IF EXISTS `leaveword`;
CREATE TABLE `leaveword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dcontent` varchar(255) DEFAULT NULL,
  `lwren` varchar(255) DEFAULT NULL,
  `pubtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `replycontent` varchar(255) DEFAULT NULL,
  `replyren` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of leaveword
-- ----------------------------
INSERT INTO `leaveword` VALUES ('1', '<span style=\"white-space:nowrap;\">在线反馈下</span><span style=\"white-space:nowrap;\">在线反馈下</span><span style=\"white-space:nowrap;\">在线反馈下</span>', 'H008', '2017-11-14 13:36:15', '123434343433444', '', '已处理', '在线反馈下');
INSERT INTO `leaveword` VALUES ('2', '如题。', '001', '2017-08-23 14:26:19', '', '', '待处理', 'iPhone有哪些颜色的');
INSERT INTO `leaveword` VALUES ('3', '急急急，在线等', 'aodamao', '2017-08-23 15:03:41', '必须的，全程冰库', '欧阳锋', '已处理', '苹果能不能保鲜');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pubren` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `shangpin`
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` varchar(255) DEFAULT NULL,
  `kucun` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `spcategory` varchar(255) DEFAULT NULL,
  `spname` varchar(255) DEFAULT NULL,
  `spno` varchar(255) DEFAULT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', '12333', '24', '159', '日用品', 'SKGSF1042高端电热水壶 ', 'S001', '/supermarket/upload/temp/909890513_1303848328.search.jpg');
INSERT INTO `shangpin` VALUES ('2', '压力锅', '30', '230', '日用品', 'SKGA201 2L迷你 智能小 电压力锅', '002', '/supermarket/upload/temp/553963175_1303848328.search.jpg');
INSERT INTO `shangpin` VALUES ('3', '<img class=\"\" src=\"http://img20.360buyimg.com/vc/jfs/t151/119/720920286/50976/574e441/5396975cNd38104c9.jpg\" data-lazyload=\"done\" />', '10', '189', '日用品', '苏泊尔油烟不粘煎锅炒锅', 'S003', '/supermarket/upload/temp/551b716cN34523166.jpg');
INSERT INTO `shangpin` VALUES ('4', '1234444', '19', '89', '日用品', '热水壶', 'S004', '/supermarket/upload/temp/1_sn.jpg');
INSERT INTO `shangpin` VALUES ('5', '<img src=\"http://img20.360buyimg.com/vc/jfs/t1747/66/1354420740/69052/d66fa1d5/55e50a86N7fe57f5a.jpg\" />', '195', '3.5', '食用品', '老坛酸菜方便面', 'SP0004', '/supermarket/upload/temp/56036cd5Nc3d6e214.jpg');
INSERT INTO `shangpin` VALUES ('6', 'iPhone 7 Plus，你值得拥有！', '99', '5999', '电子产品', 'iPhone', '4001', '/supermarket/upload/temp/3003332_pop_750_1000_6.jpg');
INSERT INTO `shangpin` VALUES ('7', '正宗红富士，超级好吃。', '80', '10', '食用品', '红富士苹果', 'S801', '/supermarket/upload/temp/pingguo.jpg');

-- ----------------------------
-- Table structure for `spcategory`
-- ----------------------------
DROP TABLE IF EXISTS `spcategory`;
CREATE TABLE `spcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of spcategory
-- ----------------------------
INSERT INTO `spcategory` VALUES ('1', '日用品', '日用品');
INSERT INTO `spcategory` VALUES ('2', '小电器', '小电器');
INSERT INTO `spcategory` VALUES ('3', '<span style=\"white-space:nowrap;\">食用品</span>', '食用品');
INSERT INTO `spcategory` VALUES ('4', '电子产品', '电子产品');
INSERT INTO `spcategory` VALUES ('5', '儿童玩具', '玩具');

-- ----------------------------
-- Table structure for `supplyor`
-- ----------------------------
DROP TABLE IF EXISTS `supplyor`;
CREATE TABLE `supplyor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `lxren` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of supplyor
-- ----------------------------
INSERT INTO `supplyor` VALUES ('1', '1233', '1233333', '1233@126.com', '1233', '123', '上海捷达', '1891512344');
INSERT INTO `supplyor` VALUES ('2', '123444444', '12344444444444444', '1233@126.com', '0788-1243344', '王一', '深圳天意食品', '13821243243');
INSERT INTO `supplyor` VALUES ('3', 'USA', '苹果（中国）有限公司', 'sell@apple.com', '021-12312312', 'TIM.COOK', '苹果科技', '021-12312312');
INSERT INTO `supplyor` VALUES ('4', '上海市飞牛网', '上海飞牛集团', 'sell@feiniu.com', '88885555', '郭明', '飞牛网', '88885555');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logtimes` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `xiangpian` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2017-11-14 12:24:31', null, '670@qq.com', '17', 'admin', 'admin', 'admin', '男', '0791-2344', 'admin', '/supermarket/upload/temp/s.jpg', null);

-- ----------------------------
-- Table structure for `zhiwu`
-- ----------------------------
DROP TABLE IF EXISTS `zhiwu`;
CREATE TABLE `zhiwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` varchar(255) DEFAULT NULL,
  `zhiwuming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of zhiwu
-- ----------------------------
INSERT INTO `zhiwu` VALUES ('1', '普通员工', '普通员工');
INSERT INTO `zhiwu` VALUES ('2', '经理', '经理');

-- ----------------------------
-- Table structure for `zhiyuan`
-- ----------------------------
DROP TABLE IF EXISTS `zhiyuan`;
CREATE TABLE `zhiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) DEFAULT NULL,
  `bumen` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `jiguan` varchar(255) DEFAULT NULL,
  `lianxiren` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `zhiwu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of zhiyuan
-- ----------------------------
INSERT INTO `zhiyuan` VALUES ('1', '001', '采购', '12344444', '江西南昌', '小文', '18957123434', '诗经', '汉', '123456', '/supermarket/upload/temp/t222.jpg', '670604', '男', '普通员工');
INSERT INTO `zhiyuan` VALUES ('2', '002', '采购', '12334444444444444444', '江西南昌', '小文', '18957123434', '邓超', '汉', '123456', '/supermarket/upload/temp/t222.jpg', '670604', '男', '普通员工');
INSERT INTO `zhiyuan` VALUES ('3', '003', '销售', '1234434', '南昌', '李莫愁', '13732921234', '欧阳锋', '汉', '123456', '/supermarket/upload/nopic.jpg', '670@qq.com', '男', '普通员工');
INSERT INTO `zhiyuan` VALUES ('4', 'H004', '销售', '1234444444444443434', '江西南昌', '李韬', '13732928899', '王艳', '汉', '123456', '/supermarket/upload/temp/t1.jpg', '6701134443', '女', '普通员工');
