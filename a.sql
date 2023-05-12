create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cId int auto_increment primary key,
cName varchar(45),
cAge varchar(20)
);
create table Orderr(
oId int auto_increment primary key,
cId int ,
oDate date,
oTotalPrice varchar(20),
foreign key (cId) references Customer(cId)
);
create table OrderDetail(
oId int ,
pId int ,
odQTY varchar(20),
primary key(oId,pId),
foreign key (pId) references Product(pID),
foreign key (oId) references Orderr(oId)
);
create table Product(
pID int auto_increment primary key,
pName varchar(20),
pPrice varchar(20)
);
