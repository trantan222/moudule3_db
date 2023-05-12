create database HouseManagement;
use HouseManagement;

create table house(
id varchar(255) primary key,
hhName varchar(255) not null,
hhDate date,
address varchar(255) 
);

create table person(
id int primary key auto_increment,
`name` varchar(255),
bod date,
hhId varchar(255),
constraint fk_person_house foreign key (hhId) references house (id)
);

insert into house values 
('HH-001','Nguyen Van A','1990-11-11','14 TS7'),
('HH-002','Nguyen Van B','1990-12-15','11 TS7'),
('HH-003','Nguyen Van BD','1995-11-11','13 TS7'),
('HH-004','Nguyen Van AC','1994-11-11','12 TS7'),
('HH-005','Nguyen Van AV','1991-11-11','1 TS7'),
('HH-006','Nguyen Van BA','1992-11-11','2 TS7');

insert into person (`name`, bod, hhId) values
('Nguyen Van A', '1888-11-11','HH-001'),
('Nguyen Van B', '1888-11-11','HH-002'),
('Nguyen Van BD', '1888-11-11','HH-003'),
('Nguyen Van AC', '1888-11-11','HH-004'),
('Nguyen Van AV', '1888-11-11','HH-005'),
('Nguyen Van BA', '1888-11-11','HH-006'),
('Nguyen Van BB', '1888-11-11','HH-006'),
('Nguyen Van BAN', '1888-11-11','HH-006'),
('Nguyen Van BAm', '1888-11-11','HH-001'),
('Nguyen Van BAk', '1888-11-11','HH-002');
select p.`name`,p.bod,p.hhId
from person p join house h on p.hhId = h.id;

create database benh_vien;
use benh_vien;
create table benh_an(
ma_benh_an varchar(255) primary key,
ten_benh_an varchar(255),
cap_do_benh varchar(40)
);
create table benh_nhan(
ma_benh_nhan varchar(255) primary key,
loai_benh_nhan varchar(255)
);
create table thong_tin_chi_tiet_benh_an(
ma_benh_an varchar(255) primary key,
ma_benh_nhan varchar(255) primary key,
ten_benh_nhan varchar(255) primary key,
ngay_nhap_vien varchar(255) primary key,
ngay_ra_vien varchar(255) primary key,
ly_do_nhap_vien varchar(255) primary key );