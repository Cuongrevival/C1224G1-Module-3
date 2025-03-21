create database QuanLiBanHang;

use QuanLiBanHang;

create table Customer(
cID int not null primary key auto_increment,
cName varchar(30),
cAge int not null
);

create table Orders(
oID int not null primary key auto_increment,
cID int not null,
oDate Datetime not null,
oTotalPrice mediumint
);

create table OrderDetail(
oID int,
pID int,
odQTY int,
primary key (oID, pID)
);

create table Product(
pID int not null primary key auto_increment,
pName varchar(50),
pPrice mediumint
);
alter table Orders
add constraint fk1 foreign key (cID) references Customer(cID);

alter table OrderDetail
add constraint fk2 foreign key (oID) references Orders(oID),
add constraint fk3 foreign key (pID) references Product(pID);
