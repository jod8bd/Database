


















































































































































































































































































































drwxr-xr-x. 2 jod8bd 892877   47 Feb  3 14:14 lab2
drwxr-xr-x. 2 jod8bd 892877   21 Feb  9 22:51 lab3
drwxr-xr-x. 2 jod8bd 892877   21 Feb 13 11:39 lab4
drwxr-xr-x. 2 jod8bd 892877   21 Feb 27 07:44 lab5
drwxr-xr-x. 2 jod8bd 892877   36 Feb 27 08:00 lab6
  1 DROP TABLE IF EXISTS person;
  2 CREATE TABLE person
  3 (
  4     person_id int PRIMARY KEY,
  5     name VARCHAR(50) NOT NULL
  6 );
  7
  8 DROP TABLE IF EXISTS ord3r;
  9 CREATE TABLE ord3r
 10 (
 11     order_id int NOT NULL PRIMARY KEY,
 12     person_id int NOT NULL REFERENCES person,
 13     order_date int,
 14     order_number int
 15 );
 16
 17 DROP TABLE IF EXISTS order_item;
 18 CREATE TABLE order_item
 19 (
 20     order_item_id int NOT NULL PRIMARY KEY,
 21     product_id int NOT NULL REFERENCES product,
 22     order_id int NOT NULL REFERENCES ord3r,
 23     quant1ty int NOT NULL
 24 );
 25
 26 DROP TABLE IF EXISTS product;
 27 CREATE TABLE product
 28 (
 29     product_id int PRIMARY KEY,
 30     name VARCHAR(50) NOT NULL,
 31     sku int
 32 );