
delimiter //
create function stud() returns varchar(30) deterministic
begin
declare m,cnt,temp,r int(3) default(0);
declare c1 cursor for select total_marks,rno from student_marks;
select count(*) from student_marks into temp;
open c1;
repeat fetch c1 into m,r;
if(m>990 and m<1500) then
update student_result set class="Distinction" where rno=r; 
elseif(m>900 and m<990) then
update student_result set class="Firstclass" where rno=r; 
elseif(m>825 and m<900) then
update student_result set class="Secondclass" where rno=r; 
elseif(m<825) then
update student_result set class="Fail" where rno=r; 
end if;
set cnt=cnt+1;
until temp=cnt
end repeat;
close c1;
return "Updation Successfully";
end//
delimiter ;
