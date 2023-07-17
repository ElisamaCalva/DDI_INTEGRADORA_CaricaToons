CREATE DATABASE  IF NOT EXISTS `caricatoons` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `caricatoons`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: caricatoons
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
-- Table structure for table `anime`
--

DROP TABLE IF EXISTS `anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime` (
  `idAnime` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Total_Episodios` int NOT NULL,
  `Estatus` enum('Emision','Pausado','Terminado') NOT NULL,
  `Estudio` varchar(45) NOT NULL,
  `Director` varchar(45) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Final` varchar(45) DEFAULT NULL,
  `Rating_total` decimal(5,2) DEFAULT NULL,
  `Temporadas` int DEFAULT NULL,
  `Sinopsis` varchar(255) NOT NULL,
  `Tipo` enum('TV','Ova','Pelicula') NOT NULL,
  `Estatus_Anime` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idAnime`),
  UNIQUE KEY `idAnime_UNIQUE` (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Anime\n\nContiene:\n\nNombre\nTotal_episodios(Todos aun cuando sean dos temporadas).\nEstatus (Si este esta en emision, pausado o terminado)\nEstudio (El principal estudio que lo este produciendo)\nDirector (Director principal)\nFecha_Final (Opcional si este aun esta en emision)\nFecha_incio (Cuando este se estreno)\nRating_total (Promedio de las calificaciones de los miembros)\nSinopsis (Resumen corto de la serie)\nTemporadas (Cantidad de temporadas, si es ova solo una)\nTipo (Si es ova, tv, pelicula)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime`
--

LOCK TABLES `anime` WRITE;
/*!40000 ALTER TABLE `anime` DISABLE KEYS */;
INSERT INTO `anime` VALUES (2,'Sword Art Online: Aincrad',24,'Emision','A-1 Pictures','Tomohiko Itō','2023-07-17','2012-05-05',5.00,2,'Kirito está atrapado, junto con muchos otros jugadores, en el interior del juego de realidad virtual Sword Art Online (SAO)','TV',_binary '','2023-07-17 00:00:00','2023-07-17 00:00:00');
/*!40000 ALTER TABLE `anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anime_genero`
--

DROP TABLE IF EXISTS `anime_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime_genero` (
  `idAnime_Genero` int NOT NULL AUTO_INCREMENT,
  `Genero_id` int NOT NULL,
  `Anime_id` int NOT NULL,
  PRIMARY KEY (`idAnime_Genero`),
  UNIQUE KEY `idAnime_Genero_UNIQUE` (`idAnime_Genero`),
  KEY `fk_genero` (`Genero_id`),
  KEY `fk_anime` (`Anime_id`),
  CONSTRAINT `fk_anime` FOREIGN KEY (`Anime_id`) REFERENCES `anime` (`idAnime`),
  CONSTRAINT `fk_genero` FOREIGN KEY (`Genero_id`) REFERENCES `genero` (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime_genero`
--

LOCK TABLES `anime_genero` WRITE;
/*!40000 ALTER TABLE `anime_genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `anime_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodio`
--

DROP TABLE IF EXISTS `episodio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodio` (
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
  CONSTRAINT `fk_anime_episodio` FOREIGN KEY (`idAnime`) REFERENCES `anime` (`idAnime`),
  CONSTRAINT `fk_temporada` FOREIGN KEY (`idTemporada`) REFERENCES `temporada` (`idTemporada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio`
--

LOCK TABLES `episodio` WRITE;
/*!40000 ALTER TABLE `episodio` DISABLE KEYS */;
/*!40000 ALTER TABLE `episodio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Subgenero` int DEFAULT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `idGenero_UNIQUE` (`idGenero`),
  KEY `fk_genero_Genero` (`Subgenero`),
  CONSTRAINT `fk_genero_Genero` FOREIGN KEY (`Subgenero`) REFERENCES `genero` (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_animes`
--

DROP TABLE IF EXISTS `lista_animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_animes` (
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
  CONSTRAINT `fk_anime_miembro` FOREIGN KEY (`Anime_id`) REFERENCES `anime` (`idAnime`),
  CONSTRAINT `fk_miembro` FOREIGN KEY (`Miembro_id`) REFERENCES `miembro` (`idMiembro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_animes`
--

LOCK TABLES `lista_animes` WRITE;
/*!40000 ALTER TABLE `lista_animes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_animes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembro`
--

DROP TABLE IF EXISTS `miembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembro` (
  `idMiembro` int NOT NULL AUTO_INCREMENT,
  `Usuario_id` int NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idMiembro`),
  UNIQUE KEY `idMiembro_UNIQUE` (`idMiembro`),
  KEY `fk_usuario` (`Usuario_id`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembro`
--

LOCK TABLES `miembro` WRITE;
/*!40000 ALTER TABLE `miembro` DISABLE KEYS */;
/*!40000 ALTER TABLE `miembro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen`
--

DROP TABLE IF EXISTS `origen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen` (
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
  CONSTRAINT `fk_anime_origen` FOREIGN KEY (`idAnime`) REFERENCES `anime` (`idAnime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Origen\n\nContiene:\n\nAutor (Escritor, guionista principal)\nNombre(Si el nombre cambia)\nTipo (Novela ligera, Novela web, Manga)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen`
--

LOCK TABLES `origen` WRITE;
/*!40000 ALTER TABLE `origen` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
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
  CONSTRAINT `fk_anime_rating` FOREIGN KEY (`Anime_id`) REFERENCES `anime` (`idAnime`),
  CONSTRAINT `fk_miembro_rating` FOREIGN KEY (`Miembro_id`) REFERENCES `miembro` (`idMiembro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporada`
--

DROP TABLE IF EXISTS `temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada` (
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
  CONSTRAINT `fk_anime_temporada` FOREIGN KEY (`idAnime`) REFERENCES `anime` (`idAnime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporada`
--

LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
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
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'caricatoons'
--

--
-- Dumping routines for database 'caricatoons'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 22:32:54
