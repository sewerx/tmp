-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bjgg
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Current Database: `bjgg`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bjgg` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bjgg`;

--
-- Table structure for table `join_request`
--

DROP TABLE IF EXISTS `join_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_request` (
  `requestdate` date DEFAULT NULL,
  `id` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_request`
--

LOCK TABLES `join_request` WRITE;
/*!40000 ALTER TABLE `join_request` DISABLE KEYS */;
INSERT INTO `join_request` VALUES ('2015-03-07','gudtjdl789'),('2015-03-16','splms'),('2015-03-19','garin1235'),('2015-03-30','sewerx'),('2015-03-31','승재'),('2015-06-10','hs0503'),('2016-03-04','test1'),('2016-03-07','test'),('2016-03-08','seeup1'),('2016-03-08','y000311'),('2016-03-08','hj4953');
/*!40000 ALTER TABLE `join_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty`
--

DROP TABLE IF EXISTS `penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penalty` (
  `penaltyid` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(4) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  `penaltycode` varchar(3) DEFAULT NULL,
  `giver` varchar(32) DEFAULT NULL,
  `domteacher` varchar(32) DEFAULT NULL,
  `isdemur` int(2) DEFAULT NULL,
  PRIMARY KEY (`penaltyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4371 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty`
--

LOCK TABLES `penalty` WRITE;
/*!40000 ALTER TABLE `penalty` DISABLE KEYS */;
INSERT INTO `penalty` VALUES (4366,1319,'2016-03-07','O2','조민우','test',0),(4367,2320,'2016-03-07','O2','조민우','test',0),(4368,2203,'2016-03-03','JD','김하영','',0),(4369,2202,'2016-03-03','JD','김하영','',0),(4370,2104,'2016-03-03','JJ','김하영','',0);
/*!40000 ALTER TABLE `penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent_update`
--

DROP TABLE IF EXISTS `recent_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recent_update` (
  `date` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_update`
--

LOCK TABLES `recent_update` WRITE;
/*!40000 ALTER TABLE `recent_update` DISABLE KEYS */;
INSERT INTO `recent_update` VALUES ('2016-03-08');
/*!40000 ALTER TABLE `recent_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(65) DEFAULT NULL,
  `password` char(65) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `studentid` int(4) DEFAULT NULL,
  `groupnumber` int(2) DEFAULT NULL,
  `studentgroup` int(1) DEFAULT NULL,
  `permission` int(1) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'blinglnav','d1fe21186c1ac16c22fb5b10fb28a0ccfd6984bab7828106ae384629e20d1538','민초로','blinglnav@gmail.com',-1,23,4,1),(3,'kja1199','7d09df1b56a230177c4e8f250e8fa724060a4f4efbd5be1cb6426309a1a4a0d5','권정안','kja1199@naver.com',3307,24,2,1),(5,'bomi9811','39c8d994ac80bd76d685c4db1b15253584375e0594f134e61904ff30ce259f5f','김보미','bomi9811@naver.com',3202,24,0,1),(6,'riy520','ab159ac403003c8ecca39cf569456322258edd6fca36b992d6d55437b0495ab6','류인영','riy520@naver.com',3103,24,0,1),(8,'mjh2539','c8a2a5dc8e0fa82faeb86a5736afdfacf7019f56f229a8c93d71af79db65a269','문진희','wlsgml096@naver.com',0,24,0,1),(9,'ahyoung0233','2ae88d9298a52c68d387cb1e91e9933b9cdbd9ab1837a2f5431c41fdb1a52090','송아영','ahyoung0233',3304,24,0,1),(10,'wnals0129','b10249b3b99c35a0fca54c73c2194879343ff6ebd35fe937b20f4e528522bb8c','이경민','wnals0129@naver.com',3104,24,0,1),(11,'garin1235','2cf12eff001873bb90aa8066de206282a21ad85fc00811ba55500a8619eeb69a','최가연','garin1235@naver.com',3305,24,0,1),(13,'ksain1','bda1526cd898a0d6a57171814a561f5fefd9b9030a9d842951bfc783b9aa1c83','김도윤','ksain1@naver.com',3308,24,0,1),(15,'mr100100','7f82ed5e34928901a3c04494002d6c85059e250bbd1d9a183db359192fe56b10','백성길','mr100100@naver.com',3209,24,0,1),(18,'tigerofiron','34b6e1b948514b82f27e10ea77ca82b0576fa9ff3d6459e5638625de0060b828','윤건웅','tigerofiron@naver.com',3108,24,0,1),(20,'juhojin98','3343427bd8ac1cfc0f8e51fee0f21ad7db5432ac07ac382768f7668bfd1309c9','주호진','juhojin1998@naver.com',3311,24,0,1),(23,'knh2417','5f637f231e4a06b2b08b5a9ab9d40e8e9ad3047a66be26b66fb99be6349d7db3','김나현','eli1959@naver.com',3301,24,1,1),(24,'2202','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','김수민','@.com',3101,24,0,1),(25,'kh17_17','ccad83488b3a6b8788d4f3318aca96038c76fec0e0c75a378dc4f86ab92a0305','김수현','kh17_17@naver.com',3203,24,0,1),(27,'singpark2002','8c93a7764ca8b3a25380c9dd2ca63f4f4148b0435bb8712dee55c93dad09b136','박성원','singpark2002@naver.com',3302,24,1,1),(28,'julia606','191f715049218df184f27b6674ecaf4fa57e3e1a0ee1e85566c2d1e2ec99189b','심혜수','julia606@naver.com',3204,24,1,1),(29,'98cristy','4711cd529bbe3c29c563182a3b103f7ba339bf95a2944249611cbf1d37beb6c8','정서련','98cristy@naver.com',3106,24,0,1),(30,'rhdfydzld','9bed6bb4d213fa8124d3af6feefd4242f66148a8f46f7b5eca65978edbcee450','김태준','zeus1jun@naver.com',3309,24,0,1),(31,'gusdn715','f22efa208c62c88cebea9200fe4975cea14d5253b7e47fb1a8a81bbd22a8d55b','문현우','gusdn715@naver.com',3207,24,1,1),(34,'dusdn9809','cd89c4f92e93cbda4f36aed6daa9bdfa535b5e11528e8c02de77590eea328e7c','이연우','dldusdn9809@naver.com',3109,24,1,1),(35,'','','이원식','',3110,24,0,1),(36,'yubin0130','dc2222c7635846aa16964af1d476074a1db431903d13ea38009c879ef234a534','이유빈','dldbqls0130@naver.com',3210,24,0,1),(37,'whan926','e6f516f8e2a8b191a7ee419d096c1feb5fe8a5d2a65928e2d262b4d363ececc7','이태환','whan926@naver.com',3310,24,0,1),(40,'ryunh78','e709a9f13f5d7851b893a3a3ca44a14b0e1a2f1a0bc42e62eeb3d03f98c4e0c9','최윤호','cyh986@naver.com',3111,24,0,1),(43,'ehrud2564','dd8408810346160489aeb5b29029b46c1b8e6e5a26e8b44b36a601b1e7233886','김도경','ekfh2564@naver.com',3201,24,0,1),(44,'2102','16a7ad4122aa8c3d3ed101139063e4147c656efbbe01c6e09e75d1f65a821393','김수지','kidcosmo@naver.com',3102,24,0,1),(45,'seohi1205','a7aa99afcd94d42505fcda282562af0831f2f684510dda157fd9c48bf3412fa0','송서희','seohi981205@naver.com',3303,24,0,1),(47,'ran023125','9469f8db84fe8a3eebe01e7f282730b48a132e5bdff37e8f10c5282b82ad663e','윤란','ran023125@naver.com',3205,24,0,1),(48,'dlwndus29','ec7bd190bb821a2b904acf95b7891e9aa810fbbde361a4082f5449e7439d98a2','이주연','dlwndus29@naver.com',3105,24,0,1),(49,'','','최지우','',3306,24,0,1),(52,'mintaka','12e758b7f4e760bc2049eb56cc58acfc2b70890dc42ef7166d6435c70ef7ed89','김우식','mintaka0322@naver.com',3206,24,0,1),(53,'cn0227','8c9cc5fe489b3b04479f8451bfed62885971318cc1cc58e416eee7ba0c950ac9','박광훈','cn0227@naver.com',3208,24,0,1),(58,'whgnl07','66ccc3e6341b29adefc81f83621c37a6a8156ff8b9e5e5e64deb16028de0527c','조용휘','whgnl07@naver.com',3211,24,1,1),(61,'kjs1252','3a7fe12358145fb8787d224f8ee2e9caa3785cb9c99f9d3709ab8c72495adbfd','김지수','k125233@naver.com',2302,25,0,1),(62,'fleming0527','6d57827df069f3523e3a5a660963bd22aa53b88d1a023dfffcb02c5614039914','김하영','fleming0527@naver.com',2303,25,1,1),(63,'rucy','df2dab9bc5b9edae0ae783e0af4d55fd9f524b9e0a1e66faece44912b501db34','박승아','rucy8356@naver.com',2202,25,0,1),(64,'','','백유진','',2203,25,0,1),(65,'sion1225','c46762b79597bdac2a9874028e0f07c182731bba8ecf9c920666e078ee4b6cbe','이시온','seeon1225@naver.com',2305,25,0,1),(66,'daun302','259672ad678b49d62b483f56d67743a33c7b25d308cf3e7ae8a167de755d4276','최다은','daun302@naver.com',2105,25,0,1),(67,'kyw9905','f5f85ba25aa4022b6aa268a2f42d0fc7a5549dc877456762c5c775250c6dcbaa','김영욱','kyw9905@naver.com',2108,25,0,1),(68,'wnsdn3387','3ec4dcf3d74d39d05885e87911f73887e4c70ede625b491fe93474e764907a1e','박준우','monkey3387@naver.com',2211,25,1,1),(69,'hs0503','fc7795b1f6f9d7bf23be1d62d3a5baf09db87e3abbd8b20b7680e653197ae625','송효석','osuhs1@naver.com',2112,25,0,1),(70,'fnstnf','ca5323e4d88449d26b110bc00951b943c0f5448fc840f21cd123fee77987da00','신정식','wjdtlrvk@naver.com',2113,25,1,1),(71,'ahnyp719','a209097a054537ad29f9bcd665a6147dadbb384c437dbb81ffd0714e1ddf08f7','안윤표','ayp719@naver.com',2313,25,0,1),(72,'qaz6025','60025bddd666bade2a76b480419c0ccbc3327827fe1ace4ac8e036b23a8ace62','원희성','rhdrnxhd0@naver.com',2212,25,0,1),(73,'cheho0928','e556cc95fc8e68ac9f14db03eb7d91a7d41b25f1e1f2ccbfc36a289f0eafc243','임채호','cheho0928@naver.com',2117,25,1,1),(74,'dlacjfdyd','e381ad9fa3e0d2e561ee405812105333a4402f0b70758c28b3e6c200329c70f2','임철용','dlacjfdyd@naver.com',2317,25,1,1),(75,'wjddntjd99','c1e0552b31b298a59fa945d817f31cbc8e8338462c8c5eaa26251fcb99d78069','정우성','wjddntjd99@gmail.com',2118,25,1,1),(76,'ttom0505','7453bb9052f7d1c55e99f587a3d2d062c2e8316a63b4a51a1330425f72f1f384','정해원','ttom0505@hanmail.com',2214,25,0,1),(77,'','','정혜성','',2119,25,0,1),(78,'ks3130','6fa2898f3761872c75e041809a4cbfb536af24d8d4ce9d627e06d4d9b8655a38','조승현','csh00021@naver.com',2215,25,0,1),(79,'최단민','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','최단민','990605@naver.com',2216,25,0,1),(80,'hongsj00','85a32ba973ce23319652d00df119ecc2e47e1d63b61e37f6c3fd16e7d01b0c1f','홍서진','hongsj0_0@naver.com',2219,25,0,1),(81,'won003415','8df345c4b8f4d7f030a70e7028ca4acba784b511bb99607bf3bab155e4f45284','황원재','won003415@daum.net',2220,25,0,1),(103,'seohw2005','ea8fd988a781aa9fee7bf7cd9dbd210318200e47ee84ce290b59aa37ac21e745','서형우','seohw2005@naver.com',0,24,0,1),(104,'smart2017','cf4c528c8c264ce1e9d28eda4173ea6ab39b43822b391a5a52b00a11f5d993bf','소준호','smart2017@naver.com',3107,24,0,1),(106,'승재','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','이승재','loveleesj2@naver.com',0,24,0,1),(107,'kez0060','201d2811584fe1afcc603ed0c82c65185fded6021d111faf4e8a0c343ac79ed1','김이지','kez0070@naver.com',2301,25,0,1),(108,'ekgus4002','b4843282e094ca46940b553a1cdeac03c4b0510cc79a8110b774b47f14dbfa9f','안다현','ekgus4002@naver.com',2304,25,0,1),(109,'mylee1231','4b859ec5f51fc66b8885e3e31d4d29b77cf00df329b18e283cc5eb2265f1b68e','이민영','mylee1231@naver.com',2103,25,0,1),(110,'true998','9c5e7dc0102e28be1f28bc9ee55907ac124fda2094f704c3fe0b62620d7ed0d3','최윤지','true998@naver.com',2205,25,1,1),(111,'hani12356','4fb9f7122daea2baa91f23bd7b60a2e4ef64fdd642c4f532840ef4c200a2de75','최환희','hani12356@naver.com',2206,25,0,1),(112,'hope9943','6fbbac9445700532ad5e0f55210cb1a9384247a5117c95bbcc620b4138a54d6e','강중선','hope9943@naver.com',2207,25,0,1),(113,'kshane777','f886dad32c4e29e2154bbac893310f09d35b6e28a92a8d9da7f8f81ed05751ec','김병준','kshane777@hanmail.net',2306,25,0,1),(114,'hjk0761','28858b26efe866f704bea6abc0ecf259df06d757c29e3f16f4dbe215c9e86815','김현중','hjk0761@naver.com',2109,25,0,1),(115,'sw0824sm','0531475124b57451f6f3b97545e33e03c08014bf1cb3ec9473df090b2931a913','남상우','sw0824sm@naver.com',2208,25,0,1),(116,'1567wkddnjs','9dc8fd141cf77658e79eb4ae7322c7241aacce1777c0088ec8998a8632fc8b43','문장원','1567wkddnjs@naver.com',2310,25,0,1),(117,'rbdhks000126','84c45e72ebff7042e000b2bfd67b22367b18ddcb723ce4c32f9f1b2064999e08','박규완','qkrrbdhks@daum.net',2209,25,0,1),(118,'window717','f5d72cb66ca3d02a93f84bc079449058b2349bca946e770518baccfb66ac2180','박예준','egnmpm@gmail.com',2110,25,0,1),(119,'stne0098','dea16387c8076c35a8489cb20e0374b46cb0e5a3b048f8d299fa1fdfc059a230','박준영','stne0098@gmail.com',2210,25,0,1),(120,'kerodja131','e77fc20eda70384d32295264b8b120b08ae13198a995a5d5f706cc1dac0f61c6','엄창빈','kerodja131@naver.com',2114,25,0,1),(121,'cjswodbtjdr','226dd8e6018c36d6e6b9b66a327c40d256e3e129b651316945838e0b0290a6f7','옥유성','cjswodbtjdr@naver.com',2315,25,0,1),(122,'splms99','ed1c0f4ee14e966bdf60d3a948cba917b1d8dfe40130212e60f123ab5927c84b','이민수','splkm97@naver.com',2213,25,1,1),(123,'ljg1719','b5414d8860f83390ddb0d2b8f7dc1480a1313f329e18b3faa7db3aa86ae4ab8e','이진규','tjsghk1711@naver.com',2116,25,0,1),(124,'teri1352','2c64ba130492543a70952e1ab68a1b30f7f921e4584f3fdfd199e1721cbd7d6f','최우영','teri1352@gmail.com',2120,25,0,1),(125,'moran9687','cf979150b685735a0ffdb671661ef293c2b88024e0c1dcf763f009e0a165f027','최현민','moran9687@naver.com',2121,25,0,1),(126,'hsh2348','70efaea9e6131323c3070e94ca14a5f87e091d63c2e870bca9e06b39bb2bd5bf','한상혁','hsh2348@naver.com',2217,25,0,1),(127,'gpal3263','59a588f5dad841ba332441b9f1a0f6b2933bf36773ad23fac99f42e8d708c929','남혜미','tkfkdtoaxj@naver.com',2201,25,0,1),(128,'soje122','a6a2855475b85a97f82a33d7e980247f3d6049ea066c139559cb1117ea2cac04','송주은','soje@hanmail.net',2101,25,0,1),(129,'xhrrl003','96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e','우지현','xhrrl003@naver.com',2102,25,1,1),(130,'hji0104','48e0cf5c9db8a680488be19189b64473fc91d6cd35441a51cfd5bd63ce7c782b','이현지','hji0102@naver.com',2104,25,1,1),(131,'suji0509','a53f6d0f89e8c6c360c342036930886fd6962bfefecb3a6bdad2e86124206157','차수지','suji0509@naver.com',2204,25,0,1),(132,'parting','0e993bf149fc7ce1a07e17324fe514468688d737a5441ad7c0d15dd09d56c7e1','김병규','kajtwls84@naver.com',2106,25,0,1),(133,'tmdcks2449','310134aac1312000237de9abfacaea48ad34aac3f0d493950c2da70c57e19f03','김승찬','tmdcks2449@naver.com',2107,25,0,1),(134,'gotjd5545','e979010429996c8423f6da001bfc7f5dadf405b2fc16964be5c5c0412a68e574','김해성','zxo5545@naver.com',2307,25,0,1),(135,'gudtjqdl789','3637d6733262fbda0faf79a61e1f465df566251a7ec4899af9024b2b2d16b8a1','김형섭','gudtjqdl789',2308,25,0,1),(136,'dowon2686','3ac2a758b52f4294835c581a8b6f2b24ab08d549b86520e1d69ce9eb5b1e4c70','노도원','andy651@naver.com',2309,25,1,1),(137,'parksungjun9','80c86e8dfd6f542b1bc67c7d19726d51783c847d2995403f24ed98acdb1e4e75','박성준','parksungjun9@naver.com',2311,25,0,1),(138,'','','박현준','',2312,25,0,1),(139,'thdwnsqja119','cc2ef37169fe7748e898f3a994523caf3ccb90bbc3cc24bf0d42389b3fd60e70','송준범','thdwnsqja119@naver.com',2111,25,0,1),(140,'haebo1','38017f06918ee443c63eebcaa4f81526a320fdf86414757764ada0b9fcbbd6e1','양현호','haebo1@naver.com',2314,25,0,1),(141,'ggb5363','73c3edaae21e7e0db559d629faaf49439980925ee8e78c51dd8b0a4951dca5df','이승재','ggb5363@hanmail.net',2115,25,2,1),(142,'jiwon0308','2c111aac10cdca4c89f8ebe677cba45fefa43ff5ae68660542eb34fb9fbe34ff','이지원','jiwon_0308@naver.com',2316,25,0,1),(143,'Silwy','9631884743d6041b135aedbf160379cf530ee8b1217d3f29ef07e6da493abe63','정성윤','haha2990@gmail.com',2318,25,0,1),(144,'jhy1142','e86f9cb4c1fc97574c61fdb88712e18ba69f8555e0a2f2f0defc07e00f289f46','정하영','jhy1142@hanmail.ney',2319,25,0,1),(145,'sewerx','4c7cf53381971569fbb548b573ebd24b6e9c2093e94a738e5fe7da5fe17e778e','조민우','sewerx@live.co.kr',2320,25,2,1),(146,'gudwlsgh','f6c1f4cad598578794ee6aed2e12a8a29d4ef127243b00dbc4b008bd0f1bdbbd','형진호','gudrmscjf@naver.com',2218,25,0,1),(152,'sjlee3355','fdef9ffa51950653db8a2e8c53a1a676f976e00c6651f96efce5cf94fb8ad656','이민영','sjlee3355@hanmail.net',2103,25,-1,0),(153,'giwonmo','2c111aac10cdca4c89f8ebe677cba45fefa43ff5ae68660542eb34fb9fbe34ff','김경희','9534060@hanmail.net',2316,25,-1,0),(154,'dasol97','afbfb89027a4dae87c6033eaa07896e93f3f1ddc2214ca43658982e8aa74b4d4','최만열','dasol97daum@hanmail.net',2105,25,-1,1),(155,'ckf6610','7ed11ea02769efd1446db0dc6b2124f73562ba2728624f0636ef2d54cf87744e','최영신','ckf6610@naver.com',2207,25,-1,1),(156,'ljg1714 ','5363a6b978cc4ee5ba7d934ace41d3744a341f9bc49882699f4488693465b972','이정근','jglee@jbnu.ac.kr',2116,25,-1,0),(164,'okas832','ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb','@','you',0,0,2,1),(167,'','','김민혜','',1101,26,0,1),(168,'','','김혜진','',1102,26,0,1),(169,'','','변수진','',1103,26,0,1),(170,'','','원지현','',1104,26,0,1),(171,'','','최미현','',1105,26,0,1),(172,'','','최민경','',1106,26,0,1),(173,'','','김길현','',1107,26,0,1),(174,'','','김동준','',1108,26,0,1),(175,'','','김락영','',1109,26,0,1),(176,'','','김민서','',1110,26,0,1),(177,'','','김상욱','',1111,26,0,1),(178,'','','김의찬','',1112,26,0,1),(179,'hj4953','161377db129ac2f5e01a48f67407a068ed6eb44d083dba0b4ba04bc981c9a082','김현종','jjongjjong95@hanmail.net',1113,26,0,1),(180,'','','김희수','',1114,26,0,1),(181,'','','서지훈','',1115,26,0,1),(182,'y000311','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','유재형','y000311@naver.com',1116,26,0,1),(183,'','','이수민','',1117,26,0,1),(184,'','','장진호','',1118,26,0,1),(185,'','','정주몽','',1119,26,0,1),(186,'','','정현웅','',1120,26,0,1),(187,'','','조민서','',1121,26,0,1),(188,'','','김서현','',1201,26,0,1),(189,'','','김소은','',1202,26,0,1),(190,'','','김지희','',1203,26,0,1),(191,'','','유희진','',1204,26,0,1),(192,'','','이수빈','',1205,26,0,1),(193,'','','이유진','',1206,26,0,1),(194,'','','김연걸','',1207,26,0,1),(195,'','','박기평','',1208,26,0,1),(196,'','','박현규','',1209,26,0,1),(197,'','','성지윤','',1210,26,0,1),(198,'','','송대한','',1211,26,0,1),(199,'','','신승주','',1212,26,0,1),(200,'','','이강민','',1213,26,0,1),(201,'','','이산','',1214,26,0,1),(202,'','','이상지','',1215,26,0,1),(203,'','','이의현','',1216,26,0,1),(204,'','','장재혁','',1217,26,0,1),(205,'','','조시현','',1218,26,0,1),(206,'','','채민석','',1219,26,0,1),(207,'','','최세영','',1220,26,0,1),(208,'','','강지현','',1301,26,0,1),(209,'','','곽지은','',1302,26,0,1),(210,'','','김하은','',1303,26,0,1),(211,'','','소제니','',1304,26,0,1),(212,'','','정예성','',1305,26,0,1),(213,'','','황예빈','',1306,26,0,1),(214,'','','고낙헌','',1307,26,0,1),(215,'','','김동현','',1308,26,0,1),(216,'','','김태경','',1309,26,0,1),(217,'','','목성빈','',1310,26,0,1),(218,'','','문배현','',1311,26,0,1),(219,'','','문준연','',1312,26,0,1),(220,'','','방경원','',1313,26,0,1),(221,'seeup1','5b36418d11a0107f8a3d6727f294a57efa3f63f22fb4d44d987ca76683f74981','배성환','seeup1@naver.com',1314,26,0,1),(222,'','','손정민','',1315,26,0,1),(223,'','','이재구','',1316,26,0,1),(224,'','','조윤','',1317,26,0,1),(225,'','','조은찬','',1318,26,0,1),(226,'','','최지혁','',1319,26,0,1),(227,'','','한결','',1320,26,0,1);
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

-- Dump completed on 2016-03-09  6:00:01
