use file2;
create table data1
(
id int,
sname varchar(20),
cource varchar(20)
);
create table data2
(
id int,
cource varchar(20),
fname varchar(20)
);
create table data3
(
id int,
cource varchar(20),
section int
);

insert into data1 values(2001,'anil','network'),
(2002,'hari','python'),
(2003,'nani','java'),
(2004,'madhukari','rdbms'),
(2005,'salma','unix'),
(2006,'rajesh','englis'),
(2007,'raju','telugu');

insert into data2 values(2001,'network','kumar'),
(2002,'rdbms','manish'),
(2003,'python','bhaitaya'),
(2004,'unix','rahul'),
(2005,'java','shomaya'),
(2019,'malayee','chita');

insert into data3 values(2001,'network',4),
(2002,'python',2),
(2003,'unix',3),
(2004,'java',2),
(2005,'rdbms',5);

drop table data3;
select *from data1 inner join  data2 on data1.id=data2.id;

select *from data1 left join  data2 on data1.id=data2.id union
select *from data1 right join  data2 on data1.id=data2.id;

SELECT *FROM data1 FULL JOIN data2 ON data1.id = data2.id;

select *from data1 left join data2 on data1.id=data2.id where data2.id is null;

select cource from data1 union  select cource from data2;


select id from data1 where id in(select id from data1 where  id % 2 = 0);
select id from(select *from data1 where id%2=0)as temp;



create view v1 as select id,sname,cource from data1;
select *from v1;
