/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : springboote9fx7

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 19/06/2024 21:55:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for binglixinxi
-- ----------------------------
DROP TABLE IF EXISTS `binglixinxi`;
CREATE TABLE `binglixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `binglibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '病例编号',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄',
  `jibingmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '疾病名称',
  `zhengzhuang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '症状',
  `zhenliaoqingkuang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '诊疗情况',
  `binglifujian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '病例附件',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `binglibianhao`(`binglibianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716431079264 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '病历信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of binglixinxi
-- ----------------------------
INSERT INTO `binglixinxi` VALUES (81, '2024-04-24 23:23:30', '1111111111', '账号1', '姓名1', '440300199101010001', '13823888881', '男', '32', '疾病名称1', '症状1', '诊疗情况1', 'upload/1715086170132.doc', '2024-04-24', '备注1', '医生账号1', '医生姓名1');
INSERT INTO `binglixinxi` VALUES (82, '2024-04-24 23:23:30', '2222222222', '账号2', '姓名2', '440300199202020002', '13823888882', '女', '31', '疾病名称2', '症状2', '诊疗情况2', '', '2024-04-24', '备注2', '医生账号2', '医生姓名2');
INSERT INTO `binglixinxi` VALUES (83, '2024-04-24 23:23:30', '3333333333', '账号3', '姓名3', '440300199303030002', '13823888883', '女', '30', '疾病名称3', '症状3', '诊疗情况3', 'upload/1716430733997.docx', '2024-04-24', '备注3', '医生账号3', '医生姓名3');
INSERT INTO `binglixinxi` VALUES (84, '2024-04-24 23:23:30', '4444444444', '账号4', '姓名4', '440300199404040001', '13823888884', '男', '29', '疾病名称4', '症状4', '诊疗情况4', '', '2024-04-24', '备注4', '医生账号4', '医生姓名4');
INSERT INTO `binglixinxi` VALUES (85, '2024-04-24 23:23:30', '5555555555', '账号5', '姓名5', '440300199505050001', '13823888885', '男', '28', '疾病名称5', '症状5', '诊疗情况5', '', '2024-04-24', '备注5', '医生账号5', '医生姓名5');
INSERT INTO `binglixinxi` VALUES (86, '2024-04-24 23:23:30', '6666666666', '账号6', '姓名6', '440300199606060002', '13823888886', '女', '27', '疾病名称6', '症状6', '诊疗情况6', '', '2024-04-24', '备注6', '医生账号6', '医生姓名6');
INSERT INTO `binglixinxi` VALUES (1716431079263, '2024-05-08 10:24:39', '1716430893741', '账号1', '姓名1', '440300199101010001', '13823888881', '男', '32', '疾病名称1', '症状1', '诊疗情况1', 'upload/1716431056592.docx', '2024-05-08', '备注1', '医生账号3', '医生姓名3');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1713355818850.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1713355837508.png');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1713355856147.jpg');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `youxileixing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型',
  `huatifenlei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '话题分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1713946089338 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社区论坛' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (151, '2024-04-11 22:59:03', '求推荐', '<p>有没有效果好的增强免疫力的钙片？</p>', 0, 11, '姓名1', '开放', '类型1', '话题1');
INSERT INTO `forum` VALUES (152, '2024-04-11 22:59:03', '右眼皮跳动半年', '<p>吃过药，也扎过针，现在左眼皮也开始轻微跳动了，有知道这属于什么情况的吗？</p>', 0, 12, '姓名2', '开放', '类型2', '话题2');
INSERT INTO `forum` VALUES (153, '2024-04-11 22:59:03', '一到晚上洗完脸眼睛发痒', '<p>问一下有没有人白天眼睛有点痒，到了晚上眼睛更痒，一直想用手挠的？</p>', 0, 13, ' 姓名3', '开放', '类型3', '话题3');
INSERT INTO `forum` VALUES (154, '2024-04-12 22:59:03', '在线求问', '<p>一天一个苹果，这句话真的有道理吗？</p>', 0, 11, '姓名1', '开放', '类型4', '话题4');
INSERT INTO `forum` VALUES (155, '2024-04-12 08:59:03', '较严重闭合性跌打损伤怎么办？', '<p>我是较重闭合性跌打损伤，目前大腿上半部肿得严重，不能行动，有在吃云南白药并喷汽雾剂，请问怎么治疗才好？</p>', 0, 15, '姓名5', '开放', '类型5', '话题5');
INSERT INTO `forum` VALUES (156, '2024-04-22 22:59:03', '皮肤发黄是什么原因？', '<p>我最近几天洗澡的时候照镜子发现自己的皮肤好像变黄了，是什么原因？</p>', 0, 11, '姓名1', '开放', '类型6', '话题6');
INSERT INTO `forum` VALUES (1701369062302, '2024-04-23 14:31:02', '急！！！！！', '<p>有没有人推荐下治疗灰指甲好用的外用药？</p>', 0, 12, '姓名2', '开放', '类型7', '话题6');
INSERT INTO `forum` VALUES (1713945308750, '2024-04-24 15:55:08', NULL, '早睡早起，多晒太阳，多锻炼', 151, 12, '账号2', NULL, NULL, NULL);
INSERT INTO `forum` VALUES (1713945362232, '2024-04-24 15:56:02', NULL, '同问，我一个朋友昨天刚把腿摔了', 155, 12, '账号2', NULL, NULL, NULL);
INSERT INTO `forum` VALUES (1713945659291, '2024-04-24 16:00:59', NULL, '可以热敷或按摩，大拇指在食指尖打圈，200下，左右手都做', 152, 11, '账号1', NULL, NULL, NULL);
INSERT INTO `forum` VALUES (1713945759400, '2024-04-24 16:02:39', NULL, '冰醋酸', 1701369062302, 11, '账号1', NULL, NULL, NULL);
INSERT INTO `forum` VALUES (1713945805027, '2024-04-24 16:03:24', NULL, '冰醋酸', 1701369062302, 13, '账号3', NULL, NULL, NULL);
INSERT INTO `forum` VALUES (1713946089337, '2024-04-24 16:08:09', NULL, '仁和的，忘了叫什么了，感觉还行', 151, 13, '账号3', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for guahaoyuyue
-- ----------------------------
DROP TABLE IF EXISTS `guahaoyuyue`;
CREATE TABLE `guahaoyuyue`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预约编号',
  `keshihao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室号',
  `keshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室名称',
  `piaoe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '票额',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `jiuzhenshijian` datetime(0) DEFAULT NULL COMMENT '就诊时间',
  `guahaobeizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '挂号备注',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '审核回复',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星期',
  `shangbanshijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上班时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuyuebianhao`(`yuyuebianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716690601427 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '挂号预约' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guahaoyuyue
-- ----------------------------
INSERT INTO `guahaoyuyue` VALUES (41, '2024-04-24 23:23:30', '1111111111', '101', '内科', '专家号', 60, '2024-04-24 00:00:00', '挂号备注1', '医生账号1', '医生姓名1', '13823888811', '账号1', '姓名1', '13823888881', '440300199101010001', '是', '请准时前来', '已支付', '周一', '上午');
INSERT INTO `guahaoyuyue` VALUES (42, '2024-04-24 23:23:30', '2222222222', '105', '外科', '普通票', 40, '2024-04-24 23:23:30', '挂号备注2', '医生账号2', '医生姓名2', '13823888822', '账号2', '姓名2', '13823888882', '440300199202020002', '是', '请准时前来', '未支付', '周一', '上午');
INSERT INTO `guahaoyuyue` VALUES (43, '2024-04-24 23:23:30', '3333333333', '202', '中医科', '专家号', 60, '2024-04-24 23:23:30', '挂号备注3', '医生账号3', '医生姓名3', '13823888833', '账号3', '姓名3', '13823888883', '440300199303030002', '是', '请准时前来', '未支付', '周一', '上午');
INSERT INTO `guahaoyuyue` VALUES (44, '2024-04-24 23:23:30', '4444444444', '208', '口腔科', '普通票', 40, '2024-04-24 23:23:30', '挂号备注4', '医生账号4', '医生姓名4', '13823888844', '账号4', '姓名4', '13823888884', '440300199404040001', '是', '请准时前来', '未支付', '周一', '下午');
INSERT INTO `guahaoyuyue` VALUES (45, '2024-04-24 23:23:30', '5555555555', '107', '耳鼻喉科', '普通票', 40, '2024-04-24 23:23:30', '挂号备注5', '医生账号5', '医生姓名5', '13823888855', '账号5', '姓名5', '13823888885', '440300199505050001', '是', '请准时前来', '未支付', '周二', '上午');
INSERT INTO `guahaoyuyue` VALUES (46, '2024-04-24 23:23:30', '6666666666', '206', '眼科', '普通票', 40, '2024-04-24 23:23:30', '挂号备注6', '医生账号6', '医生姓名6', '13823888866', '账号6', '姓名6', '13823888886', '440300199606060002', '是', '请准时前来', '未支付', '周二', '上午');
INSERT INTO `guahaoyuyue` VALUES (1716429947344, '2024-05-23 10:05:47', '20245231042013982696', '202', '中医科', '普通票', 40, '2024-05-08 00:00:00', '<p>无</p>', '医生账号3', '医生姓名3', NULL, '账号1', '姓名1', '13823888881', '440300199101010001', '是', NULL, '已支付', '周三', '上午');
INSERT INTO `guahaoyuyue` VALUES (1716430100621, '2024-05-23 10:08:20', '20245231074276223965', '101', '内科', '专家号', 60, '2024-05-18 00:00:00', '<p>无</p>', '医生账号1', '医生姓名1', NULL, '账号1', '姓名1', '13823888881', '440300199101010001', '否', NULL, '未支付', '周六', '下午');
INSERT INTO `guahaoyuyue` VALUES (1716690601426, '2024-05-26 10:30:00', '202452610293856569130', '101', '内科', '专家号', 60, '2024-05-27 00:00:00', '<p>jjj</p>', '医生账号1', '医生姓名1', NULL, '账号1', '姓名1', '13823888881', '440300199101010001', '是', NULL, '未支付', '周一', '上午');

-- ----------------------------
-- Table structure for keshixinxi
-- ----------------------------
DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE `keshixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshihao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室号',
  `keshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室名称',
  `fengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面',
  `shangbanshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上班时间',
  `piaoe` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '票额',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `yiling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医龄',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '详情',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `keshihao`(`keshihao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1648136204358 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keshixinxi
-- ----------------------------
INSERT INTO `keshixinxi` VALUES (31, '2030-03-24 23:23:30', '101', '内科', 'upload/1713602119675.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号1', '医生姓名1', '21', '<p>位于一楼东侧。负责心血管、呼吸、消化、神经、内分泌系统肾脏等内科常见、多发病的诊疗。</p>', '2024-05-26 10:30:03', 97, '全天');
INSERT INTO `keshixinxi` VALUES (32, '2030-03-24 23:23:30', '105', '外科', 'upload/1713602135035.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号2', '医生姓名2', '25', '<p>位于一楼西侧。负责皮肤感染、骨骼、肌肉、直肠肛管疾病、泌尿外科及各种损伤的治疗，其中还包括常见皮肤病的诊断和治疗。拥有激光治疗仪、电离子治疗机、液氮冷冻治疗仪、微波治疗仪等设备。</p>', '2024-05-26 10:13:01', 161, '全天');
INSERT INTO `keshixinxi` VALUES (33, '2030-03-24 23:23:30', '202', '中医科', 'upload/1713602307155.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号3', '医生姓名3', '26', '<p>位于二楼东侧，主要开展中医内科疾病的辩证施治，可以进行针灸、拔罐、中成药、饮片等治疗。</p>', '2024-05-24 21:41:11', 160, '全天');
INSERT INTO `keshixinxi` VALUES (34, '2030-03-24 23:23:30', '208', '口腔科', 'upload/1713602370255.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号4', '医生姓名4', '34', '<p>位于二楼南侧。负责常见口腔内、外科疾病的治疗。可以开展洗牙、代做镶牙、牙齿矫正等项目。</p>', '2024-04-23 15:19:28', 17, '全天');
INSERT INTO `keshixinxi` VALUES (35, '2030-03-24 23:23:30', '107', '耳鼻喉科', 'upload/1713602215545.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号5', '医生姓名5', '32', '<p>位于一楼西侧。负责耳、鼻、咽喉常见疾病的诊治。拥有耳鼻喉检查椅等设备。</p>', '2024-04-25 11:01:34', 34, '全天');
INSERT INTO `keshixinxi` VALUES (36, '2030-03-24 23:23:30', '206', '眼科', 'upload/1713602232972.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号6', '医生姓名6', '25', '<p>位于二楼西侧。负责眼部常见疾病的诊治。拥有验光仪、眼压计、眼底镜、非接触式眼压仪等设备。</p>', '2024-04-23 15:19:34', 18, '全天');
INSERT INTO `keshixinxi` VALUES (1648136204357, '2030-03-24 23:36:44', '210', '妇科', 'upload/1713602269840.png', '上午8:30-12:10   下午2:30-6:10', '普通票', 40, '医生账号8', '周文', '39', '<p>位于二楼东侧。负责妇科常见疾病的诊断和治疗。拥有一套数字电子阴道镜。</p>', '2024-05-06 14:00:44', 24, '全天');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2024-04-01 23:23:30', '四月防病提示', '  四月春暖花开，气温逐渐升高，但早晚温差仍较大，请大家注意增减衣物。本月依旧是呼吸道传染病的高发期，请您继续做好手卫生，注意咳嗽礼仪，当好自己健康的第一责任人。另外， “人间四月芳菲尽，山寺桃花始盛开”若您有花粉过敏史，外出踏青赏花时请一定做好防护。除此之外，当前正值北方地区羊产羔季节，对布鲁氏菌病的预防也不能忽视。', 'upload/1713600142831.png', '<p><strong>一、呼吸道传染病</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;主要是一些病毒、细菌等侵入呼吸道粘膜后引起的呼吸道感染，并可引起全身症状和体征。&nbsp;</p><p>&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;（一）传播途径</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>呼吸道传染病多是通过飞沫传播，也可通过密切接触或者间接接触传播。</strong>手是传染病菌最直接的途径，在传染病流行期间，病人手上往往沾有大量病菌，他们所接触的物品表面都留有大量病菌，如果健康的人不注意直接接触病人用过的物品而未做彻底的手清洁，病菌就可能通过手-鼻腔-呼吸道而引起感染。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>（二）呼吸道传染病</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;1.新型冠状病毒感染是由新型冠状病毒引起的新发呼吸道传染病。</strong></p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;2.生活中比较常见流行性感冒、麻疹、水痘、风疹、流脑、流行性腮腺炎、肺结核等等，都是呼吸道传染病。</strong>不同的呼吸道传染病临床表现不完全相同，<strong>主要为发热、咽痛、头痛、咳嗽、咳痰、皮疹、乏力等症状。</strong>目前正值呼吸道传染病高发期，不排除新冠病毒感染与流感、普通感冒等春季呼吸道传染病叠加流行的风险。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;（三）如何预防</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.<strong>开窗通风</strong>。确保空气新鲜流通，保持室内和周围环境清洁。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.养成良好卫生习惯，<strong>做好手卫生</strong>，不要随地吐痰。打喷嚏或咳嗽时用手帕或纸巾掩住口鼻，随后应做好手卫生，避免用未清洁的手触摸眼睛、鼻或口部。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.<strong>注重个人健康管理</strong>。密切关注家人及自己的健康状况，如果出现高热、体温超过38.5℃、头痛、全身酸痛、精神萎靡、呕吐腹泻等不适症状时，根据情况到附近医院就诊，就诊途中应全程佩戴口罩；如同行家人有老人及儿童出现症状，应及早就医，避免重症情况发生。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.<strong>保持良好的生活习惯和饮食习惯</strong>。每天适当锻炼，使身体气血通畅、筋骨舒展，以增强体质。多吃些富含优质蛋白、微量元素、维生素的食物，如瘦肉、禽蛋、蜂蜜、新鲜蔬果等。早睡早起，保证充足睡眠。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;5.在呼吸道传染病高发季，<strong>尽量避免前往人员密集混杂、空气污染的场所</strong>。避免接触有流感症状（发热、咳嗽、流涕）或患有肺炎等呼吸道疾病的病人。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;6.<strong>接种疫苗</strong>是预防传染病的有效手段，但是对于没有疫苗可用的呼吸道传染病，预防的重点是保持良好的个人卫生和环境卫生。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;7.<strong>及时就医</strong>。若出现发热、出疹或其他不适，应及时就医。就医时请科学佩戴口罩，就医结束后做好手卫生，避免交叉感染。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;8.如确定为传染病，应立刻采取隔离措施。传染病人用过的物品及房间适当消毒，如日光下晾晒衣被，房内门把手、桌面用含氯消毒剂喷洒、擦拭。</p><p>&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;二、花粉过敏</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;&nbsp;&nbsp;花粉过敏是主要由花粉过敏导致的季节性疾病，是具有特应性体质的患者吸入或接触花粉变应原后, 由致敏花粉引起的一系列非特异性炎症反应,</p><p><br></p><p><br></p><p><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20230418/931cb212910b4146ab535feb930966b5.png\" height=\"354\" width=\"583\"></p><p><strong>&nbsp;（一）主要症状</strong>﻿</p><p>&nbsp;&nbsp;&nbsp;&nbsp;花粉过敏患者通常会伴随皮肤症状、呼吸道症状反应，严重的还会引起哮喘急性发作。花粉过敏通常会有以下症状：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.眼部症状通常表现为眼痒、流泪或眼结膜充血，也可能会引起眼部畏光等情况。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.过敏性鼻炎也是花粉引起的常见疾病。主要症状为鼻塞、鼻痒、流鼻涕、打喷嚏、眼睛痒。与感冒相比，过敏性鼻炎一般没有咽痛、发热或其他全身不适症状，持续时间一般超过2周，过敏性鼻炎患者常在每年固定时期发病。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;（二）如何预防</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.减少花粉接触是最基本的方法：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;（1）<strong>晴朗有风的日子减少外出</strong>：花粉在晴朗有风的日子飞散较多，特别是雨后，这样的时间尽量减少外出，或者外出时戴口罩、眼镜。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;（2）<strong>防止花粉进入室内</strong>：花粉高飞的季节尽量关闭门窗，防止花粉颗粒进入室内；另外，外出回来后，要在门口扫落身上和头发上的花粉粒，并且清洗面部和鼻腔。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;（3）<strong>清除杂草</strong>：如果是夏秋季花粉过敏患者，应尽量清除自家周围的杂草，减少花粉来源。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.<strong>外出时，戴花粉防护口罩、面罩、带硅胶的花粉防护眼镜，不要迎风走路，开车时要关闭车窗。</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.<strong>回家后，清洗鼻腔、面部及衣物等。对于晚春花粉过敏患者，为减轻花粉高峰期过敏症状，建议提前预防性用药。</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.感冒后鼻黏膜的免疫能力减弱，可加重过敏症状，一定要注意<strong>避免感冒</strong>。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;5.<strong>避免劳累、充足睡眠</strong>。过劳或精神紧张，以及生活不规律可加重过敏性鼻炎的症状，因此调整生活方式、保持充足的睡眠可减轻过敏症状。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;三、布鲁氏菌病</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;布鲁氏菌病（简称布病）是布鲁氏菌侵入机体后引发的传染-变态反应性人畜共患传染病，人类普遍易感，严重威胁着人类的健康。</p><p>&nbsp;</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20230418/e391cc1b931d47a9aec0cbd7acbab90a.jpg\" height=\"527\" width=\"660\"></p><p><strong>&nbsp;</strong></p><p><strong>&nbsp;&nbsp;&nbsp;（一）主要症状</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;由于人感染布鲁氏菌后导致病人<strong>反复发烧（波浪热）、乏力、多汗、关节肌肉酸痛等主要症状</strong>，因此又称为“懒汉病”、“蔫巴病”、“爬床病”、“千日病”。主要原因是羊牛等家畜患布病后出现流产，人通过直接接触流产羔，胎盘、羊水等流产物，细菌可通过皮肤侵入人体而感染布病。食用涮羊肉、烤羊肉、烤腰子、牛羊肉等动物内脏或喝了生奶也可以感染人。环境被严重污染时，呼吸道感染也存在高风险。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;（二）普通人群如何预防</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.注意饮食安全，<strong>不要喝生奶，不吃半生不熟的肉及内脏</strong>；牛奶、羊奶要煮沸后饮用；吃涮锅、烧烤时，要把肉煮熟透了再吃；做饭做菜时砧板做到生熟分开。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.<strong>不要食用未经检疫或来路不明的牛羊肉、病死畜的肉。</strong></p>');
INSERT INTO `news` VALUES (102, '2024-04-04 23:23:30', '春季呼吸道传染病防控知识', '冬春交接，气温波动大，呼吸道疾病高发。流行性感冒、新型冠状病毒感染、水痘、麻疹、流行性腮腺炎、手足口病等呼吸道传染病进入高发期。那么如何让人们远离常见的呼吸道传染病呢？做好防控很重要！', 'upload/1713601245192.jpg', '<p class=\"ql-align-justify\">&nbsp;一、常见春季呼吸道传染病</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;1.流行性感冒</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;流行性感冒，简称流感，是由甲、乙、丙三型流感病毒分别引起的一种急性呼吸道疾病，属于丙类传染病。流感在中国以冬春季多见，临床表现以高热、乏力、头痛、咳嗽、全身肌肉酸痛等全身中毒症状为主，而呼吸道症状相对较轻。流感病毒容易发生变异，传染性强，主要以呼吸道飞沫传播为主，经口腔、鼻腔、眼睛等黏膜直接或间接接触可感染。人群普遍易感，发病率高，是全球关注的重要公共卫生问题。其典型的临床症状是：急起高热、全身疼痛、显著乏力和轻度呼吸道症状。如果遇上厉害的病毒或者患者身体状况较差，少部分人会出现肺炎、心肌炎等并发症。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;对大多数人来说，使用退热药、止咳化痰药等对症治疗，经充分休息，3-5天发热和呼吸道症状可自行缓解，疲倦感可能持续略久一些。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;2.新型冠状病毒感染</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;新型冠状病毒感染是由新型冠状病毒(SARS-CoV-2, 以下简称新冠病毒)引起的一种传染病。新冠病毒属β属冠状病毒，对紫外线和热敏感，乙醚、75%乙醇、含氯消毒剂、过氧乙酸和氯仿等脂溶性溶剂均可有效灭活病毒。人群普遍易感，传染源以新冠病毒感染者为主，接触被病毒污染的物品后也可能造成感染；主要经呼吸道飞沫和密切接触传播，在相对封闭的环境中经气溶胶传播。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;中国疾控中心于2月9 日发布信息，WHO监测信息显示，春节前新冠变异株JN.1在全球多地已逐渐成为优势流行株，自1月底该毒株在我国感染率也呈上升趋势，发出春节期间疫情上升预警。2月以来新冠JN.1感染率上升较快。感染新冠病毒后，按照“一阳”和“二阳”的经历，大部分人会出现类似“流感”的症状，一周内基本能恢复，但弱势群体、老年人和基础病人群，可能病情会比较严重。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;3.肺炎支原体</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;去冬今春以来，肺炎支原体感染高发。肺炎支原体既不是细菌，也不属于病毒，它属于非典型微生物，个头比大部分细菌小。感染后潜伏期可长达2-3周，起病缓慢、病程较长。肺炎支原体感染后绝大多数身体健康的成年人是没有症状的，儿童中约1/3是没有临床症状的隐性感染，只在检测时发现有感染过支原体，这部分人是不需要治疗的。显性感染的临床表现多种多样，可轻可重。轻症感染仅表现为发热、咽痛、咳嗽等“感冒”症状，部分人感染后出现发热、咳嗽、呼吸增快、肺部啰音等肺炎表现，并有肺炎的影像学改变。需要进行抗感染和对症治疗。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;4.水痘</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;水痘是由水痘-带状疱疹病毒初次感染引起的急性传染病。主要发生在婴幼儿和学龄前儿童，成人发病症状比儿童更重，以发热及皮肤和黏膜成批出现周身性红色斑丘疹、疱疹、痂疹为特征，皮疹呈向心性分布，主要发生在胸、腹、背，四肢很少。冬春两季多发，传染力极强，水痘患者是唯一的传染源。自发病前1～2天直至皮疹干燥结痂期均有传染性，接触或飞沫吸入均可感染，易感儿发病率可达95%以上。该病为自限性疾病，一般不留瘢痕，病后可获得永久免疫。有时病毒以静止状态存留于神经节，多年后感染复发出现带状疱疹。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;5.麻疹</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;麻疹是由麻疹病毒引起的急性、出疹性呼吸道传染病，属于乙类传染病，其主要的临床症状可概括为“烧3天，出3天，退3天”，分别对应的前驱期、出疹期、恢复期。前驱期主要症状是发热、咳嗽、流鼻涕等感冒症状，口腔两颊黏膜近臼齿处可见麻疹黏膜斑，此阶段传染性最强；出疹期由面部开始，自上而下开始出皮疹，颜色由浅变深，皮疹为玫瑰色斑丘疹，可散在分布，或不同程度融合。疹退后有糠麸样脱屑和棕褐色色素沉着。体温可高达40℃；恢复期皮疹开始逐渐消退，体温也开始恢复正常。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;麻疹患者是唯一传染源，又称“见面传”，可见传染性之强，患者发热前4天至出疹后4天均具有传染性。麻疹病毒主要通过患者喷嚏、咳嗽和大声说话时排出的飞沫或接触感染者的鼻咽分泌物传播。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;6.流行性腮腺炎</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;流行性腮腺炎简称流腮，俗称痄腮。四季均有流行，以冬、春季常见。是儿童和青少年期常见的呼吸道传染病。它是由腮腺炎病毒引起的急性、全身性传染病，患者可有倦怠、畏寒、食欲不振、低热、头痛等症状。主要表现为一侧或两侧腮腺以耳垂为中心，向前、后、下肿大，表面发热，有触痛，开口和咀嚼时疼痛明显，食酸性食物胀痛加剧。常见的并发症为病毒脑炎、睾丸炎、胰腺炎及卵巢炎。病人是传染源，直接接触、飞沫、唾液的吸入为主要传播途径。接触病人后2-3周发病。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;7.手足口病</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;手足口病是由多种肠道病毒引起的传染性疾病，以发热和手、口腔、足部等部位的皮疹或疱疹为主要特征，可伴有咳嗽、流涕、食欲不振等症状，重症伴有神经系统并发症和多器官衰竭，可导致死亡。人手足口病的好发年龄为6月龄-5岁，在3岁内更为常见。人对肠道病毒普遍易感，不同年龄组均可感染发病。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;手足口病的患儿和隐性感染者为主要传染源，该病隐性感染率高，可通过感染者的粪便、咽喉分泌物、唾液和疱疹液等广泛传播。以密切接触及呼吸道飞沫传播为主，饮用或食入被病毒污染的水和食物亦可感染。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;二、呼吸道传染病防护措施</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;1.常通风。</strong>应经常开窗通风，保持室内空气流通、新鲜，每天保持良好通风不少于1小时，尽量让阳光照射到室内，常晒被褥和衣物，勤打扫室内环境卫生。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;2.勤洗手。</strong>养成饭前便后、接触公共物品后、回寝室（家）后、接触呼吸道分泌物后(如打喷嚏后)洗手的习惯，避免用脏手接触眼睛、口鼻等。洗手使用洗手液或肥皂并用流动水冲洗。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;3.多喝水。</strong>喝水能保持上呼吸道黏膜湿润，能有效抵御病毒的入侵，还能加速机体代谢，有利于体内代谢废物的排出，净化体内环境。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;4.强体魄。</strong>运动能加速血液循环，增强心肺功能，促进身心健康，适当增加户外活动，坚持体育锻炼，对人体的呼吸功能有很大的益处。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;5.养习惯。</strong>保证充足睡眠、均衡营养、适当增加蛋白质和维生素的摄入、不吸烟、少饮酒、注意保暖受凉防寒、不随地吐痰，养成良好的生活习惯，提高自身免疫力。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;6.少出门。</strong>传染病流行期间尽量不到或少到人群聚集的地方，不到病患居住的房间窜门、聊天，与人交谈时注意保持安全距离。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;7.戴口罩。</strong>正确科学佩戴口罩是预防呼吸道传染病性价比最高、最便捷、也是最有效的防护措施。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;8.早治疗。</strong>一旦出现呼吸道症状时，应及时就医，切忌不当一回事，更不能胡乱买药吃，乱用退热药和抗生素，以免延误或掩盖病情。</p>');
INSERT INTO `news` VALUES (103, '2024-04-10 23:23:30', '水痘进入高发期，这些“战痘”知识一定要知道', '水痘(Varicella,Chickenpox)，又称“见面传”，是由水痘—带状疱疹病毒(Varicella-Zoster Virus，VZV)感染引起的一种呼吸道传染病，传染性强。以斑疹、丘疹、疱疹、结痂同时出现为特点。多出现在冬春两个季节，传染力强，接触或飞沫均可传染。', 'upload/1713600422439.png', '<p class=\"ql-align-justify\">一、水痘的病原学特征</p><p class=\"ql-align-justify\">&nbsp;&nbsp;水痘-带状疱疹病毒（Varicella-Zoster Virus，VZV）为有囊膜的双链 DNA 病毒，属正疱疹病毒科、α疱疹病毒亚科、 水痘疱疹病毒属，又称为人类α3 型疱疹病毒。VZV 仅有1个血清型，<u>人类是唯一自然宿主</u>。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;二、水痘的传播途径</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;（一）传染源</strong></p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;&nbsp;</strong><u>水痘和带状疱疹病人</u>是主要传染源。传染期通常从出疹前 1—2天开始到所有皮损干燥结痂为止。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;（二）传播途径</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;1.呼吸道传播：吸入含有病毒的飞沫、气溶胶可导致感染；</p><p class=\"ql-align-justify\">&nbsp;&nbsp;2.接触传播：接触患者疱液、黏膜分泌物及污染物可导致感染；</p><p class=\"ql-align-justify\">&nbsp;&nbsp;3.母婴传播：孕妇感染后，可垂直传播给胎儿。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;&nbsp;</strong><u>感染后的人群，可获长久免疫，罕见再感染。</u></p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20240415/25cea5cdeceb4657b486965bc6fa67d4.jpg\" height=\"693\" width=\"451\"></p><p class=\"ql-align-center\"><strong>&nbsp;&nbsp;&nbsp;</strong>（图片来源网络）</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;（三）易感人群</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人群普遍易感。初次感染后可获长久免疫，罕见再感染。</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20240415/575de91ecd6348f4ba0a8339ab4c5bf4.png\" height=\"366\" width=\"365\"></p><p class=\"ql-align-center\">&nbsp;&nbsp;&nbsp;（图片来源网络）</p><p class=\"ql-align-justify\">&nbsp;&nbsp;三、临床表现</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;潜伏期为10～21天，多为14天。多于发热当天出疹，</strong>皮疹有以下特点:</p><p class=\"ql-align-justify\">&nbsp;&nbsp;1.先见于躯干、头部，后延及全身。皮疹发展迅速，开始为红斑疹，数小时变为丘疹，逐渐形成疯疹、结痂，伴皮肤瘙痒。皮疹分批出现，同一部位可见斑疹、丘疹、疱疹和结痂同时存在。1—2周后痂皮脱落，色素沉着可持续数周一般不留瘢痕。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;2.皮疹常呈椭圆形，3—5mm，周围有红晕，疱疹浅表易破，顶部可见脐凹。疱液初为透明，后混浊，若继发细菌感染可呈脓性。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;3.皮疹呈向心性分布，躯干最多，其次为头面部及四肢近端，数目由数个至数千个不等。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;4.口腔、眼结合膜等处黏膜可发生浅表疱疹，易破溃形成浅表性溃疡，伴有疼痛。通常情况下，如果没有并发症，水痘会2周左右自愈，且预后一般良好。</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20240415/ed6101d694544d81a0ff2f7ee873903a.png\" height=\"322\" width=\"600\"></p><p class=\"ql-align-center\">&nbsp;&nbsp;<strong style=\"color: black;\">图说水痘（来源：校医院保健科制作）</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20240415/90d113a1a9d140be8d462330b9a1487a.jpg\" height=\"284\" width=\"468\"></p><p class=\"ql-align-center\">&nbsp;&nbsp;（图片来源网络）</p><p class=\"ql-align-justify\">&nbsp;&nbsp;三、预防水痘我们应该怎么做</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20240415/e1d8ca407f4c4922b7fab43b3a1732f0.gif\" height=\"366\" width=\"401\"></p><p class=\"ql-align-center\"><strong>&nbsp;&nbsp;&nbsp;</strong>（图片来源网络）</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;(一)一般预防措施</strong></p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;</strong>&nbsp;1.加强对传染源的管理。患者应隔离至全部皮疹干燥结痂。各学院辅导员老师要严格落实晨午检、因病缺课登记、疫情报告、通风消毒等防控措施。密切关注学生健康状况，发现水痘或疑似水痘应及时报告校医院，隔离传染源，患病学生必须隔离，待结痂干燥掉痂后方能参加集体生活和学习</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;&nbsp;</strong>2.切断传播途径。做好环境卫生、居室卫生、个人卫生、营养卫生，多开门窗通风换气，少到人口密集、空气不流通的场所活动。有大太阳的日子，一定要勤晒被子。对地面、桌子可以用84消毒液稀释后进行擦拭。有条件的室内亦可规范使用紫外线灯进行消毒，消毒后提前通风才可进入室内。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;&nbsp;</strong>3.保护易感人群。易感人群多参加户外锻炼，加强防病知识宣传，增强自我防护意识，目前最有效的防治方法还是接种疫苗，以提高免疫力。</p><p class=\"ql-align-justify\"><strong>&nbsp;&nbsp;(二)暴露后预防</strong></p><p class=\"ql-align-justify\">&nbsp;&nbsp;1.未患过水痘且未全程接种水痘疫苗者，存在暴露风险时，可接种水痘疫苗。暴露后可在3天内紧急接种疫苗。不能接种水痘疫苗但有重症高风险因素的人群发生暴露后，建议及时到校医院就诊。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;2.水痘疫苗属二类疫苗，按照“知情、同意、自愿、自费”的原则接种。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;接种提示:</p><p class=\"ql-align-justify\">&nbsp;&nbsp;从未接种过：需接种2针，至少间隔4-8周。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;接种过1剂：保证间隔4-8周的前提下，尽早接种第2剂。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;接种疫苗后一般两周左右产生抗体，抗体阳转率为98%，处于潜伏期的人员接种疫苗后仍然可能发病，但能减轻病情。&nbsp;</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-right\">（参考：国家卫生健康委员会《水痘诊疗方案（2023 年版）》）</p><p class=\"ql-align-justify\"><br></p>');
INSERT INTO `news` VALUES (104, '2024-04-11 23:23:30', '天气回温，如何预防沙门氏菌引起的细菌性食物中毒？', '天气回温，如何预防沙门氏菌引起的细菌性食物中毒？食物中毒指食用了被有毒有害物质污染的食品或含有毒有害物质的食品后出现的急性、亚急性疾病，对人体危害大，可造成死亡。', 'upload/1713600592318.jpg', '<p><img alt=\"\" height=\"274\" src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20210610/e3377d2285f74131bd00eab24dff432f.jpg\" width=\"468\"></p><p>沙门氏菌是一种常见食源性致病菌，属肠杆菌科，革兰氏阴性肠道杆菌。按其抗原成分，可分为甲、乙、丙、丁、戊等基本菌组。其中与人体疾病有关的主要有甲组的副伤寒甲杆菌，乙组的副伤寒乙杆菌和鼠伤寒杆菌，丙组的副伤寒丙杆菌和猪霍乱杆菌，丁组的伤寒杆菌和肠炎杆菌等。我国70%~80%的细菌性食物中毒是由其引起的。沙门氏菌可通过污染畜禽肉、鸡蛋、牛奶等引起食源性疾病。发生季节多为夏秋两季,发生场所多为集体食堂。</p><p>&nbsp;</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20210610/cb014430579d425c9b5b22fff757f6c8.jpg\" height=\"209\" width=\"344\"></p><p>&nbsp;</p><p>&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;发生原因？</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.卫生状况不良。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.加工过程和储存期间的温度控制不当。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.食材存放时间长,冷藏措施不到位,有助于沙门氏菌的滋生和繁殖。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.人员卫生意识薄弱,消毒操作不规范,增大了交叉污染的概率。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;5.烹调后的熟制品可受到带菌容器烹调工具等的污染。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;如何预防？</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.外出就餐时，选择卫生条件良好的餐饮场所。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.少吃路边摊，尤其肉类要适量食用。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.购买即食食品时，看清生产日期及贮存方式。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.选购新鲜食材，烹调时要彻底加热。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;5.食物存冰箱后生熟分区。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;6.注意个人和家庭卫生。</p>');
INSERT INTO `news` VALUES (105, '2024-04-17 23:23:30', '“睡个好觉”到底有多重要', '人的一生有三分之一的时间在睡眠中度过，睡眠与健康有着千丝万缕的联系。但对一些人来说，有个好睡眠是件奢侈的事，目前我国睡眠障碍发生率日益升高且呈年轻化趋势。我国青少年睡眠障碍发生率约为26%，60岁以上老年人群中睡眠障碍的发生率约为35.9%。', 'upload/1713601052104.png', '<p>人的一生有三分之一的时间在睡眠中度过，睡眠与健康有着千丝万缕的联系。但对一些人来说，有个好睡眠是件奢侈的事，目前我国睡眠障碍发生率日益升高且呈年轻化趋势。我国青少年睡眠障碍发生率约为26%，60岁以上老年人群中睡眠障碍的发生率约为35.9%。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;睡眠障碍是“慢性杀手”</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;人类睡眠的过程并不是一成不变的，在整夜睡眠中，每90-100分钟为一个周期，非快速眼动睡眠和快速眼动睡眠交替出现，每夜大约有5-6个周期。失眠患者可能会出现入睡困难、容易醒、深睡眠少的特点。深睡眠是高质量睡眠的关键，占整夜睡眠的13%-22%。在此期间，人体耗能减少、心率减慢、血压降低、呼吸慢而有规律，大脑得到充分休息，对恢复体力和心理功能起到重要作用。&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;随着年龄的增长，睡眠时间呈现片段化特点，睡眠时间减少、效率下降等会对健康带来一系列影响。研究证据表明，充足的睡眠可以维持大脑功能的正常运转，有助于学习记忆、调节情绪、恢复体力等，保障人类身心健康。“健康中国行动”15项重大行动之一的心理健康促进行动中的一项就倡导睡眠健康，要保证充足睡眠时间，成年人每日平均睡眠时间为6-7个小时。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;睡眠障碍会导致人的精神压力增加，从而导致多种精神疾病的发生，如焦虑障碍、抑郁障碍、精神分裂症等；可引起多种躯体疾病，如高血压、心肌梗死、高脂血症、肥胖、免疫功能失调等，还可引发早产；能带来认知受损，导致注意力不集中、记忆力下降等。可以说，睡眠障碍是不容忽视的“慢性杀手”。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;六个认识误区要厘清</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;睡眠如此重要，但很多人对睡眠的理解和认识并不充分，甚至存在着很多误区。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;误区一：边看电视边睡觉 </strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;在床上怎么都睡不着，一坐在沙发上看电视就能睡着，但是这种方法特别不可取。睡觉一定要在床上，而且在床上不要做与睡觉无关的事情，建立睡眠与床之间的联系。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;误区二：喝酒有助于睡眠 </strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;酒精影响睡眠的维持，常在睡前喝酒，对睡眠的破坏作用会持续增加。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;误区三：睡前运动益于睡眠 </strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;适量的运动可提升晚上的睡眠质量，但如果临睡前才开始运动会使大脑过度兴奋，影响睡眠效果，理想的运动时间应当是午后。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;误区四：害怕吃安眠药 </strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;许多人怕吃安眠药有副作用，事实上只要能缓解压力，把睡眠调节好，是有必要吃药的。需要注意的是，吃药应当遵照医嘱，不可私自用药，或者停用、换药。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;误区五：晚上失眠白天补觉 </strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;因各种原因晚睡的人，常通过延迟起床时间来补偿睡眠，这样会形成习惯性晚睡晚起的恶性循环。</p><p>&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;误区六：打呼噜的人睡得香 </strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;打呼噜时出现的呼吸暂停可以导致身体各个器官缺氧，长此以往会引起人体各个系统的功能紊乱。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>这些因素会影响睡眠</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;想拥有好的睡眠需要注意什么？影响睡眠的因素有哪些？</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>光照：</strong>人在光线充足的房间中睡觉时，心率会增加，即便睡着了，自主神经系统也可能会被激活，光线的照射通过视神经进入大脑，从而刺激神经系统，导致睡眠质量差。研究发现，与夜间睡在灯光昏暗的房间相比，睡在中等强度的光照环境下会损害心血管功能，并在第二天早上导致胰岛素抵抗水平升高，从而增加人患心脏病和糖尿病的风险。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;环境温度：</strong>有研究发现，环境温度可以改变生物的睡眠结构，并对褪黑素的分泌产生关键作用，因此适宜的睡眠温度有利于让人们享受一个结构更优、质量更好的睡眠。</p><p>&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;使用电子产品：</strong>电子产品发出的短波光会对生物体内正常的生物节律产生影响，从而引发睡眠问题。一项关于入睡前读电子书和印刷书对睡眠影响差异的研究表明，与阅读印刷书的受试者相比，阅读电子书的受试者表现出入睡困难、夜间睡意降低、生物时相后移、褪黑素分泌降低等。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;运动：</strong>身体活动水平低可能造成睡眠质量差以及各种健康问题，包括心血管疾病、肥胖、2型糖尿病、抑郁症和焦虑症等。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>饮食：</strong>饮食会影响睡眠质量好坏，科学饮食有助于睡眠。首先，注意按时吃三餐，尤其是早餐，这样可以调整体内运行机制，对睡眠产生积极的影响。其次，最好不要在睡前吃东西，晚餐最好在睡前2-3小时结束，晚上也不要吃太多东西，不要服用酒精、咖啡、浓茶等兴奋性物质。</p><p>&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;褪黑素分泌：</strong>褪黑素是大脑松果体分泌的激素之一，大约在晚上11时开始分泌，在凌晨12时至1时达到顶峰，早上7时停止分泌，能帮助缩短入睡时间，改善睡眠质量，减少睡眠中觉醒次数，延长深睡眠。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;因此，不少人会自行服用褪黑素及其类似物以改善睡眠，褪黑素也成为不少“失眠青年”的必备品。但该类药物并不是对所有失眠都有效，特别是对因精神障碍、躯体疾病等因素引起的失眠很可能无效，且长期服用褪黑素还会影响体内褪黑素的正常分泌水平，进一步导致睡眠功能紊乱。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;解决入睡难有方法，&nbsp;当你入睡困难时，不妨有意识地想想那些最能使自己感觉舒适、温馨、宁静的美好情景。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;不要抱着“一定要快点睡着”的暗示或“今天又睡不着”的担心，强制观念妨碍身体进入睡眠模式。用积极的语言来鼓励自己，换个角度来看待引起烦恼的事情。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;调节睡眠可以使用睡眠限制、放松训练、刺激控制疗法等方式。睡眠限制，就是缩短卧床清醒时间，将躺在床上的时间严格限制为真正睡着的时间，增加睡眠压力以促进快速入睡。放松训练，就是进行渐进性肌肉松弛训练、冥想。刺激控制疗法，就是当出现困意时才上床，当睡不着时要离开床，在卧室里只做与睡觉相关的事情，每天固定时间起床。</p><p>&nbsp;</p><p>来源：健康报</p>');
INSERT INTO `news` VALUES (106, '2024-04-22 23:23:30', '常见公共用品可能存在的微生物污染隐患', '公共场所是根据公众生活活动和社会活动的需要，人工建成的具有多种服务功能的封闭式或开放式或移动式的公共建筑设施。公共场所人员相对密集,流动性差,公用用品供人群反复使用容易被污染,造成微生物感染。若消毒不彻底或不消毒,可能会引起皮肤病、消化道疾病和性病的传播。', 'upload/1713601259505.jpg', '<p>&nbsp;公共场所是根据公众生活活动和社会活动的需要，人工建成的具有多种服务功能的封闭式或开放式或移动式的公共建筑设施。公共场所人员相对密集,流动性差,公用用品供人群反复使用容易被污染,造成微生物感染。若消毒不彻底或不消毒,可能会引起皮肤病、消化道疾病和性病的传播。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;茶具、床上用品和毛巾污染相对严重的可能原因：</p><p>&nbsp;</p><p class=\"ql-align-center\"><img src=\"https://ldxyy.lzu.edu.cn/ldxyy/upload/images/20220324/ee722806a2f540a6b0f9c4311258e6ae.png\" height=\"507\" width=\"899\"></p><p>&nbsp;</p><p>·毛巾和茶具类公共用品使用频繁,没有实现一客一换。</p><p>·公共用品仅简单清洗，甚至有的不清洗,不消毒就重复使用。</p><p>·清洁人员简化消毒步骤和消毒后未晾晒完全就给顾客使用。</p><p>·有的场所更存在毛巾、茶具洁污混放的现象，造成二次污染。</p><p>·如何预防公共用品隐藏的微生物污染隐患？</p><p>·尽量不使用与人体皮肤直接接触的公共用品。</p><p>·在公共场所尽量自带水杯，避免使用公共杯具。</p><p>·在能力范围内选择卫生条件相对好的正规公共场所。</p><p>·出入公共场所后，做好个人卫生防护。</p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1713788171397 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1648136260892, '2030-03-24 23:37:40', 1648136137399, 1648136204357, 'keshixinxi', '第一科室', 'upload/1648136195194.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1713788161066, '2024-04-22 20:16:00', 11, 35, 'keshixinxi', '耳鼻喉科', 'upload/1713602215545.png', '1', NULL);
INSERT INTO `storeup` VALUES (1713788171396, '2024-04-22 20:16:10', 11, 31, 'keshixinxi', '内科', 'upload/1713602119675.png', '1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1648136137399, '11', 'yonghu', '用户', 'fqsc4fl80zgpf7uixxduzmz3ig0szle4', '2030-03-24 23:35:41', '2030-03-25 00:42:31');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', '4xuy4iqf3mouyhkbajen5giz1osa5b6k', '2030-03-24 23:36:16', '2024-05-26 10:56:06');
INSERT INTO `token` VALUES (3, 1648136171830, '22', 'yisheng', '医生', 'tv45yzgfconqi5tm8x4vxzq8xvh49fag', '2030-03-24 23:41:13', '2030-03-25 00:41:14');
INSERT INTO `token` VALUES (4, 11, '账号1', 'yonghu', '用户', 'wfrq4o6ob54xezbmgacwwfo1n184nu33', '2023-05-03 01:31:16', '2024-05-26 11:29:10');
INSERT INTO `token` VALUES (5, 21, '医生账号1', 'yisheng', '医生', '3asygk8o5zi3mnl4p3a5drlcgkif0241', '2023-05-03 03:46:33', '2024-05-26 11:30:16');
INSERT INTO `token` VALUES (6, 22, '医生账号2', 'yisheng', '医生', 'how2mhlyep11btg5ex7327x226h45n9j', '2024-04-07 21:04:06', '2024-04-07 22:04:06');
INSERT INTO `token` VALUES (7, 16, '账号6', 'yonghu', '用户', 'visg291ejgg66so2cl7kct2xtueqlm1r', '2024-04-07 21:44:23', '2024-04-08 12:04:39');
INSERT INTO `token` VALUES (8, 25, '医生账号5', 'yisheng', '医生', 'wdrxlc37a4y8e3dk4ks1pzd4obgw9yb6', '2024-04-07 21:50:01', '2024-04-09 16:01:19');
INSERT INTO `token` VALUES (9, 15, '账号5', 'yonghu', '用户', '8mfxp0cj57a86kfzezypluht8db64wm0', '2024-04-07 21:51:13', '2024-04-07 22:51:14');
INSERT INTO `token` VALUES (10, 12, '账号2', 'yonghu', '用户', '4n9i2ggvsy8bdwzvnj0ctz1dz2b7x2bl', '2024-04-24 15:52:54', '2024-04-24 16:54:52');
INSERT INTO `token` VALUES (11, 13, '账号3', 'yonghu', '用户', '7u2ytpceicco3sfr5saahphtd71is3zz', '2024-04-24 16:03:03', '2024-05-23 11:13:46');
INSERT INTO `token` VALUES (12, 1714962992384, '账号8', 'yonghu', '用户', 'h0juwioc1umpx1j8d8ph62qqsr7x22ji', '2024-05-06 10:36:44', '2024-05-06 11:36:44');
INSERT INTO `token` VALUES (13, 23, '医生账号3', 'yisheng', '医生', 'rb8fbfry0cxu9ghiohalnyon9erolrqe', '2024-05-23 10:09:36', '2024-05-26 11:13:34');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2030-03-24 23:23:30');

-- ----------------------------
-- Table structure for yaofangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yaofangxinxi`;
CREATE TABLE `yaofangxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `jibingmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '疾病名称',
  `yaofang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '药方',
  `jiliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '剂量',
  `yongfayongliang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '用法用量',
  `zongfeiyong` float DEFAULT NULL COMMENT '总费用',
  `kaiyaoshijian` datetime(0) DEFAULT NULL COMMENT '开药时间',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716430342556 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药方信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yaofangxinxi
-- ----------------------------
INSERT INTO `yaofangxinxi` VALUES (71, '2024-04-24 23:23:30', '账号1', '姓名1', '医生账号1', '医生姓名1', '疾病名称1', '药方1', '剂量1', '用法用量1', 80, '2030-03-24 23:23:30', '已支付');
INSERT INTO `yaofangxinxi` VALUES (72, '2024-04-24 23:23:30', '账号2', '姓名2', '医生账号2', '医生姓名2', '疾病名称2', '药方2', '剂量2', '用法用量2', 80, '2030-03-24 23:23:30', '未支付');
INSERT INTO `yaofangxinxi` VALUES (73, '2024-04-24 23:23:30', '账号3', '姓名3', '医生账号3', '医生姓名3', '疾病名称3', '药方3', '剂量3', '用法用量3', 80, '2024-04-24 23:23:30', '已支付');
INSERT INTO `yaofangxinxi` VALUES (74, '2024-04-24 23:23:30', '账号4', '姓名4', '医生账号4', '医生姓名4', '疾病名称4', '药方4', '剂量4', '用法用量4', 80, '2030-03-24 23:23:30', '未支付');
INSERT INTO `yaofangxinxi` VALUES (75, '2024-04-24 23:23:30', '账号5', '姓名5', '医生账号5', '医生姓名5', '疾病名称5', '药方5', '剂量5', '用法用量5', 80, '2030-03-24 23:23:30', '未支付');
INSERT INTO `yaofangxinxi` VALUES (76, '2024-04-24 23:23:30', '账号6', '姓名6', '医生账号6', '医生姓名6', '疾病名称6', '药方6', '剂量6', '用法用量6', 80, '2030-03-24 23:23:30', '未支付');
INSERT INTO `yaofangxinxi` VALUES (1716430342555, '2024-05-23 10:12:22', '账号1', '姓名1', '医生账号3', '医生姓名3', '疾病名称3', '药方3', '剂量3', '用法用量3', 130, '2024-05-08 10:11:38', '未支付');

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `yiling` int(11) DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yishengzhanghao`(`yishengzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES (21, '2030-03-24 23:23:30', '医生账号1', '1', '医生姓名1', 45, '男', 21, '13823888811', 'upload/1711807335414.png');
INSERT INTO `yisheng` VALUES (22, '2030-03-24 23:23:30', '医生账号2', '2', '医生姓名2', 45, '男', 25, '13823888822', 'upload/1713775708633.png');
INSERT INTO `yisheng` VALUES (23, '2030-03-24 23:23:30', '医生账号3', '3', '医生姓名3', 50, '女', 26, '13823888833', 'upload/1713598455479.png');
INSERT INTO `yisheng` VALUES (24, '2030-03-24 23:23:30', '医生账号4', '4', '医生姓名4', 55, '男', 34, '13823888844', 'upload/1713598475399.png');
INSERT INTO `yisheng` VALUES (25, '2030-03-24 23:23:30', '医生账号5', '5', '医生姓名5', 53, '男', 32, '13823888855', 'upload/1713598490705.png');
INSERT INTO `yisheng` VALUES (26, '2030-03-24 23:23:30', '医生账号6', '6', '医生姓名6', 46, '男', 25, '13823888866', 'upload/1713598508457.png');
INSERT INTO `yisheng` VALUES (27, '2030-03-24 23:36:11', '医生账号7', '7', '吴雯', 40, '女', 22, '13823888877', 'upload/1648136479704.jpg');

-- ----------------------------
-- Table structure for yishengzhenliao
-- ----------------------------
DROP TABLE IF EXISTS `yishengzhenliao`;
CREATE TABLE `yishengzhenliao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhenliaobianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '诊疗编号',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `jiuzhenshijian` datetime(0) DEFAULT NULL COMMENT '就诊时间',
  `zhengzhuangmiaoshu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '症状描述',
  `chubuzhenduan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '初步诊断',
  `yizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '医嘱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhenliaobianhao`(`zhenliaobianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716430212416 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生诊疗' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yishengzhenliao
-- ----------------------------
INSERT INTO `yishengzhenliao` VALUES (61, '2024-04-24 23:23:30', '1111111111', '医生账号1', '医生姓名1', '账号1', '姓名1', '2024-04-24 23:23:30', '症状描述1', '初步诊断1', '医嘱1');
INSERT INTO `yishengzhenliao` VALUES (62, '2024-04-24 23:23:30', '2222222222', '医生账号2', '医生姓名2', '账号2', '姓名2', '2024-04-24 23:23:30', '症状描述2', '初步诊断2', '医嘱2');
INSERT INTO `yishengzhenliao` VALUES (63, '2024-04-24 23:23:30', '3333333333', '医生账号3', '医生姓名3', '账号3', '姓名3', '2024-04-24 23:23:30', '症状描述3', '初步诊断3', '医嘱3');
INSERT INTO `yishengzhenliao` VALUES (64, '2024-04-24 23:23:30', '4444444444', '医生账号4', '医生姓名4', '账号4', '姓名4', '2024-04-24 23:23:30', '症状描述4', '初步诊断4', '医嘱4');
INSERT INTO `yishengzhenliao` VALUES (65, '2024-04-24 23:23:30', '5555555555', '医生账号5', '医生姓名5', '账号5', '姓名5', '2024-04-24 23:23:30', '症状描述5', '初步诊断5', '医嘱5');
INSERT INTO `yishengzhenliao` VALUES (66, '2024-04-24 23:23:30', '6666666666', '医生账号6', '医生姓名6', '账号6', '姓名6', '2024-04-24 23:23:30', '症状描述6', '初步诊断6', '医嘱6');
INSERT INTO `yishengzhenliao` VALUES (1716430212415, '2024-05-23 10:10:12', '1716430193630', '医生账号3', '医生姓名3', '账号1', '姓名1', '2024-05-08 00:00:00', '症状1', '诊断1', '医嘱1');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '照片',
  `chushengriqi` datetime(0) DEFAULT NULL COMMENT '出生日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714962992385 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2030-03-24 23:23:30', '账号1', '1', '姓名1', 32, '男', '13823888881', '440300199101010001', 'upload/yonghu_zhaopian1.jpg', '1991-01-01 00:00:00');
