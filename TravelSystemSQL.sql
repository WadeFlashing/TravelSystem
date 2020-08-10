-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: travel
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `aid` int(50) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'admin','admin',NULL);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diary` (
  `did` int(100) NOT NULL AUTO_INCREMENT,
  `dname` varchar(100) NOT NULL,
  `dcontent` varchar(7000) DEFAULT NULL,
  `dimage` varchar(100) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL,
  `diarytime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `diary_user_fk_1` (`uid`),
  CONSTRAINT `diary_user_fk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (1,'北海道之旅，大雪静谧美好','1月份去的 北海道 ，而到12月底才打算要写游记…有一些已经忘得差不多了，只能靠照片来找回一些零星的记忆。果然，对抗遗忘的唯一办法就是及时记录啊。旭川位于中部上川盆地，石狩川及其支流流贯，是 日本 北海道 第二 大城 ，艺术活动十分频繁，有“艺术之城”之称。旭川以雄伟的大雪山为背景，从旭川车站前笔直延伸的 和平 大道购物公园里到处都是喷泉和城市雕塑，景色十分优美。旭川最具名气的是旭川动物园，它是目前 日本 最有人气的动物园， 北极 熊，帝企鹅巡游等各种活动不断，每天都有来自世界各地的游客参观。旭川是 北海道 极富特色的代表城市之一，山丘上的雪之美术馆，完全以“雪”为主题来呈现，展示了雪花的各种形态，让人大开眼界。','images2/destination-1.jpg,images2/destination-2.jpg,images2/destination-3.jpg',1,'2020-01-29 22:26:08'),(2,'苏沪，穿越时空遇见你','我与上海 ，因工作有着割舍不去的情分。来来往往，这座被戏称为“魔都”的都市，如同被钢筋怪兽攻略了的建筑森林，却是中式小资情怀的启蒙地，几经沉淀后，我认同了它的魔力与骄傲。长居于南方（oh， 上海 也是南方， 广东 人属性在此暴露无遗哈哈）大都市，本来以为自己已经对繁华都市见怪不怪，但 上海 无疑是一个“超进化”的都市。在城市中穿梭，你会惊喜的发现，古早里弄中偶尔出现几栋欧式建筑，两者达到了最优的和谐，诉说着老 上海 的 江南 韵味和西方情结。我记忆中最温柔的城市是 苏州 ，这里有吴侬细语和小桥流水，河岸边的摇曳船只和飘荡杨柳，山水名画也不过尔尔。有幸趁在 上海 的某个周末，驱车郊里直达 苏州 ，将儿时那份朦胧的水乡梦化为现实。“月明星稀，灯光如练。何处寄足，高楼广寒。非敢作遨游之梦，吾爱此天上人间。”这是1932年上海百乐门舞厅刚刚建成时，上海滩传诵一时的诗句。',NULL,2,'2020-01-30 22:26:08'),(4,'安纳托利亚西部环线巡游','土耳其 ，位于安纳托利亚半岛，历史上在这片大陆上陆续出现过赫梯，特洛伊，希腊 ，罗马 ，拜占庭，奥斯曼等一系列耳熟能详的伟 大名 字。一直以来，心向往之，终于2019年6月，正值春末夏初，在 土耳其 车厘子熟透的季节。我和老婆展开了一场 土耳其 西部环线自驾之旅。早上10点抵达 伊斯坦布尔 新机场11：30分取到车，驱车2个小时到达位于Uludag山脚下的小村庄Cumalikizik。在土耳其语中，称呼坐落在Uludag山脚下及峡谷中的村庄为Kizik。这是Oghuz turks（既西突厥人）二十四部落中的一支，这些人来自被称作Kizik的村庄。而Cuma在土耳其 语中为聚礼之意，人们在星期五聚集做礼拜的地方，就是今天我所到访的小镇。随后是精美的古代石棺展厅，你一定会为这里布满精美雕刻的 罗马 石棺着迷。其中最精彩的一口石棺是上图的赫拉克勒斯石棺，公元二世纪，出土于perga古城。石棺上精美的雕刻讲述了 希腊 神话中的英雄赫拉克勒斯在完成杀掉美杜莎、与 狮子 搏斗、偷盗金苹果等国王交付的12项挑战后升格为神的传奇故事，也记录了他从青年变成老年的过程。这个镇馆之宝的石棺于上世纪60年代在土耳其安塔利亚省Perga古城被发掘，石棺的碎片先后被非法走私到美国、德国、英国和瑞士等国。后来石棺在英国进行了修复，修复完成后于2010年进入 瑞士时被日内瓦海关查获。瑞士当局为此联系了土耳其有关部门。经考古和科技鉴定， 土耳其文化和旅游部确认这座石棺正是从Perga古城遗址盗走的赫拉克勒斯石棺。2011年，土耳其检察机关正式向瑞士政府提出司法调查，要求其归还石棺。经过漫长的法律程序，瑞士司法机关于2015年9月宣布将石棺归还土耳其 。历经约半个世纪的坎坷，2017年9月赫拉克勒斯石棺终于回到安塔利亚。土耳其 ，位于安纳托利亚半岛，历史上在这片大陆上陆续出现过赫梯，特洛伊，希腊 ，罗马 ，拜占庭，奥斯曼等一系列耳熟能详的伟 大名 字。一直以来，心向往之，终于2019年6月，正值春末夏初，在 土耳其 车厘子熟透的季节。我和老婆展开了一场 土耳其 西部环线自驾之旅。早上10点抵达 伊斯坦布尔 新机场11：30分取到车，驱车2个小时到达位于Uludag山脚下的小村庄Cumalikizik。在土耳其语中，称呼坐落在Uludag山脚下及峡谷中的村庄为Kizik。这是Oghuz turks（既西突厥人）二十四部落中的一支，这些人来自被称作Kizik的村庄。而Cuma在土耳其 语中为聚礼之意，人们在星期五聚集做礼拜的地方，就是今天我所到访的小镇。随后是精美的古代石棺展厅，你一定会为这里布满精美雕刻的 罗马 石棺着迷。其中最精彩的一口石棺是上图的赫拉克勒斯石棺，公元二世纪，出土于perga古城。石棺上精美的雕刻讲述了 希腊 神话中的英雄赫拉克勒斯在完成杀掉美杜莎、与 狮子 搏斗、偷盗金苹果等国王交付的12项挑战后升格为神的传奇故事，也记录了他从青年变成老年的过程。这个镇馆之宝的石棺于上世纪60年代在土耳其安塔利亚省Perga古城被发掘，石棺的碎片先后被非法走私到美国、德国、英国和瑞士等国。后来石棺在英国进行了修复，修复完成后于2010年进入 瑞士时被日内瓦海关查获。瑞士当局为此联系了土耳其有关部门。经考古和科技鉴定， 土耳其文化和旅游部确认这座石棺正是从Perga古城遗址盗走的赫拉克勒斯石棺。2011年，土耳其检察机关正式向瑞士政府提出司法调查，要求其归还石棺。经过漫长的法律程序，瑞士司法机关于2015年9月宣布将石棺归还土耳其 。历经约半个世纪的坎坷，2017年9月赫拉克勒斯石棺终于回到安塔利亚。历经约半个世纪的坎坷，2017年9月赫拉克勒斯石棺终于回到安塔利亚。','images2/destination-4.jpg,images2/destination-5.jpg,images2/destination-6.jpg',10,'2020-02-16 22:26:08'),(25,'游记5','游记5','upload/全国高新信息技术数据库.jpg,upload/学院优秀班干部.jpg,upload/四级证书.jpg',2,'2020-03-22 15:05:53'),(26,'杭州西湖，一个美丽安静的地方','1月份去的 北海道 ，而到12月底才打算要写游记…有一些已经忘得差不多了，只能靠照片来找回一些零星的记忆。果然，对抗遗忘的唯一办法就是及时记录啊。旭川位于中部上川盆地，石狩川及其支流流贯，是 日本 北海道 第二 大城 ，艺术活动十分频繁，有“艺术之城”之称。旭川以雄伟的大雪山为背景，从旭川车站前笔直延伸的 和平 大道购物公园里到处都是喷泉和城市雕塑，景色十分优美。旭川最具名气的是旭川动物园，它是目前 日本 最有人气的动物园， 北极 熊，帝企鹅巡游等各种活动不断，每天都有来自世界各地的游客参观。旭川是 北海道 极富特色的代表城市之一，山丘上的雪之美术馆，完全以“雪”为主题来呈现，展示了雪花的各种形态，让人大开眼界。','images2/destination-4.jpg,images2/destination-5.jpg,images2/destination-6.jpg',1,'2020-04-02 15:05:53'),(48,'香港之旅','香港电影是华语电影的先驱者。在1997年回归之前， 香港 已经发展成为华语世界（包括海外华人社会）以至东亚电影的制作基地之一。在 亚洲 ， 香港 也一直是电影工业基地和电影出口地之一，人们把它称做“东方 好莱坞 ”。香港 电影的辉煌成就和80后的成长经历交织在一起，这使得我们的 香港 之旅必然首先会是一场电影朝圣之旅！在前往 香港 的前晚，我准备了一些电影剧照，布置给二毛筒靴一个“家庭作业”：带我去寻访这些剧照的拍摄地吧！据说，在 香港 众多警署中最上镜的就是油麻地警署。这座蓝灰色的爱德华式三层洋楼，也是颇有历史渊源。1860年， 九龙 半岛纳入 香港 领域后，治安问题立即引起关注。 九龙 半岛上最大的聚居地是油麻地，于是时任政府在1865年租用一座楼房，在区内设立了警署。直至1871年，时任政府再在附近兴建了一座全新的警署，成为 九龙 区的总部。五年后，油麻地区重新规划，以榕树头为市区中心，油麻地警署就坐落于其西面重要位置。其后，另一座新警署于1923年毗邻落成，与警署旧建筑连成一线，屹立至今，被视为区内的重要历史建筑。如果要对 香港 电影做一个分类，大致可以分出七大类型，包括武侠片（或称功夫片、动作片）、喜剧片、黑帮片、警匪片、文艺片、鬼片和情色片。当然，有些 香港 电影也并非可单纯归纳为某一类型， 比如 2005年上映的《黑社会》，不少影迷评价它是黑帮文艺片。作为《黑社会》拍摄地之一的油麻地警署，导演杜琪峰这样评价：“警署的外貌并没有大变化，与小时候所见一样。虽然平日鲜有机会入内，但是感觉上与警署非常亲近，而只要镜头对准它，不用再多说明，就知道这就是历史。”开创了周氏“无厘头”喜剧风格，成为 香港 喜剧电影中扛把子的星爷周星驰，童年生活并不优渥，周父本就收入微薄，再加上三个孩子的陆续出生，让日子过得捉襟见肘。在周星驰7岁那年，父母离异，他连同姐姐妹妹被判给了母亲。为了让孩子们吃饱饭，能上学，周母不知疲倦地拼命干活，最多时一天做三份工，以至于没时间照顾年幼的孩子，不得不把周星驰和妹妹送到了庙街的外婆家寄养。无独有偶，周星驰电影《食神》的拍摄地也正是庙街，该片讲述了一位 香港 食神被徒弟陷害，名誉扫地退出饮食界后，又奋发图强，重新夺回食神之位的故事。','upload/diary3.jpg,upload/diary2.jpg,upload/diary1.jpg',16,'2020-05-03 15:56:51');
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diarycheck`
--

