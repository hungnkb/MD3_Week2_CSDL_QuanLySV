create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key not null,
cName varchar(50),
cAge int
);
create table _Order(
oID int primary key not null,
cID int,
oDate datetime,
oToltalPrice int
);
create table Product(
pID int primary key not null,
pName varchar(50),
pPrice int
);
create table OrderDetail(
oID int,
pID int,
odQTY int,
foreign key (oID) references _Order(oID),
foreign key (pID) references Product(pID)
);

