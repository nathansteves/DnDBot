SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dnd5echaractergenerator
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dnd5echaractergenerator
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dnd5echaractergenerator` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dnd5echaractergenerator` ;

-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`armor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`armor` (
  `armor_id` INT NOT NULL,
  `armor_name` VARCHAR(45) NULL DEFAULT NULL,
  `armor_ac` INT NULL DEFAULT NULL,
  `armor_maxdex` INT NULL DEFAULT NULL,
  `armor_type` VARCHAR(8) NULL DEFAULT NULL,
  `armor_sneak` BINARY(1) NULL DEFAULT NULL,
  PRIMARY KEY (`armor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`armor_enchantment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`armor_enchantment` (
  `enchantment_id` INT NOT NULL,
  `enchantment_name` VARCHAR(45) NULL DEFAULT NULL,
  `enchantment_effect` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`enchantment_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`backgrounds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`backgrounds` (
  `bg_id` INT NOT NULL,
  `bg_name` VARCHAR(45) NULL DEFAULT NULL,
  `bg_features` VARCHAR(45) NULL DEFAULT NULL,
  `bg_skills` VARCHAR(45) NULL DEFAULT NULL,
  `bg_languages` VARCHAR(45) NULL DEFAULT NULL,
  `bg_tools` VARCHAR(45) NULL DEFAULT NULL,
  `bg_alignments` VARCHAR(2) NULL DEFAULT NULL,
  `bg_trait` VARCHAR(255) NULL DEFAULT NULL,
  `bg_flaw` VARCHAR(255) NULL DEFAULT NULL,
  `bg_biome` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`bg_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`characters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`characters` (
  `character_id` INT NOT NULL,
  `name` VARCHAR(15) NULL DEFAULT NULL,
  `race_id` INT NULL DEFAULT NULL,
  `class_id` INT NULL DEFAULT NULL,
  `background_id` INT NULL DEFAULT NULL,
  `strength` INT NULL DEFAULT NULL,
  `dexterity` INT NULL DEFAULT NULL,
  `constitution` INT NULL DEFAULT NULL,
  `wisdom` INT NULL DEFAULT NULL,
  `intelligence` INT NULL DEFAULT NULL,
  `charisma` INT NULL DEFAULT NULL,
  `meleeweapon_id` INT NULL DEFAULT NULL,
  `rangedweapon_id` INT NULL DEFAULT NULL,
  `armor_id` INT NULL DEFAULT NULL,
  `enchantment_id` INT NULL DEFAULT NULL,
  `feat1_id` INT NULL DEFAULT NULL,
  `feat2_id` INT NULL DEFAULT NULL,
  `feat3_id` INT NULL DEFAULT NULL,
  `feat4_id` INT NULL DEFAULT NULL,
  `feat5_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`character_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`classes` (
  `class_id` INT NOT NULL,
  `class_name` VARCHAR(45) NULL DEFAULT NULL,
  `class_skills` VARCHAR(100) NULL DEFAULT NULL,
  `class_hitdie` VARCHAR(45) NULL DEFAULT NULL,
  `class_savingthrows` VARCHAR(45) NULL DEFAULT NULL,
  `class_features` VARCHAR(1000) NULL DEFAULT NULL,
  `class_armorprof` VARCHAR(45) NULL DEFAULT NULL,
  `class_weaponprof` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`feats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`feats` (
  `feat_id` INT NOT NULL,
  `feat_name` VARCHAR(45) NULL DEFAULT NULL,
  `feat_effect` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`feat_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`melee_weapons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`melee_weapons` (
  `meleeweapon_id` INT NOT NULL,
  `melee_name` VARCHAR(45) NULL DEFAULT NULL,
  `melee_type` VARCHAR(45) NULL DEFAULT NULL,
  `melee_dmg` VARCHAR(4) NULL DEFAULT NULL,
  `melee_effects` VARCHAR(45) NULL DEFAULT NULL,
  `melee_bonus` INT NULL DEFAULT NULL,
  `melee_class` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`meleeweapon_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`races`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`races` (
  `race_id` INT NOT NULL,
  `race_name` VARCHAR(25) NULL DEFAULT NULL,
  `race_proficiencies` VARCHAR(255) NULL DEFAULT NULL,
  `race_scores` VARCHAR(100) NULL DEFAULT NULL,
  `race_speed` INT NULL DEFAULT NULL,
  `race_size` VARCHAR(45) NULL DEFAULT NULL,
  `race_type` VARCHAR(45) NULL DEFAULT NULL,
  `race_feature` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`race_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`ranged_weapons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`ranged_weapons` (
  `rangedweapon_id` INT NOT NULL,
  `ranged_name` VARCHAR(45) NULL DEFAULT NULL,
  `ranged_type` VARCHAR(15) NULL DEFAULT NULL,
  `ranged_dmg` VARCHAR(4) NULL DEFAULT NULL,
  `ranged_effects` VARCHAR(255) NULL DEFAULT NULL,
  `ranged_bonus` INT NULL DEFAULT NULL,
  `ranged_class` VARCHAR(8) NULL DEFAULT NULL,
  `ranged_range` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`rangedweapon_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