INSERT INTO `yonghu` VALUES (12, '2030-03-24 23:23:30', '账号2', '2', '姓名2', 31, '女', '13823888882', '440300199202020002', 'upload/yonghu_zhaopian2.jpg', '1992-02-02 00:00:00');
INSERT INTO `yonghu` VALUES (13, '2030-03-24 23:23:30', '账号3', '3', '姓名3', 30, '女', '13823888883', '440300199303030002', 'upload/yonghu_zhaopian3.jpg', '1993-03-03 00:00:00');
INSERT INTO `yonghu` VALUES (14, '2030-03-24 23:23:30', '账号4', '4', '姓名4', 29, '男', '13823888884', '440300199404040001', 'upload/yonghu_zhaopian4.jpg', '1994-04-04 00:00:00');
INSERT INTO `yonghu` VALUES (15, '2030-03-24 23:23:30', '账号5', '5', '姓名5', 28, '男', '13823888885', '440300199505050001', 'upload/yonghu_zhaopian5.jpg', '1995-05-05 00:00:00');
INSERT INTO `yonghu` VALUES (16, '2030-03-24 23:23:30', '账号6', '6', '姓名6', 27, '女', '13823888886', '440300199606060002', 'upload/yonghu_zhaopian6.jpg', '1996-06-06 00:00:00');
INSERT INTO `yonghu` VALUES (17, '2030-03-24 23:35:37', '11', '7', '王一', 24, '女', '13823888887', '440300199907070002', 'upload/1648136147696.jpg', '1999-07-07 00:00:00');
INSERT INTO `yonghu` VALUES (1714962992384, '2024-05-06 10:36:32', '账号8', '8', '季八', 48, '男', '13823888880', '440300197608080001', NULL, '1976-06-25 20:51:09');

