delimiter $$
create procedure cu()
begin
declare x int;
declare a int;
declare done int;
declare c1 cursor for select rollno from student;

declare continue handler for not found set done=1;
open c1;

a: loop
if(done ) then 
leave a;
end if;

fetch c1 into  a;
select marks from student where rollno=a into x;

if(x > 900 and x < 989) then
update results set class="destination" where rollno=a;
elseif(x > 825 and x < 899) then
update results set class="first class" where rollno=a;
elseif(x<825 and x>600) then
update results set class="pass" where rollno=a;
end if;
end loop a;
close c1;
end $$
delimiter ; 
