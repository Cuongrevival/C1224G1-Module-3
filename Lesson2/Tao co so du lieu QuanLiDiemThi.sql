create database QuanLiDiemThi;

use QuanLiDiemThi;

create table HocSinh(
MaHS varchar(20) primary key,
TenHS varchar(50),
NgaySinh DateTime,
Lop varchar(20),
GT varchar(20)
);

create table MonHoc(
MaMH varchar(20) primary key,
TenMH varchar(50),
MaGV varchar(20)
);

create table BangDiem(
MaHS varchar(20),
MaMH varchar(50),
DiemThi int,
NgayKT datetime,
primary key(MaHS, MaMH)
);

create table GiaoVien(
MaGV varchar(20) primary key,
TenGV varchar(50),
SDT varchar(10)
);

alter table MonHoc
add foreign key (MaGV) references GiaoVien(MaGV);

alter table BangDiem
add foreign key (MaHS) references HocSinh(MaHS),
add foreign key (MaMH) references MonHoc(MaMH);
