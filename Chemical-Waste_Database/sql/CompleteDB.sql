CREATE DATABASE Chemical_waste ;
use Chemical_waste;
create table chemical (
id INT PRIMARY KEY,
type VARCHAR(20) NOT NULL,
name VARCHAR(50) NOT NULL,
quantity VARCHAR(20) 
);

create table environment (
chemical_id INT ,
env_type VARCHAR(20) primary key,
location VARCHAR(50) NOT NULL,
FOREIGN KEY (chemical_id) REFERENCES chemical(id)
);

create table login (
username VARCHAR(20) NOT NULL,
`password` VARCHAR(50) NOT NULL
);

create table register(
 username VARCHAR(50) primary key,
 `password` VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

create table industry (
id INT PRIMARY KEY,
type VARCHAR(20) NOT NULL,
location VARCHAR(50) NOT NULL
);

create table EPA (
industry_id INT,
e_type VARCHAR(20) NOT NULL,
chemical_name VARCHAR(50) primary key
);

show databases ;
use chemical_waste ;

CREATE TABLE user
(
  
  username VARCHAR(50) primary key,
  `password` VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

CREATE TABLE entity1 
(
  
  username VARCHAR(50) primary key,
  `password` VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);
drop table login; 
 create table login(
  username VARCHAR(20) primary key,
  `password` VARCHAR(50) ,
    foreign key (username) references register(username)
 );
drop table register ;
 create table register(
  username VARCHAR(20) primary key,
  `password` VARCHAR(50) ,
  email VARCHAR(50) NOT NULL,
  Ph_no mediumint
 );
