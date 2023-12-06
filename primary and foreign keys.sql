create database company;
use company;
create table employee
(
ssn int primary key,
name1 varchar(20),
address varchar(20),
salary int,
sex varchar(20));

create table department
(
dno int primary key,
dname varchar(20),
msg int,
foreign key(msg) references employee(ssn));

create table project
(
pno int primary key,
pname varchar(20),
plocation varchar(30),
dno int,
foreign key(dno) references department(dno));

create table work
(
ssn int ,
dno int ,
primary key(ssn,dno),
foreign key(ssn) references employee(ssn) on delete cascade,
foreign key(dno)references department(dno) on delete cascade);

insert into employee values(101,'amit','hebbal',40000,'male');
insert into employee values(102,'anil','krpuram',20000,'male'),
(103,'amit','yelahanka',30000,'female'),
(104,'anil','hsr',35000,'female'),
(105,'kruthi','silk_board',50000,'male'),
(106,'ganesh','banashankari',60000,'female');
select *from employee;

insert into department values(1,'research',103);
insert into department values(2,'development',102),
(3,'marketing',105),
(4,'sales',106);
select *from department;

insert into project values(501,'pname','plocation',1),
(502,'iot','delhi',1),
(503,'hadoop','chennai',3),
(504,'artificial','bengaluru',2),
(505,'artifical','bengalure',2),
(506,'banking ','chenni',3),
(507,'railways','bengalure',1);
select *from project;

insert into work values
(101,1),
(101,4),
(102,2),
(103,1),
(103,2),
(104,3),
(105,3),
(105,4),
(106,2);

select sum(salaries) from employee;
