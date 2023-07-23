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
  `Rating total` decimal(5,2) DEFAULT NULL,
  `Temporadas` int DEFAULT NULL,
  `Sinopsis` varchar(1000) NOT NULL,
  `Tipo` enum('TV','Ova','Pelicula') NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idAnime`),
  UNIQUE KEY `idAnime_UNIQUE` (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='Anime\n\nContiene:\n\nNombre\nTotal_episodios(Todos aun cuando sean dos temporadas).\nEstatus (Si este esta en emision, pausado o terminado)\nEstudio (El principal estudio que lo este produciendo)\nDirector (Director principal)\nFecha_Final (Opcional si este aun esta en emision)\nFecha_incio (Cuando este se estreno)\nRating_total (Promedio de las calificaciones de los miembros)\nSinopsis (Resumen corto de la serie)\nTemporadas (Cantidad de temporadas, si es ova solo una)\nTipo (Si es ova, tv, pelicula)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_anime`
--

LOCK TABLES `tbb_anime` WRITE;
/*!40000 ALTER TABLE `tbb_anime` DISABLE KEYS */;
INSERT INTO `tbb_anime` VALUES (1,'Gintama',367,'Terminado','Sunrise','Shinji Takamatsu','2006-04-04','2018-03-25',NULL,11,'Gintama es una serie de anime japonesa basada en el manga escrito e ilustrado por Hideaki Sorachi. La historia se desarrolla en una versión alternativa de la era Edo, donde la Tierra ha sido invadida por extraterrestres conocidos como \"Amanto\". Como resultado de la invasión, los samuráis han sido despojados de sus espadas, y Japón ha experimentado una transformación cultural significativa.','TV',_binary '','2023-07-23 01:51:33',NULL),(2,'One Piece',1053,'Emision','	Toei Animation','Kōnosuke Uda','1999-10-20',NULL,NULL,20,'Monkey D. Luffy es un muchacho que se hace a la mar para convertirse en pirata, y reunir una tripulación en su viaje de la búsqueda del One Piece, tesoro que quien lo encuentre se convertirá en el nuevo Rey de los Piratas.','TV',_binary '','2023-07-23 01:59:05',NULL),(3,'Yuri!!! on ice',12,'Terminado','MAPPA','Sayo Yamamoto','2016-10-06','2016-12-22',NULL,1,'Yuuri Katsuki, es un patinador artístico que, asumiendo las expectativas de todo Japón, experimentó una derrota aplastante en la final de Grand Prix,quedando último en la competición.. Con esto, él vuelve a su ciudad natal,en Kyushuu; sus sentimientos se debaten entre seguir patinando o retirarse.Yuri se dirige a una pista de patinaje donde imita a la perfección una coreografía del famoso patinador ruso Victor Nikiforov, a quien admira desde pequeño. Cuando el video de Yuri patinando es subido al internet sin su conocimiento, atrae la atención de Victor, quien decide convertirse en el entrenador de Yuri.','TV',_binary '','2023-07-23 03:22:05',NULL),(4,'Jujutsu Kaisen',47,'Emision','MAPPA','	Park Sung-hoo','2020-10-03',NULL,NULL,2,'Las emociones negativas creadas por los humanos se convierten en maldiciones y se esconden en la vida cotidiana. Las maldiciones son una fuerte epidemia en el mundo y, en el peor de los casos, lleva a los humanos a la muerte. Estas maldiciones solo pueden ser exorcizadas.','TV',_binary '','2023-07-23 03:29:04',NULL),(5,'Kimetsu no Yaiba',55,'Terminado','Ufotable','	Haruo Sotozaki','2018-04-06','2023-07-18',NULL,3,'La serie narra las desventuras de Tanjiro, un joven de un Japón feudal fantástico que se ve abocado a la venganza después de que un demonio acabe con toda su familia, a excepción de su hermana, Nezuko, también demoníaca y sedienta de sangre. El muchacho entrenará hasta convertirse en cazador de demonios, primero, en busca del culpable de la masacre, pero, sobre todo, para intentar revertir lo ocurrido con su hermana y volver a hacerla humana.','TV',_binary '','2023-07-23 03:35:35',NULL),(6,'JoJo\'s Bizarre Adventure',190,'Terminado','David Production','Naokatsu Tsuda','1993-11-19','2022-12-01',NULL,5,'Basada en el manga homónimo, Jojo\'s Bizarre Adventure sigue las aventuras de todas las generaciones de la familia Joestar, desde finales del siglo XIX hasta la actualidad. Todos los miembros de la familia tienen poderes, que son una fuerza psíquica intensa. Esta familia son los encargados de terminar con los enemigos sobrenaturales que amenazan el mundo. Además, la ficción narra todas las historias que se encuentra la familia a lo largo de sus aventuras.\r\n','TV',_binary '','2023-07-23 03:41:20',NULL);
/*!40000 ALTER TABLE `tbb_anime` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_episodio`
--

LOCK TABLES `tbb_episodio` WRITE;
/*!40000 ALTER TABLE `tbb_episodio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_episodio` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuario`
--

LOCK TABLES `tbb_usuario` WRITE;
/*!40000 ALTER TABLE `tbb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

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
	DECLARE v_contrasenia VARCHAR(50);
	DECLARE v_nickname VARCHAR(50);
    DECLARE v_genero VARCHAR(10) DEFAULT ELT(fn_numero_aleatorio_rangos(1,2), "Hombre", "Mujer");
    DECLARE v_nombre_generado VARCHAR(50) DEFAULT fn_genera_nombre(v_genero);
    
	DECLARE v_fecha_nacimiento VARCHAR(50);
    
    SET v_nombre = CONCAT(v_nombre_generado," ", v_primer_apellido, " ",v_segundo_apellido);

	INSERT INTO usuario (`Nombre`, `Email`, `Contrasenia`, `Nickname`, `Genero`, `Fecha_Nacimiento`) 
    VALUES (v_nombre, '1234', '1234', '1234', 'Hombre', '1998-08-19');
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
		DELETE FROM miembro;
        ALTER TABLE miembro auto_increment = 0;
    
        DELETE FROM usuario;
        ALTER TABLE usuario auto_increment = 0;
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

-- Dump completed on 2023-07-23  4:06:41
