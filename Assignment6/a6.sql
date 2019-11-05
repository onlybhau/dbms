delimiter //
create procedure update_table_with_cursor()
begin 
declare r,r1,m,temp int(4) default(0);
declare n varchar(30);
declare cnt int(4) default(0);

declare c1 cursor for select rno,name,marks from old_student;
select count(*) from old_student into temp;

open c1;
repeat fetch c1 into r,n,m;
select r;
select rno from new_student where rno=r into r1;
if(r1=r) then
	set r1=0;
else
	insert into new_student values(r,n,m);
end if;
set cnt=(cnt+1);
until temp=cnt
end repeat;
close c1;
end //
delimiter ; 