DROP TABLE IF EXISTS `diarycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diarycheck` (
  `c_did` int(11) NOT NULL AUTO_INCREMENT,
  `c_uid` int(11) DEFAULT NULL,
  `c_dname` varchar(100) DEFAULT NULL,
  `c_dcontent` varchar(7000) DEFAULT NULL,
  `c_dimage` varchar(200) DEFAULT NULL,
  `c_diarytime` varchar(50) DEFAULT NULL,
  `diaryState` varchar(30) DEFAULT '待审核',
  PRIMARY KEY (`c_did`),
  KEY `diaryCheck_user_fk_1` (`c_uid`),
  CONSTRAINT `diaryCheck_user_fk_1` FOREIGN KEY (`c_uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diarycheck`
--

LOCK TABLES `diarycheck` WRITE;
/*!40000 ALTER TABLE `diarycheck` DISABLE KEYS */;
INSERT INTO `diarycheck` VALUES (2,1,'游记测试','游记测试','upload/系统功能模块图.png','2020-04-13 16:14:43','审核通过'),(3,1,'游记测试2','游记测试2','upload/ProjectDetail.png,upload/酒店信息页面.png','2020-04-13 16:23:24','待审核'),(17,4,'西游记','西游记','upload/customer.png,upload/manager.png,upload/管理员功能结构图 .png,upload/系统功能模块图.png','2020-04-14 23:27:45','审核不通过'),(18,1,'深圳嘉之源','游记内容','upload/DSC_0799_1.jpg','2020-04-26 17:06:25','待审核'),(19,1,'测试','测试','upload/DSC_0799.JPG','2020-05-01 18:07:16','待审核'),(25,1,'水浒传','水浒传','upload/管理员功能结构图 .png','2020-05-01 20:22:03','审核通过'),(26,16,'香港之旅','香港电影是华语电影的先驱者。在1997年回归之前， 香港 已经发展成为华语世界（包括海外华人社会）以至东亚电影的制作基地之一。在 亚洲 ， 香港 也一直是电影工业基地和电影出口地之一，人们把它称做“东方 好莱坞 ”。香港 电影的辉煌成就和80后的成长经历交织在一起，这使得我们的 香港 之旅必然首先会是一场电影朝圣之旅！在前往 香港 的前晚，我准备了一些电影剧照，布置给二毛筒靴一个“家庭作业”：带我去寻访这些剧照的拍摄地吧！据说，在 香港 众多警署中最上镜的就是油麻地警署。这座蓝灰色的爱德华式三层洋楼，也是颇有历史渊源。1860年， 九龙 半岛纳入 香港 领域后，治安问题立即引起关注。 九龙 半岛上最大的聚居地是油麻地，于是时任政府在1865年租用一座楼房，在区内设立了警署。直至1871年，时任政府再在附近兴建了一座全新的警署，成为 九龙 区的总部。五年后，油麻地区重新规划，以榕树头为市区中心，油麻地警署就坐落于其西面重要位置。其后，另一座新警署于1923年毗邻落成，与警署旧建筑连成一线，屹立至今，被视为区内的重要历史建筑。如果要对 香港 电影做一个分类，大致可以分出七大类型，包括武侠片（或称功夫片、动作片）、喜剧片、黑帮片、警匪片、文艺片、鬼片和情色片。当然，有些 香港 电影也并非可单纯归纳为某一类型， 比如 2005年上映的《黑社会》，不少影迷评价它是黑帮文艺片。作为《黑社会》拍摄地之一的油麻地警署，导演杜琪峰这样评价：“警署的外貌并没有大变化，与小时候所见一样。虽然平日鲜有机会入内，但是感觉上与警署非常亲近，而只要镜头对准它，不用再多说明，就知道这就是历史。”开创了周氏“无厘头”喜剧风格，成为 香港 喜剧电影中扛把子的星爷周星驰，童年生活并不优渥，周父本就收入微薄，再加上三个孩子的陆续出生，让日子过得捉襟见肘。在周星驰7岁那年，父母离异，他连同姐姐妹妹被判给了母亲。为了让孩子们吃饱饭，能上学，周母不知疲倦地拼命干活，最多时一天做三份工，以至于没时间照顾年幼的孩子，不得不把周星驰和妹妹送到了庙街的外婆家寄养。无独有偶，周星驰电影《食神》的拍摄地也正是庙街，该片讲述了一位 香港 食神被徒弟陷害，名誉扫地退出饮食界后，又奋发图强，重新夺回食神之位的故事。','upload/diary3.jpg,upload/diary2.jpg,upload/diary1.jpg','2020-05-03 15:56:51','审核通过');
/*!40000 ALTER TABLE `diarycheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hotel` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(50) DEFAULT NULL,
  `hotelAddress` varchar(100) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `introduce` varchar(300) DEFAULT NULL,
  `hotelImage` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'丽江·晴初阁客栈','云南丽江','标准房/双人房/豪华房',380,'客栈是一家具有纳西特色的精品客栈，内有双层雕花的六合门、五福拜寿的院坝、东巴象形字的题壁等，处处演绎着纳西的传统与艺术。','images/abc1.jpg,images/abc2.jpg,images/abc3.jpg'),(2,'周庄金钩客栈临河别院','江苏','标准房/双人房/豪华房',200,' 客栈位于双桥东侧——著名的河道银子浜，临水而建，距双桥、沈厅、张厅咫尺之遥。 客栈阳台可以赏小桥流水，蜂蜂们可以喝着阿婆茶，和老板聊聊天，度过惬意的周庄生活。客栈服务热情周到、真诚贴心，为蜂蜂们创造家一般温馨的环境。','images/abc1.jpg,images/abc2.jpg,images/abc3.jpg');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelorders`
--

DROP TABLE IF EXISTS `hotelorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hotelorders` (
  `horderid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `hotelName` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `travelTime` varchar(50) DEFAULT NULL,
  `orderTime` varchar(50) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `days` varchar(50) DEFAULT NULL,
  `orderState` varchar(20) DEFAULT '待支付',
  PRIMARY KEY (`horderid`),
  KEY `Hotelorders_uid_fk1` (`uid`),
  KEY `Hotelorders_hid_fk2` (`hid`),
  CONSTRAINT `Hotelorders_hid_fk2` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`),
  CONSTRAINT `Hotelorders_uid_fk1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelorders`
--

LOCK TABLES `hotelorders` WRITE;
/*!40000 ALTER TABLE `hotelorders` DISABLE KEYS */;
INSERT INTO `hotelorders` VALUES (1,1,'丽江·晴初阁客栈',1,380,'05/14/2020','2020-05-02 16:44:59','豪华房','2天','待支付'),(2,2,'周庄金钩客栈临河别院',2,160,'05/22/2020','2020-05-02 16:46:08','标准间','2天','待支付'),(3,1,'丽江·晴初阁客栈',16,380,'05/30/2020','2020-05-03 15:53:32','豪华房','2天','已支付');
/*!40000 ALTER TABLE `hotelorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `messageid` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) DEFAULT NULL,
  `did` int(100) DEFAULT NULL,
  `mcontent` varchar(5000) NOT NULL,
  `mtime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  KEY `message_diary_fk_1` (`did`),
  CONSTRAINT `message_diary_fk_1` FOREIGN KEY (`did`) REFERENCES `diary` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,NULL,2,'楼主写的真好！','2020-01-29 15:56:46'),(2,NULL,2,'苏州真好看！','2020-01-29 15:58:46'),(3,NULL,2,'上海是个好地方。','2020-01-29 16:03:45'),(10,NULL,1,'北海道真美','2020-01-29 17:01:11'),(11,NULL,1,'楼主的游记值得欣赏。','2020-01-29 21:24:18'),(14,NULL,1,'2020会更好。','2020-01-29 22:21:02'),(15,NULL,1,'鼠年大吉','2020-01-29 22:26:08'),(17,NULL,1,'鼠年吉祥','2020-01-29 22:28:12'),(18,NULL,2,'工作顺利呀','2020-01-29 22:28:51'),(19,NULL,4,'作者写得太好了','2020-03-14 21:32:16'),(21,NULL,2,'武汉加油','2020-03-19 18:25:12'),(22,NULL,4,'太美了！','2020-05-03 15:52:26');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `orderTime` varchar(50) DEFAULT NULL,
  `travelTime` varchar(50) DEFAULT NULL,
  `orderState` varchar(20) DEFAULT '待支付',
  PRIMARY KEY (`orderid`),
  KEY `orders_uid_fk1` (`uid`),
  KEY `orders_pid_fk2` (`pid`),
  CONSTRAINT `orders_pid_fk2` FOREIGN KEY (`pid`) REFERENCES `project` (`pid`),
  CONSTRAINT `orders_uid_fk1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,1,5,1280,'2020-04-29 23:55:33','05/08/2020','待支付'),(6,2,2,1280,'2020-04-30 23:53:15','05/09/2020','已支付'),(7,1,5,1280,'2020-05-02 15:01:50','05/03/2020','待支付'),(11,1,2,1280,'2020-05-02 15:08:57','06/05/2020','待支付'),(12,16,16,1780,'2020-05-03 15:50:30','06/04/2020','已支付');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project` (
  `pid` int(100) NOT NULL AUTO_INCREMENT,
  `pname` varchar(1000) NOT NULL,
  `pdescribe` varchar(2000) DEFAULT NULL,
  `pcontent` varchar(3000) DEFAULT NULL,
  `pimage` varchar(150) DEFAULT NULL,
  `pcost` double DEFAULT NULL,
  `pbegin` varchar(50) DEFAULT NULL,
  `pend` varchar(50) DEFAULT NULL,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'云南大理','云南大理丽江6日定制游（吉普车环游洱海享受浪漫时光+网红景点·天空之境·白桌子·玻璃球+漫步香格里拉花海秘境+挑战玉龙雪山极限登顶）\r\n','云南是旅游大省主要的景点很多昆明、大理、丽江、香格里拉、泸沽湖、西双版纳、腾冲瑞丽等等，闺蜜假期长玩了10天回来，我们的时间有限，所以选了6天的线路。原本预算3000多/人，经过阿娇的帮忙订票和行程安排，实际每人花费1600左右，节省超过一半。我们到昆明后的接站、酒店、门票、坐车等都是她帮我们全程安排得妥妥当当，一点也不用自己费心十分省心，（到达当天还特意请我们吃了一次云南正宗过桥米线味道非常不错），去云南的朋友一定要去尝尝，旅行区间行程安排服务也非常到位，真心超级棒！','images/img_4.jpg,images/img_5.jpg,images/img_6.jpg',1800,'昆明','大理古城','云南省'),(2,'西安','私家定制团/团圆西安年（逛古都庙会+赏大唐绚丽灯会+看陕西新春社火+大唐不夜城彻夜狂欢+跟老陕走街串巷咥美食）','8月底去的西安，以为天气很凉快了，没想到还是一个炎热的夏天，不过还好，碰上下雨相对凉快些。我们是到了西安后，在网上订的一日游，这天碰到一个很不错的导游，算是西安玩的比较开心的，一天早晨去的华清池，下午来到兵马俑。导游说这是他带兵马俑的队以来最凉快的一天。但是进到里面还是密不透风，大汗淋漓的。到兵马俑还是借一个望远镜比较好，可以看到兵马俑脸部的细节。是恢复了很小一部分 还有大部分的散乱在一边。甚至能看到某些坑道焦黑的一片，据说是项羽一把火烧出来的。','images/xian1.jpg,images/xian2.jpg,images/xian3.jpg',1280,'古都庙会','大雁塔','陕西省'),(5,'乌镇','4天3晚杭州+乌镇+苏州家庭定制之旅 ( 访似水年华江南味道 +古今创越宋城 + 打卡许仙白娘子定情之地断桥 + 弄堂里的故事 听苏州小曲儿）','D1：杭州东站/萧山机场接 — 西湖风景区 — 清河坊街/宋城。1、西湖风格景区（西湖游船），西湖沿岸景点众多，乘船游西湖，是领略西湖美景的经典途径之一，湖面上往来的船只和赏景的游人也是西子湖一景。坐在游船上，畅游湖光山色，细观绿波岚影，领略一番西子湖“淡妆浓抹总相宜”的美丽动人风貌。D2：酒店出发 — 灵隐寺（飞来峰） — 龙井村 — 乌镇西栅。1、灵隐寺（飞来峰)，灵隐寺，又名云林寺，位于浙江省杭州市，背靠北高峰，面朝飞来峰，始建于东晋咸和元年（326年），占地面积约87000平方米。 灵隐寺开山祖师为西印度僧人慧理和尚。南朝梁武帝赐田并扩建。D3：酒店出发 — 乌镇东栅 —苏州拙政园 — 历史街区平江路（昆曲评弹）。','images/wuzhen1.jpg,images/wuzhen2.jpg,images/wuzhen3.jpg,',1280,'西湖风景区','寒山寺','浙江省'),(16,'苏州','杭州+苏州+乌镇5日江南水乡全景自由行定制之旅（探访四大名园拙政园+游一二等富贵风流之地','1小时 苏州博物馆：苏州博物馆位于苏州古城平江区拙政园西侧，它包括2006年起开放的新馆和太平天国忠王府古建筑（旧馆）两部分。整个博物馆就像一座小园林。在新馆内，可以看到从远古到近代的陶器、玉器、书画等文物；在忠王府内，还能看到秀丽典雅的“苏式彩绘”。2小时 拙政园：拙政园是“中国四大名园”之一，并被列入世界文化遗产名录。拙政园以水景见胜，凸现江南水乡风貌，典雅大方。花园总体分为东、中、西三部分，各具特色，尤其是中部花园，基本保持明代园林朴素自然的风格，为全园的精华。1.5小时 寒山寺：寒山寺位于苏州西郊，距今已有一千四百多年的历史，因唐代诗人张继的名诗《枫桥夜泊》中的“姑苏城外寒山寺、夜半钟声到客船”而闻名天下。寒山寺同时也是一处祈福胜地，每天来寺中撞钟进香、祈求平安的信徒络绎不绝。','images/suzhou1.jpg,images/suzhou2.jpg,images/suzhou3.jpg,',1880,'苏州博物馆','西溪湿地','江苏省'),(17,'成都','定制随心所欲·包车其实也不贵 成都+熊猫基地+九寨沟定制全景5日游（文游都江堰+聆听峨眉佛音+船游乐山大佛+逗趣熊猫铲屎官+Vip文艺旅拍+小众成都美食路线/好的旅行就等你来）','第一天：各地—成都—自由活动（武侯祠、锦里、宽窄巷子），第二天：成都-熊猫乐园/都江堰-茂县叠系海子-九寨沟沟口，第三天：九寨沟一日游：早餐后进入【九寨沟景区】。景区内换乘当地绿色环保观光车全天漫游被称 为“童话世界”的九寨沟。水是九寨沟的精灵，湖、瀑、溪、河、滩连缀在一起， 动与静结合，刚与柔并济，千颜万色，多姿多彩，体会“人在画中游”的感受。第四天：九寨沟沟口-黄龙/牟尼沟-成都，成都自由活动-双流机场-返程离开。','images/chengdu3.jpg,images/chengdu2.jpg,images/chengdu1.jpg',1900,'武侯祠','九寨沟沟口','四川省');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requirement` (
  `requireid` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) DEFAULT NULL,
  `requireplace` varchar(100) DEFAULT NULL,
  `scenicspot` varchar(1000) DEFAULT NULL,
  `requiredate` varchar(100) DEFAULT NULL,
  `requirements` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`requireid`),
  KEY `requirement_user_fk_1` (`uid`),
  CONSTRAINT `requirement_user_fk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
INSERT INTO `requirement` VALUES (1,1,'北京','天安门','03/03/2020','天安门广场升旗仪式。'),(4,2,'上海','外滩','02/03/2020','上海外滩观看夜景。'),(10,10,'西安','兵马俑','04/05/2020','观赏西安兵马俑盛状。'),(11,16,'上海','迪斯尼','05/30/2020','测试'),(12,NULL,'深圳','深圳','05/30/2020','深圳'),(13,NULL,'上海','迪士尼','05/30/2020','测试');
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_menu`
--

DROP TABLE IF EXISTS `tree_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tree_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `treename` varchar(100) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `filename` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_menu`
--

LOCK TABLES `tree_menu` WRITE;
/*!40000 ALTER TABLE `tree_menu` DISABLE KEYS */;
INSERT INTO `tree_menu` VALUES (1,'旅游项目管理',0,'closed',NULL),(2,'用户管理',0,'closed',NULL),(3,'订单管理',0,'closed',NULL),(4,'游记管理',0,'closed',NULL),(5,'审核管理',0,'closed',NULL),(6,'留言管理',0,'closed',NULL),(7,'线路需求管理',0,'closed',NULL),(9,'管理项目',1,'','system/selectProject.jsp'),(11,'管理用户信息',2,'','system/showUserInfo.jsp'),(12,'管理旅游订单',3,'','system/manageOrder.jsp'),(14,'管理游记',4,'','system/showDiary.jsp'),(16,'审核游记',5,NULL,'system/checkDiary.jsp'),(17,'管理留言',6,NULL,'system/showMessage.jsp'),(18,'查询需求',7,NULL,'system/showRequirement.jsp'),(20,'酒店管理',0,'closed',NULL),(21,'管理酒店',20,NULL,'system/manageHotel.jsp'),(22,'管理酒店订单',3,NULL,'system/manageHotelOrder.jsp');
/*!40000 ALTER TABLE `tree_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` char(10) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'abc','abc','男','18316119024','作者1','广东科技学院','如果有梦，那就去追'),(2,'vbg456789','456789','男','18316119023','作者2','广东科技学院','123456'),(4,'admin','123456','女','123456789','作者3',NULL,'游遍世界各地!'),(10,'wade','123456','女','15622948232','作者4',NULL,NULL),(16,'www','123456','男','18316554823','小红','广东科技学院','世界这么大，我想去看看');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-03 17:27:27
