DROP TABLE IF EXISTS person;
CREATE TABLE person
(
    person_id int PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS ord3r;
CREATE TABLE ord3r
(
    order_id int NOT NULL PRIMARY KEY,
    person_id int NOT NULL REFERENCES person,
    order_date int,
    order_number int
);

DROP TABLE IF EXISTS order_item;
CREATE TABLE order_item
(
    order_item_id int NOT NULL PRIMARY KEY,
    product_id int NOT NULL REFERENCES product,
    order_id int NOT NULL REFERENCES ord3r,
    quant1ty int NOT NULL
);

 DROP TABLE IF EXISTS product;
CREATE TABLE product
(
    product_id int PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    sku int
);