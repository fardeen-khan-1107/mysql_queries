create database file2;
use file2;
create table data1
(
name varchar(20),
id int primary key,
branch varchar(20)
);

create table data2
(
fname varchar(20),
cource_id varchar(10),
id int,
foreign key(id) references data1(id)
on update cascade
on delete cascade
);
drop  table data2;
insert into data1 values('computer',2001,'inforscience'),
('alograthim',2002,'enginnering'),
('java',2003,'enginnering'),
('pthon',2004,'information'),
('english',2005,'enginnering');

insert into data2 values('sunli','alograthim',2002),
('afroz','java',2003),
('yashashavani','python',2004),
('shiney','english',2005);

select *from data1;
select *from data2;
alter table data2  add column sno int default 1;
drop table data1;	
update data1 set id=2000 where id=2002;