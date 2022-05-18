create database products;
use products;
create table products (
id int auto_increment,
product_code varchar(45) ,
`name` varchar(45),
price double,
amount int,
`description` varchar(50),
`status` bit(1),
primary key (id)
);

insert into products (`name`,product_code,price,amount,`description`,`status`)
values
("ban",'a1',100,2,"mau den",1),
("ghe",'a2',70,8,"mau do",0),
("quat",'a3',80,4,"tu dong",0),
("den",'a4',20,10,"huynh quang",1);
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index i_product_code on products(product_code);
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index i_product_name on products(`name`,price);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from products where product_code = 'a1';
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view  w_products as 
select p.product_code, p.`name`, p.price, p.`status` from products p;
select * from w_products;
-- Tiến hành sửa đổi view, tiến hành xoá view
alter view w_products as
select id,`name`,price
from products;
drop view w_products;
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter $$
create procedure sp_procedure()
begin
select * from products;
end $$ 
delimiter ;
call sp_procedure();
-- Tạo store procedure thêm một sản phẩm mới
delimiter $$
create procedure str_procedure(
p_product_code varchar(45) ,
p_name varchar(45),
p_price double,
p_amount int,
p_description varchar(50),
p_status bit(1)
)
begin
insert into products ( product_code,`name` ,price, amount, `description`, `status`)
values (p_product_code  ,
p_name ,
p_price ,
p_amount,
p_description ,
p_status );
end $$ 
delimiter ;
call str_procedure('a5', 'gau', 33333, 2, 'xanh ngoc', 1);