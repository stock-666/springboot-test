/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.116
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2021-04-16 18:44:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startDate` char(10) DEFAULT NULL,
  `endDate` char(10) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('2c5e98a88c954e599b8d35f58eb4a4a2', '06f5fc056eac41558a964f96daa7f27c', '百度首页', '2021-03-25', '2021-03-31', '100000', '不行', '2021-03-25 13:51:03', '张三', '2021-03-28 21:16:04', '张三');
INSERT INTO `tbl_activity` VALUES ('55a37de7c8fb4df08a51da9542ab3416', '40f6cdea0bd34aceb77492a1656d9fb3', '电梯广告', '2021-04-01', '2021-04-07', '500000', '电梯广告真的好123', '2021-03-26 19:03:30', '张三', '2021-03-28 21:48:33', '张三');
INSERT INTO `tbl_activity` VALUES ('8d496181835d41a59cf5c2bc2579c4c6', '06f5fc056eac41558a964f96daa7f27c', '谷歌趋势推广', '2021-03-25', '2021-04-08', '900000', '156156', '2021-03-25 21:53:08', '张三', '2021-03-28 21:15:50', '张三');
INSERT INTO `tbl_activity` VALUES ('a87d3e632ebd4306a5828cae3fe33079', '06f5fc056eac41558a964f96daa7f27c', 'B站视频推广', '2021-03-01', '2021-03-31', '50000', '156346', '2021-03-25 21:52:06', '张三', '2021-03-28 21:15:57', '张三');
INSERT INTO `tbl_activity` VALUES ('caa29bb499a94969820d0b0d01403e1a', '06f5fc056eac41558a964f96daa7f27c', '发传单', '2021-04-10', '2021-04-29', '888888', '铺天盖地', '2021-04-10 09:30:25', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('cde3577efb3c48f983bd5db8ee6b5c67', '06f5fc056eac41558a964f96daa7f27c', '地铁广告牌', '2021-04-29', '2021-05-08', '1000000', '地铁广告牌就是好', '2021-04-10 09:31:04', '张三', null, null);
INSERT INTO `tbl_activity` VALUES ('eb3c42cea008431d8363ca32cb453f94', '06f5fc056eac41558a964f96daa7f27c', '电影海报', '2021-03-25', '2021-03-25', '5000', '123', '2021-03-25 14:16:29', '张三', '2021-03-26 16:41:37', '张三');

-- ----------------------------
-- Table structure for `tbl_activity_remark`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity_remark`;
CREATE TABLE `tbl_activity_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL COMMENT '0表示未修改，1表示已修改',
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity_remark
-- ----------------------------
INSERT INTO `tbl_activity_remark` VALUES ('2c5e98a88c954e599b8d35f58eb4a4a1', '谷歌还行', '2021-03-28 10:24:36', '张三', null, null, '0', '8d496181835d41a59cf5c2bc2579c4c6');
INSERT INTO `tbl_activity_remark` VALUES ('2c5e98a88c954e599b8d35f58eb4a4a2', '谷歌不行', '2021-03-28 11:24:36', '张三', null, null, '0', '8d496181835d41a59cf5c2bc2579c4c6');
INSERT INTO `tbl_activity_remark` VALUES ('3605dbc32c8c4928a60eb2c4d8a6358b', '电梯广告还不错', '2021-03-28 17:28:49', '张三', null, null, '0', '');
INSERT INTO `tbl_activity_remark` VALUES ('55a37de7c8fb4df08a51da9542ab3415', '电梯广告3.18效果不错', '2021-03-28 12:24:36', '张三', '2021-03-28 17:30:04', '张三', '1', '55a37de7c8fb4df08a51da9542ab3416');
INSERT INTO `tbl_activity_remark` VALUES ('7379958363c54c7b97513993590b6722', '谷歌123', '2021-03-28 17:26:17', '张三', null, null, '0', '');
INSERT INTO `tbl_activity_remark` VALUES ('d8f6c72ab7c74dd39b42516242e1e6a1', '今天的广告效果还行', '2021-03-28 17:29:16', '张三', null, null, '0', '');

-- ----------------------------
-- Table structure for `tbl_clue`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue` (
  `id` char(32) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `owner` char(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('7c531c2a159c47879819035db891c310', '雷军', '先生', '40f6cdea0bd34aceb77492a1656d9fb3', '小米', 'CEO', 'leijun@sina.com', '7777458', 'xiaomi@.com', '12954695326', '将来联系', '在线商场', '张三', '2021-04-10 09:57:31', null, null, '小米要造车了', '正在商谈', '2021-04-23', '北京');

-- ----------------------------
-- Table structure for `tbl_clue_activity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation` (
  `id` char(32) NOT NULL,
  `clueId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_clue_remark`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_remark`;
CREATE TABLE `tbl_clue_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `clueId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_remark
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `birth` char(10) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------
INSERT INTO `tbl_contacts` VALUES ('29f3307e7f98499eafac3efb8b23f98f', '40f6cdea0bd34aceb77492a1656d9fb3', '外部介绍', '30302a787f6248ea82316934165001b9', '张勇', '先生', 'yong@alibaba.com', '13589235655', '总经理', null, '张三', '2021-04-02 20:10:38', null, null, '张勇也挺有钱', '打算给大哥打', '2021-04-01', '浙江');
INSERT INTO `tbl_contacts` VALUES ('350ce1f439aa47f98e086be621cf7f84', '40f6cdea0bd34aceb77492a1656d9fb3', '员工介绍', '9530748185c1469d8fc655d1b5f3d2a4', '邓稼先', '教授', 'dengjiaxian@sina.com', '17854853216', '主任', null, '张三', '2021-04-10 09:44:44', null, null, '两大元勋啊', '联系不上', '2021-05-05', '北京');
INSERT INTO `tbl_contacts` VALUES ('84893674f21440ae9ef9dff8647b336e', '40f6cdea0bd34aceb77492a1656d9fb3', '广告', '35fc44fbdbf04b1aabcce5f40c31b9c0', '董小姐', '女士', 'dong@madie.com', '15864538586', '董事长', null, '张三', '2021-04-02 20:08:52', null, null, '美的空调，用过的都说好，就是贵', '董小姐牛逼', '2021-03-31', '深圳');
INSERT INTO `tbl_contacts` VALUES ('91f96f8364d54dde8e1d1fb8e2c43d4b', '40f6cdea0bd34aceb77492a1656d9fb3', '在线商场', '9530748185c1469d8fc655d1b5f3d2a4', '钱学森', '教授', 'qinaxueshen@sina.com', '15126971859', '院士', null, '张三', '2021-04-10 09:50:47', null, null, '大佬', '联系不上', '2021-04-14', '北京');
INSERT INTO `tbl_contacts` VALUES ('94cc882b125b4ba78ffe525461fef286', '06f5fc056eac41558a964f96daa7f27c', '内部研讨会', '2d313001c6444123ba67ebb2ce91305d', '陶碧华', '女士', 'huahua@laoganma.com', '13885695246', 'CEO', null, '张三', '2021-04-10 09:55:26', null, null, '听说老干妈偷工减料', '鸟都不鸟人', '2021-04-29', '山西');
INSERT INTO `tbl_contacts` VALUES ('acc2252f334840008ee8af742b213131', '40f6cdea0bd34aceb77492a1656d9fb3', '公开媒介', '556fa85e636f424294b37fb5f58e6f3c', '任正非', '先生', 'renzhengfei@huawei.com', '16354952355', 'CEO', null, '张三', '2021-04-12 13:22:54', null, null, '正在走下坡路', '快联系不上了', '2021-04-28', '深圳');
INSERT INTO `tbl_contacts` VALUES ('b90bc229e0d145408f0cd396109c1fac', '40f6cdea0bd34aceb77492a1656d9fb3', '员工介绍', 'fa851a916c9649e3bcc9efebe25ac9bb', '马化腾', '先生', 'tengteng@qq.com', '15648955464', '董事长', null, '张三', '2021-04-02 19:59:01', null, null, '真tm会赚钱', '向他要点钱', '2021-04-01', '深圳');
INSERT INTO `tbl_contacts` VALUES ('fbd6875a888c4302b1204585912f02c2', '40f6cdea0bd34aceb77492a1656d9fb3', '聊天', '7dc5b21b2ff1406a8376b46f56901d2c', '刘德华', '先生', 'liudehua@123.com', '15625681335', '老板', null, '张三', '2021-04-02 20:06:46', null, null, '亚洲天王刘德华', '票到失恋', '2021-04-08', '香港');
INSERT INTO `tbl_contacts` VALUES ('fd0d1fc74c7247b3b12dcd3ba8f4617a', '40f6cdea0bd34aceb77492a1656d9fb3', '交易会', 'c40fbb5964194dd1812dd0a6224cb2e8', '郭德纲', '先生', 'guodegang@126.com', '13859685923', '社长', null, '张三', '2021-04-02 19:50:43', null, null, '德云社相声不错', '可以合作', '2021-04-10', '北京德云社');

-- ----------------------------
-- Table structure for `tbl_contacts_activity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
CREATE TABLE `tbl_contacts_activity_relation` (
  `id` char(32) NOT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_activity_relation
-- ----------------------------
INSERT INTO `tbl_contacts_activity_relation` VALUES ('10285254d9f642fb9a8b4c97c476a76a', 'fbd6875a888c4302b1204585912f02c2', 'eb3c42cea008431d8363ca32cb453f94');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('21a3884343a843e0a3b2f65d95667b81', '84893674f21440ae9ef9dff8647b336e', '2c5e98a88c954e599b8d35f58eb4a4a2');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('2f2d665e849244fbb6ccb098f9987d54', '29f3307e7f98499eafac3efb8b23f98f', '8d496181835d41a59cf5c2bc2579c4c6');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('3b98ee10880b40759c02d8fee7db9231', '84893674f21440ae9ef9dff8647b336e', '55a37de7c8fb4df08a51da9542ab3416');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('462d56e86270421b9eed0e225a8a6899', '350ce1f439aa47f98e086be621cf7f84', 'caa29bb499a94969820d0b0d01403e1a');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('4dc22136a7824fcfb392929ee13fa9f4', 'fd0d1fc74c7247b3b12dcd3ba8f4617a', '55a37de7c8fb4df08a51da9542ab3416');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('8dfd6493a49e4d5582fbcebdf9c989c3', 'fd0d1fc74c7247b3b12dcd3ba8f4617a', 'eb3c42cea008431d8363ca32cb453f94');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('999627cddd13487eb55fdaea81bc4921', 'fbd6875a888c4302b1204585912f02c2', 'a87d3e632ebd4306a5828cae3fe33079');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('a0d4e5e65b944069ad55cd2b7ed3d26b', 'fbd6875a888c4302b1204585912f02c2', '55a37de7c8fb4df08a51da9542ab3416');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('a60efc4d4e0e42a894b6440a105ca15a', '350ce1f439aa47f98e086be621cf7f84', '2c5e98a88c954e599b8d35f58eb4a4a2');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('a6e67b6aa55e46a593aa14bab15cafa2', 'fbd6875a888c4302b1204585912f02c2', '8d496181835d41a59cf5c2bc2579c4c6');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('abe8a21c48964010bbfcc9d0a62b0923', '350ce1f439aa47f98e086be621cf7f84', 'cde3577efb3c48f983bd5db8ee6b5c67');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('c164a369af93421d9ed9c7e0a7c029d6', 'b90bc229e0d145408f0cd396109c1fac', '2c5e98a88c954e599b8d35f58eb4a4a2');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('d011deee9e5643ec89f57f10ba05f80b', '84893674f21440ae9ef9dff8647b336e', '2c5e98a88c954e599b8d35f58eb4a4a2');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('d2178e5d7fc34dd78dad1016f08411c6', 'b90bc229e0d145408f0cd396109c1fac', 'eb3c42cea008431d8363ca32cb453f94');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('d2c2c30f67b44f9696391beb157a5c09', 'b90bc229e0d145408f0cd396109c1fac', 'a87d3e632ebd4306a5828cae3fe33079');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('d9b43a54f8594679bd63d03af02e34a9', 'fbd6875a888c4302b1204585912f02c2', '2c5e98a88c954e599b8d35f58eb4a4a2');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('db2d831d03cf4f179f6de47d95cf26ac', 'b90bc229e0d145408f0cd396109c1fac', '8d496181835d41a59cf5c2bc2579c4c6');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('f7d7a54e87d44693a242b92a06abbf00', '29f3307e7f98499eafac3efb8b23f98f', 'eb3c42cea008431d8363ca32cb453f94');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('f9c24af687d9406dbbc7a2680bc9ce48', 'fd0d1fc74c7247b3b12dcd3ba8f4617a', 'a87d3e632ebd4306a5828cae3fe33079');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('fc0edc7830ea4a28b9ca9607e37ee77b', '350ce1f439aa47f98e086be621cf7f84', '55a37de7c8fb4df08a51da9542ab3416');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('fd2df84c71cf4fa3a50d6b5d528d121e', '29f3307e7f98499eafac3efb8b23f98f', '2c5e98a88c954e599b8d35f58eb4a4a2');

-- ----------------------------
-- Table structure for `tbl_contacts_remark`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_remark`;
CREATE TABLE `tbl_contacts_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_remark
-- ----------------------------
INSERT INTO `tbl_contacts_remark` VALUES ('1f09e99ef8d74d6788bce91fd243f016', '于谦是德云社一哥', '张三', '2021-04-02 19:50:43', null, null, '0', 'fd0d1fc74c7247b3b12dcd3ba8f4617a');
INSERT INTO `tbl_contacts_remark` VALUES ('44ff039b55dc4b3c9c874ff9bb201169', '牛啊', '张三', '2021-04-10 09:44:44', null, null, '0', '350ce1f439aa47f98e086be621cf7f84');
INSERT INTO `tbl_contacts_remark` VALUES ('8e5f26d1b02640b288daa861cefa625c', '大佬，爱了爱了', '张三', '2021-04-10 09:44:44', null, null, '0', '350ce1f439aa47f98e086be621cf7f84');
INSERT INTO `tbl_contacts_remark` VALUES ('c384199c93164bddb90373f5c35cb483', '董小姐很强势', '张三', '2021-04-02 20:08:52', null, null, '0', '84893674f21440ae9ef9dff8647b336e');
INSERT INTO `tbl_contacts_remark` VALUES ('ec0fbfafc2a84a508aa3394675ea4b77', '郭麒麟是太子', '张三', '2021-04-02 19:50:43', null, null, '0', 'fd0d1fc74c7247b3b12dcd3ba8f4617a');

-- ----------------------------
-- Table structure for `tbl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('2d313001c6444123ba67ebb2ce91305d', '06f5fc056eac41558a964f96daa7f27c', '老干妈', 'laoganma.com', '6666598', '张三', '2021-04-10 09:55:26', null, null, '鸟都不鸟人', '2021-04-29', '听说老干妈偷工减料', '山西');
INSERT INTO `tbl_customer` VALUES ('30302a787f6248ea82316934165001b9', '40f6cdea0bd34aceb77492a1656d9fb3', '阿里巴巴', 'alibaba.com', '88885612', '张三', '2021-04-02 20:10:38', null, null, '打算给大哥打', '2021-04-01', '张勇也挺有钱', '浙江');
INSERT INTO `tbl_customer` VALUES ('35fc44fbdbf04b1aabcce5f40c31b9c0', '40f6cdea0bd34aceb77492a1656d9fb3', '美的空调', 'madie.com', '8359579', '张三', '2021-04-02 20:08:52', null, null, '董小姐牛逼', '2021-03-31', '美的空调，用过的都说好，就是贵', '深圳');
INSERT INTO `tbl_customer` VALUES ('36db20b7c13d473fa55c566dec17aced', '40f6cdea0bd34aceb77492a1656d9fb3', '国美电器', null, null, '张三', '2021-04-12 15:45:36', null, null, null, '2021-05-08', null, null);
INSERT INTO `tbl_customer` VALUES ('556fa85e636f424294b37fb5f58e6f3c', '40f6cdea0bd34aceb77492a1656d9fb3', '华为', 'huawei.com', '8888888', '张三', '2021-04-12 13:22:54', null, null, '快联系不上了', '2021-04-28', '正在走下坡路', '深圳');
INSERT INTO `tbl_customer` VALUES ('5d2801e29f2b4beab626b4838289206e', '40f6cdea0bd34aceb77492a1656d9fb3', '顺丰快递', null, null, '张三', '2021-04-12 15:53:05', null, null, null, '2021-05-18', null, null);
INSERT INTO `tbl_customer` VALUES ('7dc5b21b2ff1406a8376b46f56901d2c', '40f6cdea0bd34aceb77492a1656d9fb3', '花花传媒', 'flowermadie.com', '95353232', '张三', '2021-04-02 20:06:46', null, null, '票到失恋', '2021-04-08', '亚洲天王刘德华', '香港');
INSERT INTO `tbl_customer` VALUES ('9530748185c1469d8fc655d1b5f3d2a4', '40f6cdea0bd34aceb77492a1656d9fb3', '中科院', 'zhongkeyuan.com', '58965422', '张三', '2021-04-10 09:44:44', null, null, '联系不上', '2021-05-05', '两大元勋啊', '北京');
INSERT INTO `tbl_customer` VALUES ('c40fbb5964194dd1812dd0a6224cb2e8', '40f6cdea0bd34aceb77492a1656d9fb3', '德云社', 'deyunshe.com', '8552364', '张三', '2021-04-02 19:50:43', null, null, '可以合作', '2021-04-10', '德云社相声不错', '北京德云社');
INSERT INTO `tbl_customer` VALUES ('fa851a916c9649e3bcc9efebe25ac9bb', '40f6cdea0bd34aceb77492a1656d9fb3', '腾讯', 'tengxun.com', '8888885', '张三', '2021-04-02 19:59:01', null, null, '向他要点钱', '2021-04-01', '真tm会赚钱', '深圳');

-- ----------------------------
-- Table structure for `tbl_customer_remark`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer_remark`;
CREATE TABLE `tbl_customer_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer_remark
-- ----------------------------
INSERT INTO `tbl_customer_remark` VALUES ('46243d9e2f6a44729b0a92830e69aa87', '牛啊', '张三', '2021-04-10 09:44:44', null, null, '0', '9530748185c1469d8fc655d1b5f3d2a4');
INSERT INTO `tbl_customer_remark` VALUES ('7a02be5633d449ee81746adfce5697d6', '郭麒麟是太子', '张三', '2021-04-02 19:50:43', null, null, '0', 'c40fbb5964194dd1812dd0a6224cb2e8');
INSERT INTO `tbl_customer_remark` VALUES ('8d9415ab2b9e46ba91060ec4d2653c94', '于谦是德云社一哥', '张三', '2021-04-02 19:50:43', null, null, '0', 'c40fbb5964194dd1812dd0a6224cb2e8');
INSERT INTO `tbl_customer_remark` VALUES ('aac90f1b4dd14590976eecea3d5a165c', '大佬，爱了爱了', '张三', '2021-04-10 09:44:44', null, null, '0', '9530748185c1469d8fc655d1b5f3d2a4');
INSERT INTO `tbl_customer_remark` VALUES ('b66d97a0061140ffa11f9c7c56ad5378', '董小姐很强势', '张三', '2021-04-02 20:08:52', null, null, '0', '35fc44fbdbf04b1aabcce5f40c31b9c0');

-- ----------------------------
-- Table structure for `tbl_dic_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type` (
  `code` varchar(255) NOT NULL COMMENT '编码是主键，不能为空，不能含有中文。',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('transactionType', '交易类型', '');

-- ----------------------------
-- Table structure for `tbl_dic_value`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value` (
  `id` char(32) NOT NULL COMMENT '主键，采用UUID',
  `value` varchar(255) DEFAULT NULL COMMENT '不能为空，并且要求同一个字典类型下字典值不能重复，具有唯一性。',
  `text` varchar(255) DEFAULT NULL COMMENT '可以为空',
  `orderNo` varchar(255) DEFAULT NULL COMMENT '可以为空，但不为空的时候，要求必须是正整数',
  `typeCode` varchar(255) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('12302fd42bd349c1bb768b19600e6b20', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('1615f0bb3e604552a86cde9a2ad45bea', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('176039d2a90e4b1a81c5ab8707268636', '教授', '教授', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('1e0bd307e6ee425599327447f8387285', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2173663b40b949ce928db92607b5fe57', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2876690b7e744333b7f1867102f91153', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('29805c804dd94974b568cfc9017b2e4c', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('310e6a49bd8a4962b3f95a1d92eb76f4', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('31539e7ed8c848fc913e1c2c93d76fd1', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('37ef211719134b009e10b7108194cf46', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('391807b5324d4f16bd58c882750ee632', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('3a39605d67da48f2a3ef52e19d243953', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('474ab93e2e114816abf3ffc596b19131', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('48512bfed26145d4a38d3616e2d2cf79', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4d03a42898684135809d380597ed3268', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('59795c49896947e1ab61b7312bd0597c', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('5c6e9e10ca414bd499c07b886f86202a', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('67165c27076e4c8599f42de57850e39c', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('68a1b1e814d5497a999b8f1298ace62b', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('6b86f215e69f4dbd8a2daa22efccf0cf', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('72f13af8f5d34134b5b3f42c5d477510', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('7c07db3146794c60bf975749952176df', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('86c56aca9eef49058145ec20d5466c17', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('9095bda1f9c34f098d5b92fb870eba17', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('954b410341e7433faa468d3c4f7cf0d2', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('966170ead6fa481284b7d21f90364984', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('96b03f65dec748caa3f0b6284b19ef2f', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('97d1128f70294f0aac49e996ced28c8a', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('9ca96290352c40688de6596596565c12', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9e6d6e15232549af853e22e703f3e015', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('9ff57750fac04f15b10ce1bbb5bb8bab', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('a70dc4b4523040c696f4421462be8b2f', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('a83e75ced129421dbf11fab1f05cf8b4', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ab8472aab5de4ae9b388b2f1409441c1', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('ab8c2a3dc05f4e3dbc7a0405f721b040', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('b924d911426f4bc5ae3876038bc7e0ad', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('c13ad8f9e2f74d5aa84697bb243be3bb', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('c83c0be184bc40708fd7b361b6f36345', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('db867ea866bc44678ac20c8a4a8bfefb', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('e44be1d99158476e8e44778ed36f4355', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('e5f383d2622b4fc0959f4fe131dafc80', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('e81577d9458f4e4192a44650a3a3692b', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('fb65d7fdb9c6483db02713e6bc05dd19', '在线商场', '在线商场', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('fd677cc3b5d047d994e16f6ece4d3d45', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ff802a03ccea4ded8731427055681d48', '外部介绍', '外部介绍', '4', 'source');

-- ----------------------------
-- Table structure for `tbl_tran`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE `tbl_tran` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran
-- ----------------------------
INSERT INTO `tbl_tran` VALUES ('06b70726d6394c83bce18c71736618fd', '40f6cdea0bd34aceb77492a1656d9fb3', '500000', '中科院-大佬', '2021-04-28', '9530748185c1469d8fc655d1b5f3d2a4', '01资质审查', null, '员工介绍', 'cde3577efb3c48f983bd5db8ee6b5c67', '350ce1f439aa47f98e086be621cf7f84', '张三', '2021-04-10 09:44:44', null, null, '两大元勋啊', '联系不上', '2021-05-05');
INSERT INTO `tbl_tran` VALUES ('25c7811864314e0584484ad5f2eeba7f', '40f6cdea0bd34aceb77492a1656d9fb3', '150000', '腾讯-坑钱', '2019-05-19', 'fa851a916c9649e3bcc9efebe25ac9bb', '07成交', null, '员工介绍', 'a87d3e632ebd4306a5828cae3fe33079', 'b90bc229e0d145408f0cd396109c1fac', '张三', '2021-04-02 19:59:01', null, null, '真tm会赚钱', '向他要点钱', '2021-04-01');
INSERT INTO `tbl_tran` VALUES ('4528ef59a835499d8f4c657e3ee2eae0', '40f6cdea0bd34aceb77492a1656d9fb3', '9999999', '华为-贿赂', '2021-05-05', '556fa85e636f424294b37fb5f58e6f3c', '04确定决策者', null, '公开媒介', 'cde3577efb3c48f983bd5db8ee6b5c67', 'acc2252f334840008ee8af742b213131', '张三', '2021-04-12 13:22:54', null, null, '正在走下坡路', '快联系不上了', '2021-04-28');
INSERT INTO `tbl_tran` VALUES ('82cdc8f23b754f91b8aaa210129cd9d3', '40f6cdea0bd34aceb77492a1656d9fb3', '500000', '花花传媒-演唱会', '2019-05-19', '7dc5b21b2ff1406a8376b46f56901d2c', '03价值建议', null, '聊天', 'a87d3e632ebd4306a5828cae3fe33079', 'fbd6875a888c4302b1204585912f02c2', '张三', '2021-04-02 20:06:46', null, null, '亚洲天王刘德华', '票到失恋', '2021-04-08');
INSERT INTO `tbl_tran` VALUES ('879d8ec802bc40acb3fa89a9598f0708', '40f6cdea0bd34aceb77492a1656d9fb3', '10000000', '顺丰快递-尾程费用', '2021-05-05', '5d2801e29f2b4beab626b4838289206e', '06谈判/复审', '新业务', '广告', '8d496181835d41a59cf5c2bc2579c4c6', '', '张三', '2021-04-12 15:53:05', '张三', '2021-04-14 12:15:03', '飞机发快递', '789456', '2021-05-18');
INSERT INTO `tbl_tran` VALUES ('ab82abbfc01e4fe1974c9d53dc1ed883', '40f6cdea0bd34aceb77492a1656d9fb3', '700000', '国美电器', '2021-05-06', '36db20b7c13d473fa55c566dec17aced', '05提案/报价', '新业务', '广告', 'a87d3e632ebd4306a5828cae3fe33079', '', '张三', '2021-04-12 15:45:36', '张三', '2021-04-14 12:24:21', '123', '123', '2021-05-08');
INSERT INTO `tbl_tran` VALUES ('b3591ed203274962a090dbbf9744efb2', '40f6cdea0bd34aceb77492a1656d9fb3', '6000000', '吃饭', '2021-04-20', '7dc5b21b2ff1406a8376b46f56901d2c', '06谈判/复审', '已有业务', '广告', 'eb3c42cea008431d8363ca32cb453f94', 'fbd6875a888c4302b1204585912f02c2', '张三', '2021-04-12 15:54:34', '张三', '2021-04-14 12:46:38', '请吃饭，吃了这么多', '下次多联系', '2021-05-08');
INSERT INTO `tbl_tran` VALUES ('b8af0e40d9eb47c1972e66103444546c', '40f6cdea0bd34aceb77492a1656d9fb3', '888888', '123', '2021-04-13', '30302a787f6248ea82316934165001b9', '02需求分析', '新业务', '广告', '2c5e98a88c954e599b8d35f58eb4a4a2', '29f3307e7f98499eafac3efb8b23f98f', '张三', '2021-04-12 13:19:26', null, null, '123', '123', '2021-04-20');
INSERT INTO `tbl_tran` VALUES ('d89f84341eb247a8be774e8bd2526fe6', '06f5fc056eac41558a964f96daa7f27c', '880000', '老干妈-广告', '2021-05-07', '2d313001c6444123ba67ebb2ce91305d', '05提案/报价', null, '内部研讨会', '2c5e98a88c954e599b8d35f58eb4a4a2', '94cc882b125b4ba78ffe525461fef286', '张三', '2021-04-10 09:55:26', null, null, '听说老干妈偷工减料', '鸟都不鸟人', '2021-04-29');

-- ----------------------------
-- Table structure for `tbl_tran_history`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history` (
  `id` char(32) NOT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------
INSERT INTO `tbl_tran_history` VALUES ('016562c14c7c42dba16a5c4e31437611', '04确定决策者', '700000', '2021-05-06', '2021-04-14 12:23:55', '张三', 'ab82abbfc01e4fe1974c9d53dc1ed883');
INSERT INTO `tbl_tran_history` VALUES ('04a6419e1cac4c028d8fb56da09e2e05', '04确定决策者', '9999999', '2021-05-05', '2021-04-12 13:22:54', '张三', '4528ef59a835499d8f4c657e3ee2eae0');
INSERT INTO `tbl_tran_history` VALUES ('04dd1226212041eabde5219baab3591e', '04确定决策者', '6000000', '2021-04-20', '2021-04-14 12:44:55', '张三', 'b3591ed203274962a090dbbf9744efb2');
INSERT INTO `tbl_tran_history` VALUES ('22fa18c71e4147b1979ba5d5ad21187e', '08丢失的线索', '700000', '2021-05-06', '2021-04-14 12:24:16', '张三', 'ab82abbfc01e4fe1974c9d53dc1ed883');
INSERT INTO `tbl_tran_history` VALUES ('2a0855e4594244e0b2819000b146dc51', '06谈判/复审', '10000000', '2021-05-05', '2021-04-14 12:15:03', '张三', '879d8ec802bc40acb3fa89a9598f0708');
INSERT INTO `tbl_tran_history` VALUES ('2cab86d3e56e4ac3a010588ffae7e9f6', '03价值建议', '500000', '2019-05-19', '2021-04-02 20:06:46', '张三', '82cdc8f23b754f91b8aaa210129cd9d3');
INSERT INTO `tbl_tran_history` VALUES ('2dd7422ed49d4b2984c9611b3f5e1faf', '05提案/报价', '6000000', '2021-04-20', '2021-04-14 12:44:56', '张三', 'b3591ed203274962a090dbbf9744efb2');
INSERT INTO `tbl_tran_history` VALUES ('308b73cb252b476987d7fc18a574d505', '08丢失的线索', '6000000', '2021-04-20', '2021-04-14 12:45:04', '张三', 'b3591ed203274962a090dbbf9744efb2');
INSERT INTO `tbl_tran_history` VALUES ('52731a82a56648d9bc75bc1b76cd1e28', '05提案/报价', '880000', '2021-05-07', '2021-04-10 09:55:26', '张三', 'd89f84341eb247a8be774e8bd2526fe6');
INSERT INTO `tbl_tran_history` VALUES ('6dd906b3e44e47bd915e626a0b85f1cb', '04确定决策者', '10000000', '2021-05-05', '2021-04-12 15:53:05', '张三', '879d8ec802bc40acb3fa89a9598f0708');
INSERT INTO `tbl_tran_history` VALUES ('747f2d99797d4f9d83064633f6265444', '06谈判/复审', '6000000', '2021-04-20', '2021-04-14 12:46:38', '张三', 'b3591ed203274962a090dbbf9744efb2');
INSERT INTO `tbl_tran_history` VALUES ('a0abc7e54fd14ba48fc4b27aaaa31b9d', '01资质审查', '500000', '2021-04-28', '2021-04-10 09:44:44', '张三', '06b70726d6394c83bce18c71736618fd');
INSERT INTO `tbl_tran_history` VALUES ('d64ab931d7894e77abe86669d97b5b70', '05提案/报价', '700000', '2021-05-06', '2021-04-12 15:45:36', '张三', 'ab82abbfc01e4fe1974c9d53dc1ed883');
INSERT INTO `tbl_tran_history` VALUES ('dc6c85ca19944510ab5939eec6499b0e', '05提案/报价', '700000', '2021-05-06', '2021-04-14 12:24:21', '张三', 'ab82abbfc01e4fe1974c9d53dc1ed883');
INSERT INTO `tbl_tran_history` VALUES ('e1e89db6e0384b448dd1f1a2e7b79f40', '06谈判/复审', '700000', '2021-05-06', '2021-04-14 12:24:05', '张三', 'ab82abbfc01e4fe1974c9d53dc1ed883');
INSERT INTO `tbl_tran_history` VALUES ('eda547b7b26242a28020b3f612b84480', '07成交', '150000', '2019-05-19', '2021-04-02 19:59:01', '张三', '25c7811864314e0584484ad5f2eeba7f');
INSERT INTO `tbl_tran_history` VALUES ('f52995d96f6544a6b01054acb22ed41f', '06谈判/复审', '6000000', '2021-04-20', '2021-04-14 12:44:58', '张三', 'b3591ed203274962a090dbbf9744efb2');
INSERT INTO `tbl_tran_history` VALUES ('f69c94c5265840438b5a202f9197a2e8', '07成交', '6000000', '2021-04-20', '2021-04-14 12:45:02', '张三', 'b3591ed203274962a090dbbf9744efb2');

-- ----------------------------
-- Table structure for `tbl_tran_remark`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_remark`;
CREATE TABLE `tbl_tran_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_remark
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` char(32) NOT NULL COMMENT 'uuid\r\n            ',
  `loginAct` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL COMMENT '密码不能采用明文存储，采用密文，MD5加密之后的数据',
  `email` varchar(255) DEFAULT NULL,
  `expireTime` char(19) DEFAULT NULL COMMENT '失效时间为空的时候表示永不失效，失效时间为2018-10-10 10:10:10，则表示在该时间之前该账户可用。',
  `lockState` char(1) DEFAULT NULL COMMENT '锁定状态为空时表示启用，为0时表示锁定，为1时表示启用。',
  `deptno` char(4) DEFAULT NULL,
  `allowIps` varchar(255) DEFAULT NULL COMMENT '允许访问的IP为空时表示IP地址永不受限，允许访问的IP可以是一个，也可以是多个，当多个IP地址的时候，采用半角逗号分隔。允许IP是192.168.100.2，表示该用户只能在IP地址为192.168.100.2的机器上使用。',
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('06f5fc056eac41558a964f96daa7f27c', 'ls', '李四', '202cb962ac59075b964b07152d234b70', 'ls@163.com', '2018-11-27 21:50:05', '1', 'A001', '192.168.1.1', '2018-11-22 12:11:40', '李四', null, null);
INSERT INTO `tbl_user` VALUES ('40f6cdea0bd34aceb77492a1656d9fb3', 'zs', '张三', '202cb962ac59075b964b07152d234b70', 'zs@qq.com', '2021-11-30 23:50:55', '1', 'A001', '192.168.1.1,127.0.0.1,0:0:0:0:0:0:0:1', '2018-11-22 11:37:34', '张三', null, null);
