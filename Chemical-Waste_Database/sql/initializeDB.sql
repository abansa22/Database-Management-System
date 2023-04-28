create database chemical_waste ;
use chemical_waste; 
drop table if exists chemical;
drop table if exists environment;
drop table if exists epa;
drop table if exists industry;
drop table if exists login;
drop table if exists register;
drop table if exists user;
drop table if exists entity1;

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
FOREIGN KEY (chemical_id) REFERENCES chemical(id) on update cascade on delete cascade
);

create table industry (
id INT PRIMARY KEY,
type VARCHAR(20) NOT NULL,
location VARCHAR(50) NOT NULL
);

create table EPA (
industry_id INT,
e_type VARCHAR(20) NOT NULL,
chemical_name VARCHAR(50) primary key,
FOREIGN KEY (industry_id) REFERENCES industry(id) on update cascade on delete cascade 
);


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

 create table login(
  username VARCHAR(20) primary key,
  `password` VARCHAR(50) ,
    foreign key (username) references register(username) on update cascade on delete cascade
 );

 create table register(
  username VARCHAR(20) primary key,
  `password` VARCHAR(50) ,
  email VARCHAR(50) NOT NULL,
  Ph_no mediumint
 );
 
 insert into chemical(id,type,name,quantity)
 values (1,'toxic','phosphorous','1.7 kgs'),
        (2,'toxic','mercury','2 kgs'),
        (3,'harmful','ChmicalX','4 kgs');
 
  insert into environment(chemicalid,env_type,location)
 values (1,'pond','dekalb'),
        (2,'lake','dempster rd'),
        (3,'land','rosemont');
        
 insert into industry(id,type,location)
 values (1,'animal supplements','dekalb'),
        (2,'preservatives','forest rd'),
        (3,'glass making','dempster rd');
        
 insert into register(username,password,email,ph_no)
 values ('aman','aman1','aman@gmail.com',7749979),
        ('deep','deep1','deep@gmail.com',73349979),
        ('alex','alex1','alex@gmail.com',443979);
       
 insert into login(username,password)
 values ('aman','aman1'),
        ('deep','deep1'),
        ('alex','alex1');      
	
       
 insert into epa(industry_id,e_type,chemical_name)
 values (1,'pond','phosphorous'),
        (2,'lake','mercury'),
        (3,'land','ChemicalX');
        