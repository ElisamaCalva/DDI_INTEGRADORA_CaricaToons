CREATE DATABASE  IF NOT EXISTS `caricatoons_procedures` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `caricatoons_procedures`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: caricatoons_procedures
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `Nombre` text NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_genero`
--

LOCK TABLES `tbb_genero` WRITE;
/*!40000 ALTER TABLE `tbb_genero` DISABLE KEYS */;
INSERT INTO `tbb_genero` VALUES (1,'Acción',NULL,_binary '','2023-07-23 03:15:59',NULL),(2,'Ciencia ficción',NULL,_binary '','2023-07-23 03:15:59',NULL),(3,'Comedia',NULL,_binary '','2023-07-23 03:15:59',NULL),(4,'Parodia',NULL,_binary '','2023-07-23 03:15:59',NULL),(5,'Comedia dramática',3,_binary '','2023-07-23 03:16:32',NULL),(6,'Aventuras',NULL,_binary '','2023-07-23 03:17:20',NULL),(7,'Fantasía',NULL,_binary '','2023-07-23 03:17:53',NULL),(8,'Deportes',NULL,_binary '','2023-07-23 03:18:26',NULL),(9,'Drama',NULL,_binary '','2023-07-23 03:19:27',NULL),(10,'Fantasía oscura',7,_binary '','2023-07-23 03:22:52',NULL),(11,'Sobrenatural',NULL,_binary '','2023-07-23 03:23:28',NULL),(12,'Histórico',NULL,_binary '','2023-07-23 03:30:34',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_miembro`
--

