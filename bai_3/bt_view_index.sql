CREATE database demo;
create table Products(
Id  int,
productCode int, 
productName varchar(100),
productPrice float,
productAmount int,
productDescription text,
productStatus text,
primary key (Id, productCode)
);

create unique index index_code on products (productCode);
create unique index index_composite on products(productName,productPrice);

create view product_view as 
select productCode,productName,productPrice,productStatus from products;

alter view product_view as
select id from products WHERE id = 1;
drop view product_view;
delimiter $$
create procedure getInfo()
begin
select * from products;
end $$
delimiter ;

call getInfo();

delimiter $$

create procedure addProduct()
begin
insert into  products values (2,2,'vfadfs',1243,3,'3qwred','qwdfeq');
end $$

delimiter $$
call addProduct();

delimiter $$

create procedure updateById()
begin
update products set productName = 'thong' where id =  1;
end $$

delimiter ;

call updateById();

delimiter $$

create procedure deleteById()
begin
delete from products  where id =  1;
end $$

delimiter ;

call deleteById();
