insert into customer
values (1,'Minh Quan',10),
		(2,'Ngoc Oanh',20),
        (3,'Hong Ha',50);
        
insert into orderr
values (1,1,'2006-3-21',null),
		(2,2,'2006-3-23',null),
        (3,1,'2006-3-16',null);
        
insert into product
values (1,'May Giat',3),
		(2,'Tu Lanh',5),
        (3,'Dieu Hoa',7),
         (4,'Quat',1),
          (5,'Bep Dien',2);
          
insert into orderr_detail
values (1,1,3),
		(1,3,7),
        (1,4,2),
         (2,1,1),
          (3,1,8),
          (2,5,4),
          (2,3,3);
 select o_id,o_date,o_total_price
 from orderr;
 
 select c_name,p_name
 from customer c
 join orderr o 
 on c.c_id =o.c_id
join orderr_detail od 
 on o.o_id = od.o_id
 join product p 
 on od.p_id = p.p_id;
 
 select c_name
 from customer c 
 left join orderr o
 on c.c_id = o.c_id
 where c.c_id =3;
 
 select o.o_id,o.o_date,sum(p.p_price * od.od_qty) as sumOrder
from orderr o
join orderr_detail od
on o.o_id = od.o_id
join product p
on od.p_id = p.p_id
group by o.o_id

