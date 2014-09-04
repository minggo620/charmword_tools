/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : charmword

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2014-09-04 18:01:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `reviewId` int(11) NOT NULL auto_increment,
  `todayCount` int(11) default '0' COMMENT '几天需要复习的单词数量',
  `lockCount` int(11) default '0' COMMENT '锁屏次数',
  `isReview` int(11) default '0' COMMENT '复习与否 0：没有复习 2：复习',
  `datetime` varchar(255) default NULL COMMENT '复习的时间',
  `dateStr` varchar(255) default NULL COMMENT '字符串时间 2014-09-03',
  `wordType` int(10) default '1' COMMENT '词的类型 1：四级高频',
  PRIMARY KEY  (`reviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `Id` int(11) NOT NULL auto_increment,
  `tea` varchar(255) default NULL,
  `eat` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '33', 'qq');
INSERT INTO `test` VALUES ('2', '2', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `imei` varchar(255) default NULL,
  `mid` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `avaster` varchar(255) default NULL,
  `wordType` int(11) default '1' COMMENT '当前用户选择单词类型 1：四级高频',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `Id` int(11) NOT NULL auto_increment,
  `wordID` int(11) NOT NULL default '0',
  `word` varchar(255) default NULL,
  `phonetics` varchar(255) default NULL,
  `voicePath` varchar(255) default NULL,
  `explain` varchar(255) default NULL,
  `wordType` varchar(255) default NULL,
  `example` varchar(255) default NULL,
  `exampleExplain` varchar(255) default NULL,
  `isnew` int(11) NOT NULL default '0' COMMENT '新词0：不是 1：是',
  `remembered` int(11) NOT NULL default '0' COMMENT '是否是熟悉0：不熟悉 1：熟悉',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4964 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('4279', '1', 'alter', '[\'ɔ:ltə]', null, 'v.改变，改动，变更', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4280', '2', 'burst', '[bə:st]', null, 'vi.,n.突然发生，爆裂', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4281', '3', 'dispose', '[dis\'pəuz]', null, 'vi.除掉；处置；解决；处理(of)', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4282', '4', 'blast', '[\'baiəu,blæst]', null, 'n.爆炸；气流 vi.炸，炸掉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4283', '5', 'consume', '[kən\'sju:m]', null, 'v.消耗，耗尽', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4284', '6', 'split', '[split]', null, 'v.劈开；割裂；分裂 a.裂开的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4285', '7', 'spit', '[spit]', null, 'v.吐（唾液等）；唾弃', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4286', '8', 'spill', '[spil]', null, 'v.溢出，溅出，倒出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4287', '9', 'slip', '[slip]', null, 'v.滑动，滑落；忽略', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4288', '10', 'slide', '[slaid]', null, 'v.滑动，滑落 n.滑动；滑面；幻灯片', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4289', '11', 'bacteria', '[bæk\'tiəriə]', null, 'n.细菌', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4290', '12', 'breed', '[bri:d]', null, 'n.种，品种 v.繁殖，产仔', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4291', '13', 'budget', '[\'bʌdʒit]', null, 'n.预算 v.编预算，作安排', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4292', '14', 'candidate', '[\'kændideit, -dət]', null, 'n.候选人', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4293', '15', 'campus', '[\'kæmpəs]', null, 'n.校园', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4294', '16', 'liberal', '[\'libərəl]', null, 'a.慷慨的；丰富的；自由的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4295', '17', 'transform', '[træns\'fɔ:m, trænz-, trɑ:n-]', null, 'v.转变，变革；变换', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4296', '18', 'transmit', '[trænz\'mit, træns-, trɑ:n-]', null, 'v.传播，播送；传递', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4297', '19', 'transplant', '[træns\'plɑ:nt, trænz-, trɑ:n-, -\'plænt]', null, 'v.移植', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4298', '20', 'transport', '[træn\'spɔːt; trɑːn-]', null, 'vt.运输，运送 n.运输，运输工具', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4299', '21', 'shift', '[ʃift]', null, 'v.转移；转动；转变', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4300', '22', 'vary', '[\'vεəri]', null, 'v.变化，改变；使多样化', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4301', '23', 'vanish', '[\'væniʃ]', null, 'vi.消灭，不见', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4302', '24', 'swallow', '[\'swɔləu]', null, 'v.吞下，咽下 n.燕子', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4303', '25', 'suspicion', '[sə\'spiʃən]', null, 'n.怀疑，疑心', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4304', '26', 'suspicious', '[sə\'spiʃəs]', null, 'a.怀疑的，可疑的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4305', '27', 'mild', '[maild]', null, 'a.温暖的，暖和的；温柔的，味淡的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4306', '28', 'tender', '[\'tendə]', null, 'a.温柔的；脆弱的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4307', '29', 'nuisance', '[\'nju:səns]', null, 'n.损害，妨害，讨厌（的人或事物）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4308', '30', 'insignificant', '[ɪnsɪg\'nɪfɪk(ə)nt]', null, 'a.无意义的，无足轻重的；无价值的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4309', '31', 'accelerate', '[ək\'seləreit]', null, 'vt.加速，促进', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4310', '32', 'absolute', '[\'æbsəlju:t, ,æbsə\'lju:t]', null, 'a.绝对的，无条件的；完全的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4311', '33', 'boundary', '[\'baundəri]', null, 'n.分界线，边界', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4312', '34', 'brake', '[breik]', null, 'n.刹车，制动器 v.刹住（车）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4313', '35', 'catalog', '[\'kætəlɔɡ]', null, 'n.目录（册） v.编目', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4314', '36', 'vague', '[veiɡ]', null, 'a.模糊的，不明确的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4315', '37', 'vain', '[vein]', null, 'n.徒劳，白费', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4316', '38', 'extinct', '[ik\'stiŋkt]', null, 'a.绝灭的，熄灭的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4317', '39', 'extraordinary', '[ik\'strɔ:dənəri, ,ekstrə\'ɔ:di-]', null, 'a.不平常的，特别的，非凡的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4318', '40', 'extreme', '[ik\'stri:m]', null, 'a.极度的，极端的 n.极端，过分', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4319', '41', 'agent', '[\'eidʒənt]', null, 'n.代理人，代理商；动因，原因', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4320', '42', 'alcohol', '[\'ælkəhɔl]', null, 'n.含酒精的饮料，酒精', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4321', '43', 'appeal', '[ə\'pi:l]', null, 'n./vi.呼吁，恳求', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4322', '44', 'appreciate', '[ə\'pri:ʃieit]', null, 'vt.重视，赏识，欣赏', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4323', '45', 'approve', '[ə\'pru:v]', null, 'v.赞成，同意，批准', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4324', '46', 'stimulate', '[\'stimjuleit]', null, 'vt.刺激，激励', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4325', '47', 'acquire', '[ə\'kwaiə]', null, 'vt.取得，获得；学到', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4326', '48', 'accomplish', '[ə\'kʌmpliʃ, ə\'kɔm-]', null, 'vt .完成，到达；实行', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4327', '49', 'network', '[\'netwə:k]', null, 'n.网状物；广播网，电视网；网络', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4328', '50', 'tide', '[taid]', null, 'n.潮汐；潮流', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4329', '51', 'tidy', '[\'taidi]', null, 'a.整洁的，整齐的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4330', '52', 'trace', '[treis]', null, 'vt.追踪，找到 n.痕迹，踪迹', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4331', '53', 'torture', '[\'tɔ:tʃə]', null, 'n./vt.拷打，折磨', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4332', '54', 'wander', '[\'wɔndə]', null, 'vi.漫游，闲逛', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4333', '55', 'wax', '[wæks]', null, 'n.蜡', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4334', '56', 'weave', '[wi:v]', null, 'v.织，编', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4335', '57', 'preserve', '[pri\'zə:v]', null, 'v.保护，保存，保持，维持', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4336', '61', 'abuse', '[ə\'bju:z, ə\'bju:s]', null, 'v.滥用，虐待；谩骂', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4337', '62', 'academic', '[,ækə\'demik]', null, 'a.学术的；高等院校的；研究院的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4338', '63', 'academy', '[ə\'kædəmi]', null, 'n.（高等）专科院校；学会', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4339', '64', 'battery', '[\'bætəri]', null, 'n.电池（组）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4340', '65', 'barrier', '[\'bæriə]', null, 'n.障碍；棚栏', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4341', '66', 'cargo', '[\'kɑ:ɡəu]', null, 'n.（船、飞机等装载的）货物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4342', '67', 'career', '[kə\'riə]', null, 'n.生涯，职业', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4343', '68', 'vessel', '[\'vesəl]', null, 'n.船舶；容器，器皿；血管', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4344', '69', 'vertical', '[\'və:tikəl]', null, 'a.垂直的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4345', '70', 'oblige', '[ə\'blaidʒ]', null, 'v.迫使，责成；使感激', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4346', '71', 'obscure', '[əb\'skjuə, ɔb-]', null, 'a.阴暗，模糊', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4347', '72', 'extent', '[ik\'stent]', null, 'n.程度，范围，大小，限度', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4348', '73', 'exterior', '[ik\'stiəriə]', null, 'n.外部，外表 a.外部的，外表的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4349', '74', 'external', '[ik\'stə:nəl]', null, 'a.外部的，外表的，外面的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4350', '75', 'petrol', '[\'petrəl]', null, 'n.汽油', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4351', '76', 'petroleum', '[pi\'trəuliəm, pə-]', null, 'n.石油', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4352', '77', 'delay', '[di\'lei]', null, 'vt./n.推迟，延误，耽搁', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4353', '78', 'decay', '[di\'kei]', null, 'vi.腐烂，腐朽', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4354', '79', 'decent', '[\'di:sənt]', null, 'a.像样的，体面的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4355', '80', 'route', '[ru:t, raut]', null, 'n.路；路线；航线', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4356', '81', 'ruin', '[\'ruin, \'ru:-]', null, 'v.毁坏，破坏 n.毁灭，[pl.]废墟', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4357', '82', 'sake', '[seik]', null, 'n.缘故，理由', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4358', '83', 'satellite', '[\'sætəlait]', null, 'n.卫星', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4359', '84', 'scale', '[skeil]', null, 'n.大小，规模；等级；刻度', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4360', '85', 'temple', '[\'templ]', null, 'n.庙宇', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4361', '86', 'tedious', '[\'ti:diəs, \'ti:dʒəs]', null, 'a.乏味道，单调的，', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4362', '87', 'tend', '[tend]', null, 'vi.易于，趋向', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4363', '88', 'tendency', '[\'tendənsi]', null, 'n.趋向，趋势', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4364', '89', 'ultimate', '[\'ʌltimət]', null, 'a.极端的，最大的，最终的 n.极端', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4365', '90', 'undergo', '[,ʌndə\'ɡəu]', null, 'v.经历，遭受', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4366', '91', 'abundant', '[ə\'bʌndənt]', null, 'a.丰富的，充裕的，大量的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4367', '92', 'adopt', '[ə\'dɔpt]', null, 'v.收养；采用；采纳', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4368', '93', 'adapt', '[ə\'dæpt]', null, 'vi.适应，适合；改编，改写 vt.使适应', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4369', '94', 'bachelor', '[\'bætʃələ]', null, 'n.学士，学士学位；单身汉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4370', '95', 'casual', '[\'kæʒjuəl]', null, 'a.偶然的，碰巧的；临时的；非正式的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4371', '96', 'trap', '[træp]', null, 'n.陷阱，圈套 v.设陷阱捕捉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4372', '97', 'vacant', '[\'veikənt]', null, 'a.空的，未占用的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4373', '98', 'vacuum', '[\'vækjuəm]', null, 'n.真空，真空吸尘器', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4374', '99', 'oral', '[\'ɔ:rəl, \'ɔ-]', null, 'a.口头的，口述的，口的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4375', '100', 'optics', '[\'ɔptiks]', null, 'n.（单、复数同形）光学', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4376', '101', 'organ', '[\'ɔ:ɡən]', null, 'n.器官，风琴', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4377', '102', 'excess', '[ik\'ses, \'ek-, \'ekses, ik\'s-]', null, 'n.过分，过量，过剩', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4378', '103', 'expel', '[ik\'spel]', null, 'v.驱逐，开除，赶出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4379', '104', 'expend', '[ik\'spend]', null, 'v.消费', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4380', '105', 'expenditure', '[iks\'penditʃə]', null, 'n.支出，消费；经费', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4381', '106', 'expense', '[ik\'spens]', null, 'n.开销，费用', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4382', '107', 'expensive', '[ik\'spensiv]', null, 'a.花钱多的；价格高贵的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4383', '108', 'expand', '[ik\'spænd]', null, 'v.扩大，扩张；展开，膨胀', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4384', '109', 'expansion', '[ik\'spænʃən]', null, 'n.扩大，扩充；发展，膨胀', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4385', '110', 'private', '[\'praivit]', null, 'a.私人的，个人的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4386', '111', 'individual', '[,indi\'vidjuəl, -dʒəl]', null, 'a.个别的，单独的 n.个人，个体', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4387', '112', 'personal', '[\'pə:sənl]', null, 'a.个人的，私人的；亲自的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4388', '114', 'personnel', '[,pə:sə\'nel]', null, 'n.[总称]人员，员工；人事部门', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4389', '115', 'the', '[ði]', null, 'Pacific Ocean 太平洋', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4390', '116', 'the', '[ði]', null, 'Atlantic Ocean 大西洋', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4391', '117', 'the', '[ði]', null, 'Arctic Ocean 北冰洋', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4392', '118', 'the', '[ði]', null, 'Antarctic Ocean 南冰洋', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4393', '119', 'grant', '[ɡrænd]', null, 'vt.授予，同意，准予', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4394', '119', 'grand', '[ɡrænd]', null, 'a.宏伟大，壮丽的，重大的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4395', '120', 'invade', '[in\'veid]', null, 'v.侵入，侵略，侵袭 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4396', '121', 'acid', '[\'æsid]', null, 'n.酸，酸性物质 a.酸的；尖刻的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4397', '122', 'acknowledge', '[ək\'nɔlidʒ]', null, 'v.承认；致谢', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4398', '123', 'balcony', '[\'bælkəni]', null, 'n.阳台', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4399', '124', 'calculate', '[\'kælkjuleit]', null, 'vt.计算，核算', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4400', '125', 'calendar', '[\'kælində]', null, 'n.日历，月历', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4401', '126', 'optimistic', '[,ɔpti\'mistik]', null, 'a.乐观', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4402', '127', 'optional', '[\'ɔpʃənəl]', null, 'a.可以任选的，非强制的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4403', '128', 'outstanding', '[,aut\'stændiŋ]', null, 'a.杰出的，突出的，显著的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4404', '129', 'export', '[ik\'spɔ:t, \'eks-, \'ekspɔ:t]', null, 'n.出口（物） v.出口，输出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4405', '130', 'import', '[im\'pɔ:t, \'impɔ:t]', null, 'n.进口（物） v.进口，输入', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4406', '131', 'impose', '[im\'pəuz]', null, 'vt.把...加强(on)；采用，利用', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4407', '132', 'religion', '[ri\'lidʒən]', null, 'n.宗教，宗教信仰', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4408', '133', 'religious', '[ri\'lidʒəs]', null, 'a.宗教的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4409', '134', 'victim', '[\'viktim]', null, 'n.牺牲品，受害者', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4410', '135', 'video', '[\'vidiəu]', null, 'n.电视，视频 a.电视的，录像的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4411', '136', 'videotape', '[\'vidiəuteip]', null, 'n.录像磁带 v.把...录在录像带上', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4412', '137', 'offend', '[ə\'fend]', null, 'v.冒犯，触犯', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4413', '138', 'bother', '[\'bɔðə]', null, 'v.打搅，麻烦', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4414', '139', 'interfere', '[,intə\'fiə]', null, 'v.干涉，干扰，妨碍', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4415', '140', 'internal', '[in\'tə:nəl]', null, 'a.内部的，国内的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4416', '141', 'beforehand', '[bi\'fɔ:hænd]', null, 'ad.预先，事先', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4417', '142', 'racial', '[\'reiʃəl]', null, 'a.人种的种族的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4418', '143', 'radiation', '[,reidi\'eiʃən]', null, 'n.放射物，辐射', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4419', '144', 'radical', '[\'rædikəl]', null, 'a.根本的；激进的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4420', '145', 'range', '[reindʒ]', null, 'n.幅度，范围 v.（在某范围内）变动', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4421', '146', 'wonder', '[\'wʌndə]', null, 'n.惊奇，奇迹 v.想知道，对...感到疑惑', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4422', '147', 'isolate', '[\'aisəleit, -lit]', null, 'vt.使隔离，使孤立', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4423', '148', 'issue', '[\'iʃju:, \'isju:]', null, 'n.问题，争论点；发行，（报刊）一期', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4424', '149', 'hollow', '[\'hɔləu]', null, 'a.空的，中空的，空虚道', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4425', '150', 'hook', '[huk]', null, 'n.钩 vt.钩住', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4426', '151', 'adequate', '[\'ædikwit]', null, 'a.适当地；足够', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4427', '152', 'adhere', '[əd\'hiə]', null, 'vi.粘附，附着；遵守，坚持', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4428', '153', 'ban', '[bæn]', null, 'vt.取缔，禁止', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4429', '154', 'capture', '[\'kæptʃə]', null, 'vt.俘虏，捕获', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4430', '155', 'valid', '[\'vælid]', null, 'a.有效的，有根据的；正当的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4431', '156', 'valley', '[\'væli]', null, 'n.山谷，峡谷', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4432', '157', 'consistent', '[kən\'sistənt]', null, 'a.坚固定；一致的，始终如一的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4433', '158', 'continuous', '[kən\'tɪnjʊəs]', null, 'a.继续的，连续（不断）的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4434', '159', 'continual', '[kən\'tinjuəl]', null, 'a.不断地，频繁的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4435', '160', 'explode', '[ik\'spləud]', null, 'v.爆炸；爆发；激增', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4436', '161', 'exploit', '[\'eksplɔit, ik\'s-]', null, 'v.剥削；利用，开采', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4437', '162', 'explore', '[ik\'splɔ:]', null, 'v.勘探', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4438', '163', 'explosion', '[ik\'spləuʒən]', null, 'n.爆炸；爆发；激增', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4439', '164', 'explosive', '[ik\'spləusiv]', null, 'a.爆炸的；极易引起争论的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4440', '165', 'remote', '[ri\'məut]', null, 'a.遥远的，偏僻的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4441', '166', 'removal', '[ri\'mu:vəl]', null, 'n.除去，消除', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4442', '167', 'render', '[\'rendə]', null, 'vt.使得，致使', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4443', '168', 'precaution', '[pri\'kɔ:ʃən]', null, 'n.预防，防备，警惕', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4444', '169', 'idle', '[\'aidl]', null, 'a.懒散的，无所事事的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4445', '170', 'identify', '[ai\'dentifai]', null, 'vt.认出，鉴定', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4446', '171', 'identify', '[ai\'dentifai]', null, 'n.身份；个性，特性', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4447', '172', 'poverty', '[\'pɔvəti]', null, 'n.贫穷', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4448', '173', 'resistant', '[ri\'zistənt]', null, 'a.(to)抵抗的，抗...的，耐...的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4449', '174', 'resolve', '[ri\'zɔlv]', null, 'vt.解决；决定，决意', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4450', '175', 'barrel', '[\'bærəl]', null, 'n.桶', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4451', '176', 'bargain', '[\'bɑ:ɡin]', null, 'n.便宜货 vi.讨价还价', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4452', '177', 'coarse', '[kɔ:s]', null, 'a.粗的，粗糙的，粗劣的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4453', '178', 'coach', '[kəutʃ]', null, 'n.教练；长途公共汽车', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4454', '179', 'code', '[kəud]', null, 'n.准则，法规，密码', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4455', '180', 'coil', '[kɔil]', null, 'n.线圈 v.卷，盘绕 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4456', '181', 'adult', '[\'ædʌlt, ə\'dʌlt]', null, 'n.成年人', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4457', '182', 'advertise', '[\'ædvətaiz]', null, 'v.为...做广告', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4458', '183', 'advertisement', '[əd\'və:tismənt, ,ædvə\'taizmənt]', null, 'n.广告', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4459', '184', 'agency', '[\'eidʒənsi]', null, 'n.代理商，经销商', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4460', '185', 'focus', '[\'fəukəs]', null, 'v.（使）聚集 n.焦点，中心，聚焦', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4461', '186', 'forbid', '[fə\'bid]', null, 'vt.不许，禁止', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4462', '187', 'debate', '[di\'beit]', null, 'n./v.辩论，争论', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4463', '188', 'debt', '[det]', null, 'n.欠债', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4464', '189', 'decade', '[\'dekeid]', null, 'n.十年', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4465', '190', 'enclose', '[in\'kləuz]', null, 'vt.围住；把...装入信封', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4466', '191', 'encounter', '[in\'kauntə]', null, 'vt./n.遭遇，遭到', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4467', '192', 'globe', '[ɡləub]', null, 'n.地球，世界；地球仪', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4468', '193', 'global', '[\'ɡləubəl]', null, 'a.全球的；总的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4469', '194', 'scan', '[skæn]', null, 'vt.细看；扫描；浏览', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4470', '195', 'scandal', '[\'skændəl]', null, 'n.丑事，丑闻', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4471', '196', 'significance', '[siɡ\'nifikəns]', null, 'n.意义；重要性', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4472', '197', 'subsequent', '[\'sʌbsikwənt]', null, 'a.随后的，后来的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4473', '198', 'virtue', '[\'və:tju:]', null, 'n.美德，优点', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4474', '199', 'virtual', '[\'və:tʃuəl]', null, 'a.实际上的，事实上的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4475', '200', 'orient', '[\'ɔ:riənt, \'əu-, \'ɔ:rient]', null, 'vt.使适应，(to,toward)使朝向 n.东方', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4476', '201', 'portion', '[\'pɔ:ʃən, \'pəu-]', null, 'n.一部分', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4477', '202', 'target', '[\'tɑ:ɡit]', null, 'n.目标，靶子 vt.瞄准', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4478', '203', 'portable', '[\'pɔ:təbl, \'pəu-]', null, 'a.手提式的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4479', '204', 'decline', '[di\'klain]', null, 'v.拒绝，谢绝；下降', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4480', '205', 'illusion', '[i\'lju:ʒən]', null, 'n.错觉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4481', '206', 'likelihood', '[\'laiklihud]', null, 'n.可能，可能性', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4482', '207', 'stripe', '[straip]', null, 'n.条纹', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4483', '208', 'emphasize', '[\'emfəsaiz]', null, 'vt.强调，着重', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4484', '209', 'emotion', '[i\'məuʃən]', null, 'n.情感，感情', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4485', '210', 'emotional', '[i\'məuʃənəl]', null, 'a.感情的，情绪（上）的 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4486', '211', 'awful', '[\'ɔːfʊl]', null, 'a.极坏的，威严的，可怕的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4487', '212', 'awkward', '[\'ɔ:kwəd]', null, 'a.笨拙的，棘手的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4488', '213', 'clue', '[klu:]', null, 'n.线索，提示', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4489', '214', 'collision', '[kə\'lɪʒ(ə)n]', null, 'n.碰撞，冲突', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4490', '215', 'device', '[di\'vais]', null, 'n.装置，设备', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4491', '216', 'devise', '[di\'vaiz]', null, 'vt.发明，策划，想出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4492', '217', 'inevitable', '[in\'evitəbl]', null, 'a.不可避免的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4493', '218', 'naval', '[\'neivəl]', null, 'a.海军的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4494', '219', 'navigation', '[,nævi\'ɡeiʃən]', null, 'n.航行', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4495', '220', 'necessity', '[ni\'sesəti, nə-]', null, 'n.必需品；必要性', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4496', '221', 'previous', '[\'pri:vjəs]', null, 'a.先，前，以前的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4497', '222', 'provision', '[prəu\'viʒən]', null, 'n.[pl.]给养，口粮；准备，设备，装置', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4498', '223', 'pursue', '[pə\'sju:, -\'su:]', null, 'vt.追逐；追求；从事，进行', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4499', '224', 'stale', '[steil]', null, 'a.不新鲜的，陈腐的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4500', '225', 'substitute', '[\'sʌbstitju:t, -tu:t]', null, 'n.代用品 vt.代替', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4501', '226', 'deserve', '[di\'zə:v]', null, 'vt.应受，应得，值得', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4502', '227', 'discrimination', '[dis,krimi\'neiʃən]', null, 'n.歧视；辨别力', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4503', '228', 'professional', '[prəu\'feʃənəl]', null, 'a.职业的，专门的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4504', '229', 'secure', '[si\'kjuə]', null, 'a.安全的，可靠的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4505', '230', 'security', '[si\'kjuəriti]', null, 'n.安全，保障', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4506', '231', 'scratch', '[skrætʃ]', null, 'v./n.抓，搔，扒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4507', '232', 'talent', '[\'tælənt]', null, 'n.才能，天资；人才', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4508', '233', 'insurance', '[in\'ʃuərəns]', null, 'n.保险，保险费', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4509', '234', 'insure', '[in\'ʃuə]', null, 'vt.给...保险，保证，确保', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4510', '235', 'nevertheless', '[,nevəðə\'les]', null, 'ad.仍然，然而，不过', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4511', '236', 'neutral', '[\'nju:trəl]', null, 'a.中立的，中性的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4512', '237', 'spot', '[spɔt]', null, 'n.地点；斑点 vt.认出，发现；玷污', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4513', '238', 'spray', '[sprei]', null, 'v.喷，（使）溅散', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4514', '239', 'medium', '[\'mi:diəm, -djəm]', null, 'a.中等的，适中的 n.媒介物，新闻媒介', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4515', '240', 'media', '[\'mi:diə]', null, 'n.新闻传媒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4516', '241', 'auxiliary', '[ɔ:ɡ\'ziljəri]', null, 'a.辅助的，备用的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4517', '242', 'automatic', '[,ɔ:tə\'mætik]', null, 'a.自动的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4518', '243', 'compete', '[kəm\'pi:t]', null, 'vi.竞争，比赛', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4519', '244', 'competent', '[\'kɔmpitənt]', null, 'a.有能力的，能胜任的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4520', '245', 'competition', '[,kɔmpi\'tiʃən]', null, 'n.竞争，比赛', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4521', '246', 'distribute', '[di\'stribju:t, \'dis-]', null, 'vt.分发', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4522', '247', 'disturb', '[dis\'tə:b]', null, 'vt.打搅，妨碍', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4523', '248', 'infer', '[in\'fə:]', null, 'v.推论，推断', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4524', '249', 'integrate', '[\'intiɡreit, \'intiɡrit, -ɡreit]', null, 'v.(into,with)（使）成为一体，（使）合并', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4525', '250', 'moist', '[mɔist]', null, 'a.潮湿', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4526', '251', 'moisture', '[\'mɔistʃə]', null, 'n.潮湿', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4527', '252', 'promote', '[prəu\'məut]', null, 'vt.促进；提升', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4528', '253', 'region', '[\'ri:dʒən]', null, 'n.地区；范围；幅度', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4529', '254', 'register', '[\'redʒistə]', null, 'v./n.登记，注册', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4530', '255', 'stable', '[\'steibl]', null, 'a.稳定的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4531', '256', 'sophisticated', '[sə\'fistikeitid]', null, 'a.老于世故的，老练的；很复杂的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4532', '257', 'splendid', '[\'splendid]', null, 'a.极好的，壮丽的，辉煌的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4533', '258', 'cancel', '[\'kænsəl]', null, 'vt.取消，废除', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4534', '259', 'variable', '[\'vεəriəbl]', null, 'a.易变的，可变的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4535', '260', 'prospect', '[\'prɔspekt]', null, 'n.前景，前途；景象', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4536', '261', 'prosperity', '[prɔs\'periti]', null, 'n.兴旺，繁荣', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4537', '262', 'aspect', '[\'æspekt]', null, 'n.方面；朝向；面貌', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4538', '263', 'cope', '[kəup]', null, 'vi.(with)（成功地）应付，处理', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4539', '264', 'core', '[kɔ:]', null, 'n.果心，核心', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4540', '265', 'maintain', '[mein\'tein]', null, 'vt.维持，保持；坚持，主张', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4541', '266', 'mainland', '[\'meinlənd]', null, 'n.大陆', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4542', '267', 'discipline', '[\'disiplin]', null, 'n.纪律；惩罚；学科', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4543', '268', 'domestic', '[dəu\'mestik]', null, 'a.本国的，国内的；家用的；家庭的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4544', '269', 'constant', '[\'kɔnstənt]', null, 'a.不变的，恒定的 n.常数 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4545', '270', 'cliff', '[klif]', null, 'n.悬崖，峭壁 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4546', '271', 'authority', '[ɔ:\'θɔrəti]', null, 'n.权威；当局', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4547', '272', 'audio', '[\'ɔ:diəu]', null, 'a.听觉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4548', '273', 'attitude', '[\'ætitju:d, -tu:d]', null, 'n.态度', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4549', '274', 'community', '[kə\'mju:niti]', null, 'n.社区，社会', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4550', '275', 'commit', '[kə\'mit]', null, 'vt.犯（错误，罪行等），干（坏事等）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4551', '276', 'comment', '[\'kɔment]', null, 'n./vt.评论', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4552', '277', 'distinguish', '[dis\'tiŋɡwiʃ]', null, 'vt.区分，辨别', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4553', '278', 'distress', '[di\'stres]', null, 'n.痛苦，悲伤 vt.使痛苦', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4554', '279', 'facility', '[fə\'siliti]', null, 'n.[pl.] 设备，设施；便利，方便', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4555', '280', 'faculty', '[\'fækəlti]', null, 'n.能力，技能；系，学科，学院；全体教员', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4556', '281', 'mixture', '[\'mikstʃə]', null, 'n.混合，混合物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4557', '282', 'mood', '[mu:d]', null, 'n.心情，情绪；语气', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4558', '283', 'moral', '[\'mɔrəl, \'mɔ:-]', null, 'a.道德上的，有道德的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4559', '284', 'prominent', '[\'prɔminənt]', null, 'a.突出的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4560', '285', 'substance', '[\'sʌbstəns]', null, 'n.物质；实质', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4561', '286', 'substantial', '[səb\'stænʃəl]', null, 'a.可观的；牢固的；实质的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4562', '287', 'prompt', '[prɔmpt]', null, 'vt.促使 a.敏捷的，及时的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4563', '288', 'vivid', '[\'vivid]', null, 'a.生动的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4564', '289', 'vocabulary', '[vəu\'kæbjuləri]', null, 'n.词汇（量）；词汇表', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4565', '290', 'venture', '[\'ventʃə]', null, 'n.风险投资，风险项目 v.冒险；取于', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4566', '291', 'version', '[\'və:ʃən]', null, 'n.版本，译本；说法', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4567', '292', 'waist', '[weist]', null, 'n.腰，腰部', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4568', '293', 'weld', '[weld]', null, 'v./n.焊接', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4569', '294', 'yawn', '[jɔ:n]', null, 'vi.打哈欠', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4570', '295', 'yield', '[ji:ld]', null, 'vi.(to)屈服于；让出，放弃 n.产量', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4571', '296', 'zone', '[zəun]', null, 'n.地区，区域', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4572', '297', 'strategy', '[\'strætidʒi]', null, 'n.战略，策略', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4573', '298', 'strategic', '[strə\'ti:dʒik]', null, 'a.战略（上）的，关键的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4574', '299', 'tense', '[tens]', null, 'a.紧张的 v.拉紧 n.时态', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4575', '300', 'tension', '[\'tenʃən]', null, 'n.紧张（状态），张力 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4576', '301', 'avenue', '[\'ævənju:]', null, 'n.林荫道，大街', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4577', '302', 'available', '[ə\'veiləbl]', null, 'a.现成可用的；可得到的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4578', '303', 'comparable', '[\'kɔmpərəbl]', null, 'a.(with,to)可比较的，类似的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4579', '304', 'comparative', '[kəm\'pærətiv]', null, 'a.比较的，相对的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4580', '305', 'dash', '[dæʃ]', null, 'vi.猛冲，飞奔', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4581', '306', 'data', '[\'deitə]', null, 'n.数据，资料', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4582', '307', 'dive', '[\'di:vei, daiv]', null, 'vi.跳水，潜水', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4583', '308', 'diverse', '[dai\'və:s, di-]', null, 'a.不同的，多种多样的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4584', '309', 'entitle', '[in\'taitl]', null, 'vt.给...权利，给...资格', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4585', '310', 'regulate', '[\'reɡjuleit]', null, 'vt.管理，调节', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4586', '311', 'release', '[ri\'li:s]', null, 'vt./n.释放，排放；解释解脱', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4587', '312', 'exaggerate', '[iɡ\'zædʒəreit]', null, 'v.夸大，夸张', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4588', '313', 'evil', '[\'i:vəl]', null, 'a.邪恶的，坏的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4589', '314', 'shrink', '[ʃriŋk]', null, 'vi.起皱，收缩；退缩', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4590', '315', 'subtract', '[səb\'trækt]', null, 'v.减（去）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4591', '316', 'suburb', '[\'sʌbə:b]', null, 'n.市郊', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4592', '317', 'subway', '[\'sʌbwei]', null, 'n.地铁', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4593', '318', 'survey', '[sə:\'vei, \'sə:vei, sə-]', null, 'n./vt.调查，勘测', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4594', '319', 'wealthy', '[\'welθi]', null, 'a.富裕的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4595', '320', 'adjust', '[ə\'dʒʌst]', null, 'v.调整，调节', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4596', '321', 'attach', '[ə\'tætʃ]', null, 'vt.系，贴；使附属', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4597', '322', 'profit', '[\'prɔfit]', null, 'n.利润，益处；v.有益于，有利于', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4598', '323', 'profitable', '[\'prɔfitəbl]', null, 'a.有利可图的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4599', '324', 'slope', '[sləup]', null, 'n.斜坡，斜面', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4600', '325', 'reinforce', '[,ri:in\'fɔ:s]', null, 'vt.增强，加强', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4601', '326', 'reject', '[ri\'dʒekt]', null, 'vt.拒绝', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4602', '327', 'fatal', '[\'feitl]', null, 'a.致命的；重大的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4603', '328', 'fate', '[\'feit]', null, 'n.命运', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4604', '329', 'humble', '[\'hʌmbl]', null, 'a.谦逊的；谦虚的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4605', '330', 'illegal', '[ɪ\'liːg(ə)l]', null, 'a.不合法的，非法的 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4606', '331', 'award', '[ə\'wɔ:d]', null, 'vt.授予，判给 n.奖品，奖金', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4607', '332', 'aware', '[ə\'wεə]', null, 'a.意识到', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4608', '333', 'column', '[\'kɔləm]', null, 'n.柱，圆柱；栏，专栏', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4609', '334', 'comedy', '[\'kɔmidi]', null, 'n.喜剧', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4610', '335', 'dumb', '[dʌm]', null, 'a.哑的；沉默的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4611', '336', 'dump', '[dʌmp]', null, 'vt.倾卸，倾倒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4612', '337', 'deaf', '[def]', null, 'a.聋的；不愿听的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4613', '338', 'decorate', '[\'dekəreit]', null, 'vt.装饰，装璜', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4614', '339', 'principal', '[\'prinsəpəl]', null, 'a.最重要的 n.负责人，校长', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4615', '340', 'principle', '[\'prinsəpl]', null, 'n.原则，原理', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4616', '341', 'prior', '[\'praiə]', null, 'a.优先的，在前的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4617', '342', 'priority', '[prai\'ɔrəti]', null, 'n.优先，重点', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4618', '343', 'prohibit', '[prəu\'hibit]', null, 'vt.禁止，不准', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4619', '344', 'remarkable', '[ri\'mɑ:kəbl]', null, 'a.值得注意的，异常的，非凡的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4620', '345', 'remedy', '[\'remidi]', null, 'n./vt.补救，医治，治疗', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4621', '346', 'repetition', '[,repi\'tiʃən]', null, 'n.重复，反复', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4622', '347', 'vain', '[vein]', null, 'a.徒劳的，无效的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4623', '348', 'undertake', '[,ʌndə\'teik]', null, 'vt.承担，着手做；同意，答应', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4624', '349', 'unique', '[ju:\'ni:k]', null, 'a.唯一的，独特的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4625', '350', 'obstacle', '[\'ɔbstəkl]', null, 'n.障碍（物），妨碍', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4626', '351', 'odd', '[ɔd]', null, 'a.奇特的，古怪的；奇数的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4627', '352', 'omit', '[əu\'mit]', null, 'vt.省略', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4628', '353', 'opponent', '[ə\'pəunənt]', null, 'n.敌手，对手', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4629', '354', 'opportunity', '[,ɔpə\'tju:niti]', null, 'n.机会，时机', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4630', '355', 'orchestra', '[\'ɔ:kistrə, -kes-]', null, 'n.管弦乐队', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4631', '356', 'semester', '[si\'mestə]', null, 'n.学期；半年', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4632', '357', 'semiconductor', '[,semikən\'dɔktə, ,semai-]', null, 'n.半导体', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4633', '358', 'seminar', '[\'seminɑ:]', null, 'n.研讨会', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4634', '359', 'terminal', '[\'tə:minəl]', null, 'a.末端的，极限的 n.终点', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4635', '360', 'territory', '[\'teritəri]', null, 'n.领土', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4636', '361', 'approximate', '[ə\'prɒksɪmət]', null, 'a.大概的，大约 v.近似', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4637', '362', 'arbitrary', '[\'ɑ:bitrəri]', null, 'a.随意的，未断的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4638', '363', 'architect', '[\'ɑ:kitekt]', null, 'n.建筑师', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4639', '364', 'architecture', '[\'ɑ:kitektʃə]', null, 'n.建筑学', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4640', '365', 'biology', '[bai\'ɔlədʒi]', null, 'n.生物学', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4641', '366', 'geography', '[dʒi\'ɔɡrəfi]', null, 'n.地理（学）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4642', '367', 'geology', '[dʒi\'ɔlədʒi]', null, 'n.地质学', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4643', '368', 'geometry', '[dʒi\'ɔmitri]', null, 'n.几何（学）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4644', '369', 'arithmetic', '[ə\'rɪθmətɪk]', null, 'n.算术', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4645', '370', 'algebra', '[\'ældʒibrə]', null, 'n.代数', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4646', '371', 'entertainment', '[,entə\'teinmənt]', null, 'n.娱乐；招待，款待', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4647', '372', 'enthusiasm', '[in\'θju:ziæzəm, in\'θu:-]', null, 'n.热情，热心', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4648', '373', 'entry', '[\'entri]', null, 'n.进入，入口处；参赛的人（或物）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4649', '374', 'environment', '[ɪn\'vaɪrənm(ə)nt; en-]', null, 'n.环境', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4650', '375', 'episode', '[\'episəud]', null, 'n.插曲，片段', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4651', '376', 'equation', '[i\'kweiʒən, -ʃən]', null, 'n.方程（式）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4652', '377', 'restrain', '[ri\'strein]', null, 'vt.阻止，抑制', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4653', '378', 'restraint', '[ri\'streint]', null, 'n.抑制，限制', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4654', '379', 'resume', '[ri\'zju:m, -\'zu:m]', null, 'v.（中断后）重新开始', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4655', '380', 'severe', '[si\'viə]', null, 'a.严重的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4656', '381', 'sexual', '[\'seksjuəl, -ʃuəl]', null, 'a.性的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4657', '382', 'simplicity', '[sim\'plisiti]', null, 'n.简单；朴素', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4658', '383', 'simplify', '[\'simplifai]', null, 'vt.简化', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4659', '384', 'sorrow', '[\'sɔrəu, \'sɔ:-]', null, 'n.悲哀，悲痛', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4660', '385', 'stuff', '[stʌf]', null, 'n.原料，材料 vt.填进，塞满', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4661', '386', 'temporary', '[\'tempərəri]', null, 'a.暂时的，临时的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4662', '387', 'temptation', '[temp\'teiʃən]', null, 'n.诱惑，引诱', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4663', '388', 'terror', '[\'terə]', null, 'n.恐怖', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4664', '389', 'thrust', '[θrʌst]', null, 'v.挤，推，插', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4665', '390', 'treaty', '[\'tri:ti]', null, 'n.条约，协定', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4666', '391', 'arise', '[ə\'raiz]', null, 'vi.产生，出现，发生；起身', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4667', '392', 'arouse', '[ə\'rəuz]', null, 'vt.引起，激起；唤醒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4668', '393', 'burden', '[\'bə:dən]', null, 'n.重担，负荷', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4669', '394', 'bureau', '[\'bjuərəu]', null, 'n.局，办事处', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4670', '395', 'marvelous', '[\'mɑrvələs]', null, 'a.奇迹般的，惊人的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4671', '396', 'massive', '[\'mæsiv]', null, 'a.大的，大量的，大块的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4672', '397', 'mature', '[mə\'tjuə]', null, 'a.成熟的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4673', '398', 'maximum', '[\'mæksiməm]', null, 'a.最高的，最大的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4674', '399', 'minimum', '[\'miniməm]', null, 'a.最低的，最小的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4675', '400', 'nonsense', '[\'nɔnsəns]', null, 'n.胡说，冒失的行动', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4676', '401', 'nuclear', '[\'nju:kliə, \'nu:-]', null, 'a.核子的，核能的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4677', '402', 'nucleus', '[\'nju:kliəs]', null, 'n.核', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4678', '403', 'retail', '[\'ri:teil]', null, 'n./v./ad.零售', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4679', '404', 'retain', '[ri\'tein]', null, 'vt.保留，保持', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4680', '405', 'restrict', '[ri\'strikt]', null, 'vt.限制，约束', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4681', '406', 'sponsor', '[\'spɔnsə]', null, 'n.发起者，主办者 vt.发起，主办，资助', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4682', '407', 'spur', '[spə:]', null, 'n./vt.刺激，激励', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4683', '408', 'triumph', '[\'traiəmf, -ʌmf]', null, 'n.胜利，成功', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4684', '409', 'tuition', '[tju:\'iʃən]', null, 'n.学费', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4685', '410', 'twist', '[twist]', null, 'vt.使缠绕；转动；扭歪', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4686', '411', 'undergraduate', '[,ʌndə\'ɡrædjuət]', null, 'n.大学肄业生', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4687', '412', 'universal', '[,ju:ni\'və:səl]', null, 'a.普遍的，通用的；宇宙的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4688', '413', 'universe', '[\'ju:nivə:s]', null, 'n.宇宙', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4689', '414', 'via', '[\'vaiə]', null, 'prep.经由，经过，通过', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4690', '415', 'vibrate', '[vai\'breit]', null, 'v.振动，摇摆', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4691', '416', 'virus', '[\'vaiərəs]', null, 'n.病毒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4692', '417', 'voluntary', '[\'vɔləntəri]', null, 'a.自愿的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4693', '418', 'volunteer', '[,vɔlən\'tiə]', null, 'n.志愿者 v.自愿（做）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4694', '419', 'vote', '[vəut]', null, 'v.选举 n.选票', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4695', '420', 'wagon', '[\'wæɡən]', null, 'n.四轮马车，铁路货车 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4696', '421', 'appoint', '[ə\'pɔint]', null, 'vt.任命，委派', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4697', '422', 'approach', '[ə\'prəutʃ]', null, 'v.靠近，接近 n.途径，方式', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4698', '423', 'appropriate', '[ə\'prəuprieit, ə\'prəupriət]', null, 'a.适当的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4699', '424', 'bunch', '[\'bʌntʃ]', null, 'n.群，伙；束，串', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4700', '425', 'bundle', '[\'bʌndl]', null, 'n.捆，包，束 vt.收集，归拢', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4701', '426', 'ceremony', '[\'seriməuni]', null, 'n.典礼，仪式', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4702', '427', 'chaos', '[\'keiɔs]', null, 'n.混乱，紊乱', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4703', '428', 'discount', '[\'diskaunt, dis\'k-]', null, 'n.（价格）折扣', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4704', '429', 'display', '[,dis\'plei]', null, 'n./vt.陈列，展览', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4705', '430', 'equivalent', '[i\'kwivələnt]', null, 'a.相等的 a.相等物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4706', '431', 'erect', '[i\'rekt]', null, 'a.竖直的 v.建造，竖立', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4707', '432', 'fax', '[fæks]', null, 'n./vt.传真', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4708', '433', 'fertile', '[\'fɜːtaɪl]', null, 'a.肥沃的；多产的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4709', '434', 'fertilizer', '[\'fə:tilaizə]', null, 'n.肥料', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4710', '435', 'grateful', '[\'ɡreitful]', null, 'a.感激的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4711', '436', 'gratitude', '[\'ɡrætitju:d]', null, 'n.感激', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4712', '437', 'horror', '[\'hɔrə]', null, 'n.恐怖', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4713', '438', 'horrible', '[\'hɔrəbl]', null, 'a.可怕的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4714', '439', 'Internet', '[\'intənet]', null, 'n.国际互联网，因特网', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4715', '440', 'interpret', '[in\'tə:prit]', null, 'v.翻译，解释', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4716', '441', 'interpretation', '[in,tə:pri\'teiʃən]', null, 'n.解释，说明', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4717', '442', 'jungle', '[\'dʒʌŋɡl]', null, 'n.丛林，密林', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4718', '443', 'knot', '[nɔt]', null, 'n.结 vt.把...打成结', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4719', '444', 'leak', '[li:k]', null, 'v.漏，渗出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4720', '445', 'lean', '[li:n]', null, 'vi.倾斜，倚，靠', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4721', '446', 'leap', '[li:p]', null, 'vi.跳跃', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4722', '447', 'modify', '[\'mɔdifai]', null, 'vt.修改', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4723', '448', 'nylon', '[\'nailɔn]', null, 'n.尼龙', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4724', '449', 'onion', '[\'ʌnjən]', null, 'n.洋葱', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4725', '450', 'powder', '[\'paudə]', null, 'n.粉末 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4726', '451', 'applicable', '[\'æplikəbl, ə\'plikə-]', null, 'a.可应用的，适当的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4727', '452', 'applicant', '[\'æplikənt]', null, 'n.申请人', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4728', '453', 'breadth', '[bredθ]', null, 'n.宽度', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4729', '454', 'conservation', '[,kɔnsə\'veiʃən]', null, 'n.保存，保护', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4730', '455', 'conservative', '[kən\'sə:vətiv]', null, 'a.保守的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4731', '456', 'parallel', '[\'pærəlel]', null, 'n.平行线；可相比拟的事物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4732', '457', 'passion', '[\'pæʃən]', null, 'n.激情，热情', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4733', '458', 'passive', '[\'pæsiv]', null, 'a.被动的，消极的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4734', '459', 'pat', '[pæt]', null, 'v./n.轻拍，轻打', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4735', '460', 'peak', '[pi:k]', null, 'n.山峰，顶点', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4736', '461', 'phenomenon', '[fi\'nɔminən, fə-]', null, 'n.现象', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4737', '462', 'reluctant', '[ri\'lʌktənt]', null, 'a.不情愿的，勉强的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4738', '463', 'rely', '[ri\'lai]', null, 'vi.(on ,upon)依赖，指望', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4739', '464', 'relevant', '[\'reləvənt]', null, 'a.有关的，切题的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4740', '465', 'reliable', '[ri\'laiəbl]', null, 'a.可靠的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4741', '466', 'relief', '[ri\'li:f]', null, 'n.轻松，宽慰；减轻', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4742', '467', 'reputation', '[,repju\'teiʃən]', null, 'n.名气，声誉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4743', '468', 'rescue', '[\'reskju:]', null, 'vt./n.营救', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4744', '469', 'triangle', '[\'traiæŋɡl]', null, 'n.三角（形）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4745', '470', 'sequence', '[\'si:kwəns]', null, 'n.连续；顺序', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4746', '471', 'shallow', '[\'ʃæləu]', null, 'a.浅的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4747', '472', 'shiver', '[\'ʃivə]', null, 'vi/n.发抖', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4748', '473', 'shrug', '[ʃrʌɡ]', null, 'v./n.耸肩', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4749', '474', 'signature', '[\'signətʃə]', null, 'n.签名', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4750', '475', 'sincere', '[sin\'siə]', null, 'a.诚挚的，真诚的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4751', '476', 'utility', '[juːˈtɪləti]', null, 'n.功用，效用', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4752', '477', 'utilise', '[\'ju:tilaiz]', null, 'vt.利用', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4753', '478', 'utter', '[\'ʌtə]', null, 'vt.说出 a.完全的，彻底的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4754', '479', 'variation', '[,vεəri\'eiʃən]', null, 'n.变化，变动', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4755', '480', 'vehicle', '[\'vi:ikl, জɦ׶ॏѧvi:hi-]', null, 'n.交通工具，车辆 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4756', '481', 'applause', '[ə\'plɔ:z]', null, 'n.鼓掌，掌声', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4757', '482', 'appliance', '[ə\'plaiəns]', null, 'n.器具，器械', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4758', '483', 'consent', '[kən\'sent]', null, 'n.准许，同意 vi (to)准许，同意', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4759', '484', 'conquer', '[\'kɔŋkə]', null, 'vt.征服', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4760', '485', 'defect', '[\'di:fekt, di\'f-, di\'fekt]', null, 'n.缺点，缺陷', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4761', '486', 'delicate', '[\'delikət]', null, 'a.易碎的；娇弱的；精美的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4762', '487', 'evolve', '[i\'vɔlv]', null, 'v.演变', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4763', '488', 'evolution', '[,i:və\'lu:ʃən, ,ev-]', null, 'n.演变，进化', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4764', '489', 'frown', '[fraun]', null, 'v./n.皱眉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4765', '490', 'frustrate', '[frʌs\'treit]', null, 'vt.使沮丧', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4766', '491', 'guarantee', '[,ɡærən\'ti:]', null, 'vt./n.保证', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4767', '492', 'guilty', '[\'ɡilti]', null, 'a.内疚的；有罪的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4768', '493', 'jealous', '[\'dʒeləs]', null, 'a.妒忌的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4769', '494', 'jeans', '[dʒinz]', null, 'n.牛仔裤', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4770', '495', 'liquor', '[\'likə]', null, 'n.酒，烈性酒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4771', '496', 'liter', '[\'li:tə]', null, 'n.升', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4772', '497', 'modest', '[\'mɔdist]', null, 'a.谦虚道', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4773', '498', 'molecule', '[\'mɔlikjul]', null, 'n.分子', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4774', '499', 'orbit', '[\'ɔ:bit]', null, 'n.轨道 v.（绕...）作轨道运行', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4775', '500', 'participate', '[pɑ:\'tisipeit]', null, 'v.(in)参与，参加', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4776', '501', 'particle', '[\'pɑ:tikl]', null, 'n.微粒', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4777', '502', 'particularly', '[pə\'tikjuləli]', null, 'ad.特别，尤其', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4778', '503', 'respond', '[ri\'spɔnd]', null, 'vi.回答，答复；反应', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4779', '504', 'response', '[ri\'spɔns]', null, 'n.回答，答复；反应', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4780', '505', 'sensible', '[\'sensəbl]', null, 'a.明智的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4781', '506', 'sensitive', '[\'sensitiv]', null, 'a.敏感到，灵敏的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4782', '507', 'tremble', '[\'trembl]', null, 'vi.颤抖', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4783', '508', 'tremendous', '[tri\'mendəs]', null, 'a.巨大的；精彩的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4784', '509', 'trend', '[trend]', null, 'n.趋向，倾向', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4785', '510', 'trial', '[\'traiəl]', null, 'n.审讯；试验 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4786', '511', 'apparent', '[ə\'pærənt]', null, 'a.显然的，明白的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4787', '512', 'appetite', '[\'æpitait]', null, 'n.胃口；欲望', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4788', '513', 'deposit', '[di\'pɔzit]', null, 'n.存款，定金 v.存放，储蓄', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4789', '514', 'deputy', '[\'depjuti]', null, 'n.副职，代表', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4790', '515', 'derive', '[di\'raiv]', null, 'vt.取得，得到；(from)起源于', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4791', '516', 'descend', '[di\'send]', null, 'v.下来，下降', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4792', '517', 'missile', '[\'misail, -səl]', null, 'n.导弹', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4793', '518', 'mission', '[\'miʃən]', null, 'n.使命；代表团', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4794', '519', 'mist', '[mist]', null, 'n.薄雾', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4795', '520', 'noticeable', '[\'nəutisəbl]', null, 'a.显而易见到', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4796', '521', 'notify', '[\'nəutifai]', null, 'vt.通知，告知', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4797', '522', 'notion', '[\'nəuʃən]', null, 'n.概念；意图，想法', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4798', '523', 'resemble', '[ri\'zembl]', null, 'vt.像，类似于', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4799', '524', 'reveal', '[ri\'vi:l]', null, 'vt.揭露', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4800', '525', 'revenue', '[\'revənju:, -nu:]', null, 'n.收入，岁入；税收', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4801', '526', 'shelter', '[\'ʃeltə]', null, 'n.掩蔽处；住所', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4802', '527', 'shield', '[ʃi:ld]', null, 'n.防护物，盾 vt.保护，防护', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4803', '528', 'vital', '[\'vaitəl]', null, 'a.重要的；致命的，生命的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4804', '529', 'vitally', '[\'vaɪtəli]', null, 'ad.极度，非常；致命地', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4805', '530', 'urban', '[\'ə:bən]', null, 'a.城市的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4806', '531', 'urge', '[ə:dʒ]', null, 'vt.鼓励，激励', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4807', '532', 'urgent', '[\'ə:dʒənt]', null, 'a.急迫的，紧急得', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4808', '533', 'usage', '[\'ju:zidʒ]', null, 'n.使用，用法', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4809', '534', 'violence', '[\'vaiələns]', null, 'n.强力，暴力', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4810', '535', 'violent', '[\'vaiələnt]', null, 'a.强暴的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4811', '536', 'violet', '[\'vaiələt]', null, 'a.紫色的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4812', '537', 'weed', '[wi:d]', null, 'n.杂草，野草', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4813', '538', 'welfare', '[\'welfεə]', null, 'n.福利', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4814', '539', 'whatsoever', '[wɒtsəʊ\'evə]', null, 'ad.（用于否定句）任何', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4815', '540', 'whereas', '[hwεə\'æz]', null, 'conj.然而，但是，尽管', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4816', '541', 'essential', '[i\'senʃəl]', null, 'a.必不可少的；本质的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4817', '542', 'estimate', '[\'estimeit]', null, 'n./vt.估计，估量', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4818', '543', 'evaluate', '[i\'væljueit]', null, 'vt.评估，评价', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4819', '544', 'exceed', '[ik\'si:d]', null, 'vt.超过，越出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4820', '545', 'exceedingly', '[ik\'si:diŋli]', null, 'ad.非常，极其', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4821', '546', 'exclaim', '[ik\'skleim]', null, 'v.呼喊，大声说', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4822', '547', 'exclude', '[iks\'klu:d]', null, 'vt.把...排斥在外，不包括', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4823', '548', 'exclusive', '[ik\'sklu:siv]', null, 'a.读有的，排他的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4824', '549', 'excursion', '[ik\'skə:ʃən]', null, 'n.远足', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4825', '550', 'flash', '[flæʃ]', null, 'vi.闪光，闪耀', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4826', '551', 'flee', '[fli:]', null, 'vi.逃走', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4827', '552', 'flexible', '[\'fleksibl]', null, 'a.易弯曲的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4828', '553', 'flock', '[flɔk]', null, 'n.羊群，（鸟兽等）一群；一伙人', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4829', '554', 'hardware', '[\'hɑ:dwεə]', null, 'n.五金器具', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4830', '555', 'harmony', '[\'hɑ:məni]', null, 'n.和谐，融洽', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4831', '556', 'haste', '[heist]', null, 'n.急速，急忙', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4832', '557', 'hatred', '[\'heitrid]', null, 'n.憎恶，憎恨', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4833', '558', 'incident', '[\'insidənt]', null, 'n.事件，事变', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4834', '559', 'index', '[\'indeks]', null, 'n.索引，标志', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4835', '560', 'infant', '[\'infənt]', null, 'n.婴儿', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4836', '561', 'infect', '[in\'fekt]', null, 'v.传染', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4837', '562', 'inferior', '[in\'fiəriə]', null, 'a.劣等的，次的，下级的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4838', '563', 'infinite', '[\'infinət]', null, 'a.无限的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4839', '564', 'ingredient', '[in\'ɡri:diənt]', null, 'n.组成部分', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4840', '565', 'inhabitant', '[in\'hæbitənt]', null, 'n.居民', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4841', '566', 'jail', '[dʒeil]', null, 'n.监狱', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4842', '567', 'jam', '[dʒæm]', null, 'n.果酱；拥挤，堵塞', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4843', '568', 'jewel', '[\'dʒu:əl]', null, 'n.宝石', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4844', '569', 'joint', '[dʒɔint]', null, 'a.连接的；共同的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4845', '570', 'junior', '[\'dʒu:njə]', null, 'a.年少的；资历较浅的 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4846', '571', 'laser', '[\'leizə]', null, 'n.激光', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4847', '572', 'launch', '[lɔ:ntʃ, lɑ:ntʃ]', null, 'vt.发动，发起', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4848', '573', 'luxury', '[\'lʌkʃəri, \'lʌɡʒəri]', null, 'n.奢侈；奢侈品', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4849', '574', 'magnet', '[\'mæɡnit]', null, 'n.磁铁，磁体', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4850', '575', 'male', '[meil]', null, 'a.男性的，雄的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4851', '576', 'female', '[\'fi:meil]', null, 'a.女性的，雌的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4852', '577', 'manual', '[\'mænjuəl]', null, 'a.用手的，手工做的 n.手册', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4853', '578', 'manufacture', '[,mænju\'fæktʃə]', null, 'vt./n.制造，加工', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4854', '579', 'marine', '[mə\'ri:n]', null, 'a.海的；海产的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4855', '580', 'mutual', '[\'mju:tʃuəl, -tjuəl]', null, 'a.相互的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4856', '581', 'naked', '[\'neikid]', null, 'a.裸露的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4857', '582', 'negative', '[\'neɡətiv]', null, 'a.否定的，消极的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4858', '583', 'neglect', '[ni\'ɡlekt]', null, 'vt.忽视，忽略', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4859', '584', 'origin', '[\'ɔridʒin, \'ɔ:-]', null, 'n.起源，出身', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4860', '585', 'oval', '[\'əuvəl]', null, 'a.椭圆形的 n.椭圆形', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4861', '586', 'outset', '[\'autset]', null, 'n.开始，开端', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4862', '587', 'presumably', '[pri\'zju:-məbli,pri:-]', null, 'ad.大概，可能', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4863', '588', 'prevail', '[pri\'veil, pri:-]', null, 'vi.流行，盛行', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4864', '589', 'quit', '[kwit]', null, 'v.停止', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4865', '590', 'quotation', '[kwəu\'teiʃən, kəu-]', null, 'n.引文，引语', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4866', '591', 'recreation', '[,rekri\'eiʃən, -kri:-]', null, 'n.娱乐活动', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4867', '592', 'recruit', '[ri\'kru:t]', null, 'vt.招募，吸收（新成员）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4868', '593', 'rival', '[\'raivəl]', null, 'n.竞争对手，敌手', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4869', '594', 'shuttle', '[\'ʃʌtl]', null, 'n.梭子；航天飞机', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4870', '595', 'skim', '[skim]', null, 'vt.搬（去），掠过；浏览', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4871', '596', 'sketch', '[sketʃ]', null, 'n.草图；梗概', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4872', '597', 'slender', '[\'slendə]', null, 'a.苗条的，修长的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4873', '598', 'theme', '[θi:m]', null, 'n.主题', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4874', '599', 'textile', '[\'tekstail, -til]', null, 'n.纺织品', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4875', '600', 'tropical', '[\'trɔpikəl]', null, 'a.热带的，炎热的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4876', '601', 'kneel', '[ni:l]', null, 'vi.跪', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4877', '602', 'label', '[\'leibl]', null, 'n.标签', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4878', '603', 'merchant', '[\'mə:tʃənt]', null, 'n.商人', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4879', '604', 'mere', '[miə]', null, 'a.仅仅的，只不过的；纯粹的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4880', '605', 'nuisance', '[\'nju:səns]', null, 'n.令人讨厌的东西（或人）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4881', '606', 'numerous', '[\'njuːm(ə)rəs]', null, 'a.众多的，许多的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4882', '607', 'parade', '[pə\'reid]', null, 'n.游行 v.列队行进', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4883', '608', 'pants', '[pænts]', null, 'n.长裤；内裤', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4884', '609', 'partial', '[\'pɑ:ʃəl]', null, 'a.部分的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4885', '610', 'passport', '[\'pɑ:spɔ:t, \'pæs-]', null, 'n.护照', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4886', '611', 'prescribe', '[pris\'kraib]', null, 'vt.开药，吩咐采用...疗法', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4887', '612', 'primitive', '[\'primitiv]', null, 'a.原始的，早期的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4888', '613', 'ridge', '[ridʒ]', null, 'n.脊，山脊，埂', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4889', '614', 'ridiculous', '[ri\'dikjuləs]', null, 'a.可笑的，荒漠的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4890', '615', 'rigid', '[\'rɪdʒɪd]', null, 'a.严格的；僵硬的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4891', '616', 'withstand', '[wið\'stænd, wiθ-]', null, 'vt.经受，承受', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4892', '617', 'witness', '[\'witnis]', null, 'n.目击者；证据 vt.注意到；证明', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4893', '618', 'withdraw', '[wið\'drɔ:, wiθ-]', null, 'v.收回，撤销', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4894', '619', 'slippery', '[\'slipəri]', null, 'a.滑的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4895', '620', 'smash', '[smæʃ]', null, 'vt.粉碎，打烂', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4896', '621', 'snap', '[snæp]', null, 'n./vt.折断，拉断；快照', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4897', '622', 'software', '[\'sɔftwεə, \'sɔ:-]', null, 'n.软件', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4898', '623', 'solar', '[\'səulə]', null, 'a.太阳的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4899', '624', 'lunar', '[\'luːnə]', null, 'a.月的，月球的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4900', '625', 'submerge', '[səb\'mə:dʒ]', null, 'vi.潜入水中', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4901', '626', 'submit', '[səb\'mit]', null, 'vi.(to)屈服，听从', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4902', '627', 'timber', '[\'timbə]', null, 'n.木材，原木', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4903', '628', 'tissue', '[\'tiʃju:, -sju:]', null, 'n.组织；薄纱，手巾纸', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4904', '629', 'title', '[\'taitl]', null, 'n.题目，标题', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4905', '630', 'tone', '[təun]', null, 'n.语气，音调631.drift vi.漂，漂流', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4906', '632', 'drip', '[drip]', null, 'n.滴', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4907', '633', 'durable', '[\'djuərəbl]', null, 'a.耐用的，持久的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4908', '634', 'duration', '[djuə\'reiʃən]', null, 'n.持续，持续期间', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4909', '635', 'dusk', '[dʌsk]', null, 'n.黄昏，薄暮', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4910', '636', 'leather', '[\'leðə]', null, 'n.皮革', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4911', '637', 'legislation', '[,ledʒis\'leiʃən]', null, 'n.法律，法规；立法', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4912', '638', 'leisure', '[\'leʒə]', null, 'n.闲暇；悠闲', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4913', '639', 'loose', '[lu:s]', null, 'a.松的，宽松的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4914', '640', 'loosen', '[\'lu:sən]', null, 'v.解开，放松', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4915', '641', 'tarnest', '[tɑːn]', null, 'a.认真的，诚挚的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4916', '642', 'earthquake', '[\'ə:θkweik]', null, 'n.地震', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4917', '643', 'echo', '[\'ekəu]', null, 'n.回音，回声', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4918', '644', 'elaborate', '[i\'læbərət, i\'læbəreit]', null, 'a.精心设计的，复杂的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4919', '645', 'elastic', '[i\'læstik]', null, 'n.橡皮圈（带） a.有弹性的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4920', '646', 'elbow', '[\'elbəu]', null, 'n.肘', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4921', '647', 'electron', '[i\'lektrɔn]', null, 'n.电子', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4922', '648', 'volcano', '[vɔl\'keinəu]', null, 'n.火山', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4923', '649', 'volume', '[\'vɔlju:m]', null, 'n.卷，册；体积，容量', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4924', '650', 'fatigue', '[fə\'ti:ɡ]', null, 'n.疲劳，劳累', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4925', '651', 'faulty', '[\'fɔ:lti]', null, 'a.有错误的，有缺点的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4926', '652', 'favorable', '[\'feivərəbl]', null, 'a.称赞道；有利的，顺利的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4927', '653', 'favorite', '[\'feivərit]', null, 'a.特别受喜欢的 n.喜爱的人或物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4928', '654', 'gallery', '[\'ɡæləri]', null, 'n.画廊', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4929', '655', 'gallon', '[\'ɡælən]', null, 'n.加仑', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4930', '656', 'gap', '[ɡæp]', null, 'n.间隔，差距', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4931', '657', 'garbage', '[\'ɡɑ:bidʒ]', null, 'n.垃圾，废物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4932', '658', 'gaze', '[ɡeiz]', null, 'v.凝视，注视', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4933', '659', 'gear', '[ɡiə]', null, 'n.齿轮，传动装置', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4934', '660', 'gene', '[dʒi:n]', null, 'n.基因661.lest conj.唯恐，免得', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4935', '662', 'liable', '[\'laiəbl]', null, 'a.可能的，大概的； (to)易于...的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4936', '663', 'liberal', '[\'libərəl]', null, 'a.自由得', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4937', '664', 'liberty', '[\'libəti]', null, 'n.自由', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4938', '665', 'licence', '[\'laɪsəns]', null, 'n.许可证，执照', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4939', '666', 'moisture', '[\'mɔistʃə]', null, 'n.潮湿 ', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4940', '667', 'motivate', '[\'məutiveit]', null, 'vt.激励，激发', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4941', '668', 'motive', '[\'məutiv]', null, 'n.动机，目的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4942', '669', 'generate', '[\'dʒenəreit]', null, 'vt.生成，产生（光、热、电等）', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4943', '670', 'genius', '[\'dʒi:njəs]', null, 'n.天才，天赋', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4944', '671', 'genuine', '[\'dʒenjuin]', null, 'a.真的，真诚的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4945', '672', 'gasoline', '[\'ɡæsəli:n]', null, 'n.汽油', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4946', '673', 'germ', '[dʒə:m]', null, 'n.微生物，细菌', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4947', '674', 'gesture', '[\'dʒestʃə]', null, 'n.姿势，手势', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4948', '675', 'giant', '[\'dʒaiənt]', null, 'a.巨大的 n.巨人，巨物', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4949', '676', 'glimpse', '[ɡlimps]', null, 'n.一瞥，一看', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4950', '677', 'glory', '[\'ɡlɔ:ri]', null, 'n.光荣，荣誉', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4951', '678', 'glorious', '[\'ɡlɔ:riəs]', null, 'n.光荣的，极好的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4952', '679', 'golf', '[ɡɔlf]', null, 'n.高尔夫球运动', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4953', '680', 'hydrogen', '[\'haidrədʒən]', null, 'n.氢', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4954', '681', 'oxygen', '[\'ɔksidʒən]', null, 'n.氧', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4955', '682', 'hostile', '[\'hɔstail, -təl]', null, 'a.敌对的，敌意大', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4956', '683', 'household', '[\'haushəuld]', null, 'n.家庭，户', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4957', '684', 'hook', '[huk]', null, 'n.钩', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4958', '685', 'holy', '[[\'həuli]]', null, 'a.神圣地，圣洁的', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4959', '686', 'hint', '[hint]', null, 'n.暗示，示意', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4960', '687', 'hesitate', '[\'hezɪteɪt]', null, 'v.犹豫', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4961', '688', 'highlight', '[\'hailait]', null, 'vt.强调，突出', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4962', '689', 'hence', '[hens]', null, 'ad.因此，所以；今后，从此', '1', null, null, '0', '0');
INSERT INTO `word` VALUES ('4963', '690', 'herd', '[hə:d]', null, 'n.兽群，牧群', '1', null, null, '0', '0');
