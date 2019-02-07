/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2018-02-02 11:05:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `consignee_name` varchar(20) DEFAULT NULL,
  `consignee_tel` varchar(20) DEFAULT NULL,
  `add_del` int(11) DEFAULT '1',
  `other` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`add_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('5001', '4001', '山西太原', '000123', '豆豆', '123123', '1', '家');
INSERT INTO `address` VALUES ('5002', '4001', '北京海淀', '000234', '喵喵', '231231', '1', null);
INSERT INTO `address` VALUES ('5003', '4002', '湖南', '000023', 'HelloKitty', '231123', '1', null);
INSERT INTO `address` VALUES ('5005', '4003', '福建省福州市永泰县的去我的钱我的钱我', '030054', '完全的期望', '188888888', '1', '家');
INSERT INTO `address` VALUES ('5006', '4001', null, null, null, null, '1', null);
INSERT INTO `address` VALUES ('5007', '4001', '北京市北京市东城区清华大学56号', '030022', '田雨', '11111111111', '1', '家');
INSERT INTO `address` VALUES ('5008', '4001', '北京市北京市东城区北京大学3号', '020012', '田雨', '12312312311', '1', '家');
INSERT INTO `address` VALUES ('5009', '4009', '北京市北京市宣武区大多数发放', '030054', 'wod ', '18234152117', '1', '家');
INSERT INTO `address` VALUES ('5010', '4009', '辽宁省丹东市凤城市的期望的武器大全', '030054', '天天', '15515515511', '1', '家');
INSERT INTO `address` VALUES ('5011', '4009', '天津市天津市东丽区的擦擦擦车前往重庆', '201239', 'qiuqiu', '123912833', '1', '家');
INSERT INTO `address` VALUES ('5012', '4003', '北京市北京市海淀区清华大学5号', '909980', '王五', '13367289912', '1', '学校');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `goods_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `g_id` (`g_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`g_id`) REFERENCES `goods` (`g_id`),
  CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('26', '4008', '6', '4');
INSERT INTO `cart` VALUES ('28', '4003', '89', '9');
INSERT INTO `cart` VALUES ('29', '4003', '90', '1');
INSERT INTO `cart` VALUES ('30', '4003', '29', '3');
INSERT INTO `cart` VALUES ('31', '4003', '84', '2');
INSERT INTO `cart` VALUES ('32', '4003', '71', '2');
INSERT INTO `cart` VALUES ('33', '4003', '60', '2');
INSERT INTO `cart` VALUES ('34', '4003', '63', '1');
INSERT INTO `cart` VALUES ('35', '4003', '61', '1');
INSERT INTO `cart` VALUES ('36', '4003', '62', '1');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(100) NOT NULL,
  `gt_id` int(11) NOT NULL,
  `purchasing_price` double(10,2) DEFAULT NULL,
  `original_price` double(10,2) DEFAULT NULL,
  `goodsprice` double(10,2) DEFAULT NULL,
  `good_imgurl` varchar(100) DEFAULT '0.jpg',
  `putaway_time` date DEFAULT NULL,
  `goods_state` int(2) DEFAULT '2',
  `goodsinfo` varchar(200) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `g_del` int(11) DEFAULT '1',
  PRIMARY KEY (`g_id`),
  KEY `gt_id` (`gt_id`),
  KEY `goodsname` (`goodsname`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`gt_id`) REFERENCES `goodtype` (`gt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'MacBook/银色/256G', '7', '6888.00', '6889.00', '6888.00', 'macbook.jpg', '2017-12-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('2', 'MacBook/银色/512G', '7', '8888.00', '8889.00', '8888.00', 'macbook.jpg', '2016-12-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('3', 'MacBook Air/银色/256G', '8', '5688.00', '5689.00', '5688.00', 'macbookair.jpg', '2017-12-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('4', 'MacBook Pro/银色/512G', '9', '8888.00', '8889.00', '8888.00', 'macbookpro.jpg', null, '2', null, '96', '1');
INSERT INTO `goods` VALUES ('5', 'iMac/金色/256G', '10', '3360.00', '3460.00', '3360.00', 'imac.jpg', '2017-12-01', '2', null, '95', '1');
INSERT INTO `goods` VALUES ('6', 'iMac/银色/256G', '10', '3360.00', '3460.00', '3370.00', 'imac.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('7', 'iMac/金色/512G', '10', '5560.00', '5580.00', '5560.00', 'imac.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('8', 'iMac/银色/512G', '10', '5560.00', '5580.00', '5560.00', 'imac.jpg', '2017-11-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('9', 'iMac Pro/金色/256G', '11', '7000.00', '7600.00', '7000.00', 'imacpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('10', 'iMac Pro/银色/256G', '11', '7000.00', '7600.00', '7000.00', 'imacpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('11', 'iMac Pro/金色/512G', '11', '8080.00', '8080.00', '8080.00', 'imacpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('12', 'iMac Pro/银色/512G', '11', '10000.00', '10000.00', '10000.00', 'imacpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('13', 'Mac Pro/金色/256G', '12', '8080.00', '8080.00', '8080.00', 'macbookpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('14', 'Mac Pro/银色/256G', '12', '8080.00', '8080.00', '8080.00', 'macbookpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('15', 'Mac Pro/金色/512G', '12', '10000.00', '10000.00', '10000.00', 'macbookpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('16', 'Mac Pro/银色/512G', '12', '10000.00', '10000.00', '10000.00', 'macbookpro.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('17', 'Mac mini/金色/256G', '13', '6888.00', '6888.00', '6888.00', 'macmini.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('18', 'Mac mini/银色/256G', '13', '6888.00', '6888.00', '6888.00', 'macmini.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('19', 'Mac/充电器/白色', '14', '258.00', '258.00', '258.00', 'maccdq.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('20', 'Mac/鼠标/白色', '14', '108.00', '108.00', '108.00', 'macsb.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('21', 'Mac/机械键盘/白色', '14', '268.00', '268.00', '268.00', 'macjp.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('22', 'iPhone7 Plus/红色/128G', '17', '7088.00', '7088.00', '7088.00', 'iphone73.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('23', 'iPhone7 Plus/红色/64G', '17', '6588.00', '6588.00', '6588.00', 'iphone73.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('24', 'iPhone7 Plus/红色/32G', '17', '6088.00', '6088.00', '6088.00', 'iphone73.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('25', 'iPhone7 Plus/玫瑰金色/128G', '17', '6888.00', '6888.00', '6888.00', 'iphone70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('26', 'iPhone7 Plus/玫瑰金色/64G', '17', '6588.00', '6588.00', '6588.00', 'iphone70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('27', 'iPhone7 Plus/玫瑰金色/32G', '17', '6088.00', '6088.00', '6088.00', 'iphone70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('28', 'iPhone7 Plus/金色/128G', '17', '6888.00', '6888.00', '6888.00', 'iphone71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('29', 'iPhone7 Plus/金色/64G', '17', '6588.00', '6588.00', '6588.00', 'iphone71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('30', 'iPhone7 Plus/金色/32G', '17', '6088.00', '6088.00', '6088.00', 'iphone71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('31', 'iPhone7 Plus/银色/128G', '17', '6888.00', '6888.00', '6888.00', 'iphone74.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('32', 'iPhone7 Plus/银色/64G', '17', '6588.00', '6588.00', '6588.00', 'iphone74.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('33', 'iPhone7 Plus/银色/32G', '17', '6088.00', '6088.00', '6088.00', 'iphone74.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('34', 'iPhone7 Plus/亮黑色/128G', '17', '6888.00', '6888.00', '6888.00', 'iphone72.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('35', 'iPhone7 Plus/亮黑色/64G', '17', '6588.00', '6588.00', '6588.00', 'iphone72.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('36', 'iPhone7 Plus/亮黑色/32G', '17', '6088.00', '6088.00', '6088.00', 'iphone72.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('37', 'iPhone7/红色/128G', '20', '6088.00', '6088.00', '6088.00', 'iphone73.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('38', 'iPhone7/红色/64G', '20', '5888.00', '5888.00', '5888.00', 'iphone73.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('39', 'iPhone7/红色/32G', '20', '5688.00', '5688.00', '5688.00', 'iphone73.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('40', 'iPhone7/玫瑰金色/128G', '20', '6088.00', '6088.00', '6088.00', 'iphone70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('41', 'iPhone7/玫瑰金色/64G', '20', '5888.00', '5888.00', '5888.00', 'iphone70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('42', 'iPhone7/玫瑰金色/32G', '20', '5688.00', '5688.00', '5688.00', 'iphone70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('43', 'iPhone7/金色128G', '20', '6088.00', '6088.00', '6088.00', 'iphone71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('44', 'iPhone7/金色/64G', '20', '5888.00', '5888.00', '5888.00', 'iphone71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('45', 'iPhone7/金色/32G', '20', '5688.00', '5688.00', '5688.00', 'iphone71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('46', 'iPhone7/银色/128G', '20', '6088.00', '6088.00', '6088.00', 'iphone74.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('47', 'iPhone7/银色/64G', '20', '5888.00', '5888.00', '5888.00', 'iphone74.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('48', 'iPhone7/银色/32G', '20', '5688.00', '5688.00', '5688.00', 'iphone74.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('49', 'iPhone7/亮黑色/128G', '20', '6088.00', '6088.00', '6088.00', 'iphone72.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('50', 'iPhone7/亮黑色/64G', '20', '5888.00', '5888.00', '5888.00', 'iphone72.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('51', 'iPhone7/亮黑色/32G', '20', '5688.00', '5688.00', '5688.00', 'iphone72.jpg', '2016-10-28', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('56', 'iPhoneX/亮黑色/128G', '15', '8888.00', '8888.00', '8888.00', 'iphoneX0.jpg', null, '2', null, '87', '1');
INSERT INTO `goods` VALUES ('57', 'iPhoneX/深空灰色/128G', '15', '8888.00', '8888.00', '8888.00', 'iphoneX1.jpg', '2017-10-28', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('58', 'iPhoneX/亮黑色/64G', '15', '8088.00', '8088.00', '8088.00', 'iphoneX0.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('59', 'iPhoneX/深空灰色/64G', '15', '8088.00', '8088.00', '8088.00', 'iphoneX1.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('60', 'iPhoneSE/金色/64G', '18', '4088.00', '4088.00', '4088.00', 'iphonese0.jpg', '2016-12-26', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('61', 'iPhoneSE/银色/32G', '18', '3888.00', '3888.00', '3888.00', 'iphonese1.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('62', 'iPhoneSE/金色/64G', '18', '4088.00', '4088.00', '4088.00', 'iphonese0.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('63', 'iPhoneSE/银色/32G', '18', '3888.00', '3888.00', '3888.00', 'iphonese1.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('64', 'iPhone8/金色/256G', '19', '8088.00', '8088.00', '8088.00', 'iphone81.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('65', 'iPhone8/金色/64G', '19', '7888.00', '7888.00', '7888.00', 'iphone81.jpg', '2017-10-28', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('66', 'iPhone8/银色/256G', '19', '8088.00', '8088.00', '8088.00', 'iphone82.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('67', 'iPhone8/银色/64G', '19', '7888.00', '7888.00', '7888.00', 'iphone82.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('68', 'iPhone8/灰黑色/256G', '19', '8088.00', '8088.00', '8088.00', 'iphone80.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('69', 'iPhone8/灰黑色/64G', '19', '7888.00', '7888.00', '7888.00', 'iphone80.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('70', 'iPhone8 Plus/金色/256G', '16', '8888.00', '8888.00', '8888.00', 'iphone81.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('71', 'iPhone8 Plus/金色/64G', '16', '8088.00', '8088.00', '8088.00', 'iphone81.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('72', 'iPhone8 Plus/银色/256G', '16', '8888.00', '8888.00', '8888.00', 'iphone82.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('73', 'iPhone8 Plus/灰黑色/256G', '16', '8888.00', '8888.00', '8888.00', 'iphone80.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('74', 'iPhone8 Plus/灰黑色/64G', '16', '8088.00', '8088.00', '8088.00', 'iphone80.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('75', 'iPhone6s/银色/128G', '21', '5688.00', '5688.00', '5688.00', 'iphone63.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('76', 'iPhone6s/银色/64G', '21', '5088.00', '5088.00', '5088.00', 'iphone63.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('77', 'iPhone6s/银色/32G', '21', '4568.00', '4568.00', '4568.00', 'iphone63.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('78', 'iPhone6s/金色/128G', '21', '5088.00', '5088.00', '5088.00', 'iphone62.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('79', 'iPhone6s金色/64G', '21', '4888.00', '4888.00', '4888.00', 'iphone62.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('80', 'iPhone6s/金色/32G', '21', '3088.00', '4888.00', '4888.00', 'iphone62.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('81', 'iPhone6s/玫瑰金色/128G', '21', '3000.00', '4000.00', '4000.00', 'iphone60.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('82', 'iPhone6s/玫瑰金色/64G', '21', '3000.00', '4000.00', '4000.00', 'iphone60.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('83', 'iPhone6s/玫瑰金色/64G', '21', '3000.00', '4000.00', '4000.00', 'iphone60.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('84', 'iPad Pro/金色/64G', '26', '5088.00', '5088.00', '5088.00', 'ipadpro3.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('85', 'iPad Pro/银色/64G', '26', '5088.00', '5088.00', '5088.00', 'ipadpro0.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('86', 'iPad Pro/玫瑰金色/64G', '26', '5088.00', '5088.00', '5088.00', 'ipadpro1.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('87', 'iPad Pro/深空灰色/64G', '26', '5088.00', '5088.00', '5088.00', 'ipadpro2.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('88', 'iPad Pro/金色/256G', '26', '5688.00', '5688.00', '5688.00', 'ipadpro3.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('89', 'iPad Pro/银色/256G', '26', '5688.00', '5688.00', '5688.00', 'ipadpro0.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('90', 'iPad Pro/玫瑰金色/256G', '26', '5688.00', '5688.00', '5688.00', 'ipadpro1.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('91', 'iPad Pro/深空灰色/256G', '26', '5688.00', '5688.00', '5688.00', 'ipadpro2.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('92', 'iPad mini4/金色/128G', '28', '3088.00', '3088.00', '3088.00', 'ipadmini42.jpg', '2017-11-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('93', 'iPad mini4/银色/128G', '28', '3088.00', '3088.00', '3088.00', 'ipadmini41.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('94', 'iPad mini4/深空灰色/128G', '28', '3088.00', '3088.00', '3088.00', 'ipadmini40.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('95', 'iPad mini4/金色/32G', '28', '2688.00', '2688.00', '2688.00', 'ipadmini42.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('96', 'iPad mini4/银色/32G', '28', '2688.00', '2688.00', '2688.00', 'ipadmini41.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('97', 'iPad mini4/深空灰色/32G', '28', '2688.00', '2688.00', '2688.00', 'ipadmini40.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('98', 'iPad 2017/金色/128G', '27', '3088.00', '3088.00', '3088.00', 'ipad20170.jpg', '2017-06-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('99', 'iPad 2017/银色/128G', '27', '3088.00', '3088.00', '3088.00', 'ipad20171.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('100', 'iPad 2017/深空灰色/128G', '27', '3088.00', '3088.00', '3088.00', 'ipad20172.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('101', 'iPad 2017/金色/32G', '27', '2688.00', '2688.00', '2688.00', 'ipad20170.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('102', 'iPad 2017/银色/32G', '27', '2688.00', '2688.00', '2688.00', 'ipad20171.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('103', 'iPad 2017深空灰色/32G', '27', '2688.00', '2688.00', '2688.00', 'ipad20172.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('104', 'iPad mini3/金色/16G', '29', '2588.00', '2588.00', '2588.00', 'ipadmini42.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('105', 'iPad mini3/银色/16G', '29', '2588.00', '2588.00', '2588.00', 'ipadmini41.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('106', 'iPad mini3/深空灰色/16G', '29', '2588.00', '2588.00', '2588.00', 'ipadmini40.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('107', 'iPad mini3/金色/64G', '29', '2888.00', '2888.00', '2888.00', 'ipadmini42.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('108', 'iPad mini3/银色/64G', '29', '2888.00', '2888.00', '2888.00', 'ipadmini41.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('109', 'iPad mini3/深空灰色/64G', '29', '2888.00', '2888.00', '2888.00', 'ipadmini40.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('110', 'iPad 配件/充电器/白色', '31', '159.00', '159.00', '159.00', 'ipadcdq.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('111', 'Apple Watch Series3/38mm/银色铝金属表壳搭配云雾运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch32.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('112', 'Apple Watch Series3/38mm/深空灰色铝金属表壳搭配灰色运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch31.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('113', 'Apple Watch Series3/38mm/不锈钢表壳搭配浅白色运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch30.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('114', 'Apple Watch Series3/38mm/金色铝金属表壳搭配粉砂色运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch31.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('115', 'Apple Watch Series3/42mm/银色铝金属表壳搭配云雾运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch30.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('116', 'Apple Watch Series3/42mm/深空灰色铝金属表壳搭配灰色运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch32.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('117', 'Apple Watch Series3/42mm/不锈钢表壳搭配浅白色运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch30.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('118', 'Apple Watch Series3/42mm/金色铝金属表壳搭配粉砂色运动型表带', '32', '2088.00', '2088.00', '2088.00', 'applewatch31.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('119', 'iPod nano7/金色', '39', '688.00', '688.00', '688.00', 'ipodnano70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('120', 'iPod nano7/银色', '39', '688.00', '688.00', '688.00', 'ipodnano70.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('121', 'iPod nano7/浅蓝色', '39', '688.00', '688.00', '688.00', 'ipodnano71.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('122', 'iPod shuffle/红色', '40', '499.00', '499.00', '499.00', 'ipodshuffle2.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('123', 'iPod shuffle/粉色', '40', '499.00', '499.00', '499.00', 'ipodshuffle2.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('124', 'iPod shuffle/紫色', '40', '499.00', '499.00', '499.00', 'ipodshuffle1.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('125', 'iPod shuffle/金色', '40', '499.00', '499.00', '499.00', 'ipodshuffle0.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('126', 'iPod shuffle/银色', '40', '499.00', '499.00', '499.00', 'ipodshuffle0.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('127', 'iPod touch7/金色', '37', '2000.00', '2000.00', '2000.00', 'ipodtouch0.jpg', '2017-10-01', '2', null, '100', '1');
INSERT INTO `goods` VALUES ('128', 'iPod touch7/银色', '37', '2000.00', '2000.00', '2000.00', 'ipodtouch1.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('129', 'iPod touch7/蓝色', '37', '2000.00', '2000.00', '2000.00', 'ipodtouch2.jpg', null, '2', null, '100', '1');
INSERT INTO `goods` VALUES ('134', 'iphone100', '15', '10000.00', '10000.00', '9996.00', ' 0.jpg', null, '2', ' 6666666', '100', '0');
INSERT INTO `goods` VALUES ('135', 'iphone101', '15', '10000.00', '10000.00', '9997.00', ' 0.jpg', null, '2', ' 6666667', '100', '0');
INSERT INTO `goods` VALUES ('136', 'iphone102', '15', '10000.00', '10000.00', '9998.00', ' 0.jpg', null, '2', ' 6666668', '100', '0');
INSERT INTO `goods` VALUES ('137', 'iphone103', '15', '10000.00', '10000.00', '9999.00', ' 0.jpg', null, '2', ' 6666669', '100', '0');
INSERT INTO `goods` VALUES ('138', 'iphone104', '15', '10000.00', '10000.00', '10000.00', ' 0.jpg', null, '2', ' 6666670', '100', '0');
INSERT INTO `goods` VALUES ('139', 'iphone105', '15', '10000.00', '10000.00', '22.00', ' 0.jpg', null, '2', ' 6666671', '100', '0');
INSERT INTO `goods` VALUES ('140', 'iphone106', '15', '10000.00', '10000.00', '10000.00', ' 0.jpg', null, '2', ' 6666672', '100', '0');
INSERT INTO `goods` VALUES ('141', 'iphone107', '15', '10000.00', '10000.00', '10000.00', ' 0.jpg', null, '2', ' 6666673', '100', '0');
INSERT INTO `goods` VALUES ('142', 'iphone108', '15', '10000.00', '10000.00', '10000.00', ' 0.jpg', null, '2', ' 6666674', '100', '0');

-- ----------------------------
-- Table structure for `goodtype`
-- ----------------------------
DROP TABLE IF EXISTS `goodtype`;
CREATE TABLE `goodtype` (
  `gt_id` int(11) NOT NULL AUTO_INCREMENT,
  `gt_typename` varchar(20) NOT NULL,
  `ft_id` int(11) DEFAULT NULL,
  `gt_mark` varchar(10000) DEFAULT NULL,
  `gt_del` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gt_id`),
  KEY `ft_id` (`ft_id`),
  CONSTRAINT `goodtype_ibfk_1` FOREIGN KEY (`ft_id`) REFERENCES `goodtype` (`gt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodtype
-- ----------------------------
INSERT INTO `goodtype` VALUES ('1', 'Mac', null, null, '1');
INSERT INTO `goodtype` VALUES ('2', 'iPhone', null, null, '1');
INSERT INTO `goodtype` VALUES ('3', 'iPad', null, null, '1');
INSERT INTO `goodtype` VALUES ('4', 'Watch', null, null, '1');
INSERT INTO `goodtype` VALUES ('5', 'iPod', null, null, '1');
INSERT INTO `goodtype` VALUES ('6', 'Music', null, null, '1');
INSERT INTO `goodtype` VALUES ('7', 'MacBook', '1', '强大能量，尽在毫厘之间。MacBook 现配备第七代 Intel Core 处理器，速度更胜以往。得益于更快的固态硬盘存储和最高可达 3.6GHz 的 Turbo Boost 处理能力，无论是启动 app和打开文件等常见任务，还是更为精密复杂的计算，你都有足够的力量来应对日常所需。方寸间尽纳天地，\r\n任你尽情发挥。MacBook 内部的每个组件都经过缜密设计，以求在更为纤薄的机身中实现更大的可能。我们选用了强劲的高能效处理器，并优化了 macOS，使处理器能够以更小的能耗来驱动系统。这款电脑不需要风扇散热，因此可节省出更多空间来容纳电池组件，从而给你足用一天的电力，与你一路随行。处理器\r\nMacBook 配备的第七代 Intel Core m3、i5 和 i7 处理器，采用了 14 纳米制程技术。这让 MacBook 既能满足处理各种事务的性能需求，又兼顾能效。无风扇结构\r\nMacBook 为追求近乎无声的运行表现而设计。它所采用的处理器功率只有 5 瓦，发热量很低，因此不需要风扇来为电脑散热。事实上，它的主板置于一块各向异性石墨片上，以帮助热量向四周散发。所以即使你的 MacBook 任务繁重，你也不会听到它运行时有什么声音。存储和内存\r\nMacBook 虽然内部组件非常小巧，但是仍拥有惊人容量，用来存储各类文件以及运行各种日常应用程序。有了最高达 16GB 的 1866MHz LPDDR3 主板集成内存以及最高达 512GB 的固态硬盘存储，你将拥有一款性能强劲的、轻巧纤薄的笔记本电脑。电池\r\n为了电池续航能实现满足一天所需3，我们必须充分利用 MacBook 内部的每一丝、每一毫空间。因此我们开发了创新的阶梯式电池，其量身定制的外形能充分贴合机身内部的特定轮廓。与以前的技术相比，这一新技术使电池容量有了 35% 的提升。键盘再进化，用起来更顺手。\r\n我们相信，无论什么样的笔记本电脑，一个舒适的全尺寸键盘都必不可少。为了将其置入 MacBook，我们从头开始，重新设计了整个键盘，包括每一个按键和它下方的结构。这不仅让整个键盘变得更薄，也让输入更舒适、精准，带来轻松惬意的手感。', '1');
INSERT INTO `goodtype` VALUES ('8', 'MacBook Air', '1', 'MacBook Air 充电一次最长可运行 12 小时，续航能力着实令人惊叹。因此，你从清早第一杯咖啡直至下班路上，无需插电即可持续工作。同时，它的待机时间最长可达 30 天，让你即使将电脑闲置数周，回来后也能从上次停下的地方继续开始使用*。无论是应对照片编辑还是网页浏览等各种任务，配备 Intel HD Graphics 6000 图形处理器的第五代 Intel Core i5 和 i7 处理器都能快速、自如地处理。这一切强大动力，均蕴藏于轻至 1.35 千克、薄至 1.7 厘米的一体成型设计之中，着实令人叹为观止。快速连接 AirPort Extreme 或 AirPort 时间返回舱等 802.11ac 基站，即可体验比上一代 Wi-Fi 快达 3 倍的无线性能。802.11ac 技术的信号覆盖范围进一步扩大，可让你工作起来比以往更无拘无束。macOS 是助你在 Mac 上尽情施展的强大操作系统。而 macOS High Sierra 更为你的 Mac 带来前瞻性的新技术和增强的功能。这一切，都让 macOS 登上一个新的高峰。', '1');
INSERT INTO `goodtype` VALUES ('9', 'MacBook Pro', '1', '它纤薄如刃，轻盈如羽，却又比以往速度更快、性能更强大。它为你展现的，是迄今最明亮、最多彩的 Mac 笔记本显示屏。它更配备了触控栏，一个内置于键盘的玻璃面多点触控条，让你能在需要时快速取用各种工具。MacBook Pro 是对我们突破性理念的一场出色演绎，而它，也正期待着演绎你的奇思妙想。触控栏取代了以往键盘最上方的功能键，为你带来更多能、更实用的功能2。它会根据你当前的操作自动显示不同的样子，呈现给你相关的工具，比如系统控制键里的音量和亮度、互动操作中的调整和内容浏览工具、智能输入功能中的表情符号和文本输入预测等等，这些都是你早就运用自如的。此外，触控 ID 功能也已登陆 Mac，让你可以在转瞬之间完成登录等各种操作。\r\nMacBook Pro 将笔记本电脑的性能与便携性提升到一个新的高度。无论你的目标有多远大，它强劲的图形处理器、高性能的中央处理器、智能的存储设备，以及众多强大配置，都能助你加速实现创意构想。15 英寸 MacBook Pro 均配备性能强大的 Radeon Pro 独立图形处理器。这一图形处理器采用先进的 14 纳米制程工艺，处理能力和能效表现都非常出色。顶配机型现在标配 4GB GDDR5 显存，这让专业任务处理，比如在 Final Cut Pro X 中进行 3D 字幕渲染，能有实时、流畅的表现。 13 英寸机型均搭载强大的集成图形处理器，配有 64MB 的嵌入式动态随机存储器 (eDRAM)，可加快图形处理任务的速度。因此，你将节省更多时间专注于你的大作，这才是重中之重。MacBook Pro 采用速度惊人的固态硬盘，顺序读取速度最高可达 3.2GB/s。15 英寸机型提供最高达 2TB 容量的固态硬盘配置，让你不必使用外接硬盘，即可有足够空间存储大型项目文件。另外，内存的速度和能效也非常出色。所有这些组件默契配合，让你无论是开机、启动多个 app 还是导入庞大的文件，都能以闪电般的速度完成。动力出色的处理器，却出奇省电。高冷的散热技术，深藏不露。', '1');
INSERT INTO `goodtype` VALUES ('10', 'iMac', '1', '性能全方位爆发。iMac 现配备第七代 Intel Core i5 和 i7 处理器以及新一代高性能图形处理器，与以往相比速度更快、性能更强大。存储也进入高端配置，现在，27 英寸和 21.5 英寸配备视网膜显示屏的机型均标配高速、大容量的融合硬盘。这样，你便可以在 Mac 上做你想做的事，全速完成。每一台 iMac 均配备全新的第七代 Intel Core 处理器。它的处理速度更胜于以往的 iMac，27 英寸机型最高可达 4.2GHz，21.5 英寸机型最高可达 3.6GHz。而 Turbo Boost 技术，还能在你使用 Logic Pro 或 Final Cut Pro 等需要大量处理器资源的应用软件时，将速度进一步提升。这一切都在后台进行，但各方面的提升却显而易见。高速度、高智能的存储方案。新 iMac 上的这块视网膜显示屏，色彩比以往更加鲜艳亮丽。十亿色彩和 500 尼特的亮度，让画面跃然于屏幕之上，绽放出新的光芒。像素密度如此之高，让你无法以肉眼分辨出单个像素。文字清晰、锐利，让你的电子邮件和文件看起来比以往更漂亮。这是 Mac 上迄今最明亮、最多彩的视网膜显示屏。所有 iMac 机型均标配两个雷雳 3 (USB-C) 端口，每个端口均可为外接硬盘和相机提供最高可达 40Gb/s 的数据传输，并提供两倍的带宽，用于视频输出和连接显示屏。四个 USB 3 端口为你带来更多选择，让你可以轻松连接打印机、iPhone、U 盘等各种外设。 你还可通过疾速的三串流 Wi-Fi 和蓝牙 4.2 无线技术随时连接，访问所有你喜欢的内容。', '1');
INSERT INTO `goodtype` VALUES ('11', 'iMac Pro', '1', '它纤薄如刃，轻盈如羽，却又比以往速度更快、性能更强大。它为你展现的，是迄今最明亮、最多彩的 Mac 笔记本显示屏。它更配备了触控栏，一个内置于键盘的玻璃面多点触控条，让你能在需要时快速取用各种工具。MacBook Pro 是对我们突破性理念的一场出色演绎，而它，也正期待着演绎你的奇思妙想。触控栏取代了以往键盘最上方的功能键，为你带来更多能、更实用的功能2。它会根据你当前的操作自动显示不同的样子，呈现给你相关的工具，比如系统控制键里的音量和亮度、互动操作中的调整和内容浏览工具、智能输入功能中的表情符号和文本输入预测等等，这些都是你早就运用自如的。此外，触控 ID 功能也已登陆 Mac，让你可以在转瞬之间完成登录等各种操作。MacBook Pro 将笔记本电脑的性能与便携性提升到一个新的高度。无论你的目标有多远大，它强劲的图形处理器、高性能的中央处理器、智能的存储设备，以及众多强大配置，都能助你加速实现创意构想。15 英寸 MacBook Pro 均配备性能强大的 Radeon Pro 独立图形处理器。这一图形处理器采用先进的 14 纳米制程工艺，处理能力和能效表现都非常出色。顶配机型现在标配 4GB GDDR5 显存，这让专业任务处理，比如在 Final Cut Pro X 中进行 3D 字幕渲染，能有实时、流畅的表现。 13 英寸机型均搭载强大的集成图形处理器，配有 64MB 的嵌入式动态随机存储器 (eDRAM)，可加快图形处理任务的速度。因此，你将节省更多时间专注于你的大作，这才是重中之重。', '1');
INSERT INTO `goodtype` VALUES ('12', 'Mac Pro', '1', '专业人士对 iMac 情有独钟。因此，我们特意为他们打造了这款 Mac。它配备了 Mac 史上最强的中央处理器和图形处理器，还有着尤为先进的存储设备、内存和 I/O 端口。这一切都藏身于令人惊叹的视网膜 5K 显示屏之后，融入到精致简洁的一体式设计之中。无论是摄影师、视频剪辑师、3D 动画师、音乐人、软件开发者还是科研人员，每个人都能以从未想象的方式，各展所长。配备 4 个核心的 iMac 已然足够不同凡响。而配备 8 个、10 个、14 个或 18 个核心的 iMac，全然是一种不同的存在。再加上最高可达 4.5GHz 的 Turbo Boost 速度，让 iMac Pro 拥有充分的能力和灵活性，很好地兼顾超凡的多核处理能力和出色的单线程性能。而有了全新的 AVX-512 矢量指令集和全新缓存架构，处理器还能够更快处理更多数据。因此，无论是渲染图片、剪辑 8K 视频、调整照片、制作实时音频特效，还是编译下一款五星好评的 app，所有操作都快如闪电。iMac Pro 配备 Radeon Pro Vega 图形处理器，提供 Mac 有史以来最强大的工作站级图形处理能力。这是首台采用 Vega 架构、配备最高可达 16GB 高带宽显存的 Mac，性能大幅提升，图形处理器速度比其他 iMac 最高快两倍，比 Mac Pro 最高快三倍。这些性能带给你的，将是更高帧率的 VR 体验、实时的 3D 渲染、更逼真的特效，以及最高设置下的出色游戏表现。iMac Pro 同时支持单精度和半精度运算，因此能以两倍的速度来执行不要求完整 32 位精度的运算。有多快？最高可达每秒 22 万亿次浮点运算。iMac Pro 配备四通道内存，可容纳最高达 128GB 的容量。因此，你可以视觉化呈现、模拟和渲染大型 3D 模型，搭建多个测试环境进行跨平台开发，还能让大量 app 同时保持开启。各种强大，只为让你从容应对各种任务。这款 Apple T2 芯片，是 Apple 推出的第二代定制化 Mac 芯片。通过对其他 Mac 系统中的几款控制器进行重新设计与整合，例如系统管理控制器、图像信号处理器、音频控制器和固态硬盘控制器，Apple T2 芯片为 Mac 带来了多项新功能。比如，T2 图像信号处理器能与 FaceTime 高清摄像头协作，进一步提升色调映射和曝光控制，还能基于面部识别技术进行自动曝光并自动调节白平衡。再加上安全隔区协处理器为全新的加密存储和安全启动功能打下了坚实基础，T2 芯片能让 iMac Pro 更安全。它还采用专用的 AES 硬件为你存储在固态硬盘上的数据加密，这既不会影响固态硬盘的性能，还能让 Intel Xeon 处理器专心处理运算任务。此外，安全启动功能确保底层软件不会被篡改，而且只有经 Apple 信任的操作系统软件才能在开机时启动。正如你所期待的专业级电脑一样，iMac Pro 提供了充足的高速端口，方便你打造高性能工作站。四个雷雳 3 端口可连接两台 5K 监视器，让多达 4400 万颗像素呈现在你眼前，还能以 40Gb/s 的惊人速度传输数据。另外，还有一个你可能没料到 iMac 会提供的端口：10Gb 以太网端口。有了它，在台式电脑间共享文件或操作高性能网络存储设备时，速度提升最高可达 10 倍。\r\n', '1');
INSERT INTO `goodtype` VALUES ('13', 'Mac mini', '1', 'Mac mini 配备第四代 Intel Core 处理器，速度提升达 50% 的闪存选项，以及较上一代快达 3 倍的无线网络，让处理日常事务轻轻松松。更有 Intel Iris Graphics 或 Intel HD Graphics 5000 图形处理器，同上一代机型相比，它将图形处理性能提升了 90% 之多。它还具有强大的连接功能，如雷雳 2 和对 HDTV 的支持。无论采用何种外设，Mac mini 都是主角。Mac mini 由一整块铝金属打造而成，光滑一体的独特外形，流露着鲜明的 Mac 气质。它高不过 4 厘米、重不到 2 千克，小小块头却无损性能。它还是一款高能效的台式电脑，不仅达到 ENERGY STAR 能源之星要求，更超越七倍之多。拥有一台如此小巧的电脑，唯一的问题就是：该如何利用宽敞的桌面呢？macOS 是助你在 Mac 上尽情施展的强大操作系统。而 macOS High Sierra 更为你的 Mac 带来前瞻性的新技术和增强的功能。这一切，都让 macOS 登上一个新的高峰。每台全新 Mac 均配备照片、iMovie、库乐队、Pages、Numbers 和 Keynote。从开启它的那一刻起，你就能尽情挥洒创意，进行高效工作。同时，你还享有多款精彩 app，可用以收发电子邮件、畅游网络、发送文本信息、进行 FaceTime 视频通话，甚至还有一款专门的 app，能够帮助你寻找更多新的 app。', '1');
INSERT INTO `goodtype` VALUES ('14', 'Mac 配件', '1', null, '1');
INSERT INTO `goodtype` VALUES ('15', 'iPhoneX', '2', 'iPhone X 全新设计，机身采用的是 iPhone 上有史以来最坚固耐用的前后玻璃面板，以及手术级不锈钢，更有无线充电功能和抗水防尘设计。简单自然的手势，熟悉的手势，使用起来自然流畅、简单直观。无论你在哪个界面，只需轻扫一下就能返回主屏幕，不必再使用按钮。安全可靠的验证方式，你的脸，现在就是你的密码。面容 ID 功能为设备解锁、身份验证和支付带来了一种安全、私密的新方式。面谱绘制，面容 ID 功能通过原深感摄像头来实现，设置起来也非常简单。它会投射超过 30,000 个肉眼不可见的光点，并对它们进行分析，为你的脸部绘制精确细致的深度图。Apple Pay，面容 ID 非常安全，你可以放心将它用于 Apple Pay。只需看一眼手机，就能轻松进行支付。人像模式自拍，拍摄前景清晰、背景虚化、艺术感十足的自拍靓照。动话表情，原深感摄像头能对 50 多种不同的面部肌肉运动进行分析，从而以 12 款“动话表情”镜像出你的神态。快来化身为熊猫、兔子或机器人，展现一个真实的你吧。进一步提升的摄像头，拥有比以往尺寸更大、速度更快的 1200 万像素感光元件、新的色彩滤镜、更深层的像素，以及新的支持光学图像防抖的长焦镜头。双镜头光学图像防抖，两个后置镜头都具有光学图像防抖功能，而且反应飞快，即使在弱光下，也能拍出效果出众的照片和视频。光学变焦，iPhone X 能通过广角和长焦镜头实现光学变焦。另外，通过数码变焦，还能拍摄最高达 10 倍变焦的照片和最高达 6 倍变焦的视频。', '1');
INSERT INTO `goodtype` VALUES ('16', 'iPhone8 Plus', '2', 'iPhone 8 采用了全新的双面全玻璃设计，还让备受喜爱的相机变得倍加出色，它不仅配备了 iPhone 有史以来最强大、最智能的芯片。还带来了简单便捷的无线充电，并将增强现实体验推进到更深层次。这就是 iPhone 8，新一代的 iPhone。双面全玻璃设计,机身前后皆采用 iPhone 上迄今最坚固耐用的玻璃面板，新款深空灰色、银色和金色外观分别配以同色系的航空级铝金属边框。抗水防尘,精密的工艺，令机身无惧水溅和灰尘侵袭。无线充电，玻璃背板，轻松实现无线充电。全新显示屏，绚丽的视网膜高清显示屏，不仅支持广色域和三维触控，现在还配备了原彩显示技术。原彩显示技术，原彩显示技术能根据环境光自动调节白平衡，让你在各种环境下看什么都更舒服。绚丽鲜明的色彩，广色域技术与准确的色彩显示，让屏幕上的一切看来都更鲜明，更生动。宽广的可视角度，采用双域像素，从不同角度都能获得优秀的视觉体验。全新感光元件，iPhone 8 的 1200 万像素摄像头进一步提升，采用面积更大、速度更快的感光元件，拥有新的颜色滤镜和更深层的像素，以及用于拍摄照片和视频的光学图像防抖功能。。人像模式，在 iPhone 8 Plus 上，人像模式更出色了。前景更清晰锐利，后景的虚化也更自然。', '1');
INSERT INTO `goodtype` VALUES ('17', 'iPhone7 Plus', '2', 'iPhone 7拥有金色、银色、玫瑰金、黑色、亮黑色五款颜色，Home键全新设计，添加了振动反馈。支持防水防尘功能，双摄像头，防抖功能，新增了速度更快的处理器。相机的处理器ISP吞吐量是原来的两倍。Live photo更加强大，开发者还可以调用RAW相机的API。前置摄像头升级到700万像素，支持防抖功能。iPhone 7取消了3.5mm耳机接口，推出新耳机Apple AirPods，采用W1芯片，有传感器，电池，都放在小小的耳机机身中。', '1');
INSERT INTO `goodtype` VALUES ('18', 'iPhoneSE', '2', '欢迎使用 iPhone SE，迄今最高性能的 4 英寸 iPhone。在打造这款手机时，我们在深得人心的 4 英寸设计基础上，从里到外重新构想。它所采用的 A9 芯片，正是在 iPhone 6s 上使用的先进芯片。1200 万像素的摄像头能拍出令人叹为观止的精彩照片和 4K 视频，而实况照片则会让你的照片栩栩如生。这一切，成就了一款外形小巧却异常强大的 iPhone。iPhone SE，采用了备受欢迎的设计，并让它更加出色。铝金属表面经过喷砂工艺处理，打造出绸缎般的质感，让这款小巧、轻便的手机握持时手感非常舒适。绚丽的 4 英寸1视网膜显示屏让图像显得生动、锐利。倒角边缘经过哑光处理，不锈钢 Apple 标志的颜色也与机身相配，整个外观显得格外精致。FaceTime 高清摄像头配上视网膜屏闪光灯，你的自拍从此更闪亮。iCloud照片图库可存储你拍摄的照片和视频，并让它们在你的各种设备上保持更新。你的任何编辑也都会在各种设备上自动更新，因此无论你在哪里，都可以查看上周或去年拍摄的照片。', '1');
INSERT INTO `goodtype` VALUES ('19', 'iPhone8', '2', 'iPhone 8 采用了全新的双面全玻璃设计，还让备受喜爱的相机变得倍加出色，它不仅配备了 iPhone 有史以来最强大、最智能的芯片。还带来了简单便捷的无线充电，并将增强现实体验推进到更深层次。这就是 iPhone 8，新一代的 iPhone。双面全玻璃设计,机身前后皆采用 iPhone 上迄今最坚固耐用的玻璃面板，新款深空灰色、银色和金色外观分别配以同色系的航空级铝金属边框。抗水防尘,精密的工艺，令机身无惧水溅和灰尘侵袭。无线充电，玻璃背板，轻松实现无线充电。全新显示屏，绚丽的视网膜高清显示屏，不仅支持广色域和三维触控，现在还配备了原彩显示技术。原彩显示技术，原彩显示技术能根据环境光自动调节白平衡，让你在各种环境下看什么都更舒服。绚丽鲜明的色彩，广色域技术与准确的色彩显示，让屏幕上的一切看来都更鲜明，更生动。宽广的可视角度，采用双域像素，从不同角度都能获得优秀的视觉体验。全新感光元件，iPhone 8 的 1200 万像素摄像头进一步提升，采用面积更大、速度更快的感光元件，拥有新的颜色滤镜和更深层的像素，以及用于拍摄照片和视频的光学图像防抖功能。。人像模式，在 iPhone 8 Plus 上，人像模式更出色了。前景更清晰锐利，后景的虚化也更自然。人像光效，以双镜头配合新的面部特征识别技术，在人像模式中创造出媲美专业打光的生动效果。光学变焦，iPhone 8 Plus 的广角与长焦双镜头，让你在拍摄时可进行光学变焦；而通过数码变焦，还可以拍摄最高达 10 倍变焦的照片和最高达 6 倍变焦的视频。更快的中央处理器，全新推出的 A11 仿生这款芯片，它的四个能效核心速度比 A10 Fusion 最高提升 70%，两个性能核心也有了最高达 25% 的速度提升。高效用电，第二代性能控制器能在你需要时提供更强动力，电池续航却依然持久。', '1');
INSERT INTO `goodtype` VALUES ('20', 'iPhone7', '2', 'iPhone 7拥有金色、银色、玫瑰金、黑色、亮黑色五款颜色，Home键全新设计，添加了振动反馈。支持防水防尘功能，双摄像头，防抖功能，新增了速度更快的处理器。相机的处理器ISP吞吐量是原来的两倍。Live photo更加强大，开发者还可以调用RAW相机的API。前置摄像头升级到700万像素，支持防抖功能。iPhone 7取消了3.5mm耳机接口，推出新耳机Apple AirPods，采用W1芯片，有传感器，电池，都放在小小的耳机机身中。', '1');
INSERT INTO `goodtype` VALUES ('21', 'iPhone6s', '2', '具备三维触控技术的视网膜高清显示屏，4.7 英寸（对角线）LCD 宽屏多点触控显示屏，采用 IPS 技术，1334 x 750 像素分辨率，326 ppi ，1400:1 对比度（标准）', '1');
INSERT INTO `goodtype` VALUES ('22', 'iPhone6', '2', 'iPhone 6的屏幕扩大到了4.7英寸，分辨率随之提升至1334×750像素，换算下来屏幕的像素密度依旧为326，苹果始终认为326 ppi已经是人眼的极限，因此新的iPhone 6屏幕像素密度依旧从326起跳。屏幕上覆盖的玻璃盖板不再是平的，而是2.5D的玻璃，这让iPhone 6的屏幕边缘是弧形的。苹果在iPhone6上使用了全新的A8处理器，苹果称这颗处理器是第二代的64位处理器，官方的参数表示A8的处理能力将比之前5S上使用的A7提高25%的处理速度。除此以外A8内还集成了一颗协。处理器M8，功能和之前的M7一样，专为测量来自加速感应器、陀螺仪和指南针的运动数据而设计，保证低电压的同时，完成传感器的运算动作。', '0');
INSERT INTO `goodtype` VALUES ('23', 'iPhone5s', '2', null, '0');
INSERT INTO `goodtype` VALUES ('24', 'iPhone5', '2', null, '0');
INSERT INTO `goodtype` VALUES ('26', 'iPad Pro', '3', '新款 10.5 英寸 iPad Pro 的显示屏尺寸比 9.7 英寸机型增大近 20%，给你更大空间去创造更多精彩。另外，它还提供全尺寸的屏幕键盘，便携性却丝毫不减。新款 iPad Pro 的视网膜显示屏配备 ProMotion 自适应刷新率技术，并支持 120Hz 的刷新频率。因此视频看起来宏大震撼，游戏玩起来也流畅自如，毫无令人分心的伪影。你会发现，原来速度也能产生摄动人心的美。而且，无论你是使用手指还是 Apple Pencil 触控显示屏，它的响应都是如此灵敏。你可以更游刃有余地处理更多事务。iOS 11 上全新的程序坞，让你能轻松打开最近用过的 app 和文件。当你使用“侧拉”或“分屏浏览”时，两边的 app 都会保持激活状态，让你可以同时操作它们。这样，你就可以一边编辑图片，一边创作网页；或者一边查看着 Safari 浏览器准备你的假期，一边对着日历 app 查看日期。iPad Pro 和 iOS 11 让你可以分身有术，同时处理手边的各种事务。A10X Fusion 芯片采用 64 位架构，并拥有六个核心，让你一手掌握惊人的处理能力。你能在外出途中剪辑 4K 视频，还能渲染精细的 3D 模型，或者创建、标记复杂的文档和演示文稿，轻轻松松，毫不费力。所有这一切，你都能在这一部设备上搞定，而且电池续航力仍能满足你的一天所需1。', '1');
INSERT INTO `goodtype` VALUES ('27', 'iPad 2017', '3', 'iPad 配备鲜艳亮丽的 9.7 英寸视网膜显示屏。这块屏幕的细节表现力、尺寸，让你无论是欣赏照片，购物，还是创建演示文稿，都能有着生动逼真的观感。64 位 A9 芯片带来出色的性能表现，让 app 用起来既快速又流畅。你可以探索内容丰富的学习类 app，畅玩各种图形密集型游戏，甚至可以同时使用两个 app。这些都有最长可达 10 小时的电池使用时间做后盾。每一款 iPad app 都是针对 iPad 的性能和尺寸而特别设计。有了 App Store 中众多出色的 iPad app，你喜欢做的事，几乎都有相应的 app 能帮到你。iOS 11 为 iPad 注入了前所未有的活力。众多新特性和新功能将帮你更高效快捷地处理事务，显著提升 iPad 的使用体验，让它更强大、更加个人化。你独一无二的指纹，就是与你形影不离的理想密码。有了触控 ID，你可以快速解锁 iPad，保护 app 中的隐私数据，还能通过 Apple Pay 使用它进行 app 内支付。用 iPad，随手就能拍张照片或是拍段视频。你可以用 800 万像素摄像头拍摄细节丰富的照片或 1080p 高清视频，然后直接用 iPad 上的照片 app、iMovie、或是 App Store 中你喜爱的其他 app 来进行编辑。你还可以用前置 FaceTime 高清摄像头进行视频通话，或是来张漂亮的自拍。iPad 可与你的其他设备默契协作。比如，用 iPhone 开始撰写的电子邮件，可以在 iPad 上接着写完；从 iPad 上拷贝图像、视频和文字，可以粘贴到旁边你的 Mac 上。你还可以使用隔空投送功能，在各种设备之间以无线方式即时分享文件。', '1');
INSERT INTO `goodtype` VALUES ('28', 'iPad mini4', '3', '外观小巧，实力却不容小瞧。iPad mini 4 将十足的性能与潜能，放在你的手上。它比以往更加纤薄、轻巧，但性能却依然强大，足以助你尽致发挥自己的缤纷创意。iPad mini 4 将你喜爱的各种 iPad 功能，浓缩在一个更为精致而便携的设计之中。现在，你尽可以与好友一起来使用 FaceTime 视频通话，或是轻松搞定手边工作，随时随地，随你所愿。iPad mini 4 配备了我们第二代采用 64 位台式电脑级架构的芯片：A8 芯片，这使其变得更加强大，即便是对性能要求非常高的 app 也能应对自如。无论是剪辑视频、浏览照片，或是二者同时进行，你的体验都将流畅无阻。这些都有最长可达 10 小时的电池使用时间做后盾。iPad mini 4 配备的摄像头，不但拥有先进的光学技术、优化的传感器和 Apple 设计的图像信号处理器，还包括全景、延时摄影、慢动作、连拍快照、计时模式等一系列得心应手的功能。前置 FaceTime 高清摄像头也经过重新设计，拥有更精细的传感器和更大尺寸像素，使其在弱光条件下的表现更出色。这让你的照片、视频，以及视频通话和自拍，看起来都更生动鲜活。iPad mini 4 采用触控 ID 技术，将你的指纹变成不会遗忘的密码。因此，你只需轻轻一触，即可解锁自己的设备。而且，它还能确保你的个人数据安全，即使与别人共享这部 iPad，你也无需担心。触控 ID 能让你在 App Store 中安全地进行购买，更能让你通过 Apple Pay 在许多常用的 app 中简单、安全地进行支付。iPad mini 可连接至高速无线网络和蜂窝数据网络，让你在需要时可以轻松便捷地下载内容，浏览网页及共享文件。如果附近没有无线网络热点，无线网络＋蜂窝网络机型可让你连接世界各地的高速蜂窝数据网络。\r\n\r\n', '1');
INSERT INTO `goodtype` VALUES ('29', 'iPad mini3', '3', 'TouchID指纹传感器显然是iPad mini 3的新功能之一。因为随着iOS8的研发展开，苹果应该会逐步扩大指纹识别功能的覆盖，也有望开放其接口，让更多软件应用可以使用指纹识别功能，从而加强整个iOS生态系统的安全性。增加存储卡插槽及扩大iCloud空间。M7运动协处理器出现在iPadmini2上已经令人有些意外，所以苹果还是有可能为iPadmini3添加更多新功能。压力感应屏幕可以提供更加真实的触摸感受，对手指输入的反馈更为细腻，也能够实现更复杂的触摸操作，显然是增加使用体验的一个有效方法。由于iPad mini系列机身相对小巧，所以很多用户也喜欢用它来拍照，大屏幕取景效果更出色。不过，iPad系列自ipad3开始，摄像头几乎没有进步，都采用了500万像素iSight传感器，画质和功能相比iphone5s等机型都稍显落后。所以，如果iPadmini3能够使用5s的摄像头组件的话，在某种程度上来说会更受欢迎。', '0');
INSERT INTO `goodtype` VALUES ('30', 'iPad mini2', '3', 'iPad mini 2的机身仅有7.5毫米之薄，iPad mini 为随身而行所设计，因此采用两条天线来支持MIMO （多输入多输出）技术，以实现快达2倍的802.11n无线网络连接速度。 而WLAN + Cellular机型还支持世界各地的更多网络，因此iPad mini可让用户在更多地方保持网络连接。另外，它还配备了500万像素iSight摄像头和FaceTime HD高清摄像头。其传感器经过优化，可以让视频通话效果更出色。此外，双麦克风可为视频拍摄、FaceTime视频通话和Siri语音识别提升音质和过滤背景噪音。', '0');
INSERT INTO `goodtype` VALUES ('31', 'iPad 配件', '3', null, '0');
INSERT INTO `goodtype` VALUES ('32', 'Apple Watch Series3', '4', '在泳池里接个电话，在跑步时在线听歌，或者叫 Siri 发条信息，这一切，不带手机也能做到。现在，有了内置蜂窝网络功能的全新 Apple Watch Series 3，只要戴上手表，就能自由自在，走得更远1。', '1');
INSERT INTO `goodtype` VALUES ('33', 'Apple Watch Nike+', '4', '有了内置的蜂窝网络支持、GPS 和高度计等众多你所需的功能，Apple Watch Nike+ 助你一路跑出好成绩。你还可以将自己的手表与兼容的健身器械无线配对2。此外，它也适用于游泳。所以，跑完步后尽管去泳池放松一下吧。这些表盘专为 Apple Watch 独家设计，以数字和指针两种方式来突出显示时间。你只需轻点固定的复杂功能，即可直接从表盘启动 Nike+ Run Club app。Nike 回环式运动表带是 Nike 运动表带的新伙伴。它不仅材质轻盈、具有速干特性，还便于调节以贴合你的手腕。300 余股、五种不同纱线精心编制成双层 3D 结构，柔软透气又十分耐用。不论你是刚刚起步的新手，还是快如疾风的高手，Nike+ Run Club app都会依你所需，为你准备就绪，助你更进一步。在你身后有数百万志同道合的跑步伙伴为你加油打气，更有专业的指导与你形影不离，陪你跑得更远更快。轻点一下启动近在耳边的语音指导，让 Nike+ Run Club 教练、世界级运动员或是特别嘉宾来教你跑。每个跑步指导训练还有教练精选的配乐一路相随，帮你把握节奏、跟上训练进度。', '1');
INSERT INTO `goodtype` VALUES ('34', 'Apple Watch Hermes', '4', 'Apple Watch Hermès 新系列继续演绎了这一携手合作的代表作，充分体现了并行不悖的思维、协同一致的目标，以及彼此间的相互尊重。新系列表款内置蜂窝网络技术，并搭配手工打造的 Hermès 爱马仕新款皮革表带，还有 Apple 特别设计的又一款表盘，其灵感正是源自 Hermès 爱马仕经典表款 Carrick 所采用的字体。这一切，都让 Apple Watch Hermès 成为现代生活的风尚之选*。这款新表带的设计灵感源自经典的 Hermès 爱马仕赛车手套，演绎了一段赛车世界的传奇历史。现有 Noir Gala 黑色皮革表带搭配 42 毫米不锈钢表壳可供选择。任时光流逝，优雅依旧。这款由手工精制而成的表带配有印花图案，与 Hermès 爱马仕经典的丝巾设计相映成趣。现可选择 Marine Gala 深海蓝色皮革表带搭配 38 毫米或 42 毫米不锈钢表壳。标志性的 Double Tour 长款表带于你的腕间优雅环绕两圈。现可选择 Fauve Barénia 棕色和 Indigo Swift 靛蓝色皮革表带，均搭配 38 毫米不锈钢表壳。还有更多配色的表带可单独购买。', '1');
INSERT INTO `goodtype` VALUES ('35', 'Apple Watch Edition', '4', 'Apple Watch Edition 精雕细琢，首次推出两款光彩夺目的精密陶瓷外观。它还具备 Apple Watch Series 3 的各种强大功能，包括蜂窝网络。现在，你可把手机留在家中，戴上手表，自由行动。出色的外形、强大的功能和自由的体验三者精彩融合，共同演绎了这一经典佳作。精密陶瓷亮丽轻盈、坚固耐用，其硬度为不锈钢的 4 倍以上，表层晶莹细致，且不易刮伤或失去光泽。Apple Watch Edition 表壳的制造工艺始于高强度氧化锆粉末，再结合氧化铝，使其呈现丰盈饱满的白色和深邃沉稳的灰色。之后，每个表壳均经过压模、烧结，并以钻石研磨液来进行抛光处理，从而打造出光洁无瑕的表面及细致夺目的光泽。为实现如此精确的工艺，每个 Apple Watch Edition 表壳都需要花上数日之久来细细雕琢。', '1');
INSERT INTO `goodtype` VALUES ('36', 'Apple Watch Series1', '4', '追踪健身记录，测量体能训练数据，密切关注自己的健康状况。Apple Watch Series 1 搭载双核处理器和 watchOS 4 强大的新功能，让这一切在转瞬之间就能实现。站立、活动和锻炼圆环会显示你每天的活动情况。你可以看看自己是不是坐太久了，测一测消耗的卡路里，或者查一查今天锻炼了多少分钟，你还能与好友分享你的圆环。而新的智能随身教练功能和月度挑战可以激励你直达目标。从骑车、跑步、划船到高强度间歇训练，你可从多种室内外体能训练中任选一种，轻点一下，运动起来。你的每一举一动，都会被精准测量。Apple Watch 还能与兼容的健身房器械配对1，让你的各项统计数据都能保持同步。Apple Watch 随时在手，可帮你更为清晰地了解自身健康状况，更好地调节压力，也让你更加一目了然地查看自己的心率。现在，你可以浏览每天的心率状况，包括休息、步行和体能训练的恢复阶段。配备双核处理器，Apple Watch 随时为你准备就绪。你可以迅速启动自己常用的各种 app，并让它们保持更新。这样，无论是查看健身记录圆环，获得路线指引，还是使用 Apple Pay 进行支付，都能在一瞬间，轻松搞定。中国平安等公司为患者和客户打造了多款基于 Apple Watch 的方案', '1');
INSERT INTO `goodtype` VALUES ('37', 'iPod touch7', '5', '要把音乐装进口袋，iPod touch 再适合不过了。iTunes Store 海量的音乐目录，让你可以在 iPod touch 里装满你喜爱的歌曲。而有了 iCloud，你在 iTunes Store 上购买的所有内容都将自动出现在你的所有设备上。为了进一步提升你的音乐体验，Apple Music 现已经进驻你的 iPod touch，就在音乐 app 里。有了强劲的 A8 芯片、绚丽夺目的 Retina 显示屏和出众的便携设计，无论你热衷的是紧张快速的动作游戏、细致非凡的策略游戏，还是精美复杂的益智游戏，iPod touch 都能为你带来淋漓尽致的移动游戏体验。iPod touch 配备了 Apple 设计的 A8 芯片，它构建于 64 位架构之上。这款台式电脑级芯片的图形处理性能，最快可达上一代 iPod touch 的 10 倍，因此，当你玩起挚爱的游戏，你会发现图形反应比以前更灵敏，画面效果更生动传神。此外，它的中央处理器性能快达之前的 6 倍。而在电池使用时间方面，它的表现依然出色，可以提供最长达 40 小时的音乐播放和 8 小时的视频播放。', '1');
INSERT INTO `goodtype` VALUES ('38', 'iPod touch6', '5', '此次发布的新一代iPod Touch和上一代外观区别不大，只是取消了挂绳孔，变成了iPhone6的精简版:A8芯片，800万像素摄像头，RAM也达到了1GB，还配备了一个M8协处理器，可以用来跟踪设备的功耗活动状况。这在上一代A5处理器、500万像素和512MB RAM的基础上是不小的提升。', '1');
INSERT INTO `goodtype` VALUES ('39', 'iPod nano', '5', '全新设计的iPod nano只用了9个月便正式推出。iPod nano 比起 iPod shuffle 有更多快闪存储器，和相比起普通iPod更细小化的彩色屏幕和触控式转盘。它的屏幕拥有更高的像素，容许显示更多内容资讯。电池和其他内部零件亦重新配制。触控式转盘的外观略高于平面，令到它有着更佳的触觉反应。Pod nano 可在 Mac OS X 或 Microsoft Windows以iTunes程式连接（也能通过第三方软件与苹果不支持的其他操作系统连接），支援经基座连接，和使用USB 2.0电缆与电脑连线。尽管它能使用苹果的火线iPod电缆，并通过火线充电，但nano并不支持通过火线接口与电脑同步。nano功能还包括了一个计时码表和多时区时钟。它亦拥有密码锁去将转盘锁上，以及锁定用户日志和联络资讯。它还是第一个支持屏幕歌词显示的iPod产品。', '1');
INSERT INTO `goodtype` VALUES ('40', 'iPod shuffle', '5', 'iPod shuffle没有屏幕，也因此只有有限的选项在音乐间导航。用户可以在iTunes中设定播放顺序或使用随机（shuffle）的顺序播放。用户可以设置在每次连接iTunes时，把音乐库随机填充到iPod shuffle里。iPod shuffle重量只有22克，比一包口香糖大小略小。传输接口只有USB 2.0一种选择，没有原本标准型iPod使用的火线（FireWire/IEEE1394）传输接口。与系列其它的产品类似，iPod shuffle也可以作为USB大容量储存设备使用，类似U盘。', '1');
INSERT INTO `goodtype` VALUES ('41', 'iPod classic', '5', '无论在线还是离线，你都能在所有设备上聆听自己喜爱的音乐，无需担心广告打扰。立即开始享受 Apple Music 长达三个月的免费试用，随时可取消订阅。', '1');
INSERT INTO `goodtype` VALUES ('42', '1111111', null, '111111', '0');

-- ----------------------------
-- Table structure for `good_images`
-- ----------------------------
DROP TABLE IF EXISTS `good_images`;
CREATE TABLE `good_images` (
  `gimg_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `imageurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`gimg_id`),
  KEY `g_id` (`g_id`),
  CONSTRAINT `good_images_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `goods` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_images
-- ----------------------------

-- ----------------------------
-- Table structure for `gt_images`
-- ----------------------------
DROP TABLE IF EXISTS `gt_images`;
CREATE TABLE `gt_images` (
  `gt_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `gt_id` int(11) NOT NULL,
  `gtimg_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gt_img_id`),
  KEY `gt_id` (`gt_id`),
  CONSTRAINT `gt_images_ibfk_1` FOREIGN KEY (`gt_id`) REFERENCES `goodtype` (`gt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gt_images
-- ----------------------------
INSERT INTO `gt_images` VALUES ('1', '10', 'Mac_1.jpg');
INSERT INTO `gt_images` VALUES ('2', '10', 'Mac_2.jpg');
INSERT INTO `gt_images` VALUES ('3', '10', 'Mac_3.jpg');
INSERT INTO `gt_images` VALUES ('4', '10', 'Mac_4.jpg');
INSERT INTO `gt_images` VALUES ('5', '10', 'Mac_5.jpg');
INSERT INTO `gt_images` VALUES ('6', '10', 'Mac_6.jpg');
INSERT INTO `gt_images` VALUES ('7', '10', 'Mac_7.jpg');
INSERT INTO `gt_images` VALUES ('8', '10', 'Mac_8.jpg');
INSERT INTO `gt_images` VALUES ('9', '10', 'Mac_9.jpg');
INSERT INTO `gt_images` VALUES ('10', '10', 'Mac_10.jpg');
INSERT INTO `gt_images` VALUES ('11', '11', 'iMac Pro_1.jpg');
INSERT INTO `gt_images` VALUES ('12', '11', 'iMac Pro_2.jpg');
INSERT INTO `gt_images` VALUES ('13', '11', 'iMac Pro_3.jpg');
INSERT INTO `gt_images` VALUES ('14', '11', 'iMac Pro_4.jpg');
INSERT INTO `gt_images` VALUES ('15', '11', 'iMac Pro_5.jpg');
INSERT INTO `gt_images` VALUES ('16', '11', 'iMac Pro_6.jpg');
INSERT INTO `gt_images` VALUES ('17', '11', 'iMac Pro_7.jpg');
INSERT INTO `gt_images` VALUES ('18', '11', 'iMac Pro_8.jpg');
INSERT INTO `gt_images` VALUES ('19', '11', 'iMac Pro_9.jpg');
INSERT INTO `gt_images` VALUES ('20', '11', 'iMac Pro_10.jpg');
INSERT INTO `gt_images` VALUES ('21', '12', 'Mac Pro_1.jpg');
INSERT INTO `gt_images` VALUES ('22', '12', 'Mac Pro_2.jpg');
INSERT INTO `gt_images` VALUES ('23', '12', 'Mac Pro_3.jpg');
INSERT INTO `gt_images` VALUES ('24', '12', 'Mac Pro_4.jpg');
INSERT INTO `gt_images` VALUES ('25', '12', 'Mac Pro_5.jpg');
INSERT INTO `gt_images` VALUES ('26', '12', 'Mac Pro_6.jpg');
INSERT INTO `gt_images` VALUES ('27', '12', 'Mac Pro_7.jpg');
INSERT INTO `gt_images` VALUES ('28', '12', 'Mac Pro_8.jpg');
INSERT INTO `gt_images` VALUES ('29', '12', 'Mac Pro_8.jpg');
INSERT INTO `gt_images` VALUES ('30', '12', 'Mac Pro_10.jpg');
INSERT INTO `gt_images` VALUES ('31', '13', 'Mac mini_1.jpg');
INSERT INTO `gt_images` VALUES ('32', '13', 'Mac mini_2.jpg');
INSERT INTO `gt_images` VALUES ('33', '13', 'Mac mini_3.jpg');
INSERT INTO `gt_images` VALUES ('34', '13', 'Mac mini_4.jpg');
INSERT INTO `gt_images` VALUES ('35', '13', 'Mac mini_5.jpg');
INSERT INTO `gt_images` VALUES ('36', '13', 'Mac mini_6.jpg');
INSERT INTO `gt_images` VALUES ('37', '13', 'Mac mini_7.jpg');
INSERT INTO `gt_images` VALUES ('38', '13', 'Mac mini_8.jpg');
INSERT INTO `gt_images` VALUES ('39', '13', 'Mac mini_9.jpg');
INSERT INTO `gt_images` VALUES ('40', '13', 'Mac mini_10.jpg');
INSERT INTO `gt_images` VALUES ('41', '15', 'iPhoneX_1.jpg');
INSERT INTO `gt_images` VALUES ('42', '15', 'iPhoneX_2.jpg');
INSERT INTO `gt_images` VALUES ('43', '15', 'iPhoneX_3.jpg');
INSERT INTO `gt_images` VALUES ('44', '15', 'iPhoneX_4.jpg');
INSERT INTO `gt_images` VALUES ('45', '15', 'iPhoneX_5.jpg');
INSERT INTO `gt_images` VALUES ('46', '15', 'iPhoneX_6.jpg');
INSERT INTO `gt_images` VALUES ('47', '15', 'iPhoneX_7.jpg');
INSERT INTO `gt_images` VALUES ('48', '15', 'iPhoneX_8.jpg');
INSERT INTO `gt_images` VALUES ('49', '15', 'iPhoneX_9.jpg');
INSERT INTO `gt_images` VALUES ('50', '15', 'iPhoneX_10.jpg');
INSERT INTO `gt_images` VALUES ('51', '16', null);

-- ----------------------------
-- Table structure for `g_order`
-- ----------------------------
DROP TABLE IF EXISTS `g_order`;
CREATE TABLE `g_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderserial` varchar(50) NOT NULL,
  `order_goods_num` int(11) NOT NULL,
  `order_total_price` double(10,2) NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `add_id` int(11) NOT NULL,
  `orderstate` int(11) DEFAULT '1' COMMENT '1.表示未支付\r\n2.表示已支付（待发货）\r\n3.已发货（待收货）\r\n4.交易完成（收货）\r\n',
  `order_del` int(11) DEFAULT '1',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `orderserial` (`orderserial`),
  KEY `u_id` (`u_id`),
  KEY `add_id` (`add_id`),
  CONSTRAINT `g_order_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `g_order_ibfk_2` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_order
-- ----------------------------
INSERT INTO `g_order` VALUES ('3', ' 2018-01-27 10:40:3114537', '1', '3088.00', '2018-01-27 10:40:31', '4001', '5005', '1', '1');
INSERT INTO `g_order` VALUES ('4', ' 2018-01-27 10:42:2079343', '1', '3088.00', '2018-01-27 10:42:20', '4001', '5002', '1', '1');
INSERT INTO `g_order` VALUES ('5', ' 2018-01-27 10:56:1028635', '1', '5688.00', '2018-01-27 10:56:10', '4003', '5005', '3', '1');
INSERT INTO `g_order` VALUES ('6', '2018-01-27 10:56:1028638', '3', '123.00', '2018-01-14 20:08:19', '4008', '5003', '3', '1');
INSERT INTO `g_order` VALUES ('7', ' 2018-01-29 10:02:3093348', '7', '162082.00', '2018-01-29 10:02:30', '4003', '5005', '4', '1');
INSERT INTO `g_order` VALUES ('8', ' 2018-01-29 11:08:2617317', '1', '8888.00', '2018-01-29 11:08:26', '4003', '5005', '4', '1');
INSERT INTO `g_order` VALUES ('9', ' 2018-01-29 13:59:5212853', '2', '78480.00', '2018-01-29 13:59:52', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('10', ' 2018-01-29 14:00:551841', '2', '78480.00', '2018-01-29 14:00:55', '4003', '5005', '4', '1');
INSERT INTO `g_order` VALUES ('11', ' 2018-01-29 14:01:3767525', '2', '78480.00', '2018-01-29 14:01:37', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('12', ' 2018-01-29 14:20:0372505', '2', '12248.00', '2018-01-29 14:20:03', '4009', '5009', '1', '1');
INSERT INTO `g_order` VALUES ('13', ' 2018-01-29 17:01:3153199', '2', '25864.00', '2018-01-29 17:01:31', '4003', '5005', '1', '1');
INSERT INTO `g_order` VALUES ('14', ' 2018-01-29 17:10:0983766', '1', '17776.00', '2018-01-29 17:10:09', '4003', '5005', '1', '1');
INSERT INTO `g_order` VALUES ('15', ' 2018-01-30 09:19:4065522', '1', '16800.00', '2018-01-30 09:19:40', '4009', '5010', '2', '1');
INSERT INTO `g_order` VALUES ('16', ' 2018-01-30 09:56:3273481', '3', '32604.00', '2018-01-30 09:56:32', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('17', ' 2018-01-30 09:57:0763010', '3', '32604.00', '2018-01-30 09:57:07', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('18', ' 2018-01-30 09:58:2921243', '1', '8888.00', '2018-01-30 09:58:29', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('19', ' 2018-01-30 09:58:4663579', '1', '8888.00', '2018-01-30 09:58:46', '4003', '5012', '3', '1');
INSERT INTO `g_order` VALUES ('20', ' 2018-01-30 10:04:5035724', '1', '88880.00', '2018-01-30 10:04:50', '4009', '5009', '4', '1');
INSERT INTO `g_order` VALUES ('21', ' 2018-01-30 14:14:1553386', '1', '48528.00', '2018-01-30 14:14:15', '4003', '5005', '1', '1');
INSERT INTO `g_order` VALUES ('22', ' 2018-01-30 14:14:5148646', '1', '8888.00', '2018-01-30 14:14:51', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('23', ' 2018-01-30 14:16:0898190', '1', '8888.00', '2018-01-30 14:16:08', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('24', ' 2018-01-30 14:16:341562', '1', '8888.00', '2018-01-30 14:16:34', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('25', ' 2018-01-30 14:17:0162035', '1', '6088.00', '2018-01-30 14:17:01', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('26', ' 2018-01-30 14:18:4417490', '1', '8888.00', '2018-01-30 14:18:44', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('27', ' 2018-01-30 14:34:425896', '1', '6088.00', '2018-01-30 14:34:42', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('28', ' 2018-01-30 14:35:2016676', '1', '3088.00', '2018-01-30 14:35:20', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('29', ' 2018-01-30 14:37:2736386', '1', '3088.00', '2018-01-30 14:37:27', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('30', ' 2018-01-30 14:37:5278641', '1', '5888.00', '2018-01-30 14:37:52', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('31', ' 2018-01-30 14:41:4661461', '1', '17776.00', '2018-01-30 14:41:46', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('32', ' 2018-01-30 14:42:4622704', '1', '8888.00', '2018-01-30 14:42:46', '4003', '5005', '1', '1');
INSERT INTO `g_order` VALUES ('33', ' 2018-01-30 14:43:1777737', '1', '8888.00', '2018-01-30 14:43:17', '4003', '5005', '1', '1');
INSERT INTO `g_order` VALUES ('34', ' 2018-01-30 14:44:1721230', '1', '2688.00', '2018-01-30 14:44:17', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('35', ' 2018-01-30 14:48:1053386', '1', '8888.00', '2018-01-30 14:48:10', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('36', ' 2018-01-30 14:57:1318824', '1', '4888.00', '2018-01-30 14:57:13', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('37', ' 2018-01-30 15:00:2129684', '1', '6088.00', '2018-01-30 15:00:21', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('38', ' 2018-01-30 15:01:4848004', '1', '8088.00', '2018-01-30 15:01:48', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('39', ' 2018-02-01 17:12:4122742', '1', '6588.00', '2018-02-01 17:12:41', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('40', ' 2018-02-01 17:16:158043', '1', '8888.00', '2018-02-01 17:16:15', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('41', ' 2018-02-01 17:19:5077130', '1', '8888.00', '2018-02-01 17:19:50', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('42', ' 2018-02-01 17:20:5999324', '1', '5088.00', '2018-02-01 17:20:59', '4003', '5012', '1', '1');
INSERT INTO `g_order` VALUES ('43', ' 2018-02-01 17:22:1351891', '1', '8088.00', '2018-02-01 17:22:13', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('44', ' 2018-02-01 17:24:1035015', '1', '4088.00', '2018-02-01 17:24:10', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('45', ' 2018-02-01 17:25:1633679', '1', '3888.00', '2018-02-01 17:25:16', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('46', ' 2018-02-01 17:26:0076586', '1', '3888.00', '2018-02-01 17:26:00', '4003', '5012', '2', '1');
INSERT INTO `g_order` VALUES ('47', ' 2018-02-01 17:26:5259271', '1', '4088.00', '2018-02-01 17:26:52', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('48', ' 2018-02-01 17:55:5016293', '1', '26664.00', '2018-02-01 17:55:50', '4003', '5005', '2', '1');
INSERT INTO `g_order` VALUES ('49', ' 2018-02-01 18:01:0481207', '1', '17776.00', '2018-02-01 18:01:04', '4003', '5005', '4', '1');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(20) DEFAULT NULL,
  `m_password` varchar(20) DEFAULT '123456',
  `role` int(11) DEFAULT NULL,
  `m_del` int(11) DEFAULT '1',
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `m_name` (`m_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1001', 'admin', '000000', '2', '1');
INSERT INTO `manager` VALUES ('1002', 'admin1', '123456', '1', '1');
INSERT INTO `manager` VALUES ('1005', 'admin2', '123456', '1', '1');
INSERT INTO `manager` VALUES ('1006', 'admin3', '123456', '1', '1');
INSERT INTO `manager` VALUES ('1007', 'admin4', '123456', '1', '0');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_url` varchar(200) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `menu_flag` int(11) DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for `order_goods_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_info`;
CREATE TABLE `order_goods_info` (
  `ord_g_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `g_id` int(11) DEFAULT NULL,
  `g_name` varchar(200) DEFAULT NULL,
  `g_price` float(10,2) DEFAULT NULL,
  `ord_g_info_del` int(11) DEFAULT '1',
  PRIMARY KEY (`ord_g_info_id`),
  KEY `order_id` (`order_id`),
  KEY `g_id` (`g_id`),
  CONSTRAINT `order_goods_info_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `g_order` (`order_id`),
  CONSTRAINT `order_goods_info_ibfk_2` FOREIGN KEY (`g_id`) REFERENCES `goods` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods_info
-- ----------------------------
INSERT INTO `order_goods_info` VALUES ('1', '3', '3', '93', 'iPad mini4/银色/128G', '3088.00', '1');
INSERT INTO `order_goods_info` VALUES ('2', '4', '3', '93', 'iPad mini4/银色/128G', '3088.00', '1');
INSERT INTO `order_goods_info` VALUES ('3', '5', '6', '51', 'iPhone7/亮黑色/32G', '5688.00', '1');
INSERT INTO `order_goods_info` VALUES ('4', '6', '1', '93', 'iPad mini4/银色/128G', '3088.00', '1');
INSERT INTO `order_goods_info` VALUES ('5', '6', '1', '88', 'QQ', '33.00', '1');
INSERT INTO `order_goods_info` VALUES ('6', '7', '8', '59', 'iPhoneX/深空灰色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('7', '7', '2', '1', 'MacBook/银色/256G', '6888.00', '1');
INSERT INTO `order_goods_info` VALUES ('8', '7', '2', '121', 'iPod nano7/浅蓝色', '688.00', '1');
INSERT INTO `order_goods_info` VALUES ('9', '7', '2', '72', 'iPhone8 Plus/银色/256G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('10', '7', '1', '74', 'iPhone8 Plus/灰黑色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('11', '7', '1', '6', 'iMac/银色/256G', '3370.00', '1');
INSERT INTO `order_goods_info` VALUES ('12', '7', '9', '41', 'iPhone7/玫瑰金色/64G', '5888.00', '1');
INSERT INTO `order_goods_info` VALUES ('13', '8', '1', '4', 'MacBook Pro/银色/512G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('14', '9', '8', '59', 'iPhoneX/深空灰色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('15', '9', '2', '1', 'MacBook/银色/256G', '6888.00', '1');
INSERT INTO `order_goods_info` VALUES ('16', '10', '8', '59', 'iPhoneX/深空灰色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('17', '10', '2', '1', 'MacBook/银色/256G', '6888.00', '1');
INSERT INTO `order_goods_info` VALUES ('18', '11', '8', '59', 'iPhoneX/深空灰色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('19', '11', '2', '1', 'MacBook/银色/256G', '6888.00', '1');
INSERT INTO `order_goods_info` VALUES ('20', '12', '1', '5', 'iMac/金色/256G', '3360.00', '1');
INSERT INTO `order_goods_info` VALUES ('21', '12', '1', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('22', '13', '2', '72', 'iPhone8 Plus/银色/256G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('23', '13', '1', '74', 'iPhone8 Plus/灰黑色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('24', '14', '2', '72', 'iPhone8 Plus/银色/256G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('25', '15', '5', '5', 'iMac/金色/256G', '3360.00', '1');
INSERT INTO `order_goods_info` VALUES ('26', '16', '1', '74', 'iPhone8 Plus/灰黑色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('27', '16', '2', '6', 'iMac/银色/256G', '3370.00', '1');
INSERT INTO `order_goods_info` VALUES ('28', '16', '2', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('29', '18', '1', '73', 'iPhone8 Plus/灰黑色/256G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('30', '19', '1', '73', 'iPhone8 Plus/灰黑色/256G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('31', '20', '10', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('32', '22', '1', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('33', '25', '1', '37', 'iPhone7/红色/128G', '6088.00', '1');
INSERT INTO `order_goods_info` VALUES ('34', '26', '1', '4', 'MacBook Pro/银色/512G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('35', '28', '1', '92', 'iPad mini4/金色/128G', '3088.00', '1');
INSERT INTO `order_goods_info` VALUES ('36', '30', '1', '38', 'iPhone7/红色/64G', '5888.00', '1');
INSERT INTO `order_goods_info` VALUES ('37', '31', '2', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('38', '32', '1', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('39', '33', '1', '57', 'iPhoneX/深空灰色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('40', '34', '1', '101', 'iPad 2017/金色/32G', '2688.00', '1');
INSERT INTO `order_goods_info` VALUES ('41', '35', '1', '4', 'MacBook Pro/银色/512G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('42', '36', '1', '80', 'iPhone6s/金色/32G', '4888.00', '1');
INSERT INTO `order_goods_info` VALUES ('43', '37', '1', '30', 'iPhone7 Plus/金色/32G', '6088.00', '1');
INSERT INTO `order_goods_info` VALUES ('44', '38', '1', '71', 'iPhone8 Plus/金色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('45', '39', '3', '29', 'iPhone7 Plus/金色/64G', '6588.00', '1');
INSERT INTO `order_goods_info` VALUES ('46', '40', '1', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('47', '41', '1', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('48', '42', '2', '84', 'iPad Pro/金色/64G', '5088.00', '1');
INSERT INTO `order_goods_info` VALUES ('49', '43', '2', '71', 'iPhone8 Plus/金色/64G', '8088.00', '1');
INSERT INTO `order_goods_info` VALUES ('50', '44', '2', '60', 'iPhoneSE/金色/64G', '4088.00', '1');
INSERT INTO `order_goods_info` VALUES ('51', '45', '1', '63', 'iPhoneSE/银色/32G', '3888.00', '1');
INSERT INTO `order_goods_info` VALUES ('52', '46', '1', '61', 'iPhoneSE/银色/32G', '3888.00', '1');
INSERT INTO `order_goods_info` VALUES ('53', '47', '1', '62', 'iPhoneSE/金色/64G', '4088.00', '1');
INSERT INTO `order_goods_info` VALUES ('54', '48', '3', '56', 'iPhoneX/亮黑色/128G', '8888.00', '1');
INSERT INTO `order_goods_info` VALUES ('55', '49', '2', '4', 'MacBook Pro/银色/512G', '8888.00', '1');

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `goodsname` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `review_del` int(11) DEFAULT '1',
  PRIMARY KEY (`review_id`),
  KEY `g_id` (`g_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `goods` (`g_id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('1', '1', 'MacBook/银色/256G', '4003', '2018-01-30 14:31:49', 'haoshouj', '1', '1');
INSERT INTO `review` VALUES ('2', '1', 'MacBook/银色/256G', '4003', '2018-01-31 00:00:00', 'good!', '1', '1');
INSERT INTO `review` VALUES ('3', '1', 'MacBook/银色/256G', '4003', '2018-01-31 00:00:00', 'good!', '1', '1');
INSERT INTO `review` VALUES ('4', '59', 'iPhoneX/深空灰色/64G', '4003', '2018-01-31 00:00:00', '非常好。', '1', '1');
INSERT INTO `review` VALUES ('5', '59', 'iPhoneX/深空灰色/64G', '4003', '2018-01-31 00:00:00', '红红火火', '2', '1');
INSERT INTO `review` VALUES ('6', '59', 'iPhoneX/深空灰色/64G', '4003', '2018-01-31 00:00:00', '的说法的说法', '3', '1');
INSERT INTO `review` VALUES ('7', '4', 'MacBook Pro/银色/512G', '4003', '2018-01-31 00:00:00', '辣鸡！', '3', '1');
INSERT INTO `review` VALUES ('8', '59', 'iPhoneX/深空灰色/64G', '4003', '2018-01-31 00:00:00', '改的我累死了。。。', '3', '1');
INSERT INTO `review` VALUES ('9', '1', 'MacBook/银色/256G', '4003', '2018-01-31 00:00:00', '为什么还不放假', '2', '1');
INSERT INTO `review` VALUES ('10', '72', 'iPhone8 Plus/银色/256G', '4003', '2018-01-31 00:00:00', '为什么电脑不会自己写代码', '2', '1');
INSERT INTO `review` VALUES ('11', '59', 'iPhoneX/深空灰色/64G', '4003', '2018-02-01 00:00:00', 'sssssssssssssssssssssss', '2', '1');
INSERT INTO `review` VALUES ('12', '1', 'MacBook/银色/256G', '4003', '2018-02-01 00:00:00', 'sssssssssssssssssssssssssssssssss', '2', '1');
INSERT INTO `review` VALUES ('13', '4', 'MacBook Pro/银色/512G', '4003', '2018-02-01 00:00:00', '大威德亲卫队亲卫队千秋万代', '1', '1');
INSERT INTO `review` VALUES ('14', '4', 'MacBook Pro/银色/512G', '4003', '2018-02-01 00:00:00', '', '3', '1');
INSERT INTO `review` VALUES ('15', '4', 'MacBook Pro/银色/512G', '4003', '2018-02-01 00:00:00', 'good', '1', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `u_password` varchar(20) NOT NULL,
  `u_img` varchar(100) DEFAULT '0.jpg',
  `realname` varchar(30) DEFAULT NULL,
  `u_idcard` varchar(18) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `u_sex` int(11) DEFAULT '0',
  `u_phone` varchar(11) NOT NULL,
  `u_residence` varchar(200) DEFAULT NULL,
  `userinfo` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT '2' COMMENT '正常：2\r\n异常：3\r\n停用：0',
  `regist_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `u_del` int(11) DEFAULT '1',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `u_phone` (`u_phone`),
  UNIQUE KEY `u_idcard` (`u_idcard`)
) ENGINE=InnoDB AUTO_INCREMENT=4010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4001', 'ryy123', '000000', 'userImg\\4001\\01 - 副本.jpg', '甜甜', '12345678900', '2017-12-30', '0', '5117', null, null, '2', '2017-12-30 11:58:31', '2017-12-30 11:58:36', '1');
INSERT INTO `user` VALUES ('4002', 'ryy456', '000000', '0.jpg', '天天', '00987654321', '2017-12-11', '0', '1111', null, null, '2', '2017-12-04 12:02:19', '2017-12-19 12:02:24', '1');
INSERT INTO `user` VALUES ('4003', 'ryy000', '000000', 'userImg\\4003\\1-12050311550K03.jpg', 'Love', '123456789012', '2017-01-01', '0', '0000', '山东省/菏泽市/城关镇', '', '2', '2018-01-01 11:04:01', '2018-01-01 11:04:10', '1');
INSERT INTO `user` VALUES ('4008', 'g123456', '000000', '0.jpg', null, null, null, '0', '18635477076', null, null, '2', null, null, '1');
INSERT INTO `user` VALUES ('4009', 'tianyu', '000000', '0.jpg', '田雨', null, null, '0', '123123123', null, null, '2', null, null, '1');

-- ----------------------------
-- View structure for `goodstetail`
-- ----------------------------
DROP VIEW IF EXISTS `goodstetail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `goodstetail` AS select `goods`.`g_id` AS `g_id`,`goods`.`goodsname` AS `goodsname`,`goods`.`gt_id` AS `gt_id`,`goods`.`purchasing_price` AS `purchasing_price`,`goods`.`original_price` AS `original_price`,`goods`.`goodsprice` AS `goodsprice`,`goods`.`good_imgurl` AS `good_imgurl`,`goods`.`putaway_time` AS `putaway_time`,`goods`.`goods_state` AS `goods_state`,`goods`.`goodsinfo` AS `goodsinfo`,`goods`.`amount` AS `amount`,`goods`.`g_del` AS `g_del`,`goodtype`.`ft_id` AS `ft_id`,`goodtype`.`gt_typename` AS `gt_typename`,`goodtype`.`gt_mark` AS `gt_mark`,`goodtype`.`gt_del` AS `gt_del` from (`goods` left join `goodtype` on((`goods`.`gt_id` = `goodtype`.`gt_id`))) ;

-- ----------------------------
-- View structure for `v_cart`
-- ----------------------------
DROP VIEW IF EXISTS `v_cart`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cart` AS select `user`.`u_id` AS `u_id`,`user`.`username` AS `username`,`cart`.`c_id` AS `c_id`,`cart`.`g_id` AS `g_id`,`goods`.`goodsname` AS `goodsname`,`goods`.`goodsprice` AS `goodsprice`,`cart`.`goods_count` AS `goods_count`,`goods`.`good_imgurl` AS `good_imgurl`,`goods`.`amount` AS `amount` from ((`cart` left join `user` on((`user`.`u_id` = `cart`.`u_id`))) left join `goods` on((`cart`.`g_id` = `goods`.`g_id`))) ;

-- ----------------------------
-- View structure for `v_orderlist`
-- ----------------------------
DROP VIEW IF EXISTS `v_orderlist`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_orderlist` AS select `g_order`.`order_id` AS `order_id`,`g_order`.`orderserial` AS `orderserial`,`g_order`.`order_goods_num` AS `order_goods_num`,`g_order`.`order_total_price` AS `order_total_price`,`g_order`.`ordertime` AS `ordertime`,`g_order`.`u_id` AS `u_id`,`g_order`.`add_id` AS `add_id`,`g_order`.`orderstate` AS `orderstate`,`g_order`.`order_del` AS `order_del`,`goods`.`good_imgurl` AS `good_imgurl`,`order_goods_info`.`ord_g_info_id` AS `ord_g_info_id`,`order_goods_info`.`g_name` AS `g_name`,`order_goods_info`.`goods_num` AS `goods_num`,`order_goods_info`.`g_price` AS `g_price`,`order_goods_info`.`ord_g_info_del` AS `ord_g_info_del` from ((`order_goods_info` left join `goods` on((`goods`.`g_id` = `order_goods_info`.`g_id`))) left join `g_order` on((`order_goods_info`.`order_id` = `g_order`.`order_id`))) ;

-- ----------------------------
-- View structure for `v_order_goods`
-- ----------------------------
DROP VIEW IF EXISTS `v_order_goods`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_goods` AS select `order_goods_info`.`ord_g_info_id` AS `ord_g_info_id`,`order_goods_info`.`order_id` AS `order_id`,`order_goods_info`.`goods_num` AS `goods_num`,`order_goods_info`.`g_id` AS `g_id`,`order_goods_info`.`g_name` AS `g_name`,`order_goods_info`.`g_price` AS `g_price`,`order_goods_info`.`ord_g_info_del` AS `ord_g_info_del`,`goods`.`good_imgurl` AS `good_imgurl` from (`order_goods_info` left join `goods` on((`order_goods_info`.`g_id` = `goods`.`g_id`))) ;

-- ----------------------------
-- View structure for `v_order_user_address`
-- ----------------------------
DROP VIEW IF EXISTS `v_order_user_address`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_user_address` AS select `g_order`.`order_id` AS `order_id`,`g_order`.`orderserial` AS `orderserial`,`g_order`.`u_id` AS `u_id`,`user`.`username` AS `username`,`g_order`.`order_goods_num` AS `order_goods_num`,`g_order`.`order_total_price` AS `order_total_price`,`g_order`.`ordertime` AS `ordertime`,`address`.`consignee_name` AS `consignee_name`,`address`.`consignee_tel` AS `consignee_tel`,`address`.`address` AS `address`,`g_order`.`orderstate` AS `orderstate`,`g_order`.`order_del` AS `order_del` from ((`g_order` left join `user` on((`user`.`u_id` = `g_order`.`u_id`))) left join `address` on((`g_order`.`add_id` = `address`.`add_id`))) ;

-- ----------------------------
-- View structure for `v_review`
-- ----------------------------
DROP VIEW IF EXISTS `v_review`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_review` AS select `goods`.`gt_id` AS `gt_id`,`user`.`u_id` AS `u_id`,`user`.`username` AS `username`,`review`.`g_id` AS `g_id`,`goods`.`goodsname` AS `goodsname`,`review`.`content` AS `content` from ((`review` left join `goods` on((`goods`.`g_id` = `review`.`g_id`))) left join `user` on((`review`.`u_id` = `user`.`u_id`))) ;
