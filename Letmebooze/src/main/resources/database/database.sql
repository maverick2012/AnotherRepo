SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `db_letmebooze` DEFAULT CHARACTER SET latin1 ;
USE `db_letmebooze` ;

-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_location`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_location` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `city` VARCHAR(50) NULL DEFAULT NULL ,
  `state` VARCHAR(100) NULL DEFAULT NULL ,
  `country` VARCHAR(200) NULL DEFAULT NULL ,
  `location` VARCHAR(200) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_member`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_member` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `fl_nm` VARCHAR(50) NOT NULL ,
  `lst_nm` VARCHAR(50) NOT NULL ,
  `sex` CHAR(1) NULL DEFAULT NULL ,
  `eml_addr` VARCHAR(200) NOT NULL ,
  `ph_no` VARCHAR(10) NOT NULL ,
  `addr_txt` VARCHAR(500) NULL DEFAULT NULL ,
  `default_loc` INT(11) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  `is_deleted` BIT(1) NULL DEFAULT NULL ,
  `dob` DATETIME NULL DEFAULT NULL ,
  `user_pwd` VARBINARY(2000) NOT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_member_ibfk_1`
    FOREIGN KEY (`default_loc` )
    REFERENCES `db_letmebooze`.`tbl_lmb_location` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `eml_addr` ON `db_letmebooze`.`tbl_lmb_member` (`eml_addr` ASC) ;

CREATE UNIQUE INDEX `ph_no` ON `db_letmebooze`.`tbl_lmb_member` (`ph_no` ASC) ;

CREATE INDEX `default_loc` ON `db_letmebooze`.`tbl_lmb_member` (`default_loc` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_merchent`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_merchent` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `store_nm` VARCHAR(30) NOT NULL ,
  `eml_addr` VARCHAR(200) NULL DEFAULT NULL ,
  `Tin_no` VARCHAR(200) NOT NULL ,
  `pmy_phone_no` MEDIUMTEXT NOT NULL ,
  `scy_phone_no` MEDIUMTEXT NULL DEFAULT NULL ,
  `start_tm` DATETIME NOT NULL ,
  `end_tm` DATETIME NOT NULL ,
  `min_amt` DECIMAL(28,12) NOT NULL ,
  `max_amt` DECIMAL(28,12) NOT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  `is_deleted` BIT(1) NULL DEFAULT NULL ,
  `store_img_loc` VARCHAR(200) NULL DEFAULT NULL ,
  `devr_tm` SMALLINT(6) NOT NULL ,
  `hldy_derv_tm` SMALLINT(6) NOT NULL ,
  `hly_start_tm` DATETIME NOT NULL ,
  `hldy_end_time` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `Tin_no` ON `db_letmebooze`.`tbl_lmb_merchent` (`Tin_no` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_payment_mode`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_payment_mode` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `for_guest` BIT(1) NULL DEFAULT b'0' COMMENT '	' ,
  `paymt_type` VARCHAR(50) NULL DEFAULT NULL ,
  `for_service` BIT(1) NULL DEFAULT b'0' ,
  `for_order` BIT(1) NULL DEFAULT b'0' ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_mrch_prvd_srvc`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_mrch_prvd_srvc` (
  `store_id` INT(11) NOT NULL ,
  `paymt_srv_id` INT(11) NOT NULL ,
  `is_provided` BIT(1) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `pay_srv_rate` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`store_id`) ,
  CONSTRAINT `tbl_lmb_mrch_prvd_srvc_ibfk_1`
    FOREIGN KEY (`store_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_merchent` (`id` ),
  CONSTRAINT `tbl_lmb_mrch_prvd_srvc_ibfk_2`
    FOREIGN KEY (`paymt_srv_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_payment_mode` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `tbl_lmb_mrch_prvd_srvc_ibfk_2` ON `db_letmebooze`.`tbl_lmb_mrch_prvd_srvc` (`paymt_srv_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `usr_nm` VARCHAR(50) NOT NULL ,
  `eml_addr` VARCHAR(200) NOT NULL ,
  `ph_no` VARCHAR(10) NOT NULL ,
  `addr_txt` VARCHAR(500) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  `is_deleted` BIT(1) NULL DEFAULT NULL ,
  `dob` DATETIME NULL DEFAULT NULL ,
  `member_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_user_ibfk_1`
    FOREIGN KEY (`member_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_member` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `member_id` ON `db_letmebooze`.`tbl_lmb_user` (`member_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_order`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_order` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `order_no` VARCHAR(50) NOT NULL ,
  `user_id` INT(11) NOT NULL ,
  `store_id` INT(11) NOT NULL ,
  `ord_dt` DATETIME NOT NULL ,
  `ord_devr_dt` DATETIME NOT NULL ,
  `order_type` INT(11) NOT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  `is_cancled` BIT(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_order_ibfk_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_user` (`id` ),
  CONSTRAINT `tbl_lmb_order_ibfk_2`
    FOREIGN KEY (`store_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_merchent` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `order_no` ON `db_letmebooze`.`tbl_lmb_order` (`order_no` ASC) ;

CREATE INDEX `user_id` ON `db_letmebooze`.`tbl_lmb_order` (`user_id` ASC) ;

CREATE INDEX `store_id` ON `db_letmebooze`.`tbl_lmb_order` (`store_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_product_details`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_product_details` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `volume` INT(11) NULL DEFAULT NULL ,
  `company_nm` VARCHAR(200) NULL DEFAULT NULL ,
  `description` VARCHAR(500) NULL DEFAULT NULL ,
  `img_loc` VARCHAR(200) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_product`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_product` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `prod_type_id` INT(11) NULL DEFAULT NULL ,
  `prod_details_id` INT(11) NULL DEFAULT NULL ,
  `prod_prc` DECIMAL(28,12) NULL DEFAULT NULL ,
  `IS_avaliable` BIT(1) NULL DEFAULT NULL ,
  `store_id` INT(11) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  `is_deleted` BIT(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_product_ibfk_1`
    FOREIGN KEY (`prod_details_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_product_details` (`id` ),
  CONSTRAINT `tbl_lmb_product_ibfk_2`
    FOREIGN KEY (`store_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_merchent` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `prod_details_id` ON `db_letmebooze`.`tbl_lmb_product` (`prod_details_id` ASC) ;

CREATE INDEX `store_id` ON `db_letmebooze`.`tbl_lmb_product` (`store_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_order_details`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_order_details` (
  `order_id` INT(11) NOT NULL DEFAULT '0' ,
  `prod_id` INT(11) NOT NULL DEFAULT '0' ,
  `prod_qty` INT(11) NULL DEFAULT '0',
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`order_id`, `prod_id`) ,
  CONSTRAINT `tbl_lmb_order_details_ibfk_1`
    FOREIGN KEY (`order_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_order` (`id` ),
  CONSTRAINT `tbl_lmb_order_details_ibfk_2`
    FOREIGN KEY (`prod_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_product` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `prod_id` ON `db_letmebooze`.`tbl_lmb_order_details` (`prod_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_service`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_service` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `srv_type_nm` VARCHAR(100) NULL DEFAULT NULL ,
  `serv_intr_rt` INT(11) NULL DEFAULT NULL ,
  `serv_intr_base` INT(11) NULL DEFAULT NULL ,
  `min_amt` DECIMAL(28,12) NULL DEFAULT NULL ,
  `max_amt` DECIMAL(28,12) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_service_usages`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_service_usages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `serv_id` INT(11) NOT NULL ,
  `member_id` INT(11) NOT NULL ,
  `start_dt` DATETIME NULL DEFAULT NULL ,
  `end_dt` DATETIME NULL DEFAULT NULL ,
  `srv_intr_rate` INT(11) NULL DEFAULT NULL ,
  `srv_intr_base` INT(11) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_service_usages_ibfk_1`
    FOREIGN KEY (`member_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_member` (`id` ),
  CONSTRAINT `tbl_lmb_service_usages_ibfk_2`
    FOREIGN KEY (`serv_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_service` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `member_id` ON `db_letmebooze`.`tbl_lmb_service_usages` (`member_id` ASC) ;

CREATE INDEX `serv_id` ON `db_letmebooze`.`tbl_lmb_service_usages` (`serv_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_order_paymt_details`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_order_paymt_details` (
  `order_id` INT(11) NOT NULL ,
  `paymt_mode_id` INT(11) NOT NULL ,
  `service_id` INT(11) NULL DEFAULT NULL ,
  `paymt_amt` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`order_id`, `paymt_mode_id`) ,
  CONSTRAINT `tbl_lmb_order_paymt_details_ibfk_1`
    FOREIGN KEY (`order_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_order` (`id` ),
  CONSTRAINT `tbl_lmb_order_paymt_details_ibfk_2`
    FOREIGN KEY (`paymt_mode_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_payment_mode` (`id` ),
  CONSTRAINT `tbl_lmb_order_paymt_details_ibfk_3`
    FOREIGN KEY (`service_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_service_usages` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `paymt_mode_id` ON `db_letmebooze`.`tbl_lmb_order_paymt_details` (`paymt_mode_id` ASC) ;

CREATE INDEX `tbl_lmb_order_paymt_details_ibfk_3` ON `db_letmebooze`.`tbl_lmb_order_paymt_details` (`service_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_store_devr_loc`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_store_devr_loc` (
  `store_id` INT(11) NOT NULL ,
  `loc_id` INT(11) NOT NULL ,
  PRIMARY KEY (`store_id`, `loc_id`) ,
  CONSTRAINT `fk_tbl_lmb_store_devr_loc_tbl_lmb_location1`
    FOREIGN KEY (`loc_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_location` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_lmb_store_devr_loc_tbl_lmb_merchent1`
    FOREIGN KEY (`store_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_merchent` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_tbl_lmb_store_devr_loc_tbl_lmb_location1` ON `db_letmebooze`.`tbl_lmb_store_devr_loc` (`loc_id` ASC) ;

CREATE INDEX `fk_tbl_lmb_store_devr_loc_tbl_lmb_merchent1` ON `db_letmebooze`.`tbl_lmb_store_devr_loc` (`store_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_trans`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_trans` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `trans_no` VARCHAR(20) NOT NULL ,
  `order_id` INT(11) NULL DEFAULT NULL ,
  `transc_type` INT(11) NULL DEFAULT NULL ,
  `tot_amt` DECIMAL(50,0) NULL DEFAULT NULL ,
  `send_tok` VARCHAR(50) NULL DEFAULT NULL ,
  `recieve_tok` VARCHAR(50) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_trans_ibfk_1`
    FOREIGN KEY (`order_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_order` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `trans_no` ON `db_letmebooze`.`tbl_lmb_trans` (`trans_no` ASC) ;

CREATE INDEX `order_id` ON `db_letmebooze`.`tbl_lmb_trans` (`order_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_trans_msg`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_trans_msg` (
  `trans_msg_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `trans_id` INT(11) NULL DEFAULT NULL ,
  `msg_txt` VARCHAR(2000) NULL DEFAULT NULL ,
  `is_sucess` BIT(1) NULL DEFAULT NULL ,
  `gateway_trans_no` VARCHAR(100) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`trans_msg_id`) ,
  CONSTRAINT `tbl_lmb_trans_msg_ibfk_1`
    FOREIGN KEY (`trans_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_trans` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `trans_id` ON `db_letmebooze`.`tbl_lmb_trans_msg` (`trans_id` ASC) ;


-- -----------------------------------------------------
-- Table `db_letmebooze`.`tbl_lmb_user_srv_trans`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_letmebooze`.`tbl_lmb_user_srv_trans` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `serv_usages_id` INT(11) NOT NULL ,
  `trans_type_cd` CHAR(1) NOT NULL ,
  `order_id` INT(11) NOT NULL ,
  `tot_amt` DECIMAL(28,12) NULL DEFAULT NULL ,
  `created_on` DATETIME NULL DEFAULT NULL ,
  `update_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `update_by` VARCHAR(50) NULL DEFAULT NULL ,
  `created_by` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `tbl_lmb_user_srv_trans_ibfk_1`
    FOREIGN KEY (`serv_usages_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_service_usages` (`id` ),
  CONSTRAINT `tbl_lmb_user_srv_trans_ibfk_2`
    FOREIGN KEY (`order_id` )
    REFERENCES `db_letmebooze`.`tbl_lmb_order` (`id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `serv_usages_id` ON `db_letmebooze`.`tbl_lmb_user_srv_trans` (`serv_usages_id` ASC) ;

CREATE INDEX `order_id` ON `db_letmebooze`.`tbl_lmb_user_srv_trans` (`order_id` ASC) ;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
