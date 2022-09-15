-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Virtualtech
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Virtualtech
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Virtualtech` DEFAULT CHARACTER SET utf8 ;
USE `Virtualtech` ;

-- -----------------------------------------------------
-- Table `Virtualtech`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Virtualtech`.`usuario` (
  `id` INT NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Virtualtech`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Virtualtech`.`producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `cantidad` INT NOT NULL,
  `referencia` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `referencia_UNIQUE` (`referencia` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Virtualtech`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Virtualtech`.`pedidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME NOT NULL,
  `id_usuario` INT NOT NULL,
  `id_producto` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `id_usuario_idx` (`id_usuario` ASC) VISIBLE,
  INDEX `id_producto_idx` (`id_producto` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