-- ----------------------------
-- Table structure for zaixianzixun
-- ----------------------------
DROP TABLE IF EXISTS `zaixianzixun`;
CREATE TABLE `zaixianzixun`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `zixunwenti` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询问题',
  `zixunshijian` datetime(0) DEFAULT NULL COMMENT '咨询时间',
  `yishengzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '审核回复',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716432521926 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线咨询' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zaixianzixun
-- ----------------------------
INSERT INTO `zaixianzixun` VALUES (51, '2024-03-24 08:23:30', '标题1', '咨询问题1', '2024-03-24 10:50:30', '医生账号1', '医生姓名1', '账号1', '姓名1', '否', '', 14);
INSERT INTO `zaixianzixun` VALUES (52, '2024-03-24 08:23:30', '标题2', '咨询问题2', '2024-03-24 08:25:30', '医生账号2', '医生姓名2', '账号2', '姓名2', '是', '回复2', 2);
INSERT INTO `zaixianzixun` VALUES (53, '2024-03-24 10:23:30', '标题3', '咨询问题3', '2024-03-24 12:23:30', '医生账号3', '医生姓名3', '账号3', '姓名3', '是', '回复3', 5);
INSERT INTO `zaixianzixun` VALUES (54, '2024-03-24 13:30:30', '标题4', '咨询问题4', '2024-03-24 15:23:30', '医生账号4', '医生姓名4', '账号4', '姓名4', '是', '回复4', 4);
INSERT INTO `zaixianzixun` VALUES (55, '2024-03-24 13:23:30', '标题5', '咨询问题5', '2024-03-24 13:45:30', '医生账号5', '医生姓名5', '账号5', '姓名5', '是', '回复5', 5);
INSERT INTO `zaixianzixun` VALUES (56, '2024-03-24 20:23:30', '标题6', '咨询问题6', '2024-03-24 21:23:30', '医生账号6', '医生姓名6', '账号6', '姓名6', '是', '回复6', 7);
INSERT INTO `zaixianzixun` VALUES (1712323766348, '2024-04-05 21:29:25', '牙痛', '<p>平时不吃甜食，但牙齿总痛，还长了蛀牙</p>', '2024-04-05 21:24:40', '医生账号1', '医生姓名1', '账号1', '姓名1', '是', '初步判定可能是牙龈过敏，需多刷牙，建议使用医用专治过敏牙膏', 12);
INSERT INTO `zaixianzixun` VALUES (1712545304950, '2024-04-08 11:01:44', '嗓子疼', '<p>嗓子经常干，吞咽口水疼痛，请问吃什么药对润嗓效果好</p>', '2024-04-08 10:59:56', '医生账号5', '医生姓名5', '账号6', '姓名6', '是', '可以服用含片，比较严重的话建议配合消炎药', 3);
INSERT INTO `zaixianzixun` VALUES (1716432521925, '2024-05-23 10:48:41', '咨询体检报告', '<p><img src=\"../../../upload/1716432494216.png\" /></p>', '2024-05-20 10:47:03', '医生账号1', '医生姓名1', '账号1', '姓名1', '否', NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;
