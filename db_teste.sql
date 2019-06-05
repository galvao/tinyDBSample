DROP SCHEMA IF EXISTS `db_teste` ;

CREATE SCHEMA IF NOT EXISTS `db_teste` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `db_teste` ;

CREATE TABLE IF NOT EXISTS `db_teste`.`categoria` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `db_teste`.`produto` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoria_id` INT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` TEXT NULL,
  `preco` DECIMAL(6,2) UNSIGNED NOT NULL,
  `dt_cadastro` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produto_categoria_idx` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_produto_categoria`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `db_teste`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

