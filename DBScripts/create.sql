-------------------------------------
-- Creation Script for the ImageDB --
-- @author: Wild Boar              --
-------------------------------------

CREATE SCHEMA image_data;
use image_data;

CREATE TABLE `database` 
(
	`id` INT NOT NULL AUTO_INCREMENT,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `name` VARCHAR(200) NOT NULL,
    `path` VARCHAR(1000) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY(`name`)
);

INSERT INTO `database` (`name`, `path`) VALUES ('main','/home/trevor/Data');

CREATE TABLE `dataset` 
(
	`id` INT NOT NULL AUTO_INCREMENT,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `name` VARCHAR(200) NOT NULL,
    `description` VARCHAR(500),
	`file_count` INT,
	`database_id` INT,
    PRIMARY KEY (`id`),
    UNIQUE KEY(`name`),
	FOREIGN KEY(`database_id`) REFERENCES `database`(`id`)
);