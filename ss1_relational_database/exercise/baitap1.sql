create database baitap1;
use baitap1;
create table class(
id INT, 
`name` VARCHAR(50)
);

 create table teacher(
 id INT,
 `name` VARCHAR(50),
 age INT,
 `country` VARCHAR(50)
 );
 -- thêm mới dữ liệu vào bảng 
 insert into class values(
 1, "Trung"
 );
 
 insert into teacher values(
 1, "Quang", "22", "Quang Binh"
 );
 insert into teacher values(
 2, "Hai", "18", "Quang Nam"
 );
 -- lấy dữ liệu ở id 2
 select * from class;
 select * from teacher;
 delete from class ;
 delete from teacher ;