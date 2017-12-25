-- MySQL Script generated by MySQL Workbench
-- Fri Dec 22 14:11:46 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

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

INSERT INTO `tour_types` (`id`,`tour_type`) VALUES (1,"sightseeing"),(2,"transfer"),(3,"shopping"),(4,"excursion");


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`users` ;

CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(90) NOT NULL,
  `password_hash` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (1,"Abra","Tamekah","nulla","XVT45RLN0QT"),(2,"Graham","Maggie","Etiam","NAZ46YJJ3HN"),(3,"Clinton","Alika","lobortis,","MAD39WWC6HZ"),(4,"Nissim","Adele","ac","ORQ76KLN6SO"),(5,"Nathaniel","Claire","Cras","NXY15YPK1YG"),(6,"Naomi","Austin","lobortis,","HRC44WXK8FS"),(7,"Dustin","Ralph","ut","SFJ86XTX6AB"),(8,"September","Fredericka","Vivamus","SVB43LBE4RX"),(9,"Yardley","Jakeem","magnis","LYW49CSS2XB"),(10,"Cain","Pascale","non,","YFO72DEW7QO");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (11,"Isabelle","Stacy","porttitor","ULJ32EPY3VZ"),(12,"Griffith","Kathleen","imperdiet","IPH79HET8GS"),(13,"Lee","Maite","Nullam","WLM53XPR7MU"),(14,"Noble","Rigel","malesuada","YBA95GZC3WG"),(15,"Jamal","Brendan","mauris","JOI82DWD5YJ"),(16,"Kiayada","Tashya","Quisque","EFX49AJA7JS"),(17,"Rae","Rae","Donec","JUO70XIN6SQ"),(18,"Cassady","Clio","Nulla","VZH15ZVR9LD"),(19,"Daquan","Eliana","sem,","UYY18ODE8FQ"),(20,"Joel","Dane","Aliquam","URG49OEF0OL");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (21,"Addison","Dante","Duis","OSC40OIN7EB"),(22,"Abdul","Emily","tincidunt","GFN94XCY1DC"),(23,"Abdul","Shad","congue,","DOC50JKO6JM"),(24,"Sebastian","Montana","nec,","YXC90WQN8ER"),(25,"Quentin","Kiara","nec","GKG23DOF7RW"),(26,"Sigourney","Stella","mauris","GHO61ELF3IU"),(27,"Stella","Tucker","Donec","YAP63WIH2YU"),(28,"Brendan","Nell","Proin","VPJ73EET8DO"),(29,"Bernard","Finn","sit","ANQ57PWH7FG"),(30,"Octavius","Kelly","dui","EKM36ZGQ7HS");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (31,"Xavier","Joelle","dui","XCF27SMT5IR"),(32,"Shay","Hoyt","dictum.","NXQ92KKB4CG"),(33,"Colin","Cheyenne","Nunc","UTH40DDG0PW"),(34,"Peter","Kenneth","nibh.","XSA13JUE2TJ"),(35,"Karleigh","Wing","libero.","MNL91GIB8XC"),(36,"Drake","Nadine","arcu","HSD00WTU3ZR"),(37,"Amal","Harlan","Aliquam","CST18QUE7NI"),(38,"Jana","Anthony","commodo","XAQ60JWW6IR"),(39,"Linda","Rhea","lacus.","FYI54LQC1OL"),(40,"Lynn","Carter","ornare,","AEL05CAB4FQ");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (41,"Christopher","Randall","mauris","JRC37FRX1TB"),(42,"Wyoming","Daphne","eget","ZUQ62BTM0EP"),(43,"Chantale","Adara","varius","LZF46DIR3GF"),(44,"Lael","Price","vestibulum.","YGU13CBI8HX"),(45,"Oren","Justina","purus","ZWG32CIN4YH"),(46,"Ebony","Genevieve","Phasellus","UVX07PMY3GS"),(47,"Hollee","George","dignissim","IGW90ZAZ9PP"),(48,"Tanek","Rebekah","In","JKM26ECT4AW"),(49,"Rajah","Delilah","nonummy","ZVM64BYZ5GI"),(50,"Otto","Fiona","libero","IJL52XQP9TH");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (51,"Erich","Rebekah","dolor.","KVU59VKQ0DX"),(52,"Leigh","Jared","ligula.","ETW91DZX6MU"),(53,"Cherokee","Phelan","placerat","TZW10DGE4CX"),(54,"Jerome","Nina","tristique","DZQ63UMD7VQ"),(55,"Patricia","Fiona","Morbi","NQZ82AXO9RK"),(56,"Oren","Ciaran","purus.","YXO03JUO4RI"),(57,"Heather","Amal","interdum.","IKV37HFP8DC"),(58,"Tashya","Kimberly","elementum,","PUZ98WXZ7ZI"),(59,"Igor","Abel","Aenean","FVM36ZZF5BD"),(60,"Luke","Sebastian","ac","YQW44EOQ6JN");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (61,"TaShya","Prescott","Etiam","KXR24DSP4AR"),(62,"Beck","Lana","pellentesque","NNK91VKN0OD"),(63,"Leila","Gregory","ut","TQY27TTI3TG"),(64,"Beck","Tyler","mattis","XIG12SDM6YD"),(65,"Prescott","Ahmed","porttitor","QEW60TTI5SC"),(66,"Cedric","Frances","Suspendisse","NSS75FGM5SA"),(67,"Daphne","Gavin","risus,","CRK97MUA3ZX"),(68,"Scarlet","Walker","mollis","VNB92YLM9XC"),(69,"Tanner","Jason","aliquam","DHR27YTJ4II"),(70,"Rebekah","Kane","sit","NRX19VJB2TW");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (71,"Zelda","Donovan","est","JQM88COA2VD"),(72,"Hashim","Myles","at","JYQ08QHH2MD"),(73,"Martina","Joan","eget,","HHW82EIO5TM"),(74,"Jonah","Ezekiel","Pellentesque","ERO10UOG2TC"),(75,"Walker","Tamara","Morbi","SPT68PCQ5LJ"),(76,"Inez","Leandra","ullamcorper","ENE51GZR3RJ"),(77,"Clayton","Xavier","Vestibulum","OPY13JLN1AY"),(78,"Troy","Warren","eu,","IMN91HFS3RE"),(79,"Rhonda","Fuller","malesuada","YNE64URU2WR"),(80,"Hayden","Yuli","placerat.","TTG91MWG3PO");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (81,"Ayanna","Dexter","eu","FLI90KOT5UJ"),(82,"Donna","Ori","malesuada.","IZS51PLI9DA"),(83,"Zena","Yen","sapien.","NTN76HPH0GY"),(84,"Hedley","Warren","tellus","JSR09NJO5XO"),(85,"Hayes","TaShya","nec","ZIS12CJS5IS"),(86,"Amaya","Zeph","pede","THZ76NAF1SO"),(87,"Gareth","Hayfa","diam","QOH30UUX1FE"),(88,"Jameson","Hedy","libero","ZUV90QBS6WO"),(89,"Adam","Latifah","mauris","KMK32PMD3DM"),(90,"Hayden","Myles","Cras","BLG11HPC3QB");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`password_hash`) VALUES (91,"Kaden","Driscoll","viverra.","SZG96BDH9XK"),(92,"Honorato","Alexander","eget,","DNV25RMV7FA"),(93,"Ursula","Elvis","pellentesque","MNQ00GHZ2ZH"),(94,"Chandler","Lucian","Aliquam","ZDM00HDD2IC"),(95,"Joshua","Luke","leo.","PVG17BSS3IY"),(96,"Kieran","Allen","Duis","TWA87VYY2BV"),(97,"Daphne","Camilla","et","DXI02WAT3ZW"),(98,"Lee","Vladimir","urna","BUU70FCM8QC"),(99,"Darius","Clarke","Duis","YRE04AGO3PX"),(100,"Kevin","Levi","sed","CNA85QPX1QC");

