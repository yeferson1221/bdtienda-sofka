CREATE TABLE salesman (
    id INT(6) NOT NULL AUTO_INCREMENT,
    document INT(11) NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
    
);

INSERT INTO salesman(document,name)
VALUES('','');

SELECT document, name FROM salesman WHERE id=1;

UPDATE salesman SET document = '', name = '' WHERE id=1;

DELETE FROM salesman WHERE id=1;




CREATE TABLE customer (
    id INT(6) NOT NULL AUTO_INCREMENT,
    type_document VARCHAR(10) NOT NULL,
    document INT(11) NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO customer(type_document,document)
VALUES('','');

SELECT type_document, document FROM customer WHERE id=1;

UPDATE customer SET type_document = '', document = '' WHERE id=1;

DELETE FROM customer WHERE id=1;



CREATE TABLE sale (
    id INT(6) NOT NULL AUTO_INCREMENT,
    date_sale DATE NOT NULL,
    PRIMARY KEY(id),
    id_customer INT,
    FOREIGN KEY (id_customer) REFERENCES customer(id)
);
INSERT INTO sale(date_sale)
VALUES('');

SELECT date_sale FROM sale WHERE id=1;

UPDATE sale SET date_sale= '' WHERE id=1;

DELETE FROM sale WHERE id=1;




CREATE TABLE product (
    id INT(6) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    Type VARCHAR(30) NOT NULL,
    guantity INT(4) NOT NULL,
    price DOUBLE NOT NULL,
    PRIMARY KEY(id),
    id_salesman INT, 
    FOREIGN KEY (id_salesman) REFERENCES salesman(id)
);

INSERT INTO product(name,type,guantity,price)
VALUES('','','','');

SELECT name,type,guantity,price FROM product WHERE id=1;

UPDATE product SET name = '', type = '', guantity = '', price = '' WHERE id=1;

DELETE FROM product WHERE id=1;






CREATE TABLE provider (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    nit VARCHAR(30) NOT NULL,
    tel INT(11) NOT NULL,
    PRIMARY KEY(id),
    id_product INT,
    FOREIGN KEY (id_product) REFERENCES product(id)

);

INSERT INTO proveider(name,nit,tel)
VALUES('','','');

SELECT name,nit,tel FROM proveider WHERE id=1;

UPDATE proveider SET name = '', nit = '', tel = '' WHERE id=1;

DELETE FROM proveider WHERE id=1;



