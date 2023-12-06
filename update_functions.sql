CREATE DATABASE file1;
use file1;
create table data1
(
name1 varchar(20),
marks float,
roll int,
location varchar(20)
);
insert into data1 values('fardeen',90,0085,'punganur'),
('khan',98,0093,'hydrabad'),
('shomaya',90,0034,'kolkatha'),
('ayush',72,0134,'punganur'),
('sunil',56,0234,'kolkatha');
select *from data1;
select *from data1 where marks>90;
select *from data1 where marks between 72 and 90;
select *from data1 where location in('punganur','kolkatha') limit 2;
select *from data1 order by marks desc limit 3;
select max(roll) from data1;
select count(location) from data1;
select avg(marks) from data1;
select location, avg(marks) from data1  group by location order  by avg(marks); 
select location,max(marks) from data1 group by location having max(marks)>=90;
set sql_safe_updates=0;
update data1 set location='madhyaprades' where location='hydrabad';
select *from data1;
update data1 set marks=80 where name1='ayush';