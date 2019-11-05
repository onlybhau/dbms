

Design at least 10 sql query for suitable Application using SQL DML statements :
all type of join,Sub-Qurey and View


create table boats(bid int(3) not null AUTO_INCREMENT primary key,bname varchar(30),bcolor varchar(30));
create table sailors(sid int(3) not null AUTO_INCREMENT primary key,sname varchar(30),srating int(3),sage int(4));

create table reservers(sid int(3),bid int(3),DOR date,foreign key(sid) references sailors(sid),foreign key(bid) references boats(bid));

desc boats;
desc reservers;
desc sailors;

insert into boats(bname,bcolor) values("Honda","red");
insert into boats(bname,bcolor) values("Hero","green");
insert into boats(bname,bcolor) values("Maruti","blue");

insert into sailors(sname,srating,sage) values("A",40,20);
insert into sailors(sname,srating,sage) values("B",30,30);
insert into sailors(sname,srating,sage) values("C",60,40);
insert into sailors(sname,srating,sage) values("D",70,50);


insert  into reservers values(1,1,'2019-2-19');
insert  into reservers values(1,2,'2019-3-20');
insert  into reservers values(2,1,'2019-4-19');
insert  into reservers values(2,3,'2019-2-19');
insert  into reservers values(3,2,'2019-3-18');
insert  into reservers values(3,3,'2019-6-19');
insert  into reservers values(4,3,'2019-7-19');
insert  into reservers values(4,2,'2019-8-19');

select * from boats;
select * from sailors;
select * from reservers;




select bname from sailors s,boats b,reservers r where ((s.srating=60)AND(s.sid=r.sid)AND(b.bid=r.bid));



select max(srating) from sailors s,boats b,reservers r where ((b.bcolor="green") AND (b.bid=r.bid)
AND (s.sid=r.sid));


select max(sage) from sailors s,boats b,reservers r where ((b.bcolor="red") AND (b.bid=r.bid) AND (s.sid=r.sid));



create table product(id int(3),name varchar(30));
create table location(id int(3),location varchar(30));
insert into product values(1,"Anand1"),(2,"Anand2"),(3,"Anand3"),(4,"Anand4"),(5,"Anand5");
insert into location values(1,"A1"),(2,"A2"),(6,"A6"),(7,"A7"),(5,"A5");

select * from product left outer join location on product.id=location.id;

select * from location right outer join product on product.id=location.id;










