create database A0922I1_tan;
 
 CREATE table mon_hoc(
	diem int,
    ten_mon varchar(255)
 )

select * from mon_hoc;
insert into mon_hoc (diem,ten_mon)
value(10,"Toan");

insert into mon_hoc (diem,ten_mon)
value(9,"Hoa");

insert into mon_hoc (diem,ten_mon)
value(8,"Ly");

delete from mon_hoc 
where ten_mon = "Toan";

