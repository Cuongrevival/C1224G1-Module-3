create database QuanLySinhVien;

use QuanLySinhVien;

create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);

create table Student(
StudentID int not null primary key auto_increment,
StudentName varchar(30),
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null
);

create table Subject(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1,
Status bit,
check (credit >= 1)
);

create table Mark(
MarkID int not null primary key auto_increment,
SubID int not null unique,
StudentID int not null unique,
Mark float default 0,
ExamTimes tinyint default 1,
check (Mark>=0 AND Mark<=100)
);

alter table Student
add constraint fk1 foreign key (ClassID) references Class(ClassID);

alter table Mark
add constraint fk2 foreign key (SubID) references Subject(SubID),
add constraint fk3 foreign key (StudentID) references Student(StudentID);
