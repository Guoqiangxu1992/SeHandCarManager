/*
Navicat MySQL Data Transfer

Source Server         : xuguoqiang
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : second_hand

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-08-31 20:25:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '自身关联父id',
  `name` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `value` varchar(300) DEFAULT NULL COMMENT '为null或空,代表有子节点',
  `position` int(10) DEFAULT NULL COMMENT '菜单顺序',
  `lev` int(11) DEFAULT NULL COMMENT '0: 功能权限,非0:菜单权限|1:1级菜单  2:2级菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '0', '用户管理', 'admin:*', '', '1', '1');
INSERT INTO `t_permission` VALUES ('2', '1', '买家信息管理', 'user:*', '/user/BuyUserManager.do', '2', '2');
INSERT INTO `t_permission` VALUES ('3', '1', '卖家信息管理', 'admin:*', '/user/SalesUserManager.do', '3', '2');
INSERT INTO `t_permission` VALUES ('4', '0', '销售管理', 'admin:*', '', '4', '1');
INSERT INTO `t_permission` VALUES ('5', '4', '已销售汽车', 'admin:*', '/www', '5', '2');
INSERT INTO `t_permission` VALUES ('6', '4', '销售中汽车', 'admin:*', '/rrr', '6', '2');
INSERT INTO `t_permission` VALUES ('7', '4', '待发布汽车', 'admin:*', '/eee', '7', '2');
INSERT INTO `t_permission` VALUES ('8', '1', '角色管理', '11', '/11', '9', '2');
INSERT INTO `t_permission` VALUES ('9', '0', '审核管理', '11', '', '3', '1');
INSERT INTO `t_permission` VALUES ('10', '9', '入住卖家信息审核', '11', '/', '1', '2');
INSERT INTO `t_permission` VALUES ('11', '9', '客户信息审核', '11', '1', '2', '2');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_value` varchar(1000) DEFAULT NULL,
  `make_time` int(11) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `modify_time` int(11) DEFAULT NULL,
  `modify_operator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', null, null, null, null, null);
INSERT INTO `t_role` VALUES ('2', '用户', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_role_id` bigint(20) DEFAULT NULL,
  `t_permission_id` bigint(20) DEFAULT NULL,
  `make_time` int(11) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `modify_time` int(11) DEFAULT NULL,
  `modify_operator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '1', '1', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('2', '1', '2', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('3', '1', '3', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('4', '2', '1', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('5', '2', '4', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('6', '1', '3', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('7', '1', '4', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('8', '1', '5', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('9', '1', '6', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('10', '1', '7', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('11', '1', '8', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('12', '1', '9', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('13', '1', '10', null, null, null, null);
INSERT INTO `t_role_permission` VALUES ('14', '1', '11', null, null, null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `t_organization_id` bigint(20) DEFAULT NULL COMMENT '所属机构',
  `t_organization_code` varchar(50) DEFAULT NULL COMMENT '所属机构code',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  `salt` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `make_time` date DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `modify_time` date DEFAULT NULL,
  `modify_operator` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loginname` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'user', 'user', '1', 'DB01', '13800138000', '21321@23.23', '0', 'b01de0e725952124', '9f5672a39365e9ecddbdba71ece6133c07469a2c', '2016-08-11', null, null, null, null);
INSERT INTO `t_user` VALUES ('2', 'admin', 'admin', '1', 'DB01', '132123', 'sdfs@dsf.cd', '0', 'b01de0e725952124', '9f5672a39365e9ecddbdba71ece6133c07469a2c', '2016-08-09', null, null, null, null);
INSERT INTO `t_user` VALUES ('17', 'xuguo1992', '徐国强', null, null, '18960795943', '111', '0', '899f5b3dbfc140b2', 'ed68a502ad099232f35911da911348344efea1af', '2016-08-13', null, null, null, null);
INSERT INTO `t_user` VALUES ('19', 'xuguoqiang', '旭', null, null, '18060915188', 'qqqq', '0', '47a160f378e33cf3', '428d1fec912b4564437369eeb86e1d526f34a4ed', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('20', 'xuguoqiang', '旭想', null, null, '18060915188', 'qqqq', '0', 'd4e2f3bd440c8c2f', 'e74561084dced92f918a31f5b52e3adeebdf9d35', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('21', 'xuguoqiang', '旭想', null, null, '18060915188', 'qqqq', '0', '1ff076e75371462e', '8c237bd246eac42d6ebb419abc5d727c9e05f285', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('22', 'xuguo1', '想想', null, null, '18960795943', 'q', '0', 'f4bbd922e9f9bb2e', '2eb6b8ffcfa1780b7181848fead903454e6a31ef', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('23', 'xuguo2', '谢谢', null, null, '18960795943', '11', '0', 'cc55a08a79e7d89d', 'f75e47debe982eda75ab3f7290efc1c329fa5e74', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('24', 'xuguo2', '去去去', null, null, '18960795943', 'qqq', '0', '1a346df66f1bcac8', 'd7e1f5a4db9e31c39a3770a55135fa07973d39e5', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('25', 'xuguo3', '凄凄切切', null, null, '18960795943', 'qqq', '0', 'c8d3956f5fc9124e', '83d7f705fa5009bb8e1e83885f1138cc36eba30c', '2016-08-14', null, null, null, null);
INSERT INTO `t_user` VALUES ('26', 'xuguo3', '凄凄切切', null, null, '18960795943', 'qqq', '0', '8629a1cef3d79c0f', '778501f7ef5926a99aa2015252f65d2b72e00a85', '2016-08-14', null, null, null, null);

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_user_id` bigint(20) DEFAULT NULL,
  `t_role_id` bigint(20) DEFAULT NULL,
  `make_time` date DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `modify_time` time(6) DEFAULT NULL,
  `modify_operator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1', null, null, null, null);
INSERT INTO `t_user_role` VALUES ('2', '2', '2', null, null, null, null);
INSERT INTO `t_user_role` VALUES ('3', '7', '1', '2016-08-06', null, null, null);
INSERT INTO `t_user_role` VALUES ('4', '8', '1', '2016-08-06', null, null, null);
INSERT INTO `t_user_role` VALUES ('5', '9', '1', '2016-08-07', null, null, null);
INSERT INTO `t_user_role` VALUES ('6', '12', '1', '2016-08-13', null, null, null);
INSERT INTO `t_user_role` VALUES ('7', '13', '1', '2016-08-13', null, null, null);
INSERT INTO `t_user_role` VALUES ('8', '15', '1', '2016-08-13', null, null, null);
INSERT INTO `t_user_role` VALUES ('9', '17', '1', '2016-08-13', null, null, null);
INSERT INTO `t_user_role` VALUES ('10', '19', '1', '2016-08-14', null, null, null);
INSERT INTO `t_user_role` VALUES ('11', '22', '1', '2016-08-14', null, null, null);
INSERT INTO `t_user_role` VALUES ('12', '23', '1', '2016-08-14', null, null, null);
INSERT INTO `t_user_role` VALUES ('13', '25', '1', '2016-08-14', null, null, null);

-- ----------------------------
-- Table structure for `t_user_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_tmp`;
CREATE TABLE `t_user_tmp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `t_organization_id` bigint(20) DEFAULT NULL COMMENT '所属机构',
  `t_organization_code` varchar(50) DEFAULT NULL COMMENT '所属机构code',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  `salt` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `make_time` date DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `modify_time` date DEFAULT NULL,
  `modify_operator` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loginname` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_tmp
-- ----------------------------
INSERT INTO `t_user_tmp` VALUES ('1', 'user', 'user', '1', 'DB01', '13800138000', '21321@23.23', '0', 'b01de0e725952124', '9f5672a39365e9ecddbdba71ece6133c07469a2c', null, null, null, null, null, null);
INSERT INTO `t_user_tmp` VALUES ('2', 'admin', 'admin', '1', 'DB01', '132123', 'sdfs@dsf.cd', '0', 'b01de0e725952124', '9f5672a39365e9ecddbdba71ece6133c07469a2c', null, null, null, null, null, null);
INSERT INTO `t_user_tmp` VALUES ('3', '11', '11', null, null, '111', '111', '0', '1', '1111', null, null, null, null, '1', '1');
INSERT INTO `t_user_tmp` VALUES ('4', '11111ww', '1', null, null, null, '12@e', '0', 'dbef02275a2a8361', 'e6bb1fb70cc8dbdfc6cb216b1b01a0182db05fc7', null, null, null, null, '1', '1');
INSERT INTO `t_user_tmp` VALUES ('5', 'xuguoqiang', '11', null, null, null, '12@e', '0', '204f46f2d66ae927', 'cbe2b60082c2ebafba095da80fb67b24022ca5d7', null, null, null, null, '1', '1');
