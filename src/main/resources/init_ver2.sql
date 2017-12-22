-- MySQL Script generated by MySQL Workbench
-- Thu Dec 21 22:30:06 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tour_types`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tour_types` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tour_types` (
  `id` INT UNSIGNED NOT NULL,
  `tour_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (1,"molestie"),(2,"mauris"),(3,"felis,"),(4,"aptent"),(5,"accumsan"),(6,"est"),(7,"sapien."),(8,"leo,"),(9,"quis"),(10,"nec");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (11,"neque"),(12,"vitae,"),(13,"lacinia"),(14,"Lorem"),(15,"penatibus"),(16,"arcu."),(17,"Integer"),(18,"Donec"),(19,"nec"),(20,"Nunc");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (21,"dolor"),(22,"ultrices."),(23,"orci"),(24,"magna."),(25,"gravida."),(26,"ornare,"),(27,"auctor"),(28,"velit."),(29,"urna."),(30,"mi");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (31,"nisl"),(32,"turpis"),(33,"tincidunt"),(34,"dolor."),(35,"Ut"),(36,"gravida"),(37,"odio"),(38,"congue"),(39,"eleifend,"),(40,"eu");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (41,"turpis"),(42,"Lorem"),(43,"auctor"),(44,"enim,"),(45,"libero"),(46,"augue"),(47,"sociis"),(48,"ultrices"),(49,"luctus"),(50,"massa.");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (51,"erat"),(52,"dui,"),(53,"velit."),(54,"non"),(55,"Vivamus"),(56,"facilisis"),(57,"nibh."),(58,"neque"),(59,"consectetuer,"),(60,"Aenean");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (61,"dui"),(62,"sit"),(63,"nec"),(64,"Curabitur"),(65,"Vestibulum"),(66,"Nulla"),(67,"auctor"),(68,"neque"),(69,"placerat,"),(70,"Sed");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (71,"lobortis."),(72,"Proin"),(73,"tristique"),(74,"Phasellus"),(75,"ante,"),(76,"Nullam"),(77,"arcu"),(78,"Fusce"),(79,"senectus"),(80,"mauris");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (81,"tristique"),(82,"hendrerit."),(83,"ipsum."),(84,"Suspendisse"),(85,"nec"),(86,"interdum."),(87,"ornare"),(88,"interdum."),(89,"malesuada"),(90,"quis");
INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (91,"vestibulum"),(92,"nisl."),(93,"lorem,"),(94,"semper"),(95,"ultrices."),(96,"gravida."),(97,"neque."),(98,"et"),(99,"dolor"),(100,"semper");

-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`users` ;

CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password_hash` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (1,"Kane","Stevenson","porttitor@Nulla.co.uk","XWW89AUF5RE"),(2,"Fiona","Wagner","et.magna@Proindolor.net","UJG00XFJ1GT"),(3,"Keane","Emerson","enim@magnaDuisdignissim.edu","YMW44ZFS8RH"),(4,"Price","Stuart","Sed@Phasellusvitaemauris.co.uk","WUA15ZGS8GT"),(5,"Skyler","Caldwell","et@Aliquamgravida.net","HMJ86RQV7MH"),(6,"Kimberley","Ray","magna.malesuada.vel@tortorIntegeraliquam.edu","ZCQ06QHU3SM"),(7,"Marshall","Richard","imperdiet.dictum.magna@loremsitamet.edu","MDY68LKI1OC"),(8,"Keiko","Macdonald","hymenaeos@idantedictum.com","OJR21SLJ2HS"),(9,"Amir","Short","enim.Suspendisse.aliquet@eget.com","HAU93UFF9WT"),(10,"Yoko","Curtis","Nulla@Integeraliquamadipiscing.co.uk","VRH07NXY1BU");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (11,"Oliver","Parrish","et.ultrices@elementum.co.uk","NYM11RSR5IS"),(12,"Kane","Chang","tincidunt.neque.vitae@lobortis.edu","YQC98AXT1TC"),(13,"Lawrence","Best","Proin.non@lacusUtnec.edu","FVH69IFB2RO"),(14,"Basia","Bishop","sagittis.augue.eu@fringilla.org","GCB64WCV3US"),(15,"Jamal","Wolf","Duis.mi@a.co.uk","IBU92WHF8AG"),(16,"Herman","Glass","risus.a@lectusNullamsuscipit.ca","INC74UQH5YN"),(17,"Amos","Hardin","magnis.dis@cursusluctus.net","WNB50LLA5FZ"),(18,"Scott","Workman","Mauris@acfeugiatnon.ca","PSR09HDM7FL"),(19,"Kibo","Cameron","aliquet.molestie.tellus@semPellentesqueut.edu","BVJ32JHR3LP"),(20,"Leo","Hunt","penatibus.et@lobortis.net","FSH03LLO0SR");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (21,"Abraham","Barr","ornare@rhoncusProin.net","JMG67MWI2KF"),(22,"Camilla","Becker","Mauris@egetmollis.co.uk","KQX23PJP0IP"),(23,"Jack","Floyd","ipsum.dolor@infaucibusorci.ca","ANC10MEK5GF"),(24,"Wyatt","Holden","sed.dolor.Fusce@eratEtiamvestibulum.edu","IUN67CHL6BB"),(25,"Jordan","Thompson","consectetuer@dictumPhasellus.ca","VFC65KAD1GE"),(26,"Samuel","Gibbs","odio.Nam@vulputate.com","ATI21DCI5CI"),(27,"Indira","Kent","non.nisi.Aenean@habitantmorbi.com","GJO35OZK0AF"),(28,"Joshua","Haley","libero.et.tristique@Nuncullamcorper.edu","PVA35VPF6PL"),(29,"Madeline","Rosales","ornare.lectus.justo@euenim.net","IVO40IEX7NI"),(30,"Steel","Adkins","arcu.Nunc.mauris@nibh.edu","MOB76SZL1JV");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (31,"Nigel","Stafford","pretium.neque@penatibusetmagnis.net","UWR28OML2BD"),(32,"Chadwick","Jordan","auctor.ullamcorper.nisl@lorem.edu","XAC42DYG4EQ"),(33,"Minerva","Johnson","a@eueuismodac.edu","OPT60SDH2FO"),(34,"Iona","Leon","feugiat.metus.sit@velitjusto.net","FMB30MMH9QN"),(35,"Brandon","Maxwell","dictum@nuncidenim.org","JJY93VPA1XI"),(36,"Gabriel","Gutierrez","mauris.erat.eget@hendreritconsectetuercursus.edu","ADU15IHE3GR"),(37,"Byron","Cervantes","felis.orci@ipsumdolor.org","DEI71CAY3SF"),(38,"Leonard","Osborne","eleifend@eros.edu","DAQ96UAN2AP"),(39,"Rhiannon","Adams","nibh@pede.com","UDI50RNN8QD"),(40,"Branden","Alston","Donec.fringilla.Donec@eget.net","NPE98HZM3NB");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (41,"Burton","Ramirez","non@Nullam.net","HOU50OJH9YZ"),(42,"Camilla","Bryan","dictum.augue@Quisquefringillaeuismod.co.uk","AJT06BLS8ZD"),(43,"Jenna","Maddox","mi.lorem@Nunccommodo.com","IJR43OIQ5HA"),(44,"Honorato","Whitehead","turpis@Vestibulum.co.uk","GCM50BSE0PG"),(45,"Clark","Terry","libero.dui@vestibulum.co.uk","IDR97KAT0ZY"),(46,"Rinah","Petty","dolor@ligulaAliquamerat.org","TMM09URP1IU"),(47,"Karen","House","bibendum.Donec@pedesagittis.org","EQY56TID1SP"),(48,"Jarrod","Humphrey","eu@luctusaliquetodio.net","LKG98DKJ9ZH"),(49,"Patience","Finch","aliquam.iaculis.lacus@commodoauctor.net","TGN39WIZ3NZ"),(50,"Ali","Schroeder","Sed.diam.lorem@orciquislectus.ca","XOX29DJM8ZQ");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (51,"Danielle","Guzman","fames@magnaseddui.co.uk","RYX04QLQ6QS"),(52,"Cassidy","Travis","libero@at.ca","JWT23TAJ1UQ"),(53,"Harriet","Pollard","nec.leo@Donec.ca","EKX86OJX4VP"),(54,"Joseph","Cooper","orci.sem@lectuspede.co.uk","MWM67MOP3AV"),(55,"Felicia","Harrington","et@ametmassa.ca","ETZ29UWE7RQ"),(56,"Britanney","Santana","sit.amet@arcu.ca","UJV37FNZ6OX"),(57,"Indira","Stephens","taciti@mi.co.uk","OPO50UKO0SV"),(58,"Cecilia","Fowler","enim.nec@vulputate.org","FAQ17LZQ0AB"),(59,"Grady","Mooney","arcu.Nunc.mauris@antedictum.org","RHU80SCZ6ZH"),(60,"Neil","Beard","nibh@cubilia.net","XZD75WCY3ER");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (61,"Nicole","Carney","arcu.vel@euismodest.edu","YTC66XUP8RL"),(62,"Howard","Holder","lobortis@cursusNuncmauris.edu","KKA31UGI0SZ"),(63,"Darryl","Davis","enim.Mauris@senectusetnetus.org","WNT64DAV2DR"),(64,"Ursa","Downs","gravida@Integer.ca","MZI68DTP2RW"),(65,"Levi","Whitehead","dictum.placerat.augue@Maecenasornareegestas.org","JFC08QMG0OU"),(66,"Shannon","Harrison","quam@Nullam.org","FZI55VXN3FR"),(67,"Ignatius","Woodard","Vivamus@egestas.co.uk","RXK96SVI9KC"),(68,"Arthur","Hale","sit.amet@facilisis.org","RHJ15ISL0HE"),(69,"Germane","Foley","ac@nisinibhlacinia.ca","DYN29MKJ0JC"),(70,"Mariko","Matthews","semper.egestas@nulla.org","XCM50VJB6MJ");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (71,"Ina","Mcfarland","et.arcu.imperdiet@auguemalesuada.org","NRH99MZF2RF"),(72,"Ezekiel","Klein","mauris.Morbi@faucibus.edu","FFA46STL0VL"),(73,"Harriet","Long","Suspendisse.ac.metus@pedeCrasvulputate.com","NTJ17MWQ7LA"),(74,"Leigh","Justice","luctus@maurisid.net","DSN05VKO2DP"),(75,"Aphrodite","Madden","faucibus.orci@felisDonec.org","QXT68OQE2UO"),(76,"Bradley","Flores","conubia.nostra@vitaesodales.net","SOL90CXA9LT"),(77,"Eleanor","Shaffer","eu@Nullamenim.org","MKA44IGO9FS"),(78,"Maya","Berg","risus.Donec@eget.ca","ASV98PKL2CI"),(79,"Lunea","Mcclure","hendrerit.consectetuer@nisl.co.uk","VZK92BJK6VH"),(80,"Emmanuel","Cooley","interdum.Nunc@In.co.uk","YTO00FFA9KE");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (81,"Cara","Callahan","eros.Nam.consequat@mollisPhaselluslibero.co.uk","JGN57ZIM6PQ"),(82,"Bevis","Blackburn","eu@turpis.org","KXK15RBZ4MI"),(83,"Joel","Schneider","nascetur.ridiculus.mus@Morbi.com","DOC64JFS3AH"),(84,"Phillip","Stephenson","nunc@dis.net","WWB66EIM1DU"),(85,"Phyllis","Hart","penatibus.et.magnis@ipsumacmi.ca","RWR46GTB9NI"),(86,"Felix","Townsend","penatibus.et.magnis@neque.co.uk","ZUW91TZC7SY"),(87,"Portia","Ruiz","massa@duilectusrutrum.net","KJC29HEZ7DN"),(88,"Austin","Justice","lorem.vehicula@massa.ca","HNF12WIX1XR"),(89,"Luke","Le","ac.metus.vitae@tempusloremfringilla.edu","HHE72BFT8VE"),(90,"Brandon","Cote","tempus.eu.ligula@quis.org","FLJ29WLZ6YD");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (91,"Gregory","Fuentes","vulputate.dui.nec@rutrummagnaCras.ca","BAY59EIS0UM"),(92,"Yvette","Hendricks","velit@nuncid.edu","OCX64JWP5QK"),(93,"Bethany","Dyer","sollicitudin.orci.sem@hendreritneque.edu","IGY67DCD4MI"),(94,"Rahim","Heath","mauris.ipsum@etnunc.ca","CNG12GPM4OA"),(95,"Lois","Graham","tortor.at.risus@afelisullamcorper.org","UIF02WPK8WY"),(96,"Kelly","Ferguson","vitae.aliquam@lacus.edu","PJX72EFF0VA"),(97,"Lucian","George","ante.ipsum.primis@ligula.ca","WJA13YKM8LQ"),(98,"Louis","Mcgee","sit.amet.orci@condimentum.org","VWW99LYG5JH"),(99,"Jordan","Tyson","scelerisque.neque.sed@auctor.net","JLR40ROA9MF"),(100,"Kelsey","Stevenson","Morbi@id.ca","AIY36PUA5FT");

-- -----------------------------------------------------
-- Table `mydb`.`tours`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tours` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tours` (
  `id` INT UNSIGNED NOT NULL,
  `hot` TINYINT(1) NOT NULL,
  `price` DOUBLE NOT NULL,
  `duration` INT UNSIGNED NOT NULL,
  `agent_id` VARCHAR(45) NOT NULL,
  `active` TINYINT(1) NOT NULL,
  `tour_types_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tours_tour_types1_idx` (`tour_types_id` ASC),
  CONSTRAINT `fk_tours_tour_types1`
    FOREIGN KEY (`tour_types_id`)
    REFERENCES `mydb`.`tour_types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (1,"1","19","3","0","37"),(2,"0","1","89","0","17"),(3,"0","23","61","1","5"),(4,"0","79","3","0","41"),(5,"1","73","43","0","13"),(6,"0","11","29","1","7"),(7,"0","1","13","0","7"),(8,"1","29","97","0","83"),(9,"1","17","1","1","53"),(10,"0","41","67","1","29");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (11,"0","89","79","0","59"),(12,"1","61","23","1","59"),(13,"0","1","97","0","59"),(14,"0","11","7","1","7"),(15,"0","97","5","0","19"),(16,"0","37","53","1","97"),(17,"1","79","1","0","41"),(18,"0","29","29","1","53"),(19,"1","5","7","0","97"),(20,"1","5","89","0","41");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (21,"0","11","11","1","61"),(22,"1","41","73","1","1"),(23,"0","19","79","0","67"),(24,"1","7","47","1","71"),(25,"1","73","17","0","71"),(26,"1","59","3","1","31"),(27,"0","37","53","0","5"),(28,"0","31","5","1","43"),(29,"0","83","23","0","31"),(30,"1","71","53","0","97");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (31,"1","13","61","1","23"),(32,"1","1","1","1","73"),(33,"1","71","23","1","7"),(34,"0","19","89","1","13"),(35,"0","3","53","1","7"),(36,"1","73","19","0","67"),(37,"1","11","5","1","29"),(38,"0","11","71","1","67"),(39,"0","97","7","1","79"),(40,"1","13","73","0","17");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (41,"1","5","29","0","11"),(42,"1","5","47","0","11"),(43,"0","43","41","0","29"),(44,"1","43","19","0","31"),(45,"1","61","1","0","7"),(46,"1","53","67","1","97"),(47,"1","47","59","0","13"),(48,"0","1","43","1","79"),(49,"1","3","29","1","29"),(50,"0","17","43","1","43");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (51,"1","23","29","0","73"),(52,"1","71","2","1","71"),(53,"1","11","79","1","17"),(54,"0","17","17","0","59"),(55,"0","31","89","0","29"),(56,"0","43","7","1","2"),(57,"0","73","29","1","97"),(58,"0","67","5","1","67"),(59,"1","5","73","1","43"),(60,"0","71","41","1","17");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (61,"0","71","71","1","59"),(62,"0","89","89","1","41"),(63,"1","47","2","0","47"),(64,"0","2","13","0","29"),(65,"0","23","73","0","79"),(66,"0","59","89","0","11"),(67,"1","73","97","1","59"),(68,"0","1","53","0","11"),(69,"1","2","13","1","37"),(70,"0","1","47","0","37");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (71,"1","59","1","0","1"),(72,"1","61","23","1","83"),(73,"0","43","61","1","53"),(74,"0","29","71","1","11"),(75,"0","71","47","1","73"),(76,"1","79","59","1","5"),(77,"0","2","83","1","13"),(78,"0","67","47","1","11"),(79,"1","37","23","1","5"),(80,"1","89","19","1","29");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (81,"1","3","7","1","83"),(82,"0","2","73","1","5"),(83,"1","61","3","1","3"),(84,"1","11","83","1","2"),(85,"0","89","13","1","17"),(86,"0","89","71","0","37"),(87,"1","79","37","1","13"),(88,"1","19","11","0","29"),(89,"1","71","5","1","67"),(90,"0","71","5","1","61");
