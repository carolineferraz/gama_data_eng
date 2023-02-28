use db_livraria;

create table livro (
	id int not null auto_increment,
    titulo varchar(255) not null,
    anoPublicacao year(4),
    numeroDePaginas smallint,
    autoria_id int,
    editora_id int,
    primary key(id),
    foreign key(autoria_id) references autoria(id),
    foreign key(editora_id) references editora(id)
);

create table autoria (
	id int not null auto_increment,
    nome varchar(255) not null,
    cidade varchar(255),
    primary key(id)
);

create table editora (
	id int not null auto_increment,
    nome varchar(255) not null unique,
    cidade varchar(255),
    primary key(id)
);

-- MySQL Script generated by MySQL Workbench
-- Fri Jan 20 13:55:33 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`autores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `cidade` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `mydb`.`editoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`editoras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `cidade` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `mydb`.`livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`livros` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `anoPublicacao` YEAR(4) NOT NULL,
  `numeroDePaginans` SMALLINT(32767) NULL DEFAULT CURRENT_TIMESTAMP,
  `autores_id` INT NOT NULL,
  `editoras_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_livros_autores_idx` (`autores_id` ASC) VISIBLE,
  INDEX `fk_livros_editoras1_idx` (`editoras_id` ASC) VISIBLE,
  CONSTRAINT `fk_livros_autores`
    FOREIGN KEY (`autores_id`)
    REFERENCES `mydb`.`autores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_livros_editoras1`
    FOREIGN KEY (`editoras_id`)
    REFERENCES `mydb`.`editoras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;