create database if not exists `order-directory`;
use  `order-directory`;

create table if not exists supplier(SUPP_ID int primary key,
SUPP_NAME varchar(50),
SUPP_CITY varchar(50),
SUPP_PHONE varchar(50));


create table if not exists customer(CUS_ID int primary key,
CUS_NAME varchar(50),
CUS_PHONE varchar(10),
CUS_CITY varchar(30),
CUS_GENDER char);


create table if not exists category(CAT_ID int primary key,
CAT_NAME varchar(50));


create table if not exists product(PRO_ID int primary key,
PRO_NAME varchar(50) null not null,
PRO_DESC varchar(60) null not null,
CAT_ID int not null,
foreign key (CAT_ID) references category(CAT_ID));



create table if not exists product_details(PROD_ID int primary key,
PRO_ID int not null,
SUPP_ID int not null,
PROD_PRICE int not null,
foreign key (PRO_ID) references product(PRO_ID),
foreign key (SUPP_ID) references supplier(SUPP_ID));


create table if not exists `order`(ORD_ID int primary key,
ORD_AMOUNT int not null,
ORD_DATE date,
CUS_ID int not null,
PROD_ID int not null,
foreign key (PROD_ID) references product_details(PROD_ID),
foreign key (CUS_ID) references customer(CUS_ID));



create table if not exists rating(RAT_ID int primary key,
RAT_RATSTARS int not null,
CUS_ID int not null,
SUPP_ID int not null,
foreign key (CUS_ID) references customer(CUS_ID),
foreign key (SUPP_ID) references supplier(SUPP_ID));







insert into `supplier` values(1,"Rajesh Retails","Delhi",'1234567890');
insert into `supplier` values(2,"Appario Ltd.","Mumbai",'2589631470');
insert into `supplier` values(3,"Knome products","Banglore",'9785462315');
insert into `supplier` values(4,"Bansal Retails","Kochi",'8975463285');
insert into `supplier` values(5,"Mittal Ltd.","Lucknow",'7898456532');


INSERT INTO `CUSTOMER` VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO `CUSTOMER` VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO `CUSTOMER` VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO `CUSTOMER` VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO `CUSTOMER` VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');


INSERT INTO `CATEGORY` VALUES( 1,"BOOKS");
INSERT INTO `CATEGORY` VALUES(2,"GAMES");
INSERT INTO `CATEGORY` VALUES(3,"GROCERIES");
INSERT INTO `CATEGORY` VALUES (4,"ELECTRONICS");
INSERT INTO `CATEGORY` VALUES(5,"CLOTHES");


INSERT INTO `PRODUCT` VALUES(1,"GTA V","DFJDJFDJFDJFDJFJF",2);
INSERT INTO `PRODUCT` VALUES(2,"TSHIRT","DFDFJDFJDKFD",5);
INSERT INTO `PRODUCT` VALUES(3,"ROG LAPTOP","DFNTTNTNTERND",4);
INSERT INTO `PRODUCT` VALUES(4,"OATS","REURENTBTOTH",3);
INSERT INTO `PRODUCT` VALUES(5,"HARRY POTTER","NBEMCTHTJTH",1);


INSERT INTO PRODUCT_DETAILS VALUES(1,1,2,1500);
INSERT INTO PRODUCT_DETAILS VALUES(2,3,5,30000);
INSERT INTO PRODUCT_DETAILS VALUES(3,5,1,3000);
INSERT INTO PRODUCT_DETAILS VALUES(4,2,3,2500);
INSERT INTO PRODUCT_DETAILS VALUES(5,4,1,1000);


INSERT INTO `ORDER` VALUES (50,2000,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(20,1500,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(25,30500,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(26,2000,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(30,3500,"2021-08-16",4,3);


INSERT INTO `RATING` VALUES(1,2,2,4);
INSERT INTO `RATING` VALUES(2,3,4,3);
INSERT INTO `RATING` VALUES(3,5,1,5);
INSERT INTO `RATING` VALUES(4,1,3,2);
INSERT INTO `RATING` VALUES(5,4,5,4);