INSERT INTO `tours` (`id`,`hot`,`price`,`agent_id`,`active`,`tour_types_id`) VALUES (91,"1","73","47","1","47"),(92,"1","43","59","0","23"),(93,"0","31","53","1","43"),(94,"0","71","17","0","2"),(95,"1","73","47","0","31"),(96,"0","71","29","0","5"),(97,"0","7","19","1","41"),(98,"1","43","83","0","31"),(99,"0","5","19","0","3"),(100,"1","7","31","1","89");

-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`orders` ;

CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `id` INT UNSIGNED NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `active` TINYINT(1) NOT NULL,
  `tour_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_orders_users1_idx` (`user_id` ASC),
  INDEX `fk_orders_tours1_idx` (`tour_id` ASC),
  CONSTRAINT `fk_orders_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_tours1`
    FOREIGN KEY (`tour_id`)
    REFERENCES `mydb`.`tours` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (1,"04/21/2017","1","5","23"),(2,"07/23/2017","0","37","17"),(3,"03/21/2017","0","71","2"),(4,"02/05/2017","0","1","59"),(5,"04/15/2017","0","59","7"),(6,"01/24/2017","1","13","43"),(7,"05/06/2018","0","73","43"),(8,"09/15/2018","1","83","59"),(9,"10/22/2018","1","53","97"),(10,"10/18/2018","1","2","3");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (11,"11/27/2017","0","97","2"),(12,"10/25/2017","0","1","5"),(13,"03/28/2018","1","43","31"),(14,"08/31/2017","0","97","67"),(15,"04/06/2017","0","71","17"),(16,"01/20/2017","1","37","2"),(17,"02/14/2017","1","61","89"),(18,"01/24/2018","1","83","47"),(19,"12/24/2017","1","41","79"),(20,"11/09/2017","1","89","19");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (21,"01/30/2017","1","5","89"),(22,"04/03/2017","1","31","61"),(23,"08/14/2017","0","71","29"),(24,"10/07/2018","1","89","47"),(25,"04/18/2017","0","71","83"),(26,"03/09/2017","1","97","5"),(27,"07/18/2017","0","2","13"),(28,"08/31/2018","1","1","83"),(29,"11/08/2018","1","37","3"),(30,"03/03/2017","0","3","59");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (31,"02/02/2018","0","83","31"),(32,"02/10/2017","1","89","89"),(33,"10/11/2018","1","61","59"),(34,"08/01/2017","1","2","17"),(35,"11/09/2017","0","61","47"),(36,"01/17/2017","1","19","1"),(37,"12/11/2018","0","11","79"),(38,"04/22/2017","1","67","41"),(39,"05/09/2017","0","17","17"),(40,"10/26/2018","1","53","1");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (41,"07/10/2017","0","11","41"),(42,"09/15/2017","1","53","37"),(43,"04/05/2018","0","47","61"),(44,"11/21/2017","0","7","3"),(45,"02/18/2017","0","83","7"),(46,"06/12/2017","0","7","11"),(47,"03/07/2017","0","11","79"),(48,"01/27/2017","0","97","29"),(49,"03/09/2017","1","31","31"),(50,"10/16/2018","0","17","67");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (51,"03/07/2017","1","11","41"),(52,"12/12/2018","1","37","61"),(53,"02/26/2018","0","97","11"),(54,"03/10/2018","1","71","29"),(55,"04/12/2017","1","53","41"),(56,"01/22/2017","0","41","31"),(57,"08/01/2017","0","37","29"),(58,"07/31/2017","0","19","7"),(59,"05/17/2018","1","67","41"),(60,"02/10/2017","0","61","31");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (61,"07/27/2018","0","59","23"),(62,"12/15/2017","1","11","31"),(63,"12/17/2017","1","47","59"),(64,"11/08/2017","1","2","73"),(65,"06/12/2018","1","29","31"),(66,"06/17/2018","0","31","23"),(67,"09/03/2018","0","59","5"),(68,"04/13/2017","0","7","31"),(69,"07/03/2017","0","83","5"),(70,"05/03/2018","0","11","3");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (71,"08/17/2018","0","41","29"),(72,"04/06/2018","1","19","3"),(73,"06/28/2017","0","89","31"),(74,"05/22/2017","0","73","73"),(75,"09/28/2018","0","17","89"),(76,"09/28/2018","1","71","2"),(77,"07/31/2018","0","19","43"),(78,"12/02/2018","1","29","79"),(79,"12/13/2017","0","41","7"),(80,"03/12/2018","1","89","61");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (81,"06/17/2017","0","61","59"),(82,"02/10/2018","1","11","37"),(83,"01/10/2017","0","13","89"),(84,"09/15/2018","1","61","89"),(85,"04/20/2017","1","17","79"),(86,"03/24/2017","1","23","47"),(87,"12/25/2016","1","19","83"),(88,"12/06/2018","0","37","59"),(89,"11/17/2018","1","1","73"),(90,"10/26/2018","0","5","7");
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (91,"09/29/2018","1","11","79"),(92,"07/30/2018","0","5","47"),(93,"11/05/2017","1","29","2"),(94,"11/20/2017","0","37","47"),(95,"09/03/2018","1","59","3"),(96,"11/08/2017","1","11","3"),(97,"01/02/2017","0","53","3"),(98,"02/08/2017","1","2","31"),(99,"09/24/2017","1","29","97"),(100,"04/01/2018","0","61","13");

