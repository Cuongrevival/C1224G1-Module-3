create database demo;

use demo;

CREATE TABLE Products (
    id INT NOT NULL,
    productCode INT NOT NULL,
    productName VARCHAR(50),
    productPrice INT,
    productAmount INT,
    productDescription TEXT,
    productStatus INT
);

INSERT INTO Products (id, productCode, productName, productPrice, productAmount, productDescription, productStatus) VALUES
(1, 1001, 'iPhone 15 Pro Max', 1200, 50, 'Apple flagship smartphone with titanium frame', 1),
(2, 1002, 'Samsung Galaxy S24 Ultra', 1100, 40, 'Samsung premium smartphone with S-Pen', 1),
(3, 1003, 'Dell XPS 13 Laptop', 1500, 20, 'Ultra-slim laptop with Intel i7 processor', 1),
(4, 1004, 'Sony WH-1000XM5 Headphones', 400, 60, 'Noise-cancelling wireless headphones', 1),
(5, 1005, 'Apple MacBook Air M2', 1300, 15, 'Lightweight laptop with M2 chip', 1),
(6, 1006, 'Logitech MX Master 3S Mouse', 120, 100, 'Ergonomic mouse with advanced features', 1),
(7, 1007, 'Asus ROG Strix Gaming Laptop', 2000, 10, 'High-end gaming laptop with RTX 4080', 1),
(8, 1008, 'Canon EOS R6 Camera', 2500, 5, 'Professional mirrorless camera', 1),
(9, 1009, 'Samsung 32" 4K Monitor', 500, 25, 'Ultra HD monitor for work and gaming', 1),
(10, 1010, 'Anker PowerCore 20000mAh', 80, 150, 'Portable power bank with fast charging', 1);

alter table Products
add UNIQUE idx_productCode(productCode);
drop index idx_productCode on Products;
alter table Products
add index idx_name_price(productName, productPrice);
drop index idx_name_price on Products;
explain select * from Products where productCode = 1005;


CREATE VIEW information AS
    SELECT 
        productCode, productName, productPrice, productStatus
    FROM
        products;

UPDATE information 
SET 
    productPrice = 1000
WHERE
    productCode = 1006;
    
drop view information;
    
    
    delimiter //
	create procedure productInformation()
    begin
    select * from products;
    end//
    delimiter ;
    call productInformation();
    delimiter //
    create procedure addNewProduct(
    IN product_id int,
    IN product_code int,
    IN product_name varchar(50),
    IN product_price int,
    IN product_description text,
    IN product_status int
    )
    begin
    insert into products(id, productCode, productName, productPrice, productDescription, productStatus) values
    (product_id, product_code, product_name, product_price, product_description, product_status);
    end //
    delimiter ;
    select * from products;
    delimiter //
    create procedure updateProduct(
    INOUT product_id int,
    INOUT product_code int,
    INOUT product_name varchar(50),
    INOUT product_price int,
    INOUT product_amount int,
    INOUT product_description text,
    INOUT product_status int,
    IN provided_id int
    )
    begin
    update Product
    set id = product_id,
	productCode = product_code,
    productName = product_name,
    productPrice = product_price,
    productAmount = product_amount,
    productDescription = product_description,
    productStatus = product_status
    where id = provided_id;
    end //
    delimiter ;

    delimiter //
    create procedure deleteProduct(
    in provided_id int)
    begin
    delete from products where id = provided_id;
    end//
    delimiter ;