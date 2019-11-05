create table student1(id int(3) primary key auto_increment,name varchar(30),dname varchar(30),marks int(3));

insert into student1 values(1,"Anand1","comp",9),(2,"Anand2","comp",10),(3,"Anand3","comp",5),(4,"Anand4","comp",5),(5,"Anand5","comp",9),(6,"Anand6","comp",10),(7,"Anand7","comp",9);

select * from student1;

update student1 set marks=20 where id=7;
update student1 set name="AnandS" where id=7;
update student1 set dname="Mech" where id=7;
update student1 set marks=12 where id=3;
update student1 set marks=21 where id=4;


select * from student1;
delete from student1 where id=2;
select * from student1;

select * from student1 where marks in(10,20);
select * from student1 where marks between 10 and 20;
select * from student1 where name like "A%";


select max(marks),min(marks),sum(marks),avg(marks) from student1 ;

create table a(A int(3));
create table b(B int(3));
insert into a values(1),(2),(21),(12),(3),(4),(5),(6);
insert into b values(11),(12),(21),(112),(13),(14),(5),(6);
select * from a;
select * from b;


select A from a
union
select B from b;


select A from a
union all
select B from b;