-- -----------------------------------------------------
-- Table `mydb`.`tours`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tours` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tours` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `hot` TINYINT NOT NULL,
  `price` DOUBLE NOT NULL,
  `duration` INT UNSIGNED NOT NULL,
  `agent_id` INT UNSIGNED NOT NULL,
  `active` TINYINT NOT NULL,
  `tour_types_id` INT UNSIGNED NOT NULL,
  `tour_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tours_tour_types1_idx` (`tour_types_id` ASC),
  INDEX `fk_tours_users1_idx` (`agent_id` ASC),
  CONSTRAINT `fk_tours_tour_types1`
    FOREIGN KEY (`tour_types_id`)
    REFERENCES `mydb`.`tour_types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tours_users1`
    FOREIGN KEY (`agent_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (1,"1",1074,28,58,"1",2,"French Southern Territories"),(2,"1",44955,9,98,"1",4,"Mauritius"),(3,"0",22747,8,73,"1",4,"Pakistan"),(4,"1",73992,7,2,"0",3,"Philippines"),(5,"0",67579,22,94,"0",3,"Haiti"),(6,"0",46718,16,80,"0",4,"Malawi"),(7,"0",30329,22,22,"0",3,"Swaziland"),(8,"1",86347,18,56,"0",4,"Cocos (Keeling) Islands"),(9,"0",79346,23,74,"0",2,"Slovenia"),(10,"0",87828,5,26,"1",3,"Curaçao");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (11,"1",53352,29,2,"0",2,"Madagascar"),(12,"1",99482,22,80,"0",1,"Sweden"),(13,"1",38351,5,83,"1",3,"Ethiopia"),(14,"1",56613,27,22,"0",3,"Marshall Islands"),(15,"1",58969,9,94,"1",4,"Botswana"),(16,"0",21388,6,33,"0",3,"Bonaire, Sint Eustatius and Saba"),(17,"1",86255,16,34,"1",4,"Christmas Island"),(18,"0",54464,5,92,"0",1,"Cambodia"),(19,"0",58681,24,18,"1",3,"Bangladesh"),(20,"0",14743,16,2,"1",4,"France");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (21,"0",1063,10,98,"0",2,"Christmas Island"),(22,"0",7289,11,21,"1",4,"Czech Republic"),(23,"0",89134,26,11,"1",1,"Bolivia"),(24,"1",14470,3,47,"1",2,"Philippines"),(25,"0",98261,18,99,"0",4,"Jamaica"),(26,"0",59166,11,79,"1",1,"Kazakhstan"),(27,"0",81293,11,30,"1",4,"Guam"),(28,"1",28650,17,22,"0",1,"Mozambique"),(29,"1",59645,4,75,"1",1,"Montenegro"),(30,"0",12580,30,36,"0",4,"Taiwan");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (31,"1",84643,6,72,"1",1,"Laos"),(32,"1",71462,7,24,"0",1,"Marshall Islands"),(33,"1",3505,22,66,"1",4,"Mali"),(34,"0",12165,17,52,"1",3,"Kyrgyzstan"),(35,"1",17720,10,26,"1",2,"Bolivia"),(36,"1",82642,23,88,"0",4,"Moldova"),(37,"1",59489,6,60,"1",1,"India"),(38,"1",28800,5,51,"0",2,"Central African Republic"),(39,"1",43796,28,2,"1",4,"Northern Mariana Islands"),(40,"1",53726,11,44,"1",1,"United States");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (41,"0",28824,8,78,"0",2,"Curaçao"),(42,"1",32569,22,1,"0",4,"Russian Federation"),(43,"0",7197,10,43,"0",2,"Nigeria"),(44,"1",61807,28,3,"0",3,"Portugal"),(45,"0",46892,5,46,"0",1,"India"),(46,"1",89240,20,68,"1",3,"Denmark"),(47,"1",14538,20,34,"0",4,"Saint Martin"),(48,"0",86084,27,42,"0",2,"Sint Maarten"),(49,"0",91582,3,23,"0",2,"Sweden"),(50,"0",60253,13,31,"1",2,"Italy");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (51,"0",60133,25,80,"1",2,"Japan"),(52,"0",54738,7,64,"0",2,"Angola"),(53,"1",33902,13,91,"0",4,"Tokelau"),(54,"0",27303,9,45,"0",2,"Virgin Islands, United States"),(55,"1",67218,22,68,"0",1,"Niue"),(56,"0",59624,2,61,"1",2,"Belize"),(57,"1",53503,30,84,"1",2,"French Guiana"),(58,"0",52949,16,78,"1",4,"Puerto Rico"),(59,"0",96037,15,98,"1",2,"Fiji"),(60,"1",90211,11,74,"0",1,"Faroe Islands");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (61,"0",23113,27,60,"0",3,"Bolivia"),(62,"0",43501,5,84,"1",3,"Albania"),(63,"1",48820,9,84,"0",1,"Bouvet Island"),(64,"0",43457,12,99,"1",3,"Faroe Islands"),(65,"1",77256,26,88,"0",4,"Burkina Faso"),(66,"1",40463,30,77,"1",4,"Åland Islands"),(67,"0",56377,30,23,"0",2,"Bermuda"),(68,"1",44646,27,36,"0",3,"Martinique"),(69,"0",15614,7,24,"0",2,"Viet Nam"),(70,"0",2976,6,78,"1",3,"Malaysia");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (71,"1",27764,14,23,"0",4,"Cape Verde"),(72,"1",97228,17,31,"0",3,"French Southern Territories"),(73,"1",41100,9,21,"0",2,"Honduras"),(74,"0",16622,12,6,"0",3,"Kazakhstan"),(75,"0",42855,17,34,"0",4,"Germany"),(76,"0",60495,14,7,"0",2,"Kenya"),(77,"1",22747,7,80,"1",3,"United Arab Emirates"),(78,"0",24724,13,27,"1",1,"Sweden"),(79,"1",1789,19,25,"0",2,"British Indian Ocean Territory"),(80,"0",96197,5,100,"1",1,"Saint Pierre and Miquelon");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (81,"1",51678,7,86,"0",1,"Palestine, State of"),(82,"1",12239,19,23,"0",1,"Swaziland"),(83,"0",2386,5,45,"0",3,"Greece"),(84,"0",20458,28,74,"0",3,"Saint Martin"),(85,"1",28435,27,50,"0",4,"Djibouti"),(86,"0",82609,13,56,"0",1,"Spain"),(87,"1",41741,17,30,"0",2,"Netherlands"),(88,"1",61676,13,96,"1",1,"Monaco"),(89,"0",23093,7,9,"0",1,"Mauritius"),(90,"1",70325,19,70,"0",4,"Mexico");
INSERT INTO `tours` (`id`,`hot`,`price`,`duration`,`agent_id`,`active`,`tour_types_id`,`tour_name`) VALUES (91,"0",48950,30,44,"1",4,"Libya"),(92,"1",86415,8,56,"0",1,"Saint Pierre and Miquelon"),(93,"1",8628,16,2,"1",3,"Eritrea"),(94,"1",25993,25,51,"1",3,"Bulgaria"),(95,"1",9155,21,73,"0",3,"Mozambique"),(96,"0",53474,20,48,"1",2,"Virgin Islands, British"),(97,"1",11099,5,70,"1",1,"Puerto Rico"),(98,"1",43905,15,27,"1",3,"Norway"),(99,"0",87026,14,94,"1",1,"Chile"),(100,"0",88897,20,47,"0",1,"Suriname");

-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`orders` ;

CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(45) NOT NULL,
  `active` TINYINT NOT NULL,
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

INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (1,"02/17/2017","1",60,76),(2,"06/06/2018","1",37,11),(3,"07/27/2018","0",24,82),(4,"03/17/2017","0",18,90),(5,"08/27/2017","1",48,82),(6,"11/01/2018","0",64,2),(7,"11/05/2018","1",94,54),(8,"08/31/2018","1",18,60),(9,"01/08/2017","0",20,22),(10,"03/24/2017","0",41,85);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (11,"10/20/2017","0",98,24),(12,"02/06/2017","1",66,50),(13,"04/19/2017","1",85,98),(14,"07/10/2018","0",50,74),(15,"04/14/2017","1",21,50),(16,"12/23/2017","0",91,52),(17,"03/22/2018","0",36,59),(18,"03/11/2018","0",89,50),(19,"01/16/2018","1",86,94),(20,"06/08/2018","1",83,31);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (21,"08/31/2017","1",82,6),(22,"09/23/2018","0",10,66),(23,"09/08/2018","1",85,50),(24,"11/20/2018","0",16,95),(25,"07/27/2018","0",59,12),(26,"10/28/2018","0",68,92),(27,"02/19/2017","0",46,31),(28,"07/16/2017","1",74,72),(29,"10/22/2017","0",29,98),(30,"05/27/2018","0",96,98);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (31,"04/08/2018","1",100,57),(32,"06/20/2018","1",16,14),(33,"09/29/2018","0",33,55),(34,"06/08/2017","1",89,26),(35,"02/08/2018","0",9,37),(36,"03/06/2017","1",68,33),(37,"01/28/2017","0",56,34),(38,"06/21/2017","1",90,47),(39,"03/15/2017","0",30,54),(40,"10/15/2017","0",30,37);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (41,"12/14/2018","0",22,33),(42,"01/02/2017","1",47,11),(43,"11/23/2018","0",22,7),(44,"01/25/2018","0",44,53),(45,"04/22/2017","1",88,1),(46,"11/05/2018","0",8,34),(47,"10/15/2017","0",26,85),(48,"11/01/2017","1",52,69),(49,"08/17/2018","0",61,98),(50,"10/24/2017","0",17,58);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (51,"03/05/2018","1",32,85),(52,"12/20/2017","0",2,17),(53,"11/16/2018","1",51,59),(54,"08/25/2017","0",70,68),(55,"03/18/2018","0",62,48),(56,"07/20/2018","1",90,77),(57,"05/23/2018","1",14,71),(58,"07/27/2017","1",17,81),(59,"07/06/2017","0",86,44),(60,"03/29/2017","1",52,27);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (61,"06/03/2018","0",92,61),(62,"09/26/2018","1",5,27),(63,"01/02/2018","1",55,20),(64,"08/24/2018","1",24,14),(65,"05/13/2018","1",26,95),(66,"02/16/2017","1",42,53),(67,"07/13/2018","0",27,44),(68,"04/11/2017","1",93,35),(69,"01/04/2018","1",77,13),(70,"03/28/2018","1",80,6);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (71,"08/17/2017","0",50,69),(72,"05/19/2017","1",77,77),(73,"06/25/2017","0",70,95),(74,"10/05/2017","0",29,24),(75,"09/22/2017","1",69,48),(76,"01/19/2017","1",87,42),(77,"10/18/2018","0",28,37),(78,"03/15/2018","0",86,8),(79,"09/01/2018","1",35,78),(80,"02/17/2018","1",30,8);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (81,"05/30/2018","0",60,65),(82,"03/31/2017","0",71,85),(83,"10/01/2017","1",29,78),(84,"05/04/2018","0",86,94),(85,"11/05/2018","1",18,32),(86,"12/23/2016","0",21,34),(87,"03/24/2017","1",27,42),(88,"04/03/2018","0",99,20),(89,"05/21/2018","1",3,84),(90,"09/01/2017","0",7,26);
INSERT INTO `orders` (`id`,`date`,`active`,`tour_id`,`user_id`) VALUES (91,"03/15/2018","1",39,80),(92,"05/22/2017","0",83,2),(93,"04/05/2017","1",37,59),(94,"09/30/2017","0",40,68),(95,"07/24/2018","1",73,88),(96,"04/25/2017","0",85,10),(97,"09/29/2018","0",14,77),(98,"08/09/2017","0",72,6),(99,"08/19/2017","0",38,35),(100,"09/06/2018","1",90,64);

-- -----------------------------------------------------
-- Table `mydb`.`permission_names`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`permission_names` ;

CREATE TABLE IF NOT EXISTS `mydb`.`permission_names` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `permission_names` (`id`,`name`) VALUES (1,"admin"),(2,"agent"),(3,"user");
-- -----------------------------------------------------
-- Table `mydb`.`permissions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`permissions` ;

CREATE TABLE IF NOT EXISTS `mydb`.`permissions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
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

INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (1,49,2),(2,21,3),(3,78,3),(4,80,2),(5,83,1),(6,43,1),(7,8,2),(8,95,1),(9,91,1),(10,93,1);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (11,43,1),(12,65,3),(13,42,2),(14,39,2),(15,56,3),(16,61,3),(17,78,3),(18,45,1),(19,96,2),(20,16,2);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (21,48,2),(22,41,2),(23,6,3),(24,19,1),(25,38,1),(26,31,2),(27,38,2),(28,78,1),(29,2,2),(30,86,2);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (31,26,1),(32,12,1),(33,99,1),(34,6,2),(35,6,2),(36,38,3),(37,80,1),(38,90,3),(39,11,2),(40,26,3);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (41,12,1),(42,24,1),(43,52,1),(44,93,1),(45,74,3),(46,12,1),(47,89,2),(48,39,2),(49,13,2),(50,52,3);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (51,78,3),(52,89,1),(53,40,3),(54,52,2),(55,20,2),(56,5,2),(57,70,2),(58,22,3),(59,57,3),(60,88,3);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (61,52,3),(62,25,2),(63,24,2),(64,21,3),(65,33,3),(66,44,3),(67,76,1),(68,29,2),(69,22,3),(70,4,3);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (71,77,3),(72,77,3),(73,68,1),(74,72,2),(75,62,1),(76,79,3),(77,46,1),(78,58,3),(79,51,2),(80,39,3);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (81,12,3),(82,75,1),(83,80,3),(84,4,2),(85,70,1),(86,56,1),(87,53,1),(88,91,2),(89,30,1),(90,96,1);
INSERT INTO `permissions` (`id`,`user_id`,`permission_name_id`) VALUES (91,23,1),(92,50,1),(93,20,2),(94,41,3),(95,75,1),(96,16,3),(97,81,1),(98,17,2),(99,45,3),(100,24,3);

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
