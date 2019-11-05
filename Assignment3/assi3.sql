
create table student(stud_id int(3) primary key auto_increment,rollno int(3),name varchar(30),dept varchar(30),did int(3));

insert into student(rollno,name,dept) values (1,"A","comp"),(1,"A","mech"),(1,"A","civil"),(1,"A","IT"),(2,"B","comp"),(2,"B","mech");


select * from student;


update student set rollno=11 where stud_id=1;

select * from student;

delete from student where rollno=11;


select * from student;
