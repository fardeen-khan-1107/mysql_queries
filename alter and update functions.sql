create database file2;
use file2;
create table data1
(
sname varchar(20),
id int,
number1 int,
section int
);

insert into data1 value('fardeen',85,924,4),
('danial',93,909,1),
('gouse',43,808,2),
('mouse',56,8080,3),
('ravi',90,80660,4);

drop database file2;
set sql_safe_updates=1;

select *from full_name;
alter table data1 add column age int default 19;
alter table data1 modify  number1 varchar(10);
alter table data1 change age stu_age int;
alter table data1 rename to student_info;
update student_info set number1='9889881642' where number1='909';
truncate student_info;
alter table data1 rename to full_name;
delete from full_name where id<80;