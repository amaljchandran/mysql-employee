CREATE TABLE employee(
  employee_id  SMALLINT    UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name   VARCHAR(45) NOT NULL,
  last_name    VARCHAR(45) NOT NULL,
  gender        VARCHAR(50) DEFAULT NULL,
  DOB   SMALLINT    UNSIGNED NOT NULL,
  salutation SMALLINT    UNSIGNED NOT NULL AUTO_INCREMENT,
  Designation   VARCHAR(45) NOT NULL,
  email        VARCHAR(50) DEFAULT NULL,
  mobile  SMALLINT    UNSIGNED NOT NULL AUTO_INCREMENT,
  address_1   SMALLINT    UNSIGNED NOT NULL,
  address_2  SMALLINT    UNSIGNED NOT NULL,
  city   VARCHAR(45) NOT NULL,
  state  VARCHAR(45) NOT NULL,
  pin  SMALLINT    UNSIGNED NOT NULL,
  country  VARCHAR(45) NOT NULL,
  create_date  DATETIME    NOT NULL,
  last_update  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (customer_id),
  KEY idx_fk_store_id (store_id),
  KEY idx_fk_address_id (address_id),
  KEY idx_last_name (last_name),
  CONSTRAINT fk_customer_address FOREIGN KEY (address_id) REFERENCES address (address_id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_customer_store FOREIGN KEY (store_id) REFERENCES store (store_id)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  
  
  
  
  
  
  
  
  
  
  
  
  active       BOOLEAN     NOT NULL DEFAULT TRUE,
  create_date  DATETIME    NOT NULL,
  last_update  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (customer_id),
  KEY idx_fk_store_id (store_id),
  KEY idx_fk_address_id (address_id),
  KEY idx_last_name (last_name),
  CONSTRAINT fk_customer_address FOREIGN KEY (address_id) REFERENCES address (address_id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_customer_store FOREIGN KEY (store_id) REFERENCES store (store_id)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;