LOCK TABLES `tbb_miembro` WRITE;
/*!40000 ALTER TABLE `tbb_miembro` DISABLE KEYS */;
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
  `Autor` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Tipo` enum('NovelaL','NovelaW','Manga') NOT NULL,
  `idAnime` int NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idOrigen`),
  UNIQUE KEY `idOrigen_UNIQUE` (`idOrigen`),
  KEY `fk_anime_origen` (`idAnime`),
  CONSTRAINT `fk_anime_origen` FOREIGN KEY (`idAnime`) REFERENCES `tbb_anime` (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='Origen\n\nContiene:\n\nAutor (Escritor, guionista principal)\nNombre(Si el nombre cambia)\nTipo (Novela ligera, Novela web, Manga)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_origen`
--

LOCK TABLES `tbb_origen` WRITE;
/*!40000 ALTER TABLE `tbb_origen` DISABLE KEYS */;
INSERT INTO `tbb_origen` VALUES (1,'	Hideaki Sorachi','銀魂','Manga',1,_binary '','2023-07-23 03:43:27',NULL),(2,'Eiichirō Oda','ワンピース','Manga',2,_binary '','2023-07-23 03:52:54',NULL),(3,'Gege Akutami','呪術廻戦','Manga',4,_binary '','2023-07-23 03:54:34',NULL),(4,'Koyoharu Gotōge','鬼滅の刃','Manga',5,_binary '','2023-07-23 03:55:34',NULL),(5,'	Hirohiko Araki','ジョジョの奇妙な冒険','Manga',6,_binary '','2023-07-23 03:56:41',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_temporada`
--

LOCK TABLES `tbb_temporada` WRITE;
/*!40000 ALTER TABLE `tbb_temporada` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuario`
--

LOCK TABLES `tbb_usuario` WRITE;
/*!40000 ALTER TABLE `tbb_usuario` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_lista_animes`
--

LOCK TABLES `tbc_lista_animes` WRITE;
/*!40000 ALTER TABLE `tbc_lista_animes` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_bitacora`
--

LOCK TABLES `tbi_bitacora` WRITE;
/*!40000 ALTER TABLE `tbi_bitacora` DISABLE KEYS */;
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
/*!50003 DROP PROCEDURE IF EXISTS `sp_genera_episodio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_episodio`()
BEGIN
	DECLARE v_nombre_cap varchar(60);
    DECLARE v_estreno_fecha date;
    DECLARE v_temporada_id int;
    DECLARE v_anime_id int;
    DECLARE v_cantidad_temporadas int;
    DECLARE v_cantidad_capitulos int;
    DECLARE v_temporada INT;
    DECLARE i int;
    DECLARE e int;
    DECLARE a int;
    DECLARE v_cantidad_anime int default (SELECT count(*) FROM tbb_anime);
    select v_cantidad_anime as cantidad;
    SET i = 1;
    SET e = 1;
    
    
    WHILE i <= v_cantidad_anime DO
		SET a = 1;
		select i as contador;
        SET v_cantidad_temporadas = (SELECT Temporadas FROM tbb_anime where idAnime = i limit 1);
		SET v_cantidad_capitulos = (SELECT Total_Episodios FROM tbb_anime where idAnime = i limit 1);
		SET v_nombre_cap = (SELECT Nombre FROM tbb_anime where idAnime = i limit 1);
        select v_nombre_cap as nombre;
		SET v_estreno_fecha = (SELECT fecha_inicio FROM tbb_anime where idAnime = i limit 1);
		SET v_anime_id = (SELECT idAnime FROM tbb_anime where idAnime = i limit 1);
		SET v_temporada_id = (SELECT idTemporada FROM tbb_temporada where idAnime = i limit 1);
		SET v_temporada = (SELECT numero FROM tbb_temporada where idAnime= i limit 1);
        
			WHILE a <= v_cantidad_capitulos  DO
				SELECT CONCAT(v_nombre_cap,' episodio ', a,' de la temporada ',1) AS Mensaje;
				INSERT INTO tbb_episodio(`Nombre`, `Estreno`, `idTemporada`, `idAnime`) 
				VALUES (concat(v_nombre_cap,' episodio ', a,' temporada ',1), v_estreno_fecha, v_temporada_id, v_anime_id);
				set a = a+1;
            end while;
            
		set i = i+1;
        
    end while;
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
        
        DELETE FROM tbc_lista_animes;
        ALTER TABLE tbc_lista_animes auto_increment = 0;
        
        DELETE FROM tbc_rating;
        ALTER TABLE tbc_rating auto_increment = 0;
        
        DELETE FROM tbb_episodio;
        ALTER TABLE tbb_episodio auto_increment = 0;
        
        DELETE FROM tbb_temporada;
        ALTER TABLE tbb_temporada auto_increment = 0;
        
		DELETE FROM tbb_miembro;
        ALTER TABLE tbb_miembro auto_increment = 0;
    
        DELETE FROM tbb_usuario;
        ALTER TABLE tbb_usuario auto_increment = 0;
        
		DELETE FROM tbi_bitacora;
        ALTER TABLE tbi_bitacora auto_increment = 0;
        
    ELSE 
		SELECT ("La contraseña es incorrecta.") AS ErrorMessage;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_llenar_lista_animes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_llenar_lista_animes`()
BEGIN
    DECLARE v_anime_id int;
    DECLARE v_anime_cantidad int;
    DECLARE v_anime_id_cantidad int;
    DECLARE v_anime_id_aleatorio int;
    DECLARE v_anime_existe int;
    DECLARE v_miembro_id int;
    DECLARE v_lista_aleatorio int;
    DECLARE v_favorito int;
    DECLARE v_pendiente int;
    DECLARE i INT DEFAULT 1;
    DECLARE e INT DEFAULT 1;

    SELECT COUNT(*) INTO v_anime_cantidad FROM tbb_anime;
    SELECT COUNT(*) INTO v_miembro_id FROM tbb_miembro;

    WHILE i <= v_miembro_id DO
    select concat("El usuario ", v_miembro_id) as mensaje;
        SET e = 1;
        SET v_anime_id_cantidad = FLOOR(1 + RAND() * v_anime_cantidad);
        
        WHILE e <= v_anime_id_cantidad DO
        select concat("El usuario ", v_miembro_id, " con una cantidad de animes de ", v_anime_id_cantidad) as mensaje;
            SELECT idAnime INTO v_anime_id_aleatorio FROM tbb_anime ORDER BY RAND() LIMIT 1;

            SELECT COUNT(*) INTO v_anime_existe FROM tbc_lista_animes WHERE Anime_id = v_anime_id_aleatorio AND Miembro_id = i;

            IF v_anime_existe = 0 THEN
                SET v_lista_aleatorio = FLOOR(1 + RAND() * 3);
                
                CASE v_lista_aleatorio
                    WHEN 1 THEN
                        INSERT INTO tbc_lista_animes (`Anime_id`, `Miembro_id`, `Favorito`) 
                        VALUES (v_anime_id_aleatorio, i, b'1');
                    WHEN 2 THEN
                        INSERT INTO tbc_lista_animes (`Anime_id`, `Miembro_id`, `Pendiente`) 
                        VALUES (v_anime_id_aleatorio, i, b'1');
                    WHEN 3 THEN
                        INSERT INTO tbc_lista_animes (`Anime_id`, `Miembro_id`, `Favorito`, `Pendiente`) 
                        VALUES (v_anime_id_aleatorio, i, b'1', b'1');
                END CASE;
            END IF;
            
            SET e = e + 1;
        END WHILE;
        
        SET i = i + 1;
    END WHILE;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_llenar_tabla_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_llenar_tabla_rating`()
BEGIN
    DECLARE v_anime_count INT;
    DECLARE v_member_count INT;
    DECLARE v_anime_id INT;
    DECLARE v_member_id INT;
    DECLARE v_rating DECIMAL(5,2);
    DECLARE v_rating_id INT;
    DECLARE i INT DEFAULT 1;
    
    -- Get the counts of anime and members
    SELECT COUNT(*) INTO v_anime_count FROM tbb_anime;
    SELECT COUNT(*) INTO v_member_count FROM tbb_miembro;

    -- Loop through members and assign ratings to anime
    WHILE i <= v_member_count DO
		select concat("El miembro ",i) as mensaje;
        SET v_member_id = i;
        
        -- Loop through anime for each member
        SET v_anime_id = 1; -- Start with the first anime ID
        WHILE v_anime_id <= v_anime_count DO
            SET v_rating = ROUND(RAND() * 5, 2); -- Generate a random rating between 0 and 5
            
            -- Insert the rating record
            INSERT INTO tbc_rating (`Calificacion`, `Anime_id`, `Miembro_id`, `Estatus`, `Fecha_Creacion`, `Fecha_Actualizacion`) 
            VALUES (v_rating, v_anime_id, v_member_id, b'1', NOW(), NOW());
            
            SET v_anime_id = v_anime_id + 1;
        END WHILE;
        
        SET i = i + 1;
    END WHILE;
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

-- Dump completed on 2023-08-13 20:01:08
