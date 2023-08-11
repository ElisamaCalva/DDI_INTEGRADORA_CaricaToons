CREATE DATABASE  IF NOT EXISTS `caricatoons_procedures` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `caricatoons_procedures`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: caricatoons_procedures
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tbb_anime`
--

DROP TABLE IF EXISTS `tbb_anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_anime` (
  `idAnime` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Total_Episodios` int NOT NULL,
  `Estatus` enum('Emision','Pausado','Terminado') NOT NULL,
  `Estudio` varchar(45) NOT NULL,
  `Director` varchar(45) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Final` date DEFAULT NULL,
  `Rating_total` decimal(5,2) DEFAULT NULL,
  `Temporadas` int DEFAULT NULL,
  `Sinopsis` text NOT NULL,
  `Tipo` enum('TV','Ova','Pelicula') NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idAnime`),
  UNIQUE KEY `idAnime_UNIQUE` (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3 COMMENT='Anime\n\nContiene:\n\nNombre\nTotal_episodios(Todos aun cuando sean dos temporadas).\nEstatus (Si este esta en emision, pausado o terminado)\nEstudio (El principal estudio que lo este produciendo)\nDirector (Director principal)\nFecha_Final (Opcional si este aun esta en emision)\nFecha_incio (Cuando este se estreno)\nRating_total (Promedio de las calificaciones de los miembros)\nSinopsis (Resumen corto de la serie)\nTemporadas (Cantidad de temporadas, si es ova solo una)\nTipo (Si es ova, tv, pelicula)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_anime`
--

LOCK TABLES `tbb_anime` WRITE;
/*!40000 ALTER TABLE `tbb_anime` DISABLE KEYS */;
INSERT INTO `tbb_anime` VALUES (1,'Gintama',367,'Terminado','Sunrise','Shinji Takamatsu','2006-04-04','2018-03-25',NULL,11,'Gintama es una serie de anime japonesa basada en el manga escrito e ilustrado por Hideaki Sorachi. La historia se desarrolla en una versión alternativa de la era Edo, donde la Tierra ha sido invadida por extraterrestres conocidos como \"Amanto\". Como resultado de la invasión, los samuráis han sido despojados de sus espadas, y Japón ha experimentado una transformación cultural significativa.','TV',_binary '','2023-07-23 01:51:33',NULL),(2,'One Piece',1053,'Emision','	Toei Animation','Kōnosuke Uda','1999-10-20',NULL,NULL,20,'Monkey D. Luffy es un muchacho que se hace a la mar para convertirse en pirata, y reunir una tripulación en su viaje de la búsqueda del One Piece, tesoro que quien lo encuentre se convertirá en el nuevo Rey de los Piratas.','TV',_binary '','2023-07-23 01:59:05',NULL),(3,'Yuri!!! on ice',12,'Terminado','MAPPA','Sayo Yamamoto','2016-10-06','2016-12-22',NULL,1,'Yuuri Katsuki, es un patinador artístico que, asumiendo las expectativas de todo Japón, experimentó una derrota aplastante en la final de Grand Prix,quedando último en la competición.. Con esto, él vuelve a su ciudad natal,en Kyushuu; sus sentimientos se debaten entre seguir patinando o retirarse.Yuri se dirige a una pista de patinaje donde imita a la perfección una coreografía del famoso patinador ruso Victor Nikiforov, a quien admira desde pequeño. Cuando el video de Yuri patinando es subido al internet sin su conocimiento, atrae la atención de Victor, quien decide convertirse en el entrenador de Yuri.','TV',_binary '','2023-07-23 03:22:05',NULL),(4,'Jujutsu Kaisen',47,'Emision','MAPPA','	Park Sung-hoo','2020-10-03',NULL,NULL,2,'Las emociones negativas creadas por los humanos se convierten en maldiciones y se esconden en la vida cotidiana. Las maldiciones son una fuerte epidemia en el mundo y, en el peor de los casos, lleva a los humanos a la muerte. Estas maldiciones solo pueden ser exorcizadas.','TV',_binary '','2023-07-23 03:29:04',NULL),(5,'Kimetsu no Yaiba',55,'Terminado','Ufotable','	Haruo Sotozaki','2018-04-06','2023-07-18',NULL,3,'La serie narra las desventuras de Tanjiro, un joven de un Japón feudal fantástico que se ve abocado a la venganza después de que un demonio acabe con toda su familia, a excepción de su hermana, Nezuko, también demoníaca y sedienta de sangre. El muchacho entrenará hasta convertirse en cazador de demonios, primero, en busca del culpable de la masacre, pero, sobre todo, para intentar revertir lo ocurrido con su hermana y volver a hacerla humana.','TV',_binary '','2023-07-23 03:35:35',NULL),(6,'JoJo\'s Bizarre Adventure',190,'Terminado','David Production','Naokatsu Tsuda','1993-11-19','2022-12-01',NULL,5,'Basado en el manga homónimo, Jojo\'s Bizarre Adventure sigue las aventuras de todas las generaciones de la familia Joestar, desde finales del siglo XIX hasta la actualidad. Todos los miembros de la familia tienen poderes, que son una fuerza psíquica intensa. Esta familia son los encargados de terminar con los enemigos sobrenaturales que amenazan el mundo. Además, la ficción narra todas las historias que se encuentra la familia a lo largo de sus aventuras.\r ','TV',_binary '','2023-07-23 03:41:20',NULL),(7,'Naruto',220,'Terminado','Pierrot','Hayato Date','2002-10-03','2007-02-08',NULL,5,'Naruto es un joven ninja que busca ser reconocido como el mejor ninja en su aldea y convertirse en Hokage.','TV',_binary '','2023-08-04 12:17:38',NULL),(8,'Hunter x Hunter',148,'Terminado','Madhouse','Hiroshi Koujina','2011-10-02','2014-09-24',NULL,3,'Gon Freecss se convierte en un cazador para encontrar a su padre y descubre un mundo lleno de peligros y desafíos.','TV',_binary '','2023-08-04 12:23:56',NULL),(9,'Steins;Gate',24,'Terminado','White Fox','Hiroshi Hamasaki','2011-04-06','2011-09-14',NULL,1,'Un grupo de amigos accidentalmente descubre una forma de enviar mensajes al pasado, lo que desencadena una serie de eventos catastróficos.','TV',_binary '','2023-08-04 12:23:56',NULL),(10,'Cowboy Bebop',26,'Terminado','Sunrise','Shinichirō Watanabe','1998-04-03','1999-04-24',NULL,1,'Spike Spiegel y su tripulación de cazarrecompensas viajan por el espacio persiguiendo a criminales peligrosos.','TV',_binary '','2023-08-04 12:23:56',NULL),(11,'Neon Genesis Evangelion',26,'Terminado','Gainax','Hideaki Anno','1995-10-04','1996-03-27',NULL,1,'En un mundo asolado por criaturas llamadas \"Ángeles\", jóvenes pilotos luchan usando mechas gigantes para proteger la humanidad.','TV',_binary '','2023-08-04 12:23:56',NULL),(12,'My Teen Romantic Comedy SNAFU',26,'Terminado','Brain\'s Base','Ai Yoshimura','2013-04-05','2013-06-28',NULL,1,'Hachiman Hikigaya, un estudiante cínico, se une al club de servicios voluntarios donde su perspectiva de la vida comienza a cambiar.','TV',_binary '','2023-08-04 12:23:56',NULL),(13,'Clannad',23,'Terminado','Kyoto Animation','Tatsuya Ishihara','2007-10-04','2008-03-27',NULL,1,'Tomoya Okazaki forma lazos con varias chicas en su escuela mientras enfrenta desafíos personales y familiares.','TV',_binary '','2023-08-04 12:23:56',NULL),(14,'Fairy Tail',328,'Terminado','A-1 Pictures','Shinji Ishihira','2009-10-12','2019-09-29',NULL,9,'Natsu Dragneel y su gremio mágico Fairy Tail realizan misiones y enfrentan amenazas en el mundo mágico de Fiore.','TV',_binary '','2023-08-04 12:23:56',NULL),(15,'Black Clover',170,'Emision','Pierrot','Tatsuya Yoshihara','2017-10-03',NULL,NULL,1,'Asta y Yuno luchan por convertirse en el Mago Rey en un mundo donde la magia lo es todo.','TV',_binary '','2023-08-04 12:23:56',NULL),(16,'Demon Slayer',26,'Terminado','ufotable','Haruo Sotozaki','2019-04-06','2019-09-28',NULL,1,'Tanjiro Kamado se convierte en un cazador de demonios después de que su familia sea masacrada y su hermana se convierta en un demonio.','TV',_binary '','2023-08-04 12:23:56',NULL),(17,'Haikyuu!!',85,'Terminado','Production I.G','Susumu Mitsunaka','2014-04-06','2016-03-26',NULL,3,'Un equipo de voleibol de preparatoria lucha por alcanzar el campeonato nacional, superando desafíos y mejorando sus habilidades.','TV',_binary '','2023-08-04 12:25:18',NULL),(18,'No Game No Life',12,'Terminado','Madhouse','Atsuko Ishizuka','2014-04-09','2014-06-25',NULL,1,'Dos hermanos gamers son transportados a un mundo de juegos de alto riesgo, donde deben usar su ingenio para sobrevivir.','TV',_binary '','2023-08-04 12:25:18',NULL),(19,'Tokyo Revengers',24,'Emision','LIDENFILMS','Koichi Hatsumi','2021-04-11',NULL,NULL,1,'Un joven descubre que puede viajar en el tiempo a su pasado de gángsters de secundaria y se propone cambiar el curso de la historia.','TV',_binary '','2023-08-04 12:25:18',NULL),(20,'Vinland Saga',24,'Emision','Wit Studio','Shuhei Yabuta','2019-07-07',NULL,NULL,1,'Thorfinn, un joven vikingo, busca vengar la muerte de su padre y se involucra en las luchas por el poder en Inglaterra.','TV',_binary '','2023-08-04 12:25:18',NULL),(21,'The Promised Neverland',24,'Terminado','CloverWorks','Mamoru Kanbe','2019-01-09','2019-03-29',NULL,1,'Emma y sus amigos intentan escapar de un orfanato después de descubrir un oscuro secreto sobre su verdadero propósito.','TV',_binary '','2023-08-04 12:25:18',NULL),(22,'Dr. Stone',48,'Emision','TMS Entertainment','Shinya Iino','2019-07-05',NULL,NULL,1,'Después de que un misterioso fenómeno convierta a la humanidad en piedra, un científico despierta miles de años después y trabaja para reconstruir la civilización.','TV',_binary '','2023-08-04 12:25:18',NULL),(23,'Mob Psycho 100',25,'Terminado','Bones','Yuzuru Tachikawa','2016-07-11','2016-09-27',NULL,1,'Un estudiante con habilidades psíquicas poderosas lucha por controlar sus emociones y descubre el significado de ser fuerte.','TV',_binary '','2023-08-04 12:25:18',NULL),(24,'Re:Zero - Starting Life in Another World',50,'Emision','White Fox','Masaharu Watanabe','2016-04-04',NULL,NULL,1,'Subaru Natsuki es transportado a un mundo de fantasía y descubre que puede volver a la vida cada vez que muere, pero no sin consecuencias.','TV',_binary '','2023-08-04 12:25:18',NULL),(25,'One Punch Man',24,'Emision','Madhouse','Shingo Natsume','2015-10-04',NULL,NULL,1,'Saitama puede derrotar a cualquier enemigo con un solo golpe, pero se siente aburrido y busca un desafío verdadero.','TV',_binary '','2023-08-04 12:25:18',NULL),(26,'The Rising of the Shield Hero',25,'Terminado','Kinema Citrus','Takao Abo','2019-01-09','2019-06-26',NULL,1,'Nanatsu es convocado a un mundo de fantasía como el Héroe del Escudo, pero se encuentra despreciado y debe luchar para ganarse el respeto.','TV',_binary '','2023-08-04 12:25:18',NULL),(27,'Parasyte -the maxim-',24,'Terminado','Madhouse','Kenichi Shimizu','2014-10-09','2015-03-26',NULL,1,'Un estudiante de secundaria lucha contra parásitos alienígenas que toman control de los humanos y se alimentan de otros.','TV',_binary '','2023-08-04 12:28:24',NULL),(28,'Soul Eater',51,'Terminado','Bones','Takuya Igarashi','2008-04-07','2009-03-30',NULL,1,'Estudiantes de una escuela especial luchan contra criaturas y seres malvados para recolectar almas y mantener el equilibrio del mundo.','TV',_binary '','2023-08-04 12:28:24',NULL),(29,'Magi: The Labyrinth of Magic',25,'Terminado','A-1 Pictures','Koji Masunari','2012-10-07','2013-03-31',NULL,1,'Aladdin y sus amigos se embarcan en aventuras mágicas en un mundo lleno de misterio, tesoros y peligros.','TV',_binary '','2023-08-04 12:28:24',NULL),(30,'Bakuman',75,'Terminado','J.C. Staff','Kenichi Kasai','2010-10-02','2013-03-30',NULL,3,'Dos estudiantes de secundaria aspiran a convertirse en mangakas exitosos y enfrentan desafíos en la industria del manga.','TV',_binary '','2023-08-04 12:28:24',NULL),(31,'Tokyo Ghoul',48,'Terminado','Pierrot','Shuhei Morita','2014-07-04','2014-09-19',NULL,1,'Un estudiante universitario se convierte en mitad ghoul después de un encuentro cercano con uno de estos devoradores de carne humana.','TV',_binary '','2023-08-04 12:28:24',NULL),(32,'Durarara!!',60,'Terminado','Brain\'s Base','Takahiro Omori','2010-01-08','2010-12-25',NULL,2,'Varias historias entrelazadas revelan las vidas y secretos de habitantes en el peligroso distrito de Ikebukuro en Tokio.','TV',_binary '','2023-08-04 12:28:24',NULL),(33,'Made in Abyss',13,'Terminado','Kinema Citrus','Masayuki Kojima','2017-07-07','2017-09-29',NULL,1,'Riko, una joven exploradora, desciende en el Abismo en busca de su madre y enfrenta desafíos mortales en este mundo misterioso.','TV',_binary '','2023-08-04 12:28:24',NULL),(34,'Promare',1,'Terminado','Trigger','Hiroyuki Imaishi','2019-05-24',NULL,NULL,1,'Un grupo de bomberos especiales lucha contra mutantes incendiarios en una sociedad futurista en este anime de película.','Pelicula',_binary '','2023-08-04 12:28:24',NULL),(35,'Banana Fish',24,'Terminado','MAPPA','Hiroko Utsumi','2018-07-06','2018-12-21',NULL,1,'Un joven líder de pandilla en Nueva York se ve envuelto en un misterio relacionado con una droga llamada \"Banana Fish\".','TV',_binary '','2023-08-04 12:28:24',NULL),(36,'Devilman Crybaby',10,'Terminado','Science SARU','Masaaki Yuasa','2018-01-05','2018-03-21',NULL,1,'Akira Fudo se convierte en Devilman para luchar contra demonios y prevenir el apocalipsis en este reinicio moderno de la serie clásica.','TV',_binary '','2023-08-04 12:28:24',NULL),(37,'Dennou Coil',26,'Terminado','Madhouse','Mitsuo Iso','2007-05-12','2007-12-01',NULL,1,'En un futuro cercano, los niños usan gafas de realidad aumentada para interactuar con un mundo digital que oculta misterios sobrenaturales.','TV',_binary '','2023-08-04 12:34:39',NULL),(38,'Mushishi',26,'Terminado','Artland','Hiroshi Nagahama','2005-10-23','2006-06-19',NULL,1,'Ginko viaja para investigar los \"Mushi\", formas de vida primitivas que existen en armonía con la naturaleza, pero que a veces causan problemas a los humanos.','TV',_binary '','2023-08-04 12:34:39',NULL),(39,'Haibane Renmei',13,'Terminado','Radix Ace Entertainment','Tomokazu Tokoro','2002-10-09','2002-12-18',NULL,1,'Rakka despierta como un \"Haibane\", un ser alado con halo, en un mundo misterioso rodeado por un muro.','TV',_binary '','2023-08-04 12:34:39',NULL),(40,'Bakemonogatari',15,'Terminado','Shaft','Akiyuki Shinbo','2009-07-03','2009-09-25',NULL,1,'Koyomi Araragi ayuda a varias chicas con problemas sobrenaturales mientras investiga su propia maldición de vampiro.','TV',_binary '','2023-08-04 12:34:39',NULL),(41,'Kino\'s Journey',13,'Terminado','A.C.G.T.','Ryutaro Nakamura','2003-04-08','2003-07-08',NULL,1,'Kino viaja en su motocicleta parlante Hermes, explorando diferentes países y culturas en cada lugar que visita.','TV',_binary '','2023-08-04 12:34:39',NULL),(42,'Serial Experiments Lain',13,'Terminado','Triangle Staff','Ryutaro Nakamura','1998-07-06','1998-09-28',NULL,1,'Lain descubre un mundo virtual llamado \"The Wired\" y comienza a perder la distinción entre la realidad y la realidad virtual.','TV',_binary '','2023-08-04 12:34:39',NULL),(43,'Texhnolyze',22,'Terminado','Madhouse','Hiroshi Hamazaki','2003-04-17','2003-09-25',NULL,1,'En una ciudad subterránea sombría, un hombre llamado Ichise se ve envuelto en una lucha de poder entre facciones criminales y religiosas.','TV',_binary '','2023-08-04 12:34:39',NULL),(44,'Kemono no Souja Erin',50,'Terminado','Production I.G','Satoshi Nishimura','2009-01-10','2009-12-26',NULL,1,'Erin criada en un pueblo que entrena bestias para el rey, descubre secretos y desafíos mientras busca su lugar en un mundo lleno de misterios.','TV',_binary '','2023-08-04 12:34:39',NULL),(45,'Kaiba',12,'Terminado','Madhouse','Masaaki Yuasa','2008-04-10','2008-07-24',NULL,1,'En un mundo donde las memorias pueden ser almacenadas y transferidas, un hombre despierta sin su memoria y se embarca en un viaje para recuperarla.','TV',_binary '','2023-08-04 12:34:39',NULL),(46,'RahXephon',26,'Terminado','Bones','Yutaka Izubuchi','2002-01-21','2002-09-10',NULL,1,'Ayato Kamina descubre un mecha misterioso y se ve involucrado en una lucha contra una raza alienígena en un mundo donde la realidad y los sueños se entrelazan.','TV',_binary '','2023-08-04 12:34:39',NULL),(47,'FLCL',6,'Terminado','Gainax','Kazuya Tsurumaki','2000-04-26',NULL,NULL,1,'Naota Nandaba, un joven de doce años, vive en una ciudad aparentemente normal hasta que su vida da un giro inesperado con la llegada de Haruko Haruhara en su peculiar Vespa y una guitarra con forma de arma de fuego.','Ova',_binary '','2023-08-04 12:36:42',NULL),(48,'Black Lagoon: Roberta\'s Blood Trail',5,'Terminado','Madhouse','Sunao Katabuchi','2010-07-17',NULL,NULL,1,'La empleada doméstica asesina Roberta, conocida como \"La Poderosa\", regresa a Roanapur en busca de venganza. Los protagonistas de Black Lagoon se ven atrapados en una letal confrontación de la mafia.','Ova',_binary '','2023-08-04 12:36:42',NULL),(49,'Hellsing Ultimate',10,'Terminado','Satelight','Hiroyuki Tanaka','2006-02-10',NULL,NULL,1,'La Organización Hellsing se enfrenta a amenazas sobrenaturales y fuerzas malignas, mientras el vampiro Alucard lucha contra enemigos que desafían la humanidad.','Ova',_binary '','2023-08-04 12:36:42',NULL),(50,'Rurouni Kenshin: Trust & Betrayal',4,'Terminado','Studio Deen','Kazuhito Kikuchi','1999-02-20',NULL,NULL,1,'Esta precuela de Rurouni Kenshin narra el pasado de Kenshin Himura cuando era un asesino conocido como \"Battousai el Destajador\". La historia sigue sus luchas y su transformación en un espadachín errante en busca de redención.','Ova',_binary '','2023-08-04 12:36:42',NULL),(51,'Akira',1,'Terminado','Tokyo Movie Shinsha','Katsuhiro Otomo','1988-07-16',NULL,NULL,1,'En una Neo-Tokio post-apocalíptica, un joven llamado Tetsuo obtiene poderes psíquicos después de un accidente en su motocicleta. Su amigo Kaneda intenta detenerlo antes de que cause una catástrofe.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(52,'Grave of the Fireflies',1,'Terminado','Studio Ghibli','Isao Takahata','1988-04-16',NULL,NULL,1,'Durante la Segunda Guerra Mundial, dos hermanos japoneses luchan por sobrevivir en medio del caos y la destrucción causados por los bombardeos aéreos.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(53,'Princess Mononoke',1,'Terminado','Studio Ghibli','Hayao Miyazaki','1997-07-12',NULL,NULL,1,'El príncipe Ashitaka se embarca en un viaje para encontrar una cura a una maldición mortal y se involucra en una lucha entre los humanos y los espíritus del bosque.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(54,'Paprika',1,'Terminado','Madhouse','Satoshi Kon','2006-11-25',NULL,NULL,1,'Un dispositivo experimental permite a los terapeutas entrar en los sueños de sus pacientes. Cuando el dispositivo es robado, la psicoterapeuta Atsuko Chiba se convierte en la enigmática Paprika para resolver el misterio.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(55,'The Girl Who Leapt Through Time',1,'Terminado','Madhouse','Mamoru Hosoda','2006-07-15',NULL,NULL,1,'Makoto Konno descubre que puede viajar en el tiempo y comienza a usar esta habilidad para cambiar su vida y la de sus amigos, pero pronto enfrenta las consecuencias.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(56,'Wolf Children',1,'Terminado','Studio Chizu','Mamoru Hosoda','2012-07-21',NULL,NULL,1,'Una joven llamada Hana se enamora de un hombre lobo y da a luz a dos hijos mitad humanos, mitad lobos. Después de la muerte de su esposo, Hana lucha por criar a sus hijos en un mundo que no los comprende.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(57,'A Silent Voice',1,'Terminado','Kyoto Animation','Naoko Yamada','2016-09-17',NULL,NULL,1,'Un joven intenta redimirse después de acosar a una compañera de clase sorda en esta conmovedora película.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(58,'Your Name',1,'Terminado','CoMix Wave Films','Makoto Shinkai','2016-08-26',NULL,NULL,1,'Mitsuha y Taki, dos desconocidos que intercambian cuerpos, buscan encontrarse en este hermoso drama romántico.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(59,'Weathering with You',1,'Terminado','CoMix Wave Films','Makoto Shinkai','2019-07-19',NULL,NULL,1,'Un adolescente huye a Tokio y se encuentra con una chica que puede controlar el clima, pero sus poderes tienen un alto costo.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(60,'A Whisker Away',1,'Terminado','Studio Colorido','Junichi Sato, Tomotaka Shibayama','2020-06-18',NULL,NULL,1,'Una chica se transforma en un gato para acercarse al chico que le gusta, pero descubre que esta nueva forma de vida no es tan sencilla como parece.','Pelicula',_binary '','2023-08-04 12:38:12',NULL),(61,'FLCL: Progressive',6,'Terminado','Production I.G','Kazuya Tsurumaki','2018-06-02',NULL,NULL,1,'Hidomi Hibajiri, una joven de secundaria con problemas, se ve envuelta en situaciones extrañas y encuentra una conexión con un ser extraterrestre.','Ova',_binary '','2023-08-04 12:40:37',NULL),(62,'FLCL: Alternative',6,'Terminado','Production I.G','Kazuya Tsurumaki','2018-09-07',NULL,NULL,1,'Kana Koumoto y sus amigos se encuentran en medio de una lucha entre robots gigantes y extraterrestres mientras enfrentan los desafíos de la adolescencia.','Ova',_binary '','2023-08-04 12:40:37',NULL),(63,'Tenchi Muyo! Ryo-Ohki',6,'Terminado','AIC','Hiroshi Negishi','1992-09-25',NULL,NULL,1,'Tenchi Masaki se ve envuelto en una batalla intergaláctica entre varias princesas espaciales mientras lidia con la presencia de chicas alienígenas en su vida.','Ova',_binary '','2023-08-04 12:40:37',NULL),(64,'Elfen Lied',1,'Terminado','Arms','Mamoru Kanbe','2005-04-21',NULL,NULL,1,'Esta OVA explora los eventos pasados y los sentimientos de Lucy en relación con el trágico mundo en el que vive.','Ova',_binary '','2023-08-04 12:40:37',NULL),(65,'Gunsmith Cats',3,'Terminado','Oriental Light and Magic','Kōichi Mashimo','1995-12-25',NULL,NULL,1,'Las hermanas Rally Vincent y Minnie-May Hopkins, propietarias de Gunsmith Cats, un taller de armas de fuego y cazarrecompensas, se involucran en situaciones peligrosas.','Ova',_binary '','2023-08-04 12:40:37',NULL),(66,'Macross Plus',4,'Terminado','Triangle Staff','Shoji Kawamori','1994-08-25',NULL,NULL,1,'En una rivalidad entre dos pilotos de mechas, Isamu Dyson y Guld Goa Bowman, se desentrañan secretos y tensiones en medio de un proyecto de desarrollo de inteligencia artificial.','Ova',_binary '','2023-08-04 12:40:37',NULL),(67,'Mobile Suit Gundam: The 08th MS Team',12,'Terminado','Sunrise','Takeyuki Kanda','1996-01-25',NULL,NULL,1,'En medio de la Guerra de un Año, el Equipo MS 08 lucha en la Tierra y en el espacio con unidades móviles y enfrenta desafíos tanto militares como personales.','Ova',_binary '','2023-08-04 12:40:37',NULL),(68,'Hellsing: The Dawn',3,'Terminado','Satelight','Ryoichi Koga','2011-07-27',NULL,NULL,1,'Esta precuela de Hellsing explora los orígenes de Alucard, Sir Integra Hellsing y Walter C. Dorneaz mientras enfrentan amenazas sobrenaturales.','Ova',_binary '','2023-08-04 12:40:37',NULL),(69,'Black Rock Shooter',1,'Terminado','Ordet, Sanzigen','Shinobu Yoshioka','2010-07-24',NULL,NULL,1,'Dos amigas, Mato Kuroi y Yomi Takanashi, luchan en un mundo de batalla surrealista como las versiones alter ego de la misteriosa Black Rock Shooter.','Ova',_binary '','2023-08-04 12:40:37',NULL),(70,'Gunbuster',6,'Terminado','Gainax','Hideaki Anno','1988-10-07',NULL,NULL,1,'Noriko Takaya y Kazumi Amano se entrenan para ser pilotos de mechas y defender a la humanidad contra una raza alienígena. La OVA explora su entrenamiento y sus luchas personales.','Ova',_binary '','2023-08-04 12:40:37','2023-08-04 23:59:33');
/*!40000 ALTER TABLE `tbb_anime` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_anime` AFTER INSERT ON `tbb_anime` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_anime', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo ANIME con el ID: ', NEW.idAnime, ' con el NOMBRE: ', NEW.Nombre, ' y FECHA DE REGISTRO: ', NEW.Fecha_Inicio), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_anime_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_anime` FOR EACH ROW BEGIN
	SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_anime_AFTER_UPDATE` AFTER UPDATE ON `tbb_anime` FOR EACH ROW BEGIN
INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_anime', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un ANIME con el ID: ', NEW.idAnime, ' con el NOMBRE: ', NEW.Nombre, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_anime_AFTER_DELETE` AFTER DELETE ON `tbb_anime` FOR EACH ROW BEGIN
	INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
	VALUES (USER(), 'tbb_anime', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un ANIME con el ID: ', OLD.idAnime, ' con el NOMBRE: ', OLD.Nombre, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_episodio`
--

DROP TABLE IF EXISTS `tbb_episodio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_episodio` (
  `idEpisodio` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Estreno` date DEFAULT NULL,
  `idTemporada` int NOT NULL,
  `idAnime` int NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idEpisodio`),
  UNIQUE KEY `idEpisodio_UNIQUE` (`idEpisodio`),
  KEY `fk_anime_episodio` (`idAnime`),
  KEY `fk_temporada` (`idTemporada`),
  CONSTRAINT `fk_anime_episodio` FOREIGN KEY (`idAnime`) REFERENCES `tbb_anime` (`idAnime`),
  CONSTRAINT `fk_temporada` FOREIGN KEY (`idTemporada`) REFERENCES `tbb_temporada` (`idTemporada`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_episodio`
--

LOCK TABLES `tbb_episodio` WRITE;
/*!40000 ALTER TABLE `tbb_episodio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_episodio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_episodio` AFTER INSERT ON `tbb_episodio` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_episodio', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo EPISODIO con el ID: ', NEW.idEpisodio, ' y NOMBRE: ', NEW.Nombre, ' y FECHA DE ESTRENO: ', NEW.Estreno), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_episodio_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_episodio` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_episodio` AFTER UPDATE ON `tbb_episodio` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_episodio', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un EPISODIO con el ID: ', NEW.idEpisodio, ' y NOMBRE: ', NEW.Nombre, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_episodio` AFTER DELETE ON `tbb_episodio` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_episodio', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un EPISODIO con el ID: ', OLD.idEpisodio, ' y NOMBRE: ', OLD.Nombre, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_genero`
--

DROP TABLE IF EXISTS `tbb_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_genero` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Subgenero` int DEFAULT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `idGenero_UNIQUE` (`idGenero`),
  KEY `fk_genero_Genero` (`Subgenero`),
  CONSTRAINT `fk_genero_sub_genero` FOREIGN KEY (`Subgenero`) REFERENCES `tbb_genero` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_genero`
--

LOCK TABLES `tbb_genero` WRITE;
/*!40000 ALTER TABLE `tbb_genero` DISABLE KEYS */;
INSERT INTO `tbb_genero` VALUES (1,'Acción',NULL,_binary '','2023-07-23 03:15:59',NULL),(2,'Ciencia ficción',NULL,_binary '','2023-07-23 03:15:59',NULL),(3,'Comedia',NULL,_binary '','2023-07-23 03:15:59',NULL),(4,'Parodia',NULL,_binary '','2023-07-23 03:15:59',NULL),(5,'Comedia dramática',3,_binary '','2023-07-23 03:16:32',NULL),(6,'Aventuras',NULL,_binary '','2023-07-23 03:17:20',NULL),(7,'Fantasía',NULL,_binary '','2023-07-23 03:17:53',NULL),(8,'Deportes',NULL,_binary '','2023-07-23 03:18:26',NULL),(9,'Drama',NULL,_binary '','2023-07-23 03:19:27',NULL),(10,'Fantasía oscura',7,_binary '','2023-07-23 03:22:52',NULL),(11,'Sobrenatural',NULL,_binary '','2023-07-23 03:23:28',NULL),(12,'Histórico',NULL,_binary '','2023-07-23 03:30:34',NULL),(13,'Yuri',3,_binary '','2023-08-11 00:00:00','2023-08-11 00:00:00'),(15,'one',2,_binary '','2023-08-11 00:00:00','2023-08-10 19:29:04');
/*!40000 ALTER TABLE `tbb_genero` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_genero` AFTER INSERT ON `tbb_genero` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_genero', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo GÉNERO con el ID: ', NEW.idGenero, ' y NOMBRE: ', NEW.Nombre), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_genero_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_genero` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_genero` AFTER UPDATE ON `tbb_genero` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_genero', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un GÉNERO con el ID: ', NEW.idGenero, ' y NOMBRE: ', NEW.Nombre, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_genero` AFTER DELETE ON `tbb_genero` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_genero', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un GÉNERO con el ID: ', OLD.idGenero, ' y NOMBRE: ', OLD.Nombre, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_miembro`
--

DROP TABLE IF EXISTS `tbb_miembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_miembro` (
  `idMiembro` int NOT NULL AUTO_INCREMENT,
  `Usuario_id` int NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idMiembro`),
  UNIQUE KEY `idMiembro_UNIQUE` (`idMiembro`),
  KEY `fk_usuario` (`Usuario_id`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`Usuario_id`) REFERENCES `tbb_usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_miembro`
--

LOCK TABLES `tbb_miembro` WRITE;
/*!40000 ALTER TABLE `tbb_miembro` DISABLE KEYS */;
INSERT INTO `tbb_miembro` VALUES (2,2,_binary '','2023-08-05 11:33:33',NULL),(3,3,_binary '','2023-08-05 11:33:33',NULL),(4,4,_binary '','2023-08-05 11:33:33',NULL),(5,5,_binary '','2023-08-05 11:33:33',NULL),(6,6,_binary '','2023-08-05 11:33:33',NULL),(7,7,_binary '','2023-08-05 11:33:33',NULL),(8,8,_binary '','2023-08-05 11:33:33',NULL),(9,9,_binary '','2023-08-05 11:33:33',NULL),(10,10,_binary '','2023-08-05 11:33:33',NULL),(11,11,_binary '','2023-08-05 11:33:33',NULL),(12,12,_binary '','2023-08-05 11:33:33',NULL),(13,13,_binary '','2023-08-05 11:33:33',NULL),(14,14,_binary '','2023-08-05 11:33:33',NULL),(15,15,_binary '','2023-08-05 11:33:33',NULL),(16,16,_binary '','2023-08-05 11:33:33',NULL),(17,17,_binary '','2023-08-05 11:33:33',NULL),(18,18,_binary '','2023-08-05 11:33:33',NULL),(19,19,_binary '','2023-08-05 11:33:33',NULL),(20,20,_binary '','2023-08-05 11:33:33',NULL),(21,21,_binary '','2023-08-05 11:33:33',NULL),(22,22,_binary '','2023-08-05 11:33:33',NULL),(23,23,_binary '','2023-08-05 11:33:33',NULL),(24,24,_binary '','2023-08-05 11:33:33',NULL),(25,25,_binary '','2023-08-05 11:33:33',NULL),(26,26,_binary '','2023-08-05 11:33:33',NULL),(27,27,_binary '','2023-08-05 11:33:33',NULL),(28,28,_binary '','2023-08-05 11:33:33',NULL),(29,29,_binary '','2023-08-05 11:33:33',NULL),(30,30,_binary '','2023-08-05 11:33:33',NULL),(31,31,_binary '','2023-08-05 11:33:33',NULL),(32,32,_binary '','2023-08-05 11:33:33',NULL),(33,33,_binary '','2023-08-05 11:33:33',NULL),(34,34,_binary '','2023-08-05 11:33:33',NULL),(35,35,_binary '','2023-08-05 11:33:33',NULL),(36,36,_binary '','2023-08-05 11:33:33',NULL),(37,37,_binary '','2023-08-05 11:33:33',NULL),(38,38,_binary '','2023-08-05 11:33:33',NULL),(39,39,_binary '','2023-08-05 11:33:33',NULL),(40,40,_binary '','2023-08-05 11:33:33',NULL),(41,41,_binary '','2023-08-05 11:33:33',NULL),(42,42,_binary '','2023-08-05 11:33:33',NULL),(43,43,_binary '','2023-08-05 11:33:33',NULL),(44,44,_binary '','2023-08-05 11:33:33',NULL),(45,45,_binary '','2023-08-05 11:33:33',NULL),(46,46,_binary '','2023-08-05 11:33:33',NULL),(47,47,_binary '','2023-08-05 11:33:33',NULL),(48,48,_binary '','2023-08-05 11:33:33',NULL),(49,49,_binary '','2023-08-05 11:33:33',NULL),(50,50,_binary '','2023-08-05 11:33:33',NULL),(51,51,_binary '','2023-08-05 11:33:33',NULL),(52,52,_binary '','2023-08-05 11:33:33',NULL),(53,53,_binary '','2023-08-05 11:33:33',NULL),(54,54,_binary '','2023-08-05 11:33:33',NULL),(55,55,_binary '','2023-08-05 11:33:33',NULL),(56,56,_binary '','2023-08-05 11:33:33',NULL),(57,57,_binary '','2023-08-05 11:33:34',NULL),(58,58,_binary '','2023-08-05 11:33:34',NULL),(59,59,_binary '','2023-08-05 11:33:34',NULL),(60,60,_binary '','2023-08-05 11:33:34',NULL),(61,61,_binary '','2023-08-05 11:33:34',NULL),(62,62,_binary '','2023-08-05 11:33:34',NULL),(63,63,_binary '','2023-08-05 11:33:34',NULL),(64,64,_binary '','2023-08-05 11:33:34',NULL),(65,65,_binary '','2023-08-05 11:33:34',NULL),(66,66,_binary '','2023-08-05 11:33:34',NULL),(67,67,_binary '','2023-08-05 11:33:34',NULL),(68,68,_binary '','2023-08-05 11:33:34',NULL),(69,69,_binary '','2023-08-05 11:33:34',NULL),(70,70,_binary '','2023-08-05 11:33:34',NULL),(71,71,_binary '','2023-08-05 11:33:34',NULL),(72,72,_binary '','2023-08-05 11:33:34',NULL),(73,73,_binary '','2023-08-05 11:33:34',NULL),(74,74,_binary '','2023-08-05 11:33:34',NULL),(75,75,_binary '','2023-08-05 11:33:34',NULL),(76,76,_binary '','2023-08-05 11:33:34',NULL),(77,77,_binary '','2023-08-05 11:33:34',NULL),(78,78,_binary '','2023-08-05 11:33:34',NULL),(79,79,_binary '','2023-08-05 11:33:34',NULL),(80,80,_binary '','2023-08-05 11:33:34',NULL),(81,81,_binary '','2023-08-05 11:33:34',NULL),(82,82,_binary '','2023-08-05 11:33:34',NULL),(83,83,_binary '','2023-08-05 11:33:34',NULL),(84,84,_binary '','2023-08-05 11:33:34',NULL),(85,85,_binary '','2023-08-05 11:33:34',NULL),(86,86,_binary '','2023-08-05 11:33:34',NULL),(87,87,_binary '','2023-08-05 11:33:34',NULL),(88,88,_binary '','2023-08-05 11:33:34',NULL),(89,89,_binary '','2023-08-05 11:33:34',NULL),(90,90,_binary '','2023-08-05 11:33:34',NULL),(91,91,_binary '','2023-08-05 11:33:34',NULL),(92,92,_binary '','2023-08-05 11:33:34',NULL),(93,93,_binary '','2023-08-05 11:33:34',NULL),(94,94,_binary '','2023-08-05 11:33:34',NULL),(95,95,_binary '','2023-08-05 11:33:34',NULL),(96,96,_binary '','2023-08-05 11:33:34',NULL),(97,97,_binary '','2023-08-05 11:33:34',NULL),(98,98,_binary '','2023-08-05 11:33:34',NULL),(99,99,_binary '','2023-08-05 11:33:34',NULL),(100,100,_binary '','2023-08-05 11:33:34',NULL),(101,101,_binary '','2023-08-05 11:33:34',NULL),(102,102,_binary '','2023-08-05 11:33:34',NULL),(103,103,_binary '','2023-08-05 11:33:34',NULL),(104,104,_binary '','2023-08-05 11:33:34',NULL),(105,105,_binary '','2023-08-05 11:33:34',NULL),(106,106,_binary '','2023-08-05 11:33:34',NULL),(107,107,_binary '','2023-08-05 11:33:34',NULL),(108,108,_binary '','2023-08-05 11:33:34',NULL),(109,109,_binary '','2023-08-05 11:33:34',NULL),(110,110,_binary '','2023-08-05 11:33:34',NULL),(111,111,_binary '','2023-08-05 11:33:34',NULL),(112,112,_binary '','2023-08-05 11:33:34',NULL),(113,113,_binary '','2023-08-05 11:33:34',NULL),(114,114,_binary '','2023-08-05 11:33:34',NULL),(115,115,_binary '','2023-08-05 11:33:34',NULL),(116,116,_binary '','2023-08-05 11:33:34',NULL),(117,117,_binary '','2023-08-05 11:33:34',NULL),(118,118,_binary '','2023-08-05 11:33:34',NULL),(119,119,_binary '','2023-08-05 11:33:34',NULL),(120,120,_binary '','2023-08-05 11:33:34',NULL),(121,121,_binary '','2023-08-05 11:33:34',NULL),(122,122,_binary '','2023-08-05 11:33:34',NULL),(123,123,_binary '','2023-08-05 11:33:34',NULL),(124,124,_binary '','2023-08-05 11:33:34',NULL),(125,125,_binary '','2023-08-05 11:33:34',NULL),(126,126,_binary '','2023-08-05 11:33:34',NULL),(127,127,_binary '','2023-08-05 11:33:34',NULL),(128,128,_binary '','2023-08-05 11:33:34',NULL),(129,129,_binary '','2023-08-05 11:33:34',NULL),(130,130,_binary '','2023-08-05 11:33:34',NULL),(131,131,_binary '','2023-08-05 11:33:34',NULL),(132,132,_binary '','2023-08-05 11:33:34',NULL),(133,133,_binary '','2023-08-05 11:33:34',NULL),(134,134,_binary '','2023-08-05 11:33:34',NULL),(135,135,_binary '','2023-08-05 11:33:34',NULL),(136,136,_binary '','2023-08-05 11:33:34',NULL),(137,137,_binary '','2023-08-05 11:33:34',NULL),(138,138,_binary '','2023-08-05 11:33:34',NULL),(139,139,_binary '','2023-08-05 11:33:34',NULL),(140,140,_binary '','2023-08-05 11:33:34',NULL),(141,141,_binary '','2023-08-05 11:33:34',NULL),(142,142,_binary '','2023-08-05 11:33:34',NULL),(143,143,_binary '','2023-08-05 11:33:34',NULL),(144,144,_binary '','2023-08-05 11:33:34',NULL),(145,145,_binary '','2023-08-05 11:33:34',NULL),(146,146,_binary '','2023-08-05 11:33:34',NULL),(147,147,_binary '','2023-08-05 11:33:34',NULL),(148,148,_binary '','2023-08-05 11:33:34',NULL),(149,149,_binary '','2023-08-05 11:33:34',NULL),(150,150,_binary '','2023-08-05 11:33:34',NULL),(151,151,_binary '','2023-08-05 11:33:34',NULL),(152,152,_binary '','2023-08-05 11:33:34',NULL),(153,153,_binary '','2023-08-05 11:33:34',NULL),(154,154,_binary '','2023-08-05 11:33:34',NULL),(155,155,_binary '','2023-08-05 11:33:34',NULL),(156,156,_binary '','2023-08-05 11:33:34',NULL),(157,157,_binary '','2023-08-05 11:33:34',NULL),(158,158,_binary '','2023-08-05 11:33:34',NULL),(159,159,_binary '','2023-08-05 11:33:34',NULL),(160,160,_binary '','2023-08-05 11:33:34',NULL),(161,161,_binary '','2023-08-05 11:33:34',NULL),(162,162,_binary '','2023-08-05 11:33:34',NULL),(163,163,_binary '','2023-08-05 11:33:34',NULL),(164,164,_binary '','2023-08-05 11:33:34',NULL),(165,165,_binary '','2023-08-05 11:33:34',NULL),(166,166,_binary '','2023-08-05 11:33:35',NULL),(167,167,_binary '','2023-08-05 11:33:35',NULL),(168,168,_binary '','2023-08-05 11:33:35',NULL),(169,169,_binary '','2023-08-05 11:33:35',NULL),(170,170,_binary '','2023-08-05 11:33:35',NULL),(171,171,_binary '','2023-08-05 11:33:35',NULL),(172,172,_binary '','2023-08-05 11:33:35',NULL),(173,173,_binary '','2023-08-05 11:33:35',NULL),(174,174,_binary '','2023-08-05 11:33:35',NULL),(175,175,_binary '','2023-08-05 11:33:35',NULL),(176,176,_binary '','2023-08-05 11:33:35',NULL),(177,177,_binary '','2023-08-05 11:33:35',NULL),(178,178,_binary '','2023-08-05 11:33:35',NULL),(179,179,_binary '','2023-08-05 11:33:35',NULL),(180,180,_binary '','2023-08-05 11:33:35',NULL),(181,181,_binary '','2023-08-05 11:33:35',NULL),(182,182,_binary '','2023-08-05 11:33:35',NULL),(183,183,_binary '','2023-08-05 11:33:35',NULL),(184,184,_binary '','2023-08-05 11:33:35',NULL),(185,185,_binary '','2023-08-05 11:33:35',NULL),(186,186,_binary '','2023-08-05 11:33:35',NULL),(187,187,_binary '','2023-08-05 11:33:35',NULL),(188,188,_binary '','2023-08-05 11:33:35',NULL),(189,189,_binary '','2023-08-05 11:33:35',NULL),(190,190,_binary '','2023-08-05 11:33:35',NULL),(191,191,_binary '','2023-08-05 11:33:35',NULL),(192,192,_binary '','2023-08-05 11:33:35',NULL),(193,193,_binary '','2023-08-05 11:33:35',NULL),(194,194,_binary '','2023-08-05 11:33:35',NULL),(195,195,_binary '','2023-08-05 11:33:35',NULL),(196,196,_binary '','2023-08-05 11:33:35',NULL),(197,197,_binary '','2023-08-05 11:33:35',NULL),(198,198,_binary '','2023-08-05 11:33:35',NULL),(199,199,_binary '','2023-08-05 11:33:35',NULL),(200,200,_binary '','2023-08-05 11:33:35',NULL),(201,201,_binary '','2023-08-05 11:33:35',NULL),(202,202,_binary '','2023-08-05 11:33:35',NULL),(203,203,_binary '','2023-08-05 11:33:35',NULL),(204,204,_binary '','2023-08-05 11:33:35',NULL),(205,205,_binary '','2023-08-05 11:33:35',NULL),(206,206,_binary '','2023-08-05 11:33:35',NULL),(207,207,_binary '','2023-08-05 11:33:35',NULL),(208,208,_binary '','2023-08-05 11:33:35',NULL),(209,209,_binary '','2023-08-05 11:33:35',NULL),(210,210,_binary '','2023-08-05 11:33:35',NULL),(211,211,_binary '','2023-08-05 11:33:35',NULL),(212,212,_binary '','2023-08-05 11:33:35',NULL),(213,213,_binary '','2023-08-05 11:33:35',NULL),(214,214,_binary '','2023-08-05 11:33:35',NULL),(215,215,_binary '','2023-08-05 11:33:35',NULL),(216,216,_binary '','2023-08-05 11:33:35',NULL),(217,217,_binary '','2023-08-05 11:33:35',NULL),(218,218,_binary '','2023-08-05 11:33:35',NULL),(219,219,_binary '','2023-08-05 11:33:35',NULL),(220,220,_binary '','2023-08-05 11:33:35',NULL),(221,221,_binary '','2023-08-05 11:33:35',NULL),(222,222,_binary '','2023-08-05 11:33:35',NULL),(223,223,_binary '','2023-08-05 11:33:35',NULL),(224,224,_binary '','2023-08-05 11:33:35',NULL),(225,225,_binary '','2023-08-05 11:33:35',NULL),(226,226,_binary '','2023-08-05 11:33:35',NULL),(227,227,_binary '','2023-08-05 11:33:35',NULL),(228,228,_binary '','2023-08-05 11:33:35',NULL),(229,229,_binary '','2023-08-05 11:33:35',NULL),(230,230,_binary '','2023-08-05 11:33:35',NULL),(231,231,_binary '','2023-08-05 11:33:35',NULL),(232,232,_binary '','2023-08-05 11:33:35',NULL),(233,233,_binary '','2023-08-05 11:33:35',NULL),(234,234,_binary '','2023-08-05 11:33:35',NULL),(235,235,_binary '','2023-08-05 11:33:35',NULL),(236,236,_binary '','2023-08-05 11:33:35',NULL),(237,237,_binary '','2023-08-05 11:33:35',NULL),(238,238,_binary '','2023-08-05 11:33:35',NULL),(239,239,_binary '','2023-08-05 11:33:35',NULL),(240,240,_binary '','2023-08-05 11:33:35',NULL),(241,241,_binary '','2023-08-05 11:33:35',NULL),(242,242,_binary '','2023-08-05 11:33:35',NULL),(243,243,_binary '','2023-08-05 11:33:35',NULL),(244,244,_binary '','2023-08-05 11:33:35',NULL),(245,245,_binary '','2023-08-05 11:33:35',NULL),(246,246,_binary '','2023-08-05 11:33:35',NULL),(247,247,_binary '','2023-08-05 11:33:35',NULL),(248,248,_binary '','2023-08-05 11:33:35',NULL),(249,249,_binary '','2023-08-05 11:33:35',NULL),(250,250,_binary '','2023-08-05 11:33:35',NULL),(251,251,_binary '','2023-08-05 11:33:35',NULL),(252,252,_binary '','2023-08-05 11:33:35',NULL),(253,253,_binary '','2023-08-05 11:33:35',NULL),(254,254,_binary '','2023-08-05 11:33:35',NULL),(255,255,_binary '','2023-08-05 11:33:35',NULL),(256,256,_binary '','2023-08-05 11:33:35',NULL),(257,257,_binary '','2023-08-05 11:33:35',NULL),(258,258,_binary '','2023-08-05 11:33:35',NULL),(259,259,_binary '','2023-08-05 11:33:35',NULL),(260,260,_binary '','2023-08-05 11:33:35',NULL),(261,261,_binary '','2023-08-05 11:33:35',NULL),(262,262,_binary '','2023-08-05 11:33:35',NULL),(263,263,_binary '','2023-08-05 11:33:35',NULL),(264,264,_binary '','2023-08-05 11:33:35',NULL),(265,265,_binary '','2023-08-05 11:33:35',NULL),(266,266,_binary '','2023-08-05 11:33:35',NULL),(267,267,_binary '','2023-08-05 11:33:35',NULL),(268,268,_binary '','2023-08-05 11:33:35',NULL),(269,269,_binary '','2023-08-05 11:33:35',NULL),(270,270,_binary '','2023-08-05 11:33:35',NULL),(271,271,_binary '','2023-08-05 11:33:35',NULL),(272,272,_binary '','2023-08-05 11:33:35',NULL),(273,273,_binary '','2023-08-05 11:33:35',NULL),(274,274,_binary '','2023-08-05 11:33:35',NULL),(275,275,_binary '','2023-08-05 11:33:35',NULL),(276,276,_binary '','2023-08-05 11:33:35',NULL),(277,277,_binary '','2023-08-05 11:33:35',NULL),(278,278,_binary '','2023-08-05 11:33:35',NULL),(279,279,_binary '','2023-08-05 11:33:35',NULL),(280,280,_binary '','2023-08-05 11:33:35',NULL),(281,281,_binary '','2023-08-05 11:33:35',NULL),(282,282,_binary '','2023-08-05 11:33:35',NULL),(283,283,_binary '','2023-08-05 11:33:35',NULL),(284,284,_binary '','2023-08-05 11:33:35',NULL),(285,285,_binary '','2023-08-05 11:33:35',NULL),(286,286,_binary '','2023-08-05 11:33:35',NULL),(287,287,_binary '','2023-08-05 11:33:35',NULL),(288,288,_binary '','2023-08-05 11:33:35',NULL),(289,289,_binary '','2023-08-05 11:33:35',NULL),(290,290,_binary '','2023-08-05 11:33:35',NULL),(291,291,_binary '','2023-08-05 11:33:35',NULL),(292,292,_binary '','2023-08-05 11:33:35',NULL),(293,293,_binary '','2023-08-05 11:33:35',NULL),(294,294,_binary '','2023-08-05 11:33:35',NULL),(295,295,_binary '','2023-08-05 11:33:35',NULL),(296,296,_binary '','2023-08-05 11:33:35',NULL),(297,297,_binary '','2023-08-05 11:33:35',NULL),(298,298,_binary '','2023-08-05 11:33:35',NULL),(299,299,_binary '','2023-08-05 11:33:35',NULL),(300,300,_binary '','2023-08-05 11:33:35',NULL),(301,301,_binary '','2023-08-05 11:33:35',NULL),(302,302,_binary '','2023-08-05 11:33:35',NULL),(303,303,_binary '','2023-08-05 11:33:35',NULL),(304,304,_binary '','2023-08-05 11:33:35',NULL),(305,305,_binary '','2023-08-05 11:33:35',NULL),(306,306,_binary '','2023-08-05 11:33:35',NULL),(307,307,_binary '','2023-08-05 11:33:35',NULL),(308,308,_binary '','2023-08-05 11:33:35',NULL),(309,309,_binary '','2023-08-05 11:33:35',NULL),(310,310,_binary '','2023-08-05 11:33:35',NULL),(311,311,_binary '','2023-08-05 11:33:35',NULL),(312,312,_binary '','2023-08-05 11:33:35',NULL),(313,313,_binary '','2023-08-05 11:33:35',NULL),(314,314,_binary '','2023-08-05 11:33:35',NULL),(315,315,_binary '','2023-08-05 11:33:35',NULL),(316,316,_binary '','2023-08-05 11:33:35',NULL),(317,317,_binary '','2023-08-05 11:33:35',NULL),(318,318,_binary '','2023-08-05 11:33:35',NULL),(319,319,_binary '','2023-08-05 11:33:35',NULL),(320,320,_binary '','2023-08-05 11:33:35',NULL),(321,321,_binary '','2023-08-05 11:33:35',NULL),(322,322,_binary '','2023-08-05 11:33:35',NULL),(323,323,_binary '','2023-08-05 11:33:35',NULL),(324,324,_binary '','2023-08-05 11:33:35',NULL),(325,325,_binary '','2023-08-05 11:33:35',NULL),(326,326,_binary '','2023-08-05 11:33:35',NULL),(327,327,_binary '','2023-08-05 11:33:35',NULL),(328,328,_binary '','2023-08-05 11:33:35',NULL),(329,329,_binary '','2023-08-05 11:33:35',NULL),(330,330,_binary '','2023-08-05 11:33:35',NULL),(331,331,_binary '','2023-08-05 11:33:35',NULL),(332,332,_binary '','2023-08-05 11:33:35',NULL),(333,333,_binary '','2023-08-05 11:33:35',NULL),(334,334,_binary '','2023-08-05 11:33:35',NULL),(335,335,_binary '','2023-08-05 11:33:35',NULL),(336,336,_binary '','2023-08-05 11:33:35',NULL),(337,337,_binary '','2023-08-05 11:33:35',NULL),(338,338,_binary '','2023-08-05 11:33:35',NULL),(339,339,_binary '','2023-08-05 11:33:35',NULL),(340,340,_binary '','2023-08-05 11:33:35',NULL),(341,341,_binary '','2023-08-05 11:33:35',NULL),(342,342,_binary '','2023-08-05 11:33:35',NULL),(343,343,_binary '','2023-08-05 11:33:35',NULL),(344,344,_binary '','2023-08-05 11:33:35',NULL),(345,345,_binary '','2023-08-05 11:33:35',NULL),(346,346,_binary '','2023-08-05 11:33:35',NULL),(347,347,_binary '','2023-08-05 11:33:35',NULL),(348,348,_binary '','2023-08-05 11:33:35',NULL),(349,349,_binary '','2023-08-05 11:33:35',NULL),(350,350,_binary '','2023-08-05 11:33:35',NULL),(351,351,_binary '','2023-08-05 11:33:35',NULL),(352,352,_binary '','2023-08-05 11:33:35',NULL),(353,353,_binary '','2023-08-05 11:33:35',NULL),(354,354,_binary '','2023-08-05 11:33:35',NULL),(355,355,_binary '','2023-08-05 11:33:35',NULL),(356,356,_binary '','2023-08-05 11:33:35',NULL),(357,357,_binary '','2023-08-05 11:33:35',NULL),(358,358,_binary '','2023-08-05 11:33:35',NULL),(359,359,_binary '','2023-08-05 11:33:35',NULL),(360,360,_binary '','2023-08-05 11:33:35',NULL),(361,361,_binary '','2023-08-05 11:33:35',NULL),(362,362,_binary '','2023-08-05 11:33:35',NULL),(363,363,_binary '','2023-08-05 11:33:35',NULL),(364,364,_binary '','2023-08-05 11:33:35',NULL),(365,365,_binary '','2023-08-05 11:33:35',NULL),(366,366,_binary '','2023-08-05 11:33:35',NULL),(367,367,_binary '','2023-08-05 11:33:35',NULL),(368,368,_binary '','2023-08-05 11:33:35',NULL),(369,369,_binary '','2023-08-05 11:33:35',NULL),(370,370,_binary '','2023-08-05 11:33:35',NULL),(371,371,_binary '','2023-08-05 11:33:35',NULL),(372,372,_binary '','2023-08-05 11:33:35',NULL),(373,373,_binary '','2023-08-05 11:33:35',NULL),(374,374,_binary '','2023-08-05 11:33:35',NULL),(375,375,_binary '','2023-08-05 11:33:35',NULL),(376,376,_binary '','2023-08-05 11:33:35',NULL),(377,377,_binary '','2023-08-05 11:33:35',NULL),(378,378,_binary '','2023-08-05 11:33:35',NULL),(379,379,_binary '','2023-08-05 11:33:35',NULL),(380,380,_binary '','2023-08-05 11:33:35',NULL),(381,381,_binary '','2023-08-05 11:33:35',NULL),(382,382,_binary '','2023-08-05 11:33:35',NULL),(383,383,_binary '','2023-08-05 11:33:35',NULL),(384,384,_binary '','2023-08-05 11:33:35',NULL),(385,385,_binary '','2023-08-05 11:33:35',NULL),(386,386,_binary '','2023-08-05 11:33:35',NULL),(387,387,_binary '','2023-08-05 11:33:35',NULL),(388,388,_binary '','2023-08-05 11:33:35',NULL),(389,389,_binary '','2023-08-05 11:33:35',NULL),(390,390,_binary '','2023-08-05 11:33:35',NULL),(391,391,_binary '','2023-08-05 11:33:35',NULL),(392,392,_binary '','2023-08-05 11:33:35',NULL),(393,393,_binary '','2023-08-05 11:33:35',NULL),(394,394,_binary '','2023-08-05 11:33:35',NULL),(395,395,_binary '','2023-08-05 11:33:35',NULL),(396,396,_binary '','2023-08-05 11:33:35',NULL),(397,397,_binary '','2023-08-05 11:33:35',NULL),(398,398,_binary '','2023-08-05 11:33:35',NULL),(399,399,_binary '','2023-08-05 11:33:35',NULL),(400,400,_binary '','2023-08-05 11:33:35',NULL),(401,401,_binary '','2023-08-05 11:33:35',NULL),(402,402,_binary '','2023-08-05 11:33:35',NULL),(403,403,_binary '','2023-08-05 11:33:36',NULL),(404,404,_binary '','2023-08-05 11:33:36',NULL),(405,405,_binary '','2023-08-05 11:33:36',NULL),(406,406,_binary '','2023-08-05 11:33:36',NULL),(407,407,_binary '','2023-08-05 11:33:36',NULL),(408,408,_binary '','2023-08-05 11:33:36',NULL),(409,409,_binary '','2023-08-05 11:33:36',NULL),(410,410,_binary '','2023-08-05 11:33:36',NULL),(411,411,_binary '','2023-08-05 11:33:36',NULL),(412,412,_binary '','2023-08-05 11:33:36',NULL),(413,413,_binary '','2023-08-05 11:33:36',NULL),(414,414,_binary '','2023-08-05 11:33:36',NULL),(415,415,_binary '','2023-08-05 11:33:36',NULL),(416,416,_binary '','2023-08-05 11:33:36',NULL),(417,417,_binary '','2023-08-05 11:33:36',NULL),(418,418,_binary '','2023-08-05 11:33:36',NULL),(419,419,_binary '','2023-08-05 11:33:36',NULL),(420,420,_binary '','2023-08-05 11:33:36',NULL),(421,421,_binary '','2023-08-05 11:33:36',NULL),(422,422,_binary '','2023-08-05 11:33:36',NULL),(423,423,_binary '','2023-08-05 11:33:36',NULL),(424,424,_binary '','2023-08-05 11:33:36',NULL),(425,425,_binary '','2023-08-05 11:33:36',NULL),(426,426,_binary '','2023-08-05 11:33:36',NULL),(427,427,_binary '','2023-08-05 11:33:36',NULL),(428,428,_binary '','2023-08-05 11:33:36',NULL),(429,429,_binary '','2023-08-05 11:33:36',NULL),(430,430,_binary '','2023-08-05 11:33:36',NULL),(431,431,_binary '','2023-08-05 11:33:36',NULL),(432,432,_binary '','2023-08-05 11:33:36',NULL),(433,433,_binary '','2023-08-05 11:33:36',NULL),(434,434,_binary '','2023-08-05 11:33:36',NULL),(435,435,_binary '','2023-08-05 11:33:36',NULL),(436,436,_binary '','2023-08-05 11:33:36',NULL),(437,437,_binary '','2023-08-05 11:33:36',NULL),(438,438,_binary '','2023-08-05 11:33:36',NULL),(439,439,_binary '','2023-08-05 11:33:36',NULL),(440,440,_binary '','2023-08-05 11:33:36',NULL),(441,441,_binary '','2023-08-05 11:33:36',NULL),(442,442,_binary '','2023-08-05 11:33:36',NULL),(443,443,_binary '','2023-08-05 11:33:36',NULL),(444,444,_binary '','2023-08-05 11:33:36',NULL),(445,445,_binary '','2023-08-05 11:33:36',NULL),(446,446,_binary '','2023-08-05 11:33:36',NULL),(447,447,_binary '','2023-08-05 11:33:36',NULL),(448,448,_binary '','2023-08-05 11:33:36',NULL),(449,449,_binary '','2023-08-05 11:33:36',NULL),(450,450,_binary '','2023-08-05 11:33:36',NULL),(451,451,_binary '','2023-08-05 11:33:36',NULL),(452,452,_binary '','2023-08-05 11:33:36',NULL),(453,453,_binary '','2023-08-05 11:33:36',NULL),(454,454,_binary '','2023-08-05 11:33:36',NULL),(455,455,_binary '','2023-08-05 11:33:36',NULL),(456,456,_binary '','2023-08-05 11:33:36',NULL),(457,457,_binary '','2023-08-05 11:33:36',NULL),(458,458,_binary '','2023-08-05 11:33:36',NULL),(459,459,_binary '','2023-08-05 11:33:36',NULL),(460,460,_binary '','2023-08-05 11:33:36',NULL),(461,461,_binary '','2023-08-05 11:33:36',NULL),(462,462,_binary '','2023-08-05 11:33:36',NULL),(463,463,_binary '','2023-08-05 11:33:36',NULL),(464,464,_binary '','2023-08-05 11:33:36',NULL),(465,465,_binary '','2023-08-05 11:33:36',NULL),(466,466,_binary '','2023-08-05 11:33:36',NULL),(467,467,_binary '','2023-08-05 11:33:36',NULL),(468,468,_binary '','2023-08-05 11:33:36',NULL),(469,469,_binary '','2023-08-05 11:33:36',NULL),(470,470,_binary '','2023-08-05 11:33:36',NULL),(471,471,_binary '','2023-08-05 11:33:36',NULL),(472,472,_binary '','2023-08-05 11:33:36',NULL),(473,473,_binary '','2023-08-05 11:33:36',NULL),(474,474,_binary '','2023-08-05 11:33:36',NULL),(475,475,_binary '','2023-08-05 11:33:36',NULL),(476,476,_binary '','2023-08-05 11:33:36',NULL),(477,477,_binary '','2023-08-05 11:33:36',NULL),(478,478,_binary '','2023-08-05 11:33:36',NULL),(479,479,_binary '','2023-08-05 11:33:36',NULL),(480,480,_binary '','2023-08-05 11:33:36',NULL),(481,481,_binary '','2023-08-05 11:33:36',NULL),(482,482,_binary '','2023-08-05 11:33:36',NULL),(483,483,_binary '','2023-08-05 11:33:36',NULL),(484,484,_binary '','2023-08-05 11:33:36',NULL),(485,485,_binary '','2023-08-05 11:33:36',NULL),(486,486,_binary '','2023-08-05 11:33:36',NULL),(487,487,_binary '','2023-08-05 11:33:36',NULL),(488,488,_binary '','2023-08-05 11:33:36',NULL),(489,489,_binary '','2023-08-05 11:33:36',NULL),(490,490,_binary '','2023-08-05 11:33:36',NULL),(491,491,_binary '','2023-08-05 11:33:36',NULL),(492,492,_binary '','2023-08-05 11:33:36',NULL),(493,493,_binary '','2023-08-05 11:33:36',NULL),(494,494,_binary '','2023-08-05 11:33:36',NULL),(495,495,_binary '','2023-08-05 11:33:36',NULL),(496,496,_binary '','2023-08-05 11:33:36',NULL),(497,497,_binary '','2023-08-05 11:33:36',NULL),(498,498,_binary '','2023-08-05 11:33:36',NULL),(499,499,_binary '','2023-08-05 11:33:36',NULL),(500,500,_binary '','2023-08-05 11:33:36',NULL),(505,12,_binary '','2023-08-11 00:00:00','2023-08-10 19:21:00');
/*!40000 ALTER TABLE `tbb_miembro` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_miembro` AFTER INSERT ON `tbb_miembro` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_miembro', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo MIEMBRO con el ID: ', NEW.idMiembro, ' y USUARIO_ID: ', NEW.Usuario_id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_miembro_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_miembro` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_miembro` AFTER UPDATE ON `tbb_miembro` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_miembro', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un MIEMBRO con el ID: ', NEW.idMiembro, ' y USUARIO_ID: ', NEW.Usuario_id, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_miembro` AFTER DELETE ON `tbb_miembro` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_miembro', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un MIEMBRO con el ID: ', OLD.idMiembro, ' y USUARIO_ID: ', OLD.Usuario_id, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_origen`
--

DROP TABLE IF EXISTS `tbb_origen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_origen` (
  `idOrigen` int NOT NULL AUTO_INCREMENT,
  `Autor` varchar(450) NOT NULL,
  `Nombre` varchar(450) DEFAULT NULL,
  `Tipo` enum('NovelaL','NovelaW','Manga') NOT NULL,
  `idAnime` int NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idOrigen`),
  UNIQUE KEY `idOrigen_UNIQUE` (`idOrigen`),
  KEY `fk_anime_origen` (`idAnime`),
  CONSTRAINT `fk_anime_origen` FOREIGN KEY (`idAnime`) REFERENCES `tbb_anime` (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='Origen\n\nContiene:\n\nAutor (Escritor, guionista principal)\nNombre(Si el nombre cambia)\nTipo (Novela ligera, Novela web, Manga)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_origen`
--

LOCK TABLES `tbb_origen` WRITE;
/*!40000 ALTER TABLE `tbb_origen` DISABLE KEYS */;
INSERT INTO `tbb_origen` VALUES (1,'asuka','rei','NovelaL',1,_binary '','2023-07-23 03:43:27','2023-08-10 20:40:52'),(2,'Eiichirō Oda','ワンピース','Manga',2,_binary '','2023-07-23 03:52:54',NULL),(3,'Gege Akutami','呪術廻戦','Manga',4,_binary '','2023-07-23 03:54:34',NULL),(4,'Koyoharu Gotōge','鬼滅の刃','Manga',5,_binary '','2023-07-23 03:55:34',NULL),(16,'eli','kahabell','Manga',16,_binary '','2023-08-11 00:00:00','2023-08-11 00:00:00');
/*!40000 ALTER TABLE `tbb_origen` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_origen` AFTER INSERT ON `tbb_origen` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_origen', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo ORIGEN con el ID: ', NEW.idOrigen, ', AUTOR: ', NEW.Autor, ', NOMBRE: ', NEW.Nombre, ', TIPO: ', NEW.Tipo, ' y ANIME_ID: ', NEW.idAnime), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_origen_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_origen` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_origen` AFTER UPDATE ON `tbb_origen` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_origen', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un ORIGEN con el ID: ', NEW.idOrigen, ', AUTOR: ', NEW.Autor, ', NOMBRE: ', NEW.Nombre, ', TIPO: ', NEW.Tipo, ' y ANIME_ID: ', NEW.idAnime, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_origen` AFTER DELETE ON `tbb_origen` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_origen', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un ORIGEN con el ID: ', OLD.idOrigen, ', AUTOR: ', OLD.Autor, ', NOMBRE: ', OLD.Nombre, ', TIPO: ', OLD.Tipo, ' y ANIME_ID: ', OLD.idAnime, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_temporada`
--

DROP TABLE IF EXISTS `tbb_temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_temporada` (
  `idTemporada` int NOT NULL AUTO_INCREMENT,
  `Numero` int NOT NULL,
  `Fecha_Emision` date NOT NULL,
  `Fecha_Termino` date DEFAULT NULL,
  `Sinopsis` varchar(100) NOT NULL,
  `Rating_total` decimal(5,2) DEFAULT NULL,
  `idAnime` int NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idTemporada`),
  UNIQUE KEY `idTemporada_UNIQUE` (`idTemporada`),
  KEY `fk_anime_temporada` (`idAnime`),
  CONSTRAINT `fk_anime_temporada` FOREIGN KEY (`idAnime`) REFERENCES `tbb_anime` (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_temporada`
--

LOCK TABLES `tbb_temporada` WRITE;
/*!40000 ALTER TABLE `tbb_temporada` DISABLE KEYS */;
INSERT INTO `tbb_temporada` VALUES (5,1,'2020-08-11','2023-08-11','la muerte',1.00,1,_binary '','2023-08-11 00:00:00','2023-08-11 00:00:00');
/*!40000 ALTER TABLE `tbb_temporada` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_temporada` AFTER INSERT ON `tbb_temporada` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_temporada', 'Create', CONCAT('El usuario: ', USER(), ' ha creado una nueva TEMPORADA con el ID: ', NEW.idTemporada, ', NÚMERO: ', NEW.Numero, ', FECHA DE EMISIÓN: ', NEW.Fecha_Emision), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_temporada_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_temporada` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_temporada` AFTER UPDATE ON `tbb_temporada` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_temporada', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado una TEMPORADA con el ID: ', NEW.idTemporada, ', NÚMERO: ', NEW.Numero, ', FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_temporada` AFTER DELETE ON `tbb_temporada` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_temporada', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado una TEMPORADA con el ID: ', OLD.idTemporada, ', NÚMERO: ', OLD.Numero, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_usuario`
--

DROP TABLE IF EXISTS `tbb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contrasenia` varchar(45) NOT NULL,
  `Nickname` varchar(45) NOT NULL,
  `Genero` enum('Hombre','Mujer') NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuario`
--

LOCK TABLES `tbb_usuario` WRITE;
/*!40000 ALTER TABLE `tbb_usuario` DISABLE KEYS */;
INSERT INTO `tbb_usuario` VALUES (1,'Timoteo Gutiérrez González','Timoteo@gmail.com','19605593','Timoteo_24','Hombre','1990-05-02',_binary '','2023-08-05 11:33:33',NULL),(2,'Neftalí Timoteo Rodríguez Ávila','Neftalí Timoteo@hotmail.com','08734340','Neftalí Timoteo_25','Hombre','2000-01-28',_binary '','2023-08-05 11:33:33',NULL),(3,'Jazmín Ortega Flores','Jazmín@live.com','72833892','Jazmín_60','Mujer','1983-07-14',_binary '','2023-08-05 11:33:33',NULL),(4,'Renata Muñoz Padilla','Renata@outlook.com','38936566','Renata_10','Mujer','1981-09-22',_binary '','2023-08-05 11:33:33',NULL),(5,'Lorena Téllez Cortés','Lorena@hotmail.com','82780552','Lorena_3','Mujer','1986-10-20',_binary '','2023-08-05 11:33:33',NULL),(6,'Karen Ursula Rivera Vargas','Karen Ursula@hotmail.com','36018847','Karen Ursula_49','Mujer','1987-04-16',_binary '','2023-08-05 11:33:33',NULL),(7,'Wendy Delgado Pérez','Wendy@gmail.com','62625849','Wendy_17','Mujer','1971-06-11',_binary '','2023-08-05 11:33:33',NULL),(8,'Laura Fernanda Rodríguez Maldonado','Laura Fernanda@hotmail.com','80400272','Laura Fernanda_64','Mujer','1999-12-23',_binary '','2023-08-05 11:33:33',NULL),(9,'Xavier Muñoz Peña','Xavier@live.com','89990204','Xavier_90','Hombre','1974-06-16',_binary '','2023-08-05 11:33:33',NULL),(10,'Edgar Espinoza Vega','Edgar@hotmail.com','66237076','Edgar_28','Hombre','1965-09-15',_binary '','2023-08-05 11:33:33',NULL),(11,'Tanya Alondra Ximénez Gómez','Tanya Alondra@live.com','40844818','Tanya Alondra_67','Mujer','1965-12-28',_binary '','2023-08-05 11:33:33',NULL),(12,'Esther Ramírez Valdéz','Esther@hotmail.com','99997976','Esther_5','Mujer','2005-02-26',_binary '','2023-08-05 11:33:33',NULL),(13,'Alejandro González Vargas','Alejandro@gmail.com','85315435','Alejandro_17','Hombre','1986-05-20',_binary '','2023-08-05 11:33:33',NULL),(14,'Quetzálcoatl Carlos Vargas Castro','Quetzálcoatl Carlos@live.com','21094205','Quetzálcoatl Carlos_83','Hombre','1993-10-13',_binary '','2023-08-05 11:33:33',NULL),(15,'Carla Nava Morales','Carla@live.com','14942716','Carla_25','Mujer','1990-01-24',_binary '','2023-08-05 11:33:33',NULL),(16,'Barbara Tamara Morales Miranda','Barbara Tamara@hotmail.com','36023824','Barbara Tamara_56','Mujer','1997-03-28',_binary '','2023-08-05 11:33:33',NULL),(17,'Dylan Mendoza Pérez','Dylan@gmail.com','85075337','Dylan_99','Hombre','1991-01-23',_binary '','2023-08-05 11:33:33',NULL),(18,'Nadia Miranda Vega','Nadia@live.com','92282971','Nadia_46','Mujer','1979-07-02',_binary '','2023-08-05 11:33:33',NULL),(19,'Ramón Octavio Ortíz Sánchez','Ramón Octavio@gmail.com','30167887','Ramón Octavio_21','Hombre','1966-07-31',_binary '','2023-08-05 11:33:33',NULL),(20,'Jaime Valdéz Guzmán','Jaime@gmail.com','50807670','Jaime_94','Hombre','1997-04-25',_binary '','2023-08-05 11:33:33',NULL),(21,'Timoteo Rodríguez Luna','Timoteo@gmail.com','87318871','Timoteo_10','Hombre','1985-02-09',_binary '','2023-08-05 11:33:33',NULL),(22,'Edgar Valencia Juárez','Edgar@outlook.com','78910598','Edgar_1','Hombre','1985-04-11',_binary '','2023-08-05 11:33:33',NULL),(23,'Francisco Juárez Morales','Francisco@gmail.com','64340146','Francisco_81','Hombre','2003-02-18',_binary '','2023-08-05 11:33:33',NULL),(24,'Ernesto Vargas Ortega','Ernesto@outlook.com','77166564','Ernesto_67','Hombre','1980-05-15',_binary '','2023-08-05 11:33:33',NULL),(25,'Paola Rosa Martínez Santiago','Paola Rosa@hotmail.com','71408195','Paola Rosa_25','Mujer','1963-10-21',_binary '','2023-08-05 11:33:33',NULL),(26,'Octavio Urbina Yañez','Octavio@hotmail.com','59904890','Octavio_77','Hombre','1988-05-14',_binary '','2023-08-05 11:33:33',NULL),(27,'Rosa Alejandra Fuentes Huerta','Rosa Alejandra@live.com','98701797','Rosa Alejandra_64','Mujer','1995-12-17',_binary '','2023-08-05 11:33:33',NULL),(28,'Alejandra Nuñez Vázquez','Alejandra@gmail.com','67620401','Alejandra_92','Mujer','1983-05-02',_binary '','2023-08-05 11:33:33',NULL),(29,'Alejandro Ramírez Ibarra','Alejandro@live.com','85398460','Alejandro_60','Hombre','1979-05-04',_binary '','2023-08-05 11:33:33',NULL),(30,'Francisco Nuñez Rivera','Francisco@hotmail.com','45277720','Francisco_43','Hombre','1984-12-27',_binary '','2023-08-05 11:33:33',NULL),(31,'Carolina de la Cruz Luna','Carolina@outlook.com','73174115','Carolina_83','Mujer','1967-01-22',_binary '','2023-08-05 11:33:33',NULL),(32,'Helena Quetzálli Peña Nava','Helena Quetzálli@gmail.com','76035702','Helena Quetzálli_54','Mujer','1999-02-01',_binary '','2023-08-05 11:33:33',NULL),(33,'Ivana Ramírez Téllez','Ivana@outlook.com','59029212','Ivana_35','Mujer','1988-12-05',_binary '','2023-08-05 11:33:33',NULL),(34,'Valentín Quetzálcoatl Maldonado Herrera','Valentín Quetzálcoatl@live.com','49776964','Valentín Quetzálcoatl_47','Hombre','1979-02-23',_binary '','2023-08-05 11:33:33',NULL),(35,'Xavier Yañez Sandoval','Xavier@gmail.com','00827756','Xavier_82','Hombre','1986-12-07',_binary '','2023-08-05 11:33:33',NULL),(36,'Patricia Mendoza Guzmán','Patricia@outlook.com','22329362','Patricia_66','Mujer','1975-03-30',_binary '','2023-08-05 11:33:33',NULL),(37,'Hugo Rivera Flores','Hugo@gmail.com','69780767','Hugo_29','Hombre','1969-05-14',_binary '','2023-08-05 11:33:33',NULL),(38,'Héctor Karlo Díaz Sánchez','Héctor Karlo@outlook.com','60480572','Héctor Karlo_66','Hombre','1990-12-04',_binary '','2023-08-05 11:33:33',NULL),(39,'Josefa Gómez Ortega','Josefa@gmail.com','85109619','Josefa_6','Mujer','1970-07-02',_binary '','2023-08-05 11:33:33',NULL),(40,'Karla Helena Vega Guerrero','Karla Helena@live.com','17525898','Karla Helena_28','Mujer','1987-05-20',_binary '','2023-08-05 11:33:33',NULL),(41,'Barbara Cortés Ramos','Barbara@outlook.com','68133753','Barbara_96','Mujer','1981-07-23',_binary '','2023-08-05 11:33:33',NULL),(42,'Carla Rosa Juárez Herrera','Carla Rosa@gmail.com','05833590','Carla Rosa_40','Mujer','1976-04-13',_binary '','2023-08-05 11:33:33',NULL),(43,'Renata Ibarra Yañez','Renata@live.com','97761406','Renata_89','Mujer','1979-12-01',_binary '','2023-08-05 11:33:33',NULL),(44,'Gustavo Lorenzo Yañez Guzmán','Gustavo Lorenzo@live.com','71323951','Gustavo Lorenzo_10','Hombre','1968-12-18',_binary '','2023-08-05 11:33:33',NULL),(45,'Valentina López García','Valentina@live.com','85911080','Valentina_1','Mujer','1989-04-13',_binary '','2023-08-05 11:33:33',NULL),(46,'Ignacio Germán Sampayo Nuñez','Ignacio Germán@hotmail.com','22662114','Ignacio Germán_70','Hombre','1988-10-21',_binary '','2023-08-05 11:33:33',NULL),(47,'Héctor Hugo Bautista Sampayo','Héctor Hugo@live.com','86642795','Héctor Hugo_46','Hombre','1997-04-01',_binary '','2023-08-05 11:33:33',NULL),(48,'Josefa Camacho Padilla','Josefa@outlook.com','66412983','Josefa_63','Mujer','1977-12-24',_binary '','2023-08-05 11:33:33',NULL),(49,'Hugo Francisco Kuno Soto','Hugo Francisco@gmail.com','62278244','Hugo Francisco_73','Hombre','1964-06-20',_binary '','2023-08-05 11:33:33',NULL),(50,'Josafat Contreras Ríos','Josafat@live.com','16000016','Josafat_64','Hombre','1993-03-26',_binary '','2023-08-05 11:33:33',NULL),(51,'Helena Estrada Morales','Helena@hotmail.com','79566434','Helena_9','Mujer','1976-11-10',_binary '','2023-08-05 11:33:33',NULL),(52,'Salomé Rivera Díaz','Salomé@live.com','54409440','Salomé_83','Mujer','1996-12-30',_binary '','2023-08-05 11:33:33',NULL),(53,'Tamara Ríos López','Tamara@outlook.com','61871676','Tamara_88','Mujer','1971-01-25',_binary '','2023-08-05 11:33:33',NULL),(54,'Ivana Nadia Nuñez Ortega','Ivana Nadia@hotmail.com','80553017','Ivana Nadia_45','Mujer','1969-01-14',_binary '','2023-08-05 11:33:33',NULL),(55,'Zara Esther Valdéz Rosas','Zara Esther@hotmail.com','57291923','Zara Esther_73','Mujer','1971-01-23',_binary '','2023-08-05 11:33:33',NULL),(56,'María Jiménez Pérez','María@gmail.com','79383049','María_46','Mujer','1983-03-28',_binary '','2023-08-05 11:33:33',NULL),(57,'Josafat Peña Ibarra','Josafat@hotmail.com','16809622','Josafat_43','Hombre','1980-12-28',_binary '','2023-08-05 11:33:34',NULL),(58,'Neftalí Bernardo Maldonado Ximénez','Neftalí Bernardo@outlook.com','30361722','Neftalí Bernardo_23','Hombre','1980-05-25',_binary '','2023-08-05 11:33:34',NULL),(59,'Héctor Rosales Rosales','Héctor@live.com','44722623','Héctor_91','Hombre','2005-02-16',_binary '','2023-08-05 11:33:34',NULL),(60,'Víctor Pedro Contreras Sampayo','Víctor Pedro@gmail.com','20237922','Víctor Pedro_36','Hombre','1999-02-17',_binary '','2023-08-05 11:33:34',NULL),(61,'Salomé Gabriela García Wurtz','Salomé Gabriela@outlook.com','13041319','Salomé Gabriela_83','Mujer','1968-12-08',_binary '','2023-08-05 11:33:34',NULL),(62,'Dylan Márquez Vázquez','Dylan@outlook.com','66189049','Dylan_66','Hombre','1984-08-25',_binary '','2023-08-05 11:33:34',NULL),(63,'Jaime Márquez Nuñez','Jaime@live.com','73579328','Jaime_43','Hombre','1988-04-28',_binary '','2023-08-05 11:33:34',NULL),(64,'Octavio Jaime Torres Guzmán','Octavio Jaime@hotmail.com','07409768','Octavio Jaime_43','Hombre','1989-06-20',_binary '','2023-08-05 11:33:34',NULL),(65,'Neftalí Sánchez Sampayo','Neftalí@live.com','80887473','Neftalí_21','Hombre','1991-06-06',_binary '','2023-08-05 11:33:34',NULL),(66,'Carla Díaz Muñoz','Carla@hotmail.com','98130408','Carla_78','Mujer','1975-09-22',_binary '','2023-08-05 11:33:34',NULL),(67,'Luis Briones Delgado','Luis@hotmail.com','77550378','Luis_86','Hombre','2000-06-26',_binary '','2023-08-05 11:33:34',NULL),(68,'Paola Renata Santiago Velazquez','Paola Renata@live.com','35658539','Paola Renata_73','Mujer','2003-02-10',_binary '','2023-08-05 11:33:34',NULL),(69,'Gonzálo Rosas Miranda','Gonzálo@gmail.com','63622318','Gonzálo_19','Hombre','1985-08-17',_binary '','2023-08-05 11:33:34',NULL),(70,'Gonzálo Torres Zapata','Gonzálo@gmail.com','17291615','Gonzálo_85','Hombre','1975-08-28',_binary '','2023-08-05 11:33:34',NULL),(71,'Saúl Reyes Zapata','Saúl@gmail.com','78703567','Saúl_91','Hombre','1999-05-30',_binary '','2023-08-05 11:33:34',NULL),(72,'Josefa Valencia Estrada','Josefa@outlook.com','66160152','Josefa_59','Mujer','1991-06-21',_binary '','2023-08-05 11:33:34',NULL),(73,'Isabel Carla Rosales Valdéz','Isabel Carla@outlook.com','76848662','Isabel Carla_67','Mujer','1974-09-26',_binary '','2023-08-05 11:33:34',NULL),(74,'Olga Magdalena Velazquez Ríos','Olga Magdalena@live.com','93963825','Olga Magdalena_37','Mujer','1972-12-13',_binary '','2023-08-05 11:33:34',NULL),(75,'Josafat Sampayo Sandoval','Josafat@outlook.com','54868133','Josafat_6','Hombre','1999-05-07',_binary '','2023-08-05 11:33:34',NULL),(76,'Quetzálcoatl Cervantes Ramos','Quetzálcoatl@gmail.com','40136851','Quetzálcoatl_35','Hombre','2003-01-06',_binary '','2023-08-05 11:33:34',NULL),(77,'Barbara Tamara Navarro Aguilar','Barbara Tamara@outlook.com','37552510','Barbara Tamara_24','Mujer','1991-07-29',_binary '','2023-08-05 11:33:34',NULL),(78,'Alejandra Carolina Quiróz Kuno','Alejandra Carolina@gmail.com','05847355','Alejandra Carolina_2','Mujer','1978-07-24',_binary '','2023-08-05 11:33:34',NULL),(79,'Salomé Alondra Padilla Trejo','Salomé Alondra@hotmail.com','43211095','Salomé Alondra_50','Mujer','1965-06-29',_binary '','2023-08-05 11:33:34',NULL),(80,'Zacek Benito Morales Vargas','Zacek Benito@gmail.com','41335733','Zacek Benito_80','Hombre','1996-04-20',_binary '','2023-08-05 11:33:34',NULL),(81,'Quetzálli Bautista Valdéz','Quetzálli@gmail.com','61061715','Quetzálli_20','Mujer','1969-06-07',_binary '','2023-08-05 11:33:34',NULL),(82,'William Guzmán Kuno','William@live.com','27754722','William_35','Hombre','1971-10-14',_binary '','2023-08-05 11:33:34',NULL),(83,'Francisco Martínez Contreras','Francisco@hotmail.com','41702193','Francisco_93','Hombre','1964-07-08',_binary '','2023-08-05 11:33:34',NULL),(84,'Karen de la Cruz Kuno','Karen@live.com','26691681','Karen_79','Mujer','1983-03-25',_binary '','2023-08-05 11:33:34',NULL),(85,'Zacek Gonzálo Vargas Pérez','Zacek Gonzálo@live.com','44942904','Zacek Gonzálo_33','Hombre','2002-02-27',_binary '','2023-08-05 11:33:34',NULL),(86,'Tanya Quetzálli Campos Rodríguez','Tanya Quetzálli@live.com','02230342','Tanya Quetzálli_64','Mujer','2000-05-26',_binary '','2023-08-05 11:33:34',NULL),(87,'Isabel Muñoz Santos','Isabel@hotmail.com','51944752','Isabel_90','Mujer','1994-03-10',_binary '','2023-08-05 11:33:34',NULL),(88,'Antonio Dylan Gómez Santos','Antonio Dylan@outlook.com','83230284','Antonio Dylan_2','Hombre','1990-12-07',_binary '','2023-08-05 11:33:34',NULL),(89,'Carlos Fernando Ortíz Luna','Carlos Fernando@hotmail.com','46171701','Carlos Fernando_34','Hombre','1986-12-08',_binary '','2023-08-05 11:33:34',NULL),(90,'Sandra Daniela Briones Fuentes','Sandra Daniela@gmail.com','28524411','Sandra Daniela_49','Mujer','1979-09-20',_binary '','2023-08-05 11:33:34',NULL),(91,'Sofía Ursula González Peña','Sofía Ursula@hotmail.com','02850583','Sofía Ursula_73','Mujer','1978-11-07',_binary '','2023-08-05 11:33:34',NULL),(92,'Salomé Muñoz Contreras','Salomé@outlook.com','51315504','Salomé_22','Mujer','1977-08-13',_binary '','2023-08-05 11:33:34',NULL),(93,'Fernando Gayosso Espinoza','Fernando@gmail.com','28526308','Fernando_12','Hombre','1978-02-25',_binary '','2023-08-05 11:33:34',NULL),(94,'Sandra Muñoz Moreno','Sandra@outlook.com','34480551','Sandra_15','Mujer','2001-01-06',_binary '','2023-08-05 11:33:34',NULL),(95,'Natalia Gayosso Peña','Natalia@outlook.com','52250872','Natalia_82','Mujer','1968-10-22',_binary '','2023-08-05 11:33:34',NULL),(96,'Fernanda Cervantes Ramírez','Fernanda@hotmail.com','56382847','Fernanda_77','Mujer','1980-12-20',_binary '','2023-08-05 11:33:34',NULL),(97,'Ivana Rojas Velazquez','Ivana@gmail.com','03396362','Ivana_53','Mujer','1973-09-05',_binary '','2023-08-05 11:33:34',NULL),(98,'Esther Peña Acosta','Esther@live.com','91720428','Esther_81','Mujer','1983-04-30',_binary '','2023-08-05 11:33:34',NULL),(99,'Baltazar Santiago Ríos','Baltazar@hotmail.com','98335846','Baltazar_94','Hombre','1994-12-21',_binary '','2023-08-05 11:33:34',NULL),(100,'Sofía Méndez Gutiérrez','Sofía@hotmail.com','21805506','Sofía_12','Mujer','2005-05-04',_binary '','2023-08-05 11:33:34',NULL),(101,'Antonio de la Cruz Guzmán','Antonio@live.com','38911279','Antonio_60','Hombre','1983-10-05',_binary '','2023-08-05 11:33:34',NULL),(102,'Sofía Velazquez Rosales','Sofía@live.com','02111455','Sofía_98','Mujer','2001-06-18',_binary '','2023-08-05 11:33:34',NULL),(103,'Ofelia Téllez Pacheco','Ofelia@outlook.com','41115258','Ofelia_75','Mujer','2000-08-16',_binary '','2023-08-05 11:33:34',NULL),(104,'William Uziel Ibarra Vargas','William Uziel@hotmail.com','67546794','William Uziel_12','Hombre','1984-10-11',_binary '','2023-08-05 11:33:34',NULL),(105,'Jaime Fernando Hernández Cruz','Jaime Fernando@live.com','08062239','Jaime Fernando_31','Hombre','1998-08-15',_binary '','2023-08-05 11:33:34',NULL),(106,'Uriel Álvarez Kuno','Uriel@hotmail.com','17009795','Uriel_31','Hombre','1996-07-09',_binary '','2023-08-05 11:33:34',NULL),(107,'Marco Quiróz Navarro','Marco@live.com','29186843','Marco_77','Hombre','1987-04-26',_binary '','2023-08-05 11:33:34',NULL),(108,'Ignacio Martínez Morales','Ignacio@outlook.com','28511297','Ignacio_45','Hombre','2002-08-08',_binary '','2023-08-05 11:33:34',NULL),(109,'Ernesto Méndez Campos','Ernesto@live.com','35473378','Ernesto_88','Hombre','2000-06-28',_binary '','2023-08-05 11:33:34',NULL),(110,'Raúl Alejandro Márquez Sampayo','Raúl Alejandro@hotmail.com','09567818','Raúl Alejandro_62','Hombre','1965-07-29',_binary '','2023-08-05 11:33:34',NULL),(111,'Antonio Trejo Navarro','Antonio@hotmail.com','74299970','Antonio_3','Hombre','1997-12-14',_binary '','2023-08-05 11:33:34',NULL),(112,'Gustavo Espinoza Vázquez','Gustavo@hotmail.com','48935918','Gustavo_7','Hombre','2003-05-03',_binary '','2023-08-05 11:33:34',NULL),(113,'Baltazar Quetzálcoatl Domínguez Zapata','Baltazar Quetzálcoatl@live.com','56809446','Baltazar Quetzálcoatl_81','Hombre','1970-07-31',_binary '','2023-08-05 11:33:34',NULL),(114,'Laura Ofelia Velazquez Flores','Laura Ofelia@live.com','29829167','Laura Ofelia_85','Mujer','1997-07-13',_binary '','2023-08-05 11:33:34',NULL),(115,'Karlo Gerardo Carrillo Moreno','Karlo Gerardo@hotmail.com','02917338','Karlo Gerardo_51','Hombre','2004-11-01',_binary '','2023-08-05 11:33:34',NULL),(116,'William Rojas Gómez','William@live.com','66021942','William_97','Hombre','2003-01-19',_binary '','2023-08-05 11:33:34',NULL),(117,'Ernesto Huerta Fuentes','Ernesto@outlook.com','94487358','Ernesto_94','Hombre','1984-09-10',_binary '','2023-08-05 11:33:34',NULL),(118,'Galilea Esther Ramírez Álvarez','Galilea Esther@hotmail.com','05591923','Galilea Esther_11','Mujer','1964-09-10',_binary '','2023-08-05 11:33:34',NULL),(119,'Josafat Castillo Nuñez','Josafat@live.com','63838448','Josafat_18','Hombre','2002-11-10',_binary '','2023-08-05 11:33:34',NULL),(120,'Alejandro Gustavo Jiménez Acosta','Alejandro Gustavo@outlook.com','11513016','Alejandro Gustavo_84','Hombre','1994-12-07',_binary '','2023-08-05 11:33:34',NULL),(121,'Tanya Trejo Yañez','Tanya@outlook.com','73244737','Tanya_89','Mujer','1990-03-01',_binary '','2023-08-05 11:33:34',NULL),(122,'Dylan Daniel Medina Maldonado','Dylan Daniel@live.com','60173363','Dylan Daniel_8','Hombre','1989-01-08',_binary '','2023-08-05 11:33:34',NULL),(123,'Edgar Iván de la Cruz Guerrero','Edgar Iván@outlook.com','60210813','Edgar Iván_32','Hombre','1966-02-27',_binary '','2023-08-05 11:33:34',NULL),(124,'Valentín Moreno Kuno','Valentín@outlook.com','80686618','Valentín_48','Hombre','1997-05-18',_binary '','2023-08-05 11:33:34',NULL),(125,'Ramón Ernesto Pacheco Chávez','Ramón Ernesto@outlook.com','37427095','Ramón Ernesto_22','Hombre','1994-11-23',_binary '','2023-08-05 11:33:34',NULL),(126,'Quetzálli Campos Luna','Quetzálli@outlook.com','76864461','Quetzálli_55','Mujer','1997-09-12',_binary '','2023-08-05 11:33:34',NULL),(127,'Xochítl Elena Romero Camacho','Xochítl Elena@outlook.com','45114547','Xochítl Elena_10','Mujer','1974-07-10',_binary '','2023-08-05 11:33:34',NULL),(128,'Josafat Edgar Ávila Wurtz','Josafat Edgar@live.com','85080434','Josafat Edgar_59','Hombre','1971-12-12',_binary '','2023-08-05 11:33:34',NULL),(129,'Hugo Karim Flores Santos','Hugo Karim@outlook.com','53789377','Hugo Karim_66','Hombre','1988-07-15',_binary '','2023-08-05 11:33:34',NULL),(130,'Carla Hanna Domínguez Rivera','Carla Hanna@live.com','68128348','Carla Hanna_62','Mujer','1974-06-28',_binary '','2023-08-05 11:33:34',NULL),(131,'Gerardo Octavio Rodríguez Rojas','Gerardo Octavio@live.com','50618494','Gerardo Octavio_46','Hombre','1979-01-11',_binary '','2023-08-05 11:33:34',NULL),(132,'Renata Téllez Rojas','Renata@gmail.com','76152663','Renata_92','Mujer','1987-09-16',_binary '','2023-08-05 11:33:34',NULL),(133,'Alejandro Iván Camacho Luna','Alejandro Iván@outlook.com','81471840','Alejandro Iván_29','Hombre','1992-01-11',_binary '','2023-08-05 11:33:34',NULL),(134,'Galilea Alejandra Aguilar Ramírez','Galilea Alejandra@hotmail.com','51279505','Galilea Alejandra_4','Mujer','1986-02-01',_binary '','2023-08-05 11:33:34',NULL),(135,'Antonio Salvador Rojas Ávila','Antonio Salvador@live.com','13155194','Antonio Salvador_41','Hombre','1978-07-23',_binary '','2023-08-05 11:33:34',NULL),(136,'Josafat Pacheco Soto','Josafat@outlook.com','55300034','Josafat_97','Hombre','1965-02-13',_binary '','2023-08-05 11:33:34',NULL),(137,'Ernesto Ríos Alvarado','Ernesto@gmail.com','53049585','Ernesto_60','Hombre','1974-04-14',_binary '','2023-08-05 11:33:34',NULL),(138,'Zacek Wurtz Rodríguez','Zacek@live.com','33434081','Zacek_88','Hombre','1974-12-30',_binary '','2023-08-05 11:33:34',NULL),(139,'Salvador Rojas Wurtz','Salvador@outlook.com','28469708','Salvador_27','Hombre','2002-11-16',_binary '','2023-08-05 11:33:34',NULL),(140,'Magdalena Velazquez Peña','Magdalena@live.com','17958694','Magdalena_54','Mujer','1988-03-02',_binary '','2023-08-05 11:33:34',NULL),(141,'Lorenzo Miranda Fuentes','Lorenzo@outlook.com','44938440','Lorenzo_15','Hombre','1999-09-12',_binary '','2023-08-05 11:33:34',NULL),(142,'Héctor Francisco Paredes Romero','Héctor Francisco@gmail.com','05591754','Héctor Francisco_3','Hombre','1982-11-13',_binary '','2023-08-05 11:33:34',NULL),(143,'Josafat Jaime Delgado Cortés','Josafat Jaime@gmail.com','86945278','Josafat Jaime_6','Hombre','2001-03-22',_binary '','2023-08-05 11:33:34',NULL),(144,'Yara Luna Nuñez','Yara@outlook.com','08396616','Yara_4','Mujer','1963-12-17',_binary '','2023-08-05 11:33:34',NULL),(145,'Karla Ofelia Ortíz Rojas','Karla Ofelia@outlook.com','89902230','Karla Ofelia_22','Mujer','1975-06-02',_binary '','2023-08-05 11:33:34',NULL),(146,'Lorena Salomé Ximénez Herrera','Lorena Salomé@live.com','06997959','Lorena Salomé_88','Mujer','2002-07-16',_binary '','2023-08-05 11:33:34',NULL),(147,'Valentín Hugo Salazar Torres','Valentín Hugo@gmail.com','49239708','Valentín Hugo_75','Hombre','1975-04-13',_binary '','2023-08-05 11:33:34',NULL),(148,'Germán Navarro Wurtz','Germán@outlook.com','97961737','Germán_90','Hombre','1980-10-10',_binary '','2023-08-05 11:33:34',NULL),(149,'Lorenzo González Bautista','Lorenzo@outlook.com','85266997','Lorenzo_4','Hombre','1998-08-25',_binary '','2023-08-05 11:33:34',NULL),(150,'Timoteo Lara Morales','Timoteo@hotmail.com','11132398','Timoteo_17','Hombre','1978-05-13',_binary '','2023-08-05 11:33:34',NULL),(151,'Salomé Márquez Vázquez','Salomé@outlook.com','91943104','Salomé_64','Mujer','1981-05-03',_binary '','2023-08-05 11:33:34',NULL),(152,'Fernanda Acosta Lara','Fernanda@hotmail.com','92455910','Fernanda_53','Mujer','1994-10-16',_binary '','2023-08-05 11:33:34',NULL),(153,'Valentín Lorenzo Ruíz Reyes','Valentín Lorenzo@hotmail.com','86812832','Valentín Lorenzo_50','Hombre','1964-07-08',_binary '','2023-08-05 11:33:34',NULL),(154,'Fatima Mendoza Domínguez','Fatima@gmail.com','10808044','Fatima_97','Mujer','1990-10-16',_binary '','2023-08-05 11:33:34',NULL),(155,'Daniel Tadeo Santos Moreno','Daniel Tadeo@hotmail.com','74811267','Daniel Tadeo_59','Hombre','1986-06-01',_binary '','2023-08-05 11:33:34',NULL),(156,'Tadeo Sánchez Ávila','Tadeo@hotmail.com','94545279','Tadeo_44','Hombre','1992-03-16',_binary '','2023-08-05 11:33:34',NULL),(157,'Alondra Galilea Paredes Mendoza','Alondra Galilea@hotmail.com','18987961','Alondra Galilea_40','Mujer','2004-07-05',_binary '','2023-08-05 11:33:34',NULL),(158,'Gabriela María Hernández Téllez','Gabriela María@hotmail.com','97268063','Gabriela María_8','Mujer','1989-05-20',_binary '','2023-08-05 11:33:34',NULL),(159,'Lorena Gabriela Medina Morales','Lorena Gabriela@gmail.com','48885074','Lorena Gabriela_99','Mujer','1975-12-12',_binary '','2023-08-05 11:33:34',NULL),(160,'Gerardo Estrada García','Gerardo@gmail.com','96313409','Gerardo_98','Hombre','1986-11-16',_binary '','2023-08-05 11:33:34',NULL),(161,'Valeria Barbara Wurtz Ortíz','Valeria Barbara@gmail.com','31991940','Valeria Barbara_45','Mujer','1969-03-13',_binary '','2023-08-05 11:33:34',NULL),(162,'Xochítl Karla Mejía Ríos','Xochítl Karla@gmail.com','16611127','Xochítl Karla_23','Mujer','2000-01-14',_binary '','2023-08-05 11:33:34',NULL),(163,'Daniela Valentina Guzmán Padilla','Daniela Valentina@outlook.com','59211452','Daniela Valentina_86','Mujer','2003-05-02',_binary '','2023-08-05 11:33:34',NULL),(164,'Sofía Josefa Moreno Velazquez','Sofía Josefa@outlook.com','52585095','Sofía Josefa_99','Mujer','1993-04-30',_binary '','2023-08-05 11:33:34',NULL),(165,'Pablo León Briones','Pablo@hotmail.com','45063568','Pablo_30','Hombre','1980-04-21',_binary '','2023-08-05 11:33:34',NULL),(166,'Jaime Baltazar Pérez Castro','Jaime Baltazar@hotmail.com','60530361','Jaime Baltazar_11','Hombre','1992-11-19',_binary '','2023-08-05 11:33:34',NULL),(167,'Magdalena Moreno Carrillo','Magdalena@hotmail.com','68317036','Magdalena_15','Mujer','1963-12-30',_binary '','2023-08-05 11:33:35',NULL),(168,'Wendy Ávila Jiménez','Wendy@outlook.com','44080887','Wendy_74','Mujer','1981-05-19',_binary '','2023-08-05 11:33:35',NULL),(169,'Paola Castillo Acosta','Paola@outlook.com','53185259','Paola_48','Mujer','1965-08-05',_binary '','2023-08-05 11:33:35',NULL),(170,'Barbara Wurtz Alvarado','Barbara@hotmail.com','71324341','Barbara_94','Mujer','1983-12-07',_binary '','2023-08-05 11:33:35',NULL),(171,'Baltazar Vargas Yañez','Baltazar@hotmail.com','21112997','Baltazar_61','Hombre','2004-03-22',_binary '','2023-08-05 11:33:35',NULL),(172,'Berenice Ortíz Nuñez','Berenice@live.com','76971291','Berenice_53','Mujer','1987-05-29',_binary '','2023-08-05 11:33:35',NULL),(173,'Karlo Pedro Maldonado Valencia','Karlo Pedro@gmail.com','92449232','Karlo Pedro_55','Hombre','1965-11-03',_binary '','2023-08-05 11:33:35',NULL),(174,'Renata de la Cruz García','Renata@hotmail.com','03583242','Renata_91','Mujer','2002-06-20',_binary '','2023-08-05 11:33:35',NULL),(175,'Baltazar Delgado Díaz','Baltazar@live.com','77408081','Baltazar_12','Hombre','1968-05-09',_binary '','2023-08-05 11:33:35',NULL),(176,'Magdalena Yañez Valdéz','Magdalena@outlook.com','89226395','Magdalena_5','Mujer','2002-10-14',_binary '','2023-08-05 11:33:35',NULL),(177,'Pablo Aguilar Acosta','Pablo@outlook.com','97761412','Pablo_46','Hombre','1989-04-19',_binary '','2023-08-05 11:33:35',NULL),(178,'Elena Moreno Silva','Elena@outlook.com','05336173','Elena_91','Mujer','1989-02-11',_binary '','2023-08-05 11:33:35',NULL),(179,'Jaime Héctor Ríos Campos','Jaime Héctor@gmail.com','63760374','Jaime Héctor_27','Hombre','1969-01-17',_binary '','2023-08-05 11:33:35',NULL),(180,'Elena Xochítl Trejo Trejo','Elena Xochítl@live.com','48938062','Elena Xochítl_1','Mujer','1979-01-11',_binary '','2023-08-05 11:33:35',NULL),(181,'Barbara Acosta Santiago','Barbara@outlook.com','70951128','Barbara_78','Mujer','1973-08-09',_binary '','2023-08-05 11:33:35',NULL),(182,'William Sampayo Guzmán','William@gmail.com','18040962','William_73','Hombre','1985-01-12',_binary '','2023-08-05 11:33:35',NULL),(183,'Ursula Hernández Yañez','Ursula@live.com','54698505','Ursula_97','Mujer','1994-08-06',_binary '','2023-08-05 11:33:35',NULL),(184,'Antonio Guerrero González','Antonio@outlook.com','81128513','Antonio_84','Hombre','2003-07-07',_binary '','2023-08-05 11:33:35',NULL),(185,'Quetzálcoatl Flores Kuno','Quetzálcoatl@hotmail.com','40828303','Quetzálcoatl_71','Hombre','1996-04-13',_binary '','2023-08-05 11:33:35',NULL),(186,'Daniel Sampayo Vega','Daniel@outlook.com','00135475','Daniel_53','Hombre','1972-06-06',_binary '','2023-08-05 11:33:35',NULL),(187,'Gustavo Pacheco Gómez','Gustavo@hotmail.com','87283578','Gustavo_76','Hombre','1975-09-09',_binary '','2023-08-05 11:33:35',NULL),(188,'Benito Maldonado García','Benito@hotmail.com','98150602','Benito_20','Hombre','1971-08-17',_binary '','2023-08-05 11:33:35',NULL),(189,'Nabor Neftalí Ruíz Torres','Nabor Neftalí@hotmail.com','09774128','Nabor Neftalí_97','Hombre','1984-09-20',_binary '','2023-08-05 11:33:35',NULL),(190,'Sandra Flores Ríos','Sandra@hotmail.com','02036191','Sandra_76','Mujer','1998-02-07',_binary '','2023-08-05 11:33:35',NULL),(191,'Fernanda Romero Zapata','Fernanda@outlook.com','87206020','Fernanda_89','Mujer','1979-10-10',_binary '','2023-08-05 11:33:35',NULL),(192,'Denisse Renata González Soto','Denisse Renata@hotmail.com','98592139','Denisse Renata_3','Mujer','2005-06-13',_binary '','2023-08-05 11:33:35',NULL),(193,'Óscar Salvador Martínez Rojas','Óscar Salvador@outlook.com','87337566','Óscar Salvador_90','Hombre','1980-01-16',_binary '','2023-08-05 11:33:35',NULL),(194,'Karim Raúl Flores Acosta','Karim Raúl@hotmail.com','40565701','Karim Raúl_82','Hombre','1991-08-12',_binary '','2023-08-05 11:33:35',NULL),(195,'Lorena Fuentes Nuñez','Lorena@gmail.com','56624355','Lorena_79','Mujer','1966-11-19',_binary '','2023-08-05 11:33:35',NULL),(196,'Timoteo Lara Martínez','Timoteo@hotmail.com','48684362','Timoteo_22','Hombre','1971-07-25',_binary '','2023-08-05 11:33:35',NULL),(197,'William Castro Maldonado','William@gmail.com','85302056','William_17','Hombre','1990-05-17',_binary '','2023-08-05 11:33:35',NULL),(198,'Helena Rosales Hernández','Helena@hotmail.com','57279591','Helena_3','Mujer','2001-06-09',_binary '','2023-08-05 11:33:35',NULL),(199,'María Sofía Méndez Kuno','María Sofía@gmail.com','18698146','María Sofía_55','Mujer','2001-02-16',_binary '','2023-08-05 11:33:35',NULL),(200,'Fernando Jaime Díaz Vargas','Fernando Jaime@hotmail.com','66426761','Fernando Jaime_63','Hombre','1988-07-30',_binary '','2023-08-05 11:33:35',NULL),(201,'Ivana Tamara Flores Márquez','Ivana Tamara@live.com','96396375','Ivana Tamara_36','Mujer','1988-07-28',_binary '','2023-08-05 11:33:35',NULL),(202,'Daniela Nava Carrillo','Daniela@gmail.com','02872867','Daniela_51','Mujer','1985-09-07',_binary '','2023-08-05 11:33:35',NULL),(203,'Quetzálli Miranda Téllez','Quetzálli@gmail.com','36230219','Quetzálli_84','Mujer','1978-03-02',_binary '','2023-08-05 11:33:35',NULL),(204,'Óscar Ortíz Téllez','Óscar@hotmail.com','29852638','Óscar_84','Hombre','1966-01-18',_binary '','2023-08-05 11:33:35',NULL),(205,'Olga Briones Muñoz','Olga@hotmail.com','59905467','Olga_51','Mujer','2003-12-18',_binary '','2023-08-05 11:33:35',NULL),(206,'Lorena Valeria Santiago Luna','Lorena Valeria@gmail.com','82440008','Lorena Valeria_48','Mujer','1972-01-20',_binary '','2023-08-05 11:33:35',NULL),(207,'Natalia Carrillo Domínguez','Natalia@gmail.com','17562453','Natalia_40','Mujer','1967-03-19',_binary '','2023-08-05 11:33:35',NULL),(208,'Carla Ávila Morales','Carla@hotmail.com','63584910','Carla_4','Mujer','1989-07-30',_binary '','2023-08-05 11:33:35',NULL),(209,'Ernesto Morales Muñoz','Ernesto@live.com','16773621','Ernesto_64','Hombre','1973-09-13',_binary '','2023-08-05 11:33:35',NULL),(210,'Bernardo Chávez Flores','Bernardo@outlook.com','84885454','Bernardo_35','Hombre','1986-03-18',_binary '','2023-08-05 11:33:35',NULL),(211,'Quetzálcoatl Martínez Salazar','Quetzálcoatl@hotmail.com','56635904','Quetzálcoatl_97','Hombre','1966-04-01',_binary '','2023-08-05 11:33:35',NULL),(212,'Manuel Ortega Urbina','Manuel@gmail.com','62503932','Manuel_40','Hombre','1964-09-16',_binary '','2023-08-05 11:33:35',NULL),(213,'Laura Maldonado Vázquez','Laura@live.com','66212845','Laura_2','Mujer','1976-07-18',_binary '','2023-08-05 11:33:35',NULL),(214,'Dylan Hugo Martínez Salazar','Dylan Hugo@hotmail.com','07603394','Dylan Hugo_68','Hombre','1989-08-29',_binary '','2023-08-05 11:33:35',NULL),(215,'Camilo Pedro Guzmán Guerrero','Camilo Pedro@hotmail.com','33636497','Camilo Pedro_36','Hombre','1993-08-14',_binary '','2023-08-05 11:33:35',NULL),(216,'Germán Víctor Santiago Gayosso','Germán Víctor@outlook.com','67737374','Germán Víctor_12','Hombre','1977-01-15',_binary '','2023-08-05 11:33:35',NULL),(217,'Jaqueline Ursula Santiago Sandoval','Jaqueline Ursula@live.com','07819258','Jaqueline Ursula_59','Mujer','1989-08-18',_binary '','2023-08-05 11:33:35',NULL),(218,'Gerardo Marco Hernández Ortega','Gerardo Marco@live.com','92669155','Gerardo Marco_21','Hombre','1971-10-27',_binary '','2023-08-05 11:33:35',NULL),(219,'Valeria Rivera Cortés','Valeria@live.com','61601559','Valeria_85','Mujer','2001-11-24',_binary '','2023-08-05 11:33:35',NULL),(220,'Gerardo Ramos Rosas','Gerardo@hotmail.com','25848919','Gerardo_63','Hombre','1976-03-24',_binary '','2023-08-05 11:33:35',NULL),(221,'Tamara Zapata Morales','Tamara@live.com','16642701','Tamara_92','Mujer','1983-02-02',_binary '','2023-08-05 11:33:35',NULL),(222,'Josafat Quiróz Gayosso','Josafat@live.com','03620432','Josafat_51','Hombre','1974-03-31',_binary '','2023-08-05 11:33:35',NULL),(223,'Óscar Tadeo Márquez Gómez','Óscar Tadeo@outlook.com','56394715','Óscar Tadeo_27','Hombre','1970-04-13',_binary '','2023-08-05 11:33:35',NULL),(224,'Salomé Valdéz Ruíz','Salomé@outlook.com','54219189','Salomé_59','Mujer','1966-10-03',_binary '','2023-08-05 11:33:35',NULL),(225,'Fernando Ríos Rosas','Fernando@live.com','73620578','Fernando_48','Hombre','2004-12-15',_binary '','2023-08-05 11:33:35',NULL),(226,'Óscar Aguilar Luna','Óscar@live.com','53219191','Óscar_72','Hombre','1964-12-02',_binary '','2023-08-05 11:33:35',NULL),(227,'Camilo Juárez Urbina','Camilo@hotmail.com','04152794','Camilo_71','Hombre','1980-11-20',_binary '','2023-08-05 11:33:35',NULL),(228,'William Karim González Zapata','William Karim@outlook.com','26623811','William Karim_82','Hombre','1983-01-15',_binary '','2023-08-05 11:33:35',NULL),(229,'Benito Alvarado Acosta','Benito@hotmail.com','44736187','Benito_22','Hombre','1976-06-21',_binary '','2023-08-05 11:33:35',NULL),(230,'Berenice Natalia Quiróz Paredes','Berenice Natalia@gmail.com','24369971','Berenice Natalia_92','Mujer','1984-02-11',_binary '','2023-08-05 11:33:35',NULL),(231,'Alma Ortíz Peña','Alma@gmail.com','87323009','Alma_76','Mujer','2003-06-10',_binary '','2023-08-05 11:33:35',NULL),(232,'Tamara Acosta Vázquez','Tamara@live.com','80579518','Tamara_77','Mujer','1999-10-15',_binary '','2023-08-05 11:33:35',NULL),(233,'Jaqueline Ximénez Rosas','Jaqueline@outlook.com','83996622','Jaqueline_71','Mujer','1984-01-13',_binary '','2023-08-05 11:33:35',NULL),(234,'Fernanda Rosa Estrada Kuno','Fernanda Rosa@outlook.com','87357961','Fernanda Rosa_84','Mujer','1967-01-01',_binary '','2023-08-05 11:33:35',NULL),(235,'Hugo Valencia González','Hugo@outlook.com','72192301','Hugo_85','Hombre','1981-08-27',_binary '','2023-08-05 11:33:35',NULL),(236,'Bernardo Acosta Ibarra','Bernardo@hotmail.com','99168278','Bernardo_82','Hombre','1976-03-11',_binary '','2023-08-05 11:33:35',NULL),(237,'Isabel Paola Urbina Vargas','Isabel Paola@gmail.com','54528524','Isabel Paola_99','Mujer','1982-11-06',_binary '','2023-08-05 11:33:35',NULL),(238,'Luis Rojas Campos','Luis@hotmail.com','37766256','Luis_82','Hombre','2004-10-26',_binary '','2023-08-05 11:33:35',NULL),(239,'Carlos Paredes García','Carlos@live.com','55125376','Carlos_13','Hombre','1973-04-12',_binary '','2023-08-05 11:33:35',NULL),(240,'Zacek Miranda Rodríguez','Zacek@hotmail.com','35318543','Zacek_44','Hombre','1994-02-03',_binary '','2023-08-05 11:33:35',NULL),(241,'Nabor Huerta Guerrero','Nabor@gmail.com','23141081','Nabor_57','Hombre','1972-02-18',_binary '','2023-08-05 11:33:35',NULL),(242,'Denisse Yañez Rivera','Denisse@hotmail.com','30341531','Denisse_41','Mujer','1987-04-27',_binary '','2023-08-05 11:33:35',NULL),(243,'Edgar Morales Ramos','Edgar@outlook.com','43397572','Edgar_8','Hombre','1995-02-26',_binary '','2023-08-05 11:33:35',NULL),(244,'Valentín Paredes Domínguez','Valentín@live.com','08245642','Valentín_56','Hombre','1999-02-26',_binary '','2023-08-05 11:33:35',NULL),(245,'Bernardo Gerardo Wurtz Chávez','Bernardo Gerardo@hotmail.com','57084677','Bernardo Gerardo_86','Hombre','1980-03-01',_binary '','2023-08-05 11:33:35',NULL),(246,'Quetzálli Ibarra Campos','Quetzálli@gmail.com','84852711','Quetzálli_35','Mujer','1987-12-11',_binary '','2023-08-05 11:33:35',NULL),(247,'Ofelia Helena Álvarez Huerta','Ofelia Helena@live.com','83222813','Ofelia Helena_4','Mujer','1981-12-30',_binary '','2023-08-05 11:33:35',NULL),(248,'Esther Helena Camacho González','Esther Helena@hotmail.com','56638076','Esther Helena_48','Mujer','2000-03-07',_binary '','2023-08-05 11:33:35',NULL),(249,'Ernesto Uriel Sandoval Chávez','Ernesto Uriel@live.com','76700148','Ernesto Uriel_15','Hombre','2003-05-12',_binary '','2023-08-05 11:33:35',NULL),(250,'Jazmín Salomé Camacho Trejo','Jazmín Salomé@gmail.com','68101349','Jazmín Salomé_12','Mujer','1988-11-24',_binary '','2023-08-05 11:33:35',NULL),(251,'Germán Hugo Márquez Herrera','Germán Hugo@gmail.com','91911094','Germán Hugo_91','Hombre','1982-04-06',_binary '','2023-08-05 11:33:35',NULL),(252,'Uriel Sampayo Sampayo','Uriel@outlook.com','62239963','Uriel_19','Hombre','1998-11-08',_binary '','2023-08-05 11:33:35',NULL),(253,'Lorenzo Castillo de la Cruz','Lorenzo@hotmail.com','26565696','Lorenzo_43','Hombre','1974-04-04',_binary '','2023-08-05 11:33:35',NULL),(254,'Manuel Ruíz Bautista','Manuel@gmail.com','90238399','Manuel_51','Hombre','2000-08-26',_binary '','2023-08-05 11:33:35',NULL),(255,'Nadia Navarro Maldonado','Nadia@live.com','28726813','Nadia_98','Mujer','1972-03-27',_binary '','2023-08-05 11:33:35',NULL),(256,'Francisco González Moreno','Francisco@outlook.com','37961603','Francisco_81','Hombre','1987-12-23',_binary '','2023-08-05 11:33:35',NULL),(257,'Baltazar Daniel Sánchez Díaz','Baltazar Daniel@outlook.com','28794340','Baltazar Daniel_70','Hombre','1971-08-09',_binary '','2023-08-05 11:33:35',NULL),(258,'Alejandro Maldonado Chávez','Alejandro@hotmail.com','67685245','Alejandro_86','Hombre','1985-05-14',_binary '','2023-08-05 11:33:35',NULL),(259,'Carolina Jaqueline Delgado Martínez','Carolina Jaqueline@outlook.com','81079192','Carolina Jaqueline_51','Mujer','1992-02-20',_binary '','2023-08-05 11:33:35',NULL),(260,'Yahir Marco Domínguez Peña','Yahir Marco@gmail.com','48193028','Yahir Marco_55','Hombre','1989-09-11',_binary '','2023-08-05 11:33:35',NULL),(261,'Alma Navarro Márquez','Alma@gmail.com','13174923','Alma_63','Mujer','2001-10-10',_binary '','2023-08-05 11:33:35',NULL),(262,'Denisse Gutiérrez Briones','Denisse@live.com','98794211','Denisse_89','Mujer','1965-10-25',_binary '','2023-08-05 11:33:35',NULL),(263,'Esther García Santiago','Esther@outlook.com','84682642','Esther_52','Mujer','1998-05-17',_binary '','2023-08-05 11:33:35',NULL),(264,'Óscar Yahir Ibarra Peña','Óscar Yahir@gmail.com','89394342','Óscar Yahir_19','Hombre','1963-09-13',_binary '','2023-08-05 11:33:35',NULL),(265,'Baltazar Uziel Maldonado Huerta','Baltazar Uziel@gmail.com','39709637','Baltazar Uziel_34','Hombre','2003-04-27',_binary '','2023-08-05 11:33:35',NULL),(266,'Quetzálli Solís Jiménez','Quetzálli@gmail.com','70623970','Quetzálli_60','Mujer','2003-12-27',_binary '','2023-08-05 11:33:35',NULL),(267,'Berenice Jiménez Lara','Berenice@gmail.com','62246981','Berenice_48','Mujer','1970-07-08',_binary '','2023-08-05 11:33:35',NULL),(268,'Carlos Pablo Camacho Miranda','Carlos Pablo@gmail.com','42905589','Carlos Pablo_54','Hombre','1999-04-04',_binary '','2023-08-05 11:33:35',NULL),(269,'Fatima Galilea Martínez Cruz','Fatima Galilea@live.com','39449587','Fatima Galilea_4','Mujer','1965-12-05',_binary '','2023-08-05 11:33:35',NULL),(270,'María Tanya Cruz Álvarez','María Tanya@live.com','52777170','María Tanya_77','Mujer','1971-08-22',_binary '','2023-08-05 11:33:35',NULL),(271,'Germán Zapata Valencia','Germán@gmail.com','04081129','Germán_29','Hombre','1965-05-10',_binary '','2023-08-05 11:33:35',NULL),(272,'Xochítl Romero Bautista','Xochítl@outlook.com','86962610','Xochítl_19','Mujer','2000-12-15',_binary '','2023-08-05 11:33:35',NULL),(273,'Quetzálcoatl Yañez Guerrero','Quetzálcoatl@outlook.com','81095883','Quetzálcoatl_50','Hombre','1986-01-21',_binary '','2023-08-05 11:33:35',NULL),(274,'Iván Neftalí Camacho Camacho','Iván Neftalí@hotmail.com','81095904','Iván Neftalí_35','Hombre','1969-12-11',_binary '','2023-08-05 11:33:35',NULL),(275,'Francisco González Rodríguez','Francisco@hotmail.com','85055398','Francisco_21','Hombre','1968-10-13',_binary '','2023-08-05 11:33:35',NULL),(276,'Carla Guerrero Muñoz','Carla@live.com','76983204','Carla_41','Mujer','1969-07-31',_binary '','2023-08-05 11:33:35',NULL),(277,'Jazmín Alejandra Contreras Lara','Jazmín Alejandra@live.com','84805659','Jazmín Alejandra_26','Mujer','1964-08-08',_binary '','2023-08-05 11:33:35',NULL),(278,'Denisse Laura Wurtz Flores','Denisse Laura@live.com','45397808','Denisse Laura_75','Mujer','1998-08-13',_binary '','2023-08-05 11:33:35',NULL),(279,'Víctor Vargas Sandoval','Víctor@outlook.com','99049417','Víctor_61','Hombre','1970-09-16',_binary '','2023-08-05 11:33:35',NULL),(280,'Uziel Herrera Alvarado','Uziel@live.com','45522511','Uziel_83','Hombre','1964-10-10',_binary '','2023-08-05 11:33:35',NULL),(281,'Saúl Díaz Ávila','Saúl@outlook.com','18406242','Saúl_1','Hombre','2003-05-22',_binary '','2023-08-05 11:33:35',NULL),(282,'Nadia Urbina Trejo','Nadia@gmail.com','27152795','Nadia_84','Mujer','2001-08-17',_binary '','2023-08-05 11:33:35',NULL),(283,'Baltazar Daniel Chávez Cervantes','Baltazar Daniel@outlook.com','20381322','Baltazar Daniel_85','Hombre','1976-04-19',_binary '','2023-08-05 11:33:35',NULL),(284,'Francisco Vázquez Quiróz','Francisco@live.com','43699002','Francisco_16','Hombre','2004-01-16',_binary '','2023-08-05 11:33:35',NULL),(285,'Alejandro Peña Cruz','Alejandro@outlook.com','72106207','Alejandro_83','Hombre','1990-03-17',_binary '','2023-08-05 11:33:35',NULL),(286,'Josafat Zapata Silva','Josafat@live.com','20734349','Josafat_46','Hombre','1982-07-03',_binary '','2023-08-05 11:33:35',NULL),(287,'Carla Trejo Reyes','Carla@live.com','35997944','Carla_46','Mujer','2004-05-01',_binary '','2023-08-05 11:33:35',NULL),(288,'Pedro Pablo Gutiérrez Medina','Pedro Pablo@outlook.com','04810082','Pedro Pablo_28','Hombre','1988-08-31',_binary '','2023-08-05 11:33:35',NULL),(289,'Carlos Muñoz Huerta','Carlos@outlook.com','82776140','Carlos_32','Hombre','2001-07-06',_binary '','2023-08-05 11:33:35',NULL),(290,'Ofelia Magdalena Camacho Aguilar','Ofelia Magdalena@outlook.com','37389383','Ofelia Magdalena_57','Mujer','1968-12-07',_binary '','2023-08-05 11:33:35',NULL),(291,'Antonio Castillo Castillo','Antonio@live.com','29193624','Antonio_69','Hombre','1990-04-05',_binary '','2023-08-05 11:33:35',NULL),(292,'Timoteo Vargas Rojas','Timoteo@gmail.com','43772886','Timoteo_100','Hombre','1987-12-29',_binary '','2023-08-05 11:33:35',NULL),(293,'Timoteo Pablo García Rodríguez','Timoteo Pablo@hotmail.com','97975781','Timoteo Pablo_87','Hombre','1975-04-05',_binary '','2023-08-05 11:33:35',NULL),(294,'Lorenzo Herrera Peña','Lorenzo@live.com','38587028','Lorenzo_8','Hombre','1994-11-17',_binary '','2023-08-05 11:33:35',NULL),(295,'Valeria Ortíz Méndez','Valeria@live.com','41460338','Valeria_39','Mujer','2003-10-20',_binary '','2023-08-05 11:33:35',NULL),(296,'Lorenzo Gayosso Paredes','Lorenzo@hotmail.com','31728511','Lorenzo_100','Hombre','1975-08-09',_binary '','2023-08-05 11:33:35',NULL),(297,'Wendy Alondra Kuno Rojas','Wendy Alondra@outlook.com','19225905','Wendy Alondra_53','Mujer','1981-03-06',_binary '','2023-08-05 11:33:35',NULL),(298,'Raúl Ruíz Reyes','Raúl@hotmail.com','94297279','Raúl_70','Hombre','1984-05-19',_binary '','2023-08-05 11:33:35',NULL),(299,'Jaqueline Sandra Pacheco León','Jaqueline Sandra@gmail.com','78885077','Jaqueline Sandra_11','Mujer','1974-03-07',_binary '','2023-08-05 11:33:35',NULL),(300,'Daniel Vega Domínguez','Daniel@gmail.com','48906155','Daniel_97','Hombre','1969-07-15',_binary '','2023-08-05 11:33:35',NULL),(301,'Alma Gutiérrez Álvarez','Alma@live.com','12539826','Alma_60','Mujer','1994-05-26',_binary '','2023-08-05 11:33:35',NULL),(302,'Valentín Manuel Carrillo Martínez','Valentín Manuel@outlook.com','90355126','Valentín Manuel_1','Hombre','1988-08-10',_binary '','2023-08-05 11:33:35',NULL),(303,'Esther Valentina Yañez Paredes','Esther Valentina@gmail.com','99983341','Esther Valentina_8','Mujer','1984-09-26',_binary '','2023-08-05 11:33:35',NULL),(304,'Bernardo Uriel Camacho Quiróz','Bernardo Uriel@gmail.com','48939639','Bernardo Uriel_60','Hombre','1983-04-18',_binary '','2023-08-05 11:33:35',NULL),(305,'Antonio Muñoz Huerta','Antonio@gmail.com','75349638','Antonio_85','Hombre','1976-04-14',_binary '','2023-08-05 11:33:35',NULL),(306,'Ivana Berenice Gómez Cruz','Ivana Berenice@gmail.com','15507361','Ivana Berenice_88','Mujer','2000-05-06',_binary '','2023-08-05 11:33:35',NULL),(307,'Yara Silva Hernández','Yara@gmail.com','16568300','Yara_90','Mujer','1972-02-13',_binary '','2023-08-05 11:33:35',NULL),(308,'Pablo Nuñez Velazquez','Pablo@gmail.com','04115131','Pablo_37','Hombre','1986-04-19',_binary '','2023-08-05 11:33:35',NULL),(309,'Fernando Vargas Rosales','Fernando@live.com','74924374','Fernando_23','Hombre','1968-09-08',_binary '','2023-08-05 11:33:35',NULL),(310,'Ignacio Delgado Hernández','Ignacio@gmail.com','51286302','Ignacio_34','Hombre','1964-05-15',_binary '','2023-08-05 11:33:35',NULL),(311,'Hugo Iván Ortega Gayosso','Hugo Iván@hotmail.com','97937942','Hugo Iván_36','Hombre','1964-08-19',_binary '','2023-08-05 11:33:35',NULL),(312,'Laura Karla Lara Castillo','Laura Karla@gmail.com','82794408','Laura Karla_78','Mujer','1966-06-20',_binary '','2023-08-05 11:33:35',NULL),(313,'Xochítl Helena Espinoza Kuno','Xochítl Helena@outlook.com','83983192','Xochítl Helena_19','Mujer','1970-05-10',_binary '','2023-08-05 11:33:35',NULL),(314,'Valeria Moreno Muñoz','Valeria@hotmail.com','73571661','Valeria_85','Mujer','1999-05-06',_binary '','2023-08-05 11:33:35',NULL),(315,'Rosa Tanya Alvarado Campos','Rosa Tanya@gmail.com','86623831','Rosa Tanya_52','Mujer','1997-06-25',_binary '','2023-08-05 11:33:35',NULL),(316,'Galilea Sampayo Morales','Galilea@gmail.com','38131683','Galilea_70','Mujer','1969-09-13',_binary '','2023-08-05 11:33:35',NULL),(317,'Víctor Fuentes Urbina','Víctor@live.com','67699003','Víctor_99','Hombre','1989-09-22',_binary '','2023-08-05 11:33:35',NULL),(318,'Héctor Hernández Moreno','Héctor@live.com','61887001','Héctor_34','Hombre','1986-11-25',_binary '','2023-08-05 11:33:35',NULL),(319,'Alejandra Díaz Paredes','Alejandra@hotmail.com','90578075','Alejandra_17','Mujer','1987-07-26',_binary '','2023-08-05 11:33:35',NULL),(320,'Ivana Carla Kuno Fuentes','Ivana Carla@live.com','22571341','Ivana Carla_33','Mujer','1987-10-31',_binary '','2023-08-05 11:33:35',NULL),(321,'Carlos Alejandro Rosales Salazar','Carlos Alejandro@gmail.com','33768323','Carlos Alejandro_69','Hombre','1993-12-26',_binary '','2023-08-05 11:33:35',NULL),(322,'Alejandro Yañez López','Alejandro@live.com','27131056','Alejandro_75','Hombre','1985-10-05',_binary '','2023-08-05 11:33:35',NULL),(323,'Héctor Quiróz Vargas','Héctor@gmail.com','96450938','Héctor_46','Hombre','1981-03-05',_binary '','2023-08-05 11:33:35',NULL),(324,'Galilea Padilla Santiago','Galilea@gmail.com','63760495','Galilea_85','Mujer','2001-11-09',_binary '','2023-08-05 11:33:35',NULL),(325,'Tadeo Ramos Nuñez','Tadeo@live.com','77532054','Tadeo_57','Hombre','1997-01-06',_binary '','2023-08-05 11:33:35',NULL),(326,'Karen Castillo Rivera','Karen@live.com','05820224','Karen_62','Mujer','1979-05-30',_binary '','2023-08-05 11:33:35',NULL),(327,'Óscar Nava Valencia','Óscar@live.com','36833743','Óscar_46','Hombre','1966-11-30',_binary '','2023-08-05 11:33:35',NULL),(328,'Timoteo Estrada Nuñez','Timoteo@gmail.com','03958682','Timoteo_67','Hombre','1992-05-25',_binary '','2023-08-05 11:33:35',NULL),(329,'Josafat García González','Josafat@hotmail.com','00358349','Josafat_98','Hombre','1978-01-15',_binary '','2023-08-05 11:33:35',NULL),(330,'Valentina Valdéz Yañez','Valentina@hotmail.com','17410002','Valentina_95','Mujer','1970-06-14',_binary '','2023-08-05 11:33:35',NULL),(331,'Tamara Yañez Flores','Tamara@live.com','54870171','Tamara_74','Mujer','1991-02-24',_binary '','2023-08-05 11:33:35',NULL),(332,'Paola Ríos Ruíz','Paola@live.com','26454408','Paola_74','Mujer','1975-08-07',_binary '','2023-08-05 11:33:35',NULL),(333,'Carla Wendy Mejía Nuñez','Carla Wendy@live.com','46656639','Carla Wendy_94','Mujer','1986-12-06',_binary '','2023-08-05 11:33:35',NULL),(334,'Elena Álvarez Wurtz','Elena@gmail.com','98319225','Elena_99','Mujer','1969-09-12',_binary '','2023-08-05 11:33:35',NULL),(335,'Luis Hugo Ramos Moreno','Luis Hugo@hotmail.com','55714737','Luis Hugo_71','Hombre','1988-06-14',_binary '','2023-08-05 11:33:35',NULL),(336,'María Sandoval Silva','María@outlook.com','85382675','María_63','Mujer','1981-11-22',_binary '','2023-08-05 11:33:35',NULL),(337,'Valentina Valdéz Sánchez','Valentina@live.com','45466434','Valentina_11','Mujer','1967-02-23',_binary '','2023-08-05 11:33:35',NULL),(338,'Natalia García Huerta','Natalia@gmail.com','70957341','Natalia_98','Mujer','1974-08-26',_binary '','2023-08-05 11:33:35',NULL),(339,'Yara Hernández Chávez','Yara@gmail.com','08246777','Yara_89','Mujer','1981-10-21',_binary '','2023-08-05 11:33:35',NULL),(340,'Xochítl Paredes Estrada','Xochítl@live.com','95663964','Xochítl_74','Mujer','1972-08-13',_binary '','2023-08-05 11:33:35',NULL),(341,'Tanya Díaz Nava','Tanya@hotmail.com','47494151','Tanya_67','Mujer','2005-05-20',_binary '','2023-08-05 11:33:35',NULL),(342,'Hugo Gonzálo Vázquez Silva','Hugo Gonzálo@hotmail.com','55111491','Hugo Gonzálo_2','Hombre','1968-04-06',_binary '','2023-08-05 11:33:35',NULL),(343,'Karim Márquez Márquez','Karim@hotmail.com','52669726','Karim_54','Hombre','1993-04-29',_binary '','2023-08-05 11:33:35',NULL),(344,'Paola Rojas Vargas','Paola@outlook.com','26892316','Paola_69','Mujer','2003-05-22',_binary '','2023-08-05 11:33:35',NULL),(345,'Gabriela Rojas Carrillo','Gabriela@gmail.com','00147406','Gabriela_6','Mujer','1981-05-30',_binary '','2023-08-05 11:33:35',NULL),(346,'Francisco Huerta Sandoval','Francisco@live.com','65795715','Francisco_37','Hombre','1971-06-11',_binary '','2023-08-05 11:33:35',NULL),(347,'Héctor García Urbina','Héctor@gmail.com','18665716','Héctor_46','Hombre','1982-09-06',_binary '','2023-08-05 11:33:35',NULL),(348,'Luis Miranda Sánchez','Luis@hotmail.com','62261113','Luis_40','Hombre','1975-10-21',_binary '','2023-08-05 11:33:35',NULL),(349,'Salomé Carolina Hernández Ximénez','Salomé Carolina@live.com','23172846','Salomé Carolina_26','Mujer','1997-10-12',_binary '','2023-08-05 11:33:35',NULL),(350,'Nadia Campos Domínguez','Nadia@live.com','53356789','Nadia_82','Mujer','1978-08-24',_binary '','2023-08-05 11:33:35',NULL),(351,'Rosa Laura Padilla Guzmán','Rosa Laura@hotmail.com','67754676','Rosa Laura_65','Mujer','1978-02-04',_binary '','2023-08-05 11:33:35',NULL),(352,'Luis Téllez Briones','Luis@hotmail.com','15133583','Luis_74','Hombre','1978-11-09',_binary '','2023-08-05 11:33:35',NULL),(353,'Ramón Zacek Contreras Silva','Ramón Zacek@live.com','45658689','Ramón Zacek_97','Hombre','1978-12-24',_binary '','2023-08-05 11:33:35',NULL),(354,'Evelyn Ávila Cortés','Evelyn@gmail.com','32130330','Evelyn_70','Mujer','2003-10-15',_binary '','2023-08-05 11:33:35',NULL),(355,'Esther Berenice Santiago Briones','Esther Berenice@gmail.com','49598709','Esther Berenice_70','Mujer','1993-11-05',_binary '','2023-08-05 11:33:35',NULL),(356,'Nadia Romero Castillo','Nadia@gmail.com','87342689','Nadia_64','Mujer','1985-06-13',_binary '','2023-08-05 11:33:35',NULL),(357,'Xochítl Barbara Luna Paredes','Xochítl Barbara@live.com','24698302','Xochítl Barbara_52','Mujer','1975-01-06',_binary '','2023-08-05 11:33:35',NULL),(358,'Óscar Delgado Urbina','Óscar@hotmail.com','67095721','Óscar_81','Hombre','1999-02-22',_binary '','2023-08-05 11:33:35',NULL),(359,'Galilea Wendy Juárez Miranda','Galilea Wendy@outlook.com','71471866','Galilea Wendy_58','Mujer','1985-11-11',_binary '','2023-08-05 11:33:35',NULL),(360,'Alma Rosa Pérez Soto','Alma Rosa@hotmail.com','65886465','Alma Rosa_50','Mujer','1965-06-15',_binary '','2023-08-05 11:33:35',NULL),(361,'Yahir Reyes Romero','Yahir@outlook.com','76639812','Yahir_81','Hombre','2002-07-14',_binary '','2023-08-05 11:33:35',NULL),(362,'Isabel García Nuñez','Isabel@outlook.com','92384698','Isabel_18','Mujer','1968-06-18',_binary '','2023-08-05 11:33:35',NULL),(363,'Karla Velazquez Téllez','Karla@outlook.com','17349776','Karla_72','Mujer','1993-03-19',_binary '','2023-08-05 11:33:35',NULL),(364,'Berenice Rivera Martínez','Berenice@outlook.com','83140082','Berenice_36','Mujer','1999-04-29',_binary '','2023-08-05 11:33:35',NULL),(365,'Alejandro Yañez Martínez','Alejandro@live.com','39997787','Alejandro_62','Hombre','1979-12-19',_binary '','2023-08-05 11:33:35',NULL),(366,'Ignacio Rosales Cervantes','Ignacio@live.com','09420361','Ignacio_56','Hombre','1964-08-07',_binary '','2023-08-05 11:33:35',NULL),(367,'Sandra Denisse Espinoza Sandoval','Sandra Denisse@live.com','71323795','Sandra Denisse_87','Mujer','1992-06-11',_binary '','2023-08-05 11:33:35',NULL),(368,'Alma Rodríguez Valdéz','Alma@outlook.com','91803931','Alma_41','Mujer','1987-03-01',_binary '','2023-08-05 11:33:35',NULL),(369,'William Morales Juárez','William@outlook.com','91752848','William_65','Hombre','1989-07-29',_binary '','2023-08-05 11:33:35',NULL),(370,'Zara Vázquez Mejía','Zara@live.com','68081944','Zara_5','Mujer','2000-07-31',_binary '','2023-08-05 11:33:35',NULL),(371,'Berenice Rojas Lara','Berenice@live.com','88075335','Berenice_14','Mujer','1985-12-02',_binary '','2023-08-05 11:33:35',NULL),(372,'Quetzálli Jiménez Gayosso','Quetzálli@gmail.com','02365641','Quetzálli_25','Mujer','1995-10-03',_binary '','2023-08-05 11:33:35',NULL),(373,'Alma Zara Miranda Miranda','Alma Zara@live.com','93824601','Alma Zara_12','Mujer','1994-02-12',_binary '','2023-08-05 11:33:35',NULL),(374,'Alma Aguilar Soto','Alma@gmail.com','89850623','Alma_21','Mujer','1998-12-23',_binary '','2023-08-05 11:33:35',NULL),(375,'Valentín Castro Trejo','Valentín@gmail.com','08264506','Valentín_7','Hombre','1972-06-12',_binary '','2023-08-05 11:33:35',NULL),(376,'Sandra Ávila Vázquez','Sandra@hotmail.com','37563962','Sandra_72','Mujer','1984-10-03',_binary '','2023-08-05 11:33:35',NULL),(377,'Alma Fuentes López','Alma@outlook.com','11322573','Alma_87','Mujer','1979-05-17',_binary '','2023-08-05 11:33:35',NULL),(378,'Tanya Urbina Mendoza','Tanya@outlook.com','12661060','Tanya_18','Mujer','1974-03-30',_binary '','2023-08-05 11:33:35',NULL),(379,'Josafat Ortíz Quiróz','Josafat@outlook.com','82593830','Josafat_54','Hombre','1978-08-21',_binary '','2023-08-05 11:33:35',NULL),(380,'Karla Ortega Rivera','Karla@outlook.com','09586641','Karla_21','Mujer','1986-05-22',_binary '','2023-08-05 11:33:35',NULL),(381,'Karla Moreno Chávez','Karla@live.com','60358469','Karla_35','Mujer','1999-01-13',_binary '','2023-08-05 11:33:35',NULL),(382,'Sandra Urbina Valencia','Sandra@gmail.com','49758201','Sandra_73','Mujer','1999-04-30',_binary '','2023-08-05 11:33:35',NULL),(383,'Octavio Salvador Ibarra García','Octavio Salvador@live.com','33413211','Octavio Salvador_40','Hombre','1979-10-01',_binary '','2023-08-05 11:33:35',NULL),(384,'Jaqueline Valdéz Nava','Jaqueline@outlook.com','77527009','Jaqueline_85','Mujer','1995-03-11',_binary '','2023-08-05 11:33:35',NULL),(385,'Alejandra Pacheco Morales','Alejandra@live.com','47410976','Alejandra_57','Mujer','1967-12-21',_binary '','2023-08-05 11:33:35',NULL),(386,'Baltazar Medina Solís','Baltazar@hotmail.com','00152643','Baltazar_59','Hombre','1986-08-20',_binary '','2023-08-05 11:33:35',NULL),(387,'Nabor Dylan Rodríguez Soto','Nabor Dylan@outlook.com','07238436','Nabor Dylan_40','Hombre','1975-12-09',_binary '','2023-08-05 11:33:35',NULL),(388,'Timoteo Ibarra Zapata','Timoteo@live.com','47152844','Timoteo_69','Hombre','1973-06-08',_binary '','2023-08-05 11:33:35',NULL),(389,'Sandra Nadia Ríos Vargas','Sandra Nadia@outlook.com','74892246','Sandra Nadia_74','Mujer','1993-08-24',_binary '','2023-08-05 11:33:35',NULL),(390,'Héctor Vargas Moreno','Héctor@outlook.com','24205441','Héctor_4','Hombre','1975-10-31',_binary '','2023-08-05 11:33:35',NULL),(391,'Josefa Sánchez Torres','Josefa@live.com','79622642','Josefa_82','Mujer','2001-10-06',_binary '','2023-08-05 11:33:35',NULL),(392,'Jaqueline Flores Wurtz','Jaqueline@gmail.com','63587151','Jaqueline_77','Mujer','1974-05-20',_binary '','2023-08-05 11:33:35',NULL),(393,'Pedro Gonzálo Díaz Maldonado','Pedro Gonzálo@outlook.com','56641322','Pedro Gonzálo_12','Hombre','1978-04-12',_binary '','2023-08-05 11:33:35',NULL),(394,'Iván Guzmán Vázquez','Iván@gmail.com','01513174','Iván_5','Hombre','2000-05-01',_binary '','2023-08-05 11:33:35',NULL),(395,'Pedro de la Cruz Márquez','Pedro@gmail.com','07721093','Pedro_36','Hombre','1999-12-14',_binary '','2023-08-05 11:33:35',NULL),(396,'Sofía Téllez Nuñez','Sofía@hotmail.com','39657129','Sofía_73','Mujer','2001-08-14',_binary '','2023-08-05 11:33:35',NULL),(397,'Nabor Miranda Juárez','Nabor@hotmail.com','97892279','Nabor_62','Hombre','1984-06-03',_binary '','2023-08-05 11:33:35',NULL),(398,'Valeria Salazar Martínez','Valeria@live.com','73615644','Valeria_65','Mujer','1997-02-18',_binary '','2023-08-05 11:33:35',NULL),(399,'Paola Natalia Nuñez Sánchez','Paola Natalia@live.com','99713534','Paola Natalia_62','Mujer','2004-12-07',_binary '','2023-08-05 11:33:35',NULL),(400,'Ramón Ortíz Nuñez','Ramón@live.com','57151264','Ramón_19','Hombre','1975-12-22',_binary '','2023-08-05 11:33:35',NULL),(401,'Salvador Cruz Rojas','Salvador@hotmail.com','26383173','Salvador_40','Hombre','1974-09-15',_binary '','2023-08-05 11:33:35',NULL),(402,'Carlos Ramírez Soto','Carlos@live.com','75468129','Carlos_24','Hombre','1997-02-23',_binary '','2023-08-05 11:33:35',NULL),(403,'Ivana León González','Ivana@live.com','62230170','Ivana_79','Mujer','1971-10-17',_binary '','2023-08-05 11:33:36',NULL),(404,'Víctor Karim Morales Flores','Víctor Karim@hotmail.com','30494342','Víctor Karim_99','Hombre','2004-01-23',_binary '','2023-08-05 11:33:36',NULL),(405,'Salomé Estrada Zapata','Salomé@gmail.com','65715113','Salomé_23','Mujer','1983-10-20',_binary '','2023-08-05 11:33:36',NULL),(406,'Tadeo Saúl Soto Guerrero','Tadeo Saúl@gmail.com','76979504','Tadeo Saúl_47','Hombre','2003-01-11',_binary '','2023-08-05 11:33:36',NULL),(407,'Alejandro Castro Téllez','Alejandro@outlook.com','07747602','Alejandro_32','Hombre','1963-09-15',_binary '','2023-08-05 11:33:36',NULL),(408,'Uziel Muñoz Nuñez','Uziel@hotmail.com','24664290','Uziel_40','Hombre','1986-01-27',_binary '','2023-08-05 11:33:36',NULL),(409,'Paola Mendoza Márquez','Paola@hotmail.com','91075675','Paola_47','Mujer','1990-02-13',_binary '','2023-08-05 11:33:36',NULL),(410,'Manuel Aguilar Cortés','Manuel@gmail.com','22831918','Manuel_22','Hombre','1994-09-07',_binary '','2023-08-05 11:33:36',NULL),(411,'Alejandra Camacho Ríos','Alejandra@live.com','66160204','Alejandra_84','Mujer','1974-02-23',_binary '','2023-08-05 11:33:36',NULL),(412,'Daniel Salvador Méndez Alvarado','Daniel Salvador@gmail.com','06207601','Daniel Salvador_80','Hombre','1990-12-17',_binary '','2023-08-05 11:33:36',NULL),(413,'Jaqueline Briones Alvarado','Jaqueline@outlook.com','00153850','Jaqueline_32','Mujer','1993-03-12',_binary '','2023-08-05 11:33:36',NULL),(414,'Carolina Rivera Vázquez','Carolina@outlook.com','44082524','Carolina_46','Mujer','1977-10-16',_binary '','2023-08-05 11:33:36',NULL),(415,'Timoteo Edgar García Maldonado','Timoteo Edgar@live.com','42042709','Timoteo Edgar_93','Hombre','1986-05-23',_binary '','2023-08-05 11:33:36',NULL),(416,'Olga Paola Álvarez Ximénez','Olga Paola@gmail.com','25399507','Olga Paola_40','Mujer','1986-02-23',_binary '','2023-08-05 11:33:36',NULL),(417,'Karlo Ruíz Cervantes','Karlo@outlook.com','29223185','Karlo_31','Hombre','1980-09-19',_binary '','2023-08-05 11:33:36',NULL),(418,'Zacek Bernardo Flores Lara','Zacek Bernardo@outlook.com','12820188','Zacek Bernardo_9','Hombre','1985-03-02',_binary '','2023-08-05 11:33:36',NULL),(419,'Gerardo Fernando Navarro Ramírez','Gerardo Fernando@gmail.com','60173550','Gerardo Fernando_58','Hombre','1985-09-23',_binary '','2023-08-05 11:33:36',NULL),(420,'Bernardo Gómez Rosas','Bernardo@gmail.com','26590343','Bernardo_41','Hombre','1985-01-11',_binary '','2023-08-05 11:33:36',NULL),(421,'Laura Ursula Domínguez Ximénez','Laura Ursula@hotmail.com','36342067','Laura Ursula_52','Mujer','2003-09-14',_binary '','2023-08-05 11:33:36',NULL),(422,'Josafat Ávila Álvarez','Josafat@live.com','34476661','Josafat_13','Hombre','2002-10-13',_binary '','2023-08-05 11:33:36',NULL),(423,'Salomé Natalia Valdéz León','Salomé Natalia@outlook.com','82643552','Salomé Natalia_71','Mujer','1993-09-23',_binary '','2023-08-05 11:33:36',NULL),(424,'Ofelia Ruíz León','Ofelia@live.com','60369017','Ofelia_75','Mujer','1981-04-02',_binary '','2023-08-05 11:33:36',NULL),(425,'Karim Rivera Estrada','Karim@live.com','39844128','Karim_64','Hombre','1981-07-19',_binary '','2023-08-05 11:33:36',NULL),(426,'Luis Peña de la Cruz','Luis@gmail.com','54751454','Luis_28','Hombre','1984-12-28',_binary '','2023-08-05 11:33:36',NULL),(427,'Valentín Valdéz Reyes','Valentín@outlook.com','49567740','Valentín_2','Hombre','1998-02-06',_binary '','2023-08-05 11:33:36',NULL),(428,'Esther Contreras Peña','Esther@hotmail.com','72781299','Esther_76','Mujer','2002-10-17',_binary '','2023-08-05 11:33:36',NULL),(429,'Zacek Pacheco Santiago','Zacek@gmail.com','93654886','Zacek_55','Hombre','2002-07-24',_binary '','2023-08-05 11:33:36',NULL),(430,'Magdalena Trejo Jiménez','Magdalena@hotmail.com','33811593','Magdalena_42','Mujer','2001-08-08',_binary '','2023-08-05 11:33:36',NULL),(431,'Benito Gutiérrez Bautista','Benito@gmail.com','36364027','Benito_68','Hombre','2004-01-29',_binary '','2023-08-05 11:33:36',NULL),(432,'Manuel Óscar Medina Domínguez','Manuel Óscar@live.com','14890344','Manuel Óscar_39','Hombre','2004-02-20',_binary '','2023-08-05 11:33:36',NULL),(433,'Saúl Valentín Cruz Pacheco','Saúl Valentín@live.com','09761715','Saúl Valentín_64','Hombre','1983-07-16',_binary '','2023-08-05 11:33:36',NULL),(434,'Karim Iván Silva León','Karim Iván@live.com','64299677','Karim Iván_10','Hombre','1973-09-15',_binary '','2023-08-05 11:33:36',NULL),(435,'Quetzálli Vega Herrera','Quetzálli@gmail.com','35867735','Quetzálli_17','Mujer','1995-10-16',_binary '','2023-08-05 11:33:36',NULL),(436,'Alma María Medina Cruz','Alma María@hotmail.com','70957151','Alma María_83','Mujer','1964-11-26',_binary '','2023-08-05 11:33:36',NULL),(437,'Alejandro Marco Fuentes Sandoval','Alejandro Marco@hotmail.com','16592195','Alejandro Marco_25','Hombre','1996-03-26',_binary '','2023-08-05 11:33:36',NULL),(438,'Xochítl Wendy Maldonado Carrillo','Xochítl Wendy@gmail.com','10812630','Xochítl Wendy_69','Mujer','2003-02-24',_binary '','2023-08-05 11:33:36',NULL),(439,'Ernesto Salazar Maldonado','Ernesto@hotmail.com','07567886','Ernesto_25','Hombre','1989-09-16',_binary '','2023-08-05 11:33:36',NULL),(440,'Sandra Fernanda Gutiérrez Quiróz','Sandra Fernanda@hotmail.com','40691911','Sandra Fernanda_83','Mujer','1965-04-29',_binary '','2023-08-05 11:33:36',NULL),(441,'Iván Álvarez Rojas','Iván@live.com','76985106','Iván_10','Hombre','1972-05-21',_binary '','2023-08-05 11:33:36',NULL),(442,'Paola Quetzálli Santos Díaz','Paola Quetzálli@hotmail.com','10431685','Paola Quetzálli_15','Mujer','2003-03-07',_binary '','2023-08-05 11:33:36',NULL),(443,'Denisse Josefa Navarro Padilla','Denisse Josefa@outlook.com','85113204','Denisse Josefa_89','Mujer','1974-03-18',_binary '','2023-08-05 11:33:36',NULL),(444,'Ivana Tamara Cortés Santiago','Ivana Tamara@gmail.com','94494524','Ivana Tamara_19','Mujer','1993-11-30',_binary '','2023-08-05 11:33:36',NULL),(445,'Josefa Delgado Urbina','Josefa@hotmail.com','24683204','Josefa_42','Mujer','1969-11-22',_binary '','2023-08-05 11:33:36',NULL),(446,'Olga Guerrero Miranda','Olga@live.com','56830172','Olga_89','Mujer','1969-10-18',_binary '','2023-08-05 11:33:36',NULL),(447,'Ignacio Nava Ramírez','Ignacio@live.com','69789213','Ignacio_37','Hombre','1976-04-08',_binary '','2023-08-05 11:33:36',NULL),(448,'Sofía Barbara Miranda Salazar','Sofía Barbara@gmail.com','68112916','Sofía Barbara_2','Mujer','1964-01-26',_binary '','2023-08-05 11:33:36',NULL),(449,'Baltazar Neftalí Cruz Gayosso','Baltazar Neftalí@outlook.com','86020408','Baltazar Neftalí_22','Hombre','1979-08-02',_binary '','2023-08-05 11:33:36',NULL),(450,'Carolina Ivana Maldonado Rosales','Carolina Ivana@live.com','75663623','Carolina Ivana_91','Mujer','2005-05-11',_binary '','2023-08-05 11:33:36',NULL),(451,'Antonio Neftalí Guzmán Nava','Antonio Neftalí@gmail.com','88998662','Antonio Neftalí_11','Hombre','1969-11-04',_binary '','2023-08-05 11:33:36',NULL),(452,'Esther Gayosso Díaz','Esther@live.com','99023774','Esther_100','Mujer','1966-08-28',_binary '','2023-08-05 11:33:36',NULL),(453,'Daniel Márquez Nuñez','Daniel@live.com','69780748','Daniel_59','Hombre','1974-03-17',_binary '','2023-08-05 11:33:36',NULL),(454,'Karla Yara Sampayo López','Karla Yara@gmail.com','12052978','Karla Yara_84','Mujer','1976-06-08',_binary '','2023-08-05 11:33:36',NULL),(455,'Laura Daniela Yañez Lara','Laura Daniela@hotmail.com','68452990','Laura Daniela_63','Mujer','1969-05-11',_binary '','2023-08-05 11:33:36',NULL),(456,'Yara Lara Luna','Yara@live.com','08127931','Yara_70','Mujer','1990-02-16',_binary '','2023-08-05 11:33:36',NULL),(457,'Gerardo Luna Acosta','Gerardo@live.com','21281511','Gerardo_59','Hombre','1971-10-01',_binary '','2023-08-05 11:33:36',NULL),(458,'Ramón Alejandro Gómez Campos','Ramón Alejandro@outlook.com','51283054','Ramón Alejandro_97','Hombre','1982-02-13',_binary '','2023-08-05 11:33:36',NULL),(459,'Bernardo Medina Guerrero','Bernardo@hotmail.com','52519263','Bernardo_16','Hombre','1999-02-24',_binary '','2023-08-05 11:33:36',NULL),(460,'Natalia Zapata Delgado','Natalia@gmail.com','58679452','Natalia_86','Mujer','1994-09-04',_binary '','2023-08-05 11:33:36',NULL),(461,'Berenice Gayosso Márquez','Berenice@hotmail.com','56453002','Berenice_37','Mujer','1964-03-19',_binary '','2023-08-05 11:33:36',NULL),(462,'Alejandra Galilea Sandoval León','Alejandra Galilea@hotmail.com','43225904','Alejandra Galilea_87','Mujer','1974-10-12',_binary '','2023-08-05 11:33:36',NULL),(463,'Natalia Quetzálli Velazquez Martínez','Natalia Quetzálli@live.com','81469977','Natalia Quetzálli_77','Mujer','1998-07-13',_binary '','2023-08-05 11:33:36',NULL),(464,'Paola Romero Zapata','Paola@outlook.com','52832194','Paola_43','Mujer','1968-12-07',_binary '','2023-08-05 11:33:36',NULL),(465,'Isabel Delgado Méndez','Isabel@live.com','53017287','Isabel_64','Mujer','1971-08-23',_binary '','2023-08-05 11:33:36',NULL),(466,'Héctor Luna Kuno','Héctor@hotmail.com','61721195','Héctor_70','Hombre','1990-07-09',_binary '','2023-08-05 11:33:36',NULL),(467,'Renata Vargas de la Cruz','Renata@outlook.com','60547527','Renata_36','Mujer','2002-02-21',_binary '','2023-08-05 11:33:36',NULL),(468,'Uriel Gonzálo Briones Cruz','Uriel Gonzálo@gmail.com','77361722','Uriel Gonzálo_19','Hombre','1970-03-22',_binary '','2023-08-05 11:33:36',NULL),(469,'Wendy Natalia Juárez Márquez','Wendy Natalia@outlook.com','62447717','Wendy Natalia_20','Mujer','1966-07-08',_binary '','2023-08-05 11:33:36',NULL),(470,'María Carrillo Vázquez','María@outlook.com','10598538','María_16','Mujer','1968-07-27',_binary '','2023-08-05 11:33:36',NULL),(471,'Berenice Fatima Aguilar de la Cruz','Berenice Fatima@hotmail.com','97152449','Berenice Fatima_73','Mujer','1976-02-06',_binary '','2023-08-05 11:33:36',NULL),(472,'Karen Vega Contreras','Karen@hotmail.com','70016611','Karen_34','Mujer','1970-03-21',_binary '','2023-08-05 11:33:36',NULL),(473,'Sofía Ximénez Jiménez','Sofía@live.com','83356573','Sofía_32','Mujer','1984-02-04',_binary '','2023-08-05 11:33:36',NULL),(474,'Uziel López Santiago','Uziel@live.com','06224682','Uziel_97','Hombre','1995-01-17',_binary '','2023-08-05 11:33:36',NULL),(475,'Fernando Zacek de la Cruz Padilla','Fernando Zacek@gmail.com','10132276','Fernando Zacek_15','Hombre','1973-05-04',_binary '','2023-08-05 11:33:36',NULL),(476,'Hugo Dylan Briones Soto','Hugo Dylan@outlook.com','43420239','Hugo Dylan_12','Hombre','1988-01-03',_binary '','2023-08-05 11:33:36',NULL),(477,'Francisco Solís Vega','Francisco@outlook.com','59231677','Francisco_86','Hombre','1990-04-27',_binary '','2023-08-05 11:33:36',NULL),(478,'Ofelia Ruíz Morales','Ofelia@hotmail.com','34959238','Ofelia_53','Mujer','1981-12-31',_binary '','2023-08-05 11:33:36',NULL),(479,'Gonzálo Rodríguez Navarro','Gonzálo@hotmail.com','03604931','Gonzálo_95','Hombre','1992-10-19',_binary '','2023-08-05 11:33:36',NULL),(480,'Rosa Bautista Mendoza','Rosa@gmail.com','92245320','Rosa_83','Mujer','1979-01-04',_binary '','2023-08-05 11:33:36',NULL),(481,'Valeria Álvarez Velazquez','Valeria@hotmail.com','14937735','Valeria_2','Mujer','1994-04-12',_binary '','2023-08-05 11:33:36',NULL),(482,'Neftalí Benito Navarro Ruíz','Neftalí Benito@outlook.com','57218680','Neftalí Benito_65','Hombre','2004-07-20',_binary '','2023-08-05 11:33:36',NULL),(483,'Pablo Gustavo Pérez Juárez','Pablo Gustavo@hotmail.com','61513154','Pablo Gustavo_40','Hombre','1986-05-16',_binary '','2023-08-05 11:33:36',NULL),(484,'Óscar Torres Ortega','Óscar@live.com','07621803','Óscar_71','Hombre','2004-10-01',_binary '','2023-08-05 11:33:36',NULL),(485,'Pedro Contreras Solís','Pedro@outlook.com','14671310','Pedro_38','Hombre','1983-12-28',_binary '','2023-08-05 11:33:36',NULL),(486,'Xavier Benito Méndez Estrada','Xavier Benito@live.com','56584936','Xavier Benito_7','Hombre','1980-11-11',_binary '','2023-08-05 11:33:36',NULL),(487,'Alondra López Vázquez','Alondra@outlook.com','36186839','Alondra_18','Mujer','1997-02-27',_binary '','2023-08-05 11:33:36',NULL),(488,'Salomé Wendy Juárez León','Salomé Wendy@hotmail.com','06826566','Salomé Wendy_26','Mujer','1972-12-04',_binary '','2023-08-05 11:33:36',NULL),(489,'Evelyn Luna González','Evelyn@hotmail.com','93970839','Evelyn_24','Mujer','1988-07-01',_binary '','2023-08-05 11:33:36',NULL),(490,'Jazmín Tanya Mendoza García','Jazmín Tanya@gmail.com','73190496','Jazmín Tanya_14','Mujer','1981-10-08',_binary '','2023-08-05 11:33:36',NULL),(491,'Manuel Mendoza Muñoz','Manuel@hotmail.com','18042867','Manuel_41','Hombre','1994-07-24',_binary '','2023-08-05 11:33:36',NULL),(492,'Valeria Rosas Maldonado','Valeria@gmail.com','21080887','Valeria_11','Mujer','1975-04-26',_binary '','2023-08-05 11:33:36',NULL),(493,'Óscar Uriel Espinoza Martínez','Óscar Uriel@hotmail.com','60362263','Óscar Uriel_41','Hombre','1991-10-01',_binary '','2023-08-05 11:33:36',NULL),(494,'Denisse Cruz Acosta','Denisse@hotmail.com','04944872','Denisse_29','Mujer','2005-07-09',_binary '','2023-08-05 11:33:36',NULL),(495,'Esther Moreno Yañez','Esther@live.com','91938318','Esther_41','Mujer','1988-01-06',_binary '','2023-08-05 11:33:36',NULL),(496,'Hanna Romero Sánchez','Hanna@hotmail.com','49415108','Hanna_90','Mujer','1967-01-06',_binary '','2023-08-05 11:33:36',NULL),(497,'Antonio Vargas Gutiérrez','Antonio@outlook.com','41507721','Antonio_93','Hombre','1967-07-07',_binary '','2023-08-05 11:33:36',NULL),(498,'Patricia Galilea Morales Peña','Patricia Galilea@outlook.com','19238467','Patricia Galilea_84','Mujer','1997-05-23',_binary '','2023-08-05 11:33:36',NULL),(499,'Dylan Marco Delgado Zapata','Dylan Marco@live.com','97889173','Dylan Marco_81','Hombre','1978-04-01',_binary '','2023-08-05 11:33:36',NULL),(500,'Alejandro Padilla Velazquez','Alejandro@hotmail.com','85270080','Alejandro_8','Hombre','1989-08-05',_binary '','2023-08-05 11:33:36',NULL);
/*!40000 ALTER TABLE `tbb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_usuario` AFTER INSERT ON `tbb_usuario` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_usuario', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo USUARIO con el ID: ', NEW.idUsuario, ', NOMBRE: ', NEW.Nombre, ', EMAIL: ', NEW.Email), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_usuario_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_usuario` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_usuario` AFTER UPDATE ON `tbb_usuario` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_usuario', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un USUARIO con el ID: ', NEW.idUsuario, ', NOMBRE: ', NEW.Nombre, ', EMAIL: ', NEW.Email, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_usuario` AFTER DELETE ON `tbb_usuario` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbb_usuario', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un USUARIO con el ID: ', OLD.idUsuario, ', NOMBRE: ', OLD.Nombre, ', EMAIL: ', OLD.Email, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbc_anime_genero`
--

DROP TABLE IF EXISTS `tbc_anime_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_anime_genero` (
  `idAnime_Genero` int NOT NULL AUTO_INCREMENT,
  `Genero_id` int NOT NULL,
  `Anime_id` int NOT NULL,
  PRIMARY KEY (`idAnime_Genero`),
  UNIQUE KEY `idAnime_Genero_UNIQUE` (`idAnime_Genero`),
  KEY `fk_genero` (`Genero_id`),
  KEY `fk_anime` (`Anime_id`),
  CONSTRAINT `fk_anime` FOREIGN KEY (`Anime_id`) REFERENCES `tbb_anime` (`idAnime`),
  CONSTRAINT `fk_genero` FOREIGN KEY (`Genero_id`) REFERENCES `tbb_genero` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_anime_genero`
--

LOCK TABLES `tbc_anime_genero` WRITE;
/*!40000 ALTER TABLE `tbc_anime_genero` DISABLE KEYS */;
INSERT INTO `tbc_anime_genero` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,6,2),(8,2,2),(9,3,2),(10,7,2),(11,8,3),(12,9,3),(13,6,4),(14,10,4),(15,11,4),(16,1,5),(17,6,5),(18,3,5),(19,9,5),(20,10,5),(21,12,5),(22,11,5),(23,6,6),(24,7,6),(25,11,6);
/*!40000 ALTER TABLE `tbc_anime_genero` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_anime_genero` AFTER INSERT ON `tbc_anime_genero` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_anime_genero', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo enlace ANIME-GENERO con el ID: ', NEW.idAnime_Genero, ', GENERO_ID: ', NEW.Genero_id, ' y ANIME_ID: ', NEW.Anime_id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_anime_genero` AFTER UPDATE ON `tbc_anime_genero` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_anime_genero', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un enlace ANIME-GENERO con el ID: ', NEW.idAnime_Genero, ', GENERO_ID: ', NEW.Genero_id, ' y ANIME_ID: ', NEW.Anime_id, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_anime_genero` AFTER DELETE ON `tbc_anime_genero` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_anime_genero', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un enlace ANIME-GENERO con el ID: ', OLD.idAnime_Genero, ', GENERO_ID: ', OLD.Genero_id, ' y ANIME_ID: ', OLD.Anime_id, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbc_lista_animes`
--

DROP TABLE IF EXISTS `tbc_lista_animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_lista_animes` (
  `idLista_Animes` int NOT NULL AUTO_INCREMENT,
  `Anime_id` int NOT NULL,
  `Miembro_id` int NOT NULL,
  `Favorito` bit(1) NOT NULL DEFAULT b'0',
  `Pendiente` bit(1) NOT NULL DEFAULT b'0',
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idLista_Animes`),
  UNIQUE KEY `idLista_Animes_UNIQUE` (`idLista_Animes`),
  KEY `fk_anime_miembro` (`Anime_id`),
  KEY `fk_miembro` (`Miembro_id`),
  CONSTRAINT `fk_anime_miembro` FOREIGN KEY (`Anime_id`) REFERENCES `tbb_anime` (`idAnime`),
  CONSTRAINT `fk_miembro` FOREIGN KEY (`Miembro_id`) REFERENCES `tbb_miembro` (`idMiembro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_lista_animes`
--

LOCK TABLES `tbc_lista_animes` WRITE;
/*!40000 ALTER TABLE `tbc_lista_animes` DISABLE KEYS */;
INSERT INTO `tbc_lista_animes` VALUES (5,8,5,_binary '',_binary '\0',_binary '','2023-08-10 00:00:00','2023-08-10 00:00:00');
/*!40000 ALTER TABLE `tbc_lista_animes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_lista_animes` AFTER INSERT ON `tbc_lista_animes` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_lista_animes', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo enlace LISTA-ANIME con el ID: ', NEW.idLista_Animes, ', ANIME_ID: ', NEW.Anime_id, ', MIEMBRO_ID: ', NEW.Miembro_id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbc_lista_animes_BEFORE_UPDATE` BEFORE UPDATE ON `tbc_lista_animes` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_lista_animes` AFTER UPDATE ON `tbc_lista_animes` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_lista_animes', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un enlace LISTA-ANIME con el ID: ', NEW.idLista_Animes, ', ANIME_ID: ', NEW.Anime_id, ', MIEMBRO_ID: ', NEW.Miembro_id, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_lista_animes` AFTER DELETE ON `tbc_lista_animes` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_lista_animes', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un enlace LISTA-ANIME con el ID: ', OLD.idLista_Animes, ', ANIME_ID: ', OLD.Anime_id, ', MIEMBRO_ID: ', OLD.Miembro_id, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbc_rating`
--

DROP TABLE IF EXISTS `tbc_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_rating` (
  `idRating` int NOT NULL AUTO_INCREMENT,
  `Calificacion` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Anime_id` int NOT NULL,
  `Miembro_id` int NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idRating`),
  UNIQUE KEY `idRating_UNIQUE` (`idRating`),
  KEY `fk_anime_rating` (`Anime_id`),
  KEY `fk_miembro_rating` (`Miembro_id`),
  CONSTRAINT `fk_anime_rating` FOREIGN KEY (`Anime_id`) REFERENCES `tbb_anime` (`idAnime`),
  CONSTRAINT `fk_miembro_rating` FOREIGN KEY (`Miembro_id`) REFERENCES `tbb_miembro` (`idMiembro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_rating`
--

LOCK TABLES `tbc_rating` WRITE;
/*!40000 ALTER TABLE `tbc_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_create_rating` AFTER INSERT ON `tbc_rating` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_rating', 'Create', CONCAT('El usuario: ', USER(), ' ha creado un nuevo RATING con el ID: ', NEW.idRating, ', CALIFICACIÓN: ', NEW.Calificacion, ', ANIME_ID: ', NEW.Anime_id, ', MIEMBRO_ID: ', NEW.Miembro_id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbc_rating_BEFORE_UPDATE` BEFORE UPDATE ON `tbc_rating` FOR EACH ROW BEGIN
SET NEW.Fecha_Actualizacion = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_rating` AFTER UPDATE ON `tbc_rating` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_rating', 'Update', CONCAT('El usuario: ', USER(), ' ha actualizado un RATING con el ID: ', NEW.idRating, ', CALIFICACIÓN: ', NEW.Calificacion, ', ANIME_ID: ', NEW.Anime_id, ', MIEMBRO_ID: ', NEW.Miembro_id, ' y FECHA DE ACTUALIZACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_rating` AFTER DELETE ON `tbc_rating` FOR EACH ROW BEGIN
  INSERT INTO tbi_bitacora (usuario_bd, tabla, operacion, descripcion_completa, fecha_hora)
  VALUES (USER(), 'tbc_rating', 'Delete', CONCAT('El usuario: ', USER(), ' ha eliminado un RATING con el ID: ', OLD.idRating, ', CALIFICACIÓN: ', OLD.Calificacion, ', ANIME_ID: ', OLD.Anime_id, ', MIEMBRO_ID: ', OLD.Miembro_id, ' y FECHA DE ELIMINACIÓN: ', NOW()), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbi_bitacora`
--

DROP TABLE IF EXISTS `tbi_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_bitacora` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `usuario_bd` varchar(80) NOT NULL,
  `tabla` varchar(80) NOT NULL,
  `operacion` enum('Create','Read','Update','Delete') NOT NULL,
  `descripcion_completa` text NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estatus` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_bitacora`
--

LOCK TABLES `tbi_bitacora` WRITE;
/*!40000 ALTER TABLE `tbi_bitacora` DISABLE KEYS */;
INSERT INTO `tbi_bitacora` VALUES (2,'root@localhost','tbb_miembro','Delete','El usuario: root@localhost ha eliminado un MIEMBRO con el ID: 1 y USUARIO_ID: 1 y FECHA DE ELIMINACIÓN: 2023-08-10 19:17:14','2023-08-10 19:17:14',_binary ''),(4,'root@localhost','tbb_miembro','Create','El usuario: root@localhost ha creado un nuevo MIEMBRO con el ID: 504 y USUARIO_ID: 1','2023-08-10 19:19:21',_binary ''),(5,'root@localhost','tbb_miembro','Update','El usuario: root@localhost ha actualizado un MIEMBRO con el ID: 505 y USUARIO_ID: 12 y FECHA DE ACTUALIZACIÓN: 2023-08-10 19:21:00','2023-08-10 19:21:00',_binary ''),(6,'root@localhost','tbb_genero','Create','El usuario: root@localhost ha creado un nuevo GÉNERO con el ID: 13 y NOMBRE: Yuri','2023-08-10 19:25:43',_binary ''),(7,'root@localhost','tbb_genero','Create','El usuario: root@localhost ha creado un nuevo GÉNERO con el ID: 14 y NOMBRE: Yuris','2023-08-10 19:27:10',_binary ''),(8,'root@localhost','tbb_genero','Update','El usuario: root@localhost ha actualizado un GÉNERO con el ID: 15 y NOMBRE: one y FECHA DE ACTUALIZACIÓN: 2023-08-10 19:29:04','2023-08-10 19:29:04',_binary ''),(12,'root@localhost','tbb_temporada','Create','El usuario: root@localhost ha creado una nueva TEMPORADA con el ID: 4, NÚMERO: 1, FECHA DE EMISIÓN: 2023-08-11','2023-08-10 19:47:56',_binary ''),(13,'root@localhost','tbb_temporada','Delete','El usuario: root@localhost ha eliminado una TEMPORADA con el ID: 4, NÚMERO: 1 y FECHA DE ELIMINACIÓN: 2023-08-10 20:07:09','2023-08-10 20:07:09',_binary ''),(14,'root@localhost','tbb_temporada','Create','El usuario: root@localhost ha creado una nueva TEMPORADA con el ID: 5, NÚMERO: 1, FECHA DE EMISIÓN: 2020-08-11','2023-08-10 20:09:38',_binary ''),(15,'root@localhost','tbb_episodio','Create','El usuario: root@localhost ha creado un nuevo EPISODIO con el ID: 2 y NOMBRE: Barghest y FECHA DE ESTRENO: 2023-08-11','2023-08-10 20:12:09',_binary ''),(16,'root@localhost','tbb_episodio','Update','El usuario: root@localhost ha actualizado un EPISODIO con el ID: 2 y NOMBRE: morgana y FECHA DE ACTUALIZACIÓN: 2023-08-10 20:17:12','2023-08-10 20:17:12',_binary ''),(17,'root@localhost','tbb_episodio','Delete','El usuario: root@localhost ha eliminado un EPISODIO con el ID: 2 y NOMBRE: morgana y FECHA DE ELIMINACIÓN: 2023-08-10 20:23:43','2023-08-10 20:23:43',_binary ''),(25,'root@localhost','tbb_origen','Update','El usuario: root@localhost ha actualizado un ORIGEN con el ID: 1, AUTOR: asuka, NOMBRE: rei, TIPO: NovelaL y ANIME_ID: 1 y FECHA DE ACTUALIZACIÓN: 2023-08-10 20:40:52','2023-08-10 20:40:52',_binary ''),(28,'root@localhost','tbb_usuario','Create','El usuario: root@localhost ha creado un nuevo USUARIO con el ID: 502, NOMBRE: Luis, EMAIL: luis@hotmail.com','2023-08-10 21:32:48',_binary ''),(29,'root@localhost','tbb_usuario','Update','El usuario: root@localhost ha actualizado un USUARIO con el ID: 502, NOMBRE: Luisillo, EMAIL: luis97@hotmail.com y FECHA DE ACTUALIZACIÓN: 2023-08-10 21:35:11','2023-08-10 21:35:11',_binary ''),(30,'root@localhost','tbb_usuario','Delete','El usuario: root@localhost ha eliminado un USUARIO con el ID: 502, NOMBRE: Luisillo, EMAIL: luis97@hotmail.com y FECHA DE ELIMINACIÓN: 2023-08-10 21:37:11','2023-08-10 21:37:11',_binary ''),(34,'root@localhost','tbb_origen','Create','El usuario: root@localhost ha creado un nuevo ORIGEN con el ID: 16, AUTOR: eli, NOMBRE: kahabell, TIPO: Manga y ANIME_ID: 16','2023-08-10 21:46:04',_binary ''),(36,'root@localhost','tbc_lista_animes','Create','El usuario: root@localhost ha creado un nuevo enlace LISTA-ANIME con el ID: 3, ANIME_ID: 1, MIEMBRO_ID: 3','2023-08-10 22:24:22',_binary ''),(37,'root@localhost','tbc_lista_animes','Update','El usuario: root@localhost ha actualizado un enlace LISTA-ANIME con el ID: 3, ANIME_ID: 1, MIEMBRO_ID: 3 y FECHA DE ACTUALIZACIÓN: 2023-08-10 22:27:50','2023-08-10 22:27:50',_binary ''),(39,'root@localhost','tbc_lista_animes','Create','El usuario: root@localhost ha creado un nuevo enlace LISTA-ANIME con el ID: 5, ANIME_ID: 8, MIEMBRO_ID: 5','2023-08-10 22:35:15',_binary ''),(40,'root@localhost','tbc_lista_animes','Delete','El usuario: root@localhost ha eliminado un enlace LISTA-ANIME con el ID: 3, ANIME_ID: 1, MIEMBRO_ID: 3 y FECHA DE ELIMINACIÓN: 2023-08-10 22:42:57','2023-08-10 22:42:57',_binary ''),(41,'root@localhost','tbb_origen','Delete','El usuario: root@localhost ha eliminado un ORIGEN con el ID: 5, AUTOR: 	Hirohiko Araki, NOMBRE: ジョジョの奇妙な冒険, TIPO: Manga y ANIME_ID: 6 y FECHA DE ELIMINACIÓN: 2023-08-10 22:44:11','2023-08-10 22:44:11',_binary ''),(42,'root@localhost','tbc_rating','Create','El usuario: root@localhost ha creado un nuevo RATING con el ID: 1, CALIFICACIÓN: 4.00, ANIME_ID: 1, MIEMBRO_ID: 2','2023-08-10 23:05:46',_binary ''),(43,'root@localhost','tbc_rating','Update','El usuario: root@localhost ha actualizado un RATING con el ID: 1, CALIFICACIÓN: 3.00, ANIME_ID: 4, MIEMBRO_ID: 2 y FECHA DE ACTUALIZACIÓN: 2023-08-10 23:07:08','2023-08-10 23:07:08',_binary ''),(44,'root@localhost','tbc_rating','Delete','El usuario: root@localhost ha eliminado un RATING con el ID: 1, CALIFICACIÓN: 3.00, ANIME_ID: 4, MIEMBRO_ID: 2 y FECHA DE ELIMINACIÓN: 2023-08-10 23:08:03','2023-08-10 23:08:03',_binary '');
/*!40000 ALTER TABLE `tbi_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'caricatoons_procedures'
--

--
-- Dumping routines for database 'caricatoons_procedures'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_bandera_porcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_bandera_porcentaje`(v_porcentaje INT) RETURNS int
    DETERMINISTIC
BEGIN
   /* Declaración de una variable con un valor aleatorio de entre 0 y 100*/
   DECLARE v_valor INT DEFAULT (fn_numero_aleatorio_rangos(0,100));
   /* Declaración de una variable booleana con valor inicial de falso */
   DECLARE v_bandera BOOLEAN DEFAULT false;
   
   IF v_valor <= v_porcentaje THEN 
      SET v_bandera = true;
   END IF;
   RETURN v_bandera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_apellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_apellido`() RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE v_apellido_generado VARCHAR(50) DEFAULT NULL;

	SET v_apellido_generado = ELT(fn_numero_aleatorio_rangos(1,100), 
			"Álvarez","Briones","Cruz","Díaz","Estrada", "Fuentes","Gayosso","Hernández","Ibarra","Jiménez",
			"Kuno","López","Martínez","Ortíz","Paredes", "Quiróz","Ramírez","Sampayo","Téllez","Urbina",
			"Vargas","Wurtz","Ximénez","Yañez","Zapata", "García","González","Pérez","Rodríguez","Sánchez",
            "Romero","Gómez","Flores","Morales","Vázquez", "Reyes","Torres","Gutiérrez","Ruíz","Mendoza",
            "Aguilar","Moreno","Castillo","Méndez","Chávez", "Rivera","Juárez","Ramos","Domínguez","Herrera",
            "Medina","Castro","Vargas","Guzmán","Velazquez", "Muñoz","Rojas","de la Cruz","Contreras","Salazar",
            "Luna","Ortega","Santiago","Guerrero","Bautista", "Cortés","Soto","Alvarado","Espinoza","Lara",
            "Ávila","Ríos","Cervantes","Silva","Delgado", "Vega","Márquez","Sandoval","Carrillo","León",
            "Mejía","Solís","Rosas","Valdéz","Nuñez", "Campos","Santos","Camacho","Navarro","Peña",
            "Maldonado","Rosales","Acosta","Miranda","Trejo", "Valencia","Nava","Pacheco","Huerta","Padilla");

RETURN v_apellido_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre`(v_genero VARCHAR(10)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(50) DEFAULT NULL;
    DECLARE v_nombre2_generado VARCHAR(50) DEFAULT NULL;  
    DECLARE v_bandera_nombrecompuesto BOOLEAN DEFAULT (fn_bandera_porcentaje(35));
	
    SET v_nombre_generado = fn_genera_nombre_simple(v_genero);
    
    IF v_bandera_nombrecompuesto THEN 
		WHILE v_nombre2_generado IS NULL OR v_nombre2_generado = v_nombre_generado DO
             SET v_nombre2_generado = fn_genera_nombre_simple(v_genero);
        END WHILE;
        SET v_nombre_generado = CONCAT(v_nombre_generado," ", v_nombre2_generado);
	END IF;
    
    RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_simple`(v_genero VARCHAR(10)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

DECLARE v_nombre_generado VARCHAR(100) DEFAULT NULL;

		IF v_genero = "Hombre" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Antonio", "Baltazar", "Carlos", "Daniel", "Ernesto", "Fernando", "Gustavo", "Hugo", "Ignacio" ,"Jaime",
                "Karim", "Lorenzo", "Manuel", "Nabor", "Octavio", "Pablo", "Quetzálcoatl", "Ramón", "Saúl" ,"Tadeo",
                "Uriel", "Valentín", "Yahir", "Xavier", "Zacek", "Alejandro", "Bernardo", "Camilo", "Dylan" ,"Edgar",
                "Francisco", "Gerardo", "Héctor", "Iván", "Josafat", "Karlo", "Luis", "Marco", "Neftalí" ,"Óscar",
                "Pedro", "Raúl", "Salvador", "Timoteo", "Uziel", "Víctor", "William", "Germán", "Benito","Gonzálo");
		ELSEIF v_genero = "Mujer" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Alondra", "Berenice", "Carla", "Daniela", "Evelyn", "Fernanda", "Gabriela", "Hanna", "Isabel" ,"Jazmín",
                "Karen", "Laura", "María", "Natalia", "Olga", "Patricia", "Quetzálli", "Renata", "Sandra" ,"Tamara",
                "Ursula", "Valeria", "Yara", "Xochítl", "Zara", "Alma", "Barbara", "Carolina", "Denisse" ,"Esther",
                "Fatima", "Galilea", "Helena", "Ivana", "Jaqueline", "Karla", "Lorena", "Magdalena", "Nadia" ,"Ofelia",
                "Paola", "Rosa", "Salomé", "Tanya", "Alejandra", "Josefa", "Wendy", "Valentina", "Elena","Sofía");
		END IF;
        
RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(v_limite_inferior int,
 v_limite_superior INT) RETURNS int
    DETERMINISTIC
BEGIN
     DECLARE v_numero_generado INT DEFAULT FLOOR(Rand()* (v_limite_superior-v_limite_inferior+1)+v_limite_inferior);
     SET @numero_generado = v_numero_generado;
RETURN v_numero_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_estatus_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_estatus_bd`()
BEGIN
	(SELECT "Usuario" as Tabla,	 COUNT(*) as Total_Registros FROM usuario)
    union
    (SELECT "Miembro" as Tabla,	 COUNT(*) as Total_Registros FROM miembro);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_genera_temporadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_temporadas`()
BEGIN
 DECLARE v_temporada_num varchar(60);
 DECLARE v_anime_id int;
 DECLARE v_anime_num int default (SELECT count(*) FROM tbb_anime);
 DECLARE v_anime_nombre varchar(60);
 DECLARE i INT DEFAULT 1;
 DECLARE e INT;
 DECLARE v_fecha_anime date;
 WHILE i <= v_anime_num DO
	set e=1;
	set v_temporada_num = (SELECT temporadas FROM tbb_anime where idAnime = i);
    SET v_anime_id = (SELECT idAnime FROM tbb_anime where idAnime = i);
    SET v_anime_nombre = (SELECT Nombre FROM tbb_anime where idAnime = i);
    set v_temporada_num = (SELECT temporadas FROM tbb_anime where idAnime = i);
    set v_fecha_anime = (SELECT Fecha_Inicio FROM tbb_anime where idAnime = i);
    select concat("Numero de temporadas ",v_temporada_num," anime id ",v_anime_id," nombre del anime ",v_anime_nombre) as mensaje;     
     WHILE e <= v_temporada_num DO
		INSERT INTO tbb_temporada (`Numero`, `Fecha_Emision`, `Sinopsis`, `idAnime`) 
		VALUES (e, v_fecha_anime, CONCAT(v_anime_nombre,' Temporada ',e), v_anime_id);
        select concat("Insertando temporada",e," de fecha ", v_fecha_anime, CONCAT(v_anime_nombre,' Temporada ',e)," Con id ", v_anime_id) as mensaje;
        SET e=e+1;
	 END WHILE;
     SET i=i+1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inserta_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inserta_usuario`()
BEGIN
DECLARE v_nombre VARCHAR(40);
    DECLARE v_primer_apellido VARCHAR(50) DEFAULT fn_genera_apellido();
    DECLARE v_segundo_apellido VARCHAR(50) DEFAULT fn_genera_apellido();
    DECLARE v_email VARCHAR(50);
    declare v_email_aleatorio VARCHAR(60) default ELT(fn_numero_aleatorio_rangos(1,4), "gmail", "outlook", "hotmail","live");
	DECLARE v_contrasenia VARCHAR(50);
	DECLARE v_nickname VARCHAR(50);
    DECLARE v_genero VARCHAR(10) DEFAULT ELT(fn_numero_aleatorio_rangos(1,2), "Hombre", "Mujer");
    DECLARE v_nombre_generado VARCHAR(50) DEFAULT fn_genera_nombre(v_genero);
    DECLARE v_idMiembro int;
	DECLARE v_fecha_nacimiento VARCHAR(50);
	DECLARE min_fecha DATE;
	DECLARE max_fecha DATE;
    DECLARE v_fecha_actual DATE;
	SET v_fecha_actual = DATE_SUB(NOW(), INTERVAL 18 YEAR);
	SET min_fecha = DATE_SUB(NOW(), INTERVAL 60 YEAR);
	SET max_fecha = DATE_SUB(NOW(), INTERVAL 18 YEAR);
    SET v_contrasenia = concat(fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9),fn_numero_aleatorio_rangos(0,9));
	
	SET v_fecha_nacimiento = DATE_ADD(min_fecha, INTERVAL FLOOR(RAND() * DATEDIFF(max_fecha, min_fecha)) DAY);
  
	WHILE YEAR(v_fecha_nacimiento) > v_fecha_actual DO
		SET v_fecha_nacimiento = DATE_SUB(v_fecha_nacimiento, INTERVAL 1 YEAR);
	END WHILE;
    
    SET v_nombre = CONCAT(v_nombre_generado," ", v_primer_apellido, " ",v_segundo_apellido);
    
    set v_nickname = concat(v_nombre_generado,"_",fn_numero_aleatorio_rangos(1,100));
	
    SET v_email = concat(v_nombre_generado,"@", v_email_aleatorio,".com");
    
    SELECT CONCAT("Usuario de nombre ",v_nombre," del genero: ", v_genero, " nacido el: ",v_fecha_nacimiento) as Mensaje;
	INSERT INTO tbb_usuario (`Nombre`, `Email`, `Contrasenia`, `Nickname`, `Genero`, `Fecha_Nacimiento`) 
    VALUES (v_nombre, v_email, v_contrasenia, v_nickname, v_genero, v_fecha_nacimiento);
	
    
    SET v_idMiembro = (SELECT idUsuario FROM tbb_usuario ORDER BY idUsuario desc limit 1);
    
    INSERT INTO tbb_miembro (`Usuario_id`)
    VALUES (v_idMiembro);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inserta_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inserta_usuarios`(v_cuantos INT)
BEGIN
DECLARE i INT DEFAULT 1;
	WHILE i <= v_cuantos DO 
		CALL sp_inserta_usuario();
		SET i=i+1;
	END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_limpia_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_limpia_bd`(v_password VARCHAR(10))
BEGIN
    IF v_password = "180610" THEN
		DELETE FROM tbb_miembro;
        ALTER TABLE tbb_miembro auto_increment = 0;
    
        DELETE FROM tbb_usuario;
        ALTER TABLE tbb_usuario auto_increment = 0;
    ELSE 
		SELECT ("La contraseña es incorrecta.") AS ErrorMessage;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-10 23:42:46
