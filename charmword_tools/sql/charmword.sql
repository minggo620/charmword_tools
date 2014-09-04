/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : charmword

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2014-09-04 14:00:24
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
  `wordType` int(11) default '1' COMMENT '单词类型 1：四级高频',
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
  `new` int(11) default '0' COMMENT '新词0：不是 1：是',
  `remember` int(11) default '0' COMMENT '是否是熟悉0：不熟悉 1：熟悉',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2224 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('2061', '1', 'alter', '[\'ɔ:ltə]', null, 'v.改变，改动，变更', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2062', '2', 'burst', '[bə:st]', null, 'vi.,n.突然发生，爆裂', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2063', '3', 'dispose', '[dis\'pəuz]', null, 'vi.除掉；处置；解决；处理(of)', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2064', '4', 'blast', '[\'baiəu,blæst]', null, 'n.爆炸；气流 vi.炸，炸掉', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2065', '5', 'consume', '[kən\'sju:m]', null, 'v.消耗，耗尽', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2066', '6', 'split', '[split]', null, 'v.劈开；割裂；分裂 a.裂开的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2067', '7', 'spit', '[spit]', null, 'v.吐（唾液等）；唾弃', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2068', '8', 'spill', '[spil]', null, 'v.溢出，溅出，倒出', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2069', '9', 'slip', '[slip]', null, 'v.滑动，滑落；忽略', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2070', '10', 'slide', '[slaid]', null, 'v.滑动，滑落 n.滑动；滑面；幻灯片', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2071', '11', 'bacteria', '[bæk\'tiəriə]', null, 'n.细菌', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2072', '12', 'breed', '[bri:d]', null, 'n.种，品种 v.繁殖，产仔', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2073', '13', 'budget', '[\'bʌdʒit]', null, 'n.预算 v.编预算，作安排', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2074', '14', 'candidate', '[\'kændideit, -dət]', null, 'n.候选人', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2075', '15', 'campus', '[\'kæmpəs]', null, 'n.校园', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2076', '16', 'liberal', '[\'libərəl]', null, 'a.慷慨的；丰富的；自由的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2077', '17', 'transform', '[træns\'fɔ:m, trænz-, trɑ:n-]', null, 'v.转变，变革；变换', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2078', '18', 'transmit', '[trænz\'mit, træns-, trɑ:n-]', null, 'v.传播，播送；传递', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2079', '19', 'transplant', '[træns\'plɑ:nt, trænz-, trɑ:n-, -\'plænt]', null, 'v.移植', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2080', '20', 'transport', '[træn\'spɔːt; trɑːn-]', null, 'vt.运输，运送 n.运输，运输工具', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2081', '21', 'shift', '[ʃift]', null, 'v.转移；转动；转变', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2082', '22', 'vary', '[\'vεəri]', null, 'v.变化，改变；使多样化', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2083', '23', 'vanish', '[\'væniʃ]', null, 'vi.消灭，不见', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2084', '24', 'swallow', '[\'swɔləu]', null, 'v.吞下，咽下 n.燕子', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2085', '25', 'suspicion', '[sə\'spiʃən]', null, 'n.怀疑，疑心', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2086', '26', 'suspicious', '[sə\'spiʃəs]', null, 'a.怀疑的，可疑的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2087', '27', 'mild', '[maild]', null, 'a.温暖的，暖和的；温柔的，味淡的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2088', '28', 'tender', '[\'tendə]', null, 'a.温柔的；脆弱的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2089', '29', 'nuisance', '[\'nju:səns]', null, 'n.损害，妨害，讨厌（的人或事物）', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2090', '30', 'insignificant', '[ɪnsɪg\'nɪfɪk(ə)nt]', null, 'a.无意义的，无足轻重的；无价值的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2091', '31', 'accelerate', '[ək\'seləreit]', null, 'vt.加速，促进', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2092', '32', 'absolute', '[\'æbsəlju:t, ,æbsə\'lju:t]', null, 'a.绝对的，无条件的；完全的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2093', '33', 'boundary', '[\'baundəri]', null, 'n.分界线，边界', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2094', '34', 'brake', '[breik]', null, 'n.刹车，制动器 v.刹住（车）', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2095', '35', 'catalog', '[\'kætəlɔɡ]', null, 'n.目录（册） v.编目', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2096', '36', 'vague', '[veiɡ]', null, 'a.模糊的，不明确的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2097', '37', 'vain', '[vein]', null, 'n.徒劳，白费', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2098', '38', 'extinct', '[ik\'stiŋkt]', null, 'a.绝灭的，熄灭的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2099', '39', 'extraordinary', '[ik\'strɔ:dənəri, ,ekstrə\'ɔ:di-]', null, 'a.不平常的，特别的，非凡的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2100', '40', 'extreme', '[ik\'stri:m]', null, 'a.极度的，极端的 n.极端，过分', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2101', '41', 'agent', '[\'eidʒənt]', null, 'n.代理人，代理商；动因，原因', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2102', '42', 'alcohol', '[\'ælkəhɔl]', null, 'n.含酒精的饮料，酒精', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2103', '43', 'appeal', '[ə\'pi:l]', null, 'n./vi.呼吁，恳求', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2104', '44', 'appreciate', '[ə\'pri:ʃieit]', null, 'vt.重视，赏识，欣赏', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2105', '45', 'approve', '[ə\'pru:v]', null, 'v.赞成，同意，批准', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2106', '46', 'stimulate', '[\'stimjuleit]', null, 'vt.刺激，激励', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2107', '47', 'acquire', '[ə\'kwaiə]', null, 'vt.取得，获得；学到', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2108', '48', 'accomplish', '[ə\'kʌmpliʃ, ə\'kɔm-]', null, 'vt .完成，到达；实行', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2109', '49', 'network', '[\'netwə:k]', null, 'n.网状物；广播网，电视网；网络', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2110', '50', 'tide', '[taid]', null, 'n.潮汐；潮流', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2111', '51', 'tidy', '[\'taidi]', null, 'a.整洁的，整齐的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2112', '52', 'trace', '[treis]', null, 'vt.追踪，找到 n.痕迹，踪迹', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2113', '53', 'torture', '[\'tɔ:tʃə]', null, 'n./vt.拷打，折磨', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2114', '54', 'wander', '[\'wɔndə]', null, 'vi.漫游，闲逛', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2115', '55', 'wax', '[wæks]', null, 'n.蜡', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2116', '56', 'weave', '[wi:v]', null, 'v.织，编', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2117', '57', 'preserve', '[pri\'zə:v]', null, 'v.保护，保存，保持，维持', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2118', '61', 'abuse', '[ə\'bju:z, ə\'bju:s]', null, 'v.滥用，虐待；谩骂', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2119', '62', 'academic', '[,ækə\'demik]', null, 'a.学术的；高等院校的；研究院的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2120', '63', 'academy', '[ə\'kædəmi]', null, 'n.（高等）专科院校；学会', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2121', '64', 'battery', '[\'bætəri]', null, 'n.电池（组）', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2122', '65', 'barrier', '[\'bæriə]', null, 'n.障碍；棚栏', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2123', '66', 'cargo', '[\'kɑ:ɡəu]', null, 'n.（船、飞机等装载的）货物', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2124', '67', 'career', '[kə\'riə]', null, 'n.生涯，职业', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2125', '68', 'vessel', '[\'vesəl]', null, 'n.船舶；容器，器皿；血管', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2126', '69', 'vertical', '[\'və:tikəl]', null, 'a.垂直的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2127', '70', 'oblige', '[ə\'blaidʒ]', null, 'v.迫使，责成；使感激', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2128', '71', 'obscure', '[əb\'skjuə, ɔb-]', null, 'a.阴暗，模糊', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2129', '72', 'extent', '[ik\'stent]', null, 'n.程度，范围，大小，限度', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2130', '73', 'exterior', '[ik\'stiəriə]', null, 'n.外部，外表 a.外部的，外表的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2131', '74', 'external', '[ik\'stə:nəl]', null, 'a.外部的，外表的，外面的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2132', '75', 'petrol', '[\'petrəl]', null, 'n.汽油', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2133', '76', 'petroleum', '[pi\'trəuliəm, pə-]', null, 'n.石油', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2134', '77', 'delay', '[di\'lei]', null, 'vt./n.推迟，延误，耽搁', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2135', '78', 'decay', '[di\'kei]', null, 'vi.腐烂，腐朽', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2136', '79', 'decent', '[\'di:sənt]', null, 'a.像样的，体面的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2137', '80', 'route', '[ru:t, raut]', null, 'n.路；路线；航线', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2138', '81', 'ruin', '[\'ruin, \'ru:-]', null, 'v.毁坏，破坏 n.毁灭，[pl.]废墟', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2139', '82', 'sake', '[seik]', null, 'n.缘故，理由', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2140', '83', 'satellite', '[\'sætəlait]', null, 'n.卫星', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2141', '84', 'scale', '[skeil]', null, 'n.大小，规模；等级；刻度', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2142', '85', 'temple', '[\'templ]', null, 'n.庙宇', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2143', '86', 'tedious', '[\'ti:diəs, \'ti:dʒəs]', null, 'a.乏味道，单调的，', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2144', '87', 'tend', '[tend]', null, 'vi.易于，趋向', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2145', '88', 'tendency', '[\'tendənsi]', null, 'n.趋向，趋势', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2146', '89', 'ultimate', '[\'ʌltimət]', null, 'a.极端的，最大的，最终的 n.极端', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2147', '90', 'undergo', '[,ʌndə\'ɡəu]', null, 'v.经历，遭受', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2148', '91', 'abundant', '[ə\'bʌndənt]', null, 'a.丰富的，充裕的，大量的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2149', '92', 'adopt', '[ə\'dɔpt]', null, 'v.收养；采用；采纳', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2150', '93', 'adapt', '[ə\'dæpt]', null, 'vi.适应，适合；改编，改写 vt.使适应', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2151', '94', 'bachelor', '[\'bætʃələ]', null, 'n.学士，学士学位；单身汉', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2152', '95', 'casual', '[\'kæʒjuəl]', null, 'a.偶然的，碰巧的；临时的；非正式的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2153', '96', 'trap', '[træp]', null, 'n.陷阱，圈套 v.设陷阱捕捉', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2154', '97', 'vacant', '[\'veikənt]', null, 'a.空的，未占用的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2155', '98', 'vacuum', '[\'vækjuəm]', null, 'n.真空，真空吸尘器', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2156', '99', 'oral', '[\'ɔ:rəl, \'ɔ-]', null, 'a.口头的，口述的，口的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2157', '100', 'optics', '[\'ɔptiks]', null, 'n.（单、复数同形）光学', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2158', '101', 'organ', '[\'ɔ:ɡən]', null, 'n.器官，风琴', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2159', '102', 'excess', '[ik\'ses, \'ek-, \'ekses, ik\'s-]', null, 'n.过分，过量，过剩', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2160', '103', 'expel', '[ik\'spel]', null, 'v.驱逐，开除，赶出', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2161', '104', 'expend', '[ik\'spend]', null, 'v.消费', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2162', '105', 'expenditure', '[iks\'penditʃə]', null, 'n.支出，消费；经费', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2163', '106', 'expense', '[ik\'spens]', null, 'n.开销，费用', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2164', '107', 'expensive', '[ik\'spensiv]', null, 'a.花钱多的；价格高贵的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2165', '108', 'expand', '[ik\'spænd]', null, 'v.扩大，扩张；展开，膨胀', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2166', '109', 'expansion', '[ik\'spænʃən]', null, 'n.扩大，扩充；发展，膨胀', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2167', '110', 'private', '[\'praivit]', null, 'a.私人的，个人的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2168', '111', 'individual', '[,indi\'vidjuəl, -dʒəl]', null, 'a.个别的，单独的 n.个人，个体', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2169', '112', 'personal', '[\'pə:sənl]', null, 'a.个人的，私人的；亲自的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2170', '114', 'personnel', '[,pə:sə\'nel]', null, 'n.[总称]人员，员工；人事部门', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2171', '115', 'the', '[ði]', null, 'Pacific Ocean 太平洋', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2172', '116', 'the', '[ði]', null, 'Atlantic Ocean 大西洋', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2173', '117', 'the', '[ði]', null, 'Arctic Ocean 北冰洋', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2174', '118', 'the', '[ði]', null, 'Antarctic Ocean 南冰洋', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2175', '119', 'grant', '[ɡrænd]', null, 'vt.授予，同意，准予', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2176', '119', 'grand', '[ɡrænd]', null, 'a.宏伟大，壮丽的，重大的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2177', '120', 'invade', '[in\'veid]', null, 'v.侵入，侵略，侵袭 ', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2178', '121', 'acid', '[\'æsid]', null, 'n.酸，酸性物质 a.酸的；尖刻的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2179', '122', 'acknowledge', '[ək\'nɔlidʒ]', null, 'v.承认；致谢', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2180', '123', 'balcony', '[\'bælkəni]', null, 'n.阳台', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2181', '124', 'calculate', '[\'kælkjuleit]', null, 'vt.计算，核算', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2182', '125', 'calendar', '[\'kælində]', null, 'n.日历，月历', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2183', '126', 'optimistic', '[,ɔpti\'mistik]', null, 'a.乐观', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2184', '127', 'optional', '[\'ɔpʃənəl]', null, 'a.可以任选的，非强制的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2185', '128', 'outstanding', '[,aut\'stændiŋ]', null, 'a.杰出的，突出的，显著的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2186', '129', 'export', '[ik\'spɔ:t, \'eks-, \'ekspɔ:t]', null, 'n.出口（物） v.出口，输出', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2187', '130', 'import', '[im\'pɔ:t, \'impɔ:t]', null, 'n.进口（物） v.进口，输入', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2188', '131', 'impose', '[im\'pəuz]', null, 'vt.把...加强(on)；采用，利用', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2189', '132', 'religion', '[ri\'lidʒən]', null, 'n.宗教，宗教信仰', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2190', '133', 'religious', '[ri\'lidʒəs]', null, 'a.宗教的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2191', '134', 'victim', '[\'viktim]', null, 'n.牺牲品，受害者', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2192', '135', 'video', '[\'vidiəu]', null, 'n.电视，视频 a.电视的，录像的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2193', '136', 'videotape', '[\'vidiəuteip]', null, 'n.录像磁带 v.把...录在录像带上', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2194', '137', 'offend', '[ə\'fend]', null, 'v.冒犯，触犯', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2195', '138', 'bother', '[\'bɔðə]', null, 'v.打搅，麻烦', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2196', '139', 'interfere', '[,intə\'fiə]', null, 'v.干涉，干扰，妨碍', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2197', '140', 'internal', '[in\'tə:nəl]', null, 'a.内部的，国内的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2198', '141', 'beforehand', '[bi\'fɔ:hænd]', null, 'ad.预先，事先', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2199', '142', 'racial', '[\'reiʃəl]', null, 'a.人种的种族的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2200', '143', 'radiation', '[,reidi\'eiʃən]', null, 'n.放射物，辐射', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2201', '144', 'radical', '[\'rædikəl]', null, 'a.根本的；激进的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2202', '145', 'range', '[reindʒ]', null, 'n.幅度，范围 v.（在某范围内）变动', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2203', '146', 'wonder', '[\'wʌndə]', null, 'n.惊奇，奇迹 v.想知道，对...感到疑惑', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2204', '147', 'isolate', '[\'aisəleit, -lit]', null, 'vt.使隔离，使孤立', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2205', '148', 'issue', '[\'iʃju:, \'isju:]', null, 'n.问题，争论点；发行，（报刊）一期', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2206', '149', 'hollow', '[\'hɔləu]', null, 'a.空的，中空的，空虚道', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2207', '150', 'hook', '[huk]', null, 'n.钩 vt.钩住', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2208', '151', 'adequate', '[\'ædikwit]', null, 'a.适当地；足够', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2209', '152', 'adhere', '[əd\'hiə]', null, 'vi.粘附，附着；遵守，坚持', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2210', '153', 'ban', '[bæn]', null, 'vt.取缔，禁止', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2211', '154', 'capture', '[\'kæptʃə]', null, 'vt.俘虏，捕获', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2212', '155', 'valid', '[\'vælid]', null, 'a.有效的，有根据的；正当的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2213', '156', 'valley', '[\'væli]', null, 'n.山谷，峡谷', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2214', '157', 'consistent', '[kən\'sistənt]', null, 'a.坚固定；一致的，始终如一的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2215', '158', 'continuous', '[kən\'tɪnjʊəs]', null, 'a.继续的，连续（不断）的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2216', '159', 'continual', '[kən\'tinjuəl]', null, 'a.不断地，频繁的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2217', '160', 'explode', '[ik\'spləud]', null, 'v.爆炸；爆发；激增', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2218', '161', 'exploit', '[\'eksplɔit, ik\'s-]', null, 'v.剥削；利用，开采', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2219', '162', 'explore', '[ik\'splɔ:]', null, 'v.勘探', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2220', '163', 'explosion', '[ik\'spləuʒən]', null, 'n.爆炸；爆发；激增', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2221', '164', 'explosive', '[ik\'spləusiv]', null, 'a.爆炸的；极易引起争论的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2222', '165', 'remote', '[ri\'məut]', null, 'a.遥远的，偏僻的', null, null, null, '0', '0');
INSERT INTO `word` VALUES ('2223', '166', 'removal', '[ri\'mu:vəl]', null, 'n.除去，消除', null, null, null, '0', '0');
