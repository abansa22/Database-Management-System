SET foreign_key_checks = 0;
drop table if exists test;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists store;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists employee;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists tb_user;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists orders;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists donation_cart;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists category;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists item;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table if exists user;
SET foreign_key_checks = 1;
SET foreign_key_checks = 0;
drop table if exists entity1;
SET foreign_key_checks = 1;

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `store_id_UNIQUE` (`store_id`),
  UNIQUE KEY `store_name_UNIQUE` (`store_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT '0',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `position` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `employee` (`store_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `tb_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `orderstatus` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  KEY `fk_order_user` (`user_id`),
  KEY `sales_employee` (`sales_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_employee` FOREIGN KEY (`sales_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `donation_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `donator_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`cart_id`),
  UNIQUE KEY `cart_id_UNIQUE` (`cart_id`),
  KEY `fk_cart_user_idx` (`donator_id`),
  CONSTRAINT `fk_cart_user` FOREIGN KEY (`donator_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `cart_id` int(11) DEFAULT '0',
  `item_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id` (`item_id`),
  KEY `order_id` (`order_id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_ibfk_2` (`category_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `item_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `donation_cart` (`cart_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `entity1` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO donation.store (store_id, store_name, address, phone, email) VALUES (1001,'Halsted Better Will','300 N Halsted Street','312-123-4567','halsted_betterwill@gmail.com');
INSERT INTO donation.store (store_id, store_name, address, phone, email) VALUES (1002,'West Loop Better WIll','200 W. Taylor Street','312-321-4321','westloop_betterwill@gmail.com');
INSERT INTO donation.store (store_id, store_name, address, phone, email) VALUES (1003,'Downtown Better WIll','100 N. Clark Steet, Chicago,60605','312-123-1111','downtown_betterwill@gmail.com');
INSERT INTO donation.store (store_id, store_name, address, phone, email) VALUES (1004,'Uptown Better Will','111 W. North Street,Chicago,IL, 60604','773-123-1234','uptown_betterwill@gmail.com');
INSERT INTO donation.store (store_id, store_name, address, phone, email) VALUES (1005,'Middle Town Better Will','789 N. Ashland Ave, Chicago, IL,60602','773-123-7890','middletown_betterwill@gmail.com');
INSERT INTO donation.store (store_id, store_name, address, phone, email) VALUES (1006,'Little Italy Better Will','456 W..Harrison Steet, Chicago,IL,60602','312-888-7777','littleItaly_betterwill@gmail.com');

INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50001,1001,'Arsala','Khan','Male','Senior Manager','a.khan@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50002,1002,'Neelansh','Shah','Male','Manager','n.shah@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50003,1003,'Karan','Patel','Male','Cashier','k.patel@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50004,1004,'Taha','Shah','Male','Customer Executive','t.shah@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50005,1005,'Tarun','Verma','Male','Software Engineer','t.verma@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50006,1006,'Vijay','Kochar','Male','Network Engineer','vjay.k@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50007,1001,'Tom ','cruise','male','Sales','tom_curise@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50008,1002,'Jerry','Henderson','Male','Sales','jerry_henderson@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50009,1003,'Mary','Lee','Female','Sales','mary_lee@yahoo.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50010,1004,'Jeniffer','Stone','female','Sales','jeniffer_stone@yahoo.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50011,1005,'Vicky','Charles','female','Sales','vicky_charles@gmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50012,1006,'Annie','Barton','female','Sales','annie_barton@hotmail.com');
INSERT INTO donation.employee (employee_id, store_id, first_name, last_name, gender, position, email) VALUES (50013,1001,'Mike','Ovens','male','Sales','mike_ovens@gmail.com');

INSERT INTO donation.tb_user (user_id, first_name, last_name, phone, address, email, password) VALUES (10001,'Ashta','shah','312-111-1111','Taylor Street','ashta.s@gmail.com','12345');
INSERT INTO donation.tb_user (user_id, first_name, last_name, phone, address, email, password) VALUES (10002,'Agne ','Kwaski','321-323-6454','Madison Street','agne.k@gmail.com','abcdef');
INSERT INTO donation.tb_user (user_id, first_name, last_name, phone, address, email, password) VALUES (10003,'Stephanie','Claire','312-434-6212','Loomis Street','stephanie.c@gmail.com','123abc');
INSERT INTO donation.tb_user (user_id, first_name, last_name, phone, address, email, password) VALUES (10004,'Zain','Malik','854-568-8813','Van Buren Street','Zain.m@gmail.com','hgfdsa');
INSERT INTO donation.tb_user (user_id, first_name, last_name, phone, address, email, password) VALUES (10005,'Anchal ','Parmar','989-788-7883','14th STreet','anchal.p@gmail.com','poilu123');
INSERT INTO donation.tb_user (user_id, first_name, last_name, phone, address, email, password) VALUES (10006,'Chris','Patel','372-423-4353','Lexington STreet','chris.p@gmail.com','all123');

INSERT INTO donation.orders (order_id, sales_id, user_id, order_date, total_amount, orderstatus) VALUES (1011,50012,10001,'2021-01-01',9.00,'Delivered');
INSERT INTO donation.orders (order_id, sales_id, user_id, order_date, total_amount, orderstatus) VALUES (1012,50010,10001,'2021-08-02',12.00,'Pending');
INSERT INTO donation.orders (order_id, sales_id, user_id, order_date, total_amount, orderstatus) VALUES (1013,50013,10001,'2021-08-05',30.00,'Delivered');
INSERT INTO donation.orders (order_id, sales_id, user_id, order_date, total_amount, orderstatus) VALUES (1014,50008,10004,'2021-10-06',15.00,'Delivery');
INSERT INTO donation.orders (order_id, sales_id, user_id, order_date, total_amount, orderstatus) VALUES (1015,50009,10005,'2021-10-14',30.00,'Pending');
INSERT INTO donation.orders (order_id, sales_id, user_id, order_date, total_amount, orderstatus) VALUES (1016,50011,10006,'2021-10-18',20.00,'Delivered');

INSERT INTO donation.donation_cart (cart_id, donator_id, date) VALUES (70001,10001,'2020-12-31');
INSERT INTO donation.donation_cart (cart_id, donator_id, date) VALUES (70002,10002,'2021-08-05');
INSERT INTO donation.donation_cart (cart_id, donator_id, date) VALUES (70003,10003,'2021-08-05');
INSERT INTO donation.donation_cart (cart_id, donator_id, date) VALUES (70004,10004,'2021-10-02');
INSERT INTO donation.donation_cart (cart_id, donator_id, date) VALUES (70005,10005,'2021-10-08');
INSERT INTO donation.donation_cart (cart_id, donator_id, date) VALUES (70006,10006,'2021-10-18');

INSERT INTO donation.category (category_id, category_name, last_update) VALUES (1101,'Books','2021-10-19');
INSERT INTO donation.category (category_id, category_name, last_update) VALUES (1102,'Toys','2021-10-18');
INSERT INTO donation.category (category_id, category_name, last_update) VALUES (1103,'electronics','2021-10-16');
INSERT INTO donation.category (category_id, category_name, last_update) VALUES (1104,'clothes','2021-10-14');
INSERT INTO donation.category (category_id, category_name, last_update) VALUES (1105,'Furniture','2021-10-10');
INSERT INTO donation.category (category_id, category_name, last_update) VALUES (1106,'Tools','2021-10-06');

INSERT INTO donation.item (item_id, order_id, category_id, cart_id, item_name, description) VALUES (1111,1011,1101,70001, 'Math Book','Calculus -1');
INSERT INTO donation.item (item_id, order_id, category_id, cart_id, item_name, description) VALUES (1112,1012,1102,70003, 'teddy bear','brown 5" ft teddy bear');
INSERT INTO donation.item (item_id, order_id, category_id, cart_id, item_name, description) VALUES (1113,1011,1103,70001, 'music player','Sony 250 watts bluetooth');
INSERT INTO donation.item (item_id, order_id, category_id, cart_id, item_name, description) VALUES (1114,1013,1104,70004, 'Jacket','Black Tommy Winter Jacket');
INSERT INTO donation.item (item_id, order_id, category_id, cart_id, item_name, description) VALUES (1115,1014,1105,70004, 'Study table','IKEA white study table');
INSERT INTO donation.item (item_id, order_id, category_id, cart_id, item_name, description) VALUES (1116,1015,1106,70005, 'Hammers','10 Pounds wooden Hammer');
