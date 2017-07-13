-- MySQL dump 10.13  Distrib 5.6.33, for Win64 (x86_64)
--
-- Host: localhost    Database: com
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `activity`
--
drop database if exists com;

create database com;
  
use com;

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `htitle` varchar(50) NOT NULL,
  `himg` varchar(50) DEFAULT NULL,
  `hcontent` longtext,
  `hcreateDate` date DEFAULT NULL,
  PRIMARY KEY (`hid`),
  UNIQUE KEY `htitle` (`htitle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (4,'从全球创新创业峰会看创业生态中第三方服务机构的兴起','14963673008763bng5.jpg','10‍‍月19日，中关村创新创业季（2015）系列精彩活动之一的毕马威“全球创新创业峰会”在北京中关村中国电子大厦开幕，包括赛富基金、国新基金、GE Ventu','2017-06-02'),(5,'如何抓住多屏合一提供的新契机','1496367322646858abb87502963.jpg','一天二十四个小时，你知道自己是怎么度过的么?这是一份调查报告。大约凌晨5:00，一大批手机就已经在卧室里高频使用了。早上7:00的时候，洗手间在大量使用pad。早上8:00，在地铁城市，地铁上开始普遍使用pad+手机。9:00的时候，大家开始进入办公室，PC开始使用。11:00的时候，大量的手机又开始使用。这种情况一直延续到14:00，重新使用PC。15:00的时候，在机场的人群会大量使用pad+手机。18:00时候，手机又会在地铁大量使用。21:00的时候，很多人打开了客厅电视。22:00时候，很多人又开始在卧室使用pad和手机。然后周而复始?','2017-06-02'),(6,'秦君：“打动我的，是你的自信”','1496367345464758abb87502963.jpg','参赛其实就是另一种意义的投资，“一个真正好的参赛选手站在台上，永远是靠自己的思维和逻辑来打动评委的。”面对台下二十四家胜出的优胜团队受训成员，秦君如是说。','2017-06-02');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inst`
--

DROP TABLE IF EXISTS `inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inst`
--

LOCK TABLES `inst` WRITE;
/*!40000 ALTER TABLE `inst` DISABLE KEYS */;
INSERT INTO `inst` VALUES (1,'weiyijie','12332112','1093571068@qq.com');
/*!40000 ALTER TABLE `inst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `jname` varchar(30) NOT NULL,
  `jimg` varchar(50) DEFAULT NULL,
  `jcontent` longtext,
  `jcreateDate` date DEFAULT NULL,
  PRIMARY KEY (`jid`),
  UNIQUE KEY `jname` (`jname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (2,'创业邦','1496284282960155adb1f0922cf.jpg','最懂创业者，离资金最近','2017-06-01'),(3,' 可可豆创新孵化平台','14962849156194568cd5343f525.gif','可可豆创新孵化平台隶属于洛可可创新设计集团','2017-06-01'),(4,'天使汇','1496285311458753ab76be33b4d.gif','2011年11月11日正式上线运营。是个聚集创业者和投资人的投融资平台','2017-06-01'),(5,'Binggo咖啡','149628593965005382d8f746dae.gif','一家以咖啡和空间为载体，利用群智，跨界创新的创新型孵化器','2017-06-01'),(6,'车库咖啡','149628596195315382d949c32e6.gif','成立于2011年4月，是中关村创业大街上最早的一批创业主题咖啡厅之一\r\n','2017-06-01'),(7,'拓荒族','1496285977534355b18f271faf0.gif','集办公、营销、孵化功能三位一体的企业发展生态圈','2017-06-01');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(50) NOT NULL,
  `nimg` varchar(50) DEFAULT NULL,
  `ncontent` longtext,
  `ncreateDate` date DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `ntitle` (`ntitle`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (13,'从全球创新创业峰会看创业生态中第三方服务机构的兴起','149638177626571496367322646858abb87502963.jpg','5月2日，由北京市知识产权局、中关村管委会、海淀区人民政府主办，海淀园管委会、海淀区知识产权局承办的知识产权强区工程战略合作协议签约仪式暨2017中关村知识产权论坛在中关村国家自主创新示范区展示中心举行。\r\n\r\n  北京市委常委、副市长阴和俊，北京市知识产权局局长汪洪、中关村管委会主任翟立新、海淀区区委书记崔述强、区长于军、区委常委、办公室主任高念东，以及北京市政府、北京市知识产权局、中关村管委会、海淀区等政府部门领导、知识产权业内专家学者、高科技企业代表出席了此次活动，签约仪式由海淀区副区长、海淀园管委会主任李长萍主持。','2017-06-01'),(14,'如何抓住多屏合一提供的新契机','1496381798639514963673008763bng5.jpg','昨日的中关村创业大街上，一群青年们通过热烈的创业项目路演度过了属于自己的节日。一批充满创新创意的创业项目在“融创中国，智汇共青”主题的车库咖啡“五四”双创周路演会上亮相，寻觅投资人与潜在合作伙伴。\r\n\r\n  全职员工加上自己总共只有两人，29岁刘挺的创业项目询达数据却已经能实现年营收近百万元。前几天，他的一家农业公司客户兴奋地找上门，要求他帮忙回答“韩国人谁想买甜瓜”这个问题。听起来似乎有些不可思议，刘挺此前却已经帮这位客户成功回答了“中国人谁想买甜瓜”的问题，并帮助其大大提高了销售量。','2017-06-01'),(15,'海淀区区长于军调研双创服务中心','1496381680505355bb29cd76b19.gif','4月10日，北京市海淀区委副书记、区长于军到海淀区综合服务中心调研，重点调研了综合服务中心与中关村创业大街联合共建的双创服务中心（创新创业会客厅），并对服务中心的下一步工作重点做了重要指示。','2017-06-02'),(16,'中关村创业大街受邀参加中挪商业峰会','149638181567821496367322646858abb87502963.jpg','作为北京市、海淀区政府共同打造的我国第一条以创新创业为主题的特色大街，中关村创业大街受邀参加峰会。中关村创业大街运营公司总经理聂丽霞做了题为《中国产业创新新趋势》的主题演讲，就产业创新进程、大企业开放创新、全球创新资源融合等进行了阐述，欢迎挪威创新创业项目与机构与中关村创业大街在绿色生态、智慧城市等领域开展合作。','2017-06-02');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-02 13:44:34
