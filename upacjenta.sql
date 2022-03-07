CREATE DATABASE  IF NOT EXISTS `upacjenta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `upacjenta`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: upacjenta
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `badania`
--

DROP TABLE IF EXISTS `badania`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badania` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kod_icd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `czas_oczekiwania` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skrocony_opis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `badania_nazwa_unique` (`nazwa`)
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badania`
--

LOCK TABLES `badania` WRITE;
/*!40000 ALTER TABLE `badania` DISABLE KEYS */;
INSERT INTO `badania` VALUES (10,'Glukoza','L43','1 dzień','Glukoza. Oznaczenie stężenia glukozy we krwi służy do oceny metabolizmu węglowodanów. Jest podstawowym badaniem w rozpoznawaniu i monitorowaniu  leczenia cukrzycy. Wykorzystywane w identyfikacji zaburzeń tolerancji węglowodanów oraz metabolizmu węglowodanów  w chorobach wątroby, trzustki, w akromegalii, w nadczynności kory nadnerczy i w trakcie leczenia steroidami.  ','Podstawowym wskazaniem do oznaczeń stężenia glukozy są: profilaktyka, rozpoznanie i monitorowanie leczenia cukrzycy. Badanie wykonuje się w celu rozpoznania nieprawidłowej glikemii (poziom glukozy we krwi)  na czczo lub nieprawidłowej tolerancji glukozy (patrz: Test obciążenia glukozą). Przynajmniej raz w roku, badanie powinno być wykonywane u osób z grup podwyższonego ryzyka rozwoju cukrzycy. Wskazaniami do wykonania są również: objawy cukrzycy, podejrzenie hipoglikemii, śpiączka o niejasnej przyczynie, różnicowanie glukozurii (obecność glukozy w moczu) pochodzenia nerkowego. Kontrola nad homeostazą glukozy sprawowana jest przez układ hormonalny: insulina/glukagon, glikokortykosteroidy, adrenalina, hormon wzrostu. Stąd badanie poziomu glukozy stosowane jest również  do oceny metabolizmu węglowodanów w chorobach wątroby, w akromegalii, w nadczynności kory nadnerczy i w trakcie leczenia steroidami.','2022-03-07 15:52:45','2022-03-07 15:52:45'),(65,'ASO, ilościowo ','U75','1 dzień','ASO, ilościowo. Diagnostyka serologiczna zakażeń i innych stanów chorobowych wywołanych przez Streptococcus pyogenes (S. pyogenes).','ASO, ilościowo. Pomiar ASO (antystreptolizyny O) jest przydatny w ustaleniu, czy objawy chorobowe spowodowane są zakażeniem Streptococcus pyogenes. Zakażenie S. pyogenes jest jedną z najczęstszych przyczyn m.in. ostrego zapalenia gardła, zakażeń skóry, zapalenia migdałków (anginy), zapalenia płuc i szkarlatyny,  ponadto 10 spośród  80 serotypów paciorkowca ma właściwości reumatogenne. Badanie polega na pomiarze stężenia (miana)  przeciwciał ASO – antystreptolizyny O.  Są to przeciwciała swoiste dla egzotoksyny  O wytwarzanej w dużej ilości przez paciorkowce beta-hemolizujące grupy A (w skrócie: PBHGA). ASO  pojawiają się w surowicy już 1 do 3 tygodni po zakażeniu paciorkowcem,  a najwyższe ich stężenie odnotowuje się w 3 do 6 tygodnia po zakażeniu. Streptolizyna O, toksyna  działaniu hemolitycznym  i cytotoksycznym,   ułatwia rozprzestrzenianie się paciorkowca w zaatakowanym organizmie. Test jest szczególnie przydatny w diagnostyce ostrego zapalenia wsierdzia, streptokokowego szoku toksycznego, ostrej gorączki reumatycznej i ostrego zapalenia kłębuszkowego nerek. Czułość kliniczna badania  wynosi 50-80%.  Około 20%  chorych nie jest zdolnych do wytwarzania ASO  w  mierzalnej ilości,  a około 5% zdrowych ludzi ma miano ASO stale podwyższone.  W przypadku zakażenia  błon śluzowych zaleca się wykonanie wymazu mikrobiologicznego.  Podstawę do rozpoznania  zakażenia S. pyogenes  stanowi stwierdzenie wysokiego stężenia ASO  lub jego znacznego wzrostu. W przypadku objawów klinicznych, którym towarzysz niewielki wzrost  ASO,  test należy powtórzyć po 2-3 tygodniach.  Stężenie  ASO  do 200 IU/ml (jednostek międzynarodowych na mililitr) uważane jest za prawidłowe. Za podwyższone uważa się miano przekraczające 250 IU w przypadku dorosłych i 333 IU w przypadku dzieci.','2022-03-07 15:52:45','2022-03-07 15:52:45'),(154,'C-peptyd ','N33','1-4 dni','C-peptyd.  Oznaczanie C-peptydu (peptydu łączącego)  jest przydatne w diagnostyce  przyczyn hipoglikemii na czczo, aktywności komórek beta trzustki,  rozpoznawaniu insulinoma oraz ocnenie insulinooporności.  ','Badanie wykonywane jest  w różnicowaniu typów cukrzycy oraz w ocenie skuteczności leków hipoglikemizujących.  Niskie stężenie C-peptydu stwierdzane jest w cukrzycy insulinozależnej, w której towarzyszy niskiemu stężeniu insuliny oraz w przypadku pełnego zahamowaniu syntezy insuliny po leczeniu insuliną egzogenną (przy wysokim stężeniu insuliny). Wysokie stężenie C-peptydu, towarzyszące hipoglikemii na czczo, stwierdzane jest w przypadku nowotworu wywodzącego się z komórek beta trzustki, wydzielającego insulinę (insulinoma). C-peptyd jest nieczynnym biologicznie, 31-aminokwasowym peptydem,  powstałym w komórkach beta trzustki na drodze  enzymatycznego odszczepienia insuliny od prohormonu:  proinsuliny. W momencie powstawania,  C-peptyd jest wydzielany do krążenia wrotnego w ilościach równomolowych z insuliną. To wpływa na jego znaczenie kliniczne. Jednakże, stężenia obu peptydów jedynie w przybliżeniu pozostają proporcjonalne,  ze względu na różnice metaboliczne. Okres półtrwania insuliny wynosi około 5 minut, podczas, gdy C-peptydu około 30 minut, co powoduje, że stężenie C-peptydu w osoczu przekracza ponad 5-krotnie stężenie endogennej insuliny. Poza tym insulina usuwana jest za pośrednictwem wątroby, podczas gdy C-peptyd rozkładany jest i wydalany przez nerki. W przypadku schorzenia jednego z tych narządów może dojść do  nieokreślonej dysproporcji  stężeń obu peptydów . Na stężenie C-peptydu nie ma natomiast wpływu podanie egzogennej insuliny i obecność przeciwciał przeciwinsulinowych. C-peptyd jest markerem aktywności komórek trzustki, w tym aktywności resztkowej. W przypadku terapii monitorowanej,  po usunięciu trzustki,  spodziewany jest brak C-peptydu. Po transplantacji trzustki i komórek  beta wysp trzustkowych oczekiwany jest  natomiast  wzrost stężenia C-peptydu.','2022-03-07 15:52:45','2022-03-07 15:52:45'),(435,'Bruceloza IgG ','S41','1-12 dni','Diagnostyka serologiczna brucelozy. Oznaczenie przeciwciał IgG specyficznych dla antygenów bakterii z rodzaju Brucella, będących czynnikiem etiologicznym brucelozy. ','Oznaczenie przeciwciał IgG specyficznych dla antygenów bakterii z rodzaju Brucella,  będących czynnikiem etiologicznym brucelozy. Bruceloza jest powodowaną przez bakterie z rodzaju Brucella odzwierzęcą chorobą o zasięgu światowym. Patogenem są małe, tlenowe, gram ujemne bakterie, bytujące wewnątrzkomórkowo w organizmach zwierząt domowych: bydła, kóz, świń i owiec oraz dziko żyjących: przykładowo zajęcy, występujące w ich mleku, moczu, wodach płodowych i innych płynach ustrojowych. Kontakt z zakażonymi zwierzętami lub produktami z nich pochodzącymi powoduje brucelozę u ludzi. Bakterie z rodzaju Brucella są używane jako broń biologiczna. Do tej pory zidentyfikowano 7 gatunków Brucella,  z czego 4 powodują zakażenia  ludzi. Bakterie Brucella zakażają komórki fagocytujące i niefagocytujące organizmu i posiadają mechanizmy pozwalające na wymykanie się układowi odpornościowemu, dzięki czemu powodują choroby systemowe, mogące dotyczyć wszystkich narządów. Objawy są najczęściej niespecyficzne i trudne do rozpoznania. Należą do nich: gorączka, bóle i zmiany w stawach, bóle głowy, depresja, zmęczenie, ból brzucha, biegunka, zaparcia, kaszel, zatrzymanie moczu, osłabienie, zmiany skórne, hepatosplenomegalia, objawy zapalenia opon mózgowo-rdzeniowych i mózgu. Bruceloza może być klasyfikowana jako postać: subkliniczna, ostra, podostra i przewlekła. Do zakażenia ludzi najczęściej dochodzi drogą pokarmową, na skutek spożycia niepasteryzowanego mleka koziego lub produktów z niego pochodzących, a także poprzez uszkodzoną skórę lub drogą wziewną. Narażeni są szczególnie pracownicy rzeźni, obór, mleczarze, weterynarze i pracownicy laboratoriów mikrobiologicznych. Śmiertelność choroby jest niewielka i głównie spowodowana bakteryjnym zapaleniem wsierdzia. Niektóre obszary świata, w których bruceloza występuje endemicznie, uważa są za regiony wysokiego ryzyka zakażenia, przykładowo: kraje basenu morza śródziemnego, Azja, Afryka, Europa Wschodnia, Bliski Wschód, Ameryka Południowa i Środkowa). Badanie polega na oznaczeniu metodą ELISA w surowicy krwi przeciwciał w klasie IgG specyficznych dla antygenów cytoplazmatycznych (CP – białka cytoplazmatyczne) Brucella. Jako pierwsze w przebiegu zakażenia bakterią wykrywane są przeciwciała IgM, które świadczą o ostrej postaci brucelozy. Ich stężenie maleje w 2 do 3 miesięcy po zakażeniu. Wspólna obecność przeciwciał IgG i IgM  również jest charakterystyczna dla ostrej postaci choroby, natomiast obecność przeciwciał IgG i IgA  lub wyłączne IgG,  dla postaci przewlekłej lub stanu po  zakażeniu przebytym w przeszłości. Oznaczenie jest użyteczne w diagnostyce pierwotnego zakażenia i nawrotu choroby,  a także w ocenie skuteczności leczenia. Przeciwciała IgG specyficzne dla antygenu CP Brucella wykazują bowiem po wyzdrowieniu spadek poziomu (po 2 do 4 miesiącach), podczas gdy przeciwciała  IgG specyficzne dla antygenu LPS tych bakterii, utrzymują się przez długi czas w organizmie.','2022-03-07 15:52:45','2022-03-07 15:52:45'),(700,'IgE całkowite ','L89','1-2 dni','IgE całkowite. Oznaczenie całkowitej IgE w surowicy krwi, przydatne w diagnostyce chorób pasożytniczych i pomocnicze w diagnostyce alergii.','Oznaczenie całkowitej IgE w surowicy krwi jest  przydatne w diagnostyce chorób pasożytniczych i pomocnicze w diagnostyce alergii. Cząsteczka IgE pośredniczy w reakcji nadwrażliwości typu I, odpowiedzialnej za reakcję anafilaktyczną, alergiczny nieżyt nosa, astmę i egzemę i alergie pokarmowe.  Alergeny wywołujące te reakcje dzielone są na alergeny  wziewne i pokarmowe.  IgE stanowi miejsce kontaktu alergenu i wyspecjalizowanej komórki układu odpornościowego. Poza pulą  krążącą,  IgE znajduje się na  powierzchni mastocytów i granulocytów zasadochłonnych. Związanie alergenu przez powierzchniową IgE  na tych komórkach  stanowi bodziec do uwolnienia przez komórkę histaminy i rozpoczęcia mechanizmu prowadzącego do atopowej reakcji alergicznej. Alergie na alergeny pokarmowe i wziewne są związane z tzw. IgE alergenowo-specyficzną,   a stopień immunizacji przez te alergeny  nie musi przekładać się na stężenie we krwi wszystkich przeciwciał klasy IgE, czyli całkowitej IgE (total IgE). Przyjmuje się jednak, że u osób ze stężeniem całkowitej IgE przekraczającej 300 U/ml, prawdopodobieństwo alergii IgE zależnej jest znacznie większe niż u osób z niższym poziomem IgE. Ponadto obserwuje się wzrost stężenia całkowitej IgE z wiekiem, co pośrednio świadczy bezobjawowym uczuleniu na kolejne alergeny.  Wysokie  stężenia IgE obserwowane są u osób z infestacjami pasożytniczymi, chorych na egzemę nadkażoną gronkowcem,  z równoczesnym uczuleniem na gronkowca lub na nadkażające grzyby z rodzaju Malassezia, chorych na grzybicze zapalenie zatok i alergiczną aspergilozą oskrzelowo-płucną. Rzadko wzrost poziomu całkowitej IgE towarzyszy szpiczakowi. Istnieje możliwość monitorowania leczenia cyklosporyną lub azatiopryną  ostrych przypadków egzemy,  przez oznaczanie spadku stężenia całkowitej IgE, który towarzyszy remisji choroby. ','2022-03-07 15:52:45','2022-03-07 15:52:45'),(830,'IgE sp. F92 - banan ','L91','1-3 dni','IgE specyficzne  f92 – banan. Ilościowe, chemiluminescencyjne  oznaczenie in vitro w surowicy krwi przeciwciał klasy IgE specyficznych w stosunku do alergenów banana,  przydatne w diagnostyce alergii. ','Ilościowe  oznaczenie in vitro w surowicy krwi przeciwciał klasy IgE specyficznych w stosunku do alergenów banana (f92) jest przydatne w diagnostyce alergii. Alergia pokarmowa na banana  powszechnie obserwowana jest u osób uczulonych na lateks, co nie stanowi jednak reguły. Objawy kliniczne uczulenia na alergeny banana są zróżnicowane. Obejmują: objawy związane z układem  pokarmowym,  zmiany skórne, zespół alergii jamy ustnej, OAS (ang. oral allergy syndrome), objawy z układu oddechowego i sporadycznie,  uogólnioną reakcję anafilaktyczną. U osób uczulonych na lateks obserwowana była reaktywność krzyżowa IgE w stosunku do banana i awokado;  awokado i gryki; banana, awokado i pomidora. Zespół  lateks-owoce, poza bananem obejmuje również kiwi i kasztany jadalne. Obserwowane są również reakcje krzyżowe pomiędzy bananami, kiwi i awokado u osób bez alergii na lateks. Alergenność miąższu banana wzrasta wraz z dojrzewaniem. Oczekiwana jest duża reaktywność krzyżowa pomiędzy alergenami banana i banana warzywnego (plantana), jednakże należy brać pod uwagę, że plantany w odróżnieniu do bananów,  są spożywane po ugotowaniu, co może wpływać na redukcję ich alergenności. Oznaczenie alergenowo-specyficznej IgE in vitro nie stanowi zagrożenia dla badanego, które istnieje w przypadków testów skórnych i prowokacji. Zakres raportowania testu plasuje się pomiędzy 0,1-100 kU/l, wyniki powyżej 100 kU/l raportowane są jako >100 kU/l. Ilościowe wyniki wyrażone w kU/l są dodatkowo  przypisywane do odpowiedniej półilościowej klasy skali RAST (klasy 0-6) i opatrywane zwięzłym komentarzem klinicznym. Test wykonywany jest w automatycznym analizatorze immunochemicznym, dlatego możliwe jest natychmiastowe zaprogramowanie kolejnych  oznaczeń z badanej  próbki surowicy pozostającej w analizatorze. ','2022-03-07 15:52:45','2022-03-07 15:52:45');
/*!40000 ALTER TABLE `badania` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badanie_kategoria_badan`
--

