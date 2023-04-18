create database java10_md4_ss2_bt2;
use java10_md4_ss2_bt2;
create table Customer (
cID int primary key,
cName varchar(220),
cAge int
);
create table Oder (
oID int,
oDate varchar(250),
oTotalPrice varchar(250),
cID int,
primary key(oID,cID),
foreign key(cID) references Customer(cID)
);
create table Product(
pID int primary key,
pName varchar(222),
pPrice int
);
create table OrderDetail(
odQTY int,
oID int,
pID int,
primary key(oID,pID),
foreign key(oID) references Oder(oID),
foreign key(pID) references Product(pID)
);