-- -----------------------------------------------------
-- Table `mydb`.`permission_names`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`permission_names` ;

CREATE TABLE IF NOT EXISTS `mydb`.`permission_names` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `permission_names` (`id`,`name`) VALUES (1,"ligula."),(2,"euismod"),(3,"pharetra"),(4,"massa."),(5,"Quisque"),(6,"dis"),(7,"posuere,"),(8,"tortor"),(9,"nascetur"),(10,"dictum");
INSERT INTO `permission_names` (`id`,`name`) VALUES (11,"nec"),(12,"adipiscing"),(13,"placerat."),(14,"amet"),(15,"nec"),(16,"elementum"),(17,"luctus"),(18,"rutrum,"),(19,"risus."),(20,"primis");
INSERT INTO `permission_names` (`id`,`name`) VALUES (21,"nec"),(22,"ac"),(23,"vestibulum"),(24,"a,"),(25,"neque."),(26,"quis"),(27,"Maecenas"),(28,"lorem"),(29,"Donec"),(30,"massa.");
INSERT INTO `permission_names` (`id`,`name`) VALUES (31,"nulla."),(32,"adipiscing,"),(33,"suscipit,"),(34,"Ut"),(35,"ipsum"),(36,"vitae"),(37,"adipiscing"),(38,"in,"),(39,"Cras"),(40,"faucibus");
INSERT INTO `permission_names` (`id`,`name`) VALUES (41,"Morbi"),(42,"molestie"),(43,"mollis."),(44,"metus"),(45,"odio."),(46,"Phasellus"),(47,"cubilia"),(48,"ut"),(49,"quam."),(50,"risus.");
INSERT INTO `permission_names` (`id`,`name`) VALUES (51,"molestie."),(52,"mi"),(53,"vel"),(54,"Quisque"),(55,"nec,"),(56,"et"),(57,"Sed"),(58,"nunc"),(59,"mollis."),(60,"sagittis");
INSERT INTO `permission_names` (`id`,`name`) VALUES (61,"nisl"),(62,"placerat"),(63,"Suspendisse"),(64,"lorem"),(65,"lectus"),(66,"Ut"),(67,"Fusce"),(68,"eros."),(69,"purus."),(70,"mauris");
INSERT INTO `permission_names` (`id`,`name`) VALUES (71,"nibh"),(72,"Ut"),(73,"arcu."),(74,"non,"),(75,"vel"),(76,"dui,"),(77,"Phasellus"),(78,"id"),(79,"Nunc"),(80,"posuere,");
INSERT INTO `permission_names` (`id`,`name`) VALUES (81,"est."),(82,"dolor,"),(83,"pharetra."),(84,"mauris"),(85,"Sed"),(86,"Ut"),(87,"vitae"),(88,"tincidunt"),(89,"ultrices."),(90,"Donec");
INSERT INTO `permission_names` (`id`,`name`) VALUES (91,"ut,"),(92,"Vivamus"),(93,"mattis."),(94,"faucibus"),(95,"Donec"),(96,"pede."),(97,"Vestibulum"),(98,"et,"),(99,"feugiat"),(100,"molestie");

