delimiter //
create procedure class_updation(in rno1 int)
begin
declare mark int(4);

select total_marks from student_marks where rno=rno1 into mark;
select mark;

if(mark>990 AND mark<1500) then
update student_result set class="Distinction" where rno=rno1;
elseif(mark>900 AND mark<990) then
update student_result set class="FirstClass" where rno=rno1;
elseif(mark>825 AND mark<900) then
update student_result set class="SecondClass" where rno=rno1;
elseif(mark<825) then
update student_result set class="Fail" where rno=rno1;
end if;

end //
delimiter ;
