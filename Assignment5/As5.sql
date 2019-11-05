
delimiter //
create procedure amt_up(in r int(3),in bn varchar(30))
begin

declare ddiff int default(0);
declare amount float(8,2);

select datediff(f.dor,b.doi) from borrower b,fine f where(b.rno=f.rno and b.rno=r) into ddiff; 
if(ddiff<15) then 
set amount=0;
update borrower set status="r" where rno=r;
update fine set amt=amount where rno=r;
select amount;
elseif(ddiff>15 and ddiff<30)then
set amount=ddiff*5;
update borrower set status="r" where rno=r;
select amount;
update fine set amt=amount where rno=r;
elseif(ddiff>60)then
set amount=(15*5)+((ddiff-15)*15);
update borrower set status="r" where rno=r;
update fine set amt=amount where rno=r;
select amount;
end if;
end //
delimiter ;

