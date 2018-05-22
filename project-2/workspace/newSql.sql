-- MySQL dump 10.13  Distrib 5.1.51, for pc-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: newSql
-- ------------------------------------------------------
-- Server version       5.1.51-debug-log

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

DROP SCHEMA IF EXISTS newSql;
CREATE SCHEMA newSql;
USE newSql;
SET AUTOCOMMIT=0;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` CHAR(35) NOT NULL DEFAULT '',
  `CountryCode` CHAR(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--
-- ORDER BY:  `ID`

INSERT INTO `city` VALUES (1,'Вена','AUT');
INSERT INTO `city` VALUES (2,'Зальцбург','AUT');
INSERT INTO `city` VALUES (3,'Грац','AFG');
INSERT INTO `city` VALUES (4,'Брюссель','BEL');
INSERT INTO `city` VALUES (5,'Гурне','BEL');
INSERT INTO `city` VALUES (6,'Хасселт','BEL');
INSERT INTO `city` VALUES (7,'Копенгаген','DNK');
INSERT INTO `city` VALUES (8,'Орхус','DNK');
INSERT INTO `city` VALUES (9,'Ольборг','DNK');
INSERT INTO `city` VALUES (10,'Рим','ITA');
INSERT INTO `city` VALUES (11,'Венеция','ITA');
INSERT INTO `city` VALUES (12,'Милан','ITA');
INSERT INTO `city` VALUES (13,'Барселона','ESP');
INSERT INTO `city` VALUES (14,'Мадрид','ESP');
INSERT INTO `city` VALUES (15,'Валенсия','ESP');
INSERT INTO `city` VALUES (16,'Рейкьявик','ISL');
INSERT INTO `city` VALUES (17,'Акюрейри','ISL');
INSERT INTO `city` VALUES (18,'Исафьордюр','ISL');
INSERT INTO `city` VALUES (19,'Люксембург','LUX');
INSERT INTO `city` VALUES (20,'Вианден','LUX');
INSERT INTO `city` VALUES (21,'Вильц','LUX');
INSERT INTO `city` VALUES (22,'Монако','NLD');
INSERT INTO `city` VALUES (23,'Фонвьей','NLD');
INSERT INTO `city` VALUES (24,'Амстердам','NLD');
INSERT INTO `city` VALUES (25,'Роттердам','MCO');
INSERT INTO `city` VALUES (26,'Гаага','MCO');
INSERT INTO `city` VALUES (27,'Париж','FRA');
INSERT INTO `city` VALUES (28,'Лион','FRA');
INSERT INTO `city` VALUES (29,'Канны','FRA');
INSERT INTO `city` VALUES (30,'Стокгольм','SWE');
INSERT INTO `city` VALUES (31,'Гетеборг','SWE');
INSERT INTO `city` VALUES (32,'Лунд','SWE');
INSERT INTO `city` VALUES (33,'Люцерн','CHE');
INSERT INTO `city` VALUES (34,'Цюрих','CHE');
INSERT INTO `city` VALUES (35,'Женева','CHE');
COMMIT;
--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `Code` CHAR(3) NOT NULL DEFAULT '',
  `Name` CHAR(52) NOT NULL DEFAULT '',
  `Capital` CHAR(52) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--
-- ORDER BY:  `Code`

INSERT INTO `country` VALUES ('AUT','Австрия','Вена');
INSERT INTO `country` VALUES ('BEL','Бельги','Брюссель');
INSERT INTO `country` VALUES ('DNK','Дания','Копенгаген');
INSERT INTO `country` VALUES ('ESP','Испания','Мадрид');
INSERT INTO `country` VALUES ('FRA','Франция','Париж');
INSERT INTO `country` VALUES ('ISL','Исландия','Рейкьявик');
INSERT INTO `country` VALUES ('ITA','Италия','Рим');
INSERT INTO `country` VALUES ('LUX','Люксембург','Люксембург');
INSERT INTO `country` VALUES ('MCO','Монако','Монако');
INSERT INTO `country` VALUES ('NLD','Нидерланды','Амстердам');
INSERT INTO `country` VALUES ('SWE','Швеция','Стокгольм');
INSERT INTO `country` VALUES ('CHE','Швейцария','отсутствует');
COMMIT;

--
-- Table structure for table `countryinfo`
--

DROP TABLE IF EXISTS `countryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countryinfo` (
  `CountryCode` CHAR(3) NOT NULL DEFAULT '',
  `Text` TEXT(2000) NOT NULL DEFAULT '',
  `OrderText` INT(3) DEFAULT NULL,
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `countryinfo_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countryinfo`
--
-- ORDER BY:  `CountryCode`

INSERT INTO `countryinfo` VALUES ('AUT','Австрия - полная официальная форма: Австри́йская Респу́блика (Republik Österreich) — государство в Центральной Европе. Население 8,46 миллиона человек. Столица — Вена. Государственный язык — немецкий.Федеративное государство, парламентская республика. Подразделяется на 9 федеральных земель (Бургенланд, Каринтия, Нижняя Австрия, Верхняя Австрия, Зальцбург, Тироль, Штирия, Форарльберг, Вена).',1);
INSERT INTO `countryinfo` VALUES ('AUT','На севере граничит с Чехией (362 км), на северо-востоке — со Словакией (91 км), на востоке — с Венгрией (366 км), на юге — со Словенией (330 км) и Италией (430 км), на западе — с Лихтенштейном (35 км) и Швейцарией (164 км), на северо-западе — с Германией (784 км).Австрия — одна из богатейших стран мира. ВВП на душу населения около 46 330 долларов США (в 2012 году). Денежная единица — евро.',2);
INSERT INTO `countryinfo` VALUES ('AUT','Член Организации Объединённых Наций, Европейского союза. В 1955 году провозгласила постоянный нейтралитет и неприсоединение к каким-либо военным блокам.',3);
INSERT INTO `countryinfo` VALUES ('BEL','Бельгия - полная официальная форма — Короле́вство Бе́льгия (нидерл. Koninkrijk België, фр. Royaume de Belgique, нем. Königreich Belgien) — государство в Западной Европе, член ЕС, ООН и НАТО. Площадь — 30 528 км², численность населения — 11 358 952 человек. Страна названа по этнониму кельтского племени — белги. Столица — Брюссель',1);
INSERT INTO `countryinfo` VALUES ('BEL','Граничит на севере с Нидерландами, на востоке с Германией, юго-востоке с Люксембургом и с Францией на юге и западе. Омывается Северным морем на северо-западе.Форма правления — конституционная парламентская монархия, форма административно-территориального устройства — федерация.',2);
INSERT INTO `countryinfo` VALUES ('DNK','Дания - официально — Королевство Да́ния (дат. Kongeriget Danmark), — государство в Северной Европе, старший член содружества Королевство Дании, в которое также входят Фарерские острова и Гренландия. Этимология слова «Дания» в точности не известна; в источниках V—VI вв. упоминается др.-герм. племя даны, жившее на Ютландском п-ове. В IX в. при административном устройстве пограничных земель империи Карла Великого была образована Danmark — «данская марка» (марка — др.-верх.-нем. «граница, пограничные земли»), ставшая в XI в. государством Danmark.',1);
INSERT INTO `countryinfo` VALUES ('DNK','Дания — самая южная из скандинавских стран, расположенная на юго-западе от Швеции и на юге от Норвегии, с юга граничащая с Германией по суше. Дания омывается Балтийским и Северным морями. Территория страны включает в себя большой полуостров Ютландия и 409 островов Датского архипелага, среди которых наиболее известны такие, как Зеландия, Фюн, Венсюссель-Ти, Лолланн, Фальстер и Борнхольм.',2);
INSERT INTO `countryinfo` VALUES ('DNK','Дания — конституционная монархия, главой государства является монарх, который осуществляет законодательную власть совместно с однопалатным парламентом — фолькетингом (179 депутатов). Дания — член Евросоюза с 1973 года, но до сих пор не входит в Еврозону. Дания является одним из основателей НАТО и Организации экономического сотрудничества и развития.',3);
INSERT INTO `countryinfo` VALUES ('ITA','Италия - официальное название — Италья́нская Респу́блика (итал. Repubblica Italiana)) — государство в Южной Европе, в центре Средиземноморья. Входит в Евросоюз и НАТО с момента их создания, является третьей по величине экономикой еврозоны.',1);
INSERT INTO `countryinfo` VALUES ('ITA','Граничит с Францией на северо-западе (протяжённость границы — 488 км), Швейцарией (740 км) и Австрией (430 км) — на севере, Словенией — на северо-востоке (232 км). Также имеет внутренние границы с Ватиканом (3,2 км) и Сан-Марино (39 км).',2);
INSERT INTO `countryinfo` VALUES ('ITA','Занимает Апеннинский полуостров, крайний северо-запад Балканского полуострова, Паданскую равнину, южные склоны Альп, острова Сицилия, Сардиния и ряд мелких островов.На территории Италии находится 53 памятника Всемирного наследия ЮНЕСКО — больше, чем в какой-либо другой стране мира.',3);
INSERT INTO `countryinfo` VALUES ('FRA','Франция - официальное название Францу́зская Респу́блика (фр. République française, [ʁe.py.blik fʁɑ̃.sɛz] Информация о файле слушать) — трансконтинентальное государство, включающее основную территорию в Западной Европе и ряд заморских регионов и территорий. Столица — Париж. Девиз Республики — «Свобода, Равенство, Братство», её принцип — правление народа, народом и для народа.',1);
INSERT INTO `countryinfo` VALUES ('FRA','Название страны происходит от этнонима древнегерманского племени франков, несмотря на то, что большинство населения Франции имеет смешанное галло-романское происхождение и говорит на языке романской группы.Франция является ядерной державой и одним из пяти постоянных членов Совета Безопасности ООН. С 1950-х годов — одно из государств, участвующих в создании Европейского союза.',2);
INSERT INTO `countryinfo` VALUES ('FRA','Законодательный орган — двухпалатный парламент (Сенат и Национальное собрание). Административно-территориальное деление: 18 регионов (13 в метрополии и 5 заморских регионов), включающих 101 департамент (96 в метрополии и 5 заморских департаментов), 5 заморских сообществ и 3 административно-территориальных образования с особым статусом.',3);
COMMIT;
--
-- Table structure for table `countryattraction`
--

DROP TABLE IF EXISTS `countryattraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countryattraction` (
  `CountryCode` CHAR(3) NOT NULL DEFAULT '',
  `Text` TEXT(2000) NOT NULL DEFAULT '',
  `OrderText` INT(3) DEFAULT NULL,
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `countryattraction_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countryattraction`
--
-- ORDER BY:  `CountryCode`

INSERT INTO `countryattraction` VALUES ('AUT','Создание этого огромного и очень красивого парка вкупе с дворцовым комплексом был инициативой принца Евгения Савойского. По его указу французский архитектор Доминик Жирар разбил здесь альпийские сады с живыми изгородями, фонтанами, зеркальным расположением деревьев, скульптурами и водными каскадами, а австрийский инженер Иоганн Лукас фон Гильденбрандт спроектировал два прекрасных дворца в стиле барокко – Верхний и Нижний Бельведеры, оранжерею, Парадные конюшни для скакунов принца и даже зоопарк, который до наших времен, увы, не дожил. Все остальное прекрасно сохранилось и может быть досконально изучено и осмотрено на экскурсиях.',1);
INSERT INTO `countryattraction` VALUES ('BEL','Главная площадь Брюсселя Гран Плас является одной из самых красивых европейских площадей и именно здесь бьется духовное сердце Брюсселя. На площади располагаются исторические дома, среди которых находятся две из главных достопримечательностей Брюсселя — городская ратуша и Хлебный дом, в котором с 13-го века хранился и продавался хлеб, но затем здание было частично разрушено, но после долгой реставрации, проведенной в конце 18-го века, в нем работает городской музей Брюсселя. В остальных зданиях, расположенных на площади, работают музеи, кафе и магазины, а ежедневно на площади работает цветочный рынок. Отличительной особенностью площади Гран Плас от других европейских площадей является разноцветный ковер из живых цветов, который выкладывается здесь в августе каждого второго года.',1);
INSERT INTO `countryattraction` VALUES ('DNK','Любителям истории особо по нраву придёт это величественное по своему строению здание, раскинувшееся на острове Слотсхолмен. Дворец служил местом собрания королевских особ в начале 17 века. Интересен как внутри – включает в себя 3 больших зала с собранием культурных ценностей прошлого столетия, так и снаружи — дворец окружают многочисленные речные массивы и лесопарковые зоны.',1);
INSERT INTO `countryattraction` VALUES ('ITA','Истинной жемчужиной среди сотен источников в Риме принято считать фонтан ди Треви (Fontana di Trevi). Масштабная и зрелищная достопримечательность скорее напоминает сцену из античной пьесы, выполненную в камне, нежели источник чистой воды. Удачное расположение и невероятная красота фонтана ежедневно притягивает к нему сотни посетителей столицы Италии.',1);
INSERT INTO `countryattraction` VALUES ('FRA','Лувр является одним из крупнейших и наиболее важных музеев в мире, в нем располагается одна из лучших коллекций изобразительного искусства в мире, коллекция включает в себя, такие мировые шедевры как Мона Лиза Леонардо де Винчи, Венера Милосская, Умирающий раб Микеладжело и могие другие работы великих мастеров. Музей имеет коллекцию из более чем одного миллиона произведений искусства, из которых около 35 000 находятся на постоянной выставке, в трех крылья бывшего дворца. Музей имеет разнообразную коллекцию, начиная от античности и до середины девятнадцатого века.',1);
INSERT INTO `countryattraction` VALUES ('FRA','Музей расположен в обширном дворце Лувр, расположенный в 1-м округе, в центре Парижа. Музей находится в бывшем царском дворце французских королей. В 1793 году, во время французской революции, Лувр стал Национальным музеем искусства и королевская коллекция была открыта для публики.',2);
COMMIT;

--
-- Table structure for table `comeback`
--

DROP TABLE IF EXISTS `comeback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comeback` (
  `name` CHAR(52) NOT NULL DEFAULT '',
  `email` CHAR(52) NOT NULL DEFAULT '',
  `tel` CHAR(11) NOT NULL DEFAULT '',
  `theme` CHAR(52) NOT NULL DEFAULT '',
  `message` CHAR(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comeback`
--
-- ORDER BY:  `Code`

INSERT INTO `comeback` VALUES ('Петров Петр Петрович','petr@mail.ru','88005544300','Отдых','Отдых в Европе');
COMMIT;

SET AUTOCOMMIT=1;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-30 11:01:37
