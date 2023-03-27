create database quan_li_dssv;
create table Class(
	id int,
    namee varchar(255)
);
create table Teacher(
	id int,
    namee varchar(255),
    age int,
    country varchar(255)
);
select * from Class;
insert into Class(id,namee)
value(1,"tan");
insert into Class(id,namee)
value(2,"B");
insert into Class(id,namee)
value(3,"C");
update Class
set namee = "Bi"
where id = 1;
delete from Class
where id = 3;
select * from Teacher;
insert into Teacher (id,namee,age,country)
value(1,"TAN",21,"VietNam");

alter table mon_hoc
add column lop varchar(255);





select * from mon_hoc; 
insert into mon_hoc (diem,ten_mon,lop)
value(10,"SQL","A0922I1");
update mon_hoc
set lop = "11"
where diem = 9;
