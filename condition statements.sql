create database file8;
use  file8;
create table person(
drive_id int primary key,
name1 varchar(20),
address varchar(20)
);

create table car(
reg_no int primary key,
model varchar(20),
year1 int
);

create table accident(
report_no int primary key,
acc_data int,
location varchar(20)
);

create table owns(
drive_id int,
reg_no int,
foreign key(drive_id) references person(drive_id),
foreign key(reg_no) references car(reg_no)
);

create table participated
(
drive_id int,
reg_no int,
report_no int,
foreign key(drive_id) references person(drive_id),
foreign key(reg_no)  references car(reg_no),
foreign key(report_no) references accident(report_no)
);

insert into person values(1002,"fardeen","bengalur"),
(1003,"khan","odisa"),
(1004,"ayush","madhyaprades"),
(1005,"neal","bengalur"),
(1006,"lio","bengalur");

insert into car values(1107,"hundy",2004),
(1108,"bmw",2005),
(1109,"luxes",2020),
(1110,"kia",2023),
(1145,"suzuaki",2014);

insert into accident (report_no,acc_data,location)
values
(102,12,'hebbal'),
(103,13,'kormangala'),
(104,14,'nellor'),
(105,15,'comersial'),
(106,16,'hydarabad');

insert into owns values(1002,1107),
(1003,1108),
(1004,1109),
(1005,1110),
(1006,1145);

insert into participated values(1002,1107,102),
(1003,1108,103),
(1004,1109,104),
(1005,1110,105),
(1006,1145,106);


select report_no from accident where acc_data=14;

select report_no from accident where acc_data=14;

select * from person order by drive_id asc;


CREATE TEMPORARY TABLE accidents_2014 AS
SELECT report_no
FROM accident
WHERE (acc_date) = 2014;

SELECT COUNT(*) AS total_accidents_2014
FROM accident