DROP TABLE IF EXISTS `badanie_kategoria_badan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badanie_kategoria_badan` (
  `badanie_id` bigint unsigned NOT NULL,
  `kategoria_badan_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `badanie_kategoria_badan_badanie_id_foreign` (`badanie_id`),
  KEY `badanie_kategoria_badan_kategoria_badan_id_foreign` (`kategoria_badan_id`),
  CONSTRAINT `badanie_kategoria_badan_badanie_id_foreign` FOREIGN KEY (`badanie_id`) REFERENCES `badania` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `badanie_kategoria_badan_kategoria_badan_id_foreign` FOREIGN KEY (`kategoria_badan_id`) REFERENCES `kategorie_badan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badanie_kategoria_badan`
--

LOCK TABLES `badanie_kategoria_badan` WRITE;
/*!40000 ALTER TABLE `badanie_kategoria_badan` DISABLE KEYS */;
INSERT INTO `badanie_kategoria_badan` VALUES (700,1,'2022-03-07 15:52:45','2022-03-07 15:52:45'),(830,1,'2022-03-07 15:52:45','2022-03-07 15:52:45'),(10,2,'2022-03-07 15:52:45','2022-03-07 15:52:45'),(154,2,'2022-03-07 15:52:45','2022-03-07 15:52:45'),(65,3,'2022-03-07 15:52:45','2022-03-07 15:52:45'),(435,3,'2022-03-07 15:52:45','2022-03-07 15:52:45');
/*!40000 ALTER TABLE `badanie_kategoria_badan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorie_badan`
--

DROP TABLE IF EXISTS `kategorie_badan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie_badan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kategorie_badan_nazwa_unique` (`nazwa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie_badan`
--

LOCK TABLES `kategorie_badan` WRITE;
/*!40000 ALTER TABLE `kategorie_badan` DISABLE KEYS */;
INSERT INTO `kategorie_badan` VALUES (1,'Alergologia','2022-03-07 15:52:45','2022-03-07 15:52:45'),(2,'Cukrzyca','2022-03-07 15:52:45','2022-03-07 15:52:45'),(3,'Infekcje','2022-03-07 15:52:45','2022-03-07 15:52:45');
/*!40000 ALTER TABLE `kategorie_badan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_03_06_125521_create_kategorie_badan_table',2),(7,'2022_03_06_125535_create_badania_table',2),(8,'2022_03_06_125536_create_badanie_kategoria_badan_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-07 21:36:20