-- -----------------------------------------------------
-- Table `mydb`.`permissions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`permissions` ;

CREATE TABLE IF NOT EXISTS `mydb`.`permissions` (
  `id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `permission_name_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_permissions_permission_names_idx` (`permission_name_id` ASC),
  INDEX `fk_permissions_users1_idx` (`user_id` ASC),
  CONSTRAINT `fk_permissions_permission_names`
    FOREIGN KEY (`permission_name_id`)
    REFERENCES `mydb`.`permission_names` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_permissions_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (1,"83","17"),(2,"37","3"),(3,"19","5"),(4,"89","67"),(5,"7","17"),(6,"61","43"),(7,"89","5"),(8,"97","5"),(9,"2","47"),(10,"1","11");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (11,"83","83"),(12,"3","53"),(13,"23","23"),(14,"3","13"),(15,"2","31"),(16,"41","1"),(17,"71","83"),(18,"47","67"),(19,"5","73"),(20,"5","59");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (21,"83","73"),(22,"2","47"),(23,"53","67"),(24,"31","73"),(25,"3","31"),(26,"1","97"),(27,"73","11"),(28,"13","67"),(29,"2","17"),(30,"67","37");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (31,"89","67"),(32,"43","71"),(33,"89","13"),(34,"41","89"),(35,"89","31"),(36,"71","83"),(37,"3","11"),(38,"1","79"),(39,"89","53"),(40,"7","5");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (41,"7","41"),(42,"11","73"),(43,"13","53"),(44,"2","43"),(45,"41","23"),(46,"2","73"),(47,"17","2"),(48,"17","17"),(49,"2","13"),(50,"61","11");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (51,"29","1"),(52,"3","13"),(53,"79","17"),(54,"53","43"),(55,"71","29"),(56,"13","89"),(57,"61","83"),(58,"43","11"),(59,"59","3"),(60,"7","31");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (61,"1","89"),(62,"59","11"),(63,"23","23"),(64,"1","53"),(65,"79","97"),(66,"1","2"),(67,"37","79"),(68,"31","53"),(69,"47","79"),(70,"41","19");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (71,"89","17"),(72,"83","5"),(73,"43","89"),(74,"29","3"),(75,"2","79"),(76,"2","47"),(77,"67","11"),(78,"73","71"),(79,"67","29"),(80,"97","67");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (81,"71","5"),(82,"3","71"),(83,"59","79"),(84,"17","1"),(85,"5","73"),(86,"37","61"),(87,"97","29"),(88,"83","19"),(89,"71","5"),(90,"31","53");
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (91,"2","67"),(92,"47","5"),(93,"43","11"),(94,"29","53"),(95,"41","29"),(96,"71","83"),(97,"67","31"),(98,"11","5"),(99,"5","47"),(100,"29","19");


USE `mydb` ;

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`view1` (`id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`view2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`view2` (`id` INT);

-- -----------------------------------------------------
-- View `mydb`.`view1`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `mydb`.`view1` ;
DROP TABLE IF EXISTS `mydb`.`view1`;
USE `mydb`;


-- -----------------------------------------------------
-- View `mydb`.`view2`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `mydb`.`view2` ;
DROP TABLE IF EXISTS `mydb`.`view2`;
USE `mydb`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
