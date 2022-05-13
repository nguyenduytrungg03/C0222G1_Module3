create database quan_ly_ban_hang;
use quan_ly_ban_hang;

CREATE TABLE customer (
    cus_id INT PRIMARY KEY AUTO_INCREMENT,
    cus_name VARCHAR(30),
    cus_age INT
);

CREATE TABLE ord_prd (
    ord_id INT PRIMARY KEY AUTO_INCREMENT,
    cus_id INT,
    ord_date DATE,
    ord_total_price DOUBLE,
    FOREIGN KEY (cus_id)
        REFERENCES customer (cus_id)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(30),
    procduct_price DOUBLE
);

CREATE TABLE order_product (
    ord_id INT,
    product_id INT,
    ord_qty INT,
    FOREIGN KEY (ord_id)
        REFERENCES ord_prd (ord_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);