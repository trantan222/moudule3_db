create database demo2;
use demo2;
create table Products(
id int  primary key,
product_code varchar(45),
product_name varchar(45),
product_price int,
product_amount varchar(45),
product_description varchar(100),
product_status bit(1)
);
insert into Products
	value(1,"A1","A",100,"ABC","Good",1),
	(2,"A2","B",300,"ABCE","Well",0),
	(3,"A3","C",40,"CDA","Done",1),
	(4,"A4","D",60,"MNB","Better",1),
	(5,"A5","E",90,"FJK","Good",0);
    
 create unique Index  index_proCode on   Products(product_code);
 create index Composite on Products(product_name,product_price);
 
 explain select  * 
 from Products
 where product_price = 40 And product_name  = "C";
 
 
 create or replace view ten_san_pham as
 select product_code, product_name,product_price,product_status
 from Products;
 
 update ten_san_pham
 set product_name ="F"
 where product_code ="A1";
 
 drop view ten_san_pham;
 
 DELIMITER $$
 create procedure display()
	begin 
    select * 
    from Products;
    end $$  
 DELIMITER ; 
 
 call display();
 
 Delimiter $$
 create procedure add_new(in id int , in new_product_code varchar(45), in new_product_name varchar(45), 
 in new_product_price int , in product_amount varchar(45), in new_product_description varchar(45),in new_product_status bit(1))
	begin 
    insert into Products
		value(id,new_product_code,new_product_name,new_product_price,product_amount,new_product_description,new_product_status);
	select * 
    from Products;
    end $$
 Delimiter ;
	call add_new(7,"b","b",1050,"bb","abb",1);
    drop procedure add_new  ;
 
 Delimiter $$
 create procedure edit(in new_id int , in new_product_code varchar(45), in new_product_name varchar(45), 
 in new_product_price int , in product_amount varchar(45), in new_product_description varchar(45),in new_product_status bit(1))
	begin 
		update Products
        set product_code = new_product_code
        where new_id = id;
		select * 
		from Products;
    end $$
 Delimiter ;

 call edit(6,"ggg","ngu",80,"ttt","oc",1);
 
 Delimiter $$
 create procedure delete_(in new_id int)
	begin 
		delete 
		from Products
        where id = new_id;
		select * 
		from Products;
    end $$
 Delimiter ;
 
 call delete_(1);