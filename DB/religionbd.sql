-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema religiondb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `religiondb` ;

-- -----------------------------------------------------
-- Schema religiondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `religiondb` DEFAULT CHARACTER SET utf8 ;
USE `religiondb` ;

-- -----------------------------------------------------
-- Table `religion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `religion` ;

CREATE TABLE IF NOT EXISTS `religion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `origin` VARCHAR(45) NULL,
  `date_established` VARCHAR(45) NULL,
  `founder` VARCHAR(45) NULL,
  `idol_of_worship` VARCHAR(45) NULL,
  `beliefs` VARCHAR(45) NULL,
  `number_of_followers` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS religionuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'religionuser'@'localhost' IDENTIFIED BY 'religionuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'religionuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `religion`
-- -----------------------------------------------------
START TRANSACTION;
USE `religiondb`;
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (1, 'Buddhism', NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

