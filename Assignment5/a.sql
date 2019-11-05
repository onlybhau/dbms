delimiter //
create procedure amt_update(in rno1 int)
begin
declare cnt int;
declare ddiff int;
declare amt1 int;
declare dor,doi date;

select datediff(f.DOR,b.DOI) from borrower b,fine f where b.rno=f.rno AND b.rno=rno1 into ddiff;
select ddiff;
if(ddiff<15) then 
update borrower set status="r" where rno=rno1;
update fine set amt=amt1 where rno=rno1;
end if;
if(ddiff>15 and ddiff<30) then 
set amt1=ddiff*5;
update borrower set status="r" where rno=rno1;
update fine set amt=amt1 where rno=rno1;
end if;
if(ddiff>30) then 
set amt1=(15*5)+((ddiff-15)*15);
update borrower set status="r" where rno=rno1;
update fine set amt=amt1 where rno=rno1;
end if;
EXCEPTION
WHEN no_data_found THEN
dbms_output.put_line("record not1 found");
end;
end //
delimiter ;
