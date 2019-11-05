delimiter //
create procedure old_new_student()
begin
declare temp,r,r1,m,cnt int(3) default(0);
declare n varchar(30);

declare c1 cursor for select rno,name,marks from old_student;
select count(*) from old_student into temp;
open c1;
repeat fetch c1 into r,n,m;
select rno from new_student where rno=r into r1;
if (r1=r) then
select "Already present";
else 
insert into new_student values(r,n,m);
set cnt=cnt+1;
end if;
until cnt=temp
end repeat;
close c1;
end //
delimiter ;
