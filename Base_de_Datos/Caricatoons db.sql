-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Caricatoons
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Caricatoons` ;

-- -----------------------------------------------------
-- Schema Caricatoons
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Caricatoons` DEFAULT CHARACTER SET utf8 ;
USE `Caricatoons` ;

-- -----------------------------------------------------
-- Table `Caricatoons`.`Genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Genero` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Subgenero` INT NULL,
  `Estatus` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE INDEX `idGenero_UNIQUE` (`idGenero` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Anime`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Anime` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Anime` (
  `idAnime` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Total_Episodios` INT NOT NULL,
  `Estatus` ENUM("Emision", "Pausado", "Terminado") NOT NULL,
  `Estudio` VARCHAR(45) NOT NULL,
  `Director` VARCHAR(45) NOT NULL,
  `Fecha_Inicio` DATE NOT NULL,
  `Fecha_Final` VARCHAR(45) NULL,
  `Rating total` DECIMAL(5,2) NULL,
  `Temporadas` INT NULL,
  `Sinopsis` VARCHAR(255) NOT NULL,
  `Tipo` ENUM("TV", "Ova", "Pelicula") NOT NULL,
  `Estatus_Anime` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idAnime`),
  UNIQUE INDEX `idAnime_UNIQUE` (`idAnime` ASC) VISIBLE)
ENGINE = InnoDB
COMMENT = 'Anime\n\nContiene:\n\nNombre\nTotal_episodios(Todos aun cuando sean dos temporadas).\nEstatus (Si este esta en emision, pausado o terminado)\nEstudio (El principal estudio que lo este produciendo)\nDirector (Director principal)\nFecha_Final (Opcional si este aun esta en emision)\nFecha_incio (Cuando este se estreno)\nRating_total (Promedio de las calificaciones de los miembros)\nSinopsis (Resumen corto de la serie)\nTemporadas (Cantidad de temporadas, si es ova solo una)\nTipo (Si es ova, tv, pelicula)';


-- -----------------------------------------------------
-- Table `Caricatoons`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(75) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Contrasenia` VARCHAR(45) NOT NULL,
  `Nickname` VARCHAR(45) NOT NULL,
  `Genero` ENUM("Hombre", "Mujer") NOT NULL,
  `Fecha_Nacimiento` DATE NOT NULL,
  `Estatus` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `idUsuario_UNIQUE` (`idUsuario` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Miembro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Miembro` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Miembro` (
  `idMiembro` INT NOT NULL AUTO_INCREMENT,
  `Usuario_id` INT NOT NULL,
  `Estatus` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idMiembro`),
  UNIQUE INDEX `idMiembro_UNIQUE` (`idMiembro` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Rating`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Rating` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Rating` (
  `idRating` INT NOT NULL AUTO_INCREMENT,
  `Calificacion` DECIMAL(5,2) NOT NULL DEFAULT 0,
  `Anime_id` INT NOT NULL,
  `Miembro_id` INT NOT NULL,
  `Estatus` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idRating`),
  UNIQUE INDEX `idRating_UNIQUE` (`idRating` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Lista_Animes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Lista_Animes` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Lista_Animes` (
  `idLista_Animes` INT NOT NULL AUTO_INCREMENT,
  `Anime_id` INT NOT NULL,
  `Miembro_id` INT NOT NULL,
  `Favorito` BIT(1) NOT NULL DEFAULT 0,
  `Pendiente` BIT(1) NOT NULL DEFAULT 0,
  `Estatus` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idLista_Animes`),
  UNIQUE INDEX `idLista_Animes_UNIQUE` (`idLista_Animes` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Anime_Genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Anime_Genero` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Anime_Genero` (
  `idAnime_Genero` INT NOT NULL AUTO_INCREMENT,
  `Genero_id` INT NOT NULL,
  `Anime_id` INT NOT NULL,
  PRIMARY KEY (`idAnime_Genero`),
  UNIQUE INDEX `idAnime_Genero_UNIQUE` (`idAnime_Genero` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Origen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Origen` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Origen` (
  `idOrigen` INT NOT NULL AUTO_INCREMENT,
  `Autor` VARCHAR(45) NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Tipo` ENUM("NovelaL", "NovelaW", "Manga") NOT NULL,
  `idAnime` INT NOT NULL,
  `Estatus_Anime` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idOrigen`),
  UNIQUE INDEX `idOrigen_UNIQUE` (`idOrigen` ASC) VISIBLE)
ENGINE = InnoDB
COMMENT = 'Origen\n\nContiene:\n\nAutor (Escritor, guionista principal)\nNombre(Si el nombre cambia)\nTipo (Novela ligera, Novela web, Manga)';


-- -----------------------------------------------------
-- Table `Caricatoons`.`Temporada`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Temporada` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Temporada` (
  `idTemporada` INT NOT NULL AUTO_INCREMENT,
  `Numero` INT NOT NULL,
  `Fecha_Emision` DATE NOT NULL,
  `Fecha_Termino` DATE NULL,
  `Sinopsis` VARCHAR(100) NOT NULL,
  `Rating_total` DECIMAL(5,2) NULL,
  `idAnime` INT NOT NULL,
  `Estatus_Anime` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idTemporada`),
  UNIQUE INDEX `idTemporada_UNIQUE` (`idTemporada` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Caricatoons`.`Episodio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Caricatoons`.`Episodio` ;

CREATE TABLE IF NOT EXISTS `Caricatoons`.`Episodio` (
  `idEpisodio` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Estreno` DATE NULL,
  `idTemporada` INT NOT NULL,
  `idAnime` INT NOT NULL,
  `Estatus_Anime` BIT(1) NOT NULL DEFAULT 1,
  `Fecha_Creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idEpisodio`),
  UNIQUE INDEX `idEpisodio_UNIQUE` (`idEpisodio